VERSION 5.00
Begin VB.Form frmFacilityBillAdv
  Caption = "Facility Billing"
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
  ClientWidth = 13740
  ClientHeight = 8760
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
  Begin TextBox Txt
    Index = 9
    ForeColor = &HFF0000&
    Left = 8970
    Top = 615
    Width = 1140
    Height = 240
    TabIndex = 69
    BorderStyle = 0 'None
    MaxLength = 15
    Appearance = 0 'Flat
  End
  Begin Frame FreInvInfo
    Caption = "eInvoice Info:"
    Left = 11280
    Top = 4260
    Width = 6735
    Height = 1095
    Visible = 0   'False
    TabIndex = 60
    Begin TextBox TxteInvInfo
      Index = 2
      Left = 795
      Top = 765
      Width = 5800
      Height = 240
      TabIndex = 66
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TxteInvInfo
      Index = 1
      Left = 795
      Top = 510
      Width = 5800
      Height = 240
      TabIndex = 65
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TxteInvInfo
      Index = 0
      Left = 795
      Top = 255
      Width = 5800
      Height = 240
      TabIndex = 64
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LbleInvInfo
      Caption = "IRN:"
      Index = 0
      Left = 90
      Top = 255
      Width = 330
      Height = 195
      TabIndex = 63
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LbleInvInfo
      Caption = "Ack.No.:"
      Index = 1
      Left = 90
      Top = 510
      Width = 630
      Height = 195
      TabIndex = 62
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LbleInvInfo
      Caption = "Ack.Dt.:"
      Index = 2
      Left = 90
      Top = 765
      Width = 600
      Height = 195
      TabIndex = 61
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin CommandButton CmdeInvoiceSql
    Caption = "eInvoice Sql"
    Left = 12690
    Top = 5355
    Width = 1665
    Height = 375
    Visible = 0   'False
    TabIndex = 59
  End
  Begin CommandButton CmdeInvoiceJson
    Caption = "eInvoice Json"
    Left = 12705
    Top = 5745
    Width = 1650
    Height = 375
    Visible = 0   'False
    TabIndex = 58
  End
  Begin CommandButton CmdGeneInvoice
    Caption = "Gen eInvoice"
    Left = 12705
    Top = 6120
    Width = 1650
    Height = 375
    Visible = 0   'False
    TabIndex = 57
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13740
    Height = 420
    TabIndex = 54
  End
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1830
    Top = 1155
    Width = 1140
    Height = 255
    Visible = 0   'False
    TabIndex = 49
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGCat
    Left = 1290
    Top = 7440
    Width = 7230
    Height = 2355
    Visible = 0   'False
    TabIndex = 46
  End
  Begin TextBox TxtPer
    Index = 1
    ForeColor = &HFF0000&
    Left = 8760
    Top = 4590
    Width = 795
    Height = 240
    Visible = 0   'False
    TabIndex = 42
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
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
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 9765
    Top = 4590
    Width = 1395
    Height = 240
    Enabled = 0   'False
    TabIndex = 41
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 8970
    Top = 1140
    Width = 1140
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 15
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6750
    Top = 1140
    Width = 1140
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 15
    Appearance = 0 'Flat
  End
  Begin DataGrid DGParty
    Left = 8745
    Top = 7950
    Width = 10950
    Height = 2865
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 10170
    Top = 870
    Width = 1140
    Height = 255
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    MaxLength = 15
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 8970
    Top = 870
    Width = 1140
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6750
    Top = 870
    Width = 1140
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &H80000004&
    Left = 6495
    Top = 60
    Width = 2595
    Height = 255
    TabIndex = 29
    BorderStyle = 0 'None
    MaxLength = 21
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin Frame frFacility
    Left = 60
    Top = 4470
    Width = 7215
    Height = 2955
    Visible = 0   'False
    TabIndex = 22
    Begin DataGrid DGFacility
      Left = 75
      Top = 2640
      Width = 4185
      Height = 2145
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 28
    End
    Begin DataGrid DGLocation
      Left = 4275
      Top = 2670
      Width = 4155
      Height = 2865
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 68
    End
    Begin TextBox Txt
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 315
      Width = 3855
      Height = 255
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 2205
      Width = 3855
      Height = 255
      Visible = 0   'False
      TabIndex = 47
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 13
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 1125
      Width = 1140
      Height = 255
      TabIndex = 9
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 855
      Width = 1140
      Height = 255
      TabIndex = 8
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin CommandButton cmdCancel
      Caption = "&Cancel"
      Left = 5190
      Top = 1680
      Width = 1470
      Height = 585
      TabIndex = 14
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
    Begin TextBox Txt
      Index = 10
      BackColor = &HFFFFFF&
      Left = 4065
      Top = 1125
      Width = 1140
      Height = 255
      Visible = 0   'False
      TabIndex = 15
      BorderStyle = 0 'None
      MaxLength = 11
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdOK
      Caption = "&OK"
      Left = 3705
      Top = 1680
      Width = 1470
      Height = 585
      TabIndex = 13
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
    Begin TextBox Txt
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 1935
      Width = 1140
      Height = 255
      TabIndex = 12
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 11
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 1665
      Width = 1140
      Height = 255
      TabIndex = 11
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 11
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 2
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 1395
      Width = 1140
      Height = 255
      TabIndex = 10
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 11
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 585
      Width = 3855
      Height = 255
      TabIndex = 7
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Location"
      Index = 8
      ForeColor = &HFF0000&
      Left = 375
      Top = 300
      Width = 705
      Height = 240
      TabIndex = 67
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblName
      Caption = "Tax Stru"
      Index = 13
      ForeColor = &HFF0000&
      Left = 360
      Top = 2190
      Width = 735
      Height = 240
      Visible = 0   'False
      TabIndex = 48
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblCalReadDiff
      Caption = "."
      ForeColor = &H0&
      Left = 4050
      Top = 1440
      Width = 1845
      Height = 240
      Visible = 0   'False
      TabIndex = 40
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
      Caption = "To Period"
      Index = 10
      ForeColor = &HFF0000&
      Left = 360
      Top = 1140
      Width = 825
      Height = 240
      TabIndex = 37
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblName
      Caption = "For Period"
      Index = 9
      ForeColor = &HFF0000&
      Left = 375
      Top = 855
      Width = 885
      Height = 240
      TabIndex = 36
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label lblChargeUnit
      Caption = "."
      ForeColor = &H0&
      Left = 2805
      Top = 1695
      Width = 1845
      Height = 240
      TabIndex = 35
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
    Begin Label lblChargeType
      Caption = "."
      ForeColor = &H0&
      Left = 5520
      Top = 600
      Width = 1845
      Height = 240
      TabIndex = 34
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
      Caption = "APP DATE"
      Index = 7
      ForeColor = &HFF0000&
      Left = 3015
      Top = 1140
      Width = 855
      Height = 240
      Visible = 0   'False
      TabIndex = 33
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblName
      Caption = "Total Amount"
      Index = 4
      ForeColor = &HFF0000&
      Left = 360
      Top = 1935
      Width = 1155
      Height = 240
      TabIndex = 26
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblName
      Caption = "Unit Rate"
      Index = 3
      ForeColor = &HFF0000&
      Left = 375
      Top = 1650
      Width = 780
      Height = 240
      TabIndex = 25
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblName
      Caption = "Unit"
      Index = 2
      ForeColor = &HFF0000&
      Left = 375
      Top = 1395
      Width = 330
      Height = 240
      TabIndex = 24
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblName
      Caption = "Facility Name"
      Index = 1
      ForeColor = &HFF0000&
      Left = 375
      Top = 570
      Width = 1140
      Height = 240
      TabIndex = 23
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1830
    Top = 600
    Width = 6060
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 75
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdEdit
    Caption = "&EDIT"
    Left = 12075
    Top = 2370
    Width = 1140
    Height = 795
    TabIndex = 20
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    Left = 1260
    Top = 2250
    Width = 345
    Height = 240
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 9
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdAdd
    Caption = "&ADD"
    Left = 12075
    Top = 1560
    Width = 1140
    Height = 795
    TabIndex = 5
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
  Begin CommandButton CmdDelete
    Caption = "&DELETE"
    Left = 12075
    Top = 3180
    Width = 1140
    Height = 795
    TabIndex = 16
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
  Begin MSHFlexGrid FGrid
    Left = 15
    Top = 1485
    Width = 12000
    Height = 2565
    TabIndex = 17
  End
  Begin MSHFlexGrid Fgrid1
    Left = 15
    Top = 4050
    Width = 8610
    Height = 285
    Visible = 0   'False
    TabIndex = 18
  End
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 810
    Top = 4575
    Width = 6060
    Height = 1470
    TabIndex = 52
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 255
    Appearance = 0 'Flat
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HC0&
    Left = 10200
    Top = 615
    Width = 690
    Height = 240
    TabIndex = 71
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
  Begin Label Label1
    Caption = "Vr No"
    Index = 3
    ForeColor = &HFF0000&
    Left = 8115
    Top = 615
    Width = 480
    Height = 240
    TabIndex = 70
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Image QrImage
    Left = 13275
    Top = 480
    Width = 1800
    Height = 1350
    Visible = 0   'False
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 11040
    Top = 6900
    Width = 3375
    Height = 285
    TabIndex = 56
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
    Left = 11040
    Top = 7185
    Width = 3330
    Height = 255
    TabIndex = 55
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
  Begin Label LblName
    Caption = "Remark"
    Index = 15
    ForeColor = &HFF0000&
    Left = 90
    Top = 4575
    Width = 660
    Height = 240
    TabIndex = 53
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblTerm
    Caption = "Terms && Conditions"
    ForeColor = &HC0&
    Left = 120
    Top = 7845
    Width = 10185
    Height = 2880
    TabIndex = 51
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "SundryAppdate"
    Index = 14
    ForeColor = &HFF0000&
    Left = 555
    Top = 1155
    Width = 1305
    Height = 240
    Visible = 0   'False
    TabIndex = 50
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 7350
    Top = 4590
    Width = 465
    Height = 240
    TabIndex = 45
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &HFF0000&
    Left = 9570
    Top = 4590
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 44
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &HFF0000&
    Left = 7320
    Top = 4905
    Width = 750
    Height = 210
    Visible = 0   'False
    TabIndex = 43
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
  Begin Label LblName
    Caption = "To Period"
    Index = 12
    ForeColor = &HFF0000&
    Left = 8100
    Top = 1155
    Width = 825
    Height = 240
    TabIndex = 39
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "For Period"
    Index = 11
    ForeColor = &HFF0000&
    Left = 5805
    Top = 1155
    Width = 885
    Height = 240
    TabIndex = 38
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Due Date"
    Index = 6
    ForeColor = &HFF0000&
    Left = 8115
    Top = 870
    Width = 780
    Height = 240
    TabIndex = 31
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Bill Date"
    Index = 5
    ForeColor = &HFF0000&
    Left = 5805
    Top = 870
    Width = 690
    Height = 240
    TabIndex = 30
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Party Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 570
    Top = 585
    Width = 990
    Height = 240
    TabIndex = 21
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "frmFacilityBillAdv"

Private global_88 As Byte
Private global_120 As Double
Private global_80 As Integer
Private global_92 As Double
Private global_108 As Integer

Private Sub CmdOK_Click() '14E93AC
  'Data Table: 5608D4
  Dim var_9C As String
  Dim var_A4 As Variant
  Dim var_BC As Variant
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_EC As Variant
  Dim var_120 As MSHFlexGrid
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_CC As Variant
  Dim var_10C As Variant
  loc_14E85A0: Set var_88 = Me.TopCtrl1
  loc_14E85A6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14E85BF: If (CStr() = "Browse") Then
  loc_14E85C2:   Exit Sub
  loc_14E85C3: End If
  loc_14E85CE: Set var_88 = Me.Txt
  loc_14E85D4: Call 0.Method_CmdOK_Click0 (CInt(1))
  loc_14E85FD: If (Proc_6_27_EA61EC(var_A4, "Facility Name") = 0) Then
  loc_14E8607:   Call Txt_GotFocus()
  loc_14E860C:   Exit Sub
  loc_14E860D: End If
  loc_14E8618: Set var_88 = Me.Txt
  loc_14E861E: Call 0.Method_CmdOK_Click0 (CInt(2), var_A4)
  loc_14E8647: If (Proc_6_27_EA61EC(var_A4, "Unit") = 0) Then
  loc_14E8651:   Call Txt_GotFocus()
  loc_14E8656:   Exit Sub
  loc_14E8657: End If
  loc_14E8662: Set var_88 = Me.Txt
  loc_14E8668: Call 0.Method_CmdOK_Click0 (CInt(3), var_A4, CInt(2))
  loc_14E8670: var_9C = "Unit Rate"
  loc_14E8691: If (Proc_6_27_EA61EC(var_A4, var_9C) = 0) Then
  loc_14E869B:   Call Txt_GotFocus()
  loc_14E86A0:   Exit Sub
  loc_14E86A1: End If
  loc_14E86AF: Set var_88 = Me.Txt
  loc_14E86B5: Call 0.Method_CmdOK_Click0 (CInt(4), var_A4, var_9C)
  loc_14E86BD: CInt(3) = var_A4.Text
  loc_14E86D9: If (CDbl(Val(var_9C)) = CDbl(0)) Then
  loc_14E86F5:   MsgBox("Amount Should not be Zero.", &H40, var_DC, var_FC, var_11C)
  loc_14E870C:   Call Txt_GotFocus()
  loc_14E8711:   Exit Sub
  loc_14E8712: End If
  loc_14E871D: Set var_88 = Me.Txt
  loc_14E8723: Call 0.Method_CmdOK_Click0 (CInt(&HC), var_A4, CInt(4))
  loc_14E874C: If (Proc_6_27_EA61EC(var_A4, "For Period") = 0) Then
  loc_14E8756:   Call Txt_GotFocus()
  loc_14E875B:   Exit Sub
  loc_14E875C: End If
  loc_14E8767: Set var_88 = Me.Txt
  loc_14E876D: Call 0.Method_CmdOK_Click0 (CInt(&HD), var_A4, CInt(&HC))
  loc_14E8775: var_9C = "To Period"
  loc_14E8796: If (Proc_6_27_EA61EC(var_A4, var_9C) = 0) Then
  loc_14E87A0:   Call Txt_GotFocus()
  loc_14E87A5:   Exit Sub
  loc_14E87A6: End If
  loc_14E87B2: If (CInt(global_88) = 1) Then
  loc_14E87B9:   Set var_120 = Me.FGrid
  loc_14E87E1:   For var_124 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_124 'Integer
  loc_14E87EB:     var_BC = CVar(CLng(var_9E)) 'Long
  loc_14E8817:     Set var_88 = Me.Txt
  loc_14E881D:     Call 0.Method_CmdOK_Click0 (CInt(1), var_A4, var_9C, CStr(var_120.TextMatrix)), CVar(CLng(8)))
  loc_14E8825:     var_BC = var_A4.Tag
  loc_14E8833:     var_138 = CVar(CLng(var_9E)) 'Long
  loc_14E886E:     If (CVar(CLng(8)) And (CStr(Txt.DispID_41) <> vbNullString)) Then
  loc_14E8871:       GoTo loc_14E887C
  loc_14E8874:     End If
  loc_14E8877:   Next var_124 'Integer
  loc_14E887C:   ' Referenced from: 14E8871
  loc_14E889A:   If (CLng(var_9E) = CLng(Me.FGrid.Rows)) Then
  loc_14E88AE:     var_98 = Me.FGrid.Rows
  loc_14E88CF:     Call Proc_350_52_1126420(MemVar_1F95044, Me.FGrid)
  loc_14E88E3:   Else
  loc_14E88FC:     var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8904:     var_158 = CVar(CLng(5)) 'Long
  loc_14E8909:     var_BC = 1
  loc_14E8915:     var_EC = CVar(CLng(5)) 'Long
  loc_14E8928:     var_FC = CVar(CStr(var_120.TextMatrix))) 'String
  loc_14E892F:     LateIdCallSt
  loc_14E895C:     var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8964:     var_158 = CVar(CLng(6)) 'Long
  loc_14E896D:     var_BC = CVar(CLng(var_9E)) 'Long
  loc_14E8975:     var_EC = CVar(CLng(6)) 'Long
  loc_14E8988:     var_FC = CVar(CStr(var_120.TextMatrix))) 'String
  loc_14E898F:     LateIdCallSt
  loc_14E89A3:   End If
  loc_14E89A7:   Set var_A4 = Me.FGrid
  loc_14E89BC:   var_138 = CVar((CLng(var_A4.Rows) - 1)) 'Long
  loc_14E89C4:   var_158 = CVar(CLng(0)) 'Long
  loc_14E89E2:   var_BC = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_14E89EA:   var_EC = CVar(CLng(0)) 'Long
  loc_14E89FD:   var_9C = CStr(var_120.TextMatrix))
  loc_14E8A0B:   var_11C = CVar(CStr((Val(var_9C) + CDbl(1)))) 'String
  loc_14E8A12:   LateIdCallSt
  loc_14E8A48:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8A63:   Set var_88 = Me.Txt
  loc_14E8A69:   Call 0.Method_CmdOK_Click0 (CInt(1), var_A4, var_9C, CVar(CLng(1)), var_BC, var_120, var_11C)
  loc_14E8A71:   var_EC = var_A4.Text
  loc_14E8A80:   LateIdCallSt
  loc_14E8AA3:   Set var_88 = Me.Txt
  loc_14E8AA9:   Call 0.Method_CmdOK_Click0 (CInt(2), var_A4, var_120, CVar(var_9C), var_BC)
  loc_14E8AC7:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8B03:   LateIdCallSt
  loc_14E8B2A:   Set var_88 = Me.Txt
  loc_14E8B30:   Call 0.Method_CmdOK_Click0 (CInt(3), var_A4, var_120, CVar(CStr(Format(CVar(var_A4), "0.0000"))), 1, 1, CVar(CLng(2)))
  loc_14E8B4E:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8B8A:   LateIdCallSt
  loc_14E8BB1:   Set var_88 = Me.Txt
  loc_14E8BB7:   Call 0.Method_CmdOK_Click0 (CInt(4), var_A4, var_120, CVar(CStr(Format(CVar(var_A4), "0.00"))), 1, 1, CVar(CLng(3)))
  loc_14E8BD5:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8BDD:   var_10C = CVar(CLng(4)) 'Long
  loc_14E8C11:   LateIdCallSt
  loc_14E8C46:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8C61:   Set var_88 = Me.Txt
  loc_14E8C67:   Call 0.Method_CmdOK_Click0 (CInt(1), var_A4, var_9C, CVar(CLng(8)), "0.00", var_120, CVar(CStr(Format(CVar(var_A4), "0.00"))))
  loc_14E8C6F:   1 = var_A4.Tag
  loc_14E8C7E:   LateIdCallSt
  loc_14E8CAF:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8CCA:   Set var_88 = Me.Txt
  loc_14E8CD0:   Call 0.Method_CmdOK_Click0 (CInt(&H10), var_A4, var_9C, CVar(CLng(&HA)), "0.00", var_120, CVar(var_9C))
  loc_14E8CD8:   1 = var_A4.Tag
  loc_14E8CE0:   var_DC = CVar(var_9C) 'String
  loc_14E8CE7:   LateIdCallSt
  loc_14E8D18:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8D20:   var_EC = CVar(CLng(9)) 'Long
  loc_14E8D2E:   LateIdCallSt
  loc_14E8D55:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8D70:   Set var_88 = Me.Txt
  loc_14E8D76:   Call 0.Method_CmdOK_Click0 (CInt(&HA), var_A4, var_9C, CVar(CLng(&HB)), "0.00", var_120, "Facility")
  loc_14E8D7E:   var_EC = var_A4.Text
  loc_14E8D8D:   LateIdCallSt
  loc_14E8DBE:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8DD9:   Set var_88 = Me.Txt
  loc_14E8DDF:   Call 0.Method_CmdOK_Click0 (CInt(&HC), var_A4, var_9C, CVar(CLng(&HC)), "0.00", var_120, CVar(var_9C))
  loc_14E8DE7:   var_BC = var_A4.Text
  loc_14E8DEF:   var_DC = CVar(var_9C) 'String
  loc_14E8DF6:   LateIdCallSt
  loc_14E8E27:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8E42:   Set var_88 = Me.Txt
  loc_14E8E48:   Call 0.Method_CmdOK_Click0 (CInt(&HD), var_A4, var_9C, CVar(CLng(&HD)), var_BC, var_120)
  loc_14E8E50:   var_DC = var_A4.Text
  loc_14E8E58:   var_DC = CVar(var_9C) 'String
  loc_14E8E5F:   LateIdCallSt
  loc_14E8E90:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8E98:   var_EC = CVar(CLng(&HF)) 'Long
  loc_14E8EA6:   LateIdCallSt
  loc_14E8ECD:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8EE8:   Set var_88 = Me.Txt
  loc_14E8EEE:   Call 0.Method_CmdOK_Click0 (CInt(&HB), var_A4, var_9C, CVar(CLng(&H14)), var_BC, var_120, "Y")
  loc_14E8EF6:   var_EC = var_A4.Text
  loc_14E8F05:   LateIdCallSt
  loc_14E8F36:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8F51:   Set var_88 = Me.Txt
  loc_14E8F57:   Call 0.Method_CmdOK_Click0 (CInt(&HB), var_A4, var_9C, CVar(CLng(&H15)), var_BC, var_120, CVar(var_9C))
  loc_14E8F5F:   var_BC = var_A4.Tag
  loc_14E8F67:   var_DC = CVar(var_9C) 'String
  loc_14E8F6E:   LateIdCallSt
  loc_14E8F9F:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8FA7:   var_EC = CVar(CLng(7)) 'Long
  loc_14E8FB5:   LateIdCallSt
  loc_14E8FC3:   var_BC = vbNullString
  loc_14E8FE6:   var_BC = CVar((CLng(var_120.Rows) - 1)) 'Long
  loc_14E8FEE:   var_120.Row = var_BC
  loc_14E8FF8:   Set var_120 = Nothing 
  loc_14E9015:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E901D:   var_EC = CVar(CLng(5)) 'Long
  loc_14E9040:   Call Proc_350_60_188498C(9, CStr(Me.FGrid.TextMatrix)), var_EC, var_BC, FGrid.DispID_10000, var_BC, var_120, "1")
  loc_14E9060:   Me.CmdAdd.SetFocus
  loc_14E906B: Else
  loc_14E9077:   If (CInt(global_88) = 2) Then
  loc_14E9087:     var_9C = Me.frFacility.Tag
  loc_14E9095:     var_BC = CVar(CLng(Val(var_9C))) 'Long
  loc_14E909E:     Set var_A4 = Me.FGrid
  loc_14E90A4:     var_A4.Row = var_BC
  loc_14E90B7:     Set var_190 = Me.FGrid
  loc_14E90C5:     Set var_88 = Me.Txt
  loc_14E90CB:     Call 0.Method_CmdOK_Click0 (CInt(2), var_A4, var_EC, var_BC, var_120)
  loc_14E90E3:     var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14E911F:     LateIdCallSt
  loc_14E9146:     Set var_88 = Me.Txt
  loc_14E914C:     Call 0.Method_CmdOK_Click0 (CInt(3), var_A4, var_190, CVar(CStr(Format(CVar(var_A4), "0.0000"))), 1, 1, CVar(CLng(2)))
  loc_14E9164:     var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14E91A0:     LateIdCallSt
  loc_14E91C7:     Set var_88 = Me.Txt
  loc_14E91CD:     Call 0.Method_CmdOK_Click0 (CInt(4), var_A4, var_190, CVar(CStr(Format(CVar(var_A4), "0.00"))), 1, 1, CVar(CLng(3)))
  loc_14E91E5:     var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14E91ED:     var_10C = CVar(CLng(4)) 'Long
  loc_14E9221:     LateIdCallSt
  loc_14E926B:     Set var_88 = Me.Txt
  loc_14E9271:     Call 0.Method_CmdOK_Click0 (CInt(&HC), var_A4, var_9C, CVar(CLng(&HC)), CVar(CLng(Me.FGrid.Row)), var_190, CVar(CStr(Format(CVar(var_A4), "0.00"))))
  loc_14E9279:     1 = var_A4.Text
  loc_14E9288:     LateIdCallSt
  loc_14E92CE:     Set var_88 = Me.Txt
  loc_14E92D4:     Call 0.Method_CmdOK_Click0 (CInt(&HD), var_A4, var_9C, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), var_190, CVar(var_9C))
  loc_14E92DC:     1 = var_A4.Text
  loc_14E92E4:     var_DC = CVar(var_9C) 'String
  loc_14E92EB:     LateIdCallSt
  loc_14E931C:     var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E9332:     LateIdCallSt
  loc_14E9356:     Call Proc_350_60_188498C(9, 0, Nothing, "Y", CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)), Nothing)
  loc_14E9368:     Me.CmdEdit.SetFocus
  loc_14E9370:   End If
  loc_14E9370: End If
  loc_14E937D: Me.frFacility.Tag = vbNullString
  loc_14E9391: Me.frFacility.Visible = False
  loc_14E93A4: Call Proc_350_57_FA65DC(CByte(0), var_DC, var_10C, var_CC)
  loc_14E93A9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '124E27C
  'Data Table: 5608D4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_124DD3A: Set var_88 = Me.Txt
  loc_124DD40: Call 0.Method_Txt_GotFocus0 (Index)
  loc_124DD4E: Proc_6_74_E23240(var_8C)
  loc_124DD5A: Call Proc_350_46_EB9C30(var_8C)
  loc_124DD62: var_92 = Index
  loc_124DD6D: If (var_92 = CInt(0)) Then
  loc_124DD87:   If (Me.RecordCount > 0) Then
  loc_124DD96:     Set var_8C = Nothing
  loc_124DDAE:     Proc_6_137_1192FDC(Me.DGParty, global_56, Index)
  loc_124DDBC:   End If
  loc_124DE0A:   Set var_88 = Me.Txt
  loc_124DE10:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_124DE18:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_124DE30:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_124DE33:     Exit Sub
  loc_124DE34:   End If
  loc_124DE41:   Set var_88 = Me.Txt
  loc_124DE47:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_124DE4F:   var_A0 = var_8C.Text
  loc_124DE57:   var_D4 = CVar(var_A0) 'String
  loc_124DE9C:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_124DEA5:     Me.MoveFirst
  loc_124DECA:     Set var_88 = Me.Txt
  loc_124DED0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_124DED8:     0 = var_8C.Text
  loc_124DEE6:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_124DEFC:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_124DF14:   End If
  loc_124DF17: Else
  loc_124DF1F:   If (var_92 = CInt(1)) Then
  loc_124DF39:     If (Me.RecordCount > 0) Then
  loc_124DF48:       Set var_8C = Nothing
  loc_124DF60:       Proc_6_137_1192FDC(Me.DGFacility, global_60)
  loc_124DF6E:     End If
  loc_124DFBC:     Set var_88 = Me.Txt
  loc_124DFC2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_124DFCA:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_124DFE2:     If (Index Or (var_A0 = vbNullString)) Then
  loc_124DFE5:       Exit Sub
  loc_124DFE6:     End If
  loc_124DFF3:     Set var_88 = Me.Txt
  loc_124DFF9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_124E001:     var_A0 = var_8C.Text
  loc_124E009:     var_D4 = CVar(var_A0) 'String
  loc_124E04E:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_124E057:       Me.MoveFirst
  loc_124E07C:       Set var_88 = Me.Txt
  loc_124E082:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_124E08A:       0 = var_8C.Text
  loc_124E098:       Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_124E0AE:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_124E0C6:     End If
  loc_124E0C9:   Else
  loc_124E0D1:     If (var_92 = CInt(&HB)) Then
  loc_124E0EB:       If (Me.RecordCount > 0) Then
  loc_124E0FA:         Set var_8C = Nothing
  loc_124E112:         Proc_6_137_1192FDC(Me.DGLocation, global_64)
  loc_124E120:       End If
  loc_124E16E:       Set var_88 = Me.Txt
  loc_124E174:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_124E17C:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_124E194:       If (Index Or (var_A0 = vbNullString)) Then
  loc_124E197:         Exit Sub
  loc_124E198:       End If
  loc_124E1A5:       Set var_88 = Me.Txt
  loc_124E1AB:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_124E1B3:       var_A0 = var_8C.Text
  loc_124E1BB:       var_D4 = CVar(var_A0) 'String
  loc_124E200:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_124E209:         Me.MoveFirst
  loc_124E22E:         Set var_88 = Me.Txt
  loc_124E234:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_124E23C:         0 = var_8C.Text
  loc_124E24A:         Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_124E260:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_124E278:       End If
  loc_124E278:     End If
  loc_124E278:   End If
  loc_124E278: End If
  loc_124E278: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10A33E8
  'Data Table: 5608D4
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  loc_10A3140: If (CLng(Shift) = &H1B) Then
  loc_10A3143:   Call Proc_350_46_EB9C30(Shift)
  loc_10A3148:   Call Proc_350_47_E4DB54()
  loc_10A314D:   Exit Sub
  loc_10A314E: End If
  loc_10A3151: var_88 = KeyCode
  loc_10A315C: If (var_88 = CInt(0)) Then
  loc_10A3177:   Set var_A0 = Nothing
  loc_10A3182:   Set var_9C = Nothing
  loc_10A31B4:   Proc_6_69_134A630(Me.DGParty, Me.Txt, CInt(0), global_56, Shift, 0)
  loc_10A31CB: Else
  loc_10A31D3:   If (var_88 = CInt(1)) Then
  loc_10A31EE:     Set var_A0 = Nothing
  loc_10A322B:     Proc_6_69_134A630(Me.DGFacility, Me.Txt, CInt(1), global_60, Shift, 0, 1, Nothing)
  loc_10A3242:   Else
  loc_10A324A:     If (var_88 = CInt(&HB)) Then
  loc_10A3265:       Set var_A0 = Nothing
  loc_10A32A2:       Proc_6_69_134A630(Me.DGLocation, Me.Txt, CInt(&HB), global_64, Shift, 0, 1, Nothing)
  loc_10A32B9:     Else
  loc_10A32C1:       If Not (var_88 = CInt(2)) Then
  loc_10A32CC:         If (var_88 = CInt(3)) Then
  loc_10A32CF:         End If
  loc_10A32CF:         Call Proc_350_56_104026C(var_A0, 0, var_A0, 0)
  loc_10A32D4:       End If
  loc_10A32D4:     End If
  loc_10A32D4:   End If
  loc_10A32D4: End If
  loc_10A3305: Set var_9C = Me.DGParty
  loc_10A332A: If (((CBool(Me.DGLocation.Visible) = 0) And (CBool(Me.DGFacility.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_10A3342:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10A334B:     Proc_6_75_E5335C(Shift, arg_14, 1)
  loc_10A3350:   End If
  loc_10A3354:   Set var_8C = Me.TopCtrl1
  loc_10A335A:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_10A3373:   If (CStr(var_A0) = "Add") Then
  loc_10A338B:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10A3394:       Proc_6_76_E533C8(Shift, arg_14)
  loc_10A3399:     End If
  loc_10A339C:   Else
  loc_10A33A0:     Set var_8C = Me.TopCtrl1
  loc_10A33A6:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_10A33BF:     If (CStr() = "Edit") Then
  loc_10A33D7:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10A33E0:         Proc_6_76_E533C8(Shift)
  loc_10A33E5:       End If
  loc_10A33E5:     End If
  loc_10A33E5:   End If
  loc_10A33E5: End If
  loc_10A33E5: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FDF5A8
  'Data Table: 5608D4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FDF3CC: On Error Goto loc_FDF5A2
  loc_FDF3D2: Proc_6_58_E06050(arg_10)
  loc_FDF3DA: var_86 = KeyAscii
  loc_FDF3E5: If (var_86 = CInt(0)) Then
  loc_FDF404:   If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_FDF416:     var_A0 = "Name"
  loc_FDF431:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_56, arg_10)
  loc_FDF440:   End If
  loc_FDF443: Else
  loc_FDF44B:   If (var_86 = CInt(1)) Then
  loc_FDF46A:     If (CBool(Me.DGFacility.Visible) = &HFF) Then
  loc_FDF497:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_FDF4A6:     End If
  loc_FDF4A9:   Else
  loc_FDF4B1:     If (var_86 = CInt(&HB)) Then
  loc_FDF4D0:       If (CBool(Me.DGLocation.Visible) = &HFF) Then
  loc_FDF4D7:         Set var_A8 = Me.Txt
  loc_FDF4E2:         var_A0 = "Name"
  loc_FDF4FD:         Proc_6_89_1470B00(var_A8, KeyAscii, global_64, arg_10, var_A0)
  loc_FDF50C:       End If
  loc_FDF50F:     Else
  loc_FDF517:       If (var_86 = CInt(2)) Then
  loc_FDF524:         Set var_8C = Me.Txt
  loc_FDF52A:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0, 0)
  loc_FDF545:         Proc_6_42_129B55C(var_A8, arg_10, 8, 4)
  loc_FDF554:       Else
  loc_FDF55C:         If Not (var_86 = CInt(3)) Then
  loc_FDF567:           If (var_86 = CInt(4)) Then
  loc_FDF56A:           End If
  loc_FDF574:           Set var_8C = Me.Txt
  loc_FDF57A:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_FDF595:           Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_FDF5A1:         End If
  loc_FDF5A1:       End If
  loc_FDF5A1:     End If
  loc_FDF5A1:   End If
  loc_FDF5A1: End If
  loc_FDF5A1: Exit Sub
  loc_FDF5A2: ' Referenced from: FDF3CC
  loc_FDF5A2: Proc_6_60_E63754(2, 0)
  loc_FDF5A7: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFEDEC
  'Data Table: 5608D4
  Dim var_86 As Integer
  loc_DFEDE7: var_86 = KeyCode
  loc_DFEDEA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E5128C
  'Data Table: 5608D4
  loc_E5126A: Set var_88 = Me.Txt
  loc_E51270: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E5127E: Proc_6_73_E23294(var_8C)
  loc_E5128A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '168B008
  'Data Table: 5608D4
  Dim var_92 As Integer
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Long
  Dim var_A0 As String
  Dim var_FC As Variant
  Dim var_F8 As TextBox
  Dim arg_10 As Integer
  Dim var_F4 As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_100 As String
  Dim var_144 As String
  Dim unk_5608DB As Connection15
  Dim var_120 As String
  Dim var_F0 As Variant
  Dim var_228 As Variant
  loc_168980C: On Error Goto loc_168B002
  loc_1689812: var_92 = Cancel
  loc_168981D: If (var_92 = CInt(6)) Then
  loc_168982E:   Set var_98 = Me.Txt
  loc_1689834:   Call 0.Method_Txt_Validate0 (CInt(6), var_9C)
  loc_1689852:   var_D0 = Len(Trim(CVar(var_9C.Text)))
  loc_168986C:   If (var_D0 = 0) Then
  loc_1689882:     Set var_98 = Me.Txt
  loc_1689888:     Call 0.Method_Txt_Validate0 (CInt(6), var_9C)
  loc_1689890:     var_9C.Text = CStr(MemVar_1F950EC)
  loc_16898A2:   Else
  loc_16898AC:     Set var_98 = Me.Txt
  loc_16898B2:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_16898D2:     Set var_F8 = Me.Txt
  loc_16898D8:     Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_16898E0:     var_FC.Text = Proc_6_33_15125B8(var_9C)
  loc_16898F3:   End If
  loc_1689900:   Set var_98 = Me.Txt
  loc_1689906:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689929:   Set var_F4 = Me.Txt
  loc_168992F:   Call 0.Method_Txt_Validate0 (Cancel, var_F8, var_100)
  loc_1689937:   (CDate(var_9C.Text) >= MemVar_1F950F4) = var_F8.Text
  loc_1689959:   If Not((var_92 And (CDate(var_100) <= MemVar_1F950FC))) Then
  loc_168997D:     MsgBox("GIN Date Not Between Current Fin. Year", 0, "Date Validate", var_D0, var_F0)
  loc_1689997:     Set var_98 = Me.Txt
  loc_168999D:     Call 0.Method_Txt_Validate0 (Cancel)
  loc_16899A5:     var_9C.SetFocus
  loc_16899B3:     arg_10 = &HFF
  loc_16899B6:     Exit Sub
  loc_16899B7:   End If
  loc_16899BB:   Set var_98 = Me.TopCtrl1
  loc_16899C1:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_16899C9:   var_A0 = CStr(var_9C)
  loc_16899DF:   Set var_9C = Me.Txt
  loc_16899E5:   Call 0.Method_Txt_Validate0 (CInt(9), var_F4)
  loc_1689A0E:   If ((var_A0 = "Add") And (var_F4.Text = vbNullString)) Then
  loc_1689A17:     Call Proc_350_51_10E9110(MemVar_1F95044)
  loc_1689A2A:     Set var_98 = Me.Txt
  loc_1689A30:     Call 0.Method_Txt_Validate0 (CInt(5), var_9C)
  loc_1689A38:     var_9C.Text = var_A0
  loc_1689A47:   End If
  loc_1689A51:   Set var_98 = Me.Txt
  loc_1689A57:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689A84:   Set var_F4 = Me.Txt
  loc_1689A8A:   Call 0.Method_Txt_Validate0 (CInt(7), var_F8)
  loc_1689A92:   var_F8.Text = CStr(DateAdd("D", CDbl(7), CVar(var_9C)))
  loc_1689AAD: Else
  loc_1689AB5:   If (var_92 = CInt(7)) Then
  loc_1689AC2:     Set var_98 = Me.Txt
  loc_1689AC8:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689AE8:     Set var_F8 = Me.Txt
  loc_1689AEE:     Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_1689AF6:     var_FC.Text = Proc_6_33_15125B8(var_9C)
  loc_1689B13:     Set var_98 = Me.Txt
  loc_1689B19:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689B42:     If (Proc_6_27_EA61EC(var_9C, "Due Date") = 0) Then
  loc_1689B4F:       Set var_98 = Me.Txt
  loc_1689B55:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689B5D:       var_9C.SetFocus
  loc_1689B6B:       arg_10 = &HFF
  loc_1689B6E:       Exit Sub
  loc_1689B6F:     End If
  loc_1689B72:   Else
  loc_1689B7A:     If (var_92 = CInt(&HE)) Then
  loc_1689B87:       Set var_98 = Me.Txt
  loc_1689B8D:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689BAD:       Set var_F8 = Me.Txt
  loc_1689BB3:       Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_1689BBB:       var_FC.Text = Proc_6_33_15125B8(var_9C, arg_10)
  loc_1689BD8:       Set var_98 = Me.Txt
  loc_1689BDE:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689C07:       If (Proc_6_27_EA61EC(var_9C, "For Period") = 0) Then
  loc_1689C14:         Set var_98 = Me.Txt
  loc_1689C1A:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689C22:         var_9C.SetFocus
  loc_1689C30:         arg_10 = &HFF
  loc_1689C33:         Exit Sub
  loc_1689C34:       End If
  loc_1689C37:     Else
  loc_1689C3F:       If (var_92 = CInt(&HC)) Then
  loc_1689C4C:         Set var_98 = Me.Txt
  loc_1689C52:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689C72:         Set var_F8 = Me.Txt
  loc_1689C78:         Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_1689C80:         var_FC.Text = Proc_6_33_15125B8(var_9C, arg_10)
  loc_1689C9D:         Set var_98 = Me.Txt
  loc_1689CA3:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689CAB:         var_A0 = "For Period"
  loc_1689CCC:         If (Proc_6_27_EA61EC(var_9C, var_A0) = 0) Then
  loc_1689CD9:           Set var_98 = Me.Txt
  loc_1689CDF:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689CE7:           var_9C.SetFocus
  loc_1689CF5:           arg_10 = &HFF
  loc_1689CF8:           Exit Sub
  loc_1689CF9:         End If
  loc_1689D07:         Set var_98 = Me.Txt
  loc_1689D0D:         Call 0.Method_Txt_Validate0 (CInt(1), var_9C, var_A0)
  loc_1689D15:         arg_10 = var_9C.Tag
  loc_1689D28:         Set var_F4 = Me.Txt
  loc_1689D2E:         Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_1689D36:         var_100 = var_F8.Tag
  loc_1689D49:         Call Proc_350_55_119B9DC(var_A0, var_100)
  loc_1689D60:         Call Proc_350_54_1160044(var_A0)
  loc_1689D68:       Else
  loc_1689D70:         If (var_92 = CInt(&HF)) Then
  loc_1689D7D:           Set var_98 = Me.Txt
  loc_1689D83:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_1689DA3:           Set var_F8 = Me.Txt
  loc_1689DA9:           Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_1689DB1:           var_FC.Text = Proc_6_33_15125B8(var_9C)
  loc_1689DCE:           Set var_98 = Me.Txt
  loc_1689DD4:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689DFD:           If (Proc_6_27_EA61EC(var_9C, "To Period") = 0) Then
  loc_1689E0A:             Set var_98 = Me.Txt
  loc_1689E10:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689E18:             var_9C.SetFocus
  loc_1689E26:             arg_10 = &HFF
  loc_1689E29:             Exit Sub
  loc_1689E2A:           End If
  loc_1689E35:           Set var_98 = Me.Txt
  loc_1689E3B:           Call 0.Method_Txt_Validate0 (CInt(&HE), var_9C)
  loc_1689E4A:           Set var_F4 = Me.Txt
  loc_1689E50:           Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_1689E73:           var_D0 = DateDiff("D", CVar(var_9C), CVar(var_F8), 1, 1)
  loc_1689E93:           If (var_D0 < 0) Then
  loc_1689E9C:             Call 0.Method_arg_50 (var_100, arg_10)
  loc_1689EC3:             MsgBox(CVar("InValid Period !" & vbCrLf & "Period should not be less than 1 Day"), &H40, CVar(var_100), var_D0, var_F0)
  loc_1689ED8:             arg_10 = &HFF
  loc_1689EDB:             Exit Sub
  loc_1689EDC:           End If
  loc_1689EDF:         Else
  loc_1689EE7:           If (var_92 = CInt(&HD)) Then
  loc_1689EF4:             Set var_98 = Me.Txt
  loc_1689EFA:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689F1A:             Set var_F8 = Me.Txt
  loc_1689F20:             Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_1689F28:             var_FC.Text = Proc_6_33_15125B8(var_9C, arg_10)
  loc_1689F45:             Set var_98 = Me.Txt
  loc_1689F4B:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689F53:             var_A0 = "To Period"
  loc_1689F74:             If (Proc_6_27_EA61EC(var_9C, var_A0) = 0) Then
  loc_1689F81:               Set var_98 = Me.Txt
  loc_1689F87:               Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1689F8F:               var_9C.SetFocus
  loc_1689F9D:               arg_10 = &HFF
  loc_1689FA0:               Exit Sub
  loc_1689FA1:             End If
  loc_1689FAF:             Set var_98 = Me.Txt
  loc_1689FB5:             Call 0.Method_Txt_Validate0 (CInt(1), var_9C, var_A0)
  loc_1689FBD:             arg_10 = var_9C.Tag
  loc_1689FD0:             Set var_F4 = Me.Txt
  loc_1689FD6:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_1689FF1:             Call Proc_350_55_119B9DC(var_A0, var_F8.Tag)
  loc_168A008:             Call Proc_350_54_1160044(var_9C)
  loc_168A010:           Else
  loc_168A018:             If (var_92 = CInt(0)) Then
  loc_168A026:               Set var_98 = Me.Txt
  loc_168A02C:               Call 0.Method_Txt_Validate0 (CInt(0))
  loc_168A034:               var_A0 = "Party Name"
  loc_168A055:               If (Proc_6_27_EA61EC(var_9C, var_A0) = 0) Then
  loc_168A063:                 Set var_98 = Me.Txt
  loc_168A069:                 Call 0.Method_Txt_Validate0 (CInt(0), var_9C)
  loc_168A071:                 var_9C.SetFocus
  loc_168A07F:                 arg_10 = &HFF
  loc_168A082:                 Exit Sub
  loc_168A083:               End If
  loc_168A0D1:               Set var_98 = Me.Txt
  loc_168A0D7:               Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_168A0DF:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_168A0F7:               If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_168A107:                 Set var_98 = Me.Txt
  loc_168A10D:                 Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A115:                 var_9C.Text = vbNullString
  loc_168A12E:                 Set var_98 = Me.Txt
  loc_168A134:                 Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A13C:                 var_9C.Tag = vbNullString
  loc_168A14B:               Else
  loc_168A186:                 Set var_F4 = Me.Txt
  loc_168A18C:                 Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_168A194:                 var_F8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_168A1C7:                 var_9C = Me.Fields.Item("Code")
  loc_168A1D8:                 var_A0 = CStr(var_9C.Value)
  loc_168A1E5:                 Set var_F4 = Me.Txt
  loc_168A1EB:                 Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_168A1F3:                 var_F8.Tag = var_A0
  loc_168A209:               End If
  loc_168A226:               Set var_98 = Me.Txt
  loc_168A22C:               Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0, "Select Code,Name,TStartDate,TEndDate,TTerm From locationMast Where code In (Select LcCode From PartyLocation Where PrCode='")
  loc_168A234:               var_B0 = var_9C.Tag
  loc_168A23D:               var_100 = -1 & var_A0
  loc_168A252:               var_144 = var_F8.Tag & "' And ActiveYN='Y') And (locationMast.LOGSITE_CODE='" & MemVar_1F95078 & "' or locationMast.LOGSITE_CODE='HO')  Order by Name"
  loc_168A25B:               unk_5608DB.Execute var_144, var_F4, var_9C
  loc_168A26C:               Set global_64 = var_F4
  loc_168A294:               CVarUnk
  loc_168A299:               VerifyVarObj
  loc_168A29F:               Set var_98 = Me.DGLocation
  loc_168A2A5:               LateIdStAd
  loc_168A2CA:               If (Me.RecordCount > 0) Then
  loc_168A2E2:                 var_98 = Me.Fields
  loc_168A309:                 Set var_F4 = Me.Txt
  loc_168A30F:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8, CStr(var_98.Item("Name").Value))
  loc_168A317:                 var_F8.Text = var_98
  loc_168A369:                 Set var_F4 = Me.Txt
  loc_168A36F:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168A377:                 var_F8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_168A3A7:                 var_9C = Me.Fields.Item("TStartDate")
  loc_168A3C6:                 var_F8 = Me.Fields.Item("TEndDate")
  loc_168A3CB:                 var_120 = "Terms && Conditions :- {From - "
  loc_168A3EF:                 var_D0 = Format(CVar(var_9C), "dd/MMM/yyyy")
  loc_168A3F7:                 var_F0 = 1 & var_D0 
  loc_168A46C:                 var_228 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TTerm")), 1 & Format(CVar(var_F8), "dd/MMM/yyyy") & "}" & vbCrLf, 1, var_F0 & " To ")) 'String
  loc_168A473:                 var_A0 = CStr(1 & var_228)
  loc_168A481:                 Me.LblTerm.Caption = var_A0
  loc_168A4B6:               Else
  loc_168A4C4:                 Set var_98 = Me.Txt
  loc_168A4CA:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_9C, vbNullString)
  loc_168A4D2:                 var_9C.Text = var_120
  loc_168A4EC:                 Set var_98 = Me.Txt
  loc_168A4F2:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_9C)
  loc_168A4FA:                 var_9C.Tag = vbNullString
  loc_168A513:                 Me.LblTerm.Caption = vbNullString
  loc_168A521:                 Call 0.Method_arg_50 (var_A0)
  loc_168A52F:                 var_C0 = CVar(var_A0) 'String
  loc_168A542:                 MsgBox("Any Location is not allotted to the party", &H10, var_C0, var_D0, var_F0)
  loc_168A554:                 arg_10 = &HFF
  loc_168A557:                 Exit Sub
  loc_168A558:               End If
  loc_168A55B:             Else
  loc_168A563:               If (var_92 = CInt(1)) Then
  loc_168A581:                 If (Me.frFacility.Visible = 0) Then
  loc_168A584:                   Exit Sub
  loc_168A585:                 End If
  loc_168A590:                 Set var_98 = Me.Txt
  loc_168A596:                 Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_168A59E:                 var_A0 = "Facility Name"
  loc_168A5BF:                 If (Proc_6_27_EA61EC(var_9C, var_A0) = 0) Then
  loc_168A5CD:                   Set var_98 = Me.Txt
  loc_168A5D3:                   Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_168A5DB:                   var_9C.SetFocus
  loc_168A5E9:                   arg_10 = &HFF
  loc_168A5EC:                   Exit Sub
  loc_168A5ED:                 End If
  loc_168A621:                 var_140 = Me.BOF
  loc_168A63B:                 Set var_98 = Me.Txt
  loc_168A641:                 Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (var_140 = &HFF))))
  loc_168A661:                 If (var_9C.Text Or (var_A0 = vbNullString)) Then
  loc_168A671:                   Set var_98 = Me.Txt
  loc_168A677:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A67F:                   var_9C.Text = vbNullString
  loc_168A698:                   Set var_98 = Me.Txt
  loc_168A69E:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A6A6:                   var_9C.Tag = vbNullString
  loc_168A6B5:                 Else
  loc_168A6F0:                   Set var_F4 = Me.Txt
  loc_168A6F6:                   Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_168A6FE:                   var_F8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_168A74F:                   Set var_F4 = Me.Txt
  loc_168A755:                   Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_168A75D:                   var_F8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_168A790:                   var_9C = Me.Fields.Item("TaxStru")
  loc_168A7AF:                   Set var_F4 = Me.Txt
  loc_168A7B5:                   Call 0.Method_Txt_Validate0 (CInt(&H10), var_F8)
  loc_168A7BD:                   var_F8.Tag = CStr(var_9C.Value)
  loc_168A7E0:                   Set var_98 = Me.Txt
  loc_168A7E6:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A7EE:                   var_A0 = var_9C.Tag
  loc_168A801:                   Set var_F4 = Me.Txt
  loc_168A807:                   Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168A83E:                   Call Proc_350_58_F219F0(var_A0 & var_F8.Tag, CInt(CLng(Me.FGrid.Row)), var_140)
  loc_168A862:                   If (var_140 = &HFF) Then
  loc_168A87E:                     MsgBox("Duplicate Entry", 0, var_C0, var_D0, var_F0)
  loc_168A890:                     arg_10 = &HFF
  loc_168A893:                     Exit Sub
  loc_168A894:                   End If
  loc_168A8A2:                   Set var_98 = Me.Txt
  loc_168A8A8:                   Call 0.Method_Txt_Validate0 (CInt(&HB), var_9C, var_A0)
  loc_168A8B0:                   arg_10 = var_9C.Tag
  loc_168A8C7:                   If (var_A0 <> vbNullString) Then
  loc_168A8D8:                     Set var_98 = Me.Txt
  loc_168A8DE:                     Call 0.Method_Txt_Validate0 (CInt(1), var_9C, var_A0)
  loc_168A8E6:                     var_B0 = var_9C.Tag
  loc_168A8F9:                     Set var_F4 = Me.Txt
  loc_168A8FF:                     Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168A91A:                     Call Proc_350_53_1249954(var_A0, var_F8.Tag)
  loc_168A93F:                     Set var_98 = Me.Txt
  loc_168A945:                     Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_168A960:                     Set var_F4 = Me.Txt
  loc_168A966:                     Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168A96E:                     var_100 = var_F8.Tag
  loc_168A981:                     Call Proc_350_55_119B9DC(var_9C.Tag, var_100)
  loc_168A998:                   End If
  loc_168A998:                 End If
  loc_168A99B:               Else
  loc_168A9A3:                 If (var_92 = CInt(&HB)) Then
  loc_168A9B3:                   Set var_98 = Me.Txt
  loc_168A9B9:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A9C1:                   var_A0 = var_9C.Tag
  loc_168A9DB:                   Set var_F4 = Me.Txt
  loc_168A9E1:                   Call 0.Method_Txt_Validate0 (Cancel, var_F8, var_100)
  loc_168A9E9:                   (var_A0 = vbNullString) = var_F8.Text
  loc_168AA09:                   If (global_64 Or (var_100 = vbNullString)) Then
  loc_168AA25:                     MsgBox("Location Name is a required field.", &H10, var_C0, var_D0, var_F0)
  loc_168AA3F:                     Set var_98 = Me.Txt
  loc_168AA45:                     Call 0.Method_Txt_Validate0 (Cancel)
  loc_168AA4D:                     var_9C.SetFocus
  loc_168AA5B:                     arg_10 = &HFF
  loc_168AA5E:                     Exit Sub
  loc_168AA5F:                   End If
  loc_168AA93:                   var_140 = Me.BOF
  loc_168AAAD:                   Set var_98 = Me.Txt
  loc_168AAB3:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_168AABB:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (var_140 = &HFF))) = var_9C.Text
  loc_168AAD3:                   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_168AAE3:                     Set var_98 = Me.Txt
  loc_168AAE9:                     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168AAF1:                     var_9C.Text = vbNullString
  loc_168AB0A:                     Set var_98 = Me.Txt
  loc_168AB10:                     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168AB18:                     var_9C.Tag = vbNullString
  loc_168AB31:                     Me.LblTerm.Caption = vbNullString
  loc_168AB3C:                   Else
  loc_168AB77:                     Set var_F4 = Me.Txt
  loc_168AB7D:                     Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_168AB85:                     var_F8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_168ABB8:                     var_9C = Me.Fields.Item("Code")
  loc_168ABD6:                     Set var_F4 = Me.Txt
  loc_168ABDC:                     Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_168ABE4:                     var_F8.Tag = CStr(var_9C.Value)
  loc_168AC08:                     Set var_98 = Me.Txt
  loc_168AC0E:                     Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_168AC16:                     var_A0 = var_9C.Tag
  loc_168AC29:                     Set var_F4 = Me.Txt
  loc_168AC2F:                     Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168AC66:                     Call Proc_350_58_F219F0(var_A0 & var_F8.Tag, CInt(CLng(Me.FGrid.Row)), var_140)
  loc_168AC8A:                     If (var_140 = &HFF) Then
  loc_168ACA6:                       MsgBox("Duplicate Entry", 0, var_C0, var_D0, var_F0)
  loc_168ACB8:                       arg_10 = &HFF
  loc_168ACBB:                       Exit Sub
  loc_168ACBC:                     End If
  loc_168ACCA:                     Set var_98 = Me.Txt
  loc_168ACD0:                     Call 0.Method_Txt_Validate0 (CInt(1), var_9C, var_A0)
  loc_168ACD8:                     arg_10 = var_9C.Tag
  loc_168ACEF:                     If (var_A0 <> vbNullString) Then
  loc_168AD00:                       Set var_98 = Me.Txt
  loc_168AD06:                       Call 0.Method_Txt_Validate0 (CInt(1), var_9C, var_A0)
  loc_168AD0E:                       var_B0 = var_9C.Tag
  loc_168AD21:                       Set var_F4 = Me.Txt
  loc_168AD27:                       Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168AD42:                       Call Proc_350_53_1249954(var_A0, var_F8.Tag)
  loc_168AD67:                       Set var_98 = Me.Txt
  loc_168AD6D:                       Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_168AD88:                       Set var_F4 = Me.Txt
  loc_168AD8E:                       Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168ADA9:                       Call Proc_350_55_119B9DC(var_9C.Tag, var_F8.Tag)
  loc_168ADC0:                     End If
  loc_168ADDA:                     var_9C = Me.Fields.Item("TStartDate")
  loc_168ADF9:                     var_F8 = Me.Fields.Item("TEndDate")
  loc_168ADFE:                     var_120 = "Terms && Conditions :- {From - "
  loc_168AE9F:                     var_228 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TTerm")), 1 & Format(CVar(var_F8), "dd/MMM/yyyy") & "}" & vbCrLf, 1, 1 & Format(CVar(var_9C), "dd/MMM/yyyy") & " To ")) 'String
  loc_168AEB4:                     Me.LblTerm.Caption = CStr(1 & var_228)
  loc_168AEE6:                   End If
  loc_168AEE9:                 Else
  loc_168AEF1:                   If (var_92 = CInt(2)) Then
  loc_168AEFE:                     Set var_98 = Me.Txt
  loc_168AF04:                     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168AF3E:                     Set var_F4 = Me.Txt
  loc_168AF44:                     Call 0.Method_Txt_Validate0 (Cancel, var_F8, CStr(Format(CVar(var_9C), "0.0000")), 1)
  loc_168AF4C:                     var_F8.Text = 1
  loc_168AF69:                   Else
  loc_168AF71:                     If Not (var_92 = CInt(3)) Then
  loc_168AF7C:                       If (var_92 = CInt(4)) Then
  loc_168AF7F:                       End If
  loc_168AF89:                       Set var_98 = Me.Txt
  loc_168AF8F:                       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168AFC9:                       Set var_F4 = Me.Txt
  loc_168AFCF:                       Call 0.Method_Txt_Validate0 (Cancel, var_F8, CStr(Format(CVar(var_9C), "0.00")), 1)
  loc_168AFD7:                       var_F8.Text = 1
  loc_168AFF1:                     End If
  loc_168AFF1:                   End If
  loc_168AFF1:                 End If
  loc_168AFF1:               End If
  loc_168AFF1:             End If
  loc_168AFF1:           End If
  loc_168AFF1:         End If
  loc_168AFF1:       End If
  loc_168AFF1:     End If
  loc_168AFF1:   End If
  loc_168AFF1: End If
  loc_168AFF6: Set var_88 = Nothing
  loc_168AFFE: Set var_90 = Nothing
  loc_168B001: Exit Sub
  loc_168B002: ' Referenced from: 168980C
  loc_168B002: Proc_6_60_E63754(var_120)
  loc_168B007: Exit Sub
End Sub

Private Sub CmdEdit_Click() '12FF2E0
  'Data Table: 5608D4
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_120 As TextBox
  Dim var_104 As Variant
  loc_12FEBEC: Set var_88 = Me.TopCtrl1
  loc_12FEBF2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12FEC0B: If (CStr() = "Browse") Then
  loc_12FEC0E:   Exit Sub
  loc_12FEC0F: End If
  loc_12FEC22: var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FEC2A: var_D0 = CVar(CLng(5)) 'Long
  loc_12FEC39: var_F4 = Me.FGrid.TextMatrix)
  loc_12FEC5D: If (CStr(var_F4) = vbNullString) Then
  loc_12FEC79:   MsgBox("Select Facility From Grid To Edit", &H40, var_F4, var_104, var_114)
  loc_12FEC89:   Exit Sub
  loc_12FEC8A: End If
  loc_12FECA5: If (Me.frFacility.Visible = 0) Then
  loc_12FECEB:   Set var_11C = Me.Txt
  loc_12FECF1:   Call 0.Method_CmdEdit_Click0 (CInt(&HB), var_120, CStr(Me.FGrid.TextMatrix)), CVar(CLng(&H14)))
  loc_12FECF9:   var_120.Text = CVar(CLng(Me.FGrid.Row))
  loc_12FED56:   Set var_11C = Me.Txt
  loc_12FED5C:   Call 0.Method_CmdEdit_Click0 (CInt(&HB), var_120, CStr(Me.FGrid.TextMatrix)), CVar(CLng(&H15)))
  loc_12FED64:   var_120.Tag = CVar(CLng(Me.FGrid.Row))
  loc_12FEDC1:   Set var_11C = Me.Txt
  loc_12FEDC7:   Call 0.Method_CmdEdit_Click0 (CInt(1), var_120, CStr(Me.FGrid.TextMatrix)), CVar(CLng(1)))
  loc_12FEDCF:   var_120.Text = CVar(CLng(Me.FGrid.Row))
  loc_12FEE0D:   Set var_E4 = Me.FGrid
  loc_12FEE1E:   var_9C = CStr(var_E4.TextMatrix))
  loc_12FEE2C:   Set var_11C = Me.Txt
  loc_12FEE32:   Call 0.Method_CmdEdit_Click0 (CInt(1), var_120, var_9C, CVar(CLng(8)))
  loc_12FEE62:   Set var_88 = Me.Txt
  loc_12FEE68:   Call 0.Method_CmdEdit_Click0 (CInt(1), var_E4, var_9C)
  loc_12FEE70:   var_D0 = var_E4.Tag
  loc_12FEE83:   Set var_11C = Me.Txt
  loc_12FEE89:   Call 0.Method_CmdEdit_Click0 (CInt(&HB), var_120)
  loc_12FEEA4:   Call Proc_350_53_1249954(var_9C, CVar(CLng(Me.FGrid.Row)))
  loc_12FEEC8:   Set var_88 = Me.Txt
  loc_12FEECE:   Call 0.Method_CmdEdit_Click0 (CInt(1), var_E4)
  loc_12FEED6:   var_E4.Enabled = False
  loc_12FEEF5:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FEEFD:   var_D0 = CVar(CLng(2)) 'Long
  loc_12FEF0C:   var_F4 = Me.FGrid.TextMatrix)
  loc_12FEF4E:   Set var_11C = Me.Txt
  loc_12FEF54:   Call 0.Method_CmdEdit_Click0 (CInt(2), var_120, CStr(Format(CVar(CStr(var_F4)), "0.0000")), 1, 1)
  loc_12FEF5C:   var_120.Text = var_F4
  loc_12FEF8F:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FEFA6:   var_F4 = Me.FGrid.TextMatrix)
  loc_12FEFE8:   Set var_11C = Me.Txt
  loc_12FEFEE:   Call 0.Method_CmdEdit_Click0 (CInt(3), var_120, CStr(Format(CVar(CStr(var_F4)), "0.00")), 1, 1, var_F4)
  loc_12FEFF6:   var_120.Text = CVar(CLng(3))
  loc_12FF029:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FF040:   var_F4 = Me.FGrid.TextMatrix)
  loc_12FF082:   Set var_11C = Me.Txt
  loc_12FF088:   Call 0.Method_CmdEdit_Click0 (CInt(4), var_120, CStr(Format(CVar(CStr(var_F4)), "0.00")), 1, 1, var_F4)
  loc_12FF090:   var_120.Text = CVar(CLng(4))
  loc_12FF0C3:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FF0CB:   var_D0 = CVar(CLng(&HB)) 'Long
  loc_12FF0FB:   Set var_11C = Me.Txt
  loc_12FF101:   Call 0.Method_CmdEdit_Click0 (CInt(&HA), var_120, Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), var_D0, var_B0, var_B0), var_B0)
  loc_12FF109:   var_120.Text = var_D0
  loc_12FF138:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FF170:   Set var_11C = Me.Txt
  loc_12FF176:   Call 0.Method_CmdEdit_Click0 (CInt(&HC), var_120, Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), var_B0))
  loc_12FF17E:   var_120.Text = var_B0
  loc_12FF1E5:   Set var_11C = Me.Txt
  loc_12FF1EB:   Call 0.Method_CmdEdit_Click0 (CInt(&HD), var_120, Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD))))
  loc_12FF1F3:   var_120.Text = CVar(CLng(Me.FGrid.Row))
  loc_12FF25A:   Set var_11C = Me.Txt
  loc_12FF260:   Call 0.Method_CmdEdit_Click0 (CInt(&H10), var_120, Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HA))))
  loc_12FF268:   var_120.Tag = CVar(CLng(Me.FGrid.Row))
  loc_12FF290:   Me.frFacility.Visible = True
  loc_12FF2BA:   Me.frFacility.Tag = CStr(CLng(Me.FGrid.Row))
  loc_12FF2D3:   global_88 = CByte(2)
  loc_12FF2D7: End If
  loc_12FF2DC: Set var_A0 = Nothing
  loc_12FF2DF: Exit Sub
End Sub

Private Sub CmdAdd_Click() '11260A4
  'Data Table: 5608D4
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_FC As TextBox
  Dim var_F8 As TextBox
  loc_1125D3C: Set var_88 = Me.TopCtrl1
  loc_1125D42: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1125D5B: If (CStr() = "Browse") Then
  loc_1125D5E:   Exit Sub
  loc_1125D5F: End If
  loc_1125D78: var_AC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1125D80: var_CC = CVar(CLng(1)) 'Long
  loc_1125D89: Set var_E0 = Me.FGrid
  loc_1125DB3: If (CStr(var_E0.TextMatrix)) <> vbNullString) Then
  loc_1125DB6:   var_AC = vbNullString
  loc_1125DC0:   Set var_88 = Me.FGrid
  loc_1125DD1: End If
  loc_1125DEC: If (Me.frFacility.Visible = 0) Then
  loc_1125DEF:   Call Proc_350_57_FA65DC(FGrid.DispID_10000, var_AC)
  loc_1125E00:   var_CC = CVar(CLng(8)) 'Long
  loc_1125E2B:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1125E3B:     Set var_88 = Me.Txt
  loc_1125E41:     Call 0.Method_CmdAdd_Click0 (CInt(1), var_E0, &HFF, var_CC)
  loc_1125E49:     var_E0.Enabled = 1
  loc_1125E58:   Else
  loc_1125E65:     Set var_88 = Me.Txt
  loc_1125E6B:     Call 0.Method_CmdAdd_Click0 (CInt(1), var_E0, 0)
  loc_1125E73:     var_E0.Enabled = var_CC
  loc_1125E7F:   End If
  loc_1125E8D:   Set var_88 = Me.Txt
  loc_1125E93:   Call 0.Method_CmdAdd_Click0 (CInt(&HE), var_E0)
  loc_1125EAE:   Set var_F8 = Me.Txt
  loc_1125EB4:   Call 0.Method_CmdAdd_Click0 (CInt(&HC), var_FC)
  loc_1125EBC:   var_FC.Text = var_E0.Text
  loc_1125EDD:   Set var_88 = Me.Txt
  loc_1125EE3:   Call 0.Method_CmdAdd_Click0 (CInt(&HF), var_E0)
  loc_1125EFE:   Set var_F8 = Me.Txt
  loc_1125F04:   Call 0.Method_CmdAdd_Click0 (CInt(&HD), var_FC)
  loc_1125F0C:   var_FC.Text = var_E0.Text
  loc_1125F1F:   var_AC = 1
  loc_1125F53:   Set var_E0 = Me.Txt
  loc_1125F59:   Call 0.Method_CmdAdd_Click0 (CInt(1), var_F8, CStr(Me.FGrid.TextMatrix)))
  loc_1125F61:   var_F8.Text = CVar(CLng(1))
  loc_1125FA9:   Set var_E0 = Me.Txt
  loc_1125FAF:   Call 0.Method_CmdAdd_Click0 (CInt(1), var_F8, CStr(Me.FGrid.TextMatrix)), CVar(CLng(8)))
  loc_1125FB7:   var_F8.Tag = 1
  loc_1125FCB:   var_AC = 1
  loc_1126007:   Set var_E0 = Me.Txt
  loc_112600D:   Call 0.Method_CmdAdd_Click0 (CInt(&H10), var_F8, Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HA)), var_AC))
  loc_1126015:   var_F8.Tag = var_AC
  loc_1126039:   Me.frFacility.Visible = True
  loc_112604F:   Set var_88 = Me.Txt
  loc_1126055:   Call 0.Method_CmdAdd_Click0 (CInt(&HB), var_E0)
  loc_112606F:   If (var_E0.Enabled = &HFF) Then
  loc_112607D:     Set var_88 = Me.Txt
  loc_1126083:     Call 0.Method_CmdAdd_Click0 (CInt(&HB), var_E0)
  loc_112608B:     var_E0.SetFocus
  loc_1126097:   End If
  loc_112609E:   global_88 = CByte(1)
  loc_11260A2: End If
  loc_11260A2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E5C2B8
  'Data Table: 5608D4
  loc_E5C2A2: Me.frFacility.Tag = CStr(CLng(Me.FGrid.Row))
  loc_E5C2B4: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ECF5FC
  'Data Table: 5608D4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECF55E: Set var_88 = Me.TxtGt
  loc_ECF564: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ECF572: Proc_6_74_E23240(var_8C)
  loc_ECF57E: Call Proc_350_46_EB9C30(var_8C)
  loc_ECF592: Set var_88 = Me.TxtGt
  loc_ECF598: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECF5A0: var_8C.SelStart = 0
  loc_ECF5B9: Set var_88 = Me.TxtGt
  loc_ECF5BF: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECF5DA: Set var_90 = Me.TxtGt
  loc_ECF5E0: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ECF5E8: var_98.SelLength = Len(var_8C.Text)
  loc_ECF5FB: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5C868
  'Data Table: 5608D4
  loc_E5C835: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5C83E:   Proc_6_75_E5335C(Shift)
  loc_E5C843: End If
  loc_E5C858: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5C861:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5C866: End If
  loc_E5C866: Exit Sub
  loc_E5C867: arg_14() = 
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'F7D4D0
  'Data Table: 5608D4
  Dim var_8C As Variant
  Dim arg_10 As Integer
  Dim var_FC As TextBox
  loc_F7D3A2: Set var_88 = Me.TxtGt
  loc_F7D3A8: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_F7D3C3: Proc_6_42_129B55C(var_8C, arg_10, 8)
  loc_F7D3CF: On Error Goto loc_F7D4CE
  loc_F7D3DF: Set var_88 = Me.LblCap
  loc_F7D3E5: Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7D3ED: 2 = var_8C.Tag
  loc_F7D424: If (Trim(CVar(var_98)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_F7D42D:   If (arg_10 = &H2D) Then
  loc_F7D432:     arg_10 = 0
  loc_F7D435:   End If
  loc_F7D442:   Set var_88 = Me.TxtGt
  loc_F7D448:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7D450:   arg_10 = var_8C.Text
  loc_F7D4A0:   Set var_90 = Me.TxtPer
  loc_F7D4A6:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_FC, CStr(Format(CVar(((Val(var_98) * CDbl(&H64)) / global_92)), "0.00000")), 1)
  loc_F7D4AE:   var_FC.Text = 1
  loc_F7D4CE:   ' Referenced from: F7D3CF
  loc_F7D4CE: End If
  loc_F7D4CE: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E51154
  'Data Table: 5608D4
  loc_E51132: Set var_88 = Me.TxtGt
  loc_E51138: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E51146: Proc_6_73_E23294(var_8C)
  loc_E51152: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E20580
  'Data Table: 5608D4
  loc_E20569: var_8C = 0
  loc_E20575: Call Proc_350_60_188498C(Cancel)
  loc_E2057D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFBE28
  'Data Table: 5608D4
  Dim var_8C As String
  Dim var_98 As TextBox
  loc_EFBD50: On Error Goto loc_EFBE22
  loc_EFBD76: Call Proc_350_45_F5F42C(Proc_5_1_100EC1C("ADD", Me))
  loc_EFBD81: Call Proc_350_44_F5F700(global_52)
  loc_EFBD8B: var_8C = CStr(MemVar_1F950EC)
  loc_EFBD99: Set var_90 = Me.Txt
  loc_EFBD9F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_98)
  loc_EFBDA7: var_98.Text = var_8C
  loc_EFBDBC: Call Proc_350_51_10E9110(MemVar_1F95044)
  loc_EFBDCF: Set var_90 = Me.Txt
  loc_EFBDD5: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_98)
  loc_EFBDDD: var_98.Text = var_8C
  loc_EFBDF7: Set var_90 = Me.Txt
  loc_EFBDFD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_EFBE05: var_98.SetFocus
  loc_EFBE14: Call Proc_350_59_177E808(MemVar_1F950EC)
  loc_EFBE1E: Set var_88 = Nothing
  loc_EFBE21: Exit Sub
  loc_EFBE22: ' Referenced from: EFBD50
  loc_EFBE22: Proc_6_60_E63754(var_8C)
  loc_EFBE27: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA3330
  'Data Table: 5608D4
  loc_EA32B4: On Error Goto loc_EA332A
  loc_EA32EE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA3314:   Call Proc_350_45_F5F42C(Proc_5_1_100EC1C("INI", Me))
  loc_EA331F:   Call Proc_350_42_16E7B74(global_52)
  loc_EA3324: End If
  loc_EA3324: Call Proc_350_46_EB9C30()
  loc_EA3329: Exit Sub
  loc_EA332A: ' Referenced from: EA32B4
  loc_EA332A: Proc_6_60_E63754()
  loc_EA332F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12B728C
  'Data Table: 5608D4
  Dim unk_5608DB As Connection15
  Dim Me As Recordset15
  Dim var_12C As Fields15
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_134 As String
  Dim var_98 As Recordset15
  Dim var_140 As String
  loc_12B6C84: On Error Goto loc_12B723B
  loc_12B6C95: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_12B6C98:   Exit Sub
  loc_12B6C99: End If
  loc_12B6CD0: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_104, var_124) = 6) Then
  loc_12B6CDC:   unk_5608DB.BeginTrans var_128
  loc_12B6CF2:   var_94 = Me.Bookmark 'Variant
  loc_12B6D35:   var_E4 = "Select DOcid1 from FacilityBill1 where Docid1='" & Me.Fields.Item("SearchCode").Value 
  loc_12B6D4C:   unk_5608DB.Execute CStr(var_E4 & "'"), var_124, -1
  loc_12B6D57:   Set var_98 = var_138
  loc_12B6D71:   ' Referenced from: 12B6DF3
  loc_12B6D80:   If Not(var_98.EOF) Then
  loc_12B6DBF:     var_140 = -1 & Proc_6_38_E69628(CVar(var_98.Fields.Item("DocID1")), "Delete from Ledger where Docid='", var_E4)
  loc_12B6DCF:     unk_5608DB.Execute var_140 & "'", var_138, var_138
  loc_12B6DEE:     var_98.MoveNext
  loc_12B6DF3:     GoTo loc_12B6D71
  loc_12B6DF6:   End If
  loc_12B6E4C:   unk_5608DB.Execute CStr("Delete From FacilityBill Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_12B6E97:   var_174 = 0
  loc_12B6EAA:   var_16C = 0
  loc_12B6EB5:   var_168 = 0
  loc_12B6EC8:   var_160 = 0
  loc_12B6ED3:   var_15C = 0
  loc_12B6EE6:   var_154 = 0
  loc_12B6F2F:   Proc_154_5_10E3BD4(MemVar_1F95044, "FacilityBill", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12B6FAD:   unk_5608DB.Execute CStr("Delete From FacilityBill1 Where Docid1='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_12B6FF8:   var_174 = 0
  loc_12B700B:   var_16C = 0
  loc_12B7016:   var_168 = 0
  loc_12B7029:   var_160 = 0
  loc_12B7034:   var_15C = 0
  loc_12B7047:   var_154 = 0
  loc_12B7090:   Proc_154_5_10E3BD4(MemVar_1F95044, "FacilityBill1", "DocId1", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12B710E:   unk_5608DB.Execute CStr("Delete From FacilityBill2 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_12B7172:   var_104 = "Delete From SuntranFacility Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12B7176:   var_134 = CStr(var_104)
  loc_12B7180:   unk_5608DB.Execute var_134, var_124, -1
  loc_12B71A2:   unk_5608DB.CommitTrans
  loc_12B71B2:   Me.Requery -1
  loc_12B71D2:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12B71DF:     Me.Bookmark = var_94
  loc_12B71E7:   Else
  loc_12B71FB:     If (Me.EOF = 0) Then
  loc_12B7204:       Me.MoveLast
  loc_12B7209:     End If
  loc_12B7209:   End If
  loc_12B7209:   Call Proc_350_42_16E7B74(var_138, var_138, var_154, 0)
  loc_12B722A:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_12B7232: End If
  loc_12B7237: Set var_98 = Nothing
  loc_12B723A: Exit Sub
  loc_12B723B: ' Referenced from: 12B6C84
  loc_12B7241: unk_5608DB.RollbackTrans
  loc_12B724E: Set var_12C = Err()
  loc_12B7254: Call 0.Method_arg_2C (var_134, var_15C, var_160)
  loc_12B7275: MsgBox(CVar(var_134), &H10, " Deletion Message", var_104, var_124)
  loc_12B7288: Exit Sub
  loc_12B7289: BranchFVar 2303
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EBB5F4
  'Data Table: 5608D4
  Dim var_94 As TextBox
  loc_EBB55D: Call Proc_350_65_E663B0(global_112)
  loc_EBB568: If (var_86 = 0) Then
  loc_EBB56B:   Exit Sub
  loc_EBB56C: End If
  loc_EBB56C: On Error Goto loc_EBB5EC
  loc_EBB592: Call Proc_350_45_F5F42C(Proc_5_1_100EC1C("EDIT", Me), global_52)
  loc_EBB5AB: Set var_90 = Me.Txt
  loc_EBB5B1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H11), var_94)
  loc_EBB5C7: Call Proc_350_59_177E808(CDate(var_94.Text))
  loc_EBB5DA: Set var_90 = Me.FGrid
  loc_EBB5EB: Exit Sub
  loc_EBB5EC: ' Referenced from: EBB56C
  loc_EBB5EC: Proc_6_60_E63754(FGrid.DispID_8001)
  loc_EBB5F1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AD2C
  'Data Table: 5608D4
  loc_E1AD21: Me.Global.Unload Me
  loc_E1AD29: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F351F4
  'Data Table: 5608D4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_168 As Variant
  Dim MemVar_1F950E4 As String
  loc_F350F0: On Error Goto loc_F351EB
  loc_F3510A: If (Me.RecordCount <= 0) Then
  loc_F35128:   var_A8 = "No Records To Search."
  loc_F3512E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F3513E:   Exit Sub
  loc_F3513F: End If
  loc_F3513F: var_B8 = "Select F.DocId,SubGroup.Name As PartyName,LM.Name As LocationName,Convert(VarChar,F.Vno) As BillNo,Convert(varchar(11),F.VDate,106) As BillDate,Convert(varchar(11),F.DueDate,106) As DueDate,Convert(varchar(11),F.ForPeriod,106) As ForPeriod,Convert(varchar(11),F.ToPeriod,106) As ToPeriod From ((FacilityBill F left join Subgroup on F.PartyCode=Subgroup.subcode) left join Locationmast LM on F.LocationCode=LM.Code) Where F.VDATE>="
  loc_F3514F: Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_F35186: var_168 = var_B8 & var_A8 & " AND F.Site_Code='" & CVar(MemVar_1F95070) & "' and F.LogSite_Code='" & CVar(MemVar_1F95078) & "' And F.Site_Code='" 
  loc_F3519E: MemVar_1F950E4 = CStr(var_168 & CVar(MemVar_1F95070) & "' Order by F.Docid ")
  loc_F351BD: MemVar_1F95120 = Me
  loc_F351CA: Proc_6_126_F1C850("3000,2000,1000,1000,1000,1000,1000")
  loc_F351E5: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F351EA: Exit Sub
  loc_F351EB: ' Referenced from: F350F0
  loc_F351EB: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F351F0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E351C8
  'Data Table: 5608D4
  loc_E351B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E351C0: Call Proc_350_42_16E7B74(global_52)
  loc_E351C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E35228
  'Data Table: 5608D4
  loc_E35218: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35220: Call Proc_350_42_16E7B74(global_52)
  loc_E35225: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E356A8
  'Data Table: 5608D4
  loc_E35698: Proc_5_0_1107AD0(&HFF, Me)
  loc_E356A0: Call Proc_350_42_16E7B74(global_52)
  loc_E356A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E357C8
  'Data Table: 5608D4
  loc_E357B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E357C0: Call Proc_350_42_16E7B74(global_52)
  loc_E357C5: Exit Sub
  loc_E357C6: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '187D2D8
  'Data Table: 5608D4
  Dim Me As Recordset15
  Dim var_120 As String
  Dim var_124 As String
  Dim var_134 As String
  Dim var_13C As String
  Dim var_144 As String
  Dim var_154 As String
  Dim var_14C As Variant
  Dim unk_5608DB As Connection15
  Dim var_A0 As Recordset15
  Dim var_188 As Variant
  Dim var_168 As Variant
  Dim var_1D0 As Recordset15
  Dim var_198 As String
  Dim var_148 As Fields15
  Dim var_178 As Variant
  Dim var_1D4 As Fields15
  Dim var_1D8 As Field20
  Dim var_1C8 As Variant
  Dim var_1B8 As String
  Dim var_B4 As Recordset15
  Dim var_1CA As Integer
  Dim var_116 As Integer
  Dim var_B8 As Recordset15
  Dim var_1A8 As Variant
  loc_187ACE4: On Error Goto loc_187D2D1
  loc_187ACFE: If (Me.RecordCount <= 0) Then
  loc_187AD01:   Exit Sub
  loc_187AD02: End If
  loc_187AD09: var_120 = "Select F1.DocId,F1.SNo,S.Name As PartyName,S.Add1,S.Add2,S.Add3,C.CityName,ST.ShortName StateCode,ST.Name StateName,S.PIN,S.Mobile,S.Email,S.GSTIN,S.LegalName,S.TradeName,LM.Name As Location,F.Vno As PartyBillNo,F.Vdate As BillDate,F.DueDate,F.Remark,F1.VType," & "F1.Vno As FacilityBillNo,FM.Name As Facility,FM.ChargeType,F1.Unit,F1.UnitRate,F1.Amount,F1.DiscAmt,F1.AppDate,F1.ForPeriod,"
  loc_187AD2C: var_134 = var_120 & "F1.ToPeriod,FR1.Reading As LReading,Case When '" & MemVar_1F95164 & "'<>'' Then '" & MemVar_1F95164 & "'+'/' Else '' End +F1.VType+'/'+'"
  loc_187AD3A: var_13C = var_134 & MemVar_1F95168 & "'+'/'+Cast(F1.Vno As Varchar) As BillVou,FM.SACCode,ISNULL(EIB.IRN,'') IRN,ISNULL(EIB.AckNo,'') AckNo,EIB.AckDt From FacilityBill F Right Join FacilityBill1 F1 On F1.DocId1=F.Docid Left Join "
  loc_187AD48: var_144 = var_13C & "SubGroup S on S.SubCode=F.PartyCode Left Join LocationMast LM on LM.Code=F1.LocationCode Left Join " & "FacilityMast FM on FM.Code=F1.FacilityCode Left Join City C on S.CityCode=C.CityCode Left Join State ST on C.State=ST.Code Left Join FMReading FR On FR.LocationCode=F.LocationCode And FR.FacilityCode=F1.FacilityCode "
  loc_187AD4F: var_154 = var_144 & "Left Join FMReading1 FR1 On FR1.Code=FR.Code And FR1.ForDate=dateadd(day,1,F1.ToPeriod) Left Join eInvoiceBill1 EIB On EIB.DocId = F1.Docid where F.DocId='"
  loc_187AD60: Set var_148 = Me.Txt
  loc_187AD66: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(5), var_14C)
  loc_187ADBB: unk_5608DB.Execute var_154 & var_14C.Text & "'", var_178, -1
  loc_187ADC6: Set var_A0 = var_148
  loc_187ADE3: If (var_A0.RecordCount <= 0) Then
  loc_187ADEC:   Call 0.Method_arg_50 (var_120)
  loc_187AE02:   var_168 = "** No Records Found to Print **"
  loc_187AE0D:   MsgBox(var_168, &H40, CVar(var_120), var_1A8, var_1C8)
  loc_187AE1D:   Exit Sub
  loc_187AE1E: End If
  loc_187AE2B: Call Proc_350_49_1280A8C(New, var_148)
  loc_187AE33: Set var_B0 = var_148
  loc_187AE39: var_A0.MoveFirst
  loc_187AE3E: ' Referenced from: 187B915
  loc_187AE4D: If Not(var_A0.EOF) Then
  loc_187AE53:   Set var_1D0 = var_B0 
  loc_187AE62:   var_1D0.AddNew var_168, var_198
  loc_187AE8C:   var_1D0.Fields.Item("mLine").Value = vbNullString
  loc_187AEDB:   var_1D0.Fields.Item("DocId").Value = CVar(var_A0.Fields.Item("DocID"))
  loc_187AF2F:   var_1D0.Fields.Item("PartyName").Value = CVar(var_A0.Fields.Item("PartyName"))
  loc_187AF83:   var_1D0.Fields.Item("Add1").Value = CVar(var_A0.Fields.Item("Add1"))
  loc_187AFD7:   var_1D0.Fields.Item("Add2").Value = CVar(var_A0.Fields.Item("Add2"))
  loc_187B02B:   var_1D0.Fields.Item("Add3").Value = CVar(var_A0.Fields.Item("Add3"))
  loc_187B07F:   var_1D0.Fields.Item("CityName").Value = CVar(var_A0.Fields.Item("CityName"))
  loc_187B0D3:   var_1D0.Fields.Item("StateCode").Value = CVar(var_A0.Fields.Item("StateCode"))
  loc_187B127:   var_1D0.Fields.Item("StateName").Value = CVar(var_A0.Fields.Item("StateName"))
  loc_187B17B:   var_1D0.Fields.Item("GSTIN").Value = CVar(var_A0.Fields.Item("GSTIN"))
  loc_187B1CF:   var_1D0.Fields.Item("Location").Value = CVar(var_A0.Fields.Item("Location"))
  loc_187B223:   var_1D0.Fields.Item("PartyBillNo").Value = CVar(var_A0.Fields.Item("PartyBillNo"))
  loc_187B277:   var_1D0.Fields.Item("BillDate").Value = CVar(var_A0.Fields.Item("Billdate"))
  loc_187B2CB:   var_1D0.Fields.Item("DueDate").Value = CVar(var_A0.Fields.Item("DueDate"))
  loc_187B31F:   var_1D0.Fields.Item("Remark").Value = CVar(var_A0.Fields.Item("Remark"))
  loc_187B373:   var_1D0.Fields.Item("VType").Value = CVar(var_A0.Fields.Item("vType"))
  loc_187B3C7:   var_1D0.Fields.Item("FacilityBillNo").Value = CVar(var_A0.Fields.Item("FacilityBillNo"))
  loc_187B41B:   var_1D0.Fields.Item("Facility").Value = CVar(var_A0.Fields.Item("Facility"))
  loc_187B46F:   var_1D0.Fields.Item("ChargeType").Value = CVar(var_A0.Fields.Item("ChargeType"))
  loc_187B4C3:   var_1D0.Fields.Item("Unit").Value = CVar(var_A0.Fields.Item("Unit"))
  loc_187B517:   var_1D0.Fields.Item("UnitRate").Value = CVar(var_A0.Fields.Item("UnitRate"))
  loc_187B56B:   var_1D0.Fields.Item("Amount").Value = CVar(var_A0.Fields.Item("Amount"))
  loc_187B5BF:   var_1D0.Fields.Item("AppDate").Value = CVar(var_A0.Fields.Item("AppDate"))
  loc_187B613:   var_1D0.Fields.Item("ForPeriod").Value = CVar(var_A0.Fields.Item("ForPeriod"))
  loc_187B667:   var_1D0.Fields.Item("ToPeriod").Value = CVar(var_A0.Fields.Item("ToPeriod"))
  loc_187B6BB:   var_1D0.Fields.Item("LReading").Value = CVar(var_A0.Fields.Item("LReading"))
  loc_187B71D:   Proc_6_39_E7D3A0(var_1A8, CVar(var_A0.Fields.Item("FacilityBillNo")))
  loc_187B738:   var_1B8 = "BillVou"
  loc_187B754:   var_1D0.Fields.Item(var_1B8).Value = CVar(Proc_96_43_F99D14(Proc_6_38_E69628(CVar(var_A0.Fields.Item("vType"))), var_1A8))
  loc_187B7B9:   var_1D0.Fields.Item("eInvIRN").Value = CVar(var_A0.Fields.Item("Irn"))
  loc_187B80D:   var_1D0.Fields.Item("eInvAckNo").Value = CVar(var_A0.Fields.Item("AckNo"))
  loc_187B859:   var_1D8 = var_1D0.Fields.Item("eInvAckDt")
  loc_187B861:   var_1D8.Value = CVar(var_A0.Fields.Item("AckDt"))
  loc_187B886:   If (var_A0.AbsolutePosition = 1) Then
  loc_187B88D:     Set var_1D4 = Me.QrImage
  loc_187B893:     var_120 = "QrImage"
  loc_187B89C:     Set var_14C = var_B0 
  loc_187B8AC:     Proc_142_0_F977BC(var_1D4, var_14C)
  loc_187B8B7:     Set var_B0 = var_14C
  loc_187B8C6:   End If
  loc_187B8C6:   var_198 = "*"
  loc_187B8CF:   var_168 = "Mark"
  loc_187B8E3:   var_14C = var_1D0.Fields.Item(var_168)
  loc_187B8EB:   var_14C.Value = var_198
  loc_187B902:   var_1D0.Update var_168, var_198
  loc_187B909:   Set var_1D0 = Nothing 
  loc_187B910:   var_A0.MoveNext
  loc_187B915:   GoTo loc_187AE3E
  loc_187B918: End If
  loc_187B918: Call Proc_350_64_FABB48(var_120)
  loc_187B941: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(5), var_14C, var_120, "select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (FacilityBill2 left join revmast on revmast.code=FacilityBill2.Taxcode) where FacilityBill2.DocID='")
  loc_187B949: var_178 = var_14C.Text
  loc_187B952: var_124 = -1 & var_120
  loc_187B962: unk_5608DB.Execute Proc_6_38_E69628(CVar(var_A0.Fields.Item("vType"))) & "' group by revmast.code,TaxPer Order by TaxPer", var_1D4, Me.Txt
  loc_187B96D: Set var_B8 = var_1D4
  loc_187B9A3: Set var_148 = Me.Txt
  loc_187B9A9: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(5), var_14C, var_120, "SELECT ST.DocId,ST.SNo,ST.SunCode,ST.DispName,ST.Svalue,ST.Amount,SM.Name AS SName FROM SunTranFacility AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='")
  loc_187B9B1: var_178 = var_14C.Text
  loc_187B9BA: var_124 = -1 & var_120
  loc_187B9CA: unk_5608DB.Execute Proc_6_38_E69628(CVar(var_A0.Fields.Item("vType"))) & "' Order by SNo", var_1D4, 
  loc_187B9D5: Set var_B4 = var_1D4
  loc_187BA01: If (var_B4.RecordCount > 0) Then
  loc_187BA04:   ' Referenced from: 187BF54
  loc_187BA13:   If Not(var_B4.EOF) Then
  loc_187BA3C:     var_188 = Trim(CVar(var_B4.Fields.Item("SunCode")))
  loc_187BA6A:     If (Ucase(var_188) = CVar(MemVar_1F95078 & "NET")) Then
  loc_187BA98:       var_D8 = CStr(var_B4.Fields.Item("SName").Value)
  loc_187BAC4:       var_178 = CVar(var_B4.Fields.Item("Amount")) 'Address
  loc_187BACB:       Proc_6_39_E7D3A0(var_188)
  loc_187BAF4:       var_E4 = CStr(Format(var_188, "0.00"))
  loc_187BB08:       var_B4.MoveNext
  loc_187BB1E:       If (var_B4.EOF = &HFF) Then
  loc_187BB21:         GoTo loc_187BF57
  loc_187BB24:       End If
  loc_187BB24:     End If
  loc_187BB4E:     var_200 = var_B4.Fields.Item("SNo").Value 'Variant
  loc_187BB64:     If (var_200 = 1) Then
  loc_187BB92:       var_C0 = CStr(var_B4.Fields.Item("SName").Value)
  loc_187BBC5:       Proc_6_39_E7D3A0(var_188, CVar(var_B4.Fields.Item("Amount")), 1)
  loc_187BBEE:       var_FC = CStr(Format(var_188, "0.00"))
  loc_187BC02:     Else
  loc_187BC0D:       If (var_200 = 2) Then
  loc_187BC3B:         var_C4 = CStr(var_B4.Fields.Item("SName").Value)
  loc_187BC6E:         Proc_6_39_E7D3A0(var_188, CVar(var_B4.Fields.Item("Amount")), 1)
  loc_187BC97:         var_100 = CStr(Format(var_188, "0.00"))
  loc_187BCAB:       Else
  loc_187BCB6:         If (var_200 = 3) Then
  loc_187BCE4:           var_D0 = CStr(var_B4.Fields.Item("SName").Value)
  loc_187BD17:           Proc_6_39_E7D3A0(var_188, CVar(var_B4.Fields.Item("Amount")), 1, 1)
  loc_187BD40:           var_DC = CStr(Format(var_188, "0.00"))
  loc_187BD54:         Else
  loc_187BD5F:           If (var_200 = 4) Then
  loc_187BD8D:             var_C8 = CStr(var_B4.Fields.Item("SName").Value)
  loc_187BDC0:             Proc_6_39_E7D3A0(var_188, CVar(var_B4.Fields.Item("Amount")), 1, 1)
  loc_187BDE9:             var_104 = CStr(Format(var_188, "0.00"))
  loc_187BDFD:           Else
  loc_187BE08:             If (var_200 = 5) Then
  loc_187BE36:               var_CC = CStr(var_B4.Fields.Item("SName").Value)
  loc_187BE69:               Proc_6_39_E7D3A0(var_188, CVar(var_B4.Fields.Item("Amount")), 1, 1)
  loc_187BE92:               var_108 = CStr(Format(var_188, "0.00"))
  loc_187BEA6:             Else
  loc_187BEB1:               If (var_200 = 6) Then
  loc_187BEDF:                 var_D4 = CStr(var_B4.Fields.Item("SName").Value)
  loc_187BF03:                 var_14C = var_B4.Fields.Item("Amount")
  loc_187BF0B:                 var_178 = CVar(var_14C) 'Address
  loc_187BF12:                 Proc_6_39_E7D3A0(var_188, var_178, 1, 1)
  loc_187BF3B:                 var_E0 = CStr(Format(var_188, "0.00"))
  loc_187BF4C:               End If
  loc_187BF4C:             End If
  loc_187BF4C:           End If
  loc_187BF4C:         End If
  loc_187BF4C:       End If
  loc_187BF4C:     End If
  loc_187BF4F:     var_B4.MoveNext
  loc_187BF54:     GoTo loc_187BA04
  loc_187BF57:     ' Referenced from: 187BB21
  loc_187BF57:   End If
  loc_187BF57: End If
  loc_187BF6D: Set var_148 = var_B0 
  loc_187BF83: Set var_B0 = var_148
  loc_187BF8C: var_9C = CVar(CreateFieldDefFile(var_148, MemVar_1F950B4 & "\FacilityBill.ttx", &HFF, 1)) 'Variant
  loc_187BFA0: var_11C = var_B4.RecordCount
  loc_187BFAE: If (var_11C > 0) Then
  loc_187BFC7:   Set var_148 = var_B4 
  loc_187BFD3:   var_1CA = CreateFieldDefFile(var_148, MemVar_1F950B4 & "\FacilityBillSundry.ttx", &HFF, var_1CA)
  loc_187BFDD:   Set var_B4 = var_148
  loc_187BFE3:   var_168 = CVar(var_1CA) 'Integer
  loc_187BFE6:   var_9C = var_168 'Variant
  loc_187BFF4: End If
  loc_187C002: var_120 = MemVar_1F950B4 & "\FacilityBill.RPT"
  loc_187C00B: Call 0.Method_arg_1C (var_120, var_168, var_148, var_1CA)
  loc_187C016: MemVar_1F951E8 = var_148
  loc_187C031: Call 0.Method_arg_90 (var_148, var_11C, var_AA, 1)
  loc_187C039: Call 0.Method_arg_24 (1, 1)
  loc_187C045: For var_204 = var_178 To CInt(var_11C): 1 = var_204 'Integer
  loc_187C05E:   Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187C066:   Call 0.Method_arg_20 (var_120)
  loc_187C06E:   Call 0.Method_arg_30 (var_178)
  loc_187C084:   var_214 = Ucase(CVar(var_120)) 'Variant
  loc_187C0B4:   If (var_214 = Ucase("Title")) Then
  loc_187C0CA:     Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C0D2:     Call 0.Method_arg_20 (var_14C)
  loc_187C0DA:     Call 0.Method_arg_38 ("'Facility Bill'")
  loc_187C0E9:   Else
  loc_187C10B:     If (var_214 = Ucase("lblamount")) Then
  loc_187C12F:       Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C137:       Call 0.Method_arg_20 (var_14C)
  loc_187C13F:       Call 0.Method_arg_38 ("'" & var_C0 & "'")
  loc_187C155:     Else
  loc_187C177:       If (var_214 = Ucase("amount")) Then
  loc_187C19B:         Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C1A3:         Call 0.Method_arg_20 (var_14C)
  loc_187C1AB:         Call 0.Method_arg_38 ("'" & var_FC & "'")
  loc_187C1C1:       Else
  loc_187C1E3:         If (var_214 = Ucase("lbldiscount")) Then
  loc_187C207:           Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C20F:           Call 0.Method_arg_20 (var_14C)
  loc_187C217:           Call 0.Method_arg_38 ("'" & var_C4 & "'")
  loc_187C22D:         Else
  loc_187C24F:           If (var_214 = Ucase("discount")) Then
  loc_187C273:             Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C27B:             Call 0.Method_arg_20 (var_14C)
  loc_187C283:             Call 0.Method_arg_38 ("'" & var_100 & "'")
  loc_187C299:           Else
  loc_187C2BB:             If (var_214 = Ucase("lbldevelopmenttax")) Then
  loc_187C2DF:               Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C2E7:               Call 0.Method_arg_20 (var_14C)
  loc_187C2EF:               Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_187C305:             Else
  loc_187C327:               If (var_214 = Ucase("developmenttax")) Then
  loc_187C34B:                 Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C353:                 Call 0.Method_arg_20 (var_14C)
  loc_187C35B:                 Call 0.Method_arg_38 ("'" & var_DC & "'")
  loc_187C371:               Else
  loc_187C393:                 If (var_214 = Ucase("lbltradetax")) Then
  loc_187C3B7:                   Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C3BF:                   Call 0.Method_arg_20 (var_14C)
  loc_187C3C7:                   Call 0.Method_arg_38 ("'" & var_C8 & "'")
  loc_187C3DD:                 Else
  loc_187C3FF:                   If (var_214 = Ucase("tradetax")) Then
  loc_187C423:                     Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C42B:                     Call 0.Method_arg_20 (var_14C)
  loc_187C433:                     Call 0.Method_arg_38 ("'" & var_104 & "'")
  loc_187C449:                   Else
  loc_187C46B:                     If (var_214 = Ucase("lblservicecharge")) Then
  loc_187C48F:                       Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C497:                       Call 0.Method_arg_20 (var_14C)
  loc_187C49F:                       Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_187C4B5:                     Else
  loc_187C4D7:                       If (var_214 = Ucase("servicecharge")) Then
  loc_187C4FB:                         Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C503:                         Call 0.Method_arg_20 (var_14C)
  loc_187C50B:                         Call 0.Method_arg_38 ("'" & var_108 & "'")
  loc_187C521:                       Else
  loc_187C543:                         If (var_214 = Ucase("lblroundoff")) Then
  loc_187C567:                           Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C56F:                           Call 0.Method_arg_20 (var_14C)
  loc_187C577:                           Call 0.Method_arg_38 ("'" & var_D4 & "'")
  loc_187C58D:                         Else
  loc_187C5AF:                           If (var_214 = Ucase("roundoff")) Then
  loc_187C5D3:                             Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C5DB:                             Call 0.Method_arg_20 (var_14C)
  loc_187C5E3:                             Call 0.Method_arg_38 ("'" & var_E0 & "'")
  loc_187C5F9:                           Else
  loc_187C61B:                             If (var_214 = Ucase("lblnetamount")) Then
  loc_187C63F:                               Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C647:                               Call 0.Method_arg_20 (var_14C)
  loc_187C64F:                               Call 0.Method_arg_38 ("'" & var_D8 & "'")
  loc_187C665:                             Else
  loc_187C687:                               If (var_214 = Ucase("netamount")) Then
  loc_187C691:                                 var_120 = "'" & var_E4
  loc_187C6AB:                                 Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C6B3:                                 Call 0.Method_arg_20 (var_14C)
  loc_187C6BB:                                 Call 0.Method_arg_38 (var_120 & "'")
  loc_187C6CE:                               End If
  loc_187C6CE:                             End If
  loc_187C6CE:                           End If
  loc_187C6CE:                         End If
  loc_187C6CE:                       End If
  loc_187C6CE:                     End If
  loc_187C6CE:                   End If
  loc_187C6CE:                 End If
  loc_187C6CE:               End If
  loc_187C6CE:             End If
  loc_187C6CE:           End If
  loc_187C6CE:         End If
  loc_187C6CE:       End If
  loc_187C6CE:     End If
  loc_187C6CE:   End If
  loc_187C6D1: Next var_204 'Integer
  loc_187C6DC: var_11C = var_B4.RecordCount
  loc_187C6EA: If (var_11C > 0) Then
  loc_187C6F0:   var_B4.MoveFirst
  loc_187C6F5:   ' Referenced from: 187CE70
  loc_187C704:   If Not(var_B4.EOF) Then
  loc_187C72D:     var_188 = Trim(CVar(var_B4.Fields.Item("SunCode")))
  loc_187C75B:     If (Ucase(var_188) = CVar(MemVar_1F95078 & "NET")) Then
  loc_187C79E:       var_148 = var_B4.Fields
  loc_187C7A6:       var_14C = var_148.Item("Amount")
  loc_187C7AE:       var_178 = CVar(var_14C) 'Address
  loc_187C7B5:       Proc_6_39_E7D3A0(var_188)
  loc_187C7DE:       var_114 = CStr(Format(var_188, "0.00"))
  loc_187C800:       Call 0.Method_arg_90 (var_148, var_11C, var_AA, 1)
  loc_187C808:       Call 0.Method_arg_24 (1, 1)
  loc_187C814:       For var_218 =  To CInt(var_11C): var_178 = var_218 'Integer
  loc_187C82D:         Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187C835:         Call 0.Method_arg_20 (var_14C)
  loc_187C83D:         Call 0.Method_arg_30 (var_120)
  loc_187C853:         var_228 = Ucase(CVar(var_120)) 'Variant
  loc_187C869:         var_178 = "lblNetAmount"
  loc_187C883:         If (var_228 = Ucase(var_178)) Then
  loc_187C891:           Proc_6_17_EAAE40(var_178)
  loc_187C8AD:           Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187C8B5:           Call 0.Method_arg_20 (CStr(var_178))
  loc_187C8BD:           Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_B4.Fields.Item("DispName"))))
  loc_187C8D2:         Else
  loc_187C8DA:           var_178 = "NetAmount"
  loc_187C8F4:           If (var_228 = Ucase(var_178)) Then
  loc_187C902:             Proc_6_17_EAAE40(var_178)
  loc_187C90A:             var_120 = CStr(var_178)
  loc_187C91E:             Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187C926:             Call 0.Method_arg_20 (var_120)
  loc_187C92E:             Call 0.Method_arg_38 (var_114)
  loc_187C940:           End If
  loc_187C940:         End If
  loc_187C943:       Next var_218 'Integer
  loc_187C94B:     Else
  loc_187C971:       var_188 = Trim(CVar(var_B4.Fields.Item("SunCode")))
  loc_187C99F:       If (Ucase(var_188) = CVar(MemVar_1F95078 & "TOT")) Then
  loc_187C9E2:         var_148 = var_B4.Fields
  loc_187C9EA:         var_14C = var_148.Item("Amount")
  loc_187C9F2:         var_178 = CVar(var_14C) 'Address
  loc_187C9F9:         Proc_6_39_E7D3A0(var_188)
  loc_187CA22:         var_114 = CStr(Format(var_188, "0.00"))
  loc_187CA44:         Call 0.Method_arg_90 (var_148, var_11C, var_AA, 1)
  loc_187CA4C:         Call 0.Method_arg_24 (1, 1)
  loc_187CA58:         For var_22C =  To CInt(var_11C):   var_178 = var_22C 'Integer
  loc_187CA71:           Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187CA79:           Call 0.Method_arg_20 (var_14C)
  loc_187CA81:           Call 0.Method_arg_30 (var_120)
  loc_187CA97:           var_23C = Ucase(CVar(var_120)) 'Variant
  loc_187CAAD:           var_178 = "lblTotal"
  loc_187CAC7:           If (var_23C = Ucase(var_178)) Then
  loc_187CAD5:             Proc_6_17_EAAE40(var_178)
  loc_187CAF1:             Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187CAF9:             Call 0.Method_arg_20 (CStr(var_178))
  loc_187CB01:             Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_B4.Fields.Item("DispName"))))
  loc_187CB16:           Else
  loc_187CB1E:             var_178 = "Total"
  loc_187CB27:             var_188 = Ucase(var_178)
  loc_187CB38:             If (var_23C = var_188) Then
  loc_187CB46:               Proc_6_17_EAAE40(var_178)
  loc_187CB4E:               var_120 = CStr(var_178)
  loc_187CB62:               Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187CB6A:               Call 0.Method_arg_20 (var_120)
  loc_187CB72:               Call 0.Method_arg_38 (var_114)
  loc_187CB84:             End If
  loc_187CB84:           End If
  loc_187CB87:         Next var_22C 'Integer
  loc_187CB8F:       Else
  loc_187CBDF:         var_178 = CVar(var_B4.Fields.Item("SValue")) 'Address
  loc_187CBE6:         Proc_6_39_E7D3A0(var_188)
  loc_187CC0F:         var_110 = CStr(Format(var_188, "0.00"))
  loc_187CC2F:         var_148 = var_B4.Fields
  loc_187CC37:         var_14C = var_148.Item("Amount")
  loc_187CC3F:         var_178 = CVar(var_14C) 'Address
  loc_187CC46:         Proc_6_39_E7D3A0(var_188, var_178, 1)
  loc_187CC5A:         var_1A8 = "0.00"
  loc_187CC66:         var_1C8 = Format(var_188, var_1A8)
  loc_187CC6F:         var_114 = CStr(var_1C8)
  loc_187CC86:         var_116 = (var_116 + 1)
  loc_187CC9A:         Call 0.Method_arg_90 (var_148, var_11C, var_AA, 1, var_116)
  loc_187CCA2:         Call 0.Method_arg_24 (1, 1)
  loc_187CCAE:         For var_240 = var_178 To CInt(var_11C):     1 = var_240 'Integer
  loc_187CCC7:           Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187CCCF:           Call 0.Method_arg_20 (var_120)
  loc_187CCD7:           Call 0.Method_arg_30 (var_178)
  loc_187CCED:           var_250 = Ucase(CVar(var_120)) 'Variant
  loc_187CD0A:           var_178 = CVar("lblSunName" & CStr(var_116)) 'String
  loc_187CD24:           If (var_250 = Ucase(var_178)) Then
  loc_187CD32:             Proc_6_17_EAAE40(var_178)
  loc_187CD4E:             Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187CD56:             Call 0.Method_arg_20 (CStr(var_178))
  loc_187CD5E:             Call 0.Method_arg_38 (Proc_6_38_E69628(CVar(var_B4.Fields.Item("DispName"))))
  loc_187CD73:           Else
  loc_187CD82:             var_178 = CVar("SunPer" & CStr(var_116)) 'String
  loc_187CD9C:             If (var_250 = Ucase(var_178)) Then
  loc_187CDAA:               Proc_6_17_EAAE40(var_178)
  loc_187CDC6:               Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187CDCE:               Call 0.Method_arg_20 (CStr(var_178))
  loc_187CDD6:               Call 0.Method_arg_38 (var_110)
  loc_187CDEB:             Else
  loc_187CDFA:               var_178 = CVar("SunAmt" & CStr(var_116)) 'String
  loc_187CE14:               If (var_250 = Ucase(var_178)) Then
  loc_187CE22:                 Proc_6_17_EAAE40(var_178)
  loc_187CE2A:                 var_120 = CStr(var_178)
  loc_187CE3E:                 Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187CE46:                 Call 0.Method_arg_20 (var_120)
  loc_187CE4E:                 Call 0.Method_arg_38 (var_114)
  loc_187CE60:               End If
  loc_187CE60:             End If
  loc_187CE60:           End If
  loc_187CE63:         Next var_240 'Integer
  loc_187CE68:       End If
  loc_187CE68:     End If
  loc_187CE6B:     var_B4.MoveNext
  loc_187CE70:     GoTo loc_187C6F5
  loc_187CE73:   End If
  loc_187CE73: End If
  loc_187CE79: var_11C = var_B8.RecordCount
  loc_187CE87: If (var_11C > 0) Then
  loc_187CE8C:   var_116 = 1
  loc_187CE92:   var_B8.MoveFirst
  loc_187CE97:   ' Referenced from: 187D222
  loc_187CEA6:   If Not(var_B8.EOF) Then
  loc_187CEBA:     Call 0.Method_arg_90 (var_148, var_11C, var_AA)
  loc_187CEC2:     Call 0.Method_arg_24 (1)
  loc_187CECE:     For var_254 =  To CInt(var_11C): var_116 = var_254 'Integer
  loc_187CEE7:       Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187CEEF:       Call 0.Method_arg_20 (var_14C)
  loc_187CEF7:       Call 0.Method_arg_30 (var_120)
  loc_187CF0D:       var_264 = Ucase(CVar(var_120)) 'Variant
  loc_187CF44:       If (var_264 = Ucase(CVar("STName" & CStr(var_116)))) Then
  loc_187CF75:         Proc_6_17_EAAE40(var_1A8)
  loc_187CF91:         Call 0.Method_arg_90 (var_1D4, CLng(var_AA), var_1D8)
  loc_187CF99:         Call 0.Method_arg_20 (CStr(var_1A8))
  loc_187CFA1:         Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TaxName")))))
  loc_187CFBE:       Else
  loc_187CFD3:         var_188 = Ucase(CVar("STPer" & CStr(var_116)))
  loc_187CFE7:         If (var_264 = var_188) Then
  loc_187D010:           Proc_6_39_E7D3A0(var_188)
  loc_187D027:           Proc_6_17_EAAE40(var_1C8, CVar(CStr(var_188) & ") 'String)
  loc_187D043:           Call 0.Method_arg_90 (var_1D4, CLng(var_AA), var_1D8)
  loc_187D04B:           Call 0.Method_arg_20 (CStr(var_1C8))
  loc_187D053:           Call 0.Method_arg_38 (CVar(var_B8.Fields.Item("TaxPer")))
  loc_187D078:         Else
  loc_187D08D:           var_188 = Ucase(CVar("STAmt" & CStr(var_116)))
  loc_187D0A1:           If (var_264 = var_188) Then
  loc_187D0CA:             Proc_6_39_E7D3A0(var_188)
  loc_187D0F5:             Proc_6_17_EAAE40(var_1F0, Format(var_188, "0.00"), 1)
  loc_187D111:             Call 0.Method_arg_90 (var_1D4, CLng(var_AA), var_1D8)
  loc_187D119:             Call 0.Method_arg_20 (CStr(var_1F0), 1)
  loc_187D121:             Call 0.Method_arg_38 (CVar(var_B8.Fields.Item("TaxAmt")))
  loc_187D142:           Else
  loc_187D157:             var_188 = Ucase(CVar("STAbleAmt" & CStr(var_116)))
  loc_187D16B:             If (var_264 = var_188) Then
  loc_187D17D:               var_148 = var_B8.Fields
  loc_187D194:               Proc_6_39_E7D3A0(var_188)
  loc_187D1A3:               var_198 = "0.00"
  loc_187D1BF:               Proc_6_17_EAAE40(var_1F0, Format(var_188, var_198), 1)
  loc_187D1C7:               var_120 = CStr(var_1F0)
  loc_187D1DB:               Call 0.Method_arg_90 (var_1D4, CLng(var_AA), var_1D8)
  loc_187D1E3:               Call 0.Method_arg_20 (var_120, 1)
  loc_187D1EB:               Call 0.Method_arg_38 (CVar(var_148.Item("TaxableAmt")))
  loc_187D209:             End If
  loc_187D209:           End If
  loc_187D209:         End If
  loc_187D209:       End If
  loc_187D20C:     Next var_254 'Integer
  loc_187D217:     var_116 = (var_116 + 1)
  loc_187D21D:     var_B8.MoveNext
  loc_187D222:     GoTo loc_187CE97
  loc_187D225:   End If
  loc_187D225: End If
  loc_187D23E: Call 0.Method_arg_64 (var_148, CVar(var_B0), var_198)
  loc_187D246: Call 0.Method_arg_2C (var_1B8)
  loc_187D254: Call 0.Method_arg_150 (var_116)
  loc_187D25F: Call 0.Method_arg_50 (var_120)
  loc_187D269: Set var_14C = Nothing
  loc_187D283: Set var_148 = MemVar_1F951E8 
  loc_187D28F: Proc_6_99_1484404(var_148, 0, var_120)
  loc_187D29A: MemVar_1F951E8 = var_148
  loc_187D2AD: Set var_A0 = Nothing
  loc_187D2B5: Set var_B0 = Nothing
  loc_187D2BD: Set var_B4 = Nothing
  loc_187D2C5: Set var_B8 = Nothing
  loc_187D2CD: Set var_BC = Nothing
  loc_187D2D0: Exit Sub
  loc_187D2D1: ' Referenced from: 187ACE4
  loc_187D2D1: Proc_6_60_E63754(&HFF)
  loc_187D2D6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2165C
  'Data Table: 5608D4
  Dim Me As Recordset15
  loc_E21643: Me.Requery -1
  loc_E21653: Me.Requery -1
  loc_E21658: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1845E18
  'Data Table: 5608D4
  Dim var_F0 As Variant
  Dim var_AC As Variant
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim unk_5608DB As Connection15
  Dim var_DC As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_124 As Variant
  Dim var_114 As Variant
  Dim var_D8 As Variant
  Dim var_134 As Variant
  Dim var_C8 As Variant
  Dim var_144 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_19C As Variant
  Dim var_1A0 As Variant
  Dim var_1B4 As Variant
  Dim var_104 As Variant
  Dim var_B0 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_610 As Double
  Dim var_254 As Variant
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim var_3A0 As Variant
  Dim var_4E8 As Variant
  Dim var_4B8 As Variant
  Dim var_200 As String
  Dim var_208 As String
  Dim var_168 As Variant
  Dim var_198 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_330 As Variant
  Dim var_3D0 As Variant
  Dim var_3E0 As Variant
  Dim var_400 As Variant
  Dim var_410 As Variant
  Dim var_420 As Variant
  Dim var_518 As Variant
  Dim var_5C0 As Variant
  Dim var_5D0 As Variant
  Dim var_E80 As Double
  Dim var_148 As MSHFlexGrid
  Dim var_634 As Variant
  Dim var_664 As Variant
  Dim var_684 As Variant
  Dim var_2DC As MSHFlexGrid
  Dim var_6B4 As Variant
  Dim var_6D4 As Variant
  Dim var_2E0 As Variant
  Dim var_704 As Variant
  Dim var_724 As Variant
  Dim var_334 As MSHFlexGrid
  Dim var_754 As Variant
  Dim var_774 As Variant
  Dim var_338 As Variant
  Dim var_E88 As Double
  Dim var_38C As MSHFlexGrid
  Dim var_5B0 As Variant
  Dim var_E90 As Double
  Dim var_390 As Variant
  Dim var_86C As Variant
  Dim var_E98 As Double
  Dim var_494 As MSHFlexGrid
  Dim var_EA0 As Double
  Dim var_57C As Variant
  Dim var_EA8 As Double
  Dim var_580 As MSHFlexGrid
  Dim var_608 As Variant
  Dim var_D38 As Variant
  Dim var_D58 As Variant
  Dim var_D6C As Variant
  Dim var_D7C As Variant
  Dim var_E10 As Variant
  Dim var_210 As String
  Dim var_224 As String
  Dim var_61C As String
  Dim var_300 As Variant
  Dim var_358 As Variant
  Dim var_3B0 As Variant
  Dim var_460 As Variant
  Dim var_5A0 As Variant
  Dim var_604 As Variant
  Dim var_AF8 As Variant
  Dim var_BD0 As Variant
  Dim var_D9C As Variant
  Dim var_88 As Recordset15
  Dim var_620 As String
  Dim var_624 As String
  Dim var_EC0 As Label
  loc_1843B64: On Error Goto loc_1845DFE
  loc_1843B94: Set var_A8 = Me.Txt
  loc_1843B9A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_AC, var_B0, "Select Count(*) From LocationMast Where Code='", var_D8, -1)
  loc_1843BBB: unk_5608DB.Execute var_E0 & var_B0 & "' And TStartDate Is Not Null And TEndDate Is Not Null", 0, var_F4
  loc_1843BC3: var_104 = var_AC.Tag.Fields
  loc_1843BCB:  = var_E0.Item()
  loc_1843BD3:  = var_F4.Value
  loc_1843BDE: Proc_6_39_E7D3A0(var_114)
  loc_1843C0D: If (var_114 > 0) Then
  loc_1843C3D:   Set var_A8 = Me.Txt
  loc_1843C43:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_AC, var_B0, "Select Count(*) From LocationMast Where Code='", var_198, -1)
  loc_1843C54:   var_B4 = var_1A0 & var_B0
  loc_1843C5B:   var_114 = CVar(var_B4 & "' And Not(Cast(") 'String
  loc_1843C69:   Set var_DC = Me.Txt
  loc_1843C6F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_E0, var_114, 0)
  loc_1843C7E:   Proc_183_7_EB17D4(var_104, CVar(var_E0), var_1B4)
  loc_1843C86:   var_134 = var_1C4 & var_104 
  loc_1843C9E:   Set var_F4 = Me.Txt
  loc_1843CA4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_148)
  loc_1843CB3:   Proc_183_7_EB17D4(var_168, CVar(var_148))
  loc_1843CC4:   var_188 = var_134 & " As DateTime) Between TStartDate And TEndDate And Cast(" & var_168 & " As DateTime) Between TStartDate And TEndDate)" 
  loc_1843CD2:   unk_5608DB.Execute CStr(var_188), var_104, 
  loc_1843CDA:    = var_AC.Tag.Fields
  loc_1843CE2:    = var_1A0.Item()
  loc_1843CEA:    = var_1B4.Value
  loc_1843CF5:   Proc_6_39_E7D3A0(var_1D4)
  loc_1843D3A:   If (var_1D4 > 0) Then
  loc_1843D43:     Call 0.Method_arg_50 (var_B4)
  loc_1843D51:     var_104 = CVar(var_B4) 'String
  loc_1843D6A:     MsgBox(CVar("Billing Period not matched with range" & vbCrLf & "defined in Terms & Conditions."), &H10, var_104, var_114, var_134)
  loc_1843D7D:     Exit Sub
  loc_1843D7E:   End If
  loc_1843D7E: End If
  loc_1843D89: Set var_A8 = Me.Txt
  loc_1843D8F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1843DB8: If (Proc_6_27_EA61EC(var_AC, "Party") = 0) Then
  loc_1843DBB:   Exit Sub
  loc_1843DBC: End If
  loc_1843DBC: Call Proc_350_46_EB9C30(var_1C4)
  loc_1843DCE: var_1F6 = Me.frFacility.Visible
  loc_1843DDC: If (var_1F6 = &HFF) Then
  loc_1843DF8:   MsgBox("One Of Transation is Unsaved", &H40, var_104, var_114, var_134)
  loc_1843E08:   Exit Sub
  loc_1843E09: End If
  loc_1843E09: var_C8 = 1
  loc_1843E12: var_124 = 1
  loc_1843E30: var_104 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1843E36: var_114 = Trim(var_104)
  loc_1843E52: If (var_114 = vbNullString) Then
  loc_1843E68:   var_D8 = "Facility Detail Required "
  loc_1843E6E:   MsgBox(var_D8, 0, var_104, var_114, var_134)
  loc_1843E91:   Me.FGrid.Row = 1
  loc_1843E9D:   Set var_A8 = Me.FGrid
  loc_1843EB2:   var_C8 = CVar(CLng("14737632")) 'Long
  loc_1843EC1:   Me.FGrid.CellBackColor = var_C8
  loc_1843EC9:   Exit Sub
  loc_1843ECA: End If
  loc_1843ECE: Set var_A8 = Me.TopCtrl1
  loc_1843ED4: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(FGrid.DispID_8001)
  loc_1843EDC: var_B0 = CStr(var_124)
  loc_1843EED: If (var_B0 = "Add") Then
  loc_1843F1D:   Set var_A8 = Me.Txt
  loc_1843F23:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, "Select Count(*) From FacilityBill Where DocID='", var_D8, -1)
  loc_1843F44:   unk_5608DB.Execute var_E0 & var_B0 & "'", 0, var_F4
  loc_1843F4C:   var_104 = var_AC.Text.Fields
  loc_1843F54:    = var_E0.Item(var_C8)
  loc_1843F5C:    = var_F4.Value
  loc_1843F89:   If (var_104 > 0) Then
  loc_1843F92:     Call Proc_350_51_10E9110(MemVar_1F95044)
  loc_1843FA5:     Set var_A8 = Me.Txt
  loc_1843FAB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1843FB3:     var_AC.Text = var_B0
  loc_1843FC2:     Exit Sub
  loc_1843FC3:   End If
  loc_1843FC6: Else
  loc_1843FE3:   var_AC = Me.Fields.Item("DocID")
  loc_1843FEB:   var_D8 = var_AC.Value
  loc_1843FF4:   var_B0 = CStr(var_D8)
  loc_1844002:   Set var_DC = Me.Txt
  loc_1844008:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_E0)
  loc_1844010:   var_E0.Text = var_B0
  loc_1844026: End If
  loc_1844028: var_8A = &HFF
  loc_1844034: unk_5608DB.BeginTrans var_1FC
  loc_1844057: Set var_A8 = Me.Txt
  loc_184405D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, "Delete From FacilityBill Where DocID='", var_D8)
  loc_1844065: -1 = var_AC.Text
  loc_184407E: unk_5608DB.Execute var_DC & var_B0 & "'", var_8A, var_B0
  loc_18440B6: Set var_A8 = Me.Txt
  loc_18440BC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, "Delete From FacilityBill1 Where DocID1='")
  loc_18440C4: var_D8 = var_AC.Text
  loc_18440CD: var_B4 = -1 & var_B0
  loc_18440DD: unk_5608DB.Execute var_DC & var_B0 & "'", var_DC, 
  loc_1844115: Set var_A8 = Me.Txt
  loc_184411B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, "Delete From FacilityBill2 Where DocID='")
  loc_1844123: var_D8 = var_AC.Text
  loc_184412C: var_B4 = -1 & var_B0
  loc_184413C: unk_5608DB.Execute var_DC & var_B0 & "'", var_DC, 
  loc_1844174: Set var_A8 = Me.Txt
  loc_184417A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, "Delete From SunTranFacility Where DocID='")
  loc_1844182: var_D8 = var_AC.Text
  loc_184418B: var_B4 = -1 & var_B0
  loc_184419B: unk_5608DB.Execute var_DC & var_B0 & "'", var_DC, 
  loc_18441D3: Set var_A8 = Me.Txt
  loc_18441D9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, "Delete From Ledger Where DocID='")
  loc_18441E1: var_D8 = var_AC.Text
  loc_18441EA: var_B4 = -1 & var_B0
  loc_18441FA: unk_5608DB.Execute var_DC & var_B0 & "'", var_DC, 
  loc_1844222: Set var_A8 = Me.Txt
  loc_1844228: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1844243: Set var_DC = Me.Txt
  loc_1844249: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_E0)
  loc_184425E: var_610 = Val(var_E0.Text)
  loc_184426C: Set var_F4 = Me.Txt
  loc_1844272: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_148)
  loc_1844281: Proc_6_7_F26918(var_104, CVar(var_148))
  loc_18442A6: Set var_1A0 = Me.Txt
  loc_18442AC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B4)
  loc_18442D4: var_298 = Me.FGrid.TextMatrix)
  loc_18442EB: Set var_2DC = Me.Txt
  loc_18442F1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2E0, var_298)
  loc_1844300: Proc_6_7_F26918(var_300, CVar(var_2E0), CVar(CLng(&H15)))
  loc_1844310: Set var_334 = Me.Txt
  loc_1844316: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_338)
  loc_1844325: Proc_6_7_F26918(var_358, CVar(var_338))
  loc_1844335: Set var_38C = Me.Txt
  loc_184433B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_390)
  loc_184434A: Proc_6_7_F26918(var_3B0, CVar(var_390))
  loc_184435A: Proc_6_8_EB1974(var_460, CVar(Proc_6_14_EF402C(1)))
  loc_1844363: Set var_494 = Me.TopCtrl1
  loc_1844369: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_610)
  loc_18443AB: Set var_57C = Me.Txt
  loc_18443B1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12))
  loc_18443CB: Proc_6_17_EAAE40(var_5B0, Trim(CVar(var_580)))
  loc_18443EB: var_B4 = "Insert Into FacilityBill(" & "Docid,VNo,VDate,VType,VPrefix,Site_Code, " & "PartyCode,LocationCode,DueDate,ForPeriod,ToPeriod,"
  loc_1844421: var_114 = CVar(var_B4 & "U_Name,U_EntDt,U_AE,LogSite_Code,Remark) " & " Values(" & "'" & var_AC.Text & "'," & CStr(var_610) & ",") 'String
  loc_184443A: var_168 = var_114 & var_104 & ",'FACL','" & CVar(Me.LblVPrefix.Caption) 
  loc_1844496: var_330 = var_168 & "','" & CVar(MemVar_1F95070) & "'," & "'" & CVar(var_1B4.Tag) & "','" & CVar(CStr(var_298)) & "'," & var_300 & "," 
  loc_18444E9: var_518 = var_330 & var_358 & "," & var_3B0 & "," & "'" & CVar(MemVar_1F950C8) & "'," & var_460 & ",'" & IIf((CStr(var_4A4) = "Add"), "A", "E") 
  loc_1844523: unk_5608DB.Execute CStr(var_518 & "','" & CVar(MemVar_1F95078) & "'," & var_5B0 & ")"), var_604, -1
  loc_18445F6: For var_614 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_614 'Integer
  loc_1844600:   var_C8 = CVar(CLng(var_92)) 'Long
  loc_1844608:   var_124 = CVar(CLng(1)) 'Long
  loc_1844644:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_184464B:     var_C8 = CVar(CLng(var_92)) 'Long
  loc_1844653:     var_124 = CVar(CLng(5)) 'Long
  loc_184465C:     Set var_A8 = Me.FGrid
  loc_1844662:     var_D8 = var_A8.TextMatrix)
  loc_1844683:     Set var_AC = Me.FGrid
  loc_184469C:     var_610 = Val(CStr(var_AC.TextMatrix)))
  loc_18446B4:     Set var_DC = Me.FGrid
  loc_18446BA:     var_114 = var_DC.TextMatrix)
  loc_18446E6:     var_E80 = Val(CStr(Right(CVar(CStr(var_114)), 8)))
  loc_18446F4:     Set var_E0 = Me.Txt
  loc_18446FA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_F4, var_E80, var_114, CVar(CLng(5)), CVar(CLng(var_92)), var_610)
  loc_1844709:     Proc_6_7_F26918(var_168, CVar(var_F4), CVar(CLng(0)), CVar(CLng(var_92)), var_D8)
  loc_1844712:     var_3D0 = CVar(CLng(var_92)) 'Long
  loc_1844729:     var_1C4 = Me.FGrid.TextMatrix)
  loc_1844735:     var_1F4 = 5
  loc_1844760:     Set var_19C = Me.LblVPrefix
  loc_1844779:     Set var_1A0 = Me.Txt
  loc_184477F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B4, var_624, var_1C4, CVar(CLng(5)))
  loc_1844787:     var_3D0 = var_1B4.Tag
  loc_1844790:     var_5D0 = CVar(CLng(var_92)) 'Long
  loc_1844798:     var_634 = CVar(CLng(8)) 'Long
  loc_18447A7:     var_3A0 = Me.FGrid.TextMatrix)
  loc_18447B7:     var_664 = CVar(CLng(var_92)) 'Long
  loc_18447BF:     var_684 = CVar(CLng(9)) 'Long
  loc_18447E8:     var_6B4 = CVar(CLng(var_92)) 'Long
  loc_18447F0:     var_6D4 = CVar(CLng(&HA)) 'Long
  loc_1844819:     var_704 = CVar(CLng(var_92)) 'Long
  loc_1844821:     var_724 = CVar(CLng(&HB)) 'Long
  loc_1844840:     var_754 = CVar(CLng(var_92)) 'Long
  loc_1844848:     var_774 = CVar(CLng(2)) 'Long
  loc_184489B:     var_E90 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_18448B3:     Set var_390 = Me.FGrid
  loc_18448B9:     var_86C = var_390.TextMatrix)
  loc_18448CC:     var_E98 = Val(CStr(var_86C))
  loc_18448FD:     var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1844915:     Set var_57C = Me.FGrid
  loc_184492E:     var_EA8 = Val(CStr(var_57C.TextMatrix)))
  loc_184495D:     Proc_6_7_F26918(var_A48, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_92)), var_EA8, CVar(CLng(&H10)), CVar(CLng(var_92)), var_EA0)
  loc_1844977:     Set var_608 = Me.FGrid
  loc_184498E:     Proc_6_7_F26918(var_AE8, CVar(CStr(var_608.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_92)), CVar(CLng(&HE)), CVar(CLng(var_92)))
  loc_184499E:     Set var_B3C = Me.Txt
  loc_18449A4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_B40, var_E98, CVar(CLng(4)))
  loc_18449C3:     Proc_6_8_EB1974(var_C10, CVar(Proc_6_14_EF402C(CVar(CLng(3)))))
  loc_18449CC:     Set var_C44 = Me.TopCtrl1
  loc_18449D2:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(var_92)))
  loc_1844A0D:     var_D38 = CVar(CLng(var_92)) 'Long
  loc_1844A15:     var_D58 = CVar(CLng(&HA)) 'Long
  loc_1844A1E:     Set var_D6C = Me.FGrid
  loc_1844A24:     var_D7C = var_D6C.TextMatrix)
  loc_1844A4B:     var_E10 = Me.FGrid.TextMatrix)
  loc_1844A6B:     var_B0 = "Insert Into FacilityBill1(" & "DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code,"
  loc_1844A79:     var_B8 = var_B0 & "PartyCode,FacilityCode,FacilityTax,RevCode,AppDate,Unit,UnitRate," & "Amount,DiscPer,DiscAmt,ForPeriod,ToPeriod,"
  loc_1844A80:     var_200 = var_B8 & "Docid1, "
  loc_1844AB3:     var_224 = var_200 & "U_Name,U_EntDt,U_AE,LogSite_Code,TaxStru,LocationCode) " & "Values(" & "'" & CStr(var_D8) & "'," & CStr(var_610)
  loc_1844ADC:     var_198 = CVar(var_224 & "," & CStr(var_E80) & ",") & var_168 & ",'" 
  loc_1844B12:     var_330 = var_198 & Trim(Mid(CVar(CStr(var_1C4)), 4, var_1F4)) & "','" & CVar(var_19C.Caption) & "','" & CVar(MemVar_1F95070) & "'," 
  loc_1844B22:     var_358 = CVar(var_624) 'String
  loc_1844B52:     var_460 = var_330 & "'" & var_358 & "','" & CVar(CStr(var_3A0)) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" 
  loc_1844B6A:     var_518 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1844B95:     var_5C0 = var_460 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & var_518 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_E90) 
  loc_1844BFA:     var_AF8 = var_5C0 & "," & vbNullString & CVar(var_E98) & "," & CVar(var_EA0) & "," & CVar(var_EA8) & "," & var_A48 & "," & var_AE8 
  loc_1844C32:     var_BD0 = var_AF8 & "," & "'" & CVar(Proc_6_38_E69628(CVar(var_B40), CVar(CLng(var_92)), var_E90)) & "'," & "'" & CVar(MemVar_1F950C8) 
  loc_1844C79:     var_D9C = var_BD0 & "'," & var_C10 & ",'" & IIf((CStr(var_C54) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "','" & CVar(CStr(var_D7C)) 
  loc_1844CA4:     unk_5608DB.Execute CStr(var_D9C & "','" & CVar(CStr(var_E10)) & "')"), var_E74, -1
  loc_1844DE0:     Set var_A8 = Me.TopCtrl1
  loc_1844DE6:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E78)
  loc_1844DFA:     Set var_AC = Me.TopCtrl1
  loc_1844E00:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr(var_E10) = "Add"))
  loc_1844E26:     If (CVar(CLng(var_92)) Or (CStr(CVar(CLng(&H15))) = "Edit")) Then
  loc_1844E2D:       var_C8 = CVar(CLng(var_92)) 'Long
  loc_1844E44:       var_D8 = Me.FGrid.TextMatrix)
  loc_1844E5E:       var_104 = CVar(CStr(var_D8)) 'String
  loc_1844E82:       Set var_AC = Me.Txt
  loc_1844E88:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_DC, var_200, var_D8, CVar(CLng(5)))
  loc_1844E90:       var_C8 = var_DC.Text
  loc_1844E9E:       Proc_6_7_F26918(var_198, CVar(var_200), var_D7C)
  loc_1844EB7:       var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1844EDB:       var_178 = CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='") & Trim(Mid(var_104, 4, 5)) & "' And VP.Date_From<=" 
  loc_1844EE2:       var_1C4 = var_178 & var_198 
  loc_1844EF9:       unk_5608DB.Execute CStr(var_1C4 & " Order By VP.Date_From DESC"), var_1F4, -1
  loc_1844F04:       Set var_88 = var_E0
  loc_1844F4E:       If (var_88.RecordCount > 0) Then
  loc_1844F77:         Proc_6_39_E7D3A0(var_104, CVar(var_88.Fields.Item("start_srl_no")), var_E0)
  loc_1844F83:         var_F0 = CVar(CLng(var_92)) 'Long
  loc_1844FC7:         If (CVar(CLng(6)) < CVar(Val(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1844FCE:           var_C8 = CVar(CLng(var_92)) 'Long
  loc_1844FD6:           var_124 = CVar(CLng(6)) 'Long
  loc_1844FF8:           var_610 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1845016:           var_104 = Me.FGrid.TextMatrix)
  loc_184506C:           Proc_6_7_F26918(var_1C4, CVar(var_88.Fields.Item("Date_From")), var_104, CVar(CLng(5)), CVar(CLng(var_92)), var_610)
  loc_184509F:           var_208 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_610) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_18450C3:           var_1D4 = CVar(var_208 & MemVar_1F95078 & "') and V_Type='") & Trim(Mid(CVar(CStr(var_104)), 4, 5)) & "' and Date_From=" & var_1C4 
  loc_18450D1:           unk_5608DB.Execute CStr(var_1D4), var_1F4, -1
  loc_1845111:         End If
  loc_1845111:       End If
  loc_1845111:     End If
  loc_1845111:   End If
  loc_1845114: Next var_614 'Integer
  loc_184513E: For var_EB0 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_9A = var_EB0 'Integer
  loc_1845148:   var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1845150:   var_124 = CVar(CLng(2)) 'Long
  loc_1845197:   Set var_AC = Me.FGCat
  loc_184519D:   var_144 = var_AC.TextMatrix)
  loc_18451A8:   var_B0 = CStr(var_144)
  loc_18451D6:   If CBool(CVar(CLng(6)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_18451E7:     Set var_A8 = Me.Txt
  loc_18451ED:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, CVar(CLng(var_9A)))
  loc_18451F5:     (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_AC.Text
  loc_18451FE:     var_C8 = CVar(CLng(var_9A)) 'Long
  loc_1845215:     var_D8 = Me.FGCat.TextMatrix)
  loc_184522D:     var_254 = CVar(CLng(1)) 'Long
  loc_1845236:     Set var_E0 = Me.FGCat
  loc_184523C:     var_104 = var_E0.TextMatrix)
  loc_184524F:     var_610 = Val(CStr(var_104))
  loc_1845280:     var_E80 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1845291:     Set var_148 = Me.Txt
  loc_1845297:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_19C, var_624, var_E80, CVar(CLng(0)), CVar(CLng(var_9A)), var_610)
  loc_184529F:     var_254 = var_19C.Text
  loc_18452AC:     var_E88 = Val(var_624)
  loc_18452BA:     Set var_1A0 = Me.Txt
  loc_18452C0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1B4, var_E88, CVar(CLng(var_9A)), var_D8)
  loc_18452CF:     Proc_6_7_F26918(var_144, CVar(var_1B4), CVar(CLng(9)))
  loc_18452D8:     var_3D0 = CVar(CLng(var_9A)) 'Long
  loc_18452E0:     var_410 = CVar(CLng(2)) 'Long
  loc_18452E9:     Set var_288 = Me.FGCat
  loc_18452FF:     var_4B8 = CVar(CLng(var_9A)) 'Long
  loc_1845307:     var_4E8 = CVar(CLng(4)) 'Long
  loc_1845329:     var_E90 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1845341:     Set var_2E0 = Me.FGCat
  loc_184535A:     var_E98 = Val(CStr(var_2E0.TextMatrix)))
  loc_184538B:     var_EA0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1845399:     Proc_6_7_F26918(var_358, MemVar_1F950EC, var_EA0, CVar(CLng(6)), CVar(CLng(var_9A)), var_E98, CVar(CLng(5)), CVar(CLng(var_9A)))
  loc_18453A2:     Set var_338 = Me.TopCtrl1
  loc_18453A8:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E90)
  loc_18453F3:     var_B4 = "Insert Into FacilityBill2(DocId,docid1,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_184542E:     var_224 = CStr(var_E80)
  loc_184544A:     var_61C = var_B4 & var_B0 & "','" & CStr(var_D8) & "'," & CStr(var_610) & "," & var_224 & ",'FACL','" & global_76 & "','"
  loc_1845451:     var_620 = var_61C & MemVar_1F95070
  loc_18454A2:     var_298 = CVar(var_620 & "'," & CStr(var_E88) & ",") & var_144 & ",'','" & CVar(CStr(var_288.TextMatrix))) & "'," & CVar(var_E90) & "," 
  loc_18454F4:     var_400 = var_298 & CVar(var_E98) & "," & CVar(var_EA0) & ",'" & CVar(MemVar_1F950C8) & "'," & var_358 & ",'" & IIf((CStr(var_3A0) = "Add"), "A", "E") 
  loc_18454FD:     var_420 = var_400 & "','N','" 
  loc_184551E:     unk_5608DB.Execute CStr(var_420 & CVar(MemVar_1F95078) & "')"), var_460, -1
  loc_18455C6:   End If
  loc_18455C9: Next var_EB0 'Integer
  loc_18455DA: Set var_A8 = Me.TxtGt
  loc_18455E0: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1F6, var_92)
  loc_18455EB: For var_EB4 =  To var_1F6: 1 = var_EB4 'Integer
  loc_18455FE:   Set var_A8 = Me.TxtGt
  loc_1845604:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_AC)
  loc_184561E:   If (var_AC.Visible = &HFF) Then
  loc_184562F:     Set var_A8 = Me.Txt
  loc_1845635:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1845650:     Set var_DC = Me.Txt
  loc_1845656:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_E0)
  loc_1845679:     Set var_F4 = Me.Txt
  loc_184567F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_148)
  loc_184568E:     Proc_6_7_F26918(var_104, CVar(var_148))
  loc_18456A1:     Set var_19C = Me.Txt
  loc_18456A7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A0)
  loc_18456C1:     Set var_1B4 = Me.LblCap
  loc_18456C7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_288)
  loc_18456EF:     Set var_2DC = Me.TxtPer
  loc_18456F5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_2E0)
  loc_184570A:     var_E80 = Val(var_2E0.Tag)
  loc_184571A:     Set var_334 = Me.LblCap
  loc_1845720:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_338, var_224)
  loc_184573A:     Set var_38C = Me.LblAt
  loc_1845740:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_390)
  loc_184575A:     Set var_494 = Me.TxtGt
  loc_1845760:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_57C)
  loc_184577A:     Set var_580 = Me.TxtPer
  loc_1845780:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_608)
  loc_1845795:     var_E88 = Val(var_608.Text)
  loc_18457A5:     Set var_B3C = Me.TxtGt
  loc_18457AB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_B40, var_61C)
  loc_18457C0:     var_E90 = Val(var_61C)
  loc_18457D0:     Set var_C44 = Me.LblDummy
  loc_18457D6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_D6C, var_620)
  loc_18457EB:     var_E98 = Val(var_620)
  loc_18457F9:     Proc_6_7_F26918(var_420, MemVar_1F950EC)
  loc_1845802:     Set var_E00 = Me.TopCtrl1
  loc_1845808:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E98)
  loc_184584A:     Set var_E78 = Me.Txt
  loc_1845850:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_EB8)
  loc_184585F:     Proc_6_7_F26918(var_518, CVar(var_EB8))
  loc_1845871:     Set var_EBC = Me.LblDummy
  loc_1845877:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_EC0)
  loc_1845898:     var_B4 = "Insert Into SunTranFacility (DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LOGSITE_CODE) Values ('" & var_AC.Text
  loc_18458A7:     var_200 = CStr(var_92)
  loc_18458E7:     var_178 = CVar(var_B4 & "'," & var_200 & ",'FACL'," & CStr(Val(var_E0.Text)) & ",") & var_104 & ",'" & CVar(var_1A0.Tag) & "','" 
  loc_1845931:     var_300 = var_178 & Trim(CVar(var_288.Tag)) & "'," & CVar(var_338.Caption) & ",'" & CVar(var_224) & "','" & CVar(var_390.Tag) & "','" 
  loc_184598A:     var_3E0 = var_300 & CVar(var_57C.Tag) & "'," & CVar(var_B40.Text) & "," & CVar(var_D6C.Caption) & "," & CVar(var_E98) & ",'" & CVar(MemVar_1F950C8) 
  loc_18459D6:     var_5A0 = var_3E0 & "'," & var_420 & ",'" & IIf((CStr(var_460) = "Add"), "A", "E") & "'," & var_518 & ",'" & CVar(var_EC0.Tag) & "','','N','" 
  loc_1845A0A:     unk_5608DB.Execute CStr(var_5A0 & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_86C, -1
  loc_1845AD8:   End If
  loc_1845ADB: Next var_EB4 'Integer
  loc_1845AE4: Set var_A8 = Me.TopCtrl1
  loc_1845AEA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1845B03: If (CStr() = "Add") Then
  loc_1845B1A:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1845B40:   Set var_A8 = Me.Txt
  loc_1845B46:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_AC, var_200, CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='FACL' And VP.Date_From<="))
  loc_1845B4E:   var_158 = var_AC.Text
  loc_1845B5C:   Proc_6_7_F26918(var_104, CVar(var_200))
  loc_1845B64:   var_134 = -1 & var_104 
  loc_1845B6D:   var_144 = CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & "'," & var_200 & ",'FACL'," & CStr(Val(var_E0.Text)) & ",") & var_104 & " Order By VP.Date_From DESC" 
  loc_1845B7B:   unk_5608DB.Execute CStr(var_144), var_DC, 
  loc_1845B86:   Set var_88 = var_DC
  loc_1845BC0:   If (var_88.RecordCount > 0) Then
  loc_1845BD1:     Set var_A8 = Me.Txt
  loc_1845BD7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_AC)
  loc_1845BDF:     var_B0 = var_AC.Text
  loc_1845BEC:     var_610 = Val(var_B0)
  loc_1845BF5:     var_C8 = "V_Type"
  loc_1845C3C:     Proc_6_7_F26918(var_158, CVar(var_88.Fields.Item("Date_From")))
  loc_1845C6F:     var_208 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_610) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1845C97:     var_210 = CStr(CVar(var_208 & MemVar_1F95078 & "') and V_Type='") & var_88.Fields.Item(var_C8).Value & "' and Date_From=" & var_158)
  loc_1845CA1:     unk_5608DB.Execute var_210, var_178, -1
  loc_1845CDB:   End If
  loc_1845CDB: End If
  loc_1845CE1: unk_5608DB.CommitTrans
  loc_1845CE8: var_8A = 0
  loc_1845CF9: Set var_A8 = Me.Txt
  loc_1845CFF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0)
  loc_1845D07: var_8A = var_AC.Text
  loc_1845D13: Call Proc_350_50_163A784(var_B0, var_19C)
  loc_1845D30: Set var_A8 = Me.Txt
  loc_1845D36: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1845D52: var_8A = 0
  loc_1845D60: Me.Requery -1
  loc_1845D8A: Me.Find "SearchCode ='" & var_AC.Text & "'", 0, 1
  loc_1845D9A: Set var_A8 = Me.TopCtrl1
  loc_1845DA0: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C8)
  loc_1845DB9: If (CStr(var_8A) = "Add") Then
  loc_1845DBC:   Call TopCtrl1_UnknownEvent_A()
  loc_1845DC1:   Exit Sub
  loc_1845DC2: End If
  loc_1845DE5: Call Proc_350_45_F5F42C(Proc_5_1_100EC1C("INI", Me), global_52)
  loc_1845DF0: Call Proc_350_42_16E7B74(var_610)
  loc_1845DFA: Set var_88 = Nothing
  loc_1845DFD: Exit Sub
  loc_1845DFE: ' Referenced from: 1843B64
  loc_1845E04: If (var_8A = &HFF) Then
  loc_1845E0D:   unk_5608DB.RollbackTrans
  loc_1845E12: End If
  loc_1845E12: Proc_6_60_E63754()
  loc_1845E17: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E1A27C
  'Data Table: 5608D4
  loc_E1A270: Me.frFacility.Visible = False
  loc_E1A278: Exit Sub
End Sub

Private Sub CmdeInvoiceJson_Click() 'F0FB6C
  'Data Table: 5608D4
  Dim var_12C As Integer
  Dim Me As Recordset15
  Dim unk_5608DB As Connection15
  Dim var_118 As Recordset15
  Dim var_11C As Fields15
  Dim var_130 As Field20
  loc_F0FAA5: Call Proc_350_65_E663B0(global_112)
  loc_F0FAB0: If (var_86 = 0) Then
  loc_F0FAB3:   Exit Sub
  loc_F0FAB4: End If
  loc_F0FAB4: Call CmdeInvoiceSql_Click()
  loc_F0FABF: var_12C = 0
  loc_F0FB1E: unk_5608DB.Execute CStr("Select Top 1 DocId From FacilityBill1 Where DocId1='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_114, -1
  loc_F0FB26: var_118 = var_118.Fields
  loc_F0FB2E: var_12C = var_11C.Item(var_11C)
  loc_F0FB36: var_130 = var_130.Value
  loc_F0FB43: Proc_96_104_1896028(CStr(var_140), var_140)
  loc_F0FB69: Exit Sub
End Sub

Private Sub CmdGeneInvoice_Click() 'F52C88
  'Data Table: 5608D4
  Dim var_130 As Integer
  Dim Me As Recordset15
  Dim unk_5608DB As Connection15
  Dim var_11C As Recordset15
  Dim var_120 As Fields15
  Dim var_134 As Field20
  loc_F52B8D: Call Proc_350_65_E663B0(global_112)
  loc_F52B98: If (var_86 = 0) Then
  loc_F52B9B:   Exit Sub
  loc_F52B9C: End If
  loc_F52BA2: var_130 = 0
  loc_F52C01: unk_5608DB.Execute CStr("Select Top 1 DocId From FacilityBill1 Where DocId1='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_118, -1
  loc_F52C09: var_11C = var_11C.Fields
  loc_F52C11: var_130 = var_120.Item(var_120)
  loc_F52C19: var_134 = var_134.Value
  loc_F52C22: var_8C = CStr(var_144)
  loc_F52C4A: Proc_348_15_E114A0(var_8C, 0)
  loc_F52C74: Proc_348_21_12A8ED8(var_8C, Me.QrImage, global_112, global_116)
  loc_F52C80: Call Proc_350_64_FABB48(global_120, var_144)
  loc_F52C85: Exit Sub
End Sub

Private Sub Form_Load() '117B114
  'Data Table: 5608D4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_AC As String
  Dim var_BC As Variant
  Dim var_A4 As String
  Dim var_16C As Variant
  loc_117AD4C: On Error Goto loc_117B10D
  loc_117AD56: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_117AD6E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_117AD89: Me.Fgrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_117AD9F: Me.frFacility.BackColor = CLng(MemVar_1F951B4)
  loc_117ADB5: Me.LblTerm.BackColor = CLng(MemVar_1F951B4)
  loc_117ADCC: Me.LblUser.Left = CDbl(13500)
  loc_117ADE3: Me.LblUser.Top = CDbl(7800)
  loc_117ADFA: Me.LblLDt.Top = CDbl(8160)
  loc_117AE11: Me.LblLDt.Left = CDbl(13500)
  loc_117AE21: If (MemVar_1F95190 = "Yes") Then
  loc_117AE30:   Me.QrImage.Visible = True
  loc_117AE44:   Me.FreInvInfo.Visible = True
  loc_117AE58:   Me.CmdeInvoiceJson.Visible = True
  loc_117AE6C:   Me.CmdGeneInvoice.Visible = True
  loc_117AE74: End If
  loc_117AE90: Me.CursorLocation = 3
  loc_117AEBA: var_BC = CVar("Select Code,Name,TaxStru From FacilityMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_117AEC4: Me.Open var_BC, CVar(MemVar_1F95044), 3
  loc_117AED8: CVarUnk
  loc_117AEDD: VerifyVarObj
  loc_117AEE3: Set var_A8 = Me.DGFacility
  loc_117AEE9: LateIdStAd
  loc_117AF13: Me.DGFacility.CursorLocation = 3
  loc_117AF36: var_AC = "Select SG.SubCode As Code,SG.Name,IsNull(C.CityName,'') CityName,IsNull(SG.GSTIN,'') GSTIN From SubGroup SG Left Join City C on SG.CityCode=C.CityCode Where (SG.LOGSITE_CODE='" & MemVar_1F95078
  loc_117AF47: Me.Open CVar(var_AC & "' or SG.LOGSITE_CODE='HO') and SG.Nature in ('Customer') Order by SG.Name"), CVar(MemVar_1F95044), 3
  loc_117AF5B: CVarUnk
  loc_117AF60: VerifyVarObj
  loc_117AF66: Set var_A8 = Me.DGParty
  loc_117AF6C: LateIdStAd
  loc_117AF96: Me.DGParty.CursorLocation = 3
  loc_117AFC0: var_BC = CVar("Select Code,Name,TStartDate,TEndDate,TTerm From locationMast Where (locationMast.LOGSITE_CODE='" & MemVar_1F95078 & "' or locationMast.LOGSITE_CODE='HO')  Order by Name") 'String
  loc_117AFDE: CVarUnk
  loc_117AFE3: VerifyVarObj
  loc_117AFEF: LateIdStAd
  loc_117B019: Me.DGLocation.CursorLocation = 3
  loc_117B029: Proc_6_7_F26918(var_BC, MemVar_1F950F4, Me.DGLocation, New, 1, -1, Me.DGLocation)
  loc_117B045: var_A4 = "Select F.Docid as SearchCode,F.DocID,F.Site_Code,F.LogSite_Code From FacilityBill F Inner Join Voucher_Type V On (F.VType= V.V_Type And F.LogSite_Code=V.LogSite_Code) Where F.VDATE>="
  loc_117B07C: var_16C = var_A4 & var_BC & " AND v.Site_Code='" & CVar(MemVar_1F95070) & "' and V.LogSite_Code='" & CVar(MemVar_1F95078) & "' And F.Site_Code='" 
  loc_117B09A: r_BC, CVar(MemVar_1F95044), 3 var_16C & CVar(MemVar_1F95070) & "' Order by Docid ", CVar(MemVar_1F95044), 3
  loc_117B0D7: Call Proc_350_45_F5F42C(Proc_5_1_100EC1C("INI", Me, New, 1, -1, New), 1, -1, Me)
  loc_117B0FA: Proc_6_23_DFC5B8(Me, 7380, 11940)
  loc_117B102: Call Proc_350_43_1436638(New, 1)
  loc_117B107: Call Proc_350_42_16E7B74(-1)
  loc_117B10C: Exit Sub
  loc_117B10D: ' Referenced from: 117AD4C
  loc_117B10D: Proc_6_60_E63754()
  loc_117B112: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29284
  'Data Table: 5608D4
  loc_E2925C: On Error Goto loc_E2927C
  loc_E29273: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2927B: Exit Sub
  loc_E2927C: ' Referenced from: E2925C
  loc_E2927C: Proc_6_60_E63754(Shift)
  loc_E29281: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECFB84
  'Data Table: 5608D4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECFAE6: Set var_88 = Me.TxtPer
  loc_ECFAEC: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ECFAFA: Proc_6_74_E23240(var_8C)
  loc_ECFB06: Call Proc_350_46_EB9C30(var_8C)
  loc_ECFB1A: Set var_88 = Me.TxtPer
  loc_ECFB20: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECFB28: var_8C.SelStart = 0
  loc_ECFB41: Set var_88 = Me.TxtPer
  loc_ECFB47: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECFB62: Set var_90 = Me.TxtPer
  loc_ECFB68: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ECFB70: var_98.SelLength = Len(var_8C.Text)
  loc_ECFB83: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5CB38
  'Data Table: 5608D4
  loc_E5CB05: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5CB0E:   Proc_6_75_E5335C(Shift)
  loc_E5CB13: End If
  loc_E5CB28: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5CB31:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E5CB36: End If
  loc_E5CB36: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E641A4
  'Data Table: 5608D4
  Dim arg_10 As Integer
  loc_E64166: Set var_88 = Me.TxtPer
  loc_E6416C: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E64187: Proc_6_42_129B55C(var_8C, arg_10, 2)
  loc_E64199: If (arg_10 = &H2D) Then
  loc_E6419E:   arg_10 = 0
  loc_E641A1: End If
  loc_E641A1: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'EA0598
  'Data Table: 5608D4
  Dim var_8C As Label
  loc_EA0520: On Error Goto loc_EA0594
  loc_EA0530: Set var_88 = Me.LblCap
  loc_EA0536: Call 0.Method_TxtPer_KeyUp0 (KeyCode, var_8C)
  loc_EA0575: If (Trim(CVar(var_8C.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_EA0578:   GoTo loc_EA0594
  loc_EA057B: End If
  loc_EA0580: var_90 = 0
  loc_EA058C: Call Proc_350_60_188498C(KeyCode)
  loc_EA0594: ' Referenced from: EA0578
  loc_EA0594: ' Referenced from: EA0520
  loc_EA0594: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4FD04
  'Data Table: 5608D4
  loc_E4FCE2: Set var_88 = Me.TxtPer
  loc_E4FCE8: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4FCF6: Proc_6_73_E23294(var_8C)
  loc_E4FD02: Exit Sub
End Sub

Private Sub TxtPer_Validate(Cancel As Boolean) 'F853A8
  'Data Table: 5608D4
  Dim var_8C As Variant
  Dim var_FC As TextBox
  loc_F85264: On Error Goto loc_F853A5
  loc_F85274: Set var_88 = Me.LblCap
  loc_F8527A: Call 0.Method_TxtPer_Validate0 (Cancel, var_8C)
  loc_F852B9: If (Trim(CVar(var_8C.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_F852C6:   If (global_92 > CDbl(0)) Then
  loc_F852D6:     Set var_88 = Me.TxtPer
  loc_F852DC:     Call 0.Method_TxtPer_Validate0 (Cancel, var_8C)
  loc_F85334:     Set var_F8 = Me.TxtGt
  loc_F8533A:     Call 0.Method_TxtPer_Validate0 (Cancel, var_FC, CStr(Format(CVar(((global_92 * Val(var_8C.Text)) / CDbl(&H64))), "0.00")))
  loc_F85342:     var_FC.Text = 1
  loc_F85365:   Else
  loc_F85372:     Set var_88 = Me.TxtGt
  loc_F85378:     Call 0.Method_TxtPer_Validate0 (Cancel, var_8C, "0.00")
  loc_F85380:     var_8C.Text = 1
  loc_F8538C:   End If
  loc_F8539D:   Call Proc_350_60_188498C(Cancel, 0)
  loc_F853A5:   ' Referenced from: F85264
  loc_F853A5: End If
  loc_F853A5: Exit Sub
End Sub

Private Sub CmdDelete_Click() 'F7F5E0
  'Data Table: 5608D4
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_B0 As Variant
  Dim var_C4 As Frame
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_F7F490: Set var_8C = Me.TopCtrl1
  loc_F7F496: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F7F4AF: If (CStr() = "Browse") Then
  loc_F7F4B2:   Exit Sub
  loc_F7F4B3: End If
  loc_F7F4D2: If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F7F4F0:   var_B0 = CVar(CLng(Val(Me.frFacility.Tag))) 'Long
  loc_F7F4F9:   Set var_C4 = Me.FGrid
  loc_F7F533:   Me.frFacility.Tag = CStr(CLng(Me.FGrid.Row))
  loc_F7F548: Else
  loc_F7F56D:   For var_C8 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_86 = var_C8 'Integer
  loc_F7F58E:     var_B0 = CVar(CLng(Val(Me.frFacility.Tag))) 'Long
  loc_F7F597:     var_D8 = CVar(CLng(var_86)) 'Long
  loc_F7F59C:     var_F8 = vbNullString
  loc_F7F5A6:     Set var_C4 = Me.FGrid
  loc_F7F5AC:     LateIdCallSt
  loc_F7F5C1:   Next var_C8 'Integer
  loc_F7F5C6: End If
  loc_F7F5CB: var_A0 = 0
  loc_F7F5D6: Call Proc_350_60_188498C(9)
  loc_F7F5DE: Exit Sub
End Sub

Private Sub CmdeInvoiceSql_Click() '1A7E2E0
  'Data Table: 5608D4
  Dim var_128 As Variant
  Dim var_12C As String
  Dim var_130 As Variant
  Dim var_134 As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_140 As Variant
  Dim var_144 As String
  Dim var_148 As Variant
  Dim var_14C As String
  Dim var_15C As Variant
  Dim var_154 As Variant
  Dim var_160 As String
  Dim unk_5608DB As Connection15
  Dim var_90 As Recordset15
  Dim var_170 As Variant
  Dim var_150 As Variant
  Dim var_180 As Variant
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_B4 As Variant
  Dim var_BC As Variant
  Dim var_C4 As Double
  Dim var_CC As Variant
  Dim var_D4 As Variant
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_FC As Variant
  Dim var_9A As Variant
  Dim var_88 As Variant
  Dim var_1F4 As Variant
  Dim var_184 As Variant
  Dim var_1F8 As Variant
  Dim var_19C As Variant
  Dim var_1EC As Variant
  Dim var_1CC As Variant
  Dim var_1FC As Variant
  Dim var_200 As Variant
  Dim var_1DC As Variant
  Dim var_220 As Variant
  Dim var_224 As Variant
  Dim var_8C As Variant
  Dim var_210 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_264 As Variant
  Dim var_274 As Variant
  Dim var_2D8 As Variant
  Dim var_340 As Variant
  Dim var_450 As Variant
  Dim var_4B8 As Variant
  Dim var_4E0 As Variant
  Dim var_568 As Variant
  Dim var_5F0 As Variant
  Dim var_638 As Variant
  Dim var_65C As Fields15
  Dim var_680 As Variant
  Dim var_6E8 As Variant
  Dim var_930 As Variant
  Dim var_C50 As Variant
  Dim var_1220 As Variant
  Dim var_14D8 As Variant
  Dim var_17B0 As Variant
  Dim var_1A88 As Variant
  Dim var_1D60 As Variant
  Dim var_2038 As Variant
  Dim var_2310 As Variant
  Dim var_92 As Integer
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_11C As Double
  Dim var_124 As Double
  Dim var_244 As Variant
  Dim var_4F0 As Integer
  Dim var_628 As Variant
  Dim var_284 As Variant
  Dim var_2E8 As Variant
  Dim var_350 As Variant
  Dim var_558 As Variant
  Dim var_5C0 As Variant
  Dim var_690 As Variant
  loc_1A7B010: On Error Goto loc_1A7E2C5
  loc_1A7B01A: var_128 = "Select F1.DocId,F1.SNo,S.Name As PartyName,S.Add1,S.Add2,S.Add3,C.CityName,ST.ShortName StateCode,ST.Name StateName,S.PIN,S.Mobile,S.Email,S.GSTIN,S.LegalName,S.TradeName,LM.Name As Location,F.Vno As PartyBillNo,F.Vdate As BillDate,F.DueDate,F.Remark,F1.VType," & "F1.Vno As FacilityBillNo,FM.Name As Facility,FM.ChargeType,F1.Unit As Qty,F1.UnitRate,F1.Amount,F1.DiscAmt,F1.AppDate,F1.ForPeriod,"
  loc_1A7B03D: var_13C = var_128 & "F1.ToPeriod,FR1.Reading As LReading,Case When '" & MemVar_1F95164 & "'<>'' Then '" & MemVar_1F95164 & "'+'/' Else '' End +F1.VType+'/'+'"
  loc_1A7B04B: var_144 = var_13C & MemVar_1F95168 & "'+'/'+Cast(F1.Vno As Varchar) As BillVou,FM.SACCode From ((((((((FacilityBill F Right Join FacilityBill1 F1 On F1.DocId1=F.Docid) Left Join "
  loc_1A7B059: var_14C = var_144 & "SubGroup S on S.SubCode=F.PartyCode) Left Join LocationMast LM on LM.Code=F1.LocationCode) Left Join " & "FacilityMast FM on FM.Code=F1.FacilityCode) Left Join City C on S.CityCode=C.CityCode) Left Join State ST on C.State=ST.Code) Left Join FMReading FR On FR.LocationCode=F1.LocationCode And FR.FacilityCode=F1.FacilityCode) "
  loc_1A7B060: var_15C = var_14C & "Left Join FMReading1 FR1 On FR1.Code=FR.Code And FR1.ForDate=dateadd(day,1,F1.ToPeriod)) where F.DocId='"
  loc_1A7B071: Set var_150 = Me.Txt
  loc_1A7B077: Call 0.Method_CmdeInvoiceSql_Click0 (CInt(5), var_154)
  loc_1A7B07F: var_158 = var_154.Text
  loc_1A7B088: var_160 = var_15C & var_158
  loc_1A7B08F: var_98 = var_160 & "'"
  loc_1A7B0BE: If (var_98 = vbNullString) Then
  loc_1A7B0C1:   Exit Sub
  loc_1A7B0C2: End If
  loc_1A7B0D8: unk_5608DB.Execute var_98, var_180, -1
  loc_1A7B0E3: Set var_88 = var_150
  loc_1A7B110: Call 0.Method_CmdeInvoiceSql_Click0 (CInt(5), var_154, var_128, "SELECT SM.Nature,ST.Amount FROM SunTranFacility AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='")
  loc_1A7B118: var_180 = var_154.Text
  loc_1A7B121: var_12C = -1 & var_128
  loc_1A7B131: unk_5608DB.Execute var_128 & "F1.ToPeriod,FR1.Reading As LReading,Case When '" & "' Order by SNo", var_184, Me.Txt
  loc_1A7B13C: Set var_90 = var_184
  loc_1A7B154: ' Referenced from: 1A7B5BB
  loc_1A7B15A: var_186 = var_90.EOF
  loc_1A7B163: If Not(var_186) Then
  loc_1A7B18E:   var_18C = Proc_6_38_E69628(CVar(var_90.Fields.Item("Nature")))
  loc_1A7B19F:   If (var_18C = "Amount") Then
  loc_1A7B1CF:     Proc_6_39_E7D3A0(var_19C, CVar(var_90.Fields.Item("Amount")))
  loc_1A7B1D7:     var_1BC = (CVar(var_B4) + var_19C)
  loc_1A7B1DC:     var_A4 = CSng(var_1BC)
  loc_1A7B1EE:   Else
  loc_1A7B1F6:     If (var_18C = "Net Amount") Then
  loc_1A7B226:       Proc_6_39_E7D3A0(var_19C, CVar(var_90.Fields.Item("Amount")))
  loc_1A7B22E:       var_1BC = (CVar(var_B4) + var_19C)
  loc_1A7B233:       var_AC = CSng(var_1BC)
  loc_1A7B245:     Else
  loc_1A7B24D:       If (var_18C = "Addition") Then
  loc_1A7B27D:         Proc_6_39_E7D3A0(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_B4))
  loc_1A7B285:         var_1BC = (var_AC + var_19C)
  loc_1A7B28A:         var_B4 = CSng(var_1BC)
  loc_1A7B29C:       Else
  loc_1A7B2A4:         If (var_18C = "Deduction") Then
  loc_1A7B2D4:           Proc_6_39_E7D3A0(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_BC))
  loc_1A7B2DC:           var_1BC = (var_B4 + var_19C)
  loc_1A7B2E1:           var_BC = CSng(var_1BC)
  loc_1A7B2F3:         Else
  loc_1A7B2FB:           If (var_18C = "Discount") Then
  loc_1A7B32B:             Proc_6_39_E7D3A0(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_C4))
  loc_1A7B333:             var_1BC = (var_BC + var_19C)
  loc_1A7B338:             var_C4 = CSng(var_1BC)
  loc_1A7B34A:           Else
  loc_1A7B352:             If Not (var_18C = "Sale Tax") Then
  loc_1A7B35D:               If (var_18C = "Luxury Tax") Then
  loc_1A7B360:               End If
  loc_1A7B38D:               Proc_6_39_E7D3A0(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_CC))
  loc_1A7B395:               var_1BC = (var_C4 + var_19C)
  loc_1A7B39A:               var_CC = CSng(var_1BC)
  loc_1A7B3AC:             Else
  loc_1A7B3B4:               If (var_18C = "Round Off") Then
  loc_1A7B3E4:                 Proc_6_39_E7D3A0(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_D4))
  loc_1A7B3EC:                 var_1BC = (var_CC + var_19C)
  loc_1A7B3F1:                 var_D4 = CSng(var_1BC)
  loc_1A7B403:               Else
  loc_1A7B40B:                 If (var_18C = "Service Charge") Then
  loc_1A7B43B:                   Proc_6_39_E7D3A0(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_DC))
  loc_1A7B443:                   var_1BC = (var_D4 + var_19C)
  loc_1A7B448:                   var_DC = CSng(var_1BC)
  loc_1A7B45A:                 Else
  loc_1A7B462:                   If (var_18C = "Service Tax") Then
  loc_1A7B492:                     Proc_6_39_E7D3A0(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_E4))
  loc_1A7B49A:                     var_1BC = (var_DC + var_19C)
  loc_1A7B49F:                     var_E4 = CSng(var_1BC)
  loc_1A7B4B1:                   Else
  loc_1A7B4B9:                     If (var_18C = "CGST") Then
  loc_1A7B4E9:                       Proc_6_39_E7D3A0(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_EC))
  loc_1A7B4F1:                       var_1BC = (var_E4 + var_19C)
  loc_1A7B4F6:                       var_EC = CSng(var_1BC)
  loc_1A7B508:                     Else
  loc_1A7B510:                       If (var_18C = "SGST") Then
  loc_1A7B540:                         Proc_6_39_E7D3A0(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_F4))
  loc_1A7B548:                         var_1BC = (var_EC + var_19C)
  loc_1A7B54D:                         var_F4 = CSng(var_1BC)
  loc_1A7B55F:                       Else
  loc_1A7B567:                         If (var_18C = "IGST") Then
  loc_1A7B56D:                           var_1AC = CVar(var_FC) 'Double
  loc_1A7B597:                           Proc_6_39_E7D3A0(var_19C, CVar(var_90.Fields.Item("Amount")), var_1AC)
  loc_1A7B59F:                           var_1BC = (var_F4 + var_19C)
  loc_1A7B5A4:                           var_FC = CSng(var_1BC)
  loc_1A7B5B3:                         End If
  loc_1A7B5B3:                       End If
  loc_1A7B5B3:                     End If
  loc_1A7B5B3:                   End If
  loc_1A7B5B3:                 End If
  loc_1A7B5B3:               End If
  loc_1A7B5B3:             End If
  loc_1A7B5B3:           End If
  loc_1A7B5B3:         End If
  loc_1A7B5B3:       End If
  loc_1A7B5B3:     End If
  loc_1A7B5B3:   End If
  loc_1A7B5B6:   var_90.MoveNext
  loc_1A7B5BB:   GoTo loc_1A7B154
  loc_1A7B5BE: End If
  loc_1A7B5E5: If (((((var_CC = CDbl(0)) And (var_E4 = CDbl(0))) And (var_EC = CDbl(0))) And (var_F4 = CDbl(0))) And (var_FC = CDbl(0))) Then
  loc_1A7B5F6:   var_170 = "This is Not a Tax Invoice"
  loc_1A7B601:   MsgBox(var_170, &H10, var_19C, var_1BC, var_1EC)
  loc_1A7B616:   Set var_88 = Nothing
  loc_1A7B61E:   Set var_90 = Nothing
  loc_1A7B621:   Exit Sub
  loc_1A7B622: End If
  loc_1A7B626: Set var_8C = New 
  loc_1A7B631: Set var_8C = Proc_96_103_1576B2C(var_8C, var_FC)
  loc_1A7B636: var_9A = &HFF
  loc_1A7B642: unk_5608DB.BeginTrans var_1F0
  loc_1A7B64D: var_1F0 = var_88.RecordCount
  loc_1A7B65B: If (var_1F0 > 0) Then
  loc_1A7B661:   var_88.MoveFirst
  loc_1A7B669:   Set var_1F4 = var_8C 
  loc_1A7B678:   var_1F4.AddNew var_170, var_1AC
  loc_1A7B6A3:   var_1F4.Fields.Item("UserGSTIN").Value = CVar(MemVar_1F95154)
  loc_1A7B6F2:   var_1F4.Fields.Item("DocId").Value = CVar(var_88.Fields.Item("DocID"))
  loc_1A7B728:   var_1F4.Fields.Item("TranDtls_TaxSch").Value = "GST"
  loc_1A7B759:   var_1F4.Fields.Item("TranDtls_SupTyp").Value = "B2B"
  loc_1A7B78A:   var_1F4.Fields.Item("TranDtls_RegRev").Value = "N"
  loc_1A7B7BB:   var_1F4.Fields.Item("TranDtls_EcmGstin").Value = vbNullString
  loc_1A7B7EC:   var_1F4.Fields.Item("TranDtls_IgstOnIntra").Value = "N"
  loc_1A7B81D:   var_1F4.Fields.Item("DocDtls_Typ").Value = "INV"
  loc_1A7B87A:   Proc_6_39_E7D3A0(var_1BC, CVar(var_88.Fields.Item("FacilityBillNo")))
  loc_1A7B8A1:   var_1FC = var_1F4.Fields
  loc_1A7B8B1:   var_1FC.Item("DocDtls_No").Value = CVar(Proc_96_43_F99D14(Proc_6_38_E69628(CVar(var_88.Fields.Item("vType")), var_9A), var_1BC))
  loc_1A7B91C:   var_1EC = Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Billdate")))), "dd/MM/yyyy")
  loc_1A7B944:   var_1F4.Fields.Item("DocDtls_Dt").Value = var_1EC
  loc_1A7B986:   var_1F4.Fields.Item("SellerDtls_Gstin").Value = CVar(MemVar_1F95154)
  loc_1A7B9B8:   var_1F4.Fields.Item("SellerDtls_LglNm").Value = CVar(MemVar_1F95188)
  loc_1A7B9EA:   var_1F4.Fields.Item("SellerDtls_TrdNm").Value = CVar(MemVar_1F9518C)
  loc_1A7BA1C:   var_1F4.Fields.Item("SellerDtls_Addr1").Value = CVar(MemVar_1F95134)
  loc_1A7BA4E:   var_1F4.Fields.Item("SellerDtls_Addr2").Value = CVar(MemVar_1F95138)
  loc_1A7BA80:   var_1F4.Fields.Item("SellerDtls_Loc").Value = CVar(MemVar_1F95184)
  loc_1A7BAB2:   var_1F4.Fields.Item("SellerDtls_Pin").Value = CVar(MemVar_1F95178)
  loc_1A7BAE4:   var_1F4.Fields.Item("SellerDtls_Stcd").Value = CVar(MemVar_1F95158)
  loc_1A7BB16:   var_1F4.Fields.Item("SellerDtls_Ph").Value = CVar(MemVar_1F9517C)
  loc_1A7BB48:   var_1F4.Fields.Item("SellerDtls_Em").Value = CVar(MemVar_1F95180)
  loc_1A7BB9F:   var_1F4.Fields.Item("BuyerDtls_Gstin").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("GSTIN")), 1))
  loc_1A7BBFF:   var_1F4.Fields.Item("BuyerDtls_LglNm").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Legalname")), 1))
  loc_1A7BC5F:   var_1F4.Fields.Item("BuyerDtls_TrdNm").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TradeName"))))
  loc_1A7BC9A:   var_1F4.Fields.Item("BuyerDtls_Pos").Value = CVar(MemVar_1F95158)
  loc_1A7BCF1:   var_1F4.Fields.Item("BuyerDtls_Addr1").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1"))))
  loc_1A7BD51:   var_1F4.Fields.Item("BuyerDtls_Addr2").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2"))))
  loc_1A7BDB1:   var_1F4.Fields.Item("BuyerDtls_Loc").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName"))))
  loc_1A7BE11:   var_1F4.Fields.Item("BuyerDtls_Pin").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Pin"))))
  loc_1A7BE71:   var_1F4.Fields.Item("BuyerDtls_Stcd").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("StateCode"))))
  loc_1A7BED1:   var_1F4.Fields.Item("BuyerDtls_Ph").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile"))))
  loc_1A7BF0E:   var_19C = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Email")))) 'String
  loc_1A7BF21:   var_184 = var_1F4.Fields
  loc_1A7BF29:   var_1F8 = var_184.Item("BuyerDtls_Em")
  loc_1A7BF31:   var_1F8.Value = var_19C
  loc_1A7BF8D:   Proc_6_17_EAAE40(var_19C, CVar(var_88.Fields.Item("DocID")), "Select IsNull(SUM(Distinct Basevalue),0) Taxable from FacilityBill2 Where Docid1=", var_1EC, -1, var_184)
  loc_1A7BFA3:   unk_5608DB.Execute CStr(var_1F8 & var_19C), 0, var_1FC
  loc_1A7BFAB:   var_210 = var_184.Fields
  loc_1A7BFB3:    = var_1F8.Item(var_A4)
  loc_1A7BFBB:    = var_1FC.Value
  loc_1A7BFE3:   var_1F4.Fields.Item("ValDtls_AssVal").Value = var_210
  loc_1A7C02E:   var_1F4.Fields.Item("ValDtls_CgstVal").Value = CVar(var_EC)
  loc_1A7C061:   var_1F4.Fields.Item("ValDtls_SgstVal").Value = CVar(var_F4)
  loc_1A7C094:   var_1F4.Fields.Item("ValDtls_IgstVal").Value = CVar(var_FC)
  loc_1A7C0C7:   var_1F4.Fields.Item("ValDtls_CesVal").Value = CVar(var_E4)
  loc_1A7C0FA:   var_1F4.Fields.Item("ValDtls_StCesVal").Value = CVar(var_CC)
  loc_1A7C12B:   var_1F4.Fields.Item("ValDtls_Discount").Value = 0
  loc_1A7C13E:   var_1AC = CVar((var_DC + var_B4)) 'Double
  loc_1A7C162:   var_1F4.Fields.Item("ValDtls_OthChrg").Value = 0
  loc_1A7C195:   var_1F4.Fields.Item("ValDtls_RndOffAmt").Value = CVar(var_D4)
  loc_1A7C1C8:   var_1F4.Fields.Item("ValDtls_TotInvVal").Value = CVar(var_AC)
  loc_1A7C1D7:   var_1AC = CVar(var_AC) 'Double
  loc_1A7C1DF:   var_170 = "ValDtls_TotInvValFc"
  loc_1A7C1FB:   var_1F4.Fields.Item(var_170).Value = var_1AC
  loc_1A7C212:   var_1F4.Update var_170, var_1AC
  loc_1A7C219:   Set var_1F4 = Nothing 
  loc_1A7C223:   var_220 = 0
  loc_1A7C27F:   unk_5608DB.Execute CStr("Select Count(*) From eInvoiceBill1 Where DocId='" & var_88.Fields.Item("DocID").Value & "' And Isnull(IRN,'')=''"), var_1EC, -1
  loc_1A7C287:   var_184 = var_184.Fields
  loc_1A7C28F:   var_220 = var_1F8.Item(var_1F8)
  loc_1A7C297:   var_1FC = var_1FC.Value
  loc_1A7C2BE:   If CBool(var_210) Then
  loc_1A7C314:     unk_5608DB.Execute CStr("Delete From eInvoiceBill1 Where DocId='" & var_88.Fields.Item("DocID").Value & "'"), var_1EC, -1
  loc_1A7C36C:     var_19C = "Delete From eInvoiceBill2 Where DocId='" & var_88.Fields.Item("DocID").Value 
  loc_1A7C383:     unk_5608DB.Execute CStr(var_19C & "'"), var_1EC, -1
  loc_1A7C39F:   End If
  loc_1A7C3B3:   var_128 = "INSERT INTO eInvoiceBill1 ([UserGSTIN],[DocId],[TranDtls_TaxSch],[TranDtls_SupTyp],[TranDtls_RegRev],[TranDtls_EcmGstin],[TranDtls_IgstOnIntra],[DocDtls_Typ],[DocDtls_No],[DocDtls_Dt]" & ",[SellerDtls_Gstin],[SellerDtls_LglNm],[SellerDtls_TrdNm],[SellerDtls_Addr1],[SellerDtls_Addr2],[SellerDtls_Loc],[SellerDtls_Pin],[SellerDtls_Stcd],[SellerDtls_Ph],[SellerDtls_Em]"
  loc_1A7C3BA:   var_12C = var_128 & ",[BuyerDtls_Gstin],[BuyerDtls_LglNm],[BuyerDtls_TrdNm],[BuyerDtls_Pos],[BuyerDtls_Addr1],[BuyerDtls_Addr2],[BuyerDtls_Loc],[BuyerDtls_Pin],[BuyerDtls_Stcd],[BuyerDtls_Ph],[BuyerDtls_Em]"
  loc_1A7C3C1:   var_130 = var_12C & ",[DispDtls_Nm],[DispDtls_Addr1],[DispDtls_Addr2],[DispDtls_Loc],[DispDtls_Pin],[DispDtls_Stcd]"
  loc_1A7C3C8:   var_134 = var_130 & ",[ShipDtls_Gstin],[ShipDtls_LglNm],[ShipDtls_TrdNm],[ShipDtls_Addr1],[ShipDtls_Addr2],[ShipDtls_Loc],[ShipDtls_Pin],[ShipDtls_Stcd]"
  loc_1A7C3CF:   var_138 = var_134 & ",[ValDtls_AssVal],[ValDtls_Cgstval],[ValDtls_Sgstval],[ValDtls_Igstval],[ValDtls_Cesval],[ValDtls_StCesVal],[ValDtls_Discount],[ValDtls_OthChrg],[ValDtls_RndOffAmt],[ValDtls_TotInvVal],[ValDtls_TotInvValFc]"
  loc_1A7C3D6:   var_13C = var_138 & ",[RefDtls_InvRm],[RefDtls_DocPerdDtls_InvStDt],[RefDtls_DocPerdDtls_InvEndDt],[RefDtls_PrecDocDtls_InvNo],[RefDtls_PrecDocDtls_InvDt],[RefDtls_PrecDocDtls_OthRefNo]"
  loc_1A7C3DD:   var_140 = var_13C & ",[RefDtls_ContrDtls_RecAdvRefr],[RefDtls_ContrDtls_RecAdvDt],[RefDtls_ContrDtls_TendRefr],[RefDtls_ContrDtls_Contrrefr],[RefDtls_ContrDtls_Extrefr],[RefDtls_ContrDtls_Projrefr],[RefDtls_ContrDtls_Porefr],[RefDtls_ContrDtls_PoRefDt]"
  loc_1A7C3E4:   var_144 = var_140 & ",[PayDtls_Nm],[PayDtls_AccDet],[PayDtls_Mode],[PayDtls_Fininsbr],[PayDtls_PayTerm],[PayDtls_PayInstr],[PayDtls_CrTrn],[PayDtls_DirDr],[PayDtls_CrDay],[PayDtls_PaidAmt],[PayDtls_Paymtdue]"
  loc_1A7C3EB:   var_148 = var_144 & ",[EwbDtls_TransId],[EwbDtls_TransName],[EwbDtls_Distance],[EwbDtls_TransDocNo],[EwbDtls_TransDocDt],[EwbDtls_VehNo],[EwbDtls_VehType],[EwbDtls_TransMode]) VALUES "
  loc_1A7C3F2:   var_1BC = CVar(var_148 & "(") 'String
  loc_1A7C3F8:   var_170 = "UserGSTIN"
  loc_1A7C404:   var_150 = var_8C.Fields
  loc_1A7C40C:   var_154 = var_150.Item(var_170)
  loc_1A7C414:   var_180 = CVar(var_154) 'Address
  loc_1A7C41B:   Proc_6_17_EAAE40(var_19C, var_180, var_1BC, var_25C0, -1)
  loc_1A7C423:   var_1EC = var_25C4 & var_19C 
  loc_1A7C427:   var_1AC = ","
  loc_1A7C42C:   var_210 = var_1EC & var_1AC 
  loc_1A7C433:   var_1CC = "DocID"
  loc_1A7C43F:   var_184 = var_8C.Fields
  loc_1A7C447:   var_1F8 = var_184.Item(var_1CC)
  loc_1A7C44F:   var_234 = CVar(var_1F8) 'Address
  loc_1A7C456:   Proc_6_17_EAAE40(var_244, var_234, var_210)
  loc_1A7C45E:   var_254 = var_184 & var_244 
  loc_1A7C462:   var_1DC = ","
  loc_1A7C467:   var_264 = var_254 & var_1DC 
  loc_1A7C46E:   var_220 = "TranDtls_TaxSch"
  loc_1A7C47A:   var_1FC = var_8C.Fields
  loc_1A7C482:   var_200 = var_1FC.Item(var_220)
  loc_1A7C48A:   var_274 = CVar(var_200) 'Address
  loc_1A7C491:   Proc_6_17_EAAE40(var_284, var_274, var_264)
  loc_1A7C4B5:   var_224 = var_8C.Fields
  loc_1A7C4C5:   var_2D8 = CVar(var_224.Item("TranDtls_SupTyp")) 'Address
  loc_1A7C4CC:   Proc_6_17_EAAE40(var_2E8, var_2D8)
  loc_1A7C507:   Proc_6_17_EAAE40(var_350, CVar(var_8C.Fields.Item("TranDtls_RegRev")))
  loc_1A7C542:   Proc_6_17_EAAE40(var_3B8, CVar(var_8C.Fields.Item("TranDtls_EcmGstin")))
  loc_1A7C57D:   Proc_6_17_EAAE40(var_420, CVar(var_8C.Fields.Item("TranDtls_IgstOnIntra")))
  loc_1A7C5B8:   Proc_6_17_EAAE40(var_488, CVar(var_8C.Fields.Item("DocDtls_Typ")))
  loc_1A7C5F3:   Proc_6_17_EAAE40(var_4F0, CVar(var_8C.Fields.Item("DocDtls_No")))
  loc_1A7C62E:   Proc_6_7_F26918(var_558, CVar(var_8C.Fields.Item("DocDtls_Dt")))
  loc_1A7C636:   var_568 = var_184 & var_284 & "," & var_2E8 & "," & var_350 & "," & var_3B8 & "," & var_420 & "," & var_488 & "," & var_4F0 & "," & var_558 
  loc_1A7C669:   Proc_6_17_EAAE40(var_5C0, CVar(var_8C.Fields.Item("SellerDtls_Gstin")))
  loc_1A7C6A4:   Proc_6_17_EAAE40(var_628, CVar(var_8C.Fields.Item("SellerDtls_LglNm")))
  loc_1A7C6AC:   var_638 = var_568 & "," & var_5C0 & "," & var_628 
  loc_1A7C6C8:   var_65C = var_8C.Fields
  loc_1A7C6DF:   Proc_6_17_EAAE40(var_690, CVar(var_65C.Item("SellerDtls_TrdNm")))
  loc_1A7C713:   var_6E8 = CVar(var_8C.Fields.Item("SellerDtls_Addr1")) 'Address
  loc_1A7C71A:   Proc_6_17_EAAE40(var_6F8, var_6E8)
  loc_1A7C755:   Proc_6_17_EAAE40(var_760, CVar(var_8C.Fields.Item("SellerDtls_Addr2")))
  loc_1A7C790:   Proc_6_17_EAAE40(var_7C8, CVar(var_8C.Fields.Item("SellerDtls_Loc")))
  loc_1A7C7CB:   Proc_6_17_EAAE40(var_830, CVar(var_8C.Fields.Item("SellerDtls_Pin")))
  loc_1A7C806:   Proc_6_17_EAAE40(var_898, CVar(var_8C.Fields.Item("SellerDtls_Stcd")))
  loc_1A7C841:   Proc_6_17_EAAE40(var_900, CVar(var_8C.Fields.Item("SellerDtls_Ph")))
  loc_1A7C852:   var_930 = var_638 & "," & var_690 & "," & var_6F8 & "," & var_760 & "," & var_7C8 & "," & var_830 & "," & var_898 & "," & var_900 & "," 
  loc_1A7C87C:   Proc_6_17_EAAE40(var_968, CVar(var_8C.Fields.Item("SellerDtls_Em")))
  loc_1A7C8B7:   Proc_6_17_EAAE40(var_9D0, CVar(var_8C.Fields.Item("BuyerDtls_Gstin")))
  loc_1A7C8F2:   Proc_6_17_EAAE40(var_A38, CVar(var_8C.Fields.Item("BuyerDtls_LglNm")))
  loc_1A7C92D:   Proc_6_17_EAAE40(var_AA0, CVar(var_8C.Fields.Item("BuyerDtls_TrdNm")))
  loc_1A7C968:   Proc_6_17_EAAE40(var_B08, CVar(var_8C.Fields.Item("BuyerDtls_Pos")))
  loc_1A7C9A3:   Proc_6_17_EAAE40(var_B70, CVar(var_8C.Fields.Item("BuyerDtls_Addr1")))
  loc_1A7C9DE:   Proc_6_17_EAAE40(var_BD8, CVar(var_8C.Fields.Item("BuyerDtls_Addr2")))
  loc_1A7CA19:   Proc_6_17_EAAE40(var_C40, CVar(var_8C.Fields.Item("BuyerDtls_Loc")))
  loc_1A7CA21:   var_C50 = var_930 & var_968 & "," & var_9D0 & "," & var_A38 & "," & var_AA0 & "," & var_B08 & "," & var_B70 & "," & var_BD8 & "," & var_C40 
  loc_1A7CA54:   Proc_6_17_EAAE40(var_CA8, CVar(var_8C.Fields.Item("BuyerDtls_Pin")))
  loc_1A7CA8F:   Proc_6_17_EAAE40(var_D10, CVar(var_8C.Fields.Item("BuyerDtls_Stcd")))
  loc_1A7CACA:   Proc_6_17_EAAE40(var_D78, CVar(var_8C.Fields.Item("BuyerDtls_Ph")))
  loc_1A7CB05:   Proc_6_17_EAAE40(var_DE0, CVar(var_8C.Fields.Item("BuyerDtls_Em")))
  loc_1A7CB40:   Proc_6_17_EAAE40(var_E48, CVar(var_8C.Fields.Item("DispDtls_Nm")))
  loc_1A7CB7B:   Proc_6_17_EAAE40(var_EB0, CVar(var_8C.Fields.Item("DispDtls_Addr1")))
  loc_1A7CBB6:   Proc_6_17_EAAE40(var_F18, CVar(var_8C.Fields.Item("DispDtls_Addr2")))
  loc_1A7CBC7:   var_F48 = var_C50 & "," & var_CA8 & "," & var_D10 & "," & var_D78 & "," & var_DE0 & "," & var_E48 & "," & var_EB0 & "," & var_F18 & "," 
  loc_1A7CBF1:   Proc_6_17_EAAE40(var_F80, CVar(var_8C.Fields.Item("DispDtls_Loc")))
  loc_1A7CC2C:   Proc_6_17_EAAE40(var_FE8, CVar(var_8C.Fields.Item("DispDtls_Pin")))
  loc_1A7CC67:   Proc_6_17_EAAE40(var_1050, CVar(var_8C.Fields.Item("DispDtls_Stcd")))
  loc_1A7CCA2:   Proc_6_17_EAAE40(var_10B8, CVar(var_8C.Fields.Item("ShipDtls_Gstin")))
  loc_1A7CCDD:   Proc_6_17_EAAE40(var_1120, CVar(var_8C.Fields.Item("ShipDtls_LglNm")))
  loc_1A7CD18:   Proc_6_17_EAAE40(var_1188, CVar(var_8C.Fields.Item("ShipDtls_TrdNm")))
  loc_1A7CD53:   Proc_6_17_EAAE40(var_11F0, CVar(var_8C.Fields.Item("ShipDtls_Addr1")))
  loc_1A7CD64:   var_1220 = var_F48 & var_F80 & "," & var_FE8 & "," & var_1050 & "," & var_10B8 & "," & var_1120 & "," & var_1188 & "," & var_11F0 & "," 
  loc_1A7CD8E:   Proc_6_17_EAAE40(var_1258, CVar(var_8C.Fields.Item("ShipDtls_Addr2")))
  loc_1A7CDC9:   Proc_6_17_EAAE40(var_12C0, CVar(var_8C.Fields.Item("ShipDtls_Loc")))
  loc_1A7CE04:   Proc_6_17_EAAE40(var_1328, CVar(var_8C.Fields.Item("ShipDtls_Pin")))
  loc_1A7CE3F:   Proc_6_17_EAAE40(var_1390, CVar(var_8C.Fields.Item("ShipDtls_Stcd")))
  loc_1A7CE7A:   Proc_6_39_E7D3A0(var_13F8, CVar(var_8C.Fields.Item("ValDtls_AssVal")))
  loc_1A7CEB5:   Proc_6_39_E7D3A0(var_1460, CVar(var_8C.Fields.Item("ValDtls_CgstVal")))
  loc_1A7CEF0:   Proc_6_39_E7D3A0(var_14C8, CVar(var_8C.Fields.Item("ValDtls_SgstVal")))
  loc_1A7CEF8:   var_14D8 = var_1220 & var_1258 & "," & var_12C0 & "," & var_1328 & "," & var_1390 & "," & var_13F8 & "," & var_1460 & "," & var_14C8 
  loc_1A7CF2B:   Proc_6_39_E7D3A0(var_1530, CVar(var_8C.Fields.Item("ValDtls_IgstVal")))
  loc_1A7CF66:   Proc_6_39_E7D3A0(var_1598, CVar(var_8C.Fields.Item("ValDtls_CesVal")))
  loc_1A7CFA1:   Proc_6_39_E7D3A0(var_1600, CVar(var_8C.Fields.Item("ValDtls_StCesVal")))
  loc_1A7CFDC:   Proc_6_39_E7D3A0(var_1668, CVar(var_8C.Fields.Item("ValDtls_Discount")))
  loc_1A7D017:   Proc_6_39_E7D3A0(var_16D0, CVar(var_8C.Fields.Item("ValDtls_OthChrg")))
  loc_1A7D052:   Proc_6_39_E7D3A0(var_1738, CVar(var_8C.Fields.Item("ValDtls_RndOffAmt")))
  loc_1A7D08D:   Proc_6_39_E7D3A0(var_17A0, CVar(var_8C.Fields.Item("ValDtls_TotInvVal")))
  loc_1A7D095:   var_17B0 = var_14D8 & "," & var_1530 & "," & var_1598 & "," & var_1600 & "," & var_1668 & "," & var_16D0 & "," & var_1738 & "," & var_17A0 
  loc_1A7D0C8:   Proc_6_39_E7D3A0(var_1808, CVar(var_8C.Fields.Item("ValDtls_TotInvValFc")))
  loc_1A7D103:   Proc_6_17_EAAE40(var_1870, CVar(var_8C.Fields.Item("RefDtls_InvRm")))
  loc_1A7D13E:   Proc_6_7_F26918(var_18D8, CVar(var_8C.Fields.Item("RefDtls_DocPerdDtls_InvStDt")))
  loc_1A7D179:   Proc_6_7_F26918(var_1940, CVar(var_8C.Fields.Item("RefDtls_DocPerdDtls_InvEndDt")))
  loc_1A7D1B4:   Proc_6_17_EAAE40(var_19A8, CVar(var_8C.Fields.Item("RefDtls_PrecDocDtls_InvNo")))
  loc_1A7D1EF:   Proc_6_7_F26918(var_1A10, CVar(var_8C.Fields.Item("RefDtls_PrecDocDtls_InvDt")))
  loc_1A7D22A:   Proc_6_17_EAAE40(var_1A78, CVar(var_8C.Fields.Item("RefDtls_PrecDocDtls_OthRefNo")))
  loc_1A7D232:   var_1A88 = var_17B0 & "," & var_1808 & "," & var_1870 & "," & var_18D8 & "," & var_1940 & "," & var_19A8 & "," & var_1A10 & "," & var_1A78 
  loc_1A7D265:   Proc_6_17_EAAE40(var_1AE0, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_RecAdvRefr")))
  loc_1A7D2A0:   Proc_6_7_F26918(var_1B48, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_RecAdvDt")))
  loc_1A7D2DB:   Proc_6_17_EAAE40(var_1BB0, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_Tendrefr")))
  loc_1A7D316:   Proc_6_17_EAAE40(var_1C18, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_Contrrefr")))
  loc_1A7D351:   Proc_6_17_EAAE40(var_1C80, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_Extrefr")))
  loc_1A7D38C:   Proc_6_17_EAAE40(var_1CE8, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_Projrefr")))
  loc_1A7D3C7:   Proc_6_17_EAAE40(var_1D50, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_Porefr")))
  loc_1A7D3CF:   var_1D60 = var_1A88 & "," & var_1AE0 & "," & var_1B48 & "," & var_1BB0 & "," & var_1C18 & "," & var_1C80 & "," & var_1CE8 & "," & var_1D50 
  loc_1A7D402:   Proc_6_7_F26918(var_1DB8, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_PoRefDt")))
  loc_1A7D43D:   Proc_6_17_EAAE40(var_1E20, CVar(var_8C.Fields.Item("PayDtls_Nm")))
  loc_1A7D478:   Proc_6_17_EAAE40(var_1E88, CVar(var_8C.Fields.Item("PayDtls_Accdet")))
  loc_1A7D4B3:   Proc_6_17_EAAE40(var_1EF0, CVar(var_8C.Fields.Item("PayDtls_Mode")))
  loc_1A7D4EE:   Proc_6_17_EAAE40(var_1F58, CVar(var_8C.Fields.Item("PayDtls_Fininsbr")))
  loc_1A7D529:   Proc_6_17_EAAE40(var_1FC0, CVar(var_8C.Fields.Item("PayDtls_Payterm")))
  loc_1A7D564:   Proc_6_17_EAAE40(var_2028, CVar(var_8C.Fields.Item("PayDtls_Payinstr")))
  loc_1A7D56C:   var_2038 = var_1D60 & "," & var_1DB8 & "," & var_1E20 & "," & var_1E88 & "," & var_1EF0 & "," & var_1F58 & "," & var_1FC0 & "," & var_2028 
  loc_1A7D59F:   Proc_6_17_EAAE40(var_2090, CVar(var_8C.Fields.Item("PayDtls_Crtrn")))
  loc_1A7D5DA:   Proc_6_17_EAAE40(var_20F8, CVar(var_8C.Fields.Item("PayDtls_Dirdr")))
  loc_1A7D615:   Proc_6_39_E7D3A0(var_2160, CVar(var_8C.Fields.Item("PayDtls_Crday")))
  loc_1A7D650:   Proc_6_39_E7D3A0(var_21C8, CVar(var_8C.Fields.Item("PayDtls_Paidamt")))
  loc_1A7D68B:   Proc_6_39_E7D3A0(var_2230, CVar(var_8C.Fields.Item("PayDtls_Paymtdue")))
  loc_1A7D6C6:   Proc_6_17_EAAE40(var_2298, CVar(var_8C.Fields.Item("EwbDtls_TransId")))
  loc_1A7D701:   Proc_6_17_EAAE40(var_2300, CVar(var_8C.Fields.Item("EwbDtls_TransName")))
  loc_1A7D709:   var_2310 = var_2038 & "," & var_2090 & "," & var_20F8 & "," & var_2160 & "," & var_21C8 & "," & var_2230 & "," & var_2298 & "," & var_2300 
  loc_1A7D73C:   Proc_6_39_E7D3A0(var_2368, CVar(var_8C.Fields.Item("EwbDtls_Distance")))
  loc_1A7D777:   Proc_6_17_EAAE40(var_23D0, CVar(var_8C.Fields.Item("EwbDtls_TransDocNo")))
  loc_1A7D7B2:   Proc_6_7_F26918(var_2438, CVar(var_8C.Fields.Item("EwbDtls_TransDocDt")))
  loc_1A7D7ED:   Proc_6_17_EAAE40(var_24A0, CVar(var_8C.Fields.Item("EwbDtls_VehNo")))
  loc_1A7D828:   Proc_6_17_EAAE40(var_2508, CVar(var_8C.Fields.Item("EwbDtls_VehType")))
  loc_1A7D863:   Proc_6_17_EAAE40(var_2570, CVar(var_8C.Fields.Item("EwbDtls_TransMode")))
  loc_1A7D882:   unk_5608DB.Execute CStr(var_2310 & "," & var_2368 & "," & var_23D0 & "," & var_2438 & "," & var_24A0 & "," & var_2508 & "," & var_2570 & ")"), var_210, 
  loc_1A7DC26:   var_92 = 1
  loc_1A7DC29:   ' Referenced from: 1A7E2B1
  loc_1A7DC38:   If Not(var_88.EOF) Then
  loc_1A7DC59:     Set var_150 = Me.Txt
  loc_1A7DC5F:     Call 0.Method_CmdeInvoiceSql_Click0 (CInt(5), var_154, var_128, "select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (FacilityBill2 left join revmast on revmast.code=FacilityBill2.Taxcode) where FacilityBill2.DocID='")
  loc_1A7DC67:     var_180 = var_154.Text
  loc_1A7DC70:     var_12C = -1 & var_128
  loc_1A7DC80:     unk_5608DB.Execute var_12C & "' group by revmast.code,TaxPer Order by TaxPer", var_184, var_92
  loc_1A7DC8B:     Set var_90 = var_184
  loc_1A7DCA6:     var_104 = CDbl(0)
  loc_1A7DCAC:     var_10C = CDbl(0)
  loc_1A7DCD5:     var_128 = "Select Q.DocId,IsNull(Sum(Q.IGST),0) IGST,IsNull(Sum(Q.CGST),0) CGST,IsNull(Sum(Q.SGST),0) SGST,IsNull(Sum(Q.TaxPer),0) TaxPer,IsNull(Sum(Q.TaxAmt),0) TaxAmt From (Select DocId,Case When S.Nature='IGST' Then " & "S2.TaxAmt End IGST,Case When S.Nature='CGST' Then S2.TaxAmt End CGST,Case When S.Nature='SGST' Then S2.TaxAmt End SGST,S2.TaxPer,S2.TaxAmt From FacilityBill2 S2 "
  loc_1A7DCDC:     var_1BC = CVar(var_128 & "Left Join RevMast R On R.Code=S2.Taxcode Left Join SundryMast S On S.Code=R.Sundry Where Docid1=") 'String
  loc_1A7DD05:     Proc_6_17_EAAE40(var_19C, CVar(var_88.Fields.Item("DocID")), var_1BC, var_264, -1, var_1FC)
  loc_1A7DD5B:     unk_5608DB.Execute CStr(CDbl(0) & var_19C & " And SNo=" & var_88.Fields.Item("SNo").Value & ")Q Group By DocId"), CDbl(0), CDbl(0)
  loc_1A7DD66:     Set var_90 = var_1FC
  loc_1A7DDA4:     If (var_90.RecordCount > 0) Then
  loc_1A7DDD2:       var_104 = CSng(var_90.Fields.Item("IGST").Value)
  loc_1A7DE0A:       var_10C = CSng(var_90.Fields.Item("CGST").Value)
  loc_1A7DE42:       var_114 = CSng(var_90.Fields.Item("SGST").Value)
  loc_1A7DE7A:       var_11C = CSng(var_90.Fields.Item("TaxPer").Value)
  loc_1A7DEB2:       var_124 = CSng(var_90.Fields.Item("TaxAmt").Value)
  loc_1A7DEBF:     End If
  loc_1A7DEE5:     Proc_6_17_EAAE40(var_19C, CVar(var_88.Fields.Item("DocID")), var_124, var_11C, var_114)
  loc_1A7DF37:     Proc_6_17_EAAE40(var_274, CVar(var_88.Fields.Item("Facility")), var_10C)
  loc_1A7DF62:     Proc_6_17_EAAE40(var_2D8, CVar(var_88.Fields.Item("SACCode")), var_104)
  loc_1A7E002:     Proc_6_39_E7D3A0(var_420, CVar(var_88.Fields.Item("DiscAmt")))
  loc_1A7E054:     Proc_6_39_E7D3A0(var_488, CVar(var_88.Fields.Item("DiscAmt")))
  loc_1A7E064:     var_4B8 = (var_88.Fields.Item("Amount").Value - var_488)
  loc_1A7E068:     var_4E0 = var_88.Fields & var_284 & "," & var_2E8 & "," & var_350 & "," & var_88.Fields.Item("Amount").Value & "," & var_420 & "," & var_488 & "," 'Variant
  loc_1A7E0CF:     Proc_6_39_E7D3A0(var_638, CVar(var_88.Fields.Item("DiscAmt")))
  loc_1A7E0E8:     var_128 = "INSERT INTO eInvoiceBill2 ([DocId],[SlNo],[PrdDesc],[IsServc],[HsnCd],[Qty],[Unit]," & "[UnitPrice],[TotAmt],[Discount],[PreTaxVal],[AssAmt],[GstRt],[IgstAmt],[CgstAmt],[SgstAmt],[TotItemVal]) "
  loc_1A7E135:     var_340 = CVar(var_128 & "VALUES (") & var_19C & "," & var_88.Fields.Item("SNo").Value & "," & var_274 & ",'Y'," & var_2D8 & "," & var_88.Fields.Item("qty").Value 
  loc_1A7E16E:     var_450 = var_340 & ",'UNT'," & var_88.Fields.Item("UnitRate").Value & "," & var_88.Fields.Item("Amount").Value & "," & var_420 & ",1," 
  loc_1A7E1C5:     var_5F0 = var_450 & IIf((var_11C <> CDbl(0)), var_4E0, 0) & "," & CVar(var_11C) & "," & CVar(var_104) & "," & CVar(var_10C) & "," & CVar(var_114) 
  loc_1A7E1D8:     var_680 = (var_88.Fields.Item("Amount").Value - var_638)
  loc_1A7E1E3:     var_690 = (CVar(var_65C.Item("SellerDtls_TrdNm")) + CVar(var_124))
  loc_1A7E1FE:     unk_5608DB.Execute CStr(var_5F0 & "," & var_690 & ")"), var_6E8, -1
  loc_1A7E2A6:     var_92 = (var_92 + 1)
  loc_1A7E2AC:     var_88.MoveNext
  loc_1A7E2B1:     GoTo loc_1A7DC29
  loc_1A7E2B4:   End If
  loc_1A7E2B4: End If
  loc_1A7E2BA: unk_5608DB.CommitTrans
  loc_1A7E2C1: var_9A = 0
  loc_1A7E2C4: Exit Sub
  loc_1A7E2C5: ' Referenced from: 1A7B010
  loc_1A7E2CB: If (var_9A = &HFF) Then
  loc_1A7E2D4:   unk_5608DB.RollbackTrans
  loc_1A7E2D9: End If
  loc_1A7E2D9: Proc_6_60_E63754(var_9A, var_92, var_65C)
  loc_1A7E2DE: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E94B28
  'Data Table: 5608D4
  Dim Me As Recordset15
  loc_E94AB6: On Error Goto loc_E94B1F
  loc_E94ABF: Me.MoveFirst
  loc_E94AE9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94B11: Proc_5_0_1107AD0(&HFF, Me, global_52)
  loc_E94B19: Call Proc_350_42_16E7B74(0)
  loc_E94B1E: Exit Sub
  loc_E94B1F: ' Referenced from: E94AB6
  loc_E94B1F: Proc_6_60_E63754(var_A0)
  loc_E94B24: Exit Sub
End Sub

Public Sub Proc_350_42_16E7B74
  'Data Table: 5608D4
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_5608DB As Connection15
  Dim var_88 As Recordset15
  Dim var_128 As Variant
  Dim var_BC As Variant
  Dim var_124 As Variant
  Dim var_13C As Variant
  Dim var_110 As Variant
  Dim var_12C As String
  Dim var_190 As Fields15
  Dim var_1E4 As String
  Dim var_8E As Integer
  Dim var_120 As Variant
  Dim var_1A4 As Variant
  loc_16E60D0: On Error Goto loc_16E7B6C
  loc_16E60EA: If (Me.RecordCount > 0) Then
  loc_16E60FA:   var_CC = "Select F.*,SubGroup.Name,LM.Name As LcName From ((FacilityBill F left join Subgroup on F.PartyCode=Subgroup.subcode) left join Locationmast LM on F.LocationCode=LM.Code) Where DocID='"
  loc_16E6143:   unk_5608DB.Execute CStr(var_CC & Me.Fields.Item("DocID").Value & "'"), var_120, -1
  loc_16E614E:   Set var_88 = var_124
  loc_16E617C:   If (var_88.RecordCount > 0) Then
  loc_16E61B8:     Set var_124 = Me.Txt
  loc_16E61BE:     Call 0.Method_Proc_350_42_16E7B740 (CInt(0), var_128)
  loc_16E61C6:     var_128.Text = CStr(var_88.Fields.Item("Name").Value)
  loc_16E6215:     Set var_124 = Me.Txt
  loc_16E621B:     Call 0.Method_Proc_350_42_16E7B740 (CInt(0), var_128)
  loc_16E6223:     var_128.Tag = CStr(var_88.Fields.Item("PartyCode").Value)
  loc_16E6275:     Set var_124 = Me.Txt
  loc_16E627B:     Call 0.Method_Proc_350_42_16E7B740 (CInt(5), var_128)
  loc_16E6283:     var_128.Text = CStr(Me.Fields.Item("DocID").Value)
  loc_16E62CF:     Set var_124 = Me.Txt
  loc_16E62D5:     Call 0.Method_Proc_350_42_16E7B740 (CInt(9), var_128)
  loc_16E62DD:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("VNo")))
  loc_16E6327:     Set var_124 = Me.Txt
  loc_16E632D:     Call 0.Method_Proc_350_42_16E7B740 (CInt(6), var_128)
  loc_16E6335:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")))
  loc_16E637F:     Set var_124 = Me.Txt
  loc_16E6385:     Call 0.Method_Proc_350_42_16E7B740 (CInt(7), var_128)
  loc_16E638D:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DueDate")))
  loc_16E63D7:     Set var_124 = Me.Txt
  loc_16E63DD:     Call 0.Method_Proc_350_42_16E7B740 (CInt(&HE), var_128)
  loc_16E63E5:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ForPeriod")))
  loc_16E642F:     Set var_124 = Me.Txt
  loc_16E6435:     Call 0.Method_Proc_350_42_16E7B740 (CInt(&HF), var_128)
  loc_16E643D:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ToPeriod")))
  loc_16E6486:     Me.LblVPrefix.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("vPrefix")))
  loc_16E64CE:     Set var_124 = Me.Txt
  loc_16E64D4:     Call 0.Method_Proc_350_42_16E7B740 (CInt(&H12), var_128)
  loc_16E64DC:     var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Remark")))
  loc_16E652A:     var_124 = var_88.Fields
  loc_16E6593:     var_18C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_16E65D8:     Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_18C)))
  loc_16E6627:     var_AC = var_88.Fields.Item("U_AE")
  loc_16E664A:     var_124 = var_88.Fields
  loc_16E6652:     var_128 = var_124.Item("U_AE")
  loc_16E666B:     var_120 = "entdt : "
  loc_16E668E:     var_14C = IIf((Proc_6_38_E69628(CVar(var_128)) = "E"), "Last Update : ", var_120)
  loc_16E66A4:     var_100 = Proc_6_38_E69628(CVar(var_AC))
  loc_16E66D2:     var_1A4 = var_88.Fields.Item("U_EntDt")
  loc_16E66F8:     Me.LblLDt.Caption = CStr(IIf((var_100 = "A"), "Created By : ", var_14C) & CVar(Proc_6_38_E69628(CVar(var_1A4))))
  loc_16E674E:     Set var_98 = Me.Txt
  loc_16E6754:     Call 0.Method_Proc_350_42_16E7B740 (CInt(0), var_AC, var_100, "Select Code,Name,TStartDate,TEndDate,TTerm From locationMast Where code In (Select LcCode From PartyLocation Where PrCode='")
  loc_16E675C:     var_BC = var_AC.Tag
  loc_16E6765:     var_12C = -1 & var_100
  loc_16E677A:     var_1E4 = Proc_6_38_E69628(CVar(var_128)) & "') And (locationMast.LOGSITE_CODE='" & MemVar_1F95078 & "' or locationMast.LOGSITE_CODE='HO')  Order by Name"
  loc_16E6783:     unk_5608DB.Execute var_1E4, var_124, 
  loc_16E6794:     Set global_64 = var_124
  loc_16E67BC:     CVarUnk
  loc_16E67C1:     VerifyVarObj
  loc_16E67C7:     Set var_98 = Me.DGLocation
  loc_16E67CD:     LateIdStAd
  loc_16E67DB:   End If
  loc_16E67EA:   Me.FGrid.Redraw = False
  loc_16E6805:   Me.FGrid.Rows = 1
  loc_16E680F:   var_8E = 1
  loc_16E681F:   var_CC = "Select F.*,FM.Name as FacilityName,LM.Name As Location From ((FacilityBill1 F Left Join FacilityMast FM On F.FacilityCode=FM.Code) Left Join LocationMast LM On F.LocationCode=LM.Code) Where F.Docid1='"
  loc_16E6868:   unk_5608DB.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_16E6873:   Set var_88 = var_124
  loc_16E68A1:   If (var_88.RecordCount > 0) Then
  loc_16E68A4:     ' Referenced from: 16E6F83
  loc_16E68B3:     If Not(var_88.EOF) Then
  loc_16E68B6:       var_A8 = vbNullString
  loc_16E68C0:       Set var_98 = Me.FGrid
  loc_16E68D5:       Set var_1EC = Me.FGrid
  loc_16E68DC:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_16E68E4:       var_EC = CVar(CLng(0)) 'Long
  loc_16E68EE:       var_BC = CVar(CStr(var_8E)) 'String
  loc_16E68F5:       LateIdCallSt
  loc_16E6904:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E690C:       var_110 = CVar(CLng(1)) 'Long
  loc_16E693C:       var_DC = CVar(CStr(var_88.Fields.Item("FacilityName").Value)) 'String
  loc_16E6943:       LateIdCallSt
  loc_16E6979:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_16E6981:       var_13C = CVar(CLng(2)) 'Long
  loc_16E69AE:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Unit")), "0.0000"))) 'String
  loc_16E69B5:       LateIdCallSt
  loc_16E69EB:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_16E69F3:       var_13C = CVar(CLng(3)) 'Long
  loc_16E6A20:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("UnitRate")), "0.00"))) 'String
  loc_16E6A27:       LateIdCallSt
  loc_16E6A5D:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_16E6A65:       var_13C = CVar(CLng(4)) 'Long
  loc_16E6A92:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_16E6A99:       LateIdCallSt
  loc_16E6AB3:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_16E6ABB:       var_EC = CVar(CLng(&HF)) 'Long
  loc_16E6AC0:       var_13C = "Y"
  loc_16E6AC9:       LateIdCallSt
  loc_16E6AF1:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_16E6AF9:       var_13C = CVar(CLng(&HE)) 'Long
  loc_16E6B26:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_16E6B2D:       LateIdCallSt
  loc_16E6B63:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_16E6B6B:       var_13C = CVar(CLng(&H10)) 'Long
  loc_16E6B98:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_16E6B9F:       LateIdCallSt
  loc_16E6BB9:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E6BC1:       var_110 = CVar(CLng(5)) 'Long
  loc_16E6BF1:       var_DC = CVar(CStr(var_88.Fields.Item("DocID").Value)) 'String
  loc_16E6BF8:       LateIdCallSt
  loc_16E6C12:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E6C1A:       var_110 = CVar(CLng(6)) 'Long
  loc_16E6C4A:       var_DC = CVar(CStr(var_88.Fields.Item("VNo").Value)) 'String
  loc_16E6C51:       LateIdCallSt
  loc_16E6C6B:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E6C73:       var_110 = CVar(CLng(7)) 'Long
  loc_16E6CA3:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_16E6CAA:       LateIdCallSt
  loc_16E6CC4:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E6CCC:       var_110 = CVar(CLng(8)) 'Long
  loc_16E6CFC:       var_DC = CVar(CStr(var_88.Fields.Item("FacilityCode").Value)) 'String
  loc_16E6D03:       LateIdCallSt
  loc_16E6D1D:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E6D25:       var_110 = CVar(CLng(9)) 'Long
  loc_16E6D55:       var_DC = CVar(CStr(var_88.Fields.Item("FacilityTax").Value)) 'String
  loc_16E6D5C:       LateIdCallSt
  loc_16E6DAB:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxStru")), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_1EC, var_DC, CVar(CLng(&HA)), CVar(CLng(var_8E)))) 'String
  loc_16E6DB2:       LateIdCallSt
  loc_16E6DFD:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("AppDate")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_1EC, var_DC, var_1EC)) 'String
  loc_16E6E04:       LateIdCallSt
  loc_16E6E4F:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ForPeriod")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_1EC, var_DC)) 'String
  loc_16E6E56:       LateIdCallSt
  loc_16E6EA1:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToPeriod")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_1EC, var_DC)) 'String
  loc_16E6EA8:       LateIdCallSt
  loc_16E6EBE:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E6EC6:       var_110 = CVar(CLng(&H14)) 'Long
  loc_16E6EF6:       var_DC = CVar(CStr(var_88.Fields.Item("Location").Value)) 'String
  loc_16E6EFD:       LateIdCallSt
  loc_16E6F17:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E6F1F:       var_110 = CVar(CLng(&H15)) 'Long
  loc_16E6F4F:       var_DC = CVar(CStr(var_88.Fields.Item("LocationCode").Value)) 'String
  loc_16E6F56:       LateIdCallSt
  loc_16E6F6E:       Set var_1EC = Nothing 
  loc_16E6F78:       var_8E = (var_8E + 1)
  loc_16E6F7E:       var_88.MoveNext
  loc_16E6F83:       GoTo loc_16E68A4
  loc_16E6F86:     End If
  loc_16E6F99:     Me.FGrid.FixedRows = 1
  loc_16E6FA1:   End If
  loc_16E6FAF:   Me.FGrid.Redraw = True
  loc_16E6FCB:   var_DC = CVar("SELECT S.SNo,S.SNo1, S.Docid1, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM FacilityBill2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_16E7004:   var_120 = var_DC & Me.Fields.Item("SearchCode").Value & "' Order By S.Docid1,S.SNo,S.SNo1" 
  loc_16E7012:   unk_5608DB.Execute CStr(var_120), var_14C, -1
  loc_16E701D:   Set var_88 = var_124
  loc_16E704C:   Me.FGCat.Rows = 1
  loc_16E7068:   If (var_88.RecordCount > 0) Then
  loc_16E706B:     ' Referenced from: 16E74A5
  loc_16E707A:     If Not(var_88.EOF) Then
  loc_16E7081:       Set var_1F0 = Me.FGCat
  loc_16E7084:       var_A8 = vbNullString
  loc_16E70AE:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E70B6:       var_110 = CVar(CLng(0)) 'Long
  loc_16E70E6:       var_FC = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_16E70ED:       LateIdCallSt
  loc_16E7120:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E7128:       var_110 = CVar(CLng(1)) 'Long
  loc_16E7158:       var_FC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_16E715F:       LateIdCallSt
  loc_16E7192:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E719A:       var_110 = CVar(CLng(9)) 'Long
  loc_16E71CA:       var_FC = CVar(CStr(var_88.Fields.Item("DocID1").Value)) 'String
  loc_16E71D1:       LateIdCallSt
  loc_16E7204:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E720C:       var_110 = CVar(CLng(2)) 'Long
  loc_16E723C:       var_FC = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_16E7243:       LateIdCallSt
  loc_16E7276:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E727E:       var_110 = CVar(CLng(3)) 'Long
  loc_16E72AE:       var_FC = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_16E72B5:       LateIdCallSt
  loc_16E72E8:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E72F0:       var_110 = CVar(CLng(4)) 'Long
  loc_16E7320:       var_FC = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_16E7327:       LateIdCallSt
  loc_16E735A:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E7362:       var_110 = CVar(CLng(5)) 'Long
  loc_16E7392:       var_FC = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_16E7399:       LateIdCallSt
  loc_16E73CC:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E73D4:       var_110 = CVar(CLng(6)) 'Long
  loc_16E7404:       var_FC = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_16E740B:       LateIdCallSt
  loc_16E7429:       Set var_124 = Me.FGCat
  loc_16E743E:       var_CC = CVar((CLng(var_124.Rows) - 1)) 'Long
  loc_16E7446:       var_110 = CVar(CLng(7)) 'Long
  loc_16E7476:       var_FC = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_16E747D:       LateIdCallSt
  loc_16E7499:       Set var_1F0 = Nothing 
  loc_16E74A0:       var_88.MoveNext
  loc_16E74A5:       GoTo loc_16E706B
  loc_16E74A8:     End If
  loc_16E74A8:   End If
  loc_16E74B5:   var_CC = "Select S.* From SunTranFacility S Where S.DocId='"
  loc_16E74F0:   var_FC = var_CC & Me.Fields.Item("SearchCode").Value & "' Order By SNo" 
  loc_16E74FE:   unk_5608DB.Execute CStr(var_FC), var_120, -1
  loc_16E7509:   Set var_88 = var_124
  loc_16E7537:   If (var_88.RecordCount > 0) Then
  loc_16E756A:     Call Proc_350_59_177E808(CDate(var_88.Fields.Item("SunAppDate").Value), var_124, var_1F0, var_FC, var_110)
  loc_16E75B2:     Set var_124 = Me.Txt
  loc_16E75B8:     Call 0.Method_Proc_350_42_16E7B740 (CInt(&H11), var_128, CStr(var_88.Fields.Item("SunAppDate").Value), var_CC)
  loc_16E75C0:     var_128.Text = var_1F0
  loc_16E75D6:     ' Referenced from: 16E7A6A
  loc_16E75E5:     If Not(var_88.EOF) Then
  loc_16E7648:       Set var_190 = Me.LblCap
  loc_16E764E:       Call 0.Method_Proc_350_42_16E7B740 (CInt(var_88.Fields.Item("SNo").Value), var_1A4, CStr(var_88.Fields.Item("SunCode").Value))
  loc_16E7656:       var_1A4.Tag = var_FC
  loc_16E76D4:       Set var_190 = Me.TxtPer
  loc_16E76DA:       Call 0.Method_Proc_350_42_16E7B740 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_16E76E2:       var_1A4.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_16E7760:       Set var_190 = Me.LblCap
  loc_16E7766:       Call 0.Method_Proc_350_42_16E7B740 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_16E776E:       var_1A4.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_16E77EC:       Set var_190 = Me.LblAt
  loc_16E77F2:       Call 0.Method_Proc_350_42_16E7B740 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_16E77FA:       var_1A4.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_16E7875:       Set var_190 = Me.TxtGt
  loc_16E787B:       Call 0.Method_Proc_350_42_16E7B740 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_16E7883:       var_1A4.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_16E78FF:       Set var_190 = Me.TxtPer
  loc_16E7905:       Call 0.Method_Proc_350_42_16E7B740 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_16E790D:       var_1A4.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_16E797D:       var_DC = "0.00"
  loc_16E79A4:       Set var_190 = Me.TxtGt
  loc_16E79AA:       Call 0.Method_Proc_350_42_16E7B740 (CInt(var_88.Fields.Item("SNo").Value), var_1A4, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_DC)))
  loc_16E79B2:       var_1A4.Text = 1
  loc_16E79F8:       Proc_6_39_E7D3A0(var_DC, CVar(var_88.Fields.Item("BaseAmount")))
  loc_16E7A36:       Set var_190 = Me.LblDummy
  loc_16E7A3C:       Call 0.Method_Proc_350_42_16E7B740 (CInt(var_88.Fields.Item("SNo").Value), var_1A4, CStr(var_DC))
  loc_16E7A44:       var_1A4.Caption = 1
  loc_16E7A65:       var_88.MoveNext
  loc_16E7A6A:       GoTo loc_16E75D6
  loc_16E7A6D:     End If
  loc_16E7A6D:   End If
  loc_16E7A73:   If (var_8E = 1) Then
  loc_16E7A89:     Me.FGrid.Rows = 1
  loc_16E7AA6:     var_DC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_16E7AAE:     Set var_AC = Me.FGrid
  loc_16E7ADD:     Me.FGrid.FixedRows = 1
  loc_16E7AE5:   End If
  loc_16E7AE8: Else
  loc_16E7AE8:   Call Proc_350_44_F5F700(FGrid.DispID_10000, var_DC)
  loc_16E7AED: End If
  loc_16E7B08: var_BC = Me.FGrid.TextMatrix)
  loc_16E7B3D: Proc_348_21_12A8ED8(CStr(var_BC), Me.QrImage, global_112, global_116, global_120)
  loc_16E7B51: Call Proc_350_64_FABB48(var_BC, CVar(CLng(5)))
  loc_16E7B56: Call Proc_350_46_EB9C30(1)
  loc_16E7B60: Set var_88 = Nothing
  loc_16E7B68: Set var_8C = Nothing
  loc_16E7B6B: Exit Sub
  loc_16E7B6C: ' Referenced from: 16E60D0
  loc_16E7B6C: Proc_6_60_E63754(var_110)
  loc_16E7B71: Exit Sub
End Sub

Public Sub Proc_350_43_1436638
  'Data Table: 5608D4
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_F4 As TextBox
  Dim var_FC As DataGrid
  Dim var_100 As TextBox
  loc_1435B57: Me.FGrid.Cols = &H16
  loc_1435B5C: var_98 = 0
  loc_1435B65: var_B8 = 0
  loc_1435B6E: var_D8 = vbNullString
  loc_1435B77: LateIdCallSt
  loc_1435B7F: var_98 = 0
  loc_1435B8E: var_B8 = CVar(CInt(1)) 'Integer
  loc_1435B95: LateIdCallSt
  loc_1435B9D: var_98 = 0
  loc_1435BA6: var_B8 = &H12C
  loc_1435BB2: LateIdCallSt
  loc_1435BBA: var_98 = 1
  loc_1435BC3: var_B8 = &H1C2
  loc_1435BCF: LateIdCallSt
  loc_1435BD7: var_98 = 0
  loc_1435BE0: var_B8 = 1
  loc_1435BE9: var_D8 = "Particulars"
  loc_1435BF2: LateIdCallSt
  loc_1435BFA: var_98 = 1
  loc_1435C09: var_B8 = CVar(CInt(1)) 'Integer
  loc_1435C10: LateIdCallSt
  loc_1435C18: var_98 = 1
  loc_1435C21: var_B8 = &HAF0
  loc_1435C2D: LateIdCallSt
  loc_1435C35: var_98 = 0
  loc_1435C3E: var_B8 = 2
  loc_1435C47: var_D8 = "Unit"
  loc_1435C50: LateIdCallSt
  loc_1435C58: var_98 = 2
  loc_1435C67: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435C6E: LateIdCallSt
  loc_1435C76: var_98 = 2
  loc_1435C85: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435C8C: LateIdCallSt
  loc_1435C94: var_98 = 2
  loc_1435C9D: var_B8 = &H4B0
  loc_1435CA9: LateIdCallSt
  loc_1435CB1: var_98 = 0
  loc_1435CBA: var_B8 = 3
  loc_1435CC3: var_D8 = "Rate"
  loc_1435CCC: LateIdCallSt
  loc_1435CD4: var_98 = 3
  loc_1435CE3: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435CEA: LateIdCallSt
  loc_1435CF2: var_98 = 3
  loc_1435D01: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435D08: LateIdCallSt
  loc_1435D10: var_98 = 3
  loc_1435D19: var_B8 = &H4B0
  loc_1435D25: LateIdCallSt
  loc_1435D2D: var_98 = 0
  loc_1435D36: var_B8 = 4
  loc_1435D3F: var_D8 = "Amount"
  loc_1435D48: LateIdCallSt
  loc_1435D50: var_98 = 4
  loc_1435D5F: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435D66: LateIdCallSt
  loc_1435D6E: var_98 = 4
  loc_1435D7D: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435D84: LateIdCallSt
  loc_1435D8C: var_98 = 4
  loc_1435D95: var_B8 = &H640
  loc_1435DA1: LateIdCallSt
  loc_1435DA9: var_98 = 0
  loc_1435DB2: var_B8 = 5
  loc_1435DBB: var_D8 = "Docid"
  loc_1435DC4: LateIdCallSt
  loc_1435DCC: var_98 = 5
  loc_1435DDB: var_B8 = CVar(CInt(1)) 'Integer
  loc_1435DE2: LateIdCallSt
  loc_1435DEA: var_98 = 5
  loc_1435DF3: var_B8 = 0
  loc_1435DFF: LateIdCallSt
  loc_1435E07: var_98 = 0
  loc_1435E10: var_B8 = 6
  loc_1435E19: var_D8 = "Bill No"
  loc_1435E22: LateIdCallSt
  loc_1435E2A: var_98 = 6
  loc_1435E39: var_B8 = CVar(CInt(1)) 'Integer
  loc_1435E40: LateIdCallSt
  loc_1435E48: var_98 = 6
  loc_1435E51: var_B8 = &H3E8
  loc_1435E5D: LateIdCallSt
  loc_1435E65: var_98 = 0
  loc_1435E6E: var_B8 = 7
  loc_1435E77: var_D8 = "Sno"
  loc_1435E80: LateIdCallSt
  loc_1435E88: var_98 = 7
  loc_1435E97: var_B8 = CVar(CInt(1)) 'Integer
  loc_1435E9E: LateIdCallSt
  loc_1435EA6: var_98 = 7
  loc_1435EAF: var_B8 = 0
  loc_1435EBB: LateIdCallSt
  loc_1435EC3: var_98 = 0
  loc_1435ECC: var_B8 = 8
  loc_1435ED5: var_D8 = "FacilityCode"
  loc_1435EDE: LateIdCallSt
  loc_1435EE6: var_98 = 8
  loc_1435EF5: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435EFC: LateIdCallSt
  loc_1435F04: var_98 = 8
  loc_1435F0D: var_B8 = 0
  loc_1435F19: LateIdCallSt
  loc_1435F21: var_98 = 0
  loc_1435F2A: var_B8 = 9
  loc_1435F33: var_D8 = "Facility/Tax"
  loc_1435F3C: LateIdCallSt
  loc_1435F44: var_98 = 9
  loc_1435F53: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435F5A: LateIdCallSt
  loc_1435F62: var_98 = 9
  loc_1435F6B: var_B8 = 0
  loc_1435F77: LateIdCallSt
  loc_1435F7F: var_98 = 0
  loc_1435F88: var_B8 = &HA
  loc_1435F91: var_D8 = "Revcode"
  loc_1435F9A: LateIdCallSt
  loc_1435FA2: var_98 = &HA
  loc_1435FB1: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435FB8: LateIdCallSt
  loc_1435FC0: var_98 = &HA
  loc_1435FC9: var_B8 = 0
  loc_1435FD5: LateIdCallSt
  loc_1435FDD: var_98 = 0
  loc_1435FE6: var_B8 = &HB
  loc_1435FEF: var_D8 = "AppDate"
  loc_1435FF8: LateIdCallSt
  loc_1436000: var_98 = &HB
  loc_143600F: var_B8 = CVar(CInt(7)) 'Integer
  loc_1436016: LateIdCallSt
  loc_143601E: var_98 = &HB
  loc_1436027: var_B8 = 0
  loc_1436033: LateIdCallSt
  loc_143603B: var_98 = 0
  loc_1436044: var_B8 = &HC
  loc_143604D: var_D8 = "ForPeriod"
  loc_1436056: LateIdCallSt
  loc_143605E: var_98 = &HC
  loc_143606D: var_B8 = CVar(CInt(7)) 'Integer
  loc_1436074: LateIdCallSt
  loc_143607C: var_98 = &HC
  loc_1436085: var_B8 = 0
  loc_1436091: LateIdCallSt
  loc_1436099: var_98 = 0
  loc_14360A2: var_B8 = &HD
  loc_14360AB: var_D8 = "ToPeriod"
  loc_14360B4: LateIdCallSt
  loc_14360BC: var_98 = &HD
  loc_14360CB: var_B8 = CVar(CInt(7)) 'Integer
  loc_14360D2: LateIdCallSt
  loc_14360DA: var_98 = &HD
  loc_14360E3: var_B8 = 0
  loc_14360EF: LateIdCallSt
  loc_14360F7: var_98 = 0
  loc_1436100: var_B8 = &HE
  loc_1436109: var_D8 = "Disc Per"
  loc_1436112: LateIdCallSt
  loc_143611A: var_98 = &HE
  loc_1436129: var_B8 = CVar(CInt(7)) 'Integer
  loc_1436130: LateIdCallSt
  loc_1436138: var_98 = &HE
  loc_1436141: var_B8 = 0
  loc_143614D: LateIdCallSt
  loc_1436155: var_98 = 0
  loc_143615E: var_B8 = &HF
  loc_1436167: var_D8 = "Discount YN"
  loc_1436170: LateIdCallSt
  loc_1436178: var_98 = &HF
  loc_1436187: var_B8 = CVar(CInt(7)) 'Integer
  loc_143618E: LateIdCallSt
  loc_1436196: var_98 = &HF
  loc_143619F: var_B8 = 0
  loc_14361AB: LateIdCallSt
  loc_14361B3: var_98 = 0
  loc_14361BC: var_B8 = &H10
  loc_14361C5: var_D8 = "Discount Amt"
  loc_14361CE: LateIdCallSt
  loc_14361D6: var_98 = &H10
  loc_14361E5: var_B8 = CVar(CInt(7)) 'Integer
  loc_14361EC: LateIdCallSt
  loc_14361F4: var_98 = &H10
  loc_14361FD: var_B8 = 0
  loc_1436209: LateIdCallSt
  loc_1436211: var_98 = 0
  loc_143621A: var_B8 = &H11
  loc_1436223: var_D8 = "S Chrg."
  loc_143622C: LateIdCallSt
  loc_1436234: var_98 = &H11
  loc_1436243: var_B8 = CVar(CInt(7)) 'Integer
  loc_143624A: LateIdCallSt
  loc_1436252: var_98 = &H11
  loc_143625B: var_B8 = 0
  loc_1436267: LateIdCallSt
  loc_143626F: var_98 = 0
  loc_1436278: var_B8 = &H12
  loc_1436281: var_D8 = "Schcharge APp"
  loc_143628A: LateIdCallSt
  loc_1436292: var_98 = &H12
  loc_14362A1: var_B8 = CVar(CInt(7)) 'Integer
  loc_14362A8: LateIdCallSt
  loc_14362B0: var_98 = &H12
  loc_14362B9: var_B8 = 0
  loc_14362C5: LateIdCallSt
  loc_14362CD: var_98 = 0
  loc_14362D6: var_B8 = &H13
  loc_14362DF: var_D8 = "Tax Amt"
  loc_14362E8: LateIdCallSt
  loc_14362F0: var_98 = &H13
  loc_14362FF: var_B8 = CVar(CInt(7)) 'Integer
  loc_1436306: LateIdCallSt
  loc_143630E: var_98 = &H13
  loc_1436317: var_B8 = 0
  loc_1436323: LateIdCallSt
  loc_143632B: var_98 = 0
  loc_1436334: var_B8 = &H14
  loc_143633D: var_D8 = "Location"
  loc_1436346: LateIdCallSt
  loc_143634E: var_98 = &H14
  loc_143635D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1436364: LateIdCallSt
  loc_143636C: var_98 = &H14
  loc_1436375: var_B8 = &HDAC
  loc_1436381: LateIdCallSt
  loc_1436389: var_98 = 0
  loc_1436392: var_B8 = &H15
  loc_143639B: var_D8 = "LocationCode"
  loc_14363A4: LateIdCallSt
  loc_14363AC: var_98 = &H15
  loc_14363BB: var_B8 = CVar(CInt(1)) 'Integer
  loc_14363C2: LateIdCallSt
  loc_14363CA: var_98 = &H15
  loc_14363D3: var_B8 = 0
  loc_14363DF: LateIdCallSt
  loc_14363E9: Set var_88 = Nothing 
  loc_14363F7: var_98 = CVar(CLng(3)) 'Long
  loc_1436408: LateIdCallSt
  loc_1436410: var_98 = &HA
  loc_143641C: Me.FGCat.Cols = var_98
  loc_1436435: Set var_F0 = Me.Txt
  loc_143643B: Call 0.Method_Proc_350_43_14366380 (CInt(0), var_F4, var_F8, Nothing, &H7D0, var_98, var_88)
  loc_1436443: var_B8 = var_F4.Left
  loc_143644B: var_98 = CVar(var_F8) 'Single
  loc_143645A: Me.DGParty.Left = var_98
  loc_1436476: Set var_FC = Me.Txt
  loc_143647C: Call 0.Method_Proc_350_43_14366380 (CInt(0), var_100, var_104, var_98, var_88)
  loc_1436484: var_B8 = var_100.Height
  loc_1436497: Set var_F0 = Me.Txt
  loc_143649D: Call 0.Method_Proc_350_43_14366380 (CInt(0), var_F4, var_F8)
  loc_14364A5: var_98 = var_F4.Top
  loc_14364B5: var_98 = CVar(((var_F8 + var_104) + CDbl(&H19))) 'Single
  loc_14364C4: Me.DGParty.Top = var_98
  loc_14364E4: Set var_F0 = Me.Txt
  loc_14364EA: Call 0.Method_Proc_350_43_14366380 (CInt(1), var_F4, var_F8)
  loc_14364F2: var_88 = var_F4.Left
  loc_1436509: Me.DGFacility.Left = CVar(var_F8)
  loc_1436525: Set var_FC = Me.Txt
  loc_143652B: Call 0.Method_Proc_350_43_14366380 (CInt(1), var_100)
  loc_1436546: Set var_F0 = Me.Txt
  loc_143654C: Call 0.Method_Proc_350_43_14366380 (CInt(1), var_F4)
  loc_1436564: var_98 = CVar(((var_F4.Top + var_100.Height) + CDbl(&H19))) 'Single
  loc_1436573: Me.DGFacility.Top = CVar(var_F4.Top)
  loc_1436593: Set var_F0 = Me.Txt
  loc_1436599: Call 0.Method_Proc_350_43_14366380 (CInt(&HB), var_F4)
  loc_14365B8: Me.DGLocation.Left = CVar(var_F4.Left)
  loc_14365D4: Set var_FC = Me.Txt
  loc_14365DA: Call 0.Method_Proc_350_43_14366380 (CInt(&HB), var_100)
  loc_14365F5: Set var_F0 = Me.Txt
  loc_14365FB: Call 0.Method_Proc_350_43_14366380 (CInt(&HB), var_F4)
  loc_1436613: var_98 = CVar(((var_F4.Top + var_100.Height) + CDbl(&H19))) 'Single
  loc_1436622: Me.DGLocation.Top = CVar(var_F4.Left)
  loc_1436634: Exit Sub
End Sub

Public Sub Proc_350_44_F5F700
  'Data Table: 5608D4
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F5F5E2: Set var_8C = Me.Txt
  loc_F5F5E8: Call 0.Method_Proc_350_44_F5F700C (var_8E, var_86)
  loc_F5F5F8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F5F60E:   Set var_8C = Me.Txt
  loc_F5F614:   Call 0.Method_Proc_350_44_F5F7000 (CInt(var_86), var_98)
  loc_F5F61C:   var_98.Text = vbNullString
  loc_F5F638:   Set var_8C = Me.Txt
  loc_F5F63E:   Call 0.Method_Proc_350_44_F5F7000 (CInt(var_86), var_98)
  loc_F5F646:   var_98.Tag = vbNullString
  loc_F5F655: Next var_92 'Byte
  loc_F5F661: global_112 = vbNullString
  loc_F5F66B: global_116 = vbNullString
  loc_F5F679: global_120 = CDate(CDbl(1))
  loc_F5F688: Me.frFacility.Visible = False
  loc_F5F6A3: Me.FGrid.Rows = 1
  loc_F5F6C0: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F5F6C8: Set var_98 = Me.FGrid
  loc_F5F6F7: Me.FGrid.FixedRows = 1
  loc_F5F6FF: Exit Sub
End Sub

Public Sub Proc_350_45_F5F42C(arg_C) 'F5F42C
  'Data Table: 5608D4
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_A8 As Variant
  Dim arg_32FF As Integer
  loc_F5F30A: Set var_8C = Me.Txt
  loc_F5F310: Call 0.Method_Proc_350_45_F5F42CC (var_8E, var_86)
  loc_F5F320: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F5F336:   Set var_8C = Me.Txt
  loc_F5F33C:   Call 0.Method_Proc_350_45_F5F42C0 (CInt(var_86), var_98)
  loc_F5F344:   var_98.Enabled = arg_C
  loc_F5F353: Next var_92 'Byte
  loc_F5F366: Set var_8C = Me.Txt
  loc_F5F36C: Call 0.Method_Proc_350_45_F5F42C0 (CInt(5), var_98)
  loc_F5F374: var_98.Enabled = False
  loc_F5F38D: Set var_8C = Me.Txt
  loc_F5F393: Call 0.Method_Proc_350_45_F5F42C0 (CInt(9), var_98)
  loc_F5F39B: var_98.Enabled = False
  loc_F5F3B5: Me.CmdeInvoiceJson.Enabled = Not(arg_C)
  loc_F5F3C5: Set var_8C = Me.CmdGeneInvoice
  loc_F5F3CB: var_8C.Enabled = Not(arg_C)
  loc_F5F3F1: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F5F406: Me.QrImage.Picture = var_8C
  loc_F5F41A: Set var_8C = Me.FreInvInfo
  loc_F5F420: var_8C.Visible = Not(arg_C)
  loc_F5F428: Exit Sub
  loc_F5F429: arg_32FF = var_8C
End Sub

Public Sub Proc_350_46_EB9C30
  'Data Table: 5608D4
  loc_EB9BA8: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_EB9BBA:   Me.DGParty.Visible = False
  loc_EB9BC2: End If
  loc_EB9BDE: If (CBool(Me.DGLocation.Visible) = &HFF) Then
  loc_EB9BF0:   Me.DGLocation.Visible = False
  loc_EB9BF8: End If
  loc_EB9C14: If (CBool(Me.DGFacility.Visible) = &HFF) Then
  loc_EB9C26:   Me.DGFacility.Visible = False
  loc_EB9C2E: End If
  loc_EB9C2E: Exit Sub
End Sub

Public Sub Proc_350_47_E4DB54
  'Data Table: 5608D4
  loc_E4DB3B: If (Me.frFacility.Visible = &HFF) Then
  loc_E4DB4A:   Me.frFacility.Visible = False
  loc_E4DB52: End If
  loc_E4DB52: Exit Sub
End Sub

Public Sub Proc_350_48_DFCD70
  'Data Table: 5608D4
  loc_DFCD6C: Exit Sub
End Sub

Public Sub Proc_350_49_1280A8C(arg_C) '1280A8C
  'Data Table: 5608D4
  Dim var_8C As Recordset15
  loc_12804B9: Set var_8C = arg_C 
  loc_12804E1: var_8C.Fields.Append "mLine", &HC8, 2
  loc_128050D: var_8C.Fields.Append "DocId", &HC8, &H15
  loc_1280539: var_8C.Fields.Append "PartyName", &HC8, &H4B
  loc_1280565: var_8C.Fields.Append "Add1", &HC8, &H32
  loc_1280591: var_8C.Fields.Append "Add2", &HC8, &H32
  loc_12805BD: var_8C.Fields.Append "Add3", &HC8, &H32
  loc_12805E9: var_8C.Fields.Append "CityName", &HC8, &H32
  loc_1280615: var_8C.Fields.Append "StateCode", &HC8, 6
  loc_1280641: var_8C.Fields.Append "StateName", &HC8, &H32
  loc_128066D: var_8C.Fields.Append "GSTIN", &HC8, &HF
  loc_1280699: var_8C.Fields.Append "Location", &HC8, &H32
  loc_12806C5: var_8C.Fields.Append "PartyBillNo", 3, &HB
  loc_12806F1: var_8C.Fields.Append "BillDate", 7, 0
  loc_128071D: var_8C.Fields.Append "DueDate", 7, 0
  loc_1280749: var_8C.Fields.Append "Remark", &HC8, &HFF
  loc_1280775: var_8C.Fields.Append "VType", &HC8, 5
  loc_12807A1: var_8C.Fields.Append "FacilityBillNo", 3, &HB
  loc_12807CD: var_8C.Fields.Append "Facility", &HC8, &H32
  loc_12807F9: var_8C.Fields.Append "ChargeType", &HC8, &HF
  loc_1280825: var_8C.Fields.Append "Unit", 5, &H13
  loc_1280851: var_8C.Fields.Append "UnitRate", 5, &H13
  loc_128087D: var_8C.Fields.Append "Amount", 5, &H13
  loc_12808A9: var_8C.Fields.Append "AppDate", 7, 0
  loc_12808D5: var_8C.Fields.Append "ForPeriod", 7, 0
  loc_1280901: var_8C.Fields.Append "ToPeriod", 7, 0
  loc_128092D: var_8C.Fields.Append "LReading", 5, &H13
  loc_1280959: var_8C.Fields.Append "BillVou", &HC8, &H1E
  loc_1280985: var_8C.Fields.Append "eInvIRN", &HC8, &H40
  loc_12809B1: var_8C.Fields.Append "eInvAckNo", &HC8, &HF
  loc_12809DD: var_8C.Fields.Append "eInvAckDt", 7, 0
  loc_1280A09: var_8C.Fields.Append "QRImage", &HCD, &H3E8
  loc_1280A35: var_8C.Fields.Append "Mark", &HC8, 1
  loc_1280A45: var_8C.CursorType = 3
  loc_1280A52: var_8C.LockType = 3
  loc_1280A71: var_8C.Open var_A0, var_B0, -1
  loc_1280A78: Set var_8C = Nothing 
  loc_1280A7F: Set var_88 = arg_C 
  loc_1280A83: Proc_350_49_1280A8C = -1
End Sub

Public Sub Proc_350_50_163A784(arg_C) '163A784
  'Data Table: 5608D4
  Dim var_8A As Integer
  Dim var_AC As String
  Dim var_B0 As String
  Dim unk_5608DB As Connection15
  Dim var_90 As Recordset15
  Dim var_D4 As Fields15
  Dim var_D0 As Variant
  Dim var_94 As Recordset15
  Dim var_F4 As Variant
  Dim var_108 As Fields15
  Dim var_110 As Fields15
  Dim var_158 As Fields15
  Dim var_16C As Variant
  Dim var_18C As TextBox
  Dim var_104 As Variant
  Dim var_1D0 As Variant
  Dim var_98 As Recordset15
  Dim var_A0 As Recordset15
  Dim var_A4 As Recordset15
  loc_1639242: var_8A = 1
  loc_1639269: unk_5608DB.Execute "Select * from FacilityBill1 where Docid1='" & arg_C & "'", var_D0, -1
  loc_1639274: Set var_90 = var_D4
  loc_1639298: If (var_90.RecordCount > 0) Then
  loc_163929B:   ' Referenced from: 16399FC
  loc_16392AA:   If Not(var_90.EOF) Then
  loc_16392CC:     var_D4 = var_90.Fields
  loc_16392E5:     var_AC = Proc_6_38_E69628(CVar(var_D4.Item("FacilityCode")), "Select Name,accode from FacilityMast where Code='", var_104, -1)
  loc_16392F9:     unk_5608DB.Execute var_108 & "Select * from FacilityBill1 where Docid1='" & arg_C & "'", var_D4, var_8A
  loc_1639304:     Set var_94 = var_108
  loc_163935A:     var_B0 = -1 & Proc_6_38_E69628(CVar(var_90.Fields.Item("DocID")), "DELETE FROM LEDGER WHERE DOCID='", var_104)
  loc_163936A:     unk_5608DB.Execute var_108 & "Select * from FacilityBill1 where Docid1='" & arg_C & "'", var_108, 
  loc_16393A5:     var_D0 = CVar(var_94.Fields.Item("Name")) 'Address
  loc_16393E8:     var_A8 = Proc_6_38_E69628(var_D0) & " Bill No : " & CStr(var_90.Fields.Item("VNo").Value)
  loc_163944D:     var_200 = var_90.Fields.Item("vType").Value
  loc_1639464:     var_110 = var_90.Fields
  loc_16394E9:     var_250 = var_94.Fields.Item("AcCode").Value
  loc_1639510:     var_264 = var_90.Fields.Item("Amount").Value
  loc_1639523:     Set var_188 = Me.Txt
  loc_1639529:     Call 0.Method_Proc_350_50_163A7840 (CInt(0), var_18C)
  loc_1639531:     var_AC = var_18C.Tag
  loc_163953A:     Set var_190 = Me.TopCtrl1
  loc_1639540:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1639572:     var_1E0 = IIf((CStr(var_D0) = "Add"), "A", "E")
  loc_163957C:     var_288 = 0
  loc_1639587:     var_284 = 0
  loc_1639592:     var_280 = 0
  loc_16395F9:     Proc_6_141_12E23F4(MemVar_1F95044, CStr(var_90.Fields.Item("DocID1").Value), var_8A, CStr(var_200), CLng(var_110.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F95070, CDate(var_90.Fields.Item("VDate").Value))
  loc_163965B:     var_8A = (var_8A + 1)
  loc_163969A:     var_104 = "Select * from Facilitybill2 where Docid1='" & var_90.Fields.Item("DocID").Value 
  loc_16396B9:     var_108 = var_90.Fields
  loc_16396DF:     unk_5608DB.Execute CStr(var_104 & "' And SNo=" & var_108.Item("SNo").Value), var_200, -1
  loc_16396EA:     Set var_94 = var_110
  loc_163970C:     ' Referenced from: 16399F1
  loc_163971B:     If Not(var_94.EOF) Then
  loc_163974D:       var_D0 = CVar(var_94.Fields.Item("TaxCode")) 'Address
  loc_1639756:       var_AC = Proc_6_38_E69628(var_D0, "Select ACcode from RevMast where Code='", var_104, -1, var_108, var_110, var_8A)
  loc_163976A:       unk_5608DB.Execute CStr(var_250) & CStr(var_104 & "' And SNo=" & var_108.Item("SNo").Value) & "'", CSng(var_264), CDbl(0)
  loc_16397A1:       var_D4 = var_90.Fields
  loc_1639874:       var_250 = var_90.Fields.Fields.Item("AcCode").Value
  loc_163989B:       var_264 = var_94.Fields.Item("TaxAmt").Value
  loc_16398AE:       Set var_188 = Me.Txt
  loc_16398B4:       Call 0.Method_Proc_350_50_163A7840 (CInt(0), var_18C, CStr(var_104 & "' And SNo=" & var_90.Fields.Item("SNo").Value))
  loc_16398BC:       var_AC = var_18C.Tag
  loc_16398C5:       Set var_190 = Me.TopCtrl1
  loc_16398CB:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A8)
  loc_16398D9:       var_1D0 = "E"
  loc_16398E4:       var_104 = "A"
  loc_16398FD:       var_1E0 = IIf((CStr(var_D0) = "Add"), var_104, var_1D0)
  loc_1639907:       var_288 = 0
  loc_1639912:       var_284 = 0
  loc_163991D:       var_280 = 0
  loc_1639984:       Proc_6_141_12E23F4(MemVar_1F95044, CStr(var_D4.Item("DocID1").Value), var_8A, CStr(var_90.Fields.Item("vType").Value), CLng(var_90.Fields.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F95070, CDate(var_90.Fields.Item("VDate").Value))
  loc_16399E6:       var_8A = (var_8A + 1)
  loc_16399EC:       var_94.MoveNext
  loc_16399F1:       GoTo loc_163970C
  loc_16399F4:     End If
  loc_16399F7:     var_90.MoveNext
  loc_16399FC:     GoTo loc_163929B
  loc_16399FF:   End If
  loc_1639A13:   var_AC = "SELECT Sum(S.Amount) AS RevAmt,max(S.SunCode) as SundryCode FROM (SunTranFacility S LEFT JOIN RevMast ON S.RevCode = RevMast.Code) Where S.SunCode='" & MemVar_1F95078
  loc_1639A31:   unk_5608DB.Execute var_AC & "NET' and DocID='" & arg_C & "' Group By S.SunCode", var_D0, -1
  loc_1639A3C:   Set var_A4 = var_D4
  loc_1639A64:   var_AC = "SELECT S.Amount AS RevAmt, S.RevCode, S.Vdate AS VDate, R.Name AS Revenue, S.SunCode AS SundryCode, R.ACCode AS ACode, R.FieldType AS FieldType, ST.CalcSign as CSign  FROM ((SunTranFacility AS S LEFT JOIN RevMast AS R ON S.RevCode = R.Code) " & "LEFT JOIN Depart AS D ON S.RestCode = D.Code) LEFT JOIN SundryType AS ST ON S.SunAppDate = ST.AppDate  AND ST.V_Type=S.Vtype  and s.SunCode=st.sundrycode  WHERE IsNull(S.RevCode,'')<>''  AND S.DocId='"
  loc_1639A7B:   unk_5608DB.Execute var_AC & arg_C & "' ORDER BY S.SNo", var_D0, -1
  loc_1639A86:   Set var_A0 = var_D4
  loc_1639AAC:   If (var_A0.RecordCount > 0) Then
  loc_1639AB2:     var_A0.MoveFirst
  loc_1639ABA:     var_90.MoveFirst
  loc_1639ABF:     ' Referenced from: 163A504
  loc_1639ACE:     If Not(var_A0.EOF) Then
  loc_1639AE0:       var_D4 = var_A0.Fields
  loc_1639AF9:       var_AC = Proc_6_38_E69628(CVar(var_D4.Item("FIELDTYPE")), var_D4, var_D4, var_8A, CStr(var_250), CSng(var_264))
  loc_1639B0A:       If (var_AC <> "T") Then
  loc_1639B33:         Proc_6_39_E7D3A0(var_104, CVar(var_A0.Fields.Item("RevAmt")), CDbl(0), var_AC)
  loc_1639B4D:         If (var_104 > 0) Then
  loc_1639B7A:           var_F4 = "-"
  loc_1639B8C:           If (var_A0.Fields.Item("CSign").Value = 0) Then
  loc_1639C74:             var_298 = var_A0.Fields.Item("ACode").Value
  loc_1639C9F:             Proc_6_39_E7D3A0(var_104, CVar(var_A0.Fields.Item("RevAmt")), var_A8)
  loc_1639CA8:             Set var_188 = Me.TopCtrl1
  loc_1639CAE:             Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(MemVar_1F950C8)
  loc_1639CE0:             var_200 = IIf((CStr(var_1D0) = "Add"), "A", "E")
  loc_1639CEA:             var_284 = 0
  loc_1639CF5:             var_280 = 0
  loc_1639D00:             var_27C = 0
  loc_1639D1A:             var_254 = vbNullString
  loc_1639D69:             Proc_6_141_12E23F4(MemVar_1F95044, CStr(var_90.Fields.Item("DocID1").Value), var_8A, CStr(var_90.Fields.Item("vType").Value), CLng(var_90.Fields.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F95070, CDate(var_90.Fields.Item("VDate").Value))
  loc_1639DC4:           Else
  loc_1639EA9:             var_298 = var_A0.Fields.Item("ACode").Value
  loc_1639ED4:             Proc_6_39_E7D3A0(var_104, CVar(var_A0.Fields.Item("RevAmt")), CStr(var_298), CDbl(0), CSng(var_104))
  loc_1639EDD:             Set var_188 = Me.TopCtrl1
  loc_1639EE3:             Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_254)
  loc_1639EFC:             var_1E0 = "A"
  loc_1639F15:             var_200 = IIf((CStr(var_1D0) = "Add"), var_1E0, "E")
  loc_1639F1F:             var_284 = 0
  loc_1639F2A:             var_280 = 0
  loc_1639F35:             var_27C = 0
  loc_1639F4F:             var_254 = vbNullString
  loc_1639F9E:             Proc_6_141_12E23F4(MemVar_1F95044, CStr(var_90.Fields.Item("DocID1").Value), var_8A, CStr(var_90.Fields.Item("vType").Value), CLng(var_90.Fields.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F95070, CDate(var_90.Fields.Item("VDate").Value))
  loc_1639FF6:           End If
  loc_1639FFC:           var_8A = (var_8A + 1)
  loc_163A002:         Else
  loc_163A028:           Proc_6_39_E7D3A0(var_104, CVar(var_A0.Fields.Item("RevAmt")), var_8A, CStr(var_298), CSng(var_104), CDbl(0))
  loc_163A042:           If (var_104 < 0) Then
  loc_163A06F:             var_F4 = "-"
  loc_163A081:             If (var_A0.Fields.Item("CSign").Value = 0) Then
  loc_163A169:               var_2A8 = var_A0.Fields.Item("ACode").Value
  loc_163A194:               Proc_6_39_E7D3A0(var_104, CVar(var_A0.Fields.Item("RevAmt")), var_254, var_A8)
  loc_163A19D:               Set var_188 = Me.TopCtrl1
  loc_163A1A3:               Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(MemVar_1F950C8)
  loc_163A1D5:               var_214 = IIf((CStr(var_1E0) = "Add"), "A", "E")
  loc_163A1DF:               var_284 = 0
  loc_163A1EA:               var_280 = 0
  loc_163A1F5:               var_27C = 0
  loc_163A20F:               var_254 = vbNullString
  loc_163A21F:               var_1D0 = Abs(var_104)
  loc_163A262:               Proc_6_141_12E23F4(MemVar_1F95044, CStr(var_90.Fields.Item("DocID1").Value), var_8A, CStr(var_90.Fields.Item("vType").Value), CLng(var_90.Fields.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F95070, CDate(var_90.Fields.Item("VDate").Value))
  loc_163A2BD:             Else
  loc_163A39A:               var_16C = var_A0.Fields.Item("ACode")
  loc_163A3A2:               var_2A8 = var_16C.Value
  loc_163A3CD:               Proc_6_39_E7D3A0(var_104, CVar(var_A0.Fields.Item("RevAmt")), CStr(var_2A8), CSng(var_1D0), CDbl(0))
  loc_163A3D6:               Set var_188 = Me.TopCtrl1
  loc_163A3DC:               Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_254)
  loc_163A3FF:               var_AC = CStr(var_1E0)
  loc_163A40E:               var_214 = IIf((var_AC = "Add"), "A", "E")
  loc_163A418:               var_284 = 0
  loc_163A423:               var_280 = 0
  loc_163A42E:               var_27C = 0
  loc_163A448:               var_254 = vbNullString
  loc_163A451:               var_1D0 = Abs(var_104)
  loc_163A49B:               Proc_6_141_12E23F4(MemVar_1F95044, CStr(var_90.Fields.Item("DocID1").Value), var_8A, CStr(var_90.Fields.Item("vType").Value), CLng(var_90.Fields.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F95070, CDate(var_90.Fields.Item("VDate").Value))
  loc_163A4F3:             End If
  loc_163A4F9:             var_8A = (var_8A + 1)
  loc_163A4FC:           End If
  loc_163A4FC:         End If
  loc_163A4FC:       End If
  loc_163A4FF:       var_A0.MoveNext
  loc_163A504:       GoTo loc_1639ABF
  loc_163A507:     End If
  loc_163A507:   End If
  loc_163A51B:   If (var_A4.RecordCount > 0) Then
  loc_163A5EF:     Set var_158 = Me.Txt
  loc_163A5F5:     Call 0.Method_Proc_350_50_163A7840 (CInt(0), var_16C, var_AC, var_8A, CStr(var_2A8), CDbl(0))
  loc_163A5FD:     CSng(var_1D0) = var_16C.Tag
  loc_163A628:     Proc_6_39_E7D3A0(var_104, CVar(var_A4.Fields.Item("RevAmt")), var_254, var_A8)
  loc_163A631:     Set var_188 = Me.TopCtrl1
  loc_163A637:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(MemVar_1F950C8)
  loc_163A669:     var_200 = IIf((CStr(var_1D0) = "Add"), "A", "E")
  loc_163A673:     var_288 = 0
  loc_163A67E:     var_284 = 0
  loc_163A689:     var_280 = 0
  loc_163A6A3:     var_278 = vbNullString
  loc_163A6F1:     Proc_6_141_12E23F4(MemVar_1F95044, CStr(var_90.Fields.Item("DocID1").Value), var_8A, CStr(var_90.Fields.Item("vType").Value), CLng(var_90.Fields.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F95070, CDate(var_90.Fields.Item("VDate").Value))
  loc_163A74D:     var_8A = (var_8A + 1)
  loc_163A750:   End If
  loc_163A750: End If
  loc_163A755: Set var_A4 = Nothing
  loc_163A75D: Set var_A0 = Nothing
  loc_163A765: Set var_94 = Nothing
  loc_163A76D: Set var_90 = Nothing
  loc_163A775: Set var_98 = Nothing
  loc_163A77D: Set var_9C = Nothing
  loc_163A780: Exit Sub
End Sub

Public Sub Proc_350_51_10E9110
  'Data Table: 5608D4
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
  loc_10E8E35: var_90 = "FACL"
  loc_10E8E4C: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10E8E7D: Set var_A8 = Me.Txt
  loc_10E8E83: Call 0.Method_Proc_350_51_10E91100 (CInt(6), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E8E92: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_10E8E9A: var_EC = -1 & var_CC 
  loc_10E8EAE: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E8EB9: Set var_8C = var_134
  loc_10E8EF5: If (var_8C.RecordCount > 0) Then
  loc_10E8F34:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_10E8F37:     GoTo loc_10E8FC4
  loc_10E8F3A:   End If
  loc_10E8F6B:   global_76 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E8F96:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E8FAB:   var_CC = (var_AC.Value + 1)
  loc_10E8FB3:   global_80 = CInt(var_CC)
  loc_10E8FC4:   ' Referenced from: 10E8F37
  loc_10E8FC4: End If
  loc_10E8FEF: var_BC = Space((5 - Len(var_90)))
  loc_10E8FF7: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_10E9004: var_EC = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(global_76))
  loc_10E9018: var_10C = Space((5 - Len(global_76)))
  loc_10E9020: var_130 = (var_EC + var_EC & " Order By VP.Date_From DESC")
  loc_10E9039: var_14C = Space((8 - Len(CStr(global_80))))
  loc_10E9041: var_15C = (var_130 + var_14C)
  loc_10E9050: var_17C = (var_15C + CVar(CStr(global_80)))
  loc_10E905B: global_68 = CStr(var_17C)
  loc_10E9091: Me.LblVPrefix.Caption = global_76
  loc_10E90AA: Set var_A8 = Me.Txt
  loc_10E90B0: Call 0.Method_Proc_350_51_10E91100 (CInt(5), var_AC)
  loc_10E90B8: var_AC.Text = global_68
  loc_10E90DA: Set var_A8 = Me.Txt
  loc_10E90E0: Call 0.Method_Proc_350_51_10E91100 (CInt(9), var_AC)
  loc_10E90E8: var_AC.Text = CStr(global_80)
  loc_10E90FD: var_88 = global_68
  loc_10E9105: Set var_8C = Nothing
  loc_10E9108: Proc_350_51_10E9110 = global_80
  loc_10E910E: If  Then Exit Sub
  loc_10E910E: End If
End Sub

Public Sub Proc_350_52_1126420
  'Data Table: 5608D4
  Dim var_94 As Variant
  Dim var_9C As String
  Dim unk_5608DB As Connection15
  Dim var_B0 As Variant
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_C0 As Variant
  Dim var_98 As String
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_DC As Variant
  Dim var_130 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_1B8 As Variant
  Dim var_188 As Variant
  loc_112610E: Set var_90 = Me.Txt
  loc_1126114: Call 0.Method_Proc_350_52_11264200 (CInt(1), var_94, var_98, "Select ShortName from FacilityMast where Code='")
  loc_112611C: var_C0 = var_94.Tag
  loc_1126125: var_9C = -1 & var_98
  loc_1126135: unk_5608DB.Execute var_9C & "'", var_C4, 
  loc_112616F: var_94 = var_C4.Fields.Item("ShortName")
  loc_1126180: var_8C = Proc_6_38_E69628(CVar(var_94))
  loc_112619D: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_11261CE: Set var_90 = Me.Txt
  loc_11261D4: Call 0.Method_Proc_350_52_11264200 (CInt(6), var_94, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_8C & "' And VP.Date_From<="))
  loc_11261E3: Proc_6_7_F26918(var_DC, CVar(var_94), var_130)
  loc_11261EB: var_FC = -1 & var_DC 
  loc_11261FF: Me.Txt.Execute CStr(var_FC & " Order By VP.Date_From DESC"), var_C4, 
  loc_112620A: Set var_88 = var_C4
  loc_1126246: If (var_88.RecordCount > 0) Then
  loc_1126285:   If (var_88.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1126288:     GoTo loc_1126315
  loc_112628B:   End If
  loc_11262BC:   global_76 = CStr(var_88.Fields.Item("Prefix").Value)
  loc_11262FC:   var_DC = (var_88.Fields.Item("start_srl_no").Value + 1)
  loc_1126304:   global_80 = CInt(var_DC)
  loc_1126315:   ' Referenced from: 1126288
  loc_1126315: End If
  loc_112631A: var_120 = CVar(CLng(arg_14)) 'Long
  loc_1126352: var_C0 = Space((5 - Len(var_8C)))
  loc_112635A: var_EC = (CVar(CVar(CLng(5)) & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_8C) + var_88.Fields.Item("start_srl_no").Value)
  loc_1126367: var_FC = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_8C & "' And VP.Date_From<=") + CVar(global_76))
  loc_112637B: var_10C = Space((5 - Len(global_76)))
  loc_1126383: var_130 = (var_FC + var_FC & " Order By VP.Date_From DESC")
  loc_112639C: var_148 = Space((8 - Len(CStr(global_80))))
  loc_11263A4: var_158 = (var_130 + var_148)
  loc_11263B3: var_178 = (var_158 + CVar(CStr(global_80)))
  loc_11263B8: var_1B8 = CVar(CStr(var_178)) 'String
  loc_11263BF: LateIdCallSt
  loc_11263EE: var_B0 = CVar(CLng(arg_14)) 'Long
  loc_11263F6: var_188 = CVar(CLng(6)) 'Long
  loc_1126403: var_C0 = CVar(CStr(global_80)) 'String
  loc_112640A: LateIdCallSt
  loc_112641A: Set var_88 = Nothing
  loc_112641D: Exit Sub
End Sub

Public Sub Proc_350_53_1249954(arg_C, arg_10) '1249954
  'Data Table: 5608D4
  Dim var_94 As String
  Dim var_98 As String
  Dim var_A8 As String
  Dim var_E4 As Variant
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim unk_5608DB As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_B0 As Variant
  Dim var_144 As TextBox
  Dim var_13C As Label
  Dim var_90 As Recordset15
  loc_1249458: var_94 = "Select LocationFacility.*,FacilityMast.ChargeType,FacilityMast.ChargeUnit,FacilityMast.MeterReading from LocationFacility inner join FacilityMast on (locationFacility.fccode=FacilityMast.Code) where fccode='" & arg_C
  loc_124947B: var_A8 = var_94 & "' and lccode='" & arg_10 & "' and appdate in (select top 1 Appdate from LocationFacility where Fccode='" & arg_C & "' and lccode='"
  loc_1249497: Set var_B0 = Me.Txt
  loc_124949D: Call 0.Method_Proc_350_53_12499540 (CInt(6), var_B4, CVar(var_A8 & arg_10 & "' and appdate<="))
  loc_12494AC: Proc_6_7_F26918(var_D4, CVar(var_B4), var_138)
  loc_12494B4: var_F4 = -1 & var_D4 
  loc_12494CB: unk_5608DB.Execute CStr(var_F4 & " order by appdate desc)"), var_13C, 
  loc_12494D6: Set var_88 = var_13C
  loc_1249516: If (var_88.RecordCount > 0) Then
  loc_1249553:   Set var_B0 = Me.Txt
  loc_1249559:   Call 0.Method_Proc_350_53_12499540 (CInt(2), var_B4, CStr(Format(vbNullString, "0.0000")))
  loc_1249561:   var_B4.Text = 1
  loc_1249588:   var_D4 = "0.00"
  loc_12495B3:   Set var_B0 = Me.Txt
  loc_12495B9:   Call 0.Method_Proc_350_53_12499540 (CInt(4), var_B4, CStr(Format(vbNullString, var_D4)))
  loc_12495C1:   var_B4.Text = 1
  loc_12495FF:   Proc_6_39_E7D3A0(var_D4, CVar(var_88.Fields.Item("UnitRate")))
  loc_1249636:   Set var_13C = Me.Txt
  loc_124963C:   Call 0.Method_Proc_350_53_12499540 (CInt(3), var_144, CStr(Format(var_D4, "0.00")), 1)
  loc_1249644:   var_144.Text = 1
  loc_1249699:   Set var_13C = Me.Txt
  loc_124969F:   Call 0.Method_Proc_350_53_12499540 (CInt(&HA), var_144, CStr(var_88.Fields.Item("AppDate").Value))
  loc_12496A7:   var_144.Text = 1
  loc_12496F5:   Me.lblChargeType.Caption = CStr(var_88.Fields.Item("ChargeType").Value)
  loc_1249741:   Me.lblChargeUnit.Caption = CStr(var_88.Fields.Item("ChargeUnit").Value)
  loc_124976C:   var_B4 = var_88.Fields.Item("MeterReading")
  loc_1249784:   Set var_13C = Me.LblCalReadDiff
  loc_124978A:   var_13C.Tag = Proc_6_38_E69628(CVar(var_B4))
  loc_12497A9:   Me.LblCalReadDiff.Caption = vbNullString
  loc_12497C6:   var_148 = Me.lblChargeType.Caption
  loc_12497D4:   If (var_148 = "Calculated") Then
  loc_12497E4:     var_94 = Me.lblChargeUnit.Caption
  loc_12497FA:     If (var_94 = "Sq Feet") Then
  loc_124981B:       Set var_B0 = Me.Txt
  loc_1249821:       Call 0.Method_Proc_350_53_12499540 (CInt(&HB), var_B4, var_94, "Select * from LocationMast where Code='")
  loc_1249829:       var_C4 = var_B4.Tag
  loc_1249832:       var_98 = -1 & var_94
  loc_1249842:       unk_5608DB.Execute var_94 & "' and lccode='" & "'", var_13C, 1
  loc_124984D:       Set var_90 = var_13C
  loc_1249879:       If (var_90.RecordCount > 0) Then
  loc_124989B:         var_C4 = CVar(var_90.Fields.Item("Area")) 'Address
  loc_12498A2:         Proc_6_39_E7D3A0(var_D4)
  loc_12498B6:         var_E4 = "0.0000"
  loc_12498C2:         var_F4 = Format(var_D4, var_E4)
  loc_12498D9:         Set var_13C = Me.Txt
  loc_12498DF:         Call 0.Method_Proc_350_53_12499540 (CInt(2), var_144, CStr(var_F4))
  loc_12498E7:         var_144.Text = 1
  loc_1249903:       End If
  loc_1249903:     End If
  loc_1249906:   Else
  loc_124990E:     If (var_148 = "Fixed Charge") Then
  loc_1249911:       Call Proc_350_54_1160044(1)
  loc_1249916:     End If
  loc_1249916:   End If
  loc_1249919: Else
  loc_1249932:   MsgBox("This Facility is not for specified Location", 0, var_D4, var_E4, var_F4)
  loc_1249942: End If
  loc_1249947: Set var_88 = Nothing
  loc_124994F: Set var_90 = Nothing
  loc_1249952: Exit Sub
End Sub

Public Sub Proc_350_54_1160044
  'Data Table: 5608D4
  Dim var_8C As Label
  Dim var_94 As TextBox
  Dim var_AC As TextBox
  Dim var_158 As TextBox
  Dim var_1D4 As TextBox
  Dim var_110 As Variant
  Dim var_88 As Integer
  Dim var_86 As Integer
  loc_115FD0D: Set var_94 = Me.Txt
  loc_115FD13: Call 0.Method_Proc_350_54_11600440 (CInt(&HC), var_98)
  loc_115FD30: Set var_AC = Me.Txt
  loc_115FD36: Call 0.Method_Proc_350_54_11600440 (CInt(&HD), var_B0)
  loc_115FD5B: If (((Me.lblChargeType.Caption = "Fixed Charge") And IsDate(CVar(var_98))) And IsDate(CVar(var_B0))) Then
  loc_115FD6C:   Set var_8C = Me.Txt
  loc_115FD72:   Call 0.Method_Proc_350_54_11600440 (CInt(&HC), var_94)
  loc_115FD9E:   Set var_98 = Me.Txt
  loc_115FDA4:   Call 0.Method_Proc_350_54_11600440 (CInt(&HC), var_AC)
  loc_115FDD5:   Set var_B0 = Me.Txt
  loc_115FDDB:   Call 0.Method_Proc_350_54_11600440 (CInt(&HC), var_158)
  loc_115FE17:   Set var_1D0 = Me.Txt
  loc_115FE1D:   Call 0.Method_Proc_350_54_11600440 (CInt(&HC), var_1D4)
  loc_115FE8C:   var_278 = DateDiff("d", CDate(CDate("1/" & Month(CDate(CDate(var_94.Text))) & "/" & Year(CDate(CDate(var_AC.Text))))), DateAdd("m", CDbl(1), CDate(CDate("1/" & Month(CDate(CDate(var_158.Text))) & "/" & Year(CDate(CDate(var_1D4.Text)))))), 1, 1)
  loc_115FE95:   var_88 = CInt(var_278)
  loc_115FEEF:   Set var_8C = Me.Txt
  loc_115FEF5:   Call 0.Method_Proc_350_54_11600440 (CInt(&HC), var_94)
  loc_115FF10:   Set var_98 = Me.Txt
  loc_115FF16:   Call 0.Method_Proc_350_54_11600440 (CInt(&HD), var_AC)
  loc_115FF52:   var_110 = (DateDiff("d", CDate(CDate(var_94.Text)), CDate(CDate(var_AC.Text)), 1, 1) + 1)
  loc_115FF57:   var_86 = CInt("1/" & Month(CDate(CDate(var_94.Text))) & "/")
  loc_115FF7E:   If (var_86 <> var_88) Then
  loc_115FFBD:     Set var_8C = Me.Txt
  loc_115FFC3:     Call 0.Method_Proc_350_54_11600440 (CInt(2), var_94, CStr(Format(CVar((CDbl(var_86) / CDbl(var_88))), "0.0000")), 1)
  loc_115FFCB:     var_94.Text = 1
  loc_115FFE6:   Else
  loc_116001A:     Set var_8C = Me.Txt
  loc_1160020:     Call 0.Method_Proc_350_54_11600440 (CInt(2), var_94, CStr(Format(1, "0.0000")), 1)
  loc_1160028:     var_94.Text = 1
  loc_1160040:   End If
  loc_1160040: End If
  loc_1160040: Exit Sub
End Sub

Public Sub Proc_350_55_119B9DC(arg_C, arg_10) '119B9DC
  'Data Table: 5608D4
  Dim var_8C As Variant
  Dim var_90 As String
  Dim var_94 As String
  Dim var_98 As String
  Dim var_9C As TextBox
  Dim var_A8 As String
  Dim unk_5608DB As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim var_D0 As Label
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_150 As Double
  loc_119B620: If (Me.LblCalReadDiff.Tag = "Y") Then
  loc_119B63E:   var_94 = "Select FM1.Reading from (FMReading1 FM1 Left Join FMReading FM On FM1.Code=FM.Code) where FM.LocationCode='" & arg_10 & "' And FM.FacilityCode='"
  loc_119B65D:   Set var_8C = Me.Txt
  loc_119B663:   Call 0.Method_Proc_350_55_119B9DC0 (CInt(&HC), var_9C, var_A0, var_94 & arg_C & "' And FM1.ForDate='")
  loc_119B66B:   var_CC = var_9C.Text
  loc_119B674:   var_A8 = -1 & var_A0
  loc_119B684:   unk_5608DB.Execute var_A8 & "'", var_D0, 
  loc_119B68F:   Set var_88 = var_D0
  loc_119B6C3:   If (var_88.RecordCount > 0) Then
  loc_119B6DD:     var_9C = var_88.Fields.Item("Reading")
  loc_119B6E5:     var_CC = CVar(var_9C) 'Address
  loc_119B6EC:     Proc_6_39_E7D3A0(var_E4)
  loc_119B6FC:     Set var_D0 = Me.LblCalReadDiff
  loc_119B702:     var_D0.Caption = CStr(var_E4)
  loc_119B71B:   Else
  loc_119B729:     Set var_8C = Me.Txt
  loc_119B72F:     Call 0.Method_Proc_350_55_119B9DC0 (CInt(&HC), var_9C)
  loc_119B75B:     MsgBox(CVar("Reading Of Specified Date " & var_9C.Text & " not Present"), &H40, var_E4, var_104, var_124)
  loc_119B779:   End If
  loc_119B787:   Set var_8C = Me.Txt
  loc_119B78D:   Call 0.Method_Proc_350_55_119B9DC0 (CInt(&HD), var_9C)
  loc_119B7AD:   var_E4 = DateAdd("D", CDbl(1), CDate(CDate(var_9C.Text)))
  loc_119B7CD:   var_94 = "Select Reading from (FMReading1 FM1 Left Join FMReading FM On FM1.Code=FM.Code) where FM.LocationCode='" & arg_10 & "' And FM.FacilityCode='"
  loc_119B7EA:   var_134 = CVar(var_94 & arg_C & "' And FM1.ForDate='") & var_E4 & "'" 
  loc_119B7F8:   unk_5608DB.Execute CStr(var_134), var_144, -1
  loc_119B803:   Set var_88 = var_D0
  loc_119B83F:   If (var_88.RecordCount > 0) Then
  loc_119B85C:     var_150 = Val(Me.LblCalReadDiff.Caption)
  loc_119B876:     var_9C = var_88.Fields.Item("Reading")
  loc_119B885:     Proc_6_39_E7D3A0(var_E4, CVar(var_9C), var_150)
  loc_119B89C:     var_98 = CStr((Val(CStr(var_E4)) - var_150))
  loc_119B8A9:     Me.LblCalReadDiff.Caption = Me.LblCalReadDiff.Caption & arg_C
  loc_119B8EC:     If (CDbl(Val(Me.LblCalReadDiff.Caption)) > CDbl(0)) Then
  loc_119B91D:       var_90 = CStr(Format(CVar(Me.LblCalReadDiff), "0.0000"))
  loc_119B92C:       Set var_8C = Me.Txt
  loc_119B932:       Call 0.Method_Proc_350_55_119B9DC0 (CInt(2), var_9C, var_90, 1)
  loc_119B93A:       var_9C.Text = 1
  loc_119B954:     End If
  loc_119B957:   Else
  loc_119B965:     Set var_8C = Me.Txt
  loc_119B96B:     Call 0.Method_Proc_350_55_119B9DC0 (CInt(&HD), var_9C, var_90)
  loc_119B973:     var_D0 = var_9C.Text
  loc_119B9B3:     MsgBox("Reading Of Specified Date " & DateAdd("D", CDbl(1), CDate(CDate(var_90))) & " not Present", &H40, var_134, var_144, var_190)
  loc_119B9D3:   End If
  loc_119B9D3: End If
  loc_119B9D8: Set var_88 = Nothing
  loc_119B9DB: Exit Sub
End Sub

Public Sub Proc_350_56_104026C
  'Data Table: 5608D4
  Dim var_A8 As TextBox
  Dim var_B4 As Double
  Dim var_9C As Variant
  Dim var_90 As Double
  Dim unk_5608DB As Connection15
  Dim var_94 As Recordset15
  Dim var_98 As Fields15
  Dim var_A0 As String
  loc_104003A: Set var_A4 = Me.Txt
  loc_1040040: Call 0.Method_Proc_350_56_104026C0 (CInt(3), var_A8)
  loc_1040055: var_B4 = Val(var_A8.Text)
  loc_1040066: Set var_98 = Me.Txt
  loc_104006C: Call 0.Method_Proc_350_56_104026C0 (CInt(2), var_9C)
  loc_1040074: var_A0 = var_9C.Text
  loc_1040085: var_90 = (Val(var_A0) * var_B4)
  loc_10400B8: Set var_98 = Me.Txt
  loc_10400BE: Call 0.Method_Proc_350_56_104026C0 (CInt(1), var_9C, var_A0, "Select ROffType From FacilityMast Where RoundOff='Y' And Code='", var_D8)
  loc_10400C6: -1 = var_9C.Tag
  loc_10400DF: unk_5608DB.Execute var_A4 & var_A0 & "'", var_90, var_B4
  loc_10400EA: Set var_94 = var_A4
  loc_1040116: If (var_94.RecordCount > 0) Then
  loc_1040133:   var_9C = var_94.Fields.Item(0)
  loc_1040148:   var_88 = Proc_6_38_E69628(var_9C.Value)
  loc_1040155: End If
  loc_1040158: var_E0 = var_88
  loc_1040163: If (var_E0 = "Lower") Then
  loc_1040180:   Proc_6_142_14A62A0(var_90, CByte(0))
  loc_104018F:   var_90 = (var_90 + "L")
  loc_1040198: Else
  loc_10401A0:   If (var_E0 = "Upper") Then
  loc_10401BD:     Proc_6_142_14A62A0(var_90, CByte(0), "U", 2)
  loc_10401CC:     var_90 = (var_90 + var_90)
  loc_10401D5:   Else
  loc_10401DD:     If (var_E0 = "Standard") Then
  loc_10401FA:       Proc_6_142_14A62A0(var_90, CByte(0), "S", 2)
  loc_1040209:       var_90 = (var_90 + var_90)
  loc_104020F:     End If
  loc_104020F:   End If
  loc_104020F: End If
  loc_1040246: Set var_98 = Me.Txt
  loc_104024C: Call 0.Method_Proc_350_56_104026C0 (CInt(4), var_9C, CStr(Format(var_90, "0.00")), 1, 1)
  loc_1040254: var_9C.Text = var_90
  loc_104026A: Exit Sub
  loc_104026B: var_B4 = var_B4
End Sub

Public Sub Proc_350_57_FA65DC
  'Data Table: 5608D4
  Dim var_8C As TextBox
  loc_FA6456: Set var_88 = Me.Txt
  loc_FA645C: Call 0.Method_Proc_350_57_FA65DC0 (CInt(&HB), var_8C)
  loc_FA6464: var_8C.Text = vbNullString
  loc_FA647E: Set var_88 = Me.Txt
  loc_FA6484: Call 0.Method_Proc_350_57_FA65DC0 (CInt(&HB), var_8C)
  loc_FA648C: var_8C.Tag = vbNullString
  loc_FA64A6: Set var_88 = Me.Txt
  loc_FA64AC: Call 0.Method_Proc_350_57_FA65DC0 (CInt(1), var_8C)
  loc_FA64B4: var_8C.Text = vbNullString
  loc_FA64CE: Set var_88 = Me.Txt
  loc_FA64D4: Call 0.Method_Proc_350_57_FA65DC0 (CInt(1), var_8C)
  loc_FA64DC: var_8C.Tag = vbNullString
  loc_FA64F6: Set var_88 = Me.Txt
  loc_FA64FC: Call 0.Method_Proc_350_57_FA65DC0 (CInt(2), var_8C)
  loc_FA6504: var_8C.Text = vbNullString
  loc_FA651E: Set var_88 = Me.Txt
  loc_FA6524: Call 0.Method_Proc_350_57_FA65DC0 (CInt(3), var_8C)
  loc_FA652C: var_8C.Text = vbNullString
  loc_FA6546: Set var_88 = Me.Txt
  loc_FA654C: Call 0.Method_Proc_350_57_FA65DC0 (CInt(4), var_8C)
  loc_FA6554: var_8C.Text = vbNullString
  loc_FA656E: Set var_88 = Me.Txt
  loc_FA6574: Call 0.Method_Proc_350_57_FA65DC0 (CInt(&HA), var_8C)
  loc_FA657C: var_8C.Text = vbNullString
  loc_FA6596: Set var_88 = Me.Txt
  loc_FA659C: Call 0.Method_Proc_350_57_FA65DC0 (CInt(&HC), var_8C)
  loc_FA65A4: var_8C.Text = vbNullString
  loc_FA65BE: Set var_88 = Me.Txt
  loc_FA65C4: Call 0.Method_Proc_350_57_FA65DC0 (CInt(&HD), var_8C)
  loc_FA65CC: var_8C.Text = vbNullString
  loc_FA65D8: Exit Sub
End Sub

Public Sub Proc_350_58_F219F0(arg_C) 'F219F0
  'Data Table: 5608D4
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_110 As Variant
  Dim var_184 As Variant
  loc_F2192D: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Integer
  loc_F21937:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_F2193F:   var_D0 = CVar(CLng(8)) 'Long
  loc_F2195F:   var_100 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_F2196B:   var_110 = CVar(CLng(var_88)) 'Long
  loc_F2199B:   var_184 = (CVar(CLng(&H15)) + Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_F219CE:   If (var_184 = Trim(arg_C)) Then
  loc_F219D6:     Proc_350_58_F219F0 = &HFF
  loc_F219DC:   End If
  loc_F219DF: Next var_A0 'Integer
  loc_F219E9: Proc_350_58_F219F0 = 0
End Sub

Public Sub Proc_350_59_177E808(arg_C) '177E808
  'Data Table: 5608D4
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_BC As String
  Dim var_E0 As Variant
  Dim var_110 As Variant
  Dim unk_5608DB As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_140 As Variant
  Dim var_13C As Fields15
  Dim var_148 As Variant
  Dim var_134 As Boolean
  Dim var_144 As Fields15
  Dim var_190 As Variant
  Dim var_1A4 As TextBox
  Dim var_A8 As Variant
  loc_177C9CC: Set var_90 = Me.TxtGt
  loc_177C9D2: Call 0.Method_Proc_350_59_177E8080 (1, var_94)
  loc_177C9DA: var_96 = var_94.TabIndex
  loc_177C9E2: var_8A = var_96
  loc_177C9F0: Set var_90 = Me.TopCtrl1
  loc_177C9F6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8A)
  loc_177CA0F: If (CStr() = "Add") Then
  loc_177CA1E:   Set var_90 = Me.TxtPer
  loc_177CA24:   Call 0.Method_Proc_350_59_177E808C (var_96, var_8C)
  loc_177CA2F:   For var_B0 =  To var_96: 1 = var_B0 'Integer
  loc_177CA41:     Set var_90 = Me.TxtPer
  loc_177CA47:     Call 0.Method_Proc_350_59_177E8080 (var_8C, var_94)
  loc_177CA4F:     var_94.Visible = False
  loc_177CA5E:   Next var_B0 'Integer
  loc_177CA6F:   Set var_90 = Me.TxtGt
  loc_177CA75:   Call 0.Method_Proc_350_59_177E808C (var_96, var_8C)
  loc_177CA80:   For var_B4 =  To var_96: 1 = var_B4 'Integer
  loc_177CA92:     Set var_90 = Me.TxtGt
  loc_177CA98:     Call 0.Method_Proc_350_59_177E8080 (var_8C, var_94)
  loc_177CAA0:     var_94.Visible = False
  loc_177CAAF:   Next var_B4 'Integer
  loc_177CAC0:   Set var_90 = Me.LblCap
  loc_177CAC6:   Call 0.Method_Proc_350_59_177E808C (var_96, var_8C)
  loc_177CAD1:   For var_B8 =  To var_96: 1 = var_B8 'Integer
  loc_177CAE3:     Set var_90 = Me.LblCap
  loc_177CAE9:     Call 0.Method_Proc_350_59_177E8080 (var_8C, var_94)
  loc_177CAF1:     var_94.Visible = False
  loc_177CB00:   Next var_B8 'Integer
  loc_177CB05: End If
  loc_177CB09: Set var_90 = Me.TopCtrl1
  loc_177CB0F: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_177CB28: If (CStr() = "Add") Then
  loc_177CB46:   var_BC = "Select * From SundryType WHERE logsite_code='" & MemVar_1F95078 & "' and V_Type='FACL' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='"
  loc_177CB62:   Proc_6_7_F26918(var_A8, arg_C, CVar(var_BC & MemVar_1F95078 & "' and V_Type='FACL'aND AppDate<="))
  loc_177CB81:   unk_5608DB.Execute CStr(var_134 & var_A8 & "  Order by AppDate Desc)  Order by SNO"), -1, var_90
  loc_177CB8C:   Set var_88 = var_90
  loc_177CBAD: Else
  loc_177CBC8:   var_BC = "Select * From SundryType WHERE LogSite_Code='" & MemVar_1F95078 & "' and V_Type='FACL' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='"
  loc_177CBE4:   Proc_6_7_F26918(var_A8, arg_C, CVar(var_BC & MemVar_1F95078 & "' and V_Type='FACL' aND AppDate<="))
  loc_177CC03:   unk_5608DB.Execute CStr(var_134 & var_A8 & "  Order by AppDate Desc) Order by SNO"), -1, var_90
  loc_177CC0E:   Set var_88 = var_90
  loc_177CC2C: End If
  loc_177CC40: If (var_88.RecordCount > 0) Then
  loc_177CC7C:   Set var_13C = Me.Txt
  loc_177CC82:   Call 0.Method_Proc_350_59_177E8080 (CInt(&H11), var_140)
  loc_177CC8A:   var_140.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_177CCA0:   ' Referenced from: 177E802
  loc_177CCA6:   var_96 = var_88.EOF
  loc_177CCAF:   If Not(var_96) Then
  loc_177CCEE:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_177CD22:       Set var_13C = Me.LblDummy
  loc_177CD28:       Call 0.Method_Proc_350_59_177E8088 (var_96)
  loc_177CD42:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_177CD77:         Set var_13C = Me.LblDummy
  loc_177CD7D:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value))
  loc_177CD8E:         Me.LblDummy.Load var_140
  loc_177CDA1:       End If
  loc_177CDEC:       var_140 = var_88.Fields.Item("SNo")
  loc_177CE01:       Set var_144 = Me.LblDummy
  loc_177CE07:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_140.Value), var_148)
  loc_177CE0F:       var_148.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_177CE5E:       Set var_13C = Me.TxtPer
  loc_177CE64:       Call 0.Method_Proc_350_59_177E8088 (var_96, var_88.Fields.Item("SNo").Value)
  loc_177CE7E:       If (var_140 > CVar(var_96)) Then
  loc_177CEB3:         Set var_13C = Me.TxtPer
  loc_177CEB9:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value))
  loc_177CECA:         Me.TxtPer.Load var_140
  loc_177CEDD:       End If
  loc_177CF15:       Set var_13C = Me.TxtPer
  loc_177CF1B:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177CF23:       var_140.TabIndex = (var_8A + 1)
  loc_177CF3C:       var_8A = (var_8A + 1)
  loc_177CF80:       var_140 = var_88.Fields.Item("SNo")
  loc_177CFC0:       Set var_144 = Me.TxtPer
  loc_177CFC6:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_140.Value), var_148, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_177CFCE:       var_148.Visible = var_8A
  loc_177D02D:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_177D08C:         var_110 = (var_88.Fields.Item("SNo").Value - 1)
  loc_177D095:         Set var_18C = Me.TxtPer
  loc_177D09B:         Call 0.Method_Proc_350_59_177E8080 (CInt(True), var_190)
  loc_177D0DD:         var_E0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_177D0E6:         Set var_13C = Me.TxtPer
  loc_177D0EC:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("RevCode").Value), var_140)
  loc_177D110:         Set var_1A0 = Me.TxtPer
  loc_177D116:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_177D11E:         var_1A4.Top = ((var_140.Top + var_190.Height) + CDbl(&HF))
  loc_177D147:       End If
  loc_177D183:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_177D1E2:         var_E0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_177D1EB:         Set var_13C = Me.TxtPer
  loc_177D1F1:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("RevCode").Value), var_140)
  loc_177D20C:         Set var_18C = Me.TxtPer
  loc_177D212:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_177D21A:         var_190.Left = var_140.Left
  loc_177D239:       End If
  loc_177D23D:       Set var_90 = Me.TopCtrl1
  loc_177D243:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_177D25C:       If (CStr() = "Add") Then
  loc_177D2BC:         var_148 = var_88.Fields.Item("SNo")
  loc_177D309:         Set var_18C = Me.TxtPer
  loc_177D30F:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_148.Value), var_190)
  loc_177D317:         var_190.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_177D33F:       End If
  loc_177D38A:       var_140 = var_88.Fields.Item("SNo")
  loc_177D39F:       Set var_144 = Me.TxtPer
  loc_177D3A5:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_140.Value), var_148)
  loc_177D3AD:       var_148.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_177D404:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_177D43B:         Set var_13C = Me.TxtPer
  loc_177D441:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177D449:         var_140.FontBold = True
  loc_177D45F:       Else
  loc_177D493:         Set var_13C = Me.TxtPer
  loc_177D499:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177D4A1:         var_140.FontBold = False
  loc_177D4B4:       End If
  loc_177D4ED:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_177D524:         Set var_13C = Me.TxtPer
  loc_177D52A:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177D532:         var_140.Enabled = False
  loc_177D548:       Else
  loc_177D57C:         Set var_13C = Me.TxtPer
  loc_177D582:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177D58A:         var_140.Enabled = True
  loc_177D59D:       End If
  loc_177D5A1:       Set var_90 = Me.TopCtrl1
  loc_177D5A7:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_177D5C0:       If (CStr() = "Browse") Then
  loc_177D5F7:         Set var_13C = Me.TxtPer
  loc_177D5FD:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177D605:         var_140.Enabled = False
  loc_177D618:       End If
  loc_177D654:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_177D68B:         Set var_13C = Me.TxtPer
  loc_177D691:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177D699:         var_140.Enabled = False
  loc_177D6AC:       End If
  loc_177D6DD:       Set var_13C = Me.LblCap
  loc_177D6E3:       Call 0.Method_Proc_350_59_177E8088 (var_96)
  loc_177D6FD:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_177D732:         Set var_13C = Me.LblCap
  loc_177D738:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value))
  loc_177D749:         Me.LblCap.Load var_140
  loc_177D75C:       End If
  loc_177D790:       Set var_13C = Me.LblCap
  loc_177D796:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177D79E:       var_140.Visible = True
  loc_177D80D:       Set var_13C = Me.TxtPer
  loc_177D813:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177D82E:       Set var_18C = Me.LblCap
  loc_177D834:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_177D83C:       var_190.Top = var_140.Top
  loc_177D897:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_177D8DB:         var_148 = var_88.Fields.Item("SNo")
  loc_177D8F6:         var_E0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_177D8FF:         Set var_13C = Me.LblCap
  loc_177D905:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177D920:         Set var_18C = Me.LblCap
  loc_177D926:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_148.Value), var_190)
  loc_177D92E:         var_190.Left = var_140.Left
  loc_177D94D:       End If
  loc_177D9AD:       Set var_144 = Me.LblCap
  loc_177D9B3:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_177D9BB:       var_148.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_177DA24:       var_140 = var_88.Fields.Item("SNo")
  loc_177DA39:       Set var_144 = Me.LblCap
  loc_177DA3F:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_140.Value), var_148)
  loc_177DA47:       var_148.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_177DA9E:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_177DAD5:         Set var_13C = Me.LblCap
  loc_177DADB:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177DAE3:         var_140.FontBold = True
  loc_177DAF9:       Else
  loc_177DB2D:         Set var_13C = Me.LblCap
  loc_177DB33:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177DB3B:         var_140.FontBold = False
  loc_177DB4E:       End If
  loc_177DB7F:       Set var_13C = Me.LblAt
  loc_177DB85:       Call 0.Method_Proc_350_59_177E8088 (var_96, var_88.Fields.Item("SNo").Value)
  loc_177DB9F:       If (var_140 > CVar(var_96)) Then
  loc_177DBD4:         Set var_13C = Me.LblAt
  loc_177DBDA:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value))
  loc_177DBEB:         Me.LblAt.Load var_140
  loc_177DBFE:       End If
  loc_177DC3F:       var_140 = var_88.Fields.Item("SNo")
  loc_177DC7F:       Set var_144 = Me.LblAt
  loc_177DC85:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_140.Value), var_148)
  loc_177DC8D:       var_148.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_177DCF1:       var_148 = var_88.Fields.Item("SNo")
  loc_177DD0C:       Set var_13C = Me.TxtPer
  loc_177DD12:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177DD2D:       Set var_18C = Me.LblAt
  loc_177DD33:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_148.Value), var_190)
  loc_177DD3B:       var_190.Top = var_140.Top
  loc_177DD93:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_177DDCA:         Set var_13C = Me.LblAt
  loc_177DDD0:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177DDD8:         var_140.FontBold = True
  loc_177DDEE:       Else
  loc_177DE22:         Set var_13C = Me.LblAt
  loc_177DE28:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177DE30:         var_140.FontBold = False
  loc_177DE43:       End If
  loc_177DE92:       var_140 = var_88.Fields.Item("SNo")
  loc_177DEA7:       Set var_144 = Me.LblAt
  loc_177DEAD:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_140.Value), var_148)
  loc_177DEB5:       var_148.Tag = CStr(Trim(CVar(var_88.Fields.Item("RoundOff"))))
  loc_177DF0F:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_177DF6E:         var_E0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_177DF77:         Set var_13C = Me.LblAt
  loc_177DF7D:         Call 0.Method_Proc_350_59_177E8080 (CInt(Trim(CVar(var_88.Fields.Item("RoundOff")))), var_140)
  loc_177DF98:         Set var_18C = Me.LblAt
  loc_177DF9E:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_177DFA6:         var_190.Left = var_140.Left
  loc_177DFC5:       End If
  loc_177DFF6:       Set var_13C = Me.TxtGt
  loc_177DFFC:       Call 0.Method_Proc_350_59_177E8088 (var_96, var_88.Fields.Item("SNo").Value)
  loc_177E016:       If (var_140 > CVar(var_96)) Then
  loc_177E04B:         Set var_13C = Me.TxtGt
  loc_177E051:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value))
  loc_177E062:         Me.TxtGt.Load var_140
  loc_177E075:       End If
  loc_177E0AD:       Set var_13C = Me.TxtGt
  loc_177E0B3:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E0BB:       var_140.TabIndex = (var_8A + 1)
  loc_177E0D4:       var_8A = (var_8A + 1)
  loc_177E10B:       Set var_13C = Me.TxtGt
  loc_177E111:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140, &HFF)
  loc_177E119:       var_140.Visible = var_8A
  loc_177E188:       Set var_13C = Me.TxtPer
  loc_177E18E:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E1A9:       Set var_18C = Me.TxtGt
  loc_177E1AF:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_177E1B7:       var_190.Top = var_140.Top
  loc_177E212:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_177E271:         var_E0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_177E27A:         Set var_13C = Me.TxtGt
  loc_177E280:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E29B:         Set var_18C = Me.TxtGt
  loc_177E2A1:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_177E2A9:         var_190.Left = var_140.Left
  loc_177E2C8:       End If
  loc_177E2CC:       Set var_90 = Me.TopCtrl1
  loc_177E2D2:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_177E2EB:       If (CStr() = "Add") Then
  loc_177E34B:         var_148 = var_88.Fields.Item("SNo")
  loc_177E398:         Set var_18C = Me.TxtGt
  loc_177E39E:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_148.Value), var_190)
  loc_177E3A6:         var_190.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_177E3CE:       End If
  loc_177E416:       var_140 = var_88.Fields.Item("SNo")
  loc_177E42B:       Set var_144 = Me.TxtGt
  loc_177E431:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_140.Value), var_148)
  loc_177E439:       var_148.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CalcFormula")))
  loc_177E48E:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_177E4C5:         Set var_13C = Me.TxtGt
  loc_177E4CB:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E4D3:         var_140.FontBold = True
  loc_177E4E9:       Else
  loc_177E51D:         Set var_13C = Me.TxtGt
  loc_177E523:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E52B:         var_140.FontBold = False
  loc_177E53E:       End If
  loc_177E577:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_177E5AE:         Set var_13C = Me.TxtGt
  loc_177E5B4:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E5BC:         var_140.Enabled = False
  loc_177E5D2:       Else
  loc_177E606:         Set var_13C = Me.TxtGt
  loc_177E60C:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E614:         var_140.Enabled = True
  loc_177E627:       End If
  loc_177E65C:       Set var_13C = Me.LblCap
  loc_177E662:       Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E693:       If (var_140.Tag = MemVar_1F95078 & "ROFF") Then
  loc_177E6CA:         Set var_13C = Me.TxtGt
  loc_177E6D0:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E6D8:         var_140.Enabled = False
  loc_177E6EB:       End If
  loc_177E6EF:       Set var_90 = Me.TopCtrl1
  loc_177E6F5:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_177E70E:       If (CStr() = "Browse") Then
  loc_177E745:         Set var_13C = Me.TxtGt
  loc_177E74B:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E753:         var_140.Enabled = False
  loc_177E766:       End If
  loc_177E7A2:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_177E7D9:         Set var_13C = Me.TxtGt
  loc_177E7DF:         Call 0.Method_Proc_350_59_177E8080 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E7E7:         var_140.Enabled = False
  loc_177E7FA:       End If
  loc_177E7FA:     End If
  loc_177E7FD:     var_88.MoveNext
  loc_177E802:     GoTo loc_177CCA0
  loc_177E805:   End If
  loc_177E805: End If
  loc_177E805: Exit Sub
End Sub

Public Sub Proc_350_60_188498C(arg_C) '188498C
  'Data Table: 5608D4
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_130 As String
  Dim var_134 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim unk_5608DB As Connection15
  Dim var_190 As Variant
  Dim var_194 As Variant
  Dim var_198 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_138 As String
  Dim var_298 As Double
  Dim var_124 As Variant
  Dim var_1D0 As Variant
  Dim var_148 As Variant
  Dim var_2A0 As Double
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_1A8 As Variant
  Dim var_230 As Variant
  Dim var_290 As Variant
  Dim var_2CC As Variant
  Dim var_2EC As Variant
  Dim var_18C As Variant
  Dim var_A4 As Double
  Dim var_36C As Double
  Dim var_374 As Double
  Dim var_88 As Recordset15
  loc_18822BE: global_92 = CDbl(0)
  loc_18822E6: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9C = var_D4 'Integer
  loc_18822F0:   var_E4 = CVar(CLng(var_9C)) 'Long
  loc_18822F8:   var_104 = CVar(CLng(0)) 'Long
  loc_1882302:   var_D0 = CVar(CStr(var_9C)) 'String
  loc_188230A:   Set var_C0 = Me.FGrid
  loc_1882310:   LateIdCallSt
  loc_1882321: Next var_D4 'Integer
  loc_1882332: Set var_C0 = Me.TxtGt
  loc_1882338: Call 0.Method_Proc_350_60_188498C8 (var_126, var_9A)
  loc_1882343: For var_12A =  To var_126: 1 = var_12A 'Integer
  loc_1882383:   Set var_C0 = Me.LblCap
  loc_1882389:   Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_138, CVar("Select IsNull(Max(Nature),'') from SundryType Where LOGSITE_CODE='" & MemVar_1F95078 & "' AND SundryCode='"), var_18C, -1)
  loc_18823BE:   unk_5608DB.Execute CStr(var_194 & Trim(CVar(var_138)) & "' And V_Type='FACL'"), 0, var_198
  loc_18823CE:    = var_194.Item()
  loc_18823D6:    = var_198.Value
  loc_18823E3:   var_A8 = Proc_6_38_E69628(var_134.Tag.Fields)
  loc_1882413:   If (var_A8 = "Addition") Then
  loc_1882423:     Set var_C0 = Me.TxtGt
  loc_1882429:     Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_1882450:     Set var_190 = Me.TxtPer
  loc_1882456:     Call 0.Method_Proc_350_60_188498C0 (var_9A, var_194)
  loc_1882483:     If ((CDbl(Val(var_134.Text)) > CDbl(0)) And (CDbl(Val(var_194.Text)) <= CDbl(0))) Then
  loc_1882493:       Set var_C0 = Me.TxtGt
  loc_1882499:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_18824AE:       var_90 = Val(var_134.Text)
  loc_18824BB:     End If
  loc_18824BE:   Else
  loc_18824C6:     If (var_A8 = "Deduction") Then
  loc_18824D6:       Set var_C0 = Me.TxtGt
  loc_18824DC:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_18824F1:       var_98 = Val(var_134.Text)
  loc_1882501:     Else
  loc_1882509:       If (var_A8 = "Discount") Then
  loc_1882511:         var_AA = CByte(var_9A) 'Byte
  loc_1882518:       Else
  loc_1882520:         If (var_A8 = "Service Charge") Then
  loc_1882528:           var_B6 = CByte(var_9A) 'Byte
  loc_188252F:         Else
  loc_1882552:           If ((((var_A8 = "Sale Tax") Or (var_A8 = "CGST")) Or (var_A8 = "SGST")) Or (var_A8 = "IGST")) Then
  loc_188255A:             var_AC = CByte(var_9A) 'Byte
  loc_1882564:             global_108 = var_9A
  loc_1882567:           End If
  loc_1882567:         End If
  loc_1882567:       End If
  loc_1882567:     End If
  loc_1882567:   End If
  loc_1882574:   Set var_C0 = Me.TxtGt
  loc_188257A:   Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, vbNullString)
  loc_1882582:   var_134.Text = global_108
  loc_1882591: Next var_12A 'Integer
  loc_18825A9: Me.FGCat.Rows = 1
  loc_18825B5: Set var_C0 = Me.TopCtrl1
  loc_18825BB: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_18825CF: Set var_134 = Me.TopCtrl1
  loc_18825D5: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_18825FB: If ( Or (CStr() = "Edit")) Then
  loc_18825FE:   Call Proc_350_61_125EEE8()
  loc_1882603: End If
  loc_188260F: Set var_C0 = Me.TxtGt
  loc_1882615: Call 0.Method_Proc_350_60_188498C8 (var_126, var_9A)
  loc_1882620: For var_1AC =  To var_126: 2 = var_1AC 'Integer
  loc_1882633:   Set var_C0 = Me.LblCap
  loc_1882639:   Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_1882674:   If (Trim(CVar(var_134.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1882684:     Set var_C0 = Me.TxtGt
  loc_188268A:     Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_1882692:     var_134.Text = vbNullString
  loc_18826A8:     If (var_AC > var_AA) Then
  loc_18826D0:       For var_1B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9C = var_1B0 'Integer
  loc_18826E3:         Set var_C0 = Me.LblCap
  loc_18826E9:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_1882724:         If (Trim(CVar(var_134.Tag)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_188272B:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1882733:           var_104 = CVar(CLng(&HF)) 'Long
  loc_188274D:           var_130 = CStr(Me.FGrid.TextMatrix))
  loc_188275E:           If (var_130 = "Y") Then
  loc_1882765:             var_E4 = CVar(CLng(var_9C)) 'Long
  loc_188277F:             Set var_C0 = Me.TxtPer
  loc_1882785:             Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130, CVar(CLng(&HE)))
  loc_188278D:             var_E4 = var_134.Text
  loc_188279C:             var_D0 = CVar(CStr(Val(var_130))) 'String
  loc_18827A4:             Set var_190 = Me.FGrid
  loc_18827AA:             LateIdCallSt
  loc_18827C1:           End If
  loc_18827C1:         End If
  loc_18827CB:         If (var_B6 < var_AC) Then
  loc_18827D8:           If (var_AA < var_B6) Then
  loc_18827DF:             var_E4 = CVar(CLng(var_9C)) 'Long
  loc_18827E7:             var_104 = CVar(CLng(2)) 'Long
  loc_1882810:             var_124 = CVar(CLng(var_9C)) 'Long
  loc_1882818:             var_1D0 = CVar(CLng(3)) 'Long
  loc_1882841:             var_1F0 = CVar(CLng(var_9C)) 'Long
  loc_1882849:             var_210 = CVar(CLng(&HE)) 'Long
  loc_1882872:             var_250 = CVar(CLng(var_9C)) 'Long
  loc_188287A:             var_270 = CVar(CLng(&H10)) 'Long
  loc_18828A3:             var_168 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_18828B3:             var_1A8 = CVar(CStr(Format(var_168, "0.00"))) 'String
  loc_18828BB:             Set var_194 = Me.FGrid
  loc_18828C1:             LateIdCallSt
  loc_18828F2:             var_E4 = CVar(CLng(var_9C)) 'Long
  loc_18828FA:             var_104 = CVar(CLng(&HF)) 'Long
  loc_1882925:             If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_188292C:               var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1882934:               var_104 = CVar(CLng(2)) 'Long
  loc_188295D:               var_124 = CVar(CLng(var_9C)) 'Long
  loc_1882965:               var_1D0 = CVar(CLng(3)) 'Long
  loc_188299B:               global_92 = (global_92 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_18829B3:             End If
  loc_18829B6:           Else
  loc_18829BA:             var_E4 = CVar(CLng(var_9C)) 'Long
  loc_18829C2:             var_104 = CVar(CLng(2)) 'Long
  loc_18829EB:             var_124 = CVar(CLng(var_9C)) 'Long
  loc_18829F3:             var_1D0 = CVar(CLng(3)) 'Long
  loc_1882A1C:             var_1F0 = CVar(CLng(var_9C)) 'Long
  loc_1882A24:             var_210 = CVar(CLng(&H11)) 'Long
  loc_1882A4D:             var_230 = CVar(CLng(var_9C)) 'Long
  loc_1882A55:             var_250 = CVar(CLng(&HE)) 'Long
  loc_1882A7E:             var_290 = CVar(CLng(var_9C)) 'Long
  loc_1882A86:             var_2CC = CVar(CLng(&H10)) 'Long
  loc_1882AB3:             var_178 = CVar(((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) + Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_1882AC3:             var_2EC = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1882ACB:             Set var_198 = Me.FGrid
  loc_1882AD1:             LateIdCallSt
  loc_1882B08:             var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1882B10:             var_104 = CVar(CLng(&HF)) 'Long
  loc_1882B3B:             If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_1882B42:               var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1882B4A:               var_104 = CVar(CLng(2)) 'Long
  loc_1882B73:               var_124 = CVar(CLng(var_9C)) 'Long
  loc_1882B7B:               var_1D0 = CVar(CLng(3)) 'Long
  loc_1882BA4:               var_1F0 = CVar(CLng(var_9C)) 'Long
  loc_1882BAC:               var_210 = CVar(CLng(&H11)) 'Long
  loc_1882BE6:               global_92 = (global_92 + ((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) + Val(CStr(Me.FGrid.TextMatrix)))))
  loc_1882C04:             End If
  loc_1882C04:           End If
  loc_1882C07:         Else
  loc_1882C0B:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1882C13:           var_104 = CVar(CLng(2)) 'Long
  loc_1882C3C:           var_124 = CVar(CLng(var_9C)) 'Long
  loc_1882C44:           var_1D0 = CVar(CLng(3)) 'Long
  loc_1882C6D:           var_1F0 = CVar(CLng(var_9C)) 'Long
  loc_1882C75:           var_210 = CVar(CLng(&HE)) 'Long
  loc_1882C9E:           var_250 = CVar(CLng(var_9C)) 'Long
  loc_1882CA6:           var_270 = CVar(CLng(&H10)) 'Long
  loc_1882CCF:           var_168 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_1882CDF:           var_1A8 = CVar(CStr(Format(var_168, "0.00"))) 'String
  loc_1882CE7:           Set var_194 = Me.FGrid
  loc_1882CED:           LateIdCallSt
  loc_1882D1E:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1882D26:           var_104 = CVar(CLng(&HF)) 'Long
  loc_1882D51:           If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_1882D58:             var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1882D60:             var_104 = CVar(CLng(2)) 'Long
  loc_1882D89:             var_124 = CVar(CLng(var_9C)) 'Long
  loc_1882D91:             var_1D0 = CVar(CLng(3)) 'Long
  loc_1882DC7:             global_92 = (global_92 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_1882DDF:           End If
  loc_1882DDF:         End If
  loc_1882DE3:         var_124 = CVar(CLng(var_9C)) 'Long
  loc_1882DEB:         var_1D0 = CVar(CLng(2)) 'Long
  loc_1882E14:         var_1F0 = CVar(CLng(var_9C)) 'Long
  loc_1882E25:         var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1882E2D:         var_104 = CVar(CLng(3)) 'Long
  loc_1882E5D:         Set var_190 = Me.FGrid
  loc_1882E63:         LateIdCallSt
  loc_1882E88:         var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1882E90:         var_104 = CVar(CLng(4)) 'Long
  loc_1882EAA:         var_130 = CStr(Me.FGrid.TextMatrix))
  loc_1882EC1:         Set var_134 = Me.LblDummy
  loc_1882EC7:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_190, CStr(Val(var_130)), var_104, var_E4, var_190, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_1882ECF:         var_190.Caption = var_104
  loc_1882EF4:         Set var_C0 = Me.LblCap
  loc_1882EFA:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130, var_E4, CVar(CLng(4)))
  loc_1882F02:         var_1F0 = var_134.Tag
  loc_1882F35:         If (Trim(CVar(var_130)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1882F45:           Set var_C0 = Me.TxtGt
  loc_1882F4B:           Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130)
  loc_1882F53:           var_298 = var_134.Text
  loc_1882F67:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1882F91:           var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1882FB0:           var_148 = CVar((Val(var_130) + var_2A0)) 'Double
  loc_1882FCD:           Set var_194 = Me.TxtGt
  loc_1882FD3:           Call 0.Method_Proc_350_60_188498C0 (var_9A, var_198, CStr(Format(Trim(CVar(var_130)), "0.00")), 1, 1, var_2A0)
  loc_1882FDB:           var_198.Text = CVar(CLng(&H10))
  loc_1883001:         End If
  loc_1883004:       Next var_1B0 'Integer
  loc_1883016:       Set var_C0 = Me.LblCap
  loc_188301C:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_188306F:       If CBool((Trim(CVar(var_134.Tag)) = CVar(MemVar_1F95078 & "DIS")) And (global_92 <> CDbl(0))) Then
  loc_188307F:         Set var_C0 = Me.TxtGt
  loc_1883085:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_188308D:         var_130 = var_134.Text
  loc_18830DD:         Set var_190 = Me.TxtPer
  loc_18830E3:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_194, CStr(Format(CVar(((Val(var_130) / global_92) * CDbl(&H64))), "0.00000")))
  loc_18830EB:         var_194.Text = 1
  loc_188310B:       End If
  loc_188310E:     Else
  loc_1883133:       For var_308 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_9C = var_308 'Integer
  loc_1883146:         Set var_C0 = Me.LblCap
  loc_188314C:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130)
  loc_1883154:         1 = var_134.Tag
  loc_1883187:         If (Trim(CVar(var_130)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_188318E:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1883196:           var_104 = CVar(CLng(&HF)) 'Long
  loc_18831B0:           var_130 = CStr(Me.FGrid.TextMatrix))
  loc_18831C1:           If (var_130 = "Y") Then
  loc_18831E2:             Set var_C0 = Me.TxtPer
  loc_18831E8:             Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130, CVar(CLng(&HE)), CVar(CLng(var_9C)))
  loc_18831F0:             var_104 = var_134.Text
  loc_18831FF:             var_D0 = CVar(CStr(Val(var_130))) 'String
  loc_1883207:             Set var_190 = Me.FGrid
  loc_188320D:             LateIdCallSt
  loc_1883224:           End If
  loc_1883224:         End If
  loc_1883261:         Set var_134 = Me.LblDummy
  loc_1883267:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_190, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(4)), CVar(CLng(var_9C)))
  loc_188326F:         var_190.Caption = var_190
  loc_188328B:         var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1883293:         var_104 = CVar(CLng(4)) 'Long
  loc_18832BC:         var_124 = CVar(CLng(var_9C)) 'Long
  loc_18832C4:         var_1D0 = CVar(CLng(&HE)) 'Long
  loc_18832CD:         Set var_134 = Me.FGrid
  loc_18832ED:         var_210 = CVar(CLng(var_9C)) 'Long
  loc_18832F5:         var_230 = CVar(CLng(&H10)) 'Long
  loc_188332A:         var_18C = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_134.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1883332:         Set var_190 = Me.FGrid
  loc_1883338:         LateIdCallSt
  loc_1883363:         var_E4 = CVar(CLng(var_9C)) 'Long
  loc_188336B:         var_104 = CVar(CLng(&HF)) 'Long
  loc_1883396:         If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_188339D:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_18833A5:           var_104 = CVar(CLng(4)) 'Long
  loc_18833BF:           var_130 = CStr(Me.FGrid.TextMatrix))
  loc_18833C7:           var_298 = Val(var_130)
  loc_18833D7:           global_92 = (global_92 + var_298)
  loc_18833E3:         End If
  loc_18833F0:         Set var_C0 = Me.LblCap
  loc_18833F6:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130, global_92, var_298, var_104, var_E4)
  loc_18833FE:         var_104 = var_134.Tag
  loc_1883431:         If (Trim(CVar(var_130)) = CVar(MemVar_1F95078 & "DIS")) Then
  loc_1883441:           Set var_C0 = Me.TxtGt
  loc_1883447:           Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130, var_E4, var_190)
  loc_188344F:           var_18C = var_134.Text
  loc_1883463:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_188348D:           var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_18834AC:           var_148 = CVar((Val(var_130) + var_2A0)) 'Double
  loc_18834C9:           Set var_194 = Me.TxtGt
  loc_18834CF:           Call 0.Method_Proc_350_60_188498C0 (var_9A, var_198, CStr(Format(Trim(CVar(var_130)), "0.00")), 1, 1, var_2A0)
  loc_18834D7:           var_198.Text = CVar(CLng(&H10))
  loc_18834FD:         End If
  loc_1883500:       Next var_308 'Integer
  loc_1883512:       Set var_C0 = Me.LblCap
  loc_1883518:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_188356B:       If CBool((Trim(CVar(var_134.Tag)) = CVar(MemVar_1F95078 & "DIS")) And (global_92 <> CDbl(0))) Then
  loc_188357B:         Set var_C0 = Me.TxtGt
  loc_1883581:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_1883589:         var_130 = var_134.Text
  loc_1883596:         var_298 = Val(var_130)
  loc_18835D9:         Set var_190 = Me.TxtPer
  loc_18835DF:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_194, CStr(Format(CVar(((var_298 / global_92) * CDbl(&H64))), "0.00000")))
  loc_18835E7:         var_194.Text = 1
  loc_1883607:       End If
  loc_1883607:     End If
  loc_188360A:   Else
  loc_1883617:     Set var_C0 = Me.TxtPer
  loc_188361D:     Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_126)
  loc_1883625:     1 = var_134.Visible
  loc_1883637:     If (var_126 = &HFF) Then
  loc_1883640:       Call Proc_350_62_127FE20(var_9A, var_298)
  loc_1883648:       var_A4 = var_298
  loc_1883658:       Set var_C0 = Me.TxtPer
  loc_188365E:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130)
  loc_1883666:       var_A4 = var_134.Text
  loc_18836B3:       Set var_190 = Me.TxtGt
  loc_18836B9:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_194, CStr(Format(CVar(((var_A4 * Val(var_130)) / CDbl(&H64))), "0.00")), 1)
  loc_18836C1:       var_194.Text = 1
  loc_18836EE:       Set var_C0 = Me.LblCap
  loc_18836F4:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130)
  loc_18836FC:       var_298 = var_134.Tag
  loc_1883744:       If CBool((Trim(CVar(var_130)) = CVar(MemVar_1F95078 & "ADD")) And (var_90 > CDbl(0))) Then
  loc_188376F:         var_130 = CStr(Format(var_90, "0.00"))
  loc_188377D:         Set var_C0 = Me.TxtGt
  loc_1883783:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130)
  loc_188378B:         var_134.Text = 1
  loc_18837A1:       End If
  loc_18837AE:       Set var_C0 = Me.LblCap
  loc_18837B4:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130)
  loc_18837BC:       1 = var_134.Tag
  loc_1883804:       If CBool((Trim(CVar(var_130)) = CVar(MemVar_1F95078 & "DED")) And (var_90 > CDbl(0))) Then
  loc_188383D:         Set var_C0 = Me.TxtGt
  loc_1883843:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, CStr(Format(var_98, "0.00")))
  loc_188384B:         var_134.Text = 1
  loc_1883861:       End If
  loc_1883866:       var_130 = CStr(var_A4)
  loc_1883873:       Set var_C0 = Me.LblDummy
  loc_1883879:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130)
  loc_1883881:       var_134.Caption = 1
  loc_1883893:     Else
  loc_18838A0:       Set var_C0 = Me.TxtPer
  loc_18838A6:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_18838B9:       var_E4 = (var_134.Visible = 0)
  loc_18838CA:       Set var_190 = Me.LblCap
  loc_18838D0:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_194, var_130)
  loc_18838D8:       var_E4 = var_194.Tag
  loc_1883919:       If CBool(var_298 And (Trim(CVar(var_130)) = CVar(MemVar_1F95078 & "ADD"))) Then
  loc_1883944:         var_130 = CStr(Format(var_90, "0.00"))
  loc_1883952:         Set var_C0 = Me.TxtGt
  loc_1883958:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130)
  loc_1883960:         var_134.Text = 1
  loc_1883979:       Else
  loc_1883986:         Set var_C0 = Me.TxtPer
  loc_188398C:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_1883994:         var_126 = var_134.Visible
  loc_188399F:         var_E4 = (var_126 = 0)
  loc_18839B0:         Set var_190 = Me.LblCap
  loc_18839B6:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_194, var_130)
  loc_18839BE:         var_E4 = var_194.Tag
  loc_18839FF:         If CBool(1 And (Trim(CVar(var_130)) = CVar(MemVar_1F95078 & "DED"))) Then
  loc_1883A38:           Set var_C0 = Me.TxtGt
  loc_1883A3E:           Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, CStr(Format(var_98, "0.00")))
  loc_1883A46:           var_134.Text = 1
  loc_1883A5C:         End If
  loc_1883A5C:       End If
  loc_1883A5C:     End If
  loc_1883A5C:   End If
  loc_1883A5F: Next var_1AC 'Integer
  loc_1883A89: For var_30C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_30C 'Integer
  loc_1883A93:   var_E4 = CVar(CLng(var_9A)) 'Long
  loc_1883A9B:   var_104 = CVar(CLng(2)) 'Long
  loc_1883AB5:   var_130 = CStr(Me.FGrid.TextMatrix))
  loc_1883AC4:   var_124 = CVar(CLng(var_9A)) 'Long
  loc_1883ACC:   var_1D0 = CVar(CLng(3)) 'Long
  loc_1883AD5:   Set var_134 = Me.FGrid
  loc_1883AF5:   var_210 = CVar(CLng(var_9A)) 'Long
  loc_1883AFD:   var_230 = CVar(CLng(4)) 'Long
  loc_1883B3C:   LateIdCallSt
  loc_1883B6F:   Set var_C0 = Me.TxtGt
  loc_1883B75:   Call 0.Method_Proc_350_60_188498C0 (1, var_134, var_130, Me.FGrid, CVar(CStr(Format(CVar((Val(var_130) * Val(CStr(var_134.TextMatrix))))), "0.00"))), 1, 1)
  loc_1883B7D:   var_230 = var_134.Text
  loc_1883B8A:   var_298 = Val(var_130)
  loc_1883BBB:   var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1883BDA:   var_148 = CVar((var_298 + var_2A0)) 'Double
  loc_1883BF6:   Set var_194 = Me.TxtGt
  loc_1883BFC:   Call 0.Method_Proc_350_60_188498C0 (1, var_198, CStr(Format(var_134.TextMatrix), "0.00")), 1, 1, var_2A0, CVar(CLng(4)))
  loc_1883C04:   var_198.Text = CVar(CLng(var_9A))
  loc_1883C2D: Next var_30C 'Integer
  loc_1883C36: Set var_C0 = Me.TopCtrl1
  loc_1883C3C: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1883C50: Set var_134 = Me.TopCtrl1
  loc_1883C56: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_1883C7C: If ( Or (CStr() = "Edit")) Then
  loc_1883C8B:   Set var_C0 = Me.TxtGt
  loc_1883C91:   Call 0.Method_Proc_350_60_188498C8 (var_126, var_9A)
  loc_1883C9C:   For var_310 =  To var_126: 2 = var_310 'Integer
  loc_1883CAF:     Set var_C0 = Me.TxtPer
  loc_1883CB5:     Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_1883CBD:     var_126 = var_134.Visible
  loc_1883CD9:     Set var_190 = Me.LblCap
  loc_1883CDF:     Call 0.Method_Proc_350_60_188498C0 (var_9A, var_194)
  loc_1883CE7:     var_130 = var_194.Tag
  loc_1883D28:     If CBool((var_126 = &HFF) And (Trim(CVar(var_130)) = CVar(MemVar_1F95078 & "SCH"))) Then
  loc_1883D31:       Call Proc_350_62_127FE20(var_9A)
  loc_1883D39:       var_A4 = var_298
  loc_1883D49:       Set var_C0 = Me.TxtPer
  loc_1883D4F:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130)
  loc_1883D57:       var_A4 = var_134.Text
  loc_1883D64:       var_298 = Val(var_130)
  loc_1883DA4:       Set var_190 = Me.TxtGt
  loc_1883DAA:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_194, CStr(Format(CVar(((var_A4 * var_298) / CDbl(&H64))), "0.00")), 1)
  loc_1883DB2:       var_194.Text = 1
  loc_1883DE4:       Set var_C0 = Me.LblDummy
  loc_1883DEA:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, CStr(var_A4))
  loc_1883DF2:       var_134.Caption = var_298
  loc_1883E01:     End If
  loc_1883E04:   Next var_310 'Integer
  loc_1883E09: End If
  loc_1883E1C: Me.FGCat.Rows = 1
  loc_1883E49: For var_314 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_314 'Integer
  loc_1883E59:   If (var_AC > var_AA) Then
  loc_1883E66:     If (var_B6 < var_AC) Then
  loc_1883E6D:       var_E4 = CVar(CLng(var_9A)) 'Long
  loc_1883E75:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1883E94:       var_124 = CVar(CLng(var_9A)) 'Long
  loc_1883E9C:       var_1D0 = CVar(CLng(0)) 'Long
  loc_1883EC5:       var_1F0 = CVar(CLng(var_9A)) 'Long
  loc_1883ECD:       var_210 = CVar(CLng(3)) 'Long
  loc_1883EF6:       var_230 = CVar(CLng(var_9A)) 'Long
  loc_1883EFE:       var_250 = CVar(CLng(2)) 'Long
  loc_1883F27:       var_270 = CVar(CLng(var_9A)) 'Long
  loc_1883F2F:       var_290 = CVar(CLng(&H10)) 'Long
  loc_1883F74:       var_18C = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_1883FD8:       Call Proc_350_63_17B5D18(CStr(Me.FGrid.TextMatrix)), CInt(Val(CStr(Me.FGrid.TextMatrix)))), CSng(Format(CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))), "0.00")), vbNullString, Val(CStr(Me.FGrid.TextMatrix))), Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H11)), CVar(CLng(var_9A)))
  loc_1884015:     Else
  loc_1884019:       var_E4 = CVar(CLng(var_9A)) 'Long
  loc_1884021:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1884040:       var_124 = CVar(CLng(var_9A)) 'Long
  loc_1884048:       var_1D0 = CVar(CLng(0)) 'Long
  loc_1884071:       var_1F0 = CVar(CLng(var_9A)) 'Long
  loc_1884079:       var_210 = CVar(CLng(3)) 'Long
  loc_18840A2:       var_230 = CVar(CLng(var_9A)) 'Long
  loc_18840AA:       var_250 = CVar(CLng(2)) 'Long
  loc_18840D3:       var_270 = CVar(CLng(var_9A)) 'Long
  loc_18840DB:       var_290 = CVar(CLng(&H10)) 'Long
  loc_18840FD:       var_374 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1884120:       var_18C = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_374)) 'Double
  loc_1884159:       Call Proc_350_63_17B5D18(CStr(Me.FGrid.TextMatrix)), CInt(Val(CStr(Me.FGrid.TextMatrix)))), CSng(Format(CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))), "0.00")), vbNullString, 0, 1, 1, var_374)
  loc_188418D:     End If
  loc_1884190:   Else
  loc_188419A:     If (var_B6 < var_AC) Then
  loc_18841A1:       var_E4 = CVar(CLng(var_9A)) 'Long
  loc_18841A9:       var_104 = CVar(CLng(&HA)) 'Long
  loc_18841C8:       var_124 = CVar(CLng(var_9A)) 'Long
  loc_18841D0:       var_1D0 = CVar(CLng(0)) 'Long
  loc_18841F9:       var_1F0 = CVar(CLng(var_9A)) 'Long
  loc_1884201:       var_210 = CVar(CLng(3)) 'Long
  loc_188422A:       var_230 = CVar(CLng(var_9A)) 'Long
  loc_1884232:       var_250 = CVar(CLng(2)) 'Long
  loc_1884294:       Set var_198 = Me.FGrid
  loc_18842D7:       Call Proc_350_63_17B5D18(CStr(Me.FGrid.TextMatrix)), CInt(Val(CStr(Me.FGrid.TextMatrix)))), CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00")), vbNullString, Val(CStr(var_198.TextMatrix))), Val(CStr(var_198.TextMatrix))), CVar(CLng(&H11)), CVar(CLng(var_9A)))
  loc_188430E:     Else
  loc_1884312:       var_E4 = CVar(CLng(var_9A)) 'Long
  loc_188431A:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1884339:       var_124 = CVar(CLng(var_9A)) 'Long
  loc_1884341:       var_1D0 = CVar(CLng(0)) 'Long
  loc_188434A:       Set var_134 = Me.FGrid
  loc_188436A:       var_1F0 = CVar(CLng(var_9A)) 'Long
  loc_1884372:       var_210 = CVar(CLng(3)) 'Long
  loc_188439B:       var_230 = CVar(CLng(var_9A)) 'Long
  loc_18843A3:       var_250 = CVar(CLng(2)) 'Long
  loc_18843C5:       var_36C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_188441D:       Call Proc_350_63_17B5D18(CStr(Me.FGrid.TextMatrix)), CInt(Val(CStr(var_134.TextMatrix)))), CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_36C)), "0.00")), vbNullString, 0, 1, 1, var_36C)
  loc_188444B:     End If
  loc_188444B:   End If
  loc_188444E: Next var_314 'Integer
  loc_1884472: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_1884488:   Me.FGCat.FixedRows = 1
  loc_1884490: End If
  loc_18844BE: For var_380 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_9C = var_380 'Integer
  loc_18844D0:   Set var_C0 = Me.TxtGt
  loc_18844D6:   Call 0.Method_Proc_350_60_188498C8 (var_126, var_9A, 1)
  loc_18844E1:   For var_384 = CDbl(0) To var_126: 0 = var_384 'Integer
  loc_18844F4:     Set var_C0 = Me.LblCap
  loc_18844FA:     Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_1884502:     var_130 = var_134.Tag
  loc_1884510:     var_148 = Trim(CVar(var_130))
  loc_188451C:     var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1884564:     If (CVar(CLng(7)) = Trim(CVar(CStr(Me.FGCat.TextMatrix))))) Then
  loc_1884574:       Set var_C0 = Me.TxtGt
  loc_188457A:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130)
  loc_1884582:       var_E4 = var_134.Text
  loc_188458F:       var_298 = Val(var_130)
  loc_1884596:       var_E4 = CVar(CLng(var_9C)) 'Long
  loc_18845C0:       var_2A0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_18845DF:       var_148 = CVar((var_298 + var_2A0)) 'Double
  loc_18845FC:       Set var_194 = Me.TxtGt
  loc_1884602:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_198, CStr(Format(var_148, "0.00")), 1, 1, var_2A0)
  loc_188460A:       var_198.Text = CVar(CLng(6))
  loc_1884630:     End If
  loc_1884633:   Next var_384 'Integer
  loc_188463B: Next var_380 'Integer
  loc_188464C: Set var_C0 = Me.TxtGt
  loc_1884652: Call 0.Method_Proc_350_60_188498C8 (var_126, var_9A)
  loc_188465D: For var_388 =  To var_126: 2 = var_388 'Integer
  loc_1884670:   Set var_C0 = Me.LblCap
  loc_1884676:   Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134)
  loc_1884686:   var_D0 = CVar(var_134.Tag) 'String
  loc_18846B1:   If (Trim(var_D0) = CVar(MemVar_1F95078 & "ROFF")) Then
  loc_18846BA:     Call Proc_350_62_127FE20(var_9A)
  loc_18846C2:     var_A4 = var_298
  loc_18846DD:     Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, CStr(var_A4))
  loc_18846E5:     var_134.Caption = var_A4
  loc_188470A:     unk_5608DB.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_D0, -1
  loc_1884715:     Set var_88 = Me.LblDummy
  loc_1884732:     If (var_88.RecordCount > 0) Then
  loc_1884744:       var_C0 = var_88.Fields
  loc_188474C:       var_134 = var_C0.Item("RoundOffType")
  loc_1884778:       Proc_6_85_12628F0(var_A4, CByte(2), CStr(Left(CVar(var_134), 1)))
  loc_18847B5:       Set var_190 = Me.TxtGt
  loc_18847BB:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_194, CStr(Format(CVar(var_C0), "0.00")), 1)
  loc_18847C3:       var_194.Text = 1
  loc_18847E8:     Else
  loc_18847EB:       var_130 = "S"
  loc_18847FC:       Proc_6_85_12628F0(var_A4, CByte(2), var_130)
  loc_188482B:       var_138 = CStr(Format(CVar(var_298), "0.00"))
  loc_1884839:       Set var_C0 = Me.TxtGt
  loc_188483F:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_138, 1)
  loc_1884847:       var_134.Text = 1
  loc_1884863:     End If
  loc_1884866:   Else
  loc_188486D:     If (var_9A <> arg_C) Then
  loc_188487D:       Set var_C0 = Me.LblCap
  loc_1884883:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, var_130)
  loc_188488B:       var_298 = var_134.Tag
  loc_18848BD:       Set var_190 = Me.LblCap
  loc_18848C3:       Call 0.Method_Proc_350_60_188498C0 (var_9A, var_194, var_138)
  loc_18848CB:       (Trim(CVar(var_130)) = CVar(MemVar_1F95078 & "TOT")) = var_194.Tag
  loc_1884910:       If CBool(var_298 Or (Trim(CVar(var_138)) = CVar(MemVar_1F95078 & "NET"))) Then
  loc_1884919:         Call Proc_350_62_127FE20(var_9A)
  loc_1884953:         Set var_C0 = Me.TxtGt
  loc_1884959:         Call 0.Method_Proc_350_60_188498C0 (var_9A, var_134, CStr(Format(CVar(var_298), "0.00")))
  loc_1884961:         var_134.Text = 1
  loc_1884979:       End If
  loc_1884979:     End If
  loc_1884979:   End If
  loc_188497C: Next var_388 'Integer
  loc_1884986: Set var_88 = Nothing
  loc_1884989: Exit Sub
End Sub

Public Sub Proc_350_61_125EEE8
  'Data Table: 5608D4
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_9C As Double
  Dim var_118 As String
  Dim unk_5608DB As Connection15
  Dim var_8C As Recordset15
  Dim var_A4 As Double
  Dim var_140 As Variant
  Dim var_12C As Variant
  Dim var_154 As Field20
  Dim var_1C8 As Variant
  Dim var_184 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_13C As Variant
  Dim var_22C As Variant
  Dim var_94 As Double
  loc_125E9D5: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D0 'Integer
  loc_125E9DF:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_125E9E7:   var_100 = CVar(CLng(3)) 'Long
  loc_125EA09:   var_9C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_125EA19:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_125EA21:   var_100 = CVar(CLng(&HA)) 'Long
  loc_125EA54:   var_118 = "SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code) Where TS.Code='" & CStr(Me.FGrid.TextMatrix))
  loc_125EA64:   unk_5608DB.Execute var_118 & "' ORDER BY SNO DESC", var_13C, -1
  loc_125EA6F:   Set var_8C = var_140
  loc_125EA9D:   If (var_8C.RecordCount > 0) Then
  loc_125EAA3:     var_A4 = CDbl(0)
  loc_125EAA6:     ' Referenced from: 125EC42
  loc_125EAB5:     If Not(var_8C.EOF) Then
  loc_125EB07:       var_9C = ((Val(CStr(var_9C)) / (CDbl(&H64) + Val(CStr(var_8C.Fields.Item("Rate").Value)))) * CDbl(&H64))
  loc_125EB1F:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_125EB27:       var_100 = CVar(CLng(2)) 'Long
  loc_125EBF5:       var_28C = Round(((CVar(Val(CStr(Me.FGrid.TextMatrix)))) * (CVar(var_9C) * var_8C.Fields.Item("Rate").Value)) / 100), CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2)))
  loc_125EBFE:       var_AC = CSng(var_28C)
  loc_125EC2D:       var_A4 = (var_AC + var_A4)
  loc_125EC37:       var_B4 = (var_B4 + var_AC)
  loc_125EC3D:       var_8C.MoveNext
  loc_125EC42:       GoTo loc_125EAA6
  loc_125EC45:     End If
  loc_125EC49:     var_12C = CVar(CLng(var_86)) 'Long
  loc_125EC51:     var_184 = CVar(CLng(3)) 'Long
  loc_125EC5A:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_125EC62:     var_100 = CVar(CLng(3)) 'Long
  loc_125EC86:     var_13C = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_125EC8E:     Set var_140 = Me.FGrid
  loc_125EC94:     LateIdCallSt
  loc_125ECB1:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_125ECB9:     var_100 = CVar(CLng(3)) 'Long
  loc_125ECD8:     var_164 = CVar(CLng(var_86)) 'Long
  loc_125ECE0:     var_1A4 = CVar(CLng(3)) 'Long
  loc_125ED0D:     var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_125ED15:     Set var_140 = Me.FGrid
  loc_125ED1B:     LateIdCallSt
  loc_125ED3B:     var_12C = CVar(CLng(var_86)) 'Long
  loc_125ED43:     var_184 = CVar(CLng(2)) 'Long
  loc_125ED6C:     var_1C8 = CVar(CLng(var_86)) 'Long
  loc_125ED74:     var_22C = CVar(CLng(4)) 'Long
  loc_125ED7D:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_125ED85:     var_100 = CVar(CLng(3)) 'Long
  loc_125EDAD:     var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_125EDB5:     Set var_154 = Me.FGrid
  loc_125EDBB:     LateIdCallSt
  loc_125EDE0:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_125EDE8:     var_100 = CVar(CLng(4)) 'Long
  loc_125EE07:     var_164 = CVar(CLng(var_86)) 'Long
  loc_125EE0F:     var_1A4 = CVar(CLng(4)) 'Long
  loc_125EE3C:     var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_125EE44:     Set var_140 = Me.FGrid
  loc_125EE4A:     LateIdCallSt
  loc_125EE6A:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_125EE72:     var_100 = CVar(CLng(4)) 'Long
  loc_125EE9E:     var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_125EEAE:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_125EEB6:     var_100 = CVar(CLng(&H13)) 'Long
  loc_125EEC0:     var_CC = CVar(CStr(var_A4)) 'String
  loc_125EEC8:     Set var_BC = Me.FGrid
  loc_125EECE:     LateIdCallSt
  loc_125EEDC:   End If
  loc_125EEDF: Next var_D0 'Integer
  loc_125EEE4: Exit Sub
End Sub

Public Sub Proc_350_62_127FE20(arg_C) '127FE20
  'Data Table: 5608D4
  Dim var_AC As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_120 As Double
  Dim var_A0 As Double
  Dim var_D0 As Variant
  Dim var_228 As Double
  Dim var_168 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_18C As Variant
  Dim var_20C As Variant
  Dim var_23C As Label
  Dim var_8C As Double
  Dim var_1AC As Variant
  loc_127F89D: Set var_A8 = Me.TxtGt
  loc_127F8A3: Call 0.Method_Proc_350_62_127FE200 (arg_C, var_AC)
  loc_127F8C2: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_127F8E0: Set var_A8 = Me.LblCap
  loc_127F8E6: Call 0.Method_Proc_350_62_127FE200 (arg_C, var_AC)
  loc_127F910: If (var_AC.Tag = MemVar_1F95078 & "SCH") Then
  loc_127F938:   For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_127F942:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_127F94A:     var_108 = CVar(CLng(&H12)) 'Long
  loc_127F975:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_127F97C:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_127F984:       var_108 = CVar(CLng(4)) 'Long
  loc_127F9B0:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_127F9C0:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_127F9C8:       var_108 = CVar(CLng(4)) 'Long
  loc_127F9EA:       var_120 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_127FA02:       Set var_AC = Me.FGrid
  loc_127FA1B:       var_228 = Val(CStr(var_AC.TextMatrix)))
  loc_127FA2B:       Set var_164 = Me.TxtPer
  loc_127FA31:       Call 0.Method_Proc_350_62_127FE200 (arg_C, var_168, var_16C, var_228, CVar(CLng(&H10)), CVar(CLng(var_A2)), var_120)
  loc_127FA39:       var_108 = var_168.Text
  loc_127FA4D:       var_1CC = CVar(CLng(var_A2)) 'Long
  loc_127FA55:       var_1EC = CVar(CLng(&H11)) 'Long
  loc_127FA7E:       var_18C = CVar((((var_120 - var_228) * Val(var_16C)) / CDbl(&H64))) 'Double
  loc_127FA8E:       var_20C = CVar(CStr(Format(var_18C, "0.00"))) 'String
  loc_127FA96:       Set var_220 = Me.FGrid
  loc_127FA9C:       LateIdCallSt
  loc_127FAC9:     End If
  loc_127FACC:   Next var_D8 'Integer
  loc_127FAD4: Else
  loc_127FAF9:   For var_234 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_234 'Integer
  loc_127FB03:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_127FB0B:     var_108 = CVar(CLng(4)) 'Long
  loc_127FB37:     var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_127FB46:   Next var_234 'Integer
  loc_127FB4B: End If
  loc_127FB55: If (Len(var_90) > 0) Then
  loc_127FB87:   Set var_A8 = Me.LblCap
  loc_127FB8D:   Call 0.Method_Proc_350_62_127FE200 (arg_C, var_AC)
  loc_127FBA4:   var_D4 = MemVar_1F95078 & "SCH"
  loc_127FBB6:   Set var_164 = Me.LblCap
  loc_127FBBC:   Call 0.Method_Proc_350_62_127FE200 (arg_C, var_168, var_16C)
  loc_127FBC4:   (var_AC.Tag = var_D4) = var_168.Tag
  loc_127FBE6:   Set var_220 = Me.LblCap
  loc_127FBEC:   Call 0.Method_Proc_350_62_127FE200 (arg_C, var_23C)
  loc_127FC38:   If CBool( And (((Left(var_90, 1) = "1") Or (var_16C = MemVar_1F95078 & "ADD")) Or (var_23C.Tag = MemVar_1F95070 & "DED"))) Then
  loc_127FC3E:     var_8C = var_A0
  loc_127FC44:   Else
  loc_127FC5C:     var_B0 = CStr(Left(var_90, 1))
  loc_127FC76:     Set var_A8 = Me.TxtGt
  loc_127FC7C:     Call 0.Method_Proc_350_62_127FE200 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_127FC84:     var_120 = var_AC.Text
  loc_127FC91:     var_8C = Val(var_D4)
  loc_127FCA5:   End If
  loc_127FCC6:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_127FCD0:   ' Referenced from: 127FE15
  loc_127FCDA:   If (Len(var_90) > 0) Then
  loc_127FD1D:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_127FD67:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_127FD7E:     Set var_A8 = Me.TxtGt
  loc_127FD84:     Call 0.Method_Proc_350_62_127FE200 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_127FD99:     var_120 = Val(var_B0)
  loc_127FDB0:     Set var_164 = Me.TxtGt
  loc_127FDB6:     Call 0.Method_Proc_350_62_127FE200 (var_AC.Text, var_168, var_D4, CVar(var_8C))
  loc_127FDCC:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_127FDDF:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_127FDEE:     var_1AC = (var_8C + IIf(var_90, CVar(var_168.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_127FDF3:     var_8C = CSng("0.00")
  loc_127FE15:     GoTo loc_127FCD0
  loc_127FE18:   End If
  loc_127FE18: End If
  loc_127FE18: Proc_350_62_127FE20 = var_8C
End Sub

Public Sub Proc_350_63_17B5D18(arg_C, arg_10, arg_14) '17B5D18
  'Data Table: 5608D4
  Dim var_E4 As String
  Dim unk_5608DB As Connection15
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_F8 As Variant
  Dim var_D2 As Integer
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_13C As Variant
  Dim var_128 As Variant
  Dim var_D0 As Double
  Dim var_160 As Variant
  Dim var_184 As Double
  Dim var_14C As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_E0 As Recordset15
  Dim var_254 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_1B4 As Integer
  Dim var_264 As Variant
  Dim var_118 As MSHFlexGrid
  Dim var_16C As Double
  Dim var_9C As Double
  loc_17B3D7C: unk_5608DB.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "'", var_108, -1
  loc_17B3D87: Set var_D8 = var_10C
  loc_17B3DAB: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_17B3DBB: unk_5608DB.Execute var_E4 & "'", var_108, -1
  loc_17B3DC6: Set var_8C = var_10C
  loc_17B3DD8: var_DA = 0
  loc_17B3DDE: var_94 = arg_14
  loc_17B3DE3: var_86 = 1
  loc_17B3DE9: var_A8 = var_94
  loc_17B3DEF: var_B0 = var_94
  loc_17B3DF5: var_B8 = CDbl(0)
  loc_17B3E0C: If (var_8C.RecordCount > 0) Then
  loc_17B3E0F:   ' Referenced from: 17B5CEC
  loc_17B3E1E:   If Not(var_8C.EOF) Then
  loc_17B3E25:     Set var_118 = Me.FGCat
  loc_17B3E28:     var_F8 = vbNullString
  loc_17B3E4D:     If (var_8C.RecordCount > 0) Then
  loc_17B3E56:       var_D2 = (var_D2 + 1)
  loc_17B3E5C:       var_F8 = "Nature"
  loc_17B3E8F:       var_15C = Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_F8)), var_D2, FGCat.DispID_10000, var_F8, var_B8, var_B0))) 'Variant
  loc_17B3EA8:       If (var_15C = "On Base Amt") Then
  loc_17B3EEB:         If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_17B3F2D:           var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64))
  loc_17B3F40:         Else
  loc_17B3F62:           var_13C = var_8C.Fields.Item("Rate").Value
  loc_17B3FA0:           Proc_6_142_14A62A0(((Val(CStr(var_13C)) * (var_A8 + arg_1C)) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_13C)), var_D0)
  loc_17B3FA5:           var_184 = var_A8
  loc_17B3FEB:           var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64)) + var_184)
  loc_17B4009:         End If
  loc_17B402F:         Proc_6_39_E7D3A0(var_13C, CVar(var_8C.Fields.Item("Limit")), var_D0, var_184, var_86)
  loc_17B4062:         var_1A4 = CVar(var_8C.Fields.Item("Rate")) 'Address
  loc_17B4069:         Proc_6_39_E7D3A0(var_1B4, var_1A4, (var_13C <= CVar(var_94)), var_94)
  loc_17B4093:         If CBool(var_DA And (var_1B4 > 0)) Then
  loc_17B409D:           If (var_D0 > CDbl(0)) Then
  loc_17B40B9:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B40C1:             var_194 = CVar(CLng(0)) 'Long
  loc_17B40CB:             var_13C = CVar(CStr(var_86)) 'String
  loc_17B40D2:             LateIdCallSt
  loc_17B40FD:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4105:             var_194 = CVar(CLng(1)) 'Long
  loc_17B410F:             var_13C = CVar(CStr(arg_10)) 'String
  loc_17B4116:             LateIdCallSt
  loc_17B4141:             var_1F4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4149:             var_214 = CVar(CLng(9)) 'Long
  loc_17B4152:             var_F8 = CVar(CLng(arg_10)) 'Long
  loc_17B415A:             var_194 = CVar(CLng(5)) 'Long
  loc_17B4174:             var_14C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_17B417B:             LateIdCallSt
  loc_17B4199:             If (var_DA = 0) Then
  loc_17B41A0:               Set var_160 = Me.FGCat
  loc_17B41B5:               var_128 = CVar((CLng(var_160.Rows) - 1)) 'Long
  loc_17B41BD:               var_1C4 = CVar(CLng(2)) 'Long
  loc_17B41ED:               var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17B41F4:               LateIdCallSt
  loc_17B4211:             Else
  loc_17B421E:               var_128 = "Select RevCode as Code from SundryType where v_type in ('FACL') and SundryCode in (Select Sundry from RevMast Where Code='"
  loc_17B4264:               unk_5608DB.Execute CStr(var_128 & var_8C.Fields.Item("TaxCode").Value & "')"), var_1A4, -1
  loc_17B426F:               Set var_E0 = var_160
  loc_17B429D:               If (var_E0.RecordCount > 0) Then
  loc_17B42B9:                 var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B42C1:                 var_1C4 = CVar(CLng(2)) 'Long
  loc_17B42F1:                 var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17B42F8:                 LateIdCallSt
  loc_17B4312:               End If
  loc_17B4312:             End If
  loc_17B432B:             var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4333:             var_1C4 = CVar(CLng(3)) 'Long
  loc_17B4363:             var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17B436A:             LateIdCallSt
  loc_17B439D:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B43A5:             var_194 = CVar(CLng(4)) 'Long
  loc_17B43B3:             var_13C = CVar(CStr((var_A8 + arg_1C))) 'String
  loc_17B43BA:             LateIdCallSt
  loc_17B43E5:             var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B43ED:             var_1C4 = CVar(CLng(5)) 'Long
  loc_17B441D:             var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17B4424:             LateIdCallSt
  loc_17B4482:             var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B44A6:             var_1A4 = (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes") 'Variant
  loc_17B44D5:             LateIdCallSt
  loc_17B4512:             var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4547:             var_14C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_118, CVar(CStr(Round(var_D0, CLng(IIf(var_1A4, 0, 2))))), CVar(CLng(6)), var_204)) 'String
  loc_17B454E:             LateIdCallSt
  loc_17B457F:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4587:             var_194 = CVar(CLng(8)) 'Long
  loc_17B4596:             LateIdCallSt
  loc_17B45A4:           End If
  loc_17B45BD:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B45C5:           var_194 = CVar(CLng(6)) 'Long
  loc_17B45EA:           var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_17B4613:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B461B:           var_194 = CVar(CLng(6)) 'Long
  loc_17B4636:           var_16C = Val(CStr(var_118.TextMatrix)))
  loc_17B4640:           var_94 = (var_94 + var_16C)
  loc_17B4657:           var_B0 = (var_B0 + var_D0)
  loc_17B465D:           var_B8 = var_D0
  loc_17B4660:         End If
  loc_17B4663:       Else
  loc_17B466E:         If (var_15C = "On Running Total") Then
  loc_17B46B1:           If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_17B46EF:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_17B4702:           Else
  loc_17B4724:             var_13C = var_8C.Fields.Item("Rate").Value
  loc_17B475E:             Proc_6_142_14A62A0(((Val(CStr(var_13C)) * var_B0) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_13C)), var_D0, var_B8, var_B0)
  loc_17B4763:             var_184 = var_94
  loc_17B47A5:             var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)) + var_184)
  loc_17B47C3:           End If
  loc_17B47E9:           Proc_6_39_E7D3A0(var_13C, CVar(var_8C.Fields.Item("Rate")), var_D0, var_184, var_16C)
  loc_17B4803:           If (var_13C > 0) Then
  loc_17B480D:             If (var_D0 > CDbl(0)) Then
  loc_17B4829:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4831:               var_194 = CVar(CLng(0)) 'Long
  loc_17B483B:               var_13C = CVar(CStr(var_86)) 'String
  loc_17B4842:               LateIdCallSt
  loc_17B486D:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4875:               var_194 = CVar(CLng(1)) 'Long
  loc_17B487F:               var_13C = CVar(CStr(arg_10)) 'String
  loc_17B4886:               LateIdCallSt
  loc_17B48B1:               var_1F4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B48B9:               var_214 = CVar(CLng(9)) 'Long
  loc_17B48C2:               var_F8 = CVar(CLng(arg_10)) 'Long
  loc_17B48CA:               var_194 = CVar(CLng(5)) 'Long
  loc_17B48E4:               var_14C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_17B48EB:               LateIdCallSt
  loc_17B4909:               If (var_DA = 0) Then
  loc_17B4910:                 Set var_160 = Me.FGCat
  loc_17B4925:                 var_128 = CVar((CLng(var_160.Rows) - 1)) 'Long
  loc_17B492D:                 var_1C4 = CVar(CLng(2)) 'Long
  loc_17B495D:                 var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17B4964:                 LateIdCallSt
  loc_17B4981:               Else
  loc_17B498E:                 var_128 = "Select RevCode as Code from SundryType where v_type in ('FACL') and SundryCode in (Select Sundry from RevMast Where Code='"
  loc_17B49D4:                 unk_5608DB.Execute CStr(var_128 & var_8C.Fields.Item("TaxCode").Value & "')"), var_1A4, -1
  loc_17B49DF:                 Set var_E0 = var_160
  loc_17B4A0D:                 If (var_E0.RecordCount > 0) Then
  loc_17B4A29:                   var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4A31:                   var_1C4 = CVar(CLng(2)) 'Long
  loc_17B4A61:                   var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17B4A68:                   LateIdCallSt
  loc_17B4A82:                 End If
  loc_17B4A82:               End If
  loc_17B4A9B:               var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4AA3:               var_1C4 = CVar(CLng(3)) 'Long
  loc_17B4AD3:               var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17B4ADA:               LateIdCallSt
  loc_17B4B0D:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4B15:               var_194 = CVar(CLng(4)) 'Long
  loc_17B4B1F:               var_13C = CVar(CStr(var_B0)) 'String
  loc_17B4B26:               LateIdCallSt
  loc_17B4B51:               var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4B59:               var_1C4 = CVar(CLng(5)) 'Long
  loc_17B4B89:               var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17B4B90:               LateIdCallSt
  loc_17B4BEE:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4BF6:               var_224 = CVar(CLng(6)) 'Long
  loc_17B4C12:               var_1A4 = (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes") 'Variant
  loc_17B4C3A:               var_264 = CVar(CStr(Round(var_D0, CLng(IIf(var_1A4, 0, 2))))) 'String
  loc_17B4C41:               LateIdCallSt
  loc_17B4C7E:               var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4C86:               var_1C4 = CVar(CLng(7)) 'Long
  loc_17B4CB6:               var_14C = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_17B4CBD:               LateIdCallSt
  loc_17B4CF0:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4CF8:               var_194 = CVar(CLng(8)) 'Long
  loc_17B4D07:               LateIdCallSt
  loc_17B4D15:             End If
  loc_17B4D2E:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4D36:             var_194 = CVar(CLng(6)) 'Long
  loc_17B4D5B:             var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_17B4D84:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4D8C:             var_194 = CVar(CLng(6)) 'Long
  loc_17B4DB1:             var_94 = (var_94 + Val(CStr(var_118.TextMatrix))))
  loc_17B4DC8:             var_B0 = (var_B0 + var_D0)
  loc_17B4DCE:             var_B8 = var_D0
  loc_17B4DD1:           End If
  loc_17B4DD4:         Else
  loc_17B4DDF:           If (var_15C = "On Prev. Tax Amt") Then
  loc_17B4E22:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_17B4E60:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_17B4E73:             Else
  loc_17B4ECF:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_17B4F16:               var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)) + var_94)
  loc_17B4F34:             End If
  loc_17B4F3B:             If (var_D0 > CDbl(0)) Then
  loc_17B4F57:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4F5F:               var_194 = CVar(CLng(0)) 'Long
  loc_17B4F69:               var_13C = CVar(CStr(var_86)) 'String
  loc_17B4F70:               LateIdCallSt
  loc_17B4F9B:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4FA3:               var_194 = CVar(CLng(1)) 'Long
  loc_17B4FAD:               var_13C = CVar(CStr(arg_10)) 'String
  loc_17B4FB4:               LateIdCallSt
  loc_17B4FDF:               var_1F4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B4FE7:               var_214 = CVar(CLng(9)) 'Long
  loc_17B4FF0:               var_F8 = CVar(CLng(arg_10)) 'Long
  loc_17B4FF8:               var_194 = CVar(CLng(5)) 'Long
  loc_17B5012:               var_14C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_17B5019:               LateIdCallSt
  loc_17B5037:               If (var_DA = 0) Then
  loc_17B503E:                 Set var_160 = Me.FGCat
  loc_17B5053:                 var_128 = CVar((CLng(var_160.Rows) - 1)) 'Long
  loc_17B505B:                 var_1C4 = CVar(CLng(2)) 'Long
  loc_17B508B:                 var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17B5092:                 LateIdCallSt
  loc_17B50AF:               Else
  loc_17B50BC:                 var_128 = "Select RevCode as Code from SundryType where v_type in ('FACL') and SundryCode in (Select Sundry from RevMast Where Code='"
  loc_17B5102:                 unk_5608DB.Execute CStr(var_128 & var_8C.Fields.Item("TaxCode").Value & "')"), var_1A4, -1
  loc_17B510D:                 Set var_E0 = var_160
  loc_17B513B:                 If (var_E0.RecordCount > 0) Then
  loc_17B5157:                   var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B515F:                   var_1C4 = CVar(CLng(2)) 'Long
  loc_17B518F:                   var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17B5196:                   LateIdCallSt
  loc_17B51B0:                 End If
  loc_17B51B0:               End If
  loc_17B51C9:               var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B51D1:               var_1C4 = CVar(CLng(3)) 'Long
  loc_17B5201:               var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17B5208:               LateIdCallSt
  loc_17B523B:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5243:               var_194 = CVar(CLng(4)) 'Long
  loc_17B524D:               var_13C = CVar(CStr(var_B8)) 'String
  loc_17B5254:               LateIdCallSt
  loc_17B527F:               var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5287:               var_1C4 = CVar(CLng(5)) 'Long
  loc_17B52B7:               var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17B52BE:               LateIdCallSt
  loc_17B5318:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5320:               var_224 = CVar(CLng(6)) 'Long
  loc_17B5325:               var_1B4 = 2
  loc_17B5364:               var_254 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_1B4))))) 'String
  loc_17B536B:               LateIdCallSt
  loc_17B53A8:               var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B53B0:               var_1C4 = CVar(CLng(7)) 'Long
  loc_17B53E0:               var_14C = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_17B53E7:               LateIdCallSt
  loc_17B541A:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5422:               var_194 = CVar(CLng(8)) 'Long
  loc_17B5431:               LateIdCallSt
  loc_17B543F:             End If
  loc_17B5458:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5460:             var_194 = CVar(CLng(6)) 'Long
  loc_17B5485:             var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_17B54AE:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B54B6:             var_194 = CVar(CLng(6)) 'Long
  loc_17B54D1:             var_16C = Val(CStr(var_118.TextMatrix)))
  loc_17B54DB:             var_94 = (var_94 + var_16C)
  loc_17B54F2:             var_B0 = (var_B0 + var_D0)
  loc_17B54F8:             var_B8 = var_D0
  loc_17B54FE:           Else
  loc_17B553E:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_17B557C:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_17B558F:             Else
  loc_17B55B1:               var_13C = var_8C.Fields.Item("Rate").Value
  loc_17B55EB:               Proc_6_142_14A62A0(((Val(CStr(var_13C)) * var_A8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_13C)), var_D0, var_B8, var_B0)
  loc_17B55F0:               var_184 = var_94
  loc_17B5632:               var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)) + var_184)
  loc_17B5650:             End If
  loc_17B5653:             var_F8 = "Limit"
  loc_17B5676:             Proc_6_39_E7D3A0(var_13C, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_184, var_16C)
  loc_17B568D:             var_194 = "Rate"
  loc_17B56A9:             var_1A4 = CVar(var_8C.Fields.Item(var_194)) 'Address
  loc_17B56B0:             Proc_6_39_E7D3A0(var_1B4, var_1A4, (var_13C <= CVar(var_94)), var_194)
  loc_17B56DA:             If CBool(var_F8 And (var_1B4 > 0)) Then
  loc_17B56E4:               If (var_D0 > CDbl(0)) Then
  loc_17B5700:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5708:                 var_194 = CVar(CLng(0)) 'Long
  loc_17B5712:                 var_13C = CVar(CStr(var_86)) 'String
  loc_17B5719:                 LateIdCallSt
  loc_17B5744:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B574C:                 var_194 = CVar(CLng(1)) 'Long
  loc_17B5756:                 var_13C = CVar(CStr(arg_10)) 'String
  loc_17B575D:                 LateIdCallSt
  loc_17B5788:                 var_1F4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5790:                 var_214 = CVar(CLng(9)) 'Long
  loc_17B5799:                 var_F8 = CVar(CLng(arg_10)) 'Long
  loc_17B57A1:                 var_194 = CVar(CLng(5)) 'Long
  loc_17B57BB:                 var_14C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_17B57C2:                 LateIdCallSt
  loc_17B57E0:                 If (var_DA = 0) Then
  loc_17B57E7:                   Set var_160 = Me.FGCat
  loc_17B57FC:                   var_128 = CVar((CLng(var_160.Rows) - 1)) 'Long
  loc_17B5804:                   var_1C4 = CVar(CLng(2)) 'Long
  loc_17B5834:                   var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17B583B:                   LateIdCallSt
  loc_17B5858:                 Else
  loc_17B5865:                   var_128 = "Select RevCode as Code from SundryType where v_type in ('FACL') and SundryCode in (Select Sundry from RevMast Where Code='"
  loc_17B58AB:                   unk_5608DB.Execute CStr(var_128 & var_8C.Fields.Item("TaxCode").Value & "')"), var_1A4, -1
  loc_17B58B6:                   Set var_E0 = var_160
  loc_17B58E4:                   If (var_E0.RecordCount > 0) Then
  loc_17B5900:                     var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5908:                     var_1C4 = CVar(CLng(2)) 'Long
  loc_17B5938:                     var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17B593F:                     LateIdCallSt
  loc_17B5959:                   End If
  loc_17B5959:                 End If
  loc_17B5972:                 var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B597A:                 var_1C4 = CVar(CLng(3)) 'Long
  loc_17B59AA:                 var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17B59B1:                 LateIdCallSt
  loc_17B59E4:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B59EC:                 var_194 = CVar(CLng(4)) 'Long
  loc_17B59F6:                 var_13C = CVar(CStr(var_A8)) 'String
  loc_17B59FD:                 LateIdCallSt
  loc_17B5A28:                 var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5A30:                 var_1C4 = CVar(CLng(5)) 'Long
  loc_17B5A60:                 var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17B5A67:                 LateIdCallSt
  loc_17B5AC5:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5B18:                 LateIdCallSt
  loc_17B5B55:                 var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5B8A:                 var_14C = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_118, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))), CVar(CLng(6)), var_204)) 'String
  loc_17B5B91:                 LateIdCallSt
  loc_17B5BC2:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5BCA:                 var_194 = CVar(CLng(8)) 'Long
  loc_17B5BD9:                 LateIdCallSt
  loc_17B5BE7:               End If
  loc_17B5C00:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5C08:               var_194 = CVar(CLng(6)) 'Long
  loc_17B5C2D:               var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_17B5C56:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5C5E:               var_194 = CVar(CLng(6)) 'Long
  loc_17B5C83:               var_94 = (var_94 + Val(CStr(var_118.TextMatrix))))
  loc_17B5C9A:               var_B0 = (var_B0 + var_D0)
  loc_17B5CA0:               var_B8 = var_D0
  loc_17B5CA3:             End If
  loc_17B5CA3:           End If
  loc_17B5CA3:         End If
  loc_17B5CA3:       End If
  loc_17B5CA3:     End If
  loc_17B5CA9:     var_86 = (var_86 + 1)
  loc_17B5CAE:     Set var_118 = Nothing 
  loc_17B5CB6:     var_F8 = CVar(CLng(arg_10)) 'Long
  loc_17B5CBE:     var_194 = CVar(CLng(&H13)) 'Long
  loc_17B5CC8:     var_108 = CVar(CStr(var_9C)) 'String
  loc_17B5CD0:     Set var_10C = Me.FGrid
  loc_17B5CD6:     LateIdCallSt
  loc_17B5CE7:     var_8C.MoveNext
  loc_17B5CEC:     GoTo loc_17B3E0F
  loc_17B5CEF:   End If
  loc_17B5CF4:   Set var_8C = Nothing
  loc_17B5CFC:   Set var_C4 = Nothing
  loc_17B5D04:   Set var_C0 = Nothing
  loc_17B5D0C:   Set var_D8 = Nothing
  loc_17B5D14:   Set var_E0 = Nothing
  loc_17B5D17: End If
  loc_17B5D17: Exit Sub
End Sub

Public Sub Proc_350_64_FABB48
  'Data Table: 5608D4
  Dim var_DC As TextBox
  Dim var_D8 As Frame
  loc_FAB9FD: Set var_D8 = Me.TxteInvInfo
  loc_FABA03: Call 0.Method_Proc_350_64_FABB480 (0, var_DC)
  loc_FABA0B: var_DC.Text = CStr(IIf((global_112 <> vbNullString), global_112, vbNullString))
  loc_FABA60: Set var_D8 = Me.TxteInvInfo
  loc_FABA66: Call 0.Method_Proc_350_64_FABB480 (1, var_DC)
  loc_FABA6E: var_DC.Text = CStr(IIf((global_116 <> vbNullString), global_116, vbNullString))
  loc_FABAE4: Set var_D8 = Me.TxteInvInfo
  loc_FABAEA: Call 0.Method_Proc_350_64_FABB480 (2, var_DC, CStr(IIf((global_120 <> CDate("31/Dec/1899")), Format(global_120, "dd/mm/yyyy hh:nn:ss"), vbNullString)))
  loc_FABAF2: var_DC.Text = 1
  loc_FABB19: If (global_112 <> vbNullString) Then
  loc_FABB28:   Me.FreInvInfo.Visible = True
  loc_FABB33: Else
  loc_FABB3F:   Me.FreInvInfo.Visible = False
  loc_FABB47: End If
  loc_FABB47: Exit Sub
End Sub

Public Sub Proc_350_65_E663B0(arg_C) 'E663B0
  'Data Table: 5608D4
  loc_E66370: If (arg_C <> vbNullString) Then
  loc_E6638C:   MsgBox("eInvoice already generated.", &H10, var_C8, var_E8, var_108)
  loc_E6639C:   Proc_350_65_E663B0 = 
  loc_E663A2: End If
  loc_E663A7: Proc_350_65_E663B0 = &HFF
End Sub
