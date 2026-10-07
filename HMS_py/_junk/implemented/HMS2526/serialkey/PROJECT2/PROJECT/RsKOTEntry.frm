VERSION 5.00
Begin VB.Form RsKOTEntry
  Caption = "KOT"
  BackColor = &H80000005&
  ForeColor = &H40&
  WindowState = 2
  ScaleMode = 0
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "RsKOTEntry.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 930
  ClientWidth = 13245
  ClientHeight = 10935
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 3503989.919
  ScaleHeight = 11010
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
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13245
    Height = 450
    TabIndex = 61
  End
  Begin Frame FrKOT
    Caption = "Frame1"
    BackColor = &HC0C0FF&
    Left = 0
    Top = 0
    Width = 26506
    Height = 11010
    TabIndex = 8
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
    Begin Timer Timer2
      Interval = 10
      Left = 17460
      Top = 10590
    End
    Begin TextBox Txt
      Index = 10
      ForeColor = &HC00000&
      Left = 10455
      Top = 2325
      Width = 3480
      Height = 285
      Enabled = 0   'False
      TabIndex = 30
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 9
      ForeColor = &HC00000&
      Left = 10455
      Top = 2010
      Width = 3480
      Height = 285
      Enabled = 0   'False
      TabIndex = 29
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 8
      ForeColor = &HC00000&
      Left = 10455
      Top = 1695
      Width = 3480
      Height = 285
      Enabled = 0   'False
      TabIndex = 28
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 7
      ForeColor = &HC00000&
      Left = 9570
      Top = 1305
      Width = 1860
      Height = 285
      Visible = 0   'False
      TabIndex = 27
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 6
      ForeColor = &HC00000&
      Left = 7515
      Top = 1005
      Width = 3915
      Height = 285
      TabIndex = 5
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin CheckBox ChkNCKOT
      Caption = "NC "
      BackColor = &HDEE6FE&
      ForeColor = &HC00000&
      Left = 8130
      Top = 1305
      Width = 600
      Height = 285
      TabIndex = 26
      Alignment = 1 'Right Justify
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
    Begin TextBox Txt
      Index = 2
      ForeColor = &HC00000&
      Left = 7740
      Top = 525
      Width = 555
      Height = 345
      TabIndex = 25
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 5
      Left = 4020
      Top = 1005
      Width = 2580
      Height = 285
      TabIndex = 4
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 4
      ForeColor = &HC00000&
      Left = 900
      Top = 1005
      Width = 915
      Height = 285
      TabIndex = 2
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 3
      BackColor = &H80000000&
      Left = 11325
      Top = 6300
      Width = 2325
      Height = 210
      Visible = 0   'False
      TabIndex = 24
      BorderStyle = 0 'None
      MaxLength = 40
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
      Index = 0
      ForeColor = &HC00000&
      Left = 5640
      Top = 525
      Width = 975
      Height = 345
      TabIndex = 23
      BorderStyle = 0 'None
      MaxLength = 8
    End
    Begin TextBox Txt
      Index = 1
      ForeColor = &HC00000&
      Left = 6630
      Top = 525
      Width = 1095
      Height = 345
      TabIndex = 22
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HFFFFC0&
      ForeColor = &H80000012&
      Left = 1080
      Top = 8250
      Width = 480
      Height = 240
      Visible = 0   'False
      TabIndex = 21
      BorderStyle = 0 'None
      MultiLine = -1  'True
      MaxLength = 150
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
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
      Left = 3690
      Top = 1305
      Width = 1140
      Height = 285
      Visible = 0   'False
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 11
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 11
      ForeColor = &HC00000&
      Left = 900
      Top = 1305
      Width = 2775
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 0
      BorderStyle = 0 'None
      MaxLength = 75
      Appearance = 0 'Flat
    End
    Begin CommandButton Command1
      Caption = "Command1"
      Left = 15000
      Top = 7950
      Width = 1740
      Height = 405
      Visible = 0   'False
      TabIndex = 18
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
      Index = 14
      ForeColor = &HC00000&
      Left = 5895
      Top = 1305
      Width = 930
      Height = 255
      Visible = 0   'False
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 13
      ForeColor = &HC00000&
      Left = 2400
      Top = 1005
      Width = 660
      Height = 285
      TabIndex = 3
      BorderStyle = 0 'None
      MaxLength = 5
      Appearance = 0 'Flat
    End
    Begin Frame FrmeDisc
      Caption = "Description"
      Left = 16170
      Top = 720
      Width = 5130
      Height = 585
      Visible = 0   'False
      TabIndex = 15
      BeginProperty Font
        Name = "System"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin TextBox txtDisc
        Left = 60
        Top = 270
        Width = 5000
        Height = 240
        TabIndex = 16
        BorderStyle = 0 'None
        MaxLength = 75
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
    End
    Begin MSHFlexGrid FGrid1
      Left = 10185
      Top = 4560
      Width = 5940
      Height = 2325
      Visible = 0   'False
      TabIndex = 9
    End
    Begin BtnEnh BtnLblModi
      Left = 1695
      Top = 8430
      Width = 3210
      Height = 330
      Visible = 0   'False
      TabIndex = 10
    End
    Begin DataGrid DGTable
      Left = 16485
      Top = 2820
      Width = 9240
      Height = 2460
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 11
    End
    Begin DataGrid DGItem
      Left = 16320
      Top = 2190
      Width = 4035
      Height = 4710
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 12
    End
    Begin DataGrid DGRest
      Left = 16140
      Top = 1755
      Width = 5910
      Height = 1455
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 13
    End
    Begin DataGrid DGWaiter
      Left = 16305
      Top = 1245
      Width = 4290
      Height = 3390
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 14
    End
    Begin DataGrid DGNCType
      Left = 9195
      Top = 2250
      Width = 3675
      Height = 3390
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 17
    End
    Begin DataGrid DGMember
      Left = 16335
      Top = 60
      Width = 6720
      Height = 3315
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 19
    End
    Begin MSFlexGrid FGPoint
      Left = 18360
      Top = 9675
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 20
    End
    Begin CommonDialog cdl
    End
    Begin MSHFlexGrid FGrid
      Left = 30
      Top = 1620
      Width = 8655
      Height = 6090
      TabIndex = 7
    End
    Begin BtnEnh CmdTabeSt
      Left = 4905
      Top = 8340
      Width = 945
      Height = 540
      Visible = 0   'False
      TabIndex = 31
    End
    Begin BtnEnh CmPendingKot
      Left = 5850
      Top = 8340
      Width = 945
      Height = 540
      Visible = 0   'False
      TabIndex = 32
    End
    Begin BtnEnh cmdNCBill
      Left = 11430
      Top = 990
      Width = 990
      Height = 615
      Visible = 0   'False
      TabIndex = 33
    End
    Begin MSHFlexGrid FGrid2
      Left = 10215
      Top = 6930
      Width = 5940
      Height = 2325
      Visible = 0   'False
      TabIndex = 34
    End
    Begin BtnEnh CmdFreeItem
      Left = 12465
      Top = 990
      Width = 1050
      Height = 600
      Visible = 0   'False
      TabIndex = 62
    End
    Begin Label LblCurStockStr
      Caption = "Item Current Stock"
      ForeColor = &H80&
      Left = 0
      Top = 7890
      Width = 2370
      Height = 375
      TabIndex = 63
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 15.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblPendingKotItem
      Caption = "Pending Kot"
      ForeColor = &HC00000&
      Left = 12825
      Top = 2685
      Width = 4110
      Height = 345
      Visible = 0   'False
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
    End
    Begin Label Label1
      Caption = "Free Items"
      Index = 10
      ForeColor = &H40&
      Left = 30
      Top = 8430
      Width = 1020
      Height = 315
      TabIndex = 59
      AutoSize = -1  'True
      WordWrap = -1  'True
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
    Begin Label lblclr
      BackColor = &HFF00&
      Left = 1080
      Top = 8490
      Width = 600
      Height = 240
      TabIndex = 58
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
    Begin Label Label1
      Caption = "Comment3"
      Index = 9
      ForeColor = &HC00000&
      Left = 9405
      Top = 2340
      Width = 1020
      Height = 240
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
    Begin Label Label1
      Caption = "Comment2"
      Index = 8
      ForeColor = &HC00000&
      Left = 9405
      Top = 2025
      Width = 1020
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
    Begin Label Label1
      Caption = "Comment1"
      Index = 7
      ForeColor = &HC00000&
      Left = 9405
      Top = 1725
      Width = 1020
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
    Begin Label Label1
      Caption = "Steward"
      Index = 6
      ForeColor = &H40&
      Left = 12375
      Top = 6885
      Width = 690
      Height = 210
      Visible = 0   'False
      TabIndex = 54
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
    Begin Label Label1
      Caption = "NC Type"
      Index = 4
      ForeColor = &HC00000&
      Left = 8745
      Top = 1305
      Width = 795
      Height = 240
      Visible = 0   'False
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
      Caption = "Remark"
      Index = 0
      BackColor = &H80&
      ForeColor = &HC00000&
      Left = 6750
      Top = 1005
      Width = 735
      Height = 240
      TabIndex = 52
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
    Begin Label LblState
      BackColor = &HFFFFFF&
      ForeColor = &HC0&
      Left = 8340
      Top = 525
      Width = 3090
      Height = 345
      TabIndex = 51
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRestz
      Caption = "#"
      BackColor = &HC00000&
      ForeColor = &HFF0000&
      Left = 12990
      Top = -780
      Width = 285
      Height = 525
      TabIndex = 50
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Times New Roman"
        Size = 20.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Server"
      Index = 5
      ForeColor = &HC00000&
      Left = 3195
      Top = 1005
      Width = 630
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
    Begin Label Label1
      Caption = "Table Code"
      Index = 2
      BackColor = &H80&
      ForeColor = &HC00000&
      Left = 75
      Top = 1005
      Width = 1095
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
    Begin Label Label1
      Caption = "KOT#"
      Index = 3
      ForeColor = &HC00000&
      Left = 11160
      Top = 6945
      Width = 510
      Height = 240
      Visible = 0   'False
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
    Begin Label Label1
      Caption = "Date"
      Index = 1
      ForeColor = &HC00000&
      Left = 10470
      Top = 6975
      Width = 435
      Height = 240
      Visible = 0   'False
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
    Begin Label LblVPrefix
      Caption = "VPrefix"
      ForeColor = &HC00000&
      Left = 16710
      Top = 10755
      Width = 705
      Height = 240
      Visible = 0   'False
      TabIndex = 45
      Alignment = 1 'Right Justify
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
      Caption = "Member"
      Index = 11
      ForeColor = &HC00000&
      Left = 75
      Top = 1305
      Width = 780
      Height = 240
      Visible = 0   'False
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
      Caption = "Token No."
      Index = 20
      ForeColor = &HC00000&
      Left = 4905
      Top = 1305
      Width = 960
      Height = 240
      Visible = 0   'False
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
    Begin Label Label1
      Caption = "Pax"
      Index = 12
      ForeColor = &HC00000&
      Left = 1980
      Top = 1005
      Width = 375
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
    Begin Label LblRest
      Caption = "#"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 15
      Top = 525
      Width = 2235
      Height = 345
      TabIndex = 40
      Alignment = 2 'Center
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label lblSession
      Caption = "#"
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2250
      Top = 525
      Width = 1665
      Height = 345
      TabIndex = 39
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
    Begin Label LblKotNm
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 3915
      Top = 525
      Width = 1725
      Height = 345
      TabIndex = 38
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
    Begin Label LblLDt
      Caption = "Last Update"
      ForeColor = &HFF0000&
      Left = 90
      Top = 10065
      Width = 2670
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
    Begin Label LblUser
      Caption = "User"
      ForeColor = &HFF0000&
      Left = 105
      Top = 9735
      Width = 2460
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
    Begin Label LblPendingKot
      ForeColor = &HC00000&
      Left = 12345
      Top = 3075
      Width = 4110
      Height = 345
      Visible = 0   'False
      TabIndex = 35
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
    Begin Label Label2
      BackColor = &HFFFFFF&
      Left = 30
      Top = 525
      Width = 8310
      Height = 345
      TabIndex = 41
    End
  End
End

Attribute VB_Name = "RsKOTEntry"

Private global_272 As Integer
Private global_270 As Integer
Private global_124 As Integer
Private global_126 As Integer
Private global_268 As Integer
Private MasterFormExit As Integer
Private global_252 As Long
Private global_116 As Long

Private Sub DGItem_UnknownEvent_9 '11E1A0C
  'Data Table: 58908C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_FC As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  loc_11E15C7: Me.DGItem.Visible = False
  loc_11E15E6: If (Me.RecordCount > 0) Then
  loc_11E1623:   Set var_B4 = Me.TxtGrid
  loc_11E1629:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_11E165A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E1662:   var_EC = CVar(CLng(4)) 'Long
  loc_11E1695:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_11E169D:   Set var_B8 = Me.FGrid
  loc_11E16A3:   LateIdCallSt
  loc_11E16D2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E16DA:   var_EC = CVar(CLng(&HA)) 'Long
  loc_11E170D:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_11E171B:   LateIdCallSt
  loc_11E1782:   var_11C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(5)))) 'String
  loc_11E178A:   Set var_B8 = Me.FGrid
  loc_11E1790:   LateIdCallSt
  loc_11E17F8:   var_11C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_11E1806:   LateIdCallSt
  loc_11E185A:   Set var_B4 = Me.Txt
  loc_11E1860:   Call 0.Method_DGItem_UnknownEvent_90 (CInt(1), Me.FGrid, var_138, Me.FGrid, var_11C, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_11E1868:   var_B8 = CStr(Me.Fields.Item("Name").Value)
  loc_11E18B1:   Call Proc_30_105_F22F70(CStr(Me.Fields.Item("Code").Value), var_138, CStr(Me.Fields.Item("OutletCode").Value), var_148, var_11C)
  loc_11E18C9:   var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E18D1:   var_18C = CVar(CLng(8)) 'Long
  loc_11E18FE:   var_1AC = CVar(CStr(Format(CVar(var_148), "0.00"))) 'String
  loc_11E1906:   Set var_1C0 = Me.FGrid
  loc_11E190C:   LateIdCallSt
  loc_11E1954:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E195C:   var_EC = CVar(CLng(&HD)) 'Long
  loc_11E197E:   var_B0 = Me.Fields.Item("PriceType")
  loc_11E198F:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_11E1997:   Set var_B8 = Me.FGrid
  loc_11E199D:   LateIdCallSt
  loc_11E19B9: End If
  loc_11E19C5: Set var_A8 = Me.TxtGrid
  loc_11E19CB: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_1C2, var_B8, var_11C, var_EC, var_A4)
  loc_11E19D3: var_1C0 = var_B0.Visible
  loc_11E19E5: If (var_1C2 = &HFF) Then
  loc_11E19F1:   Set var_A8 = Me.TxtGrid
  loc_11E19F7:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_1AC, 1)
  loc_11E19FF:   var_B0.SetFocus
  loc_11E1A0B: End If
  loc_11E1A0B: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E766C8
  'Data Table: 58908C
  loc_E76686: Proc_6_153_E91D24(Me.DGItem, arg_14)
  loc_E7669D: Set var_8C = Me.FGPoint
  loc_E766B7: Proc_6_138_106E830(Me.DGItem, global_84, 0)
  loc_E766C5: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F54F88
  'Data Table: 58908C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F54E68: On Error Goto loc_F54F82
  loc_F54E7A: Me.DGTable.Visible = False
  loc_F54E99: If (Me.RecordCount > 0) Then
  loc_F54ED8:   Set var_B4 = Me.Txt
  loc_F54EDE:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F54EE6:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F54F19:   var_B0 = Me.Fields.Item("Code")
  loc_F54F38:   Set var_B4 = Me.Txt
  loc_F54F3E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F54F46:   var_B8.Tag = CStr(var_B0.Value)
  loc_F54F5C: End If
  loc_F54F67: Set var_A8 = Me.Txt
  loc_F54F6D: Call 0.Method_DGTable_UnknownEvent_90 (CInt(4))
  loc_F54F75: var_B0.SetFocus
  loc_F54F81: Exit Sub
  loc_F54F82: ' Referenced from: F54E68
  loc_F54F82: Proc_6_60_E63754(var_B0)
  loc_F54F87: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'E769AC
  'Data Table: 58908C
  loc_E7696A: Proc_6_153_E91D24(Me.DGTable, arg_14)
  loc_E76981: Set var_8C = Me.FGPoint
  loc_E7699D: Proc_6_138_106E830(Me.DGTable, global_96, CInt(4))
  loc_E769AB: Exit Sub
End Sub

Private Sub DGWaiter_UnknownEvent_9 'F54880
  'Data Table: 58908C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F54760: On Error Goto loc_F5487A
  loc_F54772: Me.DGWaiter.Visible = False
  loc_F54791: If (Me.RecordCount > 0) Then
  loc_F547D0:   Set var_B4 = Me.Txt
  loc_F547D6:   Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(5), var_B8)
  loc_F547DE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F54811:   var_B0 = Me.Fields.Item("Code")
  loc_F54830:   Set var_B4 = Me.Txt
  loc_F54836:   Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(5), var_B8)
  loc_F5483E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F54854: End If
  loc_F5485F: Set var_A8 = Me.Txt
  loc_F54865: Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(5))
  loc_F5486D: var_B0.SetFocus
  loc_F54879: Exit Sub
  loc_F5487A: ' Referenced from: F54760
  loc_F5487A: Proc_6_60_E63754(var_B0)
  loc_F5487F: Exit Sub
End Sub

Private Sub DGWaiter_UnknownEvent_1F 'E74CC4
  'Data Table: 58908C
  loc_E74C82: Proc_6_153_E91D24(Me.DGWaiter, arg_14)
  loc_E74C99: Set var_8C = Me.FGPoint
  loc_E74CB5: Proc_6_138_106E830(Me.DGWaiter, global_92, CInt(5))
  loc_E74CC3: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F553C0
  'Data Table: 58908C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F552A0: On Error Goto loc_F553BA
  loc_F552B2: Me.DGMember.Visible = False
  loc_F552D1: If (Me.RecordCount > 0) Then
  loc_F55310:   Set var_B4 = Me.Txt
  loc_F55316:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F5531E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F55351:   var_B0 = Me.Fields.Item("Code")
  loc_F55370:   Set var_B4 = Me.Txt
  loc_F55376:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F5537E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F55394: End If
  loc_F5539F: Set var_A8 = Me.Txt
  loc_F553A5: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HB))
  loc_F553AD: var_B0.SetFocus
  loc_F553B9: Exit Sub
  loc_F553BA: ' Referenced from: F552A0
  loc_F553BA: Proc_6_60_E63754(var_B0)
  loc_F553BF: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'E75B38
  'Data Table: 58908C
  loc_E75AF6: Proc_6_153_E91D24(Me.DGMember, arg_14)
  loc_E75B0D: Set var_8C = Me.FGPoint
  loc_E75B29: Proc_6_138_106E830(Me.DGMember, global_196, CInt(&HB))
  loc_E75B37: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_B 'F29B28
  'Data Table: 58908C
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim Me As Recordset15
  loc_F29A3B: var_AC = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_F29A40: var_CC = 8
  loc_F29A77: If (CStr(Me.FGrid2.TextMatrix)) <> vbNullString) Then
  loc_F29A8D:   var_AC = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_F29AC7:   Me.MoveFirst
  loc_F29AF1:   Me.Find "SearchCode='" & CStr(Me.FGrid2.TextMatrix)) & "'", 0, 1
  loc_F29B19:   Proc_5_0_1107AD0(&HFF, Me, global_88, 0, var_AC)
  loc_F29B21:   Call Proc_30_94_179FC48(8, var_AC)
  loc_F29B26: End If
  loc_F29B26: Exit Sub
End Sub

Private Sub CmdTabeSt_UnknownEvent_9 'E59994
  'Data Table: 58908C
  Dim var_9C As Variant
  Dim var_8A As Integer
  loc_E59958: Set var_88 = New RsPOSDisplayNew
  loc_E59968: var_88.LocalRestCode = CVar(LocalRestCode)
  loc_E59978: var_88.OpenMode = 1
  loc_E5997C: var_9C = 1
  loc_E59988: Call var_88.Show
  loc_E59990: var_8A = &HFF
  loc_E59993: Exit Sub
End Sub

Private Sub ChkNCKOT_Click() '11E4F28
  'Data Table: 58908C
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_D8 As Integer
  Dim var_B4 As String
  Dim unk_5890AB As Connection15
  Dim var_DC As Field20
  Dim var_88 As Recordset15
  loc_11E4ACC: Set var_8C = Me.TopCtrl1
  loc_11E4AD2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_11E4AEB: If (CStr() = "Browse") Then
  loc_11E4AEE:   Exit Sub
  loc_11E4AEF: End If
  loc_11E4B0A: If (Me.ChkNCKOT.Value = 1) Then
  loc_11E4B1B:   Set var_8C = Me.Txt
  loc_11E4B21:   Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_A8)
  loc_11E4B3B:   If (var_A8.Visible = 0) Then
  loc_11E4B4B:     Set var_8C = Me.Txt
  loc_11E4B51:     Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_A8)
  loc_11E4B59:     var_A8.Visible = True
  loc_11E4B70:     Set var_8C = Me.Label1
  loc_11E4B76:     Call 0.Method_ChkNCKOT_Click0 (4, var_A8)
  loc_11E4B7E:     var_A8.Visible = True
  loc_11E4B8A:   End If
  loc_11E4BA5:   var_AC = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_11E4BBC:   var_D8 = 0
  loc_11E4BDC:   var_B4 = "Select 'N'+ ShortName From Depart Where Code='" & LocalRestCode
  loc_11E4BEC:   unk_5890AB.Execute var_B4 & "'", var_9C, -1
  loc_11E4BF4:   var_8C = var_8C.Fields
  loc_11E4BFC:   var_D8 = var_A8.Item(var_A8)
  loc_11E4C04:   var_DC = var_DC.Value
  loc_11E4C23:   unk_5890AB.Execute CStr(var_EC & var_EC & "' Order by Description"), CVar(var_AC & MemVar_1F95078 & "') AND V_Type='"), var_150
  loc_11E4C2E:   Set var_88 = var_154
  loc_11E4C6E:   If (var_88.RecordCount > 0) Then
  loc_11E4C8B:     var_A8 = var_88.Fields.Item(0)
  loc_11E4C93:     var_9C = var_A8.Value
  loc_11E4C9C:     var_A0 = CStr(var_9C)
  loc_11E4CA2:     global_152 = var_A0
  loc_11E4CB9:     Call Proc_30_100_11870D8(MemVar_1F95044, var_A0)
  loc_11E4CCC:     Set var_8C = Me.Txt
  loc_11E4CD2:     Call 0.Method_ChkNCKOT_Click0 (CInt(3), var_A8, var_A0)
  loc_11E4CDA:     var_A8.Text = -1
  loc_11E4CF6:     Me.LblKotNm.Caption = "NC Kot"
  loc_11E4D06:     Set var_8C = Me.cmdNCBill
  loc_11E4D0C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_11E4D14:   End If
  loc_11E4D17: Else
  loc_11E4D25:   Set var_8C = Me.Txt
  loc_11E4D2B:   Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_A8)
  loc_11E4D45:   If (var_A8.Visible = &HFF) Then
  loc_11E4D55:     Set var_8C = Me.Txt
  loc_11E4D5B:     Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_A8)
  loc_11E4D63:     var_A8.Visible = False
  loc_11E4D7A:     Set var_8C = Me.Label1
  loc_11E4D80:     Call 0.Method_ChkNCKOT_Click0 (4, var_A8)
  loc_11E4D88:     var_A8.Visible = False
  loc_11E4D94:   End If
  loc_11E4DAF:   var_AC = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_11E4DC6:   var_D8 = 0
  loc_11E4DE6:   var_B4 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_11E4DF6:   unk_5890AB.Execute var_B4 & "'", var_9C, -1
  loc_11E4DFE:   var_8C = var_8C.Fields
  loc_11E4E06:   var_D8 = var_A8.Item(var_A8)
  loc_11E4E0E:   var_DC = var_DC.Value
  loc_11E4E2D:   unk_5890AB.Execute CStr(var_EC & var_EC & "' Order by Description"), CVar(var_AC & MemVar_1F95078 & "') AND V_Type='"), var_150
  loc_11E4E38:   Set var_88 = var_154
  loc_11E4E78:   If (var_88.RecordCount > 0) Then
  loc_11E4E95:     var_A8 = var_88.Fields.Item(0)
  loc_11E4EA6:     var_A0 = CStr(var_A8.Value)
  loc_11E4EAC:     global_152 = var_A0
  loc_11E4EC3:     Call Proc_30_100_11870D8(MemVar_1F95044, var_A0, -1)
  loc_11E4ED6:     Set var_8C = Me.Txt
  loc_11E4EDC:     Call 0.Method_ChkNCKOT_Click0 (CInt(3), var_A8, var_A0)
  loc_11E4EE4:     var_A8.Text = var_154
  loc_11E4F00:     Me.LblKotNm.Caption = "Standard Kot"
  loc_11E4F11:     Set var_8C = Me.cmdNCBill
  loc_11E4F17:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_11E4F1F:   End If
  loc_11E4F1F: End If
  loc_11E4F24: Set var_88 = Nothing
  loc_11E4F27: Exit Sub
End Sub

Private Sub Command1_Click() 'F7AF50
  'Data Table: 58908C
  Dim unk_5890AB As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  loc_F7AE18: On Error Goto loc_F7AF4A
  loc_F7AE3F: unk_5890AB.Execute "Select Interface From MemEnviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_B0, -1
  loc_F7AE4A: Set var_88 = var_B4
  loc_F7AE6E: If (var_88.RecordCount > 0) Then
  loc_F7AE80:   var_B4 = var_88.Fields
  loc_F7AE99:   var_C0 = Proc_6_38_E69628(CVar(var_B4.Item("Interface")))
  loc_F7AEAA:   If (var_C0 = "SmartCard_ACR") Then
  loc_F7AEAD:     Call Proc_30_81_11AA824(var_B4)
  loc_F7AEB5:   Else
  loc_F7AEBD:     If (var_C0 = "NBSD_Mifare") Then
  loc_F7AED9:       MsgBox("Procedure Not Defined!", &H40, var_E0, var_100, var_120)
  loc_F7AEEC:     Else
  loc_F7AF05:       MsgBox("Smart Card Interface Not Defined!", &H40, var_E0, var_100, var_120)
  loc_F7AF15:     End If
  loc_F7AF15:   End If
  loc_F7AF18: Else
  loc_F7AF31:   MsgBox("Member Environment Settings NOT SET!", 0, var_E0, var_100, var_120)
  loc_F7AF41: End If
  loc_F7AF46: Set var_88 = Nothing
  loc_F7AF49: Exit Sub
  loc_F7AF4A: ' Referenced from: F7AE18
  loc_F7AF4A: Proc_6_60_E63754()
  loc_F7AF4F: Exit Sub
End Sub

Private Sub cmdNCBill_UnknownEvent_9 '19B20E4
  'Data Table: 58908C
  Dim var_124 As Variant
  Dim var_E8 As String
  Dim var_EC As String
  Dim unk_5890AB As Connection15
  Dim var_110 As Variant
  Dim var_114 As Variant
  Dim var_128 As Variant
  Dim var_13C As String
  Dim var_138 As Variant
  Dim var_FC As Variant
  Dim Me As Recordset15
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_D4 As Recordset15
  Dim var_BC As Recordset15
  Dim var_10C As Variant
  Dim var_170 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_210 As Variant
  Dim var_230 As Variant
  Dim var_B8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_92 As Integer
  Dim var_248 As String
  Dim var_180 As Variant
  Dim var_27C As Variant
  Dim var_200 As Variant
  Dim var_290 As Variant
  Dim var_2A4 As Variant
  Dim var_2B4 As Variant
  Dim var_304 As Variant
  Dim var_324 As Variant
  Dim var_3E4 As Variant
  Dim var_E4 As Double
  Dim var_314 As Variant
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  Dim var_3C4 As Variant
  Dim var_2C4 As Variant
  Dim var_CC As Double
  loc_19AF1E0: On Error Goto loc_19B20DC
  loc_19AF1E9: var_124 = 0
  loc_19AF219: unk_5890AB.Execute "Select CKOTPrintYN From Depart Where Code='" & LocalRestCode & "'", var_10C, -1
  loc_19AF221: var_110 = var_110.Fields
  loc_19AF229: var_124 = var_114.Item(var_114)
  loc_19AF231: var_128 = var_128.Value
  loc_19AF25F: If (Proc_6_38_E69628(var_138) = "Y") Then
  loc_19AF265:   Call Proc_30_80_1927300(var_13E)
  loc_19AF26A:   Exit Sub
  loc_19AF26B: End If
  loc_19AF26E: MemVar_1F953C4 = "N"
  loc_19AF275: MemVar_1F953C8 = "N"
  loc_19AF27C: MemVar_1F953CC = "K"
  loc_19AF29B: If (Me.ChkNCKOT.Value <> 1) Then
  loc_19AF29E:   Exit Sub
  loc_19AF29F: End If
  loc_19AF2A6: var_E8 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks,K.NCType " & "From (KOT K Left Join Waiter W on K.Waiter=W.Code) "
  loc_19AF2EB: var_88 = CStr(CVar(var_E8 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_19AF30A: var_138 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_19AF348: var_8C = CStr(var_138 & Me.Fields.Item("SearchCode").Value & "'")
  loc_19AF371: var_138 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_19AF391: var_114 = Me.Fields.Item("SearchCode")
  loc_19AF399: var_10C = var_114.Value
  loc_19AF3AE: var_E8 = CStr(var_138 & var_10C & "'")
  loc_19AF3B8: unk_5890AB.Execute var_E8, var_180, -1
  loc_19AF3C3: Set var_BC = var_128
  loc_19AF3E7: If (var_88 = vbNullString) Then
  loc_19AF3EA:   Exit Sub
  loc_19AF3EB: End If
  loc_19AF3F3: If (var_8C = vbNullString) Then
  loc_19AF3F6:   Exit Sub
  loc_19AF3F7: End If
  loc_19AF415: Set var_110 = Me.Txt
  loc_19AF41B: Call 0.Method_cmdNCBill_UnknownEvent_90 (CInt(4), var_114, var_E8, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='", var_10C)
  loc_19AF423: -1 = var_114.Text
  loc_19AF43C: unk_5890AB.Execute var_128 & var_E8 & "' AND CONTRADOCID IS NULL", var_128, var_138
  loc_19AF473: If (var_128.RecordCount = 1) Then
  loc_19AF479:   var_D0 = "New Order"
  loc_19AF47F: Else
  loc_19AF486:   Set var_110 = Me.LblState
  loc_19AF494:   var_D0 = var_110.Caption
  loc_19AF49A: End If
  loc_19AF4B0: unk_5890AB.Execute var_88, var_10C, -1
  loc_19AF4BB: Set var_B4 = var_110
  loc_19AF4C4: ' Referenced from: 19B20B0
  loc_19AF4D3: If Not(var_BC.EOF) Then
  loc_19AF4EC:   unk_5890AB.Execute "SELECT KOTPrinting FROM Enviro", var_10C, -1
  loc_19AF50F:   var_110 = var_110.Fields
  loc_19AF54A:   If (Trim(CVar(Proc_6_38_E69628(CVar(var_110.Item("KOTPrinting")), var_110))) = "Seperate for All Kitchen") Then
  loc_19AF554:     var_138 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_19AF5CD:     var_1D8 = var_138 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_19AF609:     var_8C = CStr(var_1D8 & var_BC.Fields.Item("Code").Value & "' and K.VoidYN<>'Y'")
  loc_19AF637:   Else
  loc_19AF63E:     var_138 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_19AF656:     var_110 = Me.Fields
  loc_19AF666:     var_10C = var_110.Item("SearchCode").Value
  loc_19AF67C:     var_8C = CStr(var_138 & var_10C & "' and K.VoidYN<>'Y'")
  loc_19AF691:   End If
  loc_19AF6A7:   unk_5890AB.Execute var_8C, var_10C, -1
  loc_19AF6B2:   Set var_B8 = var_110
  loc_19AF6CF:   If (var_B8.RecordCount > 0) Then
  loc_19AF6E1:     var_110 = var_BC.Fields
  loc_19AF700:     var_240 = Trim(CVar(var_110.Item("PrintType"))) 'Variant
  loc_19AF715:     If (var_240 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_19AF725:       Call Proc_30_86_EFB79C(New, var_110)
  loc_19AF72D:       Set var_D8 = var_110
  loc_19AF733:       Me.Recordset15.MoveFirst
  loc_19AF738:       ' Referenced from: 19B03B2
  loc_19AF747:       If Not(var_B4.EOF) Then
  loc_19AF760:         If (0 = 0) Then
  loc_19AF781:           Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19AF7BD:           var_C0 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_19AF7F4:           var_138 = CVar(Me.LblRest.Caption) 'String
  loc_19AF7F7:           var_150 = (Space(1) + var_138)
  loc_19AF80C:           Call Proc_30_87_F15438(var_D8, vbNullString, CStr(var_138 & Space(1)), vbNullString)
  loc_19AF83E:           Call Proc_30_87_F15438(var_D8, vbNullString, " * NC Bill *", vbNullString)
  loc_19AF84C:           var_92 = &H12
  loc_19AF86D:           Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString, var_92)
  loc_19AF899:           Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19AF8CD:           Proc_6_39_E7D3A0(var_138, CVar(var_B4.Fields.Item("VNo")), 1)
  loc_19AF90A:           Call Proc_30_87_F15438(var_D8, vbNullString, " V No.     : " & Proc_6_45_EADFB8(CStr(var_138), &HA, var_92))
  loc_19AF937:           var_110 = var_B4.Fields
  loc_19AF9DA:           Call Proc_30_87_F15438(var_D8, vbNullString, " Date.     : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_110.Item("VDate")), vbNullString), &HC) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")), var_110), 8))
  loc_19AFA21:           var_114 = var_B4.Fields.Item("Remarks")
  loc_19AFA6C:           Call Proc_30_87_F15438(var_D8, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_114), vbNullString), &H1E))
  loc_19AFA9E:           Set var_110 = Me.Label1
  loc_19AFAA4:           Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_114)
  loc_19AFB2D:           var_258 = Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")), vbNullString)), "000")), 5, 1)
  loc_19AFB33:           var_248 = vbNullString
  loc_19AFB42:           var_180 = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_114))), &HA)))
  loc_19AFB4B:           var_198 = (var_BC.Fields.Item("Code").Value + ": ")
  loc_19AFB55:           var_27C = (CVar(var_114) & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value + CVar(var_258))
  loc_19AFB6A:           Call Proc_30_87_F15438(var_D8, vbNullString, CStr(var_27C))
  loc_19AFBBC:           Call Proc_30_87_F15438(var_D8, vbNullString, var_C0, vbNullString)
  loc_19AFBC8:         End If
  loc_19AFBEE:         var_150 = (var_248 + CVar(Proc_6_45_EADFB8("ITEM NAME", &H12, Space(1))))
  loc_19AFC02:         var_180 = (Trim(CVar(var_114)) + Space(1))
  loc_19AFC1C:         var_1B8 = (1 + CVar(Proc_6_52_EAE084("Qty", 3, var_BC.Fields.Item("Code").Value)))
  loc_19AFC28:         var_1D8 = Space(1)
  loc_19AFC30:         var_200 = (CVar(var_B4.Fields.Item("TableNo")) + var_1D8)
  loc_19AFC4A:         var_230 = ("000" + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_19AFC5E:         var_290 = (CVar(var_258) + Space(1))
  loc_19AFC78:         var_2B4 = (var_290 + CVar(Proc_6_52_EAE084("Amount", 7)))
  loc_19AFCAF:         var_EC = vbNullString
  loc_19AFCC4:         Call Proc_30_87_F15438(var_D8, vbNullString, CStr(var_2B4))
  loc_19AFCD3:         var_EC = vbNullString
  loc_19AFCE8:         Call Proc_30_87_F15438(var_D8, vbNullString, var_C0)
  loc_19AFCFA:         var_92 = (var_92 + 4)
  loc_19AFD00:         var_B8.MoveFirst
  loc_19AFD05:         ' Referenced from: 19B001F
  loc_19AFD14:         If Not(var_B8.EOF) Then
  loc_19AFD39:           var_138 = var_B8.Fields.Item("ItemName").Value
  loc_19AFD64:           Proc_6_39_E7D3A0(var_1D8, CVar(var_B8.Fields.Item("qty")), var_92)
  loc_19AFD8C:           var_1A8 = "Rate"
  loc_19AFDAF:           Proc_6_39_E7D3A0(var_2C4, CVar(var_B8.Fields.Item(var_1A8)), 1, 1)
  loc_19AFDBE:           var_1C8 = "0.00"
  loc_19AFDFA:           Proc_6_39_E7D3A0(var_34C, CVar(var_B8.Fields.Item("qty")), 1, 1)
  loc_19AFE25:           Proc_6_39_E7D3A0(var_374, CVar(var_B8.Fields.Item("Rate")), var_EC)
  loc_19AFE7D:           var_160 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_138), &H12, Space(1), 1)))
  loc_19AFE91:           var_198 = (Space(1) + Space(1))
  loc_19AFEA7:           var_230 = CVar(Proc_6_52_EAE084(CStr(Format(var_1D8, "0")), 3, CVar(Proc_6_52_EAE084("Qty", 3, var_BC.Fields.Item("Code").Value)))) 'String
  loc_19AFEAA:           var_27C = (var_EC + var_230)
  loc_19AFEBE:           var_2A4 = (Space(1) + Space(1))
  loc_19AFED7:           var_304 = (CVar(Proc_6_52_EAE084("Amount", 7)) + CVar(Proc_6_52_EAE084(CStr(Format(var_2C4, var_1C8)), 6)))
  loc_19AFEEB:           var_324 = (var_304 + Space(1))
  loc_19AFF04:           var_3E4 = (var_324 + CVar(Proc_6_52_EAE084(CStr(Format((var_34C * var_374), "0.00")), 7)))
  loc_19AFF6A:           var_170 = CVar(var_E4) 'Double
  loc_19AFF7D:           var_110 = var_B8.Fields
  loc_19AFF94:           Proc_6_39_E7D3A0(var_138, CVar(var_110.Item("qty")))
  loc_19AFFC2:           Proc_6_39_E7D3A0(Space(1), CVar(var_B8.Fields.Item("Rate")), var_138)
  loc_19AFFCE:           var_198 = (var_110 + (var_170 * Space(1)))
  loc_19AFFD3:           var_E4 = CSng(CVar(Proc_6_52_EAE084("Qty", 3, var_BC.Fields.Item("Code").Value)))
  loc_19AFFED:           var_EC = vbNullString
  loc_19B0002:           Call Proc_30_87_F15438(var_D8, vbNullString, CStr(var_3E4))
  loc_19B0014:           var_92 = (var_92 + 1)
  loc_19B001A:           var_B8.MoveNext
  loc_19B001F:           GoTo loc_19AFD05
  loc_19B0022:         End If
  loc_19B003A:         Call Proc_30_87_F15438(var_D8, vbNullString, var_C0, vbNullString)
  loc_19B0064:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B009F:         var_124 = "0.00"
  loc_19B00A4:         var_160 = var_124
  loc_19B00F1:         var_150 = (Space(&H16) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8, var_92)))
  loc_19B00FB:         var_200 = (CVar(var_B8.Fields.Item("Rate")) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_E4, var_160))))), 8, 1)))
  loc_19B0110:         Call Proc_30_87_F15438(var_D8, vbNullString, CStr("0"), vbNullString)
  loc_19B015B:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B016C:         var_FC = "WaiterName"
  loc_19B01AB:         var_248 = vbNullString
  loc_19B01CB:         Call Proc_30_87_F15438(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item(var_FC)), 1), &H14))
  loc_19B0205:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B023A:         Call Proc_30_87_F15438(var_D8, vbNullString, " ** " & MemVar_1F95220 & " **", vbNullString)
  loc_19B024D:         var_B4.MoveNext
  loc_19B0270:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B029C:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B02C8:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B02F4:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B0320:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B034C:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B0378:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B03A4:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B03B2:         GoTo loc_19AF738
  loc_19B03B5:       End If
  loc_19B03B8:       var_DC = "WinKOTPrint"
  loc_19B03DF:       Set var_110 = var_D8 
  loc_19B03E6:       CreateFieldDefFile(var_110, MemVar_1F950B4 & "\" & var_DC & ".ttx", &HFF)
  loc_19B0418:       var_EC = MemVar_1F950B4 & "\" & var_DC
  loc_19B0428:       Call 0.Method_arg_1C (var_EC & ".RPT", var_FC, var_110)
  loc_19B0433:       MemVar_1F951E8 = var_110
  loc_19B045C:       Call 0.Method_arg_64 (var_110, CVar(var_110), var_124, var_170)
  loc_19B0464:       Call 0.Method_arg_2C (var_248, var_EC)
  loc_19B04A5:       If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_19B04F2:         If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_19B0521:           Call Proc_30_84_F0FCB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))
  loc_19B052F:         End If
  loc_19B052F:       End If
  loc_19B054C:       Call 0.Method_Me8 (False, 1, var_170)
  loc_19B0556:       Set var_D8 = Nothing
  loc_19B055C:     Else
  loc_19B0567:       If Not (var_240 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_19B0575:         If (var_240 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_19B0578:         End If
  loc_19B057A:         Close 1
  loc_19B059A:         var_13C = "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT"
  loc_19B05A1:         Open var_13C For Output As 1 Len = &HFF
  loc_19B05B1:         var_B4.MoveFirst
  loc_19B05B6:         ' Referenced from:   19B1054
  loc_19B05C5:         If Not(var_B4.EOF) Then
  loc_19B05CA:           var_92 = 0
  loc_19B05DE:           If (var_92 = 0) Then
  loc_19B05E3:             Print 1
  loc_19B0617:             var_C0 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_19B065E:             Call Proc_30_103_EFA714(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14, 1, var_92), "D", &H28, var_248)
  loc_19B0668:             Print 1, var_248
  loc_19B06A6:             Call Proc_30_103_EFA714(Proc_6_45_EADFB8("* NC Bill *", &H14, var_1A8), "D", &H28)
  loc_19B06B0:             Print 1, var_13C
  loc_19B06C8:             Print 1
  loc_19B06D0:             Print 1
  loc_19B0709:             Proc_6_39_E7D3A0(var_160, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_19B072B:             var_138 = (Chr(&HF) + "V No.     :   ")
  loc_19B0735:             var_198 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")))) + CVar(Proc_6_45_EADFB8(CStr(var_160), &HA, var_13C)))
  loc_19B073B:             Print 1, CVar(CStr(Format(var_E4, var_160)))
  loc_19B07ED:             var_138 = (Chr(&HF) + "Date.     :   ")
  loc_19B07F7:             var_180 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_1C8), &HC)))
  loc_19B0800:             var_198 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_1C8), &HC))), &HA, Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_1C8))) + " ")
  loc_19B080A:             var_200 = (CVar(CStr(Format(var_E4, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_1C8), &HC))))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_19B0810:             Print 1, "0"
  loc_19B0865:             var_114 = var_B4.Fields.Item("Remarks")
  loc_19B08A2:             var_138 = (Chr(&HF) + "Remarks :   ")
  loc_19B08AC:             var_180 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_114)), &H32)))
  loc_19B08B3:             var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_114)), &H32))), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_114)), &H32))) + Chr(&H12))
  loc_19B08B9:             Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_19B08F2:             Set var_110 = Me.Label1
  loc_19B08F8:             Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_114)
  loc_19B098D:             var_180 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_114))), &HA)))
  loc_19B0996:             var_198 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_114))), &HA))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_114))), &HA))) + ":   ")
  loc_19B099D:             var_230 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_19B09A0:             var_27C = (Chr(&H12) + var_230)
  loc_19B09A6:             Print 1, Space(1)
  loc_19B09F1:             var_138 = (Chr(&HF) + CVar(var_C0))
  loc_19B09F7:             Print 1, CVar(var_114)
  loc_19B0A04:           End If
  loc_19B0A2A:           var_150 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_19B0A44:           var_180 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_114)))))
  loc_19B0A50:           var_198 = Space(3)
  loc_19B0A58:           var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_114))))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_114))), &HA))) + var_198)
  loc_19B0A72:           var_200 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_19B0A86:           var_230 = ("000" + Space(3))
  loc_19B0AA0:           var_290 = (var_230 + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_19B0AE6:           var_138 = (Chr(&HF) + CVar(CStr(Space(1))))
  loc_19B0AEC:           Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_19B0B0F:           var_138 = (Chr(&HF) + CVar(var_C0))
  loc_19B0B15:           Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_19B0B28:           var_92 = (var_92 + 4)
  loc_19B0B2E:           var_B8.MoveFirst
  loc_19B0B33:           ' Referenced from:   19B0E3A
  loc_19B0B42:           If Not(var_B8.EOF) Then
  loc_19B0B92:             Proc_6_39_E7D3A0(var_198, CVar(var_B8.Fields.Item("qty")))
  loc_19B0BDD:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Amount", 7)), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_19B0C28:             Proc_6_39_E7D3A0(var_324, CVar(var_B8.Fields.Item("qty")), 1, 1)
  loc_19B0C53:             Proc_6_39_E7D3A0(var_34C, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_19B0CA3:             var_138 = Space(3)
  loc_19B0CAB:             var_160 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + var_138)
  loc_19B0CC1:             var_200 = CVar(Proc_6_52_EAE084(CStr(Format(var_198, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_19B0CC4:             var_210 = (1 + var_200)
  loc_19B0CD8:             var_27C = (Space(3) + Space(3))
  loc_19B0CEE:             var_2D4 = CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Amount", 7)), "0.00")), 6, CVar(Proc_6_52_EAE084("Amount", &HA)))) 'String
  loc_19B0CF1:             var_2E4 = (&H12 + var_2D4)
  loc_19B0D05:             var_304 = (Format(Format(CVar(Proc_6_52_EAE084("Amount", 7)), "0.00"), "0.00") + Space(3))
  loc_19B0D1E:             var_3C4 = (var_304 + CVar(Proc_6_52_EAE084(CStr(Format((var_324 * var_34C), "0.00")), &HA)))
  loc_19B0DAA:             Proc_6_39_E7D3A0(var_138, CVar(var_B8.Fields.Item("qty")))
  loc_19B0DD8:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty"))))), CVar(var_B8.Fields.Item("Rate")), var_138)
  loc_19B0DE4:             var_198 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))))
  loc_19B0DE9:             var_E4 = CSng(var_198)
  loc_19B0E16:             var_138 = (Chr(&HF) + CVar(CStr(Format((var_34C * (var_324 * var_34C)), "0.00"))))
  loc_19B0E1C:             Print 1, var_138
  loc_19B0E2F:             var_92 = (var_92 + 1)
  loc_19B0E35:             var_B8.MoveNext
  loc_19B0E3A:             GoTo loc_19B0B33
  loc_19B0E3D:           End If
  loc_19B0E53:           var_138 = (Chr(&HF) + CVar(var_C0))
  loc_19B0E59:           Print 1, var_138
  loc_19B0E6B:           Print 1, vbNullString
  loc_19B0EF1:           var_150 = (Chr(&HF) + Space(&H25))
  loc_19B0EFB:           var_180 = (CVar(var_B8.Fields.Item("Rate")) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8)))
  loc_19B0F05:           var_230 = ((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_19B0F0B:           Print 1, Space(3)
  loc_19B0F3C:           Print 1, vbNullString
  loc_19B0F96:           var_138 = (Chr(&HF) + "Waiter Name  :   ")
  loc_19B0FA0:           var_180 = (Space(&H25) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14)))
  loc_19B0FA6:           Print 1, (CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty"))))))
  loc_19B0FC7:           Print 1
  loc_19B0FE2:           var_138 = (Chr(&HF) + "** ")
  loc_19B0FEC:           var_150 = (Space(&H25) + CVar(MemVar_1F95220))
  loc_19B0FF5:           var_160 = (CVar(var_B4.Fields.Item("WaiterName")) + " **")
  loc_19B0FFB:           Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14))
  loc_19B100F:           var_B4.MoveNext
  loc_19B1016:           Print 1
  loc_19B101E:           Print 1
  loc_19B1026:           Print 1
  loc_19B102E:           Print 1
  loc_19B1036:           Print 1
  loc_19B103E:           Print 1
  loc_19B1046:           Print 1
  loc_19B104E:           Print 1
  loc_19B1054:           GoTo loc_19B05B6
  loc_19B1057:         End If
  loc_19B1059:         Close 1
  loc_19B1094:         If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), &H12) <> vbNullString) Then
  loc_19B10BC:           Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_19B111A:           Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value
  loc_19B113A:         Else
  loc_19B1164:           Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_19B1175:         End If
  loc_19B1177:         Close 1
  loc_19B1181:         If (MemVar_1F953BC = "Y") Then
  loc_19B11B3:           var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_19B11C4:         Else
  loc_19B11F3:           var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_19B1201:         End If
  loc_19B1204:       Else
  loc_19B120F:         If Not (var_240 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_19B121D:           If (var_240 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_19B1220:           End If
  loc_19B1222:           Close 1
  loc_19B1249:           Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_19B1259:           var_B4.MoveFirst
  loc_19B125E:           ' Referenced from:     19B1E61
  loc_19B126D:           If Not(var_B4.EOF) Then
  loc_19B127D:             var_90 = "* NC BILL *"
  loc_19B12AE:             var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_19B12BD:             If (0 = 0) Then
  loc_19B12C2:               Print 1
  loc_19B12F1:               var_180 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_19B1334:               var_2B4 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_19B135E:               var_1D8 = (Chr(&HF) + Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))) / 2))))
  loc_19B1365:               var_230 = (CVar(CStr(Format(var_E4, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_19B136C:               var_2E4 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_19B1373:               var_304 = (Format(("0.00" / 2), "0.00") + Chr(&H12))
  loc_19B1379:               Print 1, var_304
  loc_19B13C7:               var_160 = (42 - Len(Trim(var_90)))
  loc_19B13FA:               var_230 = (42 - Len(Trim(var_90)))
  loc_19B1424:               var_1B8 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_19B142E:               var_1D8 = (Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))) / 2))) + CVar(var_90))
  loc_19B1435:               var_2A4 = (CVar(CStr(Format(var_E4, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_19B143C:               var_2C4 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_19B1442:               Print 1, ("0.00" / 2)
  loc_19B1461:               var_92 = &H12
  loc_19B1466:               Print 1
  loc_19B149F:               Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("VNo")), var_92)
  loc_19B14CE:               var_138 = (Chr(&HF) + "KOT No.  :     ")
  loc_19B14D8:               var_198 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)))
  loc_19B14DF:               var_1D8 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_19B14E5:               Print 1, CVar(CStr(Format(var_E4, "0.00")))
  loc_19B15A8:               var_138 = (Chr(&HF) + "KOT Dt.  :     ")
  loc_19B15B2:               var_180 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_92), &HC)))
  loc_19B15BB:               var_198 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + " ")
  loc_19B15C5:               var_200 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_19B15CC:               var_230 = (Trim(var_90) + Chr(&H12))
  loc_19B15D2:               Print 1, Space(3)
  loc_19B1668:               var_138 = (Chr(&HF) + "Category :     ")
  loc_19B1672:               var_180 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCType"))), &H1F)))
  loc_19B1679:               var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_19B167F:               Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_19B16C6:               var_114 = var_B4.Fields.Item("Remarks")
  loc_19B1703:               var_138 = (Chr(&HF) + "Remarks  :     ")
  loc_19B170D:               var_180 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_114)), &H1F)))
  loc_19B1714:               var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_19B171A:               Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_19B1753:               Set var_110 = Me.Label1
  loc_19B1759:               Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_114)
  loc_19B17FB:               var_180 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_114))), 9)))
  loc_19B1804:               var_198 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + ":     ")
  loc_19B180B:               var_230 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_19B180E:               var_27C = (Chr(&H12) + var_230)
  loc_19B1815:               var_2A4 = ((Space(3) / 2) + Chr(&H12))
  loc_19B181B:               Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_19B1877:               var_138 = (Chr(&HF) + CVar(var_C0))
  loc_19B187E:               var_160 = (CVar(var_114) + Chr(&H12))
  loc_19B1884:               Print 1, CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_114))), 9))
  loc_19B1895:             End If
  loc_19B18BB:             var_150 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Space(2))
  loc_19B18D5:             var_180 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))
  loc_19B18E1:             var_198 = Space(2)
  loc_19B18E9:             var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + var_198)
  loc_19B1903:             var_200 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Amount", 8)))
  loc_19B194C:             var_138 = (Chr(&HF) + CVar(CStr("000")))
  loc_19B1953:             var_160 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Chr(&H12))
  loc_19B1959:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_19B198D:             var_138 = (Chr(&HF) + CVar(var_C0))
  loc_19B1994:             var_160 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Chr(&H12))
  loc_19B199A:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_19B19B1:             var_92 = (var_92 + 4)
  loc_19B19B7:             var_B8.MoveFirst
  loc_19B19BF:             var_CC = CDbl(0)
  loc_19B19C2:             ' Referenced from:     19B1C55
  loc_19B19D1:             If Not(var_B8.EOF) Then
  loc_19B1A21:               Proc_6_39_E7D3A0(var_198, CVar(var_B8.Fields.Item("qty")), var_CC)
  loc_19B1A6C:               Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("qty")), 1)
  loc_19B1A97:               Proc_6_39_E7D3A0(("0.00" / 2), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_19B1AEF:               var_160 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H15, 1)) + Space(2))
  loc_19B1B08:               var_210 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_198, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))))
  loc_19B1B1C:               var_27C = (Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000") + Space(2))
  loc_19B1B32:               var_314 = CVar(Proc_6_52_EAE084(CStr(Format((Len(Trim(CVar(Me.LblRest))) * ("0.00" / 2)), "0.00")), 8, (Space(3) / 2))) 'String
  loc_19B1B35:               var_324 = (var_92 + var_314)
  loc_19B1BA3:               var_138 = (Chr(&HF) + CVar(CStr(var_324)))
  loc_19B1BAA:               var_160 = (Space(2) + Chr(&H12))
  loc_19B1BB0:               Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_19B1BEE:               Proc_6_39_E7D3A0(Space(2), CVar(var_B8.Fields.Item("qty")))
  loc_19B1C1C:               Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))), CVar(var_B8.Fields.Item("Rate")), Space(2))
  loc_19B1C28:               var_198 = (var_E4 + (CVar(var_CC) * CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))))
  loc_19B1C2D:               var_CC = CSng(var_198)
  loc_19B1C4A:               var_92 = (var_92 + 1)
  loc_19B1C50:               var_B8.MoveNext
  loc_19B1C55:               GoTo loc_19B19C2
  loc_19B1C58:             End If
  loc_19B1C7B:             var_138 = (Chr(&HF) + CVar(var_C0))
  loc_19B1C82:             var_160 = (Space(2) + Chr(&H12))
  loc_19B1C88:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_19B1CC7:             Proc_6_47_EF6560(CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))), var_CC)
  loc_19B1CF7:             var_150 = (Chr(&HF) + CVar(Proc_6_52_EAE084("Total :", &H15)))
  loc_19B1D01:             var_198 = (Chr(&H12) + CVar(Proc_6_52_EAE084(CStr(CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))), &H12)))
  loc_19B1D08:             var_1D8 = (var_198 + Chr(&H12))
  loc_19B1D0E:             Print 1, Format(var_198, "0.00")
  loc_19B1D34:             Print 1
  loc_19B1D8E:             var_198 = Chr(&H12)
  loc_19B1D9B:             var_138 = (Chr(&HF) + "Waiter Name  :     ")
  loc_19B1DA5:             var_180 = (CVar(Proc_6_52_EAE084("Total :", &H15)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92), &H14)))
  loc_19B1DAC:             var_1B8 = (CVar(Proc_6_52_EAE084(CStr(CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))), &H12)) + var_198)
  loc_19B1DB2:             Print 1, Chr(&H12)
  loc_19B1DEA:             var_138 = (Chr(&HF) + "** ")
  loc_19B1DF4:             var_150 = (CVar(Proc_6_52_EAE084("Total :", &H15)) + CVar(MemVar_1F95220))
  loc_19B1DFD:             var_160 = (CVar(var_B4.Fields.Item("WaiterName")) + " **")
  loc_19B1E03:             Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92), &H14))
  loc_19B1E16:             Print 1
  loc_19B1E1E:             Print 1
  loc_19B1E44:             var_150 = (Chr(&H1B) + Chr(&H6D))
  loc_19B1E4A:             Print 1, CVar(var_B4.Fields.Item("WaiterName"))
  loc_19B1E5C:             var_B4.MoveNext
  loc_19B1E61:             GoTo loc_19B125E
  loc_19B1E64:           End If
  loc_19B1E66:           Close 1
  loc_19B1EA1:           If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_19B1EC9:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_19B1F21:             var_150 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_19B1F27:             Print 1, var_150
  loc_19B1F47:           Else
  loc_19B1F6C:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_19B1FA3:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_19B1FB4:           End If
  loc_19B1FB6:           Close 1
  loc_19B1FC0:           If (MemVar_1F953BC = "Y") Then
  loc_19B1FF2:             var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_19B2003:           Else
  loc_19B2032:             var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_19B2040:           End If
  loc_19B2040:         End If
  loc_19B2040:       End If
  loc_19B2040:     End If
  loc_19B2043:   Else
  loc_19B208D:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92), &H14)), CVar(Proc_6_52_EAE084(CStr(CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))), &H12)), var_198)
  loc_19B20A8:   End If
  loc_19B20AB:   var_BC.MoveNext
  loc_19B20B0:   GoTo loc_19AF4C4
  loc_19B20B3: End If
  loc_19B20B8: Set var_B4 = Nothing
  loc_19B20C0: Set var_B8 = Nothing
  loc_19B20C8: Set var_BC = Nothing
  loc_19B20D0: Set var_D4 = Nothing
  loc_19B20D8: Set var_D8 = Nothing
  loc_19B20DB: Exit Sub
  loc_19B20DC: ' Referenced from: 19AF1E0
  loc_19B20DC: Proc_6_60_E63754(var_CC)
  loc_19B20E1: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '130534C
  'Data Table: 58908C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_1304C3A: Set var_88 = Me.Txt
  loc_1304C40: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1304C4E: Proc_6_74_E23240(var_8C)
  loc_1304C5A: Call Proc_30_98_F6E7AC(var_8C)
  loc_1304C62: var_92 = Index
  loc_1304C6D: If (var_92 = CInt(5)) Then
  loc_1304C87:   If (Me.RecordCount > 0) Then
  loc_1304C95:     Set var_8C = Me.FGPoint
  loc_1304CAD:     Proc_6_137_1192FDC(Me.DGWaiter, global_92, Index)
  loc_1304CBB:   End If
  loc_1304D09:   Set var_88 = Me.Txt
  loc_1304D0F:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1304D17:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1304D2F:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1304D32:     Exit Sub
  loc_1304D33:   End If
  loc_1304D40:   Set var_88 = Me.Txt
  loc_1304D46:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1304D4E:   var_A0 = var_8C.Text
  loc_1304D56:   var_D4 = CVar(var_A0) 'String
  loc_1304D9B:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1304DA4:     Me.MoveFirst
  loc_1304DC9:     Set var_88 = Me.Txt
  loc_1304DCF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1304DD7:     0 = var_8C.Text
  loc_1304DE5:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_1304DFB:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_1304E13:   End If
  loc_1304E16: Else
  loc_1304E1E:   If (var_92 = CInt(4)) Then
  loc_1304E38:     If (Me.RecordCount > 0) Then
  loc_1304E46:       Set var_8C = Me.FGPoint
  loc_1304E5E:       Proc_6_137_1192FDC(Me.DGTable, global_96)
  loc_1304E6C:     End If
  loc_1304EBA:     Set var_88 = Me.Txt
  loc_1304EC0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1304EC8:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1304EE0:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1304EE3:       Exit Sub
  loc_1304EE4:     End If
  loc_1304EF1:     Set var_88 = Me.Txt
  loc_1304EF7:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1304EFF:     var_A0 = var_8C.Text
  loc_1304F07:     var_D4 = CVar(var_A0) 'String
  loc_1304F4C:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1304F55:       Me.MoveFirst
  loc_1304F7A:       Set var_88 = Me.Txt
  loc_1304F80:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1304F88:       0 = var_8C.Text
  loc_1304F96:       Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_1304FAC:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1304FC4:     End If
  loc_1304FC7:   Else
  loc_1304FCF:     If (var_92 = CInt(7)) Then
  loc_1304FE9:       If (Me.RecordCount > 0) Then
  loc_1304FF7:         Set var_8C = Me.FGPoint
  loc_130500F:         Proc_6_137_1192FDC(Me.DGNCType, global_220)
  loc_130501D:       End If
  loc_130506B:       Set var_88 = Me.Txt
  loc_1305071:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1305079:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1305091:       If (Index Or (var_A0 = vbNullString)) Then
  loc_1305094:         Exit Sub
  loc_1305095:       End If
  loc_13050A2:       Set var_88 = Me.Txt
  loc_13050A8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13050B0:       var_A0 = var_8C.Text
  loc_13050B8:       var_D4 = CVar(var_A0) 'String
  loc_13050FD:       If CBool(var_D4 <> Me.Fields.Item("NCType").Value) Then
  loc_1305106:         Me.MoveFirst
  loc_130512B:         Set var_88 = Me.Txt
  loc_1305131:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "NCType =")
  loc_1305139:         0 = var_8C.Text
  loc_1305147:         Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_130515D:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1305175:       End If
  loc_1305178:     Else
  loc_1305180:       If (var_92 = CInt(&HB)) Then
  loc_130519A:         If (Me.RecordCount > 0) Then
  loc_13051A8:           Set var_8C = Me.FGPoint
  loc_13051C0:           Proc_6_137_1192FDC(Me.DGMember, global_196)
  loc_13051CE:         End If
  loc_130521C:         Set var_88 = Me.Txt
  loc_1305222:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_130522A:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1305242:         If (Index Or (var_A0 = vbNullString)) Then
  loc_1305245:           Exit Sub
  loc_1305246:         End If
  loc_1305253:         Set var_88 = Me.Txt
  loc_1305259:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1305261:         var_A0 = var_8C.Text
  loc_1305269:         var_D4 = CVar(var_A0) 'String
  loc_13052AE:         If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_13052B7:           Me.MoveFirst
  loc_13052DC:           Set var_88 = Me.Txt
  loc_13052E2:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13052EA:           0 = var_8C.Text
  loc_13052F8:           Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_130530E:           Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1305326:         End If
  loc_1305329:       Else
  loc_1305331:         If (var_92 = CInt(&HD)) Then
  loc_130533C:           var_A0 = "{Home}+{End}"
  loc_1305342:           Proc_303_0_FBACC8(var_A0)
  loc_130534A:         End If
  loc_130534A:       End If
  loc_130534A:     End If
  loc_130534A:   End If
  loc_130534A: End If
  loc_130534A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1241964
  'Data Table: 58908C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_9C As DataGrid
  Dim var_A0 As DataGrid
  loc_124143B: var_86 = Shift
  loc_1241448: If (CLng(Shift) = &H1B) Then
  loc_124144B:   Call Proc_30_98_F6E7AC(var_86)
  loc_1241450:   Exit Sub
  loc_1241451: End If
  loc_1241454: var_88 = KeyCode
  loc_124145F: If (var_88 = CInt(5)) Then
  loc_124147F:   Set var_A0 = Me.FGPoint
  loc_124148A:   Set var_9C = Nothing
  loc_12414BC:   Proc_6_69_134A630(Me.DGWaiter, Me.Txt, CInt(5), global_92, Shift, 0)
  loc_124152B:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1241551:     Proc_6_138_106E830(Me.DGWaiter, global_92, KeyCode, Me.FGPoint, 1)
  loc_124155F:   End If
  loc_1241562: Else
  loc_124156A:   If (var_88 = CInt(4)) Then
  loc_1241595:     Set var_9C = Nothing
  loc_12415C7:     Proc_6_69_134A630(Me.DGTable, Me.Txt, CInt(4), global_96, Shift, 0, 1)
  loc_1241636:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_124163D:       Set var_9C = Me.DGTable
  loc_124165C:       Proc_6_138_106E830(var_9C, global_96, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_124166A:     End If
  loc_124166D:   Else
  loc_1241675:     If (var_88 = CInt(7)) Then
  loc_12416D2:       Proc_6_69_134A630(Me.DGNCType, Me.Txt, CInt(7), global_220, Shift, 0, 0, Nothing)
  loc_1241741:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1241767:         Proc_6_138_106E830(Me.DGNCType, global_220, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1241775:       End If
  loc_1241778:     Else
  loc_1241780:       If (var_88 = CInt(&HB)) Then
  loc_12417DD:         Proc_6_69_134A630(Me.DGMember, Me.Txt, CInt(&HB), global_196, Shift, 0, 1, Nothing)
  loc_124184C:         If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1241872:           Proc_6_138_106E830(Me.DGMember, global_196, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1241880:         End If
  loc_1241880:       End If
  loc_1241880:     End If
  loc_1241880:   End If
  loc_1241880: End If
  loc_12418B1: Set var_9C = Me.DGTable
  loc_12418C8: Set var_A0 = Me.DGNCType
  loc_124190C: If (((((CBool(Me.DGItem.Visible) = 0) And (CBool(Me.DGWaiter.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(var_A0.Visible) = 0)) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_1241924:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_124192D:     Proc_6_75_E5335C(Shift, arg_14, 0, var_9C)
  loc_1241932:   End If
  loc_124193A:   If (KeyCode <> CInt(4)) Then
  loc_1241952:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_124195B:       Proc_6_76_E533C8(Shift, arg_14, var_A0)
  loc_1241960:     End If
  loc_1241960:   End If
  loc_1241960: End If
  loc_1241960: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10941FC
  'Data Table: 58908C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_1093F44: On Error Goto loc_10941F4
  loc_1093F4A: Proc_6_58_E06050(arg_10)
  loc_1093F52: var_86 = KeyAscii
  loc_1093F5D: If (var_86 = CInt(0)) Then
  loc_1093F6A:   Set var_8C = Me.Txt
  loc_1093F70:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1093F8B:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_1093F9A: Else
  loc_1093FA2:   If (var_86 = CInt(5)) Then
  loc_1093FC1:     If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_1093FD3:       var_AC = "Name"
  loc_1093FEE:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_92, arg_10)
  loc_1094020:       Proc_6_138_106E830(Me.DGWaiter, global_92, KeyAscii, Me.FGPoint)
  loc_109402E:     End If
  loc_1094031:   Else
  loc_1094039:     If (var_86 = CInt(4)) Then
  loc_1094058:       If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_1094085:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_96, arg_10, "Name")
  loc_10940B7:         Proc_6_138_106E830(Me.DGTable, global_96, KeyAscii, Me.FGPoint, 0)
  loc_10940C5:       End If
  loc_10940C8:     Else
  loc_10940D0:       If (var_86 = CInt(7)) Then
  loc_10940EF:         If (CBool(Me.DGNCType.Visible) = &HFF) Then
  loc_109411C:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_220, arg_10, "NCType")
  loc_109414E:           Proc_6_138_106E830(Me.DGNCType, global_220, KeyAscii, Me.FGPoint, 0)
  loc_109415C:         End If
  loc_109415F:       Else
  loc_1094167:         If (var_86 = CInt(&HB)) Then
  loc_1094186:           If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1094198:             var_AC = "Name"
  loc_10941B3:             Proc_6_89_1470B00(Me.Txt, KeyAscii, global_196, arg_10, var_AC)
  loc_10941E5:             Proc_6_138_106E830(Me.DGMember, global_196, KeyAscii, Me.FGPoint, 0)
  loc_10941F3:           End If
  loc_10941F3:         End If
  loc_10941F3:       End If
  loc_10941F3:     End If
  loc_10941F3:   End If
  loc_10941F3: End If
  loc_10941F3: Exit Sub
  loc_10941F4: ' Referenced from: 1093F44
  loc_10941F4: Proc_6_60_E63754(var_AC, 0)
  loc_10941F9: Exit Sub
  loc_10941FA: DOC
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFEFE4
  'Data Table: 58908C
  Dim var_86 As Integer
  loc_DFEFDF: var_86 = KeyCode
  loc_DFEFE2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A6E4
  'Data Table: 58908C
  loc_E4A6C2: Set var_88 = Me.Txt
  loc_E4A6C8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A6D6: Proc_6_73_E23294(var_8C)
  loc_E4A6E2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '170DDFC
  'Data Table: 58908C
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim arg_10 As Integer
  Dim var_AC As Variant
  Dim var_9C As String
  Dim var_124 As String
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_168 As Variant
  Dim var_16C As Variant
  Dim var_190 As Variant
  Dim var_90 As Variant
  Dim var_CC As Variant
  Dim var_148 As String
  Dim unk_5890AB As Connection15
  Dim var_98 As Variant
  Dim var_198 As Variant
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_1A8 As Double
  Dim var_1B0 As TextBox
  Dim var_88 As Recordset15
  Dim var_11C As Variant
  Dim var_158 As Variant
  Dim var_224 As Variant
  Dim var_244 As String
  loc_170C24C: On Error Goto loc_170DDF6
  loc_170C252: var_8A = Cancel
  loc_170C25D: If (var_8A = CInt(0)) Then
  loc_170C26B:   Set var_90 = Me.Txt
  loc_170C271:   Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_170C279:   var_9C = "Vr. No"
  loc_170C29A:   If (Proc_6_27_EA61EC(var_94, var_9C) = 0) Then
  loc_170C2A8:     Set var_90 = Me.Txt
  loc_170C2AE:     Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_170C2B6:     var_94.SetFocus
  loc_170C2C4:     arg_10 = &HFF
  loc_170C2C7:     Exit Sub
  loc_170C2C8:   End If
  loc_170C2D6:   Set var_90 = Me.Txt
  loc_170C2DC:   Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_9C)
  loc_170C2E4:   arg_10 = var_94.Text
  loc_170C2FC:   If (CDbl(var_9C) = CDbl(0)) Then
  loc_170C318:     MsgBox("Vr. No Can Not Be 0", 0, var_DC, var_FC, var_11C)
  loc_170C332:     Set var_90 = Me.Txt
  loc_170C338:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170C340:     var_94.SetFocus
  loc_170C34E:     arg_10 = &HFF
  loc_170C351:     Exit Sub
  loc_170C352:   End If
  loc_170C356:   Set var_90 = Me.TopCtrl1
  loc_170C35C:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_170C375:   If (CStr(var_8A) = "Add") Then
  loc_170C3A9:     var_BC = Space((5 - Len(global_152)))
  loc_170C3B1:     var_FC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & global_152) + "Vr. No Can Not Be 0")
  loc_170C3C5:     var_11C = Space((5 - Len(global_112)))
  loc_170C3CD:     var_134 = (var_FC + var_11C)
  loc_170C3DA:     var_144 = (var_134 + CVar(global_112))
  loc_170C3F1:     Set var_90 = Me.Txt
  loc_170C3F7:     Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_148)
  loc_170C3FF:     8 = var_94.Text
  loc_170C40C:     var_158 = Space((var_144 - Len(var_148)))
  loc_170C414:     var_168 = ( + var_158)
  loc_170C426:     Set var_98 = Me.Txt
  loc_170C42C:     Call 0.Method_Txt_Validate0 (CInt(0), var_16C)
  loc_170C43F:     var_190 = (var_168 + CVar(var_16C.Text))
  loc_170C48C:     Set var_90 = Me.Txt
  loc_170C492:     Call 0.Method_Txt_Validate0 (CInt(3), var_94)
  loc_170C49A:     var_94.Text = CStr(var_190)
  loc_170C4B6:     Me.LblVPrefix.Caption = global_112
  loc_170C4BE:   End If
  loc_170C4C2:   Set var_90 = Me.TopCtrl1
  loc_170C4C8:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_170C4D0:   var_9C = CStr()
  loc_170C4E1:   If (var_9C = "Add") Then
  loc_170C511:     Set var_90 = Me.Txt
  loc_170C517:     Call 0.Method_Txt_Validate0 (CInt(3), var_94, var_9C, "Select Count(*) From KOT Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_170C528:     var_124 = var_16C & var_9C
  loc_170C538:     unk_5890AB.Execute var_124 & "'", 0, var_198
  loc_170C548:      = var_16C.Item()
  loc_170C550:      = var_198.Value
  loc_170C57D:     If (var_94.Text.Fields > 0) Then
  loc_170C586:       Call 0.Method_arg_50 (var_9C)
  loc_170C5A7:       MsgBox("Duplicate Voucher No.", &H40, CVar(var_9C), var_FC, var_11C)
  loc_170C5BD:       Call Proc_30_100_11870D8(MemVar_1F95044)
  loc_170C5CD:       If (var_9C = vbNullString) Then
  loc_170C5DA:         Set var_90 = Me.Txt
  loc_170C5E0:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170C5E8:         var_94.SetFocus
  loc_170C5F6:         arg_10 = &HFF
  loc_170C5F9:         Exit Sub
  loc_170C5FA:       End If
  loc_170C600:       Call Proc_30_100_11870D8(MemVar_1F95044, var_9C)
  loc_170C613:       Set var_90 = Me.Txt
  loc_170C619:       Call 0.Method_Txt_Validate0 (CInt(3), var_94, var_9C)
  loc_170C621:       var_94.Text = arg_10
  loc_170C632:       arg_10 = &HFF
  loc_170C635:       Exit Sub
  loc_170C636:     End If
  loc_170C636:   End If
  loc_170C639: Else
  loc_170C641:   If (var_8A = CInt(1)) Then
  loc_170C652:     Set var_90 = Me.Txt
  loc_170C658:     Call 0.Method_Txt_Validate0 (CInt(1), var_94, var_9C)
  loc_170C660:     arg_10 = var_94.Text
  loc_170C676:     var_FC = Len(Trim(CVar(var_9C)))
  loc_170C690:     If (var_FC = 0) Then
  loc_170C6A6:       Set var_90 = Me.Txt
  loc_170C6AC:       Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_170C6B4:       var_94.Text = CStr(MemVar_1F950EC)
  loc_170C6C6:     Else
  loc_170C6D0:       Set var_90 = Me.Txt
  loc_170C6D6:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170C6F6:       Set var_16C = Me.Txt
  loc_170C6FC:       Call 0.Method_Txt_Validate0 (Cancel, var_198)
  loc_170C704:       var_198.Text = Proc_6_33_15125B8(var_94)
  loc_170C717:     End If
  loc_170C724:     Set var_90 = Me.Txt
  loc_170C72A:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170C732:     var_9C = var_94.Text
  loc_170C74D:     Set var_98 = Me.Txt
  loc_170C753:     Call 0.Method_Txt_Validate0 (Cancel, var_16C, var_124)
  loc_170C75B:     (CDate(var_9C) >= MemVar_1F950F4) = var_16C.Text
  loc_170C77D:     If Not((var_9C And (CDate(var_124) <= MemVar_1F950FC))) Then
  loc_170C796:       var_AC = "V.Date Not Between Current Fin. Year"
  loc_170C7A1:       MsgBox(var_AC, 0, "Date Validate", var_FC, var_11C)
  loc_170C7BB:       Set var_90 = Me.Txt
  loc_170C7C1:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_170C7C9:       var_94.SetFocus
  loc_170C7D7:       arg_10 = &HFF
  loc_170C7DA:       Exit Sub
  loc_170C7DB:     End If
  loc_170C7DF:     Set var_90 = Me.TopCtrl1
  loc_170C7E5:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_170C7ED:     var_9C = CStr(var_94)
  loc_170C803:     Set var_94 = Me.Txt
  loc_170C809:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_170C832:     If ((var_9C = "Add") And (var_98.Text = vbNullString)) Then
  loc_170C83B:       Call Proc_30_100_11870D8(MemVar_1F95044)
  loc_170C84E:       Set var_90 = Me.Txt
  loc_170C854:       Call 0.Method_Txt_Validate0 (CInt(3), var_94)
  loc_170C85C:       var_94.Text = var_9C
  loc_170C86B:     End If
  loc_170C86E:   Else
  loc_170C876:     If (var_8A = CInt(&HB)) Then
  loc_170C8BA:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_170C8CA:         Set var_90 = Me.Txt
  loc_170C8D0:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170C8EF:         If (var_94.Text = vbNullString) Then
  loc_170C8FF:           Set var_90 = Me.Txt
  loc_170C905:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170C90D:           var_94.Text = vbNullString
  loc_170C926:           Set var_90 = Me.Txt
  loc_170C92C:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170C934:           var_94.Tag = vbNullString
  loc_170C94E:           Set var_90 = Me.Txt
  loc_170C954:           Call 0.Method_Txt_Validate0 (CInt(&HC), var_94)
  loc_170C95C:           var_94.Text = vbNullString
  loc_170C968:         End If
  loc_170C96B:       Else
  loc_170C978:         Set var_90 = Me.Txt
  loc_170C97E:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170C99D:         If (var_94.Text = vbNullString) Then
  loc_170C9AD:           Set var_90 = Me.Txt
  loc_170C9B3:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170C9D2:           If (var_94.Text = vbNullString) Then
  loc_170C9E2:             Set var_90 = Me.Txt
  loc_170C9E8:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170C9F0:             var_94.Text = vbNullString
  loc_170CA09:             Set var_90 = Me.Txt
  loc_170CA0F:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170CA17:             var_94.Tag = vbNullString
  loc_170CA31:             Set var_90 = Me.Txt
  loc_170CA37:             Call 0.Method_Txt_Validate0 (CInt(&HC), var_94)
  loc_170CA3F:             var_94.Text = vbNullString
  loc_170CA4B:           End If
  loc_170CA4E:         Else
  loc_170CA5C:           Set var_90 = Me.Txt
  loc_170CA62:           Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_170CA6A:           var_9C = var_94.Tag
  loc_170CA81:           If (var_9C <> vbNullString) Then
  loc_170CAA3:             Set var_90 = Me.Txt
  loc_170CAA9:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_94, var_9C, "Code='")
  loc_170CAB1:             0 = var_94.Tag
  loc_170CACA:             Me.Find 1 & var_9C & "'", var_AC, var_9C
  loc_170CADF:           End If
  loc_170CB1A:           Set var_98 = Me.Txt
  loc_170CB20:           Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170CB28:           var_16C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_170CB79:           Set var_98 = Me.Txt
  loc_170CB7F:           Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170CB87:           var_16C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_170CBBA:           var_94 = Me.Fields.Item("CardNo")
  loc_170CBD9:           Set var_98 = Me.Txt
  loc_170CBDF:           Call 0.Method_Txt_Validate0 (CInt(&HC), var_16C)
  loc_170CBE7:           var_16C.Text = CStr(var_94.Value)
  loc_170CC17:           Set var_90 = Me.Txt
  loc_170CC1D:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170CC3F:           If (Proc_96_1_F8D0C4(var_94.Tag) = 0) Then
  loc_170CC4F:             Set var_90 = Me.Txt
  loc_170CC55:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170CC69:             Proc_96_2_100E504(var_94.Tag)
  loc_170CC6E:             var_1A8 = 0
  loc_170CC77:             var_AC = "Member Varification"
  loc_170CCA1:             var_BC = CVar("Credit Is Not allowed to this Member" & vbCrLf & " & Current A/c Balance is Rs.:         " & CStr(var_1A8)) 'String
  loc_170CCA4:             MsgBox(var_BC, &H40, var_AC, var_FC, var_11C)
  loc_170CCC6:           End If
  loc_170CCC6:         End If
  loc_170CCC6:       End If
  loc_170CCC9:     Else
  loc_170CCD1:       If (var_8A = CInt(&HC)) Then
  loc_170CCDE:         Set var_90 = Me.Txt
  loc_170CCE4:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170CCFB:         var_9C = CStr(Trim(CVar(var_94)))
  loc_170CD09:         Set var_98 = Me.Txt
  loc_170CD0F:         Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170CD17:         var_16C.Text = var_9C
  loc_170CD46:         If (Me.RecordCount > 0) Then
  loc_170CD4F:           Me.MoveFirst
  loc_170CD72:           Set var_90 = Me.Txt
  loc_170CD78:           Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C, "CardNo='")
  loc_170CD80:           0 = var_94.Text
  loc_170CD99:           Me.Find 1 & var_9C & "'", var_AC, var_1A8
  loc_170CDD7:           If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_170CDE8:             Set var_90 = Me.Txt
  loc_170CDEE:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_170CDF6:             var_94.Text = vbNullString
  loc_170CE10:             Set var_90 = Me.Txt
  loc_170CE16:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_170CE1E:             var_94.Tag = vbNullString
  loc_170CE37:             Set var_90 = Me.Txt
  loc_170CE3D:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170CE45:             var_94.Text = vbNullString
  loc_170CE54:           Else
  loc_170CE90:             Set var_98 = Me.Txt
  loc_170CE96:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_16C)
  loc_170CE9E:             var_16C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_170CEF0:             Set var_98 = Me.Txt
  loc_170CEF6:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_16C)
  loc_170CEFE:             var_16C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_170CF31:             var_94 = Me.Fields.Item("CardNo")
  loc_170CF4F:             Set var_98 = Me.Txt
  loc_170CF55:             Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170CF5D:             var_16C.Text = CStr(var_94.Value)
  loc_170CF8E:             Set var_90 = Me.Txt
  loc_170CF94:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_170CFB6:             If (Proc_96_1_F8D0C4(var_94.Tag) = 0) Then
  loc_170CFC7:               Set var_90 = Me.Txt
  loc_170CFCD:               Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_170CFD5:               var_124 = var_94.Tag
  loc_170CFE1:               Proc_96_2_100E504(var_124)
  loc_170CFE6:               var_1A8 = 0
  loc_170D019:               var_BC = CVar("Credit Is Not allowed to this Member" & vbCrLf & " & Current A/c Balance is Rs.:         " & CStr(var_1A8)) 'String
  loc_170D01C:               MsgBox(var_BC, &H40, "Member Varification", var_FC, var_11C)
  loc_170D03E:             End If
  loc_170D03E:           End If
  loc_170D03E:         End If
  loc_170D041:       Else
  loc_170D049:         If (var_8A = CInt(5)) Then
  loc_170D057:           Set var_90 = Me.Txt
  loc_170D05D:           Call 0.Method_Txt_Validate0 (CInt(5), var_94)
  loc_170D065:           var_9C = "Steward"
  loc_170D086:           If (Proc_6_27_EA61EC(var_94, var_9C) = 0) Then
  loc_170D094:             Set var_90 = Me.Txt
  loc_170D09A:             Call 0.Method_Txt_Validate0 (CInt(5), var_94)
  loc_170D0A2:             var_94.SetFocus
  loc_170D0B0:             arg_10 = &HFF
  loc_170D0B3:             Exit Sub
  loc_170D0B4:           End If
  loc_170D102:           Set var_90 = Me.Txt
  loc_170D108:           Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_170D110:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_170D128:           If (arg_10 Or (var_9C = vbNullString)) Then
  loc_170D138:             Set var_90 = Me.Txt
  loc_170D13E:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170D146:             var_94.Text = vbNullString
  loc_170D15F:             Set var_90 = Me.Txt
  loc_170D165:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170D16D:             var_94.Tag = vbNullString
  loc_170D17C:           Else
  loc_170D1B7:             Set var_98 = Me.Txt
  loc_170D1BD:             Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170D1C5:             var_16C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_170D1F8:             var_94 = Me.Fields.Item("Code")
  loc_170D216:             Set var_98 = Me.Txt
  loc_170D21C:             Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170D224:             var_16C.Tag = CStr(var_94.Value)
  loc_170D23A:           End If
  loc_170D23D:         Else
  loc_170D245:           If (var_8A = CInt(4)) Then
  loc_170D253:             Set var_90 = Me.Txt
  loc_170D259:             Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_170D261:             var_9C = "Table"
  loc_170D282:             If (Proc_6_27_EA61EC(var_94, var_9C) = 0) Then
  loc_170D290:               Set var_90 = Me.Txt
  loc_170D296:               Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_170D29E:               var_94.SetFocus
  loc_170D2AC:               arg_10 = &HFF
  loc_170D2AF:               Exit Sub
  loc_170D2B0:             End If
  loc_170D2FE:             Set var_90 = Me.Txt
  loc_170D304:             Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_170D30C:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_170D324:             If (arg_10 Or (var_9C = vbNullString)) Then
  loc_170D334:               Set var_90 = Me.Txt
  loc_170D33A:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170D342:               var_94.Text = vbNullString
  loc_170D35B:               Set var_90 = Me.Txt
  loc_170D361:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170D369:               var_94.Tag = vbNullString
  loc_170D383:               Set var_90 = Me.Txt
  loc_170D389:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_94)
  loc_170D391:               var_94.Text = "0"
  loc_170D3A8:               If (global_160 = "RO") Then
  loc_170D3B1:                 global_156 = vbNullString
  loc_170D3BB:                 global_180 = vbNullString
  loc_170D3C5:                 global_176 = vbNullString
  loc_170D3C9:               End If
  loc_170D3D7:               Set var_90 = Me.Txt
  loc_170D3DD:               Call 0.Method_Txt_Validate0 (CInt(8), var_94)
  loc_170D3E5:               var_94.Text = vbNullString
  loc_170D3FF:               Set var_90 = Me.Txt
  loc_170D405:               Call 0.Method_Txt_Validate0 (CInt(9), var_94)
  loc_170D40D:               var_94.Text = vbNullString
  loc_170D427:               Set var_90 = Me.Txt
  loc_170D42D:               Call 0.Method_Txt_Validate0 (CInt(&HA), var_94)
  loc_170D435:               var_94.Text = vbNullString
  loc_170D444:             Else
  loc_170D47C:               Set var_98 = Me.Txt
  loc_170D482:               Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170D48A:               var_16C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_170D4B8:               var_94 = Me.Fields.Item("Code")
  loc_170D4C0:               var_BC = CVar(var_94) 'Address
  loc_170D4D6:               Set var_98 = Me.Txt
  loc_170D4DC:               Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170D4E4:               var_16C.Tag = Proc_6_38_E69628(var_BC)
  loc_170D506:               Set var_90 = Me.Txt
  loc_170D50C:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_94)
  loc_170D530:               If (CDbl(Val(var_94.Text)) = CDbl(0)) Then
  loc_170D560:                 var_148 = "SELECT ISNULL(MAX(GUARATT),1) FROM (SELECT TOP 1 GUARATT FROM KOT WHERE RestCode='" & LocalRestCode & "' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' AND ROOMNO='"
  loc_170D570:                 Set var_90 = Me.Txt
  loc_170D576:                 Call 0.Method_Txt_Validate0 (Cancel, var_94, var_124, var_148, var_BC, -1)
  loc_170D597:                 unk_5890AB.Execute var_16C & var_124 & "' Order By Vno Desc)Q", 0, var_198
  loc_170D59F:                 var_DC = var_94.Tag.Fields
  loc_170D5A7:                  = var_16C.Item(var_1A8)
  loc_170D5AF:                  = var_198.Value
  loc_170D5C6:                 Set var_1AC = Me.Txt
  loc_170D5CC:                 Call 0.Method_Txt_Validate0 (CInt(&HD), var_1B0)
  loc_170D5D4:                 var_1B0.Text = CStr(var_DC)
  loc_170D600:               End If
  loc_170D60E:               Set var_90 = Me.Txt
  loc_170D614:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_94)
  loc_170D638:               If (CDbl(Val(var_94.Text)) = CDbl(0)) Then
  loc_170D649:                 Set var_90 = Me.Txt
  loc_170D64F:                 Call 0.Method_Txt_Validate0 (CInt(&HD), var_94)
  loc_170D657:                 var_94.Text = "1"
  loc_170D663:               End If
  loc_170D66E:               If (global_160 = "RO") Then
  loc_170D693:                 var_BC = CVar(Me.Fields.Item("Adult")) 'Address
  loc_170D69A:                 Proc_6_39_E7D3A0(var_DC)
  loc_170D6B2:                 Set var_98 = Me.Txt
  loc_170D6B8:                 Call 0.Method_Txt_Validate0 (CInt(&HD), var_16C)
  loc_170D6C0:                 var_16C.Text = CStr(var_DC)
  loc_170D6F4:                 var_94 = Me.Fields.Item("DocID")
  loc_170D6FC:                 var_BC = CVar(var_94) 'Address
  loc_170D70B:                 global_180 = Proc_6_38_E69628(var_BC)
  loc_170D71E:                 var_CC = 0
  loc_170D74E:                 unk_5890AB.Execute "Select mFolioNoDocId From GuestFolio Where DocId='" & global_180 & "'", var_BC, -1
  loc_170D756:                 var_90 = var_90.Fields
  loc_170D75E:                 var_CC = var_94.Item(var_94)
  loc_170D766:                 var_98 = var_98.Value
  loc_170D773:                 var_FC = CVar(Proc_6_38_E69628(var_DC, var_DC)) 'String
  loc_170D779:                 var_11C = Trim(var_FC)
  loc_170D788:                 global_176 = CStr(var_11C)
  loc_170D7B4:                 If (global_176 <> vbNullString) Then
  loc_170D7CE:                   var_9C = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & global_176
  loc_170D7DE:                   unk_5890AB.Execute var_9C & "'", var_BC, -1
  loc_170D7E9:                   Set var_88 = var_90
  loc_170D7FC:                 Else
  loc_170D813:                   var_9C = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & global_180
  loc_170D823:                   unk_5890AB.Execute var_9C & "'", var_BC, -1
  loc_170D82E:                   Set var_88 = var_90
  loc_170D83E:                 End If
  loc_170D87A:                 If (var_88.Fields.Item(0).Value > 0) Then
  loc_170D896:                   MsgBox("Guest Room Bill Already printed for this Room", &H10, var_DC, var_FC, var_11C)
  loc_170D8A8:                   arg_10 = &HFF
  loc_170D8AB:                   Exit Sub
  loc_170D8AC:                 End If
  loc_170D8BE:                 var_90 = Me.Fields
  loc_170D8CE:                 var_BC = CVar(var_90.Item("RoomCat")) 'Address
  loc_170D8DD:                 global_156 = Proc_6_38_E69628(var_BC, arg_10, var_90)
  loc_170D8EA:               End If
  loc_170D907:               Proc_6_7_F26918(var_BC, MemVar_1F950EC, "Select Top 1 VNo From KOT Where VDate=", var_274)
  loc_170D90F:               var_DC = -1 & var_BC 
  loc_170D944:               var_158 = var_DC & " And RestCode='" & CVar(LocalRestCode) & "' And RoomCat='" & CVar(global_156) & "' And RoomType='" 
  loc_170D970:               var_90 = Me.Fields
  loc_170D989:               var_224 = CVar(Proc_6_38_E69628(CVar(var_90.Item("Code")), var_158 & CVar(global_160) & "' And RoomNo='", var_98)) 'String
  loc_170D990:               var_244 = "' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' And IsNull(ContraDocId,'')='' Order By VNo desc"
  loc_170D9A3:               unk_5890AB.Execute CStr(var_90 & var_224 & var_244), var_BC, 
  loc_170D9EE:               If (var_98.RecordCount > 0) Then
  loc_170D9FE:                 Me.LblState.Caption = "Running Order"
  loc_170DA09:               Else
  loc_170DA16:                 Me.LblState.Caption = "New Order"
  loc_170DA1E:               End If
  loc_170DA23:               Set var_88 = Nothing
  loc_170DA31:               If (global_160 = "RO") Then
  loc_170DA6D:                 Set var_98 = Me.Txt
  loc_170DA73:                 Call 0.Method_Txt_Validate0 (CInt(8), var_16C)
  loc_170DA7B:                 var_16C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments1")))
  loc_170DAC8:                 Set var_98 = Me.Txt
  loc_170DACE:                 Call 0.Method_Txt_Validate0 (CInt(9), var_16C)
  loc_170DAD6:                 var_16C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments2")))
  loc_170DB04:                 var_94 = Me.Fields.Item("Comments3")
  loc_170DB23:                 Set var_98 = Me.Txt
  loc_170DB29:                 Call 0.Method_Txt_Validate0 (CInt(&HA), var_16C)
  loc_170DB31:                 var_16C.Text = Proc_6_38_E69628(CVar(var_94))
  loc_170DB45:               End If
  loc_170DB45:             End If
  loc_170DB48:           Else
  loc_170DB50:             If (var_8A = CInt(7)) Then
  loc_170DB5D:               Set var_90 = Me.Txt
  loc_170DB63:               Call 0.Method_Txt_Validate0 (Cancel)
  loc_170DB6B:               var_9C = "NC Category"
  loc_170DB8C:               If (Proc_6_27_EA61EC(var_94, var_9C) = 0) Then
  loc_170DB99:                 Set var_90 = Me.Txt
  loc_170DB9F:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170DBA7:                 var_94.SetFocus
  loc_170DBB5:                 arg_10 = &HFF
  loc_170DBB8:                 Exit Sub
  loc_170DBB9:               End If
  loc_170DC07:               Set var_90 = Me.Txt
  loc_170DC0D:               Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_170DC15:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_170DC2D:               If (arg_10 Or (var_9C = vbNullString)) Then
  loc_170DC3D:                 Set var_90 = Me.Txt
  loc_170DC43:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170DC4B:                 var_94.Text = vbNullString
  loc_170DC64:                 Set var_90 = Me.Txt
  loc_170DC6A:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170DC72:                 var_94.Tag = vbNullString
  loc_170DC81:               Else
  loc_170DCBC:                 Set var_98 = Me.Txt
  loc_170DCC2:                 Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170DCCA:                 var_16C.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_170DCFD:                 var_94 = Me.Fields.Item("NCPer")
  loc_170DD1B:                 Set var_98 = Me.Txt
  loc_170DD21:                 Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170DD29:                 var_16C.Tag = CStr(var_94.Value)
  loc_170DD3F:               End If
  loc_170DD42:             Else
  loc_170DD4A:               If (var_8A = CInt(&HD)) Then
  loc_170DD5A:                 Set var_90 = Me.Txt
  loc_170DD60:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170DD75:                 var_1A8 = Val(var_94.Text)
  loc_170DDAD:                 Set var_98 = Me.Txt
  loc_170DDB3:                 Call 0.Method_Txt_Validate0 (Cancel, var_16C, CStr(Format(CVar(var_1A8), "0")), 1)
  loc_170DDBB:                 var_16C.Text = 1
  loc_170DDDB:               End If
  loc_170DDDB:             End If
  loc_170DDDB:           End If
  loc_170DDDB:         End If
  loc_170DDDB:       End If
  loc_170DDDB:     End If
  loc_170DDDB:   End If
  loc_170DDDB: End If
  loc_170DDED: Me.FGrid.Col = CVar(CLng(3))
  loc_170DDF5: Exit Sub
  loc_170DDF6: ' Referenced from: 170C24C
  loc_170DDF6: Proc_6_60_E63754(var_1A8)
  loc_170DDFB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60244
  'Data Table: 58908C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6020F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60222: Set var_A8 = Me.TxtGrid
  loc_E60228: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60230: var_AC.Visible = False
  loc_E6023C: Call Proc_30_98_F6E7AC()
  loc_E60241: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66B28
  'Data Table: 58908C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E66AE4: Set var_88 = Me.TxtGrid
  loc_E66AEA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E66B04: If (var_8C.Visible = 0) Then
  loc_E66B1D:   Me.FGrid.BackColorSel = CVar(CLng(global_104))
  loc_E66B25: End If
  loc_E66B25: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E5135C
  'Data Table: 58908C
  loc_E51334: Set var_88 = Me.TopCtrl1
  loc_E5133A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E51353: If (CStr() <> "Browse") Then
  loc_E51356:   Call Proc_30_90_E41594()
  loc_E5135B: End If
  loc_E5135B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1296A30
  'Data Table: 58908C
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim Cancel As Integer
  Dim var_110 As Long
  Dim var_120 As String
  loc_1296440: Set var_88 = Me.TopCtrl1
  loc_1296446: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_129645A: Set var_A0 = Me.TopCtrl1
  loc_1296460: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005((CStr() = "Edit"))
  loc_1296486: If ( Or (CStr() = "Add")) Then
  loc_1296496:   If ((Cancel = &H4D) And (arg_10 = 2)) Then
  loc_12964B0:     global_272 = CInt(CLng(Me.FGrid.Col))
  loc_12964CC:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12964D4:     var_E4 = CVar(CLng(6)) 'Long
  loc_12964FB:     Me.txtDisc.Text = CStr(Me.FGrid.TextMatrix))
  loc_1296522:     Me.txtDisc.SelLength = 0
  loc_129654A:     Me.txtDisc.SelStart = Len(Me.txtDisc.Text)
  loc_129655C:     var_C4 = CVar(CLng(4)) 'Long
  loc_129656B:     Me.FGrid.Col = var_C4
  loc_129657D:     var_B0 = Me.FGrid.CellTop
  loc_12965B0:     Me.FrmeDisc.Top = ((CDbl(Me.FGrid.Top) + CDbl(CLng(var_B0))) + CDbl(350))
  loc_12965EA:     Me.FrmeDisc.Left = CDbl((CLng(Me.FGrid.CellLeft) + &HA))
  loc_1296607:     Me.FrmeDisc.Width = CDbl(1)
  loc_129661D:     Me.FrmeDisc.Height = CDbl(1)
  loc_129662A:     global_270 = 1
  loc_1296633:     global_276 = "Go"
  loc_1296643:     Me.Timer2.Enabled = True
  loc_129664B:   End If
  loc_129664B: End If
  loc_129664F: Set var_88 = Me.TopCtrl1
  loc_1296655: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(global_270)
  loc_129669A: If ((CStr(var_B0) = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_12966A3:   Call Form_KeyDown(Cancel, arg_10)
  loc_12966A8: End If
  loc_12966AC: Set var_88 = Me.TopCtrl1
  loc_12966B2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_E4)
  loc_12966CB: If (CStr(var_C4) = "Browse") Then
  loc_12966CE:   Exit Sub
  loc_12966CF: End If
  loc_12966EC: var_108 = Me.FGrid.Rows
  loc_1296743: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_108) - 1))))) Then
  loc_129675C:   Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_129676C:   var_9C = "+{Tab}"
  loc_1296772:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0, var_108)
  loc_129677C:   Cancel = 0
  loc_1296782: Else
  loc_129678C:   var_B0 = Me.FGrid.Rows
  loc_12967D9:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12967F2:     Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_12967FA:     Call Proc_30_99_F0BAE0(var_B0, Cancel)
  loc_1296801:     Cancel = 0
  loc_1296804:   End If
  loc_1296804: End If
  loc_129680A: global_124 = Cancel
  loc_1296830: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1296854: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_129686A:   var_110 = CLng(Me.FGrid.Col)
  loc_129687A:   If (var_110 = CLng(4)) Then
  loc_1296890:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12968A8:     var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12968AD:     var_120 = vbNullString
  loc_12968B7:     Set var_F8 = Me.FGrid
  loc_12968BD:     LateIdCallSt
  loc_12968E8:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12968F0:     var_E4 = CVar(CLng(&HA)) 'Long
  loc_12968F5:     var_120 = vbNullString
  loc_12968FF:     Set var_A0 = Me.FGrid
  loc_1296905:     LateIdCallSt
  loc_129692A:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1296932:     var_E4 = CVar(CLng(7)) 'Long
  loc_1296937:     var_120 = vbNullString
  loc_1296941:     Set var_A0 = Me.FGrid
  loc_1296947:     LateIdCallSt
  loc_129696C:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1296974:     var_E4 = CVar(CLng(&HD)) 'Long
  loc_1296979:     var_120 = vbNullString
  loc_1296983:     Set var_A0 = Me.FGrid
  loc_1296989:     LateIdCallSt
  loc_129699E:   Else
  loc_12969A5:     If Not (var_110 = CLng(7)) Then
  loc_12969AF:       If (var_110 = CLng(3)) Then
  loc_12969B2:       End If
  loc_12969C5:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12969DD:       var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12969E2:       var_120 = vbNullString
  loc_12969EC:       Set var_F8 = Me.FGrid
  loc_12969F2:       LateIdCallSt
  loc_1296A0D:     Else
  loc_1296A14:       If (var_110 = CLng(9)) Then
  loc_1296A17:       End If
  loc_1296A17:     End If
  loc_1296A17:   End If
  loc_1296A17: End If
  loc_1296A1D: If (Cancel = &HD) Then
  loc_1296A25:   global_126 = 0
  loc_1296A28: End If
  loc_1296A2A: Cancel = 0
  loc_1296A2D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'FB5DEC
  'Data Table: 58908C
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_134 As String
  loc_FB5C60: Set var_88 = Me.TopCtrl1
  loc_FB5C66: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_FB5C7F: If (CStr() <> "Edit") Then
  loc_FB5C82:   Exit Sub
  loc_FB5C83: End If
  loc_FB5CA0: If (CLng(Me.FGrid.Col) = CLng(9)) Then
  loc_FB5CB6:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB5CCE:   var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB5D14:   If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "YES") Then
  loc_FB5D2A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB5D42:     var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB5D47:     var_134 = "No"
  loc_FB5D51:     Set var_F4 = Me.FGrid
  loc_FB5D57:     LateIdCallSt
  loc_FB5D72:   Else
  loc_FB5D85:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB5D9D:     var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB5DA2:     var_134 = "Yes"
  loc_FB5DAC:     Set var_F4 = Me.FGrid
  loc_FB5DB2:     LateIdCallSt
  loc_FB5DCA:   End If
  loc_FB5DCD: Else
  loc_FB5DD6:   Call FGrid_UnknownEvent_C()
  loc_FB5DE0:   global_126 = 0
  loc_FB5DE3: End If
  loc_FB5DE3: Call Proc_30_106_12605C0(global_126, CInt(&HD), var_F4, var_134, var_E0, var_C0)
  loc_FB5DE8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '122652C
  'Data Table: 58908C
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Long
  Dim Me As Variant
  Dim var_10C As Integer
  Dim var_104 As TextBox
  loc_122602C: Set var_88 = Me.TopCtrl1
  loc_1226032: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_122604B: If (CStr() = "Browse") Then
  loc_122604E:   Exit Sub
  loc_122604F: End If
  loc_1226062: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122606A: var_CC = CVar(CLng(&HB)) 'Long
  loc_12260A2: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_12260A5:   Exit Sub
  loc_12260A6: End If
  loc_12260AE: Set var_88 = Me.BtnLblModi
  loc_12260B4: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010007(True)
  loc_12260CF: var_F4 = CLng(Me.FGrid.Col)
  loc_12260DF: If (var_F4 = CLng(2)) Then
  loc_12260E5:   var_AC = "KOTOutletSelection"
  loc_122611E:   If (Proc_6_38_E69628(CVar(Me.Fields.Item(var_AC)), var_F4) = "No") Then
  loc_1226121:     Exit Sub
  loc_1226122:   End If
  loc_1226126:   Set var_88 = Me.TopCtrl1
  loc_122612C:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_CC)
  loc_1226151:   If ((CStr(var_AC) = "Edit") And (global_192 <> "Yes")) Then
  loc_1226154:     Exit Sub
  loc_1226155:   End If
  loc_1226193:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_12261A8: Else
  loc_12261AF:   If (var_F4 = CLng(4)) Then
  loc_12261B6:     Set var_88 = Me.TopCtrl1
  loc_12261BC:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_12261E1:     If ((CStr(Cancel) = "Edit") And (global_192 <> "Yes")) Then
  loc_12261E4:       Exit Sub
  loc_12261E5:     End If
  loc_12261E9:     Set var_104 = Me.FGrid
  loc_122620D:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_122623A:     Set var_E0 = var_104
  loc_122624C:     Proc_6_63_110B734(Me, var_E0, Me.TxtGrid, 0, 0)
  loc_1226274:     Set var_88 = Me.TxtGrid
  loc_122627A:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_9C, Asc(var_9C))
  loc_1226282:     0 = var_E0.Text
  loc_122629B:     If (Len(var_9C) <= 1) Then
  loc_12262AA:       Set var_88 = Me.TxtGrid
  loc_12262B0:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_9C)
  loc_12262B8:       var_10C = var_E0.Text
  loc_12262C9:       Set var_F8 = Me.TxtGrid
  loc_12262CF:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_104)
  loc_12262D7:       var_104.Text = var_9C
  loc_12262EA:     End If
  loc_12262F6:     Set var_88 = Me.TxtGrid
  loc_12262FC:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0)
  loc_1226316:     Set var_F8 = Me.TxtGrid
  loc_122631C:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_104)
  loc_1226324:     var_104.SelStart = Len(var_E0.Text)
  loc_122633A:   Else
  loc_1226341:     If (var_F4 = CLng(3)) Then
  loc_1226348:       Set var_88 = Me.TopCtrl1
  loc_122634E:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_1226373:       If ((CStr() = "Edit") And (global_192 <> "Yes")) Then
  loc_1226376:         Exit Sub
  loc_1226377:       End If
  loc_1226392:       If (((Cancel >= &H41) And (Cancel <= &H5A)) Or ((Cancel >= &H61) And (Cancel <= &H7A))) Then
  loc_12263A7:         Me.FGrid.Col = CVar(CLng(4))
  loc_12263AF:       End If
  loc_12263ED:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1226402:     Else
  loc_1226409:       If (var_F4 = CLng(9)) Then
  loc_1226410:         Set var_88 = Me.TopCtrl1
  loc_1226416:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_122642F:         If (CStr(Cancel) = "Add") Then
  loc_1226432:           Exit Sub
  loc_1226433:         End If
  loc_1226471:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1226486:       Else
  loc_122648D:         If (var_F4 = CLng(7)) Then
  loc_1226494:           Set var_88 = Me.TopCtrl1
  loc_122649A:           Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_12264BF:           If ((CStr(Cancel) = "Edit") And (global_192 <> "Yes")) Then
  loc_12264C2:             Exit Sub
  loc_12264C3:           End If
  loc_1226501:           Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_1226513:         End If
  loc_1226513:       End If
  loc_1226513:     End If
  loc_1226513:   End If
  loc_1226513: End If
  loc_122651D: If (CLng(Cancel) <> &HD) Then
  loc_1226525:   global_126 = &HFF
  loc_1226528: End If
  loc_1226528: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1004208
  'Data Table: 58908C
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_1004010: Set var_88 = Me.TopCtrl1
  loc_1004016: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_100402F: If (CStr() = "Browse") Then
  loc_1004032:   Exit Sub
  loc_1004033: End If
  loc_1004037: Set var_88 = Me.TopCtrl1
  loc_100403D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1004056: If (CStr() = "Edit") Then
  loc_1004059:   Exit Sub
  loc_100405A: End If
  loc_1004077: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_100407A:   Exit Sub
  loc_100407B: End If
  loc_100408C: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10040AE:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10040E8:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_100410A:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1004120:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1004129:         Set var_110 = Me.FGrid
  loc_1004144:       Else
  loc_1004157:         Me.FGrid.Rows = 1
  loc_100417D:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_1004185:         Set var_110 = Me.FGrid
  loc_10041B2:         Me.FGrid.FixedRows = 1
  loc_10041BA:       End If
  loc_10041BA:     End If
  loc_10041BD:   Else
  loc_10041DE:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_10041EE:   End If
  loc_10041F2:   Set var_88 = Me.FGrid
  loc_1004203: End If
  loc_1004203: Exit Sub
  loc_1004204: Exit Sub
  loc_1004205: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'EE2380
  'Data Table: 58908C
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_EE22E3: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EE22EB: var_C8 = CVar(CLng(&HB)) 'Long
  loc_EE2323: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_EE236A:   Proc_96_0_E6CA28(Me.FGrid, CInt(CLng(Me.FGrid.Row)), Me.lblclr.BackColor)
  loc_EE237D: End If
  loc_EE237D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41660
  'Data Table: 58908C
  Dim var_8C As TextBox
  loc_E41634: Call Proc_30_98_F6E7AC()
  loc_E41644: Set var_88 = Me.TxtGrid
  loc_E4164A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E41652: var_8C.Visible = False
  loc_E4165E: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED4BB8
  'Data Table: 58908C
  loc_ED4B1C: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED4B1F:   Call DGTable_UnknownEvent_9()
  loc_ED4B24: End If
  loc_ED4B40: If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_ED4B43:   Call DGWaiter_UnknownEvent_9()
  loc_ED4B48: End If
  loc_ED4B64: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_ED4B67:   Call DGItem_UnknownEvent_9()
  loc_ED4B6C: End If
  loc_ED4B88: If (CBool(Me.DGNCType.Visible) = &HFF) Then
  loc_ED4B8B:   Call DGNCType_UnknownEvent_9()
  loc_ED4B90: End If
  loc_ED4BAC: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_ED4BAF:   Call DGRest_UnknownEvent_9()
  loc_ED4BB4: End If
  loc_ED4BB4: Exit Sub
End Sub

Private Sub txtDisc_KeyDown(KeyCode As Integer, Shift As Integer) 'E6C12C
  'Data Table: 58908C
  Dim var_88 As Variant
  loc_E6C0DA: If (KeyCode = &HD) Then
  loc_E6C0E1:   Set var_88 = Me.FGrid
  loc_E6C104:   Me.FGrid.Col = CVar(CLng(6))
  loc_E6C112:   global_276 = "Back"
  loc_E6C122:   Me.Timer2.Enabled = True
  loc_E6C12A: End If
  loc_E6C12A: Exit Sub
End Sub

Private Sub txtDisc_LostFocus() 'E4AA94
  'Data Table: 58908C
  loc_E4AA7B: If (Me.FrmeDisc.Visible = &HFF) Then
  loc_E4AA88:   Me.txtDisc.SetFocus
  loc_E4AA90: End If
  loc_E4AA90: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '129AF10
  'Data Table: 58908C
  Dim var_B0 As Variant
  Dim var_B4 As String
  Dim var_BC As TextBox
  Dim var_124 As Double
  Dim var_110 As String
  Dim var_114 As String
  Dim unk_5890AB As Connection15
  Dim var_CC As Variant
  Dim var_12C As Variant
  Dim Me As Recordset15
  Dim var_130 As Variant
  Dim var_138 As Field20
  Dim var_140 As TextBox
  loc_129A944: On Error Goto loc_129AF0A
  loc_129A956: Me.FGrid2.Visible = False
  loc_129A96A: Me.LblPendingKotItem.Visible = False
  loc_129A97B: Set var_B0 = Me.CmPendingKot
  loc_129A981: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_129A9AC: Call Proc_30_97_1010D70(Proc_5_1_100EC1C("ADD", Me))
  loc_129A9B7: Call Proc_30_96_FFCD80(global_88)
  loc_129A9C1: var_B4 = CStr(MemVar_1F950EC)
  loc_129A9CF: Set var_B0 = Me.Txt
  loc_129A9D5: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_BC)
  loc_129A9DD: var_BC.Text = var_B4
  loc_129A9F2: Call Proc_30_100_11870D8(MemVar_1F95044)
  loc_129AA05: Set var_B0 = Me.Txt
  loc_129AA0B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_BC)
  loc_129AA13: var_BC.Text = var_B4
  loc_129AA62: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_BC, CStr(Format(Time, "hh:nn")))
  loc_129AA6A: var_BC.Text = 1
  loc_129AA85: var_CC = Time
  loc_129AAE0: var_8C = Replace(CStr(Left(CVar(CStr(Format(var_CC, "HH:MM"))), 5)), ":", ".", 1, -1, 0)
  loc_129AAFD: var_124 = Val(var_8C)
  loc_129AB1B: var_110 = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND "
  loc_129AB37: unk_5890AB.Execute var_110 & CStr(var_124) & " BETWEEN FromTime AND ToTime", var_CC, -1
  loc_129AB42: Set var_88 = Me.Txt
  loc_129AB6F: If (Me.Recordset15.RecordCount > 0) Then
  loc_129AB84:   var_B0 = Me.Recordset15.Fields
  loc_129AB8C:   var_BC = var_B0.Item("Name")
  loc_129AB9D:   var_B4 = Proc_6_38_E69628(CVar(var_BC), var_B0, var_124, 1)
  loc_129ABAA:   Me.lblSession.Caption = var_B4
  loc_129ABBC: End If
  loc_129ABCA: Set var_B0 = Me.Txt
  loc_129ABD0: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_BC, var_B6)
  loc_129ABD8: 1 = var_BC.Visible
  loc_129ABEA: If (var_B6 = &HFF) Then
  loc_129ABF8:   If (global_188 = "Auto") Then
  loc_129ABFB:     Call Command1_Click()
  loc_129AC0E:     Set var_B0 = Me.Txt
  loc_129AC14:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_BC, var_B4)
  loc_129AC1C:     1 = var_BC.Tag
  loc_129AC24:     var_CC = CVar(var_B4) 'String
  loc_129AC48:     If (Trim(var_CC) = vbNullString) Then
  loc_129AC60:       var_B4 = "INI"
  loc_129AC6E:       Call Proc_30_97_1010D70(Proc_5_1_100EC1C(var_B4, Me), global_88)
  loc_129AC90:       If (Me.RecordCount > 0) Then
  loc_129AC93:         Call Proc_30_94_179FC48(var_B4)
  loc_129AC98:       End If
  loc_129AC98:       Exit Sub
  loc_129AC99:     End If
  loc_129AC99:   End If
  loc_129ACA7:   Set var_B0 = Me.Txt
  loc_129ACAD:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_BC)
  loc_129ACB5:   var_B6 = var_BC.Visible
  loc_129ACCE:   Set var_12C = Me.Txt
  loc_129ACD4:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_130)
  loc_129ACF3:   If ((var_B6 = &HFF) And (var_130.Enabled = &HFF)) Then
  loc_129AD01:     Set var_B0 = Me.Txt
  loc_129AD07:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4))
  loc_129AD0F:     var_BC.SetFocus
  loc_129AD1E:   Else
  loc_129AD22:     Set var_B0 = Me.FGrid
  loc_129AD33:   End If
  loc_129AD36: Else
  loc_129AD44:   Set var_B0 = Me.Txt
  loc_129AD4A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_BC, var_B6)
  loc_129AD52:   FGrid.DispID_8001 = var_BC.Visible
  loc_129AD64:   If (var_B6 = &HFF) Then
  loc_129AD72:     Set var_B0 = Me.Txt
  loc_129AD78:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_BC)
  loc_129AD80:     var_BC.SetFocus
  loc_129AD8F:   Else
  loc_129AD93:     Set var_B0 = Me.FGrid
  loc_129ADA4:   End If
  loc_129ADA4: End If
  loc_129ADB8: If (RsKOTEntry.OpenMode = 1) Then
  loc_129ADCC:   Set var_B0 = Me.Txt
  loc_129ADD2:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_BC, global_256)
  loc_129ADDA:   var_BC.Text = FGrid.DispID_8001
  loc_129ADF7:   Set var_B0 = Me.Txt
  loc_129ADFD:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_BC)
  loc_129AE05:   var_BC.Text = global_264
  loc_129AE11: End If
  loc_129AE3E: var_114 = "SELECT ISNULL(MAX(GUARATT),1) FROM KOT WHERE RestCode='" & LocalRestCode & "' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' AND ROOMNO='"
  loc_129AE4F: Set var_B0 = Me.Txt
  loc_129AE55: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_BC, var_110, var_114, var_CC, -1)
  loc_129AE76: unk_5890AB.Execute var_130 & var_110 & "'", 0, var_138
  loc_129AE86:  = var_130.Item(var_BC)
  loc_129AE8E:  = var_138.Value
  loc_129AEA5: Set var_13C = Me.Txt
  loc_129AEAB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HD), var_140)
  loc_129AEB3: var_140.Text = CStr(var_BC.Text.Fields)
  loc_129AEEC: Me.LblUser.Caption = vbNullString
  loc_129AF01: Me.LblLDt.Caption = vbNullString
  loc_129AF09: Exit Sub
  loc_129AF0A: ' Referenced from: 129A944
  loc_129AF0A: Proc_6_60_E63754()
  loc_129AF0F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA07D8
  'Data Table: 58908C
  loc_EA0760: On Error Goto loc_EA07D1
  loc_EA079A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA07C0:   Call Proc_30_97_1010D70(Proc_5_1_100EC1C("INI", Me))
  loc_EA07CB:   Call Proc_30_94_179FC48(global_88)
  loc_EA07D0: End If
  loc_EA07D0: Exit Sub
  loc_EA07D1: ' Referenced from: EA0760
  loc_EA07D1: Proc_6_60_E63754()
  loc_EA07D6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '14AB04C
  'Data Table: 58908C
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_110 As Fields15
  Dim var_154 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_174 As Variant
  Dim var_198 As String
  Dim unk_5890AB As Connection15
  Dim var_1BC As Recordset15
  Dim var_1C0 As Fields15
  Dim var_1D4 As Variant
  Dim var_98 As Recordset15
  Dim var_208 As String
  Dim var_20C As String
  Dim var_220 As String
  Dim var_164 As Variant
  Dim var_124 As TextBox
  Dim var_AA4 As Double
  Dim var_2D4 As TextBox
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_42C As Variant
  Dim var_44C As Variant
  Dim var_AB4 As Double
  Dim var_748 As TextBox
  Dim var_86C As Variant
  Dim var_88C As Variant
  Dim var_AC4 As Double
  Dim var_ACC As Double
  Dim var_1B8 As Variant
  Dim var_1E4 As Variant
  Dim var_2AC As Variant
  Dim var_41C As Variant
  Dim var_78C As Variant
  Dim var_8D4 As Variant
  Dim var_A04 As Variant
  loc_14AA51C: On Error Goto loc_14AAFFB
  loc_14AA52D: If (Proc_183_56_FE8B08(global_88) = &HFF) Then
  loc_14AA530:   Exit Sub
  loc_14AA531: End If
  loc_14AA56D: var_110 = Me.Fields
  loc_14AA575: var_124 = var_110.Item("SearchCode")
  loc_14AA57A: var_154 = 1
  loc_14AA587: var_134 = CVar(var_124) 'Address
  loc_14AA58E: var_164 = Mid(var_134, 4, var_154)
  loc_14AA599: var_1D0 = 0
  loc_14AA5C7: var_174 = "Select count(*) from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & var_164 
  loc_14AA5DE: unk_5890AB.Execute CStr(var_174 & "'<>'N'"), var_1B8, -1
  loc_14AA5E6: var_1BC = var_1BC.Fields
  loc_14AA5EE: var_1D0 = var_1C0.Item(var_1C0)
  loc_14AA5F6: var_1D4 = var_1D4.Value
  loc_14AA62F: If (var_1E4 > 0) Then
  loc_14AA688:   unk_5890AB.Execute CStr("Select VNo from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_14AA6DF:   var_10C = "**** Deletion Not Allowed ****"
  loc_14AA6FF:   var_20C = "Bill Allready Prepared For this KOT" & vbCrLf & vbCrLf & "Ref. No. "
  loc_14AA720:   var_220 = var_20C & CStr(var_110.Fields.Item(0).Value) & vbCrLf & vbCrLf & vbCrLf
  loc_14AA72A:   MsgBox(CVar(var_220 & vbCrLf), &H10, var_10C, var_134, var_154)
  loc_14AA758:   Exit Sub
  loc_14AA759: End If
  loc_14AA790: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_10C, var_134) = 6) Then
  loc_14AA7BD:   var_9C = InputBox("Please Specify, Reason For Delete ?", "Reason", var_10C, var_134, var_154, var_164, var_174)
  loc_14AA7DA:   unk_5890AB.BeginTrans var_224
  loc_14AA7F0:   var_94 = Me.Bookmark 'Variant
  loc_14AA832:   var_A4 = CStr(IIf((Me.ChkNCKOT.Value = 1), "Y", "N"))
  loc_14AA868:   For var_22A = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_22A 'Integer
  loc_14AA87A:     var_FC = CVar(CLng(&HA)) 'Long
  loc_14AA894:     var_EC = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14AA8C1:     Set var_BC = Me.FGrid
  loc_14AA8D2:     var_198 = CStr(var_BC.TextMatrix))
  loc_14AA900:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_198)) <> CDbl(0))) Then
  loc_14AA911:       Set var_A8 = Me.Txt
  loc_14AA917:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_BC, var_198, CVar(CLng(var_9E)), (Trim(var_EC) <> vbNullString))
  loc_14AA91F:       var_FC = var_BC.Text
  loc_14AA932:       Set var_110 = Me.Txt
  loc_14AA938:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_20C, CVar(CLng(var_9E)))
  loc_14AA940:       1 = var_124.Text
  loc_14AA94D:       var_AA4 = Val(var_20C)
  loc_14AA95B:       Set var_1BC = Me.Txt
  loc_14AA961:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_1C0, var_AA4)
  loc_14AA970:       Proc_6_7_F26918(var_EC, CVar(var_1C0))
  loc_14AA995:       Set var_2D0 = Me.Txt
  loc_14AA99B:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_2D4, var_220)
  loc_14AA9A3:       var_110 = var_2D4.Tag
  loc_14AA9AC:       var_324 = CVar(CLng(var_9E)) 'Long
  loc_14AA9B4:       var_344 = CVar(CLng(0)) 'Long
  loc_14AAA05:       var_42C = CVar(CLng(var_9E)) 'Long
  loc_14AAA0D:       var_44C = CVar(CLng(&HA)) 'Long
  loc_14AAA56:       var_AB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AAB12:       var_710 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Yes"), "Y", "N"))
  loc_14AAB25:       Set var_744 = Me.Txt
  loc_14AAB2B:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(5), var_748, var_74C, CVar(CLng(9)), CVar(CLng(var_9E)), CVar(CLng(9)), CVar(CLng(var_9E)))
  loc_14AAB46:       Proc_6_7_F26918(var_7EC, Now, CVar(CLng(7)), CVar(CLng(var_9E)))
  loc_14AAB4F:       var_86C = CVar(CLng(var_9E)) 'Long
  loc_14AAB57:       var_88C = CVar(CLng(8)) 'Long
  loc_14AABAA:       var_AC4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AABDB:       var_ACC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AAC02:       var_208 = "Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,DELFLAG,LogSite_Code) Values ('" & var_198
  loc_14AAC4B:       var_1B8 = CVar(var_208 & "'," & CStr(var_AA4) & ",") & var_EC & ",'" & CVar(global_152) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_14AACA0:       var_2AC = var_1B8 & "','" & CVar(MemVar_1F95070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_14AACE0:       var_41C = var_2AC & "','" & CVar(var_220) & "','Y'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & Format(Time, "hh:nn") & "','" 
  loc_14AAD2B:       var_78C = var_41C & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_748.Tag) & ",'" & var_710 & "','" & CVar(var_74C) & "','" 
  loc_14AAD6C:       var_8D4 = var_78C & CVar(MemVar_1F950C8) & "'," & var_7EC & ",'A','" & CVar(var_A4) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_14AAD94:       var_A04 = CVar(Proc_6_38_E69628(var_9C, var_ACC, CVar(CLng(8)), CVar(CLng(var_9E)), var_AC4, CVar(CLng(7)), CVar(CLng(var_9E)))) 'String
  loc_14AADC1:       unk_5890AB.Execute CStr(var_8D4 & "," & CVar((var_AC4 * var_ACC)) & ",'" & var_A04 & "','D','" & CVar(MemVar_1F95078) & "')"), var_A98, -1
  loc_14AAEA5:     End If
  loc_14AAEA8:   Next var_22A 'Integer
  loc_14AAEC1:   var_198 = "Update Kot Set DelFlag='Y',U_Name1='" & MemVar_1F950C8
  loc_14AAEC8:   var_10C = CVar(var_198 & "',U_EntDt1=") 'String
  loc_14AAED9:   Proc_6_7_F26918(var_EC, Date, var_10C)
  loc_14AAEE1:   var_134 = var_1B8 & var_EC 
  loc_14AAF32:   unk_5890AB.Execute CStr(var_134 & ",U_AE1='E' Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), -1, var_110
  loc_14AAF62:   unk_5890AB.CommitTrans
  loc_14AAF72:   Me.Requery -1
  loc_14AAF92:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_14AAF9F:     Me.Bookmark = var_94
  loc_14AAFA7:   Else
  loc_14AAFBB:     If (Me.EOF = 0) Then
  loc_14AAFC4:       Me.MoveLast
  loc_14AAFC9:     End If
  loc_14AAFC9:   End If
  loc_14AAFC9:   Call Proc_30_94_179FC48()
  loc_14AAFEA:   Proc_5_0_1107AD0(&HFF, Me)
  loc_14AAFF2: End If
  loc_14AAFF7: Set var_98 = Nothing
  loc_14AAFFA: Exit Sub
  loc_14AAFFB: ' Referenced from: 14AA51C
  loc_14AB001: unk_5890AB.RollbackTrans
  loc_14AB00E: Set var_A8 = Err()
  loc_14AB014: Call 0.Method_arg_2C (var_198, global_88)
  loc_14AB035: MsgBox(CVar(var_198), &H10, " Deletion Message", var_10C, var_134)
  loc_14AB048: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1246CA0
  'Data Table: 58908C
  Dim var_AC As Variant
  Dim var_12C As Integer
  Dim Me As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim unk_5890AB As Connection15
  Dim var_118 As Variant
  Dim var_11C As Fields15
  Dim var_130 As Field20
  Dim var_140 As Integer
  Dim var_114 As Variant
  Dim var_180 As Variant
  Dim var_88 As Recordset15
  loc_124679C: On Error Goto loc_1246C97
  loc_12467AE: Me.FGrid2.Visible = False
  loc_12467C2: Me.LblPendingKotItem.Visible = False
  loc_12467D3: Set var_AC = Me.CmPendingKot
  loc_12467D9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_12467EF: If (Proc_183_55_FE8490(global_88) = &HFF) Then
  loc_12467F2:   Exit Sub
  loc_12467F3: End If
  loc_12467F9: var_12C = 0
  loc_1246858: unk_5890AB.Execute CStr("Select count(*) from KOT Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And IsNull(ContraDocId,'')<>''"), var_114, -1
  loc_1246860: var_118 = var_118.Fields
  loc_1246868: var_12C = var_11C.Item(var_11C)
  loc_1246870: var_130 = var_130.Value
  loc_124689D: If (var_140 > 0) Then
  loc_12468DC:   var_118 = Me.Fields
  loc_12468E9:   var_140 = 1
  loc_12468F6:   var_114 = CVar(var_118.Item("SearchCode")) 'Address
  loc_1246930:   var_180 = "Select VNo from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & Mid(var_114, 4, var_140) & "'<>'N'" 
  loc_124693E:   unk_5890AB.Execute CStr(var_180), var_1A0, -1
  loc_1246949:   Set var_88 = var_130
  loc_1246983:   If (var_88.RecordCount > 0) Then
  loc_12469A0:     var_B0 = var_88.Fields.Item(0)
  loc_1246A00:     var_D0 = CVar("Bill Allready Prepared For this KOT" & vbCrLf & vbCrLf & "Ref. No. " & CStr(var_B0.Value) & vbCrLf & vbCrLf & vbCrLf & vbCrLf) 'String
  loc_1246A03:     MsgBox(var_D0, &H10, "**** Modification Not Allowed ****", var_114, var_140)
  loc_1246A31:     Exit Sub
  loc_1246A32:   End If
  loc_1246A32: End If
  loc_1246A55: Call Proc_30_97_1010D70(Proc_5_1_100EC1C("EDIT", Me, global_88), var_130)
  loc_1246A6D: Me.LblUser.Caption = vbNullString
  loc_1246A82: Me.LblLDt.Caption = vbNullString
  loc_1246A97: Set var_AC = Me.Txt
  loc_1246A9D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B0)
  loc_1246AA5: var_B0.Enabled = False
  loc_1246ABD: Me.ChkNCKOT.Enabled = False
  loc_1246AD0: Set var_AC = Me.Txt
  loc_1246AD6: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_B0)
  loc_1246ADE: var_B0.SetFocus
  loc_1246B01: If (Me.RecordCount > 0) Then
  loc_1246B5A:   unk_5890AB.Execute CStr("Select K.U_Name,K.U_AE,K.U_EntDt,K.Pending From KOT K Where K.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_114, -1
  loc_1246B65:   Set var_88 = var_118
  loc_1246B82:   Set var_1C8 = var_88 
  loc_1246BB7:   global_132 = CStr(var_88.Fields.Item("U_Name").Value)
  loc_1246BF9:   global_144 = CStr(var_88.Fields.Item("U_AE").Value)
  loc_1246C39:   global_136 = CDate(var_88.Fields.Item("U_EntDt").Value)
  loc_1246C77:   global_148 = CStr(var_88.Fields.Item("Pending").Value)
  loc_1246C8A:   Set var_1C8 = Nothing 
  loc_1246C8E: End If
  loc_1246C93: Set var_88 = Nothing
  loc_1246C96: Exit Sub
  loc_1246C97: ' Referenced from: 124679C
  loc_1246C97: Proc_6_60_E63754(global_136, var_118)
  loc_1246C9C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17854
  'Data Table: 58908C
  loc_E17849: Me.Global.Unload Me
  loc_E17851: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F '1000180
  'Data Table: 58908C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_D8 As Integer
  Dim unk_5890AB As Connection15
  Dim var_118 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As Field20
  Dim var_140 As Variant
  Dim var_170 As Variant
  Dim var_1B0 As Integer
  Dim var_174 As String
  Dim var_19C As Recordset15
  Dim var_1A0 As Fields15
  Dim var_1B4 As Field20
  loc_FFFFC4: On Error Goto loc_100017A
  loc_FFFFDE: If (Me.RecordCount <= 0) Then
  loc_FFFFE7:   var_B8 = "Information"
  loc_FFFFFC:   var_A8 = "No Records To Search."
  loc_1000002:   MsgBox(var_A8, &H40, var_B8, var_E8, var_108)
  loc_1000012:   Exit Sub
  loc_1000013: End If
  loc_100001A: var_10C = "Select Distinct K.DocId as SearchCode,K.VNo as [No],CAST (K.VDate AS VARCHAR(11)) as [Date],K.VTime as [Time],K.ROOMNO AS TableNo,H.Name as Restaurant,W.Name as Waiter  From (((KOT K Inner Join Voucher_Type V On (K.VType= V.V_Type And K.Logsite_Code=V.LogSite_Code)) Inner Join Depart H On K.RESTCODE= H.Code) Inner Join Waiter W On W.COde=K.Waiter) WHERE (K.LOGSITE_CODE='" & MemVar_1F95078
  loc_100002F: Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_1000037: var_E8 = CVar(var_10C & "' or K.LOGSITE_CODE='HO') and (DelFlag NOT IN ('Y') OR DelFlag IS NULL) And (K.VDate=") & var_A8 
  loc_1000046: var_D8 = 0
  loc_1000076: unk_5890AB.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_108, -1
  loc_100007E: var_118 = var_118.Fields
  loc_1000086: var_D8 = var_11C.Item(var_11C)
  loc_100008E: var_120 = var_120.Value
  loc_1000096: var_140 = (var_130 + var_130)
  loc_10000A3: var_170 = ") AND (K.VType='K" & var_140 & "' OR K.VType='" 
  loc_10000AD: var_1B0 = 0
  loc_10000CD: var_174 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_10000DD: unk_5890AB.Execute var_174 & "'", var_198, -1
  loc_10000E5: var_19C = var_19C.Fields
  loc_10000ED: var_1B0 = var_1A0.Item(var_1A0)
  loc_10000F5: var_1B4 = var_1B4.Value
  loc_100014F: Proc_6_126_F1C850("800,1000,800,1000,2000,2000", CStr(var_1C4 & var_1C4 & "') Order by Docid"))
  loc_100015D: MemVar_1F95120 = Me
  loc_1000174: Call 0.Method_arg_2B0 (1, var_B8)
  loc_1000179: Exit Sub
  loc_100017A: ' Referenced from: FFFFC4
  loc_100017A: Proc_6_60_E63754(var_170)
  loc_100017F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31F28
  'Data Table: 58908C
  loc_E31F18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31F20: Call Proc_30_94_179FC48(global_88)
  loc_E31F25: Exit Sub
  loc_E31F26: Result 1 End Sub 'Currency
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E31F88
  'Data Table: 58908C
  loc_E31F78: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31F80: Call Proc_30_94_179FC48(global_88)
  loc_E31F85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E31FE8
  'Data Table: 58908C
  loc_E31FD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31FE0: Call Proc_30_94_179FC48(global_88)
  loc_E31FE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E32048
  'Data Table: 58908C
  loc_E32038: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32040: Call Proc_30_94_179FC48(global_88)
  loc_E32045: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E6D82C
  'Data Table: 58908C
  Dim Me As Recordset15
  loc_E6D7E2: If (MemVar_1F950B8 > 0) Then
  loc_E6D817:   Proc_260_21_1E6CEB4(CStr(Me.Fields.Item("SearchCode").Value))
  loc_E6D829: End If
  loc_E6D829: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E59584
  'Data Table: 58908C
  Dim Me As Recordset15
  loc_E5954B: Me.Requery -1
  loc_E5955B: Me.Requery -1
  loc_E5956B: Me.Requery -1
  loc_E5957B: Me.Requery -1
  loc_E59580: Exit Sub
  loc_E59581: Set var_F4 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1B2BBC4
  'Data Table: 58908C
  Dim var_D0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_C0 As Variant
  Dim var_148 As String
  Dim unk_5890AB As Connection15
  Dim var_BC As Variant
  Dim var_120 As Variant
  Dim var_AC As Variant
  Dim var_110 As Variant
  Dim var_100 As Variant
  Dim MemVar_1F950EC As Double
  Dim var_1B8 As Variant
  Dim var_1BC As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_88 As Variant
  Dim var_1B4 As Variant
  Dim var_1F8 As Variant
  Dim var_20C As Field20
  Dim var_250 As Variant
  Dim var_264 As Variant
  Dim var_2F8 As Variant
  Dim var_2E8 As Variant
  Dim var_2FC As Variant
  Dim var_350 As Variant
  Dim var_3A8 As Variant
  Dim var_398 As Variant
  Dim var_400 As Variant
  Dim var_3F0 As Variant
  Dim var_404 As Variant
  Dim var_448 As Variant
  Dim var_45C As Variant
  Dim var_568 As Fields15
  Dim var_57C As Variant
  Dim var_5C0 As Fields15
  Dim var_5D4 As Field20
  Dim var_62C As Variant
  Dim var_670 As Variant
  Dim var_758 As Variant
  Dim var_76C As Variant
  Dim var_7C4 As Field20
  Dim var_808 As Variant
  Dim var_81C As Variant
  Dim var_860 As Variant
  Dim var_874 As Variant
  Dim var_8B8 As Fields15
  Dim var_8CC As Variant
  Dim var_950 As Fields15
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1E4 As Variant
  Dim var_22C As Variant
  Dim var_2C4 As Variant
  Dim var_2D4 As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_374 As Variant
  Dim var_434 As Variant
  Dim var_47C As Variant
  Dim var_48C As Variant
  Dim var_49C As Variant
  Dim var_4F4 As Variant
  Dim var_544 As Variant
  Dim var_64C As Variant
  Dim var_66C As Variant
  Dim var_6A4 As Variant
  Dim var_734 As Variant
  Dim var_754 As Variant
  Dim var_78C As Variant
  Dim var_804 As Variant
  Dim var_84C As Variant
  Dim var_8EC As Variant
  Dim var_8FC As Variant
  Dim var_90C As Variant
  Dim var_9FC As Variant
  Dim var_A44 As Variant
  Dim var_A54 As Variant
  Dim var_164 As Double
  Dim var_1C4 As TextBox
  Dim var_B04 As Double
  Dim var_B0C As Double
  Dim var_AD0 As String
  Dim var_B14 As Double
  Dim var_AD4 As String
  Dim var_AD8 As String
  Dim var_B1C As Double
  Dim var_A90 As String
  Dim var_A94 As String
  Dim var_A98 As String
  Dim var_A9C As String
  Dim var_AAC As String
  Dim var_AB4 As String
  Dim var_ABC As String
  Dim var_140 As Variant
  Dim var_1D4 As Variant
  Dim var_21C As Variant
  Dim var_274 As Variant
  Dim var_3BC As Variant
  Dim var_414 As Variant
  Dim var_46C As Variant
  Dim var_4C4 As Variant
  Dim var_63C As Variant
  Dim var_AEC As String
  Dim var_58C As Variant
  Dim var_AB8 As String
  Dim var_112C As Double
  Dim var_C40 As Variant
  Dim var_1138 As Double
  Dim var_D70 As Variant
  Dim var_D90 As Variant
  Dim var_E10 As Variant
  Dim var_E30 As Variant
  Dim var_E50 As Variant
  Dim var_1140 As Double
  Dim var_EA0 As Variant
  Dim var_EC0 As Variant
  Dim var_EE0 As Variant
  Dim var_F70 As Variant
  Dim var_1040 As Variant
  Dim var_1148 As Double
  Dim var_1150 As Double
  Dim var_714 As Variant
  Dim var_984 As Variant
  Dim var_C90 As Variant
  Dim var_A84 As Variant
  Dim var_CB0 As Variant
  Dim var_D50 As Variant
  Dim var_DE0 As Variant
  Dim var_E70 As Variant
  Dim var_F80 As Variant
  Dim var_FF0 As Variant
  Dim var_1050 As Variant
  Dim var_1060 As Variant
  Dim var_C70 As Variant
  Dim var_DA0 As Variant
  Dim var_DD0 As Variant
  Dim var_AA4 As String
  Dim var_A6 As Integer
  loc_1B27530: On Error Goto loc_1B2BBA7
  loc_1B2753E: Set var_B4 = Me.Txt
  loc_1B27544: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1B2756D: If (Proc_6_27_EA61EC(var_B8, "Voucher Date") = 0) Then
  loc_1B27570:   Exit Sub
  loc_1B27571: End If
  loc_1B2757C: Set var_B4 = Me.Txt
  loc_1B27582: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8)
  loc_1B275AB: If (Proc_6_27_EA61EC(var_B8, "Voucher No") = 0) Then
  loc_1B275AE:   Exit Sub
  loc_1B275AF: End If
  loc_1B275BA: If (LocalRestCode = vbNullString) Then
  loc_1B275D6:   MsgBox("Open RestaurantChange Master", 0, var_100, var_120, var_140)
  loc_1B275E6:   Exit Sub
  loc_1B275E7: End If
  loc_1B275F2: Set var_B4 = Me.Txt
  loc_1B275F8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B8)
  loc_1B27621: If (Proc_6_27_EA61EC(var_B8, "KOT Time") = 0) Then
  loc_1B27624:   Exit Sub
  loc_1B27625: End If
  loc_1B27630: Set var_B4 = Me.Txt
  loc_1B27636: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_B8)
  loc_1B2765F: If (Proc_6_27_EA61EC(var_B8, "WAITER") = 0) Then
  loc_1B27662:   Exit Sub
  loc_1B27663: End If
  loc_1B2766E: Set var_B4 = Me.Txt
  loc_1B27674: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B8)
  loc_1B2769D: If (Proc_6_27_EA61EC(var_B8, "TABLE CODE") = 0) Then
  loc_1B276A0:   Exit Sub
  loc_1B276A1: End If
  loc_1B276BC: If (Me.ChkNCKOT.Value = 1) Then
  loc_1B276CA:   Set var_B4 = Me.Txt
  loc_1B276D0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B8)
  loc_1B276F9:   If (Proc_6_27_EA61EC(var_B8, "NC Type") = 0) Then
  loc_1B276FC:     Exit Sub
  loc_1B276FD:   End If
  loc_1B276FD: End If
  loc_1B2770B: Set var_B4 = Me.Txt
  loc_1B27711: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B8)
  loc_1B27727: var_100 = Trim(CVar(var_B8.Tag))
  loc_1B27745: If (var_100 = vbNullString) Then
  loc_1B2775B:   var_E0 = "TABLE CODE is required field."
  loc_1B27761:   MsgBox(var_E0, &H10, var_100, var_120, var_140)
  loc_1B2777F:   Set var_B4 = Me.Txt
  loc_1B27785:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B8)
  loc_1B2778D:   var_142 = var_B8.Enabled
  loc_1B2779F:   If (var_142 = &HFF) Then
  loc_1B277AD:     Set var_B4 = Me.Txt
  loc_1B277B3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B8)
  loc_1B277BB:     var_B8.SetFocus
  loc_1B277C7:   End If
  loc_1B277C7:   Exit Sub
  loc_1B277C8: End If
  loc_1B277D3: If (global_160 = "RO") Then
  loc_1B277DC:   var_F0 = 0
  loc_1B2780C:   unk_5890AB.Execute "Select Max(mFolioNoDocId) From GuestFolio Where DocId='" & global_180 & "'", var_E0, -1
  loc_1B27814:   var_B4 = var_B4.Fields
  loc_1B2781C:   var_F0 = var_B8.Item(var_B8)
  loc_1B27824:   var_BC = var_BC.Value
  loc_1B27831:   var_120 = CVar(Proc_6_38_E69628(var_100, var_100)) 'String
  loc_1B27837:   var_140 = Trim(var_120)
  loc_1B27846:   global_176 = CStr(var_140)
  loc_1B27872:   If (global_176 <> vbNullString) Then
  loc_1B2788C:     var_C0 = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & global_176
  loc_1B2789C:     unk_5890AB.Execute var_C0 & "'", var_E0, -1
  loc_1B278A7:     Set var_AC = var_B4
  loc_1B278BA:   Else
  loc_1B278D1:     var_C0 = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & global_180
  loc_1B278E1:     unk_5890AB.Execute var_C0 & "'", var_E0, -1
  loc_1B278EC:     Set var_AC = var_B4
  loc_1B278FC:   End If
  loc_1B27916:   var_B8 = var_AC.Fields.Item(0)
  loc_1B27938:   If (var_B8.Value > 0) Then
  loc_1B27954:     MsgBox("Guest Room Bill Already printed for this Room", &H10, var_100, var_120, var_140)
  loc_1B27964:     Exit Sub
  loc_1B27965:   End If
  loc_1B27965: End If
  loc_1B27973: Set var_B4 = Me.Txt
  loc_1B27979: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_B8, var_C0)
  loc_1B27981: var_B4 = var_B8.Tag
  loc_1B2798F: var_100 = Trim(CVar(var_C0))
  loc_1B279AD: If (var_100 = vbNullString) Then
  loc_1B279C9:   MsgBox("Steward Name is required field.", &H10, var_100, var_120, var_140)
  loc_1B279E7:   Set var_B4 = Me.Txt
  loc_1B279ED:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_B8, var_142)
  loc_1B279F5:   var_B4 = var_B8.Enabled
  loc_1B27A07:   If (var_142 = &HFF) Then
  loc_1B27A15:     Set var_B4 = Me.Txt
  loc_1B27A1B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_B8)
  loc_1B27A23:     var_B8.SetFocus
  loc_1B27A2F:   End If
  loc_1B27A2F:   Exit Sub
  loc_1B27A30: End If
  loc_1B27A30: var_D0 = 1
  loc_1B27A39: var_110 = 1
  loc_1B27A57: var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B27A5D: var_120 = Trim(var_100)
  loc_1B27A79: If (var_120 = vbNullString) Then
  loc_1B27A95:   MsgBox("Fill Item Name ", 0, var_100, var_120, var_140)
  loc_1B27AB8:   Me.FGrid.Row = 1
  loc_1B27AC4:   Set var_B4 = Me.FGrid
  loc_1B27AE8:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1B27AF0:   Exit Sub
  loc_1B27AF1: End If
  loc_1B27AF1: var_D0 = 1
  loc_1B27AFD: var_110 = CVar(CLng(4)) 'Long
  loc_1B27B17: var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B27B1D: var_120 = Trim(var_100)
  loc_1B27B39: If (var_120 = vbNullString) Then
  loc_1B27B55:   MsgBox("Item Detail Required ", 0, var_100, var_120, var_140)
  loc_1B27B78:   Me.FGrid.Row = 1
  loc_1B27B84:   Set var_B4 = Me.FGrid
  loc_1B27B99:   var_D0 = CVar(CLng("14737632")) 'Long
  loc_1B27BA8:   Me.FGrid.CellBackColor = var_D0
  loc_1B27BB0:   Exit Sub
  loc_1B27BB1: End If
  loc_1B27BB4: Call Proc_30_95_1081CD0(var_142, FGrid.DispID_8001, var_110, var_D0)
  loc_1B27BBF: If (var_142 = 0) Then
  loc_1B27BC2:   Exit Sub
  loc_1B27BC3: End If
  loc_1B27BCE: Set var_B4 = Me.TxtGrid
  loc_1B27BD4: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_B8, 0, FGrid.DispID_8001)
  loc_1B27BDC: var_B8.Visible = var_110
  loc_1B27BE8: Call Proc_30_98_F6E7AC(var_D0)
  loc_1B27BFB: Set var_B4 = Me.Txt
  loc_1B27C01: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_1B27C29: If (Proc_6_91_EF38D0(CDate(var_B8.Text)) = 0) Then
  loc_1B27C37:   Set var_B4 = Me.Txt
  loc_1B27C3D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_1B27C45:   var_B8.SetFocus
  loc_1B27C51:   Exit Sub
  loc_1B27C52: End If
  loc_1B27C87: var_120 = IIf((Me.ChkNCKOT.Value = 1), "Y", "N")
  loc_1B27C90: var_9C = CStr(var_120)
  loc_1B27CA5: Set var_B4 = Me.TopCtrl1
  loc_1B27CAB: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_B8)
  loc_1B27CC4: If (CStr() = "Add") Then
  loc_1B27CE2:   If (Me.ChkNCKOT.Value = 1) Then
  loc_1B27CF9:     var_100 = "Reason"
  loc_1B27D4E:     If (Trim(InputBox("Please Specify, Reason of Editing ?", var_100, var_120, var_140, var_174, var_194, var_1B4)) = vbNullString) Then
  loc_1B27D64:       var_E0 = "You must Enter a Valid Reason of Editing"
  loc_1B27D6A:       MsgBox(var_E0, 0, var_100, var_120, var_140)
  loc_1B27D7A:       Exit Sub
  loc_1B27D7B:     End If
  loc_1B27D7B:   End If
  loc_1B27D81:   var_F0 = 0
  loc_1B27D9E:   var_C0 = "Select NCUR from enviro where LogSite_code='" & MemVar_1F95078
  loc_1B27DAE:   unk_5890AB.Execute var_C0 & "'", var_E0, -1
  loc_1B27DB6:   var_B4 = var_B4.Fields
  loc_1B27DBE:   var_F0 = var_B8.Item(var_B8)
  loc_1B27DC6:   var_BC = var_BC.Value
  loc_1B27DD0:   MemVar_1F950EC = CDate(var_100)
  loc_1B27E17:   Set var_B4 = Me.Txt
  loc_1B27E1D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, "Select Count(*) From KOT Where DocID='", var_E0, -1, var_BC)
  loc_1B27E3E:   unk_5890AB.Execute 0 & var_C0 & "'", var_1BC, var_100
  loc_1B27E46:   MemVar_1F950EC = var_BC.Fields
  loc_1B27E4E:    = var_B8.Text.Item(var_100)
  loc_1B27E56:    = var_1BC.Value
  loc_1B27E83:   If (var_100 > 0) Then
  loc_1B27E8C:     Call Proc_30_100_11870D8(MemVar_1F95044)
  loc_1B27E9F:     Set var_B4 = Me.Txt
  loc_1B27EA5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8)
  loc_1B27EAD:     var_B8.Text = var_C0
  loc_1B27EBC:   End If
  loc_1B27EBF: Else
  loc_1B27ED3:   var_100 = "Reason"
  loc_1B27EEF:   global_212 = InputBox("Please Specify, Reason of Editing ?", var_100, var_120, var_140, var_174, var_194, var_1B4)
  loc_1B27F28:   If (Trim(global_212) = vbNullString) Then
  loc_1B27F44:     MsgBox("You must Enter a Valid Reason of Editing", 0, var_100, var_120, var_140)
  loc_1B27F54:     Exit Sub
  loc_1B27F55:   End If
  loc_1B27F89:   global_108 = CStr(Me.Fields.Item("DocID").Value)
  loc_1B27F9A: End If
  loc_1B27F9C: var_8A = &HFF
  loc_1B27FA8: unk_5890AB.BeginTrans var_1C0
  loc_1B27FB1: Set var_B4 = Me.TopCtrl1
  loc_1B27FB7: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_8A)
  loc_1B27FD0: If (CStr(var_C0) = "Edit") Then
  loc_1B28029:   unk_5890AB.Execute CStr("Select * from KOT Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_140, -1
  loc_1B28034:   Set var_88 = var_BC
  loc_1B2804E:   ' Referenced from: 1B28758
  loc_1B2805D:   If Not(var_88.EOF) Then
  loc_1B28088:     var_A4 = Proc_6_38_E69628(CVar(var_88.Fields.Item("Printed")))
  loc_1B280EE:     var_1BC = var_88.Fields
  loc_1B280F6:     var_1C4 = var_1BC.Item("VDate")
  loc_1B280FE:     var_1B4 = CVar(var_1C4) 'Address
  loc_1B28105:     Proc_6_7_F26918(var_1D4, var_1B4)
  loc_1B28124:     var_20C = var_88.Fields.Item("vType")
  loc_1B2814B:     var_264 = var_88.Fields.Item("vPrefix")
  loc_1B28284:     var_57C = var_88.Fields.Item("Item")
  loc_1B282F1:     var_670 = var_88.Fields
  loc_1B28309:     var_714 = Now
  loc_1B28314:     Proc_6_7_F26918(var_724, var_714, 1)
  loc_1B28379:     var_808 = var_88.Fields
  loc_1B283A8:     var_874 = var_88.Fields.Item("Amount")
  loc_1B283CF:     var_8CC = var_88.Fields.Item("Reasons")
  loc_1B283EB:     var_950 = var_88.Fields
  loc_1B28402:     Proc_6_39_E7D3A0(var_984, CVar(var_950.Item("FreeSno")))
  loc_1B28462:     var_F0 = "Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,DELFLAG,LogSite_Code,FreeSno,GuarAtt,ItemRestCode) Values ('"
  loc_1B2849A:     var_22C = var_F0 & var_88.Fields.Item("DocID").Value & "'," & var_88.Fields.Item("VNo").Value & "," & var_1D4 & ",'" & var_20C.Value 
  loc_1B284DD:     var_374 = var_22C & "','" & var_264.Value & "','" & CVar(MemVar_1F95070) & "','" & var_88.Fields.Item("RestCode").Value & "','" & var_88.Fields.Item("RoomCat").Value 
  loc_1B2850D:     var_47C = var_374 & "','" & var_88.Fields.Item("Roomtype").Value & "','" & var_88.Fields.Item("RoomNo").Value & "','" & var_88.Fields.Item("Pending").Value 
  loc_1B28516:     var_49C = var_47C & "'," 
  loc_1B28526:     var_4F4 = var_49C & var_88.Fields.Item("SNo").Value & ",'" 
  loc_1B2855D:     var_64C = var_4F4 & Format(Time, "hh:nn") & "','" & var_57C.Value & "'," & var_88.Fields.Item("qty").Value & ",'" & var_88.Fields.Item("VoidYN").Value 
  loc_1B28590:     var_734 = var_64C & "','" & var_670.Item("Waiter").Value & "','" & CVar(MemVar_1F950C8) & "'," & var_724 
  loc_1B285A0:     var_78C = var_734 & ",'" & var_88.Fields.Item("U_AE").Value 
  loc_1B285E0:     var_8EC = var_78C & "','" & var_88.Fields.Item("NCKOT").Value & "'," & var_808.Item("Rate").Value & "," & var_874.Value & ",'" & var_8CC.Value 
  loc_1B28623:     var_A44 = var_8EC & "','E','" & CVar(MemVar_1F95078) & "'," & var_984 & "," & var_88.Fields.Item("GuarAtt").Value & ",'" & var_88.Fields.Item("ItemRestcode").Value 
  loc_1B2863A:     unk_5890AB.Execute CStr(var_A44 & "')"), var_A84, -1
  loc_1B28753:     var_88.MoveNext
  loc_1B28758:     GoTo loc_1B2804E
  loc_1B2875B:   End If
  loc_1B28768:   var_F0 = "Update KOTLog Set SeqNo=(Select ISNull(Max(SeqNo),0)+1 From KOTLog  Where Docid= '"
  loc_1B287BC:   var_BC = Me.Fields
  loc_1B287CC:   var_140 = var_BC.Item("SearchCode").Value
  loc_1B287EB:   unk_5890AB.Execute CStr(var_F0 & Me.Fields.Item("SearchCode").Value & "') Where IsNull(SeqNo,0)=0 And Docid= '" & var_140 & "'"), var_1B4, -1
  loc_1B28828:   If (Me.RecordCount > 0) Then
  loc_1B28881:     unk_5890AB.Execute CStr("Delete From KOT Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_140, -1
  loc_1B288F3:     unk_5890AB.Execute CStr("Delete From Stock Where KOTDocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_140, -1
  loc_1B2893E:     var_B8 = Me.Fields.Item("SearchCode")
  loc_1B28946:     var_E0 = var_B8.Value
  loc_1B2895B:     var_C0 = CStr("Delete From Stock Where DocID='" & var_E0 & "'")
  loc_1B28965:     unk_5890AB.Execute var_C0, var_140, -1
  loc_1B28981:   End If
  loc_1B2899F:   Set var_B4 = Me.Txt
  loc_1B289A5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, "Delete From KOT Where DocID='", var_E0, -1, var_BC)
  loc_1B289AD:   var_BC = var_B8.Text
  loc_1B289C6:   unk_5890AB.Execute var_BC & var_C0 & "'", var_BC, var_1BC
  loc_1B289E0: End If
  loc_1B289FB: If (Me.ChkNCKOT.Value = 1) Then
  loc_1B28A23:   For var_A8C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_A8C 'Integer
  loc_1B28A2D:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_1B28A35:     var_110 = CVar(CLng(9)) 'Long
  loc_1B28A7E:     If (Ucase(Trim(CVar(CStr(Me.FGrid.TextMatrix))))) = "YES") Then
  loc_1B28A84:       var_A0 = "Y"
  loc_1B28A8A:     Else
  loc_1B28A8D:       var_A0 = "N"
  loc_1B28A90:     End If
  loc_1B28ABC:     var_120 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B28AE3:     Set var_B8 = Me.FGrid
  loc_1B28AF4:     var_C0 = CStr(var_B8.TextMatrix))
  loc_1B28B43:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_C0)) <> CDbl(0)) And (Me.RecordCount > 0)) Then
  loc_1B28B54:       Set var_B4 = Me.Txt
  loc_1B28B5A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, CVar(CLng(var_92)), (var_120 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1B28B62:       var_110 = var_B8.Text
  loc_1B28B95:       var_164 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B28BB8:       Set var_1BC = Me.Txt
  loc_1B28BBE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1C4, var_AB8, var_164, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B28BC6:       var_D0 = var_1C4.Text
  loc_1B28BD3:       var_B04 = Val(var_AB8)
  loc_1B28BE1:       Set var_1F8 = Me.Txt
  loc_1B28BE7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_20C, var_B04, 1)
  loc_1B28BF6:       Proc_6_7_F26918(var_120, CVar(var_20C), var_A88)
  loc_1B28C09:       Set var_250 = Me.Txt
  loc_1B28C0F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_264, var_AC8)
  loc_1B28C17:       1 = var_264.Tag
  loc_1B28C20:       var_2D4 = CVar(CLng(var_92)) 'Long
  loc_1B28C28:       var_32C = CVar(CLng(&HA)) 'Long
  loc_1B28C47:       var_3A8 = CVar(CLng(var_92)) 'Long
  loc_1B28C4F:       var_400 = CVar(CLng(5)) 'Long
  loc_1B28C5E:       var_31C = Me.FGrid.TextMatrix)
  loc_1B28C98:       var_B0C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B28CC9:       var_B14 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B28CDA:       Proc_6_7_F26918(var_49C, Date, var_B14, CVar(CLng(8)), CVar(CLng(var_92)), var_B0C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B28CE3:       Set var_398 = Me.TopCtrl1
  loc_1B28CE9:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_31C)
  loc_1B28D4E:       var_84C = CVar(CLng(var_92)) 'Long
  loc_1B28D56:       var_8A4 = CVar(CLng(0)) 'Long
  loc_1B28D5F:       Set var_404 = Me.FGrid
  loc_1B28D7F:       var_9FC = CVar(CLng(var_92)) 'Long
  loc_1B28D87:       var_A54 = CVar(CLng(1)) 'Long
  loc_1B28DB6:       var_148 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,KOTDOCID,KOTSNO,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_C0
  loc_1B28DFD:       var_ABC = var_148 & "'," & CStr(var_164) & ",'" & global_152 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "',"
  loc_1B28E58:       var_21C = CVar(var_ABC & CStr(var_B04) & ",") & var_120 & ",'" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_1B28EA7:       var_3BC = var_21C & "','" & CVar(var_AC8) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_31C)) & "'," & CVar(var_B0C) 
  loc_1B28EEE:       var_544 = var_3BC & "," & CVar(var_B14) & ",'" & CVar(MemVar_1F950C8) & "'," & var_49C & ",'" & IIf((CStr(var_4F4) = "Add"), "A", "E") 
  loc_1B28F25:       var_63C = var_544 & "','" & Me.Fields.Item("SearchCode").Value & "'," & CVar(Val(CStr(var_404.TextMatrix)))) & ",'" & CVar(var_A0) 
  loc_1B28F38:       var_66C = var_63C & "','" & CVar(MemVar_1F95078) 
  loc_1B28F59:       var_AEC = CStr(var_66C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')")
  loc_1B28F63:       unk_5890AB.Execute var_AEC, var_714, -1
  loc_1B29038:     Else
  loc_1B29064:       var_120 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B2908B:       Set var_B8 = Me.FGrid
  loc_1B2909C:       var_C0 = CStr(var_B8.TextMatrix))
  loc_1B290CA:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_C0)) <> CDbl(0))) Then
  loc_1B290DB:         Set var_B4 = Me.Txt
  loc_1B290E1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, CVar(CLng(var_92)), (var_120 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1B290E9:         var_45C = var_B8.Text
  loc_1B29103:         Set var_BC = Me.FGrid
  loc_1B2911C:         var_164 = Val(CStr(var_BC.TextMatrix)))
  loc_1B29126:         Set var_1B8 = Me.LblVPrefix
  loc_1B2912C:         var_AA4 = var_1B8.Caption
  loc_1B2913F:         Set var_1BC = Me.Txt
  loc_1B29145:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1C4, var_AB8, var_164, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B2914D:         var_6A4 = var_1C4.Text
  loc_1B2915A:         var_B04 = Val(var_AB8)
  loc_1B29168:         Set var_1F8 = Me.Txt
  loc_1B2916E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_20C, var_B04, var_A54)
  loc_1B2917D:         Proc_6_7_F26918(var_120, CVar(var_20C), var_9FC)
  loc_1B29190:         Set var_250 = Me.Txt
  loc_1B29196:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_264, var_AC8)
  loc_1B2919E:         var_B1C = var_264.Tag
  loc_1B291A7:         var_2D4 = CVar(CLng(var_92)) 'Long
  loc_1B291AF:         var_32C = CVar(CLng(&HA)) 'Long
  loc_1B291CE:         var_3A8 = CVar(CLng(var_92)) 'Long
  loc_1B291D6:         var_400 = CVar(CLng(5)) 'Long
  loc_1B291DF:         Set var_2FC = Me.FGrid
  loc_1B291E5:         var_31C = var_2FC.TextMatrix)
  loc_1B2921F:         var_B0C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B29250:         var_B14 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B29261:         Proc_6_7_F26918(var_49C, Date, var_B14, CVar(CLng(8)), CVar(CLng(var_92)), var_B0C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B2926A:         Set var_398 = Me.TopCtrl1
  loc_1B29270:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_31C)
  loc_1B29293:         var_AD4 = CStr(var_4F4)
  loc_1B292AB:         var_8A4 = CVar(CLng(var_92)) 'Long
  loc_1B292B3:         var_8FC = CVar(CLng(1)) 'Long
  loc_1B292E2:         var_148 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_C0
  loc_1B292E9:         var_A90 = var_148 & "',"
  loc_1B29314:         var_AAC = var_A90 & CStr(var_164) & ",'" & global_152 & "','" & var_AA4
  loc_1B29322:         var_AB4 = var_AAC & "','" & MemVar_1F95070
  loc_1B29342:         var_174 = CVar(var_AB4 & "'," & CStr(var_B04) & ",") & var_120 
  loc_1B29397:         var_274 = var_174 & ",'" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) & "','" & CVar(var_AC8) 
  loc_1B293E7:         var_414 = var_274 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_31C)) & "'," & CVar(var_B0C) & "," & CVar(var_B14) 
  loc_1B2942D:         var_58C = var_414 & ",'" & CVar(MemVar_1F950C8) & "'," & var_49C & ",'" & IIf((var_AD4 = "Add"), "A", "E") & "','" & CVar(var_A0) 
  loc_1B29461:         var_AD8 = CStr(var_58C & "','" & CVar(MemVar_1F95078) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')")
  loc_1B2946B:         unk_5890AB.Execute var_AD8, var_66C, -1
  loc_1B29529:       End If
  loc_1B29529:     End If
  loc_1B2952C:   Next var_A8C 'Integer
  loc_1B29534: Else
  loc_1B29538:   Set var_B4 = Me.TopCtrl1
  loc_1B2953E:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1B29557:   If (CStr() = "Edit") Then
  loc_1B29571:     If (Me.RecordCount > 0) Then
  loc_1B29588:       var_C0 = "UPDATE KOT SET NCKOT='" & var_9C
  loc_1B295AF:       var_B8 = Me.Fields.Item("SearchCode")
  loc_1B295D6:       unk_5890AB.Execute CStr(CVar(var_C0 & "' Where DocID='") & var_B8.Value & "'"), var_174, -1
  loc_1B295F8:     End If
  loc_1B295F8:   End If
  loc_1B29616:   Set var_B4 = Me.Txt
  loc_1B2961C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, "Delete From KOT Where CONTRADocID='")
  loc_1B29624:   var_E0 = var_B8.Text
  loc_1B2962D:   var_148 = -1 & var_C0
  loc_1B2963D:   unk_5890AB.Execute CStr(CVar(var_C0 & "' Where DocID='") & var_B8.Value & "'") & "'", var_BC, var_BC
  loc_1B29657: End If
  loc_1B2967C: For var_B20 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_B20 'Integer
  loc_1B2969D:   If (Me.ChkNCKOT.Value = 1) Then
  loc_1B296A4:     Set var_B4 = Me.TopCtrl1
  loc_1B296AA:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_1B296C3:     If (CStr() = "Edit") Then
  loc_1B296CA:       var_D0 = CVar(CLng(var_92)) 'Long
  loc_1B296D2:       var_110 = CVar(CLng(&HA)) 'Long
  loc_1B296EC:       var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B29719:       Set var_B8 = Me.FGrid
  loc_1B2972A:       var_C0 = CStr(var_B8.TextMatrix))
  loc_1B29758:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_C0)) <> CDbl(0))) Then
  loc_1B29769:         Set var_B4 = Me.Txt
  loc_1B2976F:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, CVar(CLng(var_92)))
  loc_1B29777:         (Trim(var_100) <> vbNullString) = var_B8.Text
  loc_1B2978A:         Set var_BC = Me.Txt
  loc_1B29790:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B8, var_A90)
  loc_1B29798:         var_110 = var_1B8.Text
  loc_1B297A5:         var_164 = Val(var_A90)
  loc_1B297B3:         Set var_1BC = Me.Txt
  loc_1B297B9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4)
  loc_1B297C1:         var_E0 = CVar(var_1C4) 'Address
  loc_1B297C8:         Proc_6_7_F26918(var_100, var_E0)
  loc_1B297ED:         Set var_20C = Me.Txt
  loc_1B297F3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_250, var_AA4)
  loc_1B29804:         var_2F8 = CVar(CLng(var_92)) 'Long
  loc_1B2980C:         var_350 = CVar(CLng(0)) 'Long
  loc_1B2982E:         var_B04 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2983F:         Set var_2E8 = Me.Txt
  loc_1B29845:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2FC, var_AAC, var_B04)
  loc_1B2984D:         var_350 = var_2FC.Text
  loc_1B29856:         var_434 = CVar(CLng(var_92)) 'Long
  loc_1B2985E:         var_48C = CVar(CLng(&HA)) 'Long
  loc_1B2986D:         var_414 = Me.FGrid.TextMatrix)
  loc_1B298A7:         var_B0C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B29963:         var_64C = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Yes"), "Y", "N"))
  loc_1B29976:         Set var_3F0 = Me.Txt
  loc_1B2997C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_404, var_AB4, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)))
  loc_1B29997:         Proc_6_7_F26918(var_734, Date, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B299A0:         Set var_448 = Me.TopCtrl1
  loc_1B299A6:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_414)
  loc_1B299E1:         var_A54 = CVar(CLng(var_92)) 'Long
  loc_1B29A0B:         var_B14 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B29A3C:         var_B1C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B29A6D:         var_112C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B29A80:         var_1130 = Proc_6_38_E69628(global_212, var_112C, CVar(CLng(8)), CVar(CLng(var_92)), var_B1C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B29A91:         Set var_568 = Me.Txt
  loc_1B29A97:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_57C, var_AC8, var_B14, CVar(CLng(8)))
  loc_1B29A9F:         var_A54 = var_57C.Text
  loc_1B29AC1:         var_5D4 = Me.Fields.Item("SearchCode")
  loc_1B29AD2:         var_C40 = CVar(CLng(var_92)) 'Long
  loc_1B29AFC:         var_1138 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B29B0A:         Set var_62C = Me.Txt
  loc_1B29B10:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_670, var_1138, CVar(CLng(0)))
  loc_1B29B4A:         var_D70 = CVar(CLng(var_92)) 'Long
  loc_1B29B52:         var_D90 = CVar(CLng(&HE)) 'Long
  loc_1B29B7B:         var_E10 = CVar(CLng(var_92)) 'Long
  loc_1B29B83:         var_E30 = CVar(CLng(&HB)) 'Long
  loc_1B29B9D:         var_AD0 = CStr(Me.FGrid.TextMatrix))
  loc_1B29BA5:         var_1140 = Val(var_AD0)
  loc_1B29BAC:         var_EA0 = CVar(CLng(var_92)) 'Long
  loc_1B29BB4:         var_EC0 = CVar(CLng(&HC)) 'Long
  loc_1B29BBD:         Set var_76C = Me.FGrid
  loc_1B29BC3:         var_EE0 = var_76C.TextMatrix)
  loc_1B29BEA:         var_F70 = Me.FGrid.TextMatrix)
  loc_1B29C04:         Set var_7C4 = Me.Txt
  loc_1B29C0A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_808, var_AD4, var_F70, CVar(CLng(6)), CVar(CLng(var_92)), var_EE0)
  loc_1B29C12:         var_EC0 = var_808.Tag
  loc_1B29C32:         var_1040 = Me.FGrid.TextMatrix)
  loc_1B29C4C:         Set var_860 = Me.Txt
  loc_1B29C52:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_874, var_AD8, var_1040, CVar(CLng(1)), CVar(CLng(var_92)))
  loc_1B29C5A:         var_EA0 = var_874.Text
  loc_1B29C67:         var_1148 = Val(var_AD8)
  loc_1B29C78:         Set var_8B8 = Me.Txt
  loc_1B29C7E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_8CC, var_AEC, var_1148, var_1140)
  loc_1B29C86:         var_E30 = var_8CC.Text
  loc_1B29CAA:         var_148 = "Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,ContraDocID,ContraSno,Logsite_Code,NCType,Printed,FreeSno,SchemeCode,Description,Party,ItemRestCode,TokenNo,GuarAtt) " & " Values ('"
  loc_1B29CE4:         var_F0 = CVar(global_152) 'String
  loc_1B29CEB:         var_110 = "','"
  loc_1B29CFA:         var_1E4 = CVar(var_148 & var_C0 & "'," & CStr(var_250.Tag) & ",") & var_100 & ",'" & var_F0 & var_110 & CVar(Me.LblVPrefix.Caption) 
  loc_1B29D4F:         var_2C4 = var_1E4 & "','" & CVar(MemVar_1F95070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_1B29DA6:         var_46C = var_2C4 & "','" & CVar(var_AA4) & "','N'," & CVar(var_B04) & ",'" & CVar(var_AAC) & "','" & CVar(CStr(var_414)) & "'," 
  loc_1B29DF7:         var_754 = var_46C & CVar(var_404.Tag) & ",'" & var_64C & "','" & CVar(var_AB4) & "','" & CVar(MemVar_1F950C8) & "'," & var_734 
  loc_1B29E46:         var_90C = var_754 & ",'" & IIf((CStr(var_78C) = "Add"), "A", "E") & "','" & CVar(var_9C) & "'," & CVar(var_B14) & "," & CVar((var_B1C * var_112C)) 
  loc_1B29EA3:         var_CB0 = var_90C & ",'" & CVar(var_1130) & "','" & CVar(var_AC8) & "','" & var_5D4.Value & "'," & CVar(var_1138) & ",'" & CVar(MemVar_1F95078) 
  loc_1B29EC3:         var_DE0 = var_CB0 & "','" & IIf((var_9C = "Y"), Trim(CVar(var_670)), vbNullString) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1B29F1B:         var_FF0 = var_DE0 & "'," & CVar(var_1140) & ",'" & CVar(CStr(var_EE0)) & "','" & CVar(CStr(var_F70)) & "','" & CVar(var_AD4) & "','" 
  loc_1B29F26:         var_1060 = var_FF0 & CVar(CStr(var_1040)) 
  loc_1B29F65:         unk_5890AB.Execute CStr(var_1060 & "'," & CVar(var_1148) & "," & CVar(Val(var_AEC)) & ")"), var_1124, -1
  loc_1B2A0DD:       End If
  loc_1B2A0E0:     Else
  loc_1B2A0E4:       var_D0 = CVar(CLng(var_92)) 'Long
  loc_1B2A0EC:       var_110 = CVar(CLng(&HA)) 'Long
  loc_1B2A106:       var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B2A133:       Set var_B8 = Me.FGrid
  loc_1B2A144:       var_C0 = CStr(var_B8.TextMatrix))
  loc_1B2A172:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_C0)) <> CDbl(0))) Then
  loc_1B2A183:         Set var_B4 = Me.Txt
  loc_1B2A189:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, CVar(CLng(var_92)), (Trim(var_100) <> vbNullString), var_110)
  loc_1B2A1A4:         Set var_BC = Me.Txt
  loc_1B2A1AA:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B8, var_A90, var_950)
  loc_1B2A1B2:         var_1150 = var_1B8.Text
  loc_1B2A1BF:         var_164 = Val(var_A90)
  loc_1B2A1CD:         Set var_1BC = Me.Txt
  loc_1B2A1D3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_164)
  loc_1B2A1DB:         var_E0 = CVar(var_1C4) 'Address
  loc_1B2A1E2:         Proc_6_7_F26918(var_100, var_E0, var_E10)
  loc_1B2A207:         Set var_20C = Me.Txt
  loc_1B2A20D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_250, var_AA4)
  loc_1B2A215:         var_D90 = var_250.Tag
  loc_1B2A21E:         var_2F8 = CVar(CLng(var_92)) 'Long
  loc_1B2A226:         var_350 = CVar(CLng(0)) 'Long
  loc_1B2A248:         var_B04 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2A259:         Set var_2E8 = Me.Txt
  loc_1B2A25F:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2FC, var_AAC, var_B04)
  loc_1B2A267:         var_350 = var_2FC.Text
  loc_1B2A270:         var_434 = CVar(CLng(var_92)) 'Long
  loc_1B2A287:         var_414 = Me.FGrid.TextMatrix)
  loc_1B2A2C1:         var_B0C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2A37D:         var_64C = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Yes"), "Y", "N"))
  loc_1B2A390:         Set var_3F0 = Me.Txt
  loc_1B2A396:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_404, var_AB4, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)))
  loc_1B2A3B1:         Proc_6_7_F26918(var_734, Date, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B2A3BA:         Set var_448 = Me.TopCtrl1
  loc_1B2A3C0:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_414)
  loc_1B2A3FB:         var_A54 = CVar(CLng(var_92)) 'Long
  loc_1B2A425:         var_B14 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2A456:         var_B1C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2A487:         var_112C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2A49A:         var_1104 = Proc_6_38_E69628(global_212, var_112C, CVar(CLng(8)), CVar(CLng(var_92)), var_B1C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B2A4AB:         Set var_568 = Me.Txt
  loc_1B2A4B1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_57C, var_AC8, var_B14, CVar(CLng(8)))
  loc_1B2A4B9:         var_A54 = var_57C.Text
  loc_1B2A4C9:         Set var_5C0 = Me.Txt
  loc_1B2A4CF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_5D4, CVar(CLng(&HA)))
  loc_1B2A509:         var_C70 = CVar(CLng(var_92)) 'Long
  loc_1B2A511:         var_C90 = CVar(CLng(&HE)) 'Long
  loc_1B2A53A:         var_D00 = CVar(CLng(var_92)) 'Long
  loc_1B2A542:         var_D50 = CVar(CLng(&HB)) 'Long
  loc_1B2A564:         var_1138 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2A56B:         var_DA0 = CVar(CLng(var_92)) 'Long
  loc_1B2A573:         var_E10 = CVar(CLng(&HC)) 'Long
  loc_1B2A582:         var_DD0 = Me.FGrid.TextMatrix)
  loc_1B2A5A9:         var_E70 = Me.FGrid.TextMatrix)
  loc_1B2A5C3:         Set var_758 = Me.Txt
  loc_1B2A5C9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_76C, var_AD0, var_E70, CVar(CLng(6)), CVar(CLng(var_92)), var_DD0)
  loc_1B2A5D1:         var_E10 = var_76C.Tag
  loc_1B2A5F1:         var_F80 = Me.FGrid.TextMatrix)
  loc_1B2A60B:         Set var_7C4 = Me.Txt
  loc_1B2A611:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_808, var_AD4, var_F80, CVar(CLng(1)), CVar(CLng(var_92)))
  loc_1B2A619:         var_DA0 = var_808.Text
  loc_1B2A626:         var_1140 = Val(var_AD4)
  loc_1B2A637:         Set var_81C = Me.Txt
  loc_1B2A63D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_860, var_AD8, var_1140, var_1138)
  loc_1B2A645:         var_D50 = var_860.Text
  loc_1B2A669:         var_148 = "Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,Printed,FreeSno,SchemeCode,Description,Party,ItemRestCode,TokenNo,GuarAtt) " & " Values ('"
  loc_1B2A6A3:         var_F0 = CVar(global_152) 'String
  loc_1B2A6AA:         var_110 = "','"
  loc_1B2A6B9:         var_1E4 = CVar(var_148 & var_C0 & "'," & CStr(var_164) & ",") & var_100 & ",'" & var_F0 & var_110 & CVar(Me.LblVPrefix.Caption) 
  loc_1B2A70E:         var_2C4 = var_1E4 & "','" & CVar(MemVar_1F95070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_1B2A765:         var_46C = var_2C4 & "','" & CVar(var_AA4) & "','N'," & CVar(var_B04) & ",'" & CVar(var_AAC) & "','" & CVar(CStr(var_414)) & "'," 
  loc_1B2A7B6:         var_754 = var_46C & CVar(var_404.Tag) & ",'" & var_64C & "','" & CVar(var_AB4) & "','" & CVar(MemVar_1F950C8) & "'," & var_734 
  loc_1B2A805:         var_90C = var_754 & ",'" & IIf((CStr(var_78C) = "Add"), "A", "E") & "','" & CVar(var_9C) & "'," & CVar(var_B14) & "," & CVar((var_B1C * var_112C)) 
  loc_1B2A84E:         var_CB0 = var_90C & ",'" & CVar(var_1104) & "','" & CVar(var_AC8) & "','" & CVar(MemVar_1F95078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_5D4)), vbNullString) 
  loc_1B2A88F:         var_E50 = var_CB0 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(var_1138) & ",'" & CVar(CStr(var_DD0)) & "','" 
  loc_1B2A8E9:         var_1040 = var_E50 & CVar(CStr(var_E70)) & "','" & CVar(var_AD0) & "','" & CVar(CStr(var_F80)) & "'," & CVar(var_1140) & "," & CVar(Val(var_AD8)) 
  loc_1B2A900:         unk_5890AB.Execute CStr(var_1040 & ")"), var_1060, -1
  loc_1B2AA64:       End If
  loc_1B2AA64:     End If
  loc_1B2AA67:   Else
  loc_1B2AA6B:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_1B2AA73:     var_110 = CVar(CLng(&HA)) 'Long
  loc_1B2AA8D:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B2AABA:     Set var_B8 = Me.FGrid
  loc_1B2AACB:     var_C0 = CStr(var_B8.TextMatrix))
  loc_1B2AAF9:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_C0)) <> CDbl(0))) Then
  loc_1B2AB0A:       Set var_B4 = Me.Txt
  loc_1B2AB10:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, CVar(CLng(var_92)), (Trim(var_100) <> vbNullString), var_110)
  loc_1B2AB18:       var_D0 = var_B8.Text
  loc_1B2AB2B:       Set var_BC = Me.Txt
  loc_1B2AB31:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B8, var_A90, var_874)
  loc_1B2AB39:       var_1148 = var_1B8.Text
  loc_1B2AB46:       var_164 = Val(var_A90)
  loc_1B2AB54:       Set var_1BC = Me.Txt
  loc_1B2AB5A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_164)
  loc_1B2AB62:       var_E0 = CVar(var_1C4) 'Address
  loc_1B2AB69:       Proc_6_7_F26918(var_100, var_E0, var_D00)
  loc_1B2AB75:       Set var_1F8 = Me.LblVPrefix
  loc_1B2AB8E:       Set var_20C = Me.Txt
  loc_1B2AB94:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_250, var_AA4)
  loc_1B2AB9C:       var_C90 = var_250.Tag
  loc_1B2ABA5:       var_2F8 = CVar(CLng(var_92)) 'Long
  loc_1B2ABAD:       var_350 = CVar(CLng(0)) 'Long
  loc_1B2ABCF:       var_B04 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2ABE0:       Set var_2E8 = Me.Txt
  loc_1B2ABE6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2FC, var_AAC, var_B04)
  loc_1B2ABEE:       var_350 = var_2FC.Text
  loc_1B2ABF7:       var_434 = CVar(CLng(var_92)) 'Long
  loc_1B2AC0E:       var_414 = Me.FGrid.TextMatrix)
  loc_1B2AC48:       var_B0C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2AD04:       var_64C = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Yes"), "Y", "N"))
  loc_1B2AD17:       Set var_3F0 = Me.Txt
  loc_1B2AD1D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_404, var_AB4, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)))
  loc_1B2AD38:       Proc_6_7_F26918(var_734, Date, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B2AD41:       Set var_448 = Me.TopCtrl1
  loc_1B2AD47:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_414)
  loc_1B2AD82:       var_A54 = CVar(CLng(var_92)) 'Long
  loc_1B2ADAC:       var_B14 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2ADDD:       var_B1C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2AE0E:       var_112C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2AE21:       var_1104 = Proc_6_38_E69628(global_212, var_112C, CVar(CLng(8)), CVar(CLng(var_92)), var_B1C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B2AE32:       Set var_568 = Me.Txt
  loc_1B2AE38:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_57C, var_AC8, var_B14, CVar(CLng(8)))
  loc_1B2AE40:       var_A54 = var_57C.Text
  loc_1B2AE50:       Set var_5C0 = Me.Txt
  loc_1B2AE56:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_5D4, CVar(CLng(&HA)))
  loc_1B2AE90:       var_C70 = CVar(CLng(var_92)) 'Long
  loc_1B2AE98:       var_C90 = CVar(CLng(&HE)) 'Long
  loc_1B2AEC1:       var_D00 = CVar(CLng(var_92)) 'Long
  loc_1B2AEC9:       var_D50 = CVar(CLng(&HB)) 'Long
  loc_1B2AEEB:       var_1138 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2AEF2:       var_DA0 = CVar(CLng(var_92)) 'Long
  loc_1B2AEFA:       var_E10 = CVar(CLng(&HC)) 'Long
  loc_1B2AF09:       var_DD0 = Me.FGrid.TextMatrix)
  loc_1B2AF30:       var_E70 = Me.FGrid.TextMatrix)
  loc_1B2AF4A:       Set var_758 = Me.Txt
  loc_1B2AF50:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_76C, var_AD0, var_E70, CVar(CLng(6)), CVar(CLng(var_92)), var_DD0)
  loc_1B2AF58:       var_E10 = var_76C.Tag
  loc_1B2AF78:       var_F80 = Me.FGrid.TextMatrix)
  loc_1B2AF92:       Set var_7C4 = Me.Txt
  loc_1B2AF98:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_808, var_AD4, var_F80, CVar(CLng(1)), CVar(CLng(var_92)))
  loc_1B2AFA0:       var_DA0 = var_808.Text
  loc_1B2AFAD:       var_1140 = Val(var_AD4)
  loc_1B2AFBE:       Set var_81C = Me.Txt
  loc_1B2AFC4:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_860, var_AD8, var_1140, var_1138)
  loc_1B2AFCC:       var_D50 = var_860.Text
  loc_1B2AFF0:       var_148 = "Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,Printed,FreeSno,SchemeCode,Description,Party,ItemRestCode,TokenNo,GuarAtt) " & " Values ('"
  loc_1B2B006:       var_A98 = CStr(var_164)
  loc_1B2B02A:       var_F0 = CVar(global_152) 'String
  loc_1B2B031:       var_110 = "','"
  loc_1B2B03D:       var_1D4 = CVar(var_1F8.Caption) 'String
  loc_1B2B053:       var_21C = CVar(var_148 & var_C0 & "'," & var_A98 & ",") & var_100 & ",'" & var_F0 & var_110 & var_1D4 & "','" & CVar(MemVar_1F95070) 
  loc_1B2B0A8:       var_31C = var_21C & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) & "','" & CVar(var_AA4) 
  loc_1B2B100:       var_4C4 = var_31C & "','Y'," & CVar(var_B04) & ",'" & CVar(var_AAC) & "','" & CVar(CStr(var_414)) & "'," & CVar(var_404.Tag) & ",'" 
  loc_1B2B14D:       var_804 = var_4C4 & var_64C & "','" & CVar(var_AB4) & "','" & CVar(MemVar_1F950C8) & "'," & var_734 & ",'" & IIf((CStr(var_78C) = "Add"), "A", "E") 
  loc_1B2B1A8:       var_984 = var_804 & "','" & CVar(var_9C) & "'," & CVar(var_B14) & "," & CVar((var_B1C * var_112C)) & ",'" & CVar(var_1104) & "','" 
  loc_1B2B1D5:       var_CB0 = var_984 & CVar(var_AC8) & "','" & CVar(MemVar_1F95078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_5D4)), vbNullString) 
  loc_1B2B221:       var_EE0 = var_CB0 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(var_1138) & ",'" & CVar(CStr(var_DD0)) & "','" & CVar(CStr(var_E70)) 
  loc_1B2B279:       var_1050 = var_EE0 & "','" & CVar(var_AD0) & "','" & CVar(CStr(var_F80)) & "'," & CVar(var_1140) & "," & CVar(Val(var_AD8)) & ")" 
  loc_1B2B287:       unk_5890AB.Execute CStr(var_1050), var_1060, -1
  loc_1B2B3EB:     End If
  loc_1B2B3EB:   End If
  loc_1B2B3EE: Next var_B20 'Integer
  loc_1B2B3F7: Set var_B4 = Me.TopCtrl1
  loc_1B2B3FD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1B2B416: If (CStr() = "Add") Then
  loc_1B2B42D:   var_C0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1B2B453:   var_120 = CVar(var_C0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_152 & "' And VP.Date_From<=") 'String
  loc_1B2B464:   Set var_B4 = Me.Txt
  loc_1B2B46A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_A98, var_120)
  loc_1B2B472:   var_194 = var_B8.Text
  loc_1B2B47A:   var_E0 = CVar(var_A98) 'String
  loc_1B2B480:   Proc_6_7_F26918(var_100, var_E0)
  loc_1B2B488:   var_140 = -1 & var_100 
  loc_1B2B49F:   unk_5890AB.Execute CStr(CVar(var_C0 & "' AND VP.LOGSITE_CODE='" & var_C0 & "'," & var_A98 & ",") & var_100 & " Order By VP.Date_From DESC"), var_BC, 
  loc_1B2B4AA:   Set var_88 = var_BC
  loc_1B2B4E8:   If (var_88.RecordCount > 0) Then
  loc_1B2B4F9:     Set var_B4 = Me.Txt
  loc_1B2B4FF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_B8)
  loc_1B2B507:     var_C0 = var_B8.Text
  loc_1B2B54F:     var_A9C = "Update Depart Set CurTokenNoKOT=" & CStr(Val(var_C0)) & " Where Logsite_Code='" & MemVar_1F95078 & "'And code='" & LocalRestCode
  loc_1B2B55F:     unk_5890AB.Execute var_A9C & "'", var_E0, -1
  loc_1B2B591:     Set var_B4 = Me.Txt
  loc_1B2B597:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8, var_C0)
  loc_1B2B59F:     var_BC = var_B8.Text
  loc_1B2B5AC:     var_164 = Val(var_C0)
  loc_1B2B5C1:     var_BC = var_88.Fields
  loc_1B2B5D1:     var_E0 = var_BC.Item("V_Type").Value
  loc_1B2B5FC:     Proc_6_7_F26918(var_194, CVar(var_88.Fields.Item("Date_From")))
  loc_1B2B621:     var_A90 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_164) & " Where (SITE_CODE='"
  loc_1B2B64C:     var_140 = CVar(var_A90 & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='") & var_E0 & "' and Date_From=" 
  loc_1B2B661:     unk_5890AB.Execute CStr(var_140 & var_194), var_1D4, -1
  loc_1B2B69B:   End If
  loc_1B2B69B: End If
  loc_1B2B69F: Set var_B4 = Me.TopCtrl1
  loc_1B2B6A5: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_1F8)
  loc_1B2B6BE: If (CStr(var_164) = "Add") Then
  loc_1B2B6E4:   var_C0 = "SELECT COUNT(*) FROM LASTVOU WHERE lOGSITE_CODE='" & MemVar_1F95078
  loc_1B2B6F9:   var_A94 = var_C0 & "' AND UNAME='" & MemVar_1F950C8 & "' AND ENAME='"
  loc_1B2B702:   Call 0.Method_arg_50 (var_A90, var_A94, var_E0, -1, var_B4)
  loc_1B2B71B:   unk_5890AB.Execute var_B8 & var_A90 & "' ", 0, var_BC
  loc_1B2B723:   var_100 = var_B4.Fields
  loc_1B2B72B:    = var_B8.Item(var_164)
  loc_1B2B733:    = var_BC.Value
  loc_1B2B764:   If (var_100 > 0) Then
  loc_1B2B785:     Set var_B4 = Me.Txt
  loc_1B2B78B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, "UPDATE LASTVOU  SET DOCID='")
  loc_1B2B793:     var_E0 = var_B8.Text
  loc_1B2B79C:     var_148 = -1 & var_C0
  loc_1B2B7BA:     Call 0.Method_arg_50 (var_A94, var_C0 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F950C8 & "' AND ENAME='")
  loc_1B2B7D3:     unk_5890AB.Execute var_BC & var_A94 & "'  ", , 
  loc_1B2B7FA:   Else
  loc_1B2B81E:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "' AND UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "','", var_1D4)
  loc_1B2B827:     var_A90 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "' AND UNAME='"
  loc_1B2B82E:     var_A98 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F950C8 & "','"
  loc_1B2B83F:     Set var_B4 = Me.Txt
  loc_1B2B845:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_A94)
  loc_1B2B84D:     var_A98 = var_B8.Text
  loc_1B2B86B:     var_120 = CVar(var_BC & var_A94 & "','" & MemVar_1F95070 & "',") 'String
  loc_1B2B871:     var_E0 = Date
  loc_1B2B87C:     Proc_6_7_F26918(var_100, var_E0)
  loc_1B2B884:     var_140 = var_120 & var_100 
  loc_1B2B888:     var_D0 = ",'A','"
  loc_1B2B8AE:     unk_5890AB.Execute CStr(var_140 & var_D0 & CVar(MemVar_1F95078) & "')"), , 
  loc_1B2B8E6:   End If
  loc_1B2B8E6: End If
  loc_1B2B8EC: unk_5890AB.CommitTrans
  loc_1B2B8F3: var_8A = 0
  loc_1B2B904: Set var_B4 = Me.Txt
  loc_1B2B90A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8)
  loc_1B2B926: var_8A = 0
  loc_1B2B934: Me.Requery -1
  loc_1B2B950: If (Me.RecordCount > 0) Then
  loc_1B2B96E:   If (Me.ChkNCKOT.Value <> 1) Then
  loc_1B2B996:     Me.Find "SearchCode ='" & var_B8.Text & "'", 0, 1
  loc_1B2B9A5:   Else
  loc_1B2B9AB:     Me.MoveLast
  loc_1B2B9B0:   End If
  loc_1B2B9B0: End If
  loc_1B2B9B4: Set var_B4 = Me.TopCtrl1
  loc_1B2B9BA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_D0)
  loc_1B2B9D3: If (CStr(var_8A) = "Edit") Then
  loc_1B2B9D8:   var_A6 = &HFF
  loc_1B2B9DB: End If
  loc_1B2B9F1: unk_5890AB.Execute "SELECT KOTPrintEdited FROM Enviro", var_E0, -1
  loc_1B2BA28: Call Proc_30_97_1010D70(Proc_5_1_100EC1C("INI", Me, global_88), Me)
  loc_1B2BA33: Call Proc_30_94_179FC48(var_A6)
  loc_1B2BA4F: If (Me.RecordCount > 0) Then
  loc_1B2BA93:   If Not((var_8A And (Proc_6_38_E69628(CVar(var_B4.Fields.Fields.Item("KOTPrintEdited")), (var_A6 = &HFF)) = "No Print"))) Then
  loc_1B2BACD:     If (MsgBox("Print KOT ?", &H24, "Print", var_120, var_140) = 6) Then
  loc_1B2BB02:       Proc_260_21_1E6CEB4(CStr(Me.Fields.Item("SearchCode").Value))
  loc_1B2BB14:     End If
  loc_1B2BB14:   End If
  loc_1B2BB14: End If
  loc_1B2BB55: Call KOTMessage(CStr(Me.Fields.Item("SearchCode").Value), "KOT Message", LocalRestCode)
  loc_1B2BB70: Set var_88 = Nothing
  loc_1B2BB78: Set var_AC = Nothing
  loc_1B2BB8A: Me.FGrid1.Visible = False
  loc_1B2BB9E: Me.LblPendingKot.Visible = False
  loc_1B2BBA6: Exit Sub
  loc_1B2BBA7: ' Referenced from: 1B27530
  loc_1B2BBAD: If (var_8A = &HFF) Then
  loc_1B2BBB6:   unk_5890AB.RollbackTrans
  loc_1B2BBBB: End If
  loc_1B2BBBB: Proc_6_60_E63754()
  loc_1B2BBC0: Exit Sub
End Sub

Private Sub DGNCType_UnknownEvent_9 'F54448
  'Data Table: 58908C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F54328: On Error Goto loc_F54442
  loc_F5433A: Me.DGNCType.Visible = False
  loc_F54359: If (Me.RecordCount > 0) Then
  loc_F54398:   Set var_B4 = Me.Txt
  loc_F5439E:   Call 0.Method_DGNCType_UnknownEvent_90 (CInt(7), var_B8)
  loc_F543A6:   var_B8.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_F543D9:   var_B0 = Me.Fields.Item("NCPer")
  loc_F543F8:   Set var_B4 = Me.Txt
  loc_F543FE:   Call 0.Method_DGNCType_UnknownEvent_90 (CInt(7), var_B8)
  loc_F54406:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5441C: End If
  loc_F54427: Set var_A8 = Me.Txt
  loc_F5442D: Call 0.Method_DGNCType_UnknownEvent_90 (CInt(7))
  loc_F54435: var_B0.SetFocus
  loc_F54441: Exit Sub
  loc_F54442: ' Referenced from: F54328
  loc_F54442: Proc_6_60_E63754(var_B0)
  loc_F54447: Exit Sub
End Sub

Private Sub CmPendingKot_UnknownEvent_9 '11FAFEC
  'Data Table: 58908C
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim unk_5890AB As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As Variant
  Dim var_104 As Variant
  Dim var_C4 As Variant
  Dim var_124 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_E4 As Variant
  loc_11FAB5B: Me.FGrid2.Redraw = False
  loc_11FAB70: Set var_AC = Me.FGrid2
  loc_11FAB76: var_AC.Rows = 1
  loc_11FAB83: global_268 = 1
  loc_11FAB9D: var_B0 = "SELECT k.docid as DocID,K.Vtime as KotTime,K.VNo,k.Vdate,W.NAME AS WAITER,K.RoomNo AS TABLENo,I.NAME AS PRODUCT,K.Qty,D.NAME AS DEPARTNAME FROM ((((KOT AS K INNER JOIN wAITER AS W ON K.Waiter = W.Code) INNER JOIN ItemMast AS I ON (K.Item = I.Code And K.ItemRestCode=I.RestCode)) INNER JOIN DEPART AS D ON K.RestCode = D.Code) INNER JOIN VOUCHER_TYPE AS V ON (K.Vtype = V.V_Type AND K.SITE_CODE=V.SITE_CODE)) where k.contradocid='' and k.VoidYN='N' and k.delFlag<>'Y' and k.nckot='N' and k.restcode='" & LocalRestCode
  loc_11FABAD: unk_5890AB.Execute var_B0 & "' Order By K.DocId,K.RESTCODE,I.Name", var_C4, -1
  loc_11FABB8: Set var_88 = var_AC
  loc_11FABDC: If (var_88.RecordCount = 0) Then
  loc_11FABEE:   Me.FGrid2.Visible = False
  loc_11FAC02:   Me.LblPendingKotItem.Visible = False
  loc_11FAC0D: Else
  loc_11FAC1B:   Me.FGrid2.Visible = True
  loc_11FAC2F:   Me.LblPendingKotItem.Visible = True
  loc_11FAC37:   ' Referenced from:   11FAFAD
  loc_11FAC46:   If Not(var_88.EOF) Then
  loc_11FAC50:     var_98 = vbNullString
  loc_11FAC9B:     Proc_6_39_E7D3A0(var_E4, CVar(var_88.Fields.Item("VNo")), CVar(CLng(1)), CVar(CLng(global_268)))
  loc_11FACA4:     var_124 = CVar(CStr(var_E4)) 'String
  loc_11FACAB:     LateIdCallSt
  loc_11FACE2:     var_F4 = CVar(CLng(global_268)) 'Long
  loc_11FACEA:     var_114 = CVar(CLng(2)) 'Long
  loc_11FAD17:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("VDate")), "dd/MM/yy"))) 'String
  loc_11FAD1E:     LateIdCallSt
  loc_11FAD3B:     var_A8 = CVar(CLng(global_268)) 'Long
  loc_11FAD43:     var_104 = CVar(CLng(3)) 'Long
  loc_11FAD73:     var_E4 = CVar(CStr(var_88.Fields.Item("KotTime").Value)) 'String
  loc_11FAD7A:     LateIdCallSt
  loc_11FAD97:     var_A8 = CVar(CLng(global_268)) 'Long
  loc_11FAD9F:     var_104 = CVar(CLng(4)) 'Long
  loc_11FADCF:     var_E4 = CVar(CStr(var_88.Fields.Item("Waiter").Value)) 'String
  loc_11FADD6:     LateIdCallSt
  loc_11FAE0F:     var_F4 = CVar(CLng(global_268)) 'Long
  loc_11FAE17:     var_114 = CVar(CLng(5)) 'Long
  loc_11FAE44:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("TableNo")), "00"))) 'String
  loc_11FAE4B:     LateIdCallSt
  loc_11FAE68:     var_A8 = CVar(CLng(global_268)) 'Long
  loc_11FAE70:     var_104 = CVar(CLng(6)) 'Long
  loc_11FAEA0:     var_E4 = CVar(CStr(var_88.Fields.Item("Product").Value)) 'String
  loc_11FAEA7:     LateIdCallSt
  loc_11FAEE0:     var_F4 = CVar(CLng(global_268)) 'Long
  loc_11FAEE8:     var_114 = CVar(CLng(7)) 'Long
  loc_11FAEFC:     var_E4 = "0.00"
  loc_11FAF1C:     LateIdCallSt
  loc_11FAF6C:     Proc_6_39_E7D3A0(var_E4, CVar(var_88.Fields.Item("DocID")), CVar(CLng(8)), CVar(CLng(global_268)), Me.FGrid2, CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), var_E4))), 1)
  loc_11FAF75:     var_124 = CVar(CStr(var_E4)) 'String
  loc_11FAF7C:     LateIdCallSt
  loc_11FAF92:     Set var_D0 = Nothing 
  loc_11FAFA2:     global_268 = (global_268 + 1)
  loc_11FAFA8:     var_88.MoveNext
  loc_11FAFAD:     GoTo loc_11FAC37
  loc_11FAFB0:   End If
  loc_11FAFC3:   Me.FGrid2.FixedRows = 1
  loc_11FAFCB: End If
  loc_11FAFD9: Me.FGrid2.Redraw = True
  loc_11FAFE6: Set var_88 = Nothing
  loc_11FAFE9: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12F51AC
  'Data Table: 58908C
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_12F4ACE: Set var_88 = Me.TxtGrid
  loc_12F4AD4: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12F4AE2: Proc_6_74_E23240(var_8C)
  loc_12F4AEE: Call Proc_30_98_F6E7AC(var_8C)
  loc_12F4B01: Set var_88 = Me.TxtGrid
  loc_12F4B07: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12F4B0F: var_8C.MaxLength = 0
  loc_12F4B27: If (Index = 0) Then
  loc_12F4B40:   Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_12F4B5B:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F4B9A:   Set var_108 = Me.TxtGrid
  loc_12F4BA0:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12F4BA8:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_12F4BD9:   var_114 = CLng(Me.FGrid.Col)
  loc_12F4BE9:   If (var_114 = CLng(3)) Then
  loc_12F4C4A:     If CBool(Not (Me.Fields.Item("MultiBillGeneration").Value = "Yes") And (global_232 = "Yes")) Then
  loc_12F4C63:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F4C74:       Set var_8C = Me.FGrid
  loc_12F4C9A:       Me.Filter = CVar(CVar(CLng(1)) & CStr(var_8C.TextMatrix)) & "'")
  loc_12F4CB6:     End If
  loc_12F4CC4:     Set var_88 = Me.TxtGrid
  loc_12F4CCA:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 4, var_A4)
  loc_12F4CD2:     var_8C.MaxLength = "OutletCode='"
  loc_12F4CE1:   Else
  loc_12F4CE8:     If (var_114 = CLng(4)) Then
  loc_12F4D0E:       Proc_6_137_1192FDC(Me.DGItem, global_84, Index, Me.FGPoint)
  loc_12F4D7A:       If CBool(Not (Me.Fields.Item("MultiBillGeneration").Value = "Yes") And (global_232 = "Yes")) Then
  loc_12F4D93:         var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F4DCA:         Me.Filter = CVar(CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'")
  loc_12F4DE6:       End If
  loc_12F4DFD:       If (Me.RecordCount > 0) Then
  loc_12F4E23:         Proc_6_137_1192FDC(Me.DGItem, global_84, Index, Me.FGPoint, var_A4)
  loc_12F4E31:       End If
  loc_12F4E3A:       var_12C = Me.RecordCount
  loc_12F4E51:       var_12E = Me.EOF
  loc_12F4E65:       var_130 = Me.BOF
  loc_12F4E85:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F4EC1:       If (CVar(CLng(&HA)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_12F4EC4:         Exit Sub
  loc_12F4EC5:       End If
  loc_12F4ECB:       Me.MoveFirst
  loc_12F4EE3:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F4EEB:       var_E4 = CVar(CLng(&HA)) 'Long
  loc_12F4EF4:       Set var_8C = Me.FGrid
  loc_12F4EFA:       var_D4 = var_8C.TextMatrix)
  loc_12F4F2F:       Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_12F4F5F:       If (Me.EOF = &HFF) Then
  loc_12F4F68:         Me.MoveFirst
  loc_12F4F6D:       End If
  loc_12F4F76:       CVarUnk
  loc_12F4F7B:       VerifyVarObj
  loc_12F4F81:       Set var_88 = Me.DGItem
  loc_12F4F87:       LateIdStAd
  loc_12F4F98:     Else
  loc_12F4F9F:       If (var_114 = CLng(7)) Then
  loc_12F4FB7:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, Me.TxtGrid, global_84, var_144, var_D4)
  loc_12F4FBF:         var_8C.MaxLength = var_E4
  loc_12F4FD4:         If (global_126 = 0) Then
  loc_12F4FDF:           var_110 = "{Home}+{End}"
  loc_12F4FE5:           Proc_303_0_FBACC8(CStr(var_D4), 0, var_A4, var_A4)
  loc_12F4FED:         End If
  loc_12F4FF0:       Else
  loc_12F4FF7:         If (var_114 = CLng(2)) Then
  loc_12F5011:           If (Me.RecordCount > 0) Then
  loc_12F5037:             Proc_6_137_1192FDC(Me.DGRest, global_100, Index, Me.FGPoint)
  loc_12F5045:           End If
  loc_12F504E:           var_12C = Me.RecordCount
  loc_12F5065:           var_12E = Me.EOF
  loc_12F5079:           var_130 = Me.BOF
  loc_12F5099:           var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F50D5:           If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_12F50D8:             Exit Sub
  loc_12F50D9:           End If
  loc_12F50DF:           Me.MoveFirst
  loc_12F50F7:           var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F50FF:           var_E4 = CVar(CLng(1)) 'Long
  loc_12F5143:           Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_12F5173:           If (Me.EOF = &HFF) Then
  loc_12F517C:             Me.MoveFirst
  loc_12F5181:           End If
  loc_12F518A:           CVarUnk
  loc_12F518F:           VerifyVarObj
  loc_12F5195:           Set var_88 = Me.DGRest
  loc_12F519B:           LateIdStAd
  loc_12F51A9:         End If
  loc_12F51A9:       End If
  loc_12F51A9:     End If
  loc_12F51A9:   End If
  loc_12F51A9: End If
  loc_12F51A9: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13B3BD0
  'Data Table: 58908C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_94 As String
  Dim var_98 As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_C0 As TextBox
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  loc_13B32C3: var_86 = Shift
  loc_13B32D2: If (KeyCode = 0) Then
  loc_13B32DF:   If (CLng(Shift) = &H1B) Then
  loc_13B32EF:     Set var_8C = Me.TxtGrid
  loc_13B32F5:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_13B32FD:     var_88 = var_90.Tag
  loc_13B330F:     Set var_98 = Me.TxtGrid
  loc_13B3315:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_13B331D:     var_9C.Text = var_94
  loc_13B3339:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13B333E:     Call Proc_30_98_F6E7AC(arg_14)
  loc_13B3347:     Set var_8C = Me.FGrid
  loc_13B3364:     Set var_8C = Me.TxtGrid
  loc_13B336A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_13B3372:     var_90.Visible = FGrid.DispID_8001
  loc_13B337E:     Exit Sub
  loc_13B337F:   End If
  loc_13B3392:   var_B0 = CLng(Me.FGrid.Col)
  loc_13B33A2:   If (var_B0 = CLng(4)) Then
  loc_13B33C2:     Set var_9C = Me.FGPoint
  loc_13B33CD:     Set var_98 = Nothing
  loc_13B33FB:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_84, Shift, &HFF)
  loc_13B346A:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_13B3471:       Set var_98 = Me.DGItem
  loc_13B3490:       Proc_6_138_106E830(var_98, global_84, KeyCode, Me.FGPoint, 1)
  loc_13B349E:     End If
  loc_13B34A8:     If (CLng(Shift) = &HD) Then
  loc_13B34B1:       Call Proc_30_91_18485CC(KeyCode, var_B2, var_98, var_9C)
  loc_13B34BC:       If (var_B2 = &HFF) Then
  loc_13B3502:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_126, 7)
  loc_13B3512:       End If
  loc_13B3512:     End If
  loc_13B3515:   Else
  loc_13B351C:     If (var_B0 = CLng(2)) Then
  loc_13B352A:       Set var_C0 = Me.TxtGrid
  loc_13B3575:       Proc_6_69_134A630(Me.DGRest, var_C0, KeyCode, global_100, Shift, &HFF, 1, Nothing)
  loc_13B35E4:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_13B360A:         Proc_6_138_106E830(Me.DGRest, global_100, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13B3618:       End If
  loc_13B3622:       If (CLng(Shift) = &HD) Then
  loc_13B362B:         Call Proc_30_91_18485CC(KeyCode, var_B2, 0, 7)
  loc_13B3636:         If (var_B2 = &HFF) Then
  loc_13B367C:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_126, 7, 0)
  loc_13B368C:         End If
  loc_13B368C:       End If
  loc_13B368F:     Else
  loc_13B3696:       If (var_B0 = CLng(3)) Then
  loc_13B36A3:         If (CLng(Shift) = &HD) Then
  loc_13B36AC:           Call Proc_30_91_18485CC(KeyCode, var_B2, 3, 0)
  loc_13B36B7:           If (var_B2 = &HFF) Then
  loc_13B3704:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_126, CByte((CInt(7) + 1)), 0)
  loc_13B3727:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B372F:             var_FC = CVar(CLng(3)) 'Long
  loc_13B3762:             If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13B3777:               Me.FGrid.Col = CVar(CLng(4))
  loc_13B3782:             Else
  loc_13B3785:               var_DC = CVar(CLng(7)) 'Long
  loc_13B3794:               Me.FGrid.Col = var_DC
  loc_13B379C:             End If
  loc_13B379C:           End If
  loc_13B379C:         End If
  loc_13B379F:       Else
  loc_13B37A6:         If (var_B0 = CLng(7)) Then
  loc_13B37E9:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_126 = &HFF))) Then
  loc_13B37F2:             Call Proc_30_91_18485CC(KeyCode, var_B2, var_FC, var_DC, 0)
  loc_13B37FD:             If (var_B2 = &HFF) Then
  loc_13B3813:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B381B:               var_FC = CVar(CLng(&HA)) 'Long
  loc_13B382A:               var_11C = Me.FGrid.TextMatrix)
  loc_13B3860:               var_17C = Me.FGrid.TextMatrix)
  loc_13B387A:               Set var_BC = Me.Txt
  loc_13B3880:               Call 0.Method_TxtGrid_KeyDown0 (CInt(1), var_C0, var_280, var_17C, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_11C)
  loc_13B3888:               var_FC = var_C0.Text
  loc_13B38A0:               var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B38B8:               var_1D0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13B3903:               var_22C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B390B:               var_24C = CVar(CLng(0)) 'Long
  loc_13B3961:               Call Proc_30_92_1558D30(CStr(var_11C), CStr(var_17C), var_280, CInt(Val(CStr(Me.FGrid.TextMatrix)))), CInt(CLng(Me.FGrid.Row)), CInt(Val(CStr(Me.FGrid.TextMatrix)))), var_CA, Val(CStr(Me.FGrid.TextMatrix))))
  loc_13B39A8:               If var_CA Then
  loc_13B39AB:               End If
  loc_13B39BD:               Me.FGrid.Col = CVar(CLng(7))
  loc_13B3A0F:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_126, CByte((CInt(9) - 1)), 0, 0)
  loc_13B3A32:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B3A3A:               var_FC = CVar(CLng(1)) 'Long
  loc_13B3A6D:               If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13B3A83:                 var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B3A8B:                 var_FC = CVar(CLng(1)) 'Long
  loc_13B3A9E:                 Set var_90 = Me.FGrid
  loc_13B3AA4:                 LateIdCallSt
  loc_13B3AC9:                 var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B3AD1:                 var_FC = CVar(CLng(2)) 'Long
  loc_13B3AE4:                 Set var_90 = Me.FGrid
  loc_13B3AEA:                 LateIdCallSt
  loc_13B3AFC:               End If
  loc_13B3AFF:               var_DC = CVar(CLng(3)) 'Long
  loc_13B3B0E:               Me.FGrid.Col = var_DC
  loc_13B3B16:             End If
  loc_13B3B16:           End If
  loc_13B3B19:         Else
  loc_13B3B20:           If (var_B0 = CLng(9)) Then
  loc_13B3B63:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_126 = &HFF))) Then
  loc_13B3B6C:               Call Proc_30_91_18485CC(KeyCode, var_B2, var_90, global_72, var_FC, var_DC, var_90)
  loc_13B3B77:               If (var_B2 = &HFF) Then
  loc_13B3BBD:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_126, 9, 0, 0)
  loc_13B3BCD:               End If
  loc_13B3BCD:             End If
  loc_13B3BCD:           End If
  loc_13B3BCD:         End If
  loc_13B3BCD:       End If
  loc_13B3BCD:     End If
  loc_13B3BCD:   End If
  loc_13B3BCD: End If
  loc_13B3BCD: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10AA304
  'Data Table: 58908C
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As MSHFlexGrid
  Dim var_A4 As String
  loc_10AA037: Proc_6_58_E06050(arg_10)
  loc_10AA048: If (KeyAscii = 0) Then
  loc_10AA05E:   var_A0 = CLng(Me.FGrid.Col)
  loc_10AA06E:   If (var_A0 = CLng(4)) Then
  loc_10AA08D:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10AA09F:       var_A4 = "Name"
  loc_10AA0BA:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_84, arg_10)
  loc_10AA0EC:       Proc_6_138_106E830(Me.DGItem, global_84, KeyAscii, Me.FGPoint)
  loc_10AA0FA:     End If
  loc_10AA0FD:   Else
  loc_10AA104:     If (var_A0 = CLng(2)) Then
  loc_10AA123:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_10AA150:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_100, arg_10, "Name")
  loc_10AA182:         Proc_6_138_106E830(Me.DGRest, global_100, KeyAscii, Me.FGPoint, 0)
  loc_10AA190:       End If
  loc_10AA193:     Else
  loc_10AA19A:       If (var_A0 = CLng(3)) Then
  loc_10AA1B8:         If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_10AA1CD:           Me.FGrid.Col = CVar(CLng(4))
  loc_10AA1F1:           If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10AA21E:             Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_84, arg_10, "Name")
  loc_10AA22D:           End If
  loc_10AA22D:         End If
  loc_10AA230:       Else
  loc_10AA237:         If (var_A0 = CLng(7)) Then
  loc_10AA25E:           Set var_AC = Me.FGrid
  loc_10AA26F:           var_A4 = CStr(var_AC.TextMatrix))
  loc_10AA28D:           If (CDbl(Val(var_A4)) = CDbl(0)) Then
  loc_10AA29A:             Set var_8C = Me.TxtGrid
  loc_10AA2A0:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), 0)
  loc_10AA2BB:             Proc_6_42_129B55C(var_AC, arg_10, 4, 2)
  loc_10AA2CA:           Else
  loc_10AA2D4:             Set var_8C = Me.TxtGrid
  loc_10AA2DA:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_10AA2F5:             Proc_6_42_129B55C(var_AC, arg_10, 4, 0)
  loc_10AA301:           End If
  loc_10AA301:         End If
  loc_10AA301:       End If
  loc_10AA301:     End If
  loc_10AA301:   End If
  loc_10AA301: End If
  loc_10AA301: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1098CD4
  'Data Table: 58908C
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_1098A30: On Error Goto loc_1098CCD
  loc_1098A36: var_86 = KeyCode
  loc_1098A3F: If (var_86 = 0) Then
  loc_1098A55:   var_A0 = CLng(Me.FGrid.Col)
  loc_1098A65:   If (var_A0 = CLng(2)) Then
  loc_1098A8B:     If ((Shift <> &HD) And (CBool(Me.DGRest.Visible) = 0)) Then
  loc_1098A9C:       Call TxtGrid_KeyDown(KeyCode, global_124)
  loc_1098ACB:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_100, Shift, "Name")
  loc_1098ADA:     End If
  loc_1098ADD:   Else
  loc_1098AE4:     If (var_A0 = CLng(4)) Then
  loc_1098B0A:       If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_1098B1B:         Call TxtGrid_KeyDown(KeyCode, global_124)
  loc_1098B24:         Set var_AC = Me.TxtGrid
  loc_1098B2F:         var_A8 = "Name"
  loc_1098B4A:         Proc_6_89_1470B00(var_AC, KeyCode, global_84, Shift, var_A8, &HFF)
  loc_1098B59:       End If
  loc_1098B5C:     Else
  loc_1098B63:       If (var_A0 = CLng(9)) Then
  loc_1098B70:         Set var_B0 = Me.TxtGrid
  loc_1098B76:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_B4, 0, &HFF)
  loc_1098B88:         Set var_8C = Me.TxtGrid
  loc_1098B8E:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8)
  loc_1098B96:         0 = var_AC.Text
  loc_1098BF9:         If CBool((Len(var_A8) = 0) Or (Ucase(Mid(CVar(var_B4), 1, 1)) = "Y")) Then
  loc_1098C09:           Set var_8C = Me.TxtGrid
  loc_1098C0F:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, "Yes")
  loc_1098C17:           var_AC.Text = var_A0
  loc_1098C26:         Else
  loc_1098C30:           Set var_8C = Me.TxtGrid
  loc_1098C36:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1098C78:           If (Ucase(Mid(CVar(var_AC), 1, 1)) = "N") Then
  loc_1098C88:             Set var_8C = Me.TxtGrid
  loc_1098C8E:             Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1098C96:             var_AC.Text = "No"
  loc_1098CA5:           Else
  loc_1098CB2:             Set var_8C = Me.TxtGrid
  loc_1098CB8:             Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1098CC0:             var_AC.Text = "Yes"
  loc_1098CCC:           End If
  loc_1098CCC:         End If
  loc_1098CCC:       End If
  loc_1098CCC:     End If
  loc_1098CCC:   End If
  loc_1098CCC: End If
  loc_1098CCC: Exit Sub
  loc_1098CCD: ' Referenced from: 1098A30
  loc_1098CCD: Proc_6_60_E63754(var_86)
  loc_1098CD2: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23EB8
  'Data Table: 58908C
  Dim arg_10 As Integer
  loc_E23EA0: If (Cancel = 0) Then
  loc_E23EA9:   Call Proc_30_91_18485CC(Cancel, var_88)
  loc_E23EB2:   arg_10 = Not(var_88)
  loc_E23EB5: End If
  loc_E23EB5: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'FE6D00
  'Data Table: 58908C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE6B3B: Me.DGRest.Visible = False
  loc_FE6B5A: If (Me.RecordCount > 0) Then
  loc_FE6B97:   Set var_B4 = Me.TxtGrid
  loc_FE6B9D:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B8)
  loc_FE6BA5:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE6BCE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE6BD6:   var_EC = CVar(CLng(2)) 'Long
  loc_FE6C09:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE6C11:   Set var_B8 = Me.FGrid
  loc_FE6C17:   LateIdCallSt
  loc_FE6C46:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE6C4E:   var_EC = CVar(CLng(1)) 'Long
  loc_FE6C70:   var_B0 = Me.Fields.Item("Code")
  loc_FE6C81:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE6C89:   Set var_B8 = Me.FGrid
  loc_FE6C8F:   LateIdCallSt
  loc_FE6CAB: End If
  loc_FE6CB7: Set var_A8 = Me.TxtGrid
  loc_FE6CBD: Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE6CC5: var_A4 = var_B0.Visible
  loc_FE6CD7: If (var_12E = &HFF) Then
  loc_FE6CE3:   Set var_A8 = Me.TxtGrid
  loc_FE6CE9:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE6CF1:   var_B0.SetFocus
  loc_FE6CFD: End If
  loc_FE6CFD: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E7675C
  'Data Table: 58908C
  loc_E7671A: Proc_6_153_E91D24(Me.DGRest, arg_14)
  loc_E76731: Set var_8C = Me.FGPoint
  loc_E7674B: Proc_6_138_106E830(Me.DGRest, global_100, 0)
  loc_E76759: Exit Sub
  loc_E7675A: GoTo loc_E77B04
End Sub

Private Sub lblclr_Click() 'F14BC8
  'Data Table: 58908C
  Dim arg_20 As Variant
  Dim var_B4 As Variant
  loc_F14AE2: arg_20 = Me.cdl._Action
  loc_F14B0A: Me.lblclr.BackColor = CLng(Me.cdl.Color)
  loc_F14B3E: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F14B48:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_F14B80:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_F14BAE:     Proc_96_0_E6CA28(Me.FGrid, var_86, Me.lblclr.BackColor, CVar(CLng(&HB)))
  loc_F14BBC:   End If
  loc_F14BBF: Next var_A4 'Integer
  loc_F14BC4: Exit Sub
  loc_F14BC5:  = 
End Sub

Private Sub Timer2_Timer() '101AE04
  'Data Table: 58908C
  Dim var_88 As Variant
  Dim var_A0 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  loc_101ABE8: Set var_88 = Me.TopCtrl1
  loc_101ABEE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_101AC02: Set var_A0 = Me.TopCtrl1
  loc_101AC08: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005((CStr() = "Edit"))
  loc_101AC2E: If ( Or (CStr() = "Add")) Then
  loc_101AC3C:   If (global_276 = "Go") Then
  loc_101AC4B:     Me.FrmeDisc.Visible = True
  loc_101AC5D:     Me.txtDisc.SetFocus
  loc_101AC7B:     Me.FrmeDisc.Width = CDbl((global_270 * 480))
  loc_101AC98:     Me.FrmeDisc.Height = CDbl((global_270 * &H3C))
  loc_101ACAE:     If ((global_270 * 250) > 2700) Then
  loc_101ACBD:       Me.Timer2.Enabled = False
  loc_101ACCB:       global_276 = vbNullString
  loc_101ACCF:     End If
  loc_101ACDB:     global_270 = (global_270 + 1)
  loc_101ACDE:   End If
  loc_101ACE9:   If (global_276 = "Back") Then
  loc_101ACF8:     global_270 = (global_270 - 1)
  loc_101AD11:     Me.FrmeDisc.Width = CDbl((global_270 * 480))
  loc_101AD2E:     Me.FrmeDisc.Height = CDbl((global_270 * &H3C))
  loc_101AD3F:     If (global_270 = 0) Then
  loc_101AD55:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_101AD5D:       var_E4 = CVar(CLng(6)) 'Long
  loc_101AD77:       var_B0 = CVar(Me.txtDisc.Text) 'String
  loc_101AD7F:       Set var_108 = Me.FGrid
  loc_101AD85:       LateIdCallSt
  loc_101ADB3:       Me.FGrid.Col = CVar(CLng(global_272))
  loc_101ADBF:       Set var_88 = Me.FGrid
  loc_101ADDC:       Me.Timer2.Enabled = False
  loc_101ADEA:       global_276 = vbNullString
  loc_101ADFA:       Me.FrmeDisc.Visible = False
  loc_101AE02:     End If
  loc_101AE02:   End If
  loc_101AE02: End If
  loc_101AE02: Exit Sub
End Sub

Private Sub CmdFreeItem_UnknownEvent_9 '110E568
  'Data Table: 58908C
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_120 As Variant
  Dim var_148 As TextBox
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_130 As Variant
  Dim var_228 As Variant
  loc_110E258: Set var_88 = Me.TopCtrl1
  loc_110E25E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_110E277: If (CStr() = "Browse") Then
  loc_110E27A:   Exit Sub
  loc_110E27B: End If
  loc_110E28E: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110E296: var_CC = CVar(CLng(&HA)) 'Long
  loc_110E2C9: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_110E2CC:   Exit Sub
  loc_110E2CD: End If
  loc_110E2E0: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110E2E8: var_CC = CVar(CLng(9)) 'Long
  loc_110E32A: If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "FREE") Then
  loc_110E340:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110E348:   var_CC = CVar(CLng(9)) 'Long
  loc_110E34D:   var_120 = "No"
  loc_110E357:   Set var_E0 = Me.FGrid
  loc_110E35D:   LateIdCallSt
  loc_110E393:   Set var_E0 = Me.FGrid
  loc_110E399:   var_F0 = var_E0.TextMatrix)
  loc_110E3B3:   Set var_144 = Me.Txt
  loc_110E3B9:   Call 0.Method_CmdFreeItem_UnknownEvent_90 (CInt(1), var_148, var_174, var_F0, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_E0)
  loc_110E3C1:   var_120 = var_148.Text
  loc_110E416:   Call Proc_30_105_F22F70(CStr(var_F0), var_174, CStr(Me.FGrid.TextMatrix)), var_184, Me.FGrid.TextMatrix), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)))
  loc_110E42E:   var_1E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110E436:   var_208 = CVar(CLng(8)) 'Long
  loc_110E463:   var_228 = CVar(CStr(Format(CVar(var_184), "0.00"))) 'String
  loc_110E46B:   Set var_23C = Me.FGrid
  loc_110E471:   LateIdCallSt
  loc_110E4AD: Else
  loc_110E4C0:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110E4C8:   var_CC = CVar(CLng(9)) 'Long
  loc_110E4CD:   var_120 = "Free"
  loc_110E4D7:   Set var_E0 = Me.FGrid
  loc_110E4DD:   LateIdCallSt
  loc_110E502:   var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110E50A:   var_120 = CVar(CLng(8)) 'Long
  loc_110E53B:   var_130 = CVar(CStr(Format("0.01", "0.00"))) 'String
  loc_110E543:   Set var_E0 = Me.FGrid
  loc_110E549:   LateIdCallSt
  loc_110E565: End If
  loc_110E565: Exit Sub
End Sub

Private Sub Form_Load() '15B62B0
  'Data Table: 58908C
  Dim var_A0 As Variant
  Dim var_C8 As Variant
  Dim var_B8 As String
  Dim var_D8 As Variant
  Dim var_E0 As String
  Dim var_E4 As String
  Dim var_E8 As String
  Dim unk_5890AB As Connection15
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_B0 As Variant
  Dim var_DC As Variant
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_FC As Variant
  Dim var_120 As Variant
  Dim unk_58917C As Connection15
  Dim var_88 As Recordset15
  Dim var_1C0 As Integer
  Dim var_110 As Fields15
  Dim var_1C4 As Field20
  Dim var_160 As Variant
  Dim var_180 As String
  Dim var_130 As Variant
  loc_15B5030: On Error Goto loc_15B62A9
  loc_15B5045: Set var_B4 = Me.TopCtrl1
  loc_15B504B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_15B5059: Call 0.Method_arg_50 (var_B8)
  loc_15B5061: var_C8 = CVar(var_B8) 'String
  loc_15B5069: Set var_B4 = Me.TopCtrl1
  loc_15B506F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_C8)
  loc_15B5080: If (MemVar_1F950B8 <> 1) Then
  loc_15B5087:   Set var_B4 = Me.TopCtrl1
  loc_15B508D:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(1)
  loc_15B50B7:   var_D8 = CVar(Replace(CStr(var_C8), "D", "*", 1, -1, 0)) 'String
  loc_15B50BF:   Set var_DC = Me.TopCtrl1
  loc_15B50C5:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(var_D8)
  loc_15B50DB: End If
  loc_15B50FD: var_E4 = "SELECT EditItemInKOT,FreeItemAllow FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' And CompCode='" & MemVar_1F95128
  loc_15B511B: unk_5890AB.Execute var_E4 & "' And UserName='" & MemVar_1F950C8 & "'", var_C8, -1
  loc_15B512C: Set global_228 = var_B4
  loc_15B5160: If (Me.RecordCount > 0) Then
  loc_15B517D:   var_DC = Me.Fields.Item("EditItemInKOT")
  loc_15B5185:   var_C8 = CVar(var_DC) 'Address
  loc_15B5194:   global_192 = Proc_6_38_E69628(var_C8)
  loc_15B51A7:   var_B0 = 0
  loc_15B51D7:   unk_5890AB.Execute "Select FreeItemApp from depart where Code='" & LocalRestCode & "'", var_C8, -1
  loc_15B51E7:   var_B0 = var_DC.Item(var_DC)
  loc_15B51EF:   var_F8 = var_F8.Value
  loc_15B521E:   var_110 = Me.Fields.Item("FreeItemAllow")
  loc_15B5257:   If (var_B4.Fields And (Proc_6_38_E69628(CVar(var_110), (Proc_6_38_E69628(var_D8, var_D8) = "Yes")) = "Yes")) Then
  loc_15B5262:     Set var_B4 = Me.CmdFreeItem
  loc_15B5268:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(True)
  loc_15B5270:   End If
  loc_15B5270: End If
  loc_15B5294: unk_5890AB.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_C8, -1
  loc_15B52A5: Set global_228 = var_B4
  loc_15B52F1: global_76 = LocalRestCode
  loc_15B5321: var_E8 = "Select * from PrinterSetup where SITE_CODE='" & MemVar_1F95078 & "' AND RestCode='" & LocalRestCode & "' And ModType='KOT'"
  loc_15B532A: unk_58917C.Execute var_E8, var_C8, -1
  loc_15B533B: Set global_204 = var_B4
  loc_15B5362: var_C8 = Trim(global_68)
  loc_15B5375: If CBool(var_C8 <> "Room Service") Then
  loc_15B538B:   Call 0.Method_Form_Load0 (CInt(7), var_DC, 0, Me.Label1)
  loc_15B5393:   var_DC.Visible = Proc_96_17_FDCB2C(LocalRestCode, global_68, 0)
  loc_15B53AC:   Set var_B4 = Me.Label1
  loc_15B53B2:   Call 0.Method_Form_Load0 (CInt(8), var_DC, 0)
  loc_15B53BA:   var_DC.Visible = global_72
  loc_15B53D3:   Set var_B4 = Me.Label1
  loc_15B53D9:   Call 0.Method_Form_Load0 (CInt(9), var_DC, 0)
  loc_15B53E1:   var_DC.Visible = global_80
  loc_15B53FA:   Set var_B4 = Me.Txt
  loc_15B5400:   Call 0.Method_Form_Load0 (CInt(8), var_DC)
  loc_15B5408:   var_DC.Visible = False
  loc_15B5421:   Set var_B4 = Me.Txt
  loc_15B5427:   Call 0.Method_Form_Load0 (CInt(9), var_DC)
  loc_15B542F:   var_DC.Visible = False
  loc_15B5448:   Set var_B4 = Me.Txt
  loc_15B544E:   Call 0.Method_Form_Load0 (CInt(&HA), var_DC)
  loc_15B5456:   var_DC.Visible = False
  loc_15B5462: End If
  loc_15B5468: var_B0 = 0
  loc_15B5498: unk_5890AB.Execute "Select AutoSplit from depart where Code='" & LocalRestCode & "'", var_C8, -1
  loc_15B54A0: var_B4 = var_B4.Fields
  loc_15B54A8: var_B0 = var_DC.Item(var_DC)
  loc_15B54B0: var_F8 = var_F8.Value
  loc_15B54C3: global_232 = Proc_6_38_E69628(var_D8, var_D8)
  loc_15B54E6: var_B0 = 0
  loc_15B5516: unk_5890AB.Execute "Select OpenItemYN from depart where Code='" & LocalRestCode & "'", var_C8, -1
  loc_15B551E: var_B4 = var_B4.Fields
  loc_15B5526: var_B0 = var_DC.Item(var_DC)
  loc_15B552E: var_F8 = var_F8.Value
  loc_15B5541: global_168 = Proc_6_38_E69628(var_D8, var_D8)
  loc_15B5564: var_B0 = 0
  loc_15B5599: var_E8 = "Select Name From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Code ='" & LocalRestCode & "'"
  loc_15B55A2: unk_5890AB.Execute var_E8, var_C8, -1
  loc_15B55AA: var_B4 = var_B4.Fields
  loc_15B55B2: var_B0 = var_DC.Item(var_DC)
  loc_15B55BA: var_F8 = var_F8.Value
  loc_15B55D0: Me.LblRest.Caption = CStr(var_D8)
  loc_15B55FE: Set global_100 = New 
  loc_15B5610: Me.Recordset15.CursorLocation = 3
  loc_15B565B: var_120 = (Me.Fields.Item("MultiBillGeneration").Value = "Yes") And (global_232 = "Yes")
  loc_15B566F: If CBool(var_120) Then
  loc_15B5697:   var_E0 = "SELECT CODE ,ShortName as NAME,Name as Restaurant FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' And Code In (Select AssociatedRestCode From Depart1 Where DepartCode='"
  loc_15B56B6:   var_C8 = CVar(var_E0 & LocalRestCode & "' And LOGSITE_CODE='" & MemVar_1F95078 & "' And IsNull(AssociatedRestCode,'')<>'') ORDER BY NAME") 'String
  loc_15B56C0:   Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_15B56D8: Else
  loc_15B56FD:   var_C8 = CVar("SELECT CODE ,ShortName as NAME,Name as Restaurant FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' ORDER BY NAME") 'String
  loc_15B5707:   Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_15B5712: End If
  loc_15B571B: CVarUnk
  loc_15B5720: VerifyVarObj
  loc_15B5726: Set var_B4 = Me.DGRest
  loc_15B572C: LateIdStAd
  loc_15B5744: Set global_200 = New 
  loc_15B5756: Me.DGRest.CursorLocation = 3
  loc_15B578A: var_E4 = "select MemberInfo from Depart where (Logsite_code='" & MemVar_1F95078 & "'or LOGSITE_CODE='HO') and Code='" & LocalRestCode
  loc_15B579B: Me.Open CVar(var_E4 & "'"), CVar(MemVar_1F95044), 3
  loc_15B57C3: If (Me.RecordCount > 0) Then
  loc_15B57D8:   var_B4 = Me.Fields
  loc_15B57E0:   var_DC = var_B4.Item("MemberInfo")
  loc_15B57E8:   var_C8 = CVar(var_DC) 'Address
  loc_15B57F1:   var_B8 = Proc_6_38_E69628(var_C8, 1, -1, var_B4, global_100, 1)
  loc_15B5802:   If ("select MemberInfo from Depart where (Logsite_code='" & MemVar_1F95078 = "Y") Then
  loc_15B5812:     Set var_B4 = Me.Txt
  loc_15B5818:     Call 0.Method_Form_Load0 (CInt(&HB), var_DC, &HFF, -1)
  loc_15B5820:     var_DC.Visible = True
  loc_15B5837:     Set var_B4 = Me.Label1
  loc_15B583D:     Call 0.Method_Form_Load0 (&HB, var_DC, &HFF)
  loc_15B5845:     var_DC.Visible = True
  loc_15B585E:     Set var_B4 = Me.Txt
  loc_15B5864:     Call 0.Method_Form_Load0 (CInt(&HC), var_DC, &HFF)
  loc_15B586C:     var_DC.Visible = var_D8
  loc_15B5895:     Proc_6_17_EAAE40(var_C8, MemVar_1F95078, "SELECT * FROM MEMENVIRO WHERE LOGSITE_CODE=", var_120)
  loc_15B589D:     var_D8 = -1 & var_C8 
  loc_15B58AB:     unk_5890AB.Execute CStr(var_D8), var_B4, var_B4
  loc_15B58B6:     Set var_88 = var_B4
  loc_15B58DC:     If (var_88.RecordCount > 0) Then
  loc_15B590D:       global_188 = Proc_6_38_E69628(CVar(var_88.Fields.Item("MemberVarificationInKOT")))
  loc_15B591A:     End If
  loc_15B591A:   End If
  loc_15B591A: End If
  loc_15B5924: Set global_196 = New 
  loc_15B5936: Me.CursorLocation = 3
  loc_15B5960: var_E0 = "Select SubCode as Code,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_15B5978: Me.Open CVar(var_E0 & MemVar_1F95078 & "') Order By Name"), CVar(MemVar_1F95044), 3
  loc_15B5992: CVarUnk
  loc_15B5997: VerifyVarObj
  loc_15B599D: Set var_B4 = Me.DGMember
  loc_15B59A3: LateIdStAd
  loc_15B59BB: Set global_84 = New 
  loc_15B59CD: Me.DGMember.CursorLocation = 3
  loc_15B59EF: var_DC = Me.Fields.Item("MultiBillGeneration")
  loc_15B5A2C: If CBool((var_DC.Value = "Yes") And (global_232 = "Yes")) Then
  loc_15B5A4D:   var_B8 = "Select I.Code,I.Name as Name,I.Unit,IsNull(U.PriceType,0) As PriceType,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode,D.ShortName,I.Kitchen From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_15B5A54:   var_E0 = var_B8 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 And I.RestCode In (Select AssociatedRestCode From Depart1 Where DepartCode='"
  loc_15B5A73:   var_C8 = CVar(var_E0 & LocalRestCode & "' And LOGSITE_CODE='" & MemVar_1F95078 & "' And IsNull(AssociatedRestCode,'')<>'') Order by I.Name") 'String
  loc_15B5A7D:   Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_15B5A95: Else
  loc_15B5AB3:   var_B8 = "Select I.Code,I.Name as Name,I.Unit,IsNull(U.PriceType,0) As PriceType,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode,I.Kitchen From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_15B5ABA:   var_C8 = CVar(var_B8 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by I.Name") 'String
  loc_15B5AC4:   Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_15B5ACF: End If
  loc_15B5AD8: CVarUnk
  loc_15B5ADD: VerifyVarObj
  loc_15B5AE3: Set var_B4 = Me.DGItem
  loc_15B5AE9: LateIdStAd
  loc_15B5B13: Me.DGItem.CursorLocation = 3
  loc_15B5B3B: Me.Open "SELECT NCType,NcPer FROM NCTypeMast ORDER BY NCType", CVar(MemVar_1F95044), 3
  loc_15B5B49: CVarUnk
  loc_15B5B4E: VerifyVarObj
  loc_15B5B54: Set var_B4 = Me.DGNCType
  loc_15B5B5A: LateIdStAd
  loc_15B5B84: Me.DGNCType.CursorLocation = 3
  loc_15B5BAE: var_C8 = CVar("Select W.Code,W.Name As Name From Waiter W wHERE IsNull(W.ActiveYN,'')<>'No' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by W.Name") 'String
  loc_15B5BCC: CVarUnk
  loc_15B5BD1: VerifyVarObj
  loc_15B5BD7: Set var_B4 = Me.DGWaiter
  loc_15B5BDD: LateIdStAd
  loc_15B5BEB: Call Proc_30_102_1265798(var_B4, New, 1, -1, var_B4, New, 1)
  loc_15B5BFA: Set global_88 = New 
  loc_15B5C0C: Me.DGWaiter.CursorLocation = 3
  loc_15B5C1C: Proc_6_7_F26918(var_C8, MemVar_1F950EC, -1, var_B4, global_84)
  loc_15B5C27: var_10C = 0
  loc_15B5C57: unk_5890AB.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_130, -1
  loc_15B5C5F: var_B4 = var_B4.Fields
  loc_15B5C67: var_10C = var_DC.Item(var_DC)
  loc_15B5C6F: var_F8 = var_F8.Value
  loc_15B5C7A: var_1C0 = 0
  loc_15B5C9A: var_E8 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_15B5CAA: unk_5890AB.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & LocalRestCode & "' And LOGSITE_CODE='" & "'", var_1B0, -1
  loc_15B5CB2: var_FC = var_FC.Fields
  loc_15B5CBA: var_1C0 = var_110.Item(var_110)
  loc_15B5CC2: var_1C4 = var_1C4.Value
  loc_15B5CE5: var_B8 = "Select Distinct K.DocId as SearchCode,K.DocID,K.RESTCODE,K.SITE_CODE,K.LOGSITE_CODE  From KOT K WHERE   LOGSITE_CODE='" & MemVar_1F95078
  loc_15B5CEC: var_D8 = CVar(var_B8 & "' AND (K.Pending='Y'  AND NCKOT='N'  And DelFlag NOT IN ('Y') OR DelFlag IS NULL) OR (K.VDate=") 'String
  loc_15B5CFE: var_160 = (" And DelFlag NOT IN ('Y') OR DelFlag IS NULL) AND (K.VType='K" + var_140)
  loc_15B5D26: r_C8, CVar(MemVar_1F95044), 3 var_D8 & var_C8 & var_160 & "' OR K.VType='" & var_1D4 & "') Order by Docid", CVar(MemVar_1F95044), 3
  loc_15B5D6C: var_B8 = "RESTCODE='" & LocalRestCode
  loc_15B5D73: var_C8 = CVar(var_B8 & "'") 'String
  loc_15B5D7D: Me.Filter = var_C8
  loc_15B5DAD: Call 0.Method_arg_50 (var_B8, "SELECT COUNT(*) FROM LASTVOU WHERE  ENAME='", var_C8, -1, var_B4, var_DC, 0, var_F8)
  loc_15B5DD4: unk_5890AB.Execute var_D8 & var_B8 & "' AND UNAME='" & MemVar_1F950C8 & "'", 1, -1
  loc_15B5DDC: var_1D4 = var_B4.Fields
  loc_15B5DE4: 1 = var_DC.Item(var_140)
  loc_15B5DEC: -1 = var_F8.Value
  loc_15B5E19: If (var_D8 > 0) Then
  loc_15B5E54:   Call 0.Method_arg_50 (var_B8, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_C8, -1, var_B4, var_DC, 0)
  loc_15B5E7B:   unk_5890AB.Execute var_F8 & var_B8 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_D8, "SearchCode='"
  loc_15B5E83:   0 = var_B4.Fields
  loc_15B5E8B:   var_180 = var_DC.Item(1)
  loc_15B5E93:    = var_F8.Value
  loc_15B5EB2:   Me.Find CStr(var_D8 & "'"), , 
  loc_15B5EDA: End If
  loc_15B5EF1: If (Me.RecordCount > 0) Then
  loc_15B5F08:   If (Me.EOF = &HFF) Then
  loc_15B5F11:     Me.MoveLast
  loc_15B5F16:   End If
  loc_15B5F16: End If
  loc_15B5F1F: Call 0.Method_arg_160 (var_B4)
  loc_15B5F2D: Call 0.Method_arg_164 (var_B4)
  loc_15B5F58: Call Proc_30_97_1010D70(Proc_5_1_100EC1C("INI", Me))
  loc_15B5F79: Proc_6_23_DFC5B8(Me, 0)
  loc_15B5F94: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_15B5FA3: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), 0)
  loc_15B5FB6: Me.FrKOT.BackColor = CLng(MemVar_1F951B4)
  loc_15B5FCC: Me.ChkNCKOT.BackColor = CLng(MemVar_1F951B4)
  loc_15B5FE7: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_15B6002: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_15B6018: Me.LblPendingKot.BackColor = CLng(MemVar_1F951B4)
  loc_15B602E: Me.LblPendingKotItem.BackColor = CLng(MemVar_1F951B4)
  loc_15B6045: Me.LblUser.Left = CDbl(13500)
  loc_15B605C: Me.LblUser.Top = CDbl(7700)
  loc_15B6073: Me.LblLDt.Top = CDbl(8060)
  loc_15B608A: Me.LblLDt.Left = CDbl(13500)
  loc_15B609F: Me.LblCurStockStr.Caption = vbNullString
  loc_15B60A7: Call Proc_30_77_1312E6C(global_88)
  loc_15B60AC: Call Proc_30_78_1058390()
  loc_15B60B1: Call Proc_30_79_11DE560()
  loc_15B60D8: Me.DGItem.Top = CVar(CDbl(Me.FGrid.Top))
  loc_15B612C: var_A0 = CVar((CDbl(Me.FGrid.Left) + (CDbl(Me.FGrid.Width) - CDbl(Me.DGItem.Width)))) 'Single
  loc_15B613B: Me.DGItem.Left = CVar(CDbl(Me.FGrid.Top))
  loc_15B6176: Me.DGItem.Height = CVar(CDbl(Me.FGrid.Height))
  loc_15B61A7: Me.DGRest.Top = CVar(CDbl(Me.FGrid.Top))
  loc_15B61C0: var_D8 = Me.FGrid.Width
  loc_15B61D3: var_120 = Me.DGRest.Width
  loc_15B61FB: var_A0 = CVar((CDbl(Me.FGrid.Left) + (CDbl(var_D8) - CDbl(var_120)))) 'Single
  loc_15B620A: Me.DGRest.Left = CVar(CDbl(Me.FGrid.Top))
  loc_15B6245: Me.DGRest.Height = CVar(CDbl(Me.FGrid.Height))
  loc_15B6254: Call Proc_30_94_179FC48(var_120, var_D8)
  loc_15B6265: Me.Timer2.Enabled = False
  loc_15B6279: Me.lblclr.Visible = True
  loc_15B628A: Set var_B4 = Me.BtnLblModi
  loc_15B6290: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010007(False)
  loc_15B629D: Set var_90 = Nothing
  loc_15B62A5: Set var_88 = Nothing
  loc_15B62A8: Exit Sub
  loc_15B62A9: ' Referenced from: 15B5030
  loc_15B62A9: Proc_6_60_E63754(var_120)
  loc_15B62AE: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EC47F0
  'Data Table: 58908C
  loc_EC474F: Set global_96 = Nothing
  loc_EC4761: Set global_84 = Nothing
  loc_EC4773: Set global_100 = Nothing
  loc_EC4785: Set global_92 = Nothing
  loc_EC4797: Set global_88 = Nothing
  loc_EC47A9: Set global_220 = Nothing
  loc_EC47BB: Set global_200 = Nothing
  loc_EC47CD: Set global_196 = Nothing
  loc_EC47DF: Set global_204 = Nothing
  loc_EC47EB: MasterFormExit = 0
  loc_EC47EE: Exit Sub
End Sub

Private Sub Form_Activate() 'F90DC8
  'Data Table: 58908C
  Dim var_90 As String
  Dim var_F8 As Variant
  Dim var_D4 As Integer
  Dim var_98 As String
  Dim unk_5890AB As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_108 As Variant
  Dim var_88 As Recordset15
  loc_F90CAF: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_F90CBD: var_F8 = CVar(var_90 & MemVar_1F95078 & "') AND V_Type='") 'String
  loc_F90CC6: var_D4 = 0
  loc_F90CE6: var_98 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_F90CF6: unk_5890AB.Execute var_98 & "'", var_BC, -1
  loc_F90CFE: var_C0 = var_C0.Fields
  loc_F90D06: var_D4 = var_C4.Item(var_C4)
  loc_F90D0E: var_D8 = var_D8.Value
  loc_F90D16: var_108 = var_E8 & var_E8 
  loc_F90D2D: unk_5890AB.Execute CStr(var_108 & "' Order by Description"), var_F8, var_14C
  loc_F90D78: If (var_150.RecordCount > 0) Then
  loc_F90D7B:   GoTo loc_F90DBD
  loc_F90D7E: End If
  loc_F90D97: MsgBox("KOT Not Configured for selected Restaurant", 0, var_E8, var_F8, var_108)
  loc_F90DB4: Me.Global.Unload Me
  loc_F90DBC: Exit Sub
  loc_F90DBD: ' Referenced from: F90D7B
  loc_F90DC2: Set var_88 = Nothing
  loc_F90DC5: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2520C
  'Data Table: 58908C
  loc_E251F1: If (MasterFormExit = &HFF) Then
  loc_E25201:   Me.Global.Unload Me
  loc_E25209: End If
  loc_E25209: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EDECC4
  'Data Table: 58908C
  Dim var_88 As Variant
  loc_EDEC08: On Error Goto loc_EDECBD
  loc_EDEC0F: Set var_88 = Me.TopCtrl1
  loc_EDEC15: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_EDEC2E: If (CStr() = "Edit") Then
  loc_EDEC42:   If ((CLng(KeyCode) = &H4D) And (Shift = 2)) Then
  loc_EDEC53:     Me.FrmeDisc.Width = CDbl(1)
  loc_EDEC69:     Me.FrmeDisc.Height = CDbl(1)
  loc_EDEC76:     global_270 = 1
  loc_EDEC7F:     global_276 = "Go"
  loc_EDEC8F:     Me.Timer2.Enabled = True
  loc_EDEC97:   End If
  loc_EDEC97: End If
  loc_EDEC97: Call Proc_30_83_119C298(global_270)
  loc_EDECB4: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_EDECBC: Exit Sub
  loc_EDECBD: ' Referenced from: EDEC08
  loc_EDECBD: Proc_6_60_E63754(Shift)
  loc_EDECC2: Exit Sub
End Sub

Public Function MasterFormExitGet() '58B804
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '58B813
  MasterFormExit = Value
End Sub

Public Function LocalRestCodeGet() '58B822
  LocalRestCodeGet = LocalRestCode
End Function

Public Sub LocalRestCodePut(Value) '58B831
  LocalRestCode = Value
End Sub

Public Function SpecialRateGet() '58B840
  SpecialRateGet = SpecialRate
End Function

Public Sub SpecialRatePut(Value) '58B84F
  SpecialRate = Value
End Sub

Public Property Let PTableNo(vNewValue) 'E1410C
  'Data Table: 58908C
  loc_E14104: global_256 = vNewValue
  loc_E14108: Exit Sub
End Sub

Public Property Get PTableNo() 'E142BC
  'Data Table: 58908C
  loc_E142B0: var_88 = global_256
  loc_E142B3: PTableNo = 
  loc_E142B9: Set var_88 = 
End Sub

Public Property Let pRestCode(vNewValue) 'E143DC
  'Data Table: 58908C
  loc_E143D4: global_260 = vNewValue
  loc_E143D8: Exit Sub
End Sub

Public Property Get pRestCode() 'E151A4
  'Data Table: 58908C
  loc_E15198: var_88 = global_260
  loc_E1519B: pRestCode = 
End Sub

Public Property Get OpenMode() 'E07910
  'Data Table: 58908C
  loc_E07909: OpenMode = global_252
End Sub

Public Property Let OpenMode(vNewValue) 'E028F0
  'Data Table: 58908C
  loc_E028EA: global_252 = vNewValue
  loc_E028ED: Exit Sub
End Sub

Public Property Let PSteward(vNewValue) 'E11604
  'Data Table: 58908C
  loc_E115FC: global_264 = vNewValue
  loc_E11600: Exit Sub
End Sub

Public Property Get PSteward() 'E14D6C
  'Data Table: 58908C
  loc_E14D60: var_88 = global_264
  loc_E14D63: PSteward = 
End Sub

Public Sub SEARCHBACK(MyValue) 'E94D50
  'Data Table: 58908C
  Dim Me As Recordset15
  loc_E94CDE: On Error Goto loc_E94D47
  loc_E94CE7: Me.MoveFirst
  loc_E94D11: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94D39: Proc_5_0_1107AD0(&HFF, Me, global_88)
  loc_E94D41: Call Proc_30_94_179FC48(0)
  loc_E94D46: Exit Sub
  loc_E94D47: ' Referenced from: E94CDE
  loc_E94D47: Proc_6_60_E63754(var_A0)
  loc_E94D4C: Exit Sub
  loc_E94D4D: Result  End Sub 'Currency
End Sub

Public Sub KOTMessage(DocID, MsgType, RestCode) '14A2DF0
  'Data Table: 58908C
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_1AC As String
  Dim unk_5890AB As Connection15
  Dim var_1D0 As Variant
  Dim var_1D4 As Variant
  Dim var_1E8 As Variant
  Dim var_1FC As String
  Dim var_B8 As Recordset15
  Dim var_A0 As Recordset15
  Dim var_E8 As Variant
  Dim var_1CC As Variant
  Dim var_230 As Fields15
  Dim var_2BC As String
  Dim var_1F8 As Variant
  Dim var_BC As Recordset15
  Dim var_20C As TextBox
  loc_14A21B8: On Error Goto loc_14A2DE7
  loc_14A21E7: Proc_6_17_EAAE40(var_E8, MsgType, "Select IsNull(Max(MobileNo),'') from EmailSMSForward WHERE Type=", var_1CC, -1)
  loc_14A2215: var_188 = var_1D0 & var_E8 & " And FlagType='POS' And DepartCode='" & CVar(MemVar_1F95078) & "RS' And LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_14A222C: unk_5890AB.Execute CStr(var_188 & "'"), var_1D4, 0
  loc_14A223C:  = var_1D4.Item(var_1F8)
  loc_14A2244:  = var_1D0.Fields.Value
  loc_14A224D: var_AC = CStr(var_1F8)
  loc_14A229D: Proc_6_17_EAAE40(var_E8, MsgType, "Select IsNull(Max(TxtMsg),'') from EmailSMSForward WHERE Type=", var_1CC, -1)
  loc_14A22D4: var_1A8 = var_1D0 & var_E8 & " And FlagType='POS' And DepartCode='" & CVar(RestCode) & "' And LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'" 
  loc_14A22E2: unk_5890AB.Execute CStr(var_1A8), var_1D4, 0
  loc_14A22EA: var_1E8 = var_1D0.Fields
  loc_14A22F2:  = var_1D4.Item(var_1F8)
  loc_14A22FA:  = var_1E8.Value
  loc_14A233D: If Not(((Len(CStr(var_1F8)) <> 0) And (Len(var_AC) >= &HA))) Then
  loc_14A2340:   Exit Sub
  loc_14A2341: End If
  loc_14A2348: var_1AC = "Select DISTINCT K.Vtype,k.Vtime,K.VNo,K.VDate,S.CardNo,S.Name As MemName,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT,K.NCTYPE,K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt,K.U_AE,K.U_Name,K.TokenNo " & "From (((KOT K Left Join Waiter W on K.Waiter=W.Code) left join SubGroup S On K.Party=S.SubCode) Left Join Depart D on D.Code=K.RestCode) "
  loc_14A235D: var_88 = var_1AC & "Where K.DocID='" & DocID & "'"
  loc_14A2387: Set var_1D0 = Me.Txt
  loc_14A238D: Call 0.Method_KOTMessage0 (CInt(4), var_1D4, var_1AC, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='")
  loc_14A2395: var_E8 = var_1D4.Text
  loc_14A239E: var_1FC = -1 & var_1AC
  loc_14A23AE: unk_5890AB.Execute var_1AC & "Where K.DocID='" & "' AND CONTRADOCID IS NULL", var_1E8, 
  loc_14A23E5: If (var_1E8.RecordCount = 1) Then
  loc_14A23EB:   var_B0 = "New Order"
  loc_14A23F1: Else
  loc_14A23F8:   Set var_1D0 = Me.LblState
  loc_14A2406:   var_B0 = var_1D0.Caption
  loc_14A240C: End If
  loc_14A2422: unk_5890AB.Execute var_88, var_E8, -1
  loc_14A242D: Set var_A0 = var_1D0
  loc_14A244A: If (var_A0.RecordCount > 0) Then
  loc_14A2450:   var_A0.MoveFirst
  loc_14A2455:   ' Referenced from: 14A2CE2
  loc_14A2464:   If Not(var_A0.EOF) Then
  loc_14A2495:     var_128 = Trim(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("ShortName")))))
  loc_14A2529:     var_234 = var_A0.Fields.Item("NCKOT")
  loc_14A2587:     var_2B4 = IIf((Ucase(Mid(var_128, 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_A0.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_234)) = "Y"), "* NC KOT *", "* KOT *"))
  loc_14A2590:     var_8C = CStr(var_2B4)
  loc_14A2604:     var_A8 = Replace(var_A8, "<Outlet Title>", Me.LblRest.Caption & "D", 1, -1, 0)
  loc_14A2662:     Proc_6_39_E7D3A0(var_128, CVar(var_A0.Fields.Item("VNo")))
  loc_14A26A1:     var_A8 = Replace(var_A8, "<KOT Number>", Proc_6_38_E69628(CVar(var_A0.Fields.Item("vType"))) & "/" & CStr(var_128) & "D", 1, -1, 0)
  loc_14A272A:     var_20C = var_A0.Fields.Item("VTIME")
  loc_14A2755:     var_168 = (Format(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("VDate")))), "dd/mm/yy") + " ")
  loc_14A275F:     var_1CC = (Mid("dd/mm/yy", 1, 3) + CVar(Proc_6_38_E69628(CVar(var_20C), 1)))
  loc_14A2768:     var_1F8 = (CVar(var_A0.Fields.Item("NCKOT")) + "%0D")
  loc_14A277B:     var_A8 = Replace(var_A8, "<KOT DateTime>", CStr("* NC LOT *"), 1, -1, 0)
  loc_14A27F5:     var_A8 = Replace(var_A8, "<Table Number>", Proc_6_38_E69628(CVar(var_A0.Fields.Item("TableNo")), 1) & "D", 1, -1, 0)
  loc_14A2840:     If (Proc_6_38_E69628(CVar(var_A0.Fields.Item("Remarks"))) <> vbNullString) Then
  loc_14A2862:       var_E8 = CVar(var_A0.Fields.Item("Remarks")) 'Address
  loc_14A2895:       var_A8 = Replace(var_A8, "<Remark>", Proc_6_38_E69628(var_E8) & "D", 1, -1, 0)
  loc_14A28A7:     End If
  loc_14A28B0:     Call Proc_30_108_10160AC(DocID, var_94)
  loc_14A28D9:     var_A8 = Replace(var_A8, "<Item Detail>", var_94 & "D", 1, -1, 0)
  loc_14A28EA:     Proc_6_47_EF6560(var_E8, var_9C)
  loc_14A2906:     var_108 = (var_E8 + "%0D")
  loc_14A290A:     var_1AC = CStr(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("VDate")))))
  loc_14A2919:     var_A8 = Replace(var_A8, "<KOT Total>", var_1AC, 1, -1, 0)
  loc_14A2947:     If ((var_C0 = vbNullString) And (InStr(1, CStr("* NC LOT *"), "<Item-Qty>", 0) <> 0)) Then
  loc_14A294D:       var_C0 = "<Item-Qty>"
  loc_14A2953:     Else
  loc_14A2970:       var_A8 = Replace(var_A8, "<Item-Qty>", vbNullString, 1, -1, 0)
  loc_14A2973:     End If
  loc_14A2994:     If ((var_C0 = vbNullString) And (InStr(1, CStr("* NC LOT *"), "<Item-Qty-Rate>", 0) <> 0)) Then
  loc_14A299A:       var_C0 = "<Item-Qty-Rate>"
  loc_14A29A0:     Else
  loc_14A29BD:       var_A8 = Replace(var_A8, "<Item-Qty-Rate>", vbNullString, 1, -1, 0)
  loc_14A29C0:     End If
  loc_14A29E1:     If ((var_C0 = vbNullString) And (InStr(1, CStr("* NC LOT *"), "<Item-Qty-Amt>", 0) <> 0)) Then
  loc_14A29E7:       var_C0 = "<Item-Qty-Amt>"
  loc_14A29ED:     Else
  loc_14A2A0A:       var_A8 = Replace(var_A8, "<Item-Qty-Amt>", vbNullString, 1, -1, 0)
  loc_14A2A0D:     End If
  loc_14A2A16:     Call Proc_30_107_12C1148(DocID, var_C0, var_1AC)
  loc_14A2A3E:     var_A8 = Replace(var_A8, var_C0, var_1AC, 1, -1, 0)
  loc_14A2A93:     var_A8 = Replace(var_A8, "<Steward>", Proc_6_38_E69628(CVar(var_A0.Fields.Item("WaiterName")), var_9C) & "D", 1, -1, 0)
  loc_14A2AB4:     var_1D0 = var_A0.Fields
  loc_14A2AF7:     var_A8 = Replace(var_A8, "<User>", Proc_6_38_E69628(CVar(var_1D0.Item("U_Name"))) & "D", 1, -1, 0)
  loc_14A2B14:     var_E8 = Trim(var_B0)
  loc_14A2B51:     var_A8 = Replace(var_A8, "<KOT Status>", CStr("*" & var_E8 & CVar("*" & "D")), 1, -1, 0)
  loc_14A2B86:     unk_5890AB.Execute "Select Count(Distinct Printed) from kot where docid='" & DocID & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')", var_E8, -1
  loc_14A2BB3:     var_1D0 = var_1D0.Fields
  loc_14A2BC3:     var_E8 = var_1D0.Item(0).Value
  loc_14A2BDD:     If (var_E8 > 1) Then
  loc_14A2C04:       var_A8 = Replace(var_A8, "<KOT Type>", "Changed KOT" & "D", 1, -1, 0)
  loc_14A2C0D:     Else
  loc_14A2C31:       unk_5890AB.Execute "Select Printed from kot where docid='" & DocID & "'", var_E8, -1
  loc_14A2C5B:       var_1D0 = var_1D0.Fields
  loc_14A2C63:       var_1D4 = var_1D0.Item(0)
  loc_14A2C85:       If (Proc_6_38_E69628(CVar(var_1D4), var_1D0) = "Y") Then
  loc_14A2C9E:         var_1AC = "DUPLICATE KOT" & "D"
  loc_14A2CAC:         var_A8 = Replace(var_A8, "<KOT Type>", var_1AC, 1, -1, 0)
  loc_14A2CB2:       End If
  loc_14A2CB2:     End If
  loc_14A2CCF:     var_A8 = Replace(var_A8, "<KOT Type>", vbNullString, 1, -1, 0)
  loc_14A2CD7:     Set var_BC = Nothing
  loc_14A2CDD:     var_A0.MoveNext
  loc_14A2CE2:     GoTo loc_14A2455
  loc_14A2CE5:   End If
  loc_14A2CE5: End If
  loc_14A2CF8: If ((Len(var_AC) >= &HA) And (DocID <> vbNullString)) Then
  loc_14A2D06:   Set var_1D0 = Me.Txt
  loc_14A2D0C:   Call 0.Method_KOTMessage0 (CInt(0), var_1D4)
  loc_14A2D2E:   Set var_1E8 = Me.Txt
  loc_14A2D34:   Call 0.Method_KOTMessage0 (CInt(&HB), var_20C, var_1AC)
  loc_14A2D3C:   var_1D0 = var_20C.Tag
  loc_14A2D4C:   Set var_230 = Me.Txt
  loc_14A2D52:   Call 0.Method_KOTMessage0 (CInt(&HB), var_234)
  loc_14A2D61:   var_148 = Trim(CVar(var_234))
  loc_14A2D73:   var_2BC = vbNullString
  loc_14A2DB0:   Proc_233_5_11B7BF4(DocID, global_152, CLng(Trim(CVar(var_1D4))), 0, var_1AC, var_AC, vbNullString)
  loc_14A2DD6: End If
  loc_14A2DDB: Set var_A0 = Nothing
  loc_14A2DE3: Set var_B8 = Nothing
  loc_14A2DE6: Exit Sub
  loc_14A2DE7: ' Referenced from: 14A21B8
  loc_14A2DE7: Proc_6_60_E63754(CStr("* NC LOT *"), MemVar_1F950C8, CStr(var_148), var_2BC)
  loc_14A2DEC: Exit Sub
End Sub

Public Sub Proc_30_77_1312E6C
  'Data Table: 58908C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_1312726: Me.FGrid.Left = CVar(CDbl(&H2D))
  loc_1312741: Me.FGrid.Top = CVar(CDbl(1600))
  loc_131275C: Me.FGrid.Height = CVar(CDbl(6000))
  loc_1312777: Me.FGrid.Width = CVar(CDbl(9500))
  loc_1312792: Me.DGItem.Left = CVar(CDbl(2420))
  loc_13127AD: Me.DGItem.Top = CVar(CDbl(825))
  loc_13127C3: Set var_A8 = Me.Txt
  loc_13127C9: Call 0.Method_Proc_30_77_1312E6C0 (CInt(4), var_AC)
  loc_13127E8: Me.DGTable.Left = CVar(var_AC.Left)
  loc_1312804: Set var_B4 = Me.Txt
  loc_131280A: Call 0.Method_Proc_30_77_1312E6C0 (CInt(4), var_B8)
  loc_1312825: Set var_A8 = Me.Txt
  loc_131282B: Call 0.Method_Proc_30_77_1312E6C0 (CInt(4), var_AC)
  loc_1312843: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H32))) 'Single
  loc_1312852: Me.DGTable.Top = CVar(var_AC.Left)
  loc_1312872: Set var_A8 = Me.Txt
  loc_1312878: Call 0.Method_Proc_30_77_1312E6C0 (CInt(5), var_AC)
  loc_1312897: Me.DGWaiter.Left = CVar(var_AC.Left)
  loc_13128B3: Set var_B4 = Me.Txt
  loc_13128B9: Call 0.Method_Proc_30_77_1312E6C0 (CInt(5), var_B8)
  loc_13128D4: Set var_A8 = Me.Txt
  loc_13128DA: Call 0.Method_Proc_30_77_1312E6C0 (CInt(5), var_AC)
  loc_13128F2: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H32))) 'Single
  loc_1312901: Me.DGWaiter.Top = CVar(var_AC.Left)
  loc_1312921: Set var_A8 = Me.Txt
  loc_1312927: Call 0.Method_Proc_30_77_1312E6C0 (CInt(&HB), var_AC)
  loc_1312946: Me.DGMember.Left = CVar(var_AC.Left)
  loc_1312962: Set var_B4 = Me.Txt
  loc_1312968: Call 0.Method_Proc_30_77_1312E6C0 (CInt(&HB), var_B8)
  loc_1312983: Set var_A8 = Me.Txt
  loc_1312989: Call 0.Method_Proc_30_77_1312E6C0 (CInt(&HB), var_AC)
  loc_13129A1: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H32))) 'Single
  loc_13129B0: Me.DGMember.Top = CVar(var_AC.Left)
  loc_13129C6: Set var_C4 = Me.FGrid
  loc_13129DD: global_104 = CStr(CLng(var_C4.BackColor))
  loc_13129F3: var_C4.Cols = &HF
  loc_13129FB: var_94 = CVar(CLng(0)) 'Long
  loc_1312A00: var_E8 = &H12C
  loc_1312A0C: LateIdCallSt
  loc_1312A14: var_94 = 0
  loc_1312A20: var_E8 = CVar(CLng(1)) 'Long
  loc_1312A25: var_108 = "Rest"
  loc_1312A2E: LateIdCallSt
  loc_1312A39: var_94 = CVar(CLng(1)) 'Long
  loc_1312A44: var_E8 = CVar(CInt(1)) 'Integer
  loc_1312A4B: LateIdCallSt
  loc_1312A56: var_94 = CVar(CLng(1)) 'Long
  loc_1312A5B: var_E8 = 0
  loc_1312A67: LateIdCallSt
  loc_1312A6F: var_94 = 0
  loc_1312A7B: var_E8 = CVar(CLng(2)) 'Long
  loc_1312A80: var_108 = "Rest."
  loc_1312A89: LateIdCallSt
  loc_1312A94: var_94 = CVar(CLng(2)) 'Long
  loc_1312A9F: var_E8 = CVar(CInt(1)) 'Integer
  loc_1312AA6: LateIdCallSt
  loc_1312AB1: var_94 = CVar(CLng(2)) 'Long
  loc_1312AB6: var_E8 = &H226
  loc_1312AC2: LateIdCallSt
  loc_1312ACA: var_94 = 0
  loc_1312AD6: var_E8 = CVar(CLng(3)) 'Long
  loc_1312ADB: var_108 = "Code"
  loc_1312AE4: LateIdCallSt
  loc_1312AEF: var_94 = CVar(CLng(3)) 'Long
  loc_1312AFA: var_E8 = CVar(CInt(1)) 'Integer
  loc_1312B01: LateIdCallSt
  loc_1312B0C: var_94 = CVar(CLng(3)) 'Long
  loc_1312B11: var_E8 = &H23F
  loc_1312B1D: LateIdCallSt
  loc_1312B25: var_94 = 0
  loc_1312B31: var_E8 = CVar(CLng(4)) 'Long
  loc_1312B36: var_108 = "Item Name"
  loc_1312B3F: LateIdCallSt
  loc_1312B4A: var_94 = CVar(CLng(4)) 'Long
  loc_1312B55: var_E8 = CVar(CInt(1)) 'Integer
  loc_1312B5C: LateIdCallSt
  loc_1312B67: var_94 = CVar(CLng(4)) 'Long
  loc_1312B6C: var_E8 = &HCB2
  loc_1312B78: LateIdCallSt
  loc_1312B80: var_94 = 0
  loc_1312B8C: var_E8 = CVar(CLng(5)) 'Long
  loc_1312B91: var_108 = "Unit"
  loc_1312B9A: LateIdCallSt
  loc_1312BA5: var_94 = CVar(CLng(5)) 'Long
  loc_1312BB0: var_E8 = CVar(CInt(1)) 'Integer
  loc_1312BB7: LateIdCallSt
  loc_1312BC2: var_94 = CVar(CLng(5)) 'Long
  loc_1312BC7: var_E8 = &H389
  loc_1312BD3: LateIdCallSt
  loc_1312BDB: var_94 = 0
  loc_1312BE7: var_E8 = CVar(CLng(6)) 'Long
  loc_1312BEC: var_108 = "Description"
  loc_1312BF5: LateIdCallSt
  loc_1312C00: var_94 = CVar(CLng(6)) 'Long
  loc_1312C0B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1312C12: LateIdCallSt
  loc_1312C1D: var_94 = CVar(CLng(6)) 'Long
  loc_1312C28: var_E8 = CVar(CInt(1)) 'Integer
  loc_1312C2F: LateIdCallSt
  loc_1312C3A: var_94 = CVar(CLng(6)) 'Long
  loc_1312C3F: var_E8 = &H497
  loc_1312C4B: LateIdCallSt
  loc_1312C53: var_94 = 0
  loc_1312C5F: var_E8 = CVar(CLng(7)) 'Long
  loc_1312C64: var_108 = "Qty"
  loc_1312C6D: LateIdCallSt
  loc_1312C78: var_94 = CVar(CLng(7)) 'Long
  loc_1312C83: var_E8 = CVar(CInt(7)) 'Integer
  loc_1312C8A: LateIdCallSt
  loc_1312C95: var_94 = CVar(CLng(7)) 'Long
  loc_1312CA0: var_E8 = CVar(CInt(7)) 'Integer
  loc_1312CA7: LateIdCallSt
  loc_1312CB2: var_94 = CVar(CLng(7)) 'Long
  loc_1312CB7: var_E8 = &H352
  loc_1312CC3: LateIdCallSt
  loc_1312CCB: var_94 = 0
  loc_1312CD7: var_E8 = CVar(CLng(8)) 'Long
  loc_1312CDC: var_108 = "Rate"
  loc_1312CE5: LateIdCallSt
  loc_1312CF0: var_94 = CVar(CLng(8)) 'Long
  loc_1312CFB: var_E8 = CVar(CInt(7)) 'Integer
  loc_1312D02: LateIdCallSt
  loc_1312D0D: var_94 = CVar(CLng(8)) 'Long
  loc_1312D18: var_E8 = CVar(CInt(7)) 'Integer
  loc_1312D1F: LateIdCallSt
  loc_1312D2A: var_94 = CVar(CLng(8)) 'Long
  loc_1312D2F: var_E8 = &H41A
  loc_1312D3B: LateIdCallSt
  loc_1312D43: var_94 = 0
  loc_1312D4F: var_E8 = CVar(CLng(9)) 'Long
  loc_1312D54: var_108 = "Void"
  loc_1312D5D: LateIdCallSt
  loc_1312D68: var_94 = CVar(CLng(9)) 'Long
  loc_1312D73: var_E8 = CVar(CInt(1)) 'Integer
  loc_1312D7A: LateIdCallSt
  loc_1312D85: var_94 = CVar(CLng(9)) 'Long
  loc_1312D90: var_E8 = CVar(CInt(1)) 'Integer
  loc_1312D97: LateIdCallSt
  loc_1312DA2: var_94 = CVar(CLng(9)) 'Long
  loc_1312DA7: var_E8 = &H226
  loc_1312DB3: LateIdCallSt
  loc_1312DBE: var_94 = CVar(CLng(&HA)) 'Long
  loc_1312DC3: var_E8 = 0
  loc_1312DCF: LateIdCallSt
  loc_1312DDA: var_94 = CVar(CLng(&HB)) 'Long
  loc_1312DDF: var_E8 = 0
  loc_1312DEB: LateIdCallSt
  loc_1312DF6: var_94 = CVar(CLng(&HC)) 'Long
  loc_1312DFB: var_E8 = 0
  loc_1312E07: LateIdCallSt
  loc_1312E12: var_94 = CVar(CLng(&HD)) 'Long
  loc_1312E17: var_E8 = 0
  loc_1312E23: LateIdCallSt
  loc_1312E2E: var_94 = CVar(CLng(&HE)) 'Long
  loc_1312E33: var_E8 = 0
  loc_1312E3F: LateIdCallSt
  loc_1312E4A: var_94 = CVar(CLng(&HF)) 'Long
  loc_1312E4F: var_E8 = 0
  loc_1312E5B: LateIdCallSt
  loc_1312E65: Set var_C4 = Nothing 
  loc_1312E69: Exit Sub
End Sub

Public Sub Proc_30_78_1058390
  'Data Table: 58908C
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_1058123: Me.LblPendingKot.Left = CDbl(10200)
  loc_105813A: Me.LblPendingKot.Top = CDbl(2700)
  loc_1058155: Me.FGrid1.Left = CVar(CDbl(10200))
  loc_1058170: Me.FGrid1.Top = CVar(CDbl(3000))
  loc_105818B: Me.FGrid1.Height = CVar(CDbl(5750))
  loc_10581A6: Me.FGrid1.Width = CVar(CDbl(5100))
  loc_10581B2: Set var_AC = Me.FGrid1
  loc_10581C9: global_104 = CStr(CLng(var_AC.BackColor))
  loc_10581DF: var_AC.Cols = 5
  loc_10581E7: var_98 = CVar(CLng(0)) 'Long
  loc_10581EC: var_D0 = &H12C
  loc_10581F8: LateIdCallSt
  loc_1058200: var_98 = 0
  loc_105820C: var_D0 = CVar(CLng(1)) 'Long
  loc_1058211: var_F0 = "KotNo"
  loc_105821A: LateIdCallSt
  loc_1058225: var_98 = CVar(CLng(1)) 'Long
  loc_1058230: var_D0 = CVar(CInt(1)) 'Integer
  loc_1058237: LateIdCallSt
  loc_1058242: var_98 = CVar(CLng(1)) 'Long
  loc_1058247: var_D0 = &H28A
  loc_1058253: LateIdCallSt
  loc_105825B: var_98 = 0
  loc_1058267: var_D0 = CVar(CLng(2)) 'Long
  loc_105826C: var_F0 = "Time"
  loc_1058275: LateIdCallSt
  loc_1058280: var_98 = CVar(CLng(2)) 'Long
  loc_105828B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1058292: LateIdCallSt
  loc_105829D: var_98 = CVar(CLng(2)) 'Long
  loc_10582A2: var_D0 = &H258
  loc_10582AE: LateIdCallSt
  loc_10582B6: var_98 = 0
  loc_10582C2: var_D0 = CVar(CLng(3)) 'Long
  loc_10582C7: var_F0 = "Item Name"
  loc_10582D0: LateIdCallSt
  loc_10582DB: var_98 = CVar(CLng(3)) 'Long
  loc_10582E6: var_D0 = CVar(CInt(1)) 'Integer
  loc_10582ED: LateIdCallSt
  loc_10582F8: var_98 = CVar(CLng(3)) 'Long
  loc_10582FD: var_D0 = &H9C4
  loc_1058309: LateIdCallSt
  loc_1058311: var_98 = 0
  loc_105831D: var_D0 = CVar(CLng(4)) 'Long
  loc_1058322: var_F0 = "Qty"
  loc_105832B: LateIdCallSt
  loc_1058336: var_98 = CVar(CLng(4)) 'Long
  loc_1058341: var_D0 = CVar(CInt(7)) 'Integer
  loc_1058348: LateIdCallSt
  loc_1058353: var_98 = CVar(CLng(4)) 'Long
  loc_105835E: var_D0 = CVar(CInt(7)) 'Integer
  loc_1058365: LateIdCallSt
  loc_1058370: var_98 = CVar(CLng(4)) 'Long
  loc_1058375: var_D0 = &H2BC
  loc_1058381: LateIdCallSt
  loc_105838B: Set var_AC = Nothing 
  loc_105838F: Exit Sub
End Sub

Public Sub Proc_30_79_11DE560
  'Data Table: 58908C
  Dim var_9C As Variant
  Dim var_88 As Label
  Dim var_C8 As Variant
  Dim var_E8 As String
  loc_11DE0D4: Set var_88 = Me.FGrid2
  loc_11DE0E6: Me.LblPendingKotItem.Top = CDbl(2625)
  loc_11DE0FD: Me.LblPendingKotItem.Left = CDbl(10200)
  loc_11DE111: var_88.Left = CVar(CDbl(9500))
  loc_11DE141: var_9C = CVar((Me.LblPendingKotItem.Top + Me.LblPendingKotItem.Height)) 'Single
  loc_11DE149: var_88.Top = CVar(CDbl(9500))
  loc_11DE161: var_88.Height = CVar(CDbl(5750))
  loc_11DE172: var_88.Width = CVar(CDbl(7170))
  loc_11DE180: var_88.Tag = "Rst1"
  loc_11DE185: var_9C = 9
  loc_11DE196: var_9C = 0
  loc_11DE19F: var_C8 = &H32
  loc_11DE1AB: LateIdCallSt
  loc_11DE1B3: var_9C = 0
  loc_11DE1BC: var_C8 = 1
  loc_11DE1C5: var_E8 = "KotNo"
  loc_11DE1CE: LateIdCallSt
  loc_11DE1D6: var_9C = 1
  loc_11DE1E5: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DE1EC: LateIdCallSt
  loc_11DE1F4: var_9C = 1
  loc_11DE203: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DE20A: LateIdCallSt
  loc_11DE212: var_9C = 1
  loc_11DE21B: var_C8 = &H2BC
  loc_11DE227: LateIdCallSt
  loc_11DE22F: var_9C = 0
  loc_11DE238: var_C8 = 2
  loc_11DE241: var_E8 = "Date"
  loc_11DE24A: LateIdCallSt
  loc_11DE252: var_9C = 2
  loc_11DE261: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DE268: LateIdCallSt
  loc_11DE270: var_9C = 2
  loc_11DE27F: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DE286: LateIdCallSt
  loc_11DE28E: var_9C = 2
  loc_11DE297: var_C8 = &H384
  loc_11DE2A3: LateIdCallSt
  loc_11DE2AB: var_9C = 0
  loc_11DE2B4: var_C8 = 3
  loc_11DE2BD: var_E8 = "Time"
  loc_11DE2C6: LateIdCallSt
  loc_11DE2CE: var_9C = 3
  loc_11DE2DD: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DE2E4: LateIdCallSt
  loc_11DE2EC: var_9C = 3
  loc_11DE2FB: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DE302: LateIdCallSt
  loc_11DE30A: var_9C = 3
  loc_11DE313: var_C8 = &H258
  loc_11DE31F: LateIdCallSt
  loc_11DE327: var_9C = 0
  loc_11DE330: var_C8 = 4
  loc_11DE339: var_E8 = "Waiter"
  loc_11DE342: LateIdCallSt
  loc_11DE34A: var_9C = 4
  loc_11DE359: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DE360: LateIdCallSt
  loc_11DE368: var_9C = 4
  loc_11DE377: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DE37E: LateIdCallSt
  loc_11DE386: var_9C = 4
  loc_11DE38F: var_C8 = &H514
  loc_11DE39B: LateIdCallSt
  loc_11DE3A3: var_9C = 0
  loc_11DE3AC: var_C8 = 5
  loc_11DE3B5: var_E8 = "Table"
  loc_11DE3BE: LateIdCallSt
  loc_11DE3C6: var_9C = 5
  loc_11DE3D5: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DE3DC: LateIdCallSt
  loc_11DE3E4: var_9C = 5
  loc_11DE3F3: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DE3FA: LateIdCallSt
  loc_11DE402: var_9C = 5
  loc_11DE40B: var_C8 = &H28A
  loc_11DE417: LateIdCallSt
  loc_11DE41F: var_9C = 0
  loc_11DE428: var_C8 = 6
  loc_11DE431: var_E8 = "Product"
  loc_11DE43A: LateIdCallSt
  loc_11DE442: var_9C = 6
  loc_11DE451: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DE458: LateIdCallSt
  loc_11DE460: var_9C = 6
  loc_11DE46F: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DE476: LateIdCallSt
  loc_11DE47E: var_9C = 6
  loc_11DE487: var_C8 = &H898
  loc_11DE493: LateIdCallSt
  loc_11DE49B: var_9C = 0
  loc_11DE4A4: var_C8 = 7
  loc_11DE4AD: var_E8 = "Qty."
  loc_11DE4B6: LateIdCallSt
  loc_11DE4BE: var_9C = 7
  loc_11DE4CD: var_C8 = CVar(CInt(7)) 'Integer
  loc_11DE4D4: LateIdCallSt
  loc_11DE4DC: var_9C = 7
  loc_11DE4EB: var_C8 = CVar(CInt(7)) 'Integer
  loc_11DE4F2: LateIdCallSt
  loc_11DE4FA: var_9C = 7
  loc_11DE503: var_C8 = &H1EA
  loc_11DE50F: LateIdCallSt
  loc_11DE517: var_9C = 0
  loc_11DE520: var_C8 = 8
  loc_11DE529: var_E8 = "DocID"
  loc_11DE532: LateIdCallSt
  loc_11DE53A: var_9C = 8
  loc_11DE543: var_C8 = 0
  loc_11DE54F: LateIdCallSt
  loc_11DE559: Set var_88 = Nothing 
  loc_11DE55D: Exit Sub
End Sub

Public Sub Proc_30_80_1927300
  'Data Table: 58908C
  Dim var_E8 As Variant
  Dim var_F0 As String
  Dim var_124 As Variant
  Dim var_100 As Variant
  Dim Me As Recordset15
  Dim var_104 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_158 As String
  Dim var_15C As String
  Dim unk_5890AB As Connection15
  Dim var_160 As Variant
  Dim var_D0 As Recordset15
  Dim var_C0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_114 As Variant
  Dim var_B8 As Recordset15
  Dim var_96 As Integer
  Dim var_17C As String
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_1E4 As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_204 As Variant
  Dim var_214 As Variant
  Dim var_248 As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_280 As Variant
  Dim var_2A4 As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_3E4 As Variant
  Dim var_E4 As Double
  Dim var_2B4 As Variant
  Dim var_2C4 As Variant
  Dim var_3C4 As Variant
  Dim var_294 As Variant
  loc_1924788: On Error Goto loc_19272F2
  loc_192478E: MemVar_1F953C4 = "N"
  loc_1924795: MemVar_1F953C8 = "N"
  loc_192479C: MemVar_1F953CC = "K"
  loc_19247BB: If (Me.ChkNCKOT.Value <> 1) Then
  loc_19247C3:   Proc_30_80_1927300 = 0
  loc_19247C9: End If
  loc_19247D0: var_F0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (KOT K Left Join Waiter W on K.Waiter=W.Code) "
  loc_1924815: var_8C = CStr(CVar(var_F0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1924834: var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1924854: var_104 = Me.Fields.Item("SearchCode")
  loc_1924872: var_90 = CStr(var_124 & var_104.Value & "'")
  loc_192488F: If (var_8C = vbNullString) Then
  loc_1924897:   Proc_30_80_1927300 = 0
  loc_192489D: End If
  loc_19248A5: If (var_90 = vbNullString) Then
  loc_19248AD:   Proc_30_80_1927300 = 0
  loc_19248B3: End If
  loc_19248D1: Set var_E8 = Me.Txt
  loc_19248D7: Call 0.Method_Proc_30_80_19273000 (CInt(4), var_104, var_F0, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='")
  loc_19248DF: var_114 = var_104.Text
  loc_19248E8: var_158 = -1 & var_F0
  loc_19248F8: unk_5890AB.Execute var_158 & "' AND CONTRADOCID IS NULL", var_160, 
  loc_1924921: var_144 = 0
  loc_1924951: unk_5890AB.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_114, -1
  loc_1924961: var_144 = var_104.Item(var_104)
  loc_1924969: var_160 = var_160.Value
  loc_1924976: var_D4 = Proc_6_38_E69628(var_124)
  loc_19249A4: var_F0 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_19249B4: unk_5890AB.Execute var_F0 & "MK'", var_114, -1
  loc_19249BF: Set var_C0 = var_E8.Fields
  loc_19249E3: If (var_160.RecordCount = 1) Then
  loc_19249E9:   var_CC = "New Order"
  loc_19249EF: Else
  loc_19249F6:   Set var_E8 = Me.LblState
  loc_1924A04:   var_CC = var_E8.Caption
  loc_1924A0A: End If
  loc_1924A20: unk_5890AB.Execute var_8C, var_114, -1
  loc_1924A2B: Set var_B8 = var_E8
  loc_1924A34: ' Referenced from: 19272BC
  loc_1924A43: If Not(var_C0.EOF) Then
  loc_1924A5C:   unk_5890AB.Execute "SELECT KOTPrinting FROM Enviro", var_114, -1
  loc_1924A67:   Set var_D0 = var_E8
  loc_1924A77:   var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1924A8F:   var_E8 = Me.Fields
  loc_1924A9F:   var_114 = var_E8.Item("SearchCode").Value
  loc_1924AE0:   unk_5890AB.Execute CStr(var_124 & var_114 & "' and K.VoidYN<>'Y'"), var_114, -1
  loc_1924AEB:   Set var_BC = var_E8
  loc_1924B08:   If (var_BC.RecordCount > 0) Then
  loc_1924B1A:     var_E8 = var_C0.Fields
  loc_1924B39:     var_174 = Trim(CVar(var_E8.Item("PrintType"))) 'Variant
  loc_1924B4E:     If (var_174 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1924B5E:       Call Proc_30_86_EFB79C(New, var_E8, var_E8, var_E8)
  loc_1924B66:       Set var_D8 = var_E8
  loc_1924B6C:       Me.Recordset15.MoveFirst
  loc_1924B71:       ' Referenced from: 19257EB
  loc_1924B80:       If Not(var_B8.EOF) Then
  loc_1924B99:         If (0 = 0) Then
  loc_1924BBA:           Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString, 1)
  loc_1924BF6:           var_C4 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_1924C2D:           var_124 = CVar(Me.LblRest.Caption) 'String
  loc_1924C30:           var_134 = (Space(1) + var_124)
  loc_1924C45:           Call Proc_30_87_F15438(var_D8, vbNullString, CStr(var_124 & Space(1)), vbNullString)
  loc_1924C77:           Call Proc_30_87_F15438(var_D8, vbNullString, " * NC Bill *", vbNullString)
  loc_1924C85:           var_96 = &H12
  loc_1924CA6:           Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString, var_96)
  loc_1924CD2:           Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1924CEF:           var_E8 = var_B8.Fields
  loc_1924D06:           Proc_6_39_E7D3A0(var_124, CVar(var_E8.Item("VNo")), var_96)
  loc_1924D43:           Call Proc_30_87_F15438(var_D8, vbNullString, " V No.     : " & Proc_6_45_EADFB8(CStr(var_124), &HA, var_E8))
  loc_1924D70:           var_E8 = var_B8.Fields
  loc_1924E13:           Call Proc_30_87_F15438(var_D8, vbNullString, " Date.     : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_E8.Item("VDate")), vbNullString), &HC) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")), var_E8), 8))
  loc_1924E5A:           var_104 = var_B8.Fields.Item("Remarks")
  loc_1924EA5:           Call Proc_30_87_F15438(var_D8, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104), vbNullString), &H1E))
  loc_1924ED7:           Set var_E8 = Me.Label1
  loc_1924EDD:           Call 0.Method_Proc_30_80_19273000 (2, var_104)
  loc_1924F66:           var_190 = Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")), vbNullString)), "000")), 5, 1)
  loc_1924F6C:           var_17C = vbNullString
  loc_1924F7B:           var_1B4 = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA)))
  loc_1924F84:           var_1C4 = (var_1B4 + ": ")
  loc_1924F8E:           var_234 = (var_1C4 + CVar(var_190))
  loc_1924FA3:           Call Proc_30_87_F15438(var_D8, vbNullString, CStr(var_234))
  loc_1924FF5:           Call Proc_30_87_F15438(var_D8, vbNullString, var_C4, vbNullString)
  loc_1925001:         End If
  loc_1925027:         var_134 = (var_17C + CVar(Proc_6_45_EADFB8("ITEM NAME", &H12, Space(1))))
  loc_192503B:         var_1B4 = (Trim(CVar(var_104)) + Space(1))
  loc_1925055:         var_1D4 = (1 + CVar(Proc_6_52_EAE084("Qty", 3, var_1B4)))
  loc_1925061:         var_1E4 = Space(1)
  loc_1925069:         var_204 = (CVar(var_B8.Fields.Item("TableNo")) + var_1E4)
  loc_1925083:         var_224 = ("000" + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_1925097:         var_248 = (CVar(var_190) + Space(1))
  loc_19250B1:         var_26C = (var_248 + CVar(Proc_6_52_EAE084("Amount", 7)))
  loc_19250E8:         var_158 = vbNullString
  loc_19250FD:         Call Proc_30_87_F15438(var_D8, vbNullString, CStr(var_26C))
  loc_192510C:         var_158 = vbNullString
  loc_1925121:         Call Proc_30_87_F15438(var_D8, vbNullString, var_C4)
  loc_1925133:         var_96 = (var_96 + 4)
  loc_1925139:         var_BC.MoveFirst
  loc_192513E:         ' Referenced from: 1925458
  loc_192514D:         If Not(var_BC.EOF) Then
  loc_1925172:           var_124 = var_BC.Fields.Item("ItemName").Value
  loc_192519D:           Proc_6_39_E7D3A0(var_1E4, CVar(var_BC.Fields.Item("qty")), var_96)
  loc_19251C5:           var_280 = "Rate"
  loc_19251E8:           Proc_6_39_E7D3A0(var_294, CVar(var_BC.Fields.Item(var_280)), 1, 1)
  loc_19251F7:           var_2A4 = "0.00"
  loc_1925233:           Proc_6_39_E7D3A0(var_33C, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_192525E:           Proc_6_39_E7D3A0(var_374, CVar(var_BC.Fields.Item("Rate")), var_158)
  loc_19252B6:           var_154 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_124), &H12, Space(1), 1)))
  loc_19252CA:           var_1C4 = (Space(1) + Space(1))
  loc_19252E3:           var_234 = (var_158 + CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0")), 3, CVar(Proc_6_52_EAE084("Qty", 3, Space(1))))))
  loc_19252F7:           var_25C = (Space(1) + Space(1))
  loc_1925310:           var_2E4 = (CVar(Proc_6_52_EAE084("Amount", 7)) + CVar(Proc_6_52_EAE084(CStr(Format(var_294, var_2A4)), 6)))
  loc_1925324:           var_304 = (var_2E4 + Space(1))
  loc_192533D:           var_3E4 = (var_304 + CVar(Proc_6_52_EAE084(CStr(Format((var_33C * var_374), "0.00")), 7)))
  loc_19253A3:           var_1F4 = CVar(var_E4) 'Double
  loc_19253CD:           Proc_6_39_E7D3A0(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_19253FB:           Proc_6_39_E7D3A0(Space(1), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_1925407:           var_1C4 = (var_124 + (var_1F4 * Space(1)))
  loc_192540C:           var_E4 = CSng(CVar(Proc_6_52_EAE084("Qty", 3, (var_1F4 * Space(1)))))
  loc_1925426:           var_158 = vbNullString
  loc_192543B:           Call Proc_30_87_F15438(var_D8, vbNullString, CStr(var_3E4))
  loc_192544D:           var_96 = (var_96 + 1)
  loc_1925453:           var_BC.MoveNext
  loc_1925458:           GoTo loc_192513E
  loc_192545B:         End If
  loc_1925473:         Call Proc_30_87_F15438(var_D8, vbNullString, var_C4, vbNullString)
  loc_192549D:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19254D8:         var_144 = "0.00"
  loc_19254DD:         var_154 = var_144
  loc_192552A:         var_134 = (Space(&H16) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8, var_96)))
  loc_1925534:         var_204 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_E4, var_154))))), 8, 1)))
  loc_1925549:         Call Proc_30_87_F15438(var_D8, vbNullString, CStr("0"), vbNullString)
  loc_1925594:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19255A5:         var_100 = "WaiterName"
  loc_19255E4:         var_17C = vbNullString
  loc_1925604:         Call Proc_30_87_F15438(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_100)), 1), &H14))
  loc_192563E:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1925673:         Call Proc_30_87_F15438(var_D8, vbNullString, " ** " & MemVar_1F95220 & " **", vbNullString)
  loc_1925686:         var_B8.MoveNext
  loc_19256A9:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19256D5:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1925701:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_192572D:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1925759:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1925785:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19257B1:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19257DD:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19257EB:         GoTo loc_1924B71
  loc_19257EE:       End If
  loc_19257F1:       var_DC = "WinKOTPrint"
  loc_1925818:       Set var_E8 = var_D8 
  loc_192581F:       CreateFieldDefFile(var_E8, MemVar_1F950B4 & "\" & var_DC & ".ttx", &HFF)
  loc_1925851:       var_158 = MemVar_1F950B4 & "\" & var_DC
  loc_1925861:       Call 0.Method_arg_1C (var_158 & ".RPT", var_100, var_E8)
  loc_192586C:       MemVar_1F951E8 = var_E8
  loc_1925895:       Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_144, var_1F4)
  loc_192589D:       Call 0.Method_arg_2C (var_17C, var_158)
  loc_19258AD:       If (var_D4 <> vbNullString) Then
  loc_19258CE:         If CBool(Ucase(var_D4) <> "PRN") Then
  loc_19258D4:           Call Proc_30_84_F0FCB8(var_D4)
  loc_19258D9:         End If
  loc_19258D9:       End If
  loc_19258F6:       Call 0.Method_Me8 (False, 1, var_1F4)
  loc_1925900:       Set var_D8 = Nothing
  loc_1925906:     Else
  loc_1925911:       If Not (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_192591F:         If (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1925922:         End If
  loc_1925924:         Close 1
  loc_1925944:         var_15C = "C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT"
  loc_192594B:         Open var_15C For Output As 1 Len = &HFF
  loc_192595B:         var_B8.MoveFirst
  loc_1925960:         ' Referenced from:   19263FE
  loc_192596F:         If Not(var_B8.EOF) Then
  loc_1925974:           var_96 = 0
  loc_1925988:           If (var_96 = 0) Then
  loc_192598D:             Print 1
  loc_19259C1:             var_C4 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_1925A08:             Call Proc_30_103_EFA714(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14, 1, var_96), "D", &H28, var_17C)
  loc_1925A12:             Print 1, var_17C
  loc_1925A50:             Call Proc_30_103_EFA714(Proc_6_45_EADFB8("* NC Bill *", &H14, var_280), "D", &H28)
  loc_1925A5A:             Print 1, var_15C
  loc_1925A72:             Print 1
  loc_1925A7A:             Print 1
  loc_1925AB3:             Proc_6_39_E7D3A0(var_154, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1925AD5:             var_124 = (Chr(&HF) + "V No.     :   ")
  loc_1925ADF:             var_1C4 = (CVar(Proc_6_45_EADFB8("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EADFB8(CStr(var_154), &HA, var_15C)))
  loc_1925AE5:             Print 1, CVar(CStr(Format(var_E4, var_154)))
  loc_1925B97:             var_124 = (Chr(&HF) + "Date.     :   ")
  loc_1925BA1:             var_1B4 = (CVar(Proc_6_45_EADFB8("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC)))
  loc_1925BAA:             var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))), &HA, Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4))) + " ")
  loc_1925BB4:             var_204 = (CVar(CStr(Format(var_E4, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1925BBA:             Print 1, "0"
  loc_1925C0F:             var_104 = var_B8.Fields.Item("Remarks")
  loc_1925C4C:             var_124 = (Chr(&HF) + "Remarks :   ")
  loc_1925C56:             var_1B4 = (CVar(Proc_6_45_EADFB8("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H32)))
  loc_1925C5D:             var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H32))), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H32))) + Chr(&H12))
  loc_1925C63:             Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1925C9C:             Set var_E8 = Me.Label1
  loc_1925CA2:             Call 0.Method_Proc_30_80_19273000 (2, var_104)
  loc_1925D37:             var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA)))
  loc_1925D40:             var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))) + ":   ")
  loc_1925D47:             var_224 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1925D4A:             var_234 = (Chr(&H12) + var_224)
  loc_1925D50:             Print 1, Space(1)
  loc_1925D9B:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1925DA1:             Print 1, CVar(var_104)
  loc_1925DAE:           End If
  loc_1925DD4:           var_134 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1925DEE:           var_1B4 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_104)))))
  loc_1925DFA:           var_1C4 = Space(3)
  loc_1925E02:           var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_104))))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))) + var_1C4)
  loc_1925E1C:           var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_1925E30:           var_224 = ("000" + Space(3))
  loc_1925E4A:           var_248 = (var_224 + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_1925E90:           var_124 = (Chr(&HF) + CVar(CStr(Space(1))))
  loc_1925E96:           Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1925EB9:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1925EBF:           Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1925ED2:           var_96 = (var_96 + 4)
  loc_1925ED8:           var_BC.MoveFirst
  loc_1925EDD:           ' Referenced from:   19261E4
  loc_1925EEC:           If Not(var_BC.EOF) Then
  loc_1925F3C:             Proc_6_39_E7D3A0(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_1925F87:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Amount", 7)), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1925FD2:             Proc_6_39_E7D3A0(var_304, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_1925FFD:             Proc_6_39_E7D3A0(var_33C, CVar(var_BC.Fields.Item("Rate")), 1)
  loc_192604D:             var_124 = Space(3)
  loc_1926055:             var_154 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + var_124)
  loc_192606B:             var_204 = CVar(Proc_6_52_EAE084(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("ItemName"))))))) 'String
  loc_192606E:             var_214 = (1 + var_204)
  loc_1926082:             var_234 = (Space(3) + Space(3))
  loc_1926098:             var_2B4 = CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Amount", 7)), "0.00")), 6, CVar(Proc_6_52_EAE084("Amount", &HA)))) 'String
  loc_192609B:             var_2C4 = (&H12 + var_2B4)
  loc_19260AF:             var_2E4 = (Format(Format(CVar(Proc_6_52_EAE084("Amount", 7)), "0.00"), "0.00") + Space(3))
  loc_19260C8:             var_3C4 = (var_2E4 + CVar(Proc_6_52_EAE084(CStr(Format((var_304 * var_33C), "0.00")), &HA)))
  loc_1926154:             Proc_6_39_E7D3A0(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_1926182:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_192618E:             var_1C4 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))))
  loc_1926193:             var_E4 = CSng(var_1C4)
  loc_19261C0:             var_124 = (Chr(&HF) + CVar(CStr(Format((var_33C * (var_304 * var_33C)), "0.00"))))
  loc_19261C6:             Print 1, var_124
  loc_19261D9:             var_96 = (var_96 + 1)
  loc_19261DF:             var_BC.MoveNext
  loc_19261E4:             GoTo loc_1925EDD
  loc_19261E7:           End If
  loc_19261FD:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1926203:           Print 1, var_124
  loc_1926215:           Print 1, vbNullString
  loc_192629B:           var_134 = (Chr(&HF) + Space(&H25))
  loc_19262A5:           var_1B4 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8)))
  loc_19262AF:           var_224 = ((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_19262B5:           Print 1, Space(3)
  loc_19262E6:           Print 1, vbNullString
  loc_1926340:           var_124 = (Chr(&HF) + "Waiter Name  :   ")
  loc_192634A:           var_1B4 = (Space(&H25) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14)))
  loc_1926350:           Print 1, (CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))))
  loc_1926371:           Print 1
  loc_192638C:           var_124 = (Chr(&HF) + "** ")
  loc_1926396:           var_134 = (Space(&H25) + CVar(MemVar_1F95220))
  loc_192639F:           var_154 = (CVar(var_B8.Fields.Item("WaiterName")) + " **")
  loc_19263A5:           Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14))
  loc_19263B9:           var_B8.MoveNext
  loc_19263C0:           Print 1
  loc_19263C8:           Print 1
  loc_19263D0:           Print 1
  loc_19263D8:           Print 1
  loc_19263E0:           Print 1
  loc_19263E8:           Print 1
  loc_19263F0:           Print 1
  loc_19263F8:           Print 1
  loc_19263FE:           GoTo loc_1925960
  loc_1926401:         End If
  loc_1926403:         Close 1
  loc_192643E:         If (Proc_6_38_E69628(CVar(var_C0.Fields.Item("Printer")), &H12) <> vbNullString) Then
  loc_1926466:           Open "C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_19264C4:           Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>") & var_C0.Fields.Item("Printer").Value
  loc_19264E4:         Else
  loc_192650E:           Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_192651F:         End If
  loc_1926521:         Close 1
  loc_192652B:         If (MemVar_1F953BC = "Y") Then
  loc_192655D:           var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_192656E:         Else
  loc_192659D:           var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_19265AB:         End If
  loc_19265AE:       Else
  loc_19265B9:         If (var_174 = "3 INCH RUNNING PAPER (THERMAL PRINTER)""3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_19265BE:           Close 1
  loc_19265E5:           Open "C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_19265F5:           var_B8.MoveFirst
  loc_19265FA:           ' Referenced from:     192706D
  loc_1926609:           If Not(var_B8.EOF) Then
  loc_1926619:             var_94 = "* KOT *"
  loc_192664A:             var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1926659:             If (0 = 0) Then
  loc_192665E:               Print 1
  loc_192668D:               var_1B4 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_19266D0:               var_26C = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_19266FA:               var_1E4 = (Chr(&HF) + Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))))
  loc_1926701:               var_224 = (CVar(CStr(Format(var_E4, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_1926708:               var_2C4 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_192670F:               var_2E4 = (Format(("0.00" / 2), "0.00") + Chr(&H12))
  loc_1926715:               Print 1, var_2E4
  loc_1926763:               var_154 = (42 - Len(Trim(var_94)))
  loc_1926796:               var_224 = (42 - Len(Trim(var_94)))
  loc_19267C0:               var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_19267CA:               var_1E4 = (Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))) + CVar(var_94))
  loc_19267D1:               var_25C = (CVar(CStr(Format(var_E4, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_19267D8:               var_294 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_19267DE:               Print 1, ("0.00" / 2)
  loc_19267FD:               var_96 = &H12
  loc_1926802:               Print 1
  loc_192680A:               Print 1
  loc_1926843:               Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")), var_96)
  loc_1926872:               var_124 = (Chr(&HF) + "KOT No.   :     ")
  loc_192687C:               var_1C4 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)))
  loc_1926883:               var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1926889:               Print 1, CVar(CStr(Format(var_E4, "0.00")))
  loc_192694C:               var_124 = (Chr(&HF) + "KOT Dt.   :     ")
  loc_1926956:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_96), &HC)))
  loc_192695F:               var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + " ")
  loc_1926969:               var_204 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1926970:               var_224 = (Trim(var_94) + Chr(&H12))
  loc_1926976:               Print 1, Space(3)
  loc_19269CF:               var_104 = var_B8.Fields.Item("Remarks")
  loc_1926A0C:               var_124 = (Chr(&HF) + "Remarks :     ")
  loc_1926A16:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H20)))
  loc_1926A1D:               var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_1926A23:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1926A5C:               Set var_E8 = Me.Label1
  loc_1926A62:               Call 0.Method_Proc_30_80_19273000 (2, var_104)
  loc_1926B04:               var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA)))
  loc_1926B0D:               var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + ":     ")
  loc_1926B14:               var_224 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1926B17:               var_234 = (Chr(&H12) + var_224)
  loc_1926B1E:               var_25C = ((Space(3) / 2) + Chr(&H12))
  loc_1926B24:               Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_1926B80:               var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1926B87:               var_154 = (CVar(var_104) + Chr(&H12))
  loc_1926B8D:               Print 1, CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))
  loc_1926B9E:             End If
  loc_1926BC4:             var_134 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Space(3))
  loc_1926BDE:             var_1B4 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))
  loc_1926BEA:             var_1C4 = Space(3)
  loc_1926BF2:             var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + var_1C4)
  loc_1926C0C:             var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_1926C55:             var_124 = (Chr(&HF) + CVar(CStr("000")))
  loc_1926C5C:             var_154 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1926C62:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_1926C96:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1926C9D:             var_154 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1926CA3:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_1926CBA:             var_96 = (var_96 + 4)
  loc_1926CC0:             var_BC.MoveFirst
  loc_1926CC5:             ' Referenced from:     1926E94
  loc_1926CD4:             If Not(var_BC.EOF) Then
  loc_1926D24:               Proc_6_39_E7D3A0(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_1926D6F:               Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1926DB9:               var_154 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1926DD2:               var_214 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))))
  loc_1926DE6:               var_234 = (Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))), "000") + Space(3))
  loc_1926DFF:               var_2C4 = (var_96 + CVar(Proc_6_52_EAE084(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_1926E65:               var_124 = (Chr(&HF) + CVar(CStr(Format(Format(Len(Trim(CVar(Me.LblRest))), "0.00"), "0.00"))))
  loc_1926E6C:               var_154 = (Space(3) + Chr(&H12))
  loc_1926E72:               Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_1926E89:               var_96 = (var_96 + 1)
  loc_1926E8F:               var_BC.MoveNext
  loc_1926E94:               GoTo loc_1926CC5
  loc_1926E97:             End If
  loc_1926EBA:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1926EC1:             var_154 = (Space(3) + Chr(&H12))
  loc_1926EC7:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_1926F39:             var_124 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1926F43:             var_1B4 = (Space(3) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), var_96), &H14)))
  loc_1926F4A:             var_1D4 = (CVar(var_BC.Fields.Item("qty")) + Chr(&H12))
  loc_1926F50:             Print 1, "0.00"
  loc_1926F98:             var_1B4 = Chr(&H12)
  loc_1926FA5:             var_124 = (Chr(&HF) + "***  ")
  loc_1926FB8:             var_1C4 = ("  ***" + var_1B4)
  loc_1926FC2:             Print 1, Space(3) & Trim(var_CC) & Chr(&H12)
  loc_1926FDB:             Print 1
  loc_1926FF6:             var_124 = (Chr(&HF) + "** ")
  loc_1927000:             var_134 = (Space(3) + CVar(MemVar_1F95220))
  loc_1927009:             var_154 = (Trim(var_CC) + " **")
  loc_192700F:             Print 1, Space(3) & Trim(var_CC)
  loc_1927022:             Print 1
  loc_192702A:             Print 1
  loc_1927050:             var_134 = (Chr(&H1B) + Chr(&H6D))
  loc_1927056:             Print 1, Trim(var_CC)
  loc_1927068:             var_B8.MoveNext
  loc_192706D:             GoTo loc_19265FA
  loc_1927070:           End If
  loc_1927072:           Close 1
  loc_19270AD:           If (Proc_6_38_E69628(CVar(var_C0.Fields.Item("Printer"))) <> vbNullString) Then
  loc_19270D5:             Open "C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_192712D:             var_134 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>") & var_C0.Fields.Item("Printer").Value 
  loc_1927133:             Print 1, var_134
  loc_1927153:           Else
  loc_1927178:             Open "C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_19271AF:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_19271C0:           End If
  loc_19271C2:           Close 1
  loc_19271CC:           If (MemVar_1F953BC = "Y") Then
  loc_19271FE:             var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_192720F:           Else
  loc_192723E:             var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_192724C:           End If
  loc_192724C:         End If
  loc_192724C:       End If
  loc_192724C:     End If
  loc_192724F:   Else
  loc_1927299:     MsgBox("Please Check Printer Setting of " & var_C0.Fields.Item("Name").Value & ".", &H40, Space(3) & Trim(var_CC), var_1B4, Chr(&H12))
  loc_19272B4:   End If
  loc_19272B7:   var_C0.MoveNext
  loc_19272BC:   GoTo loc_1924A34
  loc_19272BF: End If
  loc_19272C4: Set var_B8 = Nothing
  loc_19272CC: Set var_BC = Nothing
  loc_19272D4: Set var_C0 = Nothing
  loc_19272DC: Set var_D0 = Nothing
  loc_19272E4: Set var_D8 = Nothing
  loc_19272EC: Proc_30_80_1927300 = &HFF
  loc_19272F2: ' Referenced from: 1924788
  loc_19272F2: Proc_6_60_E63754(var_E4)
  loc_19272F7: Proc_30_80_1927300 = 
End Sub

Public Sub Proc_30_81_11AA824
  'Data Table: 58908C
  Dim unk_5890AB As Connection15
  Dim var_88 As Recordset15
  Dim var_E8 As Fields15
  Dim var_E4 As Variant
  Dim var_F8 As Fields15
  Dim var_12C As Variant
  Dim var_19C As Variant
  Dim var_F0 As TextBox
  Dim var_10C As TextBox
  loc_11AA4AC: If (Proc_275_12_130B494(2, var_90, var_8C, var_94, 0) = &HFF) Then
  loc_11AA4D3:   unk_5890AB.Execute "Select Code,Name,CardNo From SmartCardRegistration Where Code='" & var_8C & "'", var_E4, -1
  loc_11AA4DE:   Set var_88 = var_E8
  loc_11AA502:   If (var_88.RecordCount > 0) Then
  loc_11AA514:     var_E8 = var_88.Fields
  loc_11AA51C:     var_F0 = var_E8.Item("Code")
  loc_11AA547:     var_10C = var_88.Fields.Item("CardNo")
  loc_11AA558:     var_12C = CVar(Proc_6_38_E69628(CVar(var_10C), var_9C)) 'String
  loc_11AA55E:     var_13C = Ucase(var_12C)
  loc_11AA5DC:     var_19C = CVar("Reg. No : " & Proc_6_38_E69628(CVar(var_F0), var_E8, 0, 0) & vbCrLf & "Card No : ") & var_13C & vbCrLf & "Holder : " 
  loc_11AA5E7:     MsgBox(var_19C & Ucase(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), 0))), &H40, "Smart Card Verification", var_234, var_254)
  loc_11AA629:     If (var_94 = "Member") Then
  loc_11AA630:       Set var_E8 = Me.TopCtrl1
  loc_11AA636:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_11AA64F:       If (CStr() = "Add") Then
  loc_11AA660:         Set var_E8 = Me.Txt
  loc_11AA666:         Call 0.Method_Proc_30_81_11AA8240 (CInt(&HB), var_F0)
  loc_11AA66E:         var_F0.Text = "."
  loc_11AA688:         Set var_E8 = Me.Txt
  loc_11AA68E:         Call 0.Method_Proc_30_81_11AA8240 (CInt(&HB), var_F0)
  loc_11AA696:         var_F0.Tag = var_9C
  loc_11AA6AE:         Call Txt_Validate(CInt(&HB))
  loc_11AA6B3:       End If
  loc_11AA6B6:     Else
  loc_11AA6BA:       Set var_E8 = Me.TopCtrl1
  loc_11AA6C0:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_11AA6D9:       If (CStr() = "Add") Then
  loc_11AA712:         Set var_F8 = Me.Txt
  loc_11AA718:         Call 0.Method_Proc_30_81_11AA8240 (CInt(&HB), var_10C)
  loc_11AA720:         var_10C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")))
  loc_11AA76A:         Set var_F8 = Me.Txt
  loc_11AA770:         Call 0.Method_Proc_30_81_11AA8240 (CInt(&HB), var_10C)
  loc_11AA778:         var_10C.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("Code")))
  loc_11AA7C3:         Set var_F8 = Me.Txt
  loc_11AA7C9:         Call 0.Method_Proc_30_81_11AA8240 (CInt(var_98), var_10C)
  loc_11AA7D1:         var_10C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")))
  loc_11AA7E5:       End If
  loc_11AA7E5:     End If
  loc_11AA7E8:   Else
  loc_11AA809:     MsgBox("This Smart Card is Not Registered!", &H10, "Smart Card Verification", var_12C, var_13C)
  loc_11AA819:   End If
  loc_11AA819: End If
  loc_11AA81E: Set var_88 = Nothing
  loc_11AA821: Exit Sub
End Sub

Public Sub Proc_30_82_DFC140
  'Data Table: 58908C
  loc_DFC13C: Exit Sub
End Sub

Public Sub Proc_30_83_119C298
  'Data Table: 58908C
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_B4 As Variant
  Dim var_C0 As String
  Dim unk_5890AB As Connection15
  Dim var_88 As Recordset15
  Dim var_D4 As Variant
  Dim var_FC As Variant
  Dim var_100 As TextBox
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_B8 As String
  Dim var_13C As Variant
  Dim var_A8 As Variant
  Dim var_14C As Variant
  Dim var_EC As Variant
  Dim var_15C As Variant
  loc_119BEBF: Me.FGrid1.Redraw = False
  loc_119BEDA: Me.FGrid1.Rows = 1
  loc_119BEE7: global_268 = 1
  loc_119BF01: var_B0 = "select *,K.Vno as KotNo,K.VTime as KotTime,M.name as ItemName,k.qty as ItemQty from (Kot k left join itemmast M on k.item=M.code and M.restcode=k.itemrestcode) where K.PENDING IN('Y')AND VOIDYN NOT IN('Y')And K.RestCode='" & LocalRestCode
  loc_119BF19: Set var_AC = Me.Txt
  loc_119BF1F: Call 0.Method_Proc_30_83_119C2980 (CInt(4), var_B4, var_B8, var_B0 & "' and (k.DelFlag<>'Y' or k.DelFlag Is NULL) And NCKOT<>'Y' AND K.RoomNo = '")
  loc_119BF27: var_D4 = var_B4.Text
  loc_119BF30: var_C0 = -1 & var_B8
  loc_119BF40: unk_5890AB.Execute var_C0 & "' order by K.Vno ", var_D8, global_268
  loc_119BF4B: Set var_88 = var_D8
  loc_119BF7B: If (var_88.RecordCount = 0) Then
  loc_119BF8D:   Me.FGrid1.Visible = False
  loc_119BFA1:   Me.LblPendingKot.Visible = False
  loc_119BFAC: Else
  loc_119BFBA:   Me.FGrid1.Visible = True
  loc_119BFCE:   Me.LblPendingKot.Visible = True
  loc_119BFE4:   Set var_AC = Me.Label1
  loc_119BFEA:   Call 0.Method_Proc_30_83_119C2980 (2, var_B4)
  loc_119C001:   var_FC = ("Running Item For The " + Trim(CVar(var_B4)))
  loc_119C013:   Set var_D8 = Me.Txt
  loc_119C019:   Call 0.Method_Proc_30_83_119C2980 (CInt(4), var_100)
  loc_119C02C:   var_120 = (var_FC + CVar(var_100.Text))
  loc_119C03E:   Me.LblPendingKot.Caption = CStr(var_120)
  loc_119C05E:   ' Referenced from:   119C255
  loc_119C06D:   If Not(var_88.EOF) Then
  loc_119C077:     var_98 = vbNullString
  loc_119C08F:     var_98 = CVar(CLng(global_268)) 'Long
  loc_119C097:     var_13C = CVar(CLng(0)) 'Long
  loc_119C0A4:     var_D4 = CVar(CStr(global_268)) 'String
  loc_119C0AB:     LateIdCallSt
  loc_119C0BD:     var_A8 = CVar(CLng(global_268)) 'Long
  loc_119C0C5:     var_14C = CVar(CLng(1)) 'Long
  loc_119C0F5:     var_EC = CVar(CStr(var_88.Fields.Item("KOTNo").Value)) 'String
  loc_119C0FC:     LateIdCallSt
  loc_119C119:     var_A8 = CVar(CLng(global_268)) 'Long
  loc_119C121:     var_14C = CVar(CLng(2)) 'Long
  loc_119C151:     var_EC = CVar(CStr(var_88.Fields.Item("KotTime").Value)) 'String
  loc_119C158:     LateIdCallSt
  loc_119C1AA:     var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(3)), CVar(CLng(global_268)), Me.FGrid1, var_EC, CVar(CLng(3)), CVar(CLng(global_268)))) 'String
  loc_119C1B1:     LateIdCallSt
  loc_119C1E6:     var_13C = CVar(CLng(global_268)) 'Long
  loc_119C1EE:     var_15C = CVar(CLng(4)) 'Long
  loc_119C21B:     var_110 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemQty")), "0.00"))) 'String
  loc_119C222:     LateIdCallSt
  loc_119C23A:     Set var_12C = Nothing 
  loc_119C24A:     global_268 = (global_268 + 1)
  loc_119C250:     var_88.MoveNext
  loc_119C255:     GoTo loc_119C05E
  loc_119C258:   End If
  loc_119C26B:   Me.FGrid1.FixedRows = 1
  loc_119C273: End If
  loc_119C281: Me.FGrid1.Redraw = True
  loc_119C28E: Set var_88 = Nothing
  loc_119C291: Call Proc_30_78_1058390(global_268, var_12C, var_110, 1, 1, var_15C, var_13C)
  loc_119C296: Exit Sub
End Sub

Public Sub Proc_30_84_F0FCB8(arg_C) 'F0FCB8
  'Data Table: 58908C
  Dim var_94 As Integer
  Dim var_96 As Integer
  Dim var_C8 As Variant
  loc_F0FBE7: var_94 = CInt(InStr(1, arg_C, ",", 0))
  loc_F0FC10: var_96 = CInt(InStr((InStr(1, arg_C, ",", 0) + 1), arg_C, ",", 0))
  loc_F0FC19: var_C8 = CVar((var_94 - 1)) 'Integer
  loc_F0FC49: var_C8 = CVar((var_96 - (var_94 + 1))) 'Integer
  loc_F0FC5E: var_D8 = Mid(arg_C, CLng((var_94 + 1)), var_C8)
  loc_F0FC78: var_C8 = CVar((CInt(Len(arg_C)) - var_96)) 'Integer
  loc_F0FC8D: var_D8 = Mid(arg_C, CLng((var_96 + 1)), var_C8)
  loc_F0FCAF: Call 0.Method_MeC (CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)))
  loc_F0FCB4: Exit Sub
  loc_F0FCB5: Exit Sub
End Sub

Public Sub Proc_30_85_1BE4B18(arg_C) '1BE4B18
  'Data Table: 58908C
  Dim var_124 As Variant
  Dim var_104 As Variant
  Dim var_134 As Variant
  Dim var_138 As String
  Dim unk_5890AB As Connection15
  Dim var_F4 As Recordset15
  Dim var_15C As Variant
  Dim var_114 As Variant
  Dim Me As Recordset15
  Dim var_164 As Variant
  Dim var_158 As Variant
  Dim var_174 As Variant
  Dim var_178 As String
  Dim var_17C As String
  Dim var_B8 As Recordset15
  Dim var_180 As Fields15
  Dim var_C0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_194 As Variant
  Dim var_1E8 As Variant
  Dim var_1F8 As Variant
  Dim var_270 As Variant
  Dim var_148 As Variant
  Dim var_2F8 As String
  Dim var_2FC As String
  Dim var_1D8 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_218 As Variant
  Dim var_248 As Variant
  Dim var_340 As Variant
  Dim var_350 As Variant
  Dim var_E0 As Recordset15
  Dim var_238 As Variant
  Dim var_2F0 As Variant
  Dim var_32C As Variant
  Dim var_2F4 As String
  Dim var_2C0 As Variant
  Dim var_2D0 As Variant
  Dim var_2E0 As Variant
  Dim var_38C As Variant
  Dim var_3AC As Variant
  loc_1BDF344: On Error Goto loc_1BE4B0D
  loc_1BDF364: Proc_6_17_EAAE40(var_114, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1BDF37A: unk_5890AB.Execute CStr(var_158 & var_114), -1, var_15C
  loc_1BDF385: Set var_F4 = var_15C
  loc_1BDF3AB: If (var_F4.RecordCount > 0) Then
  loc_1BDF3E5:   var_E4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_F4.Fields.Item("KOTHeader1"))))))
  loc_1BDF42B:   var_E8 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_F4.Fields.Item("KOTHeader2"))))))
  loc_1BDF471:   var_EC = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_F4.Fields.Item("KOTHeader3"))))))
  loc_1BDF4B7:   var_F0 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_F4.Fields.Item("KOTHeader4"))))))
  loc_1BDF4C6: End If
  loc_1BDF4CB: Set var_F4 = Nothing
  loc_1BDF4D1: MemVar_1F953C4 = "N"
  loc_1BDF4D8: MemVar_1F953C8 = "N"
  loc_1BDF4DF: MemVar_1F953CC = "K"
  loc_1BDF4EA: var_138 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,S.CardNo,S.Name As MemName,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT,K.NCTYPE,K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt,K.U_AE,K.TokenNo " & "From (((KOT K Left Join Waiter W on K.Waiter=W.Code) left join SubGroup S On K.Party=S.SubCode) Left Join Depart D on D.Code=K.RestCode) "
  loc_1BDF52F: var_8C = CStr(CVar(var_138 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1BDF54E: var_134 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1BDF56E: var_164 = Me.Fields.Item("SearchCode")
  loc_1BDF57E: var_158 = var_134 & var_164.Value 
  loc_1BDF587: var_174 = var_158 & "'" 
  loc_1BDF58C: var_90 = CStr(var_174)
  loc_1BDF5A9: If (var_8C = vbNullString) Then
  loc_1BDF5B1:   Proc_30_85_1BE4B18 = 0
  loc_1BDF5B7: End If
  loc_1BDF5BF: If (var_90 = vbNullString) Then
  loc_1BDF5C7:   Proc_30_85_1BE4B18 = 0
  loc_1BDF5CD: End If
  loc_1BDF5EB: Set var_15C = Me.Txt
  loc_1BDF5F1: Call 0.Method_Proc_30_85_1BE4B180 (CInt(4), var_164, var_138, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='")
  loc_1BDF5F9: var_114 = var_164.Text
  loc_1BDF602: var_178 = -1 & var_138
  loc_1BDF612: unk_5890AB.Execute var_178 & "' AND CONTRADOCID IS NULL", var_180, 
  loc_1BDF649: If (var_180.RecordCount = 1) Then
  loc_1BDF64F:   var_CC = "New Order"
  loc_1BDF655: Else
  loc_1BDF65C:   Set var_15C = Me.LblState
  loc_1BDF66A:   var_CC = var_15C.Caption
  loc_1BDF670: End If
  loc_1BDF686: unk_5890AB.Execute var_8C, var_114, -1
  loc_1BDF691: Set var_B8 = var_15C
  loc_1BDF6A9: var_15C = var_B8.Fields
  loc_1BDF6E9: var_134 = CVar(var_B8.Fields.Item("ContraDocId")) 'Address
  loc_1BDF710: If (var_15C And (Proc_6_38_E69628(var_134, (Proc_6_38_E69628(CVar(var_15C.Item("NCKOT"))) <> "Y")) <> vbNullString)) Then
  loc_1BDF726:   var_114 = "Sale Bill Already Generated !!"
  loc_1BDF72C:   MsgBox(var_114, &H40, var_134, var_158, var_174)
  loc_1BDF741:   Proc_30_85_1BE4B18 = 0
  loc_1BDF747: End If
  loc_1BDF75E: var_138 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & LocalRestCode
  loc_1BDF76E: unk_5890AB.Execute var_138 & "'", var_114, -1
  loc_1BDF779: Set var_C0 = var_15C
  loc_1BDF789: ' Referenced from: 1BE4AE7
  loc_1BDF798: If Not(var_C0.EOF) Then
  loc_1BDF7A2:   var_134 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1BDF7BA:   var_15C = Me.Fields
  loc_1BDF7CA:   var_114 = var_15C.Item("SearchCode").Value
  loc_1BDF80B:   unk_5890AB.Execute CStr(var_134 & var_114 & "'"), var_114, -1
  loc_1BDF816:   Set var_BC = var_15C
  loc_1BDF825:   var_160 = var_BC.RecordCount
  loc_1BDF833:   If (var_160 > 0) Then
  loc_1BDF845:     var_15C = var_C0.Fields
  loc_1BDF864:     var_1A8 = Trim(CVar(var_15C.Item("PrintType"))) 'Variant
  loc_1BDF879:     If (var_1A8 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1BDF889:       Call Proc_30_86_EFB79C(New, var_15C)
  loc_1BDF891:       Set var_DC = var_15C
  loc_1BDF897:       Me.Recordset15.MoveFirst
  loc_1BDF89C:       ' Referenced from: 1BE062A
  loc_1BDF8AB:       If Not(var_B8.EOF) Then
  loc_1BDF8B0:         var_96 = 0
  loc_1BDF8C7:         var_15C = var_B8.Fields
  loc_1BDF9D8:         var_2F0 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_15C.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_15C) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BDF9E1:         var_94 = CStr(var_2F0)
  loc_1BDFA25:         If (var_96 = 0) Then
  loc_1BDFA2B:           var_17C = vbNullString
  loc_1BDFA46:           Call Proc_30_87_F15438(var_DC, vbNullString, vbNullString)
  loc_1BDFA82:           var_C4 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1BDFAB9:           var_134 = CVar(Me.LblRest.Caption) 'String
  loc_1BDFABC:           var_158 = (Space(1) + var_134)
  loc_1BDFAD1:           Call Proc_30_87_F15438(var_DC, vbNullString, CStr(Trim(CVar(Proc_6_38_E69628(CVar(Me.LblRest.Item("ShortName")), 1, var_96)))))
  loc_1BDFB03:           Call Proc_30_87_F15438(var_DC, vbNullString, var_94, vbNullString)
  loc_1BDFB32:           Call Proc_30_87_F15438(var_DC, vbNullString, vbNullString, vbNullString)
  loc_1BDFB66:           Proc_6_39_E7D3A0(var_134, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BDFB9A:           var_17C = vbNullString
  loc_1BDFBA3:           Call Proc_30_87_F15438(var_DC, var_17C, " KOT No.   : " & Proc_6_45_EADFB8(CStr(var_134), &HA, vbNullString))
  loc_1BDFC5F:           var_2FC = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")), " KOT Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1BDFC73:           Call Proc_30_87_F15438(var_DC, vbNullString, " KOT Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC) & " " & var_2FC)
  loc_1BDFCBA:           var_164 = var_B8.Fields.Item("Remarks")
  loc_1BDFD05:           Call Proc_30_87_F15438(var_DC, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_164), vbNullString), &H1E))
  loc_1BDFD37:           Set var_15C = Me.Label1
  loc_1BDFD3D:           Call 0.Method_Proc_30_85_1BE4B180 (2, var_164)
  loc_1BDFDA8:           var_2F8 = vbNullString
  loc_1BDFDB7:           var_1B8 = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_164))), &HA)))
  loc_1BDFDC0:           var_1C8 = (Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_15C.Item("ShortName")), 1, &H12))), 1, 3) + ": ")
  loc_1BDFDC7:           var_1E8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1BDFDCA:           var_218 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_15C.Item("ShortName")), 1, &H12))), 1, 3)) + var_1E8)
  loc_1BDFDDF:           Call Proc_30_87_F15438(var_DC, vbNullString, CStr("* NC LOT *"))
  loc_1BDFE16:           var_178 = vbNullString
  loc_1BDFE2B:           Call Proc_30_87_F15438(var_DC, vbNullString, var_C4)
  loc_1BDFE37:         End If
  loc_1BDFE5D:         var_158 = (var_178 + CVar(Proc_6_45_EADFB8("ITEM NAME", &H19, Space(1))))
  loc_1BDFE71:         var_1B8 = (Trim(CVar(var_164)) + Space(1))
  loc_1BDFE88:         var_1C8 = CVar(Proc_6_52_EAE084("Qty", 3, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_15C.Item("ShortName")), 1, &H12))), 1, 3))) 'String
  loc_1BDFE8B:         var_1D8 = (var_2F8 + var_1C8)
  loc_1BDFE90:         var_B0 = CStr(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BDFEAE:         var_178 = vbNullString
  loc_1BDFEC3:         Call Proc_30_87_F15438(var_DC, vbNullString, var_B0)
  loc_1BDFED2:         var_178 = vbNullString
  loc_1BDFEE7:         Call Proc_30_87_F15438(var_DC, vbNullString, var_C4)
  loc_1BDFEF9:         var_96 = (var_96 + 4)
  loc_1BDFEFF:         var_BC.MoveFirst
  loc_1BDFF04:         ' Referenced from: 1BE0285
  loc_1BDFF13:         If Not(var_BC.EOF) Then
  loc_1BDFF4C:           var_180 = var_BC.Fields
  loc_1BDFF63:           Proc_6_39_E7D3A0(var_1E8, CVar(var_180.Item("qty")), &H12)
  loc_1BDFF8E:           var_194 = "Cancel"
  loc_1BDFFC8:           var_1F8 = "Y"
  loc_1BE0006:           var_174 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1BE001A:           var_1C8 = (Space(1) + Space(1))
  loc_1BE0033:           var_270 = (var_178 + CVar(Proc_6_52_EAE084(CStr(Format(var_1E8, "0")), 3, var_1C8)))
  loc_1BE0049:           var_340 = CVar(Proc_6_52_EAE084(CStr(IIf((var_BC.Fields.Item(var_194).Value = var_1F8), "Void", vbNullString)), 5, CVar(var_B8.Fields.Item("NCKOT")))) 'String
  loc_1BE004C:           var_350 = (var_178 + var_340)
  loc_1BE00AB:           Call Proc_30_87_F15438(var_DC, vbNullString, CStr(var_350))
  loc_1BE00BD:           var_96 = (var_96 + 1)
  loc_1BE00F9:           If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BE012A:             var_2F8 = vbNullString
  loc_1BE0151:             Call Proc_30_87_F15438(var_DC, vbNullString, "(" & Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), vbNullString) & ")")
  loc_1BE0171:             var_96 = (var_96 + 1)
  loc_1BE0174:           End If
  loc_1BE017E:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BE0199:             Call Proc_30_87_F15438(var_DC, vbNullString, var_C4, vbNullString)
  loc_1BE01C3:             Call Proc_30_87_F15438(var_DC, vbNullString, " Contd.", vbNullString)
  loc_1BE01D7:             var_98 = (var_98 + 1)
  loc_1BE01F7:             Call Proc_30_87_F15438(var_DC, vbNullString, var_94, vbNullString, 0)
  loc_1BE0220:             Call Proc_30_87_F15438(var_DC, vbNullString, var_C4, vbNullString, &H12)
  loc_1BE0244:             Call Proc_30_87_F15438(var_DC, vbNullString, var_B0, vbNullString)
  loc_1BE0268:             Call Proc_30_87_F15438(var_DC, vbNullString, var_C4, vbNullString)
  loc_1BE027A:             var_96 = (var_96 + 4)
  loc_1BE027D:           End If
  loc_1BE0280:           var_BC.MoveNext
  loc_1BE0285:           GoTo loc_1BDFF04
  loc_1BE0288:         End If
  loc_1BE0292:         If (&H12 < (&H45 - var_AA)) Then
  loc_1BE0295:           ' Referenced from: 1BE02D7
  loc_1BE029F:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BE02C0:             Call Proc_30_87_F15438(var_DC, vbNullString, vbNullString, vbNullString, &H12)
  loc_1BE02D4:             var_96 = (var_96 + 1)
  loc_1BE02D7:             GoTo loc_1BE0295
  loc_1BE02DA:           End If
  loc_1BE02DA:         End If
  loc_1BE02F2:         Call Proc_30_87_F15438(var_DC, vbNullString, var_C4, vbNullString, &H12)
  loc_1BE0340:         var_2F8 = vbNullString
  loc_1BE0360:         Call Proc_30_87_F15438(var_DC, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1BE03BB:         Call Proc_30_87_F15438(var_DC, vbNullString, CStr(" ***  " & Trim(var_CC) & "  ***"), vbNullString)
  loc_1BE041A:         var_158 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BE0428:         unk_5890AB.Execute CStr(var_158), Space(1), -1
  loc_1BE0489:         If (var_180.Fields.Item(0).Value > 1) Then
  loc_1BE04B3:           Call Proc_30_87_F15438(var_DC, vbNullString, " ***  " & "Changed KOT" & "  ***", vbNullString)
  loc_1BE04C6:         Else
  loc_1BE04D3:           var_124 = "Select Printed from kot where docid='"
  loc_1BE0509:           var_148 = "'"
  loc_1BE051C:           unk_5890AB.Execute CStr(var_124 & Me.Fields.Item("SearchCode").Value & var_148), Space(1), -1
  loc_1BE0544:           var_104 = 0
  loc_1BE057A:           If (Proc_6_38_E69628(CVar(var_180.Fields.Item(var_104)), var_180, var_180) = "Y") Then
  loc_1BE05A4:             Call Proc_30_87_F15438(var_DC, vbNullString, " ***  " & "DUPLICATE KOT" & "  ***", vbNullString)
  loc_1BE05B7:           Else
  loc_1BE05D5:             Call Proc_30_87_F15438(var_DC, vbNullString, vbNullString, vbNullString)
  loc_1BE05E3:           End If
  loc_1BE05E3:         End If
  loc_1BE05E8:         Set var_E0 = Nothing
  loc_1BE0612:         Call Proc_30_87_F15438(var_DC, vbNullString, "** " & MemVar_1F95220 & " **", vbNullString)
  loc_1BE0625:         var_B8.MoveNext
  loc_1BE062A:         GoTo loc_1BDF89C
  loc_1BE062D:       End If
  loc_1BE0630:       var_D8 = "WinKOTPrint"
  loc_1BE0657:       Set var_15C = var_DC 
  loc_1BE065E:       CreateFieldDefFile(var_15C, MemVar_1F950B4 & "\" & var_D8 & ".ttx", &HFF)
  loc_1BE06A0:       Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_D8 & ".RPT", var_104, var_15C)
  loc_1BE06AB:       MemVar_1F951E8 = var_15C
  loc_1BE06D4:       Call 0.Method_arg_64 (var_15C, CVar(var_15C), var_124, var_148)
  loc_1BE06DC:       Call 0.Method_arg_2C (var_2F8, var_2F8)
  loc_1BE06EC:       If (arg_14 <> vbNullString) Then
  loc_1BE070D:         If CBool(Ucase(arg_14) <> "PRN") Then
  loc_1BE0713:           Call Proc_30_84_F0FCB8(arg_14)
  loc_1BE0718:         End If
  loc_1BE0718:       End If
  loc_1BE0724:       var_124 = 1
  loc_1BE0735:       Call 0.Method_Me8 (False, var_124, var_148)
  loc_1BE073F:       Set var_DC = Nothing
  loc_1BE0745:     Else
  loc_1BE0750:       If (var_1A8 = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1BE0756:         var_B8.MoveFirst
  loc_1BE075B:         ' Referenced from:   1BE1665
  loc_1BE076A:         If Not(var_B8.EOF) Then
  loc_1BE0770:           var_104 = "ShortName"
  loc_1BE07A0:           var_174 = 3
  loc_1BE07CF:           var_180 = var_B8.Fields
  loc_1BE07D7:           var_184 = var_180.Item("NCKOT")
  loc_1BE0879:           var_148 = "LAU"
  loc_1BE0883:           var_2E0 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_104)), "NCKOT"))), 1, var_174)) = var_148) 'Variant
  loc_1BE088D:           var_2F0 = IIf(var_2E0, IIf((Proc_6_38_E69628(CVar(var_184), (Proc_6_38_E69628(CVar(var_184), var_1F8) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BE0896:           var_94 = CStr(var_2F0)
  loc_1BE08D7:           var_D8 = "KOTPrint"
  loc_1BE08FE:           Set var_15C = var_BC 
  loc_1BE0905:           CreateFieldDefFile(var_15C, MemVar_1F950B4 & "\" & var_D8 & ".ttx")
  loc_1BE0911:           Set var_BC = var_15C
  loc_1BE0947:           Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_D8 & ".RPT", var_104, var_15C)
  loc_1BE0952:           MemVar_1F951E8 = var_15C
  loc_1BE097B:           Call 0.Method_arg_64 (var_15C, CVar(var_BC), var_124)
  loc_1BE0983:           Call 0.Method_arg_2C (var_148, &HFF)
  loc_1BE0991:           Call 0.Method_arg_150 (var_15C)
  loc_1BE09DE:           var_158 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BE09EC:           unk_5890AB.Execute CStr(var_158), var_174, -1
  loc_1BE0A4D:           If (var_180.Fields.Item(0).Value > 1) Then
  loc_1BE0A53:             var_D0 = "Changed KOT"
  loc_1BE0A59:           Else
  loc_1BE0AAF:             unk_5890AB.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_174, -1
  loc_1BE0AE3:             var_15C = var_180.Fields
  loc_1BE0AEB:             var_164 = var_15C.Item(0)
  loc_1BE0AFC:             var_138 = Proc_6_38_E69628(CVar(var_164), var_180)
  loc_1BE0B0D:             If (var_138 = "Y") Then
  loc_1BE0B13:               var_D0 = "DUPLICATE KOT"
  loc_1BE0B19:             Else
  loc_1BE0B1C:               var_D0 = vbNullString
  loc_1BE0B1F:             End If
  loc_1BE0B1F:           End If
  loc_1BE0B24:           Set var_E0 = Nothing
  loc_1BE0B38:           Call 0.Method_arg_90 (var_15C, var_160, var_B2)
  loc_1BE0B40:           Call 0.Method_arg_24 (1)
  loc_1BE0B4C:           For var_354 =  To CInt(var_160):   var_180 = var_354 'Integer
  loc_1BE0B65:             Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BE0B6D:             Call 0.Method_arg_20 (var_164)
  loc_1BE0B75:             Call 0.Method_arg_30 (var_138)
  loc_1BE0B8B:             var_364 = Ucase(CVar(var_138)) 'Variant
  loc_1BE0BBB:             If (var_364 = Ucase("comp_name")) Then
  loc_1BE0BDF:               Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BE0BE7:               Call 0.Method_arg_20 (var_164)
  loc_1BE0BEF:               Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1BE0C05:             Else
  loc_1BE0C27:               If (var_364 = Ucase("comp_add1")) Then
  loc_1BE0C4B:                 Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BE0C53:                 Call 0.Method_arg_20 (var_164)
  loc_1BE0C5B:                 Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1BE0C71:               Else
  loc_1BE0C93:                 If (var_364 = Ucase("comp_pin")) Then
  loc_1BE0CB7:                   Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BE0CBF:                   Call 0.Method_arg_20 (var_164)
  loc_1BE0CC7:                   Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1BE0CDD:                 Else
  loc_1BE0CFF:                   If (var_364 = Ucase("comp_GSTIN")) Then
  loc_1BE0D23:                     Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BE0D2B:                     Call 0.Method_arg_20 (var_164)
  loc_1BE0D33:                     Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1BE0D49:                   Else
  loc_1BE0D6B:                     If (var_364 = Ucase("RestName")) Then
  loc_1BE0D78:                       Set var_15C = Me.LblRest
  loc_1BE0DA1:                       Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BE0DA9:                       Call 0.Method_arg_20 (var_180)
  loc_1BE0DB1:                       Call 0.Method_arg_38 ("'" & var_15C.Caption & "'")
  loc_1BE0DCB:                     Else
  loc_1BE0DED:                       If (var_364 = Ucase("mTitle")) Then
  loc_1BE0E11:                         Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BE0E19:                         Call 0.Method_arg_20 (var_164)
  loc_1BE0E21:                         Call 0.Method_arg_38 ("'" & var_94 & "'")
  loc_1BE0E37:                       Else
  loc_1BE0E3F:                         var_114 = "Header1"
  loc_1BE0E59:                         If (var_364 = Ucase(var_114)) Then
  loc_1BE0E67:                           Proc_6_17_EAAE40(var_114)
  loc_1BE0E83:                           Call 0.Method_arg_90 (var_15C, CLng(var_B2), var_164)
  loc_1BE0E8B:                           Call 0.Method_arg_20 (CStr(var_114))
  loc_1BE0E93:                           Call 0.Method_arg_38 (var_E4)
  loc_1BE0EA8:                         Else
  loc_1BE0EB0:                           var_114 = "Header2"
  loc_1BE0ECA:                           If (var_364 = Ucase(var_114)) Then
  loc_1BE0ED8:                             Proc_6_17_EAAE40(var_114)
  loc_1BE0EF4:                             Call 0.Method_arg_90 (var_15C, CLng(var_B2), var_164)
  loc_1BE0EFC:                             Call 0.Method_arg_20 (CStr(var_114))
  loc_1BE0F04:                             Call 0.Method_arg_38 (var_E8)
  loc_1BE0F19:                           Else
  loc_1BE0F21:                             var_114 = "Header3"
  loc_1BE0F3B:                             If (var_364 = Ucase(var_114)) Then
  loc_1BE0F49:                               Proc_6_17_EAAE40(var_114)
  loc_1BE0F65:                               Call 0.Method_arg_90 (var_15C, CLng(var_B2), var_164)
  loc_1BE0F6D:                               Call 0.Method_arg_20 (CStr(var_114))
  loc_1BE0F75:                               Call 0.Method_arg_38 (var_EC)
  loc_1BE0F8A:                             Else
  loc_1BE0F92:                               var_114 = "Header4"
  loc_1BE0FAC:                               If (var_364 = Ucase(var_114)) Then
  loc_1BE0FBA:                                 Proc_6_17_EAAE40(var_114)
  loc_1BE0FD6:                                 Call 0.Method_arg_90 (var_15C, CLng(var_B2), var_164)
  loc_1BE0FDE:                                 Call 0.Method_arg_20 (CStr(var_114))
  loc_1BE0FE6:                                 Call 0.Method_arg_38 (var_F0)
  loc_1BE0FFB:                               Else
  loc_1BE100C:                                 var_134 = Ucase("KotNo")
  loc_1BE101D:                                 If (var_364 = var_134) Then
  loc_1BE104B:                                   Proc_6_39_E7D3A0(var_134, CVar(var_B8.Fields.Item("VNo")))
  loc_1BE1057:                                   var_148 = "'"
  loc_1BE1074:                                   Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BE107C:                                   Call 0.Method_arg_20 (var_184)
  loc_1BE1084:                                   Call 0.Method_arg_38 (CStr("'" & var_134 & var_148))
  loc_1BE10A3:                                 Else
  loc_1BE10C5:                                   If (var_364 = Ucase("KotDate")) Then
  loc_1BE1111:                                     Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BE1119:                                     Call 0.Method_arg_20 (var_184)
  loc_1BE1121:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate"))) & "'")
  loc_1BE113E:                                   Else
  loc_1BE1160:                                     If (var_364 = Ucase("KotTime")) Then
  loc_1BE11AC:                                       Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BE11B4:                                       Call 0.Method_arg_20 (var_184)
  loc_1BE11BC:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))) & "'")
  loc_1BE11D9:                                     Else
  loc_1BE11FB:                                       If (var_364 = Ucase("Remarks")) Then
  loc_1BE1247:                                         Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BE124F:                                         Call 0.Method_arg_20 (var_184)
  loc_1BE1257:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("Remarks"))) & "'")
  loc_1BE1274:                                       Else
  loc_1BE1296:                                         If (var_364 = Ucase("Card_No")) Then
  loc_1BE12E2:                                           Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BE12EA:                                           Call 0.Method_arg_20 (var_184)
  loc_1BE12F2:                                           Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("CardNo"))) & "'")
  loc_1BE130F:                                         Else
  loc_1BE1331:                                           If (var_364 = Ucase("Member_Name")) Then
  loc_1BE134E:                                             var_164 = var_B8.Fields.Item("MemName")
  loc_1BE137D:                                             Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BE1385:                                             Call 0.Method_arg_20 (var_184)
  loc_1BE138D:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_164)) & "'")
  loc_1BE13AA:                                           Else
  loc_1BE13CC:                                             If (var_364 = Ucase("TableTitle")) Then
  loc_1BE13DD:                                               Set var_15C = Me.Label1
  loc_1BE13E3:                                               Call 0.Method_Proc_30_85_1BE4B180 (2, var_164)
  loc_1BE141B:                                               Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BE1423:                                               Call 0.Method_arg_20 (var_184)
  loc_1BE142B:                                               Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_164)) & "'"))
  loc_1BE144A:                                             Else
  loc_1BE146C:                                               If (var_364 = Ucase("TableNo")) Then
  loc_1BE14B8:                                                 Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BE14C0:                                                 Call 0.Method_arg_20 (var_184)
  loc_1BE14C8:                                                 Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo"))) & "'")
  loc_1BE14E5:                                               Else
  loc_1BE1507:                                                 If (var_364 = Ucase("Steward")) Then
  loc_1BE151C:                                                   var_15C = var_B8.Fields
  loc_1BE1524:                                                   var_164 = var_15C.Item("WaiterName")
  loc_1BE1553:                                                   Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BE155B:                                                   Call 0.Method_arg_20 (var_184)
  loc_1BE1563:                                                   Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_164)) & "'")
  loc_1BE1580:                                                 Else
  loc_1BE15A2:                                                   If (var_364 = Ucase("KotStatus")) Then
  loc_1BE15C6:                                                     Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BE15CE:                                                     Call 0.Method_arg_20 (var_164)
  loc_1BE15D6:                                                     Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1BE15EC:                                                   Else
  loc_1BE160E:                                                     If (var_364 = Ucase("KotRemark")) Then
  loc_1BE1632:                                                       Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BE163A:                                                       Call 0.Method_arg_20 (var_164)
  loc_1BE1642:                                                       Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1BE1655:                                                     End If
  loc_1BE1655:                                                   End If
  loc_1BE1655:                                                 End If
  loc_1BE1655:                                               End If
  loc_1BE1655:                                             End If
  loc_1BE1655:                                           End If
  loc_1BE1655:                                         End If
  loc_1BE1655:                                       End If
  loc_1BE1655:                                     End If
  loc_1BE1655:                                   End If
  loc_1BE1655:                                 End If
  loc_1BE1655:                               End If
  loc_1BE1655:                             End If
  loc_1BE1655:                           End If
  loc_1BE1655:                         End If
  loc_1BE1655:                       End If
  loc_1BE1655:                     End If
  loc_1BE1655:                   End If
  loc_1BE1655:                 End If
  loc_1BE1655:               End If
  loc_1BE1655:             End If
  loc_1BE1658:           Next var_354 'Integer
  loc_1BE1660:           var_B8.MoveNext
  loc_1BE1665:           GoTo loc_1BE075B
  loc_1BE1668:         End If
  loc_1BE1670:         If (arg_14 <> vbNullString) Then
  loc_1BE1691:           If CBool(Ucase(arg_14) <> "PRN") Then
  loc_1BE1697:             Call Proc_30_84_F0FCB8(arg_14)
  loc_1BE169C:           End If
  loc_1BE169C:         End If
  loc_1BE16B9:         Call 0.Method_Me8 (False, 1, var_148)
  loc_1BE16C1:       Else
  loc_1BE16CC:         If (var_1A8 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1BE16D1:           Close 1
  loc_1BE16ED:           Open "C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT" For Output As 1 Len = &HFF
  loc_1BE16FD:           var_B8.MoveFirst
  loc_1BE1702:           ' Referenced from:     1BE25FA
  loc_1BE1711:           If Not(var_B8.EOF) Then
  loc_1BE1716:             var_96 = 0
  loc_1BE1751:             var_174 = 3
  loc_1BE1774:             var_194 = "NCKOT"
  loc_1BE17F1:             var_2F4 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")))
  loc_1BE180D:             var_178 = var_2F4
  loc_1BE1834:             var_2E0 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_174)) = "LAU") 'Variant
  loc_1BE183E:             var_2F0 = IIf(var_2E0, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_194)), var_194) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_178 = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BE1847:             var_94 = CStr(var_2F0)
  loc_1BE188B:             If (var_96 = 0) Then
  loc_1BE1890:               Print 1
  loc_1BE18C4:               var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BE18D5:               If (var_E4 <> vbNullString) Then
  loc_1BE18FE:                 var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E4, &H28)))
  loc_1BE1904:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE1916:               End If
  loc_1BE191E:               If (var_E8 <> vbNullString) Then
  loc_1BE1947:                 var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E8, &H28)))
  loc_1BE194D:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE195F:               End If
  loc_1BE1967:               If (var_EC <> vbNullString) Then
  loc_1BE1990:                 var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1BE1996:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE19A8:               End If
  loc_1BE19B0:               If (var_F0 <> vbNullString) Then
  loc_1BE19D9:                 var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1BE19DF:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE19F1:               End If
  loc_1BE19F3:               Print 1
  loc_1BE1A23:               Call Proc_30_103_EFA714(Me.LblRest.Caption, "D", &H28)
  loc_1BE1A2D:               Print 1, var_2F4
  loc_1BE1A53:               Call Proc_30_103_EFA714(var_94, "D", &H28)
  loc_1BE1A5D:               Print 1, var_178
  loc_1BE1A71:               Print 1
  loc_1BE1A79:               Print 1
  loc_1BE1AB2:               Proc_6_39_E7D3A0(var_174, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BE1AD4:               var_134 = (Chr(&HF) + "KOT No.   :     ")
  loc_1BE1ADE:               var_1C8 = (CVar(Proc_6_45_EADFB8(var_F0, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_174), &HA, Proc_6_45_EADFB8(CStr(var_174), &HA, var_178))))
  loc_1BE1AE4:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_174))
  loc_1BE1B96:               var_134 = (Chr(&HF) + "KOT Dt.   :     ")
  loc_1BE1BA0:               var_1B8 = (CVar(Proc_6_45_EADFB8(var_F0, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2F4), &HC)))
  loc_1BE1BA9:               var_1C8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2F4), &HC))), &HA, Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2F4), &HC))), &HA, var_178))) + " ")
  loc_1BE1BB3:               var_218 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2F4), &HC)))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BE1BB9:               Print 1, "* NC LOT *"
  loc_1BE1C0E:               var_164 = var_B8.Fields.Item("Remarks")
  loc_1BE1C4B:               var_134 = (Chr(&HF) + "Remarks :     ")
  loc_1BE1C55:               var_1B8 = (CVar(Proc_6_45_EADFB8(var_F0, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_164)), &H32)))
  loc_1BE1C5C:               var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_164)), &H32))), &HA, Proc_6_38_E69628(CVar(var_164)))) + Chr(&H12))
  loc_1BE1C62:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BE1C9B:               Set var_15C = Me.Label1
  loc_1BE1CA1:               Call 0.Method_Proc_30_85_1BE4B180 (2, var_164)
  loc_1BE1CF2:               var_2F4 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BE1D12:               var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_164))), &HA)))
  loc_1BE1D1B:               var_1C8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_164))), &HA))), &HA, Proc_6_38_E69628(CVar(var_164)))) + ":     ")
  loc_1BE1D25:               var_218 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_2F4, 5)))
  loc_1BE1D2B:               Print 1, "* NC LOT *"
  loc_1BE1D70:               var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE1D76:               Print 1, CVar(var_164)
  loc_1BE1D83:             End If
  loc_1BE1DA9:             var_158 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1BE1DB5:             var_178 = "Qty"
  loc_1BE1DC3:             var_1B8 = (Trim(CVar(var_164)) + CVar(Proc_6_52_EAE084(var_178, 6)))
  loc_1BE1DC8:             var_B0 = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_178, 6))), &HA, var_178)))
  loc_1BE1DF5:             var_134 = (Chr(&HF) + CVar(var_B0))
  loc_1BE1DFB:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1BE1E1E:             var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE1E24:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1BE1E37:             var_96 = (var_96 + 4)
  loc_1BE1E3D:             var_BC.MoveFirst
  loc_1BE1E42:             ' Referenced from:     1BE21E3
  loc_1BE1E51:             If Not(var_BC.EOF) Then
  loc_1BE1E8A:               var_180 = var_BC.Fields
  loc_1BE1EA1:               Proc_6_39_E7D3A0(Chr(&H12), CVar(var_180.Item("qty")))
  loc_1BE1F44:               var_174 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1BE1F5D:               var_238 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084(var_178, 6)))))
  loc_1BE1F73:               var_2F0 = CVar(Proc_6_52_EAE084(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1BE1F76:               var_32C = (&H12 + var_2F0)
  loc_1BE1FCF:               var_134 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1BE1FD5:               Print 1, Space(3)
  loc_1BE1FE8:               var_96 = (var_96 + 1)
  loc_1BE2024:               If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BE2067:                 var_134 = (Chr(&HF) + "(")
  loc_1BE2071:                 var_1B8 = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")))))
  loc_1BE207A:                 var_1C8 = (CVar(var_180.Item("qty")) + ")")
  loc_1BE2080:                 Print 1, Chr(&H12)
  loc_1BE20A1:                 var_96 = (var_96 + 1)
  loc_1BE20A4:               End If
  loc_1BE20AE:               If (&H12 = (&H45 - var_AA)) Then
  loc_1BE20C7:                 var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE20CD:                 Print 1, Space(3)
  loc_1BE20DF:                 Print 1, "Contd."
  loc_1BE20F7:                 Print 1, Chr(&HC)
  loc_1BE2106:                 var_98 = (var_98 + 1)
  loc_1BE211C:                 Call Proc_30_104_11FFF98(1, 0, &H28, var_2FE)
  loc_1BE213B:                 Call Proc_30_103_EFA714(var_94, "B", &H28, var_178, var_2FE)
  loc_1BE2145:                 Print 1, var_178
  loc_1BE2154:                 var_96 = &H12
  loc_1BE216D:                 var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE2173:                 Print 1, Space(3)
  loc_1BE2196:                 var_134 = (Chr(&HF) + CVar(var_B0))
  loc_1BE219C:                 Print 1, Space(3)
  loc_1BE21BF:                 var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE21C5:                 Print 1, Space(3)
  loc_1BE21D8:                 var_96 = (var_96 + 4)
  loc_1BE21DB:               End If
  loc_1BE21DE:               var_BC.MoveNext
  loc_1BE21E3:               GoTo loc_1BE1E42
  loc_1BE21E6:             End If
  loc_1BE21F0:             If (var_96 < (&H45 - var_AA)) Then
  loc_1BE21F3:               ' Referenced from:     1BE2214
  loc_1BE21FD:               If (var_96 = (&H45 - var_AA)) Then
  loc_1BE2205:                 Print 1, vbNullString
  loc_1BE2211:                 var_96 = (var_96 + 1)
  loc_1BE2214:                 GoTo loc_1BE21F3
  loc_1BE2217:               End If
  loc_1BE2217:             End If
  loc_1BE222D:             var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE2233:             Print 1, Space(3)
  loc_1BE2294:             var_134 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1BE229B:             var_174 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)) 'String
  loc_1BE229E:             var_1B8 = (Space(3) + var_174)
  loc_1BE22A4:             Print 1, CVar(var_180.Item("qty"))
  loc_1BE22E8:             var_134 = (Chr(&HF) + "***  ")
  loc_1BE22EF:             var_174 = Space(3) & Trim(var_CC) 
  loc_1BE22FE:             Print 1, var_174 & "  ***"
  loc_1BE2359:             var_158 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BE2367:             unk_5890AB.Execute CStr(var_158), var_174, -1
  loc_1BE23C8:             If (var_180.Fields.Item(0).Value > 1) Then
  loc_1BE23F9:               Call Proc_30_103_EFA714(Proc_6_45_EADFB8("Changed KOT", &H14, var_180), "D", &H28, var_2F4)
  loc_1BE2403:               Print 1, var_2F4
  loc_1BE2419:             Else
  loc_1BE246F:               unk_5890AB.Execute CStr("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_174, -1
  loc_1BE24CD:               If (Proc_6_38_E69628(CVar(var_180.Fields.Item(0)), var_180, 1) = "Y") Then
  loc_1BE24E3:                 var_2F8 = Proc_6_45_EADFB8("DUPLICATE KOT", &H14)
  loc_1BE24FE:                 Call Proc_30_103_EFA714(var_2F8, "D", &H28)
  loc_1BE2508:                 Print 1, var_2F4
  loc_1BE251E:               Else
  loc_1BE2533:                 var_134 = (Chr(&HF) + vbNullString)
  loc_1BE2539:                 Print 1, "Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value
  loc_1BE2546:               End If
  loc_1BE2546:             End If
  loc_1BE254B:             Set var_E0 = Nothing
  loc_1BE2563:             var_134 = (Chr(&HF) + "** ")
  loc_1BE256D:             var_158 = ("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1BE2576:             var_174 = ("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BE257C:             Print 1, var_174
  loc_1BE2590:             var_B8.MoveNext
  loc_1BE2597:             Print 1
  loc_1BE259F:             Print 1
  loc_1BE25A7:             Print 1
  loc_1BE25AF:             Print 1
  loc_1BE25B7:             Print 1
  loc_1BE25BF:             Print 1
  loc_1BE25E5:             var_158 = (Chr(&H1B) + Chr(&H6D))
  loc_1BE25EB:             Print 1, "Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BE25FA:             GoTo loc_1BE1702
  loc_1BE25FD:           End If
  loc_1BE25FF:           Close 1
  loc_1BE261B:           Open "C:\reptmp\KOTPrint_C" & CStr(arg_C) & ".BAT" For Output As 1 Len = &HFF
  loc_1BE2630:           If (arg_14 <> vbNullString) Then
  loc_1BE2652:             Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT>" & arg_14
  loc_1BE2666:           Else
  loc_1BE2680:             var_2F4 = "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT>" & MemVar_1F953B8
  loc_1BE2685:             Print 1, var_2F4
  loc_1BE2696:           End If
  loc_1BE2698:           Close 1
  loc_1BE26BE:           var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_C" & CStr(arg_C) & ".BAT"), 0)) 'Variant
  loc_1BE26CF:         Else
  loc_1BE26DA:           If (var_1A8 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1BE26DF:             Close 1
  loc_1BE26FB:             Open "C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT" For Output As 1 Len = &HFF
  loc_1BE270B:             var_B8.MoveFirst
  loc_1BE2710:             ' Referenced from:       1BE3650
  loc_1BE271F:             If Not(var_B8.EOF) Then
  loc_1BE2724:               var_96 = 0
  loc_1BE275F:               var_174 = 3
  loc_1BE27A7:               var_17C = Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_2F4)
  loc_1BE2842:               var_2E0 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_174)) = "LAU") 'Variant
  loc_1BE284C:               var_2F0 = IIf(var_2E0, IIf((var_17C = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BE2855:               var_94 = CStr(var_2F0)
  loc_1BE2899:               If (var_96 = 0) Then
  loc_1BE289E:                 Print 1
  loc_1BE28D2:                 var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BE28E3:                 If (var_E4 <> vbNullString) Then
  loc_1BE290C:                   var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E4, &H28)))
  loc_1BE2912:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE2924:                 End If
  loc_1BE292C:                 If (var_E8 <> vbNullString) Then
  loc_1BE2955:                   var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E8, &H28)))
  loc_1BE295B:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE296D:                 End If
  loc_1BE2975:                 If (var_EC <> vbNullString) Then
  loc_1BE299E:                   var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1BE29A4:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE29B6:                 End If
  loc_1BE29BE:                 If (var_F0 <> vbNullString) Then
  loc_1BE29E7:                   var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1BE29ED:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE29FF:                 End If
  loc_1BE2A01:                 Print 1
  loc_1BE2A45:                 Call Proc_30_103_EFA714(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1BE2A4F:                 Print 1, var_2F8
  loc_1BE2A8D:                 Call Proc_30_103_EFA714(Proc_6_45_EADFB8(var_94, &H14), "D", &H28)
  loc_1BE2A97:                 Print 1, var_17C
  loc_1BE2AAF:                 Print 1
  loc_1BE2AB7:                 Print 1
  loc_1BE2AF0:                 Proc_6_39_E7D3A0(var_174, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BE2B12:                 var_134 = (Chr(&HF) + "KOT No.   :       ")
  loc_1BE2B1C:                 var_1C8 = (CVar(Proc_6_45_EADFB8(var_F0, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_174), &HA, var_17C)))
  loc_1BE2B22:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_174))
  loc_1BE2BD4:                 var_134 = (Chr(&HF) + "KOT Dt.   :       ")
  loc_1BE2BDB:                 var_174 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")))), &HC)) 'String
  loc_1BE2BDE:                 var_1B8 = (CVar(Proc_6_45_EADFB8(var_F0, &H28)) + var_174)
  loc_1BE2BE7:                 var_1C8 = (CVar(Proc_6_45_EADFB8(CStr(var_174), &HA, Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")))))) + " ")
  loc_1BE2BF1:                 var_218 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_174)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BE2BF7:                 Print 1, "* NC LOT *"
  loc_1BE2C4C:                 var_164 = var_B8.Fields.Item("Remarks")
  loc_1BE2C89:                 var_134 = (Chr(&HF) + "Remarks :       ")
  loc_1BE2C93:                 var_1B8 = (CVar(Proc_6_45_EADFB8(var_F0, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_164)), &H32)))
  loc_1BE2C9A:                 var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_164)), &H32))), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_164)), &H32))) + Chr(&H12))
  loc_1BE2CA0:                 Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BE2CD9:                 Set var_15C = Me.Label1
  loc_1BE2CDF:                 Call 0.Method_Proc_30_85_1BE4B180 (2, var_164)
  loc_1BE2D30:                 var_2F4 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BE2D50:                 var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_164))), &HA)))
  loc_1BE2D59:                 var_1C8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_164))), &HA))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_164))), &HA))) + ":       ")
  loc_1BE2D63:                 var_218 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_2F4, 5)))
  loc_1BE2D69:                 Print 1, "* NC LOT *"
  loc_1BE2DAE:                 var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE2DB4:                 Print 1, CVar(var_164)
  loc_1BE2DC1:               End If
  loc_1BE2DE7:               var_158 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1BE2DF3:               var_178 = "Qty"
  loc_1BE2E01:               var_1B8 = (Trim(CVar(var_164)) + CVar(Proc_6_52_EAE084(var_178, 6)))
  loc_1BE2E06:               var_B0 = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_178, 6))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_164))), &HA))))
  loc_1BE2E33:               var_134 = (Chr(&HF) + CVar(var_B0))
  loc_1BE2E39:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1BE2E5C:               var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE2E62:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1BE2E75:               var_96 = (var_96 + 4)
  loc_1BE2E7B:               var_BC.MoveFirst
  loc_1BE2E80:               ' Referenced from:       1BE3221
  loc_1BE2E8F:               If Not(var_BC.EOF) Then
  loc_1BE2EC8:                 var_180 = var_BC.Fields
  loc_1BE2EDF:                 Proc_6_39_E7D3A0(Chr(&H12), CVar(var_180.Item("qty")))
  loc_1BE2F82:                 var_174 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1BE2F9B:                 var_238 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084(var_178, 6)))))
  loc_1BE2FB1:                 var_2F0 = CVar(Proc_6_52_EAE084(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1BE2FB4:                 var_32C = (&H12 + var_2F0)
  loc_1BE300D:                 var_134 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1BE3013:                 Print 1, Space(3)
  loc_1BE3026:                 var_96 = (var_96 + 1)
  loc_1BE3062:                 If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BE30A5:                   var_134 = (Chr(&HF) + "(")
  loc_1BE30AF:                   var_1B8 = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")))))
  loc_1BE30B8:                   var_1C8 = (CVar(var_180.Item("qty")) + ")")
  loc_1BE30BE:                   Print 1, Chr(&H12)
  loc_1BE30DF:                   var_96 = (var_96 + 1)
  loc_1BE30E2:                 End If
  loc_1BE30EC:                 If (&H12 = (&H45 - var_AA)) Then
  loc_1BE3105:                   var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE310B:                   Print 1, Space(3)
  loc_1BE311D:                   Print 1, "Contd."
  loc_1BE3135:                   Print 1, Chr(&HC)
  loc_1BE3144:                   var_98 = (var_98 + 1)
  loc_1BE315A:                   Call Proc_30_104_11FFF98(1, 0, &H28, var_2FE)
  loc_1BE3179:                   Call Proc_30_103_EFA714(var_94, "B", &H28, var_178, var_2FE)
  loc_1BE3183:                   Print 1, var_178
  loc_1BE3192:                   var_96 = &H12
  loc_1BE31AB:                   var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE31B1:                   Print 1, Space(3)
  loc_1BE31D4:                   var_134 = (Chr(&HF) + CVar(var_B0))
  loc_1BE31DA:                   Print 1, Space(3)
  loc_1BE31FD:                   var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE3203:                   Print 1, Space(3)
  loc_1BE3216:                   var_96 = (var_96 + 4)
  loc_1BE3219:                 End If
  loc_1BE321C:                 var_BC.MoveNext
  loc_1BE3221:                 GoTo loc_1BE2E80
  loc_1BE3224:               End If
  loc_1BE322E:               If (var_96 < (&H45 - var_AA)) Then
  loc_1BE3231:                 ' Referenced from:       1BE3252
  loc_1BE323B:                 If (var_96 = (&H45 - var_AA)) Then
  loc_1BE3243:                   Print 1, vbNullString
  loc_1BE324F:                   var_96 = (var_96 + 1)
  loc_1BE3252:                   GoTo loc_1BE3231
  loc_1BE3255:                 End If
  loc_1BE3255:               End If
  loc_1BE326B:               var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE3271:               Print 1, Space(3)
  loc_1BE32C7:               var_17C = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)
  loc_1BE32D2:               var_134 = (Chr(&HF) + "Waiter Name  :       ")
  loc_1BE32DC:               var_1B8 = (Space(3) + CVar(var_17C))
  loc_1BE32E2:               Print 1, CVar(var_180.Item("qty"))
  loc_1BE3326:               var_134 = (Chr(&HF) + "***  ")
  loc_1BE332D:               var_174 = Space(3) & Trim(var_CC) 
  loc_1BE333C:               Print 1, var_174 & "  ***"
  loc_1BE3397:               var_158 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BE33A5:               unk_5890AB.Execute CStr(var_158), var_174, -1
  loc_1BE3406:               If (var_180.Fields.Item(0).Value > 1) Then
  loc_1BE3437:                 Call Proc_30_103_EFA714(Proc_6_45_EADFB8("Changed KOT", &H14, var_180), "D", &H28, var_2F4)
  loc_1BE3441:                 Print 1, var_2F4
  loc_1BE3457:               Else
  loc_1BE34AD:                 unk_5890AB.Execute CStr("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_174, -1
  loc_1BE350B:                 If (Proc_6_38_E69628(CVar(var_180.Fields.Item(0)), var_180, 1) = "Y") Then
  loc_1BE353C:                   Call Proc_30_103_EFA714(Proc_6_45_EADFB8("DUPLICATE KOT", &H14), "D", &H28)
  loc_1BE3546:                   Print 1, var_2F4
  loc_1BE355C:                 Else
  loc_1BE3571:                   var_134 = (Chr(&HF) + vbNullString)
  loc_1BE3577:                   Print 1, "Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value
  loc_1BE3584:                 End If
  loc_1BE3584:               End If
  loc_1BE3589:               Set var_E0 = Nothing
  loc_1BE35A1:               var_134 = (Chr(&HF) + "** ")
  loc_1BE35AB:               var_158 = ("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1BE35B4:               var_174 = ("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BE35BA:               Print 1, var_174
  loc_1BE35CE:               var_B8.MoveNext
  loc_1BE35D5:               Print 1
  loc_1BE35DD:               Print 1
  loc_1BE35E5:               Print 1
  loc_1BE35ED:               Print 1
  loc_1BE35F5:               Print 1
  loc_1BE35FD:               Print 1
  loc_1BE3605:               Print 1
  loc_1BE360D:               Print 1
  loc_1BE3615:               Print 1
  loc_1BE363B:               var_158 = (Chr(&H1B) + Chr(&H6D))
  loc_1BE3641:               Print 1, "Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BE3650:               GoTo loc_1BE2710
  loc_1BE3653:             End If
  loc_1BE3655:             Close 1
  loc_1BE3671:             Open "C:\reptmp\KOTPrint_C" & CStr(arg_C) & ".BAT" For Output As 1 Len = &HFF
  loc_1BE3686:             If (arg_14 <> vbNullString) Then
  loc_1BE36A8:               Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT>" & arg_14
  loc_1BE36BC:             Else
  loc_1BE36D6:               var_2F4 = "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT>" & MemVar_1F953B8
  loc_1BE36DB:               Print 1, var_2F4
  loc_1BE36EC:             End If
  loc_1BE36EE:             Close 1
  loc_1BE3714:             var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_C" & CStr(arg_C) & ".BAT"), 0)) 'Variant
  loc_1BE3725:           Else
  loc_1BE3730:             If Not (var_1A8 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1BE373E:               If (var_1A8 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_1BE3741:               End If
  loc_1BE3743:               Close 1
  loc_1BE375F:               Open "C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT" For Output As 1 Len = &HFF
  loc_1BE376F:               var_B8.MoveFirst
  loc_1BE3774:               ' Referenced from:         1BE49A5
  loc_1BE3783:               If Not(var_B8.EOF) Then
  loc_1BE3788:                 var_96 = 0
  loc_1BE38A6:                 var_2E0 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU") 'Variant
  loc_1BE38B0:                 var_2F0 = IIf(var_2E0, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BE38B9:                 var_94 = CStr(var_2F0)
  loc_1BE3925:                 var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1BE3934:                 If (var_96 = 0) Then
  loc_1BE3939:                   Print 1
  loc_1BE3947:                   If (var_E4 <> vbNullString) Then
  loc_1BE3970:                     var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E4, &H28)))
  loc_1BE3976:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE3988:                   End If
  loc_1BE3990:                   If (var_E8 <> vbNullString) Then
  loc_1BE39B9:                     var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E8, &H28)))
  loc_1BE39BF:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE39D1:                   End If
  loc_1BE39D9:                   If (var_EC <> vbNullString) Then
  loc_1BE3A02:                     var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1BE3A08:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE3A1A:                   End If
  loc_1BE3A22:                   If (var_F0 <> vbNullString) Then
  loc_1BE3A4B:                     var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1BE3A51:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE3A63:                   End If
  loc_1BE3A65:                   Print 1
  loc_1BE3A94:                   var_1B8 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1BE3AA6:                   var_1D8 = Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3) / 2)))
  loc_1BE3AD7:                   var_2D0 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1BE3AE9:                   var_2F0 = Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *") / 2)))
  loc_1BE3B01:                   var_1E8 = (Chr(&HF) + var_1D8)
  loc_1BE3B08:                   var_248 = (CVar(var_B8.Fields.Item("NCKOT")) + Trim(CVar(Me.LblRest)))
  loc_1BE3B0F:                   var_32C = (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y"), "* NC LOT *", "* LOT *") + var_2F0)
  loc_1BE3B16:                   var_350 = (IIf((var_BC.Fields.Item(2).Value = (Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1BE3B1C:                   Print 1, var_350
  loc_1BE3B6A:                   var_174 = (42 - Len(Trim(var_94)))
  loc_1BE3B9D:                   var_248 = (42 - Len(Trim(var_94)))
  loc_1BE3BA6:                   var_270 = (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y"), "* NC LOT *", "* LOT *") / 2)
  loc_1BE3BC7:                   var_1D8 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1BE3BD1:                   var_1E8 = (var_1D8 + CVar(var_94))
  loc_1BE3BD8:                   var_2C0 = (CVar(var_B8.Fields.Item("NCKOT")) + Space(CLng(var_270)))
  loc_1BE3BDF:                   var_2E0 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1BE3BE5:                   Print 1, (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *") / 2)
  loc_1BE3C09:                   Print 1
  loc_1BE3C11:                   Print 1
  loc_1BE3C50:                   If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("CardNo")), &H12) <> vbNullString) Then
  loc_1BE3CB4:                     var_134 = (Chr(&HF) + "Membership No.:         ")
  loc_1BE3CBE:                     var_1B8 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("CardNo"))), &H1A)))
  loc_1BE3CC5:                     var_1D8 = ((Len(Trim(CVar(Me.LblRest))) / 2) + Chr(&H12))
  loc_1BE3CCB:                     Print 1, var_1D8
  loc_1BE3CEE:                   End If
  loc_1BE3D27:                   If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("MemName"))) <> vbNullString) Then
  loc_1BE3D8B:                     var_134 = (Chr(&HF) + "Member :         ")
  loc_1BE3D92:                     var_174 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("MemName"))), &H21)) 'String
  loc_1BE3D95:                     var_1B8 = (Trim(var_94) + var_174)
  loc_1BE3D9C:                     var_1D8 = ((Len(Trim(CVar(Me.LblRest))) / 2) + Chr(&H12))
  loc_1BE3DA2:                     Print 1, var_1D8
  loc_1BE3DC5:                   End If
  loc_1BE3DF8:                   Proc_6_39_E7D3A0(var_174, CVar(var_B8.Fields.Item("VNo")))
  loc_1BE3E27:                   var_134 = (Chr(&HF) + "KOT No.   :         ")
  loc_1BE3E31:                   var_1C8 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(CStr(var_174), &HA)))
  loc_1BE3E38:                   var_1E8 = (Chr(&H12) + Chr(&H12))
  loc_1BE3E3E:                   Print 1, CVar(var_B8.Fields.Item("NCKOT"))
  loc_1BE3F01:                   var_134 = (Chr(&HF) + "KOT Dt.   :         ")
  loc_1BE3F0B:                   var_1B8 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate"))), &HC)))
  loc_1BE3F14:                   var_1C8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate"))), &HC))), &HA)) + " ")
  loc_1BE3F1E:                   var_218 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BE3F25:                   var_248 = (Trim(var_94) + Chr(&H12))
  loc_1BE3F2B:                   Print 1, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate"))), &HC)) = "Y"), "* NC LOT *", "* LOT *")
  loc_1BE3F84:                   var_164 = var_B8.Fields.Item("Remarks")
  loc_1BE3FC1:                   var_134 = (Chr(&HF) + "Remarks :         ")
  loc_1BE3FCB:                   var_1B8 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_164)), &H20)))
  loc_1BE3FD2:                   var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_164)), &H20))), &HA)) + Chr(&H12))
  loc_1BE3FD8:                   Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BE4011:                   Set var_15C = Me.Label1
  loc_1BE4017:                   Call 0.Method_Proc_30_85_1BE4B180 (2, var_164)
  loc_1BE403D:                   var_2F4 = Proc_6_45_EADFB8(CStr(Trim(CVar(var_164))), &HA)
  loc_1BE40A5:                   Proc_6_39_E7D3A0(IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_2F4) = "Y"), "* NC LOT *", "* LOT *"), CVar(var_B8.Fields.Item("GuarAtt")))
  loc_1BE40DD:                   Proc_6_39_E7D3A0((IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), &H12) = "Y"), "* NC KOT *", "* KOT *") / 2), CVar(var_B8.Fields.Item("GuarAtt")))
  loc_1BE40F5:                   var_304 = Proc_6_45_EADFB8(CStr((IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), &H12) = "Y"), "* NC KOT *", "* KOT *") / 2)), 7)
  loc_1BE410B:                   var_2C0 = (Space(&HA) + "Covers:         ")
  loc_1BE4115:                   var_32C = (Len(Trim(CVar(Me.LblRest))) + CVar(var_304))
  loc_1BE4126:                   var_340 = (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_2F4) = "Y"), "* NC LOT *", "* LOT *") <> 0) 'Variant
  loc_1BE414B:                   var_1B8 = (Chr(&HF) + CVar(var_2F4))
  loc_1BE4154:                   var_1C8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(var_2F4)), &HA)) + ":         ")
  loc_1BE415E:                   var_218 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo"))), 5)))
  loc_1BE4165:                   var_38C = (Trim(var_94) + IIf(var_340, IIf((var_BC.Fields.Item(0).Value = "Covers:         "), "Void", vbNullString), vbNullString))
  loc_1BE416C:                   var_3AC = (var_38C + Chr(&H12))
  loc_1BE4172:                   Print 1, var_3AC
  loc_1BE41EA:                   var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE41F1:                   var_174 = (CVar(var_164) + Chr(&H12))
  loc_1BE41F7:                   Print 1, CVar(var_2F4)
  loc_1BE4208:                 End If
  loc_1BE422E:                 var_158 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Space(3))
  loc_1BE4248:                 var_1B8 = (Chr(&H12) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1BE4254:                 var_1C8 = Space(3)
  loc_1BE425C:                 var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 6))), &HA)) + var_1C8)
  loc_1BE4276:                 var_218 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_1BE42BF:                 var_134 = (Chr(&HF) + CVar(CStr(Trim(var_94))))
  loc_1BE42C6:                 var_174 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BE42CC:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1BE4300:                 var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE4307:                 var_174 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BE430D:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1BE4324:                 var_96 = (var_96 + 4)
  loc_1BE432A:                 var_BC.MoveFirst
  loc_1BE432F:                 ' Referenced from:         1BE45B7
  loc_1BE433E:                 If Not(var_BC.EOF) Then
  loc_1BE4377:                   var_180 = var_BC.Fields
  loc_1BE438E:                   Proc_6_39_E7D3A0(var_1C8, CVar(var_180.Item("qty")))
  loc_1BE43D9:                   Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1BE43E8:                   var_1F8 = "0.00"
  loc_1BE4423:                   var_174 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1BE443C:                   var_238 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1C8, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6)))))
  loc_1BE4450:                   var_270 = (CVar(var_B8.Fields.Item("GuarAtt")) + Space(3))
  loc_1BE4469:                   var_32C = (&H12 + CVar(Proc_6_52_EAE084(CStr(Format(Len(Trim(CVar(Me.LblRest))), var_1F8)), 6, var_270)))
  loc_1BE44CF:                   var_134 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Rate").Value = var_1F8), "Void", vbNullString))))
  loc_1BE44D6:                   var_174 = (Space(3) + Chr(&H12))
  loc_1BE44DC:                   Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1BE44F3:                   var_96 = (var_96 + 1)
  loc_1BE452F:                   If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BE4572:                     var_134 = (Chr(&HF) + "(")
  loc_1BE457C:                     var_1B8 = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")))))
  loc_1BE4585:                     var_1C8 = (CVar(var_180.Item("qty")) + ")")
  loc_1BE458B:                     Print 1, var_1C8
  loc_1BE45AC:                     var_96 = (var_96 + 1)
  loc_1BE45AF:                   End If
  loc_1BE45B2:                   var_BC.MoveNext
  loc_1BE45B7:                   GoTo loc_1BE432F
  loc_1BE45BA:                 End If
  loc_1BE45DD:                 var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE45E4:                 var_174 = (Space(3) + Chr(&H12))
  loc_1BE45EA:                 Print 1, CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description"))))
  loc_1BE465C:                 var_134 = (Chr(&HF) + "Waiter Name  :         ")
  loc_1BE4666:                 var_1B8 = (Space(3) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1BE466D:                 var_1D8 = (CVar(var_180.Item("qty")) + Chr(&H12))
  loc_1BE4673:                 Print 1, "0.00"
  loc_1BE46BB:                 var_1B8 = Chr(&H12)
  loc_1BE46C8:                 var_134 = (Chr(&HF) + "***  ")
  loc_1BE46CF:                 var_174 = Space(3) & Trim(var_CC) 
  loc_1BE46DB:                 var_1C8 = ("  ***" + var_1B8)
  loc_1BE46E5:                 Print 1, var_174 & Chr(&H12)
  loc_1BE4744:                 var_158 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BE4752:                 unk_5890AB.Execute CStr(var_158), var_174, -1
  loc_1BE47B3:                 If (var_180.Fields.Item(0).Value > 1) Then
  loc_1BE47E4:                   Call Proc_30_103_EFA714(Proc_6_45_EADFB8("Changed KOT", &H14), "D", &H28)
  loc_1BE47EE:                   Print 1, var_2F4
  loc_1BE4804:                 Else
  loc_1BE485A:                   unk_5890AB.Execute CStr("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_174, -1
  loc_1BE48B8:                   If (Proc_6_38_E69628(CVar(var_180.Fields.Item(0)), var_180, var_2F4) = "Y") Then
  loc_1BE48E9:                     Call Proc_30_103_EFA714(Proc_6_45_EADFB8("DUPLICATE KOT", &H14), "D", &H28)
  loc_1BE48F3:                     Print 1, var_2F4
  loc_1BE4909:                   Else
  loc_1BE490B:                     Print 1
  loc_1BE4911:                   End If
  loc_1BE4911:                 End If
  loc_1BE4916:                 Set var_E0 = Nothing
  loc_1BE492E:                 var_134 = (Chr(&HF) + "** ")
  loc_1BE4938:                 var_158 = ("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1BE4941:                 var_174 = ("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BE4947:                 Print 1, var_174
  loc_1BE495B:                 var_B8.MoveNext
  loc_1BE4962:                 Print 1
  loc_1BE496A:                 Print 1
  loc_1BE4990:                 var_158 = (Chr(&H1B) + Chr(&H6D))
  loc_1BE4996:                 Print 1, "Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BE49A5:                 GoTo loc_1BE3774
  loc_1BE49A8:               End If
  loc_1BE49AA:               Close 1
  loc_1BE49C6:               Open "C:\reptmp\KOTPrint_C" & CStr(arg_C) & ".BAT" For Output As 1 Len = &HFF
  loc_1BE49DB:               If (arg_14 <> vbNullString) Then
  loc_1BE49FD:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT>" & arg_14
  loc_1BE4A11:               Else
  loc_1BE4A2B:                 var_2F4 = "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT>" & MemVar_1F953B8
  loc_1BE4A30:                 Print 1, var_2F4
  loc_1BE4A41:               End If
  loc_1BE4A43:               Close 1
  loc_1BE4A69:               var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_C" & CStr(arg_C) & ".BAT"), 0)) 'Variant
  loc_1BE4A77:             End If
  loc_1BE4A77:           End If
  loc_1BE4A77:         End If
  loc_1BE4A77:       End If
  loc_1BE4A77:     End If
  loc_1BE4A7A:   Else
  loc_1BE4AC4:     MsgBox("Please Check Printer Setting of Central KOT For " & var_C0.Fields.Item("Name").Value & ".", &H40, var_174, var_1B8, Chr(&H12))
  loc_1BE4ADF:   End If
  loc_1BE4AE2:   var_C0.MoveNext
  loc_1BE4AE7:   GoTo loc_1BDF789
  loc_1BE4AEA: End If
  loc_1BE4AEF: Set var_B8 = Nothing
  loc_1BE4AF7: Set var_BC = Nothing
  loc_1BE4AFF: Set var_C0 = Nothing
  loc_1BE4B07: Proc_30_85_1BE4B18 = &HFF
  loc_1BE4B0D: ' Referenced from: 1BDF344
  loc_1BE4B0D: Proc_6_60_E63754(var_2F4, var_180)
  loc_1BE4B12: Proc_30_85_1BE4B18 = var_1F8
End Sub

Public Sub Proc_30_86_EFB79C(arg_C) 'EFB79C
  'Data Table: 58908C
  Dim var_8C As Recordset15
  loc_EFB6C5: Set var_8C = arg_C 
  loc_EFB6ED: var_8C.Fields.Append "mLine", &HC8, 1
  loc_EFB719: var_8C.Fields.Append "Detail", &HC8, &H32
  loc_EFB745: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EFB755: var_8C.CursorType = 3
  loc_EFB762: var_8C.LockType = 3
  loc_EFB781: var_8C.Open var_A0, var_B0, -1
  loc_EFB788: Set var_8C = Nothing 
  loc_EFB78F: Set var_88 = arg_C 
  loc_EFB793: Proc_30_86_EFB79C = -1
End Sub

Public Sub Proc_30_87_F15438(arg_C, arg_10, arg_14, arg_18) 'F15438
  'Data Table: 58908C
  Dim var_88 As Recordset15
  Dim var_98 As Variant
  Dim var_A8 As String
  loc_F15347: Set var_88 = arg_C 
  loc_F15356: var_88.AddNew var_98, var_A8
  loc_F1538E: var_88.Fields.Item("mLine").Value = Trim(arg_10)
  loc_F153D0: var_88.Fields.Item("Detail").Value = Trim(arg_14)
  loc_F153E2: var_98 = arg_18
  loc_F153F6: var_A8 = "Mark"
  loc_F15412: var_88.Fields.Item(var_A8).Value = Trim(var_98)
  loc_F1542C: var_88.Update var_98, var_A8
  loc_F15433: Set var_88 = Nothing 
  loc_F15437: Exit Sub
End Sub

Public Sub Proc_30_88_F63BCC(arg_C) 'F63BCC
  'Data Table: 58908C
  Dim var_8C As Recordset15
  loc_F63A9D: Set var_8C = arg_C 
  loc_F63AC5: var_8C.Fields.Append "PrintType", &HC8, &H4B
  loc_F63AF1: var_8C.Fields.Append "Printer", &HC8, &H4B
  loc_F63B1D: var_8C.Fields.Append "NoOfKot", 3, 0
  loc_F63B49: var_8C.Fields.Append "Split", &HC8, 3
  loc_F63B75: var_8C.Fields.Append "RestCode", &HC8, 6
  loc_F63B85: var_8C.CursorType = 3
  loc_F63B92: var_8C.LockType = 3
  loc_F63BB1: var_8C.Open var_A0, var_B0, -1
  loc_F63BB8: Set var_8C = Nothing 
  loc_F63BBF: Set var_88 = arg_C 
  loc_F63BC3: Proc_30_88_F63BCC = -1
End Sub

Public Sub Proc_30_89_1E77CAC
  'Data Table: 58908C
  Dim var_164 As Variant
  Dim var_144 As Variant
  Dim var_174 As Variant
  Dim var_178 As String
  Dim unk_5890AB As Connection15
  Dim var_114 As Recordset15
  Dim var_19C As Variant
  Dim var_154 As Variant
  Dim var_1A8 As String
  Dim var_BC As Recordset15
  Dim var_EA As Integer
  Dim var_188 As Variant
  Dim var_1BC As Variant
  Dim var_1B8 As Variant
  Dim var_200 As Variant
  Dim var_198 As Variant
  Dim var_EC As Integer
  Dim var_12E As Integer
  Dim Me As Recordset15
  Dim var_218 As Recordset15
  Dim var_1C0 As Variant
  Dim var_1A4 As Variant
  Dim var_21C As Recordset15
  Dim var_1F0 As Variant
  Dim var_220 As String
  Dim var_224 As String
  Dim var_228 As String
  Dim var_D4 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_134 As Recordset15
  Dim var_116 As Integer
  Dim var_238 As Variant
  Dim var_23C As Variant
  Dim var_10E As Integer
  Dim var_1E0 As Variant
  Dim var_210 As Variant
  Dim var_270 As Variant
  Dim var_290 As Variant
  Dim var_B8 As Recordset15
  Dim var_110 As Integer
  Dim var_1D0 As Variant
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_2B4 As Variant
  Dim var_358 As Fields15
  Dim var_314 As Variant
  Dim var_304 As Variant
  Dim var_334 As Variant
  Dim var_370 As Variant
  Dim var_260 As Variant
  Dim var_3B0 As Variant
  Dim var_390 As Variant
  Dim var_2E4 As Variant
  Dim var_E0 As Recordset15
  Dim var_C8 As Recordset15
  Dim var_324 As Variant
  Dim var_3F0 As Variant
  Dim var_414 As Variant
  loc_1E6D044: On Error Goto loc_1E67CA6
  loc_1E6D064: Proc_6_17_EAAE40(var_154, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1E6D07A: unk_5890AB.Execute CStr(var_198 & var_154), -1, var_19C
  loc_1E6D085: Set var_114 = var_19C
  loc_1E6D0AB: If (var_114.RecordCount > 0) Then
  loc_1E6D0E5:   var_F4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("KOTHeader1"))))))
  loc_1E6D12B:   var_F8 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("KOTHeader2"))))))
  loc_1E6D171:   var_FC = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("KOTHeader3"))))))
  loc_1E6D1B7:   var_100 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("KOTHeader4"))))))
  loc_1E6D1FD:   var_104 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_114.Fields.Item("KOTPrinting"))))))
  loc_1E6D21B:   var_19C = var_114.Fields
  loc_1E6D22B:   var_154 = CVar(var_19C.Item("KOTPrintEdited")) 'Address
  loc_1E6D243:   var_10C = CStr(Trim(CVar(Proc_6_38_E69628(var_154))))
  loc_1E6D252: End If
  loc_1E6D257: Set var_114 = Nothing
  loc_1E6D281: unk_5890AB.Execute "Select CKOTPrintYN,PrintType,CKOTPrintPath,NoOfKot From Depart Where Code='" & LocalRestCode & "'", var_154, -1
  loc_1E6D28C: Set var_BC = var_19C
  loc_1E6D2B0: If (var_BC.RecordCount > 0) Then
  loc_1E6D2DB:   var_174 = CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("CKOTPrintYN")))) 'String
  loc_1E6D2F5:   var_E8 = CStr(Ucase(Trim(var_174)))
  loc_1E6D32E:   var_12C = Proc_6_38_E69628(CVar(var_BC.Fields.Item("PrintType")))
  loc_1E6D35F:   var_124 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("CKOTPrintPath")))
  loc_1E6D38E:   Proc_6_39_E7D3A0(var_174, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1E6D397:   var_EA = CInt(var_174)
  loc_1E6D3A7:   var_144 = "NoOfKot"
  loc_1E6D3B3:   var_19C = var_BC.Fields
  loc_1E6D3CA:   Proc_6_39_E7D3A0(var_174, CVar(var_19C.Item(var_144)))
  loc_1E6D3F5:   Proc_6_39_E7D3A0(var_1D0, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1E6D405:   var_164 = 0
  loc_1E6D40F:   var_1E0 = (var_174 <= var_164) 'Variant
  loc_1E6D422:   var_EC = CInt(IIf(var_1E0, 1, var_1D0))
  loc_1E6D43D: End If
  loc_1E6D445: If (var_E8 = "Y") Then
  loc_1E6D456:   Call Proc_30_85_1BE4B18(0)
  loc_1E6D45E:   var_12E = var_214
  loc_1E6D467:   If (var_12E = 0) Then
  loc_1E6D46A:     Exit Sub
  loc_1E6D46B:   End If
  loc_1E6D46B: End If
  loc_1E6D478: Call Proc_30_88_F63BCC(New)
  loc_1E6D480: Set var_134 = var_19C
  loc_1E6D49A: If (Me.RecordCount > 0) Then
  loc_1E6D4A3:   Me.MoveFirst
  loc_1E6D4AB:   var_EC = var_EA
  loc_1E6D4AE:   ' Referenced from: 1E6D6B8
  loc_1E6D4AE: End If
  loc_1E6D4C0: If Not(Me.EOF) Then
  loc_1E6D4C6:   Set var_218 = var_134 
  loc_1E6D4D5:   var_218.AddNew var_144, var_164
  loc_1E6D4EC:   var_19C = Me.Fields
  loc_1E6D528:   var_218.Fields.Item("PrintType").Value = CVar(Proc_6_38_E69628(CVar(var_19C.Item("ModDescription")), var_EC, var_19C, var_12E, var_12C))
  loc_1E6D58B:   var_218.Fields.Item("Printer").Value = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Printer")), var_124, var_214))
  loc_1E6D5C5:   var_218.Fields.Item("NoOfKot").Value = 1
  loc_1E6D61F:   var_218.Fields.Item("Split").Value = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("AutoPrint")), var_EC))
  loc_1E6D637:   var_144 = "RestCode"
  loc_1E6D666:   var_164 = "RestCode"
  loc_1E6D672:   var_1BC = var_218.Fields
  loc_1E6D682:   var_1BC.Item(var_164).Value = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item(var_144)), var_EA))
  loc_1E6D6A2:   var_218.Update var_144, var_164
  loc_1E6D6A9:   Set var_218 = Nothing 
  loc_1E6D6B3:   Me.MoveNext
  loc_1E6D6B8:   GoTo loc_1E6D4AE
  loc_1E6D6BB: End If
  loc_1E6D6BE: Set var_21C = var_134 
  loc_1E6D6CD: var_21C.AddNew var_144, var_164
  loc_1E6D6F7: var_21C.Fields.Item("PrintType").Value = "Default"
  loc_1E6D728: var_21C.Fields.Item("Printer").Value = vbNullString
  loc_1E6D75A: var_21C.Fields.Item("NoOfKot").Value = CVar(var_EC)
  loc_1E6D7B3: var_21C.Fields.Item("Split").Value = IIf((var_104 = "Seperate for All Kitchen"), "Yes", "No")
  loc_1E6D7D0: var_164 = CVar(LocalRestCode) 'String
  loc_1E6D7D7: var_144 = "RestCode"
  loc_1E6D7F3: var_21C.Fields.Item(var_144).Value = var_164
  loc_1E6D80A: var_21C.Update var_144, var_164
  loc_1E6D811: Set var_21C = Nothing 
  loc_1E6D818: MemVar_1F953C4 = "N"
  loc_1E6D81F: MemVar_1F953C8 = "N"
  loc_1E6D826: MemVar_1F953CC = "K"
  loc_1E6D831: var_178 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,S.CardNo,S.Name As MemName,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT,K.NCTYPE, K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt,K.U_AE,K.TokenNo " & "From (((KOT K Left Join Waiter W on K.Waiter=W.Code) left join SubGroup S On K.Party=S.SubCode) Left Join Depart D on D.Code=K.RestCode) "
  loc_1E6D876: var_88 = CStr(CVar(var_178 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1E6D895: var_174 = CVar("Select K.Sno,I.Name as ItemName,I.Unit,K.Qty, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6D8AD: var_19C = Me.Fields
  loc_1E6D8B5: var_1A4 = var_19C.Item("SearchCode")
  loc_1E6D8BD: var_154 = var_1A4.Value
  loc_1E6D8C5: var_198 = var_174 & var_154 
  loc_1E6D8CE: var_1B8 = var_198 & "'" 
  loc_1E6D8D3: var_8C = CStr(var_1B8)
  loc_1E6D8F0: If (var_88 = vbNullString) Then
  loc_1E6D8F3:   Exit Sub
  loc_1E6D8F4: End If
  loc_1E6D8FC: If (var_8C = vbNullString) Then
  loc_1E6D8FF:   Exit Sub
  loc_1E6D900: End If
  loc_1E6D91E: var_1A8 = "Select * From Depart Where Code='" & LocalRestCode & "'"
  loc_1E6D927: unk_5890AB.Execute var_1A8, var_154, -1
  loc_1E6D932: Set var_C8 = var_19C
  loc_1E6D977: Call 0.Method_Proc_30_89_1E77CAC0 (CInt(4), var_1A4, var_1A8, "SELECT DISTINCT DOCID FROM KOT WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='", var_154)
  loc_1E6D97F: -1 = var_1A4.Text
  loc_1E6D998: unk_5890AB.Execute var_1BC & var_1A8 & "' AND PENDING='Y' AND (DELFLAG IS NULL OR DELFLAG<>'Y') AND CONTRADOCID IS NULL", Me.Txt, Me.Txt
  loc_1E6D9D3: If (var_1BC.RecordCount = 1) Then
  loc_1E6D9D9:   var_CC = "New Order"
  loc_1E6D9DF: Else
  loc_1E6D9E6:   Set var_19C = Me.LblState
  loc_1E6D9F4:   var_CC = var_19C.Caption
  loc_1E6D9FA: End If
  loc_1E6DA10: unk_5890AB.Execute var_88, var_154, -1
  loc_1E6DA1B: Set var_B4 = var_19C
  loc_1E6DA33: var_19C = var_B4.Fields
  loc_1E6DA63: var_1BC = var_B4.Fields
  loc_1E6DA6B: var_1C0 = var_1BC.Item("ContraDocId")
  loc_1E6DA73: var_174 = CVar(var_1C0) 'Address
  loc_1E6DA9A: If (var_19C And (Proc_6_38_E69628(var_174, (Proc_6_38_E69628(CVar(var_19C.Item("NCKOT"))) <> "Y")) <> vbNullString)) Then
  loc_1E6DAB6:   MsgBox("Sale Bill Already Generated !!", &H40, var_174, var_198, var_1B8)
  loc_1E6DAC6:   Exit Sub
  loc_1E6DAC7: End If
  loc_1E6DADB: If (var_134.RecordCount > 0) Then
  loc_1E6DAE1:   var_134.MoveFirst
  loc_1E6DAE6:   ' Referenced from: 1E77C72
  loc_1E6DAE6: End If
  loc_1E6DAF5: Loop Until Not(var_134.EOF) 'do at: 1E67C75
  loc_1E6DB0C: If (var_B4.RecordCount > 0) Then
  loc_1E6DB12:   var_B4.MoveFirst
  loc_1E6DB1A:   var_108 = vbNullString
  loc_1E6DB1D: End If
  loc_1E6DB56: If (Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_AE"))) = "E") Then
  loc_1E6DB5B:   var_116 = &HFF
  loc_1E6DB5E: End If
  loc_1E6DB6D: If ((var_116 = &HFF) And (var_10C = "No Print")) Then
  loc_1E6DB70:   Exit Sub
  loc_1E6DB71: End If
  loc_1E6DB87: If (((var_116 = &HFF) And (var_10C = "Void Items")) And (MemVar_1F950B8 <= 0)) Then
  loc_1E6DB99:   var_19C = var_134.Fields
  loc_1E6DBA9:   var_154 = CVar(var_19C.Item("Split")) 'Address
  loc_1E6DBC3:   If (Proc_6_38_E69628(var_154) = "No") Then
  loc_1E6DBDA:     var_178 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_1E6DBEA:     unk_5890AB.Execute var_178 & "MK'", var_154, -1
  loc_1E6DBF5:     Set var_BC = var_19C
  loc_1E6DC08:   Else
  loc_1E6DC1C:     var_174 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6DC63:     unk_5890AB.Execute CStr(var_174 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN='Y' Order By Depart.Name"), var_1D0, -1
  loc_1E6DC6E:     Set var_BC = var_1BC
  loc_1E6DC8A:   End If
  loc_1E6DC8D: Else
  loc_1E6DC9C:   var_19C = var_134.Fields
  loc_1E6DCAC:   var_154 = CVar(var_19C.Item("Split")) 'Address
  loc_1E6DCC6:   If (Proc_6_38_E69628(var_154, var_1BC) = "No") Then
  loc_1E6DCDD:     var_178 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_1E6DCED:     unk_5890AB.Execute var_178 & "MK'", var_154, -1
  loc_1E6DCF8:     Set var_BC = var_19C
  loc_1E6DD0B:   Else
  loc_1E6DD1F:     var_174 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6DD58:     var_1B8 = var_174 & Me.Fields.Item("SearchCode").Value & "' Order By Depart.Name" 
  loc_1E6DD66:     unk_5890AB.Execute CStr(var_1B8), var_1D0, -1
  loc_1E6DD71:     Set var_BC = var_1BC
  loc_1E6DD8D:   End If
  loc_1E6DD8D: End If
  loc_1E6DD93: var_238 = 0
  loc_1E6DDA9: var_164 = "Select Count(Distinct Depart.Code) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where K.DocID='"
  loc_1E6DDF2: unk_5890AB.Execute CStr(var_164 & Me.Fields.Item("SearchCode").Value & "'"), var_1B8, -1
  loc_1E6DDFA: var_1BC = var_1BC.Fields
  loc_1E6DE02: var_238 = var_1C0.Item(var_1C0)
  loc_1E6DE0A: var_23C = var_23C.Value
  loc_1E6DE15: Proc_6_39_E7D3A0(var_1E0, var_1D0, var_1D0)
  loc_1E6DE1E: var_10E = CInt(var_1E0)
  loc_1E6DE40: ' Referenced from: 1E77C67
  loc_1E6DE4F: Loop Until Not(var_BC.EOF) 'do at: 1E67C6A
  loc_1E6DE55: var_11C = vbNullString
  loc_1E6DE6E: If (((var_116 = &HFF) And (var_10C = "Void Items")) And (MemVar_1F950B8 <= 0)) Then
  loc_1E6DE74:   var_11C = "CANCELLED"
  loc_1E6DEB0:   If (Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), var_10E, var_1BC) = "Yes") Then
  loc_1E6DEBA:     var_174 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6DF33:     var_210 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1E6DF6F:     var_8C = CStr(var_210 & var_BC.Fields.Item("Code").Value & "' And K.VoidYN='Y'")
  loc_1E6DF9D:   Else
  loc_1E6DFA4:     var_174 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6DFE2:     var_8C = CStr(var_174 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN='Y'")
  loc_1E6DFF7:   End If
  loc_1E6DFFA: Else
  loc_1E6E009:   var_19C = var_134.Fields
  loc_1E6E033:   If (Proc_6_38_E69628(CVar(var_19C.Item("Split")), var_19C) = "Yes") Then
  loc_1E6E03D:     var_174 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6E0B6:     var_210 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1E6E0F2:     var_8C = CStr(var_210 & var_BC.Fields.Item("Code").Value & "'")
  loc_1E6E120:   Else
  loc_1E6E127:     var_174 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6E13F:     var_19C = Me.Fields
  loc_1E6E14F:     var_154 = var_19C.Item("SearchCode").Value
  loc_1E6E165:     var_8C = CStr(var_174 & var_154 & "'")
  loc_1E6E17A:   End If
  loc_1E6E17A: End If
  loc_1E6E190: unk_5890AB.Execute var_8C, var_154, -1
  loc_1E6E19B: Set var_B8 = var_19C
  loc_1E6E1AA: var_1A0 = var_B8.RecordCount
  loc_1E6E1B8: Loop Until (var_1A0 > 0) 'do at: 1E67C5F
  loc_1E6E1F7: If (var_134.Fields.Item("PrintType").Value = "Default") Then
  loc_1E6E229:   var_12C = CStr(Trim(CVar(var_BC.Fields.Item("PrintType"))))
  loc_1E6E239: Else
  loc_1E6E264:   var_12C = CStr(var_134.Fields.Item("PrintType").Value)
  loc_1E6E271: End If
  loc_1E6E277: var_110 = (var_110 + 1)
  loc_1E6E28C: var_19C = var_134.Fields
  loc_1E6E2F2: var_1E0 = (var_19C.Item("NoOfKot").Value > 0) Or (var_12C = "ADJUSTABLE WINDOWS KOT PRINT") And (var_134.Fields.Item("NoOfKot").Value = 0)
  loc_1E6E30C: Loop Until CBool(var_1E0) 'do at: 1E67A4B
  loc_1E6E312: var_294 = var_12C
  loc_1E6E31D: If (var_294 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1E6E32D:   Call Proc_30_86_EFB79C(New)
  loc_1E6E335:   Set var_D8 = var_19C
  loc_1E6E33B:   Me.Recordset15.MoveFirst
  loc_1E6E340:   ' Referenced from: 1E6F5B7
  loc_1E6E34F:   If Not(var_B4.EOF) Then
  loc_1E6E354:     var_92 = 0
  loc_1E6E36B:     var_19C = var_B4.Fields
  loc_1E6E402:     var_290 = IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")), var_110) = "Y"), "* NC LOT *", "* LOT *")
  loc_1E6E472:     var_324 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_19C.Item("ShortName")), 1, var_92, var_19C))), 1, 3)) = "LAU") 'Variant
  loc_1E6E47C:     var_334 = IIf(var_324, var_290, IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")), var_19C) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E6E485:     var_90 = CStr(var_334)
  loc_1E6E4C9:     If (var_92 = 0) Then
  loc_1E6E4EA:       Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1E6E526:       var_C0 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1E6E55D:       var_174 = CVar(Me.LblRest.Caption) 'String
  loc_1E6E560:       var_198 = (Space(1) + var_174)
  loc_1E6E575:       Call Proc_30_87_F15438(var_D8, vbNullString, CStr(Trim(CVar(Proc_6_38_E69628(CVar(Me.LblRest.Item("ShortName")), 1, var_92, Me.LblRest)))), vbNullString)
  loc_1E6E5A7:       Call Proc_30_87_F15438(var_D8, vbNullString, var_90, vbNullString)
  loc_1E6E5D6:       Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1E6E60A:       Proc_6_39_E7D3A0(var_174, CVar(var_B4.Fields.Item("VNo")))
  loc_1E6E647:       Call Proc_30_87_F15438(var_D8, vbNullString, " KOT No.   : " & Proc_6_45_EADFB8(CStr(var_174), &HA), vbNullString)
  loc_1E6E717:       Call Proc_30_87_F15438(var_D8, vbNullString, " KOT Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), &H12), &HC) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8), vbNullString)
  loc_1E6E75E:       var_1A4 = var_B4.Fields.Item("Remarks")
  loc_1E6E7A9:       Call Proc_30_87_F15438(var_D8, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1A4)), &H1E), vbNullString)
  loc_1E6E7DB:       Set var_19C = Me.Label1
  loc_1E6E7E1:       Call 0.Method_Proc_30_89_1E77CAC0 (2, var_1A4)
  loc_1E6E86F:       Proc_6_39_E7D3A0(var_290, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E6E890:       var_358 = var_B4.Fields
  loc_1E6E8A7:       Proc_6_39_E7D3A0(var_324, CVar(var_358.Item("GuarAtt")))
  loc_1E6E8D5:       var_304 = (Space(&HA) + "Covers: ")
  loc_1E6E8DF:       var_370 = ("* KOT *" + CVar(Proc_6_45_EADFB8(CStr(var_324), 7)))
  loc_1E6E911:       var_1D0 = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_1A4))), &HA)))
  loc_1E6E91A:       var_1E0 = (Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_19C.Item("ShortName")), 1, &H12, var_19C))), 1, 3) + ": ")
  loc_1E6E921:       var_210 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))), 5)) 'String
  loc_1E6E924:       var_260 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_19C.Item("ShortName")), 1, &H12, var_19C))), 1, 3)) + var_210)
  loc_1E6E92B:       var_3B0 = ("* NC LOT *" + IIf((var_290 <> 0), var_370, vbNullString))
  loc_1E6E940:       Call Proc_30_87_F15438(var_D8, vbNullString, CStr(var_3B0), vbNullString)
  loc_1E6E9AE:       Call Proc_30_87_F15438(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E6E9BA:     End If
  loc_1E6E9E0:     var_198 = (Space(1) + CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)))
  loc_1E6E9F4:     var_1D0 = (Trim(CVar(var_1A4)) + Space(1))
  loc_1E6EA0E:     var_200 = (Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_19C.Item("ShortName")), 1, &H12, var_19C))), 1, 3) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1E6EA13:     var_AC = CStr(CVar(var_B4.Fields.Item("TableNo")))
  loc_1E6EA46:     Call Proc_30_87_F15438(var_D8, vbNullString, var_AC, vbNullString)
  loc_1E6EA6A:     Call Proc_30_87_F15438(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E6EA7C:     var_92 = (var_92 + 4)
  loc_1E6EA82:     var_B8.MoveFirst
  loc_1E6EA87:     ' Referenced from: 1E6EEF2
  loc_1E6EA96:     If Not(var_B8.EOF) Then
  loc_1E6EAA8:       var_19C = var_134.Fields
  loc_1E6EB0F:       If (var_19C And ((Proc_6_38_E69628(CVar(var_19C.Item("Split")), &H12) = "Yes") <> Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")), var_108))) Then
  loc_1E6EB3A:         var_108 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E6EB6A:         Call Proc_30_87_F15438(var_D8, vbNullString, "*" & var_108 & "*", vbNullString)
  loc_1E6EB80:         var_92 = (var_92 + 1)
  loc_1E6EB83:       End If
  loc_1E6EBD0:       Proc_6_39_E7D3A0(var_210, CVar(var_B8.Fields.Item("qty")))
  loc_1E6EC3F:       var_314 = (var_B8.Fields.Item("Cancel").Value = "Y") 'Variant
  loc_1E6EC73:       var_1B8 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, Space(1))))
  loc_1E6EC87:       var_1E0 = (Space(1) + Space(1))
  loc_1E6ECA0:       var_2B4 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_210, "0")), 3, CVar(Proc_6_52_EAE084("Qty", 6)))))
  loc_1E6ECB9:       var_390 = (CVar(var_B4.Fields.Item("NCKOT")) + CVar(Proc_6_52_EAE084(CStr(IIf(var_314, "Void", vbNullString)), 5)))
  loc_1E6ED18:       Call Proc_30_87_F15438(var_D8, vbNullString, CStr(vbNullString), vbNullString)
  loc_1E6ED2A:       var_92 = (var_92 + 1)
  loc_1E6ED66:       If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E6EDBE:         Call Proc_30_87_F15438(var_D8, vbNullString, "(" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description"))) & ")", vbNullString)
  loc_1E6EDDE:         var_92 = (var_92 + 1)
  loc_1E6EDE1:       End If
  loc_1E6EDEB:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E6EE06:         Call Proc_30_87_F15438(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E6EE30:         Call Proc_30_87_F15438(var_D8, vbNullString, " Contd.", vbNullString)
  loc_1E6EE44:         var_94 = (var_94 + 1)
  loc_1E6EE49:         var_92 = 0
  loc_1E6EE64:         Call Proc_30_87_F15438(var_D8, vbNullString, var_90, vbNullString)
  loc_1E6EE72:         var_92 = &H12
  loc_1E6EE8D:         Call Proc_30_87_F15438(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E6EEB1:         Call Proc_30_87_F15438(var_D8, vbNullString, var_AC, vbNullString)
  loc_1E6EED5:         Call Proc_30_87_F15438(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E6EEE7:         var_92 = (var_92 + 4)
  loc_1E6EEEA:       End If
  loc_1E6EEED:       var_B8.MoveNext
  loc_1E6EEF2:       GoTo loc_1E6EA87
  loc_1E6EEF5:     End If
  loc_1E6EEFF:     If (var_92 < (&H45 - var_A6)) Then
  loc_1E6EF02:       ' Referenced from: 1E6EF44
  loc_1E6EF0C:       If (var_92 = (&H45 - var_A6)) Then
  loc_1E6EF2D:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1E6EF41:         var_92 = (var_92 + 1)
  loc_1E6EF44:         GoTo loc_1E6EF02
  loc_1E6EF47:       End If
  loc_1E6EF47:     End If
  loc_1E6EF5F:     Call Proc_30_87_F15438(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E6EFCD:     Call Proc_30_87_F15438(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92), vbNullString)
  loc_1E6F028:     Call Proc_30_87_F15438(var_D8, vbNullString, CStr(" ***  " & Trim(var_CC) & "  ***"), vbNullString)
  loc_1E6F078:     If (Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), 1) = "Yes") Then
  loc_1E6F08F:       var_174 = CVar("Select Count(Distinct Printed) From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6F0E3:       var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E6F0F9:       var_1BC = var_BC.Fields
  loc_1E6F15A:       var_304 = var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E6F168:       unk_5890AB.Execute CStr(var_304), var_314, -1
  loc_1E6F173:       Set var_E0 = var_358
  loc_1E6F1AE:     Else
  loc_1E6F1F6:       var_198 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" 
  loc_1E6F21F:       unk_5890AB.Execute CStr(var_198 & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')"), var_200, -1
  loc_1E6F22A:       Set var_E0 = var_1BC
  loc_1E6F24A:     End If
  loc_1E6F286:     If (var_E0.Fields.Item(0).Value > 1) Then
  loc_1E6F2B0:       Call Proc_30_87_F15438(var_D8, vbNullString, " ***  " & "Changed KOT" & "  ***", vbNullString)
  loc_1E6F2C3:     Else
  loc_1E6F2FC:       If (Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), var_1BC, var_358) = "Yes") Then
  loc_1E6F313:         var_174 = CVar("Select Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6F367:         var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E6F37D:         var_1BC = var_BC.Fields
  loc_1E6F3EC:         unk_5890AB.Execute CStr(var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_314, -1
  loc_1E6F3F7:         Set var_E0 = var_358
  loc_1E6F432:       Else
  loc_1E6F43F:         var_164 = "Select Printed from kot where docid='"
  loc_1E6F475:         var_188 = "' AND SNO In (Select SNo From ("
  loc_1E6F4A3:         unk_5890AB.Execute CStr(var_164 & Me.Fields.Item("SearchCode").Value & var_188 & var_B8.Source & ")Q)"), var_200, -1
  loc_1E6F4AE:         Set var_E0 = var_1BC
  loc_1E6F4CE:       End If
  loc_1E6F4D1:       var_144 = 0
  loc_1E6F507:       If (Proc_6_38_E69628(CVar(var_E0.Fields.Item(var_144)), var_1BC, var_358) = "Y") Then
  loc_1E6F531:         Call Proc_30_87_F15438(var_D8, vbNullString, " ***  " & "DUPLICATE KOT" & "  ***", vbNullString)
  loc_1E6F544:       Else
  loc_1E6F562:         Call Proc_30_87_F15438(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1E6F570:       End If
  loc_1E6F570:     End If
  loc_1E6F575:     Set var_E0 = Nothing
  loc_1E6F59F:     Call Proc_30_87_F15438(var_D8, vbNullString, "** " & MemVar_1F95220 & " **", vbNullString)
  loc_1E6F5B2:     var_B4.MoveNext
  loc_1E6F5B7:     GoTo loc_1E6E340
  loc_1E6F5BA:   End If
  loc_1E6F5BD:   var_DC = "WinKOTPrint"
  loc_1E6F5E4:   Set var_19C = var_D8 
  loc_1E6F5EB:   CreateFieldDefFile(var_19C, MemVar_1F950B4 & "\" & var_DC & ".ttx", &HFF)
  loc_1E6F62D:   Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_DC & ".RPT", var_144, var_19C)
  loc_1E6F638:   MemVar_1F951E8 = var_19C
  loc_1E6F661:   Call 0.Method_arg_64 (var_19C, CVar(var_19C), var_164)
  loc_1E6F669:   Call 0.Method_arg_2C (var_188, var_92)
  loc_1E6F6C9:   var_1A8 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) = "Default"))
  loc_1E6F6E7:   If (var_92 And (var_1A8 <> vbNullString)) Then
  loc_1E6F734:     If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1E6F763:       Call Proc_30_84_F0FCB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))
  loc_1E6F771:     End If
  loc_1E6F774:   Else
  loc_1E6F7EA:     If ((Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E6F837:       If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1E6F866:         Call Proc_30_84_F0FCB8(Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))))
  loc_1E6F874:       End If
  loc_1E6F874:     End If
  loc_1E6F874:   End If
  loc_1E6F8A4:   var_164 = False
  loc_1E6F8AF:   Call 0.Method_Me8 (var_164, CVar(var_134.Fields.Item("NoOfKot")), var_188)
  loc_1E6F8BC:   var_12E = &HFF
  loc_1E6F8C4:   Set var_D8 = Nothing
  loc_1E6F8C7:   GoTo loc_1E67A4B
  loc_1E6F8CA: End If
  loc_1E6F8D2: If (var_294 = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1E6F8D8:   var_B4.MoveFirst
  loc_1E6F8DD:   ' Referenced from: 1E7092B
  loc_1E6F8EC:   If Not(var_B4.EOF) Then
  loc_1E6F8F2:     var_144 = "ShortName"
  loc_1E6F922:     var_1B8 = 3
  loc_1E6F945:     var_1F0 = "NCKOT"
  loc_1E6F951:     var_1BC = var_B4.Fields
  loc_1E6F959:     var_1C0 = var_1BC.Item(var_1F0)
  loc_1E6F98E:     var_238 = (Proc_6_38_E69628(CVar(var_1C0), var_1F0) = "Y")
  loc_1E6F9FB:     var_188 = "LAU"
  loc_1E6FA0F:     var_334 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item(var_144)), var_12E))), 1, var_1B8)) = var_188), IIf(var_238, "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E6FA18:     var_90 = CStr(var_334)
  loc_1E6FA59:     var_DC = "KOTPrint"
  loc_1E6FA80:     Set var_19C = var_B8 
  loc_1E6FA87:     CreateFieldDefFile(var_19C, MemVar_1F950B4 & "\" & var_DC & ".ttx")
  loc_1E6FA93:     Set var_B8 = var_19C
  loc_1E6FAC9:     Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_DC & ".RPT", var_144, var_19C)
  loc_1E6FAD4:     MemVar_1F951E8 = var_19C
  loc_1E6FAFD:     Call 0.Method_arg_64 (var_19C, CVar(var_B8), var_164)
  loc_1E6FB05:     Call 0.Method_arg_2C (var_188, &HFF)
  loc_1E6FB13:     Call 0.Method_arg_150 (var_238)
  loc_1E6FB60:     var_198 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1E6FB6E:     unk_5890AB.Execute CStr(var_198), var_1B8, -1
  loc_1E6FBCF:     If (var_1BC.Fields.Item(0).Value > 1) Then
  loc_1E6FBD5:       var_D0 = "Changed KOT"
  loc_1E6FBDB:     Else
  loc_1E6FC31:       unk_5890AB.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_1B8, -1
  loc_1E6FC65:       var_19C = var_1BC.Fields
  loc_1E6FC6D:       var_1A4 = var_19C.Item(0)
  loc_1E6FC7E:       var_178 = Proc_6_38_E69628(CVar(var_1A4), var_1BC)
  loc_1E6FC8F:       If (var_178 = "Y") Then
  loc_1E6FC95:         var_D0 = "DUPLICATE KOT"
  loc_1E6FC9B:       Else
  loc_1E6FC9E:         var_D0 = vbNullString
  loc_1E6FCA1:       End If
  loc_1E6FCA1:     End If
  loc_1E6FCA6:     Set var_E0 = Nothing
  loc_1E6FCBA:     Call 0.Method_arg_90 (var_19C, var_1A0, var_AE)
  loc_1E6FCC2:     Call 0.Method_arg_24 (1)
  loc_1E6FCCE:     For var_3B4 =  To CInt(var_1A0): var_1BC = var_3B4 'Integer
  loc_1E6FCE7:       Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6FCEF:       Call 0.Method_arg_20 (var_1A4)
  loc_1E6FCF7:       Call 0.Method_arg_30 (var_178)
  loc_1E6FD0D:       var_3C4 = Ucase(CVar(var_178)) 'Variant
  loc_1E6FD3D:       If (var_3C4 = Ucase("comp_name")) Then
  loc_1E6FD61:         Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6FD69:         Call 0.Method_arg_20 (var_1A4)
  loc_1E6FD71:         Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1E6FD87:       Else
  loc_1E6FDA9:         If (var_3C4 = Ucase("comp_add1")) Then
  loc_1E6FDCD:           Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6FDD5:           Call 0.Method_arg_20 (var_1A4)
  loc_1E6FDDD:           Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1E6FDF3:         Else
  loc_1E6FE15:           If (var_3C4 = Ucase("comp_pin")) Then
  loc_1E6FE39:             Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6FE41:             Call 0.Method_arg_20 (var_1A4)
  loc_1E6FE49:             Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1E6FE5F:           Else
  loc_1E6FE81:             If (var_3C4 = Ucase("comp_GSTIN")) Then
  loc_1E6FEA5:               Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6FEAD:               Call 0.Method_arg_20 (var_1A4)
  loc_1E6FEB5:               Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1E6FECB:             Else
  loc_1E6FEED:               If (var_3C4 = Ucase("RestName")) Then
  loc_1E6FEFA:                 Set var_19C = Me.LblRest
  loc_1E6FF23:                 Call 0.Method_arg_90 (var_1A4, CLng(var_AE))
  loc_1E6FF2B:                 Call 0.Method_arg_20 (var_1BC)
  loc_1E6FF33:                 Call 0.Method_arg_38 ("'" & var_19C.Caption & "'")
  loc_1E6FF4D:               Else
  loc_1E6FF6F:                 If (var_3C4 = Ucase("mTitle")) Then
  loc_1E6FF93:                   Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6FF9B:                   Call 0.Method_arg_20 (var_1A4)
  loc_1E6FFA3:                   Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_1E6FFB9:                 Else
  loc_1E6FFC1:                   var_154 = "Header1"
  loc_1E6FFDB:                   If (var_3C4 = Ucase(var_154)) Then
  loc_1E6FFE9:                     Proc_6_17_EAAE40(var_154)
  loc_1E70005:                     Call 0.Method_arg_90 (var_19C, CLng(var_AE), var_1A4)
  loc_1E7000D:                     Call 0.Method_arg_20 (CStr(var_154))
  loc_1E70015:                     Call 0.Method_arg_38 (var_F4)
  loc_1E7002A:                   Else
  loc_1E70032:                     var_154 = "Header2"
  loc_1E7004C:                     If (var_3C4 = Ucase(var_154)) Then
  loc_1E7005A:                       Proc_6_17_EAAE40(var_154)
  loc_1E70076:                       Call 0.Method_arg_90 (var_19C, CLng(var_AE), var_1A4)
  loc_1E7007E:                       Call 0.Method_arg_20 (CStr(var_154))
  loc_1E70086:                       Call 0.Method_arg_38 (var_F8)
  loc_1E7009B:                     Else
  loc_1E700A3:                       var_154 = "Header3"
  loc_1E700BD:                       If (var_3C4 = Ucase(var_154)) Then
  loc_1E700CB:                         Proc_6_17_EAAE40(var_154)
  loc_1E700E7:                         Call 0.Method_arg_90 (var_19C, CLng(var_AE), var_1A4)
  loc_1E700EF:                         Call 0.Method_arg_20 (CStr(var_154))
  loc_1E700F7:                         Call 0.Method_arg_38 (var_FC)
  loc_1E7010C:                       Else
  loc_1E70114:                         var_154 = "Header4"
  loc_1E7012E:                         If (var_3C4 = Ucase(var_154)) Then
  loc_1E7013C:                           Proc_6_17_EAAE40(var_154)
  loc_1E70158:                           Call 0.Method_arg_90 (var_19C, CLng(var_AE), var_1A4)
  loc_1E70160:                           Call 0.Method_arg_20 (CStr(var_154))
  loc_1E70168:                           Call 0.Method_arg_38 (var_100)
  loc_1E7017D:                         Else
  loc_1E7018E:                           var_174 = Ucase("KotNo")
  loc_1E7019F:                           If (var_3C4 = var_174) Then
  loc_1E701CD:                             Proc_6_39_E7D3A0(var_174, CVar(var_B4.Fields.Item("VNo")))
  loc_1E701D9:                             var_188 = "'"
  loc_1E701F6:                             Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E701FE:                             Call 0.Method_arg_20 (var_1C0)
  loc_1E70206:                             Call 0.Method_arg_38 (CStr("'" & var_174 & var_188))
  loc_1E70225:                           Else
  loc_1E70247:                             If (var_3C4 = Ucase("KotDate")) Then
  loc_1E70293:                               Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E7029B:                               Call 0.Method_arg_20 (var_1C0)
  loc_1E702A3:                               Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))) & "'")
  loc_1E702C0:                             Else
  loc_1E702E2:                               If (var_3C4 = Ucase("KotTime")) Then
  loc_1E7032E:                                 Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E70336:                                 Call 0.Method_arg_20 (var_1C0)
  loc_1E7033E:                                 Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))) & "'")
  loc_1E7035B:                               Else
  loc_1E7037D:                                 If (var_3C4 = Ucase("Remarks")) Then
  loc_1E703C9:                                   Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E703D1:                                   Call 0.Method_arg_20 (var_1C0)
  loc_1E703D9:                                   Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))) & "'")
  loc_1E703F6:                                 Else
  loc_1E70418:                                   If (var_3C4 = Ucase("Card_No")) Then
  loc_1E70464:                                     Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E7046C:                                     Call 0.Method_arg_20 (var_1C0)
  loc_1E70474:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CardNo"))) & "'")
  loc_1E70491:                                   Else
  loc_1E704B3:                                     If (var_3C4 = Ucase("Member_Name")) Then
  loc_1E704D0:                                       var_1A4 = var_B4.Fields.Item("MemName")
  loc_1E704FF:                                       Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E70507:                                       Call 0.Method_arg_20 (var_1C0)
  loc_1E7050F:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_1A4)) & "'")
  loc_1E7052C:                                     Else
  loc_1E7054E:                                       If (var_3C4 = Ucase("TableTitle")) Then
  loc_1E7055F:                                         Set var_19C = Me.Label1
  loc_1E70565:                                         Call 0.Method_Proc_30_89_1E77CAC0 (2, var_1A4)
  loc_1E7059D:                                         Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E705A5:                                         Call 0.Method_arg_20 (var_1C0)
  loc_1E705AD:                                         Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_1A4)) & "'"))
  loc_1E705CC:                                       Else
  loc_1E705EE:                                         If (var_3C4 = Ucase("TableNo")) Then
  loc_1E7063A:                                           Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E70642:                                           Call 0.Method_arg_20 (var_1C0)
  loc_1E7064A:                                           Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))) & "'")
  loc_1E70667:                                         Else
  loc_1E70689:                                           If (var_3C4 = Ucase("Steward")) Then
  loc_1E7069E:                                             var_19C = var_B4.Fields
  loc_1E706A6:                                             var_1A4 = var_19C.Item("WaiterName")
  loc_1E706D5:                                             Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E706DD:                                             Call 0.Method_arg_20 (var_1C0)
  loc_1E706E5:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_1A4)) & "'")
  loc_1E70702:                                           Else
  loc_1E70724:                                             If (var_3C4 = Ucase("KotStatus")) Then
  loc_1E70748:                                               Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E70750:                                               Call 0.Method_arg_20 (var_1A4)
  loc_1E70758:                                               Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1E7076E:                                             Else
  loc_1E70790:                                               If (var_3C4 = Ucase("KotRemark")) Then
  loc_1E707B4:                                                 Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E707BC:                                                 Call 0.Method_arg_20 (var_1A4)
  loc_1E707C4:                                                 Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1E707DA:                                               Else
  loc_1E707EB:                                                 var_174 = Ucase("Covers")
  loc_1E707FC:                                                 If (var_3C4 = var_174) Then
  loc_1E70828:                                                   Proc_6_39_E7D3A0(var_174, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E70850:                                                   Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E70858:                                                   Call 0.Method_arg_20 (var_1C0)
  loc_1E70860:                                                   Call 0.Method_arg_38 ("'" & CStr(var_174) & "'")
  loc_1E70883:                                                 Else
  loc_1E708A5:                                                   If (var_3C4 = Ucase("NCType")) Then
  loc_1E708F1:                                                     Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E708F9:                                                     Call 0.Method_arg_20 (var_1C0)
  loc_1E70901:                                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCType"))) & "'")
  loc_1E7091B:                                                   End If
  loc_1E7091B:                                                 End If
  loc_1E7091B:                                               End If
  loc_1E7091B:                                             End If
  loc_1E7091B:                                           End If
  loc_1E7091B:                                         End If
  loc_1E7091B:                                       End If
  loc_1E7091B:                                     End If
  loc_1E7091B:                                   End If
  loc_1E7091B:                                 End If
  loc_1E7091B:                               End If
  loc_1E7091B:                             End If
  loc_1E7091B:                           End If
  loc_1E7091B:                         End If
  loc_1E7091B:                       End If
  loc_1E7091B:                     End If
  loc_1E7091B:                   End If
  loc_1E7091B:                 End If
  loc_1E7091B:               End If
  loc_1E7091B:             End If
  loc_1E7091B:           End If
  loc_1E7091B:         End If
  loc_1E7091B:       End If
  loc_1E7091E:     Next var_3B4 'Integer
  loc_1E70926:     var_B4.MoveNext
  loc_1E7092B:     GoTo loc_1E6F8DD
  loc_1E7092E:   End If
  loc_1E709A4:   If ((Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) = "Default") And (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E709F1:     If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1E70A20:       Call Proc_30_84_F0FCB8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))
  loc_1E70A2E:     End If
  loc_1E70A31:   Else
  loc_1E70A59:     var_178 = Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType")))
  loc_1E70AA7:     If ((var_178 <> "Default") And (Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E70AD2:       var_174 = CVar(Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer")))) 'String
  loc_1E70AF4:       If CBool(Ucase(var_174) <> "PRN") Then
  loc_1E70B23:         Call Proc_30_84_F0FCB8(Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer"))))
  loc_1E70B31:       End If
  loc_1E70B31:     End If
  loc_1E70B31:   End If
  loc_1E70B50:   var_154 = CVar(var_134.Fields.Item("NoOfKot")) 'Address
  loc_1E70B57:   Proc_6_39_E7D3A0(var_174)
  loc_1E70B71:   If (var_174 = 0) Then
  loc_1E70B7A:     Call 0.Method_arg_50 (var_178)
  loc_1E70B84:     Set var_1A4 = Nothing
  loc_1E70B9E:     Set var_19C = MemVar_1F951E8 
  loc_1E70BAA:     Proc_6_99_1484404(var_19C, 0, var_178)
  loc_1E70BB5:     MemVar_1F951E8 = var_19C
  loc_1E70BC6:   Else
  loc_1E70BEC:     Proc_6_39_E7D3A0(var_174, CVar(var_134.Fields.Item("NoOfKot")), &HFF)
  loc_1E70C06:     If (var_174 > 0) Then
  loc_1E70C2F:       Proc_6_39_E7D3A0(var_174, CVar(var_134.Fields.Item("NoOfKot")))
  loc_1E70C4F:       Call 0.Method_Me8 (False, var_174, var_188, var_1F0)
  loc_1E70C5E:     End If
  loc_1E70C5E:   End If
  loc_1E70C60:   var_12E = &HFF
  loc_1E70C63:   GoTo loc_1E67A4B
  loc_1E70C66: End If
  loc_1E70C6E: If (var_294 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1E70C73:   Close 1
  loc_1E70CB1:   Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E70CC5:   var_B4.MoveFirst
  loc_1E70CCA:   ' Referenced from: 1E7214C
  loc_1E70CD9:   If Not(var_B4.EOF) Then
  loc_1E70CDE:     var_92 = 0
  loc_1E70CFD:     var_1A4 = var_B4.Fields.Item("ShortName")
  loc_1E70D8C:     var_290 = IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")), var_238) = "Y"), "* NC LOT *", "* LOT *")
  loc_1E70DB9:     var_224 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")), var_1A4)
  loc_1E70DFC:     var_324 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_1A4), 1, var_92, var_12E))), 1, 3)) = "LAU") 'Variant
  loc_1E70E0F:     var_90 = CStr(IIf(var_324, var_290, IIf((var_224 = "Y"), "* NC KOT *", "* KOT *")))
  loc_1E70E53:     If (var_92 = 0) Then
  loc_1E70E58:       Print 1
  loc_1E70E8C:       var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1E70E9D:       If (var_F4 <> vbNullString) Then
  loc_1E70EC6:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1E70ECC:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_1A4), 1, var_92, var_12E)))
  loc_1E70EDE:       End If
  loc_1E70EE6:       If (var_F8 <> vbNullString) Then
  loc_1E70F0F:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1E70F15:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_1A4), 1, var_92, var_12E)))
  loc_1E70F27:       End If
  loc_1E70F2F:       If (var_FC <> vbNullString) Then
  loc_1E70F58:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H28)))
  loc_1E70F5E:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_1A4), 1, var_92, var_12E)))
  loc_1E70F70:       End If
  loc_1E70F78:       If (var_100 <> vbNullString) Then
  loc_1E70FA1:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_100, &H28)))
  loc_1E70FA7:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_1A4), 1, var_92, var_12E)))
  loc_1E70FB9:       End If
  loc_1E70FF5:       If CBool(var_C8.Fields.Item("SaleBillTokenHeader1").Value <> vbNullString) Then
  loc_1E7103E:         var_1A8 = Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("SaleBillTokenHeader1").Value), &H2A)
  loc_1E71057:         var_1B8 = (Chr(&HF) + CVar(var_1A8))
  loc_1E7105E:         var_1E0 = (3 + Chr(&H12))
  loc_1E71064:         Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_C8.Fields.Item("SaleBillTokenHeader1")), 1, var_92, var_12E))), 1, 3))
  loc_1E71087:       End If
  loc_1E71089:       Print 1
  loc_1E710B9:       Call Proc_30_103_EFA714(Me.LblRest.Caption, "D", &H28)
  loc_1E710C3:       Print 1, var_224
  loc_1E710E9:       Call Proc_30_103_EFA714(var_90, "D", &H28)
  loc_1E710F3:       Print 1, var_1A8
  loc_1E71107:       Print 1
  loc_1E7110F:       Print 1
  loc_1E71148:       Proc_6_39_E7D3A0(3, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1E7116A:       var_174 = (Chr(&HF) + "KOT No.   : ")
  loc_1E71174:       var_1E0 = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EADFB8(CStr(3), &HA, Proc_6_45_EADFB8(CStr(3), &HA, var_1A8))))
  loc_1E7117A:       Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VNo")), 1, &H12, var_12E))), 1, 3))
  loc_1E7122C:       var_174 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E71236:       var_1D0 = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_224), &HC)), &HC)))
  loc_1E7123F:       var_1E0 = (CVar(Proc_6_45_EADFB8(CStr(3), &HA, Proc_6_45_EADFB8(CStr(3), &HA, var_1A8))) + " ")
  loc_1E71249:       var_260 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), 1, &H12, var_12E))), 1, 3)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1E7124F:       Print 1, "* NC LOT *"
  loc_1E712A4:       var_1A4 = var_B4.Fields.Item("Remarks")
  loc_1E712E1:       var_174 = (Chr(&HF) + "Remarks : ")
  loc_1E712EB:       var_1D0 = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1A4)), &H32)))
  loc_1E712F2:       var_200 = (CVar(Proc_6_45_EADFB8(CStr(3), &HA, Proc_6_38_E69628(CVar(var_1A4)))) + Chr(&H12))
  loc_1E712F8:       Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E71331:       Set var_19C = Me.Label1
  loc_1E71337:       Call 0.Method_Proc_30_89_1E77CAC0 (2, var_1A4)
  loc_1E7135D:       var_224 = Proc_6_45_EADFB8(CStr(Trim(CVar(var_1A4))), &HA)
  loc_1E713C5:       Proc_6_39_E7D3A0(var_290, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E713E6:       var_358 = var_B4.Fields
  loc_1E713FD:       Proc_6_39_E7D3A0(var_324, CVar(var_358.Item("GuarAtt")))
  loc_1E7142B:       var_304 = (Space(&HA) + "Covers: ")
  loc_1E71435:       var_370 = ("* KOT *" + CVar(Proc_6_45_EADFB8(CStr(var_324), 7)))
  loc_1E7145E:       var_1D0 = (Chr(&HF) + CVar(var_224))
  loc_1E71467:       var_1E0 = (CVar(Proc_6_45_EADFB8(CStr(3), &HA, Proc_6_38_E69628(CVar(var_1A4)))) + ": ")
  loc_1E71471:       var_260 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1E71478:       var_3B0 = ("* NC LOT *" + IIf((var_290 <> 0), IIf(CVar(var_358.Item("GuarAtt")), "Void", vbNullString), vbNullString))
  loc_1E7147E:       Print 1, var_3B0
  loc_1E714E5:       var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E714EB:       Print 1, CVar(var_1A4)
  loc_1E714F8:     End If
  loc_1E7151E:     var_198 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1E71538:     var_1D0 = (Trim(CVar(var_1A4)) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1E7153D:     var_AC = CStr(CVar(Proc_6_45_EADFB8(CStr(3), &HA, "Qty")))
  loc_1E7156A:     var_174 = (Chr(&HF) + CVar(var_AC))
  loc_1E71570:     Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1E71593:     var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E71599:     Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1E715AC:     var_92 = (var_92 + 4)
  loc_1E715B2:     var_B8.MoveFirst
  loc_1E715B7:     ' Referenced from: 1E71A4A
  loc_1E715C6:     If Not(var_B8.EOF) Then
  loc_1E715E8:       var_154 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E71624:       var_1A8 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")), var_108)
  loc_1E7163F:       If (var_154 And ((Proc_6_38_E69628(var_154, &H12) = "Yes") <> var_1A8)) Then
  loc_1E7166A:         var_108 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E71688:         var_174 = (Chr(&HF) + "*")
  loc_1E71692:         var_198 = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(var_108))
  loc_1E7169B:         var_1B8 = (Trim(CVar(var_B8.Fields.Item("Kitchen"))) + "*")
  loc_1E716A1:         Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1E716B8:         var_92 = (var_92 + 1)
  loc_1E716BB:       End If
  loc_1E71708:       Proc_6_39_E7D3A0(Chr(&H12), CVar(var_B8.Fields.Item("qty")))
  loc_1E71759:       var_314 = vbNullString
  loc_1E717AB:       var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1E717C4:       var_270 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6)))))
  loc_1E717DD:       var_370 = (CVar(var_B4.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", var_314)), 6)))
  loc_1E71836:       var_174 = (Chr(&HF) + CVar(CStr(IIf(var_314, "Void", vbNullString))))
  loc_1E7183C:       Print 1, Space(3)
  loc_1E7184F:       var_92 = (var_92 + 1)
  loc_1E7188B:       If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E718CE:         var_174 = (Chr(&HF) + "(")
  loc_1E718D8:         var_1D0 = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1E718E1:         var_1E0 = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E718E7:         Print 1, Chr(&H12)
  loc_1E71908:         var_92 = (var_92 + 1)
  loc_1E7190B:       End If
  loc_1E71915:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E7192E:         var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E71934:         Print 1, Space(3)
  loc_1E71946:         Print 1, "Contd."
  loc_1E7195E:         Print 1, Chr(&HC)
  loc_1E7196D:         var_94 = (var_94 + 1)
  loc_1E71983:         Call Proc_30_104_11FFF98(1, 0, &H28, var_214)
  loc_1E719A2:         Call Proc_30_103_EFA714(var_90, "B", &H28, var_1A8, var_214)
  loc_1E719AC:         Print 1, var_1A8
  loc_1E719BB:         var_92 = &H12
  loc_1E719D4:         var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E719DA:         Print 1, Space(3)
  loc_1E719FD:         var_174 = (Chr(&HF) + CVar(var_AC))
  loc_1E71A03:         Print 1, Space(3)
  loc_1E71A26:         var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E71A2C:         Print 1, Space(3)
  loc_1E71A3F:         var_92 = (var_92 + 4)
  loc_1E71A42:       End If
  loc_1E71A45:       var_B8.MoveNext
  loc_1E71A4A:       GoTo loc_1E715B7
  loc_1E71A4D:     End If
  loc_1E71A57:     If (var_92 < (&H45 - var_A6)) Then
  loc_1E71A5A:       ' Referenced from: 1E71A7B
  loc_1E71A64:       If (var_92 = (&H45 - var_A6)) Then
  loc_1E71A6C:         Print 1, vbNullString
  loc_1E71A78:         var_92 = (var_92 + 1)
  loc_1E71A7B:         GoTo loc_1E71A5A
  loc_1E71A7E:       End If
  loc_1E71A7E:     End If
  loc_1E71A94:     var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E71A9A:     Print 1, Space(3)
  loc_1E71AFB:     var_174 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E71B02:     var_1B8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1E71B05:     var_1D0 = (Space(3) + var_1B8)
  loc_1E71B0B:     Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1E71B4F:     var_174 = (Chr(&HF) + "***  ")
  loc_1E71B65:     Print 1, Space(3) & Trim(var_CC) & "  ***"
  loc_1E71BB1:     If (Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), 1) = "Yes") Then
  loc_1E71BC8:       var_174 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E71C1C:       var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E71C32:       var_1BC = var_BC.Fields
  loc_1E71C93:       var_304 = var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E71CA1:       unk_5890AB.Execute CStr(var_304), var_314, -1
  loc_1E71CAC:       Set var_E0 = var_358
  loc_1E71CE7:     Else
  loc_1E71D2F:       var_198 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" 
  loc_1E71D58:       unk_5890AB.Execute CStr(var_198 & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')"), var_200, -1
  loc_1E71D63:       Set var_E0 = var_1BC
  loc_1E71D83:     End If
  loc_1E71DBF:     If (var_E0.Fields.Item(0).Value > 1) Then
  loc_1E71DF0:       Call Proc_30_103_EFA714(Proc_6_45_EADFB8("Changed KOT", &H14, var_1BC), "D", &H28, var_224)
  loc_1E71DFA:       Print 1, var_224
  loc_1E71E10:     Else
  loc_1E71E49:       If (Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), var_358) = "Yes") Then
  loc_1E71E60:         var_174 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E71EB4:         var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E71ECA:         var_1BC = var_BC.Fields
  loc_1E71F39:         unk_5890AB.Execute CStr(var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_314, -1
  loc_1E71F44:         Set var_E0 = var_358
  loc_1E71F7F:       Else
  loc_1E71FD9:         var_1D0 = "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source 
  loc_1E71FF0:         unk_5890AB.Execute CStr(var_1D0 & ")Q)"), var_200, -1
  loc_1E71FFB:         Set var_E0 = var_1BC
  loc_1E7201B:       End If
  loc_1E72054:       If (Proc_6_38_E69628(CVar(var_E0.Fields.Item(0)), var_1BC, var_358) = "Y") Then
  loc_1E72085:         Call Proc_30_103_EFA714(Proc_6_45_EADFB8("DUPLICATE KOT", &H14), "D", &H28)
  loc_1E7208F:         Print 1, var_224
  loc_1E720A5:       Else
  loc_1E720BA:         var_174 = (Chr(&HF) + vbNullString)
  loc_1E720C0:         Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value
  loc_1E720CD:       End If
  loc_1E720CD:     End If
  loc_1E720D2:     Set var_E0 = Nothing
  loc_1E720EA:     var_174 = (Chr(&HF) + "** ")
  loc_1E720F4:     var_198 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1E720FD:     var_1B8 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" + " **")
  loc_1E72103:     Print 1, var_B8.Source
  loc_1E72117:     var_B4.MoveNext
  loc_1E7211E:     Print 1
  loc_1E72126:     Print 1
  loc_1E7212E:     Print 1
  loc_1E72136:     Print 1
  loc_1E7213E:     Print 1
  loc_1E72146:     Print 1
  loc_1E7214C:     GoTo loc_1E70CCA
  loc_1E7214F:   End If
  loc_1E72151:   Close 1
  loc_1E72181:   var_224 = "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition)
  loc_1E7218F:   Open var_224 & ".BAT" For Output As 1 Len = &HFF
  loc_1E721F8:   var_1A8 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType")), var_224) = "Default"))
  loc_1E72216:   If (var_92 And (var_1A8 <> vbNullString)) Then
  loc_1E7227B:     var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E72281:     Print 1, var_198
  loc_1E722A5:   Else
  loc_1E722FD:     var_1A8 = Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) <> "Default"))
  loc_1E7231B:     If (var_92 And (var_1A8 <> vbNullString)) Then
  loc_1E72380:       var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E72386:       Print 1, var_198
  loc_1E723AA:     Else
  loc_1E723EB:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1E72400:     End If
  loc_1E72400:   End If
  loc_1E72402:   Close 1
  loc_1E7240C:   If (MemVar_1F953BC = "Y") Then
  loc_1E72451:     var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E72455:     var_A4 = var_144 'Variant
  loc_1E7246A:   Else
  loc_1E724A4:     For var_3CC = 1 To CInt(var_134.Fields.Item("NoOfKot").Value):   var_EE = var_3CC 'Integer
  loc_1E724EC:       var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E724F0:       var_A4 = var_144 'Variant
  loc_1E72504:       var_12E = &HFF
  loc_1E7250A:     Next var_3CC 'Integer
  loc_1E7250F:   End If
  loc_1E7250F:   GoTo loc_1E67A4B
  loc_1E72512: End If
  loc_1E7251A: If (var_294 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1E7251F:   Close 1
  loc_1E72556:   var_228 = "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT"
  loc_1E7255D:   Open var_228 For Output As 1 Len = &HFF
  loc_1E72571:   var_B4.MoveFirst
  loc_1E72576:   ' Referenced from: 1E73A48
  loc_1E72585:   If Not(var_B4.EOF) Then
  loc_1E7260D:     var_220 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")))
  loc_1E72638:     var_290 = IIf((var_220 = "Y"), "* NC LOT *", "* LOT *")
  loc_1E726A8:     var_324 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU") 'Variant
  loc_1E726BB:     var_90 = CStr(IIf(var_324, var_290, IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *")))
  loc_1E726FF:     If (0 = 0) Then
  loc_1E72704:       Print 1
  loc_1E72738:       var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1E72749:       If (var_F4 <> vbNullString) Then
  loc_1E72772:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1E72778:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E7278A:       End If
  loc_1E72792:       If (var_F8 <> vbNullString) Then
  loc_1E727BB:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1E727C1:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E727D3:       End If
  loc_1E727DB:       If (var_FC <> vbNullString) Then
  loc_1E72804:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H28)))
  loc_1E7280A:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E7281C:       End If
  loc_1E72824:       If (var_100 <> vbNullString) Then
  loc_1E7284D:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_100, &H28)))
  loc_1E72853:         Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E72865:       End If
  loc_1E728A1:       If CBool(var_C8.Fields.Item("SaleBillTokenHeader1").Value <> vbNullString) Then
  loc_1E72903:         var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("SaleBillTokenHeader1").Value), &H2A)))
  loc_1E7290A:         var_1E0 = (3 + Chr(&H12))
  loc_1E72910:         Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))
  loc_1E72933:       End If
  loc_1E72935:       Print 1
  loc_1E72979:       Call Proc_30_103_EFA714(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1E72983:       Print 1, var_228
  loc_1E729C1:       Call Proc_30_103_EFA714(Proc_6_45_EADFB8(var_90, &H14), "D", &H28)
  loc_1E729CB:       Print 1, var_220
  loc_1E729E3:       Print 1
  loc_1E729EB:       Print 1
  loc_1E72A24:       Proc_6_39_E7D3A0(3, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1E72A46:       var_174 = (Chr(&HF) + "KOT No.   : ")
  loc_1E72A50:       var_1E0 = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EADFB8(CStr(3), &HA, var_220)))
  loc_1E72A56:       Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))
  loc_1E72B08:       var_174 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E72B0F:       var_1B8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")))), &HC)) 'String
  loc_1E72B12:       var_1D0 = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + var_1B8)
  loc_1E72B1B:       var_1E0 = (CVar(Proc_6_45_EADFB8(CStr(3), &HA, Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")))))) + " ")
  loc_1E72B25:       var_260 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1E72B2B:       Print 1, "* NC LOT *"
  loc_1E72B80:       var_1A4 = var_B4.Fields.Item("Remarks")
  loc_1E72BBD:       var_174 = (Chr(&HF) + "Remarks : ")
  loc_1E72BC7:       var_1D0 = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1A4)), &H32)))
  loc_1E72BCE:       var_200 = (CVar(Proc_6_45_EADFB8(CStr(3), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1A4)), &H32))) + Chr(&H12))
  loc_1E72BD4:       Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E72C0D:       Set var_19C = Me.Label1
  loc_1E72C13:       Call 0.Method_Proc_30_89_1E77CAC0 (2, var_1A4)
  loc_1E72C39:       var_224 = Proc_6_45_EADFB8(CStr(Trim(CVar(var_1A4))), &HA)
  loc_1E72CA1:       Proc_6_39_E7D3A0(var_290, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E72CC2:       var_358 = var_B4.Fields
  loc_1E72CD9:       Proc_6_39_E7D3A0(var_324, CVar(var_358.Item("GuarAtt")))
  loc_1E72D07:       var_304 = (Space(&HA) + "Covers: ")
  loc_1E72D11:       var_370 = ("* KOT *" + CVar(Proc_6_45_EADFB8(CStr(var_324), 7)))
  loc_1E72D3A:       var_1D0 = (Chr(&HF) + CVar(var_224))
  loc_1E72D43:       var_1E0 = (CVar(Proc_6_45_EADFB8(CStr(3), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1A4)), &H32))) + ": ")
  loc_1E72D4D:       var_260 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1E72D54:       var_3B0 = ("* NC LOT *" + IIf((var_290 <> 0), IIf(CVar(var_358.Item("GuarAtt")), "Void", vbNullString), vbNullString))
  loc_1E72D5A:       Print 1, var_3B0
  loc_1E72DC1:       var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E72DC7:       Print 1, CVar(var_1A4)
  loc_1E72DD4:     End If
  loc_1E72DFA:     var_198 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1E72E14:     var_1D0 = (Trim(CVar(var_1A4)) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1E72E19:     var_AC = CStr(CVar(Proc_6_45_EADFB8(CStr(3), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1A4)), &H32))))
  loc_1E72E46:     var_174 = (Chr(&HF) + CVar(var_AC))
  loc_1E72E4C:     Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1E72E6F:     var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E72E75:     Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1E72E88:     var_92 = (var_92 + 4)
  loc_1E72E8E:     var_B8.MoveFirst
  loc_1E72E93:     ' Referenced from: 1E73326
  loc_1E72EA2:     If Not(var_B8.EOF) Then
  loc_1E72F00:       var_1A8 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")), var_108)
  loc_1E72F1B:       If (&H12 And ((Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), &H12) = "Yes") <> var_1A8)) Then
  loc_1E72F46:         var_108 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E72F64:         var_174 = (Chr(&HF) + "*")
  loc_1E72F6E:         var_198 = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(var_108))
  loc_1E72F77:         var_1B8 = (Trim(CVar(var_B8.Fields.Item("Kitchen"))) + "*")
  loc_1E72F7D:         Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1E72F94:         var_92 = (var_92 + 1)
  loc_1E72F97:       End If
  loc_1E72FE4:       Proc_6_39_E7D3A0(Chr(&H12), CVar(var_B8.Fields.Item("qty")))
  loc_1E73035:       var_314 = vbNullString
  loc_1E73087:       var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1E730A0:       var_270 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6)))))
  loc_1E730B9:       var_370 = (CVar(var_B4.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", var_314)), 6)))
  loc_1E73112:       var_174 = (Chr(&HF) + CVar(CStr(IIf(var_314, "Void", vbNullString))))
  loc_1E73118:       Print 1, Space(3)
  loc_1E7312B:       var_92 = (var_92 + 1)
  loc_1E73167:       If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E731AA:         var_174 = (Chr(&HF) + "(")
  loc_1E731B4:         var_1D0 = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1E731BD:         var_1E0 = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E731C3:         Print 1, Chr(&H12)
  loc_1E731E4:         var_92 = (var_92 + 1)
  loc_1E731E7:       End If
  loc_1E731F1:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E7320A:         var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E73210:         Print 1, Space(3)
  loc_1E73222:         Print 1, "Contd."
  loc_1E7323A:         Print 1, Chr(&HC)
  loc_1E73249:         var_94 = (var_94 + 1)
  loc_1E7325F:         Call Proc_30_104_11FFF98(1, 0, &H28, var_214)
  loc_1E7327E:         Call Proc_30_103_EFA714(var_90, "B", &H28, var_1A8, var_214)
  loc_1E73288:         Print 1, var_1A8
  loc_1E73297:         var_92 = &H12
  loc_1E732B0:         var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E732B6:         Print 1, Space(3)
  loc_1E732D9:         var_174 = (Chr(&HF) + CVar(var_AC))
  loc_1E732DF:         Print 1, Space(3)
  loc_1E73302:         var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E73308:         Print 1, Space(3)
  loc_1E7331B:         var_92 = (var_92 + 4)
  loc_1E7331E:       End If
  loc_1E73321:       var_B8.MoveNext
  loc_1E73326:       GoTo loc_1E72E93
  loc_1E73329:     End If
  loc_1E73333:     If (var_92 < (&H45 - var_A6)) Then
  loc_1E73336:       ' Referenced from: 1E73357
  loc_1E73340:       If (var_92 = (&H45 - var_A6)) Then
  loc_1E73348:         Print 1, vbNullString
  loc_1E73354:         var_92 = (var_92 + 1)
  loc_1E73357:         GoTo loc_1E73336
  loc_1E7335A:       End If
  loc_1E7335A:     End If
  loc_1E73370:     var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E73376:     Print 1, Space(3)
  loc_1E733D7:     var_174 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E733DE:     var_1B8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1E733E1:     var_1D0 = (Space(3) + var_1B8)
  loc_1E733E7:     Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1E7342B:     var_174 = (Chr(&HF) + "***  ")
  loc_1E73441:     Print 1, Space(3) & Trim(var_CC) & "  ***"
  loc_1E7348D:     If (Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), 1) = "Yes") Then
  loc_1E734A4:       var_174 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E734F8:       var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E7350E:       var_1BC = var_BC.Fields
  loc_1E7356F:       var_304 = var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E7357D:       unk_5890AB.Execute CStr(var_304), var_314, -1
  loc_1E73588:       Set var_E0 = var_358
  loc_1E735C3:     Else
  loc_1E7360B:       var_198 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" 
  loc_1E73634:       unk_5890AB.Execute CStr(var_198 & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')"), var_200, -1
  loc_1E7363F:       Set var_E0 = var_1BC
  loc_1E7365F:     End If
  loc_1E7369B:     If (var_E0.Fields.Item(0).Value > 1) Then
  loc_1E736CC:       Call Proc_30_103_EFA714(Proc_6_45_EADFB8("Changed KOT", &H14, var_1BC), "D", &H28, var_224)
  loc_1E736D6:       Print 1, var_224
  loc_1E736EC:     Else
  loc_1E73725:       If (Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), var_358) = "Yes") Then
  loc_1E7373C:         var_174 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E73790:         var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E737A6:         var_1BC = var_BC.Fields
  loc_1E73815:         unk_5890AB.Execute CStr(var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_314, -1
  loc_1E73820:         Set var_E0 = var_358
  loc_1E7385B:       Else
  loc_1E738B5:         var_1D0 = "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source 
  loc_1E738CC:         unk_5890AB.Execute CStr(var_1D0 & ")Q)"), var_200, -1
  loc_1E738D7:         Set var_E0 = var_1BC
  loc_1E738F7:       End If
  loc_1E73930:       If (Proc_6_38_E69628(CVar(var_E0.Fields.Item(0)), var_1BC, var_358) = "Y") Then
  loc_1E73961:         Call Proc_30_103_EFA714(Proc_6_45_EADFB8("DUPLICATE KOT", &H14), "D", &H28)
  loc_1E7396B:         Print 1, var_224
  loc_1E73981:       Else
  loc_1E73996:         var_174 = (Chr(&HF) + vbNullString)
  loc_1E7399C:         Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value
  loc_1E739A9:       End If
  loc_1E739A9:     End If
  loc_1E739AE:     Set var_E0 = Nothing
  loc_1E739C6:     var_174 = (Chr(&HF) + "** ")
  loc_1E739D0:     var_198 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1E739D9:     var_1B8 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" + " **")
  loc_1E739DF:     Print 1, var_B8.Source
  loc_1E739F3:     var_B4.MoveNext
  loc_1E739FA:     Print 1
  loc_1E73A02:     Print 1
  loc_1E73A0A:     Print 1
  loc_1E73A12:     Print 1
  loc_1E73A1A:     Print 1
  loc_1E73A22:     Print 1
  loc_1E73A2A:     Print 1
  loc_1E73A32:     Print 1
  loc_1E73A3A:     Print 1
  loc_1E73A42:     Print 1
  loc_1E73A48:     GoTo loc_1E72576
  loc_1E73A4B:   End If
  loc_1E73A4D:   Close 1
  loc_1E73A7D:   var_224 = "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition)
  loc_1E73A8B:   Open var_224 & ".BAT" For Output As 1 Len = &HFF
  loc_1E73AF4:   var_1A8 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType")), var_224) = "Default"))
  loc_1E73B12:   If (var_92 And (var_1A8 <> vbNullString)) Then
  loc_1E73B77:     var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E73B7D:     Print 1, var_198
  loc_1E73BA1:   Else
  loc_1E73BF9:     var_1A8 = Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) <> "Default"))
  loc_1E73C17:     If (var_92 And (var_1A8 <> vbNullString)) Then
  loc_1E73C7C:       var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E73C82:       Print 1, var_198
  loc_1E73CA6:     Else
  loc_1E73CE7:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1E73CFC:     End If
  loc_1E73CFC:   End If
  loc_1E73CFE:   Close 1
  loc_1E73D08:   If (MemVar_1F953BC = "Y") Then
  loc_1E73D4D:     var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E73D51:     var_A4 = var_144 'Variant
  loc_1E73D66:   Else
  loc_1E73DA0:     For var_3D0 = 1 To CInt(var_134.Fields.Item("NoOfKot").Value):   var_EE = var_3D0 'Integer
  loc_1E73DE8:       var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E73DEC:       var_A4 = var_144 'Variant
  loc_1E73E00:       var_12E = &HFF
  loc_1E73E06:     Next var_3D0 'Integer
  loc_1E73E0B:   End If
  loc_1E73E0B:   GoTo loc_1E67A4B
  loc_1E73E0E: End If
  loc_1E73E16: Loop Until (var_294 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") 'do at: 1E65D09
  loc_1E73E1B: Close 1
  loc_1E73E59: Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E73E6D: var_B4.MoveFirst
  loc_1E73E72: ' Referenced from: 1E758A9
  loc_1E73E81: Loop Until Not(var_B4.EOF) 'do at: 1E658AC
  loc_1E73FAE: var_334 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E73FB7: var_90 = CStr(var_334)
  loc_1E74023: var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1E74032: If (0 = 0) Then
  loc_1E74037:   Print 1
  loc_1E74045:   If (var_F4 <> vbNullString) Then
  loc_1E7407B:     var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H2A)))
  loc_1E74082:     var_1D0 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E74088:     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E7409E:   End If
  loc_1E740A6:   If (var_F8 <> vbNullString) Then
  loc_1E740DC:     var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H2A)))
  loc_1E740E3:     var_1D0 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E740E9:     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E740FF:   End If
  loc_1E74107:   If (var_FC <> vbNullString) Then
  loc_1E7413D:     var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H2A)))
  loc_1E74144:     var_1D0 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E7414A:     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E74160:   End If
  loc_1E74168:   If (var_100 <> vbNullString) Then
  loc_1E7419E:     var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_100, &H2A)))
  loc_1E741A5:     var_1D0 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E741AB:     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E741C1:   End If
  loc_1E741FD:   If CBool(var_C8.Fields.Item("SaleBillTokenHeader1").Value <> vbNullString) Then
  loc_1E7425F:     var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_C8.Fields.Item("SaleBillTokenHeader1").Value), &H2A)))
  loc_1E74266:     var_1E0 = (Chr(&H12) + Chr(&H12))
  loc_1E7426C:     Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))
  loc_1E7428F:   End If
  loc_1E742B2:   If ((((var_F4 <> vbNullString) Or (var_F8 <> vbNullString)) Or (var_FC <> vbNullString)) Or (var_100 <> vbNullString)) Then
  loc_1E742B7:     Print 1
  loc_1E742BD:   End If
  loc_1E742E6:   var_1D0 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1E74329:   var_314 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1E74353:   var_210 = (Chr(&HF) + Space(CLng((Chr(&H12) / 2))))
  loc_1E7435A:   var_290 = (CVar(var_B4.Fields.Item("NCKOT")) + Trim(CVar(Me.LblRest)))
  loc_1E74361:   var_370 = (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") + Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2))))
  loc_1E74368:   var_390 = (IIf(IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"), "Void", vbNullString) + Chr(&H12))
  loc_1E7436E:   Print 1, vbNullString
  loc_1E743BC:   var_1B8 = (40 - Len(Trim(var_90)))
  loc_1E743EF:   var_290 = (40 - Len(Trim(var_90)))
  loc_1E74419:   var_200 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1E74423:   var_210 = (Space(CLng((Chr(&H12) / 2))) + CVar(var_90))
  loc_1E7442A:   var_304 = (CVar(var_B4.Fields.Item("NCKOT")) + Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))))
  loc_1E74431:   var_324 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1E74437:   Print 1, (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2)
  loc_1E74482:   var_1B8 = (39 - Len(Trim(var_11C)))
  loc_1E744B1:   var_260 = Len(Trim(var_11C))
  loc_1E744B5:   var_270 = (39 - var_260)
  loc_1E744E0:   var_200 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(var_11C))
  loc_1E744E7:   var_2E4 = (Space(CLng((Chr(&H12) / 2))) + Space(CLng((Len(Trim(var_90)) / 2))))
  loc_1E744FA:   var_314 = IIf((var_11C <> vbNullString), Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))), vbNullString)
  loc_1E74512:   var_324 = (Chr(&H12) + var_314)
  loc_1E74519:   var_370 = ((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2) + Chr(&H12))
  loc_1E7451F:   Print 1, IIf(var_314, "Void", vbNullString)
  loc_1E7457B:   If (Proc_6_38_E69628(CVar(var_B4.Fields.Item("CardNo")), &H12) <> vbNullString) Then
  loc_1E745DF:     var_174 = (Chr(&HF) + "Membership No.: ")
  loc_1E745E9:     var_1D0 = (Trim(var_11C) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CardNo"))), &H1A)))
  loc_1E745F0:     var_200 = ((Len(Trim(CVar(Me.LblRest))) / 2) + Chr(&H12))
  loc_1E745F6:     Print 1, Space(CLng((Chr(&H12) / 2)))
  loc_1E74619:   End If
  loc_1E74652:   If (Proc_6_38_E69628(CVar(var_B4.Fields.Item("MemName"))) <> vbNullString) Then
  loc_1E746B6:     var_174 = (Chr(&HF) + "Member : ")
  loc_1E746BD:     var_1B8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("MemName"))), &H21)) 'String
  loc_1E746C0:     var_1D0 = (Trim(var_11C) + var_1B8)
  loc_1E746C7:     var_200 = ((Len(Trim(CVar(Me.LblRest))) / 2) + Chr(&H12))
  loc_1E746CD:     Print 1, Space(CLng((Chr(&H12) / 2)))
  loc_1E746F0:   End If
  loc_1E74723:   Proc_6_39_E7D3A0(var_1B8, CVar(var_B4.Fields.Item("VNo")))
  loc_1E7478E:   Proc_6_39_E7D3A0(var_260, CVar(var_B4.Fields.Item("TokenNo")))
  loc_1E747D2:   var_2B4 = IIf((Proc_6_38_E69628(CVar(var_C8.Fields.Item("AutoResetToken"))) = "Yes"), CVar(" TOKEN No. : " & Proc_6_45_EADFB8(CStr(var_260), 5)), vbNullString)
  loc_1E747EC:   var_174 = (Chr(&HF) + "KOT No.   : ")
  loc_1E747F6:   var_1E0 = (Trim(var_11C) + CVar(Proc_6_45_EADFB8(CStr(var_1B8), &HC)))
  loc_1E747FD:   var_2E4 = (Chr(&H12) + var_2B4)
  loc_1E74804:   var_314 = (Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))) + Chr(&H12))
  loc_1E7480A:   Print 1, var_314
  loc_1E748E0:   var_324 = Chr(&H12)
  loc_1E748ED:   var_174 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E748F7:   var_1D0 = (Trim(var_11C) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))), &HC)))
  loc_1E74900:   var_1E0 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))), &HC))), &HC)) + " ")
  loc_1E7490A:   var_260 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 6)))
  loc_1E74913:   var_270 = (var_260 + "KOT : ")
  loc_1E7491C:   var_290 = CVar(CStr(var_110)) 'String
  loc_1E7491F:   var_2B4 = (CVar(" TOKEN No. : " & Proc_6_45_EADFB8(CStr(var_260), 5)) + var_290)
  loc_1E74928:   var_2E4 = (var_2B4 + "/")
  loc_1E74934:   var_314 = (Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))) + CVar(CStr(var_10E)))
  loc_1E7493B:   var_334 = (var_314 + var_324)
  loc_1E74941:   Print 1, Chr(&H12)
  loc_1E749CC:   If CBool(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))))) <> vbNullString) Then
  loc_1E749F3:     var_1A4 = var_B4.Fields.Item("Remarks")
  loc_1E74A30:     var_174 = (Chr(&HF) + "Remarks : ")
  loc_1E74A3A:     var_1D0 = (CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks")))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1A4)), &H20)))
  loc_1E74A41:     var_200 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1A4)), &H20))), &HC)) + Chr(&H12))
  loc_1E74A47:     Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E74A6A:   End If
  loc_1E74A80:   Set var_19C = Me.Label1
  loc_1E74A86:   Call 0.Method_Proc_30_89_1E77CAC0 (2, var_1A4)
  loc_1E74AAC:   var_224 = Proc_6_45_EADFB8(CStr(Trim(CVar(var_1A4))), &HA)
  loc_1E74B14:   Proc_6_39_E7D3A0(var_290, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E74B4C:   Proc_6_39_E7D3A0(var_324, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E74B7A:   var_304 = (Space(&HA) + "Covers: ")
  loc_1E74B84:   var_370 = (CVar(CStr(var_10E)) + CVar(Proc_6_45_EADFB8(CStr(var_324), 7)))
  loc_1E74BBA:   var_1D0 = (Chr(&HF) + CVar(var_224))
  loc_1E74BC3:   var_1E0 = (CVar(Proc_6_45_EADFB8(CStr(CVar(var_224)), &HC)) + ": ")
  loc_1E74BCD:   var_260 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1E74BD4:   var_3B0 = (var_260 + IIf((var_290 <> 0), IIf(CVar(var_B4.Fields.Item("GuarAtt")), "Void", vbNullString), vbNullString))
  loc_1E74BDB:   var_3F0 = (var_3B0 + Chr(&H12))
  loc_1E74BE1:   Print 1, var_3F0
  loc_1E74C59:   var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E74C60:   var_1B8 = (CVar(var_1A4) + Chr(&H12))
  loc_1E74C66:   Print 1, CVar(var_224)
  loc_1E74C77: End If
  loc_1E74C9D: var_198 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Space(1))
  loc_1E74CB7: var_1D0 = (Chr(&H12) + CVar(Proc_6_52_EAE084("Qty", 7)))
  loc_1E74CC3: var_1E0 = Space(1)
  loc_1E74CCB: var_200 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 7))), &HC)) + var_1E0)
  loc_1E74CE5: var_260 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 7)))
  loc_1E74D2E: var_174 = (Chr(&HF) + CVar(CStr(var_260)))
  loc_1E74D35: var_1B8 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Chr(&H12))
  loc_1E74D3B: Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E74D6F: var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E74D76: var_1B8 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Chr(&H12))
  loc_1E74D7C: Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E74D93: var_92 = (var_92 + 4)
  loc_1E74D99: var_B8.MoveFirst
  loc_1E74D9E: ' Referenced from: 1E7519E
  loc_1E74DAD: Loop Until Not(var_B8.EOF) 'do at: 1E651A1
  loc_1E74E26: If (&H12 And ((Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), &H12) = "Yes") <> Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")), var_108))) Then
  loc_1E74E51:   var_108 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E74E6F:   var_174 = (Chr(&HF) + "*")
  loc_1E74E79:   var_198 = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(var_108))
  loc_1E74E82:   var_1B8 = (Chr(&H12) + "*")
  loc_1E74E88:   Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E74E9F:   var_92 = (var_92 + 1)
  loc_1E74EA2: End If
  loc_1E74EEF: Proc_6_39_E7D3A0(var_1E0, CVar(var_B8.Fields.Item("qty")))
  loc_1E74F3A: Proc_6_39_E7D3A0(CVar(CStr(var_10E)), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_1E74F4E: var_314 = "0.00"
  loc_1E74F71: var_358 = var_B8.Fields
  loc_1E74FDD: var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H15, 1)) + Space(1))
  loc_1E74FF6: var_270 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1E0, "0.000")), 7, CVar(Proc_6_52_EAE084("Qty", 7)))))
  loc_1E7500A: var_2B4 = (CVar(var_B4.Fields.Item("GuarAtt")) + Space(1))
  loc_1E75023: var_370 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(var_10E)), var_314)), 7, var_2B4)))
  loc_1E7503C: var_414 = (IIf(var_314, "Void", vbNullString) + CVar(Proc_6_52_EAE084(CStr(IIf((var_358.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)))
  loc_1E750B6: var_174 = (Chr(&HF) + CVar(CStr(var_414)))
  loc_1E750BD: var_1B8 = (Space(1) + Chr(&H12))
  loc_1E750C3: Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E750DA: var_92 = (var_92 + 1)
  loc_1E75116: Loop Until (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) 'do at: 1E65196
  loc_1E75159: var_174 = (Chr(&HF) + "(")
  loc_1E75163: var_1D0 = (Space(1) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1E7516C: var_1E0 = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E75172: Print 1, var_1E0
  loc_1E75193: var_92 = (var_92 + 1)
  loc_1E75199: var_B8.MoveNext
  loc_1E7519E: GoTo loc_1E74D9E
  loc_1E751C4: var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E751CB: var_1B8 = (Space(1) + Chr(&H12))
  loc_1E751D1: Print 1, CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description"))))
  loc_1E75243: var_174 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E7524D: var_1D0 = (Space(1) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1E75254: var_200 = (CVar(var_B8.Fields.Item("qty")) + Chr(&H12))
  loc_1E7525A: Print 1, "0.000"
  loc_1E752AF: var_174 = (Chr(&HF) + "***  ")
  loc_1E752C2: var_1E0 = ("  ***" + Chr(&H12))
  loc_1E752CC: Print 1, Space(1) & Trim(var_CC) & Chr(&H12)
  loc_1E7531C: Loop Until (Proc_6_38_E69628(CVar(var_134.Fields.Item("Split"))) = "Yes") 'do at: 1E65452
  loc_1E75333: var_174 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E75387: var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E7539D: var_1BC = var_BC.Fields
  loc_1E753FE: var_304 = var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E7540C: unk_5890AB.Execute CStr(var_304), var_314, -1
  loc_1E75417: Set var_E0 = var_358
  loc_1E7544F: GoTo loc_1E654EE
  loc_1E7549A: var_198 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" 
  loc_1E754C3: unk_5890AB.Execute CStr(var_198 & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')"), var_200, -1
  loc_1E7552A: Loop Until (var_1BC.Fields.Item(0).Value > 1) 'do at: 1E6557B
  loc_1E7555B: Call Proc_30_103_EFA714(Proc_6_45_EADFB8("Changed KOT", &H14, var_1BC), "D", &H28)
  loc_1E75565: Print 1, var_224
  loc_1E75578: GoTo loc_1E6580D
  loc_1E755B4: Loop Until (Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), var_224) = "Yes") 'do at: 1E656EA
  loc_1E755CB: var_174 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E7561F: var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E75635: var_1BC = var_BC.Fields
  loc_1E756A4: unk_5890AB.Execute CStr(var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_314, -1
  loc_1E756AF: Set var_E0 = var_358
  loc_1E756E7: GoTo loc_1E65786
  loc_1E75744: var_1D0 = "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source 
  loc_1E7575B: unk_5890AB.Execute CStr(var_1D0 & ")Q)"), var_200, -1
  loc_1E757BF: Loop Until (Proc_6_38_E69628(CVar(var_1BC.Fields.Item(0)), var_1BC, var_358) = "Y") 'do at: 1E6580D
  loc_1E757F0: Call Proc_30_103_EFA714(Proc_6_45_EADFB8("DUPLICATE KOT", &H14), "D", &H28)
  loc_1E757FA: Print 1, var_224
  loc_1E75812: Set var_E0 = Nothing
  loc_1E75818: var_B4.MoveNext
  loc_1E7581F: Print 1
  loc_1E7583A: var_174 = (Chr(&HF) + "** ")
  loc_1E75844: var_198 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1E7584D: var_1B8 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" + " **")
  loc_1E75853: Print 1, var_B8.Source
  loc_1E75866: Print 1
  loc_1E7586E: Print 1
  loc_1E75894: var_198 = (Chr(&H1B) + Chr(&H6D))
  loc_1E7589A: Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From ("
  loc_1E758A9: GoTo loc_1E73E72
  loc_1E758AE: Close 1
  loc_1E75908: var_1A8 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType")), var_224) = "Default"))
  loc_1E75926: Loop Until (var_358 And (var_1A8 <> vbNullString)) 'do at: 1E65A02
  loc_1E75965: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E759D8: var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E759DE: Print 1, var_198
  loc_1E759FF: GoTo loc_1E65BF7
  loc_1E75A5A: var_1A8 = Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) <> "Default"))
  loc_1E75A78: Loop Until (&H12 And (var_1A8 <> vbNullString)) 'do at: 1E65B54
  loc_1E75AB7: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E75B2A: var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E75B30: Print 1, var_198
  loc_1E75B51: GoTo loc_1E65BF7
  loc_1E75B90: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E75BE2: Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1E75BF9: Close 1
  loc_1E75C03: Loop Until (MemVar_1F953BC = "Y") 'do at: 1E65C61
  loc_1E75C48: var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E75C4C: var_A4 = var_144 'Variant
  loc_1E75C5E: GoTo loc_1E65D06
  loc_1E75C9B: For var_418 = 1 To CInt(var_134.Fields.Item("NoOfKot").Value): var_EE = var_418 'Integer
  loc_1E75CE3:   var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E75CE7:   var_A4 = var_144 'Variant
  loc_1E75CFB:   var_12E = &HFF
  loc_1E75D01: Next var_418 'Integer
  loc_1E75D06: GoTo loc_1E67A4B
  loc_1E75D11: Loop Until (var_294 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") 'do at: 1E67A4B
  loc_1E75D16: Close 1
  loc_1E75D54: Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E75D68: var_B4.MoveFirst
  loc_1E75D7C: Loop Until Not(var_B4.EOF) 'do at: 1E675F1
  loc_1E75EA9: var_334 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E75EB2: var_90 = CStr(var_334)
  loc_1E75F1E: var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1E75F2D: Loop Until (0 = 0) 'do at: 1E66AA4
  loc_1E75F32: Print 1
  loc_1E75F40: Loop Until (var_F4 <> vbNullString) 'do at: 1E65F99
  loc_1E75F76: var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H2A)))
  loc_1E75F7D: var_1D0 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E75F83: Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E75FA1: Loop Until (var_F8 <> vbNullString) 'do at: 1E65FFA
  loc_1E75FD7: var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H2A)))
  loc_1E75FDE: var_1D0 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E75FE4: Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E76002: Loop Until (var_FC <> vbNullString) 'do at: 1E6605B
  loc_1E76038: var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H2A)))
  loc_1E7603F: var_1D0 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E76045: Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E76063: Loop Until (var_100 <> vbNullString) 'do at: 1E660BC
  loc_1E76099: var_198 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_100, &H2A)))
  loc_1E760A0: var_1D0 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E760A6: Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E760DF: Loop Until ((((var_F4 <> vbNullString) Or (var_F8 <> vbNullString)) Or (var_FC <> vbNullString)) Or (var_100 <> vbNullString)) 'do at: 1E660EA
  loc_1E760E4: Print 1
  loc_1E76113: var_1D0 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1E76156: var_314 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1E76180: var_210 = (Chr(&HF) + Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))))
  loc_1E76187: var_290 = (CVar(var_B4.Fields.Item("NCKOT")) + Trim(CVar(Me.LblRest)))
  loc_1E7618E: var_370 = (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") + Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2))))
  loc_1E76195: var_390 = (IIf(IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"), "Void", vbNullString) + Chr(&H12))
  loc_1E7619B: Print 1, vbNullString
  loc_1E761E9: var_1B8 = (40 - Len(Trim(var_90)))
  loc_1E7621C: var_290 = (40 - Len(Trim(var_90)))
  loc_1E76246: var_200 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1E76250: var_210 = (Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))) + CVar(var_90))
  loc_1E76257: var_304 = (CVar(var_B4.Fields.Item("NCKOT")) + Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))))
  loc_1E7625E: var_324 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1E76264: Print 1, (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2)
  loc_1E762AF: var_1B8 = (39 - Len(Trim(var_11C)))
  loc_1E762DE: var_260 = Len(Trim(var_11C))
  loc_1E762E2: var_270 = (39 - var_260)
  loc_1E7630D: var_200 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(var_11C))
  loc_1E76314: var_2E4 = (Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))) + Space(CLng((Len(Trim(var_90)) / 2))))
  loc_1E76327: var_314 = IIf((var_11C <> vbNullString), Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))), vbNullString)
  loc_1E7633F: var_324 = (Chr(&H12) + var_314)
  loc_1E76346: var_370 = ((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2) + Chr(&H12))
  loc_1E7634C: Print 1, IIf(var_314, "Void", vbNullString)
  loc_1E763A8: Loop Until (Proc_6_38_E69628(CVar(var_B4.Fields.Item("CardNo")), &H12) <> vbNullString) 'do at: 1E66446
  loc_1E7640C: var_174 = (Chr(&HF) + "Membership No.: ")
  loc_1E76416: var_1D0 = (Trim(var_11C) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CardNo"))), &H1A)))
  loc_1E7641D: var_200 = ((Len(Trim(CVar(Me.LblRest))) / 2) + Chr(&H12))
  loc_1E76423: Print 1, Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2)))
  loc_1E7647F: Loop Until (Proc_6_38_E69628(CVar(var_B4.Fields.Item("MemName"))) <> vbNullString) 'do at: 1E6651D
  loc_1E764E3: var_174 = (Chr(&HF) + "Member : ")
  loc_1E764EA: var_1B8 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("MemName"))), &H21)) 'String
  loc_1E764ED: var_1D0 = (Trim(var_11C) + var_1B8)
  loc_1E764F4: var_200 = ((Len(Trim(CVar(Me.LblRest))) / 2) + Chr(&H12))
  loc_1E764FA: Print 1, Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2)))
  loc_1E76550: Proc_6_39_E7D3A0(var_1B8, CVar(var_B4.Fields.Item("VNo")))
  loc_1E765BB: Proc_6_39_E7D3A0(var_260, CVar(var_B4.Fields.Item("TokenNo")))
  loc_1E765FF: var_2B4 = IIf((Proc_6_38_E69628(CVar(var_C8.Fields.Item("AutoResetToken"))) = "Yes"), CVar(" TOKEN No. : " & Proc_6_45_EADFB8(CStr(var_260), 5)), vbNullString)
  loc_1E76619: var_174 = (Chr(&HF) + "KOT No.   : ")
  loc_1E76623: var_1E0 = (Trim(var_11C) + CVar(Proc_6_45_EADFB8(CStr(var_1B8), &HC)))
  loc_1E7662A: var_2E4 = (Chr(&H12) + var_2B4)
  loc_1E76631: var_314 = (Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))) + Chr(&H12))
  loc_1E76637: Print 1, var_314
  loc_1E7670D: var_324 = Chr(&H12)
  loc_1E7671A: var_174 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E76724: var_1D0 = (Trim(var_11C) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))), &HC)))
  loc_1E7672D: var_1E0 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))), &HC))), &HC)) + " ")
  loc_1E76737: var_260 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 6)))
  loc_1E76740: var_270 = (var_260 + "KOT : ")
  loc_1E76749: var_290 = CVar(CStr(var_110)) 'String
  loc_1E7674C: var_2B4 = (CVar(" TOKEN No. : " & Proc_6_45_EADFB8(CStr(var_260), 5)) + var_290)
  loc_1E76755: var_2E4 = (var_2B4 + "/")
  loc_1E76761: var_314 = (Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))) + CVar(CStr(var_10E)))
  loc_1E76768: var_334 = (var_314 + var_324)
  loc_1E7676E: Print 1, Chr(&H12)
  loc_1E767F9: Loop Until CBool(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))))) <> vbNullString) 'do at: 1E66897
  loc_1E76820: var_1A4 = var_B4.Fields.Item("Remarks")
  loc_1E7685D: var_174 = (Chr(&HF) + "Remarks : ")
  loc_1E76867: var_1D0 = (CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks")))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1A4)), &H20)))
  loc_1E7686E: var_200 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_1A4)), &H20))), &HC)) + Chr(&H12))
  loc_1E76874: Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E768AD: Set var_19C = Me.Label1
  loc_1E768B3: Call 0.Method_Proc_30_89_1E77CAC0 (2, var_1A4)
  loc_1E768D9: var_224 = Proc_6_45_EADFB8(CStr(Trim(CVar(var_1A4))), &HA)
  loc_1E76941: Proc_6_39_E7D3A0(var_290, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E76962: var_358 = var_B4.Fields
  loc_1E76979: Proc_6_39_E7D3A0(var_324, CVar(var_358.Item("GuarAtt")))
  loc_1E769A7: var_304 = (Space(&HA) + "Covers: ")
  loc_1E769B1: var_370 = (CVar(CStr(var_10E)) + CVar(Proc_6_45_EADFB8(CStr(var_324), 7)))
  loc_1E769E7: var_1D0 = (Chr(&HF) + CVar(var_224))
  loc_1E769F0: var_1E0 = (CVar(Proc_6_45_EADFB8(CStr(CVar(var_224)), &HC)) + ": ")
  loc_1E769FA: var_260 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1E76A01: var_3B0 = (var_260 + IIf((var_290 <> 0), IIf(CVar(var_358.Item("GuarAtt")), "Void", vbNullString), vbNullString))
  loc_1E76A08: var_3F0 = ("Void" + Chr(&H12))
  loc_1E76A0E: Print 1, IIf((var_358.Item("Cancel").Value = "Y"), "Void", vbNullString)
  loc_1E76A86: var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E76A8D: var_1B8 = (CVar(var_1A4) + Chr(&H12))
  loc_1E76A93: Print 1, CVar(var_224)
  loc_1E76ACA: var_198 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H1D)) + Space(1))
  loc_1E76AE4: var_1D0 = (Chr(&H12) + CVar(Proc_6_52_EAE084("Qty", 7)))
  loc_1E76B23: var_174 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 7))), &HC)))))
  loc_1E76B2A: var_1B8 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H1D)) + Chr(&H12))
  loc_1E76B30: Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E76B64: var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E76B6B: var_1B8 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H1D)) + Chr(&H12))
  loc_1E76B71: Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E76B88: var_92 = (var_92 + 4)
  loc_1E76B8E: var_B8.MoveFirst
  loc_1E76BA2: Loop Until Not(var_B8.EOF) 'do at: 1E66EE6
  loc_1E76C1B: Loop Until (&H12 And ((Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), &H12) = "Yes") <> Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")), var_108))) 'do at: 1E66C97
  loc_1E76C64: var_174 = (Chr(&HF) + "*")
  loc_1E76C6E: var_198 = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Kitchen")))))
  loc_1E76C77: var_1B8 = (Chr(&H12) + "*")
  loc_1E76C7D: Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E76C94: var_92 = (var_92 + 1)
  loc_1E76CE4: Proc_6_39_E7D3A0(Chr(&H12), CVar(var_B8.Fields.Item("qty")))
  loc_1E76D67: var_1B8 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H1D)) + Space(1))
  loc_1E76D80: var_210 = (CVar(Proc_6_52_EAE084("Qty", 7)) + CVar(Proc_6_52_EAE084(CStr(Chr(&H12)), 7)))
  loc_1E76D96: var_314 = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1E76D99: var_324 = (CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))), 5)) + var_314)
  loc_1E76DFB: var_174 = (Chr(&HF) + CVar(CStr(var_324)))
  loc_1E76E02: var_1B8 = (Space(1) + Chr(&H12))
  loc_1E76E08: Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1E76E1F: var_92 = (var_92 + 1)
  loc_1E76E5B: Loop Until (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) 'do at: 1E66EDB
  loc_1E76E9E: var_174 = (Chr(&HF) + "(")
  loc_1E76EA8: var_1D0 = (Space(1) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1E76EB1: var_1E0 = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E76EB7: Print 1, Chr(&H12)
  loc_1E76ED8: var_92 = (var_92 + 1)
  loc_1E76EDE: var_B8.MoveNext
  loc_1E76EE3: GoTo loc_1E66B93
  loc_1E76F09: var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E76F10: var_1B8 = (Space(1) + Chr(&H12))
  loc_1E76F16: Print 1, CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description"))))
  loc_1E76F88: var_174 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E76F92: var_1D0 = (Space(1) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1E76F99: var_200 = (CVar(var_B8.Fields.Item("qty")) + Chr(&H12))
  loc_1E76F9F: Print 1, CVar(Proc_6_52_EAE084(CStr(Chr(&H12)), 7))
  loc_1E76FF4: var_174 = (Chr(&HF) + "***  ")
  loc_1E77007: var_1E0 = ("  ***" + Chr(&H12))
  loc_1E77011: Print 1, Space(1) & Trim(var_CC) & Chr(&H12)
  loc_1E77061: Loop Until (Proc_6_38_E69628(CVar(var_134.Fields.Item("Split"))) = "Yes") 'do at: 1E67197
  loc_1E77078: var_174 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E770CC: var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E770E2: var_1BC = var_BC.Fields
  loc_1E77143: var_304 = var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E77151: unk_5890AB.Execute CStr(var_304), var_314, -1
  loc_1E7715C: Set var_E0 = var_358
  loc_1E77194: GoTo loc_1E67233
  loc_1E771DF: var_198 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" 
  loc_1E77208: unk_5890AB.Execute CStr(var_198 & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')"), var_200, -1
  loc_1E7726F: Loop Until (var_1BC.Fields.Item(0).Value > 1) 'do at: 1E672C0
  loc_1E772A0: Call Proc_30_103_EFA714(Proc_6_45_EADFB8("Changed KOT", &H14, var_1BC), "D", &H28)
  loc_1E772AA: Print 1, var_224
  loc_1E772BD: GoTo loc_1E67552
  loc_1E772F9: Loop Until (Proc_6_38_E69628(CVar(var_134.Fields.Item("Split")), var_224) = "Yes") 'do at: 1E6742F
  loc_1E77310: var_174 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E77364: var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E7737A: var_1BC = var_BC.Fields
  loc_1E773DB: var_304 = var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'" 
  loc_1E773E9: unk_5890AB.Execute CStr(var_304), var_314, -1
  loc_1E773F4: Set var_E0 = var_358
  loc_1E7742C: GoTo loc_1E674CB
  loc_1E77489: var_1D0 = "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source 
  loc_1E774A0: unk_5890AB.Execute CStr(var_1D0 & ")Q)"), var_200, -1
  loc_1E77504: Loop Until (Proc_6_38_E69628(CVar(var_1BC.Fields.Item(0)), var_1BC, var_358) = "Y") 'do at: 1E67552
  loc_1E77535: Call Proc_30_103_EFA714(Proc_6_45_EADFB8("DUPLICATE KOT", &H14), "D", &H28)
  loc_1E7753F: Print 1, var_224
  loc_1E77557: Set var_E0 = Nothing
  loc_1E7755D: var_B4.MoveNext
  loc_1E77564: Print 1
  loc_1E7757F: var_174 = (Chr(&HF) + "** ")
  loc_1E77589: var_198 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1E77592: var_1B8 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" + " **")
  loc_1E77598: Print 1, var_B8.Source
  loc_1E775AB: Print 1
  loc_1E775B3: Print 1
  loc_1E775D9: var_198 = (Chr(&H1B) + Chr(&H6D))
  loc_1E775DF: Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From ("
  loc_1E775EE: GoTo loc_1E65D6D
  loc_1E775F3: Close 1
  loc_1E7764D: var_1A8 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType")), var_224) = "Default"))
  loc_1E7766B: Loop Until (var_358 And (var_1A8 <> vbNullString)) 'do at: 1E67747
  loc_1E776AA: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E7771D: var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E77723: Print 1, var_198
  loc_1E77744: GoTo loc_1E6793C
  loc_1E7779F: var_1A8 = Proc_6_38_E69628(CVar(var_134.Fields.Item("Printer")), (Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) <> "Default"))
  loc_1E777BD: Loop Until (&H12 And (var_1A8 <> vbNullString)) 'do at: 1E67899
  loc_1E777FC: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E7786F: var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E77875: Print 1, var_198
  loc_1E77896: GoTo loc_1E6793C
  loc_1E778D5: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E77927: Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1E7793E: Close 1
  loc_1E77948: Loop Until (MemVar_1F953BC = "Y") 'do at: 1E679A6
  loc_1E7798D: var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E77991: var_A4 = var_144 'Variant
  loc_1E779A3: GoTo loc_1E67A4B
  loc_1E779E0: For var_41C = 1 To CInt(var_134.Fields.Item("NoOfKot").Value): var_EE = var_41C 'Integer
  loc_1E77A28:   var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E77A2C:   var_A4 = var_144 'Variant
  loc_1E77A40:   var_12E = &HFF
  loc_1E77A46: Next var_41C 'Integer
  loc_1E77A8B: Loop Until ((Proc_6_38_E69628(CVar(var_134.Fields.Item("PrintType"))) = "Default") And (var_12E = &HFF)) 'do at: 1E67C5F
  loc_1E77AC7: Loop Until (Proc_6_38_E69628(CVar(var_134.Fields.Item("Split"))) = "Yes") 'do at: 1E67BED
  loc_1E77AD7: var_164 = "UPDATE KOT SET PRINTED='Y' From (KOT K Left Join ItemMast I on K.Item=I.Code) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where K.DocID='"
  loc_1E77B1C: var_1B8 = var_B8.Source
  loc_1E77B43: var_1BC = var_BC.Fields
  loc_1E77B5B: var_210 = var_164 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_1B8 & ")Q) AND Depart.Code='" & var_1BC.Item("Code").Value 
  loc_1E77BB2: unk_5890AB.Execute CStr(var_210 & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_304, -1
  loc_1E77BEA: GoTo loc_1E67C5F
  loc_1E77C43: unk_5890AB.Execute CStr("UPDATE KOT SET PRINTED='Y' WHERE DOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_1B8, -1
  loc_1E77C62: var_BC.MoveNext
  loc_1E77C67: GoTo loc_1E6DE40
  loc_1E77C6D: var_134.MoveNext
  loc_1E77C72: GoTo loc_1E6DAE6
  loc_1E77C7A: Set var_B4 = Nothing
  loc_1E77C82: Set var_B8 = Nothing
  loc_1E77C8A: Set var_BC = Nothing
  loc_1E77C92: Set var_D4 = Nothing
  loc_1E77C9A: Set var_C8 = Nothing
  loc_1E77CA2: Set var_134 = Nothing
  loc_1E77CA5: Exit Sub
  loc_1E77CA6: Proc_6_60_E63754(var_1BC)
  loc_1E77CAB: Exit Sub
End Sub

Public Sub Proc_30_90_E41594
  'Data Table: 58908C
  loc_E41570: Set var_88 = Me.TopCtrl1
  loc_E41576: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E4158F: If (CStr() = "Browse") Then
  loc_E41592:   Exit Sub
  loc_E41593: End If
  loc_E41593: Exit Sub
End Sub

Public Sub Proc_30_91_18485CC(arg_C) '18485CC
  'Data Table: 58908C
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_C0 As String
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_17C As String
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Integer
  Dim var_1EC As String
  Dim var_1F4 As Double
  Dim var_208 As Variant
  Dim var_20C As MSHFlexGrid
  Dim var_94 As Double
  Dim var_88 As Integer
  Dim var_218 As Double
  Dim var_8A As Integer
  loc_18460D8: If (arg_C = 0) Then
  loc_18460EE:   var_B0 = CLng(Me.FGrid.Col)
  loc_18460FE:   If (var_B0 = CLng(2)) Then
  loc_184614F:     Set var_9C = Me.TxtGrid
  loc_1846155:     Call 0.Method_Proc_30_91_18485CC0 (arg_C, var_BC, var_C0)
  loc_184615D:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_BC.Text
  loc_1846175:     If (var_B0 Or (var_C0 = vbNullString)) Then
  loc_184618B:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846193:       var_F0 = CVar(CLng(2)) 'Long
  loc_1846198:       var_110 = vbNullString
  loc_18461A2:       Set var_BC = Me.FGrid
  loc_18461A8:       LateIdCallSt
  loc_18461CD:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18461D5:       var_F0 = CVar(CLng(1)) 'Long
  loc_18461DA:       var_110 = vbNullString
  loc_18461E4:       Set var_BC = Me.FGrid
  loc_18461EA:       LateIdCallSt
  loc_18461FF:     Else
  loc_1846218:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846220:       var_F0 = CVar(CLng(1)) 'Long
  loc_184623A:       var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1846258:       var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846260:       var_154 = CVar(CLng(1)) 'Long
  loc_184626F:       var_178 = Me.FGrid.TextMatrix)
  loc_184627A:       var_17C = CStr(var_178)
  loc_18462E5:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_18462FB:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846303:         var_100 = CVar(CLng(2)) 'Long
  loc_1846336:         var_144 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_184633E:         Set var_168 = Me.FGrid
  loc_1846344:         LateIdCallSt
  loc_1846373:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184637B:         var_100 = CVar(CLng(1)) 'Long
  loc_18463A5:         var_130 = Me.Fields.Item("Code").Value
  loc_18463AE:         var_144 = CVar(CStr(var_130)) 'String
  loc_18463B6:         Set var_168 = Me.FGrid
  loc_18463BC:         LateIdCallSt
  loc_184640C:         global_72 = CStr(Me.Fields.Item("Name").Value)
  loc_184644B:         var_C0 = CStr(Me.Fields.Item("Code").Value)
  loc_1846451:         global_76 = var_C0
  loc_1846475:         var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184647D:         var_F0 = CVar(CLng(4)) 'Long
  loc_1846482:         var_110 = vbNullString
  loc_184648C:         Set var_BC = Me.FGrid
  loc_1846492:         LateIdCallSt
  loc_18464B7:         var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18464BF:         var_F0 = CVar(CLng(&HA)) 'Long
  loc_18464C4:         var_110 = vbNullString
  loc_18464CE:         Set var_BC = Me.FGrid
  loc_18464D4:         LateIdCallSt
  loc_18464F9:         var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846501:         var_F0 = CVar(CLng(3)) 'Long
  loc_1846506:         var_110 = vbNullString
  loc_1846510:         Set var_BC = Me.FGrid
  loc_1846516:         LateIdCallSt
  loc_1846528:       End If
  loc_1846528:     End If
  loc_184652B:   Else
  loc_1846532:     If (var_B0 = CLng(3)) Then
  loc_1846541:       Set var_9C = Me.TxtGrid
  loc_1846547:       Call 0.Method_Proc_30_91_18485CC0 (0, var_BC, var_C0, var_BC, var_110, var_F0, var_D0)
  loc_184654F:       var_BC = var_BC.Text
  loc_1846572:       If ((var_C0 = "9999") And (global_168 <> "No")) Then
  loc_184657F:         Set global_164 = New RsSpecItemEntry
  loc_1846595:         RsSpecItemEntry.PKOTForm = Me
  loc_18465A1:         Set var_9C = var_F0(var_110)
  loc_18465B0:         var_D0 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_18465DB:         RsSpecItemEntry.pRestCode = CStr(TxtGrid.DispID_41)
  loc_18465F5:         Set var_9C = var_D0(CVar(CLng(1)))(var_D0)
  loc_1846615:         Set var_BC = CVar(CLng(TxtGrid.DispID_A))(CVar(CLng(1)))
  loc_184662D:         var_120 = 0
  loc_184664A:         var_C0 = CStr(var_130)
  loc_184665E:         RsSpecItemEntry.Connection15.Execute "SELECT IsNull(Max(Name),'') FROM Depart Where Code='" & var_C0 & "'", var_144, -1
  loc_1846666:         var_134 = var_134.Fields
  loc_184666E:         var_120 = var_168.Item(var_168)
  loc_1846676:         var_180 = var_180.Value
  loc_184667E:         var_1EC = CStr(var_178)
  loc_1846688:         RsSpecItemEntry.PRestName = var_1EC
  loc_18466C3:         Call 0.Method_arg_2B0 (1, var_E0, var_178)
  loc_18466CB:       Else
  loc_18466E2:         If (Me.RecordCount > 0) Then
  loc_18466EB:           Me.MoveFirst
  loc_18466F0:         End If
  loc_1846707:         If (Me.RecordCount > 0) Then
  loc_1846716:           Set var_9C = Me.TxtGrid
  loc_184671C:           Call 0.Method_Proc_30_91_18485CC0 (0, var_BC, var_C0)
  loc_1846724:           TxtGrid.DispID_41 = var_BC.Text
  loc_1846731:           var_1F4 = Val(var_C0)
  loc_1846757:           Me.Find "DispCode=" & CStr(var_1F4), 0, 1
  loc_184676C:         End If
  loc_18467BA:         Set var_9C = Me.TxtGrid
  loc_18467C0:         Call 0.Method_Proc_30_91_18485CC0 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_18467C8:         var_D0 = var_BC.Text
  loc_18467E0:         If (var_1F4 Or (var_C0 = vbNullString)) Then
  loc_18467F6:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18467FE:           var_F0 = CVar(CLng(4)) 'Long
  loc_1846803:           var_110 = vbNullString
  loc_184680D:           Set var_BC = Me.FGrid
  loc_1846813:           LateIdCallSt
  loc_1846838:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846840:           var_F0 = CVar(CLng(&HA)) 'Long
  loc_1846845:           var_110 = vbNullString
  loc_184684F:           Set var_BC = Me.FGrid
  loc_1846855:           LateIdCallSt
  loc_184687A:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846882:           var_F0 = CVar(CLng(3)) 'Long
  loc_1846887:           var_110 = vbNullString
  loc_1846891:           Set var_BC = Me.FGrid
  loc_1846897:           LateIdCallSt
  loc_18468BC:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18468C4:           var_F0 = CVar(CLng(5)) 'Long
  loc_18468C9:           var_110 = vbNullString
  loc_18468D3:           Set var_BC = Me.FGrid
  loc_18468D9:           LateIdCallSt
  loc_18468FE:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846906:           var_F0 = CVar(CLng(8)) 'Long
  loc_184690B:           var_110 = vbNullString
  loc_1846915:           Set var_BC = Me.FGrid
  loc_184691B:           LateIdCallSt
  loc_1846940:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846948:           var_F0 = CVar(CLng(&HD)) 'Long
  loc_184694D:           var_110 = vbNullString
  loc_1846957:           Set var_BC = Me.FGrid
  loc_184695D:           LateIdCallSt
  loc_1846972:         Else
  loc_184698B:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846993:           var_F0 = CVar(CLng(&HA)) 'Long
  loc_18469AD:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_18469CB:           var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18469D3:           var_154 = CVar(CLng(&HA)) 'Long
  loc_18469ED:           var_17C = CStr(Me.FGrid.TextMatrix))
  loc_1846A58:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1846AB5:             If CBool((Me.Fields.Item("MultiBillGeneration").Value = "Yes") And (global_232 = "Yes")) Then
  loc_1846ACB:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846AD3:               var_100 = CVar(CLng(2)) 'Long
  loc_1846B06:               var_144 = CVar(CStr(Me.Fields.Item("ShortName").Value)) 'String
  loc_1846B0E:               Set var_168 = Me.FGrid
  loc_1846B14:               LateIdCallSt
  loc_1846B43:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846B4B:               var_100 = CVar(CLng(1)) 'Long
  loc_1846B7E:               var_144 = CVar(CStr(Me.Fields.Item("OutletCode").Value)) 'String
  loc_1846B86:               Set var_168 = Me.FGrid
  loc_1846B8C:               LateIdCallSt
  loc_1846BDC:               global_72 = CStr(Me.Fields.Item("ShortName").Value)
  loc_1846C21:               global_76 = CStr(Me.Fields.Item("OutletCode").Value)
  loc_1846C32:             End If
  loc_1846C45:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846C4D:             var_100 = CVar(CLng(4)) 'Long
  loc_1846C80:             var_144 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1846C88:             Set var_168 = Me.FGrid
  loc_1846C8E:             LateIdCallSt
  loc_1846CBD:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846CC5:             var_100 = CVar(CLng(&HA)) 'Long
  loc_1846CF8:             var_144 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1846D00:             Set var_168 = Me.FGrid
  loc_1846D06:             LateIdCallSt
  loc_1846D35:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846D3D:             var_100 = CVar(CLng(3)) 'Long
  loc_1846D70:             var_144 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1846D78:             Set var_168 = Me.FGrid
  loc_1846D7E:             LateIdCallSt
  loc_1846DAD:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846DB5:             var_100 = CVar(CLng(5)) 'Long
  loc_1846DE8:             var_144 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1846DF6:             LateIdCallSt
  loc_1846E5D:             var_144 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("PriceType")), CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_144, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1846E6B:             LateIdCallSt
  loc_1846ED0:             var_144 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_144, Me.FGrid)) 'String
  loc_1846ED8:             Set var_168 = Me.FGrid
  loc_1846EDE:             LateIdCallSt
  loc_1846F30:             Set var_134 = Me.Txt
  loc_1846F36:             Call 0.Method_Proc_30_91_18485CC0 (CInt(1), var_168, var_17C, var_168, var_144)
  loc_1846F3E:             var_144 = var_168.Text
  loc_1846F60:             var_1D4 = Me.Fields.Item("OutletCode")
  loc_1846F87:             Call Proc_30_105_F22F70(CStr(Me.Fields.Item("Code").Value), var_17C, CStr(var_1D4.Value), var_1F4)
  loc_1846F9F:             var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1846FA7:             var_154 = CVar(CLng(8)) 'Long
  loc_1846FD4:             var_208 = CVar(CStr(Format(CVar(var_1F4), "0.00"))) 'String
  loc_1846FDC:             Set var_20C = Me.FGrid
  loc_1846FE2:             LateIdCallSt
  loc_184702A:             var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847032:             var_F0 = CVar(CLng(&HA)) 'Long
  loc_1847041:             var_130 = Me.FGrid.TextMatrix)
  loc_1847077:             var_178 = Me.FGrid.TextMatrix)
  loc_1847091:             Set var_180 = Me.Txt
  loc_1847097:             Call 0.Method_Proc_30_91_18485CC0 (CInt(1), var_1D4, var_1EC, var_178, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_130)
  loc_184709F:             var_F0 = var_1D4.Text
  loc_18470B7:             var_1A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847105:             Call Proc_30_93_1285F60(CStr(var_130), CStr(var_178), var_1EC, Val(CStr(Me.FGrid.TextMatrix))), var_218, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)))
  loc_184710D:             var_94 = var_218
  loc_1847144:             If (var_94 <> CDbl(0)) Then
  loc_184715A:               var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847162:               var_110 = CVar(CLng(8)) 'Long
  loc_1847190:               var_178 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_1847198:               Set var_BC = Me.FGrid
  loc_184719E:               LateIdCallSt
  loc_18471B8:             End If
  loc_18471CC:             var_88 = CInt(CLng(Me.FGrid.Row))
  loc_18471D9:             var_D0 = CVar(CLng(var_88)) 'Long
  loc_18471E1:             var_F0 = CVar(CLng(0)) 'Long
  loc_18471EB:             var_AC = CVar(CStr(var_88)) 'String
  loc_18471F3:             Set var_9C = Me.FGrid
  loc_18471F9:             LateIdCallSt
  loc_184720B:             var_D0 = CVar(CLng(var_88)) 'Long
  loc_1847213:             var_F0 = CVar(CLng(&HD)) 'Long
  loc_1847243:             If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_184724A:               var_D0 = CVar(CLng(var_88)) 'Long
  loc_1847252:               var_F0 = CVar(CLng(7)) 'Long
  loc_1847282:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1847289:                 var_D0 = CVar(CLng(var_88)) 'Long
  loc_1847291:                 var_F0 = CVar(CLng(7)) 'Long
  loc_1847296:                 var_110 = "1.0"
  loc_18472A0:                 Set var_9C = Me.FGrid
  loc_18472A6:                 LateIdCallSt
  loc_18472B1:               End If
  loc_18472B4:             Else
  loc_18472B8:               var_D0 = CVar(CLng(var_88)) 'Long
  loc_18472C0:               var_F0 = CVar(CLng(7)) 'Long
  loc_18472F0:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_18472F7:                 var_D0 = CVar(CLng(var_88)) 'Long
  loc_18472FF:                 var_F0 = CVar(CLng(7)) 'Long
  loc_1847304:                 var_110 = "1"
  loc_184730E:                 Set var_9C = Me.FGrid
  loc_1847314:                 LateIdCallSt
  loc_184731F:               End If
  loc_184731F:             End If
  loc_184731F:           End If
  loc_184731F:         End If
  loc_184731F:       End If
  loc_1847332:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184733A:       var_F0 = CVar(CLng(&HA)) 'Long
  loc_1847343:       Set var_BC = Me.FGrid
  loc_1847349:       var_130 = var_BC.TextMatrix)
  loc_1847368:       var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847370:       var_154 = CVar(CLng(7)) 'Long
  loc_184738A:       var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1847392:       var_218 = Val(var_C0)
  loc_18473F0:       var_8A = Proc_96_26_129C83C(CStr(var_130), var_218, MemVar_1F95070, CStr(Me.FGrid.TextMatrix)), global_172, Me.FGrid.TextMatrix), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_184742A:       Me.LblCurStockStr.Caption = global_172
  loc_1847435:     Else
  loc_184743C:       If (var_B0 = CLng(4)) Then
  loc_184748D:         Set var_9C = Me.TxtGrid
  loc_1847493:         Call 0.Method_Proc_30_91_18485CC0 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_8A, var_218, var_154)
  loc_184749B:         var_110 = var_BC.Text
  loc_18474B3:         If (var_130 Or (var_C0 = vbNullString)) Then
  loc_18474C9:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18474D1:           var_F0 = CVar(CLng(4)) 'Long
  loc_18474D6:           var_110 = vbNullString
  loc_18474E0:           Set var_BC = Me.FGrid
  loc_18474E6:           LateIdCallSt
  loc_184750B:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847513:           var_F0 = CVar(CLng(&HA)) 'Long
  loc_1847518:           var_110 = vbNullString
  loc_1847522:           Set var_BC = Me.FGrid
  loc_1847528:           LateIdCallSt
  loc_184754D:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847555:           var_F0 = CVar(CLng(3)) 'Long
  loc_184755A:           var_110 = vbNullString
  loc_1847564:           Set var_BC = Me.FGrid
  loc_184756A:           LateIdCallSt
  loc_184758F:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847597:           var_F0 = CVar(CLng(5)) 'Long
  loc_184759C:           var_110 = vbNullString
  loc_18475A6:           Set var_BC = Me.FGrid
  loc_18475AC:           LateIdCallSt
  loc_18475D1:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18475D9:           var_F0 = CVar(CLng(8)) 'Long
  loc_18475DE:           var_110 = vbNullString
  loc_18475E8:           Set var_BC = Me.FGrid
  loc_18475EE:           LateIdCallSt
  loc_1847613:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184761B:           var_F0 = CVar(CLng(&HD)) 'Long
  loc_1847620:           var_110 = vbNullString
  loc_184762A:           Set var_BC = Me.FGrid
  loc_1847630:           LateIdCallSt
  loc_1847645:         Else
  loc_184765E:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847666:           var_F0 = CVar(CLng(&HA)) 'Long
  loc_1847680:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_184769E:           var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18476A6:           var_154 = CVar(CLng(&HA)) 'Long
  loc_18476C0:           var_17C = CStr(Me.FGrid.TextMatrix))
  loc_184772B:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1847788:             If CBool((Me.Fields.Item("MultiBillGeneration").Value = "Yes") And (global_232 = "Yes")) Then
  loc_184779E:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18477A6:               var_100 = CVar(CLng(2)) 'Long
  loc_18477D9:               var_144 = CVar(CStr(Me.Fields.Item("ShortName").Value)) 'String
  loc_18477E1:               Set var_168 = Me.FGrid
  loc_18477E7:               LateIdCallSt
  loc_1847816:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184781E:               var_100 = CVar(CLng(1)) 'Long
  loc_1847851:               var_144 = CVar(CStr(Me.Fields.Item("OutletCode").Value)) 'String
  loc_1847859:               Set var_168 = Me.FGrid
  loc_184785F:               LateIdCallSt
  loc_18478AF:               global_72 = CStr(Me.Fields.Item("ShortName").Value)
  loc_18478F4:               global_76 = CStr(Me.Fields.Item("OutletCode").Value)
  loc_1847905:             End If
  loc_1847919:             var_88 = CInt(CLng(Me.FGrid.Row))
  loc_1847935:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184793D:             var_100 = CVar(CLng(4)) 'Long
  loc_1847970:             var_144 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1847978:             Set var_168 = Me.FGrid
  loc_184797E:             LateIdCallSt
  loc_18479AD:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18479B5:             var_100 = CVar(CLng(&HA)) 'Long
  loc_18479E8:             var_144 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_18479F0:             Set var_168 = Me.FGrid
  loc_18479F6:             LateIdCallSt
  loc_1847A25:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847A2D:             var_100 = CVar(CLng(3)) 'Long
  loc_1847A60:             var_144 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1847A68:             Set var_168 = Me.FGrid
  loc_1847A6E:             LateIdCallSt
  loc_1847A9D:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847AA5:             var_100 = CVar(CLng(5)) 'Long
  loc_1847AD8:             var_144 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1847AE6:             LateIdCallSt
  loc_1847B4D:             var_144 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("PriceType")), CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_144, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1847B5B:             LateIdCallSt
  loc_1847BC0:             var_144 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_144, Me.FGrid)) 'String
  loc_1847BCE:             LateIdCallSt
  loc_1847BEC:             var_D0 = CVar(CLng(var_88)) 'Long
  loc_1847BFE:             var_AC = CVar(CStr(var_88)) 'String
  loc_1847C06:             Set var_9C = Me.FGrid
  loc_1847C0C:             LateIdCallSt
  loc_1847C20:             var_D0 = "Code"
  loc_1847C2F:             var_9C = Me.Fields
  loc_1847C3F:             var_AC = var_9C.Item(var_D0).Value
  loc_1847C52:             Set var_134 = Me.Txt
  loc_1847C58:             Call 0.Method_Proc_30_91_18485CC0 (CInt(1), Me.FGrid, var_17C, var_9C, var_AC, CVar(CLng(0)), var_D0)
  loc_1847C60:             var_168 = var_168.Text
  loc_1847C82:             var_1D4 = Me.Fields.Item("OutletCode")
  loc_1847CA9:             Call Proc_30_105_F22F70(CStr(var_AC), var_17C, CStr(var_1D4.Value), var_1F4, var_144)
  loc_1847CC1:             var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847CC9:             var_154 = CVar(CLng(8)) 'Long
  loc_1847CF6:             var_208 = CVar(CStr(Format(CVar(var_1F4), "0.00"))) 'String
  loc_1847CFE:             Set var_20C = Me.FGrid
  loc_1847D04:             LateIdCallSt
  loc_1847D4C:             var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847D54:             var_F0 = CVar(CLng(&HA)) 'Long
  loc_1847D63:             var_130 = Me.FGrid.TextMatrix)
  loc_1847D99:             var_178 = Me.FGrid.TextMatrix)
  loc_1847DB3:             Set var_180 = Me.Txt
  loc_1847DB9:             Call 0.Method_Proc_30_91_18485CC0 (CInt(1), var_1D4, var_1EC, var_178, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_130)
  loc_1847DC1:             var_F0 = var_1D4.Text
  loc_1847DD9:             var_1A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847E27:             Call Proc_30_93_1285F60(CStr(var_130), CStr(var_178), var_1EC, Val(CStr(Me.FGrid.TextMatrix))), var_218, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)))
  loc_1847E2F:             var_94 = var_218
  loc_1847E66:             If (var_94 <> CDbl(0)) Then
  loc_1847E7C:               var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847E84:               var_110 = CVar(CLng(8)) 'Long
  loc_1847EB2:               var_178 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_1847EBA:               Set var_BC = Me.FGrid
  loc_1847EC0:               LateIdCallSt
  loc_1847EDA:             End If
  loc_1847EDE:             var_D0 = CVar(CLng(var_88)) 'Long
  loc_1847EE6:             var_F0 = CVar(CLng(&HD)) 'Long
  loc_1847F16:             If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1847F1D:               var_D0 = CVar(CLng(var_88)) 'Long
  loc_1847F25:               var_F0 = CVar(CLng(7)) 'Long
  loc_1847F55:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1847F5C:                 var_D0 = CVar(CLng(var_88)) 'Long
  loc_1847F64:                 var_F0 = CVar(CLng(7)) 'Long
  loc_1847F69:                 var_110 = "1.0"
  loc_1847F73:                 Set var_9C = Me.FGrid
  loc_1847F79:                 LateIdCallSt
  loc_1847F84:               End If
  loc_1847F87:             Else
  loc_1847F8B:               var_D0 = CVar(CLng(var_88)) 'Long
  loc_1847F93:               var_F0 = CVar(CLng(7)) 'Long
  loc_1847FC3:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1847FCA:                 var_D0 = CVar(CLng(var_88)) 'Long
  loc_1847FD2:                 var_F0 = CVar(CLng(7)) 'Long
  loc_1847FD7:                 var_110 = "1"
  loc_1847FE1:                 Set var_9C = Me.FGrid
  loc_1847FE7:                 LateIdCallSt
  loc_1847FF2:               End If
  loc_1847FF2:             End If
  loc_1847FF2:           End If
  loc_1847FF2:         End If
  loc_1848005:         var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184800D:         var_F0 = CVar(CLng(&HA)) 'Long
  loc_1848032:         var_144 = Me.FGrid.Row
  loc_184803B:         var_110 = CVar(CLng(var_144)) 'Long
  loc_1848043:         var_154 = CVar(CLng(7)) 'Long
  loc_184804C:         Set var_168 = Me.FGrid
  loc_1848052:         var_178 = var_168.TextMatrix)
  loc_1848065:         var_218 = Val(CStr(var_178))
  loc_18480C3:         var_8A = Proc_96_26_129C83C(CStr(Me.FGrid.TextMatrix)), var_218, MemVar_1F95070, CStr(Me.FGrid.TextMatrix)), global_172, Me.FGrid.TextMatrix), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_18480FD:         Me.LblCurStockStr.Caption = global_172
  loc_1848108:       Else
  loc_184810F:         If (var_B0 = CLng(7)) Then
  loc_1848125:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184812D:           var_F0 = CVar(CLng(&HB)) 'Long
  loc_1848136:           Set var_BC = Me.FGrid
  loc_184813C:           var_130 = var_BC.TextMatrix)
  loc_1848147:           var_C0 = CStr(var_130)
  loc_1848165:           If (CDbl(Val(var_C0)) > CDbl(0)) Then
  loc_1848176:             var_D0 = "Free Qty Can't Edit "
  loc_1848181:             MsgBox(var_D0, 0, var_130, var_144, var_178)
  loc_1848191:             Proc_30_91_18485CC = var_F0
  loc_1848197:           End If
  loc_18481A1:           Set var_9C = Me.TxtGrid
  loc_18481A7:           Call 0.Method_Proc_30_91_18485CC0 (arg_C, var_BC, var_D0, var_8A, var_218, var_154)
  loc_18481C6:           Set var_134 = Me.TxtGrid
  loc_18481CC:           Call 0.Method_Proc_30_91_18485CC0 (arg_C, var_168, var_C0, Not(IsNumeric(CVar(var_BC))), var_110)
  loc_18481D4:           var_130 = var_168.Text
  loc_18481F6:           If (var_F0 Or (CDbl(Val(var_C0)) <= CDbl(0))) Then
  loc_184820A:             Set var_9C = Me.TxtGrid
  loc_1848210:             Call 0.Method_Proc_30_91_18485CC0 (arg_C, var_BC, CStr(0))
  loc_1848218:             var_BC.Text = var_D0
  loc_184822C:             Proc_30_91_18485CC = 0
  loc_1848232:           End If
  loc_1848245:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848256:           Set var_BC = Me.FGrid
  loc_1848267:           var_C0 = CStr(var_BC.TextMatrix))
  loc_1848285:           If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1848295:             Set var_9C = Me.TxtGrid
  loc_184829B:             Call 0.Method_Proc_30_91_18485CC0 (arg_C, var_BC, var_C0, CVar(CLng(&HD)))
  loc_18482A3:             var_D0 = var_BC.Text
  loc_18482BB:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18482D3:             var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_18482FF:             var_1E4 = CVar(CStr(Format(CVar(var_C0), "0.00"))) 'String
  loc_1848307:             Set var_180 = Me.FGrid
  loc_184830D:             LateIdCallSt
  loc_1848334:           Else
  loc_1848341:             Set var_9C = Me.TxtGrid
  loc_1848347:             Call 0.Method_Proc_30_91_18485CC0 (arg_C, var_BC, var_C0, var_180, var_1E4, 1)
  loc_184834F:             1 = var_BC.Text
  loc_1848367:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184837F:             var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_18483AB:             var_1E4 = CVar(CStr(Format(CVar(var_C0), "0"))) 'String
  loc_18483B3:             Set var_180 = Me.FGrid
  loc_18483B9:             LateIdCallSt
  loc_18483DD:           End If
  loc_18483F0:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18483F8:           var_F0 = CVar(CLng(&HA)) 'Long
  loc_1848401:           Set var_BC = Me.FGrid
  loc_184841D:           var_144 = Me.FGrid.Row
  loc_184843D:           var_178 = Me.FGrid.TextMatrix)
  loc_1848448:           var_C0 = CStr(var_178)
  loc_1848450:           var_218 = Val(var_C0)
  loc_18484AE:           var_8A = Proc_96_26_129C83C(CStr(var_BC.TextMatrix)), var_218, MemVar_1F95070, CStr(Me.FGrid.TextMatrix)), global_172, Me.FGrid.TextMatrix), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_18484E8:           Me.LblCurStockStr.Caption = global_172
  loc_18484F6:           If (var_8A = 0) Then
  loc_18484FF:             Call 0.Method_arg_50 (var_C0, var_8A, var_218, CVar(CLng(7)), CVar(CLng(var_144)))
  loc_1848536:             If (MsgBox("Do you Want to Proceed with Negative Stock ?", &H114, CVar(var_C0), var_144, var_178) = 7) Then
  loc_184853E:               Proc_30_91_18485CC = 0
  loc_1848544:             End If
  loc_1848544:           End If
  loc_1848547:         Else
  loc_184854E:           If (var_B0 = CLng(9)) Then
  loc_184856C:             var_F0 = CVar(CLng(9)) 'Long
  loc_184857D:             Set var_9C = Me.TxtGrid
  loc_1848583:             Call 0.Method_Proc_30_91_18485CC0 (0, var_BC, var_C0, var_F0, CVar(CLng(Me.FGrid.Row)))
  loc_184858B:             var_130 = var_BC.Text
  loc_18485A1:             LateIdCallSt
  loc_18485BB:             Call Proc_30_106_12605C0(Me.FGrid, CVar(var_C0), var_F0)
  loc_18485C0:           End If
  loc_18485C0:         End If
  loc_18485C0:       End If
  loc_18485C0:     End If
  loc_18485C0:   End If
  loc_18485C0: End If
  loc_18485C5: Proc_30_91_18485CC = &HFF
End Sub

Public Sub Proc_30_92_1558D30(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) '1558D30
  'Data Table: 58908C
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_170 As String
  Dim var_118 As Integer
  Dim var_188 As String
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_138 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_158 As Variant
  Dim var_1D8 As Variant
  Dim var_1E8 As Variant
  Dim var_248 As Variant
  Dim unk_5890AB As Connection15
  Dim var_8C As Recordset15
  Dim var_274 As Variant
  Dim var_EA As Integer
  Dim var_114 As Double
  Dim var_208 As Variant
  Dim var_90 As Recordset15
  Dim var_278 As Variant
  Dim var_25C As Variant
  Dim var_29C As Field20
  Dim var_288 As Variant
  Dim var_2C4 As Variant
  Dim var_26C As Variant
  Dim var_86 As Integer
  loc_1557D50: var_128 = CVar(CLng(arg_1C)) 'Long
  loc_1557D88: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1557D8B:   Proc_30_92_1558D30 = CVar(CLng(&HB))
  loc_1557D91: End If
  loc_1557DB6: For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_116 = var_174 'Integer
  loc_1557DE0:   If (CLng(var_116) > (CLng(Me.FGrid.Rows) - 1)) Then
  loc_1557DE3:     GoTo loc_1557E4C
  loc_1557DE6:   End If
  loc_1557DEA:   var_128 = CVar(CLng(var_116)) 'Long
  loc_1557DF2:   var_148 = CVar(CLng(&HB)) 'Long
  loc_1557E23:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(arg_20)) Then
  loc_1557E2A:     var_128 = CVar(CLng(var_116)) 'Long
  loc_1557E33:     Set var_15C = Me.FGrid
  loc_1557E44:   End If
  loc_1557E47: Next var_174 'Integer
  loc_1557E4C: ' Referenced from: 1557DE3
  loc_1557E50: Set var_15C = Me.FGrid
  loc_1557E56: var_16C = var_15C.Row
  loc_1557E60: var_118 = CInt(CLng(var_16C))
  loc_1557E9E: var_188 = "SELECT SD.* FROM SchemeItemDetail SD WHERE SD.restCode='" & arg_10 & "' AND SD.ItemCode ='" & arg_C & "' AND SD.Qty <=" & CStr(arg_18)
  loc_1557EB3: Proc_6_7_F26918(var_16C, arg_14, CVar(var_188 & " AND "), var_26C)
  loc_1557EBB: var_1A8 = -1 & var_16C 
  loc_1557ED7: var_1D8 = var_1A8 & " Between SD.appdate And SD.Enddate AND SD.LogSite_Code='" & CVar(MemVar_1F95078) & "' AND SD.Active='Y' And ISNULL(SD.Days,'') Like '%" 
  loc_1557F20: unk_5890AB.Execute CStr(var_1D8 & Trim(Str(Weekday(arg_14, 1))) & "%' Order By SD.Qty Desc"), var_15C, var_118
  loc_1557F2B: Set var_8C = var_15C
  loc_1557F71: If (var_8C.RecordCount > 0) Then
  loc_1558005:   If CBool(InStr(1, Trim(Str(CVar(var_8C.Fields.Item("DAYS")))), Trim(Str(Weekday(arg_14, 1))), 0) <> 0) Then
  loc_1558033:     var_94 = CStr(var_8C.Fields.Item("FromTime").Value)
  loc_1558052:     var_15C = var_8C.Fields
  loc_155806B:     var_98 = CStr(var_15C.Item("ToTime").Value)
  loc_15580A3:     var_A8 = Format(Time, "HH") 'Variant
  loc_15580D9:     var_B8 = Format(Time, "NN") 'Variant
  loc_1558109:     var_C8 = CVar(Val(CStr(Left(var_94, 2)))) 'Variant
  loc_1558138:     var_D8 = CVar(Val(CStr(Right(var_94, 2)))) 'Variant
  loc_1558167:     var_E8 = CVar(Val(CStr(Left(var_98, 2)))) 'Variant
  loc_1558193:     var_EA = CInt(Val(CStr(Right(var_98, 2))))
  loc_15581A4:     If (var_E8 < var_C8) Then
  loc_15581AF:       var_16C = (var_E8 + 24)
  loc_15581B3:       var_E8 = Right(var_98, 2) 'Variant
  loc_15581B7:     End If
  loc_15581C2:     If (var_A8 <= 12) Then
  loc_15581CD:       var_16C = (var_A8 + 24)
  loc_15581D1:       var_A8 = Right(var_98, 2) 'Variant
  loc_15581D5:     End If
  loc_15581E9:     var_198 = (var_C8 + (var_D8 / 60))
  loc_15581F8:     var_FC = Round("NN", 2) 'Variant
  loc_1558213:     var_16C = (var_E8 + CVar((CDbl(var_EA) / CDbl(&H3C))))
  loc_1558222:     var_10C = Round((var_D8 / 60), 2) 'Variant
  loc_155823D:     var_198 = (var_A8 + (var_B8 / 60))
  loc_155824D:     var_114 = CSng(Round(Round((var_D8 / 60), 2), 2))
  loc_1558287:     var_1A8 = (Left(var_94, 2) + Right(var_94, 2))
  loc_15582D8:     var_1A8 = (Left(var_98, 2) + Right(var_98, 2))
  loc_1558358:     var_208 = (1 + Format(Time, "nn"))
  loc_155835D:     var_114 = CSng(Str(Weekday(arg_14, 1)))
  loc_155837C:     var_16C = (CVar(Val(CStr(Round(Round((var_D8 / 60), 2), 2)))) <= CVar(var_114))
  loc_1558395:     If CBool(var_16C And (CVar(Val(CStr(Round(Round((var_D8 / 60), 2), 2)))) >= CVar(var_114))) Then
  loc_15583AC:       var_170 = "SELECT SD.RestCode, Depart.ShortName, IM.DispCode, IM.NAME, IM.Unit, IM.Code, FD.FreeQty, SD.ItemCode As Itemcode, SD.Qty,SD.SchemeCode FROM SchemeItemDetail SD  JOIN FreeItemDetail FD ON SD.Code = FD.Code And SD.RestCode = FD.RestCode Join Depart on SD.RestCode=Depart.Code JOIN ItemMast IM on FD.FreeItem=IM.Code And FD.RestCode=IM.RestCode WHERE SD.RestCode='" & arg_10
  loc_15583E2:       Proc_6_7_F26918(var_16C, arg_14, CVar(var_170 & "' AND SD.ItemCode ='" & arg_C & "' AND SD.Qty <=" & CStr(arg_18) & " AND "), var_26C, -1, var_15C, var_114, 1)
  loc_15583FD:       var_1C8 = (Format(Time, "HH") * 100) & var_16C & " Between SD.Appdate And SD.EndDate AND SD.LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_1558441:       var_248 = var_1C8 & "' AND SD.Active='Y' And ISNULL(SD.Days,'') Like '%" & Trim(Str(Weekday(arg_14, 1))) & "%' Order By SD.Qty Desc" 
  loc_155844F:       unk_5890AB.Execute CStr(var_248), 1, 1
  loc_155845A:       Set var_90 = var_15C
  loc_15584A0:       If (var_90.RecordCount > 0) Then
  loc_15584A7:         var_128 = CVar(CLng(var_118)) 'Long
  loc_15584AF:         var_148 = CVar(CLng(&HA)) 'Long
  loc_15584F0:         var_90.Find "Itemcode='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_155851D:         var_128 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1558525:         var_148 = CVar(CLng(4)) 'Long
  loc_1558558:         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1558574:           var_128 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155857D:           Set var_274 = Me.FGrid
  loc_1558595:         End If
  loc_1558595:         var_128 = vbNullString
  loc_155859F:         Set var_15C = Me.FGrid
  loc_15585C9:         var_1E8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15585D1:         var_25C = CVar(CLng(0)) 'Long
  loc_15585EF:         var_128 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_15585F7:         var_148 = CVar(CLng(0)) 'Long
  loc_155861C:         var_1B8 = CVar(CStr((CDbl(CStr(Me.FGrid.TextMatrix))) + CDbl(1)))) 'String
  loc_1558624:         Set var_29C = Me.FGrid
  loc_155862A:         LateIdCallSt
  loc_1558664:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155866C:         var_158 = CVar(CLng(1)) 'Long
  loc_155869C:         var_1A8 = CVar(CStr(var_90.Fields.Item("RestCode").Value)) 'String
  loc_15586A4:         Set var_29C = Me.FGrid
  loc_15586AA:         LateIdCallSt
  loc_15586DF:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15586E7:         var_158 = CVar(CLng(2)) 'Long
  loc_1558717:         var_1A8 = CVar(CStr(var_90.Fields.Item("ShortName").Value)) 'String
  loc_155871F:         Set var_29C = Me.FGrid
  loc_1558725:         LateIdCallSt
  loc_155875A:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1558762:         var_158 = CVar(CLng(3)) 'Long
  loc_1558792:         var_1A8 = CVar(CStr(var_90.Fields.Item("DispCode").Value)) 'String
  loc_155879A:         Set var_29C = Me.FGrid
  loc_15587A0:         LateIdCallSt
  loc_15587D5:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15587DD:         var_158 = CVar(CLng(4)) 'Long
  loc_155880D:         var_1A8 = CVar(CStr(var_90.Fields.Item("Name").Value)) 'String
  loc_1558815:         Set var_29C = Me.FGrid
  loc_155881B:         LateIdCallSt
  loc_1558850:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1558858:         var_158 = CVar(CLng(5)) 'Long
  loc_1558888:         var_1A8 = CVar(CStr(var_90.Fields.Item("Unit").Value)) 'String
  loc_1558890:         Set var_29C = Me.FGrid
  loc_1558896:         LateIdCallSt
  loc_15588F3:         var_29C = var_90.Fields.Item("qty")
  loc_15588FB:         var_1A8 = var_29C.Value
  loc_155891C:         var_158 = CVar(arg_18) 'Integer
  loc_155892B:         Proc_6_142_14A62A0(CSng((var_158 / var_1A8)), CByte(0), "L", CByte(4), var_29C, var_1A8, var_158, " Between SD.Appdate And SD.EndDate AND SD.LogSite_Code='")
  loc_1558973:         var_288 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155897B:         var_2C4 = CVar(CLng(7)) 'Long
  loc_15589A9:         var_1C8 = ((CVar(arg_18) / var_90.Fields.Item("qty").Value) + CVar(var_29C))
  loc_15589C7:         var_26C = CVar(CStr(Format((var_1C8 * var_90.Fields.Item("FreeQty").Value), "0.00"))) 'String
  loc_15589CF:         Set var_2E8 = Me.FGrid
  loc_15589D5:         LateIdCallSt
  loc_1558A21:         var_148 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1558A29:         var_1E8 = CVar(CLng(8)) 'Long
  loc_1558A5A:         var_1C8 = CVar(CStr(Format("0.01", "0.00"))) 'String
  loc_1558A62:         Set var_274 = Me.FGrid
  loc_1558A68:         LateIdCallSt
  loc_1558A9D:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1558AA5:         var_158 = CVar(CLng(&HA)) 'Long
  loc_1558AD5:         var_1A8 = CVar(CStr(var_90.Fields.Item("Code").Value)) 'String
  loc_1558ADD:         Set var_29C = Me.FGrid
  loc_1558AE3:         LateIdCallSt
  loc_1558B18:         var_128 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1558B2A:         var_198 = CVar(CStr(arg_20)) 'String
  loc_1558B32:         Set var_274 = Me.FGrid
  loc_1558B38:         LateIdCallSt
  loc_1558B58:         var_198 = Me.FGrid.Rows
  loc_1558B67:         var_138 = CVar((CLng(var_198) - 1)) 'Long
  loc_1558B77:         var_128 = "SchemeCode"
  loc_1558B8B:         var_274 = var_90.Fields.Item(var_128)
  loc_1558BA4:         Set var_29C = Me.FGrid
  loc_1558BAA:         LateIdCallSt
  loc_1558BC8:         Set var_29C = Me.FGrid
  loc_1558C0E:         Proc_96_0_E6CA28(var_29C, CInt((CLng(Me.FGrid.Rows) - 1)), Me.lblclr.BackColor, Me.FGrid.Rows, var_29C, CVar(Proc_6_38_E69628(CVar(Me.lblclr), CVar(CLng(&HC)), "0.00", Me.lblclr, var_198, CVar(CLng(&HB)), var_128)))
  loc_1558C23:         var_86 = &HFF
  loc_1558C3F:         var_1E8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1558C47:         var_25C = CVar(CLng(9)) 'Long
  loc_1558C50:         var_128 = CVar(CLng(var_118)) 'Long
  loc_1558C58:         var_148 = CVar(CLng(9)) 'Long
  loc_1558C72:         var_1A8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1558C7A:         Set var_278 = Me.FGrid
  loc_1558C80:         LateIdCallSt
  loc_1558CBF:         For var_2F8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_116 = var_2F8 'Integer
  loc_1558CC9:           var_128 = CVar(CLng(var_116)) 'Long
  loc_1558CD1:           var_148 = CVar(CLng(0)) 'Long
  loc_1558CDB:           var_16C = CVar(CStr(var_116)) 'String
  loc_1558CE3:           Set var_15C = Me.FGrid
  loc_1558CE9:           LateIdCallSt
  loc_1558CFA:         Next var_2F8 'Integer
  loc_1558D04:         Set var_8C = Nothing
  loc_1558D0C:         Set var_90 = Nothing
  loc_1558D0F:         Proc_30_92_1558D30 = 
  loc_1558D15:       End If
  loc_1558D15:     End If
  loc_1558D15:   End If
  loc_1558D15: End If
  loc_1558D1F: Set var_8C = Nothing
  loc_1558D27: Set var_90 = Nothing
  loc_1558D2A: Proc_30_92_1558D30 = 0
End Sub

Public Sub Proc_30_93_1285F60(arg_C, arg_10, arg_14, arg_18) '1285F60
  'Data Table: 58908C
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_1F4 As Variant
  Dim var_254 As Variant
  Dim unk_5890AB As Connection15
  Dim var_90 As Recordset15
  Dim var_2BC As Fields15
  Dim var_E2 As Integer
  Dim var_134 As Variant
  Dim var_114 As Double
  Dim var_194 As Variant
  Dim var_8C As Double
  loc_12859FD: Proc_6_17_EAAE40(var_134, arg_10, "SELECT * FROM HappyHours where RestCode =")
  loc_1285A1D: Proc_6_17_EAAE40(var_194, arg_C, var_2B8 & var_134 & " AND itemCode=")
  loc_1285A25: var_1A4 = -1 & var_194 
  loc_1285A3D: Proc_6_7_F26918(var_1E4, arg_14)
  loc_1285A61: var_254 = var_1A4 & " AND " & var_1E4 & " Between AppDate And EndDate AND  Site_Code='" & CVar(MemVar_1F95070) & "' AND (LogSite_code='" 
  loc_1285A82: unk_5890AB.Execute CStr(var_254 & CVar(MemVar_1F95078) & "' OR Logsite_Code='HO') AND Active='Y' ORDER BY AppDate DESC"), var_2BC, 
  loc_1285A8D: Set var_90 = var_2BC
  loc_1285AC9: If (var_90.RecordCount > 0) Then
  loc_1285AF7:   var_E8 = CStr(var_90.Fields.Item("FromTime").Value)
  loc_1285B2F:   var_EC = CStr(var_90.Fields.Item("ToTime").Value)
  loc_1285B67:   var_E0 = Format(Time, "HH") 'Variant
  loc_1285B9E:   var_E2 = CInt(Format(Time, "NN"))
  loc_1285BCF:   var_A0 = CVar(Val(CStr(Left(var_E8, 2)))) 'Variant
  loc_1285BFE:   var_B0 = CVar(Val(CStr(Right(var_E8, 2)))) 'Variant
  loc_1285C2D:   var_C0 = CVar(Val(CStr(Left(var_EC, 2)))) 'Variant
  loc_1285C5C:   var_D0 = CVar(Val(CStr(Right(var_EC, 2)))) 'Variant
  loc_1285C6E:   If (var_C0 < var_A0) Then
  loc_1285C79:     var_134 = (var_C0 + 24)
  loc_1285C7D:     var_C0 = Right(var_EC, 2) 'Variant
  loc_1285C81:   End If
  loc_1285C8C:   If (var_E0 <= 12) Then
  loc_1285C97:     var_134 = (var_E0 + 24)
  loc_1285C9B:     var_E0 = Right(var_EC, 2) 'Variant
  loc_1285C9F:   End If
  loc_1285CB3:   var_154 = (var_A0 + (var_B0 / 60))
  loc_1285CC2:   var_FC = Round("NN", 2) 'Variant
  loc_1285CDD:   var_154 = (var_C0 + (var_D0 / 60))
  loc_1285CEC:   var_10C = Round("NN", 2) 'Variant
  loc_1285D07:   var_134 = (var_E0 + CVar((CDbl(var_E2) / CDbl(&H3C))))
  loc_1285D17:   var_114 = CSng(Round((var_D0 / 60), 2))
  loc_1285D51:   var_174 = (Left(var_E8, 2) + Right(var_E8, 2))
  loc_1285DA2:   var_174 = (Left(var_EC, 2) + Right(var_EC, 2))
  loc_1285DFB:   var_194 = (Format(Time, "HH") * 100)
  loc_1285E22:   var_1F4 = (1 + Format(Time, "NN"))
  loc_1285E27:   var_114 = CSng(Time & " AND " & Format(Time, "NN"))
  loc_1285E5F:   If CBool((CVar(Val(CStr(Round("NN", 2)))) <= CVar(var_114)) And (CVar(Val(CStr(Round("NN", 2)))) >= CVar(var_114))) Then
  loc_1285E9E:     If (var_90.Fields.Item("DiscountType").Value = "Amount") Then
  loc_1285ED2:       var_154 = (CVar(arg_18) - var_90.Fields.Item("DiscountValue").Value)
  loc_1285ED7:       var_8C = CSng("HH")
  loc_1285EE7:     Else
  loc_1285F2C:       var_194 = (CVar(arg_18) - (CVar(arg_18) * (var_90.Fields.Item("DiscountValue").Value / 100)))
  loc_1285F31:       var_8C = CSng(var_194)
  loc_1285F3E:     End If
  loc_1285F41:   Else
  loc_1285F44:     var_8C = CDbl(0)
  loc_1285F47:   End If
  loc_1285F4A: Else
  loc_1285F4D:   var_8C = CDbl(0)
  loc_1285F50: End If
  loc_1285F55: Set var_90 = Nothing
  loc_1285F58: Proc_30_93_1285F60 = var_8C
End Sub

Public Sub Proc_30_94_179FC48
  'Data Table: 58908C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Variant
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_10C As String
  Dim unk_5890AB As Connection15
  Dim var_AC As Recordset15
  Dim var_D8 As Variant
  Dim var_130 As Variant
  Dim var_148 As Variant
  Dim var_11C As Variant
  Dim var_138 As String
  Dim var_168 As Variant
  Dim var_1AC As Variant
  Dim var_19C As Variant
  Dim var_1D0 As Variant
  Dim var_1E4 As String
  Dim var_1F4 As Recordset15
  Dim var_134 As Variant
  Dim var_1EC As String
  Dim var_1F0 As String
  Dim var_1F8 As String
  Dim var_B0 As Recordset15
  Dim var_B8 As Recordset15
  Dim var_158 As Variant
  Dim var_12C As Variant
  Dim var_B2 As Integer
  Dim var_188 As Variant
  Dim var_27C As Variant
  Dim var_198 As Variant
  Dim var_BC As Recordset15
  loc_179DD5C: On Error Goto loc_179FC3F
  loc_179DD6E: Me.FGrid1.Visible = False
  loc_179DD85: Me.FGrid2.Visible = False
  loc_179DD99: Me.LblPendingKotItem.Visible = False
  loc_179DDAD: Me.LblPendingKot.Visible = False
  loc_179DDBD: Set var_A8 = Me.CmPendingKot
  loc_179DDC3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_179DDD8: Me.LblCurStockStr.Caption = vbNullString
  loc_179DDF7: If (Me.RecordCount > 0) Then
  loc_179DE39:   var_E8 = "Select K.*,R.name as RName From KOT K left join RoomMast R on R.Type=K.RoomType and R.Code=K.RoomNo Where K.Docid='" & Me.Fields.Item("DocID").Value 
  loc_179DE50:   unk_5890AB.Execute CStr(var_E8 & "' order by K.Sno"), var_12C, -1
  loc_179DE5B:   Set var_AC = var_130
  loc_179DEAF:   var_130 = var_AC.Fields
  loc_179DF18:   var_198 = IIf((Proc_6_38_E69628(CVar(var_AC.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_130.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_179DF5D:   Me.LblUser.Caption = CStr(var_130 & CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("U_Name")), var_198)))
  loc_179DFD7:   var_134 = var_AC.Fields.Item("U_AE")
  loc_179DFDF:   var_E8 = CVar(var_134) 'Address
  loc_179E038:   var_198 = IIf((Proc_6_38_E69628(CVar(var_AC.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(var_E8) = "E"), "Last Update : ", "entdt : "))
  loc_179E04F:   var_19C = var_AC.Fields
  loc_179E07D:   Me.LblLDt.Caption = CStr(var_198 & CVar(Proc_6_38_E69628(CVar(var_19C.Item("U_EntDt")))))
  loc_179E0B8:   Set var_1F4 = var_AC 
  loc_179E0F5:   Set var_130 = Me.Txt
  loc_179E0FB:   Call 0.Method_Proc_30_94_179FC480 (CInt(3), var_134)
  loc_179E103:   var_134.Text = CStr(var_1F4.Fields.Item("DocID").Value)
  loc_179E133:   var_C8 = var_1F4.Fields.Item("vType")
  loc_179E13B:   var_D8 = var_C8.Value
  loc_179E161:   var_A4 = 0
  loc_179E193:   var_1EC = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='"
  loc_179E1AD:   unk_5890AB.Execute var_1EC & CStr(var_D8) & "'", var_D8, -1
  loc_179E1B5:   var_A8 = var_A8.Fields
  loc_179E1BD:   var_A4 = var_C8.Item(var_C8)
  loc_179E1C5:   var_130 = var_130.Value
  loc_179E1D4:   global_120 = CStr(var_E8)
  loc_179E232:   Set var_130 = Me.Txt
  loc_179E238:   Call 0.Method_Proc_30_94_179FC480 (CInt(0), var_134)
  loc_179E240:   var_134.Text = CStr(var_1F4.Fields.Item("VNo").Value)
  loc_179E281:   var_E8 = "DD/MMM/YYYY"
  loc_179E2A8:   Set var_130 = Me.Txt
  loc_179E2AE:   Call 0.Method_Proc_30_94_179FC480 (CInt(1), var_134, CStr(Format(CVar(var_1F4.Fields.Item("VDate")), var_E8)))
  loc_179E2B6:   var_134.Text = 1
  loc_179E308:   Me.LblVPrefix.Caption = CStr(var_1F4.Fields.Item("vPrefix").Value)
  loc_179E342:   Proc_6_39_E7D3A0(var_E8, CVar(var_1F4.Fields.Item("TokenNo")))
  loc_179E359:   Set var_130 = Me.Txt
  loc_179E35F:   Call 0.Method_Proc_30_94_179FC480 (CInt(&HE), var_134, CStr(var_E8))
  loc_179E367:   var_134.Text = 1
  loc_179E3B5:   Set var_130 = Me.Txt
  loc_179E3BB:   Call 0.Method_Proc_30_94_179FC480 (CInt(6), var_134)
  loc_179E3C3:   var_134.Text = Proc_6_38_E69628(CVar(var_AC.Fields.Item("Remarks")))
  loc_179E415:   If (var_1F4.Fields.Item("VDate").Value = CDate(MemVar_1F950EC)) Then
  loc_179E420:     Set var_A8 = Me.CmdTabeSt
  loc_179E426:     Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_179E436:     Set var_A8 = Me.CmPendingKot
  loc_179E43C:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_179E447:   Else
  loc_179E450:     Set var_A8 = Me.CmdTabeSt
  loc_179E456:     Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_179E467:     Set var_A8 = Me.CmPendingKot
  loc_179E46D:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_179E475:   End If
  loc_179E4AD:   var_10C = Proc_6_38_E69628(CVar(var_1F4.Fields.Item("Party")), "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q where Code='", var_E8)
  loc_179E4B1:   var_138 = -1 & var_10C
  loc_179E4C1:   unk_5890AB.Execute "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & "'", var_130, var_E8
  loc_179E4CC:   Set var_B0 = var_130
  loc_179E4FA:   If (var_B0.RecordCount > 0) Then
  loc_179E536:     Set var_130 = Me.Txt
  loc_179E53C:     Call 0.Method_Proc_30_94_179FC480 (CInt(&HB), var_134)
  loc_179E544:     var_134.Tag = CStr(var_B0.Fields.Item(0).Value)
  loc_179E593:     Set var_130 = Me.Txt
  loc_179E599:     Call 0.Method_Proc_30_94_179FC480 (CInt(&HB), var_134)
  loc_179E5A1:     var_134.Text = CStr(var_B0.Fields.Item(1).Value)
  loc_179E5D1:     var_C8 = var_B0.Fields.Item(2)
  loc_179E5F0:     Set var_130 = Me.Txt
  loc_179E5F6:     Call 0.Method_Proc_30_94_179FC480 (CInt(&HC), var_134)
  loc_179E5FE:     var_134.Text = CStr(var_C8.Value)
  loc_179E617:   Else
  loc_179E625:     Set var_A8 = Me.Txt
  loc_179E62B:     Call 0.Method_Proc_30_94_179FC480 (CInt(&HB), var_C8)
  loc_179E633:     var_C8.Tag = vbNullString
  loc_179E64D:     Set var_A8 = Me.Txt
  loc_179E653:     Call 0.Method_Proc_30_94_179FC480 (CInt(&HB), var_C8)
  loc_179E65B:     var_C8.Text = vbNullString
  loc_179E675:     Set var_A8 = Me.Txt
  loc_179E67B:     Call 0.Method_Proc_30_94_179FC480 (CInt(&HC), var_C8)
  loc_179E683:     var_C8.Text = vbNullString
  loc_179E68F:   End If
  loc_179E6B7:   var_10C = Proc_6_38_E69628(CVar(var_1F4.Fields.Item("Waiter")))
  loc_179E6C5:   Set var_130 = Me.Txt
  loc_179E6CB:   Call 0.Method_Proc_30_94_179FC480 (CInt(5), var_134)
  loc_179E6D3:   var_134.Tag = var_10C
  loc_179E701:   var_C8 = var_1F4.Fields.Item("Waiter")
  loc_179E723:   If CBool(var_C8.Value <> vbNullString) Then
  loc_179E744:     Set var_A8 = Me.Txt
  loc_179E74A:     Call 0.Method_Proc_30_94_179FC480 (CInt(5), var_C8, var_10C, "Select Name From Waiter Where Code='")
  loc_179E752:     var_D8 = var_C8.Tag
  loc_179E75B:     var_138 = -1 & var_10C
  loc_179E762:     var_1E4 = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & "' and (code is not null or code <> '')"
  loc_179E76B:     unk_5890AB.Execute var_1E4, var_130, 
  loc_179E776:     Set var_B8 = var_130
  loc_179E7A2:     If (var_B8.RecordCount > 0) Then
  loc_179E7BF:       var_C8 = var_B8.Fields.Item("Name")
  loc_179E7DE:       Set var_130 = Me.Txt
  loc_179E7E4:       Call 0.Method_Proc_30_94_179FC480 (CInt(5), var_134)
  loc_179E7EC:       var_134.Text = CStr(var_C8.Value)
  loc_179E802:     End If
  loc_179E807:     Set var_B8 = Nothing
  loc_179E80D:   Else
  loc_179E81B:     Set var_A8 = Me.Txt
  loc_179E821:     Call 0.Method_Proc_30_94_179FC480 (CInt(5), var_C8)
  loc_179E829:     var_C8.Text = vbNullString
  loc_179E835:   End If
  loc_179E84C:   If ((global_160 = "TB") Or (global_160 = "RO")) Then
  loc_179E885:     Set var_130 = Me.Txt
  loc_179E88B:     Call 0.Method_Proc_30_94_179FC480 (CInt(4), var_134)
  loc_179E893:     var_134.Text = Proc_6_38_E69628(CVar(var_1F4.Fields.Item("RoomNo")))
  loc_179E8AA:   Else
  loc_179E8E0:     Set var_130 = Me.Txt
  loc_179E8E6:     Call 0.Method_Proc_30_94_179FC480 (CInt(4), var_134)
  loc_179E8EE:     var_134.Text = Proc_6_38_E69628(CVar(var_1F4.Fields.Item("RName")))
  loc_179E902:   End If
  loc_179E91C:   var_C8 = var_1F4.Fields.Item("Pending")
  loc_179E924:   var_D8 = var_C8.Value
  loc_179E93E:   If (var_D8 = "Y") Then
  loc_179E97F:     Set var_A8 = Me.Txt
  loc_179E985:     Call 0.Method_Proc_30_94_179FC480 (CInt(4), var_C8, "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='", "sELECT COUNT(DISTINCT VNO) FROM KOT WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='", var_D8, -1)
  loc_179E99D:     var_1F0 = var_134 & "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & "' AND PENDING='Y' AND (DELFLAG IS NULL OR DELFLAG<>'Y')"
  loc_179E9A6:     unk_5890AB.Execute var_1F0, 0, var_19C
  loc_179E9AE:     var_E8 = var_C8.Text.Fields
  loc_179E9B6:      = var_134.Item()
  loc_179E9BE:      = var_19C.Value
  loc_179E9EF:     If (var_E8 = 1) Then
  loc_179E9FF:       Me.LblState.Caption = "New Order"
  loc_179EA0A:     Else
  loc_179EA17:       Me.LblState.Caption = "Running Order"
  loc_179EA1F:     End If
  loc_179EA22:   Else
  loc_179EA2F:     Me.LblState.Caption = "Completed Order"
  loc_179EA37:   End If
  loc_179EA51:   var_C8 = var_1F4.Fields.Item("NCKOT")
  loc_179EA92:   Me.ChkNCKOT.Value = CInt(IIf((var_C8.Value = "Y"), 1, 0))
  loc_179EAC8:   If (Me.ChkNCKOT.Value = 1) Then
  loc_179EAD8:     Set var_A8 = Me.Txt
  loc_179EADE:     Call 0.Method_Proc_30_94_179FC480 (CInt(7), var_C8)
  loc_179EAE6:     var_C8.Visible = True
  loc_179EAFD:     Set var_A8 = Me.Label1
  loc_179EB03:     Call 0.Method_Proc_30_94_179FC480 (4, var_C8)
  loc_179EB0B:     var_C8.Visible = True
  loc_179EB24:     Me.LblKotNm.Caption = "NC Kot"
  loc_179EB34:     Set var_A8 = Me.cmdNCBill
  loc_179EB3A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_179EB45:   Else
  loc_179EB52:     Set var_A8 = Me.Txt
  loc_179EB58:     Call 0.Method_Proc_30_94_179FC480 (CInt(7), var_C8)
  loc_179EB60:     var_C8.Visible = False
  loc_179EB77:     Set var_A8 = Me.Label1
  loc_179EB7D:     Call 0.Method_Proc_30_94_179FC480 (4, var_C8)
  loc_179EB85:     var_C8.Visible = False
  loc_179EB9E:     Me.LblKotNm.Caption = "Standerd Kot"
  loc_179EBAF:     Set var_A8 = Me.cmdNCBill
  loc_179EBB5:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_179EBBD:   End If
  loc_179EBF3:   Set var_130 = Me.Txt
  loc_179EBF9:   Call 0.Method_Proc_30_94_179FC480 (CInt(7), var_134)
  loc_179EC01:   var_134.Text = Proc_6_38_E69628(CVar(var_1F4.Fields.Item("NCType")))
  loc_179EC6A:   global_216 = CByte(IIf((var_1F4.Fields.Item("NCKOT").Value = "Y"), 1, 0))
  loc_179ECAE:   var_12C = 1
  loc_179ED25:   Set var_130 = Me.Txt
  loc_179ED2B:   Call 0.Method_Proc_30_94_179FC480 (CInt(4), var_134)
  loc_179ED33:   var_134.Tag = Proc_6_38_E69628(CVar(var_1F4.Fields.Item("RoomNo")), CByte(IIf((var_1F4.Fields.Item("NCKOT").Value = "Y"), var_12C, 0)))
  loc_179ED6D:   Proc_6_39_E7D3A0(var_E8, CVar(var_1F4.Fields.Item("GuarAtt")))
  loc_179ED84:   Set var_130 = Me.Txt
  loc_179ED8A:   Call 0.Method_Proc_30_94_179FC480 (CInt(&HD), var_134)
  loc_179ED92:   var_134.Text = CStr(var_E8)
  loc_179EDD5:   var_E8 = "hh:nn"
  loc_179EDFC:   Set var_130 = Me.Txt
  loc_179EE02:   Call 0.Method_Proc_30_94_179FC480 (CInt(2), var_134, CStr(Format(CVar(var_1F4.Fields.Item("VTIME")), var_E8)))
  loc_179EE0A:   var_134.Text = 1
  loc_179EE64:   var_138 = CStr(var_1F4.Fields.Item("VTIME").Value)
  loc_179EE6C:   var_1E4 = Replace(var_138, ":", ".", 1, -1, 0)
  loc_179EE9E:   var_1F8 = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and " & CStr(Val("sELECT COUNT(DISTINCT VNO) FROM KOT WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='"))
  loc_179EEAE:   unk_5890AB.Execute var_1F8 & " BETWEEN FromTime AND ToTime", var_E8, -1
  loc_179EEB9:   Set var_B8 = var_130
  loc_179EEDF:   Set var_1F4 = Nothing 
  loc_179EEF2:   Me.FGrid.Redraw = False
  loc_179EF0D:   Me.FGrid.Rows = 1
  loc_179EF17:   var_B2 = 1
  loc_179EF27:   var_A4 = "Select K1.*,I.name as ItemName,I.Unit,IsNull(U.PriceType,0) As PriceType,DispCode,D.Code as DepartCode,D.ShortName as DepartName,I.Kitchen From (KOT K1 Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner Join Depart D on D.Code=I.RestCode Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code Where K1.DocId='"
  loc_179EF70:   unk_5890AB.Execute CStr(var_A4 & Me.Fields.Item("SearchCode").Value & "' order by K1.Sno"), var_12C, -1
  loc_179EF7B:   Set var_AC = var_130
  loc_179EFA9:   If (var_AC.RecordCount > 0) Then
  loc_179EFAC:     ' Referenced from: 179F772
  loc_179EFBB:     If Not(var_AC.EOF) Then
  loc_179EFBE:       var_94 = vbNullString
  loc_179EFC8:       Set var_A8 = Me.FGrid
  loc_179EFDD:       Set var_20C = Me.FGrid
  loc_179EFE4:       var_A4 = CVar(CLng(var_B2)) 'Long
  loc_179EFEC:       var_11C = CVar(CLng(0)) 'Long
  loc_179F01C:       var_E8 = CVar(CStr(var_AC.Fields.Item("SNo").Value)) 'String
  loc_179F023:       LateIdCallSt
  loc_179F03D:       var_A4 = CVar(CLng(var_B2)) 'Long
  loc_179F045:       var_11C = CVar(CLng(&HA)) 'Long
  loc_179F075:       var_E8 = CVar(CStr(var_AC.Fields.Item("Item").Value)) 'String
  loc_179F07C:       LateIdCallSt
  loc_179F0CB:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_B2)), var_20C, var_E8, CVar(CLng(3)), CVar(CLng(var_B2)))) 'String
  loc_179F0D2:       LateIdCallSt
  loc_179F11D:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_B2)), var_20C, var_E8, var_20C)) 'String
  loc_179F124:       LateIdCallSt
  loc_179F16F:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(var_B2)), var_20C, var_E8)) 'String
  loc_179F176:       LateIdCallSt
  loc_179F1C1:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_B2)), var_20C, var_E8)) 'String
  loc_179F1C8:       LateIdCallSt
  loc_179F1FA:       var_F8 = CVar(CLng(var_B2)) 'Long
  loc_179F202:       var_148 = CVar(CLng(7)) 'Long
  loc_179F22F:       var_12C = CVar(CStr(Format(CVar(var_AC.Fields.Item("qty")), "0.00"))) 'String
  loc_179F236:       LateIdCallSt
  loc_179F2A1:       var_12C = CVar(CStr(Format(CVar(var_AC.Fields.Item("Rate")), "0.00"))) 'String
  loc_179F2A8:       LateIdCallSt
  loc_179F2E6:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("VoidYN")), var_20C, var_12C, 1, 1, CVar(CLng(8)), CVar(CLng(var_B2)))) 'String
  loc_179F308:       var_134 = var_AC.Fields.Item("VoidYN")
  loc_179F328:       var_1AC = CVar(CLng(var_B2)) 'Long
  loc_179F330:       var_27C = CVar(CLng(9)) 'Long
  loc_179F358:       var_1D0 = (Trim(CVar(Proc_6_38_E69628(CVar(var_134), var_20C, var_12C, 1))) = "Y") 'Variant
  loc_179F39C:       LateIdCallSt
  loc_179F403:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_B2)), var_20C, CVar(CStr(IIf((Trim(var_E8) = "F"), "Free", IIf(var_1D0, "Yes", "No")))))) 'String
  loc_179F40A:       LateIdCallSt
  loc_179F455:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_B2)), var_20C, var_E8)) 'String
  loc_179F45C:       LateIdCallSt
  loc_179F4A5:       Proc_6_39_E7D3A0(var_E8, CVar(var_AC.Fields.Item("FreeSno")), CVar(CLng(&HB)), CVar(CLng(var_B2)), var_20C, var_E8)
  loc_179F4B5:       LateIdCallSt
  loc_179F502:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("SchemeCode")), CVar(CLng(&HC)), CVar(CLng(var_B2)), var_20C, CVar(CStr(var_E8)))) 'String
  loc_179F509:       LateIdCallSt
  loc_179F552:       Proc_6_39_E7D3A0(var_E8, CVar(var_AC.Fields.Item("PriceType")), CVar(CLng(&HD)), CVar(CLng(var_B2)), var_20C, var_E8)
  loc_179F55B:       var_108 = CVar(CStr(var_E8)) 'String
  loc_179F562:       LateIdCallSt
  loc_179F57A:       var_94 = CVar(CLng(var_B2)) 'Long
  loc_179F582:       var_F8 = CVar(CLng(&HD)) 'Long
  loc_179F5B2:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(1)) Then
  loc_179F5B9:         var_94 = CVar(CLng(var_B2)) 'Long
  loc_179F5C1:         var_F8 = CVar(CLng(7)) 'Long
  loc_179F5E0:         var_168 = CVar(CLng(var_B2)) 'Long
  loc_179F5E8:         var_1AC = CVar(CLng(7)) 'Long
  loc_179F615:         var_158 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0"))) 'String
  loc_179F61D:         Set var_C8 = Me.FGrid
  loc_179F623:         LateIdCallSt
  loc_179F63F:       End If
  loc_179F667:       var_C8 = var_AC.Fields.Item("Printed")
  loc_179F678:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_C8), CVar(CLng(&HE)), CVar(CLng(var_B2)), var_C8, var_158, 1, 1)) 'String
  loc_179F67F:       LateIdCallSt
  loc_179F6CA:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Kitchen")), CVar(CLng(&HF)), CVar(CLng(var_B2)), var_20C, var_E8, var_1AC)) 'String
  loc_179F6D1:       LateIdCallSt
  loc_179F725:       If (var_AC.Fields.Item("FreeSno").Value > 0) Then
  loc_179F753:         Proc_96_0_E6CA28(Me.FGrid, var_B2, Me.lblclr.BackColor, Nothing, var_E8)
  loc_179F761:       End If
  loc_179F767:       var_B2 = (var_B2 + 1)
  loc_179F76D:       var_AC.MoveNext
  loc_179F772:       GoTo loc_179EFAC
  loc_179F775:     End If
  loc_179F788:     Me.FGrid.FixedRows = 1
  loc_179F790:   End If
  loc_179F79E:   Me.FGrid.Redraw = True
  loc_179F7AC:   If (var_B2 = 1) Then
  loc_179F7C2:     Me.FGrid.Rows = 1
  loc_179F7CE:     Set var_130 = Me.FGrid
  loc_179F7E8:     var_D8 = CVar(CStr(Proc_6_127_F25B10(var_130, CInt(0), var_B2, var_168))) 'String
  loc_179F7F0:     Set var_C8 = Me.FGrid
  loc_179F81D:     Me.FGrid.FixedRows = 1
  loc_179F825:   End If
  loc_179F830:   If (global_68 = "Room Service") Then
  loc_179F853:     If (Me.LblState.Caption = "Running Order") Then
  loc_179F86A:       var_10C = "SELECT RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest,GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3 FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) where (RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_179F882:       Set var_A8 = Me.Txt
  loc_179F888:       Call 0.Method_Proc_30_94_179FC480 (CInt(4), var_C8, var_138, var_10C & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL and RC.RoomNo='", var_D8, -1, var_130)
  loc_179F890:       FGrid.DispID_10000 = var_C8.Tag
  loc_179F8A9:       unk_5890AB.Execute var_D8 & var_138 & "'  Order by RC.ROOMNO", var_D8, var_F8
  loc_179F8B4:       Set var_BC = var_130
  loc_179F8D3:     Else
  loc_179F8E0:       var_A4 = "SELECT distinct GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, KOT.RoomNo, GuestProf.Name FROM  PayCharge INNER JOIN  KOT ON PayCharge.DocId = KOT.ContraDocId INNER JOIN   GuestProf ON PayCharge.GuestProf = GuestProf.Code WHERE (KOT.DocId = '"
  loc_179F8EB:       var_94 = "DocID"
  loc_179F912:       var_E8 = var_A4 & Me.Fields.Item(var_94).Value 
  loc_179F916:       var_F8 = "') AND  KOT.ContraDocID<>'' AND (PayCharge.RoomType = 'RO') AND (PayCharge.PayCode = '"
  loc_179F940:       Set var_130 = Me.Txt
  loc_179F946:       Call 0.Method_Proc_30_94_179FC480 (CInt(4), var_134, var_10C, var_E8 & var_F8 & CVar(MemVar_1F95078) & "TOUT') AND  KOT.RoomNo='", var_1D0)
  loc_179F94E:       -1 = var_134.Tag
  loc_179F956:       var_188 = CVar(var_10C) 'String
  loc_179F970:       unk_5890AB.Execute CStr(var_19C & var_188 & "'"), var_94, var_F8
  loc_179F97B:       Set var_BC = var_19C
  loc_179F9A3:     End If
  loc_179F9B7:     If (var_BC.RecordCount > 0) Then
  loc_179F9BA:       ' Referenced from: 179FADE
  loc_179F9CB:       If (var_BC.EOF = 0) Then
  loc_179FA04:         Set var_130 = Me.Txt
  loc_179FA0A:         Call 0.Method_Proc_30_94_179FC480 (CInt(8), var_134)
  loc_179FA12:         var_134.Text = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Comments1")))
  loc_179FA5C:         Set var_130 = Me.Txt
  loc_179FA62:         Call 0.Method_Proc_30_94_179FC480 (CInt(9), var_134)
  loc_179FA6A:         var_134.Text = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Comments2")))
  loc_179FA95:         var_C8 = var_BC.Fields.Item("Comments3")
  loc_179FA9D:         var_D8 = CVar(var_C8) 'Address
  loc_179FAB4:         Set var_130 = Me.Txt
  loc_179FABA:         Call 0.Method_Proc_30_94_179FC480 (CInt(&HA), var_134)
  loc_179FAC2:         var_134.Text = Proc_6_38_E69628(var_D8)
  loc_179FAD9:         var_BC.MoveNext
  loc_179FADE:         GoTo loc_179F9BA
  loc_179FAE1:       End If
  loc_179FAE1:     End If
  loc_179FAE1:   End If
  loc_179FAE4: Else
  loc_179FAE4:   Call Proc_30_96_FFCD80()
  loc_179FB04:   var_138 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_179FB1B:   var_A4 = 0
  loc_179FB3B:   var_1EC = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_179FB4B:   unk_5890AB.Execute var_D8 & var_138 & "'", var_D8, -1
  loc_179FB53:   var_A8 = var_A8.Fields
  loc_179FB5B:   var_A4 = var_C8.Item(var_C8)
  loc_179FB63:   var_130 = var_130.Value
  loc_179FB82:   unk_5890AB.Execute CStr(var_E8 & var_E8 & "' Order by Description"), CVar(var_138 & MemVar_1F95078 & "') and V_Type='"), var_188
  loc_179FB8D:   Set var_AC = var_134
  loc_179FBCD:   If (var_AC.RecordCount > 0) Then
  loc_179FC01:     global_152 = CStr(var_AC.Fields.Item(0).Value)
  loc_179FC12:   End If
  loc_179FC12: End If
  loc_179FC1B: Set var_A8 = Me.BtnLblModi
  loc_179FC21: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010007(False)
  loc_179FC29: Call Proc_30_98_F6E7AC(-1)
  loc_179FC33: Set var_AC = Nothing
  loc_179FC3B: Set var_BC = Nothing
  loc_179FC3E: Exit Sub
  loc_179FC3F: ' Referenced from: 179DD5C
  loc_179FC3F: Proc_6_60_E63754(var_134)
  loc_179FC44: Exit Sub
End Sub

Public Sub Proc_30_95_1081CD0
  'Data Table: 58908C
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_5890AB As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_F8 As Variant
  Dim var_BC As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  loc_1081A49: Set var_8C = Me.TopCtrl1
  loc_1081A4F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(&HFF)
  loc_1081A57: var_A0 = CStr()
  loc_1081A68: If (var_A0 = "Add") Then
  loc_1081A98:   Set var_8C = Me.Txt
  loc_1081A9E:   Call 0.Method_Proc_30_95_1081CD00 (CInt(3), var_A4, var_A0, "Select Count(*) From KOT Where DocID='", var_9C, -1)
  loc_1081ABF:   unk_5890AB.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_1081ACF:    = var_C4.Item()
  loc_1081AD7:    = var_D8.Value
  loc_1081B04:   If (var_A4.Text.Fields > 0) Then
  loc_1081B0D:     Call 0.Method_arg_50 (var_A0)
  loc_1081B2E:     MsgBox("Duplicate KOT No.", &H40, CVar(var_A0), var_108, var_118)
  loc_1081B44:     Call Proc_30_100_11870D8(MemVar_1F95044)
  loc_1081B57:     Set var_8C = Me.Txt
  loc_1081B5D:     Call 0.Method_Proc_30_95_1081CD00 (CInt(3), var_A4)
  loc_1081B65:     var_A4.Text = var_A0
  loc_1081B79:     Proc_30_95_1081CD0 = 0
  loc_1081B7F:   End If
  loc_1081B7F: End If
  loc_1081BA4: For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_11C 'Integer
  loc_1081BAE:   var_BC = CVar(CLng(var_88)) 'Long
  loc_1081BB6:   var_F8 = CVar(CLng(&HA)) 'Long
  loc_1081BD6:   var_108 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1081BF2:   If CBool(var_108 <> vbNullString) Then
  loc_1081BF9:     var_BC = CVar(CLng(var_88)) 'Long
  loc_1081C01:     var_F8 = CVar(CLng(7)) 'Long
  loc_1081C31:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1081C59:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_108, var_118)
  loc_1081C7F:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1081C8B:       Set var_8C = Me.FGrid
  loc_1081CAF:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1081CBC:       Proc_30_95_1081CD0 = 0
  loc_1081CC2:     End If
  loc_1081CC2:   End If
  loc_1081CC5: Next var_11C 'Integer
  loc_1081CCA: Proc_30_95_1081CD0 = 
End Sub

Public Sub Proc_30_96_FFCD80
  'Data Table: 58908C
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_FFCB89: Me.LblVPrefix.Caption = vbNullString
  loc_FFCB9E: Me.LblCurStockStr.Caption = vbNullString
  loc_FFCBB4: Set var_8C = Me.Txt
  loc_FFCBBA: Call 0.Method_Proc_30_96_FFCD80C (var_8E, var_86)
  loc_FFCBCA: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FFCBE0:   Set var_8C = Me.Txt
  loc_FFCBE6:   Call 0.Method_Proc_30_96_FFCD800 (CInt(var_86), var_98)
  loc_FFCBEE:   var_98.Text = vbNullString
  loc_FFCC0A:   Set var_8C = Me.Txt
  loc_FFCC10:   Call 0.Method_Proc_30_96_FFCD800 (CInt(var_86), var_98)
  loc_FFCC18:   var_98.Tag = vbNullString
  loc_FFCC27: Next var_92 'Byte
  loc_FFCC3B: Set var_8C = Me.Txt
  loc_FFCC41: Call 0.Method_Proc_30_96_FFCD800 (CInt(2), var_98)
  loc_FFCC49: var_98.Text = "00:00"
  loc_FFCC63: Set var_8C = Me.Txt
  loc_FFCC69: Call 0.Method_Proc_30_96_FFCD800 (CInt(2), var_98)
  loc_FFCC71: var_98.Tag = vbNullString
  loc_FFCC90: Me.FGrid.Rows = 1
  loc_FFCCB6: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_FFCCBE: Set var_98 = Me.FGrid
  loc_FFCCD8: var_A8 = 1
  loc_FFCCE4: var_DC = CVar(CLng(1)) 'Long
  loc_FFCCF7: Set var_8C = Me.FGrid
  loc_FFCCFD: LateIdCallSt
  loc_FFCD08: var_A8 = 1
  loc_FFCD14: var_DC = CVar(CLng(2)) 'Long
  loc_FFCD27: Set var_8C = Me.FGrid
  loc_FFCD2D: LateIdCallSt
  loc_FFCD4B: Me.FGrid.FixedRows = 1
  loc_FFCD5F: Me.ChkNCKOT.Value = 0
  loc_FFCD74: Me.LblState.Caption = vbNullString
  loc_FFCD7C: Exit Sub
  loc_FFCD7D: StAryRecCopy
End Sub

Public Sub Proc_30_97_1010D70(arg_C) '1010D70
  'Data Table: 58908C
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_1010B56: Set var_8C = Me.Txt
  loc_1010B5C: Call 0.Method_Proc_30_97_1010D70C (var_8E, var_86)
  loc_1010B6C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1010B82:   Set var_8C = Me.Txt
  loc_1010B88:   Call 0.Method_Proc_30_97_1010D700 (CInt(var_86), var_98)
  loc_1010B90:   var_98.Enabled = arg_C
  loc_1010B9F: Next var_92 'Byte
  loc_1010BB2: Set var_8C = Me.cmdNCBill
  loc_1010BB8: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(Not(arg_C))
  loc_1010BD0: Set var_8C = Me.Txt
  loc_1010BD6: Call 0.Method_Proc_30_97_1010D700 (CInt(2), var_98)
  loc_1010BDE: var_98.Enabled = False
  loc_1010BF7: Set var_8C = Me.Txt
  loc_1010BFD: Call 0.Method_Proc_30_97_1010D700 (CInt(3), var_98)
  loc_1010C05: var_98.Enabled = False
  loc_1010C1E: Set var_8C = Me.Txt
  loc_1010C24: Call 0.Method_Proc_30_97_1010D700 (CInt(1), var_98)
  loc_1010C2C: var_98.Enabled = False
  loc_1010C45: Set var_8C = Me.Txt
  loc_1010C4B: Call 0.Method_Proc_30_97_1010D700 (CInt(0), var_98)
  loc_1010C53: var_98.Enabled = False
  loc_1010C6C: Set var_8C = Me.Txt
  loc_1010C72: Call 0.Method_Proc_30_97_1010D700 (CInt(&HE), var_98)
  loc_1010C7A: var_98.Enabled = False
  loc_1010C93: Set var_8C = Me.Txt
  loc_1010C99: Call 0.Method_Proc_30_97_1010D700 (CInt(8), var_98)
  loc_1010CA1: var_98.Enabled = False
  loc_1010CBA: Set var_8C = Me.Txt
  loc_1010CC0: Call 0.Method_Proc_30_97_1010D700 (CInt(9), var_98)
  loc_1010CC8: var_98.Enabled = False
  loc_1010CE1: Set var_8C = Me.Txt
  loc_1010CE7: Call 0.Method_Proc_30_97_1010D700 (CInt(&HA), var_98)
  loc_1010CEF: var_98.Enabled = False
  loc_1010D08: Me.ChkNCKOT.Enabled = arg_C
  loc_1010D1B: If (global_188 = "Auto") Then
  loc_1010D2B:   Set var_8C = Me.Txt
  loc_1010D31:   Call 0.Method_Proc_30_97_1010D700 (CInt(&HB), var_98)
  loc_1010D39:   var_98.Enabled = False
  loc_1010D52:   Set var_8C = Me.Txt
  loc_1010D58:   Call 0.Method_Proc_30_97_1010D700 (CInt(&HC), var_98)
  loc_1010D60:   var_98.Enabled = False
  loc_1010D6C: End If
  loc_1010D6C: Exit Sub
  loc_1010D6D: If  ThenNext
  loc_1010D6D: End If
End Sub

Public Sub Proc_30_98_F6E7AC
  'Data Table: 58908C
  loc_F6E680: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F6E692:   Me.DGItem.Visible = False
  loc_F6E69A: End If
  loc_F6E6B6: If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_F6E6C8:   Me.DGWaiter.Visible = False
  loc_F6E6D0: End If
  loc_F6E6EC: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_F6E6FE:   Me.DGMember.Visible = False
  loc_F6E706: End If
  loc_F6E722: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F6E734:   Me.DGTable.Visible = False
  loc_F6E73C: End If
  loc_F6E758: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_F6E76A:   Me.DGRest.Visible = False
  loc_F6E772: End If
  loc_F6E78E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6E7A0:   Me.FGPoint.Visible = False
  loc_F6E7A8: End If
  loc_F6E7A8: Exit Sub
End Sub

Public Sub Proc_30_99_F0BAE0
  'Data Table: 58908C
  loc_F0BA04: Call Proc_30_98_F6E7AC()
  loc_F0BA14: Set var_88 = Me.Txt
  loc_F0BA1A: Call 0.Method_Proc_30_99_F0BAE00 (CInt(1))
  loc_F0BA43: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0BA46:   Exit Sub
  loc_F0BA47: End If
  loc_F0BA52: Set var_88 = Me.Txt
  loc_F0BA58: Call 0.Method_Proc_30_99_F0BAE00 (CInt(0), var_8C)
  loc_F0BA81: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0BA84:   Exit Sub
  loc_F0BA85: End If
  loc_F0BABC: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0BABF:   Call TopCtrl1_UnknownEvent_16()
  loc_F0BAC7: Else
  loc_F0BACD:   Call 0.Method_arg_1E8 (var_88)
  loc_F0BAD5:   Call var_88.SetFocus
  loc_F0BADE: End If
  loc_F0BADE: Exit Sub
End Sub

Public Sub Proc_30_100_11870D8
  'Data Table: 58908C
  Dim var_94 As String
  Dim var_A4 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_110 As String
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_120 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim unk_5890AB As Connection15
  Dim var_134 As Field20
  Dim var_184 As TextBox
  loc_1186D3C: var_90 = global_152
  loc_1186D53: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1186D84: Set var_A8 = Me.Txt
  loc_1186D8A: Call 0.Method_Proc_30_100_11870D80 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_1186D99: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_1186DA1: var_EC = -1 & var_CC 
  loc_1186DB5: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_1186DC0: Set var_8C = var_134
  loc_1186DFC: If (var_8C.RecordCount > 0) Then
  loc_1186E3B:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_1186E6F:     global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1186E9A:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_1186EAF:     var_CC = (var_AC.Value + 1)
  loc_1186EB8:     global_116 = CLng(var_CC)
  loc_1186EC9:   End If
  loc_1186EC9: End If
  loc_1186EE4: var_CC = CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) 'String
  loc_1186EF4: var_BC = Space((5 - Len(var_90)))
  loc_1186EFC: var_DC = (var_CC + var_AC.Value)
  loc_1186F10: var_EC = Space((5 - Len(global_112)))
  loc_1186F18: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_1186F25: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_112))
  loc_1186F3E: var_14C = Space((8 - Len(CStr(global_116))))
  loc_1186F46: var_15C = (var_130 + var_14C)
  loc_1186F55: var_17C = (var_15C + CVar(CStr(global_116)))
  loc_1186F60: global_108 = CStr(var_17C)
  loc_1186F96: Me.LblVPrefix.Caption = global_112
  loc_1186FAF: Set var_A8 = Me.Txt
  loc_1186FB5: Call 0.Method_Proc_30_100_11870D80 (CInt(3), var_AC)
  loc_1186FBD: var_AC.Text = global_108
  loc_1186FCF: var_120 = 0
  loc_118700D: unk_5890AB.Execute "Select CurTokenNoKOT From Depart Where Logsite_code='" & MemVar_1F95078 & "' And Code='" & LocalRestCode & "'", var_AC.Value, -1
  loc_1187015: var_A8 = var_A8.Fields
  loc_118701D: var_120 = var_AC.Item(var_AC)
  loc_1187025: var_134 = var_134.Value
  loc_1187030: Proc_6_39_E7D3A0(CVar("Select CurTokenNoKOT From Depart Where Logsite_code='" & MemVar_1F95078 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="), var_CC)
  loc_1187038: var_A4 = CStr(CVar("Select CurTokenNoKOT From Depart Where Logsite_code='" & MemVar_1F95078 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_1187047: var_110 = CStr((Val(var_A4) + CDbl(1)))
  loc_1187055: Set var_180 = Me.Txt
  loc_118705B: Call 0.Method_Proc_30_100_11870D80 (CInt(&HE), var_184, CStr(var_EC & " Order By VP.Date_From DESC"))
  loc_1187063: var_184.Text = var_CC
  loc_11870A3: Set var_A8 = Me.Txt
  loc_11870A9: Call 0.Method_Proc_30_100_11870D80 (CInt(0), var_AC)
  loc_11870B1: var_AC.Text = CStr(global_116)
  loc_11870C6: var_88 = global_108
  loc_11870CE: Set var_8C = Nothing
  loc_11870D1: Proc_30_100_11870D8 = global_116
End Sub

Public Sub Proc_30_101_FC1E0C
  'Data Table: 58908C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC1C8F: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_FC1C94:   var_92 = 4 'Byte
  loc_FC1C98: End If
  loc_FC1CA1: Set var_98 = Me.TxtGrid
  loc_FC1CA7: Call 0.Method_Proc_30_101_FC1E0C0 (0, var_B0)
  loc_FC1CCA: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC1CFE: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC1D22:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC1D25:     GoTo loc_FC1DF7
  loc_FC1D28:   End If
  loc_FC1D2C:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC1D56:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC1D60:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC1D95:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC1DB9:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC1DD2:     Set var_98 = Me.TxtGrid
  loc_FC1DD8:     Call 0.Method_Proc_30_101_FC1E0C0 (0, var_B0, CVar(CLng(var_92)))
  loc_FC1DE0:     var_B0.SetFocus
  loc_FC1DF1:     Proc_30_101_FC1E0C = 0
  loc_FC1DF7:     ' Referenced from: FC1D25
  loc_FC1DF7:   End If
  loc_FC1DFA: Next var_D4 'Integer
  loc_FC1E04: Proc_30_101_FC1E0C = &HFF
End Sub

Public Sub Proc_30_102_1265798
  'Data Table: 58908C
  Dim var_90 As String
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_FC As Variant
  Dim var_114 As String
  loc_1265232: Set global_96 = New 
  loc_1265244: Me.Recordset15.CursorLocation = 3
  loc_126524F: var_8C = global_68
  loc_126525A: If (var_8C = "Hall") Then
  loc_1265282:   var_A0 = CVar("Select T.Code,T.Name As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')and  T.Type in('HL') Order by T.Code") 'String
  loc_126528C:   Me.Open var_A0, CVar(MemVar_1F95044), 3
  loc_12652A3:   Set var_88 = Me.Label1
  loc_12652A9:   Call 0.Method_Proc_30_102_12657980 (2, var_B4, "Hall")
  loc_12652B1:   var_B4.Caption = 1
  loc_12652CD:   Set var_88 = Me.DGTable
  loc_12652EC:   DGTable.DispID_69.Item(1).Caption = "Hall"
  loc_1265303:   global_156 = "HALL"
  loc_126530D:   global_160 = "HL"
  loc_1265322:   Set var_88 = Me.DGTable
  loc_1265341:   DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_1265363:   Set var_88 = Me.DGTable
  loc_1265382:   DGTable.DispID_69.Item(3).Width = CDbl(0)
  loc_12653A3:   Set var_C0 = Me.DGTable
  loc_12653D7:   Set var_88 = Me.DGTable
  loc_12653E8:   Set var_B4 = DGTable.DispID_69
  loc_1265407:   var_FC = CVar(((var_B4.Item(0).Width + DGTable.DispID_69.Item(1).Width) + CDbl(650))) 'Single
  loc_1265416:   Me.DGTable.Width = var_FC
  loc_1265436: Else
  loc_126543E:   If (var_8C = "Outlet") Then
  loc_126544D:     Set var_88 = Me.Label1
  loc_1265453:     Call 0.Method_Proc_30_102_12657980 (2, var_B4)
  loc_126545B:     var_B4.Caption = "Table #"
  loc_1265477:     Set var_88 = Me.DGTable
  loc_1265496:     DGTable.DispID_69.Item(1).Caption = "Table No"
  loc_12654CC:     var_114 = "Select T.Code,T.Code As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and T.Type in ('TB') And RestCode='"
  loc_12654E7:     Me.Open CVar(var_114 & LocalRestCode & "' Order By T.Code"), CVar(MemVar_1F95044), 3
  loc_12654FE:     global_156 = "REST"
  loc_1265508:     global_160 = "TB"
  loc_126551D:     Set var_88 = Me.DGTable
  loc_126553C:     DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_126555E:     Set var_88 = Me.DGTable
  loc_126557D:     DGTable.DispID_69.Item(3).Width = CDbl(0)
  loc_126559E:     Set var_C0 = Me.DGTable
  loc_12655D2:     Set var_88 = Me.DGTable
  loc_12655E3:     Set var_B4 = DGTable.DispID_69
  loc_1265602:     var_FC = CVar(((var_B4.Item(0).Width + DGTable.DispID_69.Item(1).Width) + CDbl(650))) 'Single
  loc_1265611:     Me.DGTable.Width = var_FC
  loc_1265631:   Else
  loc_1265639:     If (var_8C = "Room Service") Then
  loc_1265648:       Set var_88 = Me.Label1
  loc_126564E:       Call 0.Method_Proc_30_102_12657980 (2, var_B4, "Room #")
  loc_1265656:       var_B4.Caption = 1
  loc_1265672:       Set var_88 = Me.DGTable
  loc_1265691:       DGTable.DispID_69.Item(1).Caption = "Room No"
  loc_12656C0:       var_90 = "SELECT RC.RoomNo AS Code, RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3,RC.Docid,RC.Adult FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_12656C7:       var_A0 = CVar(var_90 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO") 'String
  loc_12656D1:       Me.Open var_A0, CVar(MemVar_1F95044), 3
  loc_12656E2:       global_160 = "RO"
  loc_12656F8:       Set var_88 = Me.DGTable
  loc_1265717:       DGTable.DispID_69.Item(1).Width = CDbl(1515)
  loc_126573A:       Set var_88 = Me.DGTable
  loc_1265759:       DGTable.DispID_69.Item(2).Width = CDbl(3539)
  loc_126576A:       GoTo loc_126576D
  loc_126576D:       ' Referenced from:     126576A
  loc_126576D:     End If
  loc_126576D:   End If
  loc_126576D: End If
  loc_1265776: CVarUnk
  loc_126577B: VerifyVarObj
  loc_1265781: Set var_88 = Me.DGTable
  loc_1265787: LateIdStAd
  loc_1265795: Exit Sub
End Sub

Public Sub Proc_30_103_EFA714(arg_C, arg_10, arg_14) 'EFA714
  'Data Table: 58908C
  Dim var_8A As Integer
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  loc_EFA65D: var_88 = vbNullString
  loc_EFA674: arg_C = CStr(Trim(arg_C))
  loc_EFA680: var_8A = CInt(Len(arg_C))
  loc_EFA691: If (arg_10 = "D") Then
  loc_EFA6C6:   var_E0 = (Chr(&HE) + Chr(&HF))
  loc_EFA6D3:   var_F0 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_EFA6ED:   var_130 = (var_E0 + Space(CLng((var_F0 / 2))))
  loc_EFA6F7:   var_150 = (var_130 + CVar(arg_C))
  loc_EFA6FC:   var_88 = CStr(var_150)
  loc_EFA70E: End If
  loc_EFA70E: Proc_30_103_EFA714 = var_8A
End Sub

Public Sub Proc_30_104_11FFF98(arg_C, arg_10, arg_14) '11FFF98
  'Data Table: 58908C
  Dim var_E0 As String
  Dim var_134 As Variant
  Dim var_164 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_264 As Variant
  Dim var_DC As Variant
  Dim var_194 As Variant
  Dim var_244 As Variant
  Dim var_184 As Variant
  Dim arg_10 As Integer
  loc_11FFB35: var_90 = vbNullString
  loc_11FFB3B: var_94 = vbNullString
  loc_11FFB41: var_98 = vbNullString
  loc_11FFB47: var_9C = vbNullString
  loc_11FFB52: If (MemVar_1F953C4 = "Y") Then
  loc_11FFB5C:   var_E0 = vbNullString & "DATE "
  loc_11FFB8D:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_11FFBA0: End If
  loc_11FFBA8: If (MemVar_1F953C8 = "Y") Then
  loc_11FFC0C:   var_164 = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, "dd/MM/yy")))), 0))
  loc_11FFC33:   var_1B4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_11FFC3B:   var_1D4 = (var_164 - Len(var_1B4))
  loc_11FFC4C:   var_204 = (CVar(var_8C) + Space(CLng(var_1D4)))
  loc_11FFC55:   var_224 = (var_204 + " PAGE NO ")
  loc_11FFC77:   var_264 = (var_224 + Trim(Str(arg_C)))
  loc_11FFC7C:   var_8C = CStr(var_264)
  loc_11FFCA9: End If
  loc_11FFCB7: If (MemVar_1F953CC = "K") Then
  loc_11FFCC4:   If (Len(MemVar_1F95130) <= &H28) Then
  loc_11FFCDD:     var_DC = (CVar(var_90) + Chr(&HF))
  loc_11FFCF1:     var_134 = (Format(MemVar_1F950EC, "dd/MM/yy") + Chr(&HE))
  loc_11FFD05:     var_164 = (0 + Chr(&H1B))
  loc_11FFD19:     var_194 = (var_164 + Chr(&H45))
  loc_11FFD23:     var_1B4 = (Trim(Str(arg_C)) + CVar(MemVar_1F95130))
  loc_11FFD37:     var_1D4 = (var_1B4 + Chr(&H1B))
  loc_11FFD4B:     var_204 = (var_1D4 + Chr(&H46))
  loc_11FFD5F:     var_244 = (var_204 + Chr(&HE))
  loc_11FFD64:     var_90 = CStr(Str(arg_C))
  loc_11FFD8B:   Else
  loc_11FFDA1:     var_DC = (CVar(var_90) + Chr(&H12))
  loc_11FFDB5:     var_134 = (Format(MemVar_1F950EC, "dd/MM/yy") + Chr(&HE))
  loc_11FFDC9:     var_164 = (0 + Chr(&HF))
  loc_11FFDD3:     var_184 = (var_164 + CVar(MemVar_1F95130))
  loc_11FFDE7:     var_1B4 = (Chr(&H45) + Chr(&H12))
  loc_11FFDEC:     var_90 = CStr(var_1B4)
  loc_11FFE04:   End If
  loc_11FFE0E:   If (Len(MemVar_1F95134) > 0) Then
  loc_11FFE3A:     Call Proc_30_103_EFA714(MemVar_1F95134, "D", CInt(Val(CStr(arg_14))))
  loc_11FFE43:     var_94 = var_270 & var_270
  loc_11FFE4F:   End If
  loc_11FFE59:   If (Len(MemVar_1F95138) > 0) Then
  loc_11FFE85:     Call Proc_30_103_EFA714(MemVar_1F95138, "D", CInt(Val(CStr(arg_14))))
  loc_11FFE8E:     var_98 = var_270 & var_270
  loc_11FFE9A:   End If
  loc_11FFEA4:   If (Len(MemVar_1F9513C) > 0) Then
  loc_11FFED0:     Call Proc_30_103_EFA714(MemVar_1F9513C, "D", CInt(Val(CStr(arg_14))))
  loc_11FFED9:     var_9C = var_270 & var_270
  loc_11FFEE5:   End If
  loc_11FFEE5: End If
  loc_11FFEEF: If (Len(var_8C) > 0) Then
  loc_11FFEF7:   Print 1, var_8C
  loc_11FFF03:   arg_10 = (arg_10 + 1)
  loc_11FFF06: End If
  loc_11FFF10: If (Len(var_90) > 0) Then
  loc_11FFF18:   Print 1, var_90
  loc_11FFF24:   arg_10 = (arg_10 + 1)
  loc_11FFF27: End If
  loc_11FFF31: If (Len(var_94) > 0) Then
  loc_11FFF39:   Print 1, var_94
  loc_11FFF45:   arg_10 = (arg_10 + 1)
  loc_11FFF48: End If
  loc_11FFF52: If (Len(var_98) > 0) Then
  loc_11FFF5A:   Print 1, var_98
  loc_11FFF66:   arg_10 = (arg_10 + 1)
  loc_11FFF69: End If
  loc_11FFF73: If (Len(var_9C) > 0) Then
  loc_11FFF7B:   Print 1, var_9C
  loc_11FFF87:   arg_10 = (arg_10 + 1)
  loc_11FFF8A: End If
  loc_11FFF90: Proc_30_104_11FFF98 = arg_10
  loc_11FFF96: CopyBytes 5120
End Sub

Public Sub Proc_30_105_F22F70(arg_C, arg_10, arg_14) 'F22F70
  'Data Table: 58908C
  Dim unk_5890AB As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F22EB5: Proc_6_7_F26918(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F22EE7: unk_5890AB.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' And Party='' Order by Appdate Desc"), -1, var_15C
  loc_F22EF2: Set var_90 = var_15C
  loc_F22F24: If (var_90.RecordCount > 0) Then
  loc_F22F52:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F22F62: Else
  loc_F22F65:   var_8C = CDbl(0)
  loc_F22F68: End If
  loc_F22F68: Proc_30_105_F22F70 = var_8C
End Sub

Public Sub Proc_30_106_12605C0
  'Data Table: 58908C
  Dim var_A0 As Variant
  Dim var_9C As Variant
  Dim var_94 As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_130 As Variant
  Dim var_150 As Long
  Dim var_174 As Variant
  Dim var_344 As Double
  Dim var_200 As TextBox
  Dim var_A4 As String
  Dim var_234 As Variant
  Dim var_2A4 As Variant
  Dim unk_5890AB As Connection15
  Dim var_88 As Recordset15
  loc_12600E2: Set var_9C = Me.Txt
  loc_12600E8: Call 0.Method_Proc_30_106_12605C00 (CInt(1), var_A0)
  loc_1260116: var_94 = CInt(CLng(Me.FGrid.Row))
  loc_126013C: If (CLng(Me.FGrid.Col) = CLng(9)) Then
  loc_1260152:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1260157:   var_E4 = 1
  loc_126016A:   var_104 = Me.FGrid.TextMatrix)
  loc_126018E:   var_150 = &HA
  loc_12601A1:   var_174 = Me.FGrid.TextMatrix)
  loc_12601EA:   var_344 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12601F9:   Set var_1FC = Me.Txt
  loc_12601FF:   Call 0.Method_Proc_30_106_12605C00 (1, var_200, var_204, var_344, CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), var_174)
  loc_1260207:   var_150 = var_200.Text
  loc_1260215:   Proc_6_7_F26918(var_224, CVar(var_204), CVar(CLng(Me.FGrid.Row)), var_104)
  loc_1260259:   var_A4 = "SELECT SD.RestCode, Depart.ShortName, IM.DispCode, FD.FreeItem, IM.NAME as FreeItemName, IM.Unit, FD.FreeQty, I1.code as MainCode,I1.Name, SD.Qty FROM SchemeItemDetail SD JOIN FreeItemDetail FD ON SD.Code = FD.Code And SD.RestCode = FD.RestCode JOIN ItemMast IM on FD.FreeItem=IM.Code And FD.RestCode=IM.RestCode Join Depart on SD.RestCode=Depart.Code Join Itemmast I1 on SD.Itemcode=I1.code And SD.RestCode=I1.RestCode" & " WHERE SD.restCode='"
  loc_1260290:   var_234 = CVar(var_A4 & CStr(var_104) & "' AND SD.ItemCode ='" & CStr(var_174) & "' AND SD.Qty <=" & CStr(var_344) & " AND ") 'String
  loc_12602B2:   var_2A4 = var_234 & var_224 & " Between SD.Appdate And SD.EndDate AND SD.LogSite_Code='" & CVar(MemVar_1F95078) & "' AND SD.Active='Y' And ISNULL(SD.Days,'') Like '%" 
  loc_12602D0:   unk_5890AB.Execute CStr(var_2A4 & Trim(Str(Weekday(Me.FGrid.Text, 1))) & "%' Order By SD.Qty Desc"), var_338, -1
  loc_12602DB:   Set var_88 = var_33C
  loc_1260349:   If (var_88.RecordCount > 0) Then
  loc_12603AF:     var_90 = CStr(var_88.Fields.Item("Maincode").Value)
  loc_12603E2:     For var_34C = var_94 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_34C 'Integer
  loc_12603FB:       Me.FGrid.Row = CVar(CLng(var_92))
  loc_1260436:       If (CLng(Me.FGrid.CellBackColor) = Me.lblclr.BackColor) Then
  loc_126043D:         var_C4 = CVar(CLng(var_92)) 'Long
  loc_1260442:         var_E4 = &HA
  loc_1260471:         If (CStr(Me.FGrid.TextMatrix)) = CStr(var_88.Fields.Item("FreeItem").Value)) Then
  loc_1260478:           var_C4 = CVar(CLng(var_94)) 'Long
  loc_1260480:           var_E4 = CVar(CLng(9)) 'Long
  loc_12604AB:           If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_12604B2:             var_C4 = CVar(CLng(var_92)) 'Long
  loc_12604BA:             var_E4 = CVar(CLng(9)) 'Long
  loc_12604BF:             var_130 = "Yes"
  loc_12604C9:             Set var_9C = Me.FGrid
  loc_12604CF:             LateIdCallSt
  loc_12604DD:           Else
  loc_12604E1:             var_C4 = CVar(CLng(var_94)) 'Long
  loc_12604E9:             var_E4 = CVar(CLng(9)) 'Long
  loc_1260514:             If (CStr(Me.FGrid.TextMatrix)) = "No") Then
  loc_126051B:               var_C4 = CVar(CLng(var_92)) 'Long
  loc_1260523:               var_E4 = CVar(CLng(9)) 'Long
  loc_1260528:               var_130 = "No"
  loc_1260532:               Set var_9C = Me.FGrid
  loc_1260538:               LateIdCallSt
  loc_1260546:             Else
  loc_126054A:               var_C4 = CVar(CLng(var_94)) 'Long
  loc_1260552:               var_E4 = CVar(CLng(9)) 'Long
  loc_126057D:               If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1260584:                 var_C4 = CVar(CLng(var_92)) 'Long
  loc_126058C:                 var_E4 = CVar(CLng(9)) 'Long
  loc_1260591:                 var_130 = vbNullString
  loc_126059B:                 Set var_9C = Me.FGrid
  loc_12605A1:                 LateIdCallSt
  loc_12605AC:               End If
  loc_12605AC:             End If
  loc_12605AC:           End If
  loc_12605AC:           Exit For
  loc_12605AF:         End If
  loc_12605AF:       End If
  loc_12605B2:     Next var_34C 'Integer
  loc_12605B7:     ' Referenced from: 12605AC
  loc_12605B7:   End If
  loc_12605B7: End If
  loc_12605BC: Set var_88 = Nothing
  loc_12605BF: Exit Sub
End Sub

Public Sub Proc_30_107_12C1148(arg_C, arg_10) '12C1148
  'Data Table: 58908C
  Dim var_94 As String
  Dim unk_5890AB As Connection15
  Dim var_8C As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_FC As Variant
  Dim var_174 As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_1BC As Variant
  Dim var_2C4 As Variant
  Dim var_2E4 As Variant
  loc_12C0B7E: var_94 = "Select K.Sno,I.Name as ItemName,K.Description,K.Qty,K.Rate,K.Amount,K.VoidYN As Cancel,Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where K.DocID='" & arg_C
  loc_12C0B8E: unk_5890AB.Execute var_94 & "' Order By K.Sno", var_B8, -1
  loc_12C0B99: Set var_8C = var_BC
  loc_12C0BBD: If (var_8C.RecordCount > 0) Then
  loc_12C0BC3:   var_8C.MoveFirst
  loc_12C0BC8:   ' Referenced from: 12C1131
  loc_12C0BD7:   If Not(var_8C.EOF) Then
  loc_12C0BDD:     var_C8 = arg_10
  loc_12C0BE8:     If (var_C8 = "<Item-Qty>") Then
  loc_12C0C11:       Proc_6_39_E7D3A0(var_134, CVar(var_8C.Fields.Item("qty")))
  loc_12C0C4F:       var_BC = var_8C.Fields
  loc_12C0C7F:       var_FC = (CVar(var_BC & Proc_6_38_E69628(CVar(var_BC.Item("ItemName")), var_90)) + Space(1))
  loc_12C0CA6:       var_174 = (1 + Format(var_134, "0"))
  loc_12C0CBA:       var_1EC = " Void"
  loc_12C0CDF:       var_22C = (var_174 + IIf((var_8C.Fields.Item("Cancel").Value = "Y"), var_1EC, vbNullString))
  loc_12C0CE8:       var_24C = (var_22C + "%0D")
  loc_12C0CED:       var_90 = CStr(var_24C)
  loc_12C0D24:     Else
  loc_12C0D2C:       If (var_C8 = "<Item-Qty-Rate>") Then
  loc_12C0D55:         Proc_6_39_E7D3A0(var_134, CVar(var_8C.Fields.Item("qty")))
  loc_12C0D80:         Proc_6_39_E7D3A0(var_1EC, CVar(var_8C.Fields.Item("Rate")))
  loc_12C0DEE:         var_FC = (CVar(1 & Proc_6_38_E69628(CVar(var_8C.Fields.Item("ItemName")), var_90)) + Space(1))
  loc_12C0E15:         var_174 = (1 + Format(var_134, "0"))
  loc_12C0E29:         var_1BC = (var_174 + Space(1))
  loc_12C0E50:         var_22C = (1 + Format(var_1EC, "0.00"))
  loc_12C0E89:         var_2C4 = (var_22C + IIf((var_8C.Fields.Item("Cancel").Value = "Y"), " Void", vbNullString))
  loc_12C0E92:         var_2E4 = (var_2C4 + "%0D")
  loc_12C0E97:         var_90 = CStr(var_2E4)
  loc_12C0EDE:       Else
  loc_12C0EE6:         If (var_C8 = "<Item-Qty-Amt>") Then
  loc_12C0F0F:           Proc_6_39_E7D3A0(var_134, CVar(var_8C.Fields.Item("qty")), 1, var_1BC)
  loc_12C0F3A:           Proc_6_39_E7D3A0(var_1EC, CVar(var_8C.Fields.Item("Amount")), 1)
  loc_12C0FA8:           var_FC = (CVar(var_FC & Proc_6_38_E69628(CVar(var_8C.Fields.Item("ItemName")), var_90)) + Space(1))
  loc_12C0FCF:           var_174 = (1 + Format(var_134, "0"))
  loc_12C0FE3:           var_1BC = (var_174 + Space(1))
  loc_12C100A:           var_22C = (1 + Format(var_1EC, "0.00"))
  loc_12C1043:           var_2C4 = (var_22C + IIf((var_8C.Fields.Item("Cancel").Value = "Y"), " Void", vbNullString))
  loc_12C104C:           var_2E4 = (var_2C4 + "%0D")
  loc_12C1051:           var_90 = CStr(var_2E4)
  loc_12C1095:         End If
  loc_12C1095:       End If
  loc_12C1095:     End If
  loc_12C10CE:     If (Proc_6_38_E69628(CVar(var_8C.Fields.Item("Description")), 1, var_1BC) <> vbNullString) Then
  loc_12C1115:       var_90 = var_FC & 1 & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Description")), "(", var_90) & ")" & "D"
  loc_12C1129:     End If
  loc_12C112C:     var_8C.MoveNext
  loc_12C1131:     GoTo loc_12C0BC8
  loc_12C1134:   End If
  loc_12C1134: End If
  loc_12C1137: var_88 = var_90
  loc_12C113F: Set var_8C = Nothing
  loc_12C1142: Proc_30_107_12C1148 = var_FC
End Sub

Public Sub Proc_30_108_10160AC(arg_C, arg_10, arg_14) '10160AC
  'Data Table: 58908C
  Dim var_94 As String
  Dim unk_5890AB As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_F4 As Variant
  Dim arg_14 As Double
  Dim var_8E As Integer
  Dim var_D4 As Variant
  loc_1015EC0: var_94 = "Select K.Sno,I.Name as ItemName,K.Description,K.Qty,K.Rate,K.Amount,K.VoidYN As Cancel,Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where K.DocID='" & arg_C
  loc_1015ED0: unk_5890AB.Execute var_94 & "' Order By K.Sno", var_B8, -1
  loc_1015EDB: Set var_88 = var_BC
  loc_1015EFF: If (var_88.RecordCount > 0) Then
  loc_1015F05:   var_88.MoveFirst
  loc_1015F55:   var_8C = Replace(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName"))), "&", vbNullString, 1, -1, 0)
  loc_1015F92:   Proc_6_39_E7D3A0(var_D4, CVar(var_88.Fields.Item("Amount")))
  loc_1015F9A:   var_F4 = (CVar(arg_14) + var_D4)
  loc_1015F9F:   arg_14 = CSng(var_F4)
  loc_1015FB1:   var_88.MoveNext
  loc_1015FB8:   var_8E = 0
  loc_1015FBB:   ' Referenced from: 1016027
  loc_1015FCA:   If Not(var_88.EOF) Then
  loc_1015FD3:     var_8E = (var_8E + 1)
  loc_1016003:     Proc_6_39_E7D3A0(var_D4, CVar(var_88.Fields.Item("Amount")), CVar(arg_14), var_8E)
  loc_101600B:     var_F4 = (var_8E + var_D4)
  loc_1016010:     arg_14 = CSng(var_F4)
  loc_1016022:     var_88.MoveNext
  loc_1016027:     GoTo loc_1015FBB
  loc_101602A:   End If
  loc_1016047:   var_D4 = (Left(var_8C, &H18) + "...")
  loc_101608B:   arg_10 = CStr(IIf((Len(var_8C) <= &H1B), var_8C, var_D4) & " And " & CVar(CStr(var_8E)) & " More")
  loc_10160A2: End If
  loc_10160A7: Set var_88 = Nothing
  loc_10160AA: Exit Sub
End Sub
