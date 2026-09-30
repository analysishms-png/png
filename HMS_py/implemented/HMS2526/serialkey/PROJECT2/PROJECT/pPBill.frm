VERSION 5.00
Begin VB.Form pPBill
  Caption = "Purchase Bill Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "pPBill.frx":0
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
    Width = 8610
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
    Top = 6495
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
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 30
    Top = 7305
    Width = 2745
    Height = 345
    TabIndex = 66
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
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
    Top = 6480
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

Attribute VB_Name = "pPBill"

Private global_152 As Integer
Private global_154 As Integer
Private global_256 As Integer
Private global_258 As Integer
Private global_52 As Integer
Private global_128 As Integer
Private global_216 As Double
Private global_100 As Integer

Private Sub TxtBarCode_KeyDown(KeyCode As Integer, Shift As Integer) 'E12B20
  'Data Table: 59BA2C
  loc_E12B12: If (CLng(KeyCode) = &HD) Then
  loc_E12B1A:   Call TxtBarCode_Validate(&HFF)
  loc_E12B1F: End If
  loc_E12B1F: Exit Sub
End Sub

Private Sub TxtBarCode_Validate(Cancel As Boolean) '1524F28
  'Data Table: 59BA2C
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
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_104 As Variant
  Dim var_208 As Double
  Dim var_160 As Variant
  Dim var_210 As Double
  Dim var_1D0 As Variant
  Dim var_E4 As Variant
  Dim var_214 As TextBox
  Dim var_14C As Variant
  Dim unk_59BA49 As Connection15
  Dim var_10C As Recordset15
  Dim var_112 As Integer
  loc_1523FC8: Set var_88 = Me.TopCtrl1
  loc_1523FCE: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1523FD6: var_9C = CStr()
  loc_152400A: If ((var_9C = "Browse") And (Me.TxtBarCode.Text <> vbNullString)) Then
  loc_152401A:   Me.TxtBarCode.Text = vbNullString
  loc_1524028:   Call 0.Method_arg_50 (var_9C)
  loc_1524049:   MsgBox("Not Applicable In Browse Mode !", &H10, CVar(var_9C), var_E4, var_104)
  loc_1524059:   Exit Sub
  loc_152405A: End If
  loc_152407C: If (Trim(CVar(Me.TxtBarCode)) = vbNullString) Then
  loc_152407F:   Exit Sub
  loc_1524080: End If
  loc_152408B: var_C4 = Trim(CVar(Me.TxtBarCode))
  loc_1524094: var_110 = CStr(var_C4)
  loc_15240AB: Me.TxtBarCode.Text = vbNullString
  loc_15240CA: If (Me.RecordCount = 0) Then
  loc_15240CD:   Exit Sub
  loc_15240CE: End If
  loc_15240D4: Me.MoveFirst
  loc_15240FE: Me.Find "BarCode='" & var_110 & "'", 0, 1
  loc_152411E: If (Me.EOF = &HFF) Then
  loc_152413A:   MsgBox("Item Not Found!", &H10, var_C4, var_E4, var_104)
  loc_152414D: Else
  loc_1524167:   var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1524174:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_152417C:   var_F4 = CVar(CLng(&HC)) 'Long
  loc_15241A7:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_15241AA:     var_B4 = vbNullString
  loc_15241B4:     Set var_88 = Me.FGrid
  loc_15241DF:     var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15241E8:   End If
  loc_15241FB:   Me.FGrid.TopRow = CVar(CLng(var_106))
  loc_1524207:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_152420F:   var_12C = CVar(CLng(2)) 'Long
  loc_1524242:   var_C4 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_152424A:   Set var_150 = Me.FGrid
  loc_1524250:   LateIdCallSt
  loc_152426C:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1524274:   var_12C = CVar(CLng(&HC)) 'Long
  loc_15242A7:   var_C4 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_15242AF:   Set var_150 = Me.FGrid
  loc_15242B5:   LateIdCallSt
  loc_15242D1:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_15242D9:   var_12C = CVar(CLng(1)) 'Long
  loc_152430C:   var_C4 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1524314:   Set var_150 = Me.FGrid
  loc_152431A:   LateIdCallSt
  loc_1524336:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_152433E:   var_12C = CVar(CLng(4)) 'Long
  loc_1524371:   var_C4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1524379:   Set var_150 = Me.FGrid
  loc_152437F:   LateIdCallSt
  loc_152439B:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_15243A3:   var_12C = CVar(CLng(8)) 'Long
  loc_15243D6:   var_C4 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_15243DE:   Set var_150 = Me.FGrid
  loc_15243E4:   LateIdCallSt
  loc_152441F:   var_F4 = CVar(CLng(var_106)) 'Long
  loc_1524427:   var_13C = CVar(CLng(6)) 'Long
  loc_1524454:   var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_152445C:   Set var_150 = Me.FGrid
  loc_1524462:   LateIdCallSt
  loc_1524480:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1524488:   var_F4 = CVar(CLng(0)) 'Long
  loc_1524492:   var_98 = CVar(CStr(var_106)) 'String
  loc_152449A:   Set var_88 = Me.FGrid
  loc_15244A0:   LateIdCallSt
  loc_15244B2:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_15244BA:   var_F4 = CVar(CLng(5)) 'Long
  loc_15244EA:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_15244F1:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_15244F9:     var_F4 = CVar(CLng(5)) 'Long
  loc_15244FE:     var_13C = "1.000"
  loc_1524508:     Set var_88 = Me.FGrid
  loc_152450E:     LateIdCallSt
  loc_1524519:   End If
  loc_152451D:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1524525:   var_F4 = CVar(CLng(5)) 'Long
  loc_152453F:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_1524547:   var_208 = Val(var_9C)
  loc_152454E:   var_13C = CVar(CLng(var_106)) 'Long
  loc_1524556:   var_160 = CVar(CLng(6)) 'Long
  loc_1524570:   var_A4 = CStr(Me.FGrid.TextMatrix))
  loc_1524578:   var_210 = Val(var_A4)
  loc_1524587:   var_1D0 = CVar(CLng(7)) 'Long
  loc_15245C0:   Set var_150 = Me.FGrid
  loc_15245C6:   LateIdCallSt
  loc_152462B:   Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_214, var_A4, Me.Txt, CVar(CStr(Format(CVar((var_208 * var_210)), "0.000"))), 1, 1)
  loc_1524633:   var_1D0 = var_214.Text
  loc_152464A:   Call Proc_32_108_1066F04(CStr(Me.Fields.Item("Code").Value), var_A4, var_208, CVar(CLng(var_106)), var_210)
  loc_152465B:   var_14C = CVar(CLng(9)) 'Long
  loc_1524696:   LateIdCallSt
  loc_15246DC:   var_A0 = Me.Fields.Item("Code")
  loc_15246F7:   Set var_150 = Me.Txt
  loc_15246FD:   Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_214, var_A4, Me.FGrid, CVar(CStr(Format(CVar(var_208), "0.00000"))), 1, 1)
  loc_1524705:   var_14C = var_214.Text
  loc_152471C:   Call Proc_32_108_1066F04(CStr(var_A0.Value), var_A4, var_208, CVar(CLng(var_106)))
  loc_1524725:   var_12C = CVar(CLng(var_106)) 'Long
  loc_152472D:   var_14C = CVar(CLng(&HA)) 'Long
  loc_1524768:   LateIdCallSt
  loc_15247B0:   Set var_88 = Me.Txt
  loc_15247B6:   Call 0.Method_TxtBarCode_Validate0 (CInt(7), var_A0, var_9C, CVar(CLng(&H18)), CVar(CLng(var_106)), Me.FGrid, CVar(CStr(Format(CVar(var_208), "0.00000"))))
  loc_15247BE:   1 = var_A0.Tag
  loc_15247C6:   var_98 = CVar(var_9C) 'String
  loc_15247D4:   LateIdCallSt
  loc_1524824:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_106)), Me.FGrid, CVar(Me.Fields.Item("DiscApp")), 1)) 'String
  loc_1524832:   LateIdCallSt
  loc_1524884:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1524892:   LateIdCallSt
  loc_15248E4:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_15248F2:   LateIdCallSt
  loc_1524944:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1524952:   LateIdCallSt
  loc_15249A4:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_15249B2:   LateIdCallSt
  loc_1524A04:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1524A12:   LateIdCallSt
  loc_1524A64:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1524A6C:   Set var_150 = Me.FGrid
  loc_1524A72:   LateIdCallSt
  loc_1524A8C:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1524A94:   var_F4 = CVar(CLng(&H17)) 'Long
  loc_1524AD0:   If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1524AD7:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_1524ADF:     var_F4 = CVar(CLng(&H17)) 'Long
  loc_1524AF2:     Set var_88 = Me.FGrid
  loc_1524AF8:     LateIdCallSt
  loc_1524B07:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_1524B0F:     var_F4 = CVar(CLng(&H16)) 'Long
  loc_1524B22:     Set var_88 = Me.FGrid
  loc_1524B28:     LateIdCallSt
  loc_1524B33:   End If
  loc_1524B37:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1524B3F:   var_F4 = CVar(CLng(5)) 'Long
  loc_1524B68:   var_13C = CVar(CLng(var_106)) 'Long
  loc_1524B70:   var_160 = CVar(CLng(&HA)) 'Long
  loc_1524B92:   var_210 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1524BE0:   LateIdCallSt
  loc_1524C43:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_106)), Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_210)), "0.00"))), 1, 1)) 'String
  loc_1524C51:   LateIdCallSt
  loc_1524CA3:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(var_106)), Me.FGrid, var_C4, CVar(CLng(&HB)))) 'String
  loc_1524CB1:   LateIdCallSt
  loc_1524D03:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1524D11:   LateIdCallSt
  loc_1524D63:   var_C4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1524D6B:   Set var_150 = Me.FGrid
  loc_1524D71:   LateIdCallSt
  loc_1524DC2:   var_9C = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_C4, -1, var_150, var_150)
  loc_1524DD6:   unk_59BA49.Execute var_C4 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(var_106)), var_210
  loc_1524DE1:   Set var_10C = var_150
  loc_1524E0F:   If (var_10C.RecordCount > 0) Then
  loc_1524E49:     Proc_6_39_E7D3A0(var_C4, CVar(var_10C.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(var_106)))
  loc_1524E52:     var_E4 = CVar(CStr(var_C4)) 'String
  loc_1524E5A:     Set var_150 = Me.FGrid
  loc_1524E60:     LateIdCallSt
  loc_1524E78:   End If
  loc_1524E93:   var_98 = Me.FGrid.TextMatrix)
  loc_1524EEB:   var_112 = Proc_96_27_11F256C(CStr(var_98), CDbl(1), MemVar_1F95070, CStr(Me.FGrid.TextMatrix)), global_56, Me.FGrid.TextMatrix), CVar(CLng(&H17)), CVar(CLng(var_106)))
  loc_1524F13:   Me.LblCurStockStr.Caption = global_56
  loc_1524F20:   Call Proc_32_103_17C4004(&H32, var_112, var_98, CVar(CLng(&HC)), CVar(CLng(var_106)))
  loc_1524F25: End If
  loc_1524F25: Exit Sub
End Sub

Private Sub CmdImport_Click() '1246194
  'Data Table: 59BA2C
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
  loc_1245C74: On Error Goto loc_124618D
  loc_1245C7B: Set var_88 = Me.TopCtrl1
  loc_1245C81: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1245C89: var_9C = CStr()
  loc_1245C9A: If (var_9C <> "Add") Then
  loc_1245CA3:   Call 0.Method_arg_50 (var_9C)
  loc_1245CB1:   var_BC = CVar(var_9C) 'String
  loc_1245CC4:   MsgBox("Import Only In Add Mode.", &H40, var_BC, var_DC, var_FC)
  loc_1245CD4:   Exit Sub
  loc_1245CD5: End If
  loc_1245CF3: If (Trim(MemVar_1F95230) = vbNullString) Then
  loc_1245CF9:   MemVar_1F95230 = "C:\Analysis\Transfer"
  loc_1245D09:   Call 0.Method_CmdImport_Click8 ("C:\Analysis")
  loc_1245D14:   If (var_116 = 0) Then
  loc_1245D23:     Call 0.Method_arg_74 ("C:\Analysis", var_88)
  loc_1245D37:     Call 0.Method_CmdImport_Click8 ("C:\Analysis\Transfer", var_116)
  loc_1245D42:     If (var_116 = 0) Then
  loc_1245D51:       Call 0.Method_arg_74 ("C:\Analysis\Transfer", var_88)
  loc_1245D59:     End If
  loc_1245D59:   End If
  loc_1245D59: End If
  loc_1245D65: Call 0.Method_CmdImport_Click8 (MemVar_1F95230, var_116)
  loc_1245D70: If (var_116 = 0) Then
  loc_1245D8C:   MsgBox("Transfer Location Not Exits", &H40, var_BC, var_DC, var_FC)
  loc_1245D9C: End If
  loc_1245DC0: MemVar_1F95230 = Replace(MemVar_1F95230 & "\", "\\", "\", 1, -1, 0)
  loc_1245DD5: Set var_104 = New 
  loc_1245DE0: Me.Connection15.CursorLocation = 3
  loc_1245DED: var_104.IsolationLevel = &H10
  loc_1245DFA: var_104.CommandTimeout = 0
  loc_1245E17: var_104.Open "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F95230 & "SaleTransfer.mdb", vbNullString, vbNullString, -1
  loc_1245E37: Set var_108 = New 
  loc_1245E54: var_AC = CVar("Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 S Where S.LOGSITE_CODE='" & MemVar_1F95078 & "' Order by S.Vno") 'String
  loc_1245E5B: Me.Recordset15.Open var_AC, CVar(var_104), 3
  loc_1245E60: Call Proc_32_86_118C9D0(1, -1)
  loc_1245E79: If (var_108.RecordCount = 0) Then
  loc_1245E8F:   Me.GridSel.Rows = 2
  loc_1245E97:   Exit Sub
  loc_1245E98: End If
  loc_1245EAB: Me.GridSel.Row = 1
  loc_1245EB3: ' Referenced from: 124615A
  loc_1245EC2: If Not(var_108.EOF) Then
  loc_1245EC9:   Set var_130 = Me.GridSel
  loc_1245ECC:   var_AC = vbNullString
  loc_1245EF0:   var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1245EF8:   var_EC = CVar(CLng(0)) 'Long
  loc_1245F06:   LateIdCallSt
  loc_1245F27:   var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1245F2F:   var_128 = CVar(CLng(1)) 'Long
  loc_1245F5F:   var_DC = CVar(CStr(var_108.Fields.Item("VNo").Value)) 'String
  loc_1245F66:   LateIdCallSt
  loc_1245FC8:   var_DC = CVar(Proc_6_38_E69628(CVar(var_108.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_130, var_DC, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_1245FCF:   LateIdCallSt
  loc_1246025:   var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_124602D:   var_140 = CVar(CLng(3)) 'Long
  loc_124604A:   var_BC = CVar(Proc_6_38_E69628(CVar(var_108.Fields.Item("VDate")), var_130, "dd/mmm/yyyy", var_130, vbNullString)) 'String
  loc_1246060:   LateIdCallSt
  loc_12460A7:   Proc_6_39_E7D3A0(var_BC, CVar(var_108.Fields.Item("BillAmount")), var_130, CVar(CStr(Format(var_BC, "dd/mmm/yyyy"))), 1, 1)
  loc_12460BF:   var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_12460C7:   var_140 = CVar(CLng(4)) 'Long
  loc_12460F0:   var_178 = CVar(CStr(Format(var_BC, "0.00"))) 'String
  loc_12460F7:   LateIdCallSt
  loc_1246117:   Set var_130 = Nothing 
  loc_1246134:   var_AC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_1246143:   Me.GridSel.Row = "BillAmount"
  loc_1246155:   var_108.MoveNext
  loc_124615A:   GoTo loc_1245EB3
  loc_124615D: End If
  loc_1246170: Me.GridSel.FixedRows = 1
  loc_1246184: Me.FrTrans.Visible = True
  loc_124618C: Exit Sub
  loc_124618D: ' Referenced from: 1245C74
  loc_124618D: Proc_6_60_E63754(var_130, var_178, 1, 1, var_140, var_EC)
  loc_1246192: Exit Sub
End Sub

Private Sub Opt_GotFocus(Index As Integer) 'F2AD34
  'Data Table: 59BA2C
  Dim var_9C As String
  Dim var_A0 As OptionButton
  Dim unk_59BA49 As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_F2AC54: Set var_88 = Me.TopCtrl1
  loc_F2AC5A: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F2AC73: If (CStr() = "Add") Then
  loc_F2AC99:   var_9C = "Select IsNull(Max(InvoiceNo),0)+1 From Purch1 Where LOGsite_code='" & MemVar_1F95078
  loc_F2ACB0:   Set var_88 = Me.Opt
  loc_F2ACB6:   Call 0.Method_Opt_GotFocus0 (Index, var_A0, var_A4, CStr() & "' And InvoiceType='", var_98, -1)
  loc_F2ACD7:   unk_59BA49.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_F2ACE7:    = var_C8.Item()
  loc_F2ACEF:    = var_DC.Value
  loc_F2AD06:   Me.LblInvoiceNo.Caption = CStr(var_A0.Caption.Fields)
  loc_F2AD32: End If
  loc_F2AD32: Exit Sub
End Sub

Private Sub Opt_KeyDown(KeyCode As Integer, Shift As Integer) 'E23F60
  'Data Table: 59BA2C
  loc_E23F51: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E23F5A:   Proc_6_75_E5335C(Shift)
  loc_E23F5F: End If
  loc_E23F5F: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECDFDC
  'Data Table: 59BA2C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECDF3E: Set var_88 = Me.TxtPer
  loc_ECDF44: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ECDF52: Proc_6_74_E23240(var_8C)
  loc_ECDF5E: Call Proc_32_96_FE19D4(var_8C)
  loc_ECDF72: Set var_88 = Me.TxtPer
  loc_ECDF78: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECDF80: var_8C.SelStart = 0
  loc_ECDF99: Set var_88 = Me.TxtPer
  loc_ECDF9F: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECDFBA: Set var_90 = Me.TxtPer
  loc_ECDFC0: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ECDFC8: var_98.SelLength = Len(var_8C.Text)
  loc_ECDFDB: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5BF08
  'Data Table: 59BA2C
  loc_E5BED5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5BEDE:   Proc_6_75_E5335C(Shift)
  loc_E5BEE3: End If
  loc_E5BEF8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5BF01:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5BF06: End If
  loc_E5BF06: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E5924C
  'Data Table: 59BA2C
  loc_E5921E: Set var_88 = Me.TxtPer
  loc_E59224: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E5923F: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_E5924B: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E01B94
  'Data Table: 59BA2C
  loc_E01B8E: Call Proc_32_103_17C4004(KeyCode)
  loc_E01B93: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4ACFC
  'Data Table: 59BA2C
  loc_E4ACDA: Set var_88 = Me.TxtPer
  loc_E4ACE0: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4ACEE: Proc_6_73_E23294(var_8C)
  loc_E4ACFA: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F43A54
  'Data Table: 59BA2C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4394B: Me.DGParty.Visible = False
  loc_F4396A: If (Me.RecordCount > 0) Then
  loc_F439A9:   Set var_B4 = Me.Txt
  loc_F439AF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F439B7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F439EA:   var_B0 = Me.Fields.Item("Code")
  loc_F43A09:   Set var_B4 = Me.Txt
  loc_F43A0F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F43A17:   var_B8.Tag = CStr(var_B0.Value)
  loc_F43A2D: End If
  loc_F43A38: Set var_A8 = Me.Txt
  loc_F43A3E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(4))
  loc_F43A46: var_B0.SetFocus
  loc_F43A52: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'EA47E4
  'Data Table: 59BA2C
  Dim var_A8 As Variant
  loc_EA4764: Set var_88 = Me.DGParty
  loc_EA478E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA4796: Set var_BC = Me.DGParty
  loc_EA47D2: Proc_6_138_106E830(Me.DGParty, global_68, CInt(4), Me.FGPoint)
  loc_EA47E0: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD68E0
  'Data Table: 59BA2C
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD6720: On Error Goto loc_FD68D8
  loc_FD6732: Me.DGVType.Visible = False
  loc_FD6751: If (Me.RecordCount > 0) Then
  loc_FD67A3:   Set var_CC = Me.Txt
  loc_FD67A9:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD67B1:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD6809:   Set var_B4 = Me.DGVType
  loc_FD6820:   Set var_CC = Me.Txt
  loc_FD6826:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD682E:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD6886:   global_132 = CStr(Trim(CVar(Me.Fields.Item("NCat"))))
  loc_FD6897: End If
  loc_FD68B5: Set var_B0 = Me.Txt
  loc_FD68BB: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD68C3: var_B4.SetFocus
  loc_FD68D7: Exit Sub
  loc_FD68D8: ' Referenced from: FD6720
  loc_FD68D8: Proc_6_60_E63754(var_B4)
  loc_FD68DD: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_1F 'EA4720
  'Data Table: 59BA2C
  Dim var_A8 As Variant
  loc_EA46A0: Set var_88 = Me.DGVType
  loc_EA46CA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA46D2: Set var_BC = Me.DGVType
  loc_EA470E: Proc_6_138_106E830(Me.DGVType, global_84, CInt(1), Me.FGPoint)
  loc_EA471C: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '111BEC8
  'Data Table: 59BA2C
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
  loc_111BB87: Me.DGItem.Visible = False
  loc_111BBA6: If (Me.RecordCount > 0) Then
  loc_111BBE3:   Set var_B4 = Me.TxtGrid
  loc_111BBE9:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_111BBF1:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_111BC1A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111BC22:   var_EC = CVar(CLng(2)) 'Long
  loc_111BC55:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_111BC5D:   Set var_B8 = Me.FGrid
  loc_111BC63:   LateIdCallSt
  loc_111BC92:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111BC9A:   var_EC = CVar(CLng(&HC)) 'Long
  loc_111BCCD:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_111BCDB:   LateIdCallSt
  loc_111BD42:   var_11C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(4)))) 'String
  loc_111BD4A:   Set var_B8 = Me.FGrid
  loc_111BD50:   LateIdCallSt
  loc_111BD7D:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111BD85:   var_EC = CVar(CLng(1)) 'Long
  loc_111BDB8:   var_11C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_111BDC0:   Set var_B8 = Me.FGrid
  loc_111BDC6:   LateIdCallSt
  loc_111BDFC:   var_B0 = Me.Fields.Item("IPurchRate")
  loc_111BE14:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111BE1C:   var_FC = CVar(CLng(9)) 'Long
  loc_111BE49:   var_14C = CVar(CStr(Format(CVar(var_B0), "0.00000"))) 'String
  loc_111BE51:   Set var_B8 = Me.FGrid
  loc_111BE57:   LateIdCallSt
  loc_111BE75: End If
  loc_111BE81: Set var_A8 = Me.TxtGrid
  loc_111BE87: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_14C, 1, 1)
  loc_111BE8F: var_FC = var_B0.Visible
  loc_111BEA1: If (var_15E = &HFF) Then
  loc_111BEAD:   Set var_A8 = Me.TxtGrid
  loc_111BEB3:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_DC, var_B8)
  loc_111BEBB:   var_B0.SetFocus
  loc_111BEC7: End If
  loc_111BEC7: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E9FE20
  'Data Table: 59BA2C
  Dim var_A8 As Variant
  loc_E9FDA4: Set var_88 = Me.DGItem
  loc_E9FDCE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9FDD6: Set var_BC = Me.DGItem
  loc_E9FE10: Proc_6_138_106E830(Me.DGItem, global_64, 0, Me.FGPoint)
  loc_E9FE1E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60EC4
  'Data Table: 59BA2C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E60E8F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60EA2: Set var_A8 = Me.TxtGrid
  loc_E60EA8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60EB0: var_AC.Visible = False
  loc_E60EBC: Call Proc_32_96_FE19D4()
  loc_E60EC1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69DA0
  'Data Table: 59BA2C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69D5C: Set var_88 = Me.TxtGrid
  loc_E69D62: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69D7C: If (var_8C.Visible = 0) Then
  loc_E69D95:   Me.FGrid.BackColorSel = CVar(CLng(global_112))
  loc_E69D9D: End If
  loc_E69D9D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFEF04
  'Data Table: 59BA2C
  Dim var_4BA0 As Integer
  loc_DFEEFC: Call Proc_32_90_F74CCC()
  loc_DFEF01: Exit Sub
  loc_DFEF02: var_4BA0 = 
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '12C0470
  'Data Table: 59BA2C
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_12BFE14: Set var_88 = Me.TopCtrl1
  loc_12BFE1A: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12BFE5F: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_12BFE68:   Call Form_KeyDown(arg_C, arg_10)
  loc_12BFE6D: End If
  loc_12BFE71: Set var_88 = Me.TopCtrl1
  loc_12BFE77: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12BFE90: If (CStr() = "Browse") Then
  loc_12BFE93:   Exit Sub
  loc_12BFE94: End If
  loc_12BFF08: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_12BFF21:   Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_12BFF31:   var_9C = "+{Tab}"
  loc_12BFF37:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_12BFF41:   arg_C = 0
  loc_12BFF47: Else
  loc_12BFF51:   var_B0 = Me.FGrid.Rows
  loc_12BFF9E:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12BFFB7:     Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_12BFFCD:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_12BFFD7:     arg_C = 0
  loc_12BFFDA:   End If
  loc_12BFFDA: End If
  loc_12BFFE0: global_152 = arg_C
  loc_12C0006: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12C002A: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_12C0040:   var_EC = CLng(Me.FGrid.Col)
  loc_12C0050:   If (var_EC = CLng(2)) Then
  loc_12C0066:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C007E:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12C0083:     var_11C = vbNullString
  loc_12C008D:     Set var_B4 = Me.FGrid
  loc_12C0093:     LateIdCallSt
  loc_12C00BE:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C00C6:     var_FC = CVar(CLng(&HC)) 'Long
  loc_12C00CB:     var_11C = vbNullString
  loc_12C00D5:     Set var_A0 = Me.FGrid
  loc_12C00DB:     LateIdCallSt
  loc_12C0100:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C0108:     var_FC = CVar(CLng(5)) 'Long
  loc_12C010D:     var_11C = vbNullString
  loc_12C0117:     Set var_A0 = Me.FGrid
  loc_12C011D:     LateIdCallSt
  loc_12C0132:   Else
  loc_12C0139:     If Not (var_EC = CLng(1)) Then
  loc_12C0143:       If (var_EC = CLng(5)) Then
  loc_12C0146:       End If
  loc_12C0159:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C0171:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12C0176:       var_11C = vbNullString
  loc_12C0180:       Set var_B4 = Me.FGrid
  loc_12C0186:       LateIdCallSt
  loc_12C01A1:     Else
  loc_12C01A8:       If (var_EC = CLng(9)) Then
  loc_12C01BE:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C01C6:         var_FC = CVar(CLng(&HE)) 'Long
  loc_12C01F9:         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12C020F:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C0227:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12C022C:           var_11C = vbNullString
  loc_12C0236:           Set var_B4 = Me.FGrid
  loc_12C023C:           LateIdCallSt
  loc_12C0254:         End If
  loc_12C0257:       Else
  loc_12C025E:         If (var_EC = CLng(&HB)) Then
  loc_12C0274:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C027C:           var_FC = CVar(CLng(&HE)) 'Long
  loc_12C02AF:           If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12C02C5:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C02DD:             var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12C02E2:             var_11C = vbNullString
  loc_12C02EC:             Set var_B4 = Me.FGrid
  loc_12C02F2:             LateIdCallSt
  loc_12C030A:           End If
  loc_12C030D:         Else
  loc_12C0314:           If (var_EC = CLng(&H19)) Then
  loc_12C032A:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C0342:             var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12C0347:             var_11C = vbNullString
  loc_12C0351:             Set var_B4 = Me.FGrid
  loc_12C0357:             LateIdCallSt
  loc_12C0382:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C038A:             var_FC = CVar(CLng(&H1A)) 'Long
  loc_12C038F:             var_11C = vbNullString
  loc_12C0399:             Set var_A0 = Me.FGrid
  loc_12C039F:             LateIdCallSt
  loc_12C03B4:           Else
  loc_12C03BB:             If (var_EC = CLng(&H1B)) Then
  loc_12C03D1:               var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C03E9:               var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12C03EE:               var_11C = vbNullString
  loc_12C03F8:               Set var_B4 = Me.FGrid
  loc_12C03FE:               LateIdCallSt
  loc_12C0429:               var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C0431:               var_FC = CVar(CLng(&H1C)) 'Long
  loc_12C0436:               var_11C = vbNullString
  loc_12C0440:               Set var_A0 = Me.FGrid
  loc_12C0446:               LateIdCallSt
  loc_12C0458:             End If
  loc_12C0458:           End If
  loc_12C0458:         End If
  loc_12C0458:       End If
  loc_12C0458:     End If
  loc_12C0458:   End If
  loc_12C0458: End If
  loc_12C045E: If (arg_C = &HD) Then
  loc_12C0466:   global_154 = 0
  loc_12C0469: End If
  loc_12C046B: arg_C = 0
  loc_12C046E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E119B0
  'Data Table: 59BA2C
  loc_E119A1: Call FGrid_UnknownEvent_C()
  loc_E119AB: global_154 = 0
  loc_E119AE: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '125D23C
  'Data Table: 59BA2C
  Dim var_8C As MSHFlexGrid
  Dim var_A4 As Long
  Dim var_CE As Integer
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_F4 As Variant
  loc_125CCDC: Set var_8C = Me.TopCtrl1
  loc_125CCE2: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_125CCFB: If (CStr() = "Browse") Then
  loc_125CCFE:   Exit Sub
  loc_125CCFF: End If
  loc_125CD12: var_A4 = CLng(Me.FGrid.Col)
  loc_125CD22: If (var_A4 = CLng(&H16)) Then
  loc_125CD56:   var_CE = Asc(CStr(Ucase(Chr(CLng(Index)))))
  loc_125CD8C:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_125CDAB: Else
  loc_125CDB2:   If (var_A4 = CLng(2)) Then
  loc_125CE1C:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(Index))))))
  loc_125CE3B:   Else
  loc_125CE42:     If (var_A4 = CLng(9)) Then
  loc_125CE83:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index, 0)
  loc_125CE98:     Else
  loc_125CE9F:       If (var_A4 = CLng(&HB)) Then
  loc_125CEE0:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index, 0)
  loc_125CEF5:       Else
  loc_125CEFC:         If (var_A4 = CLng(5)) Then
  loc_125CF3D:           Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index, 0)
  loc_125CF52:         Else
  loc_125CF59:           If (var_A4 = CLng(6)) Then
  loc_125CF6F:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125CF77:             var_100 = CVar(CLng(&HE)) 'Long
  loc_125CFB9:             If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_125CFCF:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125CFD7:               var_100 = CVar(CLng(6)) 'Long
  loc_125D04E:               Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index, 0, Val(CStr(Me.FGrid.TextMatrix))))
  loc_125D060:             End If
  loc_125D063:           Else
  loc_125D06A:             If (var_A4 = CLng(1)) Then
  loc_125D088:               If (((Index >= &H41) And (Index <= &H5A)) Or ((Index >= &H61) And (Index <= &H7A))) Then
  loc_125D09D:                 Me.FGrid.Col = CVar(CLng(2))
  loc_125D0A5:               End If
  loc_125D0E3:               Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index, 0, var_100)
  loc_125D0F8:             Else
  loc_125D0FF:               If (var_A4 = CLng(&H19)) Then
  loc_125D169:                 Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(Index))))), 0, Asc(CStr(Ucase(Chr(CLng(Index))))))
  loc_125D188:               Else
  loc_125D18F:                 If (var_A4 = CLng(&H1B)) Then
  loc_125D19D:                   If (global_260 = "Yes") Then
  loc_125D207:                     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(Index))))), 0, Asc(CStr(Ucase(Chr(CLng(Index))))))
  loc_125D223:                   End If
  loc_125D223:                 End If
  loc_125D223:               End If
  loc_125D223:             End If
  loc_125D223:           End If
  loc_125D223:         End If
  loc_125D223:       End If
  loc_125D223:     End If
  loc_125D223:   End If
  loc_125D223: End If
  loc_125D22D: If (CLng(Index) <> &HD) Then
  loc_125D235:   global_154 = &HFF
  loc_125D238: End If
  loc_125D238: Exit Sub
  loc_125D239: var_F4 = CVar(global_154) 'String
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FF4290
  'Data Table: 59BA2C
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FF40B0: Set var_90 = Me.TopCtrl1
  loc_FF40B6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FF40CF: If (CStr() = "Browse") Then
  loc_FF40D2:   Exit Sub
  loc_FF40D3: End If
  loc_FF40F0: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF40F3:   Exit Sub
  loc_FF40F4: End If
  loc_FF4105: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FF4127:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF4161:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FF4183:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF4199:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF41A2:         Set var_118 = Me.FGrid
  loc_FF41BD:       Else
  loc_FF41D0:         Me.FGrid.Rows = 1
  loc_FF41F6:         var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FF41FE:         Set var_118 = Me.FGrid
  loc_FF422B:         Me.FGrid.FixedRows = 1
  loc_FF4233:       End If
  loc_FF4238:       Call Proc_32_103_17C4004(&H32, FGrid.DispID_10000, var_A0)
  loc_FF423D:     End If
  loc_FF4240:   Else
  loc_FF4261:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FF4271:   End If
  loc_FF4275:   Set var_90 = Me.FGrid
  loc_FF4286: End If
  loc_FF428B: Set var_8C = Nothing
  loc_FF428E: Exit Sub
  loc_FF428F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41A48
  'Data Table: 59BA2C
  Dim var_8C As TextBox
  loc_E41A1C: Call Proc_32_96_FE19D4()
  loc_E41A2C: Set var_88 = Me.TxtGrid
  loc_E41A32: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E41A3A: var_8C.Visible = False
  loc_E41A46: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '101AB9C
  'Data Table: 59BA2C
  Dim var_9C As Variant
  Dim var_90 As String
  Dim var_94 As Variant
  loc_101A978: On Error Goto loc_101AB95
  loc_101A99E: Call Proc_32_95_1012C48(Proc_5_1_100EC1C("ADD", Me))
  loc_101A9A9: Call Proc_32_94_1034584(global_76)
  loc_101A9BB: Set var_94 = Me.Opt
  loc_101A9C1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_9C)
  loc_101A9C9: var_9C.Enabled = True
  loc_101A9E2: Set var_94 = Me.Opt
  loc_101A9E8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_101A9F0: var_9C.Enabled = True
  loc_101AA09: Set var_94 = Me.Opt
  loc_101AA0F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_9C)
  loc_101AA17: var_9C.Enabled = True
  loc_101AA30: Set var_94 = Me.Opt
  loc_101AA36: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_101AA3E: var_9C.Value = True
  loc_101AA51: Call Opt_GotFocus(CInt(1))
  loc_101AA5B: var_90 = CStr(MemVar_1F950EC)
  loc_101AA69: Set var_94 = Me.Txt
  loc_101AA6F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_9C)
  loc_101AA77: var_9C.Text = var_90
  loc_101AA98: Me.FGrid.Col = CVar(CLng(1))
  loc_101AAA6: Call Proc_32_98_10E8DA8(MemVar_1F95044)
  loc_101AAB9: Set var_94 = Me.Txt
  loc_101AABF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_9C)
  loc_101AAE4: Set var_94 = Me.Txt
  loc_101AAEA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_9C)
  loc_101AAF2: var_90 = var_90
  loc_101AB00: Call Proc_32_102_17D6A24(CDate(var_90))
  loc_101AB13: Set var_94 = Me.TopCtrl1
  loc_101AB19: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_90)
  loc_101AB32: If (CStr() = "Add") Then
  loc_101AB40:   Set var_94 = Me.Txt
  loc_101AB46:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_101AB4E:   var_9C.SetFocus
  loc_101AB5A: End If
  loc_101AB5F: Set var_8C = Nothing
  loc_101AB67: Set var_88 = Nothing
  loc_101AB77: Me.LblUser.Caption = vbNullString
  loc_101AB8C: Me.LblLDt.Caption = vbNullString
  loc_101AB94: Exit Sub
  loc_101AB95: ' Referenced from: 101A978
  loc_101AB95: Proc_6_60_E63754(var_9C)
  loc_101AB9A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA0898
  'Data Table: 59BA2C
  loc_EA0820: On Error Goto loc_EA0891
  loc_EA085A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA0880:   Call Proc_32_95_1012C48(Proc_5_1_100EC1C("INI", Me))
  loc_EA088B:   Call Proc_32_92_1A03EEC(global_76)
  loc_EA0890: End If
  loc_EA0890: Exit Sub
  loc_EA0891: ' Referenced from: EA0820
  loc_EA0891: Proc_6_60_E63754()
  loc_EA0896: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '13E836C
  'Data Table: 59BA2C
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As Variant
  Dim unk_59BA49 As Connection15
  Dim var_F8 As Variant
  Dim var_124 As String
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_13E7990: On Error Goto loc_13E831D
  loc_13E79A1: If (Proc_183_56_FE8B08(global_76) = &HFF) Then
  loc_13E79A4:   Exit Sub
  loc_13E79A5: End If
  loc_13E79DC: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_13E79F0:   var_94 = Me.Bookmark 'Variant
  loc_13E7A26:   var_134 = "Guest Folio"
  loc_13E7A6E:   If (Proc_6_108_101061C(MemVar_1F95044, "PayCharge", "DocID", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_13E7A71:     Exit Sub
  loc_13E7A72:   End If
  loc_13E7A7B:   unk_59BA49.BeginTrans var_130
  loc_13E7AD6:   unk_59BA49.Execute CStr("Delete From Purch2 where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13E7B48:   unk_59BA49.Execute CStr("Delete From Purch1 where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13E7BBA:   unk_59BA49.Execute CStr("Delete From Sale2 where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13E7C05:   var_120 = Me.Fields.Item("SearchCode")
  loc_13E7C0D:   var_B8 = var_120.Value
  loc_13E7C1E:   var_F8 = "Delete From SunTran where docid='" & var_B8 & "'" 
  loc_13E7C22:   var_124 = CStr(var_F8)
  loc_13E7C2C:   unk_59BA49.Execute var_124, var_118, -1
  loc_13E7C66:   Set var_11C = Me.Txt
  loc_13E7C6C:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_124, "Delete From Stock Where DocID='", var_B8, -1, var_13C)
  loc_13E7C74:   var_13C = var_120.Text
  loc_13E7C8D:   unk_59BA49.Execute var_13C & var_124 & "'", var_13C, var_13C
  loc_13E7CC5:   Set var_11C = Me.Txt
  loc_13E7CCB:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_124, "Delete From Ledger where DocID='", var_B8)
  loc_13E7CD3:   -1 = var_120.Text
  loc_13E7CE3:   var_12C = var_13C & var_124 & "'"
  loc_13E7CEC:   unk_59BA49.Execute var_12C, 0, var_134
  loc_13E7D35:   var_168 = 0
  loc_13E7D48:   var_160 = 0
  loc_13E7D53:   var_15C = 0
  loc_13E7D66:   var_154 = 0
  loc_13E7D71:   var_150 = 0
  loc_13E7D84:   var_148 = 0
  loc_13E7DCD:   Proc_154_5_10E3BD4(MemVar_1F95044, "PURCH1", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13E7E24:   var_168 = 0
  loc_13E7E37:   var_160 = 0
  loc_13E7E42:   var_15C = 0
  loc_13E7E55:   var_154 = 0
  loc_13E7E60:   var_150 = 0
  loc_13E7E73:   var_148 = 0
  loc_13E7EBC:   Proc_154_5_10E3BD4(MemVar_1F95044, "PURCH2", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13E7F13:   var_168 = 0
  loc_13E7F26:   var_160 = 0
  loc_13E7F31:   var_15C = 0
  loc_13E7F44:   var_154 = 0
  loc_13E7F4F:   var_150 = 0
  loc_13E7F62:   var_148 = 0
  loc_13E7FAB:   Proc_154_5_10E3BD4(MemVar_1F95044, "SALE2", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13E7FF0:   var_120 = Me.Fields.Item("SearchCode")
  loc_13E8002:   var_168 = 0
  loc_13E8015:   var_160 = 0
  loc_13E8020:   var_15C = 0
  loc_13E8033:   var_154 = 0
  loc_13E809A:   Proc_154_5_10E3BD4(MemVar_1F95044, "SUNTRAN", "DocId", &HC8, CStr(var_120.Value), 0, 0, 0)
  loc_13E80D0:   Set var_11C = Me.Txt
  loc_13E80D6:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_12C, 0, 0, 0)
  loc_13E80DE:   var_154 = var_120.Text
  loc_13E80E8:   var_16C = 0
  loc_13E80FB:   var_168 = 0
  loc_13E8106:   var_160 = 0
  loc_13E8119:   var_15C = 0
  loc_13E817F:   Proc_154_5_10E3BD4(MemVar_1F95044, "STOCK", "DocId", &HC8, var_12C, 0, 0, 0)
  loc_13E81B2:   Set var_11C = Me.Txt
  loc_13E81B8:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_12C, 0, 0, 0)
  loc_13E81C0:   var_15C = var_120.Text
  loc_13E81CA:   var_16C = 0
  loc_13E81DD:   var_168 = 0
  loc_13E81E8:   var_160 = 0
  loc_13E81FB:   var_15C = 0
  loc_13E8206:   var_154 = 0
  loc_13E8219:   var_150 = 0
  loc_13E8258:   var_124 = "LEDGER"
  loc_13E8261:   Proc_154_5_10E3BD4(MemVar_1F95044, var_124, "DocId", &HC8, var_12C, 0, 0, 0)
  loc_13E828C:   unk_59BA49.CommitTrans
  loc_13E829C:   Me.Requery -1
  loc_13E82BC:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_13E82C9:     Me.Bookmark = var_94
  loc_13E82D1:   Else
  loc_13E82E5:     If (Me.EOF = 0) Then
  loc_13E82EE:       Me.MoveLast
  loc_13E82F3:     End If
  loc_13E82F3:   End If
  loc_13E82F3:   Call Proc_32_92_1A03EEC(var_150, 0, var_154, var_15C)
  loc_13E8314:   Proc_5_0_1107AD0(&HFF, Me, global_76, 0)
  loc_13E831C: End If
  loc_13E831C: Exit Sub
  loc_13E831D: ' Referenced from: 13E7990
  loc_13E8323: unk_59BA49.RollbackTrans
  loc_13E8330: Set var_11C = Err()
  loc_13E8336: Call 0.Method_arg_2C (var_124, 0, var_160)
  loc_13E8357: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F8, var_118)
  loc_13E836A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1176EF8
  'Data Table: 59BA2C
  Dim var_90 As TextBox
  Dim var_C4 As Variant
  Dim var_94 As String
  Dim var_10C As String
  Dim var_124 As String
  Dim unk_59BA49 As Connection15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  loc_1176B48: On Error Goto loc_1176EF1
  loc_1176B6B: Set var_8C = Me.Txt
  loc_1176B71: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_90)
  loc_1176B79: var_94 = var_90.Text
  loc_1176B92: If (((global_264 = "No") And (MemVar_1F950B8 <> 1)) And (CDate(var_94) < MemVar_1F950EC)) Then
  loc_1176B9B:   Call 0.Method_arg_50 (var_94)
  loc_1176BB6:   var_B4 = "Back Date Entry Blocked."
  loc_1176BBC:   MsgBox(var_B4, &H10, CVar(var_94), var_E4, var_104)
  loc_1176BCC:   Exit Sub
  loc_1176BCD: End If
  loc_1176BDB: If (Proc_183_55_FE8490(global_76) = &HFF) Then
  loc_1176BDE:   Exit Sub
  loc_1176BDF: End If
  loc_1176C02: Call Proc_32_95_1012C48(Proc_5_1_100EC1C("EDIT", Me))
  loc_1176C24: If ((global_132 = "PBC") Or (global_132 = "EXC")) Then
  loc_1176C31:   Set global_80 = New 
  loc_1176C43:   Me.Recordset15.CursorLocation = 3
  loc_1176C4F:   var_94 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_1176C56:   var_10C = var_94 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.LogSite_Code=V.LogSite_Code) "
  loc_1176C79:   var_124 = var_10C & "where V.LogSite_Code='" & MemVar_1F95078 & "' and V.Site_Code='" & MemVar_1F95070 & "' and V.Ncat in ('MRE') and M.Partycode='"
  loc_1176C90:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_90, var_120)
  loc_1176C98:   var_124 = var_90.Tag
  loc_1176CA8:   var_88 = global_76 & var_120 & "'    Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.AccQty,0)) > 0 "
  loc_1176CDD:   unk_59BA49.Execute var_88, var_B4, -1
  loc_1176CEE:   Set global_80 = Me.Txt
  loc_1176D05:   CVarUnk
  loc_1176D0A:   VerifyVarObj
  loc_1176D10:   Set var_8C = Me.DgMR
  loc_1176D16:   LateIdStAd
  loc_1176D24: End If
  loc_1176D24: Call Proc_32_110_11301B4(var_8C, global_80)
  loc_1176D3D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_90)
  loc_1176D53: Call Proc_32_102_17D6A24(CDate(var_90.Text))
  loc_1176D62: Call Proc_32_92_1A03EEC(Me.Txt)
  loc_1176D74: Set var_8C = Me.Txt
  loc_1176D7A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_90)
  loc_1176D82: var_90.Enabled = False
  loc_1176D9B: Set var_8C = Me.Txt
  loc_1176DA1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_90)
  loc_1176DA9: var_90.Enabled = False
  loc_1176DC2: Set var_8C = Me.Txt
  loc_1176DC8: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_90)
  loc_1176DD0: var_90.Enabled = False
  loc_1176DEA: Set var_8C = Me.Txt
  loc_1176DF0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_90)
  loc_1176E14: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_1176E24:   Set var_8C = Me.Txt
  loc_1176E2A:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_90)
  loc_1176E32:   var_90.Enabled = True
  loc_1176E3E: End If
  loc_1176E50: Me.FGrid.Col = CVar(CLng(1))
  loc_1176E73: var_C4 = CVar(CStr((CLng(Me.FGrid.Rows) - 1))) 'String
  loc_1176E7B: Set var_90 = Me.FGrid
  loc_1176E9B: Set var_8C = Me.FGrid
  loc_1176EBE: Me.FGrid.Col = CVar(CLng(2))
  loc_1176ED3: Me.LblUser.Caption = vbNullString
  loc_1176EE8: Me.LblLDt.Caption = vbNullString
  loc_1176EF0: Exit Sub
  loc_1176EF1: ' Referenced from: 1176B48
  loc_1176EF1: Proc_6_60_E63754(FGrid.DispID_8001, FGrid.DispID_10000)
  loc_1176EF6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E179D0
  'Data Table: 59BA2C
  loc_E179C5: Me.Global.Unload Me
  loc_E179CD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'FCB184
  'Data Table: 59BA2C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_13C As Variant
  Dim MemVar_1F950E4 As String
  loc_FCAFE0: On Error Goto loc_FCB17E
  loc_FCAFFA: If (Me.RecordCount <= 0) Then
  loc_FCB018:   var_A8 = "No Records To Search."
  loc_FCB01E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_FCB02E:   Exit Sub
  loc_FCB02F: End If
  loc_FCB042: If (OpenAs = "Expense") Then
  loc_FCB04C:   var_10C = "Select DISTINCT P.Docid as SearchCode,P.VNo as [No] ,CONVERT(VARCHAR(11),P.VDate) as [Date],S.Name as PartyName,P.PARTYBILLNO,P.CashParty" & " From (Purch1 P Left Join Voucher_Type V On (P.VType= V.V_Type and P.LogSite_Code=V.LogSite_Code)) "
  loc_FCB061:   Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_FCB081:   Proc_6_7_F26918(var_11C, MemVar_1F950FC)
  loc_FCB092:   var_13C = CVar(var_10C & " Left join SubGroup S on S.SubCode=P.Party Where P.VDATE Between ") & var_A8 & " And " & var_11C & " AND V.LogSite_Code='" 
  loc_FCB0AA:   MemVar_1F950E4 = CStr(var_13C & CVar(MemVar_1F95078) & "' aND  V.Category  in('EXPENT') Order By [Date],SearchCode")
  loc_FCB0C9: Else
  loc_FCB0D0:   var_10C = "Select DISTINCT P.Docid as SearchCode,P.VNo as [No] ,CONVERT(VARCHAR(11),P.VDate) as [Date],S.Name as PartyName,P.PARTYBILLNO,P.CashParty" & " From (Purch1 P Left Join Voucher_Type V On (P.VType= V.V_Type and P.LogSite_Code=V.LogSite_Code)) "
  loc_FCB0E5:   Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_FCB0F1:   var_B8 = " And "
  loc_FCB105:   Proc_6_7_F26918(var_11C, MemVar_1F950FC)
  loc_FCB116:   var_13C = CVar(var_10C & " Left join SubGroup S on S.SubCode=P.Party Where P.VDATE Between ") & var_A8 & var_B8 & var_11C & " AND V.LogSite_Code='" 
  loc_FCB12E:   MemVar_1F950E4 = CStr(var_13C & CVar(MemVar_1F95078) & "' aND  V.Category  in('PurchBill') Order By [Date],SearchCode")
  loc_FCB14A: End If
  loc_FCB153: Proc_6_126_F1C850("700,1150,4000,1500,3500", MemVar_1F950E4)
  loc_FCB161: MemVar_1F95120 = Me
  loc_FCB178: Call 0.Method_arg_2B0 (1, var_B8)
  loc_FCB17D: Exit Sub
  loc_FCB17E: ' Referenced from: FCAFE0
  loc_FCB17E: Proc_6_60_E63754(MemVar_1F950E4)
  loc_FCB183: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32708
  'Data Table: 59BA2C
  loc_E326F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32700: Call Proc_32_92_1A03EEC(global_76)
  loc_E32705: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E32348
  'Data Table: 59BA2C
  loc_E32338: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32340: Call Proc_32_92_1A03EEC(global_76)
  loc_E32345: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E32288
  'Data Table: 59BA2C
  loc_E32278: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32280: Call Proc_32_92_1A03EEC(global_76)
  loc_E32285: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E32228
  'Data Table: 59BA2C
  loc_E32218: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32220: Call Proc_32_92_1A03EEC(global_76)
  loc_E32225: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '145FD80
  'Data Table: 59BA2C
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_D4 As String
  Dim var_D8 As String
  Dim var_E8 As TextBox
  Dim unk_59BA49 As Connection15
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
  loc_145F218: On Error Goto loc_145FD78
  loc_145F232: If (Me.RecordCount <= 0) Then
  loc_145F235:   Exit Sub
  loc_145F236: End If
  loc_145F23D: var_C8 = "Select P2.Docid,P2.VNo,P2.VDate,P2.VType As V_Type,CASE WHEN P2.RecdQty=0 THEN P2.IssQty ELSE P2.RecdQty END as Qty,CASE WHEN ISNULL(P2.RecdUnit,'')='' THEN P2.IssueUnit ELSE P2.RecdUnit END As Unit,P2.ItemRate,P2.Amount," & " P1.CashParty as PartyName,P1.PartyBillNo,P1.PartyBillDt,P1.Total,P1.DiscPer,P1.DiscAmt,P1.AddAmt,P1.DedAmt,P1.RoundOff,P1.NetAmt,P1.PartyBillDt,I.Name as ItemName,G.Name as GodName,P2.ContraDocId,V.Description,SG.Name As SaleAcName,"
  loc_145F244: var_CC = var_C8 & " P1.TINNO,IsNull(SG1.ConPrefix,'') ConPrefix,IsNull(SG1.ConPerSon,'') ConPerSon,REPLACE(REPLACE(LTrim(RTrim(IsNull(SG1.Add1,'')))+', '+LTrim(RTrim(IsNull(SG1.Add2,'')))+', '+LTrim(RTrim(IsNull(SG1.Add3,'')))+', '+LTrim(RTrim(IsNull(City.CityName,''))),',,',','),', ,',',') PartyAddress,P2.Rate,IsNull(P1.InvoiceType,'') InvoiceType,IsNull(P1.InvoiceNo,0) InvoiceNo,TS.Name As TaxStruct,P1.Payable,IsNull(P1.Remark,'') As Remark From ((((((Purch2 as P2 Left Join Purch1 as P1 on P2.DocID=P1.DocID)"
  loc_145F252: var_D4 = var_CC & " Left Join GodownMast as G on P2.Godcode=G.Code)" & " Left Join ItemMast as I on P2.Item=I.Code And I.ItemType='Store') left Join (Select Code,Max(Name) Name From TaxStru Group By Code) TS on TS.Code=P2.TaxStru"
  loc_145F259: var_D8 = var_D4 & " Left Join Voucher_Type as V on (P2.VType=V.V_Type and P2.LogSite_Code=V.LogSite_Code) left Join SubGroup SG On SG.SubCode=P2.AcCode) left Join SubGroup SG1 On SG1.SubCode=P1.Party) left Join City On City.CityCode=SG1.CityCode) "
  loc_145F27F: Set var_E4 = Me.Txt
  loc_145F285: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_E8)
  loc_145F29D: var_88 = var_D8 & " Where V.LogSite_Code='" & MemVar_1F95078 & "' and P2.DocID='" & var_E8.Text & "'"
  loc_145F2CF: Set var_E4 = Me.Txt
  loc_145F2D5: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_E8)
  loc_145F2DD: var_C8 = var_E8.Text
  loc_145F2ED: var_8C = "Select S.* From SunTran S Where S.DocId='" & var_C8 & "' Order By SNo"
  loc_145F30F: If ((var_88 = vbNullString) Or (var_8C = vbNullString)) Then
  loc_145F312:   Exit Sub
  loc_145F313: End If
  loc_145F329: unk_59BA49.Execute var_88, var_114, -1
  loc_145F334: Set var_A0 = var_E4
  loc_145F353: unk_59BA49.Execute var_8C, var_114, -1
  loc_145F35E: Set var_A4 = var_E4
  loc_145F37B: If (var_A0.RecordCount <= 0) Then
  loc_145F384:   Call 0.Method_arg_50 (var_C8, var_E4)
  loc_145F3A5:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C8), var_144, var_164)
  loc_145F3B5:   Exit Sub
  loc_145F3B6: End If
  loc_145F3C9: If (OpenAs = "Expense") Then
  loc_145F3E2:   Set var_E4 = var_A0 
  loc_145F3F8:   Set var_A0 = var_E4
  loc_145F3FE:   var_104 = CVar(CreateFieldDefFile(var_E4, MemVar_1F950B4 & "\ExpenseVoucher.ttx")) 'Integer
  loc_145F401:   var_9C = var_104 'Variant
  loc_145F426:   Call 0.Method_arg_1C (MemVar_1F950B4 & "\ExpenseVoucher.RPT", var_104, var_E4)
  loc_145F431:   MemVar_1F951E8 = var_E4
  loc_145F43E: Else
  loc_145F454:   Set var_E4 = var_A0 
  loc_145F460:   var_166 = CreateFieldDefFile(var_E4, MemVar_1F950B4 & "\PurchBill.ttx", &HFF)
  loc_145F46A:   Set var_A0 = var_E4
  loc_145F470:   var_104 = CVar(var_166) 'Integer
  loc_145F473:   var_9C = var_104 'Variant
  loc_145F48F:   var_C8 = MemVar_1F950B4 & "\PurchRetBill.RPT"
  loc_145F498:   Call 0.Method_arg_1C (var_C8, var_104, var_E4, var_166)
  loc_145F4A3:   MemVar_1F951E8 = var_E4
  loc_145F4AD: End If
  loc_145F4B3: var_C4 = var_A4.RecordCount
  loc_145F4C1: If (var_C4 > 0) Then
  loc_145F4C4:   ' Referenced from: 145FC3F
  loc_145F4CA:   var_166 = var_A4.EOF
  loc_145F4D3:   If Not(var_166) Then
  loc_145F4FC:     var_124 = Trim(CVar(var_A4.Fields.Item("SunCode")))
  loc_145F52A:     If (Ucase(var_124) = CVar(MemVar_1F95078 & "NET")) Then
  loc_145F56D:       var_E4 = var_A4.Fields
  loc_145F575:       var_E8 = var_E4.Item("Amount")
  loc_145F584:       Proc_6_39_E7D3A0(var_124, CVar(var_E8))
  loc_145F5AD:       var_B8 = CStr(Format(var_124, "0.00"))
  loc_145F5CF:       Call 0.Method_arg_90 (var_E4, var_C4, var_AA, 1)
  loc_145F5D7:       Call 0.Method_arg_24 (1, 1)
  loc_145F5E3:       For var_17C = var_E4 To CInt(var_C4): &HFF = var_17C 'Integer
  loc_145F5FC:         Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145F604:         Call 0.Method_arg_20 (var_C8)
  loc_145F60C:         Call 0.Method_arg_30 (var_E4)
  loc_145F622:         var_18C = Ucase(CVar(var_C8)) 'Variant
  loc_145F638:         var_114 = "lblNetAmount"
  loc_145F652:         If (var_18C = Ucase(var_114)) Then
  loc_145F660:           Proc_6_17_EAAE40(var_114)
  loc_145F67C:           Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145F684:           Call 0.Method_arg_20 (CStr(var_114))
  loc_145F68C:           Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_A4.Fields.Item("DispName")), var_166))
  loc_145F6A1:         Else
  loc_145F6A9:           var_114 = "NetAmount"
  loc_145F6C3:           If (var_18C = Ucase(var_114)) Then
  loc_145F6D1:             Proc_6_17_EAAE40(var_114)
  loc_145F6D9:             var_C8 = CStr(var_114)
  loc_145F6ED:             Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145F6F5:             Call 0.Method_arg_20 (var_C8)
  loc_145F6FD:             Call 0.Method_arg_38 (var_B8)
  loc_145F70F:           End If
  loc_145F70F:         End If
  loc_145F712:       Next var_17C 'Integer
  loc_145F71A:     Else
  loc_145F740:       var_124 = Trim(CVar(var_A4.Fields.Item("SunCode")))
  loc_145F76E:       If (Ucase(var_124) = CVar(MemVar_1F95078 & "TOT")) Then
  loc_145F7B1:         var_E4 = var_A4.Fields
  loc_145F7B9:         var_E8 = var_E4.Item("Amount")
  loc_145F7C1:         var_114 = CVar(var_E8) 'Address
  loc_145F7C8:         Proc_6_39_E7D3A0(var_124)
  loc_145F7F1:         var_B8 = CStr(Format(var_124, "0.00"))
  loc_145F813:         Call 0.Method_arg_90 (var_E4, var_C4, var_AA, 1)
  loc_145F81B:         Call 0.Method_arg_24 (1, 1)
  loc_145F827:         For var_190 =  To CInt(var_C4):   var_114 = var_190 'Integer
  loc_145F840:           Call 0.Method_arg_90 (var_E4, CLng(var_AA))
  loc_145F848:           Call 0.Method_arg_20 (var_E8)
  loc_145F850:           Call 0.Method_arg_30 (var_C8)
  loc_145F866:           var_1A0 = Ucase(CVar(var_C8)) 'Variant
  loc_145F87C:           var_114 = "lblTotal"
  loc_145F896:           If (var_1A0 = Ucase(var_114)) Then
  loc_145F8A4:             Proc_6_17_EAAE40(var_114)
  loc_145F8C0:             Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145F8C8:             Call 0.Method_arg_20 (CStr(var_114))
  loc_145F8D0:             Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_A4.Fields.Item("DispName"))))
  loc_145F8E5:           Else
  loc_145F8ED:             var_114 = "Total"
  loc_145F8F6:             var_124 = Ucase(var_114)
  loc_145F907:             If (var_1A0 = var_124) Then
  loc_145F915:               Proc_6_17_EAAE40(var_114)
  loc_145F91D:               var_C8 = CStr(var_114)
  loc_145F931:               Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145F939:               Call 0.Method_arg_20 (var_C8)
  loc_145F941:               Call 0.Method_arg_38 (var_B8)
  loc_145F953:             End If
  loc_145F953:           End If
  loc_145F956:         Next var_190 'Integer
  loc_145F95E:       Else
  loc_145F9AE:         var_114 = CVar(var_A4.Fields.Item("SValue")) 'Address
  loc_145F9B5:         Proc_6_39_E7D3A0(var_124)
  loc_145F9DE:         var_BC = CStr(Format(var_124, "0.00"))
  loc_145F9FE:         var_E4 = var_A4.Fields
  loc_145FA06:         var_E8 = var_E4.Item("Amount")
  loc_145FA0E:         var_114 = CVar(var_E8) 'Address
  loc_145FA15:         Proc_6_39_E7D3A0(var_124, var_114, 1)
  loc_145FA24:         var_134 = "0.00"
  loc_145FA3E:         var_B8 = CStr(Format(var_124, var_134))
  loc_145FA55:         var_BE = (var_BE + 1)
  loc_145FA69:         Call 0.Method_arg_90 (var_E4, var_C4, var_AA, 1, var_BE)
  loc_145FA71:         Call 0.Method_arg_24 (1, 1)
  loc_145FA7D:         For var_1A4 = var_114 To CInt(var_C4):     1 = var_1A4 'Integer
  loc_145FA96:           Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145FA9E:           Call 0.Method_arg_20 (var_C8)
  loc_145FAA6:           Call 0.Method_arg_30 (var_114)
  loc_145FABC:           var_1B4 = Ucase(CVar(var_C8)) 'Variant
  loc_145FAD9:           var_114 = CVar("lblSunName" & CStr(var_BE)) 'String
  loc_145FAF3:           If (var_1B4 = Ucase(var_114)) Then
  loc_145FB01:             Proc_6_17_EAAE40(var_114)
  loc_145FB1D:             Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145FB25:             Call 0.Method_arg_20 (CStr(var_114))
  loc_145FB2D:             Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_A4.Fields.Item("DispName"))))
  loc_145FB42:           Else
  loc_145FB51:             var_114 = CVar("SunPer" & CStr(var_BE)) 'String
  loc_145FB6B:             If (var_1B4 = Ucase(var_114)) Then
  loc_145FB79:               Proc_6_17_EAAE40(var_114)
  loc_145FB95:               Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145FB9D:               Call 0.Method_arg_20 (CStr(var_114))
  loc_145FBA5:               Call 0.Method_arg_38 (var_BC)
  loc_145FBBA:             Else
  loc_145FBC9:               var_114 = CVar("SunAmt" & CStr(var_BE)) 'String
  loc_145FBE3:               If (var_1B4 = Ucase(var_114)) Then
  loc_145FBF1:                 Proc_6_17_EAAE40(var_114)
  loc_145FBF9:                 var_C8 = CStr(var_114)
  loc_145FC0D:                 Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145FC15:                 Call 0.Method_arg_20 (var_C8)
  loc_145FC1D:                 Call 0.Method_arg_38 (var_B8)
  loc_145FC2F:               End If
  loc_145FC2F:             End If
  loc_145FC2F:           End If
  loc_145FC32:         Next var_1A4 'Integer
  loc_145FC37:       End If
  loc_145FC37:     End If
  loc_145FC3A:     var_A4.MoveNext
  loc_145FC3F:     GoTo loc_145F4C4
  loc_145FC42:   End If
  loc_145FC42: End If
  loc_145FC53: Call 0.Method_arg_90 (var_E4, var_C4)
  loc_145FC5B: Call 0.Method_arg_24 (var_AA)
  loc_145FC67: For var_1B8 =  To CInt(var_C4): 1 = var_1B8 'Integer
  loc_145FC80:   Call 0.Method_arg_90 (var_E4, CLng(var_AA))
  loc_145FC88:   Call 0.Method_arg_20 (var_E8)
  loc_145FC90:   Call 0.Method_arg_30 (var_C8)
  loc_145FCAA:   If (var_C8 = "Title") Then
  loc_145FCC0:     Call 0.Method_arg_90 (var_E4, CLng(var_AA))
  loc_145FCC8:     Call 0.Method_arg_20 (var_E8)
  loc_145FCD0:     Call 0.Method_arg_38 ("'Purchase Bill'")
  loc_145FCDC:   End If
  loc_145FCDF: Next var_1B8 'Integer
  loc_145FCFD: Call 0.Method_arg_64 (var_E4, CVar(var_A0))
  loc_145FD05: Call 0.Method_arg_2C (var_134)
  loc_145FD13: Call 0.Method_arg_150 (var_154)
  loc_145FD1E: Call 0.Method_arg_50 (var_C8)
  loc_145FD28: Set var_E8 = Nothing
  loc_145FD42: Set var_E4 = MemVar_1F951E8 
  loc_145FD4E: Proc_6_99_1484404(var_E4, 0, var_C8)
  loc_145FD59: MemVar_1F951E8 = var_E4
  loc_145FD6C: Set var_A0 = Nothing
  loc_145FD74: Set var_B0 = Nothing
  loc_145FD77: Exit Sub
  loc_145FD78: ' Referenced from: 145F218
  loc_145FD78: Proc_6_60_E63754(&HFF)
  loc_145FD7D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E6601C
  'Data Table: 59BA2C
  Dim Me As Recordset15
  loc_E65FD3: Me.Requery -1
  loc_E65FE3: Me.Requery -1
  loc_E65FF6: Me.Recordset15.Requery -1
  loc_E66006: Me.Requery -1
  loc_E66016: Me.Requery -1
  loc_E6601B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1C06E1C
  'Data Table: 59BA2C
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
  Dim unk_59BA49 As Connection15
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
  loc_1C014DC: On Error Goto loc_1C06DCF
  loc_1C014F0: Call 0.Method_arg_38 (MemVar_1F95218, var_170)
  loc_1C014FE: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_170)
  loc_1C0150A: If Not(var_172) Then
  loc_1C01528:   MsgBox("InValid Picture Path in Analysis.ini", &H40, var_1B4, var_1D4, var_1F4)
  loc_1C0153A:   Exit Sub
  loc_1C0153B: End If
  loc_1C01553: Call 0.Method_arg_38 (MemVar_1F95218 & "\PurchBill", var_1F8)
  loc_1C01561: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1F8, var_172)
  loc_1C01571: If Not(var_172) Then
  loc_1C01589:   Call 0.Method_arg_74 (MemVar_1F95218 & "\PurchBill", var_1FC)
  loc_1C01594: End If
  loc_1C015A4: Set var_1FC = Me.Opt
  loc_1C015AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1C015B2: var_172 = var_200.Value
  loc_1C015C5: Set var_204 = Me.Opt
  loc_1C015CB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_208)
  loc_1C015E6: Set var_20C = Me.Opt
  loc_1C015EC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_210)
  loc_1C015F4: var_212 = var_210.Value
  loc_1C01607: Set var_218 = Me.Opt
  loc_1C0160D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_21C)
  loc_1C01628: Set var_220 = Me.Opt
  loc_1C0162E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_224)
  loc_1C0165F: var_1F4 = CVar(var_208.Caption) 'String
  loc_1C01678: var_140 = CStr(IIf((var_172 = &HFF), var_1F4, IIf((var_212 = &HFF), CVar(var_21C.Caption), CVar(var_224.Caption))))
  loc_1C016C8: If (((global_132 = "PBR") Or (global_132 = "EXR")) Or (global_132 = "PRR")) Then
  loc_1C016CB: End If
  loc_1C016DA: Set var_1FC = Me.Txt
  loc_1C016E0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200)
  loc_1C01709: If (Proc_6_27_EA61EC(var_200, "Voucher Date") = 0) Then
  loc_1C0170E:   Exit Sub
  loc_1C0170F: End If
  loc_1C01718: Set var_1FC = Me.TxtGt
  loc_1C0171E: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_172)
  loc_1C01731: Call TxtGt_Validate((var_172 + 1))
  loc_1C01746: Set var_1FC = Me.Txt
  loc_1C0174C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_1C01775: If (Proc_6_27_EA61EC(var_200, "Voucher No") = 0) Then
  loc_1C0177A:   Exit Sub
  loc_1C0177B: End If
  loc_1C017A2: For var_23E = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_23E 'Integer
  loc_1C017AE:   var_184 = CVar(CLng(var_92)) 'Long
  loc_1C017B6:   var_1C4 = CVar(CLng(2)) 'Long
  loc_1C017F2:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1C017F9:     var_136 = &HFF
  loc_1C017FC:   End If
  loc_1C01802:   var_184 = CVar(CLng(var_92)) 'Long
  loc_1C0180A:   var_1C4 = CVar(CLng(2)) 'Long
  loc_1C01824:   var_1B4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C0182A:   var_1D4 = Trim(var_1B4)
  loc_1C01832:   var_250 = vbNullString
  loc_1C01840:   var_260 = CVar(CLng(var_92)) 'Long
  loc_1C01851:   Set var_200 = Me.FGrid
  loc_1C01873:   var_2B0 = CVar(CLng(9)) And (CDbl(Val(CStr(var_200.TextMatrix)))) <> CDbl(0))
  loc_1C0187B:   var_2C0 = CVar(CLng(var_92)) 'Long
  loc_1C018AE:   var_320 = CVar(CLng(&HA)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))
  loc_1C018B6:   var_330 = CVar(CLng(var_92)) 'Long
  loc_1C018C7:   Set var_208 = Me.FGrid
  loc_1C018F0:   var_3C0 = CVar(CLng(&H17)) And (Trim(CVar(CStr(var_208.TextMatrix)))) = vbNullString)
  loc_1C0191F:   If CBool(var_3C0) Then
  loc_1C0193A:     var_170 = CStr(var_92)
  loc_1C01948:     MsgBox(CVar("Invalid record on row no." & var_170 & vbNullString), 0, var_1B4, var_1D4, var_1F4)
  loc_1C01974:     Me.FGrid.Row = CVar(CLng(var_92))
  loc_1C01990:     Me.FGrid.Col = CVar(CLng(2))
  loc_1C0199E:     Set var_1FC = Me.FGrid
  loc_1C019B1:     Exit Sub
  loc_1C019B2:   End If
  loc_1C019B9: Next var_23E 'Integer
  loc_1C019C6: If (var_136 = 0) Then
  loc_1C019DE:   var_194 = "No Item Found In Grid."
  loc_1C019E4:   MsgBox(var_194, &H10, var_1B4, var_1D4, var_1F4)
  loc_1C019FA:   Set var_1FC = Me.FGrid
  loc_1C01A0D:   Exit Sub
  loc_1C01A0E: End If
  loc_1C01A27: If ((global_132 = "PBR") Or (global_132 = "EXR")) Then
  loc_1C01A49:   Proc_6_7_F26918(var_194, MemVar_1F950F4, "Select Count(*) from Purch1 where VDATE BETWEEN ", var_3C0)
  loc_1C01A51:   var_1B4 = -1 & var_194 
  loc_1C01A5A:   var_1D4 = var_1B4 & " AND " 
  loc_1C01A69:   Proc_6_7_F26918(var_1F4, MemVar_1F950FC, var_1D4)
  loc_1C01A7A:   var_2B0 = var_20C & var_1F4 & " AND Vtype in (Select Vtype from Voucher_type where NCAT='PBR') and PartyBillNo='" 
  loc_1C01A8C:   Set var_1FC = Me.Txt
  loc_1C01A92:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_200, var_170)
  loc_1C01A9A:   var_2B0 = var_200.Text
  loc_1C01AC0:   Set var_204 = Me.Txt
  loc_1C01AC6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_208)
  loc_1C01AF0:   unk_59BA49.Execute CStr(FGrid.DispID_8001 & CVar(var_170) & "' and Party='" & CVar(var_208.Tag) & "'"), , 
  loc_1C01B31:   Set var_1FC = Me.TopCtrl1
  loc_1C01B37:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1C01B50:   If (CStr() = "Add") Then
  loc_1C01B67:     var_1FC = var_20C.Fields
  loc_1C01B91:     If (var_1FC.Item(0).Value > 0) Then
  loc_1C01BA9:       var_194 = "Duplicate Party Bill No"
  loc_1C01BAF:       MsgBox(var_194, 0, var_1B4, var_1D4, var_1F4)
  loc_1C01BC4:     Else
  loc_1C01BC6:     End If
  loc_1C01BC8:   End If
  loc_1C01BD7:   If (global_240 = "Room Service") Then
  loc_1C01BF9:     Proc_6_17_EAAE40(var_194, MemVar_1F95078, "Select RoomPayType From enviro WHERE LOGSITE_CODE=")
  loc_1C01C0F:     unk_59BA49.Execute CStr(var_1D4 & var_194), -1, var_1FC
  loc_1C01C1A:     Set var_88 = var_1FC
  loc_1C01C42:     If (var_88.RecordCount > 0) Then
  loc_1C01C59:       var_1FC = var_88.Fields
  loc_1C01C8D:       If (Proc_6_38_E69628(var_1FC.Item(0).Value) = vbNullString) Then
  loc_1C01CAD:         var_194 = "Please define Room Payment Type From Enviro"
  loc_1C01CB3:         MsgBox(var_194, &H40, "HMS", var_1D4, var_1F4)
  loc_1C01CC5:         Exit Sub
  loc_1C01CC6:       End If
  loc_1C01CC8:     End If
  loc_1C01CCD:   Else
  loc_1C01CEE:     Proc_6_17_EAAE40(var_194, MemVar_1F95078, "Select CashPurchAc From enviro WHERE LOGSITE_CODE=")
  loc_1C01D04:     unk_59BA49.Execute CStr(var_1D4 & var_194), -1, var_1FC
  loc_1C01D0F:     Set var_88 = var_1FC
  loc_1C01D37:     If (var_88.RecordCount > 0) Then
  loc_1C01D56:       var_200 = var_88.Fields.Item(0)
  loc_1C01D6B:       var_148 = Proc_6_38_E69628(var_200.Value)
  loc_1C01D82:       If (var_148 = vbNullString) Then
  loc_1C01DA8:         MsgBox("Please define Cash Payment Type From Enviro", &H40, "HMS", var_1D4, var_1F4)
  loc_1C01DBA:         Exit Sub
  loc_1C01DBB:       End If
  loc_1C01DBD:     End If
  loc_1C01DBF:   End If
  loc_1C01DE8:   For var_3C8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_3C8 'Integer
  loc_1C01DF4:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1C01DFC:     var_1C4 = CVar(CLng(0)) 'Long
  loc_1C01E06:     var_194 = CVar(CStr(var_92)) 'String
  loc_1C01E0E:     Set var_1FC = Me.FGrid
  loc_1C01E14:     LateIdCallSt
  loc_1C01E28:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1C01E30:     var_1C4 = CVar(CLng(&H12)) 'Long
  loc_1C01E60:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1C01E69:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1C01E71:       var_1C4 = CVar(CLng(&HB)) 'Long
  loc_1C01E9D:       var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1C01EAC:     Else
  loc_1C01EB4:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1C01EBC:       var_1C4 = CVar(CLng(&HB)) 'Long
  loc_1C01ECB:       var_194 = Me.FGrid.TextMatrix)
  loc_1C01ED6:       var_170 = CStr(var_194)
  loc_1C01EE8:       var_AC = (var_AC + Val(var_170))
  loc_1C01EF4:     End If
  loc_1C01EFB:   Next var_3C8 'Integer
  loc_1C01F0E:   Set var_1FC = Me.TxtGt
  loc_1C01F14:   Call 0.Method_TopCtrl1_UnknownEvent_168 (var_172, var_92)
  loc_1C01F1F:   For var_3D4 =  To var_172:   1 = var_3D4 'Integer
  loc_1C01F53:     Set var_1FC = Me.LblCap
  loc_1C01F59:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, "Select Nature from SundryType Where SundryCode='", var_194, -1)
  loc_1C01F88:     unk_59BA49.Execute var_208 & var_170 & "' And V_Type='" & MemVar_1F95078 & "PURC' ORDER BY aPPDATE DESC", 0, var_20C
  loc_1C01F98:      = var_208.Item()
  loc_1C01FA0:      = var_20C.Value
  loc_1C01FD6:     var_3E0 = Proc_6_38_E69628(var_200.Tag.Fields)
  loc_1C01FE3:     If (var_3E0 = "Addition") Then
  loc_1C01FF5:       Set var_1FC = Me.TxtGt
  loc_1C01FFB:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200)
  loc_1C02003:       var_170 = var_200.Text
  loc_1C0201A:       var_B4 = (var_B4 + Val(var_170))
  loc_1C02036:       Set var_1FC = Me.TxtPer
  loc_1C0203C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170)
  loc_1C02044:       var_B4 = var_200.Text
  loc_1C0205B:       var_CC = (var_CC + Val(var_170))
  loc_1C0206B:     Else
  loc_1C02075:       If (var_3E0 = "Deduction") Then
  loc_1C02087:         Set var_1FC = Me.TxtGt
  loc_1C0208D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170)
  loc_1C02095:         var_CC = var_200.Text
  loc_1C020AC:         var_BC = (var_BC + Val(var_170))
  loc_1C020C8:         Set var_1FC = Me.TxtPer
  loc_1C020CE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_BC)
  loc_1C020D6:         var_3D0 = var_200.Text
  loc_1C020ED:         var_C4 = (var_C4 + Val(var_170))
  loc_1C020FD:       Else
  loc_1C02107:         If (var_3E0 = "Discount") Then
  loc_1C02119:           Set var_1FC = Me.TxtGt
  loc_1C0211F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_C4)
  loc_1C02127:           var_3D0 = var_200.Text
  loc_1C0213E:           var_DC = (var_DC + Val(var_170))
  loc_1C0215A:           Set var_1FC = Me.TxtPer
  loc_1C02160:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_DC)
  loc_1C02168:           var_3D0 = var_200.Text
  loc_1C0217F:           var_E4 = (var_E4 + Val(var_170))
  loc_1C0218F:         Else
  loc_1C02199:           If (var_3E0 = "Luxury Tax") Then
  loc_1C021AB:             Set var_1FC = Me.TxtGt
  loc_1C021B1:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_E4)
  loc_1C021B9:             var_3D0 = var_200.Text
  loc_1C021D0:             var_FC = (var_FC + Val(var_170))
  loc_1C021EC:             Set var_1FC = Me.TxtPer
  loc_1C021F2:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_FC)
  loc_1C021FA:             var_3D0 = var_200.Text
  loc_1C02211:             var_D4 = (var_D4 + Val(var_170))
  loc_1C02221:           Else
  loc_1C0222B:             If (var_3E0 = "Round Off") Then
  loc_1C0223D:               Set var_1FC = Me.TxtGt
  loc_1C02243:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_D4)
  loc_1C0224B:               var_3D0 = var_200.Text
  loc_1C02262:               var_EC = (var_EC + Val(var_170))
  loc_1C0227E:               Set var_1FC = Me.TxtPer
  loc_1C02284:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_EC)
  loc_1C0228C:               var_3D0 = var_200.Text
  loc_1C022A3:               var_F4 = (var_F4 + Val(var_170))
  loc_1C022B3:             Else
  loc_1C022BD:               If (var_3E0 = "Sale Tax") Then
  loc_1C022CF:                 Set var_1FC = Me.TxtGt
  loc_1C022D5:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_F4)
  loc_1C022DD:                 var_3D0 = var_200.Text
  loc_1C022F4:                 var_FC = (var_FC + Val(var_170))
  loc_1C02310:                 Set var_1FC = Me.TxtPer
  loc_1C02316:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_FC)
  loc_1C0231E:                 var_3D0 = var_200.Text
  loc_1C02335:                 var_D4 = (var_D4 + Val(var_170))
  loc_1C02345:               Else
  loc_1C0234F:                 If (var_3E0 = "Service Charge") Then
  loc_1C02361:                   Set var_1FC = Me.TxtGt
  loc_1C02367:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_D4)
  loc_1C0236F:                   var_3D0 = var_200.Text
  loc_1C02386:                   var_104 = (var_104 + Val(var_170))
  loc_1C023A2:                   Set var_1FC = Me.TxtPer
  loc_1C023A8:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_104)
  loc_1C023B0:                   var_3D0 = var_200.Text
  loc_1C023C7:                   var_10C = (var_10C + Val(var_170))
  loc_1C023D7:                 Else
  loc_1C023E1:                   If (var_3E0 = "Service Tax") Then
  loc_1C023F3:                     Set var_1FC = Me.TxtGt
  loc_1C023F9:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_10C)
  loc_1C02401:                     var_3D0 = var_200.Text
  loc_1C02418:                     var_FC = (var_FC + Val(var_170))
  loc_1C02434:                     Set var_1FC = Me.TxtPer
  loc_1C0243A:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_FC)
  loc_1C02442:                     var_3D0 = var_200.Text
  loc_1C02459:                     var_D4 = (var_D4 + Val(var_170))
  loc_1C02469:                   Else
  loc_1C02473:                     If (var_3E0 = "CGST") Then
  loc_1C02485:                       Set var_1FC = Me.TxtGt
  loc_1C0248B:                       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_D4)
  loc_1C02493:                       var_3D0 = var_200.Text
  loc_1C024AA:                       var_118 = (var_118 + Val(var_170))
  loc_1C024BA:                     Else
  loc_1C024C4:                       If (var_3E0 = "SGST") Then
  loc_1C024D6:                         Set var_1FC = Me.TxtGt
  loc_1C024DC:                         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_118)
  loc_1C024E4:                         var_3D0 = var_200.Text
  loc_1C024FB:                         var_120 = (var_120 + Val(var_170))
  loc_1C0250B:                       Else
  loc_1C02515:                         If (var_3E0 = "IGST") Then
  loc_1C02527:                           Set var_1FC = Me.TxtGt
  loc_1C0252D:                           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_120)
  loc_1C02535:                           var_3D0 = var_200.Text
  loc_1C0254C:                           var_128 = (var_128 + Val(var_170))
  loc_1C02559:                         End If
  loc_1C02559:                       End If
  loc_1C02559:                     End If
  loc_1C02559:                   End If
  loc_1C02559:                 End If
  loc_1C02559:               End If
  loc_1C02559:             End If
  loc_1C02559:           End If
  loc_1C02559:         End If
  loc_1C02559:       End If
  loc_1C02559:     End If
  loc_1C02560:   Next var_3D4 'Integer
  loc_1C0256A:   var_9C = vbNullString
  loc_1C02572:   Call Proc_32_93_1261D68(var_172)
  loc_1C0257D:   If (var_172 = 0) Then
  loc_1C02582:     Exit Sub
  loc_1C02583:   End If
  loc_1C02590:   Set var_1FC = Me.TxtGrid
  loc_1C02596:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_200)
  loc_1C0259E:   var_200.Visible = False
  loc_1C025AC:   Call Proc_32_96_FE19D4()
  loc_1C025C1:   Set var_1FC = Me.Txt
  loc_1C025C7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200)
  loc_1C025EF:   If (Proc_6_91_EF38D0(CDate(var_200.Text)) = 0) Then
  loc_1C025FF:     Set var_1FC = Me.Txt
  loc_1C02605:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_1C0260D:     var_200.SetFocus
  loc_1C0261B:     Exit Sub
  loc_1C0261C:   End If
  loc_1C02622:   Set var_1FC = Me.TopCtrl1
  loc_1C02628:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_200)
  loc_1C02630:   var_170 = CStr()
  loc_1C02641:   If (var_170 = "Add") Then
  loc_1C0264C:     var_1A4 = 0
  loc_1C02673:     Set var_1FC = Me.Txt
  loc_1C02679:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_170, "Select Count(*) From Purch1 Where DocID='", var_194, -1)
  loc_1C0269A:     unk_59BA49.Execute var_208 & var_170 & "'", var_1A4, var_20C
  loc_1C026AA:      = var_208.Item()
  loc_1C026B2:      = var_20C.Value
  loc_1C026DF:     If (var_200.Text.Fields > 0) Then
  loc_1C026EA:       Call Proc_32_98_10E8DA8(MemVar_1F95044)
  loc_1C026FD:       Set var_1FC = Me.Txt
  loc_1C02703:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1C0270B:       var_200.Text = var_170
  loc_1C0271C:       Exit Sub
  loc_1C0271D:     End If
  loc_1C02722:   Else
  loc_1C0273B:     var_1FC = Me.Fields
  loc_1C0275A:     global_116 = CStr(var_1FC.Item("DocID").Value)
  loc_1C0276B:   End If
  loc_1C02775:   Call Proc_32_101_EAC10C(var_134, var_1FC)
  loc_1C0277D:   Set var_134 = var_1FC
  loc_1C027A7:   For var_3E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_3E4 'Integer
  loc_1C027B3:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1C027BB:     var_1C4 = CVar(CLng(2)) 'Long
  loc_1C027DB:     var_1D4 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C027E3:     var_250 = vbNullString
  loc_1C027F1:     var_260 = CVar(CLng(var_92)) 'Long
  loc_1C02802:     Set var_200 = Me.FGrid
  loc_1C02841:     If CBool(CVar(CLng(&HB)) And (CDbl(Val(CStr(var_200.TextMatrix)))) <> CDbl(0))) Then
  loc_1C0284C:       var_3C4 = var_134.RecordCount
  loc_1C0285A:       If (var_3C4 > 0) Then
  loc_1C02862:         var_134.MoveFirst
  loc_1C02875:         var_1C4 = CVar(CLng(&HE)) 'Long
  loc_1C028DE:         var_134.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))), 0, 1
  loc_1C02902:         var_172 = var_134.EOF
  loc_1C0290A:         If var_172 Then
  loc_1C0291A:           var_134.AddNew CVar(CLng(var_92)), var_1A4
  loc_1C02925:           var_184 = CVar(CLng(var_92)) 'Long
  loc_1C0292D:           var_1C4 = CVar(CLng(&HE)) 'Long
  loc_1C02973:           var_260 = CVar(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))) 'Double
  loc_1C02981:           var_134.Collect = "V_NO"
  loc_1C029A4:           var_134.Update var_184, var_1A4
  loc_1C029A9:         End If
  loc_1C029AE:       Else
  loc_1C029BD:         var_134.AddNew var_184, var_1A4
  loc_1C029D0:         var_1C4 = CVar(CLng(&HE)) 'Long
  loc_1C029DF:         var_194 = Me.FGrid.TextMatrix)
  loc_1C029F4:         var_1B4 = CVar(CStr(var_194)) 'String
  loc_1C02A16:         var_260 = CVar(Val(CStr(Trim(Right(var_1B4, 8))))) 'Double
  loc_1C02A24:         var_134.Collect = "V_NO"
  loc_1C02A47:         var_134.Update CVar(CLng(var_92)), var_1A4
  loc_1C02A4C:       End If
  loc_1C02A4E:     End If
  loc_1C02A55:   Next var_3E4 'Integer
  loc_1C02A60:   Set var_1FC = Me.TopCtrl1
  loc_1C02A66:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1C02A7F:   If (CStr() = "Add") Then
  loc_1C02A8A:     var_1A4 = 0
  loc_1C02AA7:     var_170 = "Select IsNull(Max(InvoiceNo),0)+1 From Purch1 Where LOGsite_code='" & MemVar_1F95078
  loc_1C02AC5:     unk_59BA49.Execute CStr() & "' And InvoiceType='" & var_140 & "'", var_194, -1
  loc_1C02ACD:     var_1FC = var_1FC.Fields
  loc_1C02AD5:     var_1A4 = var_200.Item(var_200)
  loc_1C02ADD:     var_204 = var_204.Value
  loc_1C02AEE:     Set var_208 = Me.LblInvoiceNo
  loc_1C02AF4:     var_208.Caption = CStr(var_1B4)
  loc_1C02B1A:   End If
  loc_1C02B20:   var_8A = &HFF
  loc_1C02B2E:   unk_59BA49.BeginTrans var_3C4
  loc_1C02B53:   Set var_1FC = Me.Txt
  loc_1C02B59:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Sale2 Where DocID='", var_194)
  loc_1C02B61:   -1 = var_200.Text
  loc_1C02B7A:   unk_59BA49.Execute var_204 & CStr() & "'", var_8A, var_1B4
  loc_1C02BB4:   Set var_1FC = Me.Txt
  loc_1C02BBA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Purch1 Where DocID='")
  loc_1C02BC2:   var_194 = var_200.Text
  loc_1C02BCB:   var_1F8 = -1 & CStr()
  loc_1C02BDB:   unk_59BA49.Execute var_204 & CStr() & "'", var_204, 
  loc_1C02C15:   Set var_1FC = Me.Txt
  loc_1C02C1B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Purch2 Where DocID='")
  loc_1C02C23:   var_194 = var_200.Text
  loc_1C02C2C:   var_1F8 = -1 & CStr()
  loc_1C02C3C:   unk_59BA49.Execute var_204 & CStr() & "'", var_204, 
  loc_1C02C76:   Set var_1FC = Me.Txt
  loc_1C02C7C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From SunTran Where DocID='")
  loc_1C02C84:   var_194 = var_200.Text
  loc_1C02C8D:   var_1F8 = -1 & CStr()
  loc_1C02C9D:   unk_59BA49.Execute var_204 & CStr() & "'", var_204, 
  loc_1C02CD7:   Set var_1FC = Me.Txt
  loc_1C02CDD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Stock Where DocID='")
  loc_1C02CE5:   var_194 = var_200.Text
  loc_1C02CEE:   var_1F8 = -1 & CStr()
  loc_1C02CF5:   var_228 = var_204 & CStr() & "'"
  loc_1C02CFE:   unk_59BA49.Execute var_228, var_204, 
  loc_1C02D26:   Call 0.Method_arg_38 (MemVar_1F95218)
  loc_1C02D3C:   var_3D8 = CStr() & "\PurchBill\" & global_140
  loc_1C02D4D:   Set var_1FC = Me.Txt
  loc_1C02D53:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200, var_228)
  loc_1C02D5B:   var_3D8 = Me.Txt.Text
  loc_1C02D6B:   var_144 = CStr() & var_228 & ".jpg"
  loc_1C02D88:   Set var_200 = Me.BillImage
  loc_1C02DA6:   If (Proc_142_3_E98110(var_200) = &HFF) Then
  loc_1C02DB8:     Me.BillImage.Tag = var_144
  loc_1C02DC0:   End If
  loc_1C02DD0:   Set var_1FC = Me.Txt
  loc_1C02DD6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1C02DF1:   Set var_204 = Me.Txt
  loc_1C02DF7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_208)
  loc_1C02E0C:   var_3D0 = Val(var_208.Text)
  loc_1C02E1A:   Set var_20C = Me.Txt
  loc_1C02E20:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_210)
  loc_1C02E2F:   Proc_6_7_F26918(var_1B4, CVar(var_210))
  loc_1C02E41:   var_3F0 = Me.LblVPrefix.Caption
  loc_1C02E54:   Set var_21C = Me.Txt
  loc_1C02E5A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_220, var_404)
  loc_1C02E6E:   Set var_224 = Me.TxtGt
  loc_1C02E74:   Call 0.Method_TopCtrl1_UnknownEvent_164 (var_172)
  loc_1C02E86:   Set var_438 = Me.TxtGt
  loc_1C02E8C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_172, var_43C)
  loc_1C02EA1:   var_BF0 = Val(var_43C.Text)
  loc_1C02EAB:   Set var_6D4 = Me.TxtGt
  loc_1C02EB1:   Call 0.Method_TopCtrl1_UnknownEvent_168 (var_212, var_BF0)
  loc_1C02EC3:   Set var_6D8 = Me.TxtGt
  loc_1C02EC9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_212, var_6DC)
  loc_1C02EDE:   var_BF8 = Val(var_6DC.Text)
  loc_1C02EEF:   Proc_6_7_F26918(var_780, Date)
  loc_1C02EF8:   Set var_7B4 = Me.TopCtrl1
  loc_1C02EFE:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_BF8)
  loc_1C02F43:   Set var_85C = Me.Txt
  loc_1C02F49:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_860)
  loc_1C02F61:   Set var_8A8 = Me.Txt
  loc_1C02F67:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_8AC)
  loc_1C02F76:   Proc_6_7_F26918(var_8CC, CVar(var_8AC))
  loc_1C02F86:   Set var_900 = Me.Txt
  loc_1C02F8C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_904)
  loc_1C02FAB:   Set var_998 = Me.Txt
  loc_1C02FB1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_99C)
  loc_1C02FB9:   var_9AC = CVar(var_99C) 'Address
  loc_1C02FD0:   Set var_9F0 = Me.Txt
  loc_1C02FD6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_9F4)
  loc_1C02FE5:   Proc_6_17_EAAE40(var_A14, CVar(var_9F4))
  loc_1C02FF5:   Proc_6_17_EAAE40(var_A64, var_140)
  loc_1C03076:   Proc_6_17_EAAE40(var_B90, IIf((Me.BillImage.Visible = &HFF), CVar(Me.BillImage.Tag), vbNullString))
  loc_1C0308F:   var_1F8 = "Insert Into Purch1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,Party,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,CGST,SGST,IGST,AddAmt,DedAmt,RoundOff,NetAmt,U_Name,U_EntDt,U_AE,DelFlag,PartyBillNo,PartyBillDt,CashParty,LogSite_Code,TinNo,Remark,InvoiceType,InvoiceNo,Payable,BillImagePath) Values (" & "'"
  loc_1C030DF:   var_370 = CVar(var_1F8 & var_200.Text & "'," & CStr(var_220.Tag) & ",") & var_1B4 & ",'" & CVar(global_140) & "','" & CVar(var_3F0) 
  loc_1C03138:   var_460 = var_370 & "','" & CVar(MemVar_1F95070) & "','" & CVar(global_60) & "','" & CVar(var_404) & "'," & CVar(var_BF0) & "," 
  loc_1C031A7:   var_530 = var_460 & CVar(var_E4) & "," & CVar(var_DC) & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) & ", " & CVar(var_104) 
  loc_1C0321F:   var_6B0 = var_530 & "," & CVar(var_118) & "," & CVar(var_120) & "," & CVar(var_128) & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) 
  loc_1C03266:   var_838 = var_6B0 & "," & CVar(var_BF8) & ", '" & CVar(MemVar_1F950C8) & "'," & var_780 & ",'" & IIf((CStr(var_7C4) = "Add"), "A", "E") 
  loc_1C032A2:   var_954 = var_838 & "','N','" & CVar(var_860.Text) & "'," & var_8CC & ",'" & Trim(CVar(var_904)) & "','" 
  loc_1C032F0:   var_ABC = var_954 & CVar(MemVar_1F95078) & "','" & Trim(var_9AC) & "'," & var_A14 & "," & var_A64 & "," & CVar(Val(Me.LblInvoiceNo.Caption)) 
  loc_1C0332A:   unk_59BA49.Execute CStr(var_ABC & "," & CVar(Me.ChkPayable.Value) & "," & var_B90 & ")"), var_BE4, -1
  loc_1C03467:   For var_C04 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_C04 'Integer
  loc_1C03473:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1C0349B:     var_1D4 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C034C2:     Set var_200 = Me.FGrid
  loc_1C03501:     If CBool(CVar(CLng(5)) And (CDbl(Val(CStr(var_200.TextMatrix)))) <> CDbl(0))) Then
  loc_1C0351D:       If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1C03530:         Set var_1FC = Me.Txt
  loc_1C03536:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, CVar(CLng(var_92)), (var_1D4 <> vbNullString), CVar(CLng(2)))
  loc_1C0353E:         var_184 = var_200.Text
  loc_1C03547:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1C03571:         var_3D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C03594:         Set var_20C = Me.Txt
  loc_1C0359A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_C1C, var_3D0, CVar(CLng(0)))
  loc_1C035A2:         var_184 = var_210.Text
  loc_1C035AF:         var_BF0 = Val(var_C1C)
  loc_1C035BD:         Set var_218 = Me.Txt
  loc_1C035C3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_21C, var_BF0, 1)
  loc_1C035D2:         Proc_6_7_F26918(var_1D4, CVar(var_21C), var_BE8)
  loc_1C035E3:         var_2A0 = CVar(CLng(&H17)) 'Long
  loc_1C035F2:         var_370 = Me.FGrid.TextMatrix)
  loc_1C0360C:         Set var_224 = Me.Txt
  loc_1C03612:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_438, var_C2C, var_370)
  loc_1C0361A:         var_2A0 = var_438.Text
  loc_1C0362A:         Set var_43C = Me.Txt
  loc_1C03630:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_6D4, CVar(CLng(var_92)))
  loc_1C03635:         var_2E0 = 1
  loc_1C03687:         Set var_6DC = Me.Txt
  loc_1C0368D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_7B4, var_C30, CVar(CLng(&H18)))
  loc_1C03695:         var_2E0 = var_7B4.Tag
  loc_1C0369E:         var_3A0 = CVar(CLng(var_92)) 'Long
  loc_1C036A6:         var_520 = CVar(CLng(&HC)) 'Long
  loc_1C036C5:         var_580 = CVar(CLng(var_92)) 'Long
  loc_1C036CD:         var_5C0 = CVar(CLng(&H14)) 'Long
  loc_1C036EC:         var_620 = CVar(CLng(var_92)) 'Long
  loc_1C036F4:         var_660 = CVar(CLng(&H15)) 'Long
  loc_1C03713:         var_6C0 = CVar(CLng(var_92)) 'Long
  loc_1C0371B:         var_710 = CVar(CLng(8)) 'Long
  loc_1C0373A:         var_7A0 = CVar(CLng(var_92)) 'Long
  loc_1C03742:         var_7E8 = CVar(CLng(7)) 'Long
  loc_1C0376B:         var_8EC = CVar(CLng(var_92)) 'Long
  loc_1C03773:         var_964 = CVar(CLng(&HA)) 'Long
  loc_1C0379C:         var_A54 = CVar(CLng(var_92)) 'Long
  loc_1C037A4:         var_AAC = CVar(CLng(9)) 'Long
  loc_1C037CD:         var_B40 = CVar(CLng(var_92)) 'Long
  loc_1C037D5:         var_BB0 = CVar(CLng(&HB)) 'Long
  loc_1C037FE:         var_C70 = CVar(CLng(var_92)) 'Long
  loc_1C03806:         var_C90 = CVar(CLng(&H11)) 'Long
  loc_1C0382F:         var_CD4 = CVar(CLng(var_92)) 'Long
  loc_1C03837:         var_CF4 = CVar(CLng(&H12)) 'Long
  loc_1C03860:         var_D38 = CVar(CLng(var_92)) 'Long
  loc_1C03868:         var_D58 = CVar(CLng(&HF)) 'Long
  loc_1C0388A:         var_1460 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C038BB:         var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C038EC:         var_1470 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C038FD:         Proc_6_7_F26918(var_954, Date, var_1470, CVar(CLng(&H13)), CVar(CLng(var_92)), var_1468, CVar(CLng(&H10)), CVar(CLng(var_92)))
  loc_1C03906:         Set var_B2C = Me.TopCtrl1
  loc_1C0390C:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1460)
  loc_1C03947:         var_ED8 = CVar(CLng(var_92)) 'Long
  loc_1C0394F:         var_EF8 = CVar(CLng(&H1E)) 'Long
  loc_1C0396E:         var_F28 = CVar(CLng(var_92)) 'Long
  loc_1C03976:         var_F48 = CVar(CLng(&HE)) 'Long
  loc_1C03995:         var_F7C = CVar(CLng(var_92)) 'Long
  loc_1C0399D:         var_F9C = CVar(CLng(&HD)) 'Long
  loc_1C039C6:         var_FE4 = CVar(CLng(var_92)) 'Long
  loc_1C039CE:         var_1004 = CVar(CLng(&H20)) 'Long
  loc_1C039F0:         var_1480 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C039F7:         var_104C = CVar(CLng(var_92)) 'Long
  loc_1C03A21:         var_1488 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C03A52:         var_1490 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C03A83:         var_1498 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C03AB4:         var_149C = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_92)), var_1498, CVar(CLng(5)), CVar(CLng(var_92)), var_1490, CVar(CLng(6)))
  loc_1C03AE5:         var_14A0 = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_92)), CVar(CLng(var_92)), var_1488)
  loc_1C03B3B:         var_228 = "Insert Into Purch2(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,GodCode,RoomNo,PartyCode," & "Item,DiscApp,RoundOff,UNIT,"
  loc_1C03B50:         var_3E8 = var_228 & "QtyIss," & "Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total," & "U_Name,U_EntDt,U_AE,DepartCode,ContraDocId,ContraSno,"
  loc_1C03B6C:         var_7C8 = var_3E8 & "DelFlag,PostVal,LandVal,ConvRatio,IssQty,IssueUnit,LogSite_Code,TaxStru,AcCode) Values (" & "'" & var_3F0 & "',"
  loc_1C03BB8:         var_C28 = var_7C8 & CStr(var_3D0) & ",'" & global_140 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_BF0)
  loc_1C03BFF:         var_434 = CVar(var_C28 & ",") & var_1D4 & ",'" & CVar(global_60) & "','" & CVar(CStr(var_370)) & "','" & IIf((var_C2C <> vbNullString), CVar(var_6D4), CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C03C3A:         var_4F0 = var_434 & "','" & CVar(var_C30) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C03C76:         var_650 = var_4F0 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C03CB2:         var_770 = var_650 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C03CEE:         var_858 = var_770 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_1460) 
  loc_1C03D49:         var_A04 = var_858 & "," & CVar(var_1468) & "," & CVar(var_1470) & ",'" & CVar(MemVar_1F950C8) & "'," & var_954 & ",'" & IIf((CStr(var_9AC) = "Add"), "A", "E") 
  loc_1C03D85:         var_B50 = var_A04 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C03DE8:         var_1268 = var_B50 & ",'N'," & CVar(var_1480) & "," & CVar(var_1488) & "," & CVar(var_1490) & "," & CVar(var_1498) & ",'" & CVar(var_149C) 
  loc_1C03E1E:         var_13E0 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1C)), CVar(CLng(var_92)), CVar(CLng(&H21)))) 'String
  loc_1C03E38:         unk_59BA49.Execute CStr(var_1268 & "','" & CVar(MemVar_1F95078) & "','" & CVar(var_14A0) & "','" & var_13E0 & "')"), var_1434, -1
  loc_1C03FDF:       Else
  loc_1C03FF1:         Set var_1FC = Me.Txt
  loc_1C03FF7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, var_1438)
  loc_1C03FFF:         var_104C = var_200.Text
  loc_1C04008:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1C04032:         var_3D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C0403C:         Set var_208 = Me.LblVPrefix
  loc_1C04055:         Set var_20C = Me.Txt
  loc_1C0405B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_C1C, var_3D0, CVar(CLng(0)))
  loc_1C04063:         var_184 = var_210.Text
  loc_1C04070:         var_BF0 = Val(var_C1C)
  loc_1C0407E:         Set var_218 = Me.Txt
  loc_1C04084:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_21C, var_BF0)
  loc_1C0408C:         var_1B4 = CVar(var_21C) 'Address
  loc_1C04093:         Proc_6_7_F26918(var_1D4, var_1B4, var_1480)
  loc_1C040A4:         var_2A0 = CVar(CLng(&H17)) 'Long
  loc_1C040AD:         Set var_220 = Me.FGrid
  loc_1C040B3:         var_370 = var_220.TextMatrix)
  loc_1C040CD:         Set var_224 = Me.Txt
  loc_1C040D3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_438, var_C2C, var_370)
  loc_1C040DB:         var_2A0 = var_438.Text
  loc_1C040EB:         Set var_43C = Me.Txt
  loc_1C040F1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_6D4, CVar(CLng(var_92)))
  loc_1C040F6:         var_2E0 = 1
  loc_1C04111:         var_3C0 = Me.FGrid.TextMatrix)
  loc_1C04148:         Set var_6DC = Me.Txt
  loc_1C0414E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_7B4, var_C30, CVar(CLng(&H18)))
  loc_1C04156:         var_2E0 = var_7B4.Tag
  loc_1C0415F:         var_3A0 = CVar(CLng(var_92)) 'Long
  loc_1C04167:         var_520 = CVar(CLng(&HC)) 'Long
  loc_1C04186:         var_580 = CVar(CLng(var_92)) 'Long
  loc_1C0418E:         var_5C0 = CVar(CLng(&H14)) 'Long
  loc_1C041AD:         var_620 = CVar(CLng(var_92)) 'Long
  loc_1C041B5:         var_660 = CVar(CLng(&H15)) 'Long
  loc_1C041D4:         var_6C0 = CVar(CLng(var_92)) 'Long
  loc_1C041DC:         var_710 = CVar(CLng(8)) 'Long
  loc_1C041FB:         var_7A0 = CVar(CLng(var_92)) 'Long
  loc_1C04203:         var_7E8 = CVar(CLng(7)) 'Long
  loc_1C0422C:         var_8EC = CVar(CLng(var_92)) 'Long
  loc_1C04234:         var_964 = CVar(CLng(&HA)) 'Long
  loc_1C0425D:         var_A54 = CVar(CLng(var_92)) 'Long
  loc_1C04265:         var_AAC = CVar(CLng(9)) 'Long
  loc_1C0428E:         var_B40 = CVar(CLng(var_92)) 'Long
  loc_1C04296:         var_BB0 = CVar(CLng(&HB)) 'Long
  loc_1C042BF:         var_C70 = CVar(CLng(var_92)) 'Long
  loc_1C042C7:         var_C90 = CVar(CLng(&H11)) 'Long
  loc_1C042F0:         var_CD4 = CVar(CLng(var_92)) 'Long
  loc_1C042F8:         var_CF4 = CVar(CLng(&H12)) 'Long
  loc_1C04321:         var_D38 = CVar(CLng(var_92)) 'Long
  loc_1C04329:         var_D58 = CVar(CLng(&HF)) 'Long
  loc_1C04332:         Set var_A98 = Me.FGrid
  loc_1C0434B:         var_1460 = Val(CStr(var_A98.TextMatrix)))
  loc_1C0437C:         var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C043AD:         var_1470 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C043BE:         Proc_6_7_F26918(var_954, Date, var_1470, CVar(CLng(&H13)), CVar(CLng(var_92)), var_1468, CVar(CLng(&H10)), CVar(CLng(var_92)))
  loc_1C043C7:         Set var_B2C = Me.TopCtrl1
  loc_1C043CD:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1460)
  loc_1C043E6:         var_9BC = "A"
  loc_1C04408:         var_ED8 = CVar(CLng(var_92)) 'Long
  loc_1C04410:         var_EF8 = CVar(CLng(&H1E)) 'Long
  loc_1C0442F:         var_F28 = CVar(CLng(var_92)) 'Long
  loc_1C04437:         var_F48 = CVar(CLng(&HE)) 'Long
  loc_1C04456:         var_F7C = CVar(CLng(var_92)) 'Long
  loc_1C0445E:         var_F9C = CVar(CLng(&HD)) 'Long
  loc_1C0446D:         var_B20 = Me.FGrid.TextMatrix)
  loc_1C04487:         var_FE4 = CVar(CLng(var_92)) 'Long
  loc_1C0448F:         var_1004 = CVar(CLng(&H20)) 'Long
  loc_1C044B8:         var_104C = CVar(CLng(var_92)) 'Long
  loc_1C044E2:         var_1488 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C04513:         var_1490 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C04544:         var_1498 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C04575:         var_149C = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_92)), var_1498, CVar(CLng(5)), CVar(CLng(var_92)), var_1490, CVar(CLng(6)))
  loc_1C045A6:         var_14A0 = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_92)), CVar(CLng(var_92)), var_1488)
  loc_1C045FC:         var_228 = "Insert Into Purch2(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,GodCode,RoomNo,PartyCode," & "Item,DiscApp,RoundOff,UNIT,"
  loc_1C04611:         var_3E8 = var_228 & "QtyRec," & "Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total," & "U_Name,U_EntDt,U_AE,DepartCode,ContraDocId,ContraSno,"
  loc_1C0462D:         var_7C8 = var_3E8 & "DelFlag,PostVal,LandVal,ConvRatio,recdQty,RecdUnit,LogSite_Code,TaxStru,AcCode) Values (" & "'" & var_3F0 & "',"
  loc_1C04640:         var_B30 = var_7C8 & CStr(var_3D0) & ",'"
  loc_1C04658:         var_C10 = var_B30 & global_140 & "','" & var_208.Caption
  loc_1C04666:         var_C18 = var_C10 & "','" & MemVar_1F95070
  loc_1C046B9:         var_3B0 = CVar(var_C18 & "'," & CStr(var_BF0) & ",") & var_1D4 & ",'" & CVar(global_60) & "','" & CVar(CStr(var_370)) & "','" 
  loc_1C046E7:         var_4B0 = var_3B0 & IIf((var_C2C <> vbNullString), CVar(var_6D4), CVar(CStr(var_3C0))) & "','" & CVar(var_C30) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C04723:         var_5F0 = var_4B0 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C0475F:         var_720 = var_5F0 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C0479B:         var_818 = var_720 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C047FA:         var_974 = var_818 & "," & CVar(var_1460) & "," & CVar(var_1468) & "," & CVar(var_1470) & ",'" & CVar(MemVar_1F950C8) & "'," & var_954 
  loc_1C04832:         var_ADC = var_974 & ",'" & IIf((CStr(var_9AC) = "Add"), var_9BC, "E") & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C04877:         var_10B4 = var_ADC & "'," & CVar(Val(CStr(var_B20))) & ",'N'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_1488) & "," 
  loc_1C048CF:         var_134C = var_10B4 & CVar(var_1490) & "," & CVar(var_1498) & ",'" & CVar(var_149C) & "','" & CVar(MemVar_1F95078) & "','" & CVar(var_14A0) 
  loc_1C048DF:         var_13E0 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1C)), CVar(CLng(var_92)), CVar(CLng(&H21)))) 'String
  loc_1C048F9:         unk_59BA49.Execute CStr(var_134C & "','" & var_13E0 & "')"), var_1434, -1
  loc_1C04A9D:       End If
  loc_1C04AA5:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1C04AE0:       var_1F8 = "Select IsNull(LPurDate,'01/Jan/1900') From ItemMast Where Code='" & CStr(Me.FGrid.TextMatrix))
  loc_1C04AF0:       unk_59BA49.Execute var_1F8 & "' And ItemType='Store'", var_1B4, -1
  loc_1C04AFB:       Set var_88 = var_200
  loc_1C04B2B:       If (var_88.RecordCount > 0) Then
  loc_1C04B36:         var_184 = 0
  loc_1C04B4A:         var_200 = var_88.Fields.Item(var_184)
  loc_1C04B5F:         var_1B4 = CVar(Proc_6_38_E69628(var_200.Value, var_200, var_200.Value, CVar(CLng(&HC)), var_184)) 'String
  loc_1C04B72:         Set var_204 = Me.Txt
  loc_1C04B78:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_208, IsDate(var_1B4), var_1438)
  loc_1C04B9C:         If (var_104C And IsDate(CVar(var_208))) Then
  loc_1C04BAF:           Set var_204 = Me.Txt
  loc_1C04BB5:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_208, var_1F8)
  loc_1C04BBD:           var_1480 = var_208.Text
  loc_1C04BDC:           var_200 = var_88.Fields.Item(0)
  loc_1C04C11:           If (CDate(Proc_6_38_E69628(var_200.Value, var_1004)) <= CDate(var_1F8)) Then
  loc_1C04C1A:             var_184 = CVar(CLng(var_92)) 'Long
  loc_1C04C4D:             If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1C04C5D:               Set var_1FC = Me.Txt
  loc_1C04C63:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200, CVar(CLng(&HC)))
  loc_1C04C72:               Proc_6_7_F26918(var_1B4, CVar(var_200))
  loc_1C04C7B:               var_1C4 = CVar(CLng(var_92)) 'Long
  loc_1C04C83:               var_250 = CVar(CLng(&HB)) 'Long
  loc_1C04CAC:               var_270 = CVar(CLng(var_92)) 'Long
  loc_1C04CB4:               var_290 = CVar(CLng(5)) 'Long
  loc_1C04CDD:               var_2E0 = CVar(CLng(var_92)) 'Long
  loc_1C04CE5:               var_310 = CVar(CLng(&HC)) 'Long
  loc_1C04CEE:               Set var_20C = Me.FGrid
  loc_1C04CF4:               var_370 = var_20C.TextMatrix)
  loc_1C04D15:               var_1D4 = "Update ItemMast Set LPurDate=" & var_1B4 
  loc_1C04D36:               var_320 = var_1D4 & ",LPurRate=" & CVar((Val(CStr(Me.FGrid.TextMatrix))) / Val(CStr(Me.FGrid.TextMatrix))))) & " Where COde='" 
  loc_1C04D58:               unk_59BA49.Execute CStr(var_320 & CVar(CStr(var_370)) & "' And ItemType='Store'"), var_3C0, -1
  loc_1C04D90:             End If
  loc_1C04D90:           End If
  loc_1C04D92:         End If
  loc_1C04D94:       End If
  loc_1C04DCF:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1C04DEB:         If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1C04DFE:           Set var_1FC = Me.Txt
  loc_1C04E04:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, CVar(CLng(&HE)), CVar(CLng(var_92)), var_210, var_370)
  loc_1C04E0C:           var_310 = var_200.Text
  loc_1C04E50:           Set var_208 = Me.Txt
  loc_1C04E56:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_20C, var_B30, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1C04E5E:           var_2E0 = var_20C.Text
  loc_1C04E6B:           var_BF0 = Val(var_B30)
  loc_1C04E79:           Set var_210 = Me.Txt
  loc_1C04E7F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_218, var_BF0, var_BF0)
  loc_1C04E8E:           Proc_6_7_F26918(var_1D4, CVar(var_218), var_290)
  loc_1C04EA1:           Set var_21C = Me.Txt
  loc_1C04EA7:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_220, var_C10)
  loc_1C04EAF:           var_270 = var_220.Tag
  loc_1C04ED4:           Set var_438 = Me.Txt
  loc_1C04EDA:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_43C, var_C18)
  loc_1C04EEB:           var_2D0 = CVar(CLng(var_92)) 'Long
  loc_1C04EF3:           var_2F0 = CVar(CLng(&H17)) 'Long
  loc_1C04F12:           var_340 = CVar(CLng(var_92)) 'Long
  loc_1C04F1A:           var_360 = CVar(CLng(&HC)) 'Long
  loc_1C04F39:           var_520 = CVar(CLng(var_92)) 'Long
  loc_1C04F41:           var_560 = CVar(CLng(5)) 'Long
  loc_1C04F6A:           var_5E0 = CVar(CLng(var_92)) 'Long
  loc_1C04F72:           var_620 = CVar(CLng(5)) 'Long
  loc_1C04F9B:           var_710 = CVar(CLng(var_92)) 'Long
  loc_1C04FA3:           var_750 = CVar(CLng(7)) 'Long
  loc_1C04FCC:           var_808 = CVar(CLng(var_92)) 'Long
  loc_1C04FD4:           var_894 = CVar(CLng(5)) 'Long
  loc_1C04FFD:           var_984 = CVar(CLng(var_92)) 'Long
  loc_1C05005:           var_A34 = CVar(CLng(9)) 'Long
  loc_1C0502E:           var_ACC = CVar(CLng(var_92)) 'Long
  loc_1C05036:           var_B10 = CVar(CLng(&HA)) 'Long
  loc_1C0505F:           var_BD4 = CVar(CLng(var_92)) 'Long
  loc_1C05067:           var_C60 = CVar(CLng(4)) 'Long
  loc_1C05086:           var_C90 = CVar(CLng(var_92)) 'Long
  loc_1C0509D:           var_7C4 = Me.FGrid.TextMatrix)
  loc_1C050D7:           var_1460 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C05108:           var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C0510E:           Proc_6_104_ED68A8(var_974, var_1468, CVar(CLng(6)), CVar(CLng(var_92)), var_1460, CVar(CLng(&HB)), CVar(CLng(var_92)), var_7C4)
  loc_1C05117:           Set var_9F0 = Me.TopCtrl1
  loc_1C0511D:           Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(8)))
  loc_1C05158:           var_E98 = CVar(CLng(var_92)) 'Long
  loc_1C05160:           var_EB8 = CVar(CLng(&H21)) 'Long
  loc_1C05182:           var_1470 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C051A0:           var_1F8 = "Insert Into Stock(" & "DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code," & "PartyCode,GodownCode,Item,ChalQty,RecdQty,RejQty,"
  loc_1C051B5:           var_3DC = var_1F8 & "QtyIss,IssQty,Rate,ItemRate,IssueUnit,Unit," & "Amount,Specification,ConvRatio," & "ContraDocid,ContraSNo, "
  loc_1C051E4:           var_A9C = var_3DC & "U_Name,U_EntDt,U_AE,DepartCode,LandVal,LogSite_Code) " & "Values(" & "'" & var_3F0 & "'," & CStr(var_43C.Tag)
  loc_1C05233:           var_3B0 = CVar(var_A9C & "," & CStr(var_BF0) & ",") & var_1D4 & ",'" & CVar(var_C10) & "','" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_1C05281:           var_4C0 = var_3B0 & CVar(MemVar_1F95070) & "'," & "'" & CVar(var_C18) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C052C4:           var_5B0 = var_4C0 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & 0 & "," 
  loc_1C052F5:           var_690 = var_5B0 & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_1C05328:           var_790 = var_690 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C0537F:           var_8DC = var_790 & "','" & CVar(CStr(var_7C4)) & "'," & vbNullString & CVar(var_1460) & ",''," & CVar(var_1468) & "," & "''," 
  loc_1C053CD:           var_A24 = var_8DC & 0 & "," & "'" & CVar(MemVar_1F950C8) & "'," & var_974 & ",'" & IIf((CStr(var_9BC) = "Add"), "A", "E") & "','" 
  loc_1C05415:           unk_59BA49.Execute CStr(var_A24 & CVar(MemVar_1F95070) & "PURC'," & CVar(var_1470) & ",'" & CVar(MemVar_1F95078) & "')"), var_B20, -1
  loc_1C05540:         Else
  loc_1C05552:           Set var_1FC = Me.Txt
  loc_1C05558:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, var_A98, var_1470, var_EB8, var_E98)
  loc_1C05560:           var_C90 = var_200.Text
  loc_1C05593:           var_3D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C055A4:           Set var_208 = Me.Txt
  loc_1C055AA:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_20C, var_B30, var_3D0, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1C055B2:           var_770 = var_20C.Text
  loc_1C055BF:           var_BF0 = Val(var_B30)
  loc_1C055CD:           Set var_210 = Me.Txt
  loc_1C055D3:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_218, var_BF0, var_C60)
  loc_1C055E2:           Proc_6_7_F26918(var_1D4, CVar(var_218), var_BD4)
  loc_1C055F5:           Set var_21C = Me.Txt
  loc_1C055FB:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_220, var_C10)
  loc_1C05603:           var_1458 = var_220.Tag
  loc_1C05628:           Set var_438 = Me.Txt
  loc_1C0562E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_43C, var_C18)
  loc_1C05636:           var_B10 = var_43C.Tag
  loc_1C0563F:           var_2D0 = CVar(CLng(var_92)) 'Long
  loc_1C05647:           var_2F0 = CVar(CLng(&H17)) 'Long
  loc_1C05666:           var_340 = CVar(CLng(var_92)) 'Long
  loc_1C0566E:           var_360 = CVar(CLng(&HC)) 'Long
  loc_1C0568D:           var_520 = CVar(CLng(var_92)) 'Long
  loc_1C05695:           var_560 = CVar(CLng(5)) 'Long
  loc_1C056BE:           var_5E0 = CVar(CLng(var_92)) 'Long
  loc_1C056C6:           var_620 = CVar(CLng(5)) 'Long
  loc_1C056CF:           Set var_7B4 = Me.FGrid
  loc_1C056EF:           var_710 = CVar(CLng(var_92)) 'Long
  loc_1C056F7:           var_750 = CVar(CLng(7)) 'Long
  loc_1C05720:           var_808 = CVar(CLng(var_92)) 'Long
  loc_1C05728:           var_894 = CVar(CLng(5)) 'Long
  loc_1C05731:           Set var_860 = Me.FGrid
  loc_1C05737:           var_650 = var_860.TextMatrix)
  loc_1C05751:           var_984 = CVar(CLng(var_92)) 'Long
  loc_1C05759:           var_A34 = CVar(CLng(9)) 'Long
  loc_1C05782:           var_ACC = CVar(CLng(var_92)) 'Long
  loc_1C0578A:           var_B10 = CVar(CLng(&HA)) 'Long
  loc_1C05793:           Set var_8AC = Me.FGrid
  loc_1C057B3:           var_BD4 = CVar(CLng(var_92)) 'Long
  loc_1C057BB:           var_C60 = CVar(CLng(4)) 'Long
  loc_1C057DA:           var_C90 = CVar(CLng(var_92)) 'Long
  loc_1C057EB:           Set var_904 = Me.FGrid
  loc_1C057F1:           var_7C4 = var_904.TextMatrix)
  loc_1C0582B:           var_1460 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C0585C:           var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C05862:           Proc_6_104_ED68A8(var_974, var_1468, CVar(CLng(6)), CVar(CLng(var_92)), var_1460, CVar(CLng(&HB)), CVar(CLng(var_92)), var_7C4)
  loc_1C0586B:           Set var_9F0 = Me.TopCtrl1
  loc_1C05871:           Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(8)))
  loc_1C058AC:           var_E98 = CVar(CLng(var_92)) 'Long
  loc_1C058B4:           var_EB8 = CVar(CLng(&H21)) 'Long
  loc_1C058F4:           var_1F8 = "Insert Into Stock(" & "DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code," & "PartyCode,GodownCode,Item,ChalQty,RecdQty,RejQty,"
  loc_1C05909:           var_3DC = var_1F8 & "QtyRec,AccQty,Rate,ItemRate,RecdUnit,Unit," & "Amount,Specification,ConvRatio," & "ContraDocid,ContraSNo, "
  loc_1C05938:           var_A9C = var_3DC & "U_Name,U_EntDt,U_AE,DepartCode,LandVal,LogSite_Code) " & "Values(" & "'" & var_3F0 & "'," & CStr(var_3D0)
  loc_1C05952:           var_1F4 = CVar(var_A9C & "," & CStr(var_BF0) & ",") 'String
  loc_1C0599A:           var_400 = var_1F4 & var_1D4 & ",'" & CVar(var_C10) & "','" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) & "'," 
  loc_1C059D5:           var_4C0 = var_400 & "'" & CVar(var_C18) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C059DE:           var_4D0 = var_4C0 & "'," 
  loc_1C059F2:           var_510 = var_4D0 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_1C05A2C:           var_610 = var_510 & CVar(Val(CStr(var_7B4.TextMatrix)))) & "," & 0 & "," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C05A68:           var_740 = var_610 & "," & CVar(Val(CStr(var_650))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_8AC.TextMatrix)))) 
  loc_1C05A85:           var_7B0 = var_740 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_1C05AE5:           var_914 = var_7B0 & CVar(CStr(var_7C4)) & "'," & vbNullString & CVar(var_1460) & ",''," & CVar(var_1468) & "," & "''," & 0 & "," 
  loc_1C05B2B:           var_A44 = var_914 & "'" & CVar(MemVar_1F950C8) & "'," & var_974 & ",'" & IIf((CStr(var_9BC) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95070) 
  loc_1C05B69:           unk_59BA49.Execute CStr(var_A44 & "PURC'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(MemVar_1F95078) & "')"), var_B20, -1
  loc_1C05C91:         End If
  loc_1C05C96:       Else
  loc_1C05C9E:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1C05CA6:         var_1C4 = CVar(CLng(&H21)) 'Long
  loc_1C05CCB:         var_250 = 1
  loc_1C05CD7:         var_270 = CVar(CLng(&HE)) 'Long
  loc_1C05CF2:         var_290 = 1
  loc_1C05CFE:         var_2C0 = CVar(CLng(&HD)) 'Long
  loc_1C05D4B:         var_3EC = "Update Stock Set LandVal=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & " Where DocId='" & CStr(Me.FGrid.TextMatrix)) & "' And SNo="
  loc_1C05D5F:         unk_59BA49.Execute var_3EC & CStr(Me.FGrid.TextMatrix)), var_1F4, -1
  loc_1C05D8F:       End If
  loc_1C05D91:     End If
  loc_1C05D98:   Next var_C04 'Integer
  loc_1C05DC4:   For var_14A8 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)):   var_92 = var_14A8 'Integer
  loc_1C05DD0:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1C05DD8:     var_1C4 = CVar(CLng(2)) 'Long
  loc_1C05E1F:     Set var_200 = Me.FGCat
  loc_1C05E30:     var_170 = CStr(var_200.TextMatrix))
  loc_1C05E5E:     If CBool(CVar(CLng(6)) And (CDbl(Val(var_170)) <> CDbl(0))) Then
  loc_1C05E71:       Set var_1FC = Me.Txt
  loc_1C05E77:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_170, CVar(CLng(var_92)))
  loc_1C05E7F:       (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_200.Text
  loc_1C05EB2:       var_3D0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1C05ECA:       Set var_208 = Me.FGCat
  loc_1C05ED0:       var_1B4 = var_208.TextMatrix)
  loc_1C05EE3:       var_BF0 = Val(CStr(var_1B4))
  loc_1C05EF3:       var_A9C = Me.LblVPrefix.Caption
  loc_1C05F06:       Set var_210 = Me.Txt
  loc_1C05F0C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_218, var_C10, var_BF0, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1C05F21:       var_BF8 = Val(var_C10)
  loc_1C05F2F:       Set var_21C = Me.Txt
  loc_1C05F35:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_220, var_BF8, CVar(CLng(1)))
  loc_1C05F44:       Proc_6_7_F26918(var_1F4, CVar(var_220), CVar(CLng(var_92)))
  loc_1C05F4D:       var_2D0 = CVar(CLng(var_92)) 'Long
  loc_1C05F55:       var_2F0 = CVar(CLng(2)) 'Long
  loc_1C05F5E:       Set var_224 = Me.FGCat
  loc_1C05F74:       var_340 = CVar(CLng(var_92)) 'Long
  loc_1C05F7C:       var_360 = CVar(CLng(4)) 'Long
  loc_1C05F9E:       var_C00 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1C05FB6:       Set var_43C = Me.FGCat
  loc_1C05FCF:       var_1440 = Val(CStr(var_43C.TextMatrix)))
  loc_1C06000:       var_1448 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1C06011:       Proc_6_7_F26918(var_4D0, Date, var_1448, CVar(CLng(6)), CVar(CLng(var_92)), var_1440, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1C0601A:       Set var_6D8 = Me.TopCtrl1
  loc_1C06020:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C00)
  loc_1C06052:       var_570 = IIf((CStr(var_510) = "Add"), "A", "E")
  loc_1C0606B:       var_1F8 = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LogSite_Code) Values (" & "'"
  loc_1C060BE:       var_C08 = var_1F8 & var_170 & "'," & CStr(var_218.Text) & "," & CStr(var_BF0) & ",'" & global_140 & "','" & var_A9C & "','"
  loc_1C060C5:       var_C0C = var_C08 & MemVar_1F95070
  loc_1C0610F:       var_3B0 = CVar(var_C0C & "'," & CStr(var_BF8) & ",") & var_1F4 & ",'" & CVar(global_60) & "','" & CVar(CStr(var_224.TextMatrix))) 
  loc_1C0616E:       var_4E0 = var_3B0 & "'," & CVar(var_C00) & "," & CVar(var_1440) & "," & CVar(var_1448) & ",'" & CVar(MemVar_1F950C8) & "'," & var_4D0 
  loc_1C061A8:       unk_59BA49.Execute CStr(var_4E0 & ",'" & var_570 & "','N','" & CVar(MemVar_1F95078) & "')"), var_610, -1
  loc_1C06254:     End If
  loc_1C0625B:   Next var_14A8 'Integer
  loc_1C0626E:   Set var_1FC = Me.TxtGt
  loc_1C06274:   Call 0.Method_TopCtrl1_UnknownEvent_168 (var_172, var_92)
  loc_1C0627F:   For var_14AC =  To var_172:   1 = var_14AC 'Integer
  loc_1C06294:     Set var_1FC = Me.TxtGt
  loc_1C0629A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200)
  loc_1C062B4:     If (var_200.Visible = &HFF) Then
  loc_1C062C7:       Set var_1FC = Me.Txt
  loc_1C062CD:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1C062E8:       Set var_204 = Me.Txt
  loc_1C062EE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_208)
  loc_1C06311:       Set var_20C = Me.Txt
  loc_1C06317:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_210)
  loc_1C06326:       Proc_6_7_F26918(var_1B4, CVar(var_210))
  loc_1C06338:       Set var_218 = Me.LblCap
  loc_1C0633E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_21C)
  loc_1C06358:       Set var_220 = Me.TxtPer
  loc_1C0635E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_224)
  loc_1C06373:       var_BF0 = Val(var_224.Tag)
  loc_1C06383:       Set var_438 = Me.LblCap
  loc_1C06389:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_43C, var_A9C)
  loc_1C063A3:       Set var_6D4 = Me.LblAt
  loc_1C063A9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6D8)
  loc_1C063C3:       Set var_6DC = Me.TxtGt
  loc_1C063C9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7B4)
  loc_1C063E3:       Set var_85C = Me.TxtPer
  loc_1C063E9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_860)
  loc_1C063FE:       var_BF8 = Val(var_860.Text)
  loc_1C0640E:       Set var_8A8 = Me.TxtGt
  loc_1C06414:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_8AC, var_C0C)
  loc_1C06429:       var_C00 = Val(var_C0C)
  loc_1C06439:       Set var_900 = Me.LblDummy
  loc_1C0643F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_904, var_C10)
  loc_1C06454:       var_1440 = Val(var_C10)
  loc_1C06465:       Proc_6_7_F26918(var_510, Date)
  loc_1C0646E:       Set var_998 = Me.TopCtrl1
  loc_1C06474:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1440)
  loc_1C064B6:       Set var_99C = Me.Txt
  loc_1C064BC:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_9F0)
  loc_1C064CB:       Proc_6_7_F26918(var_650, CVar(var_9F0))
  loc_1C064DD:       Set var_9F4 = Me.LblDummy
  loc_1C064E3:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_A98)
  loc_1C06504:       var_1F8 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LogSite_Code) Values ('" & var_200.Text
  loc_1C0651E:       var_3E8 = var_1F8 & "'," & CStr(var_92) & ",'"
  loc_1C06564:       var_320 = CVar(var_3E8 & global_140 & "'," & CStr(Val(var_208.Text)) & ",") & var_1B4 & ",'" & CVar(var_21C.Tag) & "'," 
  loc_1C065BC:       var_470 = var_320 & CVar(var_43C.Caption) & ",'" & CVar(var_A9C) & "','" & CVar(var_6D8.Tag) & "','" & CVar(var_7B4.Tag) & "'," & CVar(var_8AC.Text) 
  loc_1C06617:       var_5F0 = var_470 & "," & CVar(var_904.Caption) & "," & CVar(var_1440) & ",'" & CVar(MemVar_1F950C8) & "'," & var_510 & ",'" & IIf((CStr(var_570) = "Add"), "A", "E") 
  loc_1C06660:       var_760 = var_5F0 & "'," & var_650 & ",'" & CVar(var_A98.Tag) & "','" & CVar(MemVar_1F95070) & "PURC','N','" & CVar(MemVar_1F95070) 
  loc_1C0668A:       unk_59BA49.Execute CStr(var_760 & "','" & CVar(MemVar_1F95078) & "')"), var_7B0, -1
  loc_1C06756:     End If
  loc_1C0675D:   Next var_14AC 'Integer
  loc_1C06768:   Set var_1FC = Me.TopCtrl1
  loc_1C0676E:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1C06787:   If (CStr() = "Add") Then
  loc_1C067A0:     var_170 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1C067C6:     var_1D4 = CVar(var_170 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_140 & "' And VP.Date_From<=") 'String
  loc_1C067D7:     Set var_1FC = Me.Txt
  loc_1C067DD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200, var_3E8, var_1D4)
  loc_1C067E5:     var_2B0 = var_200.Text
  loc_1C067F3:     Proc_6_7_F26918(var_1B4, CVar(var_3E8))
  loc_1C067FB:     var_1F4 = -1 & var_1B4 
  loc_1C06812:     unk_59BA49.Execute CStr(CVar(var_3E8 & global_140 & "'," & CStr(Val(var_208.Text)) & ",") & var_1B4 & " Order By VP.Date_From DESC"), var_204, 
  loc_1C0681D:     Set var_88 = var_204
  loc_1C0684F:     var_3C4 = var_88.RecordCount
  loc_1C0685D:     If (var_3C4 > 0) Then
  loc_1C06870:       Set var_1FC = Me.Txt
  loc_1C06876:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_1C0688B:       var_3D0 = Val(var_200.Text)
  loc_1C068A0:       var_204 = var_88.Fields
  loc_1C068B0:       var_194 = var_204.Item("V_Type").Value
  loc_1C068DB:       Proc_6_7_F26918(var_2B0, CVar(var_88.Fields.Item("Date_From")))
  loc_1C06900:       var_3D8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_3D0) & " Where (SITE_CODE='"
  loc_1C0692B:       var_1F4 = CVar(var_3D8 & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='") & var_194 & "' and Date_From=" 
  loc_1C06940:       unk_59BA49.Execute CStr(var_1F4 & var_2B0), var_320, -1
  loc_1C0697A:     End If
  loc_1C0697C:   End If
  loc_1C06984:   Set var_1FC = Me.TopCtrl1
  loc_1C0698A:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_218)
  loc_1C069A3:   If (CStr(var_3D0) = "Add") Then
  loc_1C069CB:     var_170 = "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078
  loc_1C069E9:     Call 0.Method_arg_50 (var_3D8, var_170 & "' and UNAME='" & MemVar_1F950C8 & "' AND ENAME='", var_194, -1, var_1FC)
  loc_1C069F9:     var_3EC = var_200 & var_3D8 & "' "
  loc_1C06A02:     unk_59BA49.Execute var_3EC, 0, var_204
  loc_1C06A0A:     var_1B4 = var_1FC.Fields
  loc_1C06A12:      = var_200.Item()
  loc_1C06A1A:      = var_204.Value
  loc_1C06A4B:     If (var_1B4 > 0) Then
  loc_1C06A6E:       Set var_1FC = Me.Txt
  loc_1C06A74:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_170, "UPDATE LASTVOU  SET DOCID='")
  loc_1C06A7C:       var_194 = var_200.Text
  loc_1C06A85:       var_1F8 = -1 & var_170
  loc_1C06A9A:       var_3DC = var_170 & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F95078 & "' and UNAME='"
  loc_1C06AB1:       Call 0.Method_arg_50 (var_3EC, var_3DC & MemVar_1F950C8 & "' AND ENAME='")
  loc_1C06ACA:       unk_59BA49.Execute var_204 & var_3EC & "'  ", , 
  loc_1C06AF5:     Else
  loc_1C06B1D:       Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' and UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "','", var_320)
  loc_1C06B26:       var_3D8 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' and UNAME='"
  loc_1C06B2D:       var_3E8 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F950C8 & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F95078 & "','"
  loc_1C06B3E:       Set var_1FC = Me.Txt
  loc_1C06B44:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3DC)
  loc_1C06B4C:       var_3E8 = var_200.Text
  loc_1C06B7B:       Proc_6_7_F26918(var_1B4, Date)
  loc_1C06B87:       var_184 = ",'A','"
  loc_1C06BAD:       unk_59BA49.Execute CStr(CVar(var_204 & var_3DC & "','" & MemVar_1F95070 & "',") & var_1B4 & var_184 & CVar(MemVar_1F95078) & "')"), , 
  loc_1C06BE5:     End If
  loc_1C06BE7:   End If
  loc_1C06BF1:   unk_59BA49.CommitTrans
  loc_1C06C01:   unk_59BA49.BeginTrans var_3C4
  loc_1C06C08:   Call Proc_32_112_1BDF230()
  loc_1C06C15:   unk_59BA49.CommitTrans
  loc_1C06C20:   Set var_1FC = Me.TopCtrl1
  loc_1C06C26:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1C06C3F:   If (CStr() = "Add") Then
  loc_1C06C4D:     unk_59BA49.BeginTrans var_3C4
  loc_1C06C54:     Call Proc_32_112_1BDF230()
  loc_1C06C61:     unk_59BA49.CommitTrans
  loc_1C06C66:   End If
  loc_1C06C6C:   var_8A = 0
  loc_1C06C7F:   Set var_1FC = Me.Txt
  loc_1C06C85:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1C06CA3:   var_8A = 0
  loc_1C06CB3:   Me.Requery -1
  loc_1C06CDF:   Me.Find "SearchCode ='" & var_200.Text & "'", 0, 1
  loc_1C06CF1:   Set var_1FC = Me.TopCtrl1
  loc_1C06CF7:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_184)
  loc_1C06D10:   If (CStr(var_8A) = "Add") Then
  loc_1C06D1E:     var_3C4 = Me.State
  loc_1C06D2C:     If (var_3C4 <> 0) Then
  loc_1C06D3C:       Me.Requery -1
  loc_1C06D41:     End If
  loc_1C06D41:   End If
  loc_1C06D66:   Call Proc_32_95_1012C48(Proc_5_1_100EC1C("INI", Me), global_76)
  loc_1C06D73:   Call Proc_32_92_1A03EEC(var_8A)
  loc_1C06D7D:   Call 0.Method_arg_2A0 ()
  loc_1C06D9F:   If (Me.FrTrans.Visible = &HFF) Then
  loc_1C06DB0:     Me.FrTrans.Visible = False
  loc_1C06DB8:   End If
  loc_1C06DB8: End If
  loc_1C06DBF: Set var_88 = Nothing
  loc_1C06DC9: Set var_14C = Nothing
  loc_1C06DCE: Exit Sub
  loc_1C06DCF: ' Referenced from: 1C014DC
  loc_1C06DD9: Set var_1FC = Err()
  loc_1C06DDF: Call 0.Method_arg_1C (var_3C4)
  loc_1C06DF0: If (var_3C4 = &H5B) Then
  loc_1C06DF5:   Resume Next
  loc_1C06DF9: End If
  loc_1C06E01: If (var_8A = &HFF) Then
  loc_1C06E0C:   unk_59BA49.RollbackTrans
  loc_1C06E11: End If
  loc_1C06E13: Proc_6_60_E63754()
  loc_1C06E1A: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5DBA4
  'Data Table: 59BA2C
  loc_E5DB7F: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5DB82:   Exit Sub
  loc_E5DB83: End If
  loc_E5DB9A: global_256 = CInt(CLng(Me.GridSel.Row))
  loc_E5DBA3: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 'FF8C28
  'Data Table: 59BA2C
  Dim var_8C As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_10C As String
  Dim var_86 As Integer
  loc_FF8A59: If ((CLng(Me.GridSel.Col) <> 0) Or (global_256 = 0)) Then
  loc_FF8A5C:   Exit Sub
  loc_FF8A5D: End If
  loc_FF8AB9: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_FF8ABC:   Exit Sub
  loc_FF8ABD: End If
  loc_FF8AC6: global_258 = global_256
  loc_FF8AEE: For var_BA = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_88 = var_BA 'Integer
  loc_FF8B07:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_FF8B22:   Me.GridSel.Col = 0
  loc_FF8B3A:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FF8B54:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FF8B60:   var_CC = CVar(CLng(var_88)) 'Long
  loc_FF8B65:   var_EC = 0
  loc_FF8B6E:   var_10C = vbNullString
  loc_FF8B78:   Set var_8C = Me.GridSel
  loc_FF8B7E:   LateIdCallSt
  loc_FF8B8C: Next var_BA 'Integer
  loc_FF8B98: var_CC = CVar(CLng(global_256)) 'Long
  loc_FF8B9D: var_EC = 0
  loc_FF8BA6: var_10C = "ü"
  loc_FF8BB0: Set var_8C = Me.GridSel
  loc_FF8BB6: LateIdCallSt
  loc_FF8BD7: Me.GridSel.Row = CVar(CLng(global_256))
  loc_FF8BF0: var_86 = CInt((UBound(global_252, 1) + 1))
  loc_FF8C02: ReDim Preserve global_252(0 To CLng(var_86))
  loc_FF8C1C: global_252(CLng(var_86)) = global_256
  loc_FF8C22: global_256 = 0
  loc_FF8C25: Exit Sub
End Sub

Private Sub Command3_Click() 'E5DF0C
  'Data Table: 59BA2C
  loc_E5DEC4: On Error Goto loc_E5DF05
  loc_E5DEF0: Call Proc_32_87_11C3F58(global_252, CByte(Me.Check1.Value))
  loc_E5DEFE: If (var_A0 = 0) Then
  loc_E5DF01:   GoTo loc_E5DF05
  loc_E5DF04: End If
  loc_E5DF04: Exit Sub
  loc_E5DF05: ' Referenced from: E5DF01
  loc_E5DF05: ' Referenced from: E5DEC4
  loc_E5DF05: Proc_6_60_E63754(var_A0)
  loc_E5DF0A: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E4E8BC
  'Data Table: 59BA2C
  loc_E4E8A3: If (Me.FrTrans.Visible = &HFF) Then
  loc_E4E8B2:   Me.FrTrans.Visible = False
  loc_E4E8BA: End If
  loc_E4E8BA: Exit Sub
End Sub

Private Sub Form_Load() '15808D0
  'Data Table: 59BA2C
  Dim var_A0 As Variant
  Dim var_C8 As Variant
  Dim var_B4 As Variant
  Dim var_D8 As TextBox
  Dim var_CC As Variant
  Dim var_D4 As Variant
  Dim var_B8 As String
  Dim var_E4 As String
  Dim unk_59BABE As Connection15
  Dim var_F4 As Variant
  Dim unk_59BA49 As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Variant
  Dim var_90 As Recordset15
  Dim Me As Recordset15
  Dim var_88 As Recordset15
  Dim var_158 As String
  Dim var_1A8 As Variant
  Dim var_134 As Variant
  loc_157F7C0: On Error Goto loc_15808C9
  loc_157F7CD: Set var_B4 = Me.TopCtrl1
  loc_157F7D3: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_157F7E1: Call 0.Method_arg_50 (var_B8)
  loc_157F7E9: var_C8 = CVar(var_B8) 'String
  loc_157F7F1: Set var_B4 = Me.TopCtrl1
  loc_157F7F7: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_C8)
  loc_157F812: ReDim Preserve global_200(0 To 0)
  loc_157F82C: ReDim Preserve global_204(0 To 0)
  loc_157F848: Me.DGParty.Left = CVar(CDbl(&HF))
  loc_157F85E: Set var_D4 = Me.Txt
  loc_157F864: Call 0.Method_Form_Load0 (CInt(4), var_D8)
  loc_157F87F: Set var_B4 = Me.Txt
  loc_157F885: Call 0.Method_Form_Load0 (CInt(4), var_CC)
  loc_157F89D: var_A0 = CVar(((var_CC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_157F8AC: Me.DGParty.Top = CVar(CDbl(&HF))
  loc_157F8CC: Set var_B4 = Me.Txt
  loc_157F8D2: Call 0.Method_Form_Load0 (CInt(5), var_CC)
  loc_157F8F1: Me.DGPartyBillNo.Left = CVar(var_CC.Left)
  loc_157F90D: Set var_D4 = Me.Txt
  loc_157F913: Call 0.Method_Form_Load0 (CInt(5), var_D8)
  loc_157F92E: Set var_B4 = Me.Txt
  loc_157F934: Call 0.Method_Form_Load0 (CInt(5), var_CC)
  loc_157F94C: var_A0 = CVar(((var_CC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_157F95B: Me.DGPartyBillNo.Top = CVar(var_CC.Left)
  loc_157F97B: Set var_B4 = Me.Txt
  loc_157F981: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_157F9A0: Me.DGVType.Left = CVar(var_CC.Left)
  loc_157F9BC: Set var_D4 = Me.Txt
  loc_157F9C2: Call 0.Method_Form_Load0 (CInt(1), var_D8)
  loc_157F9E3: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_157F9FB: var_A0 = CVar(((var_CC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_157FA0A: Me.DGVType.Top = CVar(var_CC.Left)
  loc_157FA22: global_240 = MemVar_1F951AC
  loc_157FA4D: unk_59BABE.Execute "Select * from PrinterSetup where RestCode='" & global_60 & "'", var_C8, -1
  loc_157FA5E: Set global_192 = Me.Txt
  loc_157FA79: If (MemVar_1F950B8 <> 1) Then
  loc_157FA80:   Set var_B4 = Me.TopCtrl1
  loc_157FA86:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_B4)
  loc_157FAB0:   var_F4 = CVar(Replace(CStr(var_C8), "D", "*", 1, -1, 0)) 'String
  loc_157FAB8:   Set var_CC = Me.TopCtrl1
  loc_157FABE:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_F4)
  loc_157FAD4: End If
  loc_157FAFB: unk_59BA49.Execute "Select RateInclTax from depart where code='" & global_60 & "'", var_C8, -1
  loc_157FB06: Set var_8C = var_B4
  loc_157FB2A: If (var_8C.RecordCount > 0) Then
  loc_157FB3C:   var_B4 = var_8C.Fields
  loc_157FB4C:   var_C8 = CVar(var_B4.Item("RateInclTax")) 'Address
  loc_157FB5E:   global_136 = Proc_6_38_E69628(var_C8)
  loc_157FB6A: End If
  loc_157FB6F: Set var_8C = Nothing
  loc_157FB7F: global_60 = MemVar_1F95070 & "PURC"
  loc_157FB93: var_B0 = "Select E.ImportOptionInPurchase,E.AcFieldAlterable,E.AddModifyEntryInBackDate,E.PurChaseGodown,G.Name PurChaseGodownName,E.BarCodeFeatureInPurchase,E.ItemRateInPurchaseBillBasedOn,E.DateEditableOnRequisitionYN From Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE="
  loc_157FBA3: Proc_6_17_EAAE40(var_C8, MemVar_1F95078, var_B0, var_134)
  loc_157FBAB: var_F4 = -1 & var_C8 
  loc_157FBC2: unk_59BA49.Execute CStr(var_F4 & vbNullString), var_B4, var_B4
  loc_157FBCD: Set var_90 = var_B4
  loc_157FBF5: If (var_90.RecordCount > 0) Then
  loc_157FC35:   global_264 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("AddModifyEntryInBackDate"))))))
  loc_157FC76:   global_260 = Proc_6_38_E69628(CVar(var_90.Fields.Item("AcFieldAlterable")))
  loc_157FCB1:   global_232 = Proc_6_38_E69628(CVar(var_90.Fields.Item("PurchaseGodown")))
  loc_157FCEC:   global_236 = Proc_6_38_E69628(CVar(var_90.Fields.Item("PurchaseGodownName")))
  loc_157FD36:   global_188 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ItemRateInPurchaseBillBasedOn"))))))
  loc_157FD77:   global_104 = Proc_6_38_E69628(CVar(var_90.Fields.Item("BarCodeFeatureInPurchase")))
  loc_157FDBD:   If (Proc_6_38_E69628(CVar(var_90.Fields.Item("ImportOptionInPurchase"))) = "Yes") Then
  loc_157FDCC:     Me.CmdImport.Visible = True
  loc_157FDD4:   End If
  loc_157FE02:   global_108 = Proc_6_38_E69628(CVar(var_90.Fields.Item("DateEditableOnRequisitionYN")))
  loc_157FE0F: End If
  loc_157FE19: Set global_68 = New 
  loc_157FE2B: Me.CursorLocation = 3
  loc_157FE43: If (OpenAs = "Expense") Then
  loc_157FE64:   var_B8 = "Select SubCode As Code,Name,(Add1+' '+Add2) As Address,C.CityName,GSTIN TINNo From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where ActiveYN=1 and (Subgroup.LOGSITE_CODE='" & MemVar_1F95078
  loc_157FE75:   Me.Open CVar(OpenAs & "' or Subgroup.LOGSITE_CODE='HO') and Nature in ('Customer','Supplier','Cash') Order by Name"), CVar(MemVar_1F95044), 3
  loc_157FE83: Else
  loc_157FEA1:   var_B8 = "Select SubCode As Code,Name,(Add1+' '+Add2) As Address,C.CityName,GSTIN TINNo From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where ActiveYN=1 and (Subgroup.LOGSITE_CODE='" & MemVar_1F95078
  loc_157FEB2:   Me.Open CVar(OpenAs & "' or Subgroup.LOGSITE_CODE='HO') and Nature in ('Supplier','Cash') Order by Name"), CVar(MemVar_1F95044), 3
  loc_157FEBD: End If
  loc_157FEC6: CVarUnk
  loc_157FECB: VerifyVarObj
  loc_157FED1: Set var_B4 = Me.DGParty
  loc_157FED7: LateIdStAd
  loc_157FF01: Me.DGParty.CursorLocation = 3
  loc_157FF24: var_B8 = "Select PartyBillNo As PartyBillNoCd,PartyBillNo As PartyBillNoNm,Party from purch1 Where (purch1.LOGSITE_CODE='" & MemVar_1F95078
  loc_157FF35: Me.Open CVar(var_B8 & "' or purch1.LOGSITE_CODE='HO') "), CVar(MemVar_1F95044), 3
  loc_157FF49: CVarUnk
  loc_157FF4E: VerifyVarObj
  loc_157FF5A: LateIdStAd
  loc_157FF72: Set global_84 = New 
  loc_157FF84: Me.DGPartyBillNo.CursorLocation = 3
  loc_157FF9C: If (OpenAs = "Expense") Then
  loc_157FFA5:   Call 0.Method_arg_54 ("Expense Voucher", Me.DGPartyBillNo, New, 1, -1, Me.DGPartyBillNo)
  loc_157FFAA: End If
  loc_157FFBD: If (OpenAs = "Expense") Then
  loc_157FFE5:   var_E4 = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where LogSite_Code='" & MemVar_1F95078 & "' and Site_Code='"
  loc_157FFFD:   Me.Open CVar(var_E4 & MemVar_1F95070 & "' and Category in('EXPENT') Order by Description"), CVar(MemVar_1F95044), 3
  loc_1580011: Else
  loc_1580036:   var_E4 = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where LogSite_Code='" & MemVar_1F95078 & "' and Site_Code='"
  loc_1580044:   var_C8 = CVar(var_E4 & MemVar_1F95070 & "' and Category in('PurchBill') Order by Description") 'String
  loc_158004E:   Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_158005F: End If
  loc_1580068: CVarUnk
  loc_158006D: VerifyVarObj
  loc_1580079: LateIdStAd
  loc_15800AB: unk_59BA49.Execute "Select ShortName,Code From Depart Where Code='" & MemVar_1F951A8 & "'", var_C8, -1
  loc_15800B6: Set var_88 = Me.DGVType
  loc_15800DA: If (var_88.RecordCount > 0) Then
  loc_158010E:   global_244 = CStr(var_88.Fields.Item("ShortName").Value)
  loc_1580131:   var_B4 = var_88.Fields
  loc_1580139:   var_CC = var_B4.Item("Code")
  loc_1580141:   var_C8 = var_CC.Value
  loc_1580150:   global_248 = CStr(var_C8)
  loc_1580161: End If
  loc_158016B: Set global_76 = New 
  loc_158017D: Me.CursorLocation = 3
  loc_1580195: If (OpenAs = "Expense") Then
  loc_15801A3:   Proc_6_7_F26918(var_C8, MemVar_1F950F4, var_B4, var_B4, global_84, 1, -1)
  loc_15801B3:   Proc_6_7_F26918(var_134, MemVar_1F950FC, 1, -1)
  loc_15801CF:   var_B0 = "Select DISTINCT P.DocId as SearchCode,P.DocID,P.LogSite_Code,P.Site_Code From Purch1 P Inner JOIN VOUCHER_TYPE V ON (P.VTYPE=V.V_TYPE And P.logSite_Code=V.LogSite_Code) WHERE P.VDATE Between "
  loc_1580203:   var_1A8 = var_B0 & var_C8 & " And " & var_134 & " AND P.LogSite_Code='" & CVar(MemVar_1F95078) & "' aND v.category in('EXPENT') ORDER BY P.DOCID" 
  loc_158020E:   Me.Open var_1A8, CVar(MemVar_1F95044), 3
  loc_1580229: Else
  loc_1580234:   Proc_6_7_F26918(var_C8, MemVar_1F950F4, 1, -1)
  loc_1580244:   Proc_6_7_F26918(var_134, MemVar_1F950FC, global_68)
  loc_1580260:   var_B0 = "Select DISTINCT P.DocId as SearchCode,P.DocID,P.LogSite_Code,P.Site_Code From Purch1 P Inner JOIN VOUCHER_TYPE V ON (P.VTYPE=V.V_TYPE And P.logSite_Code=V.LogSite_Code) WHERE P.VDATE Between "
  loc_1580268:   var_F4 = var_B0 & var_C8 
  loc_1580294:   var_1A8 = var_F4 & " And " & var_134 & " AND P.LogSite_Code='" & CVar(MemVar_1F95078) & "' aND v.category in('PurchBill') ORDER BY P.DOCID" 
  loc_158029F:   Me.Open var_1A8, CVar(MemVar_1F95044), 3
  loc_15802B7: End If
  loc_15802C1: Set global_64 = New 
  loc_15802D3: Me.Recordset15.CursorLocation = 3
  loc_15802E3: If (global_104 = "Yes") Then
  loc_1580304:   var_B8 = "Select I.Code,I.BarCode,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.ConvRatio,I.Unit,I.IssueUnit,I.SChrgApp,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,IC.taxStru,I.DiscApp as IDiscApp,I.Purchrate as IPurchRate,TS.Name as TaxStruName,IC.AcName As SaleAcCode,SG.Name As SaleAcName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join (Select Distinct Code,Name From Taxstru Where LOGSITE_CODE='" & MemVar_1F95078
  loc_158030B:   var_E4 = var_B8 & "' or LOGSITE_CODE='HO') TS on TS.Code=IC.TaxStru left Join SubGroup SG On SG.SubCode=IC.AcName Where (I.LOGSITE_CODE='"
  loc_1580319:   var_C8 = CVar(var_E4 & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And (I.GravyItem<>'Yes' or I.GravyItem is NULL) And I.DispCode <>9999 And I.ActiveYN<>'No' Order by I.BarCode") 'String
  loc_1580323:   Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_1580337: Else
  loc_1580355:   var_B8 = "Select I.Code,I.BarCode,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.ConvRatio,I.Unit,I.IssueUnit,I.SChrgApp,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,IC.taxStru,I.DiscApp as IDiscApp,I.Purchrate as IPurchRate,TS.Name as TaxStruName,IC.AcName As SaleAcCode,SG.Name As SaleAcName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join (Select Distinct Code,Name From Taxstru Where LOGSITE_CODE='" & MemVar_1F95078
  loc_158035C:   var_E4 = var_B8 & "' or LOGSITE_CODE='HO') TS on TS.Code=IC.TaxStru left Join SubGroup SG On SG.SubCode=IC.AcName Where (I.LOGSITE_CODE='"
  loc_158036A:   var_C8 = CVar(var_E4 & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And (I.GravyItem<>'Yes' or I.GravyItem is NULL) And I.DispCode <>9999 And I.ActiveYN<>'No' Order by I.Name") 'String
  loc_1580374:   Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_1580385: End If
  loc_158038E: CVarUnk
  loc_1580393: VerifyVarObj
  loc_1580399: Set var_B4 = Me.DGItem
  loc_158039F: LateIdStAd
  loc_15803B7: Set global_88 = New 
  loc_15803C9: Me.DGItem.CursorLocation = 3
  loc_15803F3: var_C8 = CVar("Select Code,Name From Godownmast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_15803FD: Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_1580411: CVarUnk
  loc_1580416: VerifyVarObj
  loc_158041C: Set var_B4 = Me.DGGod
  loc_1580422: LateIdStAd
  loc_158043A: Set global_224 = New 
  loc_158044F: Me.DGGod.CursorLocation = 3
  loc_1580472: var_B8 = "SELECT Distinct TaxStru.Code as Code, TaxStru.Name as name FROM TaxStru INNER JOIN ItemCatMast ON TaxStru.Code = ItemCatMast.TaxStru where (TaxStru.LOGSITE_CODE='" & MemVar_1F95078
  loc_1580479: var_E4 = var_B8 & "' or TaxStru.LOGSITE_CODE='HO') and ItemCatMast.RestCode='"
  loc_1580494: Me.Recordset15.Open CVar(var_E4 & MemVar_1F95078 & "PURC' order by taxstru.name "), CVar(MemVar_1F95044), 2
  loc_15804B1: CVarUnk
  loc_15804B6: VerifyVarObj
  loc_15804BC: Set var_B4 = Me.DGTaxStru
  loc_15804C2: LateIdStAd
  loc_15804EF: Me.DGTaxStru.CursorLocation = 3
  loc_1580519: var_C8 = CVar("Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','280','040') Order by Name") 'String
  loc_1580526: Me.Recordset15.Open var_C8, CVar(MemVar_1F95044), 2
  loc_158053D: CVarUnk
  loc_1580542: VerifyVarObj
  loc_1580548: Set var_B4 = Me.DGSaleAc
  loc_158054E: LateIdStAd
  loc_158058F: Call 0.Method_arg_50 (var_E4, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078 & "' and ENAME='", var_C8, -1, var_B4, var_CC, 0, var_D4)
  loc_15805B6: unk_59BA49.Execute var_F4 & var_E4 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_B4, New
  loc_15805BE: 3 = var_B4.Fields
  loc_15805C6: var_B4 = var_CC.Item(-1)
  loc_15805CE: global_224 = var_D4.Value
  loc_15805FF: If (var_F4 > 0) Then
  loc_1580648:   Call 0.Method_arg_50 (var_E4, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F95078 & "' and ENAME='", var_C8, -1, var_B4, var_CC, 0)
  loc_158066F:   unk_59BA49.Execute var_D4 & var_E4 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_F4, "SearchCode='"
  loc_1580677:   0 = var_B4.Fields
  loc_158067F:   var_158 = var_CC.Item(1)
  loc_1580687:    = var_D4.Value
  loc_15806A6:   Me.Find CStr(var_F4 & "'"), , 
  loc_15806D2: End If
  loc_15806E9: If (Me.RecordCount > 0) Then
  loc_1580700:   If (Me.EOF = &HFF) Then
  loc_1580709:     Me.MoveLast
  loc_158070E:   End If
  loc_158070E: End If
  loc_1580719: If (global_104 = "Yes") Then
  loc_1580728:   Me.TxtBarCode.Visible = True
  loc_158073B:   Set var_B4 = Me.Label1
  loc_1580741:   Call 0.Method_Form_Load0 (&HB, var_CC)
  loc_1580749:   var_CC.Visible = True
  loc_1580755: End If
  loc_158075E: Call 0.Method_arg_160 (var_B4)
  loc_158076C: Call 0.Method_arg_164 (var_B4)
  loc_1580797: Call Proc_32_95_1012C48(Proc_5_1_100EC1C("INI", Me))
  loc_15807B1: Me.LblUser.Left = CDbl(500)
  loc_15807C8: Me.LblUser.Top = CDbl(7800)
  loc_15807DF: Me.LblLDt.Top = CDbl(8160)
  loc_15807F6: Me.LblLDt.Left = CDbl(500)
  loc_1580805: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_158081D: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1580833: Me.FrInVoiceType.BackColor = CLng(MemVar_1F951B4)
  loc_158084A: Set var_B4 = Me.Opt
  loc_1580850: Call 0.Method_Form_Load0 (CInt(0), var_CC)
  loc_1580858: var_CC.BackColor = CLng(MemVar_1F951B4)
  loc_1580873: Set var_B4 = Me.Opt
  loc_1580879: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_1580881: var_CC.BackColor = CLng(MemVar_1F951B4)
  loc_158089C: Set var_B4 = Me.Opt
  loc_15808A2: Call 0.Method_Form_Load0 (CInt(2), var_CC)
  loc_15808AA: var_CC.BackColor = CLng(MemVar_1F951B4)
  loc_15808B6: Call Proc_32_89_14A3B88(global_76)
  loc_15808BB: Call Proc_32_92_1A03EEC()
  loc_15808C5: Set var_90 = Nothing
  loc_15808C8: Exit Sub
  loc_15808C9: ' Referenced from: 157F7C0
  loc_15808C9: Proc_6_60_E63754()
  loc_15808CE: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4158
  'Data Table: 59BA2C
  Dim var_8C As Label
  loc_ED40B6: Call 0.Method_arg_50 (var_88)
  loc_ED40C8: Me.LblFormCaption.Caption = var_88
  loc_ED40E1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED40ED: Set var_A0 = Me.TopCtrl1
  loc_ED40F3: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED4100: Set var_8C = Me.TopCtrl1
  loc_ED4106: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED4120: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED413B: Call 0.Method_arg_100 (var_B8)
  loc_ED414D: Me.LblFormCaption.Width = var_B8
  loc_ED4155: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EADF04
  'Data Table: 59BA2C
  loc_EADE77: Set global_64 = Nothing
  loc_EADE89: Set global_80 = Nothing
  loc_EADE95: global_52 = 0
  loc_EADEA3: Set global_192 = Nothing
  loc_EADEB5: Set global_68 = Nothing
  loc_EADEC7: Set global_84 = Nothing
  loc_EADED9: Set global_88 = Nothing
  loc_EADEEB: Set global_224 = Nothing
  loc_EADF00: Exit Sub
End Sub

Private Sub Form_Activate() 'F2FFD0
  'Data Table: 59BA2C
  Dim var_D0 As Integer
  Dim var_8C As String
  Dim unk_59BA49 As Connection15
  Dim var_BC As Variant
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  loc_F2FEE2: var_D0 = 0
  loc_F2FEFF: var_8C = "Select Count(*) From SundryType WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_F2FF1D: unk_59BA49.Execute var_8C & "') and V_Type='" & MemVar_1F95078 & "PURC'", var_B8, -1
  loc_F2FF25: var_BC = var_BC.Fields
  loc_F2FF2D: var_D0 = var_C0.Item(var_C0)
  loc_F2FF35: var_D4 = var_D4.Value
  loc_F2FF60: If (var_E4 <= 0) Then
  loc_F2FF7C:   MsgBox("Voucher wise Sundry not defined", 0, var_E4, var_104, var_124)
  loc_F2FF99:   Me.Global.Unload Me
  loc_F2FFA1:   Exit Sub
  loc_F2FFA2: End If
  loc_F2FFA8: Call 0.Method_arg_50 (var_8C)
  loc_F2FFBA: Me.LblFormCaption.Caption = var_8C
  loc_F2FFCA: Set var_88 = Nothing
  loc_F2FFCD: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25474
  'Data Table: 59BA2C
  loc_E25459: If (global_52 = &HFF) Then
  loc_E25469:   Me.Global.Unload Me
  loc_E25471: End If
  loc_E25471: Exit Sub
  loc_E25472: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EDEACC
  'Data Table: 59BA2C
  Dim var_4C00 As Single
  loc_EDEA18: On Error Goto loc_EDEAC4
  loc_EDEA49: If (((global_104 = "Yes") And (Shift = 1)) And (Me.TxtBarCode.Visible = &HFF)) Then
  loc_EDEA56:   Me.TxtBarCode.SetFocus
  loc_EDEA5E: End If
  loc_EDEA76: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_EDEABB: If CBool((Ucase(Chr(CLng(KeyCode))) = "E") And (Shift = 4)) Then
  loc_EDEABE:   Call Command1_Click()
  loc_EDEAC3: End If
  loc_EDEAC3: Exit Sub
  loc_EDEAC4: ' Referenced from: EDEA18
  loc_EDEAC4: Proc_6_60_E63754(Shift)
  loc_EDEAC9: Exit Sub
  loc_EDEACA: var_4C00 = global_52
End Sub

Private Sub Txt_GotFocus(Index As Integer) '133CFA8
  'Data Table: 59BA2C
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_133C7DA: Set var_88 = Me.Txt
  loc_133C7E0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_133C7EE: Proc_6_74_E23240(var_8C)
  loc_133C7FA: Call Proc_32_96_FE19D4(var_8C)
  loc_133C802: var_92 = Index
  loc_133C80D: If (var_92 = CInt(1)) Then
  loc_133C823:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_133C845:   If (Me.RecordCount > 0) Then
  loc_133C853:     Set var_8C = Me.FGPoint
  loc_133C86B:     Proc_6_137_1192FDC(Me.DGVType, global_84, Index)
  loc_133C879:   End If
  loc_133C8C7:   Set var_88 = Me.Txt
  loc_133C8CD:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133C8D5:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133C8ED:   If (var_8C Or (var_C0 = vbNullString)) Then
  loc_133C8F0:     Exit Sub
  loc_133C8F1:   End If
  loc_133C8FE:   Set var_88 = Me.Txt
  loc_133C904:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133C90C:   var_C0 = var_8C.Text
  loc_133C914:   var_D4 = CVar(var_C0) 'String
  loc_133C959:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_133C962:     Me.MoveFirst
  loc_133C987:     Set var_88 = Me.Txt
  loc_133C98D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_133C995:     0 = var_8C.Text
  loc_133C9A3:     Proc_6_17_EAAE40(var_D4, CVar(var_C0), 1)
  loc_133C9B9:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_133C9D1:   End If
  loc_133C9D4: Else
  loc_133C9DC:   If (var_92 = CInt(7)) Then
  loc_133C9F6:     If (Me.State <> 0) Then
  loc_133CA10:       If (Me.RecordCount > 0) Then
  loc_133CA1E:         Set var_8C = Me.FGPoint
  loc_133CA36:         Proc_6_137_1192FDC(Me.DgMR, global_80)
  loc_133CA44:       End If
  loc_133CA92:       Set var_88 = Me.Txt
  loc_133CA98:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133CAA0:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133CAB8:       If (Index Or (var_C0 = vbNullString)) Then
  loc_133CABB:         Exit Sub
  loc_133CABC:       End If
  loc_133CAC9:       Set var_88 = Me.Txt
  loc_133CACF:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133CAD7:       var_C0 = var_8C.Text
  loc_133CADF:       var_D4 = CVar(var_C0) 'String
  loc_133CB24:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_133CB2D:         Me.MoveFirst
  loc_133CB52:         Set var_88 = Me.Txt
  loc_133CB58:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_133CB60:         0 = var_8C.Text
  loc_133CB6E:         Proc_6_17_EAAE40(var_D4, CVar(var_C0), 1)
  loc_133CB84:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_133CB9C:       End If
  loc_133CB9C:     End If
  loc_133CB9F:   Else
  loc_133CBA7:     If (var_92 = CInt(4)) Then
  loc_133CBC1:       If (Me.RecordCount > 0) Then
  loc_133CBCF:         Set var_8C = Me.FGPoint
  loc_133CBE7:         Proc_6_137_1192FDC(Me.DGParty, global_68)
  loc_133CBF5:       End If
  loc_133CC43:       Set var_88 = Me.Txt
  loc_133CC49:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133CC51:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133CC69:       If (Index Or (var_C0 = vbNullString)) Then
  loc_133CC6C:         Exit Sub
  loc_133CC6D:       End If
  loc_133CC7A:       Set var_88 = Me.Txt
  loc_133CC80:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133CC88:       var_C0 = var_8C.Text
  loc_133CC90:       var_D4 = CVar(var_C0) 'String
  loc_133CCD5:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_133CCDE:         Me.MoveFirst
  loc_133CD03:         Set var_88 = Me.Txt
  loc_133CD09:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_133CD11:         0 = var_8C.Text
  loc_133CD1F:         Proc_6_17_EAAE40(var_D4, CVar(var_C0), 1)
  loc_133CD35:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_133CD4D:       End If
  loc_133CD50:     Else
  loc_133CD58:       If (var_92 = CInt(5)) Then
  loc_133CD69:         Set var_88 = Me.Txt
  loc_133CD6F:         Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_133CD8E:         If (var_8C.Text Like "*Return*") Then
  loc_133CDA0:           Me.Filter = 0
  loc_133CDB6:           Set var_88 = Me.Txt
  loc_133CDBC:           Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_133CDC4:           var_C0 = var_8C.Tag
  loc_133CDDE:           Me.Filter = CVar("Party='" & var_C0 & "'")
  loc_133CDFF:           Me.Requery -1
  loc_133CE1B:           If (Me.RecordCount > 0) Then
  loc_133CE29:             Set var_8C = Me.FGPoint
  loc_133CE41:             Proc_6_137_1192FDC(Me.DGPartyBillNo, global_72)
  loc_133CE4F:           End If
  loc_133CE9D:           Set var_88 = Me.Txt
  loc_133CEA3:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133CEAB:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133CEC3:           If (Index Or (var_C0 = vbNullString)) Then
  loc_133CEC6:             Exit Sub
  loc_133CEC7:           End If
  loc_133CED4:           Set var_88 = Me.Txt
  loc_133CEDA:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133CEE2:           var_C0 = var_8C.Text
  loc_133CEEA:           var_D4 = CVar(var_C0) 'String
  loc_133CF2F:           If CBool(var_D4 <> Me.Fields.Item("PartyBillNoNm").Value) Then
  loc_133CF38:             Me.MoveFirst
  loc_133CF5D:             Set var_88 = Me.Txt
  loc_133CF63:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "PartyBillNoNm =")
  loc_133CF6B:             0 = var_8C.Text
  loc_133CF79:             Proc_6_17_EAAE40(var_D4, CVar(var_C0), 1)
  loc_133CF8F:             Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_133CFA7:           End If
  loc_133CFA7:         End If
  loc_133CFA7:       End If
  loc_133CFA7:     End If
  loc_133CFA7:   End If
  loc_133CFA7: End If
  loc_133CFA7: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '129E840
  'Data Table: 59BA2C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_E8 As String
  Dim var_90 As Variant
  Dim var_9C As DataGrid
  Dim var_A0 As DataGrid
  loc_129E247: var_86 = Shift
  loc_129E254: If (CLng(Shift) = &H1B) Then
  loc_129E257:   Call Proc_32_96_FE19D4(var_86)
  loc_129E25C:   Exit Sub
  loc_129E25D: End If
  loc_129E260: var_88 = KeyCode
  loc_129E26B: If (var_88 = CInt(1)) Then
  loc_129E2C8:   Proc_6_69_134A630(Me.DGVType, Me.Txt, CInt(1), global_84, Shift, &HFF)
  loc_129E2F5:   If (Me.RecordCount > 0) Then
  loc_129E32A:     var_E8 = CStr(Trim(CVar(Me.Fields.Item("NCat"))))
  loc_129E330:     global_132 = var_E8
  loc_129E341:     Call Proc_32_110_11301B4(1, Nothing, Me.FGPoint)
  loc_129E346:   End If
  loc_129E39F:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129E3AD:     Set var_90 = Me.FGPoint
  loc_129E3C5:     Proc_6_138_106E830(Me.DGVType, global_84, KeyCode)
  loc_129E3D3:   End If
  loc_129E3D6: Else
  loc_129E3DE:   If (var_88 = CInt(7)) Then
  loc_129E3F8:     If (Me.State <> 0) Then
  loc_129E418:       Set var_A0 = Me.FGPoint
  loc_129E423:       Set var_9C = Nothing
  loc_129E455:       Proc_6_69_134A630(Me.DgMR, Me.Txt, CInt(7), global_80, Shift, 0, 1)
  loc_129E4C4:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129E4CB:         Set var_9C = Me.DgMR
  loc_129E4EA:         Proc_6_138_106E830(var_9C, global_80, KeyCode, Me.FGPoint, var_9C)
  loc_129E4F8:       End If
  loc_129E4F8:     End If
  loc_129E4FB:   Else
  loc_129E503:     If (var_88 = CInt(4)) Then
  loc_129E523:       Set var_A0 = Me.FGPoint
  loc_129E560:       Proc_6_69_134A630(Me.DGParty, Me.Txt, CInt(4), global_68, Shift, &HFF, 1, Nothing)
  loc_129E5CF:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129E5DD:         Set var_90 = Me.FGPoint
  loc_129E5F5:         Proc_6_138_106E830(Me.DGParty, global_68, KeyCode, var_90, var_A0, 0)
  loc_129E603:       End If
  loc_129E606:     Else
  loc_129E60E:       If (var_88 = CInt(5)) Then
  loc_129E61F:         Set var_8C = Me.Txt
  loc_129E625:         Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, var_E8, var_A0)
  loc_129E62D:         0 = var_90.Text
  loc_129E644:         If (var_E8 Like "*Return*") Then
  loc_129E664:           Set var_A0 = Me.FGPoint
  loc_129E66F:           Set var_9C = Nothing
  loc_129E6A1:           Proc_6_69_134A630(Me.DGPartyBillNo, Me.Txt, CInt(5), global_72, Shift, &HFF, 1)
  loc_129E710:           If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129E717:             Set var_9C = Me.DGPartyBillNo
  loc_129E736:             Proc_6_138_106E830(var_9C, global_72, KeyCode, Me.FGPoint, var_9C)
  loc_129E744:           End If
  loc_129E744:         End If
  loc_129E744:       End If
  loc_129E744:     End If
  loc_129E744:   End If
  loc_129E744: End If
  loc_129E75E: Set var_90 = Me.DGItem
  loc_129E78C: Set var_A0 = Me.DGPartyBillNo
  loc_129E7EB: If ((((((CBool(Me.DGVType.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(var_A0.Visible) = 0)) And (CBool(Me.DgMR.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_129E803:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_129E80C:     Proc_6_75_E5335C(Shift, arg_14, var_A0, 0)
  loc_129E811:   End If
  loc_129E819:   If (KeyCode <> CInt(7)) Then
  loc_129E831:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_129E83A:       Proc_6_76_E533C8(Shift, arg_14, var_90)
  loc_129E83F:     End If
  loc_129E83F:   End If
  loc_129E83F: End If
  loc_129E83F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10D73B8
  'Data Table: 59BA2C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_B8 As TextBox
  loc_10D70AC: On Error Goto loc_10D73B0
  loc_10D70B2: Proc_6_58_E06050(arg_10)
  loc_10D70BA: var_86 = KeyAscii
  loc_10D70C5: If (var_86 = CInt(1)) Then
  loc_10D70E4:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_10D70FA:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_10D7114:     var_B0 = "Name"
  loc_10D712F:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_84, arg_10)
  loc_10D7149:     Set var_B8 = Me.FGPoint
  loc_10D7161:     Proc_6_138_106E830(Me.DGVType, global_84, KeyAscii, var_B8)
  loc_10D716F:   End If
  loc_10D7172: Else
  loc_10D717A:   If (var_86 = CInt(2)) Then
  loc_10D7187:     Set var_8C = Me.Txt
  loc_10D718D:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_10D71A8:     Proc_6_42_129B55C(var_B8, arg_10, 8)
  loc_10D71B7:   Else
  loc_10D71BF:     If (var_86 = CInt(7)) Then
  loc_10D71DE:       If (CBool(Me.DgMR.Visible) = &HFF) Then
  loc_10D720B:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_10D723D:         Proc_6_138_106E830(Me.DgMR, global_80, KeyAscii, Me.FGPoint)
  loc_10D724B:       End If
  loc_10D724E:     Else
  loc_10D7256:       If (var_86 = CInt(4)) Then
  loc_10D7275:         If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_10D7287:           var_B0 = "Name"
  loc_10D72A2:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, var_B0)
  loc_10D72BC:           Set var_B8 = Me.FGPoint
  loc_10D72D4:           Proc_6_138_106E830(Me.DGParty, global_68, KeyAscii, var_B8, 0)
  loc_10D72E2:         End If
  loc_10D72E5:       Else
  loc_10D72ED:         If (var_86 = CInt(5)) Then
  loc_10D72FE:           Set var_8C = Me.Txt
  loc_10D7304:           Call 0.Method_Txt_KeyPress0 (CInt(1), var_B8, var_B0, 0)
  loc_10D730C:           0 = var_B8.Text
  loc_10D7323:           If (var_B0 Like "*Return*") Then
  loc_10D7342:             If (CBool(Me.DGPartyBillNo.Visible) = &HFF) Then
  loc_10D7354:               var_B0 = "PartyBillNoNm"
  loc_10D736F:               Proc_6_89_1470B00(Me.Txt, KeyAscii, global_72, arg_10)
  loc_10D73A1:               Proc_6_138_106E830(Me.DGPartyBillNo, global_72, KeyAscii, Me.FGPoint)
  loc_10D73AF:             End If
  loc_10D73AF:           End If
  loc_10D73AF:         End If
  loc_10D73AF:       End If
  loc_10D73AF:     End If
  loc_10D73AF:   End If
  loc_10D73AF: End If
  loc_10D73AF: Exit Sub
  loc_10D73B0: ' Referenced from: 10D70AC
  loc_10D73B0: Proc_6_60_E63754(var_B0, 0)
  loc_10D73B5: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E7E37C
  'Data Table: 59BA2C
  Dim var_8C As TextBox
  loc_E7E326: Set var_88 = Me.Txt
  loc_E7E32C: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E7E33A: Proc_6_73_E23294(var_8C)
  loc_E7E34E: If (Index = CInt(1)) Then
  loc_E7E35E:   Set var_88 = Me.Txt
  loc_E7E364:   Call 0.Method_Txt_LostFocus0 (CInt(1), var_8C)
  loc_E7E36C:   var_8C.Enabled = False
  loc_E7E378: End If
  loc_E7E378: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1817E1C
  'Data Table: 59BA2C
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
  Dim unk_59BA49 As Connection15
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
  loc_1815A94: On Error Goto loc_1817E15
  loc_1815A9A: var_A0 = Cancel
  loc_1815AA5: If (var_A0 = CInt(1)) Then
  loc_1815AB3:   Set var_A4 = Me.Txt
  loc_1815AB9:   Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_1815AC1:   var_B0 = "Voucher Type"
  loc_1815AE2:   If (Proc_6_27_EA61EC(var_A8, var_B0) = 0) Then
  loc_1815AF0:     Set var_A4 = Me.Txt
  loc_1815AF6:     Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_1815AFE:     var_A8.SetFocus
  loc_1815B0C:     arg_10 = &HFF
  loc_1815B0F:     Exit Sub
  loc_1815B10:   End If
  loc_1815B5E:   Set var_A4 = Me.Txt
  loc_1815B64:   Call 0.Method_Txt_Validate0 (Cancel, var_A8, var_B0)
  loc_1815B6C:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A8.Text
  loc_1815B84:   If (arg_10 Or (var_B0 = vbNullString)) Then
  loc_1815B94:     Set var_A4 = Me.Txt
  loc_1815B9A:     Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1815BA2:     var_A8.Text = vbNullString
  loc_1815BBB:     Set var_A4 = Me.Txt
  loc_1815BC1:     Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1815BC9:     var_A8.Tag = vbNullString
  loc_1815BDB:     global_132 = vbNullString
  loc_1815BE5:     global_196 = vbNullString
  loc_1815BEC:   Else
  loc_1815C27:     Set var_AC = Me.Txt
  loc_1815C2D:     Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_1815C35:     var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1815C86:     Set var_AC = Me.Txt
  loc_1815C8C:     Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_1815C94:     var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1815CD3:     var_EC = Trim(CVar(Me.Fields.Item("NCat")))
  loc_1815CE2:     global_132 = CStr(var_EC)
  loc_1815D15:     var_DC = CVar(Me.Fields.Item("ContraType")) 'Address
  loc_1815D24:     global_196 = Proc_6_38_E69628(var_DC)
  loc_1815D54:     If (((global_132 = "PRC") Or (global_132 = "PBC")) Or (global_132 = "EXC")) Then
  loc_1815D57:     End If
  loc_1815D61:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_1815D7A:     If (CStr() = "Add") Then
  loc_1815D98:       var_F0 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE logSite_Code='" & MemVar_1F95078 & "' and Site_Code='"
  loc_1815D9F:       var_F4 = var_F0 & MemVar_1F95070
  loc_1815DC0:       unk_59BA49.Execute var_F4 & "' and NCAT='" & global_132 & "' Order by Description", var_DC, -1
  loc_1815DCB:       Set var_88 = Me.TopCtrl1
  loc_1815DF7:       If (var_88.RecordCount > 0) Then
  loc_1815E14:         var_A8 = var_88.Fields.Item(0)
  loc_1815E25:         var_B0 = CStr(var_A8.Value)
  loc_1815E2B:         global_140 = var_B0
  loc_1815E3F:       Else
  loc_1815E58:         MsgBox("Sundry setting Not Configured for Purchase Department", 0, var_EC, var_130, var_150)
  loc_1815E75:         Me.Global.Unload Me
  loc_1815E7D:         Exit Sub
  loc_1815E7E:       End If
  loc_1815E84:       Call Proc_32_98_10E8DA8(MemVar_1F95044, var_B0)
  loc_1815E97:       Set var_A4 = Me.Txt
  loc_1815E9D:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_1815EA5:       var_A8.Text = var_B0
  loc_1815EB4:     End If
  loc_1815EB4:     Call Proc_32_110_11301B4(var_A4)
  loc_1815EB9:   End If
  loc_1815EBC: Else
  loc_1815EC4:   If (var_A0 = CInt(2)) Then
  loc_1815ED2:     Set var_A4 = Me.Txt
  loc_1815ED8:     Call 0.Method_Txt_Validate0 (CInt(2))
  loc_1815EE0:     var_B0 = "Vr. No"
  loc_1815F01:     If (Proc_6_27_EA61EC(var_A8, var_B0) = 0) Then
  loc_1815F0F:       Set var_A4 = Me.Txt
  loc_1815F15:       Call 0.Method_Txt_Validate0 (CInt(2), var_A8)
  loc_1815F1D:       var_A8.SetFocus
  loc_1815F2B:       arg_10 = &HFF
  loc_1815F2E:       Exit Sub
  loc_1815F2F:     End If
  loc_1815F3D:     Set var_A4 = Me.Txt
  loc_1815F43:     Call 0.Method_Txt_Validate0 (CInt(2), var_A8, var_B0)
  loc_1815F4B:     arg_10 = var_A8.Text
  loc_1815F63:     If (CDbl(var_B0) = CDbl(0)) Then
  loc_1815F7F:       MsgBox("Vr. No Can Not Be 0", 0, var_EC, var_130, var_150)
  loc_1815F99:       Set var_A4 = Me.Txt
  loc_1815F9F:       Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1815FA7:       var_A8.SetFocus
  loc_1815FB5:       arg_10 = &HFF
  loc_1815FB8:       Exit Sub
  loc_1815FB9:     End If
  loc_1815FBD:     Set var_A4 = Me.TopCtrl1
  loc_1815FC3:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_1815FDC:     If (CStr(var_A8) = "Add") Then
  loc_1816010:       var_DC = Space((5 - Len(global_140)))
  loc_1816018:       var_130 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & global_140) + "Vr. No Can Not Be 0")
  loc_181602C:       var_150 = Space((5 - Len(global_124)))
  loc_1816034:       var_160 = (var_130 + var_150)
  loc_1816041:       var_170 = (var_160 + CVar(global_124))
  loc_1816058:       Set var_A4 = Me.Txt
  loc_181605E:       Call 0.Method_Txt_Validate0 (CInt(2), var_A8, var_F4)
  loc_1816066:       8 = var_A8.Text
  loc_1816073:       var_180 = Space((var_170 - Len(var_F4)))
  loc_181607B:       var_190 = ( + var_180)
  loc_181608D:       Set var_AC = Me.Txt
  loc_1816093:       Call 0.Method_Txt_Validate0 (CInt(2), var_CC)
  loc_18160A6:       var_1B0 = (var_190 + CVar(var_CC.Text))
  loc_18160F3:       Set var_A4 = Me.Txt
  loc_18160F9:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_1816101:       var_A8.Text = CStr(var_1B0)
  loc_181611D:       Me.LblVPrefix.Caption = global_124
  loc_1816125:     End If
  loc_1816129:     Set var_A4 = Me.TopCtrl1
  loc_181612F:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1816137:     var_B0 = CStr()
  loc_1816148:     If (var_B0 = "Add") Then
  loc_1816178:       Set var_A4 = Me.Txt
  loc_181617E:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_B0, "Select Count(*) From Purch1 Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_181618F:       var_F0 = var_CC & var_B0
  loc_181619F:       unk_59BA49.Execute var_F0 & "'", 0, var_1B4
  loc_18161AF:        = var_CC.Item()
  loc_18161B7:        = var_1B4.Value
  loc_18161E4:       If (var_A8.Text.Fields > 0) Then
  loc_18161ED:         Call 0.Method_arg_50 (var_B0)
  loc_181620E:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_B0), var_130, var_150)
  loc_1816224:         Call Proc_32_98_10E8DA8(MemVar_1F95044)
  loc_1816234:         If (var_B0 = vbNullString) Then
  loc_1816241:           Set var_A4 = Me.Txt
  loc_1816247:           Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_181624F:           var_A8.SetFocus
  loc_181625D:           arg_10 = &HFF
  loc_1816260:           Exit Sub
  loc_1816261:         End If
  loc_1816267:         Call Proc_32_98_10E8DA8(MemVar_1F95044, var_B0)
  loc_181627A:         Set var_A4 = Me.Txt
  loc_1816280:         Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_B0)
  loc_1816288:         var_A8.Text = arg_10
  loc_1816299:         arg_10 = &HFF
  loc_181629C:         Exit Sub
  loc_181629D:       End If
  loc_181629D:     End If
  loc_18162A0:   Else
  loc_18162A8:     If (var_A0 = CInt(3)) Then
  loc_18162B9:       Set var_A4 = Me.Txt
  loc_18162BF:       Call 0.Method_Txt_Validate0 (CInt(3), var_A8, var_B0)
  loc_18162C7:       arg_10 = var_A8.Text
  loc_18162DD:       var_130 = Len(Trim(CVar(var_B0)))
  loc_18162F7:       If (var_130 = 0) Then
  loc_181630D:         Set var_A4 = Me.Txt
  loc_1816313:         Call 0.Method_Txt_Validate0 (CInt(3), var_A8)
  loc_181631B:         var_A8.Text = CStr(MemVar_1F950EC)
  loc_181632D:       Else
  loc_1816337:         Set var_A4 = Me.Txt
  loc_181633D:         Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_181635D:         Set var_CC = Me.Txt
  loc_1816363:         Call 0.Method_Txt_Validate0 (Cancel, var_1B4)
  loc_181636B:         var_1B4.Text = Proc_6_33_15125B8(var_A8)
  loc_181637E:       End If
  loc_181638B:       Set var_A4 = Me.Txt
  loc_1816391:       Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1816399:       var_B0 = var_A8.Text
  loc_18163B4:       Set var_AC = Me.Txt
  loc_18163BA:       Call 0.Method_Txt_Validate0 (Cancel, var_CC, var_F0)
  loc_18163C2:       (CDate(var_B0) >= MemVar_1F950F4) = var_CC.Text
  loc_18163E4:       If Not((var_B0 And (CDate(var_F0) <= MemVar_1F950FC))) Then
  loc_1816408:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_130, var_150)
  loc_1816422:         Set var_A4 = Me.Txt
  loc_1816428:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1816430:         var_A8.SetFocus
  loc_181643E:         arg_10 = &HFF
  loc_1816441:         Exit Sub
  loc_1816442:       End If
  loc_1816462:       Set var_A4 = Me.Txt
  loc_1816468:       Call 0.Method_Txt_Validate0 (CInt(3), var_A8, var_B0)
  loc_1816470:       ((global_264 = "No") And (MemVar_1F950B8 <> 1)) = var_A8.Text
  loc_1816489:       If (arg_10 And (CDate(var_B0) < MemVar_1F950EC)) Then
  loc_18164A7:         var_DC = "Back Date Entry Blocked."
  loc_18164AD:         MsgBox(var_DC, &H10, "Date Validate", var_130, var_150)
  loc_18164C7:         Set var_A4 = Me.Txt
  loc_18164CD:         Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_18164D5:         var_A8.SetFocus
  loc_18164E3:         arg_10 = &HFF
  loc_18164E6:         Exit Sub
  loc_18164E7:       End If
  loc_18164EB:       Set var_A4 = Me.TopCtrl1
  loc_18164F1:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_18164F9:       var_B0 = CStr(var_A8)
  loc_181650F:       Set var_A8 = Me.Txt
  loc_1816515:       Call 0.Method_Txt_Validate0 (CInt(2), var_AC)
  loc_181653E:       If ((var_B0 = "Add") And (var_AC.Text = vbNullString)) Then
  loc_1816547:         Call Proc_32_98_10E8DA8(MemVar_1F95044)
  loc_181655A:         Set var_A4 = Me.Txt
  loc_1816560:         Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_1816568:         var_A8.Text = var_B0
  loc_1816577:       End If
  loc_181657A:     Else
  loc_1816582:       If (var_A0 = CInt(8)) Then
  loc_1816590:         Set var_A4 = Me.Txt
  loc_1816596:         Call 0.Method_Txt_Validate0 (CInt(8), var_A8)
  loc_18165BF:         If (Proc_6_27_EA61EC(var_A8, "Party Name") = 0) Then
  loc_18165CD:           Set var_A4 = Me.Txt
  loc_18165D3:           Call 0.Method_Txt_Validate0 (CInt(8), var_A8)
  loc_18165DB:           var_A8.SetFocus
  loc_18165E9:           arg_10 = &HFF
  loc_18165EC:           Exit Sub
  loc_18165ED:         End If
  loc_1816610:         If (((global_132 = "PRC") Or (global_132 = "PBC")) Or (global_132 = "EXC")) Then
  loc_1816630:           Proc_6_17_EAAE40(var_DC, MemVar_1F95078, "Select CashPurchAc From Enviro  WHERE LOGSITE_CODE=", var_130)
  loc_1816638:           var_EC = -1 & var_DC 
  loc_1816646:           unk_59BA49.Execute CStr("Date Validate"), var_A4, arg_10
  loc_1816651:           Set var_88 = var_A4
  loc_1816677:           If (var_88.RecordCount > 0) Then
  loc_1816694:             var_A8 = var_88.Fields.Item("CashPurchAc")
  loc_181669C:             var_DC = var_A8.Value
  loc_18166B3:             Set var_AC = Me.Txt
  loc_18166B9:             Call 0.Method_Txt_Validate0 (CInt(4), var_CC)
  loc_18166C1:             var_CC.Tag = CStr(var_DC)
  loc_18166E5:             Set var_A4 = Me.Txt
  loc_18166EB:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_A8)
  loc_18166F3:             var_A8.Tag = vbNullString
  loc_181670C:             Set var_A4 = Me.Txt
  loc_1816712:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_A8)
  loc_181671A:             var_A8.Enabled = True
  loc_1816726:           End If
  loc_1816726:         End If
  loc_181673D:         If ((global_132 = "PBC") Or (global_132 = "EXC")) Then
  loc_181674A:           Set global_80 = New 
  loc_181675C:           Me.Recordset15.CursorLocation = 3
  loc_1816768:           var_B0 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_181676F:           var_F0 = var_B0 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.LogSite_Code=V.LogSite_Code) "
  loc_1816792:           var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F95078 & "' and V.Site_Code='" & MemVar_1F95070 & "' and V.Ncat in ('MRE') and M.Partycode='"
  loc_18167A9:           Call 0.Method_Txt_Validate0 (CInt(4), var_A8, var_1B8)
  loc_18167B1:           var_1BC = var_A8.Tag
  loc_18167C1:           var_8C = var_B0 & var_1B8 & "'    Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.AccQty,0)) > 0 "
  loc_18167F6:           unk_59BA49.Execute var_8C, var_DC, -1
  loc_1816807:           Set global_80 = Me.Txt
  loc_181681E:           CVarUnk
  loc_1816823:           VerifyVarObj
  loc_1816829:           Set var_A4 = Me.DgMR
  loc_181682F:           LateIdStAd
  loc_181683D:         End If
  loc_1816840:       Else
  loc_1816848:         If (var_A0 = CInt(4)) Then
  loc_181685C:           Call 0.Method_Txt_Validate0 (CInt(4), var_A8, Me.Txt)
  loc_1816864:           var_B0 = "Party Name"
  loc_1816885:           If (Proc_6_27_EA61EC(var_A8, var_B0) = 0) Then
  loc_1816893:             Set var_A4 = Me.Txt
  loc_1816899:             Call 0.Method_Txt_Validate0 (CInt(4), var_A8)
  loc_18168A1:             var_A8.SetFocus
  loc_18168AF:             arg_10 = &HFF
  loc_18168B2:             Exit Sub
  loc_18168B3:           End If
  loc_1816901:           Set var_A4 = Me.Txt
  loc_1816907:           Call 0.Method_Txt_Validate0 (Cancel, var_A8, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_181690F:           arg_10 = var_A8.Text
  loc_1816927:           If (global_80 Or (var_B0 = vbNullString)) Then
  loc_1816937:             Set var_A4 = Me.Txt
  loc_181693D:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1816945:             var_A8.Text = vbNullString
  loc_181695E:             Set var_A4 = Me.Txt
  loc_1816964:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_181696C:             var_A8.Tag = vbNullString
  loc_181697B:           Else
  loc_18169B6:             Set var_AC = Me.Txt
  loc_18169BC:             Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_18169C4:             var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1816A15:             Set var_AC = Me.Txt
  loc_1816A1B:             Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_1816A23:             var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1816A75:             Set var_AC = Me.Txt
  loc_1816A7B:             Call 0.Method_Txt_Validate0 (CInt(8), var_CC)
  loc_1816A83:             var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1816AB3:             var_A8 = Me.Fields.Item("TINNo")
  loc_1816ABB:             var_DC = CVar(var_A8) 'Address
  loc_1816AD2:             Set var_AC = Me.Txt
  loc_1816AD8:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_CC)
  loc_1816AE0:             var_CC.Text = Proc_6_38_E69628(var_DC)
  loc_1816B01:             Set var_A4 = Me.Txt
  loc_1816B07:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_A8)
  loc_1816B0F:             var_A8.Enabled = False
  loc_1816B1B:           End If
  loc_1816B32:           If ((global_132 = "PBR") Or (global_132 = "EXR")) Then
  loc_1816B3C:             var_B0 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_1816B43:             var_F0 = var_B0 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.LogSite_Code=V.LogSite_Code) "
  loc_1816B66:             var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F95078 & "' and V.Site_Code='" & MemVar_1F95070 & "' and V.Ncat in ('MRE') and M.Partycode='"
  loc_1816B77:             Set var_A4 = Me.Txt
  loc_1816B7D:             Call 0.Method_Txt_Validate0 (CInt(4), var_A8, var_1B8)
  loc_1816B85:             var_1BC = var_A8.Tag
  loc_1816B95:             var_8C = var_A4 & var_1B8 & "'  Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.recdQty,0)) > 0 "
  loc_1816BCA:             unk_59BA49.Execute var_8C, var_DC, -1
  loc_1816BDB:             Set global_80 = var_A4
  loc_1816BF2:             CVarUnk
  loc_1816BF7:             VerifyVarObj
  loc_1816BFD:             Set var_A4 = Me.DgMR
  loc_1816C03:             LateIdStAd
  loc_1816C11:           End If
  loc_1816C14:         Else
  loc_1816C1C:           If (var_A0 = CInt(7)) Then
  loc_1816C23:             Set var_9C = New 
  loc_1816C2E:             Me.Recordset15.CursorLocation = 3
  loc_1816C4A:             If ((global_132 = "PBR") Or (global_132 = "EXR")) Then
  loc_1816C54:               var_B0 = "Select Max(S.DocId) as DocID,Max(S.Item) as Item,Max(S.RecdUnit) as RecdUnit,max(S.Unit) as Unit,Max(I.ConvRatio) as ConvRatio,Max(S.AccQty) - Sum(isnull(P2.RecdQty,0)) as RecdQty,Max(S.Rate) AS Rate,Max(S.ItemRate) AS ItemRate,Max(S.SNo) as SNo,Max(I.RateEdit) as RateEdit,Max(I.SChrgApp) as SChrgApp,Max(S.GodownCode) as GodownCode,Max(S.RoomNo) as RoomNo,Max(G.Name) as GodName,Max(I.NAME) AS ITEMNAME,Max(DispCode) as DispCode,Max(IC.RoundOff) as ROff,Max(IC.Code) as TaxCode,Max(I.DiscApp) as IDiscApp,Max(IC.taxStru) as taxStru,Max(I.Kitchen) as Kitchen,Max(D.Code) as DepartCode,Max(D.ShortName) as DepartName,Max(MemInvNo)as MemInvNo,Max(MemInvDate) as MemInvDate " & "From (((((((Stock S Left Join Purch2 P2 on (S.Docid = P2.ContraDocid and S.Sno = P2.ContraSno)) "
  loc_1816C5B:               var_F0 = var_B0 & "Left Join SubGroup SG on S.PartyCode=SG.SubCode)Left Join Voucher_Type V on (S.Vtype=V.V_Type and S.LogSite_Code=V.LogSite_Code)) LEFT JOIN ITEMMAST I ON S.ITEM=I.CODE And I.ItemType='Store')Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode)Left join GodownMast G on G.Code=S.GodownCode)Left Join GIN N On N.DocId=S.DocId "
  loc_1816C7E:               var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F95078 & "' and V.Site_Code='" & MemVar_1F95070 & "' and S.DocID='"
  loc_1816C8F:               Set var_A4 = Me.Txt
  loc_1816C95:               Call 0.Method_Txt_Validate0 (CInt(7), var_A8, var_1B8, var_1BC)
  loc_1816C9D:               var_A4 = var_A8.Tag
  loc_1816CAD:               var_8C = global_80 & var_1B8 & "' Group By S.Docid,S.Sno Having Max(S.AccQty) - Sum(isnull(P2.RecdQty,0)) > 0 "
  loc_1816CCF:             Else
  loc_1816CD6:               var_B0 = "Select Max(S.DocId) as DocID,Max(S.Item) as Item,Max(S.RecdUnit) as RecdUnit,max(S.Unit) as Unit,Max(I.ConvRatio) as ConvRatio,Max(S.AccQty) - Sum(isnull(P2.recdQty,0)) as RecdQty,Max(S.Rate) AS Rate,Max(S.ItemRate) AS ItemRate,Max(S.SNo) as SNo,Max(I.RateEdit) as RateEdit,Max(I.SChrgApp) as SChrgApp,Max(S.GodownCode) as GodownCode,Max(S.RoomNo) as RoomNo,Max(G.Name) as GodName,Max(I.NAME) AS ITEMNAME,Max(DispCode) as DispCode,Max(IC.RoundOff) as ROff,Max(IC.Code) as TaxCode,Max(I.DiscApp) as IDiscApp,Max(IC.taxStru) as taxStru,Max(I.Kitchen) as Kitchen,Max(D.Code) as DepartCode,Max(D.ShortName) as DepartName,Max(MemInvNo)as MemInvNo,Max(MemInvDate) as MemInvDate " & "From (((((((Stock S Left Join Purch2 P2 on (S.Docid = P2.ContraDocid and S.Sno = P2.ContraSno)) "
  loc_1816CDD:               var_F0 = var_B0 & "Left Join SubGroup SG on S.PartyCode=SG.SubCode)Left Join Voucher_Type V on (S.Vtype=V.V_Type and S.LogSite_Code=V.LogSite_Code)) LEFT JOIN ITEMMAST I ON S.ITEM=I.CODE And I.ItemType='Store')Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode)Left join GodownMast G on G.Code=S.GodownCode)Left Join GIN N On N.DocId=S.DocId "
  loc_1816D00:               var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F95078 & "' and V.Site_Code='" & MemVar_1F95070 & "' and S.DocID='"
  loc_1816D17:               Call 0.Method_Txt_Validate0 (CInt(7), var_A8, var_1B8)
  loc_1816D1F:               var_1BC = var_A8.Tag
  loc_1816D2F:               var_8C = Me.Txt & var_1B8 & "' Group By S.Docid,S.Sno Having Max(S.AccQty) - Sum(isnull(P2.QtyRec,0)) > 0 "
  loc_1816D4E:             End If
  loc_1816D56:             If (var_8C <> vbNullString) Then
  loc_1816D7A:               var_9C.Open CVar(var_8C), CVar(MemVar_1F95044), 2
  loc_1816D93:               If (var_9C.RecordCount > 0) Then
  loc_1816DA5:                 Me.FGrid.Redraw = False
  loc_1816DC7:                 var_8E = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1816DD0:                 ' Referenced from:           1817CA3
  loc_1816DDF:                 If Not(var_9C.EOF) Then
  loc_1816E07:                   For var_1C4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):           var_9E = var_1C4 'Integer
  loc_1816E11:                     var_C8 = CVar(CLng(var_9E)) 'Long
  loc_1816E19:                     var_120 = CVar(CLng(&HE)) 'Long
  loc_1816E33:                     var_130 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1816E59:                     var_EC = var_9C.Fields.Item("DocID").Value
  loc_1816E69:                     var_1E4 = CVar(CLng(var_9E)) 'Long
  loc_1816E7A:                     Set var_CC = Me.FGrid
  loc_1816EE1:                     If CBool(CVar(CLng(&HD)) And (CVar(CStr(var_CC.TextMatrix))) = var_9C.Fields.Item("SNo").Value)) Then
  loc_1816EE6:                       var_98 = &HFF
  loc_1816EE9:                     End If
  loc_1816EEC:                   Next var_1C4 'Integer
  loc_1816EF7:                   If (var_98 = &HFF) Then
  loc_1816EFC:                     var_98 = 0
  loc_1816F02:                   Else
  loc_1816F02:                     var_C8 = vbNullString
  loc_1816F0C:                     Set var_A4 = Me.FGrid
  loc_1816F20:                     var_C8 = "MemInvNo"
  loc_1816F62:                     Set var_AC = Me.Txt
  loc_1816F68:                     Call 0.Method_Txt_Validate0 (CInt(5), var_CC, CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item(var_C8)), FGrid.DispID_10000)))))
  loc_1816F70:                     var_CC.Text = var_C8
  loc_1816FC0:                     Set var_AC = Me.Txt
  loc_1816FC6:                     Call 0.Method_Txt_Validate0 (CInt(6), var_CC)
  loc_1816FCE:                     var_CC.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("MemInvDate")))
  loc_1816FE6:                     Set var_22C = Me.FGrid
  loc_1816FED:                     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1816FF5:                     var_120 = CVar(CLng(0)) 'Long
  loc_1816FFF:                     var_DC = CVar(CStr(var_8E)) 'String
  loc_1817006:                     LateIdCallSt
  loc_1817015:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_181701D:                     var_140 = CVar(CLng(&HC)) 'Long
  loc_1817051:                     var_130 = CVar(CStr(Trim(CVar(var_9C.Fields.Item("Item"))))) 'String
  loc_1817058:                     LateIdCallSt
  loc_1817070:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1817078:                     var_140 = CVar(CLng(1)) 'Long
  loc_18170A8:                     var_EC = CVar(CStr(var_9C.Fields.Item("DispCode").Value)) 'String
  loc_18170AF:                     LateIdCallSt
  loc_18170C9:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_18170D1:                     var_140 = CVar(CLng(2)) 'Long
  loc_1817101:                     var_EC = CVar(CStr(var_9C.Fields.Item("ItemName").Value)) 'String
  loc_1817108:                     LateIdCallSt
  loc_1817122:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_181712A:                     var_140 = CVar(CLng(4)) 'Long
  loc_181715A:                     var_EC = CVar(CStr(var_9C.Fields.Item("RecdUnit").Value)) 'String
  loc_1817161:                     LateIdCallSt
  loc_181717B:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1817183:                     var_140 = CVar(CLng(8)) 'Long
  loc_18171B3:                     var_EC = CVar(CStr(var_9C.Fields.Item("Unit").Value)) 'String
  loc_18171BA:                     LateIdCallSt
  loc_18171F0:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_18171F8:                     var_1D4 = CVar(CLng(5)) 'Long
  loc_1817225:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("RecdQty")), "0.000"))) 'String
  loc_181722C:                     LateIdCallSt
  loc_1817262:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_181726A:                     var_1D4 = CVar(CLng(&H22)) 'Long
  loc_1817297:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("RecdQty")), "0.000"))) 'String
  loc_181729E:                     LateIdCallSt
  loc_18172D4:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_18172DC:                     var_1D4 = CVar(CLng(9)) 'Long
  loc_1817309:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("Rate")), "0.00000"))) 'String
  loc_1817310:                     LateIdCallSt
  loc_1817346:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_181734E:                     var_1D4 = CVar(CLng(&HA)) 'Long
  loc_181737B:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("ItemRate")), "0.00000"))) 'String
  loc_1817382:                     LateIdCallSt
  loc_18173D1:                     var_AC = var_9C.Fields
  loc_18173D9:                     var_CC = var_AC.Item("Rate")
  loc_18173EA:                     var_140 = CVar(CLng(var_8E)) 'Long
  loc_18173F2:                     var_1E4 = CVar(CLng(&HB)) 'Long
  loc_1817429:                     var_180 = CVar(CStr(Format((var_9C.Fields.Item("RecdQty").Value * var_CC.Value), "0.00"))) 'String
  loc_1817430:                     LateIdCallSt
  loc_1817472:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_181747A:                     var_140 = CVar(CLng(3)) 'Long
  loc_18174A1:                     var_130 = CVar(CStr(Val(CStr(Right(CVar(var_9C.Fields.Item("DocID")), 8))))) 'String
  loc_18174A8:                     LateIdCallSt
  loc_18174C3:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_18174CB:                     var_140 = CVar(CLng(&HE)) 'Long
  loc_18174FB:                     var_EC = CVar(CStr(var_9C.Fields.Item("DocID").Value)) 'String
  loc_1817502:                     LateIdCallSt
  loc_181751C:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1817524:                     var_140 = CVar(CLng(&HD)) 'Long
  loc_1817554:                     var_EC = CVar(CStr(var_9C.Fields.Item("SNo").Value)) 'String
  loc_181755B:                     LateIdCallSt
  loc_18175AA:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_8E)), var_22C, var_EC, CVar(CLng(&H1D)), CVar(CLng(var_8E)))) 'String
  loc_18175B1:                     LateIdCallSt
  loc_18175FC:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_22C, var_EC, var_22C)) 'String
  loc_1817603:                     LateIdCallSt
  loc_181764E:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Roff")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_1817655:                     LateIdCallSt
  loc_18176A0:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_18176A7:                     LateIdCallSt
  loc_18176C5:                     var_140 = CVar(CLng(&H1F)) 'Long
  loc_18176F2:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("SChrgApp")), var_140, CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_18176F9:                     LateIdCallSt
  loc_1817743:                     var_B0 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_EC, -1, var_AC, var_22C)
  loc_1817757:                     unk_59BA49.Execute var_EC & CStr(Right(CVar(var_9C.Fields.Item("DocID")), 8)) & "'", var_EC, var_140
  loc_1817762:                     Set var_94 = var_AC
  loc_1817790:                     If (var_94.RecordCount > 0) Then
  loc_18177CA:                       Proc_6_39_E7D3A0(var_EC, CVar(var_94.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(var_8E)))
  loc_18177D3:                       var_130 = CVar(CStr(var_EC)) 'String
  loc_18177DB:                       Set var_AC = Me.FGrid
  loc_18177E1:                       LateIdCallSt
  loc_18177FD:                       var_110 = CVar(CLng(var_8E)) 'Long
  loc_1817832:                       var_EC = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("Name")), CVar(CLng(&H19)), var_110, var_AC)) 'String
  loc_1817839:                       LateIdCallSt
  loc_181784B:                     End If
  loc_1817883:                     var_B0 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("TaxCode")), "Select IM.AcName As SaleAcCode,SG.Name As SaleAcName from ItemCatMast IM inner join Subgroup SG On IM.AcName=SG.SubCode where IM.Code='", var_EC, -1, var_AC, var_22C)
  loc_1817897:                     unk_59BA49.Execute var_EC & CStr(Right(CVar(var_9C.Fields.Item("DocID")), 8)) & "'", var_130, var_110
  loc_18178A2:                     Set var_94 = var_AC
  loc_18178D0:                     If (var_94.RecordCount > 0) Then
  loc_18178D7:                       var_110 = CVar(CLng(var_8E)) 'Long
  loc_181790A:                       Proc_6_39_E7D3A0(var_EC, CVar(var_94.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)))
  loc_1817913:                       var_130 = CVar(CStr(var_EC)) 'String
  loc_181791A:                       LateIdCallSt
  loc_1817967:                       var_EC = CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_8E)), var_22C)) 'String
  loc_181796E:                       LateIdCallSt
  loc_1817980:                     End If
  loc_18179B9:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Godowncode")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_18179C0:                     LateIdCallSt
  loc_18179D6:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1817A0B:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("RoomNo")), CVar(CLng(&H18)), var_110, var_22C, var_EC)) 'String
  loc_1817A12:                     LateIdCallSt
  loc_1817A5A:                     Set var_AC = Me.Txt
  loc_1817A60:                     Call 0.Method_Txt_Validate0 (CInt(7), var_CC, Proc_6_38_E69628(CVar(var_9C.Fields.Item("RoomNo")), var_22C, var_EC, var_130))
  loc_1817A68:                     var_CC.Tag = var_110
  loc_1817AB5:                     var_EC = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("GodName")), CVar(CLng(&H16)), CVar(CLng(var_8E)))) 'String
  loc_1817ABC:                     LateIdCallSt
  loc_1817AEE:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_1817AF6:                     var_1D4 = CVar(CLng(6)) 'Long
  loc_1817B23:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("ConvRatio")), "0.000"))) 'String
  loc_1817B2A:                     LateIdCallSt
  loc_1817B5A:                     var_A8 = var_9C.Fields.Item("RecdQty")
  loc_1817B9D:                     var_1B4 = var_9C.Fields
  loc_1817BB6:                     var_B6 = IsNull(CVar(var_1B4.Item("ConvRatio")))
  loc_1817BF5:                     var_150 = (var_9C.Fields.Item("ConvRatio").Value = 0) Or var_B6
  loc_1817C0C:                     var_214 = CVar(CLng(var_8E)) 'Long
  loc_1817C14:                     var_274 = CVar(CLng(7)) 'Long
  loc_1817C4B:                     var_294 = CVar(CStr(Format((var_A8.Value * IIf(var_150, 1, CVar(var_9C.Fields.Item("ConvRatio")))), "0.000"))) 'String
  loc_1817C52:                     LateIdCallSt
  loc_1817C86:                     Set var_22C = Nothing 
  loc_1817C90:                     var_8E = (var_8E + 1)
  loc_1817C93:                   End If
  loc_1817C96:                   var_9C.MoveNext
  loc_1817C9F:                   var_96 = CByte(0) 'Byte
  loc_1817CA3:                   GoTo loc_1816DD0
  loc_1817CA6:                 End If
  loc_1817CB9:                 Me.FGrid.FixedRows = 1
  loc_1817CC1:               End If
  loc_1817CC4:             Else
  loc_1817CD1:               Set var_A4 = Me.Txt
  loc_1817CD7:               Call 0.Method_Txt_Validate0 (Cancel, var_A8, vbNullString, var_8E, var_22C, var_294, 1)
  loc_1817CDF:               var_A8.Text = 1
  loc_1817CEB:             End If
  loc_1817CF9:             Me.FGrid.Redraw = True
  loc_1817D07:             If (var_8E = 1) Then
  loc_1817D1D:               Me.FGrid.Rows = 1
  loc_1817D43:               var_DC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_274, var_214))) 'String
  loc_1817D4B:               Set var_A8 = Me.FGrid
  loc_1817D78:               Me.FGrid.FixedRows = 1
  loc_1817D80:             End If
  loc_1817D86:             Call Proc_32_103_17C4004(Cancel, FGrid.DispID_10000, var_DC, var_B6)
  loc_1817D8E:           Else
  loc_1817D96:             If (var_A0 = CInt(6)) Then
  loc_1817DA3:               Set var_A4 = Me.Txt
  loc_1817DA9:               Call 0.Method_Txt_Validate0 (Cancel, var_A8, var_22C)
  loc_1817DC9:               Set var_CC = Me.Txt
  loc_1817DCF:               Call 0.Method_Txt_Validate0 (Cancel, var_1B4)
  loc_1817DD7:               var_1B4.Text = Proc_6_33_15125B8(var_A8, var_150)
  loc_1817DEA:             End If
  loc_1817DEA:           End If
  loc_1817DEA:         End If
  loc_1817DEA:       End If
  loc_1817DEA:     End If
  loc_1817DEA:   End If
  loc_1817DEA: End If
  loc_1817DFC: Me.FGrid.Col = CVar(CLng(2))
  loc_1817E09: Set var_94 = Nothing
  loc_1817E11: Set var_88 = Nothing
  loc_1817E14: Exit Sub
  loc_1817E15: ' Referenced from: 1815A94
  loc_1817E15: Proc_6_60_E63754(1)
  loc_1817E1A: Exit Sub
End Sub

Private Sub Command1_Click() 'E956A0
  'Data Table: 59BA2C
  loc_E95630: Call TopCtrl1_UnknownEvent_D()
  loc_E95635: Call TopCtrl1_UnknownEvent_16()
  loc_E9563E: Set var_88 = Me.TopCtrl1
  loc_E95644: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030011()
  loc_E95656: If (CBool() = &HFF) Then
  loc_E95659:   Call TopCtrl1_UnknownEvent_12()
  loc_E9565E:   Call Command1_Click()
  loc_E95666: Else
  loc_E9566C:   Call 0.Method_arg_50 (var_9C)
  loc_E9568D:   MsgBox("Updation Completed.", &H40, CVar(var_9C), var_DC, var_FC)
  loc_E9569D:   Exit Sub
  loc_E9569E: End If
  loc_E9569E: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF8390
  'Data Table: 59BA2C
  Dim FGPoint_UnknownEvent_900 As Variant
  loc_EF82D0: If (CBool(Me.DgMR.Visible) = &HFF) Then
  loc_EF82D3:   Call DgMR_UnknownEvent_9()
  loc_EF82D8: End If
  loc_EF82F4: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF82F7:   Call DGItem_UnknownEvent_9()
  loc_EF82FC: End If
  loc_EF8318: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_EF831B:   Call DGParty_UnknownEvent_9()
  loc_EF8320: End If
  loc_EF833C: If (CBool(Me.DGPartyBillNo.Visible) = &HFF) Then
  loc_EF833F:   Call DGPartyBillNo_UnknownEvent_9()
  loc_EF8344: End If
  loc_EF8360: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EF8363:   Call DGVType_UnknownEvent_9()
  loc_EF8368: End If
  loc_EF8384: If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_EF8387:   Call DGGod_UnknownEvent_9()
  loc_EF838C: End If
  loc_EF838C: Exit Sub
  loc_EF838D: FGPoint_UnknownEvent_900 = 
End Sub

Private Sub DgMR_UnknownEvent_9 'F5AC58
  'Data Table: 59BA2C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5AB38: On Error Goto loc_F5AC52
  loc_F5AB4A: Me.DgMR.Visible = False
  loc_F5AB69: If (Me.RecordCount > 0) Then
  loc_F5ABA8:   Set var_B4 = Me.Txt
  loc_F5ABAE:   Call 0.Method_DgMR_UnknownEvent_90 (CInt(7), var_B8)
  loc_F5ABB6:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5ABE9:   var_B0 = Me.Fields.Item("Code")
  loc_F5AC08:   Set var_B4 = Me.Txt
  loc_F5AC0E:   Call 0.Method_DgMR_UnknownEvent_90 (CInt(7), var_B8)
  loc_F5AC16:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5AC2C: End If
  loc_F5AC37: Set var_A8 = Me.Txt
  loc_F5AC3D: Call 0.Method_DgMR_UnknownEvent_90 (CInt(7))
  loc_F5AC45: var_B0.SetFocus
  loc_F5AC51: Exit Sub
  loc_F5AC52: ' Referenced from: F5AB38
  loc_F5AC52: Proc_6_60_E63754(var_B0)
  loc_F5AC57: Exit Sub
End Sub

Private Sub DgMR_UnknownEvent_1F 'EA2260
  'Data Table: 59BA2C
  Dim var_A8 As Variant
  loc_EA21E0: Set var_88 = Me.DgMR
  loc_EA220A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2212: Set var_BC = Me.DgMR
  loc_EA224E: Proc_6_138_106E830(Me.DgMR, global_80, CInt(7), Me.FGPoint)
  loc_EA225C: Exit Sub
End Sub

Private Sub DGGod_UnknownEvent_9 'FEC358
  'Data Table: 59BA2C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FEC17C: On Error Goto loc_FEC351
  loc_FEC18E: Me.DGGod.Visible = False
  loc_FEC1AD: If (Me.RecordCount > 0) Then
  loc_FEC1EA:   Set var_B4 = Me.TxtGrid
  loc_FEC1F0:   Call 0.Method_DGGod_UnknownEvent_90 (0, var_B8)
  loc_FEC1F8:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FEC221:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEC229:   var_EC = CVar(CLng(&H16)) 'Long
  loc_FEC25C:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FEC264:   Set var_B8 = Me.FGrid
  loc_FEC26A:   LateIdCallSt
  loc_FEC299:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEC2A1:   var_EC = CVar(CLng(&H17)) 'Long
  loc_FEC2C3:   var_B0 = Me.Fields.Item("Code")
  loc_FEC2D4:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FEC2DC:   Set var_B8 = Me.FGrid
  loc_FEC2E2:   LateIdCallSt
  loc_FEC2FE: End If
  loc_FEC30A: Set var_A8 = Me.TxtGrid
  loc_FEC310: Call 0.Method_DGGod_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FEC318: var_A4 = var_B0.Visible
  loc_FEC32A: If (var_12E = &HFF) Then
  loc_FEC336:   Set var_A8 = Me.TxtGrid
  loc_FEC33C:   Call 0.Method_DGGod_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FEC344:   var_B0.SetFocus
  loc_FEC350: End If
  loc_FEC350: Exit Sub
  loc_FEC351: ' Referenced from: FEC17C
  loc_FEC351: Proc_6_60_E63754(var_11C, var_EC)
  loc_FEC356: Exit Sub
End Sub

Private Sub DGGod_UnknownEvent_1F 'E9F8E0
  'Data Table: 59BA2C
  Dim var_A8 As Variant
  loc_E9F864: Set var_88 = Me.DGGod
  loc_E9F88E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9F896: Set var_BC = Me.DGGod
  loc_E9F8D0: Proc_6_138_106E830(Me.DGGod, global_88, 0, Me.FGPoint)
  loc_E9F8DE: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '14FF4C8
  'Data Table: 59BA2C
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
  Dim unk_59BA49 As Connection15
  loc_14FE64E: Set var_88 = Me.TxtGrid
  loc_14FE654: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_14FE662: Proc_6_74_E23240(var_8C)
  loc_14FE66E: Call Proc_32_96_FE19D4(var_8C)
  loc_14FE681: Set var_88 = Me.TxtGrid
  loc_14FE687: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FE68F: var_8C.MaxLength = 0
  loc_14FE6A7: If (Index = 0) Then
  loc_14FE6BD:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FE6C6:   Set var_8C = Me.FGrid
  loc_14FE6FC:   Set var_108 = Me.TxtGrid
  loc_14FE702:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_14FE70A:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_14FE73B:   var_114 = CLng(Me.FGrid.Col)
  loc_14FE74B:   If (var_114 = CLng(1)) Then
  loc_14FE75C:     Set var_88 = Me.TxtGrid
  loc_14FE762:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 4)
  loc_14FE76A:     var_8C.MaxLength = var_114
  loc_14FE779:   Else
  loc_14FE780:     If (var_114 = CLng(2)) Then
  loc_14FE78F:       Set var_88 = Me.TxtGrid
  loc_14FE795:       Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118)
  loc_14FE79D:       var_C4 = var_8C.Left
  loc_14FE7B4:       Me.DGItem.Left = CVar(var_118)
  loc_14FE7CE:       Set var_90 = Me.TxtGrid
  loc_14FE7D4:       Call 0.Method_TxtGrid_GotFocus0 (0, var_108)
  loc_14FE7DC:       var_11C = var_108.Height
  loc_14FE7ED:       Set var_88 = Me.TxtGrid
  loc_14FE7F3:       Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FE807:       var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FE810:       Set var_10C = Me.DGItem
  loc_14FE816:       var_10C.Top = CVar(var_8C.Top)
  loc_14FE83F:       If (Me.RecordCount > 0) Then
  loc_14FE84D:         Set var_8C = Me.FGPoint
  loc_14FE865:         Proc_6_137_1192FDC(Me.DGItem, global_64, Index)
  loc_14FE873:       End If
  loc_14FE87C:       var_118 = Me.RecordCount
  loc_14FE893:       var_11E = Me.EOF
  loc_14FE8A7:       var_120 = Me.BOF
  loc_14FE8C7:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FE903:       If (CVar(CLng(&HC)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_14FE906:         Exit Sub
  loc_14FE907:       End If
  loc_14FE90D:       Me.MoveFirst
  loc_14FE925:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FE92D:       var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FE971:       Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_14FE9A0:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FE9A8:       var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FE9B1:       Set var_8C = Me.FGrid
  loc_14FE9B7:       var_B4 = var_8C.TextMatrix)
  loc_14FE9C8:       var_148 = Trim(CVar(CStr(var_B4)))
  loc_14FE9D1:       var_110 = CStr(var_148)
  loc_14FE9D7:       global_176 = var_110
  loc_14FE9F9:       var_11E = Me.EOF
  loc_14FEA04:       If (var_11E = &HFF) Then
  loc_14FEA0D:         Me.MoveFirst
  loc_14FEA12:       End If
  loc_14FEA15:     Else
  loc_14FEA1C:       If (var_114 = CLng(9)) Then
  loc_14FEA2E:         Set var_88 = Me.TxtGrid
  loc_14FEA34:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_E4, var_C4, var_138, var_B4)
  loc_14FEA3C:         var_8C.MaxLength = var_E4
  loc_14FEA51:         If (global_154 = 0) Then
  loc_14FEA63:           Set var_88 = Me.TxtGrid
  loc_14FEA69:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_C4)
  loc_14FEA71:           var_8C.SelStart = var_C4
  loc_14FEA8A:           Set var_88 = Me.TxtGrid
  loc_14FEA90:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110)
  loc_14FEA98:           ((var_118 = 0) Or ((var_11E = &HFF) Or (var_120 = &HFF))) = var_8C.Text
  loc_14FEAAB:           Set var_90 = Me.TxtGrid
  loc_14FEAB1:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, Len(var_110))
  loc_14FEAB9:           var_108.SelLength = var_8C
  loc_14FEACC:         End If
  loc_14FEACF:       Else
  loc_14FEAD6:         If (var_114 = CLng(&HB)) Then
  loc_14FEAE8:           Set var_88 = Me.TxtGrid
  loc_14FEAEE:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_14FEAF6:           var_8C.MaxLength = 0
  loc_14FEB0B:           If (global_154 = 0) Then
  loc_14FEB1D:             Set var_88 = Me.TxtGrid
  loc_14FEB23:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_14FEB2B:             var_8C.SelStart = 0
  loc_14FEB44:             Set var_88 = Me.TxtGrid
  loc_14FEB4A:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_14FEB65:             Set var_90 = Me.TxtGrid
  loc_14FEB6B:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_14FEB73:             var_108.SelLength = Len(var_8C.Text)
  loc_14FEB86:           End If
  loc_14FEB89:         Else
  loc_14FEB90:           If (var_114 = CLng(&H16)) Then
  loc_14FEB9D:             var_A4 = Me.DGGod.Width
  loc_14FEBB2:             Set var_108 = Me.TxtGrid
  loc_14FEBB8:             Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, var_11C)
  loc_14FEBD1:             Set var_88 = Me.TxtGrid
  loc_14FEBD7:             Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FEBF1:             var_C4 = CVar((var_8C.Left - (CDbl(var_10C.Width) - var_11C))) 'Single
  loc_14FEC00:             Me.DGGod.Left = var_C4
  loc_14FEC23:             Set var_90 = Me.TxtGrid
  loc_14FEC29:             Call 0.Method_TxtGrid_GotFocus0 (0, var_108)
  loc_14FEC31:             var_11C = var_108.Height
  loc_14FEC42:             Set var_88 = Me.TxtGrid
  loc_14FEC48:             Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FEC5C:             var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FEC65:             Set var_10C = Me.DGGod
  loc_14FEC6B:             var_10C.Top = var_C4
  loc_14FEC90:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FEC98:             var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FECB8:             global_176 = CStr(Me.FGrid.TextMatrix))
  loc_14FECE4:             If (Me.RecordCount > 0) Then
  loc_14FED0A:               Proc_6_137_1192FDC(Me.DGGod, global_88, Index, Me.FGPoint)
  loc_14FED18:             End If
  loc_14FED21:             var_118 = Me.RecordCount
  loc_14FED59:             If ((var_118 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_14FED5C:               Exit Sub
  loc_14FED5D:             End If
  loc_14FED70:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FED78:             var_E4 = CVar(CLng(&H16)) 'Long
  loc_14FEDAB:             If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_14FEDB4:               Me.MoveFirst
  loc_14FEDDD:               Set var_8C = Me.FGrid
  loc_14FEDF4:               Proc_6_17_EAAE40(var_148, CVar(CStr(var_8C.TextMatrix))), CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H17)))
  loc_14FEE1D:               Me.Find CStr("Code =" & var_148), 0, 1
  loc_14FEE4D:               If (Me.EOF = &HFF) Then
  loc_14FEE56:                 Me.MoveFirst
  loc_14FEE5B:               End If
  loc_14FEE5B:             End If
  loc_14FEE5E:           Else
  loc_14FEE65:             If (var_114 = CLng(&H19)) Then
  loc_14FEE72:               var_A4 = Me.DGTaxStru.Width
  loc_14FEE87:               Set var_108 = Me.TxtGrid
  loc_14FEE8D:               Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, var_11C, var_A4, var_16C)
  loc_14FEE95:               var_C4 = var_10C.Width
  loc_14FEEA6:               Set var_88 = Me.TxtGrid
  loc_14FEEAC:               Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118)
  loc_14FEEB4:               var_E4 = var_8C.Left
  loc_14FEEC6:               var_C4 = CVar((var_118 - (CDbl(var_A4) - var_11C))) 'Single
  loc_14FEED5:               Me.DGTaxStru.Left = var_C4
  loc_14FEEF8:               Set var_90 = Me.TxtGrid
  loc_14FEEFE:               Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_11C)
  loc_14FEF06:               var_C4 = var_108.Height
  loc_14FEF17:               Set var_88 = Me.TxtGrid
  loc_14FEF1D:               Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FEF31:               var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FEF3A:               Set var_10C = Me.DGTaxStru
  loc_14FEF40:               var_10C.Top = var_C4
  loc_14FEF56:               Set var_88 = Me.FGrid
  loc_14FEF5C:               var_A4 = var_88.Row
  loc_14FEF65:               var_C4 = CVar(CLng(var_A4)) 'Long
  loc_14FEF6D:               var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FEF8D:               global_176 = CStr(Me.FGrid.TextMatrix))
  loc_14FEFB6:               var_110 = "SELECT Distinct TaxStru.Code as Code, TaxStru.Name as name FROM TaxStru INNER JOIN ItemCatMast ON TaxStru.Code = ItemCatMast.TaxStru where (TaxStru.LOGSITE_CODE='" & MemVar_1F95078
  loc_14FEFBD:               var_124 = var_110 & "' or TaxStru.LOGSITE_CODE='HO') And IsNull(ItemCatMast.TaxstruType,'')='Registered' And ItemCatMast.RestCode='"
  loc_14FEFD4:               unk_59BA49.Execute var_124 & MemVar_1F95078 & "PURC' order by taxstru.name ", var_A4, -1
  loc_14FEFE5:               Set global_224 = var_88
  loc_14FF00A:               CVarUnk
  loc_14FF00F:               VerifyVarObj
  loc_14FF015:               Set var_88 = Me.DGTaxStru
  loc_14FF01B:               LateIdStAd
  loc_14FF043:               If (Me.DGTaxStru.RecordCount > 0) Then
  loc_14FF06D:                 Proc_6_137_1192FDC(Me.DGTaxStru, global_224, Index, Me.FGPoint, Me.DGTaxStru)
  loc_14FF07B:               End If
  loc_14FF087:               var_118 = global_224.RecordCount
  loc_14FF0C5:               If ((var_118 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Then
  loc_14FF0C8:                 Exit Sub
  loc_14FF0C9:               End If
  loc_14FF0DC:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FF0E4:               var_E4 = CVar(CLng(&H1A)) 'Long
  loc_14FF0F3:               var_B4 = Me.FGrid.TextMatrix)
  loc_14FF117:               If (CStr(var_B4) <> vbNullString) Then
  loc_14FF123:                 Me.var_B4.MoveFirst
  loc_14FF14C:                 Set var_8C = Me.FGrid
  loc_14FF152:                 var_B4 = var_8C.TextMatrix)
  loc_14FF163:                 Proc_6_17_EAAE40(var_148, CVar(CStr(var_B4)), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)))
  loc_14FF18F:                 Me.var_B4.Find CStr("Code =" & var_148), 0, 1
  loc_14FF1C2:                 If (Me.Recordset15.EOF = &HFF) Then
  loc_14FF1CE:                   Me.Recordset15.MoveFirst
  loc_14FF1D3:                 End If
  loc_14FF1D3:               End If
  loc_14FF1D6:             Else
  loc_14FF1DD:               If (var_114 = CLng(&H1B)) Then
  loc_14FF1EA:                 var_A4 = Me.DGSaleAc.Width
  loc_14FF1FF:                 Set var_108 = Me.TxtGrid
  loc_14FF205:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, var_11C, var_A4, var_16C)
  loc_14FF20D:                 global_224 = var_10C.Width
  loc_14FF224:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118, Me.TxtGrid)
  loc_14FF22C:                 var_E4 = var_8C.Left
  loc_14FF23E:                 var_C4 = CVar((var_118 - (CDbl(var_A4) - var_11C))) 'Single
  loc_14FF24D:                 Me.DGSaleAc.Left = CVar(CLng(Me.FGrid.Row))
  loc_14FF270:                 Set var_90 = Me.TxtGrid
  loc_14FF276:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_11C)
  loc_14FF27E:                 var_C4 = var_108.Height
  loc_14FF28F:                 Set var_88 = Me.TxtGrid
  loc_14FF295:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FF2A9:                 var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FF2B8:                 Me.DGSaleAc.Top = var_C4
  loc_14FF2DD:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FF2E5:                 var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FF2F4:                 var_B4 = Me.FGrid.TextMatrix)
  loc_14FF305:                 global_176 = CStr(var_B4)
  loc_14FF334:                 If (Me.var_B4.RecordCount > 0) Then
  loc_14FF35E:                   Proc_6_137_1192FDC(Me.DGSaleAc, global_228, Index, Me.FGPoint)
  loc_14FF36C:                 End If
  loc_14FF3B6:                 If ((global_228.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Then
  loc_14FF3B9:                   Exit Sub
  loc_14FF3BA:                 End If
  loc_14FF3CD:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FF3D5:                 var_E4 = CVar(CLng(&H1C)) 'Long
  loc_14FF3E4:                 var_B4 = Me.FGrid.TextMatrix)
  loc_14FF408:                 If (CStr(var_B4) <> vbNullString) Then
  loc_14FF414:                   Me.var_B4.MoveFirst
  loc_14FF443:                   var_B4 = Me.FGrid.TextMatrix)
  loc_14FF454:                   Proc_6_17_EAAE40(var_148, CVar(CStr(var_B4)), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H1C)))
  loc_14FF480:                   Me.var_B4.Find CStr("Code =" & var_148), 0, 1
  loc_14FF4B3:                   If (Me.Recordset15.EOF = &HFF) Then
  loc_14FF4BF:                     Me.Recordset15.MoveFirst
  loc_14FF4C4:                   End If
  loc_14FF4C4:                 End If
  loc_14FF4C4:               End If
  loc_14FF4C4:             End If
  loc_14FF4C4:           End If
  loc_14FF4C4:         End If
  loc_14FF4C4:       End If
  loc_14FF4C4:     End If
  loc_14FF4C4:   End If
  loc_14FF4C4: End If
  loc_14FF4C4: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1437CC0
  'Data Table: 59BA2C
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
  loc_14371CF: var_86 = Shift
  loc_14371DE: If (KeyCode = 0) Then
  loc_14371EB:   If (CLng(Shift) = &H1B) Then
  loc_14371FB:     Set var_8C = Me.TxtGrid
  loc_1437201:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_1437209:     var_88 = var_90.Tag
  loc_143721B:     Set var_98 = Me.TxtGrid
  loc_1437221:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1437229:     var_9C.Text = var_94
  loc_1437245:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_143724A:     Call Proc_32_96_FE19D4(arg_14)
  loc_1437253:     Set var_8C = Me.FGrid
  loc_1437270:     Set var_8C = Me.TxtGrid
  loc_1437276:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_143727E:     var_90.Visible = FGrid.DispID_8001
  loc_143728A:     Exit Sub
  loc_143728B:   End If
  loc_143729E:   var_B0 = CLng(Me.FGrid.Col)
  loc_14372AE:   If (var_B0 = CLng(&H16)) Then
  loc_14372CE:     Set var_9C = Me.FGPoint
  loc_14372D9:     Set var_98 = Nothing
  loc_1437307:     Proc_6_69_134A630(Me.DGGod, Me.TxtGrid, KeyCode, global_88, Shift, &HFF)
  loc_1437376:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_143737D:       Set var_98 = Me.DGGod
  loc_143739C:       Proc_6_138_106E830(var_98, global_88, KeyCode, Me.FGPoint, 1)
  loc_14373AA:     End If
  loc_14373B4:     If (CLng(Shift) = &HD) Then
  loc_14373BD:       Call Proc_32_91_1AFF42C(KeyCode, var_B2, var_98, var_9C)
  loc_14373C8:       If (var_B2 = &HFF) Then
  loc_1437415:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(&H16) + 1)))
  loc_1437425:       End If
  loc_1437425:     End If
  loc_1437428:   Else
  loc_143742F:     If (var_B0 = CLng(&H19)) Then
  loc_143748C:       Proc_6_69_134A630(Me.DGTaxStru, Me.TxtGrid, KeyCode, global_224, Shift, &HFF, 1, Nothing)
  loc_14374FE:       If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1437528:         Proc_6_138_106E830(Me.DGTaxStru, global_224, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1437536:       End If
  loc_1437540:       If (CLng(Shift) = &HD) Then
  loc_1437549:         Call Proc_32_91_1AFF42C(KeyCode, var_B2, 0, 0)
  loc_1437554:         If (var_B2 = &HFF) Then
  loc_14375A1:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(&H19) + 1)), 0)
  loc_14375B1:         End If
  loc_14375B1:       End If
  loc_14375B4:     Else
  loc_14375BB:       If (var_B0 = CLng(&H1B)) Then
  loc_1437618:         Proc_6_69_134A630(Me.DGSaleAc, Me.TxtGrid, KeyCode, global_228, Shift, &HFF, 1, Nothing)
  loc_143768A:         If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_14376B4:           Proc_6_138_106E830(Me.DGSaleAc, global_228, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_14376C2:         End If
  loc_14376CC:         If (CLng(Shift) = &HD) Then
  loc_14376D5:           Call Proc_32_91_1AFF42C(KeyCode, var_B2, &H1B, 0)
  loc_14376E0:           If (var_B2 = &HFF) Then
  loc_143772D:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(&H1B) + 1)), 0)
  loc_143773D:           End If
  loc_143773D:         End If
  loc_1437740:       Else
  loc_1437747:         If (var_B0 = CLng(2)) Then
  loc_1437755:           If (global_104 = "Yes") Then
  loc_1437775:             Set var_9C = Me.FGPoint
  loc_14377AE:             Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF, 1, Nothing)
  loc_14377C7:           Else
  loc_14377E4:             Set var_9C = Me.FGPoint
  loc_143781D:             Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF, 2, Nothing)
  loc_1437833:           End If
  loc_143788C:           If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_14378B2:             Proc_6_138_106E830(Me.DGItem, global_64, KeyCode, Me.FGPoint, var_9C, 0)
  loc_14378C0:           End If
  loc_14378CA:           If (CLng(Shift) = &HD) Then
  loc_14378D3:             Call Proc_32_91_1AFF42C(KeyCode, var_B2, var_9C, 0)
  loc_14378DE:             If (var_B2 = &HFF) Then
  loc_143792B:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(&HB) + 1)), 0)
  loc_143793B:             End If
  loc_143793B:           End If
  loc_143793E:         Else
  loc_1437945:           If (var_B0 = CLng(9)) Then
  loc_143794E:             Call Proc_32_91_1AFF42C(KeyCode, var_B2, 5, 0)
  loc_1437959:             If (var_B2 = &HFF) Then
  loc_14379A6:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(&H16) + 1)), 0)
  loc_14379B6:             End If
  loc_14379B9:           Else
  loc_14379C0:             If (var_B0 = CLng(&HB)) Then
  loc_14379C9:               Call Proc_32_91_1AFF42C(KeyCode, var_B2, &HB, 0)
  loc_14379D4:               If (var_B2 = &HFF) Then
  loc_1437A21:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(&H16) + 1)), 0)
  loc_1437A31:               End If
  loc_1437A34:             Else
  loc_1437A3B:               If (var_B0 = CLng(5)) Then
  loc_1437A7E:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_154 = &HFF))) Then
  loc_1437A87:                   Call Proc_32_91_1AFF42C(KeyCode, var_B2, &H16, 0)
  loc_1437A92:                   If (var_B2 = &HFF) Then
  loc_1437ADF:                     Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(9) + 1)), 0)
  loc_1437AEF:                   End If
  loc_1437AEF:                 End If
  loc_1437AF2:               Else
  loc_1437AF9:                 If (var_B0 = CLng(6)) Then
  loc_1437B3C:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_154 = &HFF))) Then
  loc_1437B45:                     Call Proc_32_91_1AFF42C(KeyCode, var_B2, &H16, 0)
  loc_1437B50:                     If (var_B2 = &HFF) Then
  loc_1437B9D:                       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(9) + 1)), 0)
  loc_1437BAD:                     End If
  loc_1437BAD:                   End If
  loc_1437BB0:                 Else
  loc_1437BB7:                   If (var_B0 = CLng(1)) Then
  loc_1437BC4:                     If (CLng(Shift) = &HD) Then
  loc_1437BCD:                       Call Proc_32_91_1AFF42C(KeyCode, var_B2, &H16, 0)
  loc_1437BD8:                       If (var_B2 = &HFF) Then
  loc_1437C25:                         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(5) + 1)), 0)
  loc_1437C48:                         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1437C50:                         var_FC = CVar(CLng(1)) 'Long
  loc_1437C83:                         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1437C98:                           Me.FGrid.Col = CVar(CLng(1))
  loc_1437CA3:                         Else
  loc_1437CB5:                           Me.FGrid.Col = CVar(CLng(5))
  loc_1437CBD:                         End If
  loc_1437CBD:                       End If
  loc_1437CBD:                     End If
  loc_1437CBD:                   End If
  loc_1437CBD:                 End If
  loc_1437CBD:               End If
  loc_1437CBD:             End If
  loc_1437CBD:           End If
  loc_1437CBD:         End If
  loc_1437CBD:       End If
  loc_1437CBD:     End If
  loc_1437CBD:   End If
  loc_1437CBD: End If
  loc_1437CBD: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '1297D08
  'Data Table: 59BA2C
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim var_B4 As TextBox
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Long
  Dim arg_10 As Integer
  loc_129770B: Proc_6_58_E06050(arg_10)
  loc_129771C: If (KeyAscii = 0) Then
  loc_1297732:   var_A8 = CLng(Me.FGrid.Col)
  loc_1297742:   If (var_A8 = CLng(&H16)) Then
  loc_1297761:     If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_1297773:       var_AC = "Name"
  loc_129778E:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_88, arg_10)
  loc_12977C0:       Proc_6_138_106E830(Me.DGGod, global_88, KeyAscii, Me.FGPoint)
  loc_12977CE:     End If
  loc_12977D1:   Else
  loc_12977D8:     If (var_A8 = CLng(&H19)) Then
  loc_12977F7:       If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_1297828:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_224, arg_10, "Name")
  loc_129785E:         Proc_6_138_106E830(Me.DGTaxStru, global_224, KeyAscii, Me.FGPoint, 0)
  loc_129786C:       End If
  loc_129786F:     Else
  loc_1297876:       If (var_A8 = CLng(&H1B)) Then
  loc_1297895:         If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_12978C6:           Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_228, arg_10, "Name")
  loc_12978FC:           Proc_6_138_106E830(Me.DGSaleAc, global_228, KeyAscii, Me.FGPoint, 0)
  loc_129790A:         End If
  loc_129790D:       Else
  loc_1297914:         If (var_A8 = CLng(1)) Then
  loc_1297932:           If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_1297947:             Me.FGrid.Col = CVar(CLng(2))
  loc_129796B:             If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_1297972:               Set var_B4 = Me.TxtGrid
  loc_129797D:               var_AC = "Name"
  loc_1297998:               Proc_6_89_1470B00(var_B4, KeyAscii, global_64, arg_10, var_AC)
  loc_12979A7:             End If
  loc_12979A7:           End If
  loc_12979AA:         Else
  loc_12979B1:           If (var_A8 = CLng(2)) Then
  loc_12979D0:             If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_12979DE:               If (global_104 = "Yes") Then
  loc_12979ED:                 Set var_94 = Me.TxtGrid
  loc_12979F3:                 Call 0.Method_TxtGrid_KeyPress0 (0, var_B4, var_AC, 0)
  loc_1297A05:                 var_86 = CInt(Len(var_B4.Text))
  loc_1297A15:                 var_88 = arg_10
  loc_1297A1C:                 Set var_B4 = Me.TxtGrid
  loc_1297A27:                 var_AC = "BarCode"
  loc_1297A42:                 Proc_6_89_1470B00(var_B4, KeyAscii, global_64, arg_10, var_AC, 0)
  loc_1297A5D:                 Set var_94 = Me.TxtGrid
  loc_1297A63:                 Call 0.Method_TxtGrid_KeyPress0 (0, var_B4, var_AC, var_88)
  loc_1297A83:                 If (Len(var_AC) = CLng(var_B4.Text)) Then
  loc_1297A9D:                   If (Me.AbsolutePosition > 0) Then
  loc_1297AB1:                     var_8C = Me.AbsolutePosition
  loc_1297AB7:                   Else
  loc_1297ABC:                     var_8C = 1
  loc_1297ABF:                   End If
  loc_1297AC2:                   arg_10 = var_88
  loc_1297AEF:                   Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_64, arg_10, "Name", 0)
  loc_1297B15:                   If (Me.AbsolutePosition <= 0) Then
  loc_1297B21:                     Me.AbsolutePosition = var_8C
  loc_1297B26:                   End If
  loc_1297B26:                 End If
  loc_1297B29:               Else
  loc_1297B53:                 Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_64, arg_10, "Name", 0)
  loc_1297B62:               End If
  loc_1297B6D:               Set var_B4 = Me.FGPoint
  loc_1297B85:               Proc_6_138_106E830(Me.DGItem, global_64, KeyAscii, var_B4, arg_10)
  loc_1297B93:             End If
  loc_1297B96:           Else
  loc_1297B9D:             If (var_A8 = CLng(5)) Then
  loc_1297BAA:               Set var_94 = Me.TxtGrid
  loc_1297BB0:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_B4, var_8C, var_8C)
  loc_1297BCB:               Proc_6_42_129B55C(var_B4, arg_10, 8, 3)
  loc_1297BDA:             Else
  loc_1297BE1:               If Not (var_A8 = CLng(9)) Then
  loc_1297BEB:                 If (var_A8 = CLng(6)) Then
  loc_1297BEE:                 End If
  loc_1297BF8:                 Set var_94 = Me.TxtGrid
  loc_1297BFE:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_B4, 0)
  loc_1297C19:                 Proc_6_42_129B55C(var_B4, arg_10, 8)
  loc_1297C28:               Else
  loc_1297C2F:                 If (var_A8 = CLng(&HB)) Then
  loc_1297C3C:                   Set var_94 = Me.TxtGrid
  loc_1297C42:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_B4, 5)
  loc_1297C5D:                   Proc_6_42_129B55C(var_B4, arg_10, 8)
  loc_1297C6C:                 Else
  loc_1297C73:                   If (var_A8 = CLng(1)) Then
  loc_1297C91:                     If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_1297CA6:                       Me.FGrid.Col = CVar(CLng(2))
  loc_1297CCA:                       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_1297CF7:                         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_64, arg_10, "Name")
  loc_1297D06:                       End If
  loc_1297D06:                     End If
  loc_1297D06:                   End If
  loc_1297D06:                 End If
  loc_1297D06:               End If
  loc_1297D06:             End If
  loc_1297D06:           End If
  loc_1297D06:         End If
  loc_1297D06:       End If
  loc_1297D06:     End If
  loc_1297D06:   End If
  loc_1297D06: End If
  loc_1297D06: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1216414
  'Data Table: 59BA2C
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
  loc_1215F54: On Error Goto loc_121640E
  loc_1215F63: If (KeyCode = 0) Then
  loc_1215F79:   var_A0 = CLng(Me.FGrid.Col)
  loc_1215F89:   If (var_A0 = CLng(2)) Then
  loc_1215FAF:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_1215FC0:       Call TxtGrid_KeyDown(KeyCode, global_152)
  loc_1215FD0:       If (global_104 = "Yes") Then
  loc_1215FFD:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_64, Shift, "BarCode")
  loc_121600F:       Else
  loc_1216039:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_64, Shift, "Name")
  loc_1216048:       End If
  loc_1216048:     End If
  loc_121604B:   Else
  loc_1216052:     If (var_A0 = CLng(&H16)) Then
  loc_1216078:       If ((Shift <> &HD) And (CBool(Me.DGGod.Visible) = 0)) Then
  loc_1216089:         Call TxtGrid_KeyDown(KeyCode, global_152)
  loc_1216092:         Set var_AC = Me.TxtGrid
  loc_121609D:         var_A8 = "Name"
  loc_12160B8:         Proc_6_89_1470B00(var_AC, KeyCode, global_88, Shift, var_A8, &HFF)
  loc_12160C7:       End If
  loc_12160CA:     Else
  loc_12160D1:       If (var_A0 = CLng(5)) Then
  loc_12160E1:         Set var_8C = Me.TxtGrid
  loc_12160E7:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, 0, &HFF)
  loc_12160EF:         &HFF = var_AC.Text
  loc_1216112:         var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121612A:         var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1216157:         var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_121615F:         Set var_178 = Me.FGrid
  loc_1216165:         LateIdCallSt
  loc_121619F:         var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12161A7:         var_174 = CVar(CLng(6)) 'Long
  loc_12161DF:         var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12161E7:         var_1C4 = CVar(CLng(7)) 'Long
  loc_12161FF:         var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216207:         var_124 = CVar(CLng(5)) 'Long
  loc_1216210:         Set var_AC = Me.FGrid
  loc_1216221:         var_A8 = CStr(var_AC.TextMatrix))
  loc_121622F:         var_164 = CVar(CStr((Val(var_A8) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_1216237:         Set var_1E8 = Me.FGrid
  loc_121623D:         LateIdCallSt
  loc_121626D:       Else
  loc_1216274:         If (var_A0 = CLng(6)) Then
  loc_1216284:           Set var_8C = Me.TxtGrid
  loc_121628A:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, var_1E8, var_164, var_124, var_BC)
  loc_1216292:           var_1C4 = var_AC.Text
  loc_12162B5:           var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12162CD:           var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12162FA:           var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00000"))) 'String
  loc_1216302:           Set var_178 = Me.FGrid
  loc_1216308:           LateIdCallSt
  loc_1216342:           var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121634A:           var_174 = CVar(CLng(6)) 'Long
  loc_121636C:           var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1216382:           var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121638A:           var_1C4 = CVar(CLng(7)) 'Long
  loc_12163A2:           var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12163AA:           var_124 = CVar(CLng(5)) 'Long
  loc_12163D2:           var_164 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_180))) 'String
  loc_12163DA:           Set var_1E8 = Me.FGrid
  loc_12163E0:           LateIdCallSt
  loc_121640D:         End If
  loc_121640D:       End If
  loc_121640D:     End If
  loc_121640D:   End If
  loc_121640D: End If
  loc_121640D: Exit Sub
  loc_121640E: ' Referenced from: 1215F54
  loc_121640E: Proc_6_60_E63754(var_1E8, var_164, var_124, var_BC, var_1C4, var_1A4, var_180, var_174)
  loc_1216413: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23E10
  'Data Table: 59BA2C
  Dim arg_10 As Integer
  loc_E23DF8: If (Cancel = 0) Then
  loc_E23E01:   Call Proc_32_91_1AFF42C(Cancel, var_88)
  loc_E23E0A:   arg_10 = Not(var_88)
  loc_E23E0D: End If
  loc_E23E0D: Exit Sub
End Sub

Private Sub BillImage_Click() 'EACF14
  'Data Table: 59BA2C
  Dim var_88 As Image
  loc_EACE94: Set var_88 = Me.TopCtrl1
  loc_EACE9A: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EACED6: If ((CStr() = "Browse") And (Me.BillImage.Tag <> vbNullString)) Then
  loc_EACEF4:   FrmImage.ImagePath = Me.BillImage.Tag
  loc_EACF0D:   Call 0.Method_arg_2B0 (var_B4)
  loc_EACF12: End If
  loc_EACF12: Exit Sub
End Sub

Private Sub BillImage_DblClick() '105C550
  'Data Table: 59BA2C
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105C308: On Error Goto loc_105C4F1
  loc_105C30F: Set var_88 = Me.TopCtrl1
  loc_105C315: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105C329: Set var_A0 = Me.TopCtrl1
  loc_105C32F: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() <> "Add"))
  loc_105C355: If ( And (CStr() <> "Edit")) Then
  loc_105C358:   Exit Sub
  loc_105C359: End If
  loc_105C369: Me.CDlg.Filter = "*.*"
  loc_105C381: Me.CDlg.Action = 1
  loc_105C393: Me.CDlg.FileName = 
  loc_105C39B: var_9C = CStr()
  loc_105C3A8: Me.BillImage.Tag = var_9C
  loc_105C3C4: Me.CDlg.FileName = 
  loc_105C3CC: var_B0 = CVar(CStr()) 'String
  loc_105C3D2: var_E4 = Trim(var_B0)
  loc_105C3DB: Set var_A0 = Me.CDlg
  loc_105C3E1: var_A0.FileName = 
  loc_105C3FF: var_F4 = Right(var_E4, 3)
  loc_105C43A: var_D4 = "AVI"
  loc_105C468: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105C479:   var_C4 = "Invalid Format"
  loc_105C484:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105C497: Else
  loc_105C4AE:   Set var_88 = Me.CDlg
  loc_105C4B4:   var_88.FileName = var_C4
  loc_105C4BC:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105C4C6:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105C4DB:   Me.BillImage.Picture = var_A0
  loc_105C4F0: End If
  loc_105C4F0: Exit Sub
  loc_105C4F1: ' Referenced from: 105C308
  loc_105C4F9: Set var_88 = Err()
  loc_105C4FF: Call 0.Method_arg_1C (var_1B0)
  loc_105C510: If (var_1B0 <> 0) Then
  loc_105C529:   Set var_88 = Err()
  loc_105C52F:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105C53A:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105C54D: End If
  loc_105C54D: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ECDEF0
  'Data Table: 59BA2C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECDE52: Set var_88 = Me.TxtGt
  loc_ECDE58: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ECDE66: Proc_6_74_E23240(var_8C)
  loc_ECDE72: Call Proc_32_96_FE19D4(var_8C)
  loc_ECDE86: Set var_88 = Me.TxtGt
  loc_ECDE8C: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECDE94: var_8C.SelStart = 0
  loc_ECDEAD: Set var_88 = Me.TxtGt
  loc_ECDEB3: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECDECE: Set var_90 = Me.TxtGt
  loc_ECDED4: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ECDEDC: var_98.SelLength = Len(var_8C.Text)
  loc_ECDEEF: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'F60690
  'Data Table: 59BA2C
  Dim var_88 As DataGrid
  loc_F605C9: var_C6 = Me.FrmList.Visible
  loc_F60604: If (((((CBool(Me.DGItem.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(Me.DGPartyBillNo.Visible) = 0)) And (var_C6 = 0)) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F60626:   Set var_88 = Me.TxtGt
  loc_F6062C:   Call 0.Method_TxtGt_KeyDown8 (var_C6, KeyCode)
  loc_F6063C:   If ( And (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) = (var_C6 - 1))) Then
  loc_F60642:     Call Proc_32_97_F0C440(KeyCode)
  loc_F60647:     Exit Sub
  loc_F60648:   End If
  loc_F60648: End If
  loc_F6065D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F60666:   Proc_6_75_E5335C(Shift)
  loc_F6066B: End If
  loc_F60680: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F60689:   Proc_6_76_E533C8(Shift, arg_14)
  loc_F6068E: End If
  loc_F6068E: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'F7ADC0
  'Data Table: 59BA2C
  Dim var_8C As Variant
  Dim arg_10 As Integer
  Dim var_FC As TextBox
  loc_F7AC92: Set var_88 = Me.TxtGt
  loc_F7AC98: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_F7ACB3: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_F7ACBF: On Error Goto loc_F7ADBE
  loc_F7ACCF: Set var_88 = Me.LblCap
  loc_F7ACD5: Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7ACDD: 2 = var_8C.Tag
  loc_F7AD14: If (Trim(CVar(var_98)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_F7AD1D:   If (arg_10 = &H2D) Then
  loc_F7AD22:     arg_10 = 0
  loc_F7AD25:   End If
  loc_F7AD32:   Set var_88 = Me.TxtGt
  loc_F7AD38:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7AD40:   arg_10 = var_8C.Text
  loc_F7AD90:   Set var_90 = Me.TxtPer
  loc_F7AD96:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_FC, CStr(Format(CVar(((Val(var_98) * CDbl(&H64)) / global_216)), "0.00")), 1)
  loc_F7AD9E:   var_FC.Text = 1
  loc_F7ADBE:   ' Referenced from: F7ACBF
  loc_F7ADBE: End If
  loc_F7ADBE: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E4EBF4
  'Data Table: 59BA2C
  loc_E4EBD2: Set var_88 = Me.TxtGt
  loc_E4EBD8: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E4EBE6: Proc_6_73_E23294(var_8C)
  loc_E4EBF2: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E028B4
  'Data Table: 59BA2C
  loc_E028AE: Call Proc_32_103_17C4004(Cancel)
  loc_E028B3: Exit Sub
End Sub

Private Sub DGSaleAc_UnknownEvent_9 'FF4704
  'Data Table: 59BA2C
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FF451C: On Error Goto loc_FF46FD
  loc_FF4528: Set var_A8 = Me.DGSaleAc
  loc_FF452E: var_A8.Visible = False
  loc_FF4550: If (Me.var_A8.RecordCount > 0) Then
  loc_FF4590:   Set var_B4 = Me.TxtGrid
  loc_FF4596:   Call 0.Method_DGSaleAc_UnknownEvent_90 (0, var_B8)
  loc_FF459E:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_FF45BE:   var_C8 = Me.FGrid.Row
  loc_FF45C7:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF45CF:   var_EC = CVar(CLng(&H1B)) 'Long
  loc_FF4605:   var_11C = CVar(CStr(Me.var_C8.Fields.Item("Name").Value)) 'String
  loc_FF460D:   Set var_B8 = Me.FGrid
  loc_FF4613:   LateIdCallSt
  loc_FF4639:   var_C8 = Me.FGrid.Row
  loc_FF4642:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF464A:   var_EC = CVar(CLng(&H1C)) 'Long
  loc_FF466F:   var_B0 = Me.var_C8.Fields.Item("Code")
  loc_FF4680:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FF4688:   Set var_B8 = Me.FGrid
  loc_FF468E:   LateIdCallSt
  loc_FF46AA: End If
  loc_FF46B6: Set var_A8 = Me.TxtGrid
  loc_FF46BC: Call 0.Method_DGSaleAc_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FF46C4: var_A4 = var_B0.Visible
  loc_FF46D6: If (var_12E = &HFF) Then
  loc_FF46E2:   Set var_A8 = Me.TxtGrid
  loc_FF46E8:   Call 0.Method_DGSaleAc_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FF46F0:   var_B0.SetFocus
  loc_FF46FC: End If
  loc_FF46FC: Exit Sub
  loc_FF46FD: ' Referenced from: FF451C
  loc_FF46FD: Proc_6_60_E63754(var_11C, var_EC)
  loc_FF4702: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F11208
  'Data Table: 59BA2C
  Dim var_A4 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F11130: Set var_A4 = Me.ListView
  loc_F1117A: Set var_BC = Me.Txt
  loc_F11180: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F11188: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F111B4: Me.FrmList.Visible = False
  loc_F111E4: Set var_9C = Me.Txt
  loc_F111EA: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A4)
  loc_F111F2: var_A4.SetFocus
  loc_F11206: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'FF4FE4
  'Data Table: 59BA2C
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FF4DFC: On Error Goto loc_FF4FDD
  loc_FF4E08: Set var_A8 = Me.DGTaxStru
  loc_FF4E0E: var_A8.Visible = False
  loc_FF4E30: If (Me.var_A8.RecordCount > 0) Then
  loc_FF4E70:   Set var_B4 = Me.TxtGrid
  loc_FF4E76:   Call 0.Method_DGTaxStru_UnknownEvent_90 (0, var_B8)
  loc_FF4E7E:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_FF4E9E:   var_C8 = Me.FGrid.Row
  loc_FF4EA7:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF4EAF:   var_EC = CVar(CLng(&H19)) 'Long
  loc_FF4EE5:   var_11C = CVar(CStr(Me.var_C8.Fields.Item("Name").Value)) 'String
  loc_FF4EED:   Set var_B8 = Me.FGrid
  loc_FF4EF3:   LateIdCallSt
  loc_FF4F19:   var_C8 = Me.FGrid.Row
  loc_FF4F22:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF4F2A:   var_EC = CVar(CLng(&H1A)) 'Long
  loc_FF4F4F:   var_B0 = Me.var_C8.Fields.Item("Code")
  loc_FF4F60:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FF4F68:   Set var_B8 = Me.FGrid
  loc_FF4F6E:   LateIdCallSt
  loc_FF4F8A: End If
  loc_FF4F96: Set var_A8 = Me.TxtGrid
  loc_FF4F9C: Call 0.Method_DGTaxStru_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FF4FA4: var_A4 = var_B0.Visible
  loc_FF4FB6: If (var_12E = &HFF) Then
  loc_FF4FC2:   Set var_A8 = Me.TxtGrid
  loc_FF4FC8:   Call 0.Method_DGTaxStru_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FF4FD0:   var_B0.SetFocus
  loc_FF4FDC: End If
  loc_FF4FDC: Exit Sub
  loc_FF4FDD: ' Referenced from: FF4DFC
  loc_FF4FDD: Proc_6_60_E63754(var_11C, var_EC)
  loc_FF4FE2: Exit Sub
End Sub

Private Sub DGPartyBillNo_UnknownEvent_9 'F3C574
  'Data Table: 59BA2C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C46B: Me.DGPartyBillNo.Visible = False
  loc_F3C48A: If (Me.RecordCount > 0) Then
  loc_F3C4C9:   Set var_B4 = Me.Txt
  loc_F3C4CF:   Call 0.Method_DGPartyBillNo_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3C4D7:   var_B8.Text = CStr(Me.Fields.Item("PartyBillNoCd").Value)
  loc_F3C50A:   var_B0 = Me.Fields.Item("PartyBillNoNm")
  loc_F3C529:   Set var_B4 = Me.Txt
  loc_F3C52F:   Call 0.Method_DGPartyBillNo_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3C537:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3C54D: End If
  loc_F3C558: Set var_A8 = Me.Txt
  loc_F3C55E: Call 0.Method_DGPartyBillNo_UnknownEvent_90 (CInt(5))
  loc_F3C566: var_B0.SetFocus
  loc_F3C572: Exit Sub
End Sub

Private Sub DGPartyBillNo_UnknownEvent_1F 'EA2324
  'Data Table: 59BA2C
  Dim var_A8 As Variant
  loc_EA22A4: Set var_88 = Me.DGPartyBillNo
  loc_EA22CE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA22D6: Set var_BC = Me.DGPartyBillNo
  loc_EA2312: Proc_6_138_106E830(Me.DGPartyBillNo, global_72, CInt(5), Me.FGPoint)
  loc_EA2320: Exit Sub
End Sub

Public Function global_52Get() '59E52C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '59E53B
  global_52 = Value
End Sub

Public Function global_56Get() '59E54A
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '59E559
  global_56 = Value
End Sub

Public Function global_60Get() '59E568
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '59E577
  global_60 = Value
End Sub

Public Property Let OpenAs(vNewValue) 'E0FCFC
  'Data Table: 59BA2C
  loc_E0FCF4: global_268 = vNewValue
  loc_E0FCF8: Exit Sub
  loc_E0FCF9: If  Then Exit Sub
  loc_E0FCF9: End If
End Sub

Public Property Get OpenAs() 'E11064
  'Data Table: 59BA2C
  loc_E11058: var_88 = global_268
  loc_E1105B: OpenAs = 
End Sub

Public Sub FindMove(mDocId) 'E727C8
  'Data Table: 59BA2C
  Dim Me As Recordset15
  loc_E72772: Me.MoveFirst
  loc_E7279C: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E727BC: If (Me.EOF = 0) Then
  loc_E727BF:   Call Proc_32_92_1A03EEC(var_9C)
  loc_E727C4: End If
  loc_E727C4: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95C68
  'Data Table: 59BA2C
  Dim Me As Recordset15
  Dim arg_1D3D As Boolean
  loc_E95BF6: On Error Goto loc_E95C5F
  loc_E95BFF: Me.MoveFirst
  loc_E95C29: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95C51: Proc_5_0_1107AD0(&HFF, Me, global_76)
  loc_E95C59: Call Proc_32_92_1A03EEC(0)
  loc_E95C5E: Exit Sub
  loc_E95C5F: ' Referenced from: E95BF6
  loc_E95C5F: Proc_6_60_E63754(var_A0)
  loc_E95C64: Exit Sub
  loc_E95C65: arg_1D3D = True
End Sub

Public Sub Proc_32_85_E8423C(arg_C) 'E8423C
  'Data Table: 59BA2C
  loc_E841DA: For var_90 = 1 To CInt(Len(arg_C)): var_88 = var_90 'Integer
  loc_E8421F:   If Not(((Asc(CStr(Mid(arg_C, CLng(var_88), 1))) >= &H30) And (Asc(CStr(Mid(arg_C, CLng(var_88), 1))) <= &H39))) Then
  loc_E84222:     GoTo loc_E8422D
  loc_E84225:   End If
  loc_E84228: Next var_90 'Integer
  loc_E8422D: ' Referenced from: E84222
  loc_E84233: Proc_32_85_E8423C = var_88
End Sub

Public Sub Proc_32_86_118C9D0
  'Data Table: 59BA2C
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_118C5EE: Me.GridSel.Rows = 1
  loc_118C602: Me.GridSel.Cols = 5
  loc_118C607: var_98 = 0
  loc_118C613: var_BC = CVar(CLng(0)) 'Long
  loc_118C618: var_DC = vbNullString
  loc_118C621: LateIdCallSt
  loc_118C62C: var_98 = CVar(CLng(0)) 'Long
  loc_118C631: var_BC = &H258
  loc_118C63D: LateIdCallSt
  loc_118C645: var_98 = 0
  loc_118C651: var_BC = CVar(CLng(1)) 'Long
  loc_118C656: var_DC = "Bill No"
  loc_118C65F: LateIdCallSt
  loc_118C66A: var_98 = CVar(CLng(1)) 'Long
  loc_118C675: var_BC = CVar(CInt(1)) 'Integer
  loc_118C67C: LateIdCallSt
  loc_118C687: var_98 = CVar(CLng(1)) 'Long
  loc_118C692: var_BC = CVar(CInt(1)) 'Integer
  loc_118C699: LateIdCallSt
  loc_118C6A4: var_98 = CVar(CLng(1)) 'Long
  loc_118C6A9: var_BC = &H5DC
  loc_118C6B5: LateIdCallSt
  loc_118C6BD: var_98 = 0
  loc_118C6C9: var_BC = CVar(CLng(2)) 'Long
  loc_118C6CE: var_DC = "DocId"
  loc_118C6D7: LateIdCallSt
  loc_118C6E2: var_98 = CVar(CLng(2)) 'Long
  loc_118C6ED: var_BC = CVar(CInt(7)) 'Integer
  loc_118C6F4: LateIdCallSt
  loc_118C6FF: var_98 = CVar(CLng(2)) 'Long
  loc_118C70A: var_BC = CVar(CInt(7)) 'Integer
  loc_118C711: LateIdCallSt
  loc_118C71C: var_98 = CVar(CLng(2)) 'Long
  loc_118C721: var_BC = 0
  loc_118C72D: LateIdCallSt
  loc_118C735: var_98 = 0
  loc_118C741: var_BC = CVar(CLng(3)) 'Long
  loc_118C746: var_DC = "Bill Date"
  loc_118C74F: LateIdCallSt
  loc_118C75A: var_98 = CVar(CLng(3)) 'Long
  loc_118C765: var_BC = CVar(CInt(1)) 'Integer
  loc_118C76C: LateIdCallSt
  loc_118C777: var_98 = CVar(CLng(3)) 'Long
  loc_118C782: var_BC = CVar(CInt(1)) 'Integer
  loc_118C789: LateIdCallSt
  loc_118C794: var_98 = CVar(CLng(3)) 'Long
  loc_118C799: var_BC = &H7D0
  loc_118C7A5: LateIdCallSt
  loc_118C7AD: var_98 = 0
  loc_118C7B9: var_BC = CVar(CLng(4)) 'Long
  loc_118C7BE: var_DC = "Bill Amount"
  loc_118C7C7: LateIdCallSt
  loc_118C7D2: var_98 = CVar(CLng(4)) 'Long
  loc_118C7DD: var_BC = CVar(CInt(7)) 'Integer
  loc_118C7E4: LateIdCallSt
  loc_118C7EF: var_98 = CVar(CLng(4)) 'Long
  loc_118C7FA: var_BC = CVar(CInt(7)) 'Integer
  loc_118C801: LateIdCallSt
  loc_118C80C: var_98 = CVar(CLng(4)) 'Long
  loc_118C811: var_BC = &H7D0
  loc_118C81D: LateIdCallSt
  loc_118C825: var_98 = vbNullString
  loc_118C82F: Set var_AC = Me.GridSel
  loc_118C853: Me.GridSel.FixedRows = 1
  loc_118C85D: Set var_88 = Nothing 
  loc_118C871: ReDim Preserve global_252(0 To 0)
  loc_118C888: global_252(0) = 0
  loc_118C89C: Me.GridSel.Height = CVar(CDbl(3000))
  loc_118C8B7: Me.GridSel.Width = CVar(CDbl(6500))
  loc_118C8BF: var_98 = 0
  loc_118C8F0: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_118C8FF: var_98 = 0
  loc_118C930: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_118C961: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_118C992: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_118C9B1: Me.Check1.Value = CInt(0)
  loc_118C9C5: Me.Check1.Visible = False
  loc_118C9CD: Exit Sub
End Sub

Public Sub Proc_32_87_11C3F58(arg_C, arg_10) '11C3F58
  'Data Table: 59BA2C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_8C As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Long
  loc_11C3B02: var_86 = &HFF
  loc_11C3B07: var_88 = 0
  loc_11C3B13: If (CInt(arg_10) = 1) Then
  loc_11C3B3B:   For var_A8 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_8A = var_A8 'Integer
  loc_11C3B44:     var_8C = var_8A
  loc_11C3B4B:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C3B50:     var_D8 = 2
  loc_11C3B7F:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11C3B86:       var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C3BE5:       Call Proc_32_88_159B6D8(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), var_146, Me.GridSel.TextMatrix), 1, CVar(CLng(var_8C)), Me.GridSel.TextMatrix), 2)
  loc_11C3C05:       If (var_146 = 0) Then
  loc_11C3C0D:         Proc_32_87_11C3F58 = 0
  loc_11C3C13:       End If
  loc_11C3C15:       var_88 = &HFF
  loc_11C3C3D:       For var_14A = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_14A 'Integer
  loc_11C3C56:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_11C3C71:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_11C3C8C:         Me.GridSel.CellBackColor = &H80FF
  loc_11C3C97:       Next var_14A 'Integer
  loc_11C3C9C:     End If
  loc_11C3C9F:   Next var_A8 'Integer
  loc_11C3CA4:   Exit For
  loc_11C3CA7: End If
  loc_11C3CAF: CRefVarAry
  loc_11C3CB7: For var_14E = 0 To CInt(UBound(arg_C, 1)): var_8A = var_14E 'Integer
  loc_11C3CD8:   If (arg_C(var_8A) = 0) Then
  loc_11C3CDB:     GoTo loc_11C3E85
  loc_11C3CDE:   End If
  loc_11C3CEF:   var_8C = CInt(arg_C(var_8A))
  loc_11C3CF9:   var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C3CFE:   var_D8 = 0
  loc_11C3D2D:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11C3D34:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C3D39:     var_D8 = 2
  loc_11C3D68:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11C3D6F:       var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C3DCE:       Call Proc_32_88_159B6D8(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), var_146, Me.GridSel.TextMatrix), 1, CVar(CLng(var_8C)), Me.GridSel.TextMatrix), 2)
  loc_11C3DEE:       If (var_146 = 0) Then
  loc_11C3DF6:         Proc_32_87_11C3F58 = 0
  loc_11C3DFC:       End If
  loc_11C3DFE:       var_88 = &HFF
  loc_11C3E26:       For var_152 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_152 'Integer
  loc_11C3E3F:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_11C3E5A:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_11C3E75:         Me.GridSel.CellBackColor = &H80FF
  loc_11C3E80:       Next var_152 'Integer
  loc_11C3E85:       ' Referenced from: 11C3CDB
  loc_11C3E85:     End If
  loc_11C3E85:   End If
  loc_11C3E88: Next var_14E 'Integer
  loc_11C3E8D: ' Referenced from: 11C3CA4
  loc_11C3E9D: If ((var_88 = 0) And (CInt(arg_10) = 0)) Then
  loc_11C3EA2:   var_86 = 0
  loc_11C3EA5:   var_B8 = 0
  loc_11C3EAE:   var_D8 = 1
  loc_11C3EC1:   var_A4 = Me.GridSel.TextMatrix)
  loc_11C3EE9:   MsgBox(CVar("Select " & CStr(var_A4)), &H40, var_164, var_174, var_184)
  loc_11C3F14:   Me.GridSel.Row = 1
  loc_11C3F2F:   Me.GridSel.Col = 0
  loc_11C3F3B:   Set var_94 = Me.GridSel
  loc_11C3F4C: End If
  loc_11C3F4C: Proc_32_87_11C3F58 = GridSel.DispID_8001
  loc_11C3F52: Proc_32_87_11C3F58 = var_A4
End Sub

Public Sub Proc_32_88_159B6D8(arg_C) '159B6D8
  'Data Table: 59BA2C
  Dim var_90 As Connection15
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_108 As Variant
  Dim unk_59BA49 As Connection15
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
  loc_159A572: Set var_90 = New 
  loc_159A57D: Me.Connection15.CursorLocation = 3
  loc_159A58A: var_90.IsolationLevel = &H10
  loc_159A597: var_90.CommandTimeout = 0
  loc_159A5B4: var_90.Open "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F95230 & "SaleTransfer.mdb", vbNullString, vbNullString, -1
  loc_159A610: Set var_94 = New 
  loc_159A634: Me.Recordset15.Open CVar("Select * From Stock S Where S.LOGSITE_CODE='" & MemVar_1F95078 & "' And DocId='" & arg_C & "' Order by S.Sno"), CVar(var_90), 3
  loc_159A63D: Set var_9C = New 
  loc_159A65A: var_D8 = CVar("Select * From SunTran S Where S.LOGSITE_CODE='" & MemVar_1F95078 & "' And DocId='" & arg_C & "' Order by S.Sno") 'String
  loc_159A661: Me.Recordset15.Open var_D8, CVar(var_90), 3
  loc_159A683: Proc_6_17_EAAE40(var_F8, MemVar_1F95078, "Select E.PurChaseGodown,G.Name from Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE=", var_128, -1)
  loc_159A699: unk_59BA49.Execute CStr(var_12C & var_F8), 1, -1
  loc_159A6A4: Set var_A0 = var_12C
  loc_159A6CA: If (var_A0.RecordCount > 0) Then
  loc_159A6F5:   var_B8 = Proc_6_38_E69628(CVar(var_A0.Fields.Item("PurchaseGodown")), 1)
  loc_159A726:   var_BC = Proc_6_38_E69628(CVar(var_A0.Fields.Item("Name")))
  loc_159A72F: End If
  loc_159A734: Set var_A0 = Nothing
  loc_159A74B: If (var_94.RecordCount > 0) Then
  loc_159A75D:   Me.FGrid.Redraw = False
  loc_159A778:   Me.FGrid.Rows = 1
  loc_159A784:   Set var_13C = Me.FGrid
  loc_159A79E:   var_F8 = CVar(CStr(Proc_6_127_F25B10(var_13C, CInt(0)))) 'String
  loc_159A7A6:   Set var_134 = Me.FGrid
  loc_159A7D3:   Me.FGrid.FixedRows = 1
  loc_159A7F5:   var_AA = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_159A7FE:   ' Referenced from: 159B480
  loc_159A80D:   If Not(var_94.EOF) Then
  loc_159A824:     var_C0 = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.ConvRatio,I.Unit,I.IssueUnit,I.SChrgApp,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,IC.taxStru,I.DiscApp as IDiscApp,I.Purchrate as IPurchRate,TS.Name as TaxStruName,IC.AcName As SaleAcCode,SG.Name As SaleAcName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join Taxstru TS on TS.Code=IC.TaxStru left Join SubGroup SG On SG.SubCode=IC.AcName Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_159A82B:     var_108 = CVar(var_C0 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And (I.GravyItem<>'Yes' or I.GravyItem is NULL) And I.DispCode <>9999 And I.ActiveYN<>'No' And I.Code='") 'String
  loc_159A86F:     unk_59BA49.Execute CStr(var_108 & var_94.Fields.Item("Item").Value & "'"), var_15C, -1
  loc_159A87A:     Set var_98 = var_13C
  loc_159A8AE:     If (var_98.RecordCount = 0) Then
  loc_159A8EA:       var_13C = var_94.Fields
  loc_159A8F2:       var_170 = var_13C.Item("RestCode")
  loc_159A905:       var_1C8 = 0
  loc_159A93C:       var_190 = "Select Max(Name) From ItemMast Where Code='" & var_94.Fields.Item("Item").Value & "' And RestCode='" & var_170.Value & "'" 
  loc_159A94A:       unk_59BA49.Execute CStr(var_190), var_1B0, -1
  loc_159A952:       var_1B4 = var_1B4.Fields
  loc_159A95A:       var_1C8 = var_1B8.Item(var_1B8)
  loc_159A962:       var_1CC = var_1CC.Value
  loc_159A995:       MsgBox(CVar(Proc_6_38_E69628(var_1DC, var_1DC, var_13C, var_AA) & " Is Not Present In Purchase Item."), &H40, "Purchase Transfer", var_22C, var_24C)
  loc_159A9CF:       Proc_32_88_159B6D8 = FGrid.DispID_10000
  loc_159A9D5:     End If
  loc_159A9D5:     var_D8 = vbNullString
  loc_159A9DF:     Set var_12C = Me.FGrid
  loc_159A9F3:     var_D8 = "VNo"
  loc_159AA0F:     var_F8 = CVar(var_94.Fields.Item(var_D8)) 'Address
  loc_159AA35:     Set var_13C = Me.Txt
  loc_159AA3B:     Call 0.Method_Proc_32_88_159B6D80 (CInt(5), var_170, CStr(Trim(CVar(Proc_6_38_E69628(var_F8, FGrid.DispID_10000, var_D8)))))
  loc_159AA43:     var_170.Text = var_F8
  loc_159AA93:     Set var_13C = Me.Txt
  loc_159AA99:     Call 0.Method_Proc_32_88_159B6D80 (CInt(6), var_170)
  loc_159AAB9:     Set var_250 = Me.FGrid
  loc_159AAC0:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159AAC8:     var_118 = CVar(CLng(0)) 'Long
  loc_159AAD2:     var_F8 = CVar(CStr(var_AA)) 'String
  loc_159AAD9:     LateIdCallSt
  loc_159AAE8:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159AAF0:     var_16C = CVar(CLng(2)) 'Long
  loc_159AB20:     var_108 = CVar(CStr(var_98.Fields.Item("Name").Value)) 'String
  loc_159AB27:     LateIdCallSt
  loc_159AB41:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159AB49:     var_16C = CVar(CLng(&HC)) 'Long
  loc_159AB79:     var_108 = CVar(CStr(var_98.Fields.Item("Code").Value)) 'String
  loc_159AB80:     LateIdCallSt
  loc_159AB9A:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159ABA2:     var_16C = CVar(CLng(1)) 'Long
  loc_159ABD2:     var_108 = CVar(CStr(var_98.Fields.Item("DispCode").Value)) 'String
  loc_159ABD9:     LateIdCallSt
  loc_159ABF3:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159ABFB:     var_16C = CVar(CLng(4)) 'Long
  loc_159AC2B:     var_108 = CVar(CStr(var_98.Fields.Item("Unit").Value)) 'String
  loc_159AC32:     LateIdCallSt
  loc_159AC4C:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159AC54:     var_16C = CVar(CLng(8)) 'Long
  loc_159AC84:     var_108 = CVar(CStr(var_98.Fields.Item("IssueUnit").Value)) 'String
  loc_159AC8B:     LateIdCallSt
  loc_159ACC1:     var_118 = CVar(CLng(var_AA)) 'Long
  loc_159ACC9:     var_180 = CVar(CLng(6)) 'Long
  loc_159ACF6:     var_14C = CVar(CStr(Format(CVar(var_98.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_159ACFD:     LateIdCallSt
  loc_159AD33:     var_118 = CVar(CLng(var_AA)) 'Long
  loc_159AD3B:     var_180 = CVar(CLng(5)) 'Long
  loc_159AD68:     var_14C = CVar(CStr(Format(CVar(var_94.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_159AD6F:     LateIdCallSt
  loc_159AD89:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159AD91:     var_118 = CVar(CLng(5)) 'Long
  loc_159ADAC:     var_2A8 = Val(CStr(var_250.TextMatrix)))
  loc_159ADB3:     var_180 = CVar(CLng(var_AA)) 'Long
  loc_159ADBB:     var_1C8 = CVar(CLng(6)) 'Long
  loc_159ADCE:     var_C4 = CStr(var_250.TextMatrix))
  loc_159ADDD:     var_260 = CVar(CLng(var_AA)) 'Long
  loc_159ADE5:     var_280 = CVar(CLng(7)) 'Long
  loc_159AE16:     var_190 = CVar(CStr(Format(CVar((var_2A8 * Val(var_C4))), "0.000"))) 'String
  loc_159AE1D:     LateIdCallSt
  loc_159AE63:     var_180 = CVar(CLng(9)) 'Long
  loc_159AE97:     LateIdCallSt
  loc_159AEE2:     Set var_13C = Me.Txt
  loc_159AEE8:     Call 0.Method_Proc_32_88_159B6D80 (CInt(3), var_170, var_C4, var_250, CVar(CStr(Format(CVar(var_94.Fields.Item("Rate")), "0.00000"))), 1, 1)
  loc_159AEF0:     var_180 = Proc_6_38_E69628(CVar(var_94.Fields.Item("VDate")))
  loc_159AF07:     Call Proc_32_108_1066F04(CStr(var_98.Fields.Item("Code").Value), var_C4, var_2A8, CVar(CLng(var_AA)), var_250)
  loc_159AF10:     var_16C = CVar(CLng(var_AA)) 'Long
  loc_159AF18:     var_1A0 = CVar(CLng(&HA)) 'Long
  loc_159AF45:     var_15C = CVar(CStr(Format(CVar(var_2A8), "0.00000"))) 'String
  loc_159AF4C:     LateIdCallSt
  loc_159AF77:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159AF8D:     LateIdCallSt
  loc_159AFA9:     var_D8 = "DiscApp"
  loc_159AFCE:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item(var_D8)), CVar(CLng(&H14)), CVar(CLng(var_AA)), var_250, vbNullString, CVar(CLng(&H18)), var_D8)) 'String
  loc_159AFD5:     LateIdCallSt
  loc_159B020:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(var_AA)), var_250, var_108, var_250)) 'String
  loc_159B027:     LateIdCallSt
  loc_159B072:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159B079:     LateIdCallSt
  loc_159B0C4:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159B0CB:     LateIdCallSt
  loc_159B116:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159B11D:     LateIdCallSt
  loc_159B168:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159B16F:     LateIdCallSt
  loc_159B1BA:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159B1C1:     LateIdCallSt
  loc_159B1F3:     var_118 = CVar(CLng(var_AA)) 'Long
  loc_159B22F:     LateIdCallSt
  loc_159B27E:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_AA)), var_250, CVar(CStr(Format(CVar(var_94.Fields.Item("Amount")), "0.00"))), 1, 1)) 'String
  loc_159B285:     LateIdCallSt
  loc_159B2D0:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(var_AA)), var_250, var_108, CVar(CLng(&HB)))) 'String
  loc_159B2D7:     LateIdCallSt
  loc_159B322:     var_108 = CVar(Proc_6_38_E69628(CVar(var_98.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159B329:     LateIdCallSt
  loc_159B33F:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159B347:     var_118 = CVar(CLng(&H17)) 'Long
  loc_159B356:     LateIdCallSt
  loc_159B362:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159B36A:     var_118 = CVar(CLng(&H16)) 'Long
  loc_159B379:     LateIdCallSt
  loc_159B394:     var_D8 = "TaxStru"
  loc_159B3B9:     var_C0 = Proc_6_38_E69628(CVar(var_98.Fields.Item(var_D8)), "Select * from taxStru where code='", var_108, -1, var_13C, var_250, var_BC)
  loc_159B3CD:     unk_59BA49.Execute var_118 & CStr(var_250.TextMatrix)) & "'", var_D8, var_250
  loc_159B3D8:     Set var_B0 = var_13C
  loc_159B406:     If (var_B0.RecordCount > 0) Then
  loc_159B431:       var_134 = var_B0.Fields.Item("Rate")
  loc_159B440:       Proc_6_39_E7D3A0(var_108, CVar(var_134), CVar(CLng(&H11)), CVar(CLng(var_AA)))
  loc_159B449:       var_128 = CVar(CStr(var_108)) 'String
  loc_159B450:       LateIdCallSt
  loc_159B464:     End If
  loc_159B466:     Set var_250 = Nothing 
  loc_159B470:     var_AA = (var_AA + 1)
  loc_159B476:     var_94.MoveNext
  loc_159B47D:     var_B2 = 0
  loc_159B480:     GoTo loc_159A7FE
  loc_159B483:     ' Referenced from: 159B605
  loc_159B483:   End If
  loc_159B489:   var_136 = var_9C.EOF
  loc_159B492:   If Not(var_136) Then
  loc_159B4A1:     Set var_12C = Me.LblCap
  loc_159B4A7:     Call 0.Method_Proc_32_88_159B6D8C (var_136, var_AA, 1, var_B2, var_AA)
  loc_159B4B2:     For var_2B4 = var_128 To var_136: var_250 = var_2B4 'Integer
  loc_159B4C5:       Set var_12C = Me.LblCap
  loc_159B4CB:       Call 0.Method_Proc_32_88_159B6D80 (var_AA, var_134, CStr(var_250.TextMatrix)), var_128)
  loc_159B4D3:       var_B8 = var_134.Tag
  loc_159B4F9:       var_170 = var_9C.Fields.Item("SunCode")
  loc_159B51D:       If (CVar(CStr(var_250.TextMatrix))) = var_170.Value) Then
  loc_159B558:         Set var_13C = Me.TxtPer
  loc_159B55E:         Call 0.Method_Proc_32_88_159B6D80 (var_AA, var_170, CStr(var_9C.Fields.Item("SValue").Value))
  loc_159B566:         var_170.Text = var_118
  loc_159B5CD:         Set var_13C = Me.TxtGt
  loc_159B5D3:         Call 0.Method_Proc_32_88_159B6D80 (var_AA, var_170, CStr(Format(CVar(var_9C.Fields.Item("Amount")), "0.00")))
  loc_159B5DB:         var_170.Text = 1
  loc_159B5F5:       End If
  loc_159B5F8:     Next var_2B4 'Integer
  loc_159B600:     var_9C.MoveNext
  loc_159B605:     GoTo loc_159B483
  loc_159B608:   End If
  loc_159B61B:   Me.FGrid.FixedRows = 1
  loc_159B623: End If
  loc_159B631: Me.FGrid.Redraw = True
  loc_159B63F: If (var_AA = 1) Then
  loc_159B655:   Me.FGrid.Rows = 1
  loc_159B67B:   var_F8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_159B683:   Set var_134 = Me.FGrid
  loc_159B6B0:   Me.FGrid.FixedRows = 1
  loc_159B6B8: End If
  loc_159B6BD: Call Proc_32_103_17C4004(&H32, FGrid.DispID_10000)
  loc_159B6C7: Set var_94 = Nothing
  loc_159B6CF: Set var_9C = Nothing
  loc_159B6D2: Proc_32_88_159B6D8 = var_F8
End Sub

Public Sub Proc_32_89_14A3B88
  'Data Table: 59BA2C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_D8 As TextBox
  Dim var_E4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_118 As String
  Dim var_12C As MSHFlexGrid
  loc_14A2EDE: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_14A2EF9: Me.FGrid.Top = CVar(CDbl(2030))
  loc_14A2F14: Me.FGrid.Width = CVar(CDbl(16950))
  loc_14A2F53: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_14A2F7B: Me.DGItem.Left = CVar(CDbl(3000))
  loc_14A2F96: Me.DGItem.Top = CVar(CDbl(1000))
  loc_14A2FA9: If (global_104 <> "Yes") Then
  loc_14A2FBD:   Set var_A8 = Me.DGItem
  loc_14A2FDC:   DGItem.DispID_69.Item(1).Width = CDbl(0)
  loc_14A3005:   var_94 = CVar((CDbl(Me.DGItem.Width) - CDbl(2500))) 'Single
  loc_14A300E:   Set var_BC = Me.DGItem
  loc_14A3014:   var_BC.Width = 1
  loc_14A3023: End If
  loc_14A3031: Set var_A8 = Me.Txt
  loc_14A3037: Call 0.Method_Proc_32_89_14A3B880 (CInt(7), var_BC)
  loc_14A3056: Me.DgMR.Left = CVar(var_BC.Left)
  loc_14A3072: Set var_D0 = Me.Txt
  loc_14A3078: Call 0.Method_Proc_32_89_14A3B880 (CInt(7), var_D8)
  loc_14A3093: Set var_A8 = Me.Txt
  loc_14A3099: Call 0.Method_Proc_32_89_14A3B880 (CInt(7), var_BC)
  loc_14A30B1: var_94 = CVar(((var_BC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_14A30C0: Me.DgMR.Top = CVar(var_BC.Left)
  loc_14A30E5: Me.DGRest.Left = CVar(CDbl(3000))
  loc_14A3100: Me.DGRest.Top = CVar(CDbl(1000))
  loc_14A3134: var_94 = CVar((CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width))) 'Single
  loc_14A3143: Me.DGGod.Left = CVar(CDbl(1000))
  loc_14A317A: Me.DGGod.Top = CVar(CDbl(Me.FGrid.Top))
  loc_14A318D: Set var_E4 = Me.FGrid
  loc_14A31A4: global_112 = CStr(CLng(var_E4.BackColor))
  loc_14A31BA: var_E4.Cols = &H23
  loc_14A31C2: var_94 = CVar(CLng(0)) 'Long
  loc_14A31C7: var_F8 = &H190
  loc_14A31D3: LateIdCallSt
  loc_14A31DB: var_94 = 0
  loc_14A31E7: var_F8 = CVar(CLng(&HD)) 'Long
  loc_14A31EC: var_118 = "KSNo"
  loc_14A31F5: LateIdCallSt
  loc_14A3200: var_94 = CVar(CLng(&HD)) 'Long
  loc_14A3205: var_F8 = 0
  loc_14A3211: LateIdCallSt
  loc_14A3219: var_94 = 0
  loc_14A3225: var_F8 = CVar(CLng(1)) 'Long
  loc_14A322A: var_118 = "Item Code"
  loc_14A3233: LateIdCallSt
  loc_14A323E: var_94 = CVar(CLng(1)) 'Long
  loc_14A3249: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A3250: LateIdCallSt
  loc_14A325B: var_94 = CVar(CLng(1)) 'Long
  loc_14A3260: var_F8 = 0
  loc_14A326C: LateIdCallSt
  loc_14A3274: var_94 = 0
  loc_14A3280: var_F8 = CVar(CLng(2)) 'Long
  loc_14A3285: var_118 = "Item Name"
  loc_14A328E: LateIdCallSt
  loc_14A3299: var_94 = CVar(CLng(2)) 'Long
  loc_14A32A4: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A32AB: LateIdCallSt
  loc_14A32B6: var_94 = CVar(CLng(2)) 'Long
  loc_14A32BB: var_F8 = &HC80
  loc_14A32C7: LateIdCallSt
  loc_14A32CF: var_94 = 0
  loc_14A32DB: var_F8 = CVar(CLng(3)) 'Long
  loc_14A32E0: var_118 = "MR.No"
  loc_14A32E9: LateIdCallSt
  loc_14A32F4: var_94 = CVar(CLng(3)) 'Long
  loc_14A32FF: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A3306: LateIdCallSt
  loc_14A3311: var_94 = CVar(CLng(3)) 'Long
  loc_14A331C: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A3323: LateIdCallSt
  loc_14A332E: var_94 = CVar(CLng(3)) 'Long
  loc_14A3333: var_F8 = &H2EE
  loc_14A333F: LateIdCallSt
  loc_14A3347: var_94 = 0
  loc_14A3353: var_F8 = CVar(CLng(4)) 'Long
  loc_14A3358: var_118 = "Unit"
  loc_14A3361: LateIdCallSt
  loc_14A336C: var_94 = CVar(CLng(4)) 'Long
  loc_14A3377: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A337E: LateIdCallSt
  loc_14A3389: var_94 = CVar(CLng(4)) 'Long
  loc_14A338E: var_F8 = &H320
  loc_14A339A: LateIdCallSt
  loc_14A33A2: var_94 = 0
  loc_14A33AE: var_F8 = CVar(CLng(5)) 'Long
  loc_14A33B3: var_118 = "Qty"
  loc_14A33BC: LateIdCallSt
  loc_14A33C7: var_94 = CVar(CLng(5)) 'Long
  loc_14A33D2: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A33D9: LateIdCallSt
  loc_14A33E4: var_94 = CVar(CLng(5)) 'Long
  loc_14A33EF: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A33F6: LateIdCallSt
  loc_14A3401: var_94 = CVar(CLng(5)) 'Long
  loc_14A3406: var_F8 = &H384
  loc_14A3412: LateIdCallSt
  loc_14A341A: var_94 = 0
  loc_14A3426: var_F8 = CVar(CLng(6)) 'Long
  loc_14A342B: var_118 = "Con.Ratio"
  loc_14A3434: LateIdCallSt
  loc_14A343F: var_94 = CVar(CLng(6)) 'Long
  loc_14A344A: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A3451: LateIdCallSt
  loc_14A345C: var_94 = CVar(CLng(6)) 'Long
  loc_14A3467: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A346E: LateIdCallSt
  loc_14A3479: var_94 = CVar(CLng(6)) 'Long
  loc_14A347E: var_F8 = 0
  loc_14A348A: LateIdCallSt
  loc_14A3492: var_94 = 0
  loc_14A349E: var_F8 = CVar(CLng(7)) 'Long
  loc_14A34A3: var_118 = "Wt Qty"
  loc_14A34AC: LateIdCallSt
  loc_14A34B7: var_94 = CVar(CLng(7)) 'Long
  loc_14A34C2: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A34C9: LateIdCallSt
  loc_14A34D4: var_94 = CVar(CLng(7)) 'Long
  loc_14A34DF: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A34E6: LateIdCallSt
  loc_14A34F1: var_94 = CVar(CLng(7)) 'Long
  loc_14A34F6: var_F8 = &H3E8
  loc_14A3502: LateIdCallSt
  loc_14A350A: var_94 = 0
  loc_14A3516: var_F8 = CVar(CLng(8)) 'Long
  loc_14A351B: var_118 = "Wt.Unit"
  loc_14A3524: LateIdCallSt
  loc_14A352F: var_94 = CVar(CLng(8)) 'Long
  loc_14A353A: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A3541: LateIdCallSt
  loc_14A354C: var_94 = CVar(CLng(8)) 'Long
  loc_14A3551: var_F8 = &H320
  loc_14A355D: LateIdCallSt
  loc_14A3565: var_94 = 0
  loc_14A3571: var_F8 = CVar(CLng(9)) 'Long
  loc_14A3576: var_118 = "Rate"
  loc_14A357F: LateIdCallSt
  loc_14A358A: var_94 = CVar(CLng(9)) 'Long
  loc_14A3595: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A359C: LateIdCallSt
  loc_14A35A7: var_94 = CVar(CLng(9)) 'Long
  loc_14A35B2: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A35B9: LateIdCallSt
  loc_14A35C4: var_94 = CVar(CLng(9)) 'Long
  loc_14A35C9: var_F8 = &H4B0
  loc_14A35D5: LateIdCallSt
  loc_14A35DD: var_94 = 0
  loc_14A35E9: var_F8 = CVar(CLng(&HA)) 'Long
  loc_14A35EE: var_118 = "Rate1"
  loc_14A35F7: LateIdCallSt
  loc_14A3602: var_94 = CVar(CLng(&HA)) 'Long
  loc_14A360D: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A3614: LateIdCallSt
  loc_14A361F: var_94 = CVar(CLng(&HA)) 'Long
  loc_14A362A: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A3631: LateIdCallSt
  loc_14A363C: var_94 = CVar(CLng(&HA)) 'Long
  loc_14A3641: var_F8 = 0
  loc_14A364D: LateIdCallSt
  loc_14A3655: var_94 = 0
  loc_14A3661: var_F8 = CVar(CLng(&HB)) 'Long
  loc_14A3666: var_118 = "Amount"
  loc_14A366F: LateIdCallSt
  loc_14A367A: var_94 = CVar(CLng(&HB)) 'Long
  loc_14A3685: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A368C: LateIdCallSt
  loc_14A3697: var_94 = CVar(CLng(&HB)) 'Long
  loc_14A36A2: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A36A9: LateIdCallSt
  loc_14A36B4: var_94 = CVar(CLng(&HB)) 'Long
  loc_14A36B9: var_F8 = &H44C
  loc_14A36C5: LateIdCallSt
  loc_14A36D0: var_94 = CVar(CLng(&HE)) 'Long
  loc_14A36D5: var_F8 = 0
  loc_14A36E1: LateIdCallSt
  loc_14A36EC: var_94 = CVar(CLng(&HC)) 'Long
  loc_14A36F1: var_F8 = 0
  loc_14A36FD: LateIdCallSt
  loc_14A3708: var_94 = CVar(CLng(&HF)) 'Long
  loc_14A370D: var_F8 = 0
  loc_14A3719: LateIdCallSt
  loc_14A3724: var_94 = CVar(CLng(&H10)) 'Long
  loc_14A3729: var_F8 = 0
  loc_14A3735: LateIdCallSt
  loc_14A3740: var_94 = CVar(CLng(&H11)) 'Long
  loc_14A3745: var_F8 = 0
  loc_14A3751: LateIdCallSt
  loc_14A375C: var_94 = CVar(CLng(&H12)) 'Long
  loc_14A3761: var_F8 = 0
  loc_14A376D: LateIdCallSt
  loc_14A3778: var_94 = CVar(CLng(&H13)) 'Long
  loc_14A377D: var_F8 = 0
  loc_14A3789: LateIdCallSt
  loc_14A3794: var_94 = CVar(CLng(&H15)) 'Long
  loc_14A3799: var_F8 = 0
  loc_14A37A5: LateIdCallSt
  loc_14A37B0: var_94 = CVar(CLng(&H14)) 'Long
  loc_14A37B5: var_F8 = 0
  loc_14A37C1: LateIdCallSt
  loc_14A37CC: var_94 = CVar(CLng(&H19)) 'Long
  loc_14A37D1: var_F8 = &H578
  loc_14A37DD: LateIdCallSt
  loc_14A37E8: var_94 = CVar(CLng(&H1A)) 'Long
  loc_14A37ED: var_F8 = 0
  loc_14A37F9: LateIdCallSt
  loc_14A3804: var_94 = CVar(CLng(&H1B)) 'Long
  loc_14A3809: var_F8 = &HBB8
  loc_14A3815: LateIdCallSt
  loc_14A3820: var_94 = CVar(CLng(&H1C)) 'Long
  loc_14A3825: var_F8 = 0
  loc_14A3831: LateIdCallSt
  loc_14A383C: var_94 = CVar(CLng(&H1D)) 'Long
  loc_14A3841: var_F8 = 0
  loc_14A384D: LateIdCallSt
  loc_14A3858: var_94 = CVar(CLng(&H1E)) 'Long
  loc_14A385D: var_F8 = 0
  loc_14A3869: LateIdCallSt
  loc_14A3871: var_94 = 0
  loc_14A387D: var_F8 = CVar(CLng(&HC)) 'Long
  loc_14A3882: var_118 = "Item Code"
  loc_14A388B: LateIdCallSt
  loc_14A3893: var_94 = 0
  loc_14A389F: var_F8 = CVar(CLng(&HF)) 'Long
  loc_14A38A4: var_118 = "Disc %"
  loc_14A38AD: LateIdCallSt
  loc_14A38B5: var_94 = 0
  loc_14A38C1: var_F8 = CVar(CLng(&H10)) 'Long
  loc_14A38C6: var_118 = "Disc Amt."
  loc_14A38CF: LateIdCallSt
  loc_14A38D7: var_94 = 0
  loc_14A38E3: var_F8 = CVar(CLng(&H11)) 'Long
  loc_14A38E8: var_118 = "Tax %"
  loc_14A38F1: LateIdCallSt
  loc_14A38F9: var_94 = 0
  loc_14A3905: var_F8 = CVar(CLng(&H12)) 'Long
  loc_14A390A: var_118 = "Tax Amt"
  loc_14A3913: LateIdCallSt
  loc_14A391B: var_94 = 0
  loc_14A3927: var_F8 = CVar(CLng(&H13)) 'Long
  loc_14A392C: var_118 = "Total"
  loc_14A3935: LateIdCallSt
  loc_14A393D: var_94 = 0
  loc_14A3949: var_F8 = CVar(CLng(&H15)) 'Long
  loc_14A394E: var_118 = "R Off"
  loc_14A3957: LateIdCallSt
  loc_14A395F: var_94 = 0
  loc_14A396B: var_F8 = CVar(CLng(&H14)) 'Long
  loc_14A3970: var_118 = "Disc Y/N"
  loc_14A3979: LateIdCallSt
  loc_14A3981: var_94 = 0
  loc_14A398D: var_F8 = CVar(CLng(&H19)) 'Long
  loc_14A3992: var_118 = "Tax Structure"
  loc_14A399B: LateIdCallSt
  loc_14A39A3: var_94 = 0
  loc_14A39AF: var_F8 = CVar(CLng(&H1A)) 'Long
  loc_14A39B4: var_118 = "Tax Cat Code"
  loc_14A39BD: LateIdCallSt
  loc_14A39C5: var_94 = 0
  loc_14A39D1: var_F8 = CVar(CLng(&H1B)) 'Long
  loc_14A39D6: var_118 = "A/C Name"
  loc_14A39DF: LateIdCallSt
  loc_14A39E7: var_94 = 0
  loc_14A39F3: var_F8 = CVar(CLng(&H1C)) 'Long
  loc_14A39F8: var_118 = "A/C Code"
  loc_14A3A01: LateIdCallSt
  loc_14A3A09: var_94 = 0
  loc_14A3A15: var_F8 = CVar(CLng(&H16)) 'Long
  loc_14A3A1A: var_118 = "Godown"
  loc_14A3A23: LateIdCallSt
  loc_14A3A2E: var_94 = CVar(CLng(&H16)) 'Long
  loc_14A3A39: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A3A40: LateIdCallSt
  loc_14A3A4B: var_94 = CVar(CLng(&H16)) 'Long
  loc_14A3A56: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A3A5D: LateIdCallSt
  loc_14A3A68: var_94 = CVar(CLng(&H16)) 'Long
  loc_14A3A6D: var_F8 = &H802
  loc_14A3A79: LateIdCallSt
  loc_14A3A84: var_94 = CVar(CLng(&H17)) 'Long
  loc_14A3A89: var_F8 = 0
  loc_14A3A95: LateIdCallSt
  loc_14A3AA0: var_94 = CVar(CLng(&H18)) 'Long
  loc_14A3AA5: var_F8 = 0
  loc_14A3AB1: LateIdCallSt
  loc_14A3ABC: var_94 = CVar(CLng(&H1F)) 'Long
  loc_14A3AC1: var_F8 = 0
  loc_14A3ACD: LateIdCallSt
  loc_14A3AD8: var_94 = CVar(CLng(&H20)) 'Long
  loc_14A3ADD: var_F8 = 0
  loc_14A3AE9: LateIdCallSt
  loc_14A3AF4: var_94 = CVar(CLng(&H21)) 'Long
  loc_14A3AF9: var_F8 = 0
  loc_14A3B05: LateIdCallSt
  loc_14A3B10: var_94 = CVar(CLng(&H22)) 'Long
  loc_14A3B15: var_F8 = 0
  loc_14A3B21: LateIdCallSt
  loc_14A3B2B: Set var_E4 = Nothing 
  loc_14A3B33: Set var_12C = Me.FGCat
  loc_14A3B4A: global_112 = CStr(CLng(var_12C.BackColor))
  loc_14A3B57: var_94 = CVar(CLng(3)) 'Long
  loc_14A3B5C: var_F8 = &H7D0
  loc_14A3B68: LateIdCallSt
  loc_14A3B7C: var_12C.Cols = 7
  loc_14A3B83: Set var_12C = Nothing 
  loc_14A3B87: Exit Sub
End Sub

Public Sub Proc_32_90_F74CCC
  'Data Table: 59BA2C
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  loc_F74B90: Set var_88 = Me.TopCtrl1
  loc_F74B96: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F74BAF: If (CStr() = "Browse") Then
  loc_F74BB2:   Exit Sub
  loc_F74BB3: End If
  loc_F74BF2: If ((CLng(Me.FGrid.Row) > 0) And (CLng(Me.FGrid.Col) = CLng(9))) Then
  loc_F74C08:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F74C10:   var_E0 = CVar(CLng(&HE)) 'Long
  loc_F74C43:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_F74C4F:     Call FGrid_UnknownEvent_C(CInt(&HD))
  loc_F74C59:     global_154 = 0
  loc_F74C5F:   Else
  loc_F74C72:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F74C7A:     var_E0 = CVar(CLng(9)) 'Long
  loc_F74CB2:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_F74CBE:       Call FGrid_UnknownEvent_C(CInt(&HD))
  loc_F74CC8:       global_154 = 0
  loc_F74CCB:     End If
  loc_F74CCB:   End If
  loc_F74CCB: End If
  loc_F74CCB: Exit Sub
End Sub

Public Sub Proc_32_91_1AFF42C(arg_C) '1AFF42C
  'Data Table: 59BA2C
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
  Dim unk_59BA49 As Connection15
  Dim var_98 As Recordset15
  Dim var_24C As Double
  Dim var_204 As Variant
  Dim var_94 As Integer
  loc_1AFAF70: If (arg_C = 0) Then
  loc_1AFAF96:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1AFAFB0:     If (Me.RecordCount > 0) Then
  loc_1AFAFB9:       Me.MoveFirst
  loc_1AFAFBE:     End If
  loc_1AFAFD5:     If (Me.RecordCount > 0) Then
  loc_1AFAFE4:       Set var_A0 = Me.TxtGrid
  loc_1AFAFEA:       Call 0.Method_Proc_32_91_1AFF42C0 (0, var_BC, var_C0)
  loc_1AFAFF2:       var_B4 = var_BC.Text
  loc_1AFAFFF:       var_E0 = Val(var_C0)
  loc_1AFB025:       Me.Find "DispCode=" & CStr(var_E0), 0, 1
  loc_1AFB03A:     End If
  loc_1AFB088:     Set var_A0 = Me.TxtGrid
  loc_1AFB08E:     Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1AFB096:     var_D8 = var_BC.Text
  loc_1AFB0AE:     If (var_E0 Or (var_C0 = vbNullString)) Then
  loc_1AFB0C4:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB0CC:       var_104 = CVar(CLng(2)) 'Long
  loc_1AFB0D1:       var_124 = vbNullString
  loc_1AFB0DB:       Set var_BC = Me.FGrid
  loc_1AFB0E1:       LateIdCallSt
  loc_1AFB106:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB10E:       var_104 = CVar(CLng(&HC)) 'Long
  loc_1AFB113:       var_124 = vbNullString
  loc_1AFB11D:       Set var_BC = Me.FGrid
  loc_1AFB123:       LateIdCallSt
  loc_1AFB148:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB150:       var_104 = CVar(CLng(1)) 'Long
  loc_1AFB155:       var_124 = vbNullString
  loc_1AFB15F:       Set var_BC = Me.FGrid
  loc_1AFB165:       LateIdCallSt
  loc_1AFB18A:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB192:       var_104 = CVar(CLng(4)) 'Long
  loc_1AFB197:       var_124 = vbNullString
  loc_1AFB1A1:       Set var_BC = Me.FGrid
  loc_1AFB1A7:       LateIdCallSt
  loc_1AFB1CC:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB1D4:       var_104 = CVar(CLng(1)) 'Long
  loc_1AFB1D9:       var_124 = vbNullString
  loc_1AFB1E3:       Set var_BC = Me.FGrid
  loc_1AFB1E9:       LateIdCallSt
  loc_1AFB20E:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB216:       var_104 = CVar(CLng(9)) 'Long
  loc_1AFB21B:       var_124 = vbNullString
  loc_1AFB225:       Set var_BC = Me.FGrid
  loc_1AFB22B:       LateIdCallSt
  loc_1AFB250:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB258:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1AFB25D:       var_124 = vbNullString
  loc_1AFB267:       Set var_BC = Me.FGrid
  loc_1AFB26D:       LateIdCallSt
  loc_1AFB292:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB29A:       var_104 = CVar(CLng(&H18)) 'Long
  loc_1AFB29F:       var_124 = vbNullString
  loc_1AFB2A9:       Set var_BC = Me.FGrid
  loc_1AFB2AF:       LateIdCallSt
  loc_1AFB2D4:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB2DC:       var_104 = CVar(CLng(&H14)) 'Long
  loc_1AFB2E1:       var_124 = vbNullString
  loc_1AFB2EB:       Set var_BC = Me.FGrid
  loc_1AFB2F1:       LateIdCallSt
  loc_1AFB316:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB31E:       var_104 = CVar(CLng(&H15)) 'Long
  loc_1AFB323:       var_124 = vbNullString
  loc_1AFB32D:       Set var_BC = Me.FGrid
  loc_1AFB333:       LateIdCallSt
  loc_1AFB358:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB360:       var_104 = CVar(CLng(&H1A)) 'Long
  loc_1AFB365:       var_124 = vbNullString
  loc_1AFB36F:       Set var_BC = Me.FGrid
  loc_1AFB375:       LateIdCallSt
  loc_1AFB39A:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB3A2:       var_104 = CVar(CLng(&H19)) 'Long
  loc_1AFB3A7:       var_124 = vbNullString
  loc_1AFB3B1:       Set var_BC = Me.FGrid
  loc_1AFB3B7:       LateIdCallSt
  loc_1AFB3DC:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB3E4:       var_104 = CVar(CLng(&H1C)) 'Long
  loc_1AFB3E9:       var_124 = vbNullString
  loc_1AFB3F3:       Set var_BC = Me.FGrid
  loc_1AFB3F9:       LateIdCallSt
  loc_1AFB41E:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB426:       var_104 = CVar(CLng(&H1B)) 'Long
  loc_1AFB42B:       var_124 = vbNullString
  loc_1AFB435:       Set var_BC = Me.FGrid
  loc_1AFB43B:       LateIdCallSt
  loc_1AFB460:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB468:       var_104 = CVar(CLng(&H1E)) 'Long
  loc_1AFB46D:       var_124 = vbNullString
  loc_1AFB477:       Set var_BC = Me.FGrid
  loc_1AFB47D:       LateIdCallSt
  loc_1AFB492:     Else
  loc_1AFB4AB:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB4B3:       var_104 = CVar(CLng(&HC)) 'Long
  loc_1AFB4CD:       var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1AFB4EB:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB4F3:       var_168 = CVar(CLng(&HC)) 'Long
  loc_1AFB50D:       var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1AFB578:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HC)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1AFB58E:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB596:         var_114 = CVar(CLng(2)) 'Long
  loc_1AFB5C9:         var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1AFB5D1:         Set var_17C = Me.FGrid
  loc_1AFB5D7:         LateIdCallSt
  loc_1AFB606:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB60E:         var_114 = CVar(CLng(&HC)) 'Long
  loc_1AFB641:         var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1AFB649:         Set var_17C = Me.FGrid
  loc_1AFB64F:         LateIdCallSt
  loc_1AFB67E:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB686:         var_114 = CVar(CLng(1)) 'Long
  loc_1AFB6B9:         var_158 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1AFB6C1:         Set var_17C = Me.FGrid
  loc_1AFB6C7:         LateIdCallSt
  loc_1AFB6F6:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB6FE:         var_114 = CVar(CLng(4)) 'Long
  loc_1AFB731:         var_158 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1AFB739:         Set var_17C = Me.FGrid
  loc_1AFB73F:         LateIdCallSt
  loc_1AFB76E:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB776:         var_114 = CVar(CLng(8)) 'Long
  loc_1AFB7A9:         var_158 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1AFB7B1:         Set var_17C = Me.FGrid
  loc_1AFB7B7:         LateIdCallSt
  loc_1AFB7E7:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1AFB7F4:         var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFB7FC:         var_104 = CVar(CLng(0)) 'Long
  loc_1AFB806:         var_B0 = CVar(CStr(var_92)) 'String
  loc_1AFB80E:         Set var_A0 = Me.FGrid
  loc_1AFB814:         LateIdCallSt
  loc_1AFB826:         var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFB82E:         var_104 = CVar(CLng(5)) 'Long
  loc_1AFB848:         var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1AFB85E:         If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1AFB865:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFB86D:           var_104 = CVar(CLng(5)) 'Long
  loc_1AFB872:           var_124 = "1.000"
  loc_1AFB87C:           Set var_A0 = Me.FGrid
  loc_1AFB882:           LateIdCallSt
  loc_1AFB88D:         End If
  loc_1AFB893:         var_D8 = "Code"
  loc_1AFB8A2:         var_A0 = Me.Fields
  loc_1AFB8C5:         Set var_148 = Me.Txt
  loc_1AFB8CB:         Call 0.Method_Proc_32_91_1AFF42C0 (CInt(3), var_17C, var_C4, var_A0, var_124, var_104, var_D8)
  loc_1AFB8D3:         var_104 = var_17C.Text
  loc_1AFB8EA:         Call Proc_32_108_1066F04(CStr(var_A0.Item(var_D8).Value), var_C4, var_E0, var_D8, var_A0)
  loc_1AFB90A:         var_134 = CVar(CLng(9)) 'Long
  loc_1AFB945:         LateIdCallSt
  loc_1AFB98F:         var_BC = Me.Fields.Item("Code")
  loc_1AFB9AA:         Set var_148 = Me.Txt
  loc_1AFB9B0:         Call 0.Method_Proc_32_91_1AFF42C0 (CInt(3), var_17C, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))), 1, 1)
  loc_1AFB9B8:         var_134 = var_17C.Text
  loc_1AFB9CF:         Call Proc_32_108_1066F04(CStr(var_BC.Value), var_C4, var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1AFB9E7:         var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB9EF:         var_134 = CVar(CLng(&HA)) 'Long
  loc_1AFBA1C:         var_1F4 = CVar(CStr(Format(CVar(var_E0), "0.00000"))) 'String
  loc_1AFBA24:         Set var_1E4 = Me.FGrid
  loc_1AFBA2A:         LateIdCallSt
  loc_1AFBA57:       End If
  loc_1AFBA85:       Set var_A0 = Me.Txt
  loc_1AFBA8B:       Call 0.Method_Proc_32_91_1AFF42C0 (CInt(7), var_BC, var_C0, CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), var_1E4, var_1F4)
  loc_1AFBA93:       1 = var_BC.Tag
  loc_1AFBA9B:       var_144 = CVar(var_C0) 'String
  loc_1AFBAA9:       LateIdCallSt
  loc_1AFBACD:       var_144 = Me.FGrid.Row
  loc_1AFBB0E:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_144)), Me.FGrid, var_144, 1)) 'String
  loc_1AFBB1C:       LateIdCallSt
  loc_1AFBB81:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFBB8F:       LateIdCallSt
  loc_1AFBBF4:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFBC02:       LateIdCallSt
  loc_1AFBC67:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFBC75:       LateIdCallSt
  loc_1AFBCDA:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFBCE8:       LateIdCallSt
  loc_1AFBD4D:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFBD5B:       LateIdCallSt
  loc_1AFBD79:       Set var_148 = Me.FGrid
  loc_1AFBDC0:       var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(var_148.Row)), Me.FGrid, var_158)) 'String
  loc_1AFBDC8:       Set var_17C = Me.FGrid
  loc_1AFBDCE:       LateIdCallSt
  loc_1AFBDFB:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFBE03:       var_104 = CVar(CLng(&H17)) 'Long
  loc_1AFBE12:       var_144 = Me.FGrid.TextMatrix)
  loc_1AFBE45:       If (Trim(CVar(CStr(var_144))) = vbNullString) Then
  loc_1AFBE5B:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFBE63:         var_104 = CVar(CLng(&H17)) 'Long
  loc_1AFBE76:         Set var_BC = Me.FGrid
  loc_1AFBE7C:         LateIdCallSt
  loc_1AFBEA1:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFBEA9:         var_104 = CVar(CLng(&H16)) 'Long
  loc_1AFBEBC:         Set var_BC = Me.FGrid
  loc_1AFBEC2:         LateIdCallSt
  loc_1AFBED4:       End If
  loc_1AFBEE7:       var_D8 = "TaxStru"
  loc_1AFBEFE:       var_BC = Me.Fields.Item(var_D8)
  loc_1AFBF0F:       var_C0 = Proc_6_38_E69628(CVar(var_BC), "Select * from taxStru where code='", var_144, -1, var_148, var_BC, global_236)
  loc_1AFBF13:       var_C4 = var_104 & var_C0
  loc_1AFBF23:       unk_59BA49.Execute var_C4 & "'", var_D8, var_BC
  loc_1AFBF2E:       Set var_98 = var_148
  loc_1AFBF5C:       If (var_98.RecordCount > 0) Then
  loc_1AFBF96:         var_BC = var_98.Fields.Item("Rate")
  loc_1AFBFA5:         Proc_6_39_E7D3A0(var_144, CVar(var_BC), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFBFAE:         var_18C = CVar(CStr(var_144)) 'String
  loc_1AFBFB6:         Set var_17C = Me.FGrid
  loc_1AFBFBC:         LateIdCallSt
  loc_1AFBFD8:       End If
  loc_1AFBFDD:       Call Proc_32_103_17C4004(&H32, var_17C, var_18C)
  loc_1AFBFE2:     End If
  loc_1AFBFE5:   Else
  loc_1AFBFEC:     If (var_B4 = CLng(2)) Then
  loc_1AFC03D:       Set var_A0 = Me.TxtGrid
  loc_1AFC043:       Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1AFC04B:       global_232 = var_BC.Text
  loc_1AFC063:       If (var_104 Or (var_C0 = vbNullString)) Then
  loc_1AFC079:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC081:         var_104 = CVar(CLng(2)) 'Long
  loc_1AFC086:         var_124 = vbNullString
  loc_1AFC090:         Set var_BC = Me.FGrid
  loc_1AFC096:         LateIdCallSt
  loc_1AFC0BB:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC0C3:         var_104 = CVar(CLng(&HC)) 'Long
  loc_1AFC0C8:         var_124 = vbNullString
  loc_1AFC0D2:         Set var_BC = Me.FGrid
  loc_1AFC0D8:         LateIdCallSt
  loc_1AFC0FD:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC105:         var_104 = CVar(CLng(1)) 'Long
  loc_1AFC10A:         var_124 = vbNullString
  loc_1AFC114:         Set var_BC = Me.FGrid
  loc_1AFC11A:         LateIdCallSt
  loc_1AFC13F:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC147:         var_104 = CVar(CLng(4)) 'Long
  loc_1AFC14C:         var_124 = vbNullString
  loc_1AFC156:         Set var_BC = Me.FGrid
  loc_1AFC15C:         LateIdCallSt
  loc_1AFC181:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC189:         var_104 = CVar(CLng(1)) 'Long
  loc_1AFC18E:         var_124 = vbNullString
  loc_1AFC198:         Set var_BC = Me.FGrid
  loc_1AFC19E:         LateIdCallSt
  loc_1AFC1C3:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC1CB:         var_104 = CVar(CLng(9)) 'Long
  loc_1AFC1D0:         var_124 = vbNullString
  loc_1AFC1DA:         Set var_BC = Me.FGrid
  loc_1AFC1E0:         LateIdCallSt
  loc_1AFC205:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC20D:         var_104 = CVar(CLng(&HA)) 'Long
  loc_1AFC212:         var_124 = vbNullString
  loc_1AFC21C:         Set var_BC = Me.FGrid
  loc_1AFC222:         LateIdCallSt
  loc_1AFC247:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC24F:         var_104 = CVar(CLng(&H18)) 'Long
  loc_1AFC254:         var_124 = vbNullString
  loc_1AFC25E:         Set var_BC = Me.FGrid
  loc_1AFC264:         LateIdCallSt
  loc_1AFC289:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC291:         var_104 = CVar(CLng(&H1E)) 'Long
  loc_1AFC296:         var_124 = vbNullString
  loc_1AFC2A0:         Set var_BC = Me.FGrid
  loc_1AFC2A6:         LateIdCallSt
  loc_1AFC2CB:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC2D3:         var_104 = CVar(CLng(6)) 'Long
  loc_1AFC2D8:         var_124 = vbNullString
  loc_1AFC2E2:         Set var_BC = Me.FGrid
  loc_1AFC2E8:         LateIdCallSt
  loc_1AFC30D:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC315:         var_104 = CVar(CLng(&H19)) 'Long
  loc_1AFC31A:         var_124 = vbNullString
  loc_1AFC324:         Set var_BC = Me.FGrid
  loc_1AFC32A:         LateIdCallSt
  loc_1AFC34F:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC357:         var_104 = CVar(CLng(&H1A)) 'Long
  loc_1AFC35C:         var_124 = vbNullString
  loc_1AFC366:         Set var_BC = Me.FGrid
  loc_1AFC36C:         LateIdCallSt
  loc_1AFC391:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC399:         var_104 = CVar(CLng(&H1B)) 'Long
  loc_1AFC39E:         var_124 = vbNullString
  loc_1AFC3A8:         Set var_BC = Me.FGrid
  loc_1AFC3AE:         LateIdCallSt
  loc_1AFC3D3:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC3DB:         var_104 = CVar(CLng(&H1C)) 'Long
  loc_1AFC3E0:         var_124 = vbNullString
  loc_1AFC3EA:         Set var_BC = Me.FGrid
  loc_1AFC3F0:         LateIdCallSt
  loc_1AFC405:       Else
  loc_1AFC413:         Set var_A0 = Me.Txt
  loc_1AFC419:         Call 0.Method_Proc_32_91_1AFF42C0 (CInt(7), var_BC, var_C0, var_BC, var_124, var_104, var_D8)
  loc_1AFC421:         var_BC = var_BC.Text
  loc_1AFC43D:         If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1AFC454:           var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1AFC470:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC478:           var_114 = CVar(CLng(2)) 'Long
  loc_1AFC4AB:           var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1AFC4B3:           Set var_17C = Me.FGrid
  loc_1AFC4B9:           LateIdCallSt
  loc_1AFC4E8:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC4F0:           var_114 = CVar(CLng(&HC)) 'Long
  loc_1AFC523:           var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1AFC52B:           Set var_17C = Me.FGrid
  loc_1AFC531:           LateIdCallSt
  loc_1AFC560:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC568:           var_114 = CVar(CLng(1)) 'Long
  loc_1AFC59B:           var_158 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1AFC5A3:           Set var_17C = Me.FGrid
  loc_1AFC5A9:           LateIdCallSt
  loc_1AFC5D8:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC5E0:           var_114 = CVar(CLng(4)) 'Long
  loc_1AFC613:           var_158 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1AFC61B:           Set var_17C = Me.FGrid
  loc_1AFC621:           LateIdCallSt
  loc_1AFC650:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC658:           var_114 = CVar(CLng(8)) 'Long
  loc_1AFC68B:           var_158 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1AFC693:           Set var_17C = Me.FGrid
  loc_1AFC699:           LateIdCallSt
  loc_1AFC6E7:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC6EF:           var_124 = CVar(CLng(6)) 'Long
  loc_1AFC71C:           var_1A0 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1AFC724:           Set var_17C = Me.FGrid
  loc_1AFC72A:           LateIdCallSt
  loc_1AFC75C:           var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1AFC769:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFC771:           var_104 = CVar(CLng(0)) 'Long
  loc_1AFC77B:           var_B0 = CVar(CStr(var_92)) 'String
  loc_1AFC783:           Set var_A0 = Me.FGrid
  loc_1AFC789:           LateIdCallSt
  loc_1AFC79B:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFC7A3:           var_104 = CVar(CLng(5)) 'Long
  loc_1AFC7BD:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1AFC7D3:           If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1AFC7DA:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFC7E2:             var_104 = CVar(CLng(5)) 'Long
  loc_1AFC7E7:             var_124 = "1.000"
  loc_1AFC7F1:             Set var_A0 = Me.FGrid
  loc_1AFC7F7:             LateIdCallSt
  loc_1AFC802:           End If
  loc_1AFC808:           var_D8 = "Code"
  loc_1AFC817:           var_A0 = Me.Fields
  loc_1AFC83A:           Set var_148 = Me.Txt
  loc_1AFC840:           Call 0.Method_Proc_32_91_1AFF42C0 (CInt(3), var_17C, var_C4, var_A0, var_124, var_104, var_D8)
  loc_1AFC848:           var_104 = var_17C.Text
  loc_1AFC85F:           Call Proc_32_108_1066F04(CStr(var_A0.Item(var_D8).Value), var_C4, var_E0, var_D8, var_A0)
  loc_1AFC87F:           var_134 = CVar(CLng(9)) 'Long
  loc_1AFC8BA:           LateIdCallSt
  loc_1AFC904:           var_BC = Me.Fields.Item("Code")
  loc_1AFC91F:           Set var_148 = Me.Txt
  loc_1AFC925:           Call 0.Method_Proc_32_91_1AFF42C0 (CInt(3), var_17C, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))), 1, 1)
  loc_1AFC92D:           var_134 = var_17C.Text
  loc_1AFC944:           Call Proc_32_108_1066F04(CStr(var_BC.Value), var_C4, var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1AFC95C:           var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC964:           var_134 = CVar(CLng(&HA)) 'Long
  loc_1AFC99F:           LateIdCallSt
  loc_1AFC9FA:           Set var_A0 = Me.Txt
  loc_1AFCA00:           Call 0.Method_Proc_32_91_1AFF42C0 (CInt(7), var_BC, var_C0, CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))))
  loc_1AFCA08:           1 = var_BC.Tag
  loc_1AFCA10:           var_144 = CVar(var_C0) 'String
  loc_1AFCA1E:           LateIdCallSt
  loc_1AFCA42:           var_144 = Me.FGrid.Row
  loc_1AFCA83:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_144)), Me.FGrid, var_144, 1)) 'String
  loc_1AFCA91:           LateIdCallSt
  loc_1AFCAF6:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFCB04:           LateIdCallSt
  loc_1AFCB69:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFCB77:           LateIdCallSt
  loc_1AFCBDC:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFCBEA:           LateIdCallSt
  loc_1AFCC4F:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFCC5D:           LateIdCallSt
  loc_1AFCCC2:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFCCD0:           LateIdCallSt
  loc_1AFCD35:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFCD3D:           Set var_17C = Me.FGrid
  loc_1AFCD43:           LateIdCallSt
  loc_1AFCD70:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFCD78:           var_104 = CVar(CLng(&H17)) 'Long
  loc_1AFCDBA:           If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1AFCDD0:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFCDD8:             var_104 = CVar(CLng(&H17)) 'Long
  loc_1AFCDEB:             Set var_BC = Me.FGrid
  loc_1AFCDF1:             LateIdCallSt
  loc_1AFCE16:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFCE1E:             var_104 = CVar(CLng(&H16)) 'Long
  loc_1AFCE31:             Set var_BC = Me.FGrid
  loc_1AFCE37:             LateIdCallSt
  loc_1AFCE49:           End If
  loc_1AFCE4D:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFCE55:           var_104 = CVar(CLng(5)) 'Long
  loc_1AFCE77:           var_E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AFCE8D:           var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFCE95:           var_168 = CVar(CLng(&HA)) 'Long
  loc_1AFCEB7:           var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AFCF14:           LateIdCallSt
  loc_1AFCF8E:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar((var_E0 * var_24C)), "0.00"))), 1, 1)) 'String
  loc_1AFCF9C:           LateIdCallSt
  loc_1AFD001:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158, CVar(CLng(&HB)))) 'String
  loc_1AFD00F:           LateIdCallSt
  loc_1AFD074:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFD082:           LateIdCallSt
  loc_1AFD0A0:           Set var_148 = Me.FGrid
  loc_1AFD0A6:           var_144 = var_148.Row
  loc_1AFD0E7:           var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_144)), Me.FGrid, var_158)) 'String
  loc_1AFD0F5:           LateIdCallSt
  loc_1AFD14A:           var_C0 = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_144, -1, var_148, Me.FGrid)
  loc_1AFD15E:           unk_59BA49.Execute var_158 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(Me.FGrid.Row)), var_24C
  loc_1AFD169:           Set var_98 = var_148
  loc_1AFD197:           If (var_98.RecordCount > 0) Then
  loc_1AFD1E0:             Proc_6_39_E7D3A0(var_144, CVar(var_98.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFD1E9:             var_18C = CVar(CStr(var_144)) 'String
  loc_1AFD1F1:             Set var_17C = Me.FGrid
  loc_1AFD1F7:             LateIdCallSt
  loc_1AFD213:           End If
  loc_1AFD218:           Call Proc_32_103_17C4004(&H32, var_17C, var_18C)
  loc_1AFD220:         Else
  loc_1AFD239:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFD241:           var_104 = CVar(CLng(&HC)) 'Long
  loc_1AFD25B:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1AFD29B:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1AFD2E2:           Set var_250 = Me.TopCtrl1
  loc_1AFD2E8:           Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005((CVar(CLng(&HC)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString)))
  loc_1AFD327:           If (CVar(CLng(Me.FGrid.Row)) Or ((CVar(CLng(&HC)) = var_C4) And (CStr(CVar(CLng(Me.FGrid.Row))) = "Add"))) Then
  loc_1AFD33E:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1AFD35A:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFD362:             var_114 = CVar(CLng(2)) 'Long
  loc_1AFD395:             var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1AFD39D:             Set var_17C = Me.FGrid
  loc_1AFD3A3:             LateIdCallSt
  loc_1AFD3D2:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFD3DA:             var_114 = CVar(CLng(&HC)) 'Long
  loc_1AFD40D:             var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1AFD415:             Set var_17C = Me.FGrid
  loc_1AFD41B:             LateIdCallSt
  loc_1AFD44A:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFD452:             var_114 = CVar(CLng(1)) 'Long
  loc_1AFD485:             var_158 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1AFD48D:             Set var_17C = Me.FGrid
  loc_1AFD493:             LateIdCallSt
  loc_1AFD4C2:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFD4CA:             var_114 = CVar(CLng(4)) 'Long
  loc_1AFD4FD:             var_158 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1AFD505:             Set var_17C = Me.FGrid
  loc_1AFD50B:             LateIdCallSt
  loc_1AFD53A:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFD542:             var_114 = CVar(CLng(8)) 'Long
  loc_1AFD575:             var_158 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1AFD57D:             Set var_17C = Me.FGrid
  loc_1AFD583:             LateIdCallSt
  loc_1AFD5D1:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFD5D9:             var_124 = CVar(CLng(6)) 'Long
  loc_1AFD606:             var_1A0 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1AFD60E:             Set var_17C = Me.FGrid
  loc_1AFD614:             LateIdCallSt
  loc_1AFD646:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1AFD653:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFD65B:             var_104 = CVar(CLng(0)) 'Long
  loc_1AFD665:             var_B0 = CVar(CStr(var_92)) 'String
  loc_1AFD66D:             Set var_A0 = Me.FGrid
  loc_1AFD673:             LateIdCallSt
  loc_1AFD685:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFD68D:             var_104 = CVar(CLng(5)) 'Long
  loc_1AFD6A7:             var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1AFD6BD:             If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1AFD6C4:               var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFD6CC:               var_104 = CVar(CLng(5)) 'Long
  loc_1AFD6D1:               var_124 = "1.000"
  loc_1AFD6DB:               Set var_A0 = Me.FGrid
  loc_1AFD6E1:               LateIdCallSt
  loc_1AFD6EC:             End If
  loc_1AFD6F2:             var_D8 = "Code"
  loc_1AFD701:             var_A0 = Me.Fields
  loc_1AFD724:             Set var_148 = Me.Txt
  loc_1AFD72A:             Call 0.Method_Proc_32_91_1AFF42C0 (CInt(3), var_17C, var_C4, var_A0, var_124, var_104, var_D8)
  loc_1AFD732:             var_104 = var_17C.Text
  loc_1AFD749:             Call Proc_32_108_1066F04(CStr(var_A0.Item(var_D8).Value), var_C4, var_E0, var_D8, var_A0)
  loc_1AFD769:             var_134 = CVar(CLng(9)) 'Long
  loc_1AFD7A4:             LateIdCallSt
  loc_1AFD7EE:             var_BC = Me.Fields.Item("Code")
  loc_1AFD809:             Set var_148 = Me.Txt
  loc_1AFD80F:             Call 0.Method_Proc_32_91_1AFF42C0 (CInt(3), var_17C, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))), 1, 1)
  loc_1AFD817:             var_134 = var_17C.Text
  loc_1AFD82E:             Call Proc_32_108_1066F04(CStr(var_BC.Value), var_C4, var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1AFD846:             var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFD84E:             var_134 = CVar(CLng(&HA)) 'Long
  loc_1AFD889:             LateIdCallSt
  loc_1AFD8E4:             Set var_A0 = Me.Txt
  loc_1AFD8EA:             Call 0.Method_Proc_32_91_1AFF42C0 (CInt(7), var_BC, var_C0, CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))))
  loc_1AFD8F2:             1 = var_BC.Tag
  loc_1AFD8FA:             var_144 = CVar(var_C0) 'String
  loc_1AFD908:             LateIdCallSt
  loc_1AFD92C:             var_144 = Me.FGrid.Row
  loc_1AFD96D:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_144)), Me.FGrid, var_144, 1)) 'String
  loc_1AFD97B:             LateIdCallSt
  loc_1AFD9E0:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFD9EE:             LateIdCallSt
  loc_1AFDA53:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFDA61:             LateIdCallSt
  loc_1AFDAC6:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFDAD4:             LateIdCallSt
  loc_1AFDB39:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFDB47:             LateIdCallSt
  loc_1AFDBAC:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFDBBA:             LateIdCallSt
  loc_1AFDC1F:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFDC27:             Set var_17C = Me.FGrid
  loc_1AFDC2D:             LateIdCallSt
  loc_1AFDC5A:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFDC62:             var_104 = CVar(CLng(&H17)) 'Long
  loc_1AFDCA4:             If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1AFDCBA:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFDCC2:               var_104 = CVar(CLng(&H17)) 'Long
  loc_1AFDCD5:               Set var_BC = Me.FGrid
  loc_1AFDCDB:               LateIdCallSt
  loc_1AFDD00:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFDD08:               var_104 = CVar(CLng(&H16)) 'Long
  loc_1AFDD1B:               Set var_BC = Me.FGrid
  loc_1AFDD21:               LateIdCallSt
  loc_1AFDD33:             End If
  loc_1AFDD37:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFDD3F:             var_104 = CVar(CLng(5)) 'Long
  loc_1AFDD77:             var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFDD7F:             var_168 = CVar(CLng(&HA)) 'Long
  loc_1AFDDA1:             var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AFDDFE:             LateIdCallSt
  loc_1AFDE78:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_24C)), "0.00"))), 1, 1)) 'String
  loc_1AFDE86:             LateIdCallSt
  loc_1AFDEEB:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158, CVar(CLng(&HB)))) 'String
  loc_1AFDEF9:             LateIdCallSt
  loc_1AFDF5E:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFDF6C:             LateIdCallSt
  loc_1AFDF8A:             Set var_148 = Me.FGrid
  loc_1AFDF90:             var_144 = var_148.Row
  loc_1AFDFD1:             var_158 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_144)), Me.FGrid, var_158)) 'String
  loc_1AFDFDF:             LateIdCallSt
  loc_1AFE034:             var_C0 = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_144, -1, var_148, Me.FGrid)
  loc_1AFE038:             var_C4 = var_158 & CStr(Me.FGrid.TextMatrix))
  loc_1AFE048:             unk_59BA49.Execute var_C4 & "'", CVar(CLng(Me.FGrid.Row)), var_24C
  loc_1AFE053:             Set var_98 = var_148
  loc_1AFE081:             If (var_98.RecordCount > 0) Then
  loc_1AFE0CA:               Proc_6_39_E7D3A0(var_144, CVar(var_98.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFE0D3:               var_18C = CVar(CStr(var_144)) 'String
  loc_1AFE0DB:               Set var_17C = Me.FGrid
  loc_1AFE0E1:               LateIdCallSt
  loc_1AFE0FD:             End If
  loc_1AFE102:             Call Proc_32_103_17C4004(&H32, var_17C, var_18C)
  loc_1AFE107:           End If
  loc_1AFE107:         End If
  loc_1AFE107:       End If
  loc_1AFE11A:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFE122:       var_104 = CVar(CLng(&HC)) 'Long
  loc_1AFE12B:       Set var_BC = Me.FGrid
  loc_1AFE131:       var_144 = var_BC.TextMatrix)
  loc_1AFE150:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFE158:       var_168 = CVar(CLng(5)) 'Long
  loc_1AFE161:       Set var_17C = Me.FGrid
  loc_1AFE17A:       var_24C = Val(CStr(var_17C.TextMatrix)))
  loc_1AFE1D8:       var_94 = Proc_96_27_11F256C(CStr(var_144), var_24C, MemVar_1F95070, CStr(Me.FGrid.TextMatrix)), global_56, Me.FGrid.TextMatrix), CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFE212:       Me.LblCurStockStr.Caption = global_56
  loc_1AFE21D:     Else
  loc_1AFE224:       If Not (var_B4 = CLng(5)) Then
  loc_1AFE22E:         If (var_B4 = CLng(6)) Then
  loc_1AFE231:         End If
  loc_1AFE23B:         Set var_A0 = Me.TxtGrid
  loc_1AFE241:         Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, var_94, var_24C, var_168, var_124)
  loc_1AFE259:         If Not(IsNumeric(CVar(var_BC))) Then
  loc_1AFE26D:           Set var_A0 = Me.TxtGrid
  loc_1AFE273:           Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, CStr(0), var_144)
  loc_1AFE27B:           var_BC.Text = var_104
  loc_1AFE28A:         End If
  loc_1AFE294:         var_158 = Me.FGrid.Row
  loc_1AFE29D:         var_124 = CVar(CLng(var_158)) 'Long
  loc_1AFE2B4:         var_18C = Me.FGrid.TextMatrix)
  loc_1AFE2C7:         var_E0 = Val(CStr(var_18C))
  loc_1AFE2EE:         Set var_BC = Me.FGrid
  loc_1AFE2F4:         var_144 = var_BC.TextMatrix)
  loc_1AFE2FF:         var_C0 = CStr(var_144)
  loc_1AFE318:         Set var_148 = Me.TxtGrid
  loc_1AFE31E:         Call 0.Method_Proc_32_91_1AFF42C0 (0, var_17C, var_C4, (CDbl(Val(var_C0)) > CDbl(0)), CVar(CLng(&H22)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFE35D:         If (CVar(CLng(&H22)) And (CDbl(Val(var_C4)) > CDbl(var_17C.Text))) Then
  loc_1AFE379:           MsgBox("Quantity Can't be greater the MRN Quantity ", 0, var_144, var_158, var_18C)
  loc_1AFE38E:           Proc_32_91_1AFF42C = 0
  loc_1AFE394:         End If
  loc_1AFE3B1:         If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_1AFE3C0:           Set var_A0 = Me.TxtGrid
  loc_1AFE3C6:           Call 0.Method_Proc_32_91_1AFF42C0 (0, var_BC, var_C0, var_124)
  loc_1AFE3CE:           var_D8 = var_BC.Text
  loc_1AFE3DB:           var_E0 = Val(var_C0)
  loc_1AFE3F3:           If (global_208 <> CDbl(var_E0)) Then
  loc_1AFE425:             If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_144, var_158, var_18C) = 7) Then
  loc_1AFE430:               var_C0 = CStr(global_208)
  loc_1AFE43C:               Set var_A0 = Me.TxtGrid
  loc_1AFE442:               Call 0.Method_Proc_32_91_1AFF42C0 (0, var_BC, var_C0)
  loc_1AFE44A:               var_BC.Text = var_E0
  loc_1AFE459:             End If
  loc_1AFE459:           End If
  loc_1AFE459:         End If
  loc_1AFE476:         If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_1AFE485:           Set var_A0 = Me.TxtGrid
  loc_1AFE48B:           Call 0.Method_Proc_32_91_1AFF42C0 (0, var_BC, var_C0)
  loc_1AFE493:           var_168 = var_BC.Text
  loc_1AFE4AB:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFE4C3:           var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1AFE4EF:           var_1F4 = CVar(CStr(Format(CVar(var_C0), "0.00000"))) 'String
  loc_1AFE4F7:           Set var_190 = Me.FGrid
  loc_1AFE4FD:           LateIdCallSt
  loc_1AFE524:         Else
  loc_1AFE530:           Set var_A0 = Me.TxtGrid
  loc_1AFE536:           Call 0.Method_Proc_32_91_1AFF42C0 (0, var_BC, var_C0, var_190, var_1F4)
  loc_1AFE53E:           1 = var_BC.Text
  loc_1AFE556:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFE56E:           var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1AFE59A:           var_1F4 = CVar(CStr(Format(CVar(var_C0), "0.000"))) 'String
  loc_1AFE5A2:           Set var_190 = Me.FGrid
  loc_1AFE5A8:           LateIdCallSt
  loc_1AFE5CC:         End If
  loc_1AFE5DF:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFE5E7:         var_104 = CVar(CLng(&HC)) 'Long
  loc_1AFE5F0:         Set var_BC = Me.FGrid
  loc_1AFE5F6:         var_144 = var_BC.TextMatrix)
  loc_1AFE63F:         var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AFE69D:         var_94 = Proc_96_27_11F256C(CStr(var_144), var_24C, MemVar_1F95070, CStr(Me.FGrid.TextMatrix)), global_56, Me.FGrid.TextMatrix), CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFE6D7:         Me.LblCurStockStr.Caption = global_56
  loc_1AFE6E4:         Call Proc_32_103_17C4004(&H32, var_94, var_24C, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFE6EC:       Else
  loc_1AFE6F3:         If (var_B4 = CLng(9)) Then
  loc_1AFE700:           Set var_A0 = Me.TxtGrid
  loc_1AFE706:           Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, var_144, var_104)
  loc_1AFE71E:           If Not(IsNumeric(CVar(var_BC))) Then
  loc_1AFE725:             var_C0 = CStr(0)
  loc_1AFE732:             Set var_A0 = Me.TxtGrid
  loc_1AFE738:             Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, var_C0)
  loc_1AFE740:             var_BC.Text = var_D8
  loc_1AFE74F:           End If
  loc_1AFE75C:           Set var_A0 = Me.TxtGrid
  loc_1AFE762:           Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, var_C0)
  loc_1AFE76A:           var_190 = var_BC.Text
  loc_1AFE78D:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFE7A5:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1AFE7E0:           LateIdCallSt
  loc_1AFE80C:           Call Proc_32_103_17C4004(&H32, Me.FGrid, CVar(CStr(Format(CVar(Val(var_C0)), "0.00000"))), 1, 1)
  loc_1AFE814:         Else
  loc_1AFE81B:           If (var_B4 = CLng(&HB)) Then
  loc_1AFE828:             Set var_A0 = Me.TxtGrid
  loc_1AFE82E:             Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, var_124)
  loc_1AFE846:             If Not(IsNumeric(CVar(var_BC))) Then
  loc_1AFE84D:               var_C0 = CStr(0)
  loc_1AFE85A:               Set var_A0 = Me.TxtGrid
  loc_1AFE860:               Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, var_C0)
  loc_1AFE868:               var_BC.Text = var_104
  loc_1AFE877:             End If
  loc_1AFE884:             Set var_A0 = Me.TxtGrid
  loc_1AFE88A:             Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, var_C0)
  loc_1AFE892:             var_E0 = var_BC.Text
  loc_1AFE8B5:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFE8CD:             var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1AFE908:             LateIdCallSt
  loc_1AFE953:             Set var_BC = Me.FGrid
  loc_1AFE964:             var_C0 = CStr(var_BC.TextMatrix))
  loc_1AFE982:             If (CDbl(Val(var_C0)) <> CDbl(0)) Then
  loc_1AFE992:               Set var_A0 = Me.TxtGrid
  loc_1AFE998:               Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, var_C0, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(Val(var_C0)), "0.00"))))
  loc_1AFE9A0:               1 = var_BC.Text
  loc_1AFE9C3:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFE9CB:               var_104 = CVar(CLng(5)) 'Long
  loc_1AFE9ED:               var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AFEA03:               var_168 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFEA0B:               var_1B0 = CVar(CLng(9)) 'Long
  loc_1AFEA3C:               var_204 = CVar(CStr(Format(CVar((Val(var_C0) / var_24C)), "0.00000"))) 'String
  loc_1AFEA44:               Set var_1E4 = Me.FGrid
  loc_1AFEA4A:               LateIdCallSt
  loc_1AFEA79:             End If
  loc_1AFEA7E:             Call Proc_32_103_17C4004(&H32, var_1E4, var_204, 1, 1, var_1B0, var_168, var_24C)
  loc_1AFEA86:           Else
  loc_1AFEA8D:             If (var_B4 = CLng(&H16)) Then
  loc_1AFEADE:               Set var_A0 = Me.TxtGrid
  loc_1AFEAE4:               Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_104, var_D8)
  loc_1AFEAEC:               var_E0 = var_BC.Text
  loc_1AFEB04:               If (1 Or (var_C0 = vbNullString)) Then
  loc_1AFEB1A:                 var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFEB22:                 var_104 = CVar(CLng(&H16)) 'Long
  loc_1AFEB27:                 var_124 = vbNullString
  loc_1AFEB31:                 Set var_BC = Me.FGrid
  loc_1AFEB37:                 LateIdCallSt
  loc_1AFEB5C:                 var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFEB64:                 var_104 = CVar(CLng(&H17)) 'Long
  loc_1AFEB69:                 var_124 = vbNullString
  loc_1AFEB73:                 Set var_BC = Me.FGrid
  loc_1AFEB79:                 LateIdCallSt
  loc_1AFEB8E:               Else
  loc_1AFEBA1:                 var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFEBA9:                 var_114 = CVar(CLng(&H16)) 'Long
  loc_1AFEBDC:                 var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1AFEBE4:                 Set var_17C = Me.FGrid
  loc_1AFEBEA:                 LateIdCallSt
  loc_1AFEC19:                 var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFEC21:                 var_114 = CVar(CLng(&H17)) 'Long
  loc_1AFEC54:                 var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1AFEC5C:                 Set var_17C = Me.FGrid
  loc_1AFEC62:                 LateIdCallSt
  loc_1AFEC7E:               End If
  loc_1AFECB3:               var_158 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1AFECB9:               var_18C = Trim(var_158)
  loc_1AFECDB:               If (var_18C = vbNullString) Then
  loc_1AFECE4:                 Call 0.Method_arg_50 (var_C0, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), var_17C, var_158, var_114, var_F4, var_17C)
  loc_1AFED05:                 MsgBox("Godown Required", &H40, CVar(var_C0), var_158, var_18C)
  loc_1AFED1A:                 Proc_32_91_1AFF42C = 0
  loc_1AFED20:               End If
  loc_1AFED54:               global_232 = CStr(Me.Fields.Item("Code").Value)
  loc_1AFED99:               global_236 = CStr(Me.Fields.Item("Name").Value)
  loc_1AFEDBD:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFEDC5:               var_104 = CVar(CLng(&HC)) 'Long
  loc_1AFEDCE:               Set var_BC = Me.FGrid
  loc_1AFEDD4:               var_144 = var_BC.TextMatrix)
  loc_1AFEDF3:               var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFEDFB:               var_168 = CVar(CLng(5)) 'Long
  loc_1AFEE15:               var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1AFEE1D:               var_24C = Val(var_C0)
  loc_1AFEE7B:               var_94 = Proc_96_27_11F256C(CStr(var_144), var_24C, MemVar_1F95070, CStr(Me.FGrid.TextMatrix)), global_56, Me.FGrid.TextMatrix), CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFEEB5:               Me.LblCurStockStr.Caption = global_56
  loc_1AFEEC0:             Else
  loc_1AFEEC7:               If (var_B4 = CLng(&H19)) Then
  loc_1AFEF21:                 Set var_A0 = Me.TxtGrid
  loc_1AFEF27:                 Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, var_C0, ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))), var_94, var_24C, var_168)
  loc_1AFEF2F:                 var_124 = var_BC.Text
  loc_1AFEF47:                 If (var_144 Or (var_C0 = vbNullString)) Then
  loc_1AFEF5D:                   var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFEF65:                   var_104 = CVar(CLng(&H19)) 'Long
  loc_1AFEF6A:                   var_124 = vbNullString
  loc_1AFEF74:                   Set var_BC = Me.FGrid
  loc_1AFEF7A:                   LateIdCallSt
  loc_1AFEF9F:                   var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFEFA7:                   var_104 = CVar(CLng(&H1A)) 'Long
  loc_1AFEFAC:                   var_124 = vbNullString
  loc_1AFEFB6:                   Set var_BC = Me.FGrid
  loc_1AFEFBC:                   LateIdCallSt
  loc_1AFEFD1:                 Else
  loc_1AFEFDB:                   var_B0 = Me.FGrid.Row
  loc_1AFEFE4:                   var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1AFEFEC:                   var_114 = CVar(CLng(&H19)) 'Long
  loc_1AFF022:                   var_158 = CVar(CStr(Me.var_B0.Fields.Item("Name").Value)) 'String
  loc_1AFF02A:                   Set var_17C = Me.FGrid
  loc_1AFF030:                   LateIdCallSt
  loc_1AFF056:                   var_B0 = Me.FGrid.Row
  loc_1AFF05F:                   var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1AFF067:                   var_114 = CVar(CLng(&H1A)) 'Long
  loc_1AFF09D:                   var_158 = CVar(CStr(Me.var_B0.Fields.Item("Code").Value)) 'String
  loc_1AFF0A5:                   Set var_17C = Me.FGrid
  loc_1AFF0AB:                   LateIdCallSt
  loc_1AFF0C7:                 End If
  loc_1AFF0EB:                 Set var_BC = Me.FGrid
  loc_1AFF0FC:                 var_158 = CVar(CStr(var_BC.TextMatrix))) 'String
  loc_1AFF102:                 var_18C = Trim(var_158)
  loc_1AFF10A:                 var_124 = vbNullString
  loc_1AFF124:                 If (var_18C = var_124) Then
  loc_1AFF12D:                   Call 0.Method_arg_50 (var_C0, CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), var_17C, var_158, var_114, var_F4, var_17C)
  loc_1AFF14E:                   MsgBox("Tax Structure is  Required", &H40, CVar(var_C0), var_158, var_18C)
  loc_1AFF163:                   Proc_32_91_1AFF42C = 0
  loc_1AFF169:                 End If
  loc_1AFF16E:                 Call Proc_32_103_17C4004(&H32, var_158, var_114, var_F4)
  loc_1AFF176:               Else
  loc_1AFF17D:                 If (var_B4 = CLng(&H1B)) Then
  loc_1AFF1D7:                   Set var_A0 = Me.TxtGrid
  loc_1AFF1DD:                   Call 0.Method_Proc_32_91_1AFF42C0 (arg_C, var_BC, var_C0, ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1AFF1E5:                   var_BC = var_BC.Text
  loc_1AFF1FD:                   If (var_124 Or (var_C0 = vbNullString)) Then
  loc_1AFF213:                     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFF21B:                     var_104 = CVar(CLng(&H1B)) 'Long
  loc_1AFF220:                     var_124 = vbNullString
  loc_1AFF22A:                     Set var_BC = Me.FGrid
  loc_1AFF230:                     LateIdCallSt
  loc_1AFF255:                     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFF25D:                     var_104 = CVar(CLng(&H1C)) 'Long
  loc_1AFF262:                     var_124 = vbNullString
  loc_1AFF26C:                     Set var_BC = Me.FGrid
  loc_1AFF272:                     LateIdCallSt
  loc_1AFF287:                   Else
  loc_1AFF291:                     var_B0 = Me.FGrid.Row
  loc_1AFF29A:                     var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1AFF2A2:                     var_114 = CVar(CLng(&H1B)) 'Long
  loc_1AFF2D8:                     var_158 = CVar(CStr(Me.var_B0.Fields.Item("Name").Value)) 'String
  loc_1AFF2E0:                     Set var_17C = Me.FGrid
  loc_1AFF2E6:                     LateIdCallSt
  loc_1AFF30C:                     var_B0 = Me.FGrid.Row
  loc_1AFF315:                     var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1AFF31D:                     var_114 = CVar(CLng(&H1C)) 'Long
  loc_1AFF353:                     var_158 = CVar(CStr(Me.var_B0.Fields.Item("Code").Value)) 'String
  loc_1AFF35B:                     Set var_17C = Me.FGrid
  loc_1AFF361:                     LateIdCallSt
  loc_1AFF37D:                   End If
  loc_1AFF3B2:                   var_158 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1AFF3B8:                   var_18C = Trim(var_158)
  loc_1AFF3DA:                   If (var_18C = vbNullString) Then
  loc_1AFF3E3:                     Call 0.Method_arg_50 (var_C0, CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), var_17C, var_158, var_114, var_F4, var_17C)
  loc_1AFF404:                     MsgBox("A/C Name is  Required", &H40, CVar(var_C0), var_158, var_18C)
  loc_1AFF419:                     Proc_32_91_1AFF42C = 0
  loc_1AFF41F:                   End If
  loc_1AFF41F:                 End If
  loc_1AFF41F:               End If
  loc_1AFF41F:             End If
  loc_1AFF41F:           End If
  loc_1AFF41F:         End If
  loc_1AFF41F:       End If
  loc_1AFF41F:     End If
  loc_1AFF41F:   End If
  loc_1AFF41F: End If
  loc_1AFF424: Proc_32_91_1AFF42C = &HFF
End Sub

Public Sub Proc_32_92_1A03EEC
  'Data Table: 59BA2C
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_E0 As Variant
  Dim var_BC As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_114 As String
  Dim unk_59BA49 As Connection15
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
  loc_1A00B9C: On Error Goto loc_1A03E98
  loc_1A00BB6: If (Me.RecordCount > 0) Then
  loc_1A00BC6:   Me.LblCurStockStr.Caption = vbNullString
  loc_1A00C0D:   var_F0 = "Select P.*,S.Name as PartyName From Purch1 P Left Join SubGroup S on S.SubCode=P.Party Where P.Docid='" & Me.Fields.Item("DocID").Value 
  loc_1A00C24:   unk_59BA49.Execute CStr(var_F0 & "'"), var_134, -1
  loc_1A00C2F:   Set var_88 = var_138
  loc_1A00C83:   var_138 = var_88.Fields
  loc_1A00CEC:   var_1A0 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_138.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1A00D31:   Me.LblUser.Caption = CStr(var_138 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_1A0)))
  loc_1A00DAB:   var_13C = var_88.Fields.Item("U_AE")
  loc_1A00DBF:   var_150 = "entdt : "
  loc_1A00DD8:   var_140 = Proc_6_38_E69628(CVar(var_13C))
  loc_1A00E0C:   var_1A0 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((var_140 = "E"), "Last Update : ", var_150))
  loc_1A00E2B:   var_1B8 = var_88.Fields.Item("U_EntDt")
  loc_1A00E51:   Me.LblLDt.Caption = CStr(var_1A0 & CVar(Proc_6_38_E69628(CVar(var_1B8))))
  loc_1A00E8C:   Set var_1FC = var_88 
  loc_1A00EC9:   Set var_138 = Me.Txt
  loc_1A00ECF:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(0), var_13C)
  loc_1A00ED7:   var_13C.Text = CStr(var_1FC.Fields.Item("DocID").Value)
  loc_1A00F13:   var_F0 = Trim(CVar(var_1FC.Fields.Item("vType")))
  loc_1A00F22:   global_140 = CStr(var_F0)
  loc_1A00F6C:   Set var_138 = Me.Txt
  loc_1A00F72:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(1), var_13C)
  loc_1A00F7A:   var_13C.Tag = CStr(var_1FC.Fields.Item("vType").Value)
  loc_1A00FC6:   Set var_138 = Me.Txt
  loc_1A00FCC:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(4), var_13C)
  loc_1A00FD4:   var_13C.Tag = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("Party")))
  loc_1A0101E:   Set var_138 = Me.Txt
  loc_1A01024:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(4), var_13C)
  loc_1A0102C:   var_13C.Text = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("PartyName")))
  loc_1A01076:   Set var_138 = Me.Txt
  loc_1A0107C:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(8), var_13C)
  loc_1A01084:   var_13C.Text = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("CashParty")))
  loc_1A010CE:   Set var_138 = Me.Txt
  loc_1A010D4:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(5), var_13C)
  loc_1A010DC:   var_13C.Text = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("PartyBillNo")))
  loc_1A01126:   Set var_138 = Me.Txt
  loc_1A0112C:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(6), var_13C)
  loc_1A01134:   var_13C.Text = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("PartyBillDt")))
  loc_1A0117E:   Set var_138 = Me.Txt
  loc_1A01184:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(&HB), var_13C)
  loc_1A0118C:   var_13C.Text = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("TINNo")))
  loc_1A011D6:   Set var_138 = Me.Txt
  loc_1A011DC:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(&HC), var_13C)
  loc_1A011E4:   var_13C.Text = Proc_6_38_E69628(CVar(var_1FC.Fields.Item("Remark")))
  loc_1A01217:   var_D0 = CVar(var_1FC.Fields.Item("InvoiceNo")) 'Address
  loc_1A0121E:   Proc_6_39_E7D3A0(var_F0)
  loc_1A01234:   Me.LblInvoiceNo.Caption = CStr(var_F0)
  loc_1A01261:   var_C0 = var_1FC.Fields.Item("Payable")
  loc_1A01270:   Proc_6_39_E7D3A0(var_F0, CVar(var_C0))
  loc_1A0127D:   Set var_138 = Me.ChkPayable
  loc_1A01283:   var_138.Value = CInt(var_F0)
  loc_1A012A3:   Set var_AC = Me.Opt
  loc_1A012A9:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(0), var_C0)
  loc_1A012B1:   var_C0.Enabled = False
  loc_1A012CA:   Set var_AC = Me.Opt
  loc_1A012D0:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(1), var_C0)
  loc_1A012D8:   var_C0.Enabled = False
  loc_1A012F1:   Set var_AC = Me.Opt
  loc_1A012F7:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(2), var_C0)
  loc_1A012FF:   var_C0.Enabled = False
  loc_1A01322:   var_C0 = var_1FC.Fields.Item("InvoiceType")
  loc_1A01333:   var_200 = Proc_6_38_E69628(CVar(var_C0))
  loc_1A01344:   If (var_200 = "Sale Invoice") Then
  loc_1A01354:     Set var_AC = Me.Opt
  loc_1A0135A:     Call 0.Method_Proc_32_92_1A03EEC0 (CInt(0), var_C0)
  loc_1A01362:     var_C0.Value = True
  loc_1A01371:   Else
  loc_1A01379:     If (var_200 = "Tax Invoice") Then
  loc_1A01389:       Set var_AC = Me.Opt
  loc_1A0138F:       Call 0.Method_Proc_32_92_1A03EEC0 (CInt(1), var_C0)
  loc_1A01397:       var_C0.Value = True
  loc_1A013A6:     Else
  loc_1A013B3:       Set var_AC = Me.Opt
  loc_1A013B9:       Call 0.Method_Proc_32_92_1A03EEC0 (CInt(2), var_C0)
  loc_1A013C1:       var_C0.Value = True
  loc_1A013CD:     End If
  loc_1A013CD:   End If
  loc_1A013F9:   Set var_AC = Me.Txt
  loc_1A013FF:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(1), var_C0, var_140, CVar("Select NCAT,Description  From Voucher_Type Where LogSite_Code='" & MemVar_1F95078 & "' and V_Type='"))
  loc_1A01407:   var_190 = var_C0.Tag
  loc_1A0140F:   var_D0 = CVar(var_140) 'String
  loc_1A0141D:   var_134 = -1 & Trim(var_D0) 
  loc_1A01434:   unk_59BA49.Execute CStr(var_150 & "'"), var_138, var_D0
  loc_1A0143F:   Set var_94 = var_138
  loc_1A01478:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1A014A4:     var_F0 = Trim(CVar(Me.Recordset15.Fields.Item("NCat")))
  loc_1A014B7:     global_132 = Proc_6_38_E69628(var_F0)
  loc_1A014E2:     var_C0 = Me.Recordset15.Fields.Item("Description")
  loc_1A014EA:     var_D0 = CVar(var_C0) 'Address
  loc_1A01501:     Set var_138 = Me.Txt
  loc_1A01507:     Call 0.Method_Proc_32_92_1A03EEC0 (CInt(1), var_13C)
  loc_1A0150F:     var_13C.Text = Proc_6_38_E69628(var_D0)
  loc_1A01523:   End If
  loc_1A01529:   var_E0 = 0
  loc_1A01567:   unk_59BA49.Execute "Select NCAT From Voucher_Type Where LogSite_Code='" & MemVar_1F95078 & "' and V_Type='" & global_140 & "'", var_D0, -1
  loc_1A0156F:   var_AC = var_AC.Fields
  loc_1A01577:   var_E0 = var_C0.Item(var_C0)
  loc_1A0157F:   var_138 = var_138.Value
  loc_1A01599:   global_132 = CStr(Trim(var_F0))
  loc_1A015BC:   Call Proc_32_110_11301B4(var_F0)
  loc_1A015FA:   Set var_138 = Me.Txt
  loc_1A01600:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(2), var_13C)
  loc_1A01608:   var_13C.Text = CStr(var_1FC.Fields.Item("VNo").Value)
  loc_1A01635:   var_C0 = var_1FC.Fields.Item("VDate")
  loc_1A01670:   Set var_138 = Me.Txt
  loc_1A01676:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(3), var_13C, CStr(Format(CVar(var_C0), "DD/MMM/YYYY")))
  loc_1A0167E:   var_13C.Text = 1
  loc_1A01698:   Call Proc_32_110_11301B4(1)
  loc_1A016A8:   Set var_AC = Me.Txt
  loc_1A016AE:   Call 0.Method_Proc_32_92_1A03EEC0 (CInt(3))
  loc_1A016E0:   Call Proc_32_102_17D6A24(CDate(Format(CVar(var_C0), "DD/MMM/YYYY")), 1)
  loc_1A0172D:   Me.LblVPrefix.Caption = CStr(Trim(CVar(var_1FC.Fields.Item("vPrefix"))))
  loc_1A01752:   var_AC = var_88.Fields
  loc_1A0176B:   var_124 = IsNull(CVar(var_AC.Item("BillImagePath")))
  loc_1A01772:   var_E0 = "BillImagePath"
  loc_1A0179D:   var_100 = vbNullString
  loc_1A017BF:   If CBool(var_124 Or (Trim(CVar(var_88.Fields.Item(var_E0))) = var_100)) Then
  loc_1A017E0:     Me.Global.LoadPicture var_BC, var_E0, var_100, var_124, var_150
  loc_1A017F5:     Me.BillImage.Picture = var_AC
  loc_1A0180E:     Me.BillImage.Tag = vbNullString
  loc_1A01819:   Else
  loc_1A01847:     var_100 = "BillImagePath"
  loc_1A01863:     var_190 = CVar(var_88.Fields.Item(var_100)) 'Address
  loc_1A0186A:     var_1A0 = Trim(var_190)
  loc_1A01885:     var_134 = Ucase(Right(Trim(CVar(var_88.Fields.Item("BillImagePath"))), 3))
  loc_1A0188D:     var_E0 = "DAT"
  loc_1A018B5:     var_124 = "AVI"
  loc_1A018DF:     If CBool((var_134 = var_E0) Or (Ucase(Right(var_1A0, 3)) = var_124)) Then
  loc_1A018EE:       Me.BillImage.Visible = False
  loc_1A018F9:     Else
  loc_1A01931:       Me.BillImage.Tag = CStr(var_88.Fields.Item("BillImagePath").Value)
  loc_1A0194E:       var_BC = "BillImagePath"
  loc_1A0195A:       var_AC = var_88.Fields
  loc_1A01962:       var_C0 = var_AC.Item(var_BC)
  loc_1A0197C:       Call 0.Method_Proc_32_92_1A03EEC4 (CStr(var_C0.Value), var_21A, var_AC)
  loc_1A01991:       If var_21A Then
  loc_1A019AE:         Set var_AC = Me.BillImage
  loc_1A019C6:         Me.Global.LoadPicture CVar(Me.BillImage.Tag), var_BC, var_E0, var_100, var_124
  loc_1A019DB:         Me.BillImage.Picture = var_C0
  loc_1A019F0:         Set var_AC = Me.BillImage
  loc_1A019F6:         var_AC.Refresh
  loc_1A01A01:       Else
  loc_1A01A1F:         Me.Global.LoadPicture var_BC, var_E0, var_100, var_124, var_150
  loc_1A01A2E:         Set var_138 = Me.BillImage
  loc_1A01A34:         var_138.Picture = var_AC
  loc_1A01A40:       End If
  loc_1A01A40:     End If
  loc_1A01A40:   End If
  loc_1A01A42:   Set var_1FC = Nothing 
  loc_1A01A9C:   unk_59BA49.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_134, -1
  loc_1A01AA7:   Set var_88 = var_138
  loc_1A01AD5:   If (var_88.RecordCount > 0) Then
  loc_1A01AEA:     var_AC = var_88.Fields
  loc_1A01B08:     Call Proc_32_102_17D6A24(CDate(var_AC.Item("SunAppDate").Value), var_138, var_AC)
  loc_1A01B17:     ' Referenced from: 1A01FB0
  loc_1A01B26:     If Not(var_88.EOF) Then
  loc_1A01B43:       var_C0 = var_88.Fields.Item("SunCode")
  loc_1A01B89:       Set var_1A4 = Me.LblCap
  loc_1A01B8F:       Call 0.Method_Proc_32_92_1A03EEC0 (CInt(var_88.Fields.Item("SNo").Value), var_1B8, CStr(var_C0.Value))
  loc_1A01B97:       var_1B8.Tag = var_C0
  loc_1A01C15:       Set var_1A4 = Me.TxtPer
  loc_1A01C1B:       Call 0.Method_Proc_32_92_1A03EEC0 (CInt(var_88.Fields.Item("SNo").Value), var_1B8, CStr(var_88.Fields.Item("Limit").Value))
  loc_1A01C23:       var_1B8.Tag = 1
  loc_1A01CA1:       Set var_1A4 = Me.LblCap
  loc_1A01CA7:       Call 0.Method_Proc_32_92_1A03EEC0 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_1A01CAF:       var_1B8.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A01D2D:       Set var_1A4 = Me.LblAt
  loc_1A01D33:       Call 0.Method_Proc_32_92_1A03EEC0 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_1A01D3B:       var_1B8.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_1A01DB9:       Set var_1A4 = Me.TxtGt
  loc_1A01DBF:       Call 0.Method_Proc_32_92_1A03EEC0 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_1A01DC7:       var_1B8.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_1A01E45:       Set var_1A4 = Me.TxtPer
  loc_1A01E4B:       Call 0.Method_Proc_32_92_1A03EEC0 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_1A01E53:       var_1B8.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_1A01EAF:       var_134 = var_88.Fields.Item("SNo").Value
  loc_1A01EC3:       var_F0 = "0.00"
  loc_1A01EEA:       Set var_1A4 = Me.TxtGt
  loc_1A01EF0:       Call 0.Method_Proc_32_92_1A03EEC0 (CInt(var_134), var_1B8, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_F0)))
  loc_1A01EF8:       var_1B8.Text = 1
  loc_1A01F3E:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("BaseAmount")))
  loc_1A01F5F:       var_138 = var_88.Fields
  loc_1A01F7C:       Set var_1A4 = Me.LblDummy
  loc_1A01F82:       Call 0.Method_Proc_32_92_1A03EEC0 (CInt(var_138.Item("SNo").Value), var_1B8, CStr(var_F0))
  loc_1A01F8A:       var_1B8.Caption = 1
  loc_1A01FAB:       var_88.MoveNext
  loc_1A01FB0:       GoTo loc_1A01B17
  loc_1A01FB3:     End If
  loc_1A01FB3:   End If
  loc_1A01FC2:   Me.FGrid.Redraw = False
  loc_1A01FDD:   Me.FGrid.Rows = 1
  loc_1A01FE7:   var_8E = 1
  loc_1A01FF7:   var_E0 = "Select DISTINCT S.*,I.Name as ItemName,DispCode,S.DiscApp as DApp,S.RoundOff as ROff,s.TaxStru as TaxCode,RateEdit,D.Code as DepartCode,D.ShortName as DepartName,G.Name as GodownName,TaxStru.Name as TaxStructure,S.AcCode As SaleAcCode,SG.Name As SaleAcName From (((((Purch2 S Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store') left join Sale2 S2 on (S2.docid=S.docid and S2.sno=S.sno)) Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode)Left Join GodownMast G on G.Code=S.GodCode) left Join TaxStru on TaxStru.Code=S.TaxStru left Join SubGroup SG On SG.SubCode=S.AcCode Where S.DocId='"
  loc_1A02040:   unk_59BA49.Execute CStr(var_E0 & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_134, -1
  loc_1A0204B:   Set var_88 = var_138
  loc_1A02079:   If (var_88.RecordCount > 0) Then
  loc_1A02089:     ReDim Preserve var_9C(0 To 0)
  loc_1A02093:     ' Referenced from: 1A03864
  loc_1A020A2:     If Not(var_88.EOF) Then
  loc_1A020A5:       var_BC = vbNullString
  loc_1A020AF:       Set var_AC = Me.FGrid
  loc_1A020CD:       For var_21E = 0 To CInt(UBound(var_9C, 1)): var_A0 = var_21E 'Integer
  loc_1A020DE:         var_BC = "RoomNo"
  loc_1A02111:         If (var_BC = Proc_6_38_E69628(CVar(var_88.Fields.Item(var_BC)), var_9C(CLng(var_A0)), 0, FGrid.DispID_10000)) Then
  loc_1A02116:           var_A2 = &HFF
  loc_1A02119:         End If
  loc_1A0211C:       Next var_21E 'Integer
  loc_1A02127:       If (var_A2 = 0) Then
  loc_1A02136:         ReDim Preserve var_9C(0 To CLng(var_9E))
  loc_1A02172:         var_9C(CLng(var_9E)) = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomNo")))
  loc_1A02182:         var_9E = (var_9E + 1)
  loc_1A02185:       End If
  loc_1A02187:       var_A2 = 0
  loc_1A0218E:       Set var_224 = Me.FGrid
  loc_1A02195:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1A0219D:       var_124 = CVar(CLng(0)) 'Long
  loc_1A021CD:       var_F0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1A021D4:       LateIdCallSt
  loc_1A021EE:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1A021F6:       var_124 = CVar(CLng(&HC)) 'Long
  loc_1A02226:       var_F0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1A0222D:       LateIdCallSt
  loc_1A0227C:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_1A02283:       LateIdCallSt
  loc_1A022CE:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(2)), CVar(CLng(var_8E)), var_224, var_F0, var_224)) 'String
  loc_1A022D5:       LateIdCallSt
  loc_1A02307:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A0230F:       var_150 = CVar(CLng(9)) 'Long
  loc_1A0233C:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00000"))) 'String
  loc_1A02343:       LateIdCallSt
  loc_1A02379:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A02381:       var_150 = CVar(CLng(&HA)) 'Long
  loc_1A023AE:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00000"))) 'String
  loc_1A023B5:       LateIdCallSt
  loc_1A023EB:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A023F3:       var_150 = CVar(CLng(&HB)) 'Long
  loc_1A02420:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_1A02427:       LateIdCallSt
  loc_1A0245D:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A02465:       var_150 = CVar(CLng(&HF)) 'Long
  loc_1A02492:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_1A02499:       LateIdCallSt
  loc_1A024CF:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A024D7:       var_150 = CVar(CLng(&H10)) 'Long
  loc_1A02504:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_1A0250B:       LateIdCallSt
  loc_1A02541:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A02549:       var_150 = CVar(CLng(&H12)) 'Long
  loc_1A02576:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_1A0257D:       LateIdCallSt
  loc_1A025EF:       LateIdCallSt
  loc_1A0263E:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_1A02645:       LateIdCallSt
  loc_1A02690:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(&H13)))) 'String
  loc_1A02697:       LateIdCallSt
  loc_1A026E2:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxStructure")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A026E9:       LateIdCallSt
  loc_1A02734:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A0273B:       LateIdCallSt
  loc_1A02786:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A0278D:       LateIdCallSt
  loc_1A027D8:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A027DF:       LateIdCallSt
  loc_1A0282A:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A02831:       LateIdCallSt
  loc_1A02872:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1A0287A:       var_124 = CVar(CLng(3)) 'Long
  loc_1A02895:       var_114 = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), var_224, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), var_224, var_F0, CVar(CLng(var_8E)))), CVar(CLng(var_8E)))), 8))
  loc_1A028A7:       LateIdCallSt
  loc_1A028FD:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_224, CVar(CStr(Val(var_114))), CVar(CLng(&HE)))) 'String
  loc_1A02904:       LateIdCallSt
  loc_1A0294D:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("ContraSNo")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_224, var_F0)
  loc_1A0295D:       LateIdCallSt
  loc_1A029AA:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("GodownName")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_224, CVar(CStr(var_F0)))) 'String
  loc_1A029B1:       LateIdCallSt
  loc_1A029FC:       var_F0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("GodCode")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A02A03:       LateIdCallSt
  loc_1A02A4C:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_224, var_F0)
  loc_1A02A5C:       LateIdCallSt
  loc_1A02AA7:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("PostVal")), CVar(CLng(&H20)), CVar(CLng(var_8E)), var_224, CVar(CStr(var_F0)))
  loc_1A02AB7:       LateIdCallSt
  loc_1A02ACF:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1A02B02:       Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("LandVal")), CVar(CLng(&H21)), var_E0, var_224, CVar(CStr(var_F0)))
  loc_1A02B12:       LateIdCallSt
  loc_1A02B5F:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), var_224, CVar(CStr(var_F0)), var_E0) <> vbNullString) Then
  loc_1A02B79:         If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1A02BC1:           var_110 = "Select ConvRatio,QtyIss,IssueUnit,Unit From Stock Where DocId='" & var_88.Fields.Item("ContraDocId").Value & "' And Sno=" 
  loc_1A02BFD:           unk_59BA49.Execute CStr(var_110 & var_88.Fields.Item("ContraSNo").Value), var_190, -1
  loc_1A02C08:           Set var_8C = var_1A4
  loc_1A02C3E:           If (var_8C.RecordCount > 0) Then
  loc_1A02C61:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A02C69:             var_150 = CVar(CLng(6)) 'Long
  loc_1A02C96:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1A02C9D:             LateIdCallSt
  loc_1A02CD3:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A02CDB:             var_150 = CVar(CLng(7)) 'Long
  loc_1A02D08:             var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_1A02D0F:             LateIdCallSt
  loc_1A02D45:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A02D81:             LateIdCallSt
  loc_1A02DD0:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_8C.Fields.Item("QtyIss")), "0.000"))), 1, 1)) 'String
  loc_1A02DD7:             LateIdCallSt
  loc_1A02E22:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("IssueUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_1A02E29:             LateIdCallSt
  loc_1A02E3B:           End If
  loc_1A02E3E:         Else
  loc_1A02E83:           var_110 = "Select ConvRatio,QtyRec,RecdUnit,Unit From Stock Where DocId='" & var_88.Fields.Item("ContraDocId").Value & "' And Sno=" 
  loc_1A02EBF:           unk_59BA49.Execute CStr(var_110 & var_88.Fields.Item("ContraSNo").Value), var_190, -1
  loc_1A02ECA:           Set var_8C = var_1A4
  loc_1A02F00:           If (var_8C.RecordCount > 0) Then
  loc_1A02F23:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A02F2B:             var_150 = CVar(CLng(6)) 'Long
  loc_1A02F58:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1A02F5F:             LateIdCallSt
  loc_1A02F95:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A02F9D:             var_150 = CVar(CLng(7)) 'Long
  loc_1A02FCA:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_1A02FD1:             LateIdCallSt
  loc_1A03007:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A03043:             LateIdCallSt
  loc_1A03092:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_88.Fields.Item("RecdQty")), "0.000"))), 1, 1)) 'String
  loc_1A03099:             LateIdCallSt
  loc_1A030E4:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RecdUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_1A030EB:             LateIdCallSt
  loc_1A030FD:           End If
  loc_1A030FD:         End If
  loc_1A03100:       Else
  loc_1A03117:         If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1A03162:           var_110 = "Select ConvRatio,IssQty,IssueUnit,Unit From Stock Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And Sno=" 
  loc_1A0319E:           unk_59BA49.Execute CStr(var_110 & var_88.Fields.Item("SNo").Value), var_190, -1
  loc_1A031A9:           Set var_8C = var_1A4
  loc_1A031DF:           If (var_8C.RecordCount > 0) Then
  loc_1A03202:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A0321E:             var_F0 = "0.00000"
  loc_1A0323E:             LateIdCallSt
  loc_1A0327A:             Proc_6_39_E7D3A0(var_F0, CVar(var_88.Fields.Item("QtyIss")), var_224, CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), var_F0))), 1, 1, CVar(CLng(6)))
  loc_1A03283:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A0328B:             var_150 = CVar(CLng(7)) 'Long
  loc_1A032B4:             var_160 = CVar(CStr(Format(var_F0, "0.000"))) 'String
  loc_1A032BB:             LateIdCallSt
  loc_1A032F3:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A0332F:             LateIdCallSt
  loc_1A0337E:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_8C.Fields.Item("IssQty")), "0.000"))), 1, 1)) 'String
  loc_1A03385:             LateIdCallSt
  loc_1A033D0:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("IssueUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_1A033D7:             LateIdCallSt
  loc_1A033E9:           End If
  loc_1A033EC:         Else
  loc_1A03434:           var_110 = "Select ConvRatio,QtyRec,RecdUnit,Unit From Stock Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And Sno=" 
  loc_1A03470:           unk_59BA49.Execute CStr(var_110 & var_88.Fields.Item("SNo").Value), var_190, -1
  loc_1A0347B:           Set var_8C = var_1A4
  loc_1A034B1:           If (var_8C.RecordCount > 0) Then
  loc_1A034D4:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A034DC:             var_150 = CVar(CLng(6)) 'Long
  loc_1A03509:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1A03510:             LateIdCallSt
  loc_1A03546:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A0354E:             var_150 = CVar(CLng(7)) 'Long
  loc_1A0357B:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_1A03582:             LateIdCallSt
  loc_1A035B8:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A035E4:             var_110 = Format(CVar(var_88.Fields.Item("RecdQty")), "0.000")
  loc_1A035F4:             LateIdCallSt
  loc_1A03643:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(var_110)), 1, 1)) 'String
  loc_1A0364A:             LateIdCallSt
  loc_1A03695:             var_F0 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("RecdUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_1A0369C:             LateIdCallSt
  loc_1A036AE:           End If
  loc_1A036AE:         End If
  loc_1A036AE:       End If
  loc_1A036DD:       If ((((global_132 = "PBR") Or (global_132 = "EXR")) Or (global_132 = "PBC")) Or (global_132 = "EXC")) Then
  loc_1A036F4:         var_114 = "Select max(IsNull(M.AccQty,0)) - Sum(IsNull(P2.QtyRec,0)) as BalQty " & "From (Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_1A03702:         var_1EC = CStr(var_110 & var_88.Fields.Item("SNo").Value) & "Left Join SubGroup SG on M.PartyCode=SG.SubCode " & "where M.DocId='"
  loc_1A0372D:         var_1F4 = Proc_6_38_E69628(CVar(var_88.Fields.Item("ContraDocId")), var_1EC, var_1A0, -1, var_1A4, var_224)
  loc_1A03731:         var_1F8 = var_F0 & "Select NCAT From Voucher_Type Where LogSite_Code='" & MemVar_1F95078 & "' and V_Type='" & global_140 & "'"
  loc_1A03738:         var_134 = CVar(var_1F8 & "' And M.Sno=") 'String
  loc_1A03752:         var_13C = var_88.Fields.Item("ContraSNo")
  loc_1A0375A:         var_F0 = CVar(var_13C) 'Address
  loc_1A03761:         Proc_6_39_E7D3A0(var_110, var_F0, var_134, var_100)
  loc_1A0376D:         var_100 = "  Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.QtyRec,0)) > 0 "
  loc_1A03780:         unk_59BA49.Execute CStr(var_224 & var_110 & var_100), var_134, 1
  loc_1A0378B:         Set var_8C = var_1A4
  loc_1A037CB:         If (var_8C.RecordCount > 0) Then
  loc_1A037E5:           var_C0 = var_8C.Fields.Item("BalQty")
  loc_1A037F4:           Proc_6_39_E7D3A0(var_F0, CVar(var_C0))
  loc_1A037FD:           var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A03805:           var_150 = CVar(CLng(&H22)) 'Long
  loc_1A0382E:           var_160 = CVar(CStr(Format(var_F0, "0.000"))) 'String
  loc_1A03835:           LateIdCallSt
  loc_1A0384D:         End If
  loc_1A0384D:       End If
  loc_1A0384F:       Set var_224 = Nothing 
  loc_1A03859:       var_8E = (var_8E + 1)
  loc_1A0385F:       var_88.MoveNext
  loc_1A03864:       GoTo loc_1A02093
  loc_1A03867:     End If
  loc_1A0387A:     Me.FGrid.FixedRows = 1
  loc_1A03890:     Set var_AC = Me.Txt
  loc_1A03896:     Call 0.Method_Proc_32_92_1A03EEC0 (CInt(7), var_C0, vbNullString, var_8E, var_224, var_160)
  loc_1A038B7:     For var_22C = 0 To CInt(UBound(var_9C, 1)): var_9E = var_22C 'Integer
  loc_1A038CB:       Set var_AC = Me.Txt
  loc_1A038D1:       Call 0.Method_Proc_32_92_1A03EEC0 (CInt(7), var_C0, CStr("0.000" & var_88.Fields.Item("SNo").Value), 0)
  loc_1A038D9:       1 = 1
  loc_1A038FF:       Set var_138 = Me.Txt
  loc_1A03905:       Call 0.Method_Proc_32_92_1A03EEC0 (CInt(7), var_13C, CStr("0.000" & var_88.Fields.Item("SNo").Value) & var_9C(CLng(var_9E)) & ",")
  loc_1A0390D:       var_13C.Text = var_150
  loc_1A03929:     Next var_22C 'Integer
  loc_1A03939:     Set var_AC = Me.Txt
  loc_1A0393F:     Call 0.Method_Proc_32_92_1A03EEC0 (CInt(7))
  loc_1A0394F:     Set var_138 = Me.Txt
  loc_1A03955:     Call 0.Method_Proc_32_92_1A03EEC0 (CInt(7), var_13C)
  loc_1A03975:     var_134 = (Len(Trim(CVar(var_13C))) - 1)
  loc_1A03988:     var_160 = CVar(var_C0) 'Address
  loc_1A039A6:     Set var_1A4 = Me.Txt
  loc_1A039AC:     Call 0.Method_Proc_32_92_1A03EEC0 (CInt(7), var_1B8)
  loc_1A039B4:     var_1B8.Text = CStr(Mid(var_160, 1, Format(Trim(CVar(var_13C)), "0.000")))
  loc_1A039D4:   End If
  loc_1A039E2:   Me.FGrid.Redraw = True
  loc_1A039FE:   var_F0 = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt " & " FROM Sale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_1A03A37:   var_134 = var_F0 & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1A03A45:   unk_59BA49.Execute CStr(var_134), var_160, -1
  loc_1A03A50:   Set var_88 = var_138
  loc_1A03A7F:   Me.FGCat.Rows = 1
  loc_1A03A8D:   var_A8 = var_88.RecordCount
  loc_1A03A9B:   If (var_A8 > 0) Then
  loc_1A03A9E:     ' Referenced from: 1A03DF4
  loc_1A03AAD:     If Not(var_88.EOF) Then
  loc_1A03AB4:       Set var_230 = Me.FGCat
  loc_1A03AB7:       var_BC = vbNullString
  loc_1A03AE1:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A03AE9:       var_124 = CVar(CLng(0)) 'Long
  loc_1A03B19:       var_110 = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_1A03B20:       LateIdCallSt
  loc_1A03B53:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A03B5B:       var_124 = CVar(CLng(1)) 'Long
  loc_1A03B8B:       var_110 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1A03B92:       LateIdCallSt
  loc_1A03BC5:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A03BCD:       var_124 = CVar(CLng(2)) 'Long
  loc_1A03BFD:       var_110 = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_1A03C04:       LateIdCallSt
  loc_1A03C37:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A03C3F:       var_124 = CVar(CLng(3)) 'Long
  loc_1A03C6F:       var_110 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_1A03C76:       LateIdCallSt
  loc_1A03CA9:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A03CB1:       var_124 = CVar(CLng(4)) 'Long
  loc_1A03CE1:       var_110 = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_1A03CE8:       LateIdCallSt
  loc_1A03D1B:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A03D23:       var_124 = CVar(CLng(5)) 'Long
  loc_1A03D53:       var_110 = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_1A03D5A:       LateIdCallSt
  loc_1A03D8D:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A03D95:       var_124 = CVar(CLng(6)) 'Long
  loc_1A03DBC:       var_F0 = var_88.Fields.Item("TaxAmt").Value
  loc_1A03DC5:       var_110 = CVar(CStr(var_F0)) 'String
  loc_1A03DCC:       LateIdCallSt
  loc_1A03DE8:       Set var_230 = Nothing 
  loc_1A03DEF:       var_88.MoveNext
  loc_1A03DF4:       GoTo loc_1A03A9E
  loc_1A03DF7:     End If
  loc_1A03DF7:   End If
  loc_1A03DFD:   If (var_8E = 1) Then
  loc_1A03E13:     Me.FGrid.Rows = 1
  loc_1A03E39:     var_D0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_230, var_110, var_124, "'", var_230, var_110))) 'String
  loc_1A03E41:     Set var_C0 = Me.FGrid
  loc_1A03E6E:     Me.FGrid.FixedRows = 1
  loc_1A03E76:   End If
  loc_1A03E79: Else
  loc_1A03E79:   Call Proc_32_94_1034584(FGrid.DispID_10000, var_D0, var_124, "'", var_230)
  loc_1A03E7E: End If
  loc_1A03E7E: Call Proc_32_96_FE19D4(var_110, var_124)
  loc_1A03E88: Set var_88 = Nothing
  loc_1A03E90: Set var_94 = Nothing
  loc_1A03E97: Exit Sub
  loc_1A03E98: ' Referenced from: 1A00B9C
  loc_1A03EA0: Set var_AC = Err()
  loc_1A03EA6: Call 0.Method_arg_1C (var_A8, "'")
  loc_1A03EB7: If (var_A8 = &HBCD) Then
  loc_1A03ED3:   MsgBox("Record is Deleted by somebody", &H40, var_F0, var_110, var_134)
  loc_1A03EE3:   Exit Sub
  loc_1A03EE4: End If
  loc_1A03EE4: Proc_6_60_E63754(var_230)
  loc_1A03EE9: Exit Sub
End Sub

Public Sub Proc_32_93_1261D68
  'Data Table: 59BA2C
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_59BA49 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_126180D: Set var_9C = Me.TopCtrl1
  loc_1261813: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_126181B: var_B0 = CStr()
  loc_126182C: If (var_B0 = "Add") Then
  loc_126185C:   Set var_9C = Me.Txt
  loc_1261862:   Call 0.Method_Proc_32_93_1261D680 (CInt(0), var_B4, var_B0, "Select Count(*) From Purch1 Where DocID='", var_AC, -1)
  loc_1261883:   unk_59BA49.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_1261893:    = var_D4.Item()
  loc_126189B:    = var_E8.Value
  loc_12618C8:   If (var_B4.Text.Fields > 0) Then
  loc_12618D1:     Call 0.Method_arg_50 (var_B0)
  loc_12618F2:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_1261908:     Call Proc_32_98_10E8DA8(MemVar_1F95044)
  loc_126191B:     Set var_9C = Me.Txt
  loc_1261921:     Call 0.Method_Proc_32_93_1261D680 (CInt(0), var_B4)
  loc_1261929:     var_B4.Text = var_B0
  loc_126193D:     Proc_32_93_1261D68 = 0
  loc_1261943:   End If
  loc_1261943: End If
  loc_1261968: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_1261972:   var_CC = CVar(CLng(var_88)) 'Long
  loc_126197A:   var_108 = CVar(CLng(2)) 'Long
  loc_126199A:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_12619B6:   If CBool(var_118 <> vbNullString) Then
  loc_12619BD:     var_CC = CVar(CLng(var_88)) 'Long
  loc_12619C5:     var_108 = CVar(CLng(5)) 'Long
  loc_12619F5:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1261A1D:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1261A43:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1261A4F:       Set var_9C = Me.FGrid
  loc_1261A65:       Proc_32_93_1261D68 = 0
  loc_1261A6B:     End If
  loc_1261A6F:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1261A77:     var_108 = CVar(CLng(9)) 'Long
  loc_1261AA7:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1261ACF:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1261AF5:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1261B01:       Set var_9C = Me.FGrid
  loc_1261B17:       Proc_32_93_1261D68 = 0
  loc_1261B1D:     End If
  loc_1261B21:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1261B29:     var_108 = CVar(CLng(&H16)) 'Long
  loc_1261B49:     var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1261B65:     If (var_118 = vbNullString) Then
  loc_1261B8D:       MsgBox(CVar("Godown Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1261BB3:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1261BBF:       Set var_9C = Me.FGrid
  loc_1261BD5:       Proc_32_93_1261D68 = 0
  loc_1261BDB:     End If
  loc_1261BDF:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1261BE7:     var_108 = CVar(CLng(&H1A)) 'Long
  loc_1261C07:     var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1261C23:     If (var_118 = vbNullString) Then
  loc_1261C4B:       MsgBox(CVar("Tax Structure Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1261C71:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1261C7D:       Set var_9C = Me.FGrid
  loc_1261C93:       Proc_32_93_1261D68 = 0
  loc_1261C99:     End If
  loc_1261C9D:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1261CA5:     var_108 = CVar(CLng(&H1C)) 'Long
  loc_1261CC5:     var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1261CE1:     If (var_118 = vbNullString) Then
  loc_1261D09:       MsgBox(CVar("A/C Name Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1261D2F:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1261D3B:       Set var_9C = Me.FGrid
  loc_1261D51:       Proc_32_93_1261D68 = 0
  loc_1261D57:     End If
  loc_1261D57:   End If
  loc_1261D5A: Next var_12C 'Integer
  loc_1261D5F: Proc_32_93_1261D68 = 
End Sub

Public Sub Proc_32_94_1034584
  'Data Table: 59BA2C
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_1034345: Me.LblVPrefix.Caption = vbNullString
  loc_103435B: Set var_8C = Me.Txt
  loc_1034361: Call 0.Method_Proc_32_94_1034584C (var_8E, var_86)
  loc_1034371: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1034387:   Set var_8C = Me.Txt
  loc_103438D:   Call 0.Method_Proc_32_94_10345840 (CInt(var_86), var_98)
  loc_1034395:   var_98.Text = vbNullString
  loc_10343B1:   Set var_8C = Me.Txt
  loc_10343B7:   Call 0.Method_Proc_32_94_10345840 (CInt(var_86), var_98)
  loc_10343BF:   var_98.Tag = vbNullString
  loc_10343CE: Next var_92 'Byte
  loc_10343E1: Me.LblCurStockStr.Caption = vbNullString
  loc_10343FC: Me.FGrid.Rows = 1
  loc_1034422: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_103442A: Set var_98 = Me.FGrid
  loc_1034457: Me.FGrid.FixedRows = 1
  loc_103446D: Set var_8C = Me.TxtPer
  loc_1034473: Call 0.Method_Proc_32_94_1034584C (var_8E, var_86, CByte(1))
  loc_1034480: For var_D0 = var_C8 To CByte(var_8E): FGrid.DispID_10000 = var_D0 'Byte
  loc_1034496:   Set var_8C = Me.TxtPer
  loc_103449C:   Call 0.Method_Proc_32_94_10345840 (CInt(var_86), var_98, vbNullString)
  loc_10344A4:   var_98.Text = var_C8
  loc_10344B3: Next var_D0 'Byte
  loc_10344C7: Set var_8C = Me.TxtGt
  loc_10344CD: Call 0.Method_Proc_32_94_1034584C (var_8E, var_86)
  loc_10344DA: For var_D4 =  To CByte(var_8E): CByte(1) = var_D4 'Byte
  loc_10344F0:   Set var_8C = Me.TxtGt
  loc_10344F6:   Call 0.Method_Proc_32_94_10345840 (CInt(var_86), var_98)
  loc_10344FE:   var_98.Text = vbNullString
  loc_103450D: Next var_D4 'Byte
  loc_1034531: Me.Global.LoadPicture var_A8, var_B8, var_E4, var_F4, var_104
  loc_1034546: Me.BillImage.Picture = var_8C
  loc_103455F: Me.BillImage.Tag = vbNullString
  loc_103457A: Me.FGCat.Rows = 0
  loc_1034582: Exit Sub
End Sub

Public Sub Proc_32_95_1012C48(arg_C) '1012C48
  'Data Table: 59BA2C
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_1012A36: Set var_8C = Me.Txt
  loc_1012A3C: Call 0.Method_Proc_32_95_1012C48C (var_8E, var_86)
  loc_1012A4C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1012A62:   Set var_8C = Me.Txt
  loc_1012A68:   Call 0.Method_Proc_32_95_1012C480 (CInt(var_86), var_98)
  loc_1012A70:   var_98.Enabled = arg_C
  loc_1012A7F: Next var_92 'Byte
  loc_1012A93: Set var_8C = Me.TxtPer
  loc_1012A99: Call 0.Method_Proc_32_95_1012C48C (var_8E, var_86)
  loc_1012AA6: For var_9C =  To CByte(var_8E): CByte(1) = var_9C 'Byte
  loc_1012ABC:   Set var_8C = Me.TxtPer
  loc_1012AC2:   Call 0.Method_Proc_32_95_1012C480 (CInt(var_86), var_98)
  loc_1012ACA:   var_98.Enabled = arg_C
  loc_1012AD9: Next var_9C 'Byte
  loc_1012AED: Set var_8C = Me.TxtGt
  loc_1012AF3: Call 0.Method_Proc_32_95_1012C48C (var_8E, var_86)
  loc_1012B00: For var_A0 =  To CByte(var_8E): CByte(1) = var_A0 'Byte
  loc_1012B16:   Set var_8C = Me.TxtGt
  loc_1012B1C:   Call 0.Method_Proc_32_95_1012C480 (CInt(var_86), var_98)
  loc_1012B24:   var_98.Enabled = arg_C
  loc_1012B33: Next var_A0 'Byte
  loc_1012B46: Me.FrInVoiceType.Enabled = arg_C
  loc_1012B5B: Me.FrPayable.Enabled = arg_C
  loc_1012B70: Set var_8C = Me.Txt
  loc_1012B76: Call 0.Method_Proc_32_95_1012C480 (CInt(0), var_98)
  loc_1012B7E: var_98.Enabled = False
  loc_1012B97: Set var_8C = Me.Txt
  loc_1012B9D: Call 0.Method_Proc_32_95_1012C480 (CInt(2), var_98)
  loc_1012BA5: var_98.Enabled = False
  loc_1012BB5: Set var_8C = Me.TopCtrl1
  loc_1012BBB: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1012BD4: If (CStr() = "Edit") Then
  loc_1012BE4:   Set var_8C = Me.Txt
  loc_1012BEA:   Call 0.Method_Proc_32_95_1012C480 (CInt(1), var_98)
  loc_1012BF2:   var_98.Enabled = False
  loc_1012C0A:   Me.FrInVoiceType.Enabled = False
  loc_1012C12: End If
  loc_1012C1D: If (global_108 = "No") Then
  loc_1012C2D:   Set var_8C = Me.Txt
  loc_1012C33:   Call 0.Method_Proc_32_95_1012C480 (CInt(3), var_98)
  loc_1012C3B:   var_98.Enabled = False
  loc_1012C47: End If
  loc_1012C47: Exit Sub
End Sub

Public Sub Proc_32_96_FE19D4
  'Data Table: 59BA2C
  loc_FE1808: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_FE181A:   Me.DGItem.Visible = False
  loc_FE1822: End If
  loc_FE183E: If (CBool(Me.DgMR.Visible) = &HFF) Then
  loc_FE1850:   Me.DgMR.Visible = False
  loc_FE1858: End If
  loc_FE1874: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FE1886:   Me.FGPoint.Visible = False
  loc_FE188E: End If
  loc_FE18AA: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_FE18BC:   Me.DGParty.Visible = False
  loc_FE18C4: End If
  loc_FE18E0: If (CBool(Me.DGPartyBillNo.Visible) = &HFF) Then
  loc_FE18F2:   Me.DGPartyBillNo.Visible = False
  loc_FE18FA: End If
  loc_FE1916: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_FE1928:   Me.DGVType.Visible = False
  loc_FE1930: End If
  loc_FE194C: If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_FE195E:   Me.DGGod.Visible = False
  loc_FE1966: End If
  loc_FE1982: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_FE1994:   Me.DGTaxStru.Visible = False
  loc_FE199C: End If
  loc_FE19B8: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_FE19CA:   Me.DGSaleAc.Visible = False
  loc_FE19D2: End If
  loc_FE19D2: Exit Sub
End Sub

Public Sub Proc_32_97_F0C440
  'Data Table: 59BA2C
  loc_F0C364: Call Proc_32_96_FE19D4()
  loc_F0C374: Set var_88 = Me.Txt
  loc_F0C37A: Call 0.Method_Proc_32_97_F0C4400 (CInt(3))
  loc_F0C3A3: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0C3A6:   Exit Sub
  loc_F0C3A7: End If
  loc_F0C3B2: Set var_88 = Me.Txt
  loc_F0C3B8: Call 0.Method_Proc_32_97_F0C4400 (CInt(2), var_8C)
  loc_F0C3E1: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0C3E4:   Exit Sub
  loc_F0C3E5: End If
  loc_F0C41C: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0C41F:   Call TopCtrl1_UnknownEvent_16()
  loc_F0C427: Else
  loc_F0C42B:   Call 0.Method_arg_1E8 (var_88)
  loc_F0C433:   Call var_88.SetFocus
  loc_F0C43C: End If
  loc_F0C43C: Exit Sub
  loc_F0C43D: var_8C = 
End Sub

Public Sub Proc_32_98_10E8DA8
  'Data Table: 59BA2C
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
  loc_10E8AD0: var_90 = global_140
  loc_10E8AE7: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10E8B18: Set var_A8 = Me.Txt
  loc_10E8B1E: Call 0.Method_Proc_32_98_10E8DA80 (CInt(3), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E8B2D: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_10E8B35: var_EC = -1 & var_CC 
  loc_10E8B49: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E8B54: Set var_8C = var_134
  loc_10E8B90: If (var_8C.RecordCount > 0) Then
  loc_10E8BCF:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E8C03:     global_124 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E8C2E:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E8C43:     var_CC = (var_AC.Value + 1)
  loc_10E8C4B:     global_128 = CInt(var_CC)
  loc_10E8C5C:   End If
  loc_10E8C5C: End If
  loc_10E8C87: var_BC = Space((5 - Len(var_90)))
  loc_10E8C8F: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_10E8CA3: var_EC = Space((5 - Len(global_124)))
  loc_10E8CAB: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E8CB8: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_124))
  loc_10E8CD1: var_14C = Space((8 - Len(CStr(global_128))))
  loc_10E8CD9: var_15C = (var_130 + var_14C)
  loc_10E8CE8: var_17C = (var_15C + CVar(CStr(global_128)))
  loc_10E8CF3: global_116 = CStr(var_17C)
  loc_10E8D29: Me.LblVPrefix.Caption = global_124
  loc_10E8D42: Set var_A8 = Me.Txt
  loc_10E8D48: Call 0.Method_Proc_32_98_10E8DA80 (CInt(0), var_AC)
  loc_10E8D50: var_AC.Text = global_116
  loc_10E8D72: Set var_A8 = Me.Txt
  loc_10E8D78: Call 0.Method_Proc_32_98_10E8DA80 (CInt(2), var_AC)
  loc_10E8D80: var_AC.Text = CStr(global_128)
  loc_10E8D95: var_88 = global_116
  loc_10E8D9D: Set var_8C = Nothing
  loc_10E8DA0: Proc_32_98_10E8DA8 = global_128
End Sub

Public Sub Proc_32_99_10B8138(arg_C, arg_10, arg_14) '10B8138
  'Data Table: 59BA2C
  Dim unk_59BA49 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B7EA6: If (arg_C = "RSBIL") Then
  loc_10B7ECD:   unk_59BA49.Execute "Select Distinct DocId,V_Type,V_No From Purch1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B7ED8:   Set var_8C = var_C4
  loc_10B7EEB:   var_94 = "ALACARTE Sale Bill Entry"
  loc_10B7EF1: Else
  loc_10B7EF6:   Proc_32_99_10B8138 = &HFF
  loc_10B7EFC: End If
  loc_10B7F10: If (var_8C.RecordCount > 0) Then
  loc_10B7F13:   ' Referenced from: 10B808C
  loc_10B7F22:   If Not(var_8C.EOF) Then
  loc_10B7F2D:     If (var_90 = vbNullString) Then
  loc_10B7F70:       var_D4 = "V.Type :-> " & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B7F77:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B7FA9:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B7FCE:     Else
  loc_10B800A:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B802A:       var_10C = CVar(var_120 & Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B8057:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B805C:       var_90 = CStr(var_11C)
  loc_10B8084:     End If
  loc_10B8087:     var_8C.MoveNext
  loc_10B808C:     GoTo loc_10B7F13
  loc_10B808F:   End If
  loc_10B8095:   Call 0.Method_arg_50 (var_138)
  loc_10B80F1:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B80F4:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B8123:   Set var_8C = Nothing
  loc_10B8126:   Proc_32_99_10B8138 = 0
  loc_10B812C: End If
  loc_10B8131: Proc_32_99_10B8138 = &HFF
End Sub

Public Sub Proc_32_100_FC0E6C
  'Data Table: 59BA2C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC0CEF: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FC0CF4:   var_92 = 2 'Byte
  loc_FC0CF8: End If
  loc_FC0D01: Set var_98 = Me.TxtGrid
  loc_FC0D07: Call 0.Method_Proc_32_100_FC0E6C0 (0, var_B0)
  loc_FC0D2A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC0D5E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC0D82:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC0D85:     GoTo loc_FC0E57
  loc_FC0D88:   End If
  loc_FC0D8C:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC0DB6:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC0DC0:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC0DF5:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC0E19:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC0E32:     Set var_98 = Me.TxtGrid
  loc_FC0E38:     Call 0.Method_Proc_32_100_FC0E6C0 (0, var_B0, CVar(CLng(var_92)))
  loc_FC0E40:     var_B0.SetFocus
  loc_FC0E51:     Proc_32_100_FC0E6C = 0
  loc_FC0E57:     ' Referenced from: FC0D85
  loc_FC0E57:   End If
  loc_FC0E5A: Next var_D4 'Integer
  loc_FC0E64: Proc_32_100_FC0E6C = &HFF
End Sub

Public Sub Proc_32_101_EAC10C(arg_C) 'EAC10C
  'Data Table: 59BA2C
  Dim var_8C As Recordset15
  loc_EAC086: IStAdFunc
  loc_EAC08D: Set var_8C = arg_C 
  loc_EAC0B5: Me.Recordset15.Fields.Append "V_NO", 3, &HB
  loc_EAC0C5: var_8C.CursorType = 3
  loc_EAC0D2: var_8C.LockType = 3
  loc_EAC0F1: var_8C.Open var_A0, var_B0, -1
  loc_EAC0F8: Set var_8C = Nothing 
  loc_EAC0FF: Set var_88 = arg_C 
  loc_EAC103: Proc_32_101_EAC10C = -1
End Sub

Public Sub Proc_32_102_17D6A24(arg_C) '17D6A24
  'Data Table: 59BA2C
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_AC As Variant
  Dim var_C0 As String
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim unk_59BA49 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_140 As Variant
  Dim var_B0 As Fields15
  Dim var_148 As Variant
  Dim var_138 As Boolean
  Dim var_144 As Fields15
  Dim var_190 As Variant
  Dim var_1A4 As TextBox
  loc_17D4944: Set var_90 = Me.TxtGt
  loc_17D494A: Call 0.Method_Proc_32_102_17D6A240 (1, var_94)
  loc_17D4952: var_96 = var_94.TabIndex
  loc_17D495A: var_8A = var_96
  loc_17D4970: Set var_90 = Me.TxtPer
  loc_17D4976: Call 0.Method_Proc_32_102_17D6A24C (var_96, var_8C)
  loc_17D4981: For var_9A = var_8A To var_96: 2 = var_9A 'Integer
  loc_17D4993:   Set var_90 = Me.TxtPer
  loc_17D4999:   Call 0.Method_Proc_32_102_17D6A240 (var_8C, var_94)
  loc_17D49A1:   var_94.Visible = False
  loc_17D49B7:   Set var_90 = Me.TxtPer
  loc_17D49BD:   Call 0.Method_Proc_32_102_17D6A240 (var_8C, var_94)
  loc_17D49D4:   If IsObject(CVar(var_94)) Then
  loc_17D49E1:     Set var_90 = Me.TxtPer
  loc_17D49E7:     Call 0.Method_Proc_32_102_17D6A240 (var_8C, var_94)
  loc_17D49F8:     Me.TxtPer.Unload var_94
  loc_17D4A04:   End If
  loc_17D4A07: Next var_9A 'Integer
  loc_17D4A18: Set var_90 = Me.TxtGt
  loc_17D4A1E: Call 0.Method_Proc_32_102_17D6A24C (var_96, var_8C)
  loc_17D4A29: For var_B4 =  To var_96: 2 = var_B4 'Integer
  loc_17D4A3B:   Set var_90 = Me.TxtGt
  loc_17D4A41:   Call 0.Method_Proc_32_102_17D6A240 (var_8C, var_94)
  loc_17D4A49:   var_94.Visible = False
  loc_17D4A5F:   Set var_90 = Me.TxtGt
  loc_17D4A65:   Call 0.Method_Proc_32_102_17D6A240 (var_8C)
  loc_17D4A7C:   If IsObject(CVar(var_94)) Then
  loc_17D4A89:     Set var_90 = Me.TxtGt
  loc_17D4A8F:     Call 0.Method_Proc_32_102_17D6A240 (var_8C, var_94)
  loc_17D4AA0:     Me.TxtGt.Unload var_94
  loc_17D4AAC:   End If
  loc_17D4AAF: Next var_B4 'Integer
  loc_17D4AC0: Set var_90 = Me.LblCap
  loc_17D4AC6: Call 0.Method_Proc_32_102_17D6A24C (var_96, var_8C)
  loc_17D4AD1: For var_B8 =  To var_96: 2 = var_B8 'Integer
  loc_17D4AE3:   Set var_90 = Me.LblCap
  loc_17D4AE9:   Call 0.Method_Proc_32_102_17D6A240 (var_8C, var_94)
  loc_17D4AF1:   var_94.Visible = False
  loc_17D4B07:   Set var_90 = Me.LblCap
  loc_17D4B0D:   Call 0.Method_Proc_32_102_17D6A240 (var_8C)
  loc_17D4B15:   var_AC = CVar(var_94) 'Address
  loc_17D4B24:   If IsObject(var_AC) Then
  loc_17D4B31:     Set var_90 = Me.LblCap
  loc_17D4B37:     Call 0.Method_Proc_32_102_17D6A240 (var_8C, var_94)
  loc_17D4B48:     Me.LblCap.Unload var_94
  loc_17D4B54:   End If
  loc_17D4B57: Next var_B8 'Integer
  loc_17D4B60: Set var_90 = Me.TopCtrl1
  loc_17D4B66: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17D4B7F: If (CStr() = "Add") Then
  loc_17D4B9D:   var_C0 = "Select * From SundryType WHERE V_Type='" & MemVar_1F95078 & "PURC' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='"
  loc_17D4BB9:   Proc_6_7_F26918(var_AC, arg_C, CVar(var_C0 & MemVar_1F95078 & "PURC' aND AppDate<="))
  loc_17D4BD8:   unk_59BA49.Execute CStr(var_138 & var_AC & "  Order by AppDate Desc) Order by SNO"), -1, var_90
  loc_17D4BE3:   Set var_88 = var_90
  loc_17D4C04: Else
  loc_17D4C1F:   var_C0 = "Select * From SundryType WHERE V_Type='" & MemVar_1F95078 & "PURC' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='"
  loc_17D4C3B:   Proc_6_7_F26918(var_AC, arg_C, CVar(var_C0 & MemVar_1F95078 & "PURC' aND AppDate="))
  loc_17D4C5A:   unk_59BA49.Execute CStr(var_138 & var_AC & "  Order by AppDate Desc) Order by SNO"), -1, var_90
  loc_17D4C65:   Set var_88 = var_90
  loc_17D4C83: End If
  loc_17D4C97: If (var_88.RecordCount > 0) Then
  loc_17D4CD3:   Set var_B0 = Me.Txt
  loc_17D4CD9:   Call 0.Method_Proc_32_102_17D6A240 (CInt(9), var_140)
  loc_17D4CE1:   var_140.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_17D4CF7:   ' Referenced from: 17D6A1F
  loc_17D4CFD:   var_96 = var_88.EOF
  loc_17D4D06:   If Not(var_96) Then
  loc_17D4D45:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_17D4D79:       Set var_B0 = Me.LblDummy
  loc_17D4D7F:       Call 0.Method_Proc_32_102_17D6A248 (var_96)
  loc_17D4D99:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17D4DCE:         Set var_B0 = Me.LblDummy
  loc_17D4DD4:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D4DE5:         Me.LblDummy.Load var_140
  loc_17D4DF8:       End If
  loc_17D4E43:       var_140 = var_88.Fields.Item("SNo")
  loc_17D4E58:       Set var_144 = Me.LblDummy
  loc_17D4E5E:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_140.Value), var_148)
  loc_17D4E66:       var_148.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_17D4EB5:       Set var_B0 = Me.TxtPer
  loc_17D4EBB:       Call 0.Method_Proc_32_102_17D6A248 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D4ED5:       If (var_140 > CVar(var_96)) Then
  loc_17D4F0A:         Set var_B0 = Me.TxtPer
  loc_17D4F10:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D4F21:         Me.TxtPer.Load var_140
  loc_17D4F34:       End If
  loc_17D4F79:       If (var_88.Fields.Item("SNo").Value > CVar(UBound(global_200, 1))) Then
  loc_17D4FB3:         ReDim Preserve global_200(0 To CLng(var_88.Fields.Item("SNo").Value))
  loc_17D4FC7:       End If
  loc_17D500C:       If (var_88.Fields.Item("SNo").Value > CVar(UBound(global_204, 1))) Then
  loc_17D5046:         ReDim Preserve global_204(0 To CLng(var_88.Fields.Item("SNo").Value))
  loc_17D505A:       End If
  loc_17D50BE:       global_200(CLng(var_88.Fields.Item("SNo").Value)) = CStr(Trim(CVar(var_88.Fields.Item("PostYn"))))
  loc_17D511C:       var_140 = var_88.Fields.Item("SNo")
  loc_17D5134:       global_204(CLng(var_140.Value)) = CStr(var_88.Fields.Item("Nature").Value)
  loc_17D5182:       Set var_B0 = Me.TxtPer
  loc_17D5188:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5190:       var_140.TabIndex = (var_8A + 1)
  loc_17D51A9:       var_8A = (var_8A + 1)
  loc_17D51ED:       var_140 = var_88.Fields.Item("SNo")
  loc_17D522D:       Set var_144 = Me.TxtPer
  loc_17D5233:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_140.Value), var_148, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_17D523B:       var_148.Visible = var_8A
  loc_17D529A:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D52F9:         var_114 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D5302:         Set var_18C = Me.TxtPer
  loc_17D5308:         Call 0.Method_Proc_32_102_17D6A240 (CInt(True), var_190)
  loc_17D534A:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D5353:         Set var_B0 = Me.TxtPer
  loc_17D5359:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("Nature").Value), var_140)
  loc_17D537D:         Set var_1A0 = Me.TxtPer
  loc_17D5383:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_17D538B:         var_1A4.Top = ((var_140.Top + var_190.Height) + CDbl(&HF))
  loc_17D53B4:       End If
  loc_17D53F0:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D544F:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D5458:         Set var_B0 = Me.TxtPer
  loc_17D545E:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("Nature").Value), var_140)
  loc_17D5479:         Set var_18C = Me.TxtPer
  loc_17D547F:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D5487:         var_190.Left = var_140.Left
  loc_17D54A6:       End If
  loc_17D5503:       var_148 = var_88.Fields.Item("SNo")
  loc_17D5550:       Set var_18C = Me.TxtPer
  loc_17D5556:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_148.Value), var_190)
  loc_17D555E:       var_190.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17D55D1:       var_140 = var_88.Fields.Item("SNo")
  loc_17D55E6:       Set var_144 = Me.TxtPer
  loc_17D55EC:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_140.Value), var_148)
  loc_17D55F4:       var_148.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_17D564B:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D5682:         Set var_B0 = Me.TxtPer
  loc_17D5688:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5690:         var_140.FontBold = True
  loc_17D56A6:       Else
  loc_17D56DA:         Set var_B0 = Me.TxtPer
  loc_17D56E0:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D56E8:         var_140.FontBold = False
  loc_17D56FB:       End If
  loc_17D5734:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D576B:         Set var_B0 = Me.TxtPer
  loc_17D5771:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5779:         var_140.Enabled = False
  loc_17D578F:       Else
  loc_17D57C3:         Set var_B0 = Me.TxtPer
  loc_17D57C9:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D57D1:         var_140.Enabled = True
  loc_17D57E4:       End If
  loc_17D57E8:       Set var_90 = Me.TopCtrl1
  loc_17D57EE:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_17D5807:       If (CStr() = "Browse") Then
  loc_17D583E:         Set var_B0 = Me.TxtPer
  loc_17D5844:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D584C:         var_140.Enabled = False
  loc_17D585F:       End If
  loc_17D589B:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17D58D2:         Set var_B0 = Me.TxtPer
  loc_17D58D8:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D58E0:         var_140.Enabled = False
  loc_17D58F3:       End If
  loc_17D5924:       Set var_B0 = Me.LblCap
  loc_17D592A:       Call 0.Method_Proc_32_102_17D6A248 (var_96)
  loc_17D5944:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17D5979:         Set var_B0 = Me.LblCap
  loc_17D597F:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D5990:         Me.LblCap.Load var_140
  loc_17D59A3:       End If
  loc_17D59D7:       Set var_B0 = Me.LblCap
  loc_17D59DD:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D59E5:       var_140.Visible = True
  loc_17D5A54:       Set var_B0 = Me.TxtPer
  loc_17D5A5A:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5A75:       Set var_18C = Me.LblCap
  loc_17D5A7B:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D5A83:       var_190.Top = var_140.Top
  loc_17D5ADE:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D5B22:         var_148 = var_88.Fields.Item("SNo")
  loc_17D5B3D:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D5B46:         Set var_B0 = Me.LblCap
  loc_17D5B4C:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5B67:         Set var_18C = Me.LblCap
  loc_17D5B6D:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_148.Value), var_190)
  loc_17D5B75:         var_190.Left = var_140.Left
  loc_17D5B94:       End If
  loc_17D5BF4:       Set var_144 = Me.LblCap
  loc_17D5BFA:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_17D5C02:       var_148.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_17D5C6B:       var_140 = var_88.Fields.Item("SNo")
  loc_17D5C80:       Set var_144 = Me.LblCap
  loc_17D5C86:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_140.Value), var_148)
  loc_17D5C8E:       var_148.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_17D5CE5:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D5D1C:         Set var_B0 = Me.LblCap
  loc_17D5D22:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5D2A:         var_140.FontBold = True
  loc_17D5D40:       Else
  loc_17D5D74:         Set var_B0 = Me.LblCap
  loc_17D5D7A:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5D82:         var_140.FontBold = False
  loc_17D5D95:       End If
  loc_17D5DC6:       Set var_B0 = Me.LblAt
  loc_17D5DCC:       Call 0.Method_Proc_32_102_17D6A248 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D5DE6:       If (var_140 > CVar(var_96)) Then
  loc_17D5E1B:         Set var_B0 = Me.LblAt
  loc_17D5E21:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D5E32:         Me.LblAt.Load var_140
  loc_17D5E45:       End If
  loc_17D5E86:       var_140 = var_88.Fields.Item("SNo")
  loc_17D5EC6:       Set var_144 = Me.LblAt
  loc_17D5ECC:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_140.Value), var_148)
  loc_17D5ED4:       var_148.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_17D5F38:       var_148 = var_88.Fields.Item("SNo")
  loc_17D5F53:       Set var_B0 = Me.TxtPer
  loc_17D5F59:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5F74:       Set var_18C = Me.LblAt
  loc_17D5F7A:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_148.Value), var_190)
  loc_17D5F82:       var_190.Top = var_140.Top
  loc_17D5FDA:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D6011:         Set var_B0 = Me.LblAt
  loc_17D6017:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D601F:         var_140.FontBold = True
  loc_17D6035:       Else
  loc_17D6069:         Set var_B0 = Me.LblAt
  loc_17D606F:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6077:         var_140.FontBold = False
  loc_17D608A:       End If
  loc_17D60D5:       var_140 = var_88.Fields.Item("SNo")
  loc_17D60EA:       Set var_144 = Me.LblAt
  loc_17D60F0:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_140.Value), var_148)
  loc_17D60F8:       var_148.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_17D6152:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D61B1:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D61BA:         Set var_B0 = Me.LblAt
  loc_17D61C0:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("RoundOff").Value), var_140)
  loc_17D61DB:         Set var_18C = Me.LblAt
  loc_17D61E1:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D61E9:         var_190.Left = var_140.Left
  loc_17D6208:       End If
  loc_17D6239:       Set var_B0 = Me.TxtGt
  loc_17D623F:       Call 0.Method_Proc_32_102_17D6A248 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D6259:       If (var_140 > CVar(var_96)) Then
  loc_17D628E:         Set var_B0 = Me.TxtGt
  loc_17D6294:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D62A5:         Me.TxtGt.Load var_140
  loc_17D62B8:       End If
  loc_17D62F0:       Set var_B0 = Me.TxtGt
  loc_17D62F6:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D62FE:       var_140.TabIndex = (var_8A + 1)
  loc_17D6317:       var_8A = (var_8A + 1)
  loc_17D634E:       Set var_B0 = Me.TxtGt
  loc_17D6354:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140, &HFF)
  loc_17D635C:       var_140.Visible = var_8A
  loc_17D63CB:       Set var_B0 = Me.TxtPer
  loc_17D63D1:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D63EC:       Set var_18C = Me.TxtGt
  loc_17D63F2:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D63FA:       var_190.Top = var_140.Top
  loc_17D6455:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D64B4:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D64BD:         Set var_B0 = Me.TxtGt
  loc_17D64C3:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D64DE:         Set var_18C = Me.TxtGt
  loc_17D64E4:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D64EC:         var_190.Left = var_140.Left
  loc_17D650B:       End If
  loc_17D6568:       var_148 = var_88.Fields.Item("SNo")
  loc_17D65B5:       Set var_18C = Me.TxtGt
  loc_17D65BB:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_148.Value), var_190)
  loc_17D65C3:       var_190.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17D6633:       var_140 = var_88.Fields.Item("SNo")
  loc_17D6648:       Set var_144 = Me.TxtGt
  loc_17D664E:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_140.Value), var_148)
  loc_17D6656:       var_148.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_17D66AB:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D66E2:         Set var_B0 = Me.TxtGt
  loc_17D66E8:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D66F0:         var_140.FontBold = True
  loc_17D6706:       Else
  loc_17D673A:         Set var_B0 = Me.TxtGt
  loc_17D6740:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6748:         var_140.FontBold = False
  loc_17D675B:       End If
  loc_17D6794:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D67CB:         Set var_B0 = Me.TxtGt
  loc_17D67D1:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D67D9:         var_140.Enabled = False
  loc_17D67EF:       Else
  loc_17D6823:         Set var_B0 = Me.TxtGt
  loc_17D6829:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6831:         var_140.Enabled = True
  loc_17D6844:       End If
  loc_17D6879:       Set var_B0 = Me.LblCap
  loc_17D687F:       Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D68B0:       If (var_140.Tag = MemVar_1F95070 & "ROFF") Then
  loc_17D68E7:         Set var_B0 = Me.TxtGt
  loc_17D68ED:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D68F5:         var_140.Enabled = False
  loc_17D6908:       End If
  loc_17D690C:       Set var_90 = Me.TopCtrl1
  loc_17D6912:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_17D692B:       If (CStr() = "Browse") Then
  loc_17D6962:         Set var_B0 = Me.TxtGt
  loc_17D6968:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6970:         var_140.Enabled = False
  loc_17D6983:       End If
  loc_17D69BF:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17D69F6:         Set var_B0 = Me.TxtGt
  loc_17D69FC:         Call 0.Method_Proc_32_102_17D6A240 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6A04:         var_140.Enabled = False
  loc_17D6A17:       End If
  loc_17D6A17:     End If
  loc_17D6A1A:     var_88.MoveNext
  loc_17D6A1F:     GoTo loc_17D4CF7
  loc_17D6A22:   End If
  loc_17D6A22: End If
  loc_17D6A22: Exit Sub
End Sub

Public Sub Proc_32_103_17C4004(arg_C) '17C4004
  'Data Table: 59BA2C
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
  Dim unk_59BA49 As Connection15
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
  loc_17C201E: global_216 = CDbl(0)
  loc_17C202D: Set var_B4 = Me.TxtGt
  loc_17C2033: Call 0.Method_Proc_32_103_17C40048 (var_B6, var_86)
  loc_17C203E: For var_BA = global_216 To var_B6: 1 = var_BA 'Integer
  loc_17C207E:   Set var_B4 = Me.LblCap
  loc_17C2084:   Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_C8, CVar("Select IsNull(Max(Nature),'') from SundryType Where LOGSITE_CODE='" & MemVar_1F95078 & "' AND SundryCode='"), var_18C, -1)
  loc_17C20CC:   unk_59BA49.Execute CStr(var_194 & Trim(CVar(var_C8)) & "' And V_Type='" & CVar(MemVar_1F95078) & "PURC'"), 0, var_1A8
  loc_17C20DC:    = var_194.Item(global_216)
  loc_17C20E4:    = var_1A8.Value
  loc_17C20F1:   var_A0 = Proc_6_38_E69628(var_C4.Tag.Fields)
  loc_17C2125:   If (var_A0 = "Addition") Then
  loc_17C2128:     GoTo loc_17C2200
  loc_17C212B:   End If
  loc_17C2133:   If (var_A0 = "Deduction") Then
  loc_17C2136:     GoTo loc_17C2200
  loc_17C2139:   End If
  loc_17C2141:   If (var_A0 = "Discount") Then
  loc_17C2151:     Set var_B4 = Me.TxtGt
  loc_17C2157:     Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4)
  loc_17C215F:     var_C4.Text = vbNullString
  loc_17C2170:     var_92 = CByte(var_86) 'Byte
  loc_17C2177:   Else
  loc_17C219A:     If ((((var_A0 = "Sale Tax") Or (var_A0 = "CGST")) Or (var_A0 = "SGST")) Or (var_A0 = "IGST")) Then
  loc_17C21AA:       Set var_B4 = Me.TxtGt
  loc_17C21B0:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4)
  loc_17C21B8:       var_C4.Text = vbNullString
  loc_17C21C9:       var_94 = CByte(var_86) 'Byte
  loc_17C21D3:       global_100 = var_86
  loc_17C21D9:     Else
  loc_17C21E6:       Set var_B4 = Me.TxtGt
  loc_17C21EC:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4)
  loc_17C21F4:       var_C4.Text = vbNullString
  loc_17C2200:     End If
  loc_17C2200:   End If
  loc_17C2200:   ' Referenced from: 17C2136
  loc_17C2200:   ' Referenced from: 17C2128
  loc_17C2203: Next var_BA 'Integer
  loc_17C221B: Me.FGCat.Rows = 1
  loc_17C222F: Set var_B4 = Me.TxtGt
  loc_17C2235: Call 0.Method_Proc_32_103_17C40048 (var_B6, var_86)
  loc_17C2240: For var_1BC =  To var_B6: 2 = var_1BC 'Integer
  loc_17C2253:   Set var_B4 = Me.LblCap
  loc_17C2259:   Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4)
  loc_17C2293:   Set var_190 = Me.LblCap
  loc_17C2299:   Call 0.Method_Proc_32_103_17C40040 (var_86, var_194)
  loc_17C22E6:   If CBool((Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F95078 & "DIS")) And (Trim(CVar(var_194.Tag)) <> CVar(MemVar_1F95078 & "ADD"))) Then
  loc_17C22F6:     Set var_B4 = Me.TxtGt
  loc_17C22FC:     Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4)
  loc_17C2304:     var_C4.Text = vbNullString
  loc_17C231A:     If (var_94 > var_92) Then
  loc_17C2342:       For var_1C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_1C0 'Integer
  loc_17C2355:         Set var_B4 = Me.LblCap
  loc_17C235B:         Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4)
  loc_17C2396:         If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_17C239D:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C23A5:           var_158 = CVar(CLng(&H14)) 'Long
  loc_17C23BF:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C23D0:           If (var_C0 = "Y") Then
  loc_17C23D7:             var_118 = CVar(CLng(var_88)) 'Long
  loc_17C23F1:             Set var_B4 = Me.TxtPer
  loc_17C23F7:             Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_C0, CVar(CLng(&HF)))
  loc_17C23FF:             var_118 = var_C4.Text
  loc_17C240E:             var_D8 = CVar(CStr(Val(var_C0))) 'String
  loc_17C2416:             Set var_190 = Me.FGrid
  loc_17C241C:             LateIdCallSt
  loc_17C2433:           End If
  loc_17C2433:         End If
  loc_17C2437:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C243F:         var_158 = CVar(CLng(5)) 'Long
  loc_17C2468:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C2470:         var_1E0 = CVar(CLng(9)) 'Long
  loc_17C2499:         var_200 = CVar(CLng(var_88)) 'Long
  loc_17C24A1:         var_220 = CVar(CLng(&HF)) 'Long
  loc_17C24CA:         var_260 = CVar(CLng(var_88)) 'Long
  loc_17C24D2:         var_280 = CVar(CLng(&H10)) 'Long
  loc_17C24FB:         var_108 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_17C250B:         var_168 = CVar(CStr(Format(var_108, "0.00"))) 'String
  loc_17C2513:         Set var_194 = Me.FGrid
  loc_17C2519:         LateIdCallSt
  loc_17C254A:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C2552:         var_158 = CVar(CLng(&HF)) 'Long
  loc_17C2582:         If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_17C2589:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C2591:           var_158 = CVar(CLng(5)) 'Long
  loc_17C25BA:           var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C25C2:           var_1E0 = CVar(CLng(9)) 'Long
  loc_17C25F8:           global_216 = (global_216 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_17C2610:         End If
  loc_17C2614:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C261C:         var_1E0 = CVar(CLng(5)) 'Long
  loc_17C2645:         var_200 = CVar(CLng(var_88)) 'Long
  loc_17C264D:         var_220 = CVar(CLng(&HB)) 'Long
  loc_17C2656:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C265E:         var_158 = CVar(CLng(9)) 'Long
  loc_17C268E:         Set var_190 = Me.FGrid
  loc_17C2694:         LateIdCallSt
  loc_17C26C1:         var_158 = CVar(CLng(&HB)) 'Long
  loc_17C26F2:         Set var_C4 = Me.LblDummy
  loc_17C26F8:         Call 0.Method_Proc_32_103_17C40040 (var_86, var_190, CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_158, CVar(CLng(var_88)), var_190, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_17C2700:         var_190.Caption = var_158
  loc_17C271C:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C2724:         var_158 = CVar(CLng(&HB)) 'Long
  loc_17C273E:         var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C274D:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C2755:         var_1E0 = CVar(CLng(&H10)) 'Long
  loc_17C275E:         Set var_C4 = Me.FGrid
  loc_17C277E:         var_200 = CVar(CLng(var_88)) 'Long
  loc_17C2786:         var_220 = CVar(CLng(&H12)) 'Long
  loc_17C27A8:         var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C27B7:         var_280 = CVar(CLng(&H13)) 'Long
  loc_17C27DC:         var_108 = CVar(((Val(var_C0) - Val(CStr(var_C4.TextMatrix)))) + var_2B8)) 'Double
  loc_17C27FA:         LateIdCallSt
  loc_17C2834:         Set var_B4 = Me.LblCap
  loc_17C283A:         Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_C0, Me.FGrid, CVar(CStr(Format(var_108, "0.00"))), 1, 1)
  loc_17C2842:         var_280 = var_C4.Tag
  loc_17C2875:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_17C2885:           Set var_B4 = Me.TxtGt
  loc_17C288B:           Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_C0, CVar(CLng(var_88)), var_2B8)
  loc_17C2893:           var_220 = var_C4.Text
  loc_17C28A7:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C28D1:           var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C28F0:           var_E8 = CVar((Val(var_C0) + var_2B0)) 'Double
  loc_17C290D:           Set var_194 = Me.TxtGt
  loc_17C2913:           Call 0.Method_Proc_32_103_17C40040 (var_86, var_1A8, CStr(Format(Trim(CVar(var_C0)), "0.00")), 1, 1, var_2B0)
  loc_17C291B:           var_1A8.Text = CVar(CLng(&H10))
  loc_17C2941:         End If
  loc_17C2944:       Next var_1C0 'Integer
  loc_17C294C:     Else
  loc_17C2971:       For var_2BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_2BC 'Integer
  loc_17C2984:         Set var_B4 = Me.LblCap
  loc_17C298A:         Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4)
  loc_17C29C5:         If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_17C29CC:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C29D4:           var_158 = CVar(CLng(&H14)) 'Long
  loc_17C29EE:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C29FF:           If (var_C0 = "Y") Then
  loc_17C2A06:             var_118 = CVar(CLng(var_88)) 'Long
  loc_17C2A20:             Set var_B4 = Me.TxtPer
  loc_17C2A26:             Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_C0, CVar(CLng(&HF)))
  loc_17C2A2E:             var_118 = var_C4.Text
  loc_17C2A3D:             var_D8 = CVar(CStr(Val(var_C0))) 'String
  loc_17C2A45:             Set var_190 = Me.FGrid
  loc_17C2A4B:             LateIdCallSt
  loc_17C2A62:           End If
  loc_17C2A62:         End If
  loc_17C2A9F:         Set var_C4 = Me.LblDummy
  loc_17C2AA5:         Call 0.Method_Proc_32_103_17C40040 (var_86, var_190, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(&HB)), CVar(CLng(var_88)))
  loc_17C2AAD:         var_190.Caption = var_190
  loc_17C2AC9:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C2AD1:         var_158 = CVar(CLng(&HB)) 'Long
  loc_17C2AFA:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C2B02:         var_1E0 = CVar(CLng(&HF)) 'Long
  loc_17C2B0B:         Set var_C4 = Me.FGrid
  loc_17C2B2B:         var_220 = CVar(CLng(var_88)) 'Long
  loc_17C2B33:         var_240 = CVar(CLng(&H10)) 'Long
  loc_17C2B68:         var_148 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_C4.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_17C2B70:         Set var_190 = Me.FGrid
  loc_17C2B76:         LateIdCallSt
  loc_17C2BA1:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C2BA9:         var_158 = CVar(CLng(&HF)) 'Long
  loc_17C2BD9:         If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_17C2BE0:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C2BE8:           var_158 = CVar(CLng(&HB)) 'Long
  loc_17C2C02:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C2C0A:           var_2A8 = Val(var_C0)
  loc_17C2C1A:           global_216 = (global_216 + var_2A8)
  loc_17C2C26:         End If
  loc_17C2C33:         Set var_B4 = Me.LblCap
  loc_17C2C39:         Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_C0, global_216, var_2A8, var_158, var_118)
  loc_17C2C41:         var_158 = var_C4.Tag
  loc_17C2C74:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F95070 & "DIS")) Then
  loc_17C2C84:           Set var_B4 = Me.TxtGt
  loc_17C2C8A:           Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_C0, var_118, var_190)
  loc_17C2C92:           var_148 = var_C4.Text
  loc_17C2CA6:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C2CD0:           var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C2CEF:           var_E8 = CVar((Val(var_C0) + var_2B0)) 'Double
  loc_17C2D0C:           Set var_194 = Me.TxtGt
  loc_17C2D12:           Call 0.Method_Proc_32_103_17C40040 (var_86, var_1A8, CStr(Format(Trim(CVar(var_C0)), "0.00")), 1, 1, var_2B0)
  loc_17C2D1A:           var_1A8.Text = CVar(CLng(&H10))
  loc_17C2D40:         End If
  loc_17C2D43:       Next var_2BC 'Integer
  loc_17C2D48:     End If
  loc_17C2D48:   End If
  loc_17C2D4B: Next var_1BC 'Integer
  loc_17C2D75: For var_2C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2C0 'Integer
  loc_17C2D7F:   var_118 = CVar(CLng(var_86)) 'Long
  loc_17C2D87:   var_158 = CVar(CLng(5)) 'Long
  loc_17C2DB0:   var_1A4 = CVar(CLng(var_86)) 'Long
  loc_17C2DB8:   var_1E0 = CVar(CLng(9)) 'Long
  loc_17C2DE1:   var_220 = CVar(CLng(var_86)) 'Long
  loc_17C2DE9:   var_240 = CVar(CLng(&HB)) 'Long
  loc_17C2E1A:   var_148 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_17C2E22:   Set var_190 = Me.FGrid
  loc_17C2E28:   LateIdCallSt
  loc_17C2E62:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C2E6A:   var_158 = CVar(CLng(6)) 'Long
  loc_17C2EA2:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <= CDbl(0)) Then
  loc_17C2EB8:     var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C2EC0:     var_158 = CVar(CLng(6)) 'Long
  loc_17C2EC9:     var_E8 = CVar(CStr(1)) 'String
  loc_17C2ED1:     Set var_C4 = Me.FGrid
  loc_17C2ED7:     LateIdCallSt
  loc_17C2EED:   End If
  loc_17C2F00:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C2F08:   var_158 = CVar(CLng(6)) 'Long
  loc_17C2F11:   Set var_C4 = Me.FGrid
  loc_17C2F22:   var_C0 = CStr(var_C4.TextMatrix))
  loc_17C2F40:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C2F48:   var_1E0 = CVar(CLng(5)) 'Long
  loc_17C2F71:   Set var_1A8 = Me.FGrid
  loc_17C2F80:   var_220 = CVar(CLng(var_1A8.Row)) 'Long
  loc_17C2F88:   var_240 = CVar(CLng(7)) 'Long
  loc_17C2FC1:   Set var_2C4 = Me.FGrid
  loc_17C2FC7:   LateIdCallSt
  loc_17C3006:   Set var_B4 = Me.TxtGt
  loc_17C300C:   Call 0.Method_Proc_32_103_17C40040 (1, var_C4, var_C0, var_2C4, CVar(CStr(Format(CVar((Val(var_C0) * Val(CStr(Me.FGrid.TextMatrix))))), "0.000"))), 1, 1)
  loc_17C3014:   var_240 = var_C4.Text
  loc_17C3021:   var_2A8 = Val(var_C0)
  loc_17C3052:   var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C3071:   var_E8 = CVar((var_2A8 + var_2B0)) 'Double
  loc_17C308D:   Set var_194 = Me.TxtGt
  loc_17C3093:   Call 0.Method_Proc_32_103_17C40040 (1, var_1A8, CStr(Format(var_C4.TextMatrix), "0.00")), 1, 1, var_2B0, CVar(CLng(&HB)))
  loc_17C309B:   var_1A8.Text = CVar(CLng(var_86))
  loc_17C30C4: Next var_2C0 'Integer
  loc_17C30DC: Me.FGCat.Rows = 1
  loc_17C3109: For var_2C8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2C8 'Integer
  loc_17C3119:   If (var_94 > var_92) Then
  loc_17C3120:     var_118 = CVar(CLng(var_86)) 'Long
  loc_17C3128:     var_158 = CVar(CLng(&H1A)) 'Long
  loc_17C3147:     var_1A4 = CVar(CLng(var_86)) 'Long
  loc_17C314F:     var_1E0 = CVar(CLng(9)) 'Long
  loc_17C3178:     var_200 = CVar(CLng(var_86)) 'Long
  loc_17C3180:     var_220 = CVar(CLng(5)) 'Long
  loc_17C31BA:     Set var_194 = Me.FGrid
  loc_17C31D3:     var_2D4 = Val(CStr(var_194.TextMatrix)))
  loc_17C31F6:     var_128 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_2D4)) 'Double
  loc_17C3215:     Call Proc_32_107_1713300(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00")), 1, 1, var_2D4, CVar(CLng(&H10)), CVar(CLng(var_86)))
  loc_17C3244:   Else
  loc_17C3248:     var_118 = CVar(CLng(var_86)) 'Long
  loc_17C3250:     var_158 = CVar(CLng(&H1A)) 'Long
  loc_17C326F:     var_1A4 = CVar(CLng(var_86)) 'Long
  loc_17C3277:     var_1E0 = CVar(CLng(9)) 'Long
  loc_17C3280:     Set var_C4 = Me.FGrid
  loc_17C32CA:     var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C3308:     Call Proc_32_107_1713300(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(var_C4.TextMatrix))) * var_2B8)), "0.00")), 1, 1, var_2B8, CVar(CLng(5)), CVar(CLng(var_86)))
  loc_17C332E:   End If
  loc_17C3331: Next var_2C8 'Integer
  loc_17C333A: Set var_B4 = Me.TopCtrl1
  loc_17C3340: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17C3359: If (CStr() = "Add") Then
  loc_17C3368:   Set var_B4 = Me.TxtGt
  loc_17C336E:   Call 0.Method_Proc_32_103_17C40048 (var_B6, var_86)
  loc_17C3379:   For var_2D8 =  To var_B6: 2 = var_2D8 'Integer
  loc_17C338C:     Set var_B4 = Me.TxtPer
  loc_17C3392:     Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4)
  loc_17C339A:     var_B6 = var_C4.Visible
  loc_17C33B6:     Set var_190 = Me.LblCap
  loc_17C33BC:     Call 0.Method_Proc_32_103_17C40040 (var_86, var_194)
  loc_17C33C4:     var_C0 = var_194.Tag
  loc_17C33FA:     Set var_1A8 = Me.LblCap
  loc_17C3400:     Call 0.Method_Proc_32_103_17C40040 (var_86, var_2C4)
  loc_17C342D:     var_2E8 = (var_B6 = &HFF) And (Trim(CVar(var_C0)) = CVar(MemVar_1F95078 & "SCH")) And (Trim(CVar(var_2C4.Tag)) <> CVar(MemVar_1F95078 & "ADD"))
  loc_17C3453:     If CBool(var_2E8) Then
  loc_17C345C:       Call Proc_32_104_1199B84(var_86)
  loc_17C3464:       var_90 = var_2A8
  loc_17C3474:       Set var_B4 = Me.TxtPer
  loc_17C347A:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_C0)
  loc_17C3482:       var_90 = var_C4.Text
  loc_17C348F:       var_2A8 = Val(var_C0)
  loc_17C34C1:       var_C8 = CStr(Format(CVar(((var_90 * var_2A8) / CDbl(&H64))), "0.00"))
  loc_17C34CF:       Set var_190 = Me.TxtGt
  loc_17C34D5:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_194, var_C8, 1)
  loc_17C34DD:       var_194.Text = 1
  loc_17C350F:       Set var_B4 = Me.LblDummy
  loc_17C3515:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, CStr(var_90))
  loc_17C351D:       var_C4.Caption = var_2A8
  loc_17C352C:     End If
  loc_17C352F:   Next var_2D8 'Integer
  loc_17C3534: End If
  loc_17C3553: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_17C3569:   Me.FGCat.FixedRows = 1
  loc_17C3571: End If
  loc_17C359F: For var_2EC = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_2EC 'Integer
  loc_17C35B1:   Set var_B4 = Me.TxtGt
  loc_17C35B7:   Call 0.Method_Proc_32_103_17C40048 (var_B6, var_86, 1)
  loc_17C35C2:   For var_2F0 = CDbl(0) To var_B6: 0 = var_2F0 'Integer
  loc_17C35D5:     Set var_B4 = Me.LblDummy
  loc_17C35DB:     Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4)
  loc_17C35FD:     var_118 = CVar(CLng(var_88)) 'Long
  loc_17C3634:     Set var_194 = Me.LblCap
  loc_17C363A:     Call 0.Method_Proc_32_103_17C40040 (var_86, var_1A8, var_C8, (CVar(CLng(2)) = CVar(CStr(Me.FGCat.TextMatrix)))))
  loc_17C3642:     var_118 = var_1A8.Tag
  loc_17C368B:     If CBool(Trim(CVar(var_C4.Tag)) And (Trim(CVar(var_C8)) <> CVar(MemVar_1F95078 & "ADD"))) Then
  loc_17C369B:       Set var_B4 = Me.TxtGt
  loc_17C36A1:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4)
  loc_17C36A9:       var_C0 = var_C4.Text
  loc_17C36B6:       var_2A8 = Val(var_C0)
  loc_17C36BD:       var_118 = CVar(CLng(var_88)) 'Long
  loc_17C36C5:       var_158 = CVar(CLng(6)) 'Long
  loc_17C36E7:       var_2B0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_17C3706:       var_E8 = CVar((var_2A8 + var_2B0)) 'Double
  loc_17C3723:       Set var_194 = Me.TxtGt
  loc_17C3729:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_1A8, CStr(Format(Trim(CVar(var_C4.Tag)), "0.00")), 1, 1)
  loc_17C3731:       var_1A8.Text = var_2B0
  loc_17C375A:     Else
  loc_17C3767:       Set var_B4 = Me.TxtPer
  loc_17C376D:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_B6, var_158)
  loc_17C3775:       var_118 = var_C4.Visible
  loc_17C3787:       If (var_B6 = &HFF) Then
  loc_17C3790:         Call Proc_32_104_1199B84(var_86, var_2A8)
  loc_17C3798:         var_90 = var_2A8
  loc_17C37A8:         Set var_B4 = Me.TxtPer
  loc_17C37AE:         Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_C0)
  loc_17C37B6:         var_90 = var_C4.Text
  loc_17C37C3:         var_2A8 = Val(var_C0)
  loc_17C3803:         Set var_190 = Me.TxtGt
  loc_17C3809:         Call 0.Method_Proc_32_103_17C40040 (var_86, var_194, CStr(Format(CVar(((var_90 * var_2A8) / CDbl(&H64))), "0.00")), 1)
  loc_17C3811:         var_194.Text = 1
  loc_17C3843:         Set var_B4 = Me.LblDummy
  loc_17C3849:         Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, CStr(var_90))
  loc_17C3851:         var_C4.Caption = var_2A8
  loc_17C3860:       End If
  loc_17C3860:     End If
  loc_17C3863:   Next var_2F0 'Integer
  loc_17C386B: Next var_2EC 'Integer
  loc_17C387C: Set var_B4 = Me.TxtGt
  loc_17C3882: Call 0.Method_Proc_32_103_17C40048 (var_B6, var_86)
  loc_17C388D: For var_2F4 =  To var_B6: 2 = var_2F4 'Integer
  loc_17C38A0:   Set var_B4 = Me.LblCap
  loc_17C38A6:   Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4)
  loc_17C38B6:   var_D8 = CVar(var_C4.Tag) 'String
  loc_17C38E1:   If (Trim(var_D8) = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_17C38EA:     Call Proc_32_104_1199B84(var_86)
  loc_17C38F2:     var_90 = var_2A8
  loc_17C390D:     Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, CStr(var_90))
  loc_17C3915:     var_C4.Caption = var_90
  loc_17C393A:     unk_59BA49.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Purchase Bill'", var_D8, -1
  loc_17C3945:     Set var_B0 = Me.LblDummy
  loc_17C3962:     If (var_B0.RecordCount > 0) Then
  loc_17C3974:       var_B4 = var_B0.Fields
  loc_17C397C:       var_C4 = var_B4.Item("RoundOffType")
  loc_17C39A8:       Proc_6_85_12628F0(var_90, CByte(2), CStr(Left(CVar(var_C4), 1)))
  loc_17C39E5:       Set var_190 = Me.TxtGt
  loc_17C39EB:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_194, CStr(Format(CVar(var_B4), "0.00")), 1)
  loc_17C39F3:       var_194.Text = 1
  loc_17C3A18:     Else
  loc_17C3A1B:       var_C0 = "S"
  loc_17C3A2C:       Proc_6_85_12628F0(var_90, CByte(2), var_C0)
  loc_17C3A5B:       var_C8 = CStr(Format(CVar(var_2A8), "0.00"))
  loc_17C3A69:       Set var_B4 = Me.TxtGt
  loc_17C3A6F:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_C8, 1)
  loc_17C3A77:       var_C4.Text = 1
  loc_17C3A93:     End If
  loc_17C3A96:   Else
  loc_17C3A9D:     If (var_86 <> arg_C) Then
  loc_17C3AAD:       Set var_B4 = Me.LblCap
  loc_17C3AB3:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_C0)
  loc_17C3ABB:       var_2A8 = var_C4.Tag
  loc_17C3AED:       Set var_190 = Me.LblCap
  loc_17C3AF3:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_194, var_C8)
  loc_17C3AFB:       (Trim(CVar(var_C0)) = CVar(MemVar_1F95078 & "TOT")) = var_194.Tag
  loc_17C3B40:       If CBool(var_2A8 Or (Trim(CVar(var_C8)) = CVar(MemVar_1F95078 & "NET"))) Then
  loc_17C3B49:         Call Proc_32_104_1199B84(var_86)
  loc_17C3B83:         Set var_B4 = Me.TxtGt
  loc_17C3B89:         Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, CStr(Format(CVar(var_2A8), "0.00")))
  loc_17C3B91:         var_C4.Text = 1
  loc_17C3BA9:       End If
  loc_17C3BA9:     End If
  loc_17C3BA9:   End If
  loc_17C3BAC: Next var_2F4 'Integer
  loc_17C3BBD: Set var_B4 = Me.TxtGt
  loc_17C3BC3: Call 0.Method_Proc_32_103_17C40048 (var_B6, var_86)
  loc_17C3BCE: For var_2FC =  To var_B6: 1 = var_2FC 'Integer
  loc_17C3BDF:   var_300 = global_204(CLng(var_86))
  loc_17C3BEA:   If Not (var_300 = "Addition") Then
  loc_17C3BF5:     If Not (var_300 = "Deduction") Then
  loc_17C3C00:       If Not (var_300 = "Discount") Then
  loc_17C3C0B:         If Not (var_300 = "Luxury Tax") Then
  loc_17C3C16:           If Not (var_300 = "Sale Tax") Then
  loc_17C3C21:             If Not (var_300 = "Service Charge") Then
  loc_17C3C2C:               If (var_300 = "Service Tax") Then
  loc_17C3C2F:               End If
  loc_17C3C2F:             End If
  loc_17C3C2F:           End If
  loc_17C3C2F:         End If
  loc_17C3C2F:       End If
  loc_17C3C2F:     End If
  loc_17C3C3F:     If (global_200(CLng(var_86)) = "No") Then
  loc_17C3C49:       Set var_B4 = Me.TxtGt
  loc_17C3C4F:       Call 0.Method_Proc_32_103_17C40048 (var_B6)
  loc_17C3C61:       Set var_C4 = Me.TxtGt
  loc_17C3C67:       Call 0.Method_Proc_32_103_17C40040 (var_B6, var_190)
  loc_17C3C7B:       Set var_194 = Me.TxtGt
  loc_17C3C81:       Call 0.Method_Proc_32_103_17C40048 (var_302)
  loc_17C3C93:       Set var_1A8 = Me.TxtGt
  loc_17C3C99:       Call 0.Method_Proc_32_103_17C40040 (var_302, var_2C4)
  loc_17C3CD1:       var_F8 = Mid(CVar(var_190.Tag), (InStr(1, var_2C4.Tag, CStr(var_86), 0) - 1), 1)
  loc_17C3CD9:       var_138 = "-"
  loc_17C3D00:       If (Format(CVar(var_2A8), "0.00") = "0.00") Then
  loc_17C3D10:         Set var_B4 = Me.TxtGt
  loc_17C3D16:         Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4)
  loc_17C3D1E:         var_C0 = var_C4.Text
  loc_17C3D35:         var_9C = (var_9C - Val(var_C0))
  loc_17C3D45:       Else
  loc_17C3D52:         Set var_B4 = Me.TxtGt
  loc_17C3D58:         Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_C0)
  loc_17C3D60:         var_9C = var_C4.Text
  loc_17C3D77:         var_9C = (var_9C + Val(var_C0))
  loc_17C3D84:       End If
  loc_17C3D84:     End If
  loc_17C3D8B:     Set var_B4 = Me.TxtGt
  loc_17C3D91:     Call 0.Method_Proc_32_103_17C40048 (var_B6, var_9C)
  loc_17C3DA3:     Set var_C4 = Me.TxtGt
  loc_17C3DA9:     Call 0.Method_Proc_32_103_17C40040 (var_B6, var_190, var_C0)
  loc_17C3DB1:     var_2A8 = var_190.Tag
  loc_17C3DBD:     Set var_194 = Me.TxtGt
  loc_17C3DC3:     Call 0.Method_Proc_32_103_17C40048 (var_302)
  loc_17C3DD5:     Set var_1A8 = Me.TxtGt
  loc_17C3DDB:     Call 0.Method_Proc_32_103_17C40040 (var_302, var_2C4)
  loc_17C3E13:     var_F8 = Mid(CVar(var_C0), (InStr(1, var_2C4.Tag, CStr(var_86), 0) - 1), 1)
  loc_17C3E1B:     var_138 = "-"
  loc_17C3E42:     If (Format(CVar(var_2A8), "0.00") = "0.00") Then
  loc_17C3E52:       Set var_B4 = Me.TxtGt
  loc_17C3E58:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4)
  loc_17C3E60:       var_C0 = var_C4.Text
  loc_17C3E77:       var_A8 = (var_A8 - Val(var_C0))
  loc_17C3E87:     Else
  loc_17C3E94:       Set var_B4 = Me.TxtGt
  loc_17C3E9A:       Call 0.Method_Proc_32_103_17C40040 (var_86, var_C4, var_C0)
  loc_17C3EA2:       var_A8 = var_C4.Text
  loc_17C3EB9:       var_A8 = (var_A8 + Val(var_C0))
  loc_17C3EC6:     End If
  loc_17C3EC6:   End If
  loc_17C3EC9: Next var_2FC 'Integer
  loc_17C3EE8: Set var_C4 = Me.TxtGt
  loc_17C3EEE: Call 0.Method_Proc_32_103_17C40048 (var_B6)
  loc_17C3F00: Set var_190 = Me.TxtGt
  loc_17C3F06: Call 0.Method_Proc_32_103_17C40040 (var_B6, var_194)
  loc_17C3F0E: var_C0 = var_194.Text
  loc_17C3F4D: Call Proc_32_111_10B2930(CByte((CLng(Me.FGrid.Rows) - 1)), CByte(1), &HB, var_9C)
  loc_17C3F6D: var_D8 = Me.FGrid.Rows
  loc_17C3F7D: Set var_C4 = Me.TxtGt
  loc_17C3F83: Call 0.Method_Proc_32_103_17C40048 (var_B6, var_D8, Val(var_C0))
  loc_17C3F95: Set var_190 = Me.TxtGt
  loc_17C3F9B: Call 0.Method_Proc_32_103_17C40040 (var_B6, var_194, var_C0)
  loc_17C3FA3: &H20 = var_194.Text
  loc_17C3FE2: Call Proc_32_111_10B2930(CByte((CLng(var_D8) - 1)), CByte(1), &HB, var_A8, Val(var_C0))
  loc_17C3FFD: Set var_B0 = Nothing
  loc_17C4000: Exit Sub
End Sub

Public Sub Proc_32_104_1199B84(arg_C) '1199B84
  'Data Table: 59BA2C
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
  loc_11997A5: Set var_A8 = Me.TxtGt
  loc_11997AB: Call 0.Method_Proc_32_104_1199B840 (arg_C, var_AC)
  loc_11997CA: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_11997E8: Set var_A8 = Me.LblCap
  loc_11997EE: Call 0.Method_Proc_32_104_1199B840 (arg_C, var_AC)
  loc_1199829: If (Trim(CVar(var_AC.Tag)) = CVar(MemVar_1F95070 & "SCH")) Then
  loc_1199851:   For var_F4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_F4 'Integer
  loc_119985B:     var_104 = CVar(CLng(var_A2)) 'Long
  loc_1199863:     var_124 = CVar(CLng(&H1F)) 'Long
  loc_119988E:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_1199895:       var_104 = CVar(CLng(var_A2)) 'Long
  loc_119989D:       var_124 = CVar(CLng(&HB)) 'Long
  loc_11998C9:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11998D5:     End If
  loc_11998D8:   Next var_F4 'Integer
  loc_11998DD: End If
  loc_11998E7: If (Len(var_90) > 0) Then
  loc_1199919:   Set var_A8 = Me.LblCap
  loc_119991F:   Call 0.Method_Proc_32_104_1199B840 (arg_C, var_AC)
  loc_1199964:   If CBool((Left(var_90, 1) = "1") And (Trim(CVar(var_AC.Tag)) = CVar(MemVar_1F95070 & "SCH"))) Then
  loc_119996A:     var_8C = var_A0
  loc_1199970:   Else
  loc_11999A2:     Set var_A8 = Me.TxtGt
  loc_11999A8:     Call 0.Method_Proc_32_104_1199B840 (CInt(Val(CStr(Left(var_90, 1)))), var_AC, var_170)
  loc_11999B0:     var_13C = var_AC.Text
  loc_11999BD:     var_8C = Val(var_170)
  loc_11999D1:   End If
  loc_11999D7:   Call Proc_32_85_E8423C(var_90)
  loc_11999FC:   var_90 = CStr(Mid(var_90, CLng(var_172), CVar(Len(var_90))))
  loc_1199A06:   ' Referenced from: 1199B7B
  loc_1199A10:   If (Len(var_90) > 0) Then
  loc_1199A38:     Call Proc_32_85_E8423C(var_90)
  loc_1199A57:     var_D0 = Mid(var_90, CLng((var_172 + 1)), CVar(Len(var_90)))
  loc_1199A60:     var_90 = CStr(Mid(var_90, CLng(var_172), CVar(Len(var_90))))
  loc_1199A70:     Call Proc_32_85_E8423C(var_90)
  loc_1199A87:     var_C0 = Left(var_90, CLng((var_172 - 1)))
  loc_1199A8F:     var_B0 = CStr(CVar(Len(var_90)))
  loc_1199A99:     var_92 = CInt(Val(var_B0))
  loc_1199AA8:     Call Proc_32_85_E8423C(var_90)
  loc_1199ACD:     var_90 = CStr(Mid(var_90, CLng(var_172), CVar(Len(var_90))))
  loc_1199AE4:     Set var_A8 = Me.TxtGt
  loc_1199AEA:     Call 0.Method_Proc_32_104_1199B840 (var_92, var_AC, var_B0, var_172, var_92)
  loc_1199AF2:     var_172 = var_AC.Text
  loc_1199AFF:     var_13C = Val(var_B0)
  loc_1199B16:     Set var_178 = Me.TxtGt
  loc_1199B1C:     Call 0.Method_Proc_32_104_1199B840 (var_92, var_17C, var_170, CVar(var_8C), var_13C)
  loc_1199B32:     var_D0 = CVar(-Val(var_170)) 'Double
  loc_1199B45:     var_104 = (CStr(Left(var_90, 1)) = "+")
  loc_1199B54:     var_F0 = (var_17C.Text + IIf(var_90, CVar(var_13C), Mid(var_90, CLng(var_17C.Text), CVar(Len(var_90)))))
  loc_1199B59:     var_8C = CSng(Trim(CVar(var_AC.Tag)))
  loc_1199B7B:     GoTo loc_1199A06
  loc_1199B7E:   End If
  loc_1199B7E: End If
  loc_1199B7E: Proc_32_104_1199B84 = var_8C
End Sub

Public Sub Proc_32_105_103A70C(arg_C, arg_10, arg_14) '103A70C
  'Data Table: 59BA2C
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
  Dim var_4B02 As Integer
  loc_103A4ED: var_88 = vbNullString
  loc_103A504: arg_C = CStr(Trim(arg_C))
  loc_103A510: var_8A = CInt(Len(arg_C))
  loc_103A516: var_C0 = arg_10
  loc_103A521: If (var_C0 = "A") Then
  loc_103A556:   var_E0 = (Chr(&H12) + Chr(&HE))
  loc_103A56A:   var_100 = (var_E0 + Chr(&H1B))
  loc_103A573:   var_110 = (var_100 + "G")
  loc_103A580:   var_130 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_103A59A:   var_170 = (var_110 + Space(CLng((var_130 / 2))))
  loc_103A5A4:   var_190 = (var_170 + CVar(arg_C))
  loc_103A5B8:   var_1B0 = (var_190 + Chr(&H1B))
  loc_103A5C1:   var_1D0 = (var_1B0 + "H")
  loc_103A5C6:   var_88 = CStr(var_1D0)
  loc_103A5E7: Else
  loc_103A5EF:   If (var_C0 = "D") Then
  loc_103A624:     var_E0 = (Chr(&HE) + Chr(&HF))
  loc_103A631:     var_F0 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_103A64B:     var_130 = (var_E0 + Space(CLng((Chr(&H1B) / 2))))
  loc_103A655:     var_150 = (var_130 + CVar(arg_C))
  loc_103A65A:     var_88 = CStr((var_130 / 2))
  loc_103A66F:   Else
  loc_103A677:     If (var_C0 = "E") Then
  loc_103A6A4:       var_E0 = (Chr(&H12) + Chr(&HF))
  loc_103A6B1:       var_F0 = (CVar(arg_14) - CVar(var_8A))
  loc_103A6CB:       var_130 = (var_E0 + Space(CLng((Chr(&H1B) / 2))))
  loc_103A6D5:       var_150 = (var_130 + CVar(arg_C))
  loc_103A6E9:       var_170 = ((var_130 / 2) + Chr(&H12))
  loc_103A6EE:       var_88 = CStr(var_170)
  loc_103A704:     End If
  loc_103A704:   End If
  loc_103A704: End If
  loc_103A704: Proc_32_105_103A70C = var_8A
  loc_103A70A: var_4B02 = 
End Sub

Public Sub Proc_32_106_1272BD8(arg_C, arg_10, arg_14) '1272BD8
  'Data Table: 59BA2C
  Dim var_E8 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_26C As Variant
  Dim unk_59BA49 As Connection15
  Dim var_E4 As Variant
  Dim var_19C As Variant
  Dim var_24C As Variant
  Dim var_18C As Variant
  Dim var_A0 As Recordset15
  Dim var_270 As Fields15
  Dim var_D4 As Variant
  Dim var_290 As Double
  Dim arg_10 As Integer
  loc_1272699: var_90 = vbNullString
  loc_127269F: var_94 = vbNullString
  loc_12726A5: var_98 = vbNullString
  loc_12726AB: var_9C = vbNullString
  loc_12726B6: If (MemVar_1F953C4 = "Y") Then
  loc_12726C0:   var_E8 = vbNullString & "DATE "
  loc_12726F1:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_1272704: End If
  loc_127270C: If (MemVar_1F953C8 = "Y") Then
  loc_127271E:   var_D4 = "dd/MM/yy"
  loc_1272770:   var_16C = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, var_D4)))), 0))
  loc_1272797:   var_1BC = (" PAGE NO " + Trim(Str(arg_C)))
  loc_127279F:   var_1DC = (var_16C - Len(var_1BC))
  loc_12727B0:   var_20C = (CVar(var_8C) + Space(CLng(var_1DC)))
  loc_12727B9:   var_22C = (var_20C + " PAGE NO ")
  loc_12727DB:   var_26C = (var_22C + Trim(Str(arg_C)))
  loc_12727E0:   var_8C = CStr(var_26C)
  loc_127280D: End If
  loc_127283A: unk_59BA49.Execute "Select R.HEADER1,R.HEADER2 From DEPART R  Where R.CODE='" & global_60 & "'", var_D4, -1
  loc_1272845: Set var_A0 = var_270
  loc_127285C: If (MemVar_1F953CC = "K") Then
  loc_1272869:   If (Len(MemVar_1F95130) <= &H28) Then
  loc_1272882:     var_E4 = (CVar(var_90) + Chr(&HF))
  loc_1272896:     var_13C = (Format(MemVar_1F950EC, Chr(&HF)) + Chr(&HE))
  loc_12728AA:     var_16C = (0 + Chr(&H1B))
  loc_12728BE:     var_19C = (var_16C + Chr(&H45))
  loc_12728C8:     var_1BC = (Trim(Str(arg_C)) + CVar(MemVar_1F95130))
  loc_12728DC:     var_1DC = (var_1BC + Chr(&H1B))
  loc_12728F0:     var_20C = (var_1DC + Chr(&H46))
  loc_1272904:     var_24C = (var_20C + Chr(&HE))
  loc_1272909:     var_90 = CStr(Str(arg_C))
  loc_1272930:   Else
  loc_1272946:     var_E4 = (CVar(var_90) + Chr(&H12))
  loc_127295A:     var_13C = (Format(MemVar_1F950EC, Chr(&H12)) + Chr(&HE))
  loc_127296E:     var_16C = (0 + Chr(&HF))
  loc_1272978:     var_18C = (var_16C + CVar(MemVar_1F95130))
  loc_127298C:     var_1BC = (Chr(&H45) + Chr(&H12))
  loc_1272991:     var_90 = CStr(var_1BC)
  loc_12729A9:   End If
  loc_12729BD:   If (var_A0.RecordCount > 0) Then
  loc_12729CF:     var_270 = var_A0.Fields
  loc_12729F9:     If (Proc_6_38_E69628(CVar(var_270.Item("Header1")), var_270, 1) <> vbNullString) Then
  loc_1272A30:       var_290 = Val(CStr(arg_14))
  loc_1272A51:       Call Proc_32_105_103A70C(CStr(var_A0.Fields.Item("Header1").Value), "D", CInt(var_290))
  loc_1272A5A:       var_94 = var_288 & var_288
  loc_1272A72:     End If
  loc_1272AAB:     If (Proc_6_38_E69628(CVar(var_A0.Fields.Item("Header2")), var_94, var_290) <> vbNullString) Then
  loc_1272B03:       Call Proc_32_105_103A70C(CStr(var_A0.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_1272B0C:       var_98 = var_288 & var_288
  loc_1272B24:     End If
  loc_1272B24:   End If
  loc_1272B24: End If
  loc_1272B2E: If (Len(var_8C) > 0) Then
  loc_1272B36:   Print 1, var_8C
  loc_1272B42:   arg_10 = (arg_10 + 1)
  loc_1272B45: End If
  loc_1272B4F: If (Len(var_90) > 0) Then
  loc_1272B57:   Print 1, var_90
  loc_1272B63:   arg_10 = (arg_10 + 1)
  loc_1272B66: End If
  loc_1272B70: If (Len(var_94) > 0) Then
  loc_1272B78:   Print 1, var_94
  loc_1272B84:   arg_10 = (arg_10 + 1)
  loc_1272B87: End If
  loc_1272B91: If (Len(var_98) > 0) Then
  loc_1272B99:   Print 1, var_98
  loc_1272BA5:   arg_10 = (arg_10 + 1)
  loc_1272BA8: End If
  loc_1272BB2: If (Len(var_9C) > 0) Then
  loc_1272BBA:   Print 1, var_9C
  loc_1272BC6:   arg_10 = (arg_10 + 1)
  loc_1272BC9: End If
  loc_1272BCF: Proc_32_106_1272BD8 = arg_10
  loc_1272BD5: CExtInstUnk
End Sub

Public Sub Proc_32_107_1713300(arg_C, arg_10, arg_14) '1713300
  'Data Table: 59BA2C
  Dim var_D8 As String
  Dim unk_59BA49 As Connection15
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
  loc_1711750: var_D8 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_1711760: unk_59BA49.Execute var_D8 & "'", var_FC, -1
  loc_171176B: Set var_8C = var_100
  loc_171177E: var_94 = arg_14
  loc_1711783: var_86 = 1
  loc_1711789: var_A8 = var_94
  loc_171178F: var_B0 = var_94
  loc_1711795: var_B8 = CDbl(0)
  loc_17117AC: If (var_8C.RecordCount > 0) Then
  loc_17117AF:   ' Referenced from: 17132E3
  loc_17117BE:   If Not(var_8C.EOF) Then
  loc_17117C5:     Set var_10C = Me.FGCat
  loc_17117C8:     var_EC = vbNullString
  loc_17117ED:     If (var_8C.RecordCount > 0) Then
  loc_17117F6:       var_D2 = (var_D2 + 1)
  loc_17117FC:       var_EC = "Nature"
  loc_171182F:       var_150 = Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_EC)), var_D2, FGCat.DispID_10000, var_EC, var_B8))) 'Variant
  loc_1711848:       If (var_150 = "On Base Amt") Then
  loc_1711873:         var_130 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")), var_B0, var_A8)) 'String
  loc_1711895:         If (Trim(var_130) = "Room Rate") Then
  loc_17118A3:           If (global_240 = "Room Service") Then
  loc_17118CC:             Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Limit")), var_86)
  loc_17118FA:             Proc_6_39_E7D3A0(var_160, CVar(var_C0.Fields.Item("RoomRate")), var_130)
  loc_171192C:             Proc_6_39_E7D3A0(var_1B0, CVar(var_8C.Fields.Item("Rate")))
  loc_171195C:             If CBool((var_94 <= var_160) And (var_1B0 > 0)) Then
  loc_171199B:               If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_17119D9:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_17119EC:               Else
  loc_1711A1F:                 var_1F4 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_1711A48:                 Proc_6_142_14A62A0(((var_1F4 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_1711A4D:                 var_D0 = var_1F4
  loc_1711A61:               End If
  loc_1711A68:               If (var_D0 > CDbl(0)) Then
  loc_1711A84:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1711A8C:                 var_18C = CVar(CLng(0)) 'Long
  loc_1711A96:                 var_130 = CVar(CStr(var_86)) 'String
  loc_1711A9D:                 LateIdCallSt
  loc_1711AC8:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1711AD0:                 var_18C = CVar(CLng(1)) 'Long
  loc_1711ADA:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_1711AE1:                 LateIdCallSt
  loc_1711B0C:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1711B14:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_1711B44:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1711B4B:                 LateIdCallSt
  loc_1711B7E:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1711B86:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_1711BB6:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1711BBD:                 LateIdCallSt
  loc_1711BF0:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1711BF8:                 var_18C = CVar(CLng(4)) 'Long
  loc_1711C02:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_1711C09:                 LateIdCallSt
  loc_1711C34:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1711C3C:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_1711C6C:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1711C73:                 LateIdCallSt
  loc_1711CCD:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1711CD5:                 var_234 = CVar(CLng(6)) 'Long
  loc_1711CDA:                 var_178 = 2
  loc_1711D19:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_1711D20:                 LateIdCallSt
  loc_1711D47:               Else
  loc_1711D4D:                 var_86 = (var_86 - 1)
  loc_1711D63:                 var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1711D79:               End If
  loc_1711D92:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1711D9A:               var_18C = CVar(CLng(6)) 'Long
  loc_1711DBF:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1711DE8:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1711DF0:               var_18C = CVar(CLng(6)) 'Long
  loc_1711E0B:               var_1E8 = Val(CStr(var_10C.TextMatrix)))
  loc_1711E15:               var_94 = (var_94 + var_1E8)
  loc_1711E2C:               var_B0 = (var_B0 + var_D0)
  loc_1711E32:               var_B8 = var_D0
  loc_1711E3C:               var_B0 = (var_B0 + var_D0)
  loc_1711E42:               var_B8 = var_D0
  loc_1711E45:             End If
  loc_1711E45:           End If
  loc_1711E48:         Else
  loc_1711E84:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1711EC2:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1711ED5:           Else
  loc_1711EF7:             var_130 = var_8C.Fields.Item("Rate").Value
  loc_1711F31:             Proc_6_142_14A62A0(((Val(CStr(var_130)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_130)), var_D0, var_B8, var_B0)
  loc_1711F36:             var_260 = var_B8
  loc_1711F78:             var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)) + var_260)
  loc_1711F96:           End If
  loc_1711FBC:           Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Limit")), var_D0, var_260, var_B0)
  loc_1711FF6:           Proc_6_39_E7D3A0(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_94)
  loc_1712020:           If CBool(var_1E8 And (var_178 > 0)) Then
  loc_171202A:             If (var_D0 > CDbl(0)) Then
  loc_1712046:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171204E:               var_18C = CVar(CLng(0)) 'Long
  loc_1712058:               var_130 = CVar(CStr(var_86)) 'String
  loc_171205F:               LateIdCallSt
  loc_171208A:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712092:               var_18C = CVar(CLng(1)) 'Long
  loc_171209C:               var_130 = CVar(CStr(arg_10)) 'String
  loc_17120A3:               LateIdCallSt
  loc_17120CE:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17120D6:               var_1C0 = CVar(CLng(2)) 'Long
  loc_1712106:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171210D:               LateIdCallSt
  loc_1712140:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712148:               var_1C0 = CVar(CLng(3)) 'Long
  loc_1712178:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171217F:               LateIdCallSt
  loc_17121B2:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17121BA:               var_18C = CVar(CLng(4)) 'Long
  loc_17121C4:               var_130 = CVar(CStr(var_A8)) 'String
  loc_17121CB:               LateIdCallSt
  loc_17121F6:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17121FE:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171222E:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1712235:               LateIdCallSt
  loc_171228F:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712297:               var_234 = CVar(CLng(6)) 'Long
  loc_17122DB:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_17122E2:               LateIdCallSt
  loc_1712306:             End If
  loc_171231F:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712327:             var_18C = CVar(CLng(6)) 'Long
  loc_171234C:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1712375:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171237D:             var_18C = CVar(CLng(6)) 'Long
  loc_1712385:             var_130 = var_10C.TextMatrix)
  loc_1712398:             var_1E8 = Val(CStr(var_130))
  loc_17123A2:             var_94 = (var_94 + var_1E8)
  loc_17123B9:             var_B0 = (var_B0 + var_D0)
  loc_17123BF:             var_B8 = var_D0
  loc_17123C2:           End If
  loc_17123C2:         End If
  loc_17123C5:       Else
  loc_17123D0:         If (var_150 = "On Running Total") Then
  loc_171240F:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171244D:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_1712460:           Else
  loc_17124BC:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_17124C1:             var_D0 = var_94
  loc_17124D5:           End If
  loc_17124FB:           Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1E8, var_18C)
  loc_1712515:           If (var_130 > 0) Then
  loc_171251F:             If (var_D0 > CDbl(0)) Then
  loc_171253B:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712543:               var_18C = CVar(CLng(0)) 'Long
  loc_171254D:               var_130 = CVar(CStr(var_86)) 'String
  loc_1712554:               LateIdCallSt
  loc_171257F:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712587:               var_18C = CVar(CLng(1)) 'Long
  loc_1712591:               var_130 = CVar(CStr(arg_10)) 'String
  loc_1712598:               LateIdCallSt
  loc_17125C3:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17125CB:               var_1C0 = CVar(CLng(2)) 'Long
  loc_17125FB:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1712602:               LateIdCallSt
  loc_1712635:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171263D:               var_1C0 = CVar(CLng(3)) 'Long
  loc_171266D:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1712674:               LateIdCallSt
  loc_17126A7:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17126AF:               var_18C = CVar(CLng(4)) 'Long
  loc_17126B9:               var_130 = CVar(CStr(var_B0)) 'String
  loc_17126C0:               LateIdCallSt
  loc_17126EB:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17126F3:               var_1C0 = CVar(CLng(5)) 'Long
  loc_1712723:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171272A:               LateIdCallSt
  loc_1712784:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171278C:               var_234 = CVar(CLng(6)) 'Long
  loc_17127D0:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_17127D7:               LateIdCallSt
  loc_17127FB:             End If
  loc_1712814:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171281C:             var_18C = CVar(CLng(6)) 'Long
  loc_1712841:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171286A:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712872:             var_18C = CVar(CLng(6)) 'Long
  loc_1712897:             var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_17128AE:             var_B0 = (var_B0 + var_D0)
  loc_17128B4:             var_B8 = var_D0
  loc_17128B7:           End If
  loc_17128BA:         Else
  loc_17128C5:           If (var_150 = "On Prev. Tax Amt") Then
  loc_1712904:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1712942:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_1712955:             Else
  loc_17129B1:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_17129B6:               var_D0 = var_94
  loc_17129CA:             End If
  loc_17129D1:             If (var_D0 > CDbl(0)) Then
  loc_17129ED:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17129F5:               var_18C = CVar(CLng(0)) 'Long
  loc_17129FF:               var_130 = CVar(CStr(var_86)) 'String
  loc_1712A06:               LateIdCallSt
  loc_1712A31:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712A39:               var_18C = CVar(CLng(1)) 'Long
  loc_1712A43:               var_130 = CVar(CStr(arg_10)) 'String
  loc_1712A4A:               LateIdCallSt
  loc_1712A75:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712A7D:               var_1C0 = CVar(CLng(2)) 'Long
  loc_1712AAD:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1712AB4:               LateIdCallSt
  loc_1712AE7:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712AEF:               var_1C0 = CVar(CLng(3)) 'Long
  loc_1712B1F:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1712B26:               LateIdCallSt
  loc_1712B59:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712B61:               var_18C = CVar(CLng(4)) 'Long
  loc_1712B6B:               var_130 = CVar(CStr(var_B8)) 'String
  loc_1712B72:               LateIdCallSt
  loc_1712B9D:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712BA5:               var_1C0 = CVar(CLng(5)) 'Long
  loc_1712BD5:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1712BDC:               LateIdCallSt
  loc_1712C36:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712C3E:               var_234 = CVar(CLng(6)) 'Long
  loc_1712C43:               var_178 = 2
  loc_1712C82:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_1712C89:               LateIdCallSt
  loc_1712CAD:             End If
  loc_1712CC6:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712CCE:             var_18C = CVar(CLng(6)) 'Long
  loc_1712CF3:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1712D1C:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712D24:             var_18C = CVar(CLng(6)) 'Long
  loc_1712D2C:             var_130 = var_10C.TextMatrix)
  loc_1712D3F:             var_1E8 = Val(CStr(var_130))
  loc_1712D49:             var_94 = (var_94 + var_1E8)
  loc_1712D60:             var_B0 = (var_B0 + var_D0)
  loc_1712D66:             var_B8 = var_D0
  loc_1712D6C:           Else
  loc_1712DA8:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1712DE6:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1712DF9:             Else
  loc_1712E55:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1712E5A:               var_D0 = var_94
  loc_1712E6E:             End If
  loc_1712E71:             var_EC = "Limit"
  loc_1712E94:             Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item(var_EC)), var_D0, var_1E8, var_18C)
  loc_1712ECE:             Proc_6_39_E7D3A0(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_EC)
  loc_1712EF8:             If CBool(var_9C And (var_178 > 0)) Then
  loc_1712F02:               If (var_D0 > CDbl(0)) Then
  loc_1712F1E:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712F26:                 var_18C = CVar(CLng(0)) 'Long
  loc_1712F30:                 var_130 = CVar(CStr(var_86)) 'String
  loc_1712F37:                 LateIdCallSt
  loc_1712F62:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712F6A:                 var_18C = CVar(CLng(1)) 'Long
  loc_1712F74:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_1712F7B:                 LateIdCallSt
  loc_1712FA6:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712FAE:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_1712FDE:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1712FE5:                 LateIdCallSt
  loc_1713018:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713020:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_1713050:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1713057:                 LateIdCallSt
  loc_171308A:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713092:                 var_18C = CVar(CLng(4)) 'Long
  loc_171309C:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_17130A3:                 LateIdCallSt
  loc_17130CE:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17130D6:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_1713106:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171310D:                 LateIdCallSt
  loc_1713167:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171316F:                 var_234 = CVar(CLng(6)) 'Long
  loc_17131B3:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_17131BA:                 LateIdCallSt
  loc_17131DE:               End If
  loc_17131F7:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17131FF:               var_18C = CVar(CLng(6)) 'Long
  loc_1713224:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171324D:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713255:               var_18C = CVar(CLng(6)) 'Long
  loc_171327A:               var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_1713291:               var_B0 = (var_B0 + var_D0)
  loc_1713297:               var_B8 = var_D0
  loc_171329A:             End If
  loc_171329A:           End If
  loc_171329A:         End If
  loc_171329A:       End If
  loc_171329A:     End If
  loc_17132A0:     var_86 = (var_86 + 1)
  loc_17132A5:     Set var_10C = Nothing 
  loc_17132AD:     var_EC = CVar(CLng(arg_10)) 'Long
  loc_17132B5:     var_18C = CVar(CLng(&H12)) 'Long
  loc_17132BF:     var_FC = CVar(CStr(var_9C)) 'String
  loc_17132C7:     Set var_100 = Me.FGrid
  loc_17132CD:     LateIdCallSt
  loc_17132DE:     var_8C.MoveNext
  loc_17132E3:     GoTo loc_17117AF
  loc_17132E6:   End If
  loc_17132EB:   Set var_8C = Nothing
  loc_17132F3:   Set var_C4 = Nothing
  loc_17132FB:   Set var_C0 = Nothing
  loc_17132FE: End If
  loc_17132FE: Exit Sub
End Sub

Public Sub Proc_32_108_1066F04(arg_C, arg_10) '1066F04
  'Data Table: 59BA2C
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_59BA49 As Connection15
  Dim var_CC As TextBox
  Dim var_D4 As String
  Dim var_E4 As Variant
  Dim var_90 As Recordset15
  Dim var_C8 As Fields15
  Dim var_C4 As Variant
  Dim var_8C As Double
  loc_1066CB2: var_94 = global_188
  loc_1066CBD: If (var_94 = "Last Purchase Rate") Then
  loc_1066CDB:   var_9C = "Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='"
  loc_1066CEC:   var_A4 = var_9C & global_60 & "'"
  loc_1066CF5:   unk_59BA49.Execute var_A4, var_C4, -1
  loc_1066D00:   Set var_90 = var_C8
  loc_1066D17: Else
  loc_1066D1F:   If (var_94 = "Party Wise Last Pur Rate") Then
  loc_1066D47:     var_A0 = "Select Top 1 ItemRate As Rate From Purch2 Where VType In ('PBPB','PBPC') And Item='" & arg_C & "' And RestCode='" & global_60
  loc_1066D5F:     Set var_C8 = Me.Txt
  loc_1066D65:     Call 0.Method_Proc_32_108_1066F040 (CInt(4), var_CC, var_A4, var_A0 & "' And PartyCode='")
  loc_1066D6D:     var_138 = var_CC.Tag
  loc_1066D76:     var_D4 = -1 & var_A4
  loc_1066D7D:     var_E4 = CVar(var_D4 & "' And DelFlag='N' And Vdate<=") 'String
  loc_1066D8B:     Proc_6_7_F26918(var_C4, arg_10, var_E4)
  loc_1066DAA:     unk_59BA49.Execute CStr(var_13C & var_C4 & " Order By VDate Desc,Vno Desc"), var_C8, 
  loc_1066DF3:     If (var_13C.RecordCount = 0) Then
  loc_1066E11:       var_9C = "Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='"
  loc_1066E2B:       unk_59BA49.Execute var_9C & global_60 & "'", var_C4, -1
  loc_1066E36:       Set var_90 = var_C8
  loc_1066E4A:     End If
  loc_1066E4D:   Else
  loc_1066E82:     unk_59BA49.Execute "Select PurchRate As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='" & global_60 & "'", var_C4, -1
  loc_1066E8D:     Set var_90 = var_C8
  loc_1066EA1:   End If
  loc_1066EA1: End If
  loc_1066EB5: If (var_90.RecordCount > 0) Then
  loc_1066EDE:   Proc_6_39_E7D3A0(var_E4, CVar(var_90.Fields.Item("Rate")))
  loc_1066EE7:   var_8C = CSng(var_E4)
  loc_1066EF7: Else
  loc_1066EFA:   var_8C = CDbl(0)
  loc_1066EFD: End If
  loc_1066EFD: Proc_32_108_1066F04 = var_8C
End Sub

Public Sub Proc_32_109_DFC828
  'Data Table: 59BA2C
  loc_DFC824: Exit Sub
End Sub

Public Sub Proc_32_110_11301B4
  'Data Table: 59BA2C
  Dim var_94 As Variant
  Dim var_A8 As String
  Dim unk_59BA49 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_104 As TextBox
  Dim var_108 As String
  loc_112FE77: If (((global_132 = "PBC") Or (global_132 = "EXC")) Or (global_132 = "PRC")) Then
  loc_112FE87:   Set var_90 = Me.Txt
  loc_112FE8D:   Call 0.Method_Proc_32_110_11301B40 (CInt(8), var_94)
  loc_112FE95:   var_94.Visible = True
  loc_112FEAE:   Set var_90 = Me.Txt
  loc_112FEB4:   Call 0.Method_Proc_32_110_11301B40 (CInt(4), var_94)
  loc_112FEBC:   var_94.Visible = False
  loc_112FECC:   Set var_90 = Me.TopCtrl1
  loc_112FED2:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_112FEEB:   If (CStr() <> "Browse") Then
  loc_112FEFB:     Set var_90 = Me.Txt
  loc_112FF01:     Call 0.Method_Proc_32_110_11301B40 (CInt(&HB), var_94)
  loc_112FF09:     var_94.Enabled = True
  loc_112FF15:   End If
  loc_112FF38:   If (((global_132 = "PRC") Or (global_132 = "PBC")) Or (global_132 = "EXC")) Then
  loc_112FF58:     Proc_6_17_EAAE40(var_A4, MemVar_1F95078, "Select CashPurchAc From Enviro WHERE LOGSITE_CODE=")
  loc_112FF6E:     unk_59BA49.Execute CStr(var_F8 & var_A4), -1, var_90
  loc_112FF79:     Set var_88 = var_90
  loc_112FF9F:     If (var_88.RecordCount > 0) Then
  loc_112FFBC:       var_94 = var_88.Fields.Item("CashPurchAc")
  loc_112FFC4:       var_A4 = var_94.Value
  loc_112FFDB:       Set var_100 = Me.Txt
  loc_112FFE1:       Call 0.Method_Proc_32_110_11301B40 (CInt(4), var_104)
  loc_112FFE9:       var_104.Tag = CStr(var_A4)
  loc_112FFFF:     End If
  loc_112FFFF:   End If
  loc_1130016:   If ((global_132 = "PBC") Or (global_132 = "EXC")) Then
  loc_1130023:     Set global_80 = New 
  loc_1130035:     Me.Recordset15.CursorLocation = 3
  loc_1130041:     var_A8 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_1130048:     var_108 = var_A8 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.logSite_Code=V.LogSite_Code) "
  loc_1130066:     Call 0.Method_Proc_32_110_11301B40 (CInt(4), var_94)
  loc_113007E:     var_8C = var_108 & "where V.Ncat in ('MRE') and M.Partycode='" & var_94.Tag & "'    Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.RecdQty,0)) > 0 "
  loc_11300AB:     unk_59BA49.Execute var_8C, var_A4, -1
  loc_11300BC:     Set global_80 = Me.Txt
  loc_11300D3:     CVarUnk
  loc_11300D8:     VerifyVarObj
  loc_11300DE:     Set var_90 = Me.DgMR
  loc_11300E4:     LateIdStAd
  loc_11300F2:   End If
  loc_11300F5: Else
  loc_1130108:   Call 0.Method_Proc_32_110_11301B40 (CInt(8), var_94, 0)
  loc_1130110:   var_94.Visible = Me.Txt
  loc_1130129:   Set var_90 = Me.Txt
  loc_113012F:   Call 0.Method_Proc_32_110_11301B40 (CInt(4), var_94, &HFF)
  loc_1130137:   var_94.Visible = global_80
  loc_1130150:   Set var_90 = Me.Txt
  loc_1130156:   Call 0.Method_Proc_32_110_11301B40 (CInt(&HB), var_94)
  loc_113015E:   var_94.Enabled = False
  loc_113016A: End If
  loc_1130181: If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1130191:   Set var_90 = Me.Txt
  loc_1130197:   Call 0.Method_Proc_32_110_11301B40 (CInt(7), var_94)
  loc_113019F:   var_94.Enabled = False
  loc_11301AB: End If
  loc_11301B0: Set var_88 = Nothing
  loc_11301B3: Exit Sub
End Sub

Public Sub Proc_32_111_10B2930(arg_C, arg_10, arg_14, arg_18) '10B2930
  'Data Table: 59BA2C
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
  loc_10B266B: var_A8 = CDbl(0)
  loc_10B2680: For var_C0 = CInt(arg_10) To (CInt(arg_C) - 1): var_9E = var_C0 'Integer
  loc_10B268A:   var_D0 = CVar(CLng(var_9E)) 'Long
  loc_10B2694:   var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B26C0:   var_A8 = (var_A8 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_10B26CF: Next var_C0 'Integer
  loc_10B26D7: var_BC = arg_18
  loc_10B2703: For var_124 = CInt(arg_10) To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_124 'Integer
  loc_10B2716:   If (var_AA <> (CInt(arg_C) - 1)) Then
  loc_10B2720:     If (var_A8 <> CDbl(0)) Then
  loc_10B2727:       var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B2731:       var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B275A:       var_134 = CVar(CLng(var_AA)) 'Long
  loc_10B2764:       var_154 = CVar(CLng(arg_14)) 'Long
  loc_10B27C4:       var_1CC = (CVar(Val(CStr(Me.FGrid.TextMatrix)))) + Round(CVar(((arg_18 * Val(CStr(Me.FGrid.TextMatrix)))) / var_A8)), 2))
  loc_10B27D4:       var_9C = CSng(Format(var_1CC, "00.00"))
  loc_10B27FA:       var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B2804:       var_F0 = CVar(CLng(arg_20)) 'Long
  loc_10B280E:       var_114 = CVar(CStr(var_9C)) 'String
  loc_10B2816:       Set var_104 = Me.FGrid
  loc_10B281C:       LateIdCallSt
  loc_10B282A:     End If
  loc_10B2831:     var_B4 = (var_B4 + var_9C)
  loc_10B283B:     If (var_A8 > CDbl(0)) Then
  loc_10B2842:       var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B284C:       var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B2897:       var_1AC = (CVar(var_BC) - Round(CVar(((arg_18 * Val(CStr(Me.FGrid.TextMatrix)))) / var_A8)), 2))
  loc_10B289C:       var_BC = CSng(Round(CVar(((arg_18 * Val(CStr(Me.FGrid.TextMatrix)))) / var_A8)), 2))
  loc_10B28AE:     End If
  loc_10B28B1:   Else
  loc_10B28B5:     var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B28BF:     var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B28E5:     var_9C = (Val(CStr(Me.FGrid.TextMatrix))) + var_BC)
  loc_10B28F5:     var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B28FF:     var_F0 = CVar(CLng(arg_20)) 'Long
  loc_10B2909:     var_114 = CVar(CStr(var_9C)) 'String
  loc_10B2911:     Set var_104 = Me.FGrid
  loc_10B2917:     LateIdCallSt
  loc_10B2925:   End If
  loc_10B2928: Next var_124 'Integer
  loc_10B292D: Exit Sub
End Sub

Public Sub Proc_32_112_1BDF230
  'Data Table: 59BA2C
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_AC As String
  Dim unk_59BA49 As Connection15
  Dim var_A4 As Recordset15
  Dim var_110 As Variant
  Dim var_CC As Variant
  Dim var_120 As TextBox
  Dim var_118 As Variant
  Dim var_124 As String
  Dim var_A6 As Integer
  Dim var_12C As String
  Dim var_130 As String
  Dim var_134 As String
  Dim var_88 As Recordset15
  Dim var_10C As Variant
  Dim var_94 As Double
  Dim var_8C As Recordset15
  Dim var_180 As TextBox
  Dim var_1BC As Label
  Dim var_188 As TextBox
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1A8 As TextBox
  Dim var_158 As Variant
  Dim var_220 As Variant
  Dim var_230 As Variant
  Dim var_178 As Variant
  Dim var_240 As Variant
  Dim var_18C As Fields15
  Dim var_19C As Fields15
  Dim var_254 As TextBox
  loc_1BD9ABB: If (OpenAs = "Expense") Then
  loc_1BD9AC1:   var_98 = "Expense Voucher :"
  loc_1BD9AC7:   var_9C = "Expense Return For :"
  loc_1BD9ACD: Else
  loc_1BD9AD0:   var_98 = "Purchase Bill :"
  loc_1BD9AD6:   var_9C = "Purchase Return For :"
  loc_1BD9AD9: End If
  loc_1BD9AFC: If (((global_132 = "PBC") Or (global_132 = "EXC")) Or (global_132 = "PRC")) Then
  loc_1BD9B1C:   Proc_6_17_EAAE40(var_CC, MemVar_1F95078, "Select CashPurchAc from Enviro WHERE LOGSITE_CODE=")
  loc_1BD9B24:   var_EC = var_10C & var_CC 
  loc_1BD9B32:   unk_59BA49.Execute CStr(var_EC), -1, var_110
  loc_1BD9B3D:   Set var_A4 = var_110
  loc_1BD9B63:   If (var_A4.RecordCount > 0) Then
  loc_1BD9B7D:     var_118 = var_A4.Fields.Item("CashPurchAc")
  loc_1BD9B8E:     var_AC = Proc_6_38_E69628(CVar(var_118))
  loc_1BD9B9C:     Set var_11C = Me.Txt
  loc_1BD9BA2:     Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_120)
  loc_1BD9BAA:     var_120.Tag = var_AC
  loc_1BD9BBE:   End If
  loc_1BD9BBE: End If
  loc_1BD9BDC: Set var_110 = Me.Txt
  loc_1BD9BE2: Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_AC, "Delete From Ledger where DocID='")
  loc_1BD9BEA: var_CC = var_118.Text
  loc_1BD9BF3: var_124 = -1 & var_AC
  loc_1BD9C03: unk_59BA49.Execute var_124 & "'", var_11C, 
  loc_1BD9C1F: var_A6 = 1
  loc_1BD9C36: var_AC = "SELECT Sum(SunTran.Amount) AS RevAmt,max(SUNCODE) as SundryCode FROM (SunTran LEFT JOIN RevMast ON SunTran.RevCode = RevMast.Code) LEFT JOIN Depart ON SunTran.RestCode = Depart.Code Where SUNCODE='" & MemVar_1F95078
  loc_1BD9C4E: Set var_110 = Me.Txt
  loc_1BD9C54: Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_124, var_AC & "NET' and DocID='")
  loc_1BD9C5C: var_CC = var_118.Text
  loc_1BD9C65: var_12C = -1 & var_124
  loc_1BD9C75: unk_59BA49.Execute var_12C & "' Group By RestCode,Revcode Order by RestCode", var_11C, var_A6
  loc_1BD9C80: Set var_8C = var_11C
  loc_1BD9CB0: var_AC = " SELECT Sum(S.Amount) AS RevAmt, S.RevCode, Max(S.Vdate) AS VDate, Max(R.Name) AS Revenue, Max(S.SunCode) AS SundryCode, Max(R.ACCode) AS ACode, Max(R.PayableAc) AS PCode, Max(R.UnregisteredAc) AS UCode, Max(R.FieldType) AS FieldType,Max(ST.CalcSign) as CSign " & " FROM ((SunTran AS S LEFT JOIN RevMast AS R ON S.RevCode = R.Code) LEFT JOIN Depart AS D ON S.RestCode = D.Code) LEFT JOIN SundryType AS ST ON S.SunAppDate = ST.AppDate AND ST.V_Type=S.RestCode  and s.SunCode=st.sundrycode "
  loc_1BD9CC8: Set var_110 = Me.Txt
  loc_1BD9CCE: Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_124, var_AC & " WHERE (((S.RevCode) Is Not Null And (S.RevCode)<>'') AND ((S.DocId)='")
  loc_1BD9CD6: var_CC = var_118.Text
  loc_1BD9CDF: var_12C = -1 & var_124
  loc_1BD9CF6: unk_59BA49.Execute var_12C & "')) " & " GROUP BY S.RevCode, S.RestCode ORDER BY S.RestCode", var_11C, 
  loc_1BD9D01: Set var_88 = var_11C
  loc_1BD9D4F: If ((Me.ChkPayable.Value = 1) And (var_88.RecordCount > 0)) Then
  loc_1BD9D52:   ' Referenced from: 1BD9F60
  loc_1BD9D61:   If Not(var_88.EOF) Then
  loc_1BD9D9D:     If (Proc_6_38_E69628(CVar(var_88.Fields.Item("FIELDTYPE"))) = "T") Then
  loc_1BD9DBF:       var_CC = CVar(var_88.Fields.Item("RevAmt")) 'Address
  loc_1BD9DC6:       Proc_6_39_E7D3A0(var_EC)
  loc_1BD9DE0:       If CBool(var_EC <> 0) Then
  loc_1BD9E1C:         If (Proc_6_38_E69628(CVar(var_88.Fields.Item("pCode"))) = vbNullString) Then
  loc_1BD9E60:           MsgBox("Please Define Payable A/C for :" & var_88.Fields.Item("Revenue").Value, 0, var_10C, var_158, var_178)
  loc_1BD9E79:         End If
  loc_1BD9EB2:         If (Proc_6_38_E69628(CVar(var_88.Fields.Item("uCode"))) = vbNullString) Then
  loc_1BD9EF2:           var_EC = "Please Define Unregistered A/C for :" & var_88.Fields.Item("Revenue").Value 
  loc_1BD9EF6:           MsgBox(var_EC, 0, var_10C, var_158, var_178)
  loc_1BD9F0F:         End If
  loc_1BD9F0F:       End If
  loc_1BD9F3C:       Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD9F44:       var_10C = (CVar(var_94) + var_EC)
  loc_1BD9F49:       var_94 = CSng(var_10C)
  loc_1BD9F58:     End If
  loc_1BD9F5B:     var_88.MoveNext
  loc_1BD9F60:     GoTo loc_1BD9D52
  loc_1BD9F63:   End If
  loc_1BD9F63: End If
  loc_1BD9F77: If (var_8C.RecordCount > 0) Then
  loc_1BD9F91:   var_118 = var_8C.Fields.Item("RevAmt")
  loc_1BD9FA0:   Proc_6_39_E7D3A0(var_EC, CVar(var_118))
  loc_1BD9FAF:   var_10C = (var_EC - CVar(var_94))
  loc_1BD9FC5:   If (var_10C > 0) Then
  loc_1BD9FDF:     If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BD9FF0:       Set var_110 = Me.Txt
  loc_1BD9FF6:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_1AC)
  loc_1BD9FFE:       var_94 = var_118.Text
  loc_1BDA011:       Set var_11C = Me.Txt
  loc_1BDA017:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120)
  loc_1BDA01F:       var_AC = var_120.Tag
  loc_1BDA032:       Set var_17C = Me.Txt
  loc_1BDA038:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180)
  loc_1BDA040:       var_1B8 = var_180.Text
  loc_1BDA065:       Set var_184 = Me.Txt
  loc_1BDA06B:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDA086:       Set var_18C = Me.Txt
  loc_1BDA08C:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_190)
  loc_1BDA094:       var_124 = var_190.Tag
  loc_1BDA0BF:       Proc_6_39_E7D3A0(var_EC, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1BDA0D2:       Set var_19C = Me.Txt
  loc_1BDA0D8:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A0)
  loc_1BDA0F3:       Set var_1A4 = Me.Txt
  loc_1BDA0F9:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_1A8)
  loc_1BDA101:       var_130 = var_1A8.Text
  loc_1BDA109:       var_158 = Now
  loc_1BDA113:       var_200 = 0
  loc_1BDA11E:       var_1FC = 0
  loc_1BDA129:       var_1F8 = 0
  loc_1BDA132:       var_1F4 = "A"
  loc_1BDA152:       var_134 = var_9C & var_1A0.Text & "  Dt.: "
  loc_1BDA160:       var_1E4 = vbNullString
  loc_1BDA177:       var_10C = (var_EC - CVar(var_94))
  loc_1BDA1B3:       Proc_6_140_12DA4E8(MemVar_1F95044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDA20A:     Else
  loc_1BDA218:       Set var_110 = Me.Txt
  loc_1BDA21E:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_130, var_124, CSng(var_10C), CDbl(0))
  loc_1BDA226:       var_1E4 = var_118.Text
  loc_1BDA239:       Set var_11C = Me.Txt
  loc_1BDA23F:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDA247:       MemVar_1F950C8 = var_120.Tag
  loc_1BDA25A:       Set var_17C = Me.Txt
  loc_1BDA260:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1B0)
  loc_1BDA268:       CDate(var_158) = var_180.Text
  loc_1BDA28D:       Set var_184 = Me.Txt
  loc_1BDA293:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDA2AE:       Set var_18C = Me.Txt
  loc_1BDA2B4:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_190)
  loc_1BDA2BC:       var_124 = var_190.Tag
  loc_1BDA2E7:       Proc_6_39_E7D3A0(var_EC, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1BDA2FA:       Set var_19C = Me.Txt
  loc_1BDA300:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A0)
  loc_1BDA318:       Set var_1A4 = Me.Txt
  loc_1BDA31E:       Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_1A8)
  loc_1BDA34A:       var_240 = Now
  loc_1BDA354:       var_1F8 = 0
  loc_1BDA35F:       var_1F4 = 0
  loc_1BDA36A:       var_1E8 = 0
  loc_1BDA373:       var_1E4 = "A"
  loc_1BDA399:       var_230 = (CVar(var_98 & var_1A0.Text & " Dt.:   ") + Format(CVar(var_1A8), "dd/mm/yy"))
  loc_1BDA3A5:       var_1CC = vbNullString
  loc_1BDA3B5:       var_10C = (var_EC - CVar(var_94))
  loc_1BDA3F8:       Proc_6_140_12DA4E8(MemVar_1F95044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDA450:     End If
  loc_1BDA453:   Else
  loc_1BDA46A:     var_118 = var_8C.Fields.Item("RevAmt")
  loc_1BDA479:     Proc_6_39_E7D3A0(var_EC, CVar(var_118), var_124, CDbl(0), CSng(var_10C))
  loc_1BDA488:     var_10C = (var_EC - CVar(var_94))
  loc_1BDA49E:     If (var_10C < 0) Then
  loc_1BDA4B8:       If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDA4C9:         Set var_110 = Me.Txt
  loc_1BDA4CF:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_1AC, var_1CC)
  loc_1BDA4D7:         CStr(var_230) = var_118.Text
  loc_1BDA4EA:         Set var_11C = Me.Txt
  loc_1BDA4F0:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC)
  loc_1BDA4F8:         MemVar_1F950C8 = var_120.Tag
  loc_1BDA50B:         Set var_17C = Me.Txt
  loc_1BDA511:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1B8)
  loc_1BDA519:         CDate(var_240) = var_180.Text
  loc_1BDA53E:         Set var_184 = Me.Txt
  loc_1BDA544:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDA55F:         Set var_18C = Me.Txt
  loc_1BDA565:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_190)
  loc_1BDA56D:         var_124 = var_190.Tag
  loc_1BDA598:         Proc_6_39_E7D3A0(var_EC, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1BDA5AB:         Set var_19C = Me.Txt
  loc_1BDA5B1:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A0)
  loc_1BDA5CC:         Set var_1A4 = Me.Txt
  loc_1BDA5D2:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_1A8)
  loc_1BDA5DA:         var_130 = var_1A8.Text
  loc_1BDA5E2:         var_178 = Now
  loc_1BDA5EC:         var_200 = 0
  loc_1BDA5F7:         var_1FC = 0
  loc_1BDA602:         var_1F8 = 0
  loc_1BDA60B:         var_1F4 = "A"
  loc_1BDA62B:         var_134 = var_9C & var_1A0.Text & "  Dt.:   "
  loc_1BDA639:         var_1E4 = vbNullString
  loc_1BDA649:         var_10C = (var_EC - CVar(var_94))
  loc_1BDA64D:         var_158 = Abs(var_10C)
  loc_1BDA690:         Proc_6_140_12DA4E8(MemVar_1F95044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDA6E7:       Else
  loc_1BDA6F5:         Set var_110 = Me.Txt
  loc_1BDA6FB:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_130, var_124, CDbl(0), CSng(var_158))
  loc_1BDA703:         var_1E4 = var_118.Text
  loc_1BDA716:         Set var_11C = Me.Txt
  loc_1BDA71C:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDA724:         MemVar_1F950C8 = var_120.Tag
  loc_1BDA737:         Set var_17C = Me.Txt
  loc_1BDA73D:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1B0)
  loc_1BDA745:         CDate(var_178) = var_180.Text
  loc_1BDA76A:         Set var_184 = Me.Txt
  loc_1BDA770:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDA78B:         Set var_18C = Me.Txt
  loc_1BDA791:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_190)
  loc_1BDA799:         var_124 = var_190.Tag
  loc_1BDA7C4:         Proc_6_39_E7D3A0(var_EC, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1BDA7D7:         Set var_19C = Me.Txt
  loc_1BDA7DD:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A0)
  loc_1BDA7F5:         Set var_1A4 = Me.Txt
  loc_1BDA7FB:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_1A8)
  loc_1BDA827:         var_250 = Now
  loc_1BDA831:         var_1F8 = 0
  loc_1BDA83C:         var_1F4 = 0
  loc_1BDA847:         var_1E8 = 0
  loc_1BDA850:         var_1E4 = "A"
  loc_1BDA869:         var_12C = var_98 & var_1A0.Text
  loc_1BDA876:         var_240 = (CVar(var_12C & " Dt.:     ") + Format(CVar(var_1A8), "dd/mm/yy"))
  loc_1BDA882:         var_1CC = vbNullString
  loc_1BDA899:         var_10C = (var_EC - CVar(var_94))
  loc_1BDA89D:         var_158 = Abs(var_10C)
  loc_1BDA8D9:         Proc_6_140_12DA4E8(MemVar_1F95044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDA931:       End If
  loc_1BDA931:     End If
  loc_1BDA931:   End If
  loc_1BDA937:   var_A6 = (var_A6 + 1)
  loc_1BDA93A: End If
  loc_1BDA94E: If (var_88.RecordCount > 0) Then
  loc_1BDA954:   var_88.MoveFirst
  loc_1BDA959:   ' Referenced from: 1BDE760
  loc_1BDA968:   If Not(var_88.EOF) Then
  loc_1BDA9AB:     var_AC = Proc_6_38_E69628(CVar(var_88.Fields.Item("FIELDTYPE")), (Me.ChkPayable.Value = 1), var_A6, var_124, CSng(var_158), CDbl(0))
  loc_1BDA9C1:     If (var_1CC And (var_AC = "T")) Then
  loc_1BDA9EA:       Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")), CStr(var_240))
  loc_1BDAA04:       If (var_EC > 0) Then
  loc_1BDAA21:         var_118 = var_88.Fields.Item("CSign")
  loc_1BDAA31:         var_DC = "-"
  loc_1BDAA43:         If (var_118.Value = 0) Then
  loc_1BDAA5D:           If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDAA6E:             Set var_110 = Me.Txt
  loc_1BDAA74:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C)
  loc_1BDAA7C:             MemVar_1F950C8 = var_118.Text
  loc_1BDAA8F:             Set var_11C = Me.Txt
  loc_1BDAA95:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC)
  loc_1BDAA9D:             CDate(var_250) = var_120.Tag
  loc_1BDAAB0:             Set var_17C = Me.Txt
  loc_1BDAAB6:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180)
  loc_1BDAABE:             var_1AC = var_180.Text
  loc_1BDAAE3:             Set var_184 = Me.Txt
  loc_1BDAAE9:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDAAF1:             var_1B8 = var_188.Text
  loc_1BDAB43:             Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDAB7D:             Set var_1A4 = Me.Txt
  loc_1BDAB83:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDAB9B:             Set var_1BC = Me.Txt
  loc_1BDABA1:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDABD7:             var_1F4 = 0
  loc_1BDABE2:             var_1E8 = 0
  loc_1BDABED:             var_1E4 = 0
  loc_1BDABF6:             var_1D0 = "A"
  loc_1BDAC1C:             var_220 = (CVar(var_9C & var_1A8.Text & " Dt.: ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDAC70:             Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDACD6:             var_A6 = (var_A6 + 1)
  loc_1BDACE7:             Set var_110 = Me.Txt
  loc_1BDACED:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(var_EC))
  loc_1BDACF5:             CDbl(0) = var_118.Text
  loc_1BDAD08:             Set var_11C = Me.Txt
  loc_1BDAD0E:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BDAD16:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BDAD29:             Set var_17C = Me.Txt
  loc_1BDAD2F:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDAD37:             MemVar_1F950C8 = var_180.Text
  loc_1BDAD5C:             Set var_184 = Me.Txt
  loc_1BDAD62:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDAD6A:             CDate(Now) = var_188.Text
  loc_1BDAD91:             var_240 = var_88.Fields.Item("pCode").Value
  loc_1BDADBC:             Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDADE3:             var_250 = var_88.Fields.Item("uCode").Value
  loc_1BDADF6:             Set var_1A4 = Me.Txt
  loc_1BDADFC:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDAE14:             Set var_1BC = Me.Txt
  loc_1BDAE1A:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDAE46:             var_230 = Now
  loc_1BDAE50:             var_1F4 = 0
  loc_1BDAE5B:             var_1E8 = 0
  loc_1BDAE66:             var_1E4 = 0
  loc_1BDAE6F:             var_1D0 = "A"
  loc_1BDAE95:             var_220 = (CVar(var_9C & var_1A8.Text & " Dt.: ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDAEE9:             Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDAF4F:             var_A6 = (var_A6 + 1)
  loc_1BDAF55:           Else
  loc_1BDAF63:             Set var_110 = Me.Txt
  loc_1BDAF69:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_240), CDbl(0))
  loc_1BDAF71:             CSng(var_EC) = var_118.Text
  loc_1BDAF84:             Set var_11C = Me.Txt
  loc_1BDAF8A:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_250))
  loc_1BDAF92:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BDAFA5:             Set var_17C = Me.Txt
  loc_1BDAFAB:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDAFB3:             MemVar_1F950C8 = var_180.Text
  loc_1BDAFD8:             Set var_184 = Me.Txt
  loc_1BDAFDE:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDAFE6:             CDate(var_230) = var_188.Text
  loc_1BDB038:             Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDB072:             Set var_1A4 = Me.Txt
  loc_1BDB078:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDB090:             Set var_1BC = Me.Txt
  loc_1BDB096:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDB0CC:             var_1F4 = 0
  loc_1BDB0D7:             var_1E8 = 0
  loc_1BDB0E2:             var_1E4 = 0
  loc_1BDB0EB:             var_1D0 = "A"
  loc_1BDB111:             var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDB165:             Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDB1CB:             var_A6 = (var_A6 + 1)
  loc_1BDB1DC:             Set var_110 = Me.Txt
  loc_1BDB1E2:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1BDB1EA:             CSng(var_EC) = var_118.Text
  loc_1BDB1FD:             Set var_11C = Me.Txt
  loc_1BDB203:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BDB20B:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BDB21E:             Set var_17C = Me.Txt
  loc_1BDB224:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDB22C:             MemVar_1F950C8 = var_180.Text
  loc_1BDB251:             Set var_184 = Me.Txt
  loc_1BDB257:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDB25F:             CDate(Now) = var_188.Text
  loc_1BDB286:             var_240 = var_88.Fields.Item("pCode").Value
  loc_1BDB2B1:             Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDB2D8:             var_250 = var_88.Fields.Item("uCode").Value
  loc_1BDB2EB:             Set var_1A4 = Me.Txt
  loc_1BDB2F1:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDB309:             Set var_1BC = Me.Txt
  loc_1BDB30F:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDB33B:             var_230 = Now
  loc_1BDB345:             var_1F4 = 0
  loc_1BDB350:             var_1E8 = 0
  loc_1BDB35B:             var_1E4 = 0
  loc_1BDB364:             var_1D0 = "A"
  loc_1BDB38A:             var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDB3DE:             Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDB444:             var_A6 = (var_A6 + 1)
  loc_1BDB447:           End If
  loc_1BDB44A:         Else
  loc_1BDB461:           If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDB472:             Set var_110 = Me.Txt
  loc_1BDB478:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_240), CSng(var_EC))
  loc_1BDB480:             CDbl(0) = var_118.Text
  loc_1BDB493:             Set var_11C = Me.Txt
  loc_1BDB499:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_250))
  loc_1BDB4A1:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BDB4B4:             Set var_17C = Me.Txt
  loc_1BDB4BA:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDB4C2:             MemVar_1F950C8 = var_180.Text
  loc_1BDB4E7:             Set var_184 = Me.Txt
  loc_1BDB4ED:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDB4F5:             CDate(var_230) = var_188.Text
  loc_1BDB547:             Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDB581:             Set var_1A4 = Me.Txt
  loc_1BDB587:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDB59F:             Set var_1BC = Me.Txt
  loc_1BDB5A5:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDB5DB:             var_1F4 = 0
  loc_1BDB5E6:             var_1E8 = 0
  loc_1BDB5F1:             var_1E4 = 0
  loc_1BDB5FA:             var_1D0 = "A"
  loc_1BDB620:             var_220 = (CVar(var_9C & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDB674:             Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDB6DA:             var_A6 = (var_A6 + 1)
  loc_1BDB6EB:             Set var_110 = Me.Txt
  loc_1BDB6F1:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1BDB6F9:             CSng(var_EC) = var_118.Text
  loc_1BDB70C:             Set var_11C = Me.Txt
  loc_1BDB712:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BDB71A:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BDB72D:             Set var_17C = Me.Txt
  loc_1BDB733:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDB73B:             MemVar_1F950C8 = var_180.Text
  loc_1BDB760:             Set var_184 = Me.Txt
  loc_1BDB766:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDB76E:             CDate(Now) = var_188.Text
  loc_1BDB795:             var_240 = var_88.Fields.Item("pCode").Value
  loc_1BDB7C0:             Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDB7E7:             var_250 = var_88.Fields.Item("uCode").Value
  loc_1BDB7FA:             Set var_1A4 = Me.Txt
  loc_1BDB800:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDB818:             Set var_1BC = Me.Txt
  loc_1BDB81E:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDB84A:             var_230 = Now
  loc_1BDB854:             var_1F4 = 0
  loc_1BDB85F:             var_1E8 = 0
  loc_1BDB86A:             var_1E4 = 0
  loc_1BDB873:             var_1D0 = "A"
  loc_1BDB899:             var_220 = (CVar(var_9C & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDB8ED:             Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDB953:             var_A6 = (var_A6 + 1)
  loc_1BDB959:           Else
  loc_1BDB967:             Set var_110 = Me.Txt
  loc_1BDB96D:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_240), CSng(var_EC))
  loc_1BDB975:             CDbl(0) = var_118.Text
  loc_1BDB988:             Set var_11C = Me.Txt
  loc_1BDB98E:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_250))
  loc_1BDB996:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BDB9A9:             Set var_17C = Me.Txt
  loc_1BDB9AF:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDB9B7:             MemVar_1F950C8 = var_180.Text
  loc_1BDB9DC:             Set var_184 = Me.Txt
  loc_1BDB9E2:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDB9EA:             CDate(var_230) = var_188.Text
  loc_1BDBA3C:             Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDBA76:             Set var_1A4 = Me.Txt
  loc_1BDBA7C:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDBA94:             Set var_1BC = Me.Txt
  loc_1BDBA9A:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDBAD0:             var_1F4 = 0
  loc_1BDBADB:             var_1E8 = 0
  loc_1BDBAE6:             var_1E4 = 0
  loc_1BDBAEF:             var_1D0 = "A"
  loc_1BDBB15:             var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDBB69:             Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDBBCF:             var_A6 = (var_A6 + 1)
  loc_1BDBBE0:             Set var_110 = Me.Txt
  loc_1BDBBE6:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(var_EC))
  loc_1BDBBEE:             CDbl(0) = var_118.Text
  loc_1BDBC01:             Set var_11C = Me.Txt
  loc_1BDBC07:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BDBC0F:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BDBC22:             Set var_17C = Me.Txt
  loc_1BDBC28:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDBC30:             MemVar_1F950C8 = var_180.Text
  loc_1BDBC55:             Set var_184 = Me.Txt
  loc_1BDBC5B:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDBC63:             CDate(Now) = var_188.Text
  loc_1BDBC8A:             var_240 = var_88.Fields.Item("pCode").Value
  loc_1BDBCB5:             Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDBCDC:             var_250 = var_88.Fields.Item("uCode").Value
  loc_1BDBCEF:             Set var_1A4 = Me.Txt
  loc_1BDBCF5:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDBD0D:             Set var_1BC = Me.Txt
  loc_1BDBD13:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDBD3F:             var_230 = Now
  loc_1BDBD49:             var_1F4 = 0
  loc_1BDBD54:             var_1E8 = 0
  loc_1BDBD5F:             var_1E4 = 0
  loc_1BDBD68:             var_1D0 = "A"
  loc_1BDBD8E:             var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDBDE2:             Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDBE48:             var_A6 = (var_A6 + 1)
  loc_1BDBE4B:           End If
  loc_1BDBE4B:         End If
  loc_1BDBE4E:       Else
  loc_1BDBE74:         Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")), var_A6, CStr(var_240), CDbl(0), CSng(var_EC))
  loc_1BDBE8E:         If (var_EC < 0) Then
  loc_1BDBEAB:           var_118 = var_88.Fields.Item("CSign")
  loc_1BDBEBB:           var_DC = "-"
  loc_1BDBECD:           If (var_118.Value = 0) Then
  loc_1BDBEE7:             If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDBEF8:               Set var_110 = Me.Txt
  loc_1BDBEFE:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, CStr(var_250))
  loc_1BDBF06:               CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_118.Text
  loc_1BDBF19:               Set var_11C = Me.Txt
  loc_1BDBF1F:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC)
  loc_1BDBF27:               MemVar_1F950C8 = var_120.Tag
  loc_1BDBF3A:               Set var_17C = Me.Txt
  loc_1BDBF40:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDBF48:               CDate(var_230) = var_180.Text
  loc_1BDBF6D:               Set var_184 = Me.Txt
  loc_1BDBF73:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDBF7B:               var_1B8 = var_188.Text
  loc_1BDBFCD:               Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDC007:               Set var_1A4 = Me.Txt
  loc_1BDC00D:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDC025:               Set var_1BC = Me.Txt
  loc_1BDC02B:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDC061:               var_1F4 = 0
  loc_1BDC06C:               var_1E8 = 0
  loc_1BDC077:               var_1E4 = 0
  loc_1BDC080:               var_1D0 = "A"
  loc_1BDC0A6:               var_230 = (CVar(var_9C & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDC0FE:               Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDC164:               var_A6 = (var_A6 + 1)
  loc_1BDC175:               Set var_110 = Me.Txt
  loc_1BDC17B:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1BDC183:               CSng(Abs(var_EC)) = var_118.Text
  loc_1BDC196:               Set var_11C = Me.Txt
  loc_1BDC19C:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BDC1A4:               CStr(var_230) = var_120.Tag
  loc_1BDC1B7:               Set var_17C = Me.Txt
  loc_1BDC1BD:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDC1C5:               MemVar_1F950C8 = var_180.Text
  loc_1BDC1EA:               Set var_184 = Me.Txt
  loc_1BDC1F0:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDC1F8:               CDate(Now) = var_188.Text
  loc_1BDC21F:               var_250 = var_88.Fields.Item("pCode").Value
  loc_1BDC24A:               Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDC271:               var_268 = var_88.Fields.Item("uCode").Value
  loc_1BDC284:               Set var_1A4 = Me.Txt
  loc_1BDC28A:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDC2A2:               Set var_1BC = Me.Txt
  loc_1BDC2A8:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDC2D4:               var_240 = Now
  loc_1BDC2DE:               var_1F4 = 0
  loc_1BDC2E9:               var_1E8 = 0
  loc_1BDC2F4:               var_1E4 = 0
  loc_1BDC2FD:               var_1D0 = "A"
  loc_1BDC323:               var_230 = (CVar(var_9C & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDC33E:               var_10C = Abs(var_EC)
  loc_1BDC37B:               Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDC3E1:               var_A6 = (var_A6 + 1)
  loc_1BDC3E7:             Else
  loc_1BDC3F5:               Set var_110 = Me.Txt
  loc_1BDC3FB:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_250), CSng(var_10C))
  loc_1BDC403:               CDbl(0) = var_118.Text
  loc_1BDC416:               Set var_11C = Me.Txt
  loc_1BDC41C:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_268))
  loc_1BDC424:               CStr(var_230) = var_120.Tag
  loc_1BDC437:               Set var_17C = Me.Txt
  loc_1BDC43D:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDC445:               MemVar_1F950C8 = var_180.Text
  loc_1BDC46A:               Set var_184 = Me.Txt
  loc_1BDC470:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDC478:               CDate(var_240) = var_188.Text
  loc_1BDC4CA:               Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDC504:               Set var_1A4 = Me.Txt
  loc_1BDC50A:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDC522:               Set var_1BC = Me.Txt
  loc_1BDC528:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDC55E:               var_1F4 = 0
  loc_1BDC569:               var_1E8 = 0
  loc_1BDC574:               var_1E4 = 0
  loc_1BDC57D:               var_1D0 = "A"
  loc_1BDC5A3:               var_230 = (CVar(var_98 & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDC5FB:               Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDC661:               var_A6 = (var_A6 + 1)
  loc_1BDC672:               Set var_110 = Me.Txt
  loc_1BDC678:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(Abs(var_EC)))
  loc_1BDC680:               CDbl(0) = var_118.Text
  loc_1BDC693:               Set var_11C = Me.Txt
  loc_1BDC699:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BDC6A1:               CStr(var_230) = var_120.Tag
  loc_1BDC6B4:               Set var_17C = Me.Txt
  loc_1BDC6BA:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDC6C2:               MemVar_1F950C8 = var_180.Text
  loc_1BDC6E7:               Set var_184 = Me.Txt
  loc_1BDC6ED:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDC6F5:               CDate(Now) = var_188.Text
  loc_1BDC71C:               var_250 = var_88.Fields.Item("pCode").Value
  loc_1BDC747:               Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDC76E:               var_268 = var_88.Fields.Item("uCode").Value
  loc_1BDC781:               Set var_1A4 = Me.Txt
  loc_1BDC787:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDC79F:               Set var_1BC = Me.Txt
  loc_1BDC7A5:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDC7D1:               var_240 = Now
  loc_1BDC7DB:               var_1F4 = 0
  loc_1BDC7E6:               var_1E8 = 0
  loc_1BDC7F1:               var_1E4 = 0
  loc_1BDC7FA:               var_1D0 = "A"
  loc_1BDC820:               var_230 = (CVar(var_98 & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDC834:               var_10C = Abs(var_EC)
  loc_1BDC878:               Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDC8DE:               var_A6 = (var_A6 + 1)
  loc_1BDC8E1:             End If
  loc_1BDC8E4:           Else
  loc_1BDC8FB:             If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDC90C:               Set var_110 = Me.Txt
  loc_1BDC912:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_250), CDbl(0))
  loc_1BDC91A:               CSng(var_10C) = var_118.Text
  loc_1BDC92D:               Set var_11C = Me.Txt
  loc_1BDC933:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_268))
  loc_1BDC93B:               CStr(var_230) = var_120.Tag
  loc_1BDC94E:               Set var_17C = Me.Txt
  loc_1BDC954:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDC95C:               MemVar_1F950C8 = var_180.Text
  loc_1BDC981:               Set var_184 = Me.Txt
  loc_1BDC987:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDC98F:               CDate(var_240) = var_188.Text
  loc_1BDC9E1:               Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDCA1B:               Set var_1A4 = Me.Txt
  loc_1BDCA21:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDCA39:               Set var_1BC = Me.Txt
  loc_1BDCA3F:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDCA75:               var_1F4 = 0
  loc_1BDCA80:               var_1E8 = 0
  loc_1BDCA8B:               var_1E4 = 0
  loc_1BDCA94:               var_1D0 = "A"
  loc_1BDCABA:               var_230 = (CVar(var_9C & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDCB12:               Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDCB78:               var_A6 = (var_A6 + 1)
  loc_1BDCB89:               Set var_110 = Me.Txt
  loc_1BDCB8F:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(Abs(var_EC)))
  loc_1BDCB97:               CDbl(0) = var_118.Text
  loc_1BDCBAA:               Set var_11C = Me.Txt
  loc_1BDCBB0:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BDCBB8:               CStr(var_230) = var_120.Tag
  loc_1BDCBCB:               Set var_17C = Me.Txt
  loc_1BDCBD1:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDCBD9:               MemVar_1F950C8 = var_180.Text
  loc_1BDCBFE:               Set var_184 = Me.Txt
  loc_1BDCC04:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDCC0C:               CDate(Now) = var_188.Text
  loc_1BDCC33:               var_250 = var_88.Fields.Item("pCode").Value
  loc_1BDCC5E:               Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDCC85:               var_268 = var_88.Fields.Item("uCode").Value
  loc_1BDCC98:               Set var_1A4 = Me.Txt
  loc_1BDCC9E:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDCCB6:               Set var_1BC = Me.Txt
  loc_1BDCCBC:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDCCE8:               var_240 = Now
  loc_1BDCCF2:               var_1F4 = 0
  loc_1BDCCFD:               var_1E8 = 0
  loc_1BDCD08:               var_1E4 = 0
  loc_1BDCD11:               var_1D0 = "A"
  loc_1BDCD37:               var_230 = (CVar(var_9C & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDCD4B:               var_10C = Abs(var_EC)
  loc_1BDCD8F:               Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDCDF5:               var_A6 = (var_A6 + 1)
  loc_1BDCDFB:             Else
  loc_1BDCE09:               Set var_110 = Me.Txt
  loc_1BDCE0F:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_250), CDbl(0))
  loc_1BDCE17:               CSng(var_10C) = var_118.Text
  loc_1BDCE2A:               Set var_11C = Me.Txt
  loc_1BDCE30:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_268))
  loc_1BDCE38:               CStr(var_230) = var_120.Tag
  loc_1BDCE4B:               Set var_17C = Me.Txt
  loc_1BDCE51:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDCE59:               MemVar_1F950C8 = var_180.Text
  loc_1BDCE7E:               Set var_184 = Me.Txt
  loc_1BDCE84:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDCE8C:               CDate(var_240) = var_188.Text
  loc_1BDCEDE:               Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDCF18:               Set var_1A4 = Me.Txt
  loc_1BDCF1E:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDCF36:               Set var_1BC = Me.Txt
  loc_1BDCF3C:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDCF72:               var_1F4 = 0
  loc_1BDCF7D:               var_1E8 = 0
  loc_1BDCF88:               var_1E4 = 0
  loc_1BDCF91:               var_1D0 = "A"
  loc_1BDCFB7:               var_230 = (CVar(var_98 & var_1A8.Text & " Dt.:       ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDD00F:               Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_1B8)
  loc_1BDD075:               var_A6 = (var_A6 + 1)
  loc_1BDD086:               Set var_110 = Me.Txt
  loc_1BDD08C:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1BDD094:               CSng(Abs(var_EC)) = var_118.Text
  loc_1BDD0A7:               Set var_11C = Me.Txt
  loc_1BDD0AD:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BDD0B5:               CStr(var_230) = var_120.Tag
  loc_1BDD0C8:               Set var_17C = Me.Txt
  loc_1BDD0CE:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDD0D6:               MemVar_1F950C8 = var_180.Text
  loc_1BDD0E8:               var_1B0 = Me.LblVPrefix.Caption
  loc_1BDD0FB:               Set var_184 = Me.Txt
  loc_1BDD101:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188, var_1B8)
  loc_1BDD109:               CDate(Now) = var_188.Text
  loc_1BDD130:               var_250 = var_88.Fields.Item("pCode").Value
  loc_1BDD15B:               Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDD17A:               var_1A0 = var_88.Fields.Item("uCode")
  loc_1BDD182:               var_268 = var_1A0.Value
  loc_1BDD195:               Set var_1A4 = Me.Txt
  loc_1BDD19B:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDD1B3:               Set var_1BC = Me.Txt
  loc_1BDD1B9:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDD1E5:               var_240 = Now
  loc_1BDD1EF:               var_1F4 = 0
  loc_1BDD1FA:               var_1E8 = 0
  loc_1BDD205:               var_1E4 = 0
  loc_1BDD20E:               var_1D0 = "A"
  loc_1BDD234:               var_230 = (CVar(var_98 & var_1A8.Text & " Dt.:       ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDD24F:               var_10C = Abs(var_EC)
  loc_1BDD28C:               Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), var_1B0, MemVar_1F95070, var_1B8)
  loc_1BDD2F2:               var_A6 = (var_A6 + 1)
  loc_1BDD2F5:             End If
  loc_1BDD2F5:           End If
  loc_1BDD2FB:           var_A6 = (var_A6 + 1)
  loc_1BDD2FE:         End If
  loc_1BDD2FE:       End If
  loc_1BDD301:     Else
  loc_1BDD327:       Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")), var_A6, var_A6, CStr(var_250), CSng(var_10C))
  loc_1BDD341:       If (var_EC > 0) Then
  loc_1BDD35E:         var_118 = var_88.Fields.Item("CSign")
  loc_1BDD36E:         var_DC = "-"
  loc_1BDD380:         If (var_118.Value = 0) Then
  loc_1BDD39A:           If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDD3AB:             Set var_110 = Me.Txt
  loc_1BDD3B1:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_1AC, CDbl(0), CStr(var_268))
  loc_1BDD3B9:             CStr(var_230) = var_118.Text
  loc_1BDD3CC:             Set var_11C = Me.Txt
  loc_1BDD3D2:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC)
  loc_1BDD3DA:             MemVar_1F950C8 = var_120.Tag
  loc_1BDD3ED:             Set var_17C = Me.Txt
  loc_1BDD3F3:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1B8)
  loc_1BDD3FB:             CDate(var_240) = var_180.Text
  loc_1BDD420:             Set var_184 = Me.Txt
  loc_1BDD426:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDD455:             var_158 = var_88.Fields.Item("ACode").Value
  loc_1BDD480:             Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDD493:             Set var_19C = Me.Txt
  loc_1BDD499:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_1A0)
  loc_1BDD4A1:             var_124 = var_1A0.Tag
  loc_1BDD4B4:             Set var_1A4 = Me.Txt
  loc_1BDD4BA:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDD4D5:             Set var_1BC = Me.Txt
  loc_1BDD4DB:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDD4E3:             var_130 = var_254.Text
  loc_1BDD4EB:             var_10C = Now
  loc_1BDD4F5:             var_200 = 0
  loc_1BDD500:             var_1FC = 0
  loc_1BDD50B:             var_1F8 = 0
  loc_1BDD514:             var_1F4 = "A"
  loc_1BDD534:             var_134 = var_9C & var_1A8.Text & "  Dt.:   "
  loc_1BDD589:             Proc_6_140_12DA4E8(MemVar_1F95044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDD5E6:           Else
  loc_1BDD5F4:             Set var_110 = Me.Txt
  loc_1BDD5FA:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_130, CStr(var_158), CSng(var_EC), CDbl(0))
  loc_1BDD602:             var_124 = var_118.Text
  loc_1BDD615:             Set var_11C = Me.Txt
  loc_1BDD61B:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDD623:             MemVar_1F950C8 = var_120.Tag
  loc_1BDD636:             Set var_17C = Me.Txt
  loc_1BDD63C:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1B0)
  loc_1BDD644:             CDate(var_10C) = var_180.Text
  loc_1BDD669:             Set var_184 = Me.Txt
  loc_1BDD66F:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDD69E:             var_240 = var_88.Fields.Item("ACode").Value
  loc_1BDD6C9:             Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDD6DC:             Set var_19C = Me.Txt
  loc_1BDD6E2:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_1A0)
  loc_1BDD6EA:             var_124 = var_1A0.Tag
  loc_1BDD6FD:             Set var_1A4 = Me.Txt
  loc_1BDD703:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDD71B:             Set var_1BC = Me.Txt
  loc_1BDD721:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDD74D:             var_230 = Now
  loc_1BDD757:             var_1F8 = 0
  loc_1BDD762:             var_1F4 = 0
  loc_1BDD76D:             var_1E8 = 0
  loc_1BDD776:             var_1E4 = "A"
  loc_1BDD79C:             var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDD7EF:             Proc_6_140_12DA4E8(MemVar_1F95044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDD84D:           End If
  loc_1BDD850:         Else
  loc_1BDD867:           If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDD878:             Set var_110 = Me.Txt
  loc_1BDD87E:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_1AC, CStr(var_240), CDbl(0), CSng(var_EC))
  loc_1BDD886:             var_124 = var_118.Text
  loc_1BDD899:             Set var_11C = Me.Txt
  loc_1BDD89F:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(CVar(var_98 & var_1A8.Text & " Dt.:       ")))
  loc_1BDD8A7:             MemVar_1F950C8 = var_120.Tag
  loc_1BDD8BA:             Set var_17C = Me.Txt
  loc_1BDD8C0:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1B8)
  loc_1BDD8C8:             CDate(var_230) = var_180.Text
  loc_1BDD8ED:             Set var_184 = Me.Txt
  loc_1BDD8F3:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDD922:             var_158 = var_88.Fields.Item("ACode").Value
  loc_1BDD94D:             Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDD960:             Set var_19C = Me.Txt
  loc_1BDD966:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_1A0)
  loc_1BDD96E:             var_124 = var_1A0.Tag
  loc_1BDD981:             Set var_1A4 = Me.Txt
  loc_1BDD987:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDD9A2:             Set var_1BC = Me.Txt
  loc_1BDD9A8:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDD9B0:             var_130 = var_254.Text
  loc_1BDD9B8:             var_10C = Now
  loc_1BDD9C2:             var_200 = 0
  loc_1BDD9CD:             var_1FC = 0
  loc_1BDD9D8:             var_1F8 = 0
  loc_1BDD9E1:             var_1F4 = "A"
  loc_1BDDA01:             var_134 = var_9C & var_1A8.Text & "  Dt.:     "
  loc_1BDDA56:             Proc_6_140_12DA4E8(MemVar_1F95044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDDAB3:           Else
  loc_1BDDAC1:             Set var_110 = Me.Txt
  loc_1BDDAC7:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_130, CStr(var_158), CDbl(0), CSng(var_EC))
  loc_1BDDACF:             var_124 = var_118.Text
  loc_1BDDAE2:             Set var_11C = Me.Txt
  loc_1BDDAE8:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDDAF0:             MemVar_1F950C8 = var_120.Tag
  loc_1BDDB03:             Set var_17C = Me.Txt
  loc_1BDDB09:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1B0)
  loc_1BDDB11:             CDate(var_10C) = var_180.Text
  loc_1BDDB36:             Set var_184 = Me.Txt
  loc_1BDDB3C:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDDB6B:             var_240 = var_88.Fields.Item("ACode").Value
  loc_1BDDB96:             Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDDBA9:             Set var_19C = Me.Txt
  loc_1BDDBAF:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_1A0)
  loc_1BDDBB7:             var_124 = var_1A0.Tag
  loc_1BDDBCA:             Set var_1A4 = Me.Txt
  loc_1BDDBD0:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDDBE8:             Set var_1BC = Me.Txt
  loc_1BDDBEE:             Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDDC1A:             var_230 = Now
  loc_1BDDC24:             var_1F8 = 0
  loc_1BDDC2F:             var_1F4 = 0
  loc_1BDDC3A:             var_1E8 = 0
  loc_1BDDC43:             var_1E4 = "A"
  loc_1BDDC69:             var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:       ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDDCBC:             Proc_6_140_12DA4E8(MemVar_1F95044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDDD1A:           End If
  loc_1BDDD1A:         End If
  loc_1BDDD20:         var_A6 = (var_A6 + 1)
  loc_1BDDD26:       Else
  loc_1BDDD4C:         Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")), var_A6, CStr(var_240), CSng(var_EC), CDbl(0))
  loc_1BDDD66:         If (var_EC < 0) Then
  loc_1BDDD83:           var_118 = var_88.Fields.Item("CSign")
  loc_1BDDD93:           var_DC = "-"
  loc_1BDDDA5:           If (var_118.Value = 0) Then
  loc_1BDDDBF:             If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDDDD0:               Set var_110 = Me.Txt
  loc_1BDDDD6:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_1AC, var_124)
  loc_1BDDDDE:               CStr(CVar(var_98 & var_1A8.Text & " Dt.:       ")) = var_118.Text
  loc_1BDDDF1:               Set var_11C = Me.Txt
  loc_1BDDDF7:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC)
  loc_1BDDDFF:               MemVar_1F950C8 = var_120.Tag
  loc_1BDDE12:               Set var_17C = Me.Txt
  loc_1BDDE18:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1B8)
  loc_1BDDE20:               CDate(var_230) = var_180.Text
  loc_1BDDE45:               Set var_184 = Me.Txt
  loc_1BDDE4B:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDDE7A:               var_178 = var_88.Fields.Item("ACode").Value
  loc_1BDDEA5:               Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDDEB8:               Set var_19C = Me.Txt
  loc_1BDDEBE:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_1A0)
  loc_1BDDEC6:               var_124 = var_1A0.Tag
  loc_1BDDED9:               Set var_1A4 = Me.Txt
  loc_1BDDEDF:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDDEFA:               Set var_1BC = Me.Txt
  loc_1BDDF00:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDDF08:               var_130 = var_254.Text
  loc_1BDDF10:               var_158 = Now
  loc_1BDDF1A:               var_200 = 0
  loc_1BDDF25:               var_1FC = 0
  loc_1BDDF30:               var_1F8 = 0
  loc_1BDDF39:               var_1F4 = "A"
  loc_1BDDF59:               var_134 = var_9C & var_1A8.Text & "  Dt.:     "
  loc_1BDDF6E:               var_10C = Abs(var_EC)
  loc_1BDDFB2:               Proc_6_140_12DA4E8(MemVar_1F95044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDE00F:             Else
  loc_1BDE01D:               Set var_110 = Me.Txt
  loc_1BDE023:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_130, CStr(var_178), CDbl(0), CSng(var_10C))
  loc_1BDE02B:               var_124 = var_118.Text
  loc_1BDE03E:               Set var_11C = Me.Txt
  loc_1BDE044:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDE04C:               MemVar_1F950C8 = var_120.Tag
  loc_1BDE05F:               Set var_17C = Me.Txt
  loc_1BDE065:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1B0)
  loc_1BDE06D:               CDate(var_158) = var_180.Text
  loc_1BDE092:               Set var_184 = Me.Txt
  loc_1BDE098:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDE0C7:               var_250 = var_88.Fields.Item("ACode").Value
  loc_1BDE0F2:               Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDE105:               Set var_19C = Me.Txt
  loc_1BDE10B:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_1A0)
  loc_1BDE113:               var_124 = var_1A0.Tag
  loc_1BDE126:               Set var_1A4 = Me.Txt
  loc_1BDE12C:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDE144:               Set var_1BC = Me.Txt
  loc_1BDE14A:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDE176:               var_240 = Now
  loc_1BDE180:               var_1F8 = 0
  loc_1BDE18B:               var_1F4 = 0
  loc_1BDE196:               var_1E8 = 0
  loc_1BDE19F:               var_1E4 = "A"
  loc_1BDE1C5:               var_230 = (CVar(var_98 & var_1A8.Text & " Dt.:       ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDE1DF:               var_10C = Abs(var_EC)
  loc_1BDE21C:               Proc_6_140_12DA4E8(MemVar_1F95044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDE27A:             End If
  loc_1BDE27D:           Else
  loc_1BDE294:             If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDE2A5:               Set var_110 = Me.Txt
  loc_1BDE2AB:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_1AC, CStr(var_250), CSng(var_10C), CDbl(0))
  loc_1BDE2B3:               var_124 = var_118.Text
  loc_1BDE2C6:               Set var_11C = Me.Txt
  loc_1BDE2CC:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, CStr(var_230))
  loc_1BDE2D4:               MemVar_1F950C8 = var_120.Tag
  loc_1BDE2E7:               Set var_17C = Me.Txt
  loc_1BDE2ED:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1B8)
  loc_1BDE2F5:               CDate(var_240) = var_180.Text
  loc_1BDE31A:               Set var_184 = Me.Txt
  loc_1BDE320:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDE34F:               var_178 = var_88.Fields.Item("ACode").Value
  loc_1BDE37A:               Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDE38D:               Set var_19C = Me.Txt
  loc_1BDE393:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_1A0)
  loc_1BDE39B:               var_124 = var_1A0.Tag
  loc_1BDE3AE:               Set var_1A4 = Me.Txt
  loc_1BDE3B4:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDE3CF:               Set var_1BC = Me.Txt
  loc_1BDE3D5:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDE3DD:               var_130 = var_254.Text
  loc_1BDE3E5:               var_158 = Now
  loc_1BDE3EF:               var_200 = 0
  loc_1BDE3FA:               var_1FC = 0
  loc_1BDE405:               var_1F8 = 0
  loc_1BDE40E:               var_1F4 = "A"
  loc_1BDE42E:               var_134 = var_9C & var_1A8.Text & "  Dt.:       "
  loc_1BDE44A:               var_10C = Abs(var_EC)
  loc_1BDE487:               Proc_6_140_12DA4E8(MemVar_1F95044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDE4E4:             Else
  loc_1BDE4F2:               Set var_110 = Me.Txt
  loc_1BDE4F8:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_130, CStr(var_178), CSng(var_10C), CDbl(0))
  loc_1BDE500:               var_124 = var_118.Text
  loc_1BDE513:               Set var_11C = Me.Txt
  loc_1BDE519:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDE521:               MemVar_1F950C8 = var_120.Tag
  loc_1BDE534:               Set var_17C = Me.Txt
  loc_1BDE53A:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1B0)
  loc_1BDE542:               CDate(var_158) = var_180.Text
  loc_1BDE567:               Set var_184 = Me.Txt
  loc_1BDE56D:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDE59C:               var_250 = var_88.Fields.Item("ACode").Value
  loc_1BDE5C0:               var_CC = CVar(var_88.Fields.Item("RevAmt")) 'Address
  loc_1BDE5C7:               Proc_6_39_E7D3A0(var_EC, var_CC)
  loc_1BDE5DA:               Set var_19C = Me.Txt
  loc_1BDE5E0:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_1A0)
  loc_1BDE5E8:               var_124 = var_1A0.Tag
  loc_1BDE5FB:               Set var_1A4 = Me.Txt
  loc_1BDE601:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDE619:               Set var_1BC = Me.Txt
  loc_1BDE61F:               Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDE64B:               var_240 = Now
  loc_1BDE655:               var_1F8 = 0
  loc_1BDE660:               var_1F4 = 0
  loc_1BDE66B:               var_1E8 = 0
  loc_1BDE674:               var_1E4 = "A"
  loc_1BDE69A:               var_230 = (CVar(var_98 & var_1A8.Text & " Dt.:         ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDE6AD:               var_10C = Abs(var_EC)
  loc_1BDE6F1:               Proc_6_140_12DA4E8(MemVar_1F95044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDE74F:             End If
  loc_1BDE74F:           End If
  loc_1BDE755:           var_A6 = (var_A6 + 1)
  loc_1BDE758:         End If
  loc_1BDE758:       End If
  loc_1BDE758:     End If
  loc_1BDE75B:     var_88.MoveNext
  loc_1BDE760:     GoTo loc_1BDA959
  loc_1BDE763:   End If
  loc_1BDE763: End If
  loc_1BDE777: var_124 = "SELECT Sum(PostVal) as Amount, AcCode as AccName " & " FROM Purch2 Where DocID='"
  loc_1BDE788: Set var_110 = Me.Txt
  loc_1BDE78E: Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_AC, var_124, var_CC, -1, var_11C)
  loc_1BDE796: var_A6 = var_118.Text
  loc_1BDE7AF: unk_59BA49.Execute CStr(var_250) & var_AC & "' Group By AcCode ", CDbl(0), CSng(var_10C)
  loc_1BDE7BA: Set var_88 = var_11C
  loc_1BDE7E8: If (var_88.RecordCount > 0) Then
  loc_1BDE7EB:   ' Referenced from: 1BDF219
  loc_1BDE7FA:   If Not(var_88.EOF) Then
  loc_1BDE814:     var_118 = var_88.Fields.Item("Amount")
  loc_1BDE823:     Proc_6_39_E7D3A0(var_EC, CVar(var_118), var_124)
  loc_1BDE83D:     If (var_EC > 0) Then
  loc_1BDE857:       If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDE868:         Set var_110 = Me.Txt
  loc_1BDE86E:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_1AC)
  loc_1BDE876:         CStr(var_230) = var_118.Text
  loc_1BDE889:         Set var_11C = Me.Txt
  loc_1BDE88F:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120)
  loc_1BDE897:         var_AC = var_120.Tag
  loc_1BDE8AA:         Set var_17C = Me.Txt
  loc_1BDE8B0:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180)
  loc_1BDE8B8:         var_1B8 = var_180.Text
  loc_1BDE8DD:         Set var_184 = Me.Txt
  loc_1BDE8E3:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDE912:         var_158 = var_88.Fields.Item("ACCNAME").Value
  loc_1BDE93D:         Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("Amount")))
  loc_1BDE950:         Set var_19C = Me.Txt
  loc_1BDE956:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_1A0)
  loc_1BDE95E:         var_124 = var_1A0.Tag
  loc_1BDE971:         Set var_1A4 = Me.Txt
  loc_1BDE977:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDE992:         Set var_1BC = Me.Txt
  loc_1BDE998:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDE9A0:         var_130 = var_254.Text
  loc_1BDE9A8:         var_10C = Now
  loc_1BDE9B2:         var_200 = 0
  loc_1BDE9BD:         var_1FC = 0
  loc_1BDE9C8:         var_1F8 = 0
  loc_1BDE9D1:         var_1F4 = "A"
  loc_1BDE9F1:         var_134 = var_9C & var_1A8.Text & "  Dt.: "
  loc_1BDEA46:         Proc_6_140_12DA4E8(MemVar_1F95044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDEAA3:       Else
  loc_1BDEAB1:         Set var_110 = Me.Txt
  loc_1BDEAB7:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_130, CStr(var_158), CDbl(0), CSng(var_EC))
  loc_1BDEABF:         var_124 = var_118.Text
  loc_1BDEAD2:         Set var_11C = Me.Txt
  loc_1BDEAD8:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDEAE0:         MemVar_1F950C8 = var_120.Tag
  loc_1BDEAF3:         Set var_17C = Me.Txt
  loc_1BDEAF9:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1B0)
  loc_1BDEB01:         CDate(var_10C) = var_180.Text
  loc_1BDEB26:         Set var_184 = Me.Txt
  loc_1BDEB2C:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDEB5B:         var_240 = var_88.Fields.Item("ACCNAME").Value
  loc_1BDEB86:         Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("Amount")))
  loc_1BDEB99:         Set var_19C = Me.Txt
  loc_1BDEB9F:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_1A0)
  loc_1BDEBA7:         var_124 = var_1A0.Tag
  loc_1BDEBBA:         Set var_1A4 = Me.Txt
  loc_1BDEBC0:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDEBD8:         Set var_1BC = Me.Txt
  loc_1BDEBDE:         Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDEC0A:         var_230 = Now
  loc_1BDEC14:         var_1F8 = 0
  loc_1BDEC1F:         var_1F4 = 0
  loc_1BDEC2A:         var_1E8 = 0
  loc_1BDEC33:         var_1E4 = "A"
  loc_1BDEC59:         var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDECAC:         Proc_6_140_12DA4E8(MemVar_1F95044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDED0A:       End If
  loc_1BDED10:       var_A6 = (var_A6 + 1)
  loc_1BDED16:     Else
  loc_1BDED2D:       var_118 = var_88.Fields.Item("Amount")
  loc_1BDED3C:       Proc_6_39_E7D3A0(var_EC, CVar(var_118), var_A6, CStr(var_240), CSng(var_EC), CDbl(0))
  loc_1BDED56:       If (var_EC < 0) Then
  loc_1BDED70:         If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDED81:           Set var_110 = Me.Txt
  loc_1BDED87:           Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_1AC, var_124)
  loc_1BDED8F:           CStr(CVar(var_98 & var_1A8.Text & " Dt.:         ")) = var_118.Text
  loc_1BDEDA2:           Set var_11C = Me.Txt
  loc_1BDEDA8:           Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC)
  loc_1BDEDB0:           MemVar_1F950C8 = var_120.Tag
  loc_1BDEDC3:           Set var_17C = Me.Txt
  loc_1BDEDC9:           Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1B8)
  loc_1BDEDD1:           CDate(var_230) = var_180.Text
  loc_1BDEDF6:           Set var_184 = Me.Txt
  loc_1BDEDFC:           Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDEE2B:           var_178 = var_88.Fields.Item("ACCNAME").Value
  loc_1BDEE56:           Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("Amount")))
  loc_1BDEE69:           Set var_19C = Me.Txt
  loc_1BDEE6F:           Call 0.Method_Proc_32_112_1BDF2300 (CInt(4), var_1A0)
  loc_1BDEE77:           var_124 = var_1A0.Tag
  loc_1BDEE8A:           Set var_1A4 = Me.Txt
  loc_1BDEE90:           Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A8)
  loc_1BDEEAB:           Set var_1BC = Me.Txt
  loc_1BDEEB1:           Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_254)
  loc_1BDEEB9:           var_130 = var_254.Text
  loc_1BDEEC1:           var_158 = Now
  loc_1BDEECB:           var_200 = 0
  loc_1BDEED6:           var_1FC = 0
  loc_1BDEEE1:           var_1F8 = 0
  loc_1BDEEEA:           var_1F4 = "A"
  loc_1BDEF03:           var_12C = var_9C & var_1A8.Text
  loc_1BDEF0A:           var_134 = var_12C & "  Dt.:   "
  loc_1BDEF26:           var_10C = Abs(var_EC)
  loc_1BDEF63:           Proc_6_140_12DA4E8(MemVar_1F95044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDEFC0:         Else
  loc_1BDEFCE:           Set var_110 = Me.Txt
  loc_1BDEFD4:           Call 0.Method_Proc_32_112_1BDF2300 (CInt(0), var_118, var_12C, CStr(var_178), CSng(var_10C), CDbl(0))
  loc_1BDEFDC:           var_124 = var_118.Text
  loc_1BDEFEF:           Set var_11C = Me.Txt
  loc_1BDEFF5:           Call 0.Method_Proc_32_112_1BDF2300 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDEFFD:           MemVar_1F950C8 = var_120.Tag
  loc_1BDF010:           Set var_17C = Me.Txt
  loc_1BDF016:           Call 0.Method_Proc_32_112_1BDF2300 (CInt(2), var_180, var_1AC)
  loc_1BDF01E:           CDate(var_158) = var_180.Text
  loc_1BDF043:           Set var_184 = Me.Txt
  loc_1BDF049:           Call 0.Method_Proc_32_112_1BDF2300 (CInt(3), var_188)
  loc_1BDF078:           var_250 = var_88.Fields.Item("ACCNAME").Value
  loc_1BDF0A3:           Proc_6_39_E7D3A0(var_EC, CVar(var_88.Fields.Item("Amount")))
  loc_1BDF0B6:           Set var_19C = Me.Txt
  loc_1BDF0BC:           Call 0.Method_Proc_32_112_1BDF2300 (CInt(5), var_1A0)
  loc_1BDF0D4:           Set var_1A4 = Me.Txt
  loc_1BDF0DA:           Call 0.Method_Proc_32_112_1BDF2300 (CInt(6), var_1A8)
  loc_1BDF106:           var_240 = Now
  loc_1BDF110:           var_1F4 = 0
  loc_1BDF11B:           var_1E8 = 0
  loc_1BDF126:           var_1E4 = 0
  loc_1BDF12F:           var_1D0 = "A"
  loc_1BDF155:           var_230 = (CVar(var_98 & var_1A0.Text & " Dt.:     ") + Format(CVar(var_1A8), "dd/mm/yy"))
  loc_1BDF161:           var_1C8 = vbNullString
  loc_1BDF16A:           var_10C = Abs(var_EC)
  loc_1BDF1AE:           Proc_6_140_12DA4E8(MemVar_1F95044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F95070, var_188.Text)
  loc_1BDF208:         End If
  loc_1BDF20E:         var_A6 = (var_A6 + 1)
  loc_1BDF211:       End If
  loc_1BDF211:     End If
  loc_1BDF214:     var_88.MoveNext
  loc_1BDF219:     GoTo loc_1BDE7EB
  loc_1BDF21C:   End If
  loc_1BDF21C: End If
  loc_1BDF221: Set var_8C = Nothing
  loc_1BDF229: Set var_88 = Nothing
  loc_1BDF22C: Exit Sub
End Sub
