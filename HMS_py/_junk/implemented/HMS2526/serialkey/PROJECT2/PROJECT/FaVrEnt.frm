VERSION 5.00
Begin VB.Form FaVrEnt
  Caption = "Voucher Entry"
  BackColor = &HC0C0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  Icon = "FaVrEnt.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12690
  ClientHeight = 7890
  Begin Frame ChqPrint
    Caption = "Cheque Print"
    BackColor = &HCBBE9E&
    Left = 10500
    Top = 4080
    Width = 5010
    Height = 2145
    Visible = 0   'False
    TabIndex = 190
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox TxtChequeAmt
      Left = 2055
      Top = 585
      Width = 1470
      Height = 285
      TabIndex = 193
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TxtCrParty
      Left = 75
      Top = 195
      Width = 4845
      Height = 285
      TabIndex = 191
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton Command1
      Caption = "Cheque Print"
      Left = 3600
      Top = 540
      Width = 1335
      Height = 375
      TabIndex = 194
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox Text3
      Left = 75
      Top = 585
      Width = 1200
      Height = 285
      TabIndex = 192
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CheckBox ChkAcPayee
      Caption = "Ac/Payee"
      BackColor = &HCBBE9E&
      Left = 90
      Top = 945
      Width = 1440
      Height = 255
      TabIndex = 195
      Value = 1
    End
    Begin CheckBox ChkCompName
      Caption = "Company Name"
      BackColor = &HCBBE9E&
      Left = 1815
      Top = 945
      Width = 1440
      Height = 255
      TabIndex = 196
      Value = 1
    End
    Begin OptionButton OptAuthoSign
      Caption = "Authorised Signatory"
      BackColor = &HCBBE9E&
      Left = 75
      Top = 1560
      Width = 1995
      Height = 255
      TabIndex = 199
      Value = 255
    End
    Begin OptionButton OptDirector
      Caption = "Director"
      BackColor = &HCBBE9E&
      Left = 2310
      Top = 1560
      Width = 1995
      Height = 255
      TabIndex = 200
    End
    Begin OptionButton OptPresident
      Caption = "President"
      BackColor = &HCBBE9E&
      Left = 75
      Top = 1800
      Width = 1995
      Height = 255
      TabIndex = 201
    End
    Begin CheckBox ChkAcNo
      Caption = "Account No"
      BackColor = &HCBBE9E&
      Left = 90
      Top = 1200
      Width = 1440
      Height = 255
      Visible = 0   'False
      TabIndex = 197
    End
    Begin OptionButton OptBlank
      Caption = "."
      BackColor = &HCBBE9E&
      Left = 2310
      Top = 1800
      Width = 1995
      Height = 255
      TabIndex = 202
    End
    Begin CheckBox ChkFullDate
      Caption = "Full Date"
      BackColor = &HCBBE9E&
      Left = 3540
      Top = 945
      Width = 1440
      Height = 255
      TabIndex = 198
      Value = 1
    End
    Begin Label Label2
      Caption = "Amount"
      Left = 1365
      Top = 675
      Width = 690
      Height = 180
      TabIndex = 216
      BackStyle = 0 'Transparent
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
    Begin Line Line3
      X1 = 15
      Y1 = 1530
      X2 = 4980
      Y2 = 1530
    End
  End
  Begin TextBox TxtCr
    Index = 6
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 5535
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 36
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGlb
    Index = 0
    BackColor = &HE0E0E0&
    Left = 0
    Top = 5760
    Width = 10380
    Height = 855
    TabIndex = 63
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 255
    BeginProperty Font
      Name = "Courier New"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCHno
    Index = 0
    BackColor = &HFFFFFF&
    Left = 975
    Top = 6675
    Width = 1935
    Height = 225
    TabIndex = 206
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox TXTChDate
    Index = 0
    BackColor = &HFFFFFF&
    Left = 4020
    Top = 6675
    Width = 1125
    Height = 225
    TabIndex = 207
    BorderStyle = 0 'None
    MaxLength = 12
    Appearance = 0 'Flat
  End
  Begin TextBox TXTClrDate
    Index = 0
    BackColor = &HFFFFFF&
    Left = 6405
    Top = 6675
    Width = 1125
    Height = 225
    TabIndex = 208
    BorderStyle = 0 'None
    MaxLength = 12
    Appearance = 0 'Flat
  End
  Begin DataGrid DGAcHlp
    Left = 12405
    Top = 2970
    Width = 4095
    Height = 1725
    Visible = 0   'False
    TabIndex = 113
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12690
    Height = 450
    TabIndex = 205
  End
  Begin Frame FrameRef
    Caption = "Referance Detail"
    BackColor = &HD9B0DD&
    Left = 12375
    Top = 1560
    Width = 8805
    Height = 4395
    Visible = 0   'False
    TabIndex = 162
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton BtnRefAdjOK
      Left = 7860
      Top = 270
      Width = 585
      Height = 495
      TabIndex = 185
      Picture = "FaVrEnt.frx":442
      DisabledPicture = "FaVrEnt.frx":584
      ToolTipText = "Save"
      Style = 1
    End
    Begin Frame FrmList
      Left = 6345
      Top = 1065
      Width = 2010
      Height = 2505
      Visible = 0   'False
      TabIndex = 173
      BorderStyle = 0 'None
      Begin ListView ListView
        Left = 0
        Top = 0
        Width = 1980
        Height = 2490
        TabStop = 0   'False
        TabIndex = 167
      End
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HC0C0FF&
      ForeColor = &H80000012&
      Left = 5895
      Top = 1680
      Width = 690
      Height = 240
      Visible = 0   'False
      TabIndex = 172
      BorderStyle = 0 'None
      MaxLength = 150
      Appearance = 0 'Flat
    End
    Begin MSHFlexGrid FGridRef
      Left = 840
      Top = 840
      Width = 5775
      Height = 3555
      TabIndex = 168
    End
    Begin DataGrid DGRefNo
      Left = 4080
      Top = 1560
      Width = 4530
      Height = 2670
      Visible = 0   'False
      TabIndex = 166
    End
    Begin Label Label1
      Caption = "Balance"
      Index = 24
      BackColor = &H5EB0AC&
      ForeColor = &HC0&
      Left = 4995
      Top = 540
      Width = 690
      Height = 240
      TabIndex = 184
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefAdjBal
      Caption = "999999999.99"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 5730
      Top = 540
      Width = 1230
      Height = 240
      TabIndex = 183
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefAdjDrCrBal
      Caption = "KK"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 6975
      Top = 540
      Width = 270
      Height = 240
      TabIndex = 182
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefAdjDrCr
      Caption = "KK"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 4635
      Top = 540
      Width = 270
      Height = 240
      TabIndex = 181
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefAmtDrCr
      Caption = "Cr."
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2235
      Top = 540
      Width = 270
      Height = 240
      TabIndex = 178
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefAdj
      Caption = "999999999.99"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3405
      Top = 540
      Width = 1230
      Height = 240
      TabIndex = 180
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Adjusted"
      Index = 23
      BackColor = &H5EB0AC&
      ForeColor = &HC0&
      Left = 2550
      Top = 540
      Width = 765
      Height = 240
      TabIndex = 179
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Tr.Amt."
      Index = 22
      BackColor = &H5EB0AC&
      ForeColor = &HC0&
      Left = 90
      Top = 540
      Width = 675
      Height = 240
      TabIndex = 176
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefAmt
      Caption = "999999999.99"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 990
      Top = 540
      Width = 1230
      Height = 240
      TabIndex = 177
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "For A/C"
      Index = 21
      BackColor = &H5EB0AC&
      ForeColor = &HC0&
      Left = 90
      Top = 300
      Width = 840
      Height = 240
      TabIndex = 174
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefName
      Caption = "MMMM"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 990
      Top = 300
      Width = 3330
      Height = 240
      TabIndex = 175
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame Frame1
    Caption = "Voucher Printing"
    Index = 1
    BackColor = &HFF80FF&
    Left = 12375
    Top = 1290
    Width = 6015
    Height = 4200
    Visible = 0   'False
    TabIndex = 95
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CheckBox ChkReport
      Caption = "Reciept"
      BackColor = &HFFFFC0&
      Left = 4065
      Top = 375
      Width = 1725
      Height = 240
      TabIndex = 187
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
    Begin OptionButton Opt2
      Caption = "VNo Selection"
      Index = 1
      BackColor = &HFFFFC0&
      Left = 2130
      Top = 690
      Width = 1800
      Height = 360
      TabIndex = 104
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
    Begin OptionButton Opt2
      Caption = "Print Current"
      Index = 0
      BackColor = &HFFFFC0&
      Left = 345
      Top = 690
      Width = 1485
      Height = 360
      TabIndex = 103
      Value = 255
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
    Begin Frame Frame1
      Index = 4
      Left = 1815
      Top = 3360
      Width = 2460
      Height = 540
      TabIndex = 100
      Begin CommandButton btnPrint1
        Caption = "Print"
        Left = 75
        Top = 135
        Width = 1170
        Height = 360
        TabIndex = 102
      End
      Begin CommandButton BTNCLOSE
        Caption = "Close"
        Left = 1245
        Top = 135
        Width = 1170
        Height = 360
        TabIndex = 101
      End
    End
    Begin OptionButton Opt2
      Caption = "VDate Selection"
      Index = 2
      BackColor = &HFFFFC0&
      Left = 4065
      Top = 690
      Width = 1800
      Height = 360
      TabIndex = 99
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
    Begin Frame Frame1
      Index = 3
      BackColor = &HFFC0FF&
      Left = 345
      Top = 1275
      Width = 5400
      Height = 1500
      Visible = 0   'False
      TabIndex = 96
      Begin TextBox Text2
        Left = 2040
        Top = 720
        Width = 1605
        Height = 270
        TabIndex = 97
        BorderStyle = 0 'None
        Appearance = 0 'Flat
      End
      Begin Label Label1
        Caption = "For Date"
        Index = 7
        Left = 1230
        Top = 720
        Width = 780
        Height = 240
        TabIndex = 98
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
    Begin Frame Frame1
      Index = 2
      BackColor = &HBAD3D3&
      Left = 345
      Top = 1275
      Width = 5400
      Height = 1500
      Enabled = 0   'False
      TabIndex = 105
      Begin DataCombo DataCombo3
        Left = 1800
        Top = 435
        Width = 2745
        Height = 315
        TabIndex = 106
      End
      Begin DataCombo DataCombo2
        Index = 0
        Left = 1425
        Top = 1005
        Width = 1140
        Height = 315
        TabIndex = 107
      End
      Begin DataCombo DataCombo2
        Index = 1
        Left = 3705
        Top = 1005
        Width = 1140
        Height = 315
        TabIndex = 108
      End
      Begin Label Label1
        Caption = "From V. No."
        Index = 4
        Left = 255
        Top = 1020
        Width = 1050
        Height = 240
        TabIndex = 111
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
      Begin Label Label1
        Caption = "To V. No."
        Index = 5
        Left = 2745
        Top = 1035
        Width = 840
        Height = 240
        TabIndex = 110
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
      Begin Label Label1
        Caption = "V. Type"
        Index = 6
        Left = 840
        Top = 480
        Width = 750
        Height = 240
        TabIndex = 109
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
  End
  Begin Frame FrameTDS
    Caption = "T.D.S."
    BackColor = &HBFD0B7&
    Left = 12360
    Top = 990
    Width = 6450
    Height = 2775
    Visible = 0   'False
    TabIndex = 156
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton TDSDelete
      Left = 2790
      Top = 1995
      Width = 585
      Height = 495
      TabIndex = 164
      Picture = "FaVrEnt.frx":686
      DisabledPicture = "FaVrEnt.frx":AC8
      ToolTipText = "Delete "
      Style = 1
    End
    Begin TextBox TxtTDSAMT
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 2310
      Width = 1365
      Height = 225
      TabIndex = 87
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox TxtTDS
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 2055
      Width = 1365
      Height = 225
      TabIndex = 86
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox TxtONAMT
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 1800
      Width = 1365
      Height = 225
      TabIndex = 85
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox TxtTDSNarration
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 585
      Width = 3930
      Height = 1185
      TabIndex = 84
      BorderStyle = 0 'None
      MultiLine = -1  'True
      MaxLength = 255
      Appearance = 0 'Flat
    End
    Begin TextBox TxtTDSCode
      Index = 0
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 330
      Width = 2700
      Height = 225
      TabIndex = 83
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "T.D.S. Amt"
      Index = 20
      ForeColor = &H0&
      Left = 165
      Top = 2325
      Width = 945
      Height = 195
      TabIndex = 161
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "T.D.S. %"
      Index = 19
      ForeColor = &H0&
      Left = 165
      Top = 2070
      Width = 765
      Height = 195
      TabIndex = 160
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "On Amount"
      Index = 18
      ForeColor = &H0&
      Left = 165
      Top = 1815
      Width = 945
      Height = 195
      TabIndex = 159
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Narration"
      Index = 17
      ForeColor = &H0&
      Left = 165
      Top = 585
      Width = 795
      Height = 195
      TabIndex = 158
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "TDS A/C"
      Index = 16
      ForeColor = &H0&
      Left = 165
      Top = 345
      Width = 780
      Height = 195
      TabIndex = 157
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FRAMEADJUST
    Caption = "Adjustment"
    BackColor = &HE6AC86&
    ForeColor = &HFF&
    Left = 12345
    Top = 735
    Width = 11685
    Height = 3270
    Visible = 0   'False
    TabIndex = 141
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox TXTNARRATION
      BackColor = &HEBDBC7&
      ForeColor = &HFF&
      Left = 90
      Top = 2430
      Width = 10920
      Height = 795
      Text = "Text1"
      TabIndex = 144
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
    Begin CommandButton ADJ_CANCLE
      Left = 11055
      Top = 1935
      Width = 585
      Height = 495
      TabIndex = 147
      Picture = "FaVrEnt.frx":C0A
      DisabledPicture = "FaVrEnt.frx":D4C
      ToolTipText = "Cancel Changes"
      Style = 1
    End
    Begin CommandButton ADJ_OK
      Left = 11055
      Top = 1440
      Width = 585
      Height = 495
      TabIndex = 146
      Picture = "FaVrEnt.frx":E8E
      DisabledPicture = "FaVrEnt.frx":FD0
      ToolTipText = "Ok"
      Style = 1
    End
    Begin CommandButton Command2
      Left = 11055
      Top = 945
      Width = 585
      Height = 495
      TabIndex = 145
      Picture = "FaVrEnt.frx":10D2
      ToolTipText = "Full Adjuatments"
      Style = 1
    End
    Begin TextBox TXTADJ_AMT
      BackColor = &HF7F0DF&
      Left = 4905
      Top = 0
      Width = 1065
      Height = 285
      TabIndex = 143
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin CommandButton BTS_AUTO_ADJ
      Caption = "Auto"
      Left = 11055
      Top = 450
      Width = 585
      Height = 495
      TabIndex = 142
      BeginProperty Font
        Name = "Times New Roman"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DisabledPicture = "FaVrEnt.frx":1514
      ToolTipText = "Ok"
      Style = 1
    End
    Begin MSFlexGrid FgridAdjust
      Left = 45
      Top = 450
      Width = 11010
      Height = 1965
      TabIndex = 163
    End
    Begin Label Label4
      Caption = "MMMM"
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 1035
      Top = 225
      Width = 4425
      Height = 240
      TabIndex = 154
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "For A/C"
      Index = 13
      BackColor = &H5EB0AC&
      ForeColor = &H0&
      Left = 135
      Top = 225
      Width = 840
      Height = 240
      TabIndex = 155
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB8
      ForeColor = &HFFFF&
      Left = 10545
      Top = 225
      Width = 480
      Height = 240
      TabIndex = 153
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB5
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 7590
      Top = 225
      Width = 510
      Height = 240
      TabIndex = 152
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB4
      Caption = "MMMM"
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 6285
      Top = 225
      Width = 1290
      Height = 240
      TabIndex = 151
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Tr.Amt."
      Index = 14
      BackColor = &H5EB0AC&
      ForeColor = &H0&
      Left = 5610
      Top = 225
      Width = 675
      Height = 240
      TabIndex = 150
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Adjusted Amt."
      Index = 15
      BackColor = &H5EB0AC&
      ForeColor = &H0&
      Left = 8205
      Top = 225
      Width = 1290
      Height = 240
      TabIndex = 149
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB7
      Caption = "KK"
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 9495
      Top = 225
      Width = 1050
      Height = 240
      TabIndex = 148
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FRAMEVLIST
    Caption = "Voucher Entry"
    BackColor = &HC0C0C0&
    ForeColor = &H400000&
    Left = 12345
    Top = 495
    Width = 8520
    Height = 4200
    Visible = 0   'False
    TabIndex = 77
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSFlexGrid FGVLIST
      Left = 60
      Top = 1050
      Width = 8400
      Height = 3090
      TabIndex = 78
    End
    Begin TextBox Text1
      BackColor = &HFFFFFF&
      Left = 4395
      Top = 615
      Width = 1185
      Height = 285
      TabIndex = 92
      Alignment = 1 'Right Justify
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox TXTVDATE2
      BackColor = &HFFFFFF&
      Left = 2565
      Top = 315
      Width = 1170
      Height = 285
      TabIndex = 89
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox TXTVDATE1
      BackColor = &HFFFFFF&
      Left = 660
      Top = 315
      Width = 1170
      Height = 285
      TabIndex = 88
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin CommandButton BTNVLCLOSE
      Caption = "&Close"
      Left = 7365
      Top = 615
      Width = 1050
      Height = 360
      TabIndex = 94
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton BTNVLOK
      Caption = "&Ok"
      Left = 7365
      Top = 255
      Width = 1050
      Height = 360
      TabIndex = 93
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin DataCombo Dcparty
      Left = 660
      Top = 600
      Width = 3075
      Height = 315
      TabIndex = 90
    End
    Begin DataCombo DataCombo1
      Left = 4395
      Top = 300
      Width = 2940
      Height = 315
      TabIndex = 91
    End
    Begin Label Label1
      Caption = "Vr.Type"
      Index = 11
      ForeColor = &H800000&
      Left = 3795
      Top = 360
      Width = 555
      Height = 195
      TabIndex = 139
      AutoSize = -1  'True
      WordWrap = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Label1
      Caption = "To"
      Index = 10
      ForeColor = &H800000&
      Left = 2250
      Top = 360
      Width = 270
      Height = 195
      TabIndex = 82
      AutoSize = -1  'True
      WordWrap = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Label1
      Caption = "Fr.Dt."
      Index = 9
      ForeColor = &H800000&
      Left = 165
      Top = 360
      Width = 390
      Height = 195
      TabIndex = 81
      AutoSize = -1  'True
      WordWrap = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Label1
      Caption = "Vr.No."
      Index = 12
      ForeColor = &H800000&
      Left = 3795
      Top = 660
      Width = 585
      Height = 195
      TabIndex = 80
      AutoSize = -1  'True
      WordWrap = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Label1
      Caption = "Party"
      Index = 8
      ForeColor = &H800000&
      Left = 165
      Top = 660
      Width = 465
      Height = 195
      TabIndex = 79
      AutoSize = -1  'True
      WordWrap = -1  'True
      BackStyle = 0 'Transparent
    End
  End
  Begin PictureBox PicDN
    BackColor = &HFF0000&
    Picture = "FaVrEnt.frx":1616
    ForeColor = &H80000008&
    Left = 10065
    Top = 5520
    Width = 300
    Height = 255
    Visible = 0   'False
    TabIndex = 171
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin PictureBox PicUP
    BackColor = &HFF0000&
    Picture = "FaVrEnt.frx":1A58
    ForeColor = &H80000008&
    Left = 0
    Top = 780
    Width = 300
    Height = 225
    Visible = 0   'False
    TabIndex = 170
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin DataGrid DGTDSCODE
    Left = 15705
    Top = 6540
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 114
  End
  Begin TextBox TxtDetailS
    BackColor = &HE0E0E0&
    Left = 10410
    Top = 5490
    Width = 4980
    Height = 1095
    Visible = 0   'False
    TabIndex = 140
    MultiLine = -1  'True
    MaxLength = 255
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 11
    BackColor = &HFFFFFF&
    Left = 330
    Top = 7890
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 59
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 11
    BackColor = &HFFFFFF&
    Left = 990
    Top = 8130
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 62
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 11
    BackColor = &HFFFFFF&
    Left = 15
    Top = 7890
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 58
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 11
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 7890
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 61
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 11
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 7890
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 60
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 10
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 7425
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 55
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 10
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 7425
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 56
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 10
    BackColor = &HFFFFFF&
    Left = 15
    Top = 7425
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 53
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 10
    BackColor = &HFFFFFF&
    Left = 990
    Top = 7665
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 57
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 10
    BackColor = &HFFFFFF&
    Left = 330
    Top = 7425
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 54
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 9
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 6945
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 50
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 9
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 6945
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 51
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 9
    BackColor = &HFFFFFF&
    Left = 15
    Top = 6945
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 48
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 9
    BackColor = &HFFFFFF&
    Left = 990
    Top = 7185
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 52
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 9
    BackColor = &HFFFFFF&
    Left = 330
    Top = 6945
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 49
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 8
    BackColor = &HFFFFFF&
    Left = 330
    Top = 6480
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 44
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 8
    BackColor = &HFFFFFF&
    Left = 990
    Top = 6705
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 47
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 8
    BackColor = &HFFFFFF&
    Left = 15
    Top = 6480
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 43
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 8
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 6480
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 46
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 8
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 6480
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 45
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 7
    BackColor = &HFFFFFF&
    Left = 330
    Top = 6000
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 39
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 7
    BackColor = &HFFFFFF&
    Left = 990
    Top = 6240
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 42
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 7
    BackColor = &HFFFFFF&
    Left = 15
    Top = 6000
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 38
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 7
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 5985
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 41
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 7
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 5985
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 6
    BackColor = &HFFFFFF&
    Left = 990
    Top = 5760
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 37
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 5
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 4800
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 30
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 5
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 4800
    Width = 1365
    Height = 225
    Visible = 0   'False
    TabIndex = 31
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 5
    BackColor = &HFFFFFF&
    Left = 15
    Top = 4800
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 28
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 5
    BackColor = &HFFFFFF&
    Left = 990
    Top = 5280
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 5
    BackColor = &HFFFFFF&
    Left = 330
    Top = 4800
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 29
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 4
    BackColor = &HFFFFFF&
    Left = 330
    Top = 4044
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 4
    BackColor = &HFFFFFF&
    Left = 990
    Top = 4540
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 27
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 0
    BackColor = &HFFFFFF&
    Left = 990
    Top = 1500
    Width = 6540
    Height = 210
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 1
    BackColor = &HFFFFFF&
    Left = 990
    Top = 2260
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 2
    BackColor = &HFFFFFF&
    Left = 990
    Top = 3020
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 3
    BackColor = &HFFFFFF&
    Left = 990
    Top = 3780
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 0
    BackColor = &HFFFFFF&
    Left = 330
    Top = 1020
    Width = 7200
    Height = 210
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 3
    BackColor = &HFFFFFF&
    Left = 330
    Top = 3288
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 2
    BackColor = &HFFFFFF&
    Left = 330
    Top = 2532
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 1
    BackColor = &HFFFFFF&
    Left = 330
    Top = 1776
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 4
    BackColor = &HFFFFFF&
    Left = 15
    Top = 4044
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 23
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 3
    BackColor = &HFFFFFF&
    Left = 15
    Top = 3288
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 2
    BackColor = &HFFFFFF&
    Left = 15
    Top = 2532
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 1
    BackColor = &HFFFFFF&
    Left = 15
    Top = 1776
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 0
    BackColor = &HFFFFFF&
    Left = 15
    Top = 1020
    Width = 285
    Height = 210
    Text = "Cr"
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGVchrHlp
    Left = 15390
    Top = 5970
    Width = 4995
    Height = 4320
    Visible = 0   'False
    TabIndex = 115
  End
  Begin MSFlexGrid FGrid1
    Left = 165
    Top = 8355
    Width = 9990
    Height = 570
    Visible = 0   'False
    TabIndex = 75
  End
  Begin TextBox TxtVtYpe
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3180
    Top = 495
    Width = 2295
    Height = 255
    TabIndex = 1
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
  Begin TextBox VchDt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 510
    Top = 495
    Width = 1200
    Height = 255
    TabIndex = 0
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
  Begin TextBox TxtCr
    Index = 4
    BackColor = &HFFFFFF&
    Left = 9000
    Top = 4044
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 26
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 4
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 4044
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame Frame1
    Caption = "Frame1"
    Index = 0
    BackColor = &HC0C0FF&
    Left = 10425
    Top = 465
    Width = 1950
    Height = 5010
    TabIndex = 69
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin BtnEnh LblShort
      Index = 1
      Left = 15
      Top = 765
      Width = 1935
      Height = 630
      TabIndex = 212
    End
    Begin BtnEnh LblShort
      Index = 2
      Left = 15
      Top = 1395
      Width = 1935
      Height = 630
      TabIndex = 213
    End
    Begin BtnEnh LblShort
      Index = 3
      Left = 15
      Top = 2025
      Width = 1935
      Height = 630
      TabIndex = 214
    End
    Begin BtnEnh LblShort
      Index = 4
      Left = 15
      Top = 2655
      Width = 1935
      Height = 630
      TabIndex = 215
    End
  End
  Begin TextBox TxtDr
    Index = 3
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 3288
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 3
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 3288
    Width = 1365
    Height = 225
    Visible = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 2
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 2532
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 2
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 2532
    Width = 1365
    Height = 210
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 1
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 1776
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 1
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 1776
    Width = 1365
    Height = 210
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 0
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 1020
    Width = 1365
    Height = 210
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox TxtDr
    Index = 0
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 1020
    Width = 1335
    Height = 210
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox TxtVno
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 6690
    Top = 495
    Width = 1065
    Height = 255
    TabIndex = 2
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
  Begin TextBox TxtAcName
    Index = 6
    BackColor = &HFFFFFF&
    Left = 330
    Top = 5535
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 6
    BackColor = &HFFFFFF&
    Left = 15
    Top = 5535
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 33
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 6
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 5535
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 35
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Line Line1
    Index = 1
    X1 = 10380
    Y1 = 795
    X2 = 10380
    Y2 = 5100
  End
  Begin Label lblTDS
    Caption = "TDSSSSSSSSSSSSSSSSSSSSS"
    ForeColor = &HC0&
    Left = 7575
    Top = 6600
    Width = 3090
    Height = 240
    Visible = 0   'False
    TabIndex = 189
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
  Begin Line Line2
    Index = 3
    X1 = 0
    Y1 = 5445
    X2 = 10410
    Y2 = 5445
  End
  Begin Line Line2
    Index = 1
    X1 = 0
    Y1 = 5490
    X2 = 10410
    Y2 = 5490
  End
  Begin Label Label1
    Caption = "Narration                                                               "
    Index = 3
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 0
    Top = 5520
    Width = 10365
    Height = 225
    TabIndex = 64
    AutoSize = -1  'True
    WordWrap = -1  'True
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
  Begin Label Label6
    Caption = "Cheque No."
    ForeColor = &H800000&
    Left = 30
    Top = 6675
    Width = 930
    Height = 195
    TabIndex = 211
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label5
    Caption = "Cheque Date"
    ForeColor = &H800000&
    Left = 2955
    Top = 6675
    Width = 1035
    Height = 195
    TabIndex = 210
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label7
    Caption = "Clearing Date"
    ForeColor = &H800000&
    Left = 5220
    Top = 6675
    Width = 1140
    Height = 195
    TabIndex = 209
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLDte
    Caption = "user date"
    ForeColor = &HC00000&
    Left = 14505
    Top = 8160
    Width = 885
    Height = 240
    TabIndex = 204
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
  Begin Label LbLUser
    Caption = "user name"
    ForeColor = &HC00000&
    Left = 14505
    Top = 7815
    Width = 1005
    Height = 240
    TabIndex = 203
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
  Begin Label lblDocId
    Caption = "Label2"
    Left = 15120
    Top = 8865
    Width = 465
    Height = 150
    Visible = 0   'False
    TabIndex = 188
  End
  Begin Label LblAmtRs
    Caption = "LblAmtRs"
    BackColor = &H5EB0AC&
    ForeColor = &H800000&
    Left = 10485
    Top = 6825
    Width = 3285
    Height = 840
    TabIndex = 186
    WordWrap = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 5
    ForeColor = &H4080&
    Left = 0
    Top = 5040
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 169
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblHelp
    Caption = "Press <Ins> Bill Wise Adjustment ,<Alt-R> Against Reference , <Alt-T> T.D.S.Entry"
    BackColor = &H0&
    ForeColor = &HC0FFFF&
    Left = 15
    Top = 2865
    Width = 10365
    Height = 240
    Visible = 0   'False
    TabIndex = 165
    Alignment = 2 'Center
    AutoSize = -1  'True
    WordWrap = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 11
    ForeColor = &H4080&
    Left = 0
    Top = 8130
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 138
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 11
    ForeColor = &H4080&
    Left = 10440
    Top = 7920
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 137
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 10
    ForeColor = &H4080&
    Left = 10440
    Top = 7455
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 136
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 10
    ForeColor = &H4080&
    Left = 0
    Top = 7665
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 135
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 9
    ForeColor = &H4080&
    Left = 10440
    Top = 6960
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 134
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 9
    ForeColor = &H4080&
    Left = 0
    Top = 7185
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 133
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 8
    ForeColor = &H4080&
    Left = 0
    Top = 6705
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 132
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 8
    ForeColor = &H4080&
    Left = 10440
    Top = 6480
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 131
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 7
    ForeColor = &H4080&
    Left = 0
    Top = 6240
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 130
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 7
    ForeColor = &H4080&
    Left = 10440
    Top = 6000
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 129
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 6
    ForeColor = &H4080&
    Left = 0
    Top = 5760
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 128
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 6
    ForeColor = &H4080&
    Left = 10440
    Top = 5550
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 127
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 5
    ForeColor = &H4080&
    Left = 0
    Top = 5280
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 126
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 4
    ForeColor = &H4080&
    Left = 0
    Top = 4545
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 125
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 3
    ForeColor = &H4080&
    Left = 0
    Top = 3783
    Width = 960
    Height = 210
    TabIndex = 124
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 2
    ForeColor = &H4080&
    Left = 0
    Top = 3022
    Width = 960
    Height = 210
    TabIndex = 123
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 1
    ForeColor = &H4080&
    Left = 0
    Top = 2261
    Width = 960
    Height = 210
    TabIndex = 122
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 0
    ForeColor = &H4080&
    Left = 0
    Top = 1500
    Width = 960
    Height = 210
    TabIndex = 121
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 4
    ForeColor = &H4080&
    Left = 0
    Top = 4284
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 120
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 3
    ForeColor = &H4080&
    Left = 0
    Top = 3528
    Width = 1155
    Height = 225
    TabIndex = 119
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 2
    ForeColor = &H4080&
    Left = 0
    Top = 2772
    Width = 1155
    Height = 225
    TabIndex = 118
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 1
    ForeColor = &H4080&
    Left = 0
    Top = 2016
    Width = 1155
    Height = 225
    TabIndex = 117
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 0
    ForeColor = &H4080&
    Left = 0
    Top = 1260
    Width = 1155
    Height = 225
    TabIndex = 116
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblDay
    ForeColor = &HFF&
    Left = 1680
    Top = 585
    Width = 45
    Height = 105
    TabIndex = 112
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label3
    Caption = "dIFF"
    Left = 6780
    Top = 5175
    Width = 330
    Height = 225
    Visible = 0   'False
    TabIndex = 74
    Alignment = 1 'Right Justify
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
  Begin Label LblVPrefix
    Caption = "LblVPrefix"
    ForeColor = &H800000&
    Left = 15015
    Top = 8685
    Width = 705
    Height = 225
    Visible = 0   'False
    TabIndex = 73
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblVtype
    Caption = "Vr.type"
    ForeColor = &HC00000&
    Left = 2520
    Top = 510
    Width = 630
    Height = 225
    TabIndex = 72
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "       Particulars                                                                        "
    Index = 0
    BackColor = &HFF0000&
    ForeColor = &HBEFDFE&
    Left = 15
    Top = 780
    Width = 7545
    Height = 240
    TabIndex = 76
    AutoSize = -1  'True
    WordWrap = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Credit "
    Index = 2
    BackColor = &HFF0000&
    ForeColor = &HBEFDFE&
    Left = 8985
    Top = 780
    Width = 1395
    Height = 240
    TabIndex = 71
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    WordWrap = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = " Debit "
    Index = 1
    BackColor = &HFF0000&
    ForeColor = &HBEFDFE&
    Left = 7575
    Top = 780
    Width = 1395
    Height = 240
    TabIndex = 70
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    WordWrap = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCrAmt
    Caption = "cr"
    Index = 0
    Left = 10200
    Top = 5175
    Width = 180
    Height = 225
    TabIndex = 68
    Alignment = 1 'Right Justify
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
  Begin Label LblDrAmt
    Caption = "dr"
    Index = 0
    Left = 8775
    Top = 5175
    Width = 180
    Height = 225
    TabIndex = 67
    Alignment = 1 'Right Justify
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
  Begin Line Line2
    Index = 0
    X1 = 0
    Y1 = 5100
    X2 = 10410
    Y2 = 5100
  End
  Begin Line Line1
    Index = 2
    X1 = 8970
    Y1 = 795
    X2 = 8970
    Y2 = 5100
  End
  Begin Line Line1
    Index = 0
    X1 = 7560
    Y1 = 795
    X2 = 7560
    Y2 = 5100
  End
  Begin Label LblDt
    Caption = "Date"
    ForeColor = &HC00000&
    Left = 45
    Top = 510
    Width = 405
    Height = 225
    TabIndex = 66
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblVno
    Caption = "Vr.No."
    ForeColor = &HC00000&
    Left = 6120
    Top = 510
    Width = 540
    Height = 225
    TabIndex = 65
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FaVrEnt"

Private global_136 As Integer
Private global_134 As Integer
Private global_148 As Variant
Private global_108 As Integer
Private global_110 As Byte
Private global_168 As Integer
Private global_196 As Integer
Private global_132 As Integer

Private Sub TxtTDSCode_GotFocus(Index As Integer) '1025E18
  'Data Table: 5C26BC
  Dim var_88 As DataGrid
  Dim var_A8 As Boolean
  Dim Me As Recordset15
  Dim var_C0 As TextBox
  loc_1025BE8: On Error Goto loc_1025DEF
  loc_1025C07: If (CBool(Me.DGTDSCODE.Visible) = &HFF) Then
  loc_1025C0A:   var_A8 = False
  loc_1025C19:   Me.DGTDSCODE.Visible = var_A8
  loc_1025C21: End If
  loc_1025C2D: If (CInt(global_110) <= 2) Then
  loc_1025C47:   If (Me.RecordCount > 0) Then
  loc_1025C4F:     CVarUnk
  loc_1025C54:     VerifyVarObj
  loc_1025C5A:     Set var_88 = Me.DGTDSCODE
  loc_1025C60:     LateIdStAd
  loc_1025C74:     Me.MoveFirst
  loc_1025C82:     CVarUnk
  loc_1025C87:     VerifyVarObj
  loc_1025C8D:     Set var_88 = Me.DGTDSCODE
  loc_1025C93:     LateIdStAd
  loc_1025CA4:   Else
  loc_1025CA9:     CVarUnk
  loc_1025CAE:     VerifyVarObj
  loc_1025CB4:     Set var_88 = Me.DGTDSCODE
  loc_1025CBA:     LateIdStAd
  loc_1025CC8:   End If
  loc_1025CEB:   Set var_88 = Me.TxtTDSCode
  loc_1025CF1:   Call 0.Method_TxtTDSCode_GotFocus0 (0, var_C0, var_C4, (Me.RecordCount = 0), var_88)
  loc_1025CF9:   Nothing = var_C0.Text
  loc_1025D11:   If (var_88 Or (var_C4 = vbNullString)) Then
  loc_1025D14:     Exit Sub
  loc_1025D15:   End If
  loc_1025D28:   Me.DGTDSCODE.Tag = CVar(CStr(Index))
  loc_1025D3F:   Set var_88 = Me.TxtTDSCode
  loc_1025D45:   Call 0.Method_TxtTDSCode_GotFocus0 (0, var_C0, var_C4)
  loc_1025D4D:   global_104 = var_C0.Text
  loc_1025D64:   If (var_C4 <> vbNullString) Then
  loc_1025D6D:     Me.MoveFirst
  loc_1025D95:     Call 0.Method_TxtTDSCode_GotFocus0 (0, var_C0, var_C4, "Name='", 0)
  loc_1025D9D:     1 = var_C0.Text
  loc_1025DB6:     Me.Find var_A8 & var_C4 & "'", Me.TxtTDSCode, Nothing
  loc_1025DCF:     Set var_88 = Me.DGTDSCODE
  loc_1025DD5:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6C
  loc_1025DE3:   Else
  loc_1025DE9:     Me.MoveFirst
  loc_1025DEE:   End If
  loc_1025DEE: End If
  loc_1025DEE: Exit Sub
  loc_1025DEF: ' Referenced from: 1025BE8
  loc_1025DF5: Call 0.Method_arg_50 (var_C4)
  loc_1025E0A: Proc_183_57_104B0BC(var_C4)
  loc_1025E16: Exit Sub
  loc_1025E17: Result "TxtTDSCode_GotFocus" End Sub 'Currency
End Sub

Private Sub TxtTDSCode_KeyDown(KeyCode As Integer, Shift As Integer) 'EDAB80
  'Data Table: 5C26BC
  loc_EDAAD8: On Error Goto loc_EDAB58
  loc_EDAAE5: If (CLng(Shift) = &H1B) Then
  loc_EDAAF7:   Me.DGTDSCODE.Visible = False
  loc_EDAAFF:   Exit Sub
  loc_EDAB00: End If
  loc_EDAB0C: If (CInt(global_110) <= 2) Then
  loc_EDAB47:   Proc_183_34_1307118(Me.DGTDSCODE, Me.TxtTDSCode, 0, global_104)
  loc_EDAB57: End If
  loc_EDAB57: Exit Sub
  loc_EDAB58: ' Referenced from: EDAAD8
  loc_EDAB5E: Call 0.Method_arg_50 (var_C0, Shift)
  loc_EDAB73: Proc_183_57_104B0BC(var_C0, "TxtTDSCode_KeyDown")
  loc_EDAB7F: Exit Sub
End Sub

Private Sub TxtTDSCode_KeyPress(KeyAscii As Integer) 'EB810C
  'Data Table: 5C26BC
  loc_EB807C: On Error Goto loc_EB80E2
  loc_EB8082: Proc_183_46_E07C50(arg_10)
  loc_EB80A3: If (CBool(Me.DGTDSCODE.Visible) = &HFF) Then
  loc_EB80B5:   var_A0 = "Name"
  loc_EB80D2:   Proc_183_41_145A968(Me.TxtTDSCode, 0, global_104)
  loc_EB80E1: End If
  loc_EB80E1: Exit Sub
  loc_EB80E2: ' Referenced from: EB807C
  loc_EB80E8: Call 0.Method_arg_50 (var_A0, arg_10)
  loc_EB80FD: Proc_183_57_104B0BC(var_A0, "TxtTDSCode_KeyPress")
  loc_EB8109: Exit Sub
  loc_EB810A: TxtTDSCode_KeyPress438 = var_A0
End Sub

Private Sub TxtTDSCode_Validate(Cancel As Boolean) '10285C4
  'Data Table: 5C26BC
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_C4 As String
  Dim var_B0 As TextBox
  Dim arg_10 As Integer
  loc_10283A4: On Error Goto loc_102859C
  loc_10283B3: If (CInt(global_110) = 3) Then
  loc_10283B6:   Exit Sub
  loc_10283B7: End If
  loc_10283F8: If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1028407:   Set var_94 = Me.TxtTDSCode
  loc_102840D:   Call 0.Method_TxtTDSCode_Validate0 (0, var_98)
  loc_1028415:   var_98.Text = vbNullString
  loc_102842D:   Set var_94 = Me.TxtTDSCode
  loc_1028433:   Call 0.Method_TxtTDSCode_Validate0 (0, var_98)
  loc_102843B:   var_98.Tag = vbNullString
  loc_102844A: Else
  loc_1028484:   Set var_AC = Me.TxtTDSCode
  loc_102848A:   Call 0.Method_TxtTDSCode_Validate0 (0, var_B0)
  loc_1028492:   var_B0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10284C5:   var_98 = Me.Fields.Item("subcode")
  loc_10284E2:   Set var_AC = Me.TxtTDSCode
  loc_10284E8:   Call 0.Method_TxtTDSCode_Validate0 (0, var_B0)
  loc_10284F0:   var_B0.Tag = CStr(var_98.Value)
  loc_1028506: End If
  loc_1028512: If (CInt(global_110) <= 2) Then
  loc_1028521:   Set var_94 = Me.TxtTDSCode
  loc_1028527:   Call 0.Method_TxtTDSCode_Validate0 (0, var_98)
  loc_102852F:   var_C4 = var_98.Text
  loc_102855B:   Set var_AC = Me.TxtTDSCode
  loc_1028561:   Call 0.Method_TxtTDSCode_Validate0 (0, var_B0)
  loc_1028592:   If CBool((Trim(CVar(var_C4)) = vbNullString) And (var_B0.Visible = &HFF)) Then
  loc_1028597:     arg_10 = &HFF
  loc_102859A:     Exit Sub
  loc_102859B:   End If
  loc_102859B: End If
  loc_102859B: Exit Sub
  loc_102859C: ' Referenced from: 10283A4
  loc_10285A2: Call 0.Method_arg_50 (var_C4)
  loc_10285B7: Proc_183_57_104B0BC(var_C4, "TxtTDSCode_Validate")
  loc_10285C3: Exit Sub
End Sub

Private Sub TXTChDate_GotFocus(Index As Integer) 'E8DCE4
  'Data Table: 5C26BC
  loc_E8DC7C: On Error Goto loc_E8DCBC
  loc_E8DC88: If (global_132 = &HFF) Then
  loc_E8DC8B:   Exit Sub
  loc_E8DC8C: End If
  loc_E8DC96: Set var_88 = Me.TXTChDate
  loc_E8DC9C: Call 0.Method_TXTChDate_GotFocus0 (Index)
  loc_E8DCAA: Call Proc_185_163_E22184(var_8C)
  loc_E8DCB6: Call Proc_185_169_F64FF4(var_8C)
  loc_E8DCBB: Exit Sub
  loc_E8DCBC: ' Referenced from: E8DC7C
  loc_E8DCC2: Call 0.Method_arg_50 (var_94)
  loc_E8DCCA: var_9C = "TXTChDate_GotFocus"
  loc_E8DCD7: Proc_183_57_104B0BC(var_94)
  loc_E8DCE3: Exit Sub
End Sub

Private Sub TXTChDate_KeyDown(KeyCode As Integer, Shift As Integer) 'E6AB6C
  'Data Table: 5C26BC
  loc_E6AB20: On Error Goto loc_E6AB43
  loc_E6AB2C: If (global_132 = &HFF) Then
  loc_E6AB2F:   Exit Sub
  loc_E6AB30: End If
  loc_E6AB3A: If (CLng(Shift) = &H1B) Then
  loc_E6AB3D:   Call Proc_185_169_F64FF4()
  loc_E6AB42: End If
  loc_E6AB42: Exit Sub
  loc_E6AB43: ' Referenced from: E6AB20
  loc_E6AB49: Call 0.Method_arg_50 (var_88)
  loc_E6AB51: var_90 = "TXTChDate_KeyDown"
  loc_E6AB5E: Proc_183_57_104B0BC(var_88)
  loc_E6AB6A: Exit Sub
End Sub

Private Sub TXTChDate_LostFocus(Index As Integer) 'E8B7A4
  'Data Table: 5C26BC
  loc_E8B740: On Error Goto loc_E8B77B
  loc_E8B74C: If (global_132 = &HFF) Then
  loc_E8B74F:   Exit Sub
  loc_E8B750: End If
  loc_E8B75A: Set var_88 = Me.TXTChDate
  loc_E8B760: Call 0.Method_TXTChDate_LostFocus0 (Index)
  loc_E8B76E: Call Proc_185_164_E27050(var_8C)
  loc_E8B77A: Exit Sub
  loc_E8B77B: ' Referenced from: E8B740
  loc_E8B781: Call 0.Method_arg_50 (var_94)
  loc_E8B796: Proc_183_57_104B0BC(var_94, "TXTChDate_LostFocus")
  loc_E8B7A2: Exit Sub
End Sub

Private Sub TXTChDate_Validate(Cancel As Boolean) 'FD6AE8
  'Data Table: 5C26BC
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim arg_10 As Integer
  loc_FD6934: On Error Goto loc_FD6ABD
  loc_FD6940: If (global_132 = &HFF) Then
  loc_FD6943:   Exit Sub
  loc_FD6944: End If
  loc_FD6950: If (CInt(global_110) = 3) Then
  loc_FD6953:   Exit Sub
  loc_FD6954: End If
  loc_FD6961: Set var_88 = Me.TXTChDate
  loc_FD6967: Call 0.Method_TXTChDate_Validate0 (Cancel, var_8C)
  loc_FD697E: Call 0.Method_arg_184 (var_8C)
  loc_FD6990: Set var_98 = Me.TXTChDate
  loc_FD6996: Call 0.Method_TXTChDate_Validate0 (Cancel, var_9C)
  loc_FD699E: Me.TXTChDate.Text = var_94
  loc_FD69CE: var_8C = Me.Fields.Item("PDCDt")
  loc_FD69F0: If (var_8C.Value = "No") Then
  loc_FD69FD:   Set var_88 = Me.TXTChDate
  loc_FD6A03:   Call 0.Method_TXTChDate_Validate0 (Cancel, var_8C)
  loc_FD6A12:   var_DC = Trim(CVar(var_8C))
  loc_FD6A2C:   If CBool(var_DC <> vbNullString) Then
  loc_FD6A3B:     Set var_90 = Me.VchDt
  loc_FD6A41:     Call 0.Method_TXTChDate_Validate0 (0, var_98)
  loc_FD6A5B:     Set var_88 = Me.TXTChDate
  loc_FD6A61:     Call 0.Method_TXTChDate_Validate0 (Cancel, var_8C)
  loc_FD6A69:     var_94 = var_8C.Text
  loc_FD6A8B:     If (CDate(var_94) > CDate(var_98.Text)) Then
  loc_FD6AA7:       MsgBox("Cheque Date Should be Less than Voucher Date", 0, var_DC, var_EC, var_120)
  loc_FD6AB9:       arg_10 = &HFF
  loc_FD6ABC:     End If
  loc_FD6ABC:   End If
  loc_FD6ABC: End If
  loc_FD6ABC: Exit Sub
  loc_FD6ABD: ' Referenced from: FD6934
  loc_FD6AC3: Call 0.Method_arg_50 (var_94, arg_10)
  loc_FD6AD8: Proc_183_57_104B0BC(var_94, "TXTChDate_Validate")
  loc_FD6AE4: Exit Sub
End Sub

Private Sub TXTClrDate_GotFocus(Index As Integer) 'E8D604
  'Data Table: 5C26BC
  loc_E8D59C: On Error Goto loc_E8D5DC
  loc_E8D5A8: If (global_132 = &HFF) Then
  loc_E8D5AB:   Exit Sub
  loc_E8D5AC: End If
  loc_E8D5B6: Set var_88 = Me.TXTClrDate
  loc_E8D5BC: Call 0.Method_TXTClrDate_GotFocus0 (Index)
  loc_E8D5CA: Call Proc_185_163_E22184(var_8C)
  loc_E8D5D6: Call Proc_185_169_F64FF4(var_8C)
  loc_E8D5DB: Exit Sub
  loc_E8D5DC: ' Referenced from: E8D59C
  loc_E8D5E2: Call 0.Method_arg_50 (var_94)
  loc_E8D5EA: var_9C = "TXTClrDate_GotFocus"
  loc_E8D5F7: Proc_183_57_104B0BC(var_94)
  loc_E8D603: Exit Sub
End Sub

Private Sub TXTClrDate_KeyDown(KeyCode As Integer, Shift As Integer) 'E6AE9C
  'Data Table: 5C26BC
  loc_E6AE50: On Error Goto loc_E6AE73
  loc_E6AE5C: If (global_132 = &HFF) Then
  loc_E6AE5F:   Exit Sub
  loc_E6AE60: End If
  loc_E6AE6A: If (CLng(Shift) = &H1B) Then
  loc_E6AE6D:   Call Proc_185_169_F64FF4()
  loc_E6AE72: End If
  loc_E6AE72: Exit Sub
  loc_E6AE73: ' Referenced from: E6AE50
  loc_E6AE79: Call 0.Method_arg_50 (var_88)
  loc_E6AE81: var_90 = "TXTClrDate_KeyDown"
  loc_E6AE8E: Proc_183_57_104B0BC(var_88)
  loc_E6AE9A: Exit Sub
End Sub

Private Sub TXTClrDate_LostFocus(Index As Integer) 'E89560
  'Data Table: 5C26BC
  loc_E894FC: On Error Goto loc_E89537
  loc_E89508: If (global_132 = &HFF) Then
  loc_E8950B:   Exit Sub
  loc_E8950C: End If
  loc_E89516: Set var_88 = Me.TXTClrDate
  loc_E8951C: Call 0.Method_TXTClrDate_LostFocus0 (Index)
  loc_E8952A: Call Proc_185_164_E27050(var_8C)
  loc_E89536: Exit Sub
  loc_E89537: ' Referenced from: E894FC
  loc_E8953D: Call 0.Method_arg_50 (var_94)
  loc_E89552: Proc_183_57_104B0BC(var_94, "TXTClrDate_LostFocus")
  loc_E8955E: Exit Sub
End Sub

Private Sub TXTClrDate_Validate(Cancel As Boolean) '101A6AC
  'Data Table: 5C26BC
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim arg_10 As Integer
  loc_101A4A0: On Error Goto loc_101A682
  loc_101A4AC: If (global_132 = &HFF) Then
  loc_101A4AF:   Exit Sub
  loc_101A4B0: End If
  loc_101A4BC: If (CInt(global_110) = 3) Then
  loc_101A4BF:   Exit Sub
  loc_101A4C0: End If
  loc_101A4CC: Set var_88 = Me.TXTClrDate
  loc_101A4D2: Call 0.Method_TXTClrDate_Validate0 (0, var_8C)
  loc_101A4E9: Call 0.Method_arg_184 (var_8C)
  loc_101A4FA: Set var_98 = Me.TXTClrDate
  loc_101A500: Call 0.Method_TXTClrDate_Validate0 (0, var_9C)
  loc_101A508: Me.TXTClrDate.Text = var_94
  loc_101A538: var_8C = Me.Fields.Item("PDCDt")
  loc_101A55A: If (var_8C.Value = "No") Then
  loc_101A569:   Set var_88 = Me.TXTClrDate
  loc_101A56F:   Call 0.Method_TXTClrDate_Validate0 (0, var_8C)
  loc_101A58E:   If (var_8C.Text <> vbNullString) Then
  loc_101A59A:     Set var_88 = Me.TXTChDate
  loc_101A5A0:     Call 0.Method_TXTClrDate_Validate0 (0, var_8C)
  loc_101A5AF:     var_DC = Trim(CVar(var_8C))
  loc_101A5C9:     If (var_DC = vbNullString) Then
  loc_101A5D8:       Set var_88 = Me.TXTClrDate
  loc_101A5DE:       Call 0.Method_TXTClrDate_Validate0 (0, var_8C)
  loc_101A5E6:       var_8C.Text = vbNullString
  loc_101A5F5:     Else
  loc_101A601:       Set var_90 = Me.TXTChDate
  loc_101A607:       Call 0.Method_TXTClrDate_Validate0 (0, var_98)
  loc_101A620:       Set var_88 = Me.TXTClrDate
  loc_101A626:       Call 0.Method_TXTClrDate_Validate0 (0, var_8C)
  loc_101A62E:       var_94 = var_8C.Text
  loc_101A650:       If (CDate(var_94) < CDate(var_98.Text)) Then
  loc_101A66C:         MsgBox("Clg.Date Must be Greater Than Cheque Date", 0, var_DC, var_EC, var_120)
  loc_101A67E:         arg_10 = &HFF
  loc_101A681:       End If
  loc_101A681:     End If
  loc_101A681:   End If
  loc_101A681: End If
  loc_101A681: Exit Sub
  loc_101A682: ' Referenced from: 101A4A0
  loc_101A688: Call 0.Method_arg_50 (var_94, arg_10)
  loc_101A69D: Proc_183_57_104B0BC(var_94, "TXTClrDate_Validate")
  loc_101A6A9: Exit Sub
  loc_101A6AA: var_94 = 
End Sub

Private Sub DGTDSCODE_UnknownEvent_9 'F930E8
  'Data Table: 5C26BC
  Dim var_88 As Variant
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_CC As String
  Dim var_C8 As TextBox
  loc_F92F8C: On Error Goto loc_F930BF
  loc_F92FAB: If (CBool(Me.DGTDSCODE.Visible) = &HFF) Then
  loc_F92FBD:   Me.DGTDSCODE.Visible = False
  loc_F92FC5: End If
  loc_F92FDC: If (Me.RecordCount > 0) Then
  loc_F93019:   Set var_C4 = Me.TxtTDSCode
  loc_F9301F:   Call 0.Method_DGTDSCODE_UnknownEvent_90 (0, var_C8)
  loc_F93027:   var_C8.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_F9305A:   var_C0 = Me.Fields.Item("Name")
  loc_F9306B:   var_CC = CStr(var_C0.Value)
  loc_F93077:   Set var_C4 = Me.TxtTDSCode
  loc_F9307D:   Call 0.Method_DGTDSCODE_UnknownEvent_90 (0, var_C8)
  loc_F93085:   var_C8.Text = var_CC
  loc_F9309B: End If
  loc_F930A4: Set var_88 = Me.TxtTDSCode
  loc_F930AA: Call 0.Method_DGTDSCODE_UnknownEvent_90 (0)
  loc_F930B2: var_C0.SetFocus
  loc_F930BE: Exit Sub
  loc_F930BF: ' Referenced from: F92F8C
  loc_F930C5: Call 0.Method_arg_50 (var_CC)
  loc_F930DA: Proc_183_57_104B0BC(var_CC, "DGTDSCODE_Click")
  loc_F930E6: Exit Sub
End Sub

Private Sub TxtCHno_GotFocus(Index As Integer) 'E8E944
  'Data Table: 5C26BC
  loc_E8E8DC: On Error Goto loc_E8E91C
  loc_E8E8E8: If (global_132 = &HFF) Then
  loc_E8E8EB:   Exit Sub
  loc_E8E8EC: End If
  loc_E8E8F6: Set var_88 = Me.TxtCHno
  loc_E8E8FC: Call 0.Method_TxtCHno_GotFocus0 (Index)
  loc_E8E90A: Call Proc_185_163_E22184(var_8C)
  loc_E8E916: Call Proc_185_169_F64FF4(var_8C)
  loc_E8E91B: Exit Sub
  loc_E8E91C: ' Referenced from: E8E8DC
  loc_E8E922: Call 0.Method_arg_50 (var_94)
  loc_E8E92A: var_9C = "TxtCHno_GotFocus"
  loc_E8E937: Proc_183_57_104B0BC(var_94)
  loc_E8E943: Exit Sub
End Sub

Private Sub TxtCHno_KeyDown(KeyCode As Integer, Shift As Integer) 'E68284
  'Data Table: 5C26BC
  loc_E68238: On Error Goto loc_E6825B
  loc_E68244: If (global_132 = &HFF) Then
  loc_E68247:   Exit Sub
  loc_E68248: End If
  loc_E68252: If (CLng(Shift) = &H1B) Then
  loc_E68255:   Call Proc_185_169_F64FF4()
  loc_E6825A: End If
  loc_E6825A: Exit Sub
  loc_E6825B: ' Referenced from: E68238
  loc_E68261: Call 0.Method_arg_50 (var_88)
  loc_E68269: var_90 = "TxtCHno_KeyDown"
  loc_E68276: Proc_183_57_104B0BC(var_88)
  loc_E68282: Exit Sub
End Sub

Private Sub TxtCHno_LostFocus(Index As Integer) '109D83C
  'Data Table: 5C26BC
  Dim var_A0 As Variant
  Dim var_8C As TextBox
  Dim var_DC As String
  Dim unk_5C26D2 As Connection15
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_124 As Variant
  Dim var_138 As Fields15
  Dim var_13C As Field20
  loc_109D5A8: On Error Goto loc_109D813
  loc_109D5B4: If (global_132 = &HFF) Then
  loc_109D5B7:   Exit Sub
  loc_109D5B8: End If
  loc_109D5C2: Set var_88 = Me.TxtCHno
  loc_109D5C8: Call 0.Method_TxtCHno_LostFocus0 (Index)
  loc_109D5D6: Call Proc_185_164_E27050(var_8C)
  loc_109D5EC: Set var_88 = Me.TxtCHno
  loc_109D5F2: Call 0.Method_TxtCHno_LostFocus0 (Index, var_8C)
  loc_109D5FA: var_A0 = CVar(var_8C) 'Address
  loc_109D61B: If CBool(Trim(var_A0) <> vbNullString) Then
  loc_109D62A:   If (CInt(global_110) = 1) Then
  loc_109D659:     Set var_88 = Me.TxtCHno
  loc_109D65F:     Call 0.Method_TxtCHno_LostFocus0 (Index, var_8C, var_D4, "SELECT COUNT(*) FROM LEDGER WHERE Chq_No='", var_A0, -1)
  loc_109D680:     unk_5C26D2.Execute var_E0 & var_D4 & "'", 0, var_F4
  loc_109D690:      = var_E0.Item(var_8C)
  loc_109D698:      = var_F4.Value
  loc_109D6C5:     If (var_8C.Text.Fields > 0) Then
  loc_109D6E9:       MsgBox("Duplicate Cheque No.", &H140, "Cheque No.Validation", var_D0, var_124)
  loc_109D6F9:     End If
  loc_109D6FC:   Else
  loc_109D728:     Set var_88 = Me.TxtCHno
  loc_109D72E:     Call 0.Method_TxtCHno_LostFocus0 (Index, var_8C, var_D4, "SELECT COUNT(*) FROM LEDGER WHERE Chq_No='", var_134, -1)
  loc_109D776:     var_D0 = CVar(var_138 & var_D4 & "' AND DOCID<>'") & Me.Fields.Item("DocID").Value 
  loc_109D77F:     var_124 = var_D0 & "'" 
  loc_109D78D:     unk_5C26D2.Execute CStr(var_124), 0, var_13C
  loc_109D79D:      = var_138.Item()
  loc_109D7A5:      = var_13C.Value
  loc_109D7DE:     If (var_8C.Text.Fields > 0) Then
  loc_109D802:       MsgBox("Duplicate Cheque No.", &H140, "Cheque No.Validation", var_D0, var_124)
  loc_109D812:     End If
  loc_109D812:   End If
  loc_109D812: End If
  loc_109D812: Exit Sub
  loc_109D813: ' Referenced from: 109D5A8
  loc_109D819: Call 0.Method_arg_50 (var_D4)
  loc_109D821: var_DC = "TxtCHno_LostFocus"
  loc_109D82E: Proc_183_57_104B0BC(var_D4)
  loc_109D83A: Exit Sub
End Sub

Private Sub TXTADJ_AMT_GotFocus() 'EC9734
  'Data Table: 5C26BC
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_F0 As String
  loc_EC969C: On Error Goto loc_EC970B
  loc_EC96B2: var_A8 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_EC96B7: var_C8 = &HA
  loc_EC96FC: var_F0 = "{Home}+{End}"
  loc_EC9702: Proc_303_0_FBACC8(CStr(Me.FgridAdjust.TextMatrix)), 0, Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_EC970A: Exit Sub
  loc_EC970B: ' Referenced from: EC969C
  loc_EC9711: Call 0.Method_arg_50 (CStr(Me.FgridAdjust.TextMatrix)), var_C8)
  loc_EC9726: Proc_183_57_104B0BC(CStr(Me.FgridAdjust.TextMatrix)), "TXTADJ_AMT_GotFocus")
  loc_EC9732: Exit Sub
End Sub

Private Sub TXTADJ_AMT_KeyDown(KeyCode As Integer, Shift As Integer) 'E8E7E8
  'Data Table: 5C26BC
  loc_E8E77C: On Error Goto loc_E8E7C0
  loc_E8E79C: Proc_183_21_FA21CC(Me.TXTADJ_AMT, KeyCode)
  loc_E8E7B2: If (CLng(KeyCode) = &HD) Then
  loc_E8E7BA:   Call TXTADJ_AMT_Validate(0)
  loc_E8E7BF: End If
  loc_E8E7BF: Exit Sub
  loc_E8E7C0: ' Referenced from: E8E77C
  loc_E8E7C6: Call 0.Method_arg_50 (var_94, &HA)
  loc_E8E7DB: Proc_183_57_104B0BC(var_94, "TXTADJ_AMT_KeyDown")
  loc_E8E7E7: Exit Sub
End Sub

Private Sub TXTADJ_AMT_KeyPress(KeyAscii As Integer) 'E7E1A0
  'Data Table: 5C26BC
  loc_E7E148: On Error Goto loc_E7E175
  loc_E7E168: Proc_183_22_129BBAC(Me.TXTADJ_AMT, KeyAscii)
  loc_E7E174: Exit Sub
  loc_E7E175: ' Referenced from: E7E148
  loc_E7E17B: Call 0.Method_arg_50 (var_94, &HA)
  loc_E7E190: Proc_183_57_104B0BC(var_94, "TXTADJ_AMT_KeyPress")
  loc_E7E19C: Exit Sub
  loc_E7E19D: 2 = 
End Sub

Private Sub TXTADJ_AMT_Validate(Cancel As Boolean) '115B048
  'Data Table: 5C26BC
  Dim var_98 As String
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_BC As Variant
  Dim var_DC As Long
  Dim var_274 As Double
  Dim var_27C As Double
  Dim var_198 As Variant
  Dim var_178 As Boolean
  Dim var_1F8 As Variant
  Dim var_218 As Variant
  Dim Cancel As Integer
  loc_115ACDC: On Error Goto loc_115B01E
  loc_115ACE7: Proc_183_6_EA3B94(CVar(Me.TXTADJ_AMT))
  loc_115ACFB: Me.TXTADJ_AMT.Text = CStr()
  loc_115AD23: var_104 = Val(Me.ADJ_LAB4.Caption)
  loc_115AD40: var_10C = Val(Me.ADJ_LAB7.Caption)
  loc_115AD6D: var_98 = Me.TXTADJ_AMT.Text
  loc_115AD93: var_BC = CVar(CLng(global_184)) 'Long
  loc_115ADE2: If (9 Or (CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) < CDbl(Val(Me.TXTADJ_AMT.Text)))) Then
  loc_115ADEC:   var_BC = CVar(CLng(global_184)) 'Long
  loc_115ADF1:   var_DC = 9
  loc_115AE0F:   var_98 = CStr(Me.FgridAdjust.TextMatrix))
  loc_115AE17:   var_104 = Val(var_98)
  loc_115AE34:   var_10C = Val(Me.ADJ_LAB4.Caption)
  loc_115AE51:   var_114 = Val(Me.ADJ_LAB7.Caption)
  loc_115AE6E:   var_274 = Val(Me.ADJ_LAB4.Caption)
  loc_115AE8B:   var_27C = Val(Me.ADJ_LAB7.Caption)
  loc_115AEC9:   var_198 = CVar(((var_274 - var_27C) + global_188)) 'Double
  loc_115AEE1:   var_178 = (CDbl(var_104) > CDbl(((var_10C - var_114) + global_188)))
  loc_115AF09:   Call 0.Method_arg_50 (var_21C, 9, CVar(CLng(global_184)), var_27C, var_274, var_114)
  loc_115AF27:   var_1F8 = (" Amount is Greater Then Pendng Adj.Amt. You Can Adjust Only " + LTrim(RTrim(IIf(var_178, var_198, CVar(CStr(Me.FgridAdjust.TextMatrix)))))))
  loc_115AF30:   var_218 = (var_1F8 + " Here")
  loc_115AF34:   MsgBox(var_218, &H10, CVar(var_21C), var_24C, var_26C)
  loc_115AF88:   Me.FgridAdjust.Row = CVar(CLng(global_184))
  loc_115AF92:   Cancel = &HFF
  loc_115AF98: Else
  loc_115AFBE:   var_BC = "0.00"
  loc_115AFEA:   LateIdCallSt
  loc_115B004:   Call Proc_185_161_100F7F8(Me.FgridAdjust, CVar(CStr(Format(CVar(Me.TXTADJ_AMT), var_BC))), 1, 1, &HA, CVar(CLng(global_184)), Cancel)
  loc_115B015:   Me.TXTADJ_AMT.Visible = False
  loc_115B01D: End If
  loc_115B01D: Exit Sub
  loc_115B01E: ' Referenced from: 115ACDC
  loc_115B024: Call 0.Method_arg_50 (var_98, var_10C, var_104, var_DC)
  loc_115B039: Proc_183_57_104B0BC(var_98, "TXTADJ_AMT_Validate", var_BC)
  loc_115B045: Exit Sub
End Sub

Private Sub Command1_Click() '149D2D0
  'Data Table: 5C26BC
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_124 As Variant
  Dim Me As Variant
  Dim var_110 As Variant
  Dim var_114 As Field20
  Dim var_EC As Variant
  Dim var_134 As Variant
  Dim var_138 As String
  Dim unk_5C26D2 As Connection15
  Dim var_B0 As Recordset15
  Dim var_B8 As Double
  Dim var_94 As Variant
  Dim var_10C As Variant
  Dim var_98 As Recordset15
  loc_149C650: On Error Goto loc_149D2A8
  loc_149C659: var_A8 = CVar(MemVar_1F95130) 'Variant
  loc_149C660: var_AC = MemVar_1F95130
  loc_149C689: If (Len(Trim(CVar(Me.TxtCrParty))) > 0) Then
  loc_149C699:   var_124 = "SELECT SUBGROUP.NAME,LEDGER.SubCode,LEDGER.Narration,LEDGER.AmtCr FROM (LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE) LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGER.V_TYPE WHERE LEDGER.DOCID='"
  loc_149C6E2:   unk_5C26D2.Execute CStr(var_124 & Me.Fields.Item("DocID").Value & "' And SUBGROUP.Nature='Bank' And LEDGER.AmtCr>0 ORDER BY LEDGER.V_SNO"), var_10C, -1
  loc_149C6ED:   Set var_B0 = var_14C
  loc_149C70A: Else
  loc_149C717:   var_124 = "SELECT SUBGROUP.NAME,LEDGER.SubCode,LEDGER.Narration,LEDGER.AmtDr FROM (LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE) LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGER.V_TYPE WHERE LEDGER.DOCID='"
  loc_149C760:   unk_5C26D2.Execute CStr(var_124 & Me.Fields.Item("DocID").Value & "' And LEDGER.AmtDr>0 ORDER BY LEDGER.V_SNO"), var_10C, -1
  loc_149C76B:   Set var_B0 = var_14C
  loc_149C785: End If
  loc_149C792: var_124 = "SELECT SUBGROUP.NAME,LEDGER.SubCode,LEDGER.Narration,LEDGER.AmtCr,SUBGROUP.groupcode,SUBGROUP.ChequeType FROM ((LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE)  LEFT JOIN acgroup ON SUBGROUP.groupcode=acgroup.groupcode) LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGER.V_TYPE WHERE LEDGER.DOCID='"
  loc_149C7C4: var_EC = var_124 & Me.Fields.Item("DocID").Value 
  loc_149C7CD: var_FC = var_EC & "' And SUBGROUP.Nature='Bank' And  LEDGER.AmtCr>0  ORDER BY LEDGER.V_SNO" 
  loc_149C7DB: unk_5C26D2.Execute CStr(var_FC), var_10C, -1
  loc_149C7E6: Set var_BC = var_14C
  loc_149C817: If (Me.Recordset15.RecordCount = 0) Then
  loc_149C833:   MsgBox("No Bank Account included.", &H10, var_EC, var_FC, var_10C)
  loc_149C843:   Exit Sub
  loc_149C844: End If
  loc_149C85B: If (var_B0.RecordCount > 0) Then
  loc_149C889:   If (Proc_183_19_E8E68C(Me.Text3, "Cheque Date", var_14C) = 0) Then
  loc_149C88C:     Exit Sub
  loc_149C88D:   End If
  loc_149C8A2:   Set var_94 = TmpCheqNew(New)
  loc_149C8A5:   ' Referenced from: 149CE3D
  loc_149C8B7:   If Not(Me.Recordset15.EOF) Then
  loc_149C8C5:     var_EC = Trim(CVar(Me.TxtCrParty))
  loc_149C8CD:     var_FC = Len(var_EC)
  loc_149C8E0:     If (var_FC > 0) Then
  loc_149C90C:       Proc_6_39_E7D3A0(var_EC, CVar(Me.TxtCrParty.Fields.Item("AmtCr")))
  loc_149C915:       var_B8 = CSng(var_EC)
  loc_149C925:     Else
  loc_149C94E:       Proc_6_39_E7D3A0(var_EC, CVar(Me.Recordset15.Fields.Item("AmtDr")), var_B8)
  loc_149C957:       var_B8 = CSng(var_EC)
  loc_149C964:     End If
  loc_149C989:     If (CDbl(Val(Me.TxtChequeAmt.Text)) <> CDbl(0)) Then
  loc_149C9B1:       If (CDbl(Val(Me.TxtChequeAmt.Text)) > var_B8) Then
  loc_149C9C2:         var_CC = "Cheque Print Amount is greater then voucher amount."
  loc_149C9CD:         MsgBox(var_CC, &H10, var_EC, var_FC, var_10C)
  loc_149C9DD:         Exit Sub
  loc_149C9E1:       Else
  loc_149C9FB:         var_B8 = Val(Me.TxtChequeAmt.Text)
  loc_149CA04:       End If
  loc_149CA04:     End If
  loc_149CA0B:     If (var_B8 > CDbl(0)) Then
  loc_149CA19:       var_94.AddNew var_CC, var_124
  loc_149CA44:       If (Len(Trim(CVar(Me.TxtCrParty))) > 0) Then
  loc_149CA52:         var_EC = Trim(CVar(Me.TxtCrParty))
  loc_149CA64:         var_94.Collect = "HeadName"
  loc_149CA73:       Else
  loc_149CA9E:         var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Name")), var_EC, var_B8)) 'String
  loc_149CAAB:         var_94.Collect = "HeadName"
  loc_149CABA:       End If
  loc_149CACB:       var_94.Collect = "Amt"
  loc_149CB1B:       var_EC = CVar(Replace(Proc_6_43_1003B24(var_B8, CStr(0), CStr(0), CVar(var_B8)), "0", vbNullString, 1, -1, 0)) 'String
  loc_149CB29:       var_10C = Space(&H19) & Ucase(var_EC) 
  loc_149CB37:       var_94.Collect = "AmtWord"
  loc_149CB78:       var_FC = Format(CVar(Me.Text3), "DD/MMM/YYYY")
  loc_149CB82:       var_134 = CDate(CDate(var_FC))
  loc_149CB90:       var_94.Collect = "Dt"
  loc_149CBC2:       If (CLng(Me.ChkCompName.Value) = 1) Then
  loc_149CBD2:         var_94.Collect = "SiteName"
  loc_149CBDA:       Else
  loc_149CBDA:         var_124 = vbNullString
  loc_149CBE9:         var_94.Collect = "SiteName"
  loc_149CBEE:       End If
  loc_149CC0D:       If (CLng(Me.ChkCompName.Value) = 1) Then
  loc_149CC13:         var_124 = CVar(MemVar_1F95070) 'String
  loc_149CC20:         var_94.Collect = "SiteCode"
  loc_149CC28:       Else
  loc_149CC28:         var_124 = vbNullString
  loc_149CC37:         var_94.Collect = "SiteCode"
  loc_149CC3C:       End If
  loc_149CC5B:       If (CLng(Me.ChkAcNo.Value) = 1) Then
  loc_149CC75:         If (Me.Recordset15.RecordCount > 0) Then
  loc_149CCA3:           var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RefFileNo")), var_124, var_124, var_124, var_A8, var_134, 1)) 'String
  loc_149CCB0:           var_94.Collect = "AcNo"
  loc_149CCC2:         Else
  loc_149CCC2:           var_124 = vbNullString
  loc_149CCD1:           var_94.Collect = "AcNo"
  loc_149CCD6:         End If
  loc_149CCD9:       Else
  loc_149CCD9:         var_124 = vbNullString
  loc_149CCE8:         var_94.Collect = "AcNo"
  loc_149CCED:       End If
  loc_149CD08:       If (Me.OptAuthoSign.Value = &HFF) Then
  loc_149CD20:         var_DC = CVar(Me.OptAuthoSign.Caption) 'String
  loc_149CD2D:         var_94.Collect = "SName"
  loc_149CD3B:       Else
  loc_149CD56:         If (Me.OptDirector.Value = &HFF) Then
  loc_149CD6E:           var_DC = CVar(Me.OptDirector.Caption) 'String
  loc_149CD7B:           var_94.Collect = "SName"
  loc_149CD89:         Else
  loc_149CDA4:           If (Me.OptPresident.Value = &HFF) Then
  loc_149CDBC:             var_DC = CVar(Me.OptPresident.Caption) 'String
  loc_149CDC9:             var_94.Collect = "SName"
  loc_149CDD7:           Else
  loc_149CDF2:             If (Me.OptBlank.Value = &HFF) Then
  loc_149CDFC:               Set var_110 = Me.OptBlank
  loc_149CE02:               var_138 = var_110.Caption
  loc_149CE0A:               var_DC = CVar(var_138) 'String
  loc_149CE0E:               var_CC = "SName"
  loc_149CE17:               var_94.Collect = var_CC
  loc_149CE22:             End If
  loc_149CE22:           End If
  loc_149CE22:         End If
  loc_149CE22:       End If
  loc_149CE2D:       var_94.Update var_CC, var_124
  loc_149CE32:     End If
  loc_149CE38:     var_B0.MoveNext
  loc_149CE3D:     GoTo loc_149C8A5
  loc_149CE40:   End If
  loc_149CE4B:   var_94.Clone
  loc_149CE56:   Set var_98 = var_110
  loc_149CE62:   var_150 = var_98.RecordCount
  loc_149CE70:   If (var_150 <= 0) Then
  loc_149CE79:     Call 0.Method_arg_50 (var_138, -1, var_110, var_DC, var_DC, var_DC, var_DC, var_124)
  loc_149CE9A:     MsgBox("** No Records Found to Print **", &H40, CVar(var_138), var_FC, var_10C)
  loc_149CEAF:     global_204 = 0
  loc_149CEB2:     Exit Sub
  loc_149CEB3:   End If
  loc_149CEE0:   var_EC = Len(Me.Recordset15.Fields.Item("ChequeType").Value)
  loc_149CEE4:   var_124 = 0
  loc_149CEF6:   If (var_EC <= var_124) Then
  loc_149CF12:     MsgBox("Please Define Cheque Type Bank in A/C Ledger Entry", 0, var_EC, var_FC, var_10C)
  loc_149CF22:     Exit Sub
  loc_149CF26:   Else
  loc_149CF29:     var_CC = "ChequeType"
  loc_149CF40:     var_114 = Me.Recordset15.Fields.Item(var_CC)
  loc_149CF51:     var_EC = CVar(Proc_6_38_E69628(CVar(var_114), global_204, var_124, var_EC, 1)) 'String
  loc_149CF57:     var_FC = Trim(var_EC)
  loc_149CF60:     var_138 = CStr(var_FC)
  loc_149CF66:     global_212 = var_138
  loc_149CF79:   End If
  loc_149CF7F:   Call 0.Method_arg_50 (var_138, var_10C, var_EC)
  loc_149CF9C:   global_208 = CStr(Ucase(CVar(var_138)))
  loc_149CFB0:   global_208 = vbNullString
  loc_149CFDB:   Set var_110 = var_98 
  loc_149CFE2:   CreateFieldDefFile(var_110, MemVar_1F953B4 & "\" & global_212 & ".ttx", &HFF)
  loc_149D00D:   var_138 = MemVar_1F953B4 & "\"
  loc_149D027:   Call 0.Method_arg_1C (var_138 & global_212 & ".RPT", var_CC, var_110)
  loc_149D032:   MemVar_1F951E8 = var_110
  loc_149D05B:   Call 0.Method_arg_64 (var_110, CVar(var_110), var_124)
  loc_149D063:   Call 0.Method_arg_2C (var_134, var_B8)
  loc_149D071:   Call 0.Method_arg_150 (var_14C)
  loc_149D07B:   Set var_98 = Nothing
  loc_149D08F:   Call 0.Method_arg_90 (var_110, var_150)
  loc_149D097:   Call 0.Method_arg_24 (var_162)
  loc_149D0A3:   For var_166 =  To CInt(var_150): 1 = var_166 'Integer
  loc_149D0BC:     Call 0.Method_arg_90 (var_110, CLng(var_162))
  loc_149D0C4:     Call 0.Method_arg_20 (var_114)
  loc_149D0CC:     Call 0.Method_arg_30 (var_138)
  loc_149D0E2:     var_178 = Ucase(CVar(var_138)) 'Variant
  loc_149D112:     If (var_178 = Ucase("AccountPayee")) Then
  loc_149D11C:       Set var_110 = Me.ChkAcPayee
  loc_149D134:       If (CLng(var_110.Value) = 1) Then
  loc_149D14A:         Call 0.Method_arg_90 (var_110, CLng(var_162))
  loc_149D152:         Call 0.Method_arg_20 (var_114)
  loc_149D15A:         Call 0.Method_arg_38 ("'Yes'")
  loc_149D169:       Else
  loc_149D17C:         Call 0.Method_arg_90 (var_110, CLng(var_162))
  loc_149D184:         Call 0.Method_arg_20 (var_114)
  loc_149D18C:         Call 0.Method_arg_38 ("'No'")
  loc_149D198:       End If
  loc_149D19B:     Else
  loc_149D1BD:       If (var_178 = Ucase("FullDate")) Then
  loc_149D1C7:         Set var_110 = Me.ChkFullDate
  loc_149D1DF:         If (CLng(var_110.Value) = 1) Then
  loc_149D1F5:           Call 0.Method_arg_90 (var_110, CLng(var_162))
  loc_149D1FD:           Call 0.Method_arg_20 (var_114)
  loc_149D205:           Call 0.Method_arg_38 ("'Yes'")
  loc_149D214:         Else
  loc_149D227:           Call 0.Method_arg_90 (var_110, CLng(var_162))
  loc_149D22F:           Call 0.Method_arg_20 (var_114)
  loc_149D237:           Call 0.Method_arg_38 ("'No'")
  loc_149D243:         End If
  loc_149D243:       End If
  loc_149D243:     End If
  loc_149D246:   Next var_166 'Integer
  loc_149D25E:   Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_149D268:   MemVar_1F951E8 = Nothing
  loc_149D26F: Else
  loc_149D275:   Call 0.Method_arg_50 (var_138, global_208)
  loc_149D296:   MsgBox("** No Records Found to Print **", &H40, CVar(var_138), var_FC, var_10C)
  loc_149D2A6:   Exit Sub
  loc_149D2A7: End If
  loc_149D2A7: Exit Sub
  loc_149D2A8: ' Referenced from: 149C650
  loc_149D2AE: Call 0.Method_arg_50 (var_138)
  loc_149D2C3: Proc_183_57_104B0BC(var_138, "FA CHEQUE PRINTING")
  loc_149D2CF: Exit Sub
End Sub

Private Sub Opt2_Click(Index As Integer) 'FC6E44
  'Data Table: 5C26BC
  Dim var_EC As Frame
  Dim var_E8 As Variant
  loc_FC6C9C: On Error Goto loc_FC6E19
  loc_FC6CCD: Set var_E8 = Me.Frame1
  loc_FC6CD3: Call 0.Method_Opt2_Click0 (2, var_EC)
  loc_FC6CDB: var_EC.Enabled = CBool(IIf(((Index = 0) Or (Index = 2)), False, True))
  loc_FC6D20: Set var_E8 = Me.Frame1
  loc_FC6D26: Call 0.Method_Opt2_Click0 (3, var_EC)
  loc_FC6D2E: var_EC.Visible = CBool(IIf(((Index = 0) Or (Index = 1)), False, True))
  loc_FC6D6D: Me.ChkReport.Visible = CBool(IIf((Index = 0), True, False))
  loc_FC6D86: If (Index = 2) Then
  loc_FC6D98:   Set var_E8 = Me.Frame1
  loc_FC6D9E:   Call 0.Method_Opt2_Click0 (3, var_EC)
  loc_FC6DA6:   var_EC.ZOrder 0
  loc_FC6DBE:   Me.Text2.Visible = True
  loc_FC6DD2:   Me.Text2.Enabled = True
  loc_FC6DE4:   Me.Text2.SetFocus
  loc_FC6DEF: Else
  loc_FC6DFE:   Set var_E8 = Me.Frame1
  loc_FC6E04:   Call 0.Method_Opt2_Click0 (2, var_EC)
  loc_FC6E0C:   var_EC.ZOrder 0
  loc_FC6E18: End If
  loc_FC6E18: Exit Sub
  loc_FC6E19: ' Referenced from: FC6C9C
  loc_FC6E1F: Call 0.Method_arg_50 (var_F0)
  loc_FC6E27: var_F8 = "Opt2_Click"
  loc_FC6E34: Proc_183_57_104B0BC(var_F0)
  loc_FC6E40: Exit Sub
End Sub

Private Sub TxtCr_GotFocus(Index As Integer) '10D0344
  'Data Table: 5C26BC
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_A4 As Double
  Dim var_108 As Double
  Dim var_C4 As Variant
  Dim var_FC As TextBox
  Dim var_88 As Label
  Dim var_F8 As Label
  loc_10D0058: On Error Goto loc_10D0319
  loc_10D0064: If (global_132 = &HFF) Then
  loc_10D0067:   Exit Sub
  loc_10D0068: End If
  loc_10D0072: Set var_88 = Me.TxtCr
  loc_10D0078: Call 0.Method_TxtCr_GotFocus0 (Index)
  loc_10D0086: Call Proc_185_163_E22184(var_8C)
  loc_10D0092: Call Proc_185_169_F64FF4(var_8C)
  loc_10D00A4: Set var_88 = Me.TxtCr
  loc_10D00AA: Call 0.Method_TxtCr_GotFocus0 (Index, var_8C)
  loc_10D00CC: Set var_90 = Me.TxtAcName
  loc_10D00D2: Call 0.Method_TxtCr_GotFocus0 (Index, var_98)
  loc_10D00FA: If ((var_8C.Text = vbNullString) And (var_98.Text <> vbNullString)) Then
  loc_10D0109:   Set var_90 = Me.LblCrAmt
  loc_10D010F:   Call 0.Method_TxtCr_GotFocus0 (0, var_98)
  loc_10D0117:   var_9C = var_98.Caption
  loc_10D0133:   Set var_88 = Me.LblDrAmt
  loc_10D0139:   Call 0.Method_TxtCr_GotFocus0 (0, var_8C)
  loc_10D0166:   If (CDbl(Val(var_8C.Caption)) > CDbl(Val(var_9C))) Then
  loc_10D0175:     Set var_88 = Me.LblDrAmt
  loc_10D017B:     Call 0.Method_TxtCr_GotFocus0 (0, var_8C)
  loc_10D0183:     var_94 = var_8C.Caption
  loc_10D0190:     var_A4 = Val(var_94)
  loc_10D019F:     Set var_90 = Me.LblCrAmt
  loc_10D01A5:     Call 0.Method_TxtCr_GotFocus0 (0, var_98, var_9C)
  loc_10D01D9:     var_C4 = CVar((var_98.Caption - Val(var_9C))) 'Double
  loc_10D01F6:     Set var_F8 = Me.TxtCr
  loc_10D01FC:     Call 0.Method_TxtCr_GotFocus0 (Index, var_FC, CStr(Format(var_C4, "0.00")), 1)
  loc_10D0204:     var_FC.Text = 1
  loc_10D022A:   End If
  loc_10D022A: End If
  loc_10D0237: Set var_88 = Me.TxtCr
  loc_10D023D: Call 0.Method_TxtCr_GotFocus0 (Index, var_8C, var_94)
  loc_10D0245: var_108 = var_8C.Text
  loc_10D0258: Set var_90 = Me.TxtCr
  loc_10D025E: Call 0.Method_TxtCr_GotFocus0 (Index, var_98)
  loc_10D0266: var_98.SelLength = Len(var_94)
  loc_10D0285: If (CInt(global_110) <= 2) Then
  loc_10D0294:   Me.LblHelp.Visible = True
  loc_10D02AA:   Me.LblHelp.Left = CDbl(0)
  loc_10D02BE:   Set var_90 = Me.TxtCHno
  loc_10D02C4:   Call 0.Method_TxtCr_GotFocus0 (0, var_98)
  loc_10D02DD:   Set var_88 = Me.TxtCHno
  loc_10D02E3:   Call 0.Method_TxtCr_GotFocus0 (0, var_8C)
  loc_10D0306:   Me.LblHelp.Top = ((var_8C.Top + var_98.Height) + CDbl(&H19))
  loc_10D0318: End If
  loc_10D0318: Exit Sub
  loc_10D0319: ' Referenced from: 10D0058
  loc_10D031F: Call 0.Method_arg_50 (var_94)
  loc_10D0334: Proc_183_57_104B0BC(var_94, "TxtCr_GotFocus")
  loc_10D0340: Exit Sub
End Sub

Private Sub TxtCr_KeyDown(KeyCode As Integer, Shift As Integer) '175C174
  'Data Table: 5C26BC
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim var_104 As Variant
  Dim var_120 As Double
  Dim var_DC As Variant
  Dim var_118 As String
  Dim var_150 As Variant
  Dim var_130 As Variant
  Dim var_A8 As Double
  Dim var_174 As String
  Dim unk_5C26D2 As Connection15
  Dim var_88 As Recordset15
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_19C As Variant
  Dim var_160 As Variant
  Dim var_2A0 As Double
  Dim var_FC As Variant
  Dim var_114 As Variant
  Dim var_140 As Variant
  Dim var_1CC As Variant
  Dim var_204 As Variant
  Dim var_270 As Variant
  Dim var_8C As Recordset15
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_39C As Variant
  Dim var_48C As Variant
  Dim var_4AC As Variant
  Dim var_4CC As Variant
  Dim var_67C As Variant
  Dim var_6C4 As Variant
  Dim var_8E As Integer
  Dim var_B0 As Double
  loc_175A520: On Error Goto loc_175C149
  loc_175A52C: If (global_132 = &HFF) Then
  loc_175A52F:   Exit Sub
  loc_175A530: End If
  loc_175A53A: If (CLng(Shift) = &H1B) Then
  loc_175A53D:   Call Proc_185_169_F64FF4()
  loc_175A542: End If
  loc_175A54E: If (CInt(global_110) <= 2) Then
  loc_175A55B:   If (CLng(Shift) = &H2D) Then
  loc_175A566:     Call TxtCr_Validate(KeyCode)
  loc_175A588:     var_CC = Me.Fields.Item("OnLineAdjustment")
  loc_175A5AA:     If (var_CC.Value = "Yes") Then
  loc_175A5BA:       Set var_B8 = Me.TxtCr
  loc_175A5C0:       Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC)
  loc_175A5E4:       If (CDbl(Val(var_CC.Text)) <= CDbl(0)) Then
  loc_175A5E7:         Exit Sub
  loc_175A5E8:       End If
  loc_175A5FA:       Me.FRAMEADJUST.Tag = CStr(KeyCode)
  loc_175A612:       Set var_B8 = Me.TxtAcName
  loc_175A618:       Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC)
  loc_175A632:       Me.Label4.Caption = var_CC.Text
  loc_175A650:       Set var_B8 = Me.TxtCr
  loc_175A656:       Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC)
  loc_175A6A3:       Me.ADJ_LAB4.Caption = CStr(Format(CVar(Val(var_CC.Text)), "0.00"))
  loc_175A6DE:       var_CC = Me.Fields.Item("ToBy")
  loc_175A6E6:       var_DC = var_CC.Value
  loc_175A720:       var_100 = CStr(IIf((var_DC = "Yes"), "To", "Cr"))
  loc_175A72E:       Me.ADJ_LAB5.Caption = var_100
  loc_175A75F:       Me.FgridAdjust.Rows = 1
  loc_175A78A:       Set var_B8 = Me.TxtAcName
  loc_175A790:       Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC, var_100, "Select max(L.DocId) AS DI,MAX(V_SNo) AS VS,MAX(L.V_Type) AS VT,MAX(L.V_Prefix) AS VP,MAX(L.V_No) AS VN,MAX(L.V_Date) AS VD,MAX(AmtDr) As Amount,MAX(L.Narration) AS NARR,MAX(SG.Name) As PartyName,L.SubCode,IsNull(Sum(CR),0) AS TSum,MAX(LEDGERM.Narration) AS MNARR,MAX(L.AgRefNo) AS AgRefNom FROM ((Ledger L Left Join SubGroup SG on SG.SubCode=L.CONTRASub) LEFT JOIN LEDGERAdj ON  (L.SUBCODE = LedgerAdj.SUBCODE) AND (L.V_SNo = LedgerAdj.V_SNo2) AND (L.DocId = LedgerAdj.DocId2)) LEFT JOIN LEDGERM ON LEDGERM.DOCID=L.DOCID Where L.SubCode='", var_DC, -1)
  loc_175A7A8:       var_174 = CDbl(0) & var_100 & "' GROUP BY L.SUBCODE,L.DOCID,L.V_SNO HAVING MAX(AmtDr)>0 ORDER BY L.SUBCODE,MAX(L.V_Date),L.DOCID,L.V_SNO"
  loc_175A7B1:       unk_5C26D2.Execute var_174, 1, 1
  loc_175A7BC:       Set var_88 = var_CC.Tag
  loc_175A7D4:       ' Referenced from: 175B1F6
  loc_175A7E3:       If Not(var_88.EOF) Then
  loc_175A7F2:         If (CInt(global_110) = 2) Then
  loc_175A802:           Set var_B8 = Me.TxtAcName
  loc_175A808:           Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC, var_100)
  loc_175A810:           var_120 = var_CC.Tag
  loc_175A84A:           var_130 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_175A84F:           var_188 = 1
  loc_175A8D2:           var_2A0 = Val(CStr(var_88.Fields.Item("VS").Value))
  loc_175A8F6:           var_114 = CVar("Select IsNull(Sum(CR),0) AS TSum FROM LEDGERAdj WHERE SUBCODE='" & var_100 & "' AND DocID1='") & Me.Fields.Item("DocID").Value 
  loc_175A91A:           var_204 = var_114 & "' And V_SNo1=" & CVar(Val(CStr(Me.FGrid1.TextMatrix)))) & " AND DocID2='" & var_88.Fields.Item("DI").Value 
  loc_175A93C:           unk_5C26D2.Execute CStr(var_204 & "' And V_SNo2=" & CVar(var_2A0)), var_294, -1
  loc_175A947:           Set var_8C = var_298
  loc_175A99F:           If (var_8C.RecordCount > 0) Then
  loc_175A9CD:             var_A8 = CSng(var_8C.Fields.Item("TSUM").Value)
  loc_175A9DA:           End If
  loc_175A9DA:         End If
  loc_175A9DD:         var_98 = CDbl(0)
  loc_175A9E3:         var_A0 = CDbl(0)
  loc_175AA2D:         If ((CLng((KeyCode + global_108)) = CLng(Me.FGrid1.Rows)) Or (CLng(Me.FGrid1.Rows) = 0)) Then
  loc_175AA30:           GoTo loc_175AC81
  loc_175AA33:         End If
  loc_175AA4A:         If (Me.RecordCount > 0) Then
  loc_175AA56:           Me.Sort = "VSNo ASC"
  loc_175AA61:           Me.MoveFirst
  loc_175AA66:           ' Referenced from: 175AC7E
  loc_175AA78:           If Not(Me.EOF) Then
  loc_175AB31:             var_1CC = (Me.Fields.Item("DocID").Value = var_88.Fields.Item("DI").Value) And (Me.Fields.Item("V_SNo").Value = var_88.Fields.Item("VS").Value)
  loc_175AB55:             If CBool(var_1CC) Then
  loc_175AB7D:               var_FC = Me.Fields.Item("VSno").Value
  loc_175AB90:               var_EC = CVar(CLng((KeyCode + global_108))) 'Long
  loc_175ABD5:               If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_175AC08:                 Proc_183_3_E7DD58(var_FC, CVar(Me.Fields.Item("dr")), CVar(var_98), CVar(var_98), var_FC, var_A0, var_98)
  loc_175AC10:                 var_114 = (var_A8 + var_FC)
  loc_175AC15:                 var_98 = CSng(var_114)
  loc_175AC27:               Else
  loc_175AC57:                 Proc_183_3_E7DD58(var_FC, CVar(Me.Fields.Item("dr")), CVar(var_A0), var_98, var_298)
  loc_175AC5F:                 var_114 = (var_2A0 + var_FC)
  loc_175AC64:                 var_A0 = CSng(var_114)
  loc_175AC73:               End If
  loc_175AC73:             End If
  loc_175AC79:             Me.MoveNext
  loc_175AC7E:             GoTo loc_175AA66
  loc_175AC81:             ' Referenced from: 175AA30
  loc_175AC81:           End If
  loc_175AC81:         End If
  loc_175ACD5:         var_114 = (var_88.Fields.Item("Amount").Value - var_88.Fields.Item("TSUM").Value)
  loc_175ACE0:         var_140 = (var_114 + CVar(var_A8))
  loc_175ACEB:         var_160 = (var_88.Fields.Item("VS").Value - CVar(var_A0))
  loc_175AD0B:         If (Me.Fields.Item("V_SNo").Value > 0) Then
  loc_175AE09:           var_178 = var_88.Fields.Item("VN")
  loc_175AE43:           var_19C = var_88.Fields
  loc_175AE5B:           var_270 = vbNullString & Chr(9) & var_88.Fields.Item("VT").Value & Chr(9) & var_178.Value & Chr(9) & var_19C.Item("VP").Value 
  loc_175AE79:           var_188 = "VS"
  loc_175AF32:           var_39C = 1 & Format(CVar(var_88.Fields.Item("VD")), "Short Date") & Chr(9) & var_88.Fields.Item("PartyName").Value & Chr(9) 
  loc_175AFD2:           var_48C = (var_88.Fields.Item("Amount").Value - var_88.Fields.Item("TSUM").Value)
  loc_175AFDD:           var_4AC = (var_48C + CVar(var_A8))
  loc_175AFE8:           var_4CC = (var_4AC - CVar(var_A0))
  loc_175B07E:           var_100 = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("mNarr")), 1 & Format(var_98, "0.00") & Chr(9), 1, 1 & Format(var_4CC, "0.00") & Chr(9), 1, 1 & Format(CVar(var_88.Fields.Item("Amount")), "0.00") & Chr(9), 1)
  loc_175B0B0:           var_174 = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("NARR")), var_100 & " ", var_39C & var_88.Fields.Item("AgRefNom").Value & Chr(9), 1)
  loc_175B0E8:           var_67C = var_A0 & CVar(var_270 & Chr(9) & var_88.Fields.Item(var_188).Value & Chr(9) & var_174) & Chr(9) & vbNullString & Chr(9) 
  loc_175B11B:           var_6C4 = CVar(CStr(var_67C & var_88.Fields.Item("DI").Value)) 'String
  loc_175B123:           Set var_6D8 = Me.FgridAdjust
  loc_175B1EE:         End If
  loc_175B1F1:         var_88.MoveNext
  loc_175B1F6:         GoTo loc_175A7D4
  loc_175B1F9:       End If
  loc_175B206:       Me.TXTNARRATION.Text = vbNullString
  loc_175B20E:       Call Proc_185_161_100F7F8(FgridAdjust.DispID_10000, var_6C4)
  loc_175B232:       If (CLng(Me.FgridAdjust.Rows) > 1) Then
  loc_175B241:         Me.FRAMEADJUST.Visible = True
  loc_175B259:         Me.FRAMEADJUST.ZOrder 0
  loc_175B261:       End If
  loc_175B261:       Exit Sub
  loc_175B262:     End If
  loc_175B265:   Else
  loc_175B276:     If ((CLng(Shift) = &H52) And (arg_14 = 4)) Then
  loc_175B281:       Call TxtCr_Validate(KeyCode)
  loc_175B2A3:       var_CC = Me.Fields.Item("OnLineAdjustment")
  loc_175B2C5:       If (var_CC.Value = "Yes") Then
  loc_175B2D5:         Set var_B8 = Me.TxtCr
  loc_175B2DB:         Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC, var_100)
  loc_175B2E3:         0 = var_CC.Text
  loc_175B2FF:         If (CDbl(Val(var_100)) <= CDbl(0)) Then
  loc_175B302:           Exit Sub
  loc_175B303:         End If
  loc_175B308:         var_100 = CStr(KeyCode)
  loc_175B315:         Me.FrameRef.Tag = var_100
  loc_175B32D:         Set var_B8 = Me.TxtAcName
  loc_175B333:         Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC, var_100)
  loc_175B33B:         var_120 = var_CC.Text
  loc_175B34D:         Me.LblRefName.Caption = var_100
  loc_175B36B:         Set var_B8 = Me.TxtCr
  loc_175B371:         Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC)
  loc_175B3BE:         Me.LblRefAmt.Caption = CStr(Format(CVar(Val(var_CC.Text)), "0.00"))
  loc_175B449:         Me.LblRefAmtDrCr.Caption = CStr(IIf((Me.Fields.Item("ToBy").Value = "Yes"), "To", "Cr"))
  loc_175B47A:         Me.FGridRef.Rows = 1
  loc_175B482:         var_C8 = vbNullString
  loc_175B48C:         Set var_B8 = Me.FGridRef
  loc_175B4B0:         Me.FGridRef.FixedRows = 1
  loc_175B4BA:         var_8E = 1
  loc_175B4D4:         If (Me.RecordCount > 0) Then
  loc_175B4E0:           Me.Sort = "V_SNo ASC"
  loc_175B4EB:           Me.MoveFirst
  loc_175B4FB:           var_C8 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_175B500:           var_130 = 1
  loc_175B53F:           var_118 = CStr(Val(CStr(Me.FGrid1.TextMatrix))))
  loc_175B54C:           Me.Find "V_SNO=" & var_118, 0, 1
  loc_175B560:           ' Referenced from:   175B954
  loc_175B572:           If Not(Me.EOF) Then
  loc_175B59A:             var_FC = Me.Fields.Item("V_SNo").Value
  loc_175B5AD:             var_EC = CVar(CLng((KeyCode + global_108))) 'Long
  loc_175B5D0:             var_100 = CStr(Me.FGrid1.TextMatrix))
  loc_175B5F2:             If (1 = CVar(Val(var_100))) Then
  loc_175B5F5:               var_C8 = vbNullString
  loc_175B5FF:               Set var_B8 = Me.FGridRef
  loc_175B614:               var_EC = CVar(CLng(var_8E)) 'Long
  loc_175B61C:               var_150 = CVar(CLng(5)) 'Long
  loc_175B64F:               var_FC = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_175B657:               Set var_104 = Me.FGridRef
  loc_175B65D:               LateIdCallSt
  loc_175B679:               var_EC = CVar(CLng(var_8E)) 'Long
  loc_175B681:               var_150 = CVar(CLng(6)) 'Long
  loc_175B6B4:               var_FC = CVar(CStr(Me.Fields.Item("V_SNo").Value)) 'String
  loc_175B6C2:               LateIdCallSt
  loc_175B714:               Proc_183_5_EF3F20(var_FC, CVar(Me.Fields.Item("dr")), CVar(CLng(4)), CVar(CLng(var_8E)), Me.FGridRef, var_FC, CVar(CLng(4)))
  loc_175B72B:               LateIdCallSt
  loc_175B77D:               Proc_183_5_EF3F20(var_FC, CVar(Me.Fields.Item("cr")), CVar(CLng(3)), CVar(CLng(var_8E)), Me.FGridRef, CVar(CStr(var_FC)), CVar(CLng(var_8E)))
  loc_175B786:               var_114 = CVar(CStr(var_FC)) 'String
  loc_175B78E:               Set var_104 = Me.FGridRef
  loc_175B794:               LateIdCallSt
  loc_175B7B0:               var_EC = CVar(CLng(var_8E)) 'Long
  loc_175B7B8:               var_150 = CVar(CLng(7)) 'Long
  loc_175B7EB:               var_FC = CVar(CStr(Me.Fields.Item("subcode").Value)) 'String
  loc_175B7F3:               Set var_104 = Me.FGridRef
  loc_175B7F9:               LateIdCallSt
  loc_175B815:               var_EC = CVar(CLng(var_8E)) 'Long
  loc_175B81D:               var_150 = CVar(CLng(2)) 'Long
  loc_175B850:               var_FC = CVar(CStr(Me.Fields.Item("AgRefNo").Value)) 'String
  loc_175B858:               Set var_104 = Me.FGridRef
  loc_175B85E:               LateIdCallSt
  loc_175B87A:               var_EC = CVar(CLng(var_8E)) 'Long
  loc_175B882:               var_150 = CVar(CLng(1)) 'Long
  loc_175B8B5:               var_FC = CVar(CStr(Me.Fields.Item("AgRefType").Value)) 'String
  loc_175B8BD:               Set var_104 = Me.FGridRef
  loc_175B8C3:               LateIdCallSt
  loc_175B8DF:               var_EC = CVar(CLng(var_8E)) 'Long
  loc_175B8E7:               var_150 = CVar(CLng(8)) 'Long
  loc_175B909:               var_CC = Me.Fields.Item("DueDate")
  loc_175B911:               var_DC = var_CC.Value
  loc_175B91A:               var_FC = CVar(CStr(var_DC)) 'String
  loc_175B922:               Set var_104 = Me.FGridRef
  loc_175B928:               LateIdCallSt
  loc_175B940:             End If
  loc_175B946:             Me.MoveNext
  loc_175B951:             var_8E = (var_8E + 1)
  loc_175B954:             GoTo loc_175B560
  loc_175B957:           End If
  loc_175B957:         End If
  loc_175B957:         Call Proc_185_162_11F7928(var_8E, var_104, var_FC, var_150, var_EC, var_104, var_FC)
  loc_175B968:         Me.FrameRef.Visible = True
  loc_175B980:         Me.FrameRef.ZOrder 0
  loc_175B98C:         Set var_B8 = Me.FGridRef
  loc_175B99D:         Exit Sub
  loc_175B99E:       End If
  loc_175B9A1:     Else
  loc_175B9B2:       If ((CLng(Shift) = &H54) And (arg_14 = 4)) Then
  loc_175B9BD:         Call TxtCr_Validate(KeyCode)
  loc_175B9CF:         Set var_B8 = Me.TxtCr
  loc_175B9D5:         Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC, var_100, 0, FGridRef.DispID_8001, var_150)
  loc_175B9DD:         var_EC = var_CC.Text
  loc_175B9F9:         If (CDbl(Val(var_100)) <= CDbl(0)) Then
  loc_175B9FC:           Exit Sub
  loc_175B9FD:         End If
  loc_175BA11:         var_100 = "SELECT TDSCAT.* FROM TDSCAT LEFT JOIN SUBGROUP ON SUBGROUP.TDS_CATG=TDSCAT.CODE WHERE (TDSCAT.LOGSITE_CODE='" & MemVar_1F95078
  loc_175BA28:         Set var_B8 = Me.TxtAcName
  loc_175BA2E:         Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC, var_118, var_100 & "' OR TDSCAT.LOGSITE_CODE='HO') AND SUBGROUP.SUBCODE='", var_DC, -1)
  loc_175BA36:         var_104 = var_CC.Tag
  loc_175BA4F:         unk_5C26D2.Execute var_104 & var_118 & "'", var_FC, var_150
  loc_175BA5A:         Set var_88 = var_104
  loc_175BA8A:         If (var_88.RecordCount > 0) Then
  loc_175BAB3:           Proc_183_3_E7DD58(var_FC, CVar(var_88.Fields.Item("TDSPercentage")))
  loc_175BABC:           var_B0 = CSng(var_FC)
  loc_175BACC:         Else
  loc_175BACF:           var_B0 = CDbl(0)
  loc_175BAD2:         End If
  loc_175BAE4:         Me.FrameTDS.Tag = CStr(KeyCode)
  loc_175BB06:         If (Me.RecordCount > 0) Then
  loc_175BB12:           Me.Sort = "V_SNo ASC"
  loc_175BB1D:           Me.MoveFirst
  loc_175BB2D:           var_C8 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_175BB58:           var_120 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_175BB7E:           Me.Find "V_SNO=" & CStr(var_120), 0, 1
  loc_175BBA6:           If (Me.EOF = 0) Then
  loc_175BBAF:             var_C8 = "TDSNAME"
  loc_175BBE3:             Set var_104 = Me.TxtTDSCode
  loc_175BBE9:             Call 0.Method_TxtCr_KeyDown0 (0, var_178, CStr(Me.Fields.Item(var_C8).Value), var_188, var_120, 1)
  loc_175BBF1:             var_178.Text = var_C8
  loc_175BC41:             Set var_104 = Me.TxtTDSCode
  loc_175BC47:             Call 0.Method_TxtCr_KeyDown0 (0, var_178, CStr(Me.Fields.Item("TDSCODE").Value), var_B0)
  loc_175BC4F:             var_178.Tag = var_B0
  loc_175BC9D:             Me.TxtTDSNarration.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("Narration")), var_EC)
  loc_175BCEA:             Me.TxtONAMT.Text = CStr(Me.Fields.Item("ONAmt").Value)
  loc_175BD39:             Me.TxtTDS.Text = CStr(Me.Fields.Item("TDS").Value)
  loc_175BD88:             Me.TxtTDSAMT.Text = CStr(Me.Fields.Item("TDSAmt").Value)
  loc_175BDB9:             var_CC = Me.Fields.Item("TDSAmt")
  loc_175BDD7:             Set var_104 = Me.TxtDr
  loc_175BDDD:             Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_178)
  loc_175BDE5:             var_178.Tag = CStr(var_CC.Value)
  loc_175BDFE:           Else
  loc_175BE0A:             Set var_B8 = Me.TxtTDSCode
  loc_175BE10:             Call 0.Method_TxtCr_KeyDown0 (0, var_CC)
  loc_175BE18:             var_CC.Text = vbNullString
  loc_175BE30:             Set var_B8 = Me.TxtTDSCode
  loc_175BE36:             Call 0.Method_TxtCr_KeyDown0 (0, var_CC)
  loc_175BE3E:             var_CC.Tag = vbNullString
  loc_175BE57:             Me.TxtTDSNarration.Text = vbNullString
  loc_175BE6C:             Set var_B8 = Me.TxtCr
  loc_175BE72:             Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC)
  loc_175BE96:             Me.TxtONAMT.Text = CStr(Val(var_CC.Text))
  loc_175BEBD:             Me.TxtTDS.Text = CStr(var_B0)
  loc_175BECF:             Set var_CC = Me.TxtTDS
  loc_175BEE2:             var_120 = Val(var_CC.Text)
  loc_175BF16:             Me.TxtTDSAMT.Text = CStr(((Val(Me.TxtONAMT.Text) * var_120) / CDbl(&H64)))
  loc_175BF2D:           End If
  loc_175BF30:         Else
  loc_175BF3C:           Set var_B8 = Me.TxtTDSCode
  loc_175BF42:           Call 0.Method_TxtCr_KeyDown0 (0, var_CC, vbNullString)
  loc_175BF62:           Set var_B8 = Me.TxtTDSCode
  loc_175BF68:           Call 0.Method_TxtCr_KeyDown0 (0, var_CC)
  loc_175BF70:           var_CC.Tag = vbNullString
  loc_175BF89:           Me.TxtTDSNarration.Text = vbNullString
  loc_175BF9E:           Set var_B8 = Me.TxtCr
  loc_175BFA4:           Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC)
  loc_175BFC2:           Set var_104 = Me.TxtONAMT
  loc_175BFC8:           var_104.Text = CStr(Val(var_120))
  loc_175BFE2:           var_100 = CStr(var_B0)
  loc_175BFEF:           Me.TxtTDS.Text = var_100
  loc_175C007:           Me.TxtTDSAMT.Text = vbNullString
  loc_175C00F:         End If
  loc_175C01B:         Me.FrameTDS.Visible = True
  loc_175C033:         Me.FrameTDS.ZOrder 0
  loc_175C044:         Set var_B8 = Me.TxtTDSCode
  loc_175C04A:         Call 0.Method_TxtCr_KeyDown0 (0, var_CC)
  loc_175C052:         var_CC.SetFocus
  loc_175C06A:         Set var_CC = Me.TxtTDSCode
  loc_175C070:         Call 0.Method_TxtCr_KeyDown0 (0, var_104)
  loc_175C096:         var_C8 = CVar((Me.FrameTDS.Left + var_104.Left)) 'Single
  loc_175C0A5:         Me.DGTDSCODE.Left = 0
  loc_175C0C1:         Set var_CC = Me.TxtTDSCode
  loc_175C0C7:         Call 0.Method_TxtCr_KeyDown0 (0, var_104)
  loc_175C0E0:         Set var_178 = Me.TxtTDSCode
  loc_175C0E6:         Call 0.Method_TxtCr_KeyDown0 (0, var_19C)
  loc_175C114:         var_C8 = CVar((((Me.FrameTDS.Top + var_104.Top) + var_19C.Height) + CDbl(&H32))) 'Single
  loc_175C123:         Me.DGTDSCODE.Top = 0
  loc_175C137:         Exit Sub
  loc_175C138:       End If
  loc_175C138:     End If
  loc_175C138:   End If
  loc_175C138: End If
  loc_175C13D: Set var_88 = Nothing
  loc_175C145: Set var_8C = Nothing
  loc_175C148: Exit Sub
  loc_175C149: ' Referenced from: 175A520
  loc_175C14F: Call 0.Method_arg_50 (var_100)
  loc_175C164: Proc_183_57_104B0BC(var_100, "TxtCr_KeyDown")
  loc_175C170: Exit Sub
End Sub

Private Sub TxtCr_KeyPress(KeyAscii As Integer) 'EAB480
  'Data Table: 5C26BC
  loc_EAB400: On Error Goto loc_EAB457
  loc_EAB40C: If (global_132 = &HFF) Then
  loc_EAB40F:   Exit Sub
  loc_EAB410: End If
  loc_EAB41C: If (CInt(global_110) <= 2) Then
  loc_EAB429:   Set var_88 = Me.TxtCr
  loc_EAB42F:   Call 0.Method_TxtCr_KeyPress0 (KeyAscii)
  loc_EAB44A:   Proc_183_22_129BBAC(var_8C, arg_10, &HA)
  loc_EAB456: End If
  loc_EAB456: Exit Sub
  loc_EAB457: ' Referenced from: EAB400
  loc_EAB45D: Call 0.Method_arg_50 (var_98, 2)
  loc_EAB472: Proc_183_57_104B0BC(var_98, "TxtCr_KeyPress")
  loc_EAB47E: Exit Sub
End Sub

Private Sub TxtCr_KeyUp(KeyCode As Integer, Shift As Integer) 'F1B33C
  'Data Table: 5C26BC
  Dim var_8C As TextBox
  Dim var_88 As Label
  loc_F1B24C: On Error Goto loc_F1B311
  loc_F1B25C: Set var_88 = Me.TxtCr
  loc_F1B262: Call 0.Method_TxtCr_KeyUp0 (KeyCode, var_8C)
  loc_F1B286: If (CDbl(Val(var_8C.Text)) <> CDbl(0)) Then
  loc_F1B296:   Set var_88 = Me.TxtCr
  loc_F1B29C:   Call 0.Method_TxtCr_KeyUp0 (KeyCode, var_8C)
  loc_F1B2A4:   var_90 = var_8C.Text
  loc_F1B2B7:   var_A0 = " Paise"
  loc_F1B2DF:   Me.LblAmtRs.Caption = Proc_183_50_F746C0(Val(var_90), "Rs")
  loc_F1B2FB: Else
  loc_F1B308:   Me.LblAmtRs.Caption = vbNullString
  loc_F1B310: End If
  loc_F1B310: Exit Sub
  loc_F1B311: ' Referenced from: F1B24C
  loc_F1B317: Call 0.Method_arg_50 (var_90, var_A0)
  loc_F1B32C: Proc_183_57_104B0BC(var_90, "TxtCr_KeyUp")
  loc_F1B338: Exit Sub
End Sub

Private Sub TxtCr_LostFocus(Index As Integer) 'E9C8D8
  'Data Table: 5C26BC
  Dim var_88 As Label
  loc_E9C860: On Error Goto loc_E9C8B0
  loc_E9C870: Me.LblAmtRs.Caption = vbNullString
  loc_E9C881: If (global_132 = &HFF) Then
  loc_E9C884:   Exit Sub
  loc_E9C885: End If
  loc_E9C88F: Set var_88 = Me.TxtCr
  loc_E9C895: Call 0.Method_TxtCr_LostFocus0 (Index)
  loc_E9C8A3: Call Proc_185_164_E27050(var_8C)
  loc_E9C8AF: Exit Sub
  loc_E9C8B0: ' Referenced from: E9C860
  loc_E9C8B6: Call 0.Method_arg_50 (var_94)
  loc_E9C8CB: Proc_183_57_104B0BC(var_94, "TxtCr_LostFocus")
  loc_E9C8D7: Exit Sub
End Sub

Private Sub TxtCr_Validate(Cancel As Boolean) '11D4794
  'Data Table: 5C26BC
  Dim var_98 As Variant
  Dim var_A4 As TextBox
  Dim arg_10 As Integer
  Dim var_110 As Double
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_9C As String
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_90 As Double
  Dim var_124 As Long
  Dim var_A0 As MSFlexGrid
  Dim var_F8 As Variant
  loc_11D4330: On Error Goto loc_11D476C
  loc_11D433C: If (global_132 = &HFF) Then
  loc_11D433F:   Exit Sub
  loc_11D4340: End If
  loc_11D434C: If (CInt(global_110) = 3) Then
  loc_11D434F:   Exit Sub
  loc_11D4350: End If
  loc_11D435C: If (CInt(global_110) <= 2) Then
  loc_11D436C:   Set var_94 = Me.TxtCr
  loc_11D4372:   Call 0.Method_TxtCr_Validate0 (Cancel, var_98)
  loc_11D4399:   Set var_A0 = Me.TxtCr
  loc_11D439F:   Call 0.Method_TxtCr_Validate0 (Cancel, var_A4)
  loc_11D43A7:   var_A6 = var_A4.Visible
  loc_11D43C1:   If ((CDbl(Val(var_98.Text)) = CDbl(0)) And (var_A6 = &HFF)) Then
  loc_11D43C6:     arg_10 = &HFF
  loc_11D43C9:     Exit Sub
  loc_11D43CA:   End If
  loc_11D43D4:   Set var_94 = Me.TxtCr
  loc_11D43DA:   Call 0.Method_TxtCr_Validate0 (Cancel, var_98)
  loc_11D43E6:   Proc_183_6_EA3B94(CVar(var_98))
  loc_11D440D:   var_108 = Format(CVar(arg_10), "0.00")
  loc_11D4423:   Set var_A0 = Me.TxtCr
  loc_11D4429:   Call 0.Method_TxtCr_Validate0 (Cancel, var_A4, CStr(var_108))
  loc_11D4431:   var_A4.Text = 1
  loc_11D4453:   Call Proc_185_145_E9CA60(Cancel, var_A6)
  loc_11D445C:   var_86 = var_A6 'Byte
  loc_11D449F:   If (Me.Fields.Item("OnLineAdjustment").Value = "Yes") Then
  loc_11D44A5:     var_90 = CDbl(0)
  loc_11D44BF:     If (Me.RecordCount > 0) Then
  loc_11D44CB:       Me.Sort = "VSNo ASC"
  loc_11D44DB:       var_C8 = CVar(CLng((Cancel + global_108))) 'Long
  loc_11D44E0:       var_124 = 1
  loc_11D452C:       Me.Find "VSNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix)))), 0, 1
  loc_11D4554:       If (Me.EOF = 0) Then
  loc_11D4557:         ' Referenced from: 11D46D1
  loc_11D457C:         var_D8 = Me.Fields.Item("VSno").Value
  loc_11D458F:         var_E8 = CVar(CLng((Cancel + global_108))) 'Long
  loc_11D45B2:         var_9C = CStr(Me.FGrid1.TextMatrix))
  loc_11D45D4:         If (1 = CVar(Val(var_9C))) Then
  loc_11D45FC:           var_D8 = Me.Fields.Item("subcode").Value
  loc_11D460F:           var_E8 = CVar(CLng((Cancel + global_108))) 'Long
  loc_11D464A:           If CBool(2 <> CVar(CStr(Me.FGrid1.TextMatrix)))) Then
  loc_11D4658:             Me.Delete
  loc_11D4660:           Else
  loc_11D4681:             var_98 = Me.Fields.Item("dr")
  loc_11D4690:             Proc_183_3_E7DD58(var_D8, CVar(var_98), CVar(var_90), 1, CVar(var_90), var_D8, CVar(var_90))
  loc_11D4698:             var_F8 = (var_D8 + var_D8)
  loc_11D469D:             var_90 = CSng(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_11D46AC:           End If
  loc_11D46B2:           Me.MoveNext
  loc_11D46CB:           If (Me.EOF = &HFF) Then
  loc_11D46CE:             GoTo loc_11D46D4
  loc_11D46D1:           End If
  loc_11D46D1:           GoTo loc_11D4557
  loc_11D46D4:           ' Referenced from: 11D46CE
  loc_11D46D4:         End If
  loc_11D46D4:       End If
  loc_11D46D4:     End If
  loc_11D46E1:     Set var_94 = Me.TxtCr
  loc_11D46E7:     Call 0.Method_TxtCr_Validate0 (Cancel, var_98, var_9C, var_90, var_14C)
  loc_11D46EF:     var_110 = var_98.Text
  loc_11D46FC:     var_110 = Val(var_9C)
  loc_11D4711:     If (var_90 > CDbl(var_110)) Then
  loc_11D4722:       var_C8 = "Can't Adjust More Amount"
  loc_11D472D:       MsgBox(var_C8, 0, var_D8, CVar(CStr(Me.FGrid1.TextMatrix))), var_108)
  loc_11D473F:       arg_10 = &HFF
  loc_11D4742:     End If
  loc_11D4742:   End If
  loc_11D4742: End If
  loc_11D474E: Me.LblHelp.Visible = False
  loc_11D4763: Me.LblAmtRs.Caption = vbNullString
  loc_11D476B: Exit Sub
  loc_11D476C: ' Referenced from: 11D4330
  loc_11D4772: Call 0.Method_arg_50 (var_9C, arg_10, var_110, var_124)
  loc_11D4787: Proc_183_57_104B0BC(var_9C, "TxtCr_Validate", var_C8)
  loc_11D4793: Exit Sub
End Sub

Private Sub TxtDr_GotFocus(Index As Integer) '10D2AD4
  'Data Table: 5C26BC
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_A4 As Double
  Dim var_108 As Double
  Dim var_C4 As Variant
  Dim var_FC As TextBox
  Dim var_88 As Label
  Dim var_F8 As Label
  loc_10D27E8: On Error Goto loc_10D2AA9
  loc_10D27F4: If (global_132 = &HFF) Then
  loc_10D27F7:   Exit Sub
  loc_10D27F8: End If
  loc_10D2802: Set var_88 = Me.TxtDr
  loc_10D2808: Call 0.Method_TxtDr_GotFocus0 (Index)
  loc_10D2816: Call Proc_185_163_E22184(var_8C)
  loc_10D2822: Call Proc_185_169_F64FF4(var_8C)
  loc_10D2834: Set var_88 = Me.TxtDr
  loc_10D283A: Call 0.Method_TxtDr_GotFocus0 (Index, var_8C)
  loc_10D285C: Set var_90 = Me.TxtAcName
  loc_10D2862: Call 0.Method_TxtDr_GotFocus0 (Index, var_98)
  loc_10D288A: If ((var_8C.Text = vbNullString) And (var_98.Text <> vbNullString)) Then
  loc_10D2899:   Set var_90 = Me.LblDrAmt
  loc_10D289F:   Call 0.Method_TxtDr_GotFocus0 (0, var_98)
  loc_10D28A7:   var_9C = var_98.Caption
  loc_10D28C3:   Set var_88 = Me.LblCrAmt
  loc_10D28C9:   Call 0.Method_TxtDr_GotFocus0 (0, var_8C)
  loc_10D28F6:   If (CDbl(Val(var_8C.Caption)) > CDbl(Val(var_9C))) Then
  loc_10D2905:     Set var_88 = Me.LblCrAmt
  loc_10D290B:     Call 0.Method_TxtDr_GotFocus0 (0, var_8C)
  loc_10D2913:     var_94 = var_8C.Caption
  loc_10D2920:     var_A4 = Val(var_94)
  loc_10D292F:     Set var_90 = Me.LblDrAmt
  loc_10D2935:     Call 0.Method_TxtDr_GotFocus0 (0, var_98, var_9C)
  loc_10D2969:     var_C4 = CVar((var_98.Caption - Val(var_9C))) 'Double
  loc_10D2986:     Set var_F8 = Me.TxtDr
  loc_10D298C:     Call 0.Method_TxtDr_GotFocus0 (Index, var_FC, CStr(Format(var_C4, "0.00")), 1)
  loc_10D2994:     var_FC.Text = 1
  loc_10D29BA:   End If
  loc_10D29BA: End If
  loc_10D29C7: Set var_88 = Me.TxtDr
  loc_10D29CD: Call 0.Method_TxtDr_GotFocus0 (Index, var_8C, var_94)
  loc_10D29D5: var_108 = var_8C.Text
  loc_10D29E8: Set var_90 = Me.TxtDr
  loc_10D29EE: Call 0.Method_TxtDr_GotFocus0 (Index, var_98)
  loc_10D29F6: var_98.SelLength = Len(var_94)
  loc_10D2A15: If (CInt(global_110) <= 2) Then
  loc_10D2A24:   Me.LblHelp.Visible = True
  loc_10D2A3A:   Me.LblHelp.Left = CDbl(0)
  loc_10D2A4E:   Set var_90 = Me.TxtCHno
  loc_10D2A54:   Call 0.Method_TxtDr_GotFocus0 (0, var_98)
  loc_10D2A6D:   Set var_88 = Me.TxtCHno
  loc_10D2A73:   Call 0.Method_TxtDr_GotFocus0 (0, var_8C)
  loc_10D2A96:   Me.LblHelp.Top = ((var_8C.Top + var_98.Height) + CDbl(&H19))
  loc_10D2AA8: End If
  loc_10D2AA8: Exit Sub
  loc_10D2AA9: ' Referenced from: 10D27E8
  loc_10D2AAF: Call 0.Method_arg_50 (var_94)
  loc_10D2AC4: Proc_183_57_104B0BC(var_94, "TxtDr_GotFocus")
  loc_10D2AD0: Exit Sub
End Sub

Private Sub TxtDr_KeyDown(KeyCode As Integer, Shift As Integer) '1761BE8
  'Data Table: 5C26BC
  Dim var_C4 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As String
  Dim var_100 As Variant
  Dim var_11C As Double
  Dim var_D8 As Variant
  Dim var_114 As String
  Dim var_14C As Variant
  Dim var_12C As Variant
  Dim var_A4 As Double
  Dim var_170 As String
  Dim unk_5C26D2 As Connection15
  Dim var_88 As Recordset15
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_198 As Variant
  Dim var_15C As Variant
  Dim var_29C As Double
  Dim var_F8 As Variant
  Dim var_110 As Variant
  Dim var_13C As Variant
  Dim var_1C8 As Variant
  Dim var_200 As Variant
  Dim var_26C As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_398 As Variant
  Dim var_488 As Variant
  Dim var_4A8 As Variant
  Dim var_4C8 As Variant
  Dim var_678 As Variant
  Dim var_6C0 As Variant
  Dim var_AE As Integer
  Dim var_AC As Double
  loc_175FF7C: On Error Goto loc_1761BC0
  loc_175FF88: If (global_132 = &HFF) Then
  loc_175FF8B:   Exit Sub
  loc_175FF8C: End If
  loc_175FF96: If (CLng(Shift) = &H1B) Then
  loc_175FF99:   Call Proc_185_169_F64FF4()
  loc_175FF9E: End If
  loc_175FFAA: If (CInt(global_110) <= 2) Then
  loc_175FFB7:   If (CLng(Shift) = &H2D) Then
  loc_175FFC2:     Call TxtDr_Validate(KeyCode)
  loc_175FFE4:     var_C8 = Me.Fields.Item("OnLineAdjustment")
  loc_1760006:     If (var_C8.Value = "Yes") Then
  loc_1760016:       Set var_B4 = Me.TxtDr
  loc_176001C:       Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8)
  loc_1760040:       If (CDbl(Val(var_C8.Text)) <= CDbl(0)) Then
  loc_1760043:         Exit Sub
  loc_1760044:       End If
  loc_1760056:       Me.FRAMEADJUST.Tag = CStr(KeyCode)
  loc_176006E:       Set var_B4 = Me.TxtAcName
  loc_1760074:       Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8)
  loc_176008E:       Me.Label4.Caption = var_C8.Text
  loc_17600AC:       Set var_B4 = Me.TxtDr
  loc_17600B2:       Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8)
  loc_17600FF:       Me.ADJ_LAB4.Caption = CStr(Format(CVar(Val(var_C8.Text)), "0.00"))
  loc_176013A:       var_C8 = Me.Fields.Item("ToBy")
  loc_1760142:       var_D8 = var_C8.Value
  loc_176017C:       var_FC = CStr(IIf((var_D8 = "Yes"), "By", "Dr"))
  loc_176018A:       Me.ADJ_LAB5.Caption = var_FC
  loc_17601BB:       Me.FgridAdjust.Rows = 1
  loc_17601E6:       Set var_B4 = Me.TxtAcName
  loc_17601EC:       Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8, var_FC, "Select max(L.DocId) AS DI,MAX(V_SNo) AS VS,MAX(L.V_Type) AS VT,MAX(L.V_Prefix) AS VP,MAX(L.V_No) AS VN,MAX(L.V_Date) AS VD,MAX(AmtCr) As Amount,MAX(L.Narration) AS NARR,MAX(SG.Name) As PartyName,L.SubCode,IsNull(Sum(CR),0) AS TSum,MAX(LEDGERM.Narration) AS MNARR,MAX(L.AgRefNo) AS AgRefNom FROM ((Ledger L Left Join SubGroup SG on SG.SubCode=L.CONTRASub) LEFT JOIN LEDGERAdj ON (L.SUBCODE=LedgerAdj.SUBCODE) AND (L.V_SNo=LedgerAdj.V_SNo1) AND (L.DocId=LedgerAdj.DocId1)) LEFT JOIN LEDGERM ON LEDGERM.DOCID=L.DOCID Where L.SubCode='", var_D8, -1)
  loc_1760204:       var_170 = CDbl(0) & var_FC & "' GROUP BY L.SUBCODE,L.DOCID,L.V_SNO HAVING MAX(AmtCr)>0 ORDER BY L.SUBCODE,MAX(L.V_Date),L.DOCID,L.V_SNO"
  loc_176020D:       unk_5C26D2.Execute var_170, 1, 1
  loc_1760218:       Set var_88 = var_C8.Tag
  loc_1760230:       ' Referenced from: 1760C52
  loc_176023F:       If Not(var_88.EOF) Then
  loc_176024E:         If (CInt(global_110) = 2) Then
  loc_176025E:           Set var_B4 = Me.TxtAcName
  loc_1760264:           Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8, var_FC)
  loc_176026C:           var_11C = var_C8.Tag
  loc_17602A6:           var_12C = CVar(CLng((KeyCode + global_108))) 'Long
  loc_17602AB:           var_184 = 1
  loc_176032E:           var_29C = Val(CStr(var_88.Fields.Item("VS").Value))
  loc_1760352:           var_110 = CVar("Select IsNull(Sum(CR),0) AS TSum FROM LEDGERAdj WHERE SUBCODE='" & var_FC & "' AND DocID2='") & Me.Fields.Item("DocID").Value 
  loc_1760376:           var_200 = var_110 & "' And V_SNo2=" & CVar(Val(CStr(Me.FGrid1.TextMatrix)))) & " AND DocID1='" & var_88.Fields.Item("DI").Value 
  loc_1760398:           unk_5C26D2.Execute CStr(var_200 & "' And V_SNo1=" & CVar(var_29C)), var_290, -1
  loc_17603A3:           Set var_8C = var_294
  loc_17603FB:           If (var_8C.RecordCount > 0) Then
  loc_1760429:             var_A4 = CSng(var_8C.Fields.Item("TSUM").Value)
  loc_1760436:           End If
  loc_1760436:         End If
  loc_1760439:         var_94 = CDbl(0)
  loc_176043F:         var_9C = CDbl(0)
  loc_1760489:         If ((CLng((KeyCode + global_108)) = CLng(Me.FGrid1.Rows)) Or (CLng(Me.FGrid1.Rows) = 0)) Then
  loc_176048C:           GoTo loc_17606DD
  loc_176048F:         End If
  loc_17604A6:         If (Me.RecordCount > 0) Then
  loc_17604B2:           Me.Sort = "VSNo ASC"
  loc_17604BD:           Me.MoveFirst
  loc_17604C2:           ' Referenced from: 17606DA
  loc_17604D4:           If Not(Me.EOF) Then
  loc_176058D:             var_1C8 = (Me.Fields.Item("DocID").Value = var_88.Fields.Item("DI").Value) And (Me.Fields.Item("V_SNo").Value = var_88.Fields.Item("VS").Value)
  loc_17605B1:             If CBool(var_1C8) Then
  loc_17605D9:               var_F8 = Me.Fields.Item("VSno").Value
  loc_17605EC:               var_E8 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_1760631:               If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_1760664:                 Proc_183_3_E7DD58(var_F8, CVar(Me.Fields.Item("cr")), CVar(var_94), CVar(var_94), var_F8, var_9C, var_94)
  loc_176066C:                 var_110 = (var_A4 + var_F8)
  loc_1760671:                 var_94 = CSng(var_110)
  loc_1760683:               Else
  loc_17606B3:                 Proc_183_3_E7DD58(var_F8, CVar(Me.Fields.Item("cr")), CVar(var_9C), var_94, var_294)
  loc_17606BB:                 var_110 = (var_29C + var_F8)
  loc_17606C0:                 var_9C = CSng(var_110)
  loc_17606CF:               End If
  loc_17606CF:             End If
  loc_17606D5:             Me.MoveNext
  loc_17606DA:             GoTo loc_17604C2
  loc_17606DD:             ' Referenced from: 176048C
  loc_17606DD:           End If
  loc_17606DD:         End If
  loc_1760731:         var_110 = (var_88.Fields.Item("Amount").Value - var_88.Fields.Item("TSUM").Value)
  loc_176073C:         var_13C = (var_110 + CVar(var_A4))
  loc_1760747:         var_15C = (var_88.Fields.Item("VS").Value - CVar(var_9C))
  loc_1760767:         If (Me.Fields.Item("V_SNo").Value > 0) Then
  loc_1760865:           var_174 = var_88.Fields.Item("VN")
  loc_176089F:           var_198 = var_88.Fields
  loc_17608B7:           var_26C = vbNullString & Chr(9) & var_88.Fields.Item("VT").Value & Chr(9) & var_174.Value & Chr(9) & var_198.Item("VP").Value 
  loc_17608D5:           var_184 = "VS"
  loc_176098E:           var_398 = 1 & Format(CVar(var_88.Fields.Item("VD")), "Short Date") & Chr(9) & var_88.Fields.Item("PartyName").Value & Chr(9) 
  loc_1760A2E:           var_488 = (var_88.Fields.Item("Amount").Value - var_88.Fields.Item("TSUM").Value)
  loc_1760A39:           var_4A8 = (var_488 + CVar(var_A4))
  loc_1760A44:           var_4C8 = (var_4A8 - CVar(var_9C))
  loc_1760ADA:           var_FC = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("mNarr")), 1 & Format(var_94, "0.00") & Chr(9), 1, 1 & Format(var_4C8, "0.00") & Chr(9), 1, 1 & Format(CVar(var_88.Fields.Item("Amount")), "0.00") & Chr(9), 1)
  loc_1760B0C:           var_170 = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("NARR")), var_FC & " ", var_398 & var_88.Fields.Item("AgRefNom").Value & Chr(9), 1)
  loc_1760B44:           var_678 = var_9C & CVar(var_26C & Chr(9) & var_88.Fields.Item(var_184).Value & Chr(9) & var_170) & Chr(9) & vbNullString & Chr(9) 
  loc_1760B77:           var_6C0 = CVar(CStr(var_678 & var_88.Fields.Item("DI").Value)) 'String
  loc_1760B7F:           Set var_6D4 = Me.FgridAdjust
  loc_1760C4A:         End If
  loc_1760C4D:         var_88.MoveNext
  loc_1760C52:         GoTo loc_1760230
  loc_1760C55:       End If
  loc_1760C62:       Me.TXTNARRATION.Text = vbNullString
  loc_1760C6A:       Call Proc_185_161_100F7F8(FgridAdjust.DispID_10000, var_6C0)
  loc_1760C8E:       If (CLng(Me.FgridAdjust.Rows) > 1) Then
  loc_1760C9D:         Me.FRAMEADJUST.Visible = True
  loc_1760CB5:         Me.FRAMEADJUST.ZOrder 0
  loc_1760CBD:       End If
  loc_1760CBD:       Exit Sub
  loc_1760CBE:     End If
  loc_1760CC1:   Else
  loc_1760CD2:     If ((CLng(Shift) = &H52) And (arg_14 = 4)) Then
  loc_1760CDD:       Call TxtDr_Validate(KeyCode)
  loc_1760CFF:       var_C8 = Me.Fields.Item("OnLineAdjustment")
  loc_1760D21:       If (var_C8.Value = "Yes") Then
  loc_1760D31:         Set var_B4 = Me.TxtDr
  loc_1760D37:         Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8, var_FC)
  loc_1760D3F:         0 = var_C8.Text
  loc_1760D5B:         If (CDbl(Val(var_FC)) <= CDbl(0)) Then
  loc_1760D5E:           Exit Sub
  loc_1760D5F:         End If
  loc_1760D64:         var_FC = CStr(KeyCode)
  loc_1760D71:         Me.FrameRef.Tag = var_FC
  loc_1760D89:         Set var_B4 = Me.TxtAcName
  loc_1760D8F:         Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8, var_FC)
  loc_1760D97:         var_11C = var_C8.Text
  loc_1760DA9:         Me.LblRefName.Caption = var_FC
  loc_1760DC7:         Set var_B4 = Me.TxtDr
  loc_1760DCD:         Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8)
  loc_1760E1A:         Me.LblRefAmt.Caption = CStr(Format(CVar(Val(var_C8.Text)), "0.00"))
  loc_1760EA5:         Me.LblRefAmtDrCr.Caption = CStr(IIf((Me.Fields.Item("ToBy").Value = "Yes"), "By", "Dr"))
  loc_1760ED6:         Me.FGridRef.Rows = 1
  loc_1760EDE:         var_C4 = vbNullString
  loc_1760EE8:         Set var_B4 = Me.FGridRef
  loc_1760F0C:         Me.FGridRef.FixedRows = 1
  loc_1760F16:         var_AE = 1
  loc_1760F30:         If (Me.RecordCount > 0) Then
  loc_1760F3C:           Me.Sort = "V_SNo ASC"
  loc_1760F47:           Me.MoveFirst
  loc_1760F57:           var_C4 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_1760F5C:           var_12C = 1
  loc_1760F9B:           var_114 = CStr(Val(CStr(Me.FGrid1.TextMatrix))))
  loc_1760FA8:           Me.Find "V_SNO=" & var_114, 0, 1
  loc_1760FBC:           ' Referenced from:   17613B0
  loc_1760FCE:           If Not(Me.EOF) Then
  loc_1760FF6:             var_F8 = Me.Fields.Item("V_SNo").Value
  loc_1761009:             var_E8 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_176102C:             var_FC = CStr(Me.FGrid1.TextMatrix))
  loc_176104E:             If (1 = CVar(Val(var_FC))) Then
  loc_1761051:               var_C4 = vbNullString
  loc_176105B:               Set var_B4 = Me.FGridRef
  loc_1761070:               var_E8 = CVar(CLng(var_AE)) 'Long
  loc_1761078:               var_14C = CVar(CLng(5)) 'Long
  loc_17610AB:               var_F8 = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_17610B3:               Set var_100 = Me.FGridRef
  loc_17610B9:               LateIdCallSt
  loc_17610D5:               var_E8 = CVar(CLng(var_AE)) 'Long
  loc_17610DD:               var_14C = CVar(CLng(6)) 'Long
  loc_1761110:               var_F8 = CVar(CStr(Me.Fields.Item("V_SNo").Value)) 'String
  loc_176111E:               LateIdCallSt
  loc_1761170:               Proc_183_5_EF3F20(var_F8, CVar(Me.Fields.Item("dr")), CVar(CLng(4)), CVar(CLng(var_AE)), Me.FGridRef, var_F8, CVar(CLng(4)))
  loc_1761187:               LateIdCallSt
  loc_17611D9:               Proc_183_5_EF3F20(var_F8, CVar(Me.Fields.Item("cr")), CVar(CLng(3)), CVar(CLng(var_AE)), Me.FGridRef, CVar(CStr(var_F8)), CVar(CLng(var_AE)))
  loc_17611E2:               var_110 = CVar(CStr(var_F8)) 'String
  loc_17611EA:               Set var_100 = Me.FGridRef
  loc_17611F0:               LateIdCallSt
  loc_176120C:               var_E8 = CVar(CLng(var_AE)) 'Long
  loc_1761214:               var_14C = CVar(CLng(7)) 'Long
  loc_1761247:               var_F8 = CVar(CStr(Me.Fields.Item("subcode").Value)) 'String
  loc_176124F:               Set var_100 = Me.FGridRef
  loc_1761255:               LateIdCallSt
  loc_1761271:               var_E8 = CVar(CLng(var_AE)) 'Long
  loc_1761279:               var_14C = CVar(CLng(2)) 'Long
  loc_17612AC:               var_F8 = CVar(CStr(Me.Fields.Item("AgRefNo").Value)) 'String
  loc_17612B4:               Set var_100 = Me.FGridRef
  loc_17612BA:               LateIdCallSt
  loc_17612D6:               var_E8 = CVar(CLng(var_AE)) 'Long
  loc_17612DE:               var_14C = CVar(CLng(1)) 'Long
  loc_1761311:               var_F8 = CVar(CStr(Me.Fields.Item("AgRefType").Value)) 'String
  loc_1761319:               Set var_100 = Me.FGridRef
  loc_176131F:               LateIdCallSt
  loc_176133B:               var_E8 = CVar(CLng(var_AE)) 'Long
  loc_1761343:               var_14C = CVar(CLng(8)) 'Long
  loc_1761365:               var_C8 = Me.Fields.Item("DueDate")
  loc_176136D:               var_D8 = var_C8.Value
  loc_1761376:               var_F8 = CVar(CStr(var_D8)) 'String
  loc_176137E:               Set var_100 = Me.FGridRef
  loc_1761384:               LateIdCallSt
  loc_176139C:             End If
  loc_17613A2:             Me.MoveNext
  loc_17613AD:             var_AE = (var_AE + 1)
  loc_17613B0:             GoTo loc_1760FBC
  loc_17613B3:           End If
  loc_17613B3:         End If
  loc_17613B3:         Call Proc_185_162_11F7928(var_AE, var_100, var_F8, var_14C, var_E8, var_100, var_F8)
  loc_17613C4:         Me.FrameRef.Visible = True
  loc_17613DC:         Me.FrameRef.ZOrder 0
  loc_17613F7:         Me.FGridRef.Col = 1
  loc_1761403:         Set var_B4 = Me.FGridRef
  loc_1761414:         Exit Sub
  loc_1761415:       End If
  loc_1761418:     Else
  loc_1761429:       If ((CLng(Shift) = &H54) And (arg_14 = 4)) Then
  loc_1761434:         Call TxtDr_Validate(KeyCode)
  loc_1761446:         Set var_B4 = Me.TxtDr
  loc_176144C:         Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8, var_FC, 0, FGridRef.DispID_8001, var_14C)
  loc_1761454:         var_E8 = var_C8.Text
  loc_1761470:         If (CDbl(Val(var_FC)) <= CDbl(0)) Then
  loc_1761473:           Exit Sub
  loc_1761474:         End If
  loc_1761488:         var_FC = "SELECT TDSCAT.* FROM TDSCAT LEFT JOIN SUBGROUP ON SUBGROUP.TDS_CATG=TDSCAT.CODE WHERE (TDSCAT.LOGSITE_CODE='" & MemVar_1F95078
  loc_176149F:         Set var_B4 = Me.TxtAcName
  loc_17614A5:         Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8, var_114, var_FC & "' OR TDSCAT.LOGSITE_CODE='HO') AND SUBGROUP.SUBCODE='", var_D8, -1)
  loc_17614AD:         var_100 = var_C8.Tag
  loc_17614C6:         unk_5C26D2.Execute var_100 & var_114 & "'", var_F8, var_14C
  loc_17614D1:         Set var_88 = var_100
  loc_1761501:         If (var_88.RecordCount > 0) Then
  loc_176152A:           Proc_183_3_E7DD58(var_F8, CVar(var_88.Fields.Item("TDSPercentage")))
  loc_1761533:           var_AC = CSng(var_F8)
  loc_1761543:         Else
  loc_1761546:           var_AC = CDbl(0)
  loc_1761549:         End If
  loc_176155B:         Me.FrameTDS.Tag = CStr(KeyCode)
  loc_176157D:         If (Me.RecordCount > 0) Then
  loc_1761589:           Me.Sort = "V_SNo ASC"
  loc_1761594:           Me.MoveFirst
  loc_17615A4:           var_C4 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_17615CF:           var_11C = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_17615F5:           Me.Find "V_SNO=" & CStr(var_11C), 0, 1
  loc_176161D:           If (Me.EOF = 0) Then
  loc_1761626:             var_C4 = "TDSNAME"
  loc_176165A:             Set var_100 = Me.TxtTDSCode
  loc_1761660:             Call 0.Method_TxtDr_KeyDown0 (0, var_174, CStr(Me.Fields.Item(var_C4).Value), var_184, var_11C, 1)
  loc_1761668:             var_174.Text = var_C4
  loc_17616B8:             Set var_100 = Me.TxtTDSCode
  loc_17616BE:             Call 0.Method_TxtDr_KeyDown0 (0, var_174, CStr(Me.Fields.Item("TDSCODE").Value), var_AC)
  loc_17616C6:             var_174.Tag = var_AC
  loc_1761714:             Me.TxtTDSNarration.Text = Proc_183_2_E5AE94(CVar(Me.Fields.Item("Narration")), var_E8)
  loc_1761761:             Me.TxtONAMT.Text = CStr(Me.Fields.Item("ONAmt").Value)
  loc_17617B0:             Me.TxtTDS.Text = CStr(Me.Fields.Item("TDS").Value)
  loc_17617FF:             Me.TxtTDSAMT.Text = CStr(Me.Fields.Item("TDSAmt").Value)
  loc_1761830:             var_C8 = Me.Fields.Item("TDSAmt")
  loc_176184E:             Set var_100 = Me.TxtDr
  loc_1761854:             Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_174)
  loc_176185C:             var_174.Tag = CStr(var_C8.Value)
  loc_1761875:           Else
  loc_1761881:             Set var_B4 = Me.TxtTDSCode
  loc_1761887:             Call 0.Method_TxtDr_KeyDown0 (0, var_C8)
  loc_176188F:             var_C8.Text = vbNullString
  loc_17618A7:             Set var_B4 = Me.TxtTDSCode
  loc_17618AD:             Call 0.Method_TxtDr_KeyDown0 (0, var_C8)
  loc_17618B5:             var_C8.Tag = vbNullString
  loc_17618CE:             Me.TxtTDSNarration.Text = vbNullString
  loc_17618E3:             Set var_B4 = Me.TxtDr
  loc_17618E9:             Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8)
  loc_176190D:             Me.TxtONAMT.Text = CStr(Val(var_C8.Text))
  loc_1761934:             Me.TxtTDS.Text = CStr(var_AC)
  loc_1761946:             Set var_C8 = Me.TxtTDS
  loc_1761959:             var_11C = Val(var_C8.Text)
  loc_176198D:             Me.TxtTDSAMT.Text = CStr(((Val(Me.TxtONAMT.Text) * var_11C) / CDbl(&H64)))
  loc_17619A4:           End If
  loc_17619A7:         Else
  loc_17619B3:           Set var_B4 = Me.TxtTDSCode
  loc_17619B9:           Call 0.Method_TxtDr_KeyDown0 (0, var_C8, vbNullString)
  loc_17619D9:           Set var_B4 = Me.TxtTDSCode
  loc_17619DF:           Call 0.Method_TxtDr_KeyDown0 (0, var_C8)
  loc_17619E7:           var_C8.Tag = vbNullString
  loc_1761A00:           Me.TxtTDSNarration.Text = vbNullString
  loc_1761A15:           Set var_B4 = Me.TxtDr
  loc_1761A1B:           Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8)
  loc_1761A39:           Set var_100 = Me.TxtONAMT
  loc_1761A3F:           var_100.Text = CStr(Val(var_11C))
  loc_1761A59:           var_FC = CStr(var_AC)
  loc_1761A66:           Me.TxtTDS.Text = var_FC
  loc_1761A7E:           Me.TxtTDSAMT.Text = vbNullString
  loc_1761A86:         End If
  loc_1761A92:         Me.FrameTDS.Visible = True
  loc_1761AAA:         Me.FrameTDS.ZOrder 0
  loc_1761ABB:         Set var_B4 = Me.TxtTDSCode
  loc_1761AC1:         Call 0.Method_TxtDr_KeyDown0 (0, var_C8)
  loc_1761AC9:         var_C8.SetFocus
  loc_1761AE1:         Set var_C8 = Me.TxtTDSCode
  loc_1761AE7:         Call 0.Method_TxtDr_KeyDown0 (0, var_100)
  loc_1761B0D:         var_C4 = CVar((Me.FrameTDS.Left + var_100.Left)) 'Single
  loc_1761B1C:         Me.DGTDSCODE.Left = 0
  loc_1761B38:         Set var_C8 = Me.TxtTDSCode
  loc_1761B3E:         Call 0.Method_TxtDr_KeyDown0 (0, var_100)
  loc_1761B57:         Set var_174 = Me.TxtTDSCode
  loc_1761B5D:         Call 0.Method_TxtDr_KeyDown0 (0, var_198)
  loc_1761B8B:         var_C4 = CVar((((Me.FrameTDS.Top + var_100.Top) + var_198.Height) + CDbl(&H32))) 'Single
  loc_1761B9A:         Me.DGTDSCODE.Top = 0
  loc_1761BAE:         Exit Sub
  loc_1761BAF:       End If
  loc_1761BAF:     End If
  loc_1761BAF:   End If
  loc_1761BAF: End If
  loc_1761BB4: Set var_88 = Nothing
  loc_1761BBC: Set var_8C = Nothing
  loc_1761BBF: Exit Sub
  loc_1761BC0: ' Referenced from: 175FF7C
  loc_1761BC6: Call 0.Method_arg_50 (var_FC)
  loc_1761BDB: Proc_183_57_104B0BC(var_FC, "TxtDr_KeyDown")
  loc_1761BE7: Exit Sub
End Sub

Private Sub TxtDr_KeyPress(KeyAscii As Integer) 'EACA60
  'Data Table: 5C26BC
  loc_EAC9E0: On Error Goto loc_EACA37
  loc_EAC9EC: If (global_132 = &HFF) Then
  loc_EAC9EF:   Exit Sub
  loc_EAC9F0: End If
  loc_EAC9FC: If (CInt(global_110) <= 2) Then
  loc_EACA09:   Set var_88 = Me.TxtDr
  loc_EACA0F:   Call 0.Method_TxtDr_KeyPress0 (KeyAscii)
  loc_EACA2A:   Proc_183_22_129BBAC(var_8C, arg_10, &HA)
  loc_EACA36: End If
  loc_EACA36: Exit Sub
  loc_EACA37: ' Referenced from: EAC9E0
  loc_EACA3D: Call 0.Method_arg_50 (var_98, 2)
  loc_EACA52: Proc_183_57_104B0BC(var_98, "TxtDr_KeyPress")
  loc_EACA5E: Exit Sub
End Sub

Private Sub TxtDr_KeyUp(KeyCode As Integer, Shift As Integer) 'F1B0C4
  'Data Table: 5C26BC
  Dim var_8C As TextBox
  Dim var_88 As Label
  loc_F1AFD4: On Error Goto loc_F1B099
  loc_F1AFE4: Set var_88 = Me.TxtDr
  loc_F1AFEA: Call 0.Method_TxtDr_KeyUp0 (KeyCode, var_8C)
  loc_F1B00E: If (CDbl(Val(var_8C.Text)) <> CDbl(0)) Then
  loc_F1B01E:   Set var_88 = Me.TxtDr
  loc_F1B024:   Call 0.Method_TxtDr_KeyUp0 (KeyCode, var_8C)
  loc_F1B02C:   var_90 = var_8C.Text
  loc_F1B03F:   var_A0 = " Paise"
  loc_F1B067:   Me.LblAmtRs.Caption = Proc_183_50_F746C0(Val(var_90), "Rs")
  loc_F1B083: Else
  loc_F1B090:   Me.LblAmtRs.Caption = vbNullString
  loc_F1B098: End If
  loc_F1B098: Exit Sub
  loc_F1B099: ' Referenced from: F1AFD4
  loc_F1B09F: Call 0.Method_arg_50 (var_90, var_A0)
  loc_F1B0B4: Proc_183_57_104B0BC(var_90, "TxtDr_KeyUp")
  loc_F1B0C0: Exit Sub
End Sub

Private Sub TxtDr_LostFocus(Index As Integer) 'E9C998
  'Data Table: 5C26BC
  Dim var_88 As Label
  loc_E9C920: On Error Goto loc_E9C970
  loc_E9C930: Me.LblAmtRs.Caption = vbNullString
  loc_E9C941: If (global_132 = &HFF) Then
  loc_E9C944:   Exit Sub
  loc_E9C945: End If
  loc_E9C94F: Set var_88 = Me.TxtDr
  loc_E9C955: Call 0.Method_TxtDr_LostFocus0 (Index)
  loc_E9C963: Call Proc_185_164_E27050(var_8C)
  loc_E9C96F: Exit Sub
  loc_E9C970: ' Referenced from: E9C920
  loc_E9C976: Call 0.Method_arg_50 (var_94)
  loc_E9C98B: Proc_183_57_104B0BC(var_94, "Txtdr_LostFocus")
  loc_E9C997: Exit Sub
End Sub

Private Sub TxtDr_Validate(Cancel As Boolean) '11D4C54
  'Data Table: 5C26BC
  Dim var_98 As Variant
  Dim var_A4 As TextBox
  Dim arg_10 As Integer
  Dim var_110 As Double
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_9C As String
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_90 As Double
  Dim var_124 As Long
  Dim var_A0 As MSFlexGrid
  Dim var_F8 As Variant
  loc_11D47F0: On Error Goto loc_11D4C2C
  loc_11D47FC: If (global_132 = &HFF) Then
  loc_11D47FF:   Exit Sub
  loc_11D4800: End If
  loc_11D480C: If (CInt(global_110) = 3) Then
  loc_11D480F:   Exit Sub
  loc_11D4810: End If
  loc_11D481C: If (CInt(global_110) <= 2) Then
  loc_11D482C:   Set var_94 = Me.TxtDr
  loc_11D4832:   Call 0.Method_TxtDr_Validate0 (Cancel, var_98)
  loc_11D4859:   Set var_A0 = Me.TxtDr
  loc_11D485F:   Call 0.Method_TxtDr_Validate0 (Cancel, var_A4)
  loc_11D4867:   var_A6 = var_A4.Visible
  loc_11D4881:   If ((CDbl(Val(var_98.Text)) = CDbl(0)) And (var_A6 = &HFF)) Then
  loc_11D4886:     arg_10 = &HFF
  loc_11D4889:     Exit Sub
  loc_11D488A:   End If
  loc_11D4894:   Set var_94 = Me.TxtDr
  loc_11D489A:   Call 0.Method_TxtDr_Validate0 (Cancel, var_98)
  loc_11D48A6:   Proc_183_6_EA3B94(CVar(var_98))
  loc_11D48CD:   var_108 = Format(CVar(arg_10), "0.00")
  loc_11D48E3:   Set var_A0 = Me.TxtDr
  loc_11D48E9:   Call 0.Method_TxtDr_Validate0 (Cancel, var_A4, CStr(var_108))
  loc_11D48F1:   var_A4.Text = 1
  loc_11D4913:   Call Proc_185_145_E9CA60(Cancel, var_A6)
  loc_11D491C:   var_86 = var_A6 'Byte
  loc_11D495F:   If (Me.Fields.Item("OnLineAdjustment").Value = "Yes") Then
  loc_11D4965:     var_90 = CDbl(0)
  loc_11D497F:     If (Me.RecordCount > 0) Then
  loc_11D498B:       Me.Sort = "VSNo ASC"
  loc_11D499B:       var_C8 = CVar(CLng((Cancel + global_108))) 'Long
  loc_11D49A0:       var_124 = 1
  loc_11D49EC:       Me.Find "VSNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix)))), 0, 1
  loc_11D4A14:       If (Me.EOF = 0) Then
  loc_11D4A17:         ' Referenced from: 11D4B91
  loc_11D4A3C:         var_D8 = Me.Fields.Item("VSno").Value
  loc_11D4A4F:         var_E8 = CVar(CLng((Cancel + global_108))) 'Long
  loc_11D4A72:         var_9C = CStr(Me.FGrid1.TextMatrix))
  loc_11D4A94:         If (1 = CVar(Val(var_9C))) Then
  loc_11D4ABC:           var_D8 = Me.Fields.Item("subcode").Value
  loc_11D4ACF:           var_E8 = CVar(CLng((Cancel + global_108))) 'Long
  loc_11D4B0A:           If CBool(2 <> CVar(CStr(Me.FGrid1.TextMatrix)))) Then
  loc_11D4B18:             Me.Delete
  loc_11D4B20:           Else
  loc_11D4B41:             var_98 = Me.Fields.Item("cr")
  loc_11D4B50:             Proc_183_3_E7DD58(var_D8, CVar(var_98), CVar(var_90), 1, CVar(var_90), var_D8, CVar(var_90))
  loc_11D4B58:             var_F8 = (var_D8 + var_D8)
  loc_11D4B5D:             var_90 = CSng(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_11D4B6C:           End If
  loc_11D4B72:           Me.MoveNext
  loc_11D4B8B:           If (Me.EOF = &HFF) Then
  loc_11D4B8E:             GoTo loc_11D4B94
  loc_11D4B91:           End If
  loc_11D4B91:           GoTo loc_11D4A17
  loc_11D4B94:           ' Referenced from: 11D4B8E
  loc_11D4B94:         End If
  loc_11D4B94:       End If
  loc_11D4B94:     End If
  loc_11D4BA1:     Set var_94 = Me.TxtDr
  loc_11D4BA7:     Call 0.Method_TxtDr_Validate0 (Cancel, var_98, var_9C, var_90, var_14C)
  loc_11D4BAF:     var_110 = var_98.Text
  loc_11D4BBC:     var_110 = Val(var_9C)
  loc_11D4BD1:     If (var_90 > CDbl(var_110)) Then
  loc_11D4BE2:       var_C8 = "CanX't Adjust More Amount"
  loc_11D4BED:       MsgBox(var_C8, 0, var_D8, CVar(CStr(Me.FGrid1.TextMatrix))), var_108)
  loc_11D4BFF:       arg_10 = &HFF
  loc_11D4C02:     End If
  loc_11D4C02:   End If
  loc_11D4C02: End If
  loc_11D4C0E: Me.LblHelp.Visible = False
  loc_11D4C23: Me.LblAmtRs.Caption = vbNullString
  loc_11D4C2B: Exit Sub
  loc_11D4C2C: ' Referenced from: 11D47F0
  loc_11D4C32: Call 0.Method_arg_50 (var_9C, arg_10, var_110, var_124)
  loc_11D4C47: Proc_183_57_104B0BC(var_9C, "Txtdr_Validate", var_C8)
  loc_11D4C53: Exit Sub
End Sub

Private Sub TxtNar_GotFocus(Index As Integer) 'E8D814
  'Data Table: 5C26BC
  loc_E8D7AC: On Error Goto loc_E8D7EC
  loc_E8D7B8: If (global_132 = &HFF) Then
  loc_E8D7BB:   Exit Sub
  loc_E8D7BC: End If
  loc_E8D7C6: Set var_88 = Me.TxtNar
  loc_E8D7CC: Call 0.Method_TxtNar_GotFocus0 (Index)
  loc_E8D7DA: Call Proc_185_163_E22184(var_8C)
  loc_E8D7E6: Call Proc_185_169_F64FF4(var_8C)
  loc_E8D7EB: Exit Sub
  loc_E8D7EC: ' Referenced from: E8D7AC
  loc_E8D7F2: Call 0.Method_arg_50 (var_94)
  loc_E8D7FA: var_9C = "TxtNar_GotFocus"
  loc_E8D807: Proc_183_57_104B0BC(var_94)
  loc_E8D813: Exit Sub
End Sub

Private Sub TxtNar_KeyDown(KeyCode As Integer, Shift As Integer) 'F5E32C
  'Data Table: 5C26BC
  Dim var_8C As TextBox
  Dim var_A0 As String
  Dim var_9C As TextBox
  loc_F5E210: On Error Goto loc_F5E302
  loc_F5E21C: If (global_132 = &HFF) Then
  loc_F5E21F:   Exit Sub
  loc_F5E220: End If
  loc_F5E22A: If (CLng(Shift) = &H1B) Then
  loc_F5E22D:   Call Proc_185_169_F64FF4()
  loc_F5E232: End If
  loc_F5E23E: If (CInt(global_110) <= 2) Then
  loc_F5E24B:   If (CLng(Shift) = &H2D) Then
  loc_F5E25B:     Set var_88 = Me.TxtNar
  loc_F5E261:     Call 0.Method_TxtNar_KeyDown0 (KeyCode, var_8C)
  loc_F5E274:     Call Proc_185_165_E99400(var_90)
  loc_F5E28A:     Set var_98 = Me.TxtNar
  loc_F5E290:     Call 0.Method_TxtNar_KeyDown0 (KeyCode, var_9C)
  loc_F5E298:     var_9C.Text = var_8C.Text & var_90
  loc_F5E2BE:     Set var_88 = Me.TxtNar
  loc_F5E2C4:     Call 0.Method_TxtNar_KeyDown0 (KeyCode, var_8C)
  loc_F5E2CC:     var_90 = var_8C.Text
  loc_F5E2DF:     Set var_98 = Me.TxtNar
  loc_F5E2E5:     Call 0.Method_TxtNar_KeyDown0 (KeyCode, var_9C)
  loc_F5E2ED:     var_9C.SelStart = Len(var_90)
  loc_F5E300:     Exit Sub
  loc_F5E301:   End If
  loc_F5E301: End If
  loc_F5E301: Exit Sub
  loc_F5E302: ' Referenced from: F5E210
  loc_F5E308: Call 0.Method_arg_50 (var_90)
  loc_F5E310: var_A0 = "TxtNar_KeyDown"
  loc_F5E31D: Proc_183_57_104B0BC(var_90)
  loc_F5E329: Exit Sub
End Sub

Private Sub TxtNar_LostFocus(Index As Integer) 'EAA0F8
  'Data Table: 5C26BC
  loc_EAA078: On Error Goto loc_EAA0D0
  loc_EAA084: If (global_132 = &HFF) Then
  loc_EAA087:   Exit Sub
  loc_EAA088: End If
  loc_EAA092: Set var_88 = Me.TxtNar
  loc_EAA098: Call 0.Method_TxtNar_LostFocus0 (Index)
  loc_EAA0A6: Call Proc_185_164_E27050(var_8C)
  loc_EAA0BE: If (CInt(global_110) = 3) Then
  loc_EAA0C1:   Exit Sub
  loc_EAA0C2: End If
  loc_EAA0CA: Call TxtNar_Validate(Index)
  loc_EAA0CF: Exit Sub
  loc_EAA0D0: ' Referenced from: EAA078
  loc_EAA0D6: Call 0.Method_arg_50 (var_98, 0)
  loc_EAA0EB: Proc_183_57_104B0BC(var_98, "TxtNar_LostFocus")
  loc_EAA0F7: Exit Sub
End Sub

Private Sub TxtNar_Validate(Cancel As Boolean) 'E86C3C
  'Data Table: 5C26BC
  loc_E86BD0: On Error Goto loc_E86C13
  loc_E86BDC: If (global_132 = &HFF) Then
  loc_E86BDF:   Exit Sub
  loc_E86BE0: End If
  loc_E86BEC: If (CInt(global_110) = 3) Then
  loc_E86BEF:   Exit Sub
  loc_E86BF0: End If
  loc_E86BFC: If (CInt(global_110) <= 2) Then
  loc_E86C05:   Call Proc_185_145_E9CA60(Cancel)
  loc_E86C0E:   var_86 = var_88 'Byte
  loc_E86C12: End If
  loc_E86C12: Exit Sub
  loc_E86C13: ' Referenced from: E86BD0
  loc_E86C19: Call 0.Method_arg_50 (var_8C)
  loc_E86C2E: Proc_183_57_104B0BC(var_8C, "TxtNar_Validate")
  loc_E86C3A: Exit Sub
End Sub

Private Sub TxtVtYpe_GotFocus(Index As Integer) 'F53390
  'Data Table: 5C26BC
  Dim var_8C As TextBox
  loc_F53278: On Error Goto loc_F53365
  loc_F53284: If (global_132 = &HFF) Then
  loc_F53287:   Exit Sub
  loc_F53288: End If
  loc_F53288: Call Proc_185_169_F64FF4()
  loc_F5329A: Set var_88 = Me.TxtVtYpe
  loc_F532A0: Call 0.Method_TxtVtYpe_GotFocus0 (Index, var_8C)
  loc_F532BF: If (var_8C.Tag <> vbNullString) Then
  loc_F532CF:   Set var_88 = Me.TxtVtYpe
  loc_F532D5:   Call 0.Method_TxtVtYpe_GotFocus0 (Index, var_8C)
  loc_F532EF:   var_9C = Me.LblVPrefix.Caption
  loc_F53302:   Call Proc_185_166_1326620(var_8C.Tag)
  loc_F5331A: Else
  loc_F53328:   var_90 = vbNullString
  loc_F5332E:   Call Proc_185_166_1326620(var_90, 0)
  loc_F5333A: End If
  loc_F53344: Set var_88 = Me.TxtVtYpe
  loc_F5334A: Call 0.Method_TxtVtYpe_GotFocus0 (Index, var_8C)
  loc_F53358: Call Proc_185_163_E22184(var_8C)
  loc_F53364: Exit Sub
  loc_F53365: ' Referenced from: F53278
  loc_F5336B: Call 0.Method_arg_50 (var_90)
  loc_F53380: Proc_183_57_104B0BC(var_90, "TxtVtYpe_GotFocus")
  loc_F5338C: Exit Sub
  loc_F5338D: StAryRecMove
End Sub

Private Sub TxtVtYpe_KeyDown(KeyCode As Integer, Shift As Integer) 'FDC6F8
  'Data Table: 5C26BC
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  Dim var_AC As Variant
  Dim var_94 As Variant
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_D8 As String
  loc_FDC534: On Error Goto loc_FDC6CE
  loc_FDC540: If (global_132 = &HFF) Then
  loc_FDC543:   Exit Sub
  loc_FDC544: End If
  loc_FDC54E: If (CLng(Shift) = &H1B) Then
  loc_FDC551:   Call Proc_185_169_F64FF4()
  loc_FDC556: End If
  loc_FDC562: If (CInt(global_110) <= 2) Then
  loc_FDC572:   Set var_94 = Me.TxtVtYpe
  loc_FDC578:   Call 0.Method_TxtVtYpe_KeyDown0 (KeyCode, var_98)
  loc_FDC592:   Set var_88 = Me.TxtVtYpe
  loc_FDC598:   Call 0.Method_TxtVtYpe_KeyDown0 (KeyCode, var_8C)
  loc_FDC5B0:   var_AC = CVar(((var_8C.Top + var_98.Height) + CDbl(&H19))) 'Single
  loc_FDC5BF:   Me.DGVchrHlp.Top = var_AC
  loc_FDC5DE:   Set var_88 = Me.TxtVtYpe
  loc_FDC5E4:   Call 0.Method_TxtVtYpe_KeyDown0 (KeyCode, var_8C)
  loc_FDC603:   Me.DGVchrHlp.Left = CVar(var_8C.Left)
  loc_FDC647:   Proc_183_34_1307118(Me.DGVchrHlp, Me.TxtVtYpe, KeyCode, global_76)
  loc_FDC680:   If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_FDC6AE:     var_D8 = Proc_183_2_E5AE94(CVar(Me.Fields.Item("Prefix")), Shift)
  loc_FDC6BB:     Me.LblVPrefix.Caption = var_D8
  loc_FDC6CD:   End If
  loc_FDC6CD: End If
  loc_FDC6CD: Exit Sub
  loc_FDC6CE: ' Referenced from: FDC534
  loc_FDC6D4: Call 0.Method_arg_50 (var_D8, &HFF)
  loc_FDC6E9: Proc_183_57_104B0BC(var_D8, "TxtVtYpe_KeyDown")
  loc_FDC6F5: Exit Sub
End Sub

Private Sub TxtVtYpe_KeyPress(KeyAscii As Integer) 'F345C4
  'Data Table: 5C26BC
  Dim Me As Recordset15
  Dim var_9C As String
  loc_F344B4: On Error Goto loc_F3459B
  loc_F344C0: If (global_132 = &HFF) Then
  loc_F344C3:   Exit Sub
  loc_F344C4: End If
  loc_F344C7: Proc_183_46_E07C50(arg_10)
  loc_F344E8: If (CBool(Me.DGVchrHlp.Visible) = &HFF) Then
  loc_F344FA:   var_9C = "Description"
  loc_F34515:   Proc_183_41_145A968(Me.TxtVtYpe, KeyAscii, global_76)
  loc_F34524: End If
  loc_F3454D: If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_F3457B:   var_9C = Proc_183_2_E5AE94(CVar(Me.Fields.Item("Prefix")), arg_10)
  loc_F34588:   Me.LblVPrefix.Caption = var_9C
  loc_F3459A: End If
  loc_F3459A: Exit Sub
  loc_F3459B: ' Referenced from: F344B4
  loc_F345A1: Call 0.Method_arg_50 (var_9C, var_9C)
  loc_F345B6: Proc_183_57_104B0BC(var_9C, "TxtVtYpe_KeyPress")
  loc_F345C2: Exit Sub
End Sub

Private Sub TxtVtYpe_LostFocus(Index As Integer) 'E89B6C
  'Data Table: 5C26BC
  loc_E89B08: On Error Goto loc_E89B43
  loc_E89B14: If (global_132 = &HFF) Then
  loc_E89B17:   Exit Sub
  loc_E89B18: End If
  loc_E89B22: Set var_88 = Me.TxtVtYpe
  loc_E89B28: Call 0.Method_TxtVtYpe_LostFocus0 (Index)
  loc_E89B36: Call Proc_185_164_E27050(var_8C)
  loc_E89B42: Exit Sub
  loc_E89B43: ' Referenced from: E89B08
  loc_E89B49: Call 0.Method_arg_50 (var_94)
  loc_E89B5E: Proc_183_57_104B0BC(var_94, "TxtVtYpe_LostFocus")
  loc_E89B6A: Exit Sub
End Sub

Private Sub TxtVtYpe_Validate(Cancel As Boolean) '12918D4
  'Data Table: 5C26BC
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_B8 As TextBox
  Dim var_C8 As Variant
  Dim var_B4 As Label
  Dim var_CC As String
  Dim var_D0 As String
  Dim unk_5C26D2 As Connection15
  Dim var_8C As Recordset15
  loc_1291310: On Error Goto loc_12918A9
  loc_129131C: If (global_132 = &HFF) Then
  loc_129131F:   Exit Sub
  loc_1291320: End If
  loc_129132C: If (CInt(global_110) = 3) Then
  loc_129132F:   Exit Sub
  loc_1291330: End If
  loc_129137E: Set var_98 = Me.TxtVtYpe
  loc_1291384: Call 0.Method_TxtVtYpe_Validate0 (Cancel, var_9C)
  loc_12913A4: If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_9C.Text = vbNullString)) Then
  loc_12913B4:   Set var_98 = Me.TxtVtYpe
  loc_12913BA:   Call 0.Method_TxtVtYpe_Validate0 (Cancel, var_9C)
  loc_12913C2:   var_9C.Text = vbNullString
  loc_12913DB:   Set var_98 = Me.TxtVtYpe
  loc_12913E1:   Call 0.Method_TxtVtYpe_Validate0 (Cancel, var_9C)
  loc_12913E9:   var_9C.Tag = vbNullString
  loc_1291402:   Me.LblVPrefix.Caption = vbNullString
  loc_129140D: Else
  loc_1291448:   Set var_B4 = Me.TxtVtYpe
  loc_129144E:   Call 0.Method_TxtVtYpe_Validate0 (Cancel, var_B8)
  loc_1291456:   var_B8.Text = CStr(Me.Fields.Item("Description").Value)
  loc_12914A7:   Set var_B4 = Me.TxtVtYpe
  loc_12914AD:   Call 0.Method_TxtVtYpe_Validate0 (Cancel, var_B8)
  loc_12914B5:   var_B8.Tag = CStr(Me.Fields.Item("V_Type").Value)
  loc_12914E5:   var_9C = Me.Fields.Item("Prefix")
  loc_1291503:   Me.LblVPrefix.Caption = Proc_183_2_E5AE94(CVar(var_9C))
  loc_1291515: End If
  loc_1291521: If (CInt(global_110) <> 3) Then
  loc_1291530:   Set var_98 = Me.TxtVtYpe
  loc_1291536:   Call 0.Method_TxtVtYpe_Validate0 (0, var_9C)
  loc_129154A:   Set var_B4 = Me.LblVPrefix
  loc_1291550:   var_D0 = var_B4.Caption
  loc_1291563:   Call Proc_185_166_1326620(var_9C.Tag)
  loc_1291584:   Set var_98 = Me.TxtVtYpe
  loc_129158A:   Call 0.Method_TxtVtYpe_Validate0 (0, var_9C)
  loc_1291592:   var_A0 = var_9C.Tag
  loc_12915A9:   If (var_A0 <> vbNullString) Then
  loc_12915C8:     Set var_98 = Me.TxtVtYpe
  loc_12915CE:     Call 0.Method_TxtVtYpe_Validate0 (0, var_9C, var_A0, "SELECT * FROM VOUCHER_TYPE WHERE V_TYPE='")
  loc_12915D6:     var_C8 = var_9C.Tag
  loc_12915DF:     var_CC = -1 & var_A0
  loc_12915EF:     unk_5C26D2.Execute var_CC & "'", var_B4, var_CC & "'"
  loc_12915FA:     Set var_8C = var_B4
  loc_1291626:     If (var_8C.RecordCount > 0) Then
  loc_1291640:       var_9C = var_8C.Fields.Item("FirstDrCr")
  loc_129165D:       Set var_B4 = Me.TxtCrDr
  loc_1291663:       Call 0.Method_TxtVtYpe_Validate0 (0, var_B8)
  loc_129166B:       var_B8.Text = Proc_183_2_E5AE94(CVar(var_9C))
  loc_129167F:     End If
  loc_129167F:   End If
  loc_1291688:   Set var_98 = Me.TxtCrDr
  loc_129168E:   Call 0.Method_TxtVtYpe_Validate0 (0)
  loc_12916B7:   If (Trim(CVar(var_9C)) = vbNullString) Then
  loc_12916C0:     var_F8 = global_120
  loc_12916CB:     If Not (var_F8 = "CNT") Then
  loc_12916D6:       If (var_F8 = "RCT") Then
  loc_12916D9:       End If
  loc_12916E5:       Set var_98 = Me.TxtDr
  loc_12916EB:       Call 0.Method_TxtVtYpe_Validate0 (0, var_9C)
  loc_129170F:       If (CDbl(Val(var_9C.Text)) = CDbl(0)) Then
  loc_129172F:         var_9C = Me.Fields.Item("ToBy")
  loc_129177E:         Set var_B4 = Me.TxtCrDr
  loc_1291784:         Call 0.Method_TxtVtYpe_Validate0 (0, var_B8)
  loc_129178C:         var_B8.Text = CStr(IIf((var_9C.Value = "Yes"), "To", "Cr"))
  loc_12917AC:       End If
  loc_12917AF:     Else
  loc_12917B7:       If Not (var_F8 = "PMT") Then
  loc_12917C2:         If (var_F8 = "JV") Then
  loc_12917C5:         End If
  loc_12917D1:         Set var_98 = Me.TxtCr
  loc_12917D7:         Call 0.Method_TxtVtYpe_Validate0 (0, var_9C)
  loc_12917FB:         If (CDbl(Val(var_9C.Text)) = CDbl(0)) Then
  loc_129185D:           var_A0 = CStr(IIf((Me.Fields.Item("ToBy").Value = "Yes"), "By", "Dr"))
  loc_129186A:           Set var_B4 = Me.TxtCrDr
  loc_1291870:           Call 0.Method_TxtVtYpe_Validate0 (0, var_B8)
  loc_1291878:           var_B8.Text = var_A0
  loc_1291898:         End If
  loc_1291898:       End If
  loc_1291898:     End If
  loc_1291898:   End If
  loc_1291898: End If
  loc_129189D: Set var_88 = Nothing
  loc_12918A5: Set var_8C = Nothing
  loc_12918A8: Exit Sub
  loc_12918A9: ' Referenced from: 1291310
  loc_12918AF: Call 0.Method_arg_50 (var_A0)
  loc_12918C4: Proc_183_57_104B0BC(var_A0, "TxtVtYpe_Validate")
  loc_12918D0: Exit Sub
End Sub

Private Sub TxtVno_GotFocus(Index As Integer) 'E8D6B4
  'Data Table: 5C26BC
  loc_E8D64C: On Error Goto loc_E8D68C
  loc_E8D658: If (global_132 = &HFF) Then
  loc_E8D65B:   Exit Sub
  loc_E8D65C: End If
  loc_E8D666: Set var_88 = Me.TxtVno
  loc_E8D66C: Call 0.Method_TxtVno_GotFocus0 (Index)
  loc_E8D67A: Call Proc_185_163_E22184(var_8C)
  loc_E8D686: Call Proc_185_169_F64FF4(var_8C)
  loc_E8D68B: Exit Sub
  loc_E8D68C: ' Referenced from: E8D64C
  loc_E8D692: Call 0.Method_arg_50 (var_94)
  loc_E8D69A: var_9C = "TxtVno_GotFocus"
  loc_E8D6A7: Proc_183_57_104B0BC(var_94)
  loc_E8D6B3: Exit Sub
End Sub

Private Sub TxtVno_KeyDown(KeyCode As Integer, Shift As Integer) 'E6A044
  'Data Table: 5C26BC
  loc_E69FF8: On Error Goto loc_E6A01B
  loc_E6A004: If (global_132 = &HFF) Then
  loc_E6A007:   Exit Sub
  loc_E6A008: End If
  loc_E6A012: If (CLng(Shift) = &H1B) Then
  loc_E6A015:   Call Proc_185_169_F64FF4()
  loc_E6A01A: End If
  loc_E6A01A: Exit Sub
  loc_E6A01B: ' Referenced from: E69FF8
  loc_E6A021: Call 0.Method_arg_50 (var_88)
  loc_E6A029: var_90 = "TxtVno_KeyDown"
  loc_E6A036: Proc_183_57_104B0BC(var_88)
  loc_E6A042: Exit Sub
End Sub

Private Sub TxtVno_KeyPress(KeyAscii As Integer) 'E95A38
  'Data Table: 5C26BC
  loc_E959C8: On Error Goto loc_E95A10
  loc_E959D4: If (global_132 = &HFF) Then
  loc_E959D7:   Exit Sub
  loc_E959D8: End If
  loc_E959E2: Set var_88 = Me.TxtVno
  loc_E959E8: Call 0.Method_TxtVno_KeyPress0 (KeyAscii)
  loc_E95A03: Proc_183_22_129BBAC(var_8C, arg_10, 8)
  loc_E95A0F: Exit Sub
  loc_E95A10: ' Referenced from: E959C8
  loc_E95A16: Call 0.Method_arg_50 (var_98, 0)
  loc_E95A2B: Proc_183_57_104B0BC(var_98, "TxtVno_KeyPress")
  loc_E95A37: Exit Sub
End Sub

Private Sub TxtVno_LostFocus(Index As Integer) 'E889F4
  'Data Table: 5C26BC
  loc_E88990: On Error Goto loc_E889CB
  loc_E8899C: If (global_132 = &HFF) Then
  loc_E8899F:   Exit Sub
  loc_E889A0: End If
  loc_E889AA: Set var_88 = Me.TxtVno
  loc_E889B0: Call 0.Method_TxtVno_LostFocus0 (Index)
  loc_E889BE: Call Proc_185_164_E27050(var_8C)
  loc_E889CA: Exit Sub
  loc_E889CB: ' Referenced from: E88990
  loc_E889D1: Call 0.Method_arg_50 (var_94)
  loc_E889E6: Proc_183_57_104B0BC(var_94, "TxtVno_LostFocus")
  loc_E889F2: Exit Sub
End Sub

Private Sub BtnRefAdjOK_Click() 'EB311C
  'Data Table: 5C26BC
  loc_EB3098: On Error Goto loc_EB30F4
  loc_EB30D2: If (MsgBox("Save Entries", &H24, "Adjustment", var_E4, var_104) = 6) Then
  loc_EB30D5:   Call Proc_185_155_139BFE4()
  loc_EB30DA:   Exit Sub
  loc_EB30DE: Else
  loc_EB30E2:   Set var_108 = Me.FGridRef
  loc_EB30F3: End If
  loc_EB30F3: Exit Sub
  loc_EB30F4: ' Referenced from: EB3098
  loc_EB30FA: Call 0.Method_arg_50 (var_10C)
  loc_EB310F: Proc_183_57_104B0BC(var_10C, "BtnRefAdjOK_Click")
  loc_EB311B: Exit Sub
End Sub

Public Sub LblShort_UnknownEvent_9(Index As Integer) 'EE18B4
  'Data Table: 5C26BC
  loc_EE17FC: On Error Goto loc_EE188A
  loc_EE180B: If (CInt(global_110) = 3) Then
  loc_EE180E:   Exit Sub
  loc_EE180F: End If
  loc_EE1816: For var_8A = 1 To 4: var_86 = var_8A 'Integer
  loc_EE182F:   Set var_90 = Me.LblShort
  loc_EE1835:   Call 0.Method_LblShort_UnknownEvent_90 (var_86, var_94)
  loc_EE183D:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2E(&HFFFF)
  loc_EE184C: Next var_8A 'Integer
  loc_EE1864: Set var_90 = Me.LblShort
  loc_EE186A: Call 0.Method_LblShort_UnknownEvent_90 (Index, var_94)
  loc_EE1872: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2E(&HFFFF00)
  loc_EE1884: Call Proc_185_168_12E72C0(Index)
  loc_EE1889: Exit Sub
  loc_EE188A: ' Referenced from: EE17FC
  loc_EE1890: Call 0.Method_arg_50 (var_B8)
  loc_EE18A5: Proc_183_57_104B0BC(var_B8, "LblShort_Click")
  loc_EE18B1: Exit Sub
  loc_EE18B2: ArrayRebase1Var
End Sub

Private Sub TDSDelete_Click() '117DEBC
  'Data Table: 5C26BC
  Dim var_C0 As Variant
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_5C26D2 As Connection15
  Dim var_88 As Recordset15
  Dim var_140 As Double
  Dim var_118 As Frame
  loc_117DAF8: On Error Goto loc_117DE92
  loc_117DB07: If (CInt(global_110) = 2) Then
  loc_117DB49:   var_D0 = "SELECT * FROM LEDGERTDS WHERE DOCID='" & Me.Fields.Item("DocID").Value 
  loc_117DB52:   var_F0 = var_D0 & "' AND TDSPOST='Y'" 
  loc_117DB60:   unk_5C26D2.Execute CStr(var_F0), var_114, -1
  loc_117DB99:   If (var_118.RecordCount > 0) Then
  loc_117DBB5:     MsgBox("T.D.S.Challan Already Made,Can't delete it", 0, var_D0, var_F0, var_114)
  loc_117DBC5:     Exit Sub
  loc_117DBC6:   End If
  loc_117DBC9: Else
  loc_117DBE0:   If (Me.RecordCount > 0) Then
  loc_117DBEC:     Me.Sort = "V_SNo ASC"
  loc_117DC14:     var_9C = CVar(CLng((Val(Me.FrameTDS.Tag) + CDbl(global_108)))) 'Long
  loc_117DC19:     var_E0 = 1
  loc_117DC3F:     var_140 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_117DC65:     Me.Find "V_SNO=" & CStr(var_140), 0, 1
  loc_117DC93:     If (Me.EOF = 0) Then
  loc_117DC96:       ' Referenced from:   117DDD2
  loc_117DCBB:       var_D0 = Me.Fields.Item("V_SNo").Value
  loc_117DCE6:       var_C0 = CVar(CLng((Val(Me.FrameTDS.Tag) + CDbl(global_108)))) 'Long
  loc_117DD31:       If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_117DD4E:         var_A0 = Me.Fields.Item("TDSPOST")
  loc_117DD5F:         var_F4 = Proc_183_2_E5AE94(CVar(var_A0), "SELECT * FROM LEDGERTDS WHERE DOCID='", var_D0, var_138)
  loc_117DD70:         If (var_F4 = "Y") Then
  loc_117DD81:           var_9C = "T.D.S.Challan Already Made,Can't delete it"
  loc_117DD8C:           MsgBox(var_9C, 0, var_D0, var_F0, var_114)
  loc_117DD9C:           Exit Sub
  loc_117DD9D:         End If
  loc_117DDA8:         Me.Delete
  loc_117DDB3:         Me.MoveNext
  loc_117DDCC:         If (Me.EOF = &HFF) Then
  loc_117DDCF:           GoTo loc_117DDD5
  loc_117DDD2:         End If
  loc_117DDD2:         GoTo loc_117DC96
  loc_117DDD5:         ' Referenced from:   117DDCF
  loc_117DDD5:       End If
  loc_117DDD5:     End If
  loc_117DDD5:   End If
  loc_117DDD5: End If
  loc_117DDE1: Set var_8C = Me.TxtTDSCode
  loc_117DDE7: Call 0.Method_TDSDelete_Click0 (0, var_A0, vbNullString, 1)
  loc_117DDEF: var_A0.Tag = var_140
  loc_117DE07: Set var_8C = Me.TxtTDSCode
  loc_117DE0D: Call 0.Method_TDSDelete_Click0 (0, var_A0, vbNullString)
  loc_117DE15: var_A0.Text = var_E0
  loc_117DE2E: Me.TxtONAMT.Text = vbNullString
  loc_117DE43: Me.TxtTDS.Text = vbNullString
  loc_117DE58: Me.TxtTDSAMT.Text = vbNullString
  loc_117DE6D: Me.TxtTDSNarration.Text = vbNullString
  loc_117DE81: Me.FrameTDS.Visible = False
  loc_117DE8E: Set var_88 = Nothing
  loc_117DE91: Exit Sub
  loc_117DE92: ' Referenced from: 117DAF8
  loc_117DE98: Call 0.Method_arg_50 (var_F4, var_9C)
  loc_117DEAD: Proc_183_57_104B0BC(var_F4, "TDSDelete_Click")
  loc_117DEB9: Exit Sub
End Sub

Private Sub DataCombo3_UnknownEvent_8 'FC3F30
  'Data Table: 5C26BC
  Dim var_88 As DataCombo
  Dim var_98 As Variant
  Dim var_9C As String
  loc_FC3DA0: On Error Goto loc_FC3F05
  loc_FC3DB5: var_9C = CStr(Me.DataCombo3.Text)
  loc_FC3DC6: If (var_9C = vbNullString) Then
  loc_FC3DCF:   Call 0.Method_arg_50 (var_9C)
  loc_FC3DF0:   MsgBox("Select Voucher Type", &H40, CVar(var_9C), var_DC, var_FC)
  loc_FC3E04:   Set var_88 = Me.DataCombo3
  loc_FC3E18: Else
  loc_FC3E34:   Set var_104 = Me.DataCombo2
  loc_FC3E3A:   Call 0.Method_DataCombo3_UnknownEvent_80 (0, var_108)
  loc_FC3E42:   var_118 = "v_no"
  loc_FC3E70:   Proc_183_43_EF88E4("SELECT distinct v_no FROM LEDGER where v_type='" & CStr(Me.DataCombo3.BoundText) & "' ORDER BY v_no", var_108, "v_no")
  loc_FC3E98:   var_98 = Me.DataCombo3.BoundText
  loc_FC3EAA:   Set var_104 = Me.DataCombo2
  loc_FC3EB0:   Call 0.Method_DataCombo3_UnknownEvent_80 (1, var_108, var_98)
  loc_FC3EB8:   var_118 = "v_no"
  loc_FC3ED7:   var_9C = CStr(var_98)
  loc_FC3EE6:   Proc_183_43_EF88E4("SELECT distinct v_no FROM LEDGER where v_type='" & var_9C & "' ORDER BY v_no", var_108, "v_no", var_118)
  loc_FC3F04: End If
  loc_FC3F04: Exit Sub
  loc_FC3F05: ' Referenced from: FC3DA0
  loc_FC3F0B: Call 0.Method_arg_50 (var_9C, var_118)
  loc_FC3F20: Proc_183_57_104B0BC(var_9C, "DataCombo3_Validate")
  loc_FC3F2C: Exit Sub
End Sub

Private Sub BTNVLCLOSE_Click() 'E19EA0
  'Data Table: 5C26BC
  loc_E19E94: Me.FRAMEVLIST.Visible = False
  loc_E19E9C: Exit Sub
End Sub

Private Sub BTNVLOK_Click() 'F74E14
  'Data Table: 5C26BC
  Dim var_164 As Variant
  Dim var_17C As String
  loc_F74D10: On Error Goto loc_F74DE9
  loc_F74D6E: var_164 = (Trim(CVar(Me.TXTVDATE1)) = vbNullString) And (Trim(CVar(Me.TXTVDATE2)) = vbNullString) And (Trim(CVar(Me.Text1)) = vbNullString)
  loc_F74D84: var_17C = CStr(Me.DataCombo1.BoundText)
  loc_F74DDD: If CBool(var_164 And (var_17C = vbNullString) And (CStr(Me.Dcparty.BoundText) = vbNullString)) Then
  loc_F74DE0:   GoTo loc_F74DE8
  loc_F74DE3: End If
  loc_F74DE3: Call Proc_185_142_13068E8()
  loc_F74DE8: ' Referenced from: F74DE0
  loc_F74DE8: Exit Sub
  loc_F74DE9: ' Referenced from: F74D10
  loc_F74DEF: Call 0.Method_arg_50 (var_17C)
  loc_F74DF7: var_1D8 = "BTNVLOK_Click"
  loc_F74E04: Proc_183_57_104B0BC(var_17C)
  loc_F74E10: Exit Sub
End Sub

Private Sub DGRefNo_UnknownEvent_9 'F9C884
  'Data Table: 5C26BC
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_BC As String
  Dim var_A8 As TextBox
  loc_F9C718: On Error Goto loc_F9C85A
  loc_F9C732: If (Me.RecordCount > 0) Then
  loc_F9C752:   var_A0 = Me.Fields.Item("RefNo")
  loc_F9C763:   var_BC = CStr(var_A0.Value)
  loc_F9C76F:   Set var_A4 = Me.TxtGrid
  loc_F9C775:   Call 0.Method_DGRefNo_UnknownEvent_90 (0, var_A8)
  loc_F9C77D:   var_A8.Text = var_BC
  loc_F9C793: End If
  loc_F9C793: var_9C = 0
  loc_F9C79D: Set var_8C = Me.FGridRef
  loc_F9C7B7: Set var_8C = Me.TxtGrid
  loc_F9C7BD: Call 0.Method_DGRefNo_UnknownEvent_90 (0, var_A0)
  loc_F9C7C5: var_A0.SetFocus
  loc_F9C7E0: Me.DGRefNo.Visible = False
  loc_F9C7F0: Call Proc_185_154_14B795C(0, var_D0)
  loc_F9C7FB: If (var_D0 = &HFF) Then
  loc_F9C849:   Proc_183_25_11BCFD4(Me.FGridRef, Me.TxtGrid, 0, CInt(&HD), global_196, 8)
  loc_F9C859: End If
  loc_F9C859: Exit Sub
  loc_F9C85A: ' Referenced from: F9C718
  loc_F9C860: Call 0.Method_arg_50 (var_BC, 0, 0)
  loc_F9C875: Proc_183_57_104B0BC(var_BC, "DGRefNo_Click", 0)
  loc_F9C881: Exit Sub
End Sub

Private Sub btnPrint1_Click() 'F24024
  'Data Table: 5C26BC
  Dim var_88 As CheckBox
  Dim var_90 As String
  loc_F23F20: On Error Goto loc_F23FFA
  loc_F23F2A: Set var_88 = Me.ChkReport
  loc_F23F3E: If (var_88.Value = 1) Then
  loc_F23F58:   Call 0.Method_arg_1C (MemVar_1F953B4 & "\FaJVCHRRect.RPT", var_A0)
  loc_F23F70:   Set var_A4 = var_88 
  loc_F23F7A:   Set var_88 = Me 
  loc_F23F81:   Proc_7_2_FF25B0(var_88, var_A4)
  loc_F23F8C:   MemVar_1F951E8 = var_A4
  loc_F23F9A: Else
  loc_F23FA8:   var_90 = MemVar_1F953B4 & "\FaJVCHR.RPT"
  loc_F23FB1:   Call 0.Method_arg_1C (var_90, var_A0)
  loc_F23FC9:   Set var_A4 = var_88 
  loc_F23FD3:   Set var_88 = Me 
  loc_F23FDA:   Proc_7_4_11ABA48(var_88, var_A4)
  loc_F23FE5:   MemVar_1F951E8 = var_A4
  loc_F23FF0: End If
  loc_F23FF5: MemVar_1F951E8 = Nothing
  loc_F23FF9: Exit Sub
  loc_F23FFA: ' Referenced from: F23F20
  loc_F24000: Call 0.Method_arg_50 (var_90, var_88)
  loc_F24015: Proc_183_57_104B0BC(var_90, "btnPrint1_Click")
  loc_F24021: Exit Sub
End Sub

Private Sub TxtChequeAmt_KeyDown(KeyCode As Integer, Shift As Integer) 'E67A90
  'Data Table: 5C26BC
  loc_E67A5D: Proc_183_21_FA21CC(Me.TxtChequeAmt, KeyCode)
  loc_E67A7E: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_E67A87:   Proc_6_75_E5335C(KeyCode, Shift)
  loc_E67A8C: End If
  loc_E67A8C: Exit Sub
End Sub

Private Sub TxtChequeAmt_KeyPress(KeyAscii As Integer) 'E416C4
  'Data Table: 5C26BC
  loc_E416B5: Proc_183_22_129BBAC(Me.TxtChequeAmt, KeyAscii)
  loc_E416C1: Exit Sub
End Sub

Private Sub TxtChequeAmt_LostFocus() 'E9A1EC
  'Data Table: 5C26BC
  loc_E9A1CE: Me.TxtChequeAmt.Text = CStr(Format(CVar(Val(Me.TxtChequeAmt.Text)), "0.00"))
  loc_E9A1EA: Exit Sub
End Sub

Private Sub TxtChequeAmt_Validate(Cancel As Boolean) 'E9A598
  'Data Table: 5C26BC
  loc_E9A57A: Me.TxtChequeAmt.Text = CStr(Format(CVar(Val(Me.TxtChequeAmt.Text)), "0.00"))
  loc_E9A596: Exit Sub
End Sub

Private Sub BtnClose_Click() 'E32B84
  'Data Table: 5C26BC
  Dim var_8C As Frame
  loc_E32B67: Set var_88 = Me.Frame1
  loc_E32B6D: Call 0.Method_BtnClose_Click0 (1, var_8C)
  loc_E32B75: var_8C.Visible = False
  loc_E32B81: Exit Sub
End Sub

Private Sub Form_Load() '13B152C
  'Data Table: 5C26BC
  Dim var_98 As String
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim Me As Variant
  Dim var_BC As Variant
  Dim var_10C As String
  Dim var_110 As String
  Dim unk_5C26D2 As Connection15
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim var_120 As String
  Dim var_1E0 As Variant
  Dim var_8C As Recordset15
  loc_13B0C0C: On Error Goto loc_13B1502
  loc_13B0C1D: var_90 = "Where (LOGSite_Code='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO')"
  loc_13B0C2A: var_98 = "And (LOGSite_Code='" & MemVar_1F95078
  loc_13B0C31: var_94 = var_98 & "' OR LOGSITE_CODE='HO')"
  loc_13B0C41: Set var_BC = Me.TopCtrl1
  loc_13B0C47: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_13B0C55: Call 0.Method_arg_50 (var_98)
  loc_13B0C5D: var_CC = CVar(var_98) 'String
  loc_13B0C65: Set var_BC = Me.TopCtrl1
  loc_13B0C6B: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_CC)
  loc_13B0C7B: global_136 = 4
  loc_13B0C8D: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), 0)
  loc_13B0CA9: Call 0.Method_arg_38 (MemVar_1F953B0, CByte(3))
  loc_13B0CBA: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_13B0CCB: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_13B0CDC: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_13B0CED: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_13B0CFE: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_13B0D0F: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_13B0D20: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_13B0D31: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_13B0D42: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_13B0D5C: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_13B0D6A: Set var_BC = MemVar_1F95044
  loc_13B0D79: Call 0.Method_Form_Load8 (var_BC)
  loc_13B0D8F: Me.TopCtrl1.Clone
  loc_13B0DA9: Call 0.Method_arg_50 (var_BC, -1)
  loc_13B0DD2: Proc_6_17_EAAE40(var_CC, MemVar_1F95078, "Select * from enviro WHERE LogSITE_CODE=", var_100)
  loc_13B0DDA: var_E0 = -1 & var_CC 
  loc_13B0DE8: Me.Connection15.Execute CStr(var_E0), var_BC, var_BC
  loc_13B0DF9: Set global_80 = var_BC
  loc_13B0E27: If (Me.RecordCount > 0) Then
  loc_13B0E3C:   var_BC = Me.Fields
  loc_13B0E4C:   var_CC = CVar(var_BC.Item("AddModifyEntryInBackDate")) 'Address
  loc_13B0E55:   var_E0 = CVar(Proc_6_38_E69628(var_CC)) 'String
  loc_13B0E5B:   var_100 = Trim(var_E0)
  loc_13B0E6A:   global_216 = CStr(var_100)
  loc_13B0E7D: End If
  loc_13B0E9F: var_10C = "SELECT V_TYPE,DESCRIPTION FROM VOUCHER_TYPE WHERE Category='FA' AND SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_13B0EAF: unk_5C26D2.Execute var_10C & "' ORDER BY DESCRIPTION", var_CC, -1
  loc_13B0EC0: Set global_80 = var_BC
  loc_13B0EE2: CVarUnk
  loc_13B0EE7: VerifyVarObj
  loc_13B0EED: Set var_BC = Me.DataCombo3
  loc_13B0EF3: LateIdStAd
  loc_13B0F11: Me.DataCombo3.ListField = "DESCRIPTION"
  loc_13B0F29: Me.DataCombo3.BoundColumn = "V_TYPE"
  loc_13B0F46: var_10C = "SELECT V_TYPE,DESCRIPTION FROM VOUCHER_TYPE WHERE Category='FA' AND SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_13B0F5B: Me.DataCombo3.Tag = CVar(var_10C & "' ORDER BY DESCRIPTION")
  loc_13B0F78: CVarUnk
  loc_13B0F7D: VerifyVarObj
  loc_13B0F83: Set var_BC = Me.DataCombo1
  loc_13B0F89: LateIdStAd
  loc_13B0FA7: Me.DataCombo1.ListField = "DESCRIPTION"
  loc_13B0FBF: Me.DataCombo1.BoundColumn = "V_TYPE"
  loc_13B0FDC: var_10C = "SELECT V_TYPE,DESCRIPTION FROM VOUCHER_TYPE WHERE Category='FA' AND SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_13B0FE3: var_CC = CVar(var_10C & "' ORDER BY DESCRIPTION") 'String
  loc_13B0FEB: Set var_BC = Me.DataCombo1
  loc_13B0FF1: var_BC.Tag = var_CC
  loc_13B1029: unk_5C26D2.Execute "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_CC, -1
  loc_13B103A: Set global_80 = var_BC
  loc_13B1066: If (Me.RecordCount <= 0) Then
  loc_13B1082:   MsgBox("Parameter Not Set", 0, var_E0, var_100, var_130)
  loc_13B1092:   Exit Sub
  loc_13B1093: End If
  loc_13B109D: Set var_BC = Me.TopCtrl1
  loc_13B10A3: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007("Voucher Entry")
  loc_13B10EA: If (Me.Fields.Item("FilterAC").Value = "No") Then
  loc_13B10F7:   Set global_88 = New 
  loc_13B1108:   Set global_92 = New 
  loc_13B1124:   var_BC = Me.Recordset15.Fields
  loc_13B114E:   If (var_BC.Item("ShowCityName").Value = "Yes") Then
  loc_13B116F:     var_98 = "Select SubCode,NameWithCity AS Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup " & var_90
  loc_13B1176:     var_CC = CVar("SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & " and (ACTIVEYN=1 OR ACTIVEYN IS NULL) order by Name") 'String
  loc_13B1180:     Me.Open var_CC, CVar(MemVar_1F951E0), 1
  loc_13B1199:     Me.Clone
  loc_13B11AA:     Set global_92 = var_BC
  loc_13B11B8:   Else
  loc_13B11D6:     var_98 = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup " & var_90
  loc_13B11DD:     var_CC = CVar("SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & " and (ACTIVEYN=1 OR ACTIVEYN IS NULL) order by Name") 'String
  loc_13B11E7:     Me.Open var_CC, CVar(MemVar_1F951E0), 1
  loc_13B1200:     Me.Clone
  loc_13B1211:     Set global_92 = var_BC
  loc_13B121C:   End If
  loc_13B121C: End If
  loc_13B1226: Set global_104 = New 
  loc_13B124B: var_98 = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES,'' AS NameWithADDR From ViewSubgroup WHERE NATURE='T.D.S.' " & var_94
  loc_13B1252: var_CC = CVar(var_98 & " order by Name") 'String
  loc_13B125C: Me.Open var_CC, CVar(MemVar_1F951E0), 1
  loc_13B1283: Proc_183_7_EB17D4(var_CC, MemVar_1F950F4, 3, -1, -1, var_BC, 3)
  loc_13B1293: Proc_183_7_EB17D4(var_140, MemVar_1F950FC, -1, -1, var_BC)
  loc_13B12BD: var_E0 = CVar("SELECT DOCID,SITE_CODE,LOGSITE_CODE FROM LEDGERM WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' AND V_DATE BETWEEN ") 'String
  loc_13B12D7: var_120 = " AND V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE Category='FA' AND SITE_CODE='"
  loc_13B1302: var_1E0 = var_E0 & var_CC & " AND " & var_140 & var_120 & CVar(MemVar_1F95070) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "') ORDER BY V_Date,DOCID" 
  loc_13B130D: Me.Recordset15.Open var_1E0, CVar(MemVar_1F951E0), 2
  loc_13B133A: Me.TXTADJ_AMT.Visible = False
  loc_13B134E: Me.FRAMEADJUST.Visible = False
  loc_13B135E: Call 0.Method_arg_64 (&HE0E0E0, 3, -1, 3)
  loc_13B136F: Set var_BC = Me
  loc_13B137E: Proc_5_1_100EC1C("INI", var_BC, New)
  loc_13B13A0: If (Me.RecordCount > 0) Then
  loc_13B13CC:   var_110 = "SELECT DOCID FROM LastVoucher where SITE_cODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "' AND U_Name='"
  loc_13B13E3:   unk_5C26D2.Execute var_110 & MemVar_1F950C8 & "' ORDER BY U_EntDt DESC", var_CC, -1
  loc_13B13EE:   Set var_8C = var_BC
  loc_13B141A:   If (var_8C.RecordCount > 0) Then
  loc_13B142C:     var_BC = var_8C.Fields
  loc_13B1445:     var_98 = Proc_183_2_E5AE94(CVar(var_BC.Item("DocID")), var_BC, -1)
  loc_13B1456:     If ("SELECT DOCID FROM LastVoucher where SITE_cODE='" & MemVar_1F95070 <> vbNullString) Then
  loc_13B147E:       var_BC = var_8C.Fields
  loc_13B14A3:       var_98 = CStr("DocId='" & var_BC.Item("DocID").Value & "'")
  loc_13B14AD:       Me.Find var_98, 0, 1
  loc_13B14C5:     End If
  loc_13B14C5:   End If
  loc_13B14C5: End If
  loc_13B14C5: Call Proc_185_170_13BF510(var_120, var_BC)
  loc_13B14CA: Call Proc_185_144_19C1534(var_BC)
  loc_13B14DC: Me.LblAmtRs.Caption = vbNullString
  loc_13B14F1: Me.lblTDS.Caption = vbNullString
  loc_13B14FE: Set var_8C = Nothing
  loc_13B1501: Exit Sub
  loc_13B1502: ' Referenced from: 13B0C0C
  loc_13B1508: Call 0.Method_arg_50 (var_98)
  loc_13B1510: var_10C = "Form_Load"
  loc_13B151D: Proc_183_57_104B0BC(var_98)
  loc_13B1529: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'F128E8
  'Data Table: 5C26BC
  loc_F127F4: On Error Goto loc_F128BE
  loc_F12802: Set global_68 = Nothing
  loc_F12814: Set global_76 = Nothing
  loc_F12826: Set global_80 = Nothing
  loc_F12838: Set global_180 = Nothing
  loc_F1284A: Set global_88 = Nothing
  loc_F1285C: Set global_92 = Nothing
  loc_F1286E: Set global_72 = Nothing
  loc_F12880: Set global_100 = Nothing
  loc_F12892: Set global_96 = Nothing
  loc_F128A4: Set global_104 = Nothing
  loc_F128B6: Set global_84 = Nothing
  loc_F128BD: Exit Sub
  loc_F128BE: ' Referenced from: F127F4
  loc_F128C4: Call 0.Method_arg_50 (var_8C)
  loc_F128CC: var_94 = "Form_Unload"
  loc_F128D9: Proc_183_57_104B0BC(var_8C)
  loc_F128E5: Exit Sub
End Sub

Private Sub Form_Activate() 'F937A0
  'Data Table: 5C26BC
  Dim Me As Variant
  Dim var_8C As String
  Dim unk_5C26D2 As Connection15
  Dim var_B8 As TextBox
  loc_F9363C: On Error Goto loc_F93775
  loc_F93648: If (global_134 = &HFF) Then
  loc_F93677:   If ((Me.Visible = &HFF) And ((Me.Enabled = &HFF) > 0)) Then
  loc_F93680:     Me.SetFocus
  loc_F9368A:     global_134 = 0
  loc_F9368D:   End If
  loc_F936A1:   var_8C = "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078
  loc_F936B1:   unk_5C26D2.Execute var_8C & "'", var_B0, -1
  loc_F936C2:   Set global_80 = var_B4
  loc_F936E3:   Set var_B4 = Me.TxtVtYpe
  loc_F936E9:   Call 0.Method_Form_Activate0 (0, var_B8, var_8C)
  loc_F936F1:   var_B4 = var_B8.Tag
  loc_F93708:   If (var_8C <> vbNullString) Then
  loc_F93710:     var_BC = 0
  loc_F93722:     Set var_B4 = Me.TxtVtYpe
  loc_F93728:     Call 0.Method_Form_Activate0 (0, var_B8, var_8C)
  loc_F93730:     var_BC = var_B8.Tag
  loc_F9373C:     Call Proc_185_166_1326620(var_8C)
  loc_F93752:   Else
  loc_F93762:     var_8C = 0
  loc_F93768:     Call Proc_185_166_1326620(var_8C, 0)
  loc_F93774:   End If
  loc_F93774: End If
  loc_F93774: Exit Sub
  loc_F93775: ' Referenced from: F9363C
  loc_F9377B: Call 0.Method_arg_50 (var_8C)
  loc_F93790: Proc_183_57_104B0BC(var_8C, "Form_Activate")
  loc_F9379C: Exit Sub
  loc_F9379D: StAryRecCopy
End Sub

Private Sub Form_Deactivate() 'E91FE8
  'Data Table: 5C26BC
  loc_E91F78: On Error Goto loc_E91FBE
  loc_E91F81: Call 0.Method_arg_1E8 (var_88)
  loc_E91F90: If TypeOf var_88 Is arg_1 Then
  loc_E91F99:   Call 0.Method_arg_1E8 (var_88)
  loc_E91FAA:   Set global_64 = var_88
  loc_E91FBA:   global_134 = &HFF
  loc_E91FBD: End If
  loc_E91FBD: Exit Sub
  loc_E91FBE: ' Referenced from: E91F78
  loc_E91FC4: Call 0.Method_arg_50 (var_90)
  loc_E91FD9: Proc_183_57_104B0BC(var_90, "Form_Deactivate")
  loc_E91FE5: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '17EBDA0
  'Data Table: 5C26BC
  Dim var_9C As Variant
  Dim var_B8 As String
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_BC As Integer
  Dim var_B4 As Variant
  Dim KeyCode As Integer
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_86 As Integer
  Dim var_11E As Integer
  Dim var_CC As Variant
  Dim var_120 As Integer
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_122 As Integer
  Dim var_150 As Double
  Dim var_138 As Variant
  Dim var_158 As Double
  Dim var_144 As Variant
  Dim Me As Variant
  Dim var_178 As Double
  Dim var_160 As Frame
  Dim var_180 As Double
  Dim var_170 As String
  Dim var_16C As TextBox
  Dim var_190 As Variant
  Dim var_13C As String
  Dim var_148 As String
  Dim var_140 As Field20
  Dim var_164 As String
  Dim var_168 As TextBox
  Dim var_90 As Double
  Dim unk_5C26D2 As Connection15
  Dim var_94 As Recordset15
  Dim var_1E0 As Variant
  Dim var_1B0 As String
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_246 As Integer
  loc_17E9C2D: Set var_98 = Me.TxtVtYpe
  loc_17E9C33: Call 0.Method_Form_KeyDown0 (0, var_9C)
  loc_17E9C4D: Set var_A4 = Me.TopCtrl1
  loc_17E9C53: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005((((CLng(KeyCode) = &H48) And (Shift = 2)) And (var_9C.Text = "Bank Payment")))
  loc_17E9C5B: var_B8 = CStr()
  loc_17E9C77: If ( And (var_B8 = "Browse")) Then
  loc_17E9C92:   If Me.ChqPrint.Visible Then
  loc_17E9CA1:     Me.ChqPrint.Visible = False
  loc_17E9CAC:   Else
  loc_17E9CBE:     Me.Text3.Text = CStr(MemVar_1F950EC)
  loc_17E9CD5:     Me.ChqPrint.Visible = True
  loc_17E9CDD:   End If
  loc_17E9CDD: End If
  loc_17E9CF8: If (Me.FrameRef.Visible = &HFF) Then
  loc_17E9CFE:   var_BC = KeyCode
  loc_17E9D0B:   If (var_BC = CInt(&H1B)) Then
  loc_17E9D12:     Set var_98 = Me.DGRefNo
  loc_17E9D2A:     If (CBool(var_98.Visible) = &HFF) Then
  loc_17E9D2D:       Exit Sub
  loc_17E9D2E:     End If
  loc_17E9D2E:     Call Proc_185_169_F64FF4(var_BC)
  loc_17E9D35:     KeyCode = 0
  loc_17E9D3B:   Else
  loc_17E9D3B:     Exit Sub
  loc_17E9D3C:   End If
  loc_17E9D79:   If CBool((Ucase(Chr(CLng(KeyCode))) = "E") And (Shift = 4)) Then
  loc_17E9D7C:     Call Proc_185_143_E14C98(KeyCode)
  loc_17E9D81:   End If
  loc_17E9D92:   If ((CLng(KeyCode) = &H52) And (Shift = 4)) Then
  loc_17E9D95:     Exit Sub
  loc_17E9D96:   End If
  loc_17E9DA7:   If ((CLng(KeyCode) = &H54) And (Shift = 4)) Then
  loc_17E9DAA:     Exit Sub
  loc_17E9DAB:   End If
  loc_17E9DBC:   If ((CLng(KeyCode) = &H2E) And (Shift = 2)) Then
  loc_17E9DC5:     Call 0.Method_arg_1E8 (var_98)
  loc_17E9DD6:     Call Proc_185_149_125FAA8(CInt(var_98.index))
  loc_17E9DE3:     KeyCode = 0
  loc_17E9DE9:   Else
  loc_17E9DFA:     If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_17E9E03:       Call 0.Method_arg_1E8 (var_98)
  loc_17E9E14:       Call Proc_185_149_125FAA8(CInt(var_98.index))
  loc_17E9E21:       KeyCode = 0
  loc_17E9E27:     Else
  loc_17E9E29:       var_86 = 0
  loc_17E9E32:       Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17E9E41:       If TypeOf var_98 Is arg_1 Then
  loc_17E9E4A:         Call 0.Method_arg_1E8 (var_98, KeyCode)
  loc_17E9E88:         If (Ucase(var_98.Name) = Ucase("TXTADJ_AMT")) Then
  loc_17E9E8B:           GoTo loc_17EBC29
  loc_17E9E8E:         End If
  loc_17E9E8E:       End If
  loc_17E9E91:       var_11E = KeyCode
  loc_17E9E9E:       If (var_11E = CInt(&H1B)) Then
  loc_17E9EA5:         Set var_98 = Me.DGAcHlp
  loc_17E9EDC:         If ((CBool(var_98.Visible) = &HFF) Or (CBool(Me.DGVchrHlp.Visible) = &HFF)) Then
  loc_17E9EE5:           Call 0.Method_arg_1E8 (var_98, var_11E)
  loc_17E9EED:           var_B4 = var_98.index
  loc_17E9EFE:           Call TxtAcName_Validate(CInt(var_B4))
  loc_17E9F09:           Call Proc_185_169_F64FF4(var_86, var_B4)
  loc_17E9F10:           KeyCode = 0
  loc_17E9F13:           GoTo loc_17EBC29
  loc_17E9F19:         Else
  loc_17E9F52:           If ((CBool(Me.DGTDSCODE.Visible) = &HFF) Or (Me.FrameTDS.Visible = &HFF)) Then
  loc_17E9F55:             Call Proc_185_169_F64FF4(KeyCode)
  loc_17E9F5C:             KeyCode = 0
  loc_17E9F5F:             GoTo loc_17EBC29
  loc_17E9F65:           Else
  loc_17E9F6D:             Call Proc_185_168_12E72C0(KeyCode, 0)
  loc_17E9F72:           End If
  loc_17E9F72:         End If
  loc_17E9F75:       Else
  loc_17E9F7F:         If Not (var_11E = CInt(&H75)) Then
  loc_17E9F8C:           If Not (var_11E = CInt(&H76)) Then
  loc_17E9F99:             If Not (var_11E = CInt(&H77)) Then
  loc_17E9FA6:               If (var_11E = CInt(&H78)) Then
  loc_17E9FA9:               End If
  loc_17E9FA9:             End If
  loc_17E9FA9:           End If
  loc_17E9FB1:           Call Proc_185_168_12E72C0(KeyCode, 0)
  loc_17E9FB9:         Else
  loc_17E9FC3:           If Not (var_11E = CInt(&HD)) Then
  loc_17E9FD0:             If Not (var_11E = CInt(&H28)) Then
  loc_17E9FDD:               If (var_11E = CInt(&H26)) Then
  loc_17E9FE0:               End If
  loc_17E9FE0:             End If
  loc_17E9FE3:             var_120 = KeyCode
  loc_17E9FF0:             If Not (var_120 = CInt(&H28)) Then
  loc_17E9FFD:               If (var_120 = CInt(&H26)) Then
  loc_17EA000:               End If
  loc_17EA004:               Set var_98 = Me.DGTDSCODE
  loc_17EA031:               Set var_A4 = Me.DGVchrHlp
  loc_17EA056:               If (((CBool(var_98.Visible) = &HFF) Or (CBool(Me.DGAcHlp.Visible) = &HFF)) Or (CBool(var_A4.Visible) = &HFF)) Then
  loc_17EA059:                 GoTo loc_17EBC29
  loc_17EA05C:               End If
  loc_17EA05C:             End If
  loc_17EA068:             If (CInt(global_110) <= 2) Then
  loc_17EA06D:               var_86 = 0
  loc_17EA076:               Call 0.Method_arg_1E8 (var_98, var_86, var_120)
  loc_17EA085:               If TypeOf var_98 Is arg_1 Then
  loc_17EA08E:                 Call 0.Method_arg_1E8 (var_98, KeyCode)
  loc_17EA0CC:                 If (Ucase(var_98.Name) = Ucase("VchDt")) Then
  loc_17EA0D5:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EA0DD:                   var_B4 = var_98.index
  loc_17EA0EE:                   Call VchDt_Validate(CInt(var_B4))
  loc_17EA0F9:                 End If
  loc_17EA0F9:               End If
  loc_17EA0FF:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EA10E:               If TypeOf var_98 Is arg_1 Then
  loc_17EA117:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EA155:                 If (Ucase(var_98.Name) = Ucase("TxtCrDr")) Then
  loc_17EA15E:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EA166:                   var_B4 = var_98.index
  loc_17EA177:                   Call TxtCrDr_Validate(CInt(var_B4))
  loc_17EA182:                 End If
  loc_17EA182:               End If
  loc_17EA188:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EA197:               If TypeOf var_98 Is arg_1 Then
  loc_17EA1A0:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EA1DE:                 If (Ucase(var_98.Name) = Ucase("TxtAcName")) Then
  loc_17EA1E7:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EA1EF:                   var_B4 = var_98.index
  loc_17EA200:                   Call TxtAcName_Validate(CInt(var_B4))
  loc_17EA20B:                 End If
  loc_17EA20B:               End If
  loc_17EA211:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EA220:               If TypeOf var_98 Is arg_1 Then
  loc_17EA229:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EA267:                 If (Ucase(var_98.Name) = Ucase("TxtCr")) Then
  loc_17EA270:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EA278:                   var_B4 = var_98.index
  loc_17EA289:                   Call TxtCr_Validate(CInt(var_B4))
  loc_17EA294:                 End If
  loc_17EA294:               End If
  loc_17EA29A:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EA2A9:               If TypeOf var_98 Is arg_1 Then
  loc_17EA2B2:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EA2F0:                 If (Ucase(var_98.Name) = Ucase("TxtDr")) Then
  loc_17EA2F9:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EA301:                   var_B4 = var_98.index
  loc_17EA312:                   Call TxtDr_Validate(CInt(var_B4))
  loc_17EA31D:                 End If
  loc_17EA31D:               End If
  loc_17EA323:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EA332:               If TypeOf var_98 Is arg_1 Then
  loc_17EA33B:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EA379:                 If (Ucase(var_98.Name) = Ucase("TxtNar")) Then
  loc_17EA382:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EA38A:                   var_B4 = var_98.index
  loc_17EA39B:                   Call TxtNar_Validate(CInt(var_B4))
  loc_17EA3A6:                 End If
  loc_17EA3A6:               End If
  loc_17EA3AC:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EA3BB:               If TypeOf var_98 Is arg_1 Then
  loc_17EA3C4:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EA402:                 If (Ucase(var_98.Name) = Ucase("TxtVtYpe")) Then
  loc_17EA40B:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EA413:                   var_B4 = var_98.index
  loc_17EA424:                   Call TxtVtYpe_Validate(CInt(var_B4))
  loc_17EA42F:                 End If
  loc_17EA42F:               End If
  loc_17EA435:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EA444:               If TypeOf var_98 Is arg_1 Then
  loc_17EA44D:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EA48B:                 If (Ucase(var_98.Name) = Ucase("TXTChDate")) Then
  loc_17EA494:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EA49C:                   var_B4 = var_98.index
  loc_17EA4AD:                   Call TXTChDate_Validate(CInt(var_B4))
  loc_17EA4B8:                 End If
  loc_17EA4B8:               End If
  loc_17EA4BE:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EA4CD:               If TypeOf var_98 Is arg_1 Then
  loc_17EA4D6:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EA514:                 If (Ucase(var_98.Name) = Ucase("TXTClrDate")) Then
  loc_17EA51D:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EA525:                   var_B4 = var_98.index
  loc_17EA536:                   Call TXTClrDate_Validate(CInt(var_B4))
  loc_17EA541:                 End If
  loc_17EA541:               End If
  loc_17EA547:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EA556:               If TypeOf var_98 Is arg_1 Then
  loc_17EA55F:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EA59D:                 If (Ucase(var_98.Name) = Ucase("TXTREF")) Then
  loc_17EA5A6:                   Call Proc_185_151_DFC0D8(var_86)
  loc_17EA5AB:                 End If
  loc_17EA5AB:               End If
  loc_17EA5B1:               Call 0.Method_arg_1E8 (var_98)
  loc_17EA5C0:               If TypeOf var_98 Is arg_1 Then
  loc_17EA5C9:                 Call 0.Method_arg_1E8 (var_98)
  loc_17EA5E6:                 var_EC = "TxtTDSCODE"
  loc_17EA607:                 If (Ucase(var_98.Name) = Ucase(var_EC)) Then
  loc_17EA613:                   Set var_98 = KeyCode(False)
  loc_17EA619:                   var_98.Visible = 
  loc_17EA627:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EA640:                   Call TxtTDSCode_Validate(CInt(var_98.index))
  loc_17EA64B:                 End If
  loc_17EA64B:               End If
  loc_17EA651:               If (var_86 = &HFF) Then
  loc_17EA654:                 GoTo loc_17EBC29
  loc_17EA657:               End If
  loc_17EA657:             End If
  loc_17EA65A:             var_122 = KeyCode
  loc_17EA667:             If Not (var_122 = CInt(&H28)) Then
  loc_17EA674:               If (var_122 = CInt(&HD)) Then
  loc_17EA677:               End If
  loc_17EA67D:               Call 0.Method_arg_1E8 (var_98, var_122)
  loc_17EA68C:               If TypeOf var_98 Is arg_1 Then
  loc_17EA695:                 Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EA6AD:                 var_134 = Ucase(var_98.Name) 'Variant
  loc_17EA6D9:                 If (var_134 = Ucase("Text1")) Then
  loc_17EA6DC:                   Call BTNVLOK_Click()
  loc_17EA6E1:                   GoTo loc_17EBC29
  loc_17EA6E7:                 Else
  loc_17EA709:                   If (var_134 = Ucase("TxtTDSAMT")) Then
  loc_17EA70F:                     Call TxtTDSAMT_Validate(var_86)
  loc_17EA72E:                     var_150 = Val(Me.FrameTDS.Tag)
  loc_17EA74B:                     var_158 = Val(Me.FrameTDS.Tag)
  loc_17EA75C:                     Set var_9C = Me.TxtCrDr
  loc_17EA762:                     Call 0.Method_Form_KeyDown0 (CInt(var_150), var_A4, var_B8)
  loc_17EA785:                     Set var_140 = Me.TxtCrDr
  loc_17EA78B:                     Call 0.Method_Form_KeyDown0 (CInt(var_A4.Text), var_144, var_148)
  loc_17EA793:                     (var_B8 = "Dr") = var_144.Text
  loc_17EA7BB:                     If (var_150 Or (var_148 = "By")) Then
  loc_17EA7D5:                       If (Me.RecordCount > 0) Then
  loc_17EA7F2:                         var_150 = Val(Me.FrameTDS.Tag)
  loc_17EA820:                         Set var_140 = Me.TxtDr
  loc_17EA826:                         Call 0.Method_Form_KeyDown0 (CInt(Val(Me.FrameTDS.Tag)), var_144, var_148)
  loc_17EA82E:                         var_158 = var_144.Tag
  loc_17EA83B:                         var_178 = Val(var_148)
  loc_17EA858:                         var_180 = Val(Me.FrameTDS.Tag)
  loc_17EA869:                         Set var_9C = Me.TxtDr
  loc_17EA86F:                         Call 0.Method_Form_KeyDown0 (CInt(var_150), var_A4, var_B8, var_180)
  loc_17EA88A:                         var_170 = CStr((Val(var_B8) + var_A4.Text))
  loc_17EA898:                         Set var_168 = Me.TxtDr
  loc_17EA89E:                         Call 0.Method_Form_KeyDown0 (CInt(var_180), var_16C, var_170)
  loc_17EA8A6:                         var_16C.Text = var_150
  loc_17EA8D8:                         Me.Sort = "V_SNo ASC"
  loc_17EA900:                         var_DC = CVar(CLng((Val(Me.FrameTDS.Tag) + CDbl(global_108)))) 'Long
  loc_17EA905:                         var_190 = 1
  loc_17EA951:                         Me.Find "V_SNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix)))), 0, 1
  loc_17EA97F:                         If (Me.EOF = 0) Then
  loc_17EA982:                           ' Referenced from:             17EAB75
  loc_17EA9A7:                           var_CC = Me.Fields.Item("V_SNo").Value
  loc_17EA9B6:                           Set var_A4 = Me.FrameTDS
  loc_17EA9D2:                           var_FC = CVar(CLng((Val(var_A4.Tag) + CDbl(global_108)))) 'Long
  loc_17EA9F5:                           var_B8 = CStr(Me.FGrid1.TextMatrix))
  loc_17EAA1D:                           If (1 = CVar(Val(var_B8))) Then
  loc_17EAA3A:                             var_150 = Val(Me.FrameTDS.Tag)
  loc_17EAA73:                             var_158 = Val(CStr(Me.Fields.Item("TDSAmt").Value))
  loc_17EAA7D:                             Set var_144 = Me.FrameTDS
  loc_17EAA83:                             var_148 = var_144.Tag
  loc_17EAA90:                             var_178 = Val(var_148)
  loc_17EAAA1:                             Set var_9C = Me.TxtDr
  loc_17EAAA7:                             Call 0.Method_Form_KeyDown0 (CInt(var_150), var_A4, var_B8, var_178, var_158, var_150, (Shift = 4))
  loc_17EAAAF:                             var_CC = var_A4.Text
  loc_17EAAC2:                             var_164 = CStr((Val(var_B8) - var_158))
  loc_17EAAD0:                             Set var_160 = Me.TxtDr
  loc_17EAAD6:                             Call 0.Method_Form_KeyDown0 (CInt(var_178), var_168, Me.FrameTDS.Tag, var_1B0)
  loc_17EAADE:                             var_168.Text = var_150
  loc_17EAB31:                             Set var_9C = Me.TxtDr
  loc_17EAB37:                             Call 0.Method_Form_KeyDown0 (CInt(Val(Me.FrameTDS.Tag)), var_A4, vbNullString, Val(Me.FrameTDS.Tag))
  loc_17EAB3F:                             var_A4.Tag = var_190
  loc_17EAB56:                             Me.MoveNext
  loc_17EAB64:                             var_BA = Me.EOF
  loc_17EAB6F:                             If (var_BA = &HFF) Then
  loc_17EAB72:                               GoTo loc_17EAB78
  loc_17EAB75:                             End If
  loc_17EAB75:                             GoTo loc_17EA982
  loc_17EAB78:                             ' Referenced from:             17EAB72
  loc_17EAB78:                           End If
  loc_17EAB78:                         End If
  loc_17EAB78:                       End If
  loc_17EABA0:                       Set var_9C = Me.TxtDr
  loc_17EABA6:                       Call 0.Method_Form_KeyDown0 (CInt(Val(Me.FrameTDS.Tag)), var_A4, Val(Me.FrameTDS.Tag))
  loc_17EABAE:                       var_A4.SetFocus
  loc_17EABBF:                       GoTo loc_17EBC29
  loc_17EABC5:                     Else
  loc_17EABED:                       Set var_9C = Me.TxtCr
  loc_17EABF3:                       Call 0.Method_Form_KeyDown0 (CInt(Val(Me.FrameTDS.Tag)), var_A4, Val(Me.FrameTDS.Tag))
  loc_17EABFB:                       var_A4.SetFocus
  loc_17EAC0F:                     Else
  loc_17EAC1B:                       Me.FrameTDS.Visible = False
  loc_17EAC26:                     Else
  loc_17EAC29:                       var_DC = "TXTREF"
  loc_17EAC48:                       If (var_134 = Ucase(var_DC)) Then
  loc_17EAC82:                         var_158 = Val(Me.FrameRef.Tag)
  loc_17EAC93:                         Set var_9C = Me.TxtCrDr
  loc_17EAC99:                         Call 0.Method_Form_KeyDown0 (CInt(Val(Me.FrameRef.Tag)), var_A4, var_B8, var_158)
  loc_17EACA1:                         var_150 = var_A4.Text
  loc_17EACBC:                         Set var_140 = Me.TxtCrDr
  loc_17EACC2:                         Call 0.Method_Form_KeyDown0 (CInt(var_158), var_144, var_148)
  loc_17EACCA:                         (var_B8 = "Cr") = var_144.Text
  loc_17EACF2:                         If (var_DC Or (var_148 = "To")) Then
  loc_17EAD1D:                           Set var_9C = Me.TxtCr
  loc_17EAD23:                           Call 0.Method_Form_KeyDown0 (CInt(Val(Me.FrameRef.Tag)), var_A4)
  loc_17EAD2B:                           var_A4.SetFocus
  loc_17EAD3C:                           GoTo loc_17EBC29
  loc_17EAD42:                         Else
  loc_17EAD4F:                           var_A0 = Me.FrameRef.Tag
  loc_17EAD5C:                           var_150 = Val(var_A0)
  loc_17EAD6A:                           Set var_9C = Me.TxtDr
  loc_17EAD70:                           Call 0.Method_Form_KeyDown0 (CInt(var_150), var_A4, var_150)
  loc_17EAD78:                           var_A4.SetFocus
  loc_17EAD8C:                         Else
  loc_17EAD92:                           Set var_98 = Me.FrameRef
  loc_17EAD98:                           var_98.Visible = False
  loc_17EADA3:                         Else
  loc_17EADC5:                           If (var_134 = Ucase("TxtCr")) Then
  loc_17EADD4:                             If (CInt(global_110) <= 2) Then
  loc_17EADE3:                               If (CInt(global_110) = 2) Then
  loc_17EADEC:                                 Call 0.Method_arg_1E8 (var_98, var_150)
  loc_17EADF4:                                 var_B4 = var_98.index
  loc_17EAE09:                                 Set var_9C = var_A4(CInt(var_B4))
  loc_17EAE0F:                                 Call 0.Method_Form_KeyDown0 (var_A0, var_B4)
  loc_17EAE17:                                 var_B4 = var_98.TextBox.Tag
  loc_17EAE41:                                 var_CC = Me.Fields.Item("DocID").Value
  loc_17EAE76:                                 Call 0.Method_arg_9C (Me, var_A0, global_136)
  loc_17EAE7E:                                 var_90 = var_150
  loc_17EAEA1:                               Else
  loc_17EAEA7:                                 Call 0.Method_arg_1E8 (var_98, var_90, 0)
  loc_17EAEAF:                                 var_B4 = var_98.index
  loc_17EAEC4:                                 Set var_9C = var_A4(CInt(var_B4))
  loc_17EAECA:                                 Call 0.Method_Form_KeyDown0 (var_A0, var_B4)
  loc_17EAED2:                                 CStr(var_CC) = var_98.TextBox.Tag
  loc_17EAEDF:                                 var_13C = 0
  loc_17EAEFA:                                 Set var_138 = Me 
  loc_17EAF0A:                                 Call 0.Method_arg_9C (var_138, var_A0, global_136, 0)
  loc_17EAF12:                                 var_90 = var_150
  loc_17EAF2A:                               End If
  loc_17EAF48:                               Call 0.Method_arg_1E8 (var_98, var_A4, var_A0, "SELECT CreditLimit,NATURE FROM SUBGROUP WHERE SUBCODE=", var_11C, -1)
  loc_17EAF5A:                               Set var_9C = var_138(CInt(var_98.index))
  loc_17EAF60:                               Call 0.Method_Form_KeyDown0 (var_90, var_13C)
  loc_17EAF68:                               var_150 = var_98.TextBox.Tag
  loc_17EAF70:                               var_CC = CVar(var_A0) 'String
  loc_17EAF76:                               Proc_183_9_EAB2F0(var_EC, var_CC)
  loc_17EAF8C:                               unk_5C26D2.Execute CStr(var_150 & var_EC), , 
  loc_17EAF97:                               Set var_94 = var_138
  loc_17EAFC9:                               If (var_94.RecordCount > 0) Then
  loc_17EAFEB:                                 var_B4 = CVar(var_94.Fields.Item("CreditLimit")) 'Address
  loc_17EAFF2:                                 Proc_183_3_E7DD58(var_CC)
  loc_17EB00C:                                 If (var_CC > 0) Then
  loc_17EB02E:                                   var_B4 = CVar(var_94.Fields.Item("Nature")) 'Address
  loc_17EB069:                                   var_CC = CVar(Me.Fields.Item("CreditLimit")) 'Address
  loc_17EB072:                                   var_B8 = Proc_183_2_E5AE94(var_CC, ((Proc_183_2_E5AE94(var_B4) = "Supplier") And (var_90 > CDbl(0))))
  loc_17EB090:                                   If (var_B4 And (var_B8 = "Yes")) Then
  loc_17EB0B2:                                     var_B4 = CVar(var_94.Fields.Item("CreditLimit")) 'Address
  loc_17EB0B9:                                     Proc_183_3_E7DD58(var_CC)
  loc_17EB0D6:                                     If (var_CC < CVar(Abs(var_90))) Then
  loc_17EB107:                                       Proc_183_3_E7DD58(var_CC, CVar(var_94.Fields.Item("CreditLimit")))
  loc_17EB10F:                                       var_EC = (CVar(Abs(var_90)) - var_CC)
  loc_17EB14B:                                       var_1E0 = ("Limit Exceed by " + Trim(Str(var_EC)))
  loc_17EB14F:                                       MsgBox(var_1E0, &H30, "Warning", var_200, var_210)
  loc_17EB16C:                                     End If
  loc_17EB16C:                                   End If
  loc_17EB16C:                                 End If
  loc_17EB17B:                                 var_98 = var_94.Fields
  loc_17EB183:                                 var_9C = var_98.Item("Nature")
  loc_17EB18B:                                 var_B4 = CVar(var_9C) 'Address
  loc_17EB194:                                 var_A0 = Proc_183_2_E5AE94(var_B4)
  loc_17EB1CF:                                 var_B8 = Proc_183_2_E5AE94(CVar(Me.Fields.Item("NegativeCashBalance")), ((var_A0 = "Cash") And (var_90 > CDbl(0))))
  loc_17EB1ED:                                 If (var_B4 And (var_B8 = "Yes")) Then
  loc_17EB201:                                   var_EC = CVar(Abs(var_90)) 'Double
  loc_17EB213:                                   var_11C = Trim(Str(var_EC))
  loc_17EB223:                                   var_200 = "Warning"
  loc_17EB236:                                   var_CC = ("Negative Cash balance " + Chr(&HD))
  loc_17EB23D:                                   var_1D0 = (CVar(Me.Fields.Item("NegativeCashBalance")) + var_11C)
  loc_17EB246:                                   var_1E0 = (Trim(Str(var_EC)) + " ")
  loc_17EB24F:                                   var_1F0 = (var_1E0 + "Cr")
  loc_17EB253:                                   MsgBox("Warning", &H30, var_200, var_210, var_230)
  loc_17EB271:                                 End If
  loc_17EB271:                               End If
  loc_17EB271:                             End If
  loc_17EB27C:                             If (global_112 = "N") Then
  loc_17EB28B:                               If (CInt(global_110) <= 2) Then
  loc_17EB297:                                 Call 0.Method_arg_1E8 (var_98)
  loc_17EB2A8:                                 Call Proc_185_160_1024CBC(CInt(var_98.index))
  loc_17EB2BC:                                 If (CInt(var_232) = 1) Then
  loc_17EB2BF:                                   GoTo loc_17EBC29
  loc_17EB2C2:                                 End If
  loc_17EB2C2:                               End If
  loc_17EB2C8:                               Call 0.Method_arg_1E8 (var_98)
  loc_17EB2D0:                               var_B4 = var_98.index
  loc_17EB2E4:                               Call 0.Method_arg_1E8 (var_9C)
  loc_17EB2EC:                               var_CC = var_9C.Name
  loc_17EB2F9:                               Set var_A4 = var_232(var_B4)
  loc_17EB306:                               Call Proc_185_147_12E4818(CInt(var_B4), var_A4)
  loc_17EB32C:                               If (CInt(global_110) <= 2) Then
  loc_17EB335:                                 Call 0.Method_arg_1E8 (var_98)
  loc_17EB354:                                 If (var_98.index = CVar(global_136)) Then
  loc_17EB36B:                                   Set var_98 = Me 
  loc_17EB37B:                                   Call 0.Method_arg_58 (var_98, CInt(&H26), 0)
  loc_17EB383:                                   var_86 = var_234
  loc_17EB389:                                 End If
  loc_17EB389:                               End If
  loc_17EB389:                             End If
  loc_17EB38C:                           Else
  loc_17EB3AE:                             If (var_134 = Ucase("TxtDr")) Then
  loc_17EB3BD:                               If (CInt(global_110) <= 2) Then
  loc_17EB3CC:                                 If (CInt(global_110) = 2) Then
  loc_17EB3D5:                                   Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EB3DD:                                   var_B4 = var_98.index
  loc_17EB3F2:                                   Set var_9C = var_A4(CInt(var_B4))
  loc_17EB3F8:                                   Call 0.Method_Form_KeyDown0 (var_A0, var_B4)
  loc_17EB400:                                   var_234 = var_98.TextBox.Tag
  loc_17EB42A:                                   var_CC = Me.Fields.Item("DocID").Value
  loc_17EB45F:                                   Call 0.Method_arg_9C (Me, var_A0, global_136, 0)
  loc_17EB467:                                   var_90 = var_150
  loc_17EB48A:                                 Else
  loc_17EB490:                                   Call 0.Method_arg_1E8 (var_98, var_90, CStr(var_CC))
  loc_17EB498:                                   var_B4 = var_98.index
  loc_17EB4AD:                                   Set var_9C = var_A4(CInt(var_B4))
  loc_17EB4B3:                                   Call 0.Method_Form_KeyDown0 (var_A0, var_B4)
  loc_17EB4C8:                                   var_13C = 0
  loc_17EB4E3:                                   Set var_138 = Me 
  loc_17EB4F3:                                   Call 0.Method_arg_9C (var_138, var_A0, global_136, 0)
  loc_17EB4FB:                                   var_90 = var_98.TextBox.Tag
  loc_17EB513:                                 End If
  loc_17EB531:                                 Call 0.Method_arg_1E8 (var_98, var_A4, var_A0, "SELECT CreditLimit,NATURE FROM SUBGROUP WHERE SUBCODE=", var_11C, -1)
  loc_17EB543:                                 Set var_9C = var_138(CInt(var_98.index))
  loc_17EB549:                                 Call 0.Method_Form_KeyDown0 (var_90, var_13C)
  loc_17EB551:                                 var_150 = var_98.TextBox.Tag
  loc_17EB559:                                 var_CC = CVar(var_A0) 'String
  loc_17EB55F:                                 Proc_183_9_EAB2F0(var_EC, var_CC)
  loc_17EB575:                                 unk_5C26D2.Execute CStr(CStr(var_CC) & var_EC), , 
  loc_17EB580:                                 Set var_94 = var_138
  loc_17EB5B2:                                 If (var_94.RecordCount > 0) Then
  loc_17EB5D4:                                   var_B4 = CVar(var_94.Fields.Item("CreditLimit")) 'Address
  loc_17EB5DB:                                   Proc_183_3_E7DD58(var_CC)
  loc_17EB5F5:                                   If (var_CC > 0) Then
  loc_17EB617:                                     var_B4 = CVar(var_94.Fields.Item("Nature")) 'Address
  loc_17EB620:                                     var_A0 = Proc_183_2_E5AE94(var_B4)
  loc_17EB652:                                     var_CC = CVar(Me.Fields.Item("DebitLimit")) 'Address
  loc_17EB65B:                                     var_B8 = Proc_183_2_E5AE94(var_CC, ((var_A0 = "Customer") And (var_90 < CDbl(0))))
  loc_17EB679:                                     If (var_B4 And (var_B8 = "Yes")) Then
  loc_17EB69B:                                       var_B4 = CVar(var_94.Fields.Item("CreditLimit")) 'Address
  loc_17EB6A2:                                       Proc_183_3_E7DD58(var_CC)
  loc_17EB6BF:                                       If (var_CC < CVar(Abs(var_90))) Then
  loc_17EB6D9:                                         var_98 = var_94.Fields
  loc_17EB6E1:                                         var_9C = var_98.Item("CreditLimit")
  loc_17EB6F0:                                         Proc_183_3_E7DD58(var_CC, CVar(var_9C))
  loc_17EB6F8:                                         var_EC = (CVar(Abs(var_90)) - var_CC)
  loc_17EB6FC:                                         var_10C = var_EC 'Variant
  loc_17EB734:                                         var_1E0 = ("Limit Exceed by " + Trim(Str(var_10C)))
  loc_17EB738:                                         MsgBox(var_1E0, &H30, "Warning", var_200, var_210)
  loc_17EB755:                                       End If
  loc_17EB755:                                     End If
  loc_17EB755:                                   End If
  loc_17EB755:                                 End If
  loc_17EB755:                               End If
  loc_17EB760:                               If (global_112 = "N") Then
  loc_17EB76F:                                 If (CInt(global_110) <= 2) Then
  loc_17EB77B:                                   Call 0.Method_arg_1E8 (var_98, var_232)
  loc_17EB78C:                                   Call Proc_185_160_1024CBC(CInt(var_98.index))
  loc_17EB7A0:                                   If (CInt(var_232) = 1) Then
  loc_17EB7A3:                                     GoTo loc_17EBC29
  loc_17EB7A6:                                   End If
  loc_17EB7A6:                                 End If
  loc_17EB7AC:                                 Call 0.Method_arg_1E8 (var_98)
  loc_17EB7B4:                                 var_B4 = var_98.index
  loc_17EB7C8:                                 Call 0.Method_arg_1E8 (var_9C)
  loc_17EB7D0:                                 var_CC = var_9C.Name
  loc_17EB7EA:                                 Call Proc_185_147_12E4818(CInt(var_B4), var_B4(var_B4))
  loc_17EB810:                                 If (CInt(global_110) <= 2) Then
  loc_17EB819:                                   Call 0.Method_arg_1E8 (var_98)
  loc_17EB838:                                   If (var_98.index = CVar(global_136)) Then
  loc_17EB84F:                                     Set var_98 = Me 
  loc_17EB85F:                                     Call 0.Method_arg_58 (var_98, CInt(&H26), 0)
  loc_17EB867:                                     var_86 = var_234
  loc_17EB86D:                                   End If
  loc_17EB86D:                                 End If
  loc_17EB86D:                               End If
  loc_17EB870:                             Else
  loc_17EB881:                               var_CC = Ucase("TxtNar")
  loc_17EB892:                               If (var_134 = var_CC) Then
  loc_17EB8A1:                                 If (CInt(global_110) <= 2) Then
  loc_17EB8AD:                                   Call 0.Method_arg_1E8 (var_98, var_232, var_86)
  loc_17EB8BE:                                   Call Proc_185_160_1024CBC(CInt(var_98.index), var_234)
  loc_17EB8D2:                                   If (CInt(var_232) = 1) Then
  loc_17EB8D5:                                     GoTo loc_17EBC29
  loc_17EB8D8:                                   End If
  loc_17EB8D8:                                 End If
  loc_17EB8DE:                                 Call 0.Method_arg_1E8 (var_98)
  loc_17EB8E6:                                 var_B4 = var_98.index
  loc_17EB8F1:                                 Set var_138 = CStr(var_CC)(var_B4)
  loc_17EB8FA:                                 Call 0.Method_arg_1E8 (var_9C)
  loc_17EB902:                                 var_CC = var_9C.Name
  loc_17EB91C:                                 Call Proc_185_147_12E4818(CInt(var_B4), var_138)
  loc_17EB942:                                 If (CInt(global_110) <= 2) Then
  loc_17EB94B:                                   Call 0.Method_arg_1E8 (var_98)
  loc_17EB96A:                                   If (var_98.index = CVar(global_136)) Then
  loc_17EB981:                                     Set var_98 = Me 
  loc_17EB991:                                     Call 0.Method_arg_58 (var_98, CInt(&H26), 0)
  loc_17EB999:                                     var_86 = var_234
  loc_17EB99F:                                   End If
  loc_17EB99F:                                 End If
  loc_17EB99F:                               End If
  loc_17EB99F:                             End If
  loc_17EB99F:                           End If
  loc_17EB99F:                         End If
  loc_17EB99F:                       End If
  loc_17EB99F:                     End If
  loc_17EB99F:                   End If
  loc_17EB9A2:                 Else
  loc_17EB9AC:                   If (var_122 = CInt(&H26)) Then
  loc_17EB9B5:                     Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EB9C4:                     If TypeOf var_98 Is arg_1 Then
  loc_17EB9CD:                       Call 0.Method_arg_1E8 (var_98, var_234)
  loc_17EBA11:                       If (Ucase(var_98.Name) = Ucase("TxtCrDr")) Then
  loc_17EBA1D:                         If (global_108 > 0) Then
  loc_17EBA26:                           Call 0.Method_arg_1E8 (var_98)
  loc_17EBA37:                           Call Proc_185_146_1256AFC(CInt(var_98.index))
  loc_17EBA45:                         Else
  loc_17EBA45:                         End If
  loc_17EBA45:                       End If
  loc_17EBA45:                     End If
  loc_17EBA45:                   End If
  loc_17EBA4A:                   global_132 = &HFF
  loc_17EBA50:                   var_246 = KeyCode
  loc_17EBA5D:                   If Not (var_246 = CInt(&HD)) Then
  loc_17EBA6A:                     If Not (var_246 = CInt(&H28)) Then
  loc_17EBA77:                       If (var_246 = CInt(&H26)) Then
  loc_17EBA7A:                       End If
  loc_17EBA7A:                     End If
  loc_17EBA96:                     Call 0.Method_arg_58 (Me, KeyCode, Shift, var_BA)
  loc_17EBAA4:                     If (var_BA = &HFF) Then
  loc_17EBAB3:                       If (CInt(global_110) <= 2) Then
  loc_17EBAC2:                         Set var_A4 = Me.LblCrAmt
  loc_17EBAC8:                         Call 0.Method_Form_KeyDown0 (0, var_138, var_B8)
  loc_17EBAD0:                         var_246 = Me.LblCrAmt.Caption
  loc_17EBADD:                         var_150 = Val(var_B8)
  loc_17EBAEC:                         Set var_98 = Me.LblDrAmt
  loc_17EBAF2:                         Call 0.Method_Form_KeyDown0 (0, var_9C, var_A0)
  loc_17EBB22:                         If (CDbl((Val(var_A0) + var_9C.Caption)) > CDbl(0)) Then
  loc_17EBB31:                           Set var_A4 = Me.LblCrAmt
  loc_17EBB37:                           Call 0.Method_Form_KeyDown0 (0, var_138, var_B8)
  loc_17EBB3F:                           global_132 = var_138.Caption
  loc_17EBB4C:                           var_150 = Val(var_B8)
  loc_17EBB5B:                           Set var_98 = Me.LblDrAmt
  loc_17EBB61:                           Call 0.Method_Form_KeyDown0 (0, var_9C, var_A0)
  loc_17EBB8E:                           If (CDbl(Val(var_A0)) = CDbl(var_9C.Caption)) Then
  loc_17EBB97:                             Call 0.Method_arg_50 (var_A0)
  loc_17EBBCE:                             If (MsgBox("Save Yes/No", &H44, CVar(var_A0), var_EC, var_10C) = 6) Then
  loc_17EBBD6:                               global_132 = 0
  loc_17EBBDB:                               KeyCode = 0
  loc_17EBBDE:                               Call TopCtrl1_UnknownEvent_16()
  loc_17EBBE3:                               GoTo loc_17EBC29
  loc_17EBBE9:                             Else
  loc_17EBBFF:                               Set var_98 = Me.TxtCrDr
  loc_17EBC05:                               Call 0.Method_Form_KeyDown0 (0, var_9C, 0, 0)
  loc_17EBC0D:                               var_9C.SetFocus
  loc_17EBC1C:                             Else
  loc_17EBC1C:                             End If
  loc_17EBC1C:                           End If
  loc_17EBC1C:                         End If
  loc_17EBC1C:                       End If
  loc_17EBC1C:                     End If
  loc_17EBC21:                     global_132 = 0
  loc_17EBC26:                     KeyCode = 0
  loc_17EBC29:                   End If
  loc_17EBC29:                   ' Referenced from:                 17EBBE3
  loc_17EBC29:                 End If
  loc_17EBC29:                 ' Referenced from:               17EB8D5
  loc_17EBC29:                 ' Referenced from:               17EB7A3
  loc_17EBC29:                 ' Referenced from:               17EB2BF
  loc_17EBC29:               End If
  loc_17EBC29:               ' Referenced from:             17EAD3C
  loc_17EBC29:             End If
  loc_17EBC29:             ' Referenced from:           17EABBF
  loc_17EBC29:             ' Referenced from:           17EA6E1
  loc_17EBC29:             ' Referenced from:           17EA654
  loc_17EBC29:             ' Referenced from:           17EA059
  loc_17EBC29:             ' Referenced from:           17E9F5F
  loc_17EBC29:             ' Referenced from:           17E9F13
  loc_17EBC29:             ' Referenced from:           17E9E8B
  loc_17EBC29:           End If
  loc_17EBC29:         End If
  loc_17EBC29:       End If
  loc_17EBC2F:       Call 0.Method_arg_1E8 (var_98, KeyCode, global_132)
  loc_17EBC3E:       If TypeOf var_98 Is arg_1 Then
  loc_17EBC47:         Call 0.Method_arg_1E8 (var_98, KeyCode)
  loc_17EBC5F:         var_258 = Ucase(var_98.Name) 'Variant
  loc_17EBC7A:         var_CC = Ucase("TxtCrDr")
  loc_17EBC8B:         If Not (var_258 = var_CC) Then
  loc_17EBCB0:           If Not (var_258 = Ucase("TxtAcName")) Then
  loc_17EBCD5:             If Not (var_258 = Ucase("TxtCr")) Then
  loc_17EBCFA:               If Not (var_258 = Ucase("TxtDr")) Then
  loc_17EBD1F:                 If (var_258 = Ucase("TxtNar")) Then
  loc_17EBD22:                 End If
  loc_17EBD22:               End If
  loc_17EBD22:             End If
  loc_17EBD22:           End If
  loc_17EBD28:           Call 0.Method_arg_1E8 (var_98, global_132)
  loc_17EBD39:           Call Proc_185_152_EF0B98(CInt(var_98.index))
  loc_17EBD47:         Else
  loc_17EBD47:           Call Proc_185_153_E6FF48(CStr(var_CC))
  loc_17EBD4C:         End If
  loc_17EBD4C:       End If
  loc_17EBD4F:     Else
  loc_17EBD4F:       Call Proc_185_153_E6FF48()
  loc_17EBD66:       Proc_183_40_F3169C(Me, KeyCode)
  loc_17EBD6E:     End If
  loc_17EBD6E:   End If
  loc_17EBD6E: End If
  loc_17EBD73: Set var_94 = Nothing
  loc_17EBD76: Exit Sub
  loc_17EBD7D: Call 0.Method_arg_50 (var_A0)
  loc_17EBD92: Proc_183_57_104B0BC(var_A0, "Form_KeyDown")
  loc_17EBD9E: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12A01BC
  'Data Table: 5C26BC
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  Dim var_124 As String
  Dim var_128 As String
  Dim unk_5C26D2 As Connection15
  Dim Me As Recordset15
  loc_129FBD0: If (Index = 0) Then
  loc_129FBE6:   Me.FGridRef.CellBackColor = CVar(CLng("16777215"))
  loc_129FC01:   var_98 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_129FC0A:   Set var_C0 = Me.FGridRef
  loc_129FC10:   var_D0 = var_C0.Col
  loc_129FC33:   var_110 = CStr(Me.FGridRef.TextMatrix))
  loc_129FC40:   Set var_108 = Me.TxtGrid
  loc_129FC46:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, var_110)
  loc_129FC4E:   var_10C.Tag = CVar(CLng(var_D0))
  loc_129FC7F:   var_114 = CLng(Me.FGridRef.Col)
  loc_129FC8F:   If (var_114 = CLng(1)) Then
  loc_129FCA1:     Set var_AC = Me.TxtGrid
  loc_129FCA7:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, &HA)
  loc_129FCAF:     var_C0.MaxLength = var_114
  loc_129FCC8:     ReDim var_118(0 To 3)
  loc_129FCD2:     var_98 = "Advance"
  loc_129FCDF:     var_118(0) = var_98
  loc_129FCEE:     var_118(1) = "Ag.Ref."
  loc_129FCFD:     var_118(2) = "New Ref"
  loc_129FD0C:     var_118(3) = "On Account"
  loc_129FD2E:     Set var_108 = Me.ListView
  loc_129FD49:     Set var_C0 = Me.TxtGrid
  loc_129FD63:     Set global_164 = Proc_183_37_EFEF78(var_108, var_C0, Index, Array(var_118))
  loc_129FD81:     Set var_AC = Me.TxtGrid
  loc_129FD87:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, 4)
  loc_129FD8F:     global_148 = var_C0.Text
  loc_129FDA1:     Set var_F4 = Me.TxtGrid
  loc_129FDA7:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_129FDAF:     var_108.Tag = var_98
  loc_129FDC5:   Else
  loc_129FDCC:     If (var_114 = CLng(2)) Then
  loc_129FDDE:       Set var_AC = Me.TxtGrid
  loc_129FDE4:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_129FDEC:       var_C0.MaxLength = &H14
  loc_129FE1B:       var_98 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_129FE20:       var_E0 = 5
  loc_129FE5C:       If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_129FE82:         var_98 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_129FE87:         var_E0 = 2
  loc_129FEBE:         var_124 = "SELECT AgRefNo AS RefNo,MIN(V_dATE) as VDate,RTRIM(CAST(ABS(ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)) AS VARCHaR(11)))+' '+CASE WHEN ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)>0 THEN'Cr' WHEN ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)<0 THEN 'Dr' ELSE '' END AS Balance FROM ledgerRef WHERE AGREFTYPE IN ('Advance','New Ref','Ag.Ref.') AND SUBCODE='" & CStr(Me.FGrid1.TextMatrix))
  loc_129FEC5:         var_128 = var_124 & "' GROUP BY SubCode,AgRefNo HAVING ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)>0 ORDER BY MIN(V_dATE),AGREFNO"
  loc_129FECE:         unk_5C26D2.Execute var_128, var_D0, -1
  loc_129FEDF:         Set global_84 = var_F4
  loc_129FF03:       Else
  loc_129FF26:         var_98 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_129FF2B:         var_E0 = 2
  loc_129FF38:         Set var_C0 = Me.FGrid1
  loc_129FF3E:         var_BC = var_C0.TextMatrix)
  loc_129FF62:         var_124 = "SELECT AgRefNo AS RefNo,MIN(V_dATE) as VDate,RTRIM(CAST(ABS(ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)) AS VARCHAR(11)))+' '+CASE WHEN ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)>0 THEN 'Cr' WHEN ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)<0 THEN 'Dr' ELSE ''  END AS Balance FROM ledgerRef WHERE AGREFTYPE IN ('Advance','New Ref','Ag.Ref.') AND SUBCODE='" & CStr(var_BC)
  loc_129FF69:         var_128 = var_124 & "' GROUP BY SubCode,AgRefNo HAVING ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)<0 ORDER BY MIN(V_dATE),AGREFNO"
  loc_129FF72:         unk_5C26D2.Execute var_128, var_D0, -1
  loc_129FF83:         Set global_84 = var_F4
  loc_129FFA4:       End If
  loc_129FFAD:       CVarUnk
  loc_129FFB2:       VerifyVarObj
  loc_129FFB8:       Set var_AC = Me.DGRefNo
  loc_129FFBE:       LateIdStAd
  loc_129FFDF:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_13C, Me.TxtGrid, global_84, var_F4, var_BC)
  loc_129FFE7:       var_E0 = var_C0.Left
  loc_129FFEF:       var_98 = CVar(var_13C) 'Single
  loc_129FFFE:       Me.DGRefNo.Left = var_98
  loc_12A001F:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_140, var_98, Me.TxtGrid)
  loc_12A0027:       var_BC = var_108.Height
  loc_12A0039:       Set var_AC = Me.TxtGrid
  loc_12A003F:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_13C)
  loc_12A0047:       var_E0 = var_C0.Top
  loc_12A0053:       var_98 = CVar((var_13C + var_140)) 'Single
  loc_12A0062:       Me.DGRefNo.Top = var_98
  loc_12A0087:       Me.DGRefNo.Tag = CVar(CStr(Index))
  loc_12A00D3:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12A00D6:         Exit Sub
  loc_12A00D7:       End If
  loc_12A00DA:     Else
  loc_12A00E1:       If Not (var_114 = CLng(3)) Then
  loc_12A00EB:         If (var_114 = CLng(4)) Then
  loc_12A00EE:         End If
  loc_12A00FD:         Set var_AC = Me.TxtGrid
  loc_12A0103:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, 0)
  loc_12A010B:         var_C0.MaxLength = var_98
  loc_12A0120:         If (global_196 = 0) Then
  loc_12A012B:           var_110 = "{Home}+{End}"
  loc_12A0131:           Proc_303_0_FBACC8(Me.FrameRef.Tag, 0)
  loc_12A0139:         End If
  loc_12A013C:       Else
  loc_12A0143:         If (var_114 = CLng(8)) Then
  loc_12A0155:           Set var_AC = Me.TxtGrid
  loc_12A015B:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_12A0163:           var_C0.MaxLength = 0
  loc_12A0178:           If (global_196 = 0) Then
  loc_12A0183:             var_110 = "{Home}+{End}"
  loc_12A0189:             Proc_303_0_FBACC8(Me.FrameRef.Tag, 0)
  loc_12A0191:           End If
  loc_12A0191:         End If
  loc_12A0191:       End If
  loc_12A0191:     End If
  loc_12A0191:   End If
  loc_12A0191: End If
  loc_12A0191: Exit Sub
  loc_12A0198: Call 0.Method_arg_50 (Me.FrameRef.Tag)
  loc_12A01AD: Proc_183_57_104B0BC(Me.FrameRef.Tag, "TxtGlb_GotFocus")
  loc_12A01B9: Exit Sub
  loc_12A01BA: CExtInstUnk
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '15702C4
  'Data Table: 5C26BC
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_8C As Variant
  Dim var_BC As Variant
  Dim var_D0 As Long
  Dim var_E0 As TextBox
  Dim var_EC As TextBox
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_94 As String
  Dim var_98 As MSHFlexGrid
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_1A0 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_1B4 As Variant
  Dim var_170 As Variant
  Dim var_23C As Double
  loc_156F224: On Error Goto loc_157029A
  loc_156F233: If (KeyCode = 0) Then
  loc_156F240:   If (CLng(Shift) = &H1B) Then
  loc_156F250:     Set var_8C = Me.TxtGrid
  loc_156F256:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_156F270:     Set var_98 = Me.TxtGrid
  loc_156F276:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_156F27E:     var_9C.Text = var_90.Tag
  loc_156F29A:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_156F2A3:     Set var_8C = Me.FGridRef
  loc_156F2C0:     Set var_8C = Me.TxtGrid
  loc_156F2C6:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_156F2CE:     var_90.Visible = FGridRef.DispID_8001
  loc_156F2F6:     If (CBool(Me.DGRefNo.Visible) = &HFF) Then
  loc_156F308:       Me.DGRefNo.Visible = False
  loc_156F310:     End If
  loc_156F310:     Exit Sub
  loc_156F311:   End If
  loc_156F334:   If (CLng(Me.FGridRef.Col) = CLng(1)) Then
  loc_156F359:     Set var_8C = Me.TxtGrid
  loc_156F35F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_D4)
  loc_156F367:     var_D0 = var_90.Left
  loc_156F379:     Set var_98 = Me.TxtGrid
  loc_156F37F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_156F399:     Set var_DC = Me.TxtGrid
  loc_156F39F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E0)
  loc_156F3B9:     Set var_E8 = Me.TxtGrid
  loc_156F3BF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_EC)
  loc_156F3C7:     var_F0 = var_EC.Width
  loc_156F413:     Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, var_9C.Top)
  loc_156F441:     If (CLng(Shift) = &HD) Then
  loc_156F44A:       Call Proc_185_154_14B795C(KeyCode, var_FE, CInt(var_D4), CInt(((var_D8 + var_E0.Height) + CDbl(&HF))))
  loc_156F455:       If (var_FE = &HFF) Then
  loc_156F49B:         Proc_183_25_11BCFD4(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8)
  loc_156F4AB:       End If
  loc_156F4AB:     End If
  loc_156F4AE:   Else
  loc_156F4B5:     If (var_D0 = CLng(2)) Then
  loc_156F506:       If (CStr(Me.FGridRef.TextMatrix)) = "Ag.Ref.") Then
  loc_156F53F:         Proc_183_34_1307118(Me.DGRefNo, Me.TxtGrid, KeyCode, global_84, Shift, &HFF, 0, CVar(CLng(1)))
  loc_156F559:         If (CLng(Shift) = &HD) Then
  loc_156F562:           Call Proc_185_154_14B795C(KeyCode, var_FE, CVar(CLng(Me.FGridRef.Row)), 0, 0)
  loc_156F56D:           If (var_FE = &HFF) Then
  loc_156F5B3:             Proc_183_25_11BCFD4(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0)
  loc_156F5C3:           End If
  loc_156F5C3:         End If
  loc_156F5C6:       Else
  loc_156F606:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_196 = &HFF))) Then
  loc_156F60F:           Call Proc_185_154_14B795C(KeyCode, var_FE, 0, 0)
  loc_156F61A:           If (var_FE = &HFF) Then
  loc_156F660:             Proc_183_25_11BCFD4(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0)
  loc_156F670:           End If
  loc_156F670:         End If
  loc_156F670:       End If
  loc_156F673:     Else
  loc_156F67A:       If (var_D0 = CLng(4)) Then
  loc_156F6BD:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_196 = &HFF))) Then
  loc_156F6C6:           Call Proc_185_154_14B795C(KeyCode, var_FE, 0, 0)
  loc_156F6D1:           If (var_FE = &HFF) Then
  loc_156F6E7:             var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F6FF:             var_120 = CVar(CLng(Me.FGridRef.Col)) 'Long
  loc_156F73B:             If (CDbl(Val(CStr(Me.FGridRef.TextMatrix)))) > CDbl(0)) Then
  loc_156F781:               Proc_183_25_11BCFD4(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0, 8)
  loc_156F794:             Else
  loc_156F7D7:               Proc_183_25_11BCFD4(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0, 8)
  loc_156F7E7:             End If
  loc_156F7E7:           End If
  loc_156F7E7:         End If
  loc_156F7EA:       Else
  loc_156F7F1:         If (var_D0 = CLng(3)) Then
  loc_156F834:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_196 = &HFF))) Then
  loc_156F83D:             Call Proc_185_154_14B795C(KeyCode, var_FE, 0, 0, var_120)
  loc_156F848:             If (var_FE = &HFF) Then
  loc_156F88E:               Proc_183_25_11BCFD4(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0)
  loc_156F8B1:               var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F8B6:               var_120 = 0
  loc_156F8BF:               var_160 = vbNullString
  loc_156F8C9:               Set var_90 = Me.FGridRef
  loc_156F8CF:               LateIdCallSt
  loc_156F8E1:             End If
  loc_156F8E1:           End If
  loc_156F8E4:         Else
  loc_156F8EB:           If (var_D0 = CLng(8)) Then
  loc_156F92E:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_196 = &HFF))) Then
  loc_156F937:               Call Proc_185_154_14B795C(KeyCode, var_FE, var_90, var_160, var_120, var_BC, 8)
  loc_156F942:               If (var_FE = &HFF) Then
  loc_156F958:                 var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F960:                 var_120 = CVar(CLng(4)) 'Long
  loc_156F97A:                 var_94 = CStr(Me.FGridRef.TextMatrix))
  loc_156F99A:                 var_160 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F9E7:                 If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGridRef.TextMatrix)))) = CDbl(0))) Then
  loc_156FA2D:                   If ((Me.LblRefAdjDrCrBal.Caption = "Cr") Or (Me.LblRefAdjDrCrBal.Caption = "To")) Then
  loc_156FA4A:                     var_CC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156FA52:                     var_130 = CVar(CLng(3)) 'Long
  loc_156FA7F:                     var_1B4 = CVar(CStr(Format(CVar(Me.LblRefAdjBal), "0.00"))) 'String
  loc_156FA87:                     Set var_90 = Me.FGridRef
  loc_156FA8D:                     LateIdCallSt
  loc_156FAAE:                   Else
  loc_156FAF1:                     If ((Me.LblRefAdjDrCrBal.Caption = "Dr") Or (Me.LblRefAdjDrCrBal.Caption = "By")) Then
  loc_156FB0E:                       var_CC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156FB16:                       var_130 = CVar(CLng(4)) 'Long
  loc_156FB43:                       var_1B4 = CVar(CStr(Format(CVar(Me.LblRefAdjBal), "0.00"))) 'String
  loc_156FB4B:                       Set var_90 = Me.FGridRef
  loc_156FB51:                       LateIdCallSt
  loc_156FB6F:                     End If
  loc_156FB6F:                   End If
  loc_156FB6F:                 End If
  loc_156FB82:                 var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156FB8A:                 var_120 = CVar(CLng(2)) 'Long
  loc_156FBA4:                 var_94 = CStr(Me.FGridRef.TextMatrix))
  loc_156FBB6:                 var_150 = Me.FGridRef.Row
  loc_156FBBF:                 var_160 = CVar(CLng(var_150)) 'Long
  loc_156FBD6:                 var_1A0 = Me.FGridRef.TextMatrix)
  loc_156FC07:                 If (CVar(CLng(1)) And (CStr(var_1A0) <> "On Account")) Then
  loc_156FC4D:                   Proc_183_25_11BCFD4(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0, 2)
  loc_156FC5D:                   Exit Sub
  loc_156FC5E:                 End If
  loc_156FC6B:                 var_94 = Me.LblRefAdjBal.Caption
  loc_156FC83:                 If (CDbl(Val(var_94)) = CDbl(0)) Then
  loc_156FCBD:                   If (MsgBox("Save Entries", &H24, "Adjustment", var_150, var_1A0) = 6) Then
  loc_156FCC0:                     Call Proc_185_155_139BFE4(0, var_160, (var_94 = vbNullString), var_120)
  loc_156FCC5:                     Exit Sub
  loc_156FCC9:                   Else
  loc_156FCCD:                     Set var_8C = Me.FGridRef
  loc_156FCDE:                   End If
  loc_156FD21:                   Proc_183_25_11BCFD4(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0)
  loc_156FD44:                   var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156FD49:                   var_120 = 0
  loc_156FD52:                   var_160 = vbNullString
  loc_156FD5C:                   Set var_90 = Me.FGridRef
  loc_156FD62:                   LateIdCallSt
  loc_156FD77:                 Else
  loc_156FDBA:                   Proc_183_25_11BCFD4(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0, 0)
  loc_156FDDD:                   var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156FDE2:                   var_120 = 0
  loc_156FDEB:                   var_160 = vbNullString
  loc_156FDF5:                   Set var_90 = Me.FGridRef
  loc_156FDFB:                   LateIdCallSt
  loc_156FE20:                   var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156FE28:                   var_120 = CVar(CLng(1)) 'Long
  loc_156FE2D:                   var_160 = "On Account"
  loc_156FE37:                   Set var_90 = Me.FGridRef
  loc_156FE3D:                   LateIdCallSt
  loc_156FE62:                   var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156FE6A:                   var_120 = CVar(CLng(2)) 'Long
  loc_156FE6F:                   var_160 = vbNullString
  loc_156FE79:                   Set var_90 = Me.FGridRef
  loc_156FE7F:                   LateIdCallSt
  loc_156FEA4:                   var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156FEAC:                   var_120 = CVar(CLng(8)) 'Long
  loc_156FEB5:                   Set var_90 = Me.FGridRef
  loc_156FEEE:                   If (Trim(CVar(CStr(var_90.TextMatrix)))) = vbNullString) Then
  loc_156FF1D:                     Set var_8C = Me.VchDt
  loc_156FF23:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_94, CVar(CLng(8)), CVar(CLng(Me.FGridRef.Row)), CVar(CLng(8)), CVar(CLng(Me.FGridRef.Row)))
  loc_156FF2B:                     var_90 = var_90.Text
  loc_156FF33:                     var_140 = CVar(var_94) 'String
  loc_156FF3B:                     Set var_9C = Me.FGridRef
  loc_156FF41:                     LateIdCallSt
  loc_156FF5B:                   End If
  loc_156FF9E:                   If ((Me.LblRefAdjDrCrBal.Caption = "Dr") Or (Me.LblRefAdjDrCrBal.Caption = "By")) Then
  loc_156FFB4:                     var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156FFBC:                     var_120 = CVar(CLng(3)) 'Long
  loc_156FFDC:                     var_1A0 = Trim(CVar(CStr(Me.FGridRef.TextMatrix))))
  loc_156FFE4:                     var_160 = vbNullString
  loc_1570001:                     var_170 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_157005F:                     If CBool(CVar(CLng(4)) And (Trim(CVar(CStr(Me.FGridRef.TextMatrix)))) = vbNullString)) Then
  loc_1570092:                       var_120 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_157009A:                       var_160 = CVar(CLng(4)) 'Long
  loc_15700C7:                       var_1B4 = CVar(CStr(Format(CVar(Val(Me.LblRefAdjBal.Caption)), "0.00"))) 'String
  loc_15700CF:                       Set var_98 = Me.FGridRef
  loc_15700D5:                       LateIdCallSt
  loc_15700F6:                     End If
  loc_15700F9:                   Else
  loc_157013C:                     If ((Me.LblRefAdjDrCrBal.Caption = "Cr") Or (Me.LblRefAdjDrCrBal.Caption = "To")) Then
  loc_1570152:                       var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_157015A:                       var_120 = CVar(CLng(3)) 'Long
  loc_157017A:                       var_1A0 = Trim(CVar(CStr(Me.FGridRef.TextMatrix))))
  loc_1570182:                       var_160 = vbNullString
  loc_157019F:                       var_170 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_15701FD:                       If CBool(CVar(CLng(4)) And (Trim(CVar(CStr(Me.FGridRef.TextMatrix)))) = vbNullString)) Then
  loc_157020D:                         var_94 = Me.LblRefAdjBal.Caption
  loc_157021A:                         var_23C = Val(var_94)
  loc_1570227:                         var_1A0 = Me.FGridRef.Row
  loc_1570230:                         var_120 = CVar(CLng(var_1A0)) 'Long
  loc_1570238:                         var_160 = CVar(CLng(3)) 'Long
  loc_1570265:                         var_1B4 = CVar(CStr(Format(CVar(var_23C), "0.00"))) 'String
  loc_157026D:                         Set var_98 = Me.FGridRef
  loc_1570273:                         LateIdCallSt
  loc_1570294:                       End If
  loc_1570294:                     End If
  loc_1570294:                   End If
  loc_1570294:                   Call Proc_185_162_11F7928(var_98, var_1B4, 1, 1, var_160, var_120, var_23C, var_170)
  loc_1570299:                 End If
  loc_1570299:               End If
  loc_1570299:             End If
  loc_1570299:           End If
  loc_1570299:         End If
  loc_1570299:       End If
  loc_1570299:     End If
  loc_1570299:   End If
  loc_1570299: End If
  loc_1570299: Exit Sub
  loc_157029A: ' Referenced from: 156F224
  loc_15702A0: Call 0.Method_arg_50 (var_94, (var_1A0 = var_160), var_120, var_BC)
  loc_15702B5: Proc_183_57_104B0BC(var_94, "TxtGrid_KeyDown", var_98)
  loc_15702C1: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F86090
  'Data Table: 5C26BC
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_F4 As String
  loc_F85F44: On Error Goto loc_F86066
  loc_F85F4A: Proc_183_46_E07C50(arg_10)
  loc_F85F52: var_86 = KeyAscii
  loc_F85F5B: If (var_86 = 0) Then
  loc_F85F5E:   GoTo loc_F86065
  loc_F85F61: End If
  loc_F85F69: If (var_86 = CInt(2)) Then
  loc_F85F7F:   var_AC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_F85F87:   var_CC = CVar(CLng(1)) 'Long
  loc_F85FBA:   If (CStr(Me.FGridRef.TextMatrix)) = "Ag.Ref.") Then
  loc_F85FD9:     If (CBool(Me.DGRefNo.Visible) = &HFF) Then
  loc_F85FE0:       Set var_E0 = Me.TxtGrid
  loc_F85FEB:       var_F4 = "RefNo"
  loc_F86006:       Proc_183_41_145A968(var_E0, KeyAscii, global_84, arg_10, var_F4)
  loc_F86015:     End If
  loc_F86015:   End If
  loc_F86018: Else
  loc_F86020:   If Not (var_86 = CInt(3)) Then
  loc_F8602B:     If (var_86 = CInt(4)) Then
  loc_F8602E:     End If
  loc_F86038:     Set var_8C = Me.TxtGrid
  loc_F8603E:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_E0, 0)
  loc_F86059:     Proc_183_22_129BBAC(var_E0, arg_10, 8, 2)
  loc_F86065:   End If
  loc_F86065:   ' Referenced from: F85F5E
  loc_F86065: End If
  loc_F86065: Exit Sub
  loc_F86066: ' Referenced from: F85F44
  loc_F8606C: Call 0.Method_arg_50 (var_F4, var_CC)
  loc_F86081: Proc_183_57_104B0BC(var_F4, "TxtGrid_KeyPress")
  loc_F8608D: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FCBD70
  'Data Table: 5C26BC
  Dim var_A0 As Long
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_104 As String
  loc_FCBBC8: On Error Goto loc_FCBD45
  loc_FCBBD7: If (KeyCode = 0) Then
  loc_FCBBED:   var_A0 = CLng(Me.FGridRef.Col)
  loc_FCBBFD:   If (var_A0 = CLng(1)) Then
  loc_FCBC22:     If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_FCBC33:       Call TxtGrid_KeyDown(KeyCode, global_168)
  loc_FCBC38:     End If
  loc_FCBC64:     Proc_183_35_F2A594(Me.ListView, Me.TxtGrid, KeyCode, Shift)
  loc_FCBC77:   Else
  loc_FCBC7E:     If (var_A0 = CLng(2)) Then
  loc_FCBC94:       var_C0 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_FCBC9C:       var_E0 = CVar(CLng(1)) 'Long
  loc_FCBCCF:       If (CStr(Me.FGridRef.TextMatrix)) = "Ag.Ref.") Then
  loc_FCBCF5:         If ((Shift <> &HD) And (CBool(Me.DGRefNo.Visible) = 0)) Then
  loc_FCBD06:           Call TxtGrid_KeyDown(KeyCode, global_168)
  loc_FCBD1A:           var_104 = "RefNo"
  loc_FCBD35:           Proc_183_41_145A968(Me.TxtGrid, KeyCode, global_84, Shift, var_104, &HFF, 0)
  loc_FCBD44:         End If
  loc_FCBD44:       End If
  loc_FCBD44:     End If
  loc_FCBD44:   End If
  loc_FCBD44: End If
  loc_FCBD44: Exit Sub
  loc_FCBD45: ' Referenced from: FCBBC8
  loc_FCBD4B: Call 0.Method_arg_50 (var_104, var_E0, var_C0, global_164)
  loc_FCBD60: Proc_183_57_104B0BC(var_104, "TxtGrid_KeyUp", 0)
  loc_FCBD6C: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E6B6C0
  'Data Table: 5C26BC
  Dim arg_10 As Integer
  loc_E6B670: On Error Goto loc_E6B695
  loc_E6B67F: If (Cancel = 0) Then
  loc_E6B688:   Call Proc_185_154_14B795C(Cancel, var_88)
  loc_E6B691:   arg_10 = Not(var_88)
  loc_E6B694: End If
  loc_E6B694: Exit Sub
  loc_E6B695: ' Referenced from: E6B670
  loc_E6B69B: Call 0.Method_arg_50 (var_8C, arg_10)
  loc_E6B6B0: Proc_183_57_104B0BC(var_8C, "TxtGrid_Validate")
  loc_E6B6BC: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5FE0C
  'Data Table: 5C26BC
  Dim var_88 As Variant
  Dim var_A8 As TextBox
  Dim ListView_UnknownEvent_1349C As String
  loc_F5FCF0: On Error Goto loc_F5FDE1
  loc_F5FD11: var_A0 = Me.ListView.SelectedItem.Text
  loc_F5FD22: Set var_A4 = Me.TxtGrid
  loc_F5FD28: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_F5FD30: var_A8.Text = var_A0
  loc_F5FD52: Me.FrmList.Visible = False
  loc_F5FD62: Call Proc_185_154_14B795C(0)
  loc_F5FD6D: If (var_AC = &HFF) Then
  loc_F5FDBB:   Proc_183_25_11BCFD4(Me.FGridRef, Me.TxtGrid, 0, CInt(&HD), global_196)
  loc_F5FDCB: End If
  loc_F5FDCF: Set var_88 = Me.FGridRef
  loc_F5FDE0: Exit Sub
  loc_F5FDE1: ' Referenced from: F5FCF0
  loc_F5FDE7: Call 0.Method_arg_50 (var_A0, FGridRef.DispID_8001, 8, 0)
  loc_F5FDFC: Proc_183_57_104B0BC(var_A0, "ListView_Click", 0)
  loc_F5FE08: Exit Sub
  loc_F5FE0A: ListView_UnknownEvent_1349C = CStr(0)
End Sub

Private Sub Command2_Click() '1110244
  'Data Table: 5C26BC
  Dim var_118 As Variant
  Dim var_138 As Long
  Dim var_14C As MSFlexGrid
  Dim var_15C As Variant
  Dim var_178 As Double
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim var_88 As Long
  Dim var_180 As Double
  loc_110FF14: On Error Goto loc_111021B
  loc_110FF2A: var_118 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_110FF2F: var_138 = 9
  loc_110FF7D: var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_110FF82: var_CC = &HA
  loc_110FFF5: If ((CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) < CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) And (CDbl(Val(Me.ADJ_LAB7.Caption)) < CDbl(Me.ADJ_LAB4.Caption))) Then
  loc_111000B:   var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_1110010:   var_CC = &HA
  loc_1110037:   var_88 = CLng(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_111007B:   var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_1110080:   var_CC = 9
  loc_11100A6:   var_180 = Val(CStr(Me.FgridAdjust.TextMatrix)))
  loc_11100ED:   If (CDbl((Val(Me.ADJ_LAB4.Caption) - (Val(Me.ADJ_LAB7.Caption) - CDbl(var_88)))) >= CDbl(var_180)) Then
  loc_1110103:     var_118 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_1110108:     var_138 = &HA
  loc_1110124:     var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_1110129:     var_CC = 9
  loc_1110151:     var_15C = CVar(CStr(Val(CStr(Me.FgridAdjust.TextMatrix))))) 'String
  loc_1110159:     Set var_14C = Me.FgridAdjust
  loc_111015F:     LateIdCallSt
  loc_1110183:   Else
  loc_111019D:     var_178 = Val(Me.ADJ_LAB7.Caption)
  loc_11101B3:     var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_11101B8:     var_CC = &HA
  loc_11101CE:     var_F4 = Me.ADJ_LAB4.Caption
  loc_11101E6:     var_F0 = CVar(CStr((Val(var_F4) - (var_178 - CDbl(var_88))))) 'String
  loc_11101EE:     Set var_14C = Me.FgridAdjust
  loc_11101F4:     LateIdCallSt
  loc_1110215:   End If
  loc_1110215:   Call Proc_185_150_FEA4F0(var_14C, Me.FgridAdjust.TextMatrix), var_CC, var_AC, var_178, var_14C, var_15C, var_CC)
  loc_111021A: End If
  loc_111021A: Exit Sub
  loc_111021B: ' Referenced from: 110FF14
  loc_1110221: Call 0.Method_arg_50 (var_F4, var_AC, var_138, var_118)
  loc_1110236: Proc_183_57_104B0BC(var_F4, "Command2_Click", var_180)
  loc_1110242: Exit Sub
End Sub

Private Sub Text3_KeyDown(KeyCode As Integer, Shift As Integer) 'E21F38
  'Data Table: 5C26BC
  loc_E21F29: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_E21F32:   Proc_6_75_E5335C(KeyCode)
  loc_E21F37: End If
  loc_E21F37: Exit Sub
End Sub

Private Sub Text3_LostFocus() 'E4DEF4
  'Data Table: 5C26BC
  loc_E4DEE4: Me.Text3.Text = Proc_6_33_15125B8(Me.Text3)
  loc_E4DEF3: Exit Sub
End Sub

Private Sub Text3_Validate(Cancel As Boolean) 'E4DF5C
  'Data Table: 5C26BC
  loc_E4DF4C: Me.Text3.Text = Proc_6_33_15125B8(Me.Text3)
  loc_E4DF5B: Exit Sub
End Sub

Private Sub BTS_AUTO_ADJ_Click() '110ECC4
  'Data Table: 5C26BC
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Double
  Dim var_118 As Variant
  Dim var_138 As Long
  Dim var_D8 As Variant
  Dim var_F8 As Long
  Dim var_BC As String
  Dim var_14C As Variant
  Dim var_8C As Long
  Dim var_150 As String
  loc_110E984: On Error Goto loc_110EC99
  loc_110E9C6: For var_B8 = CInt(CLng(Me.FgridAdjust.Row)) To CInt((CLng(Me.FgridAdjust.Rows) - 1)): var_86 = var_B8 'Integer
  loc_110EA17:   If (CDbl(Val(Me.ADJ_LAB4.Caption)) > CDbl(Val(Me.ADJ_LAB7.Caption))) Then
  loc_110EA1E:     var_118 = CVar(CLng(var_86)) 'Long
  loc_110EA23:     var_138 = 9
  loc_110EA62:     var_D8 = CVar(CLng(var_86)) 'Long
  loc_110EA67:     var_F8 = &HA
  loc_110EAD2:     If ((CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) < CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) And (CDbl(Val(Me.ADJ_LAB7.Caption)) <= CDbl(Me.ADJ_LAB4.Caption))) Then
  loc_110EAD9:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_110EADE:       var_F8 = &HA
  loc_110EB05:       var_8C = CLng(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_110EB32:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_110EB37:       var_F8 = 9
  loc_110EB9E:       If (CDbl((Val(Me.ADJ_LAB4.Caption) - (Val(Me.ADJ_LAB7.Caption) - CDbl(var_8C)))) >= CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) Then
  loc_110EBA5:         var_118 = CVar(CLng(var_86)) 'Long
  loc_110EBAA:         var_138 = &HA
  loc_110EBB7:         var_D8 = CVar(CLng(var_86)) 'Long
  loc_110EBBC:         var_F8 = 9
  loc_110EBE4:         var_B4 = CVar(CStr(Val(CStr(Me.FgridAdjust.TextMatrix))))) 'String
  loc_110EBEC:         Set var_A4 = Me.FgridAdjust
  loc_110EBF2:         LateIdCallSt
  loc_110EC0E:       Else
  loc_110EC15:         Set var_A4 = Me.ADJ_LAB7
  loc_110EC28:         var_C8 = Val(var_A4.Caption)
  loc_110EC2F:         var_D8 = CVar(CLng(var_86)) 'Long
  loc_110EC34:         var_F8 = &HA
  loc_110EC4A:         var_BC = Me.ADJ_LAB4.Caption
  loc_110EC62:         var_A0 = CVar(CStr((Val(var_BC) - (var_C8 - CDbl(var_8C))))) 'String
  loc_110EC6A:         Set var_14C = Me.FgridAdjust
  loc_110EC70:         LateIdCallSt
  loc_110EC8B:       End If
  loc_110EC8B:     End If
  loc_110EC8B:   End If
  loc_110EC8B:   Call Proc_185_150_FEA4F0(var_14C, Me.FgridAdjust.TextMatrix), var_F8, var_D8, var_C8, var_A4, var_B4, var_F8)
  loc_110EC93: Next var_B8 'Integer
  loc_110EC98: Exit Sub
  loc_110EC99: ' Referenced from: 110E984
  loc_110EC9F: Call 0.Method_arg_50 (var_BC)
  loc_110ECA7: var_150 = "BTS_AUTO_ADJ_Click"
  loc_110ECB4: Proc_183_57_104B0BC(var_BC)
  loc_110ECC0: Exit Sub
  loc_110ECC1: Exit Sub
End Sub

Private Sub ADJ_OK_Click() '13126AC
  'Data Table: 5C26BC
  Dim var_9C As Double
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_D0 As Long
  Dim var_E4 As Variant
  Dim var_F8 As String
  Dim var_100 As String
  Dim var_114 As Variant
  Dim var_C0 As Variant
  Dim var_90 As String
  Dim var_150 As Recordset15
  Dim var_128 As Variant
  Dim var_160 As Double
  Dim var_158 As TextBox
  loc_1311F6C: On Error Goto loc_1312682
  loc_1311F7B: Me.FRAMEADJUST.Visible = False
  loc_1311FAA: Call Proc_185_145_E9CA60(CInt(Val(Me.FRAMEADJUST.Tag)), var_94)
  loc_1311FCC: If (Me.RecordCount > 0) Then
  loc_1311FD8:   Me.Sort = "VSNo ASC"
  loc_1312000:   var_B0 = CVar(CLng((Val(Me.FRAMEADJUST.Tag) + CDbl(global_108)))) 'Long
  loc_1312005:   var_D0 = 1
  loc_1312048:   var_100 = "VSNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix))))
  loc_1312051:   Me.Find var_100, 0, 1
  loc_131207F:   If (Me.EOF = 0) Then
  loc_1312082:     ' Referenced from: 1312155
  loc_13120A7:     var_128 = Me.Fields.Item("VSno").Value
  loc_13120D2:     var_C0 = CVar(CLng((Val(Me.FRAMEADJUST.Tag) + CDbl(global_108)))) 'Long
  loc_131211D:     If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_131212B:       Me.Delete
  loc_1312136:       Me.MoveNext
  loc_131214F:       If (Me.EOF = &HFF) Then
  loc_1312152:         GoTo loc_1312158
  loc_1312155:       End If
  loc_1312155:       GoTo loc_1312082
  loc_1312158:       ' Referenced from: 1312152
  loc_1312158:     End If
  loc_1312158:   End If
  loc_1312158: End If
  loc_131217D: For var_14C = 1 To CInt((CLng(Me.FgridAdjust.Rows) - 1)): var_86 = var_14C 'Integer
  loc_131218C:   var_D0 = &HA
  loc_13121C0:   If (CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) > CDbl(0)) Then
  loc_13121C9:     Set var_150 = global_72 
  loc_13121D8:     var_150.AddNew CVar(CLng(var_86)), var_C0
  loc_13121E1:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_13121E6:     var_D0 = &HD
  loc_1312227:     var_150.Fields.Item("DocId").Value = CVar(CStr(Me.FgridAdjust.TextMatrix)))
  loc_1312240:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_1312245:     var_D0 = 4
  loc_131228F:     var_150.Fields.Item("V_SNo").Value = CVar(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_13122C6:     var_B0 = CVar(CLng((Val(Me.FRAMEADJUST.Tag) + CDbl(global_108)))) 'Long
  loc_13122CB:     var_D0 = 1
  loc_1312315:     var_150.Fields.Item("VSNo").Value = CVar(Val(CStr(Me.FGrid1.TextMatrix))))
  loc_1312356:     var_F8 = Me.ADJ_LAB8.Caption
  loc_1312372:     If ((Me.ADJ_LAB8.Caption = "Cr") Or (var_F8 = "To")) Then
  loc_1312379:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_131237E:       var_D0 = &HA
  loc_13123C8:       var_150.Fields.Item("CR").Value = CVar(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_13123DF:     Else
  loc_13123E3:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_13123E8:       var_D0 = &HA
  loc_1312432:       var_150.Fields.Item("DR").Value = CVar(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_1312446:     End If
  loc_1312469:     var_B0 = CVar(CLng((Val(Me.FRAMEADJUST.Tag) + CDbl(global_108)))) 'Long
  loc_131246E:     var_D0 = 2
  loc_13124AF:     var_150.Fields.Item("SUBCODE").Value = CVar(CStr(Me.FGrid1.TextMatrix)))
  loc_13124D2:     var_D0 = 7
  loc_131250B:     var_114 = var_150.Fields.Item("AgRefNo")
  loc_1312513:     var_114.Value = CVar(CStr(Me.FgridAdjust.TextMatrix)))
  loc_1312533:     var_150.Update CVar(CLng(var_86)), var_C0
  loc_131253A:     Set var_150 = Nothing 
  loc_131253E:   End If
  loc_1312541: Next var_14C 'Integer
  loc_1312560: var_9C = Val(Me.FRAMEADJUST.Tag)
  loc_131257D: var_160 = Val(Me.FRAMEADJUST.Tag)
  loc_131258E: Set var_E4 = Me.TxtCrDr
  loc_1312594: Call 0.Method_ADJ_OK_Click0 (CInt(var_9C), var_114, var_F8)
  loc_13125B7: Set var_154 = Me.TxtCrDr
  loc_13125BD: Call 0.Method_ADJ_OK_Click0 (CInt(var_114.Text), var_158, var_100)
  loc_13125C5: (var_F8 = "Cr") = var_158.Text
  loc_13125ED: If (var_9C Or (var_100 = "To")) Then
  loc_1312618:   Set var_E4 = Me.TxtCr
  loc_131261E:   Call 0.Method_ADJ_OK_Click0 (CInt(Val(Me.FRAMEADJUST.Tag)), var_114)
  loc_1312626:   var_114.SetFocus
  loc_131263A: Else
  loc_1312647:   var_90 = Me.FRAMEADJUST.Tag
  loc_1312654:   var_9C = Val(var_90)
  loc_1312662:   Set var_E4 = Me.TxtDr
  loc_1312668:   Call 0.Method_ADJ_OK_Click0 (CInt(var_9C), var_114)
  loc_1312670:   var_114.SetFocus
  loc_1312681: End If
  loc_1312681: Exit Sub
  loc_1312682: ' Referenced from: 1311F6C
  loc_1312688: Call 0.Method_arg_50 (var_90, var_9C)
  loc_131269D: Proc_183_57_104B0BC(var_90, "ADJ_OK_Click")
  loc_13126A9: Exit Sub
End Sub

Private Sub ADJ_CANCLE_Click() 'FAC0B8
  'Data Table: 5C26BC
  Dim var_B4 As Double
  Dim var_BC As Double
  Dim var_94 As TextBox
  Dim var_A8 As TextBox
  loc_FABF3C: On Error Goto loc_FAC08F
  loc_FABF4B: Me.FRAMEADJUST.Visible = False
  loc_FABF6D: var_B4 = Val(Me.FRAMEADJUST.Tag)
  loc_FABF8A: var_BC = Val(Me.FRAMEADJUST.Tag)
  loc_FABF9B: Set var_90 = Me.TxtCrDr
  loc_FABFA1: Call 0.Method_ADJ_CANCLE_Click0 (CInt(var_B4), var_94, var_98)
  loc_FABFC4: Set var_A4 = Me.TxtCrDr
  loc_FABFCA: Call 0.Method_ADJ_CANCLE_Click0 (CInt(var_94.Text), var_A8, var_AC)
  loc_FABFD2: (var_98 = "Cr") = var_A8.Text
  loc_FABFFA: If (var_B4 Or (var_AC = "To")) Then
  loc_FAC025:   Set var_90 = Me.TxtCr
  loc_FAC02B:   Call 0.Method_ADJ_CANCLE_Click0 (CInt(Val(Me.FRAMEADJUST.Tag)), var_94)
  loc_FAC033:   var_94.SetFocus
  loc_FAC047: Else
  loc_FAC054:   var_8C = Me.FRAMEADJUST.Tag
  loc_FAC061:   var_B4 = Val(var_8C)
  loc_FAC06F:   Set var_90 = Me.TxtDr
  loc_FAC075:   Call 0.Method_ADJ_CANCLE_Click0 (CInt(var_B4), var_94)
  loc_FAC07D:   var_94.SetFocus
  loc_FAC08E: End If
  loc_FAC08E: Exit Sub
  loc_FAC08F: ' Referenced from: FABF3C
  loc_FAC095: Call 0.Method_arg_50 (var_8C, var_B4)
  loc_FAC0AA: Proc_183_57_104B0BC(var_8C, "ADJ_CANCLE_Click")
  loc_FAC0B6: Exit Sub
End Sub

Private Sub Text2_Validate(Cancel As Boolean) 'E8610C
  'Data Table: 5C26BC
  loc_E860A8: On Error Goto loc_E860E3
  loc_E860C1: Call 0.Method_arg_184 (Me.Text2)
  loc_E860CD: Set var_90 = Me.Text2
  loc_E860D3: Me.Text2.Text = var_8C
  loc_E860E2: Exit Sub
  loc_E860E3: ' Referenced from: E860A8
  loc_E860E9: Call 0.Method_arg_50 (var_8C)
  loc_E860FE: Proc_183_57_104B0BC(var_8C, "Text2_Validate")
  loc_E8610A: Exit Sub
End Sub

Private Sub TxtONAMT_KeyPress(KeyAscii As Integer) 'E844D4
  'Data Table: 5C26BC
  loc_E84470: On Error Goto loc_E844AC
  loc_E8447F: If (CInt(global_110) <= 2) Then
  loc_E8449F:   Proc_183_22_129BBAC(Me.TxtONAMT, KeyAscii)
  loc_E844AB: End If
  loc_E844AB: Exit Sub
  loc_E844AC: ' Referenced from: E84470
  loc_E844B2: Call 0.Method_arg_50 (var_94, 9)
  loc_E844C7: Proc_183_57_104B0BC(var_94, "TxtONAMT_KeyPress")
  loc_E844D3: Exit Sub
End Sub

Private Sub TxtONAMT_KeyUp(KeyCode As Integer, Shift As Integer) 'F09900
  'Data Table: 5C26BC
  loc_F0982C: On Error Goto loc_F098D6
  loc_F0983B: If (CInt(global_110) <= 2) Then
  loc_F0984B:   var_8C = Me.TxtONAMT.Text
  loc_F098B5:   Me.TxtTDSAMT.Text = CStr(Format(CVar(((Val(var_8C) * Val(Me.TxtTDS.Text)) / CDbl(&H64))), "0"))
  loc_F098D5: End If
  loc_F098D5: Exit Sub
  loc_F098D6: ' Referenced from: F0982C
  loc_F098DC: Call 0.Method_arg_50 (var_8C, 1, 1)
  loc_F098F1: Proc_183_57_104B0BC(var_8C, "TxtONAMT_KeyUp")
  loc_F098FD: Exit Sub
End Sub

Private Sub TxtTDSAMT_KeyPress(KeyAscii As Integer) 'E8568C
  'Data Table: 5C26BC
  loc_E85628: On Error Goto loc_E85664
  loc_E85637: If (CInt(global_110) <= 2) Then
  loc_E85657:   Proc_183_22_129BBAC(Me.TxtTDSAMT, KeyAscii)
  loc_E85663: End If
  loc_E85663: Exit Sub
  loc_E85664: ' Referenced from: E85628
  loc_E8566A: Call 0.Method_arg_50 (var_94, 9)
  loc_E8567F: Proc_183_57_104B0BC(var_94, "TxtTDSAMT_KeyPress")
  loc_E8568B: Exit Sub
End Sub

Private Sub TxtTDSAMT_Validate(Cancel As Boolean) '12BC85C
  'Data Table: 5C26BC
  Dim var_88 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_C4 As Long
  Dim var_D8 As Variant
  Dim var_EC As String
  Dim var_10C As Double
  Dim var_F4 As String
  Dim var_110 As Variant
  Dim var_B4 As Variant
  Dim var_148 As Recordset15
  Dim var_104 As String
  Dim var_14C As Field20
  Dim var_158 As Double
  Dim var_150 As TextBox
  loc_12BC220: On Error Goto loc_12BC834
  loc_12BC23E: If (Me.FrameTDS.Visible = &HFF) Then
  loc_12BC24D:   Me.FrameTDS.Visible = False
  loc_12BC255: End If
  loc_12BC26C: If (Me.RecordCount > 0) Then
  loc_12BC278:   Me.Sort = "V_SNo ASC"
  loc_12BC2A0:   var_A4 = CVar(CLng((Val(Me.FrameTDS.Tag) + CDbl(global_108)))) 'Long
  loc_12BC2A5:   var_C4 = 1
  loc_12BC2E8:   var_F4 = "V_SNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix))))
  loc_12BC2F1:   Me.Find var_F4, 0, 1
  loc_12BC31F:   If (Me.EOF = 0) Then
  loc_12BC322:     ' Referenced from: 12BC3F5
  loc_12BC328:     var_A4 = "V_SNo"
  loc_12BC347:     var_124 = Me.Fields.Item(var_A4).Value
  loc_12BC372:     var_B4 = CVar(CLng((Val(Me.FrameTDS.Tag) + CDbl(global_108)))) 'Long
  loc_12BC3BD:     If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_12BC3CB:       Me.Delete
  loc_12BC3D6:       Me.MoveNext
  loc_12BC3EF:       If (Me.EOF = &HFF) Then
  loc_12BC3F2:         GoTo loc_12BC3F8
  loc_12BC3F5:       End If
  loc_12BC3F5:       GoTo loc_12BC322
  loc_12BC3F8:       ' Referenced from: 12BC3F2
  loc_12BC3F8:     End If
  loc_12BC3F8:   End If
  loc_12BC3F8: End If
  loc_12BC3FE: Set var_148 = global_96 
  loc_12BC40D: var_148.AddNew var_A4, var_B4
  loc_12BC41F: var_94 = Me.FrameTDS.Tag
  loc_12BC435: var_A4 = CVar(CLng((Val(var_94) + CDbl(global_108)))) 'Long
  loc_12BC43A: var_C4 = 1
  loc_12BC447: Set var_D8 = Me.FGrid1
  loc_12BC458: var_EC = CStr(var_D8.TextMatrix))
  loc_12BC468: var_104 = "V_SNo"
  loc_12BC484: var_148.Fields.Item(var_104).Value = CVar(Val(var_EC))
  loc_12BC4AA: Set var_88 = Me.TxtTDSCode
  loc_12BC4B0: Call 0.Method_TxtTDSAMT_Validate0 (0, var_D8, var_94, var_C4, var_A4, 1)
  loc_12BC4B8: var_B4 = var_D8.Tag
  loc_12BC4E3: var_148.Fields.Item("TDSCode").Value = CVar(var_94)
  loc_12BC4FF: Set var_88 = Me.TxtTDSCode
  loc_12BC505: Call 0.Method_TxtTDSAMT_Validate0 (0, var_D8, var_124, var_104)
  loc_12BC521: var_110 = var_148.Fields
  loc_12BC531: var_110.Item("TDSName").Value = CVar(var_D8)
  loc_12BC56D: Set var_D8 = Me.TxtAcName
  loc_12BC573: Call 0.Method_TxtTDSAMT_Validate0 (CInt(Val(Me.FrameTDS.Tag)), var_110, var_EC, Val(Me.FrameTDS.Tag))
  loc_12BC57B: var_10C = var_110.Tag
  loc_12BC5A6: var_148.Fields.Item("TDSDrCode").Value = CVar(var_EC)
  loc_12BC5FC: var_148.Fields.Item("ONAMT").Value = CVar(Val(Me.TxtONAMT.Text))
  loc_12BC64B: var_148.Fields.Item("TDS").Value = CVar(Val(Me.TxtTDS.Text))
  loc_12BC676: var_B4 = CVar(Val(Me.TxtTDSAMT.Text)) 'Double
  loc_12BC692: var_110 = var_148.Fields.Item("TDSAMT")
  loc_12BC69A: var_110.Value = var_B4
  loc_12BC6B7: var_A4 = "NARRATION"
  loc_12BC6D3: var_148.Fields.Item(var_A4).Value = CVar(Me.TxtTDSNarration)
  loc_12BC6ED: var_148.Update var_A4, var_B4
  loc_12BC6F4: Set var_148 = Nothing 
  loc_12BC72F: var_158 = Val(Me.FrameTDS.Tag)
  loc_12BC740: Set var_D8 = Me.TxtCrDr
  loc_12BC746: Call 0.Method_TxtTDSAMT_Validate0 (CInt(Val(Me.FrameTDS.Tag)), var_110, var_EC, var_158)
  loc_12BC74E: var_10C = var_110.Text
  loc_12BC769: Set var_14C = Me.TxtCrDr
  loc_12BC76F: Call 0.Method_TxtTDSAMT_Validate0 (CInt(var_158), var_150, var_F4)
  loc_12BC777: (var_EC = "Cr") = var_150.Text
  loc_12BC79F: If (var_C4 Or (var_F4 = "To")) Then
  loc_12BC7CA:   Set var_D8 = Me.TxtCr
  loc_12BC7D0:   Call 0.Method_TxtTDSAMT_Validate0 (CInt(Val(Me.FrameTDS.Tag)), var_110)
  loc_12BC7D8:   var_110.SetFocus
  loc_12BC7EC: Else
  loc_12BC7F9:   var_94 = Me.FrameTDS.Tag
  loc_12BC806:   var_10C = Val(var_94)
  loc_12BC814:   Set var_D8 = Me.TxtDr
  loc_12BC81A:   Call 0.Method_TxtTDSAMT_Validate0 (CInt(var_10C), var_110, var_10C)
  loc_12BC822:   var_110.SetFocus
  loc_12BC833: End If
  loc_12BC833: Exit Sub
  loc_12BC834: ' Referenced from: 12BC220
  loc_12BC83A: Call 0.Method_arg_50 (var_94, var_10C)
  loc_12BC84F: Proc_183_57_104B0BC(var_94, "TxtTDSAMT_Validate")
  loc_12BC85B: Exit Sub
End Sub

Private Sub TxtTDS_KeyPress(KeyAscii As Integer) 'E85344
  'Data Table: 5C26BC
  loc_E852E0: On Error Goto loc_E8531C
  loc_E852EF: If (CInt(global_110) <= 2) Then
  loc_E8530F:   Proc_183_22_129BBAC(Me.TxtTDS, KeyAscii)
  loc_E8531B: End If
  loc_E8531B: Exit Sub
  loc_E8531C: ' Referenced from: E852E0
  loc_E85322: Call 0.Method_arg_50 (var_94, 3)
  loc_E85337: Proc_183_57_104B0BC(var_94, "TxtTDS_KeyPress")
  loc_E85343: Exit Sub
End Sub

Private Sub TxtTDS_KeyUp(KeyCode As Integer, Shift As Integer) 'F09338
  'Data Table: 5C26BC
  loc_F09264: On Error Goto loc_F0930E
  loc_F09273: If (CInt(global_110) <= 2) Then
  loc_F09283:   var_8C = Me.TxtONAMT.Text
  loc_F092ED:   Me.TxtTDSAMT.Text = CStr(Format(CVar(((Val(var_8C) * Val(Me.TxtTDS.Text)) / CDbl(&H64))), "0"))
  loc_F0930D: End If
  loc_F0930D: Exit Sub
  loc_F0930E: ' Referenced from: F09264
  loc_F09314: Call 0.Method_arg_50 (var_8C, 1, 1)
  loc_F09329: Proc_183_57_104B0BC(var_8C, "TxtTDS_KeyUp")
  loc_F09335: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '140717C
  'Data Table: 5C26BC
  Dim var_90 As Variant
  Dim var_E0 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_C0 As String
  Dim unk_5C26D2 As Connection15
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_1E8 As TextBox
  Dim var_98 As Variant
  Dim Me As Recordset15
  loc_1406758: On Error Goto loc_1407151
  loc_1406767: Me.ChqPrint.Visible = False
  loc_140678A: If (Me.FRAMEVLIST.Visible = &HFF) Then
  loc_140678D:   Exit Sub
  loc_140678E: End If
  loc_140678E: Call Proc_185_153_E6FF48()
  loc_14067BB: Set var_90 = New
  loc_14067CA: Call 0.Method_arg_1C8 (var_90, var_98)
  loc_14067D8: global_100 = var_90
  loc_14067E8: Set global_100 = var_98
  loc_1406812: Set var_90 = New
  loc_1406821: Call 0.Method_arg_1CC (var_90, var_98)
  loc_140682F: global_96 = var_90
  loc_140683F: Set global_96 = var_98
  loc_1406869: Set var_90 = New
  loc_1406878: Call 0.Method_arg_1C4 (var_90, var_98)
  loc_1406886: global_72 = var_90
  loc_1406896: Set global_72 = var_98
  loc_14068A3: Call Proc_185_156_1116EC8(CByte(1))
  loc_14068AD: Call Proc_185_158_1019368(0)
  loc_14068B7: global_108 = 0
  loc_14068C7: Set var_90 = Me.FGrid1
  loc_14068CD: Me.FGrid1.Rows = 0
  loc_14068E1: Set var_90 = Me
  loc_14068F0: Proc_5_1_100EC1C("ADD", var_90)
  loc_1406906: If (global_140 <> vbNullString) Then
  loc_1406926:   Proc_183_9_EAB2F0(var_D0, MemVar_1F950C8, "SELECT LV.*,DESCRIPTION,NCAT FROM LastVoucher LV LEFT JOIN VOUCHER_tYPE VT ON Vt.V_TYPE=LV.V_TYPE where User_Name=", var_1E0)
  loc_140692E:   var_E0 = -1 & var_D0 
  loc_1406960:   var_180 = var_E0 & "  AND LV.V_tYPE='" & CVar(global_140) & "' AND LV.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND LV.LOGSITE_CODE='" 
  loc_140696A:   var_1A0 = var_180 & CVar(MemVar_1F95078) 
  loc_1406973:   var_1C0 = var_1A0 & "' ORDER BY LV.LAST_ENT_DATE DESC" 
  loc_1406981:   unk_5C26D2.Execute CStr(var_1C0), var_90, global_68
  loc_140698C:   Set var_88 = var_90
  loc_14069C0:   If (var_88.RecordCount > 0) Then
  loc_14069F8:     global_120 = CStr(Trim(CVar(var_88.Fields.Item("NCat"))))
  loc_1406A66:     var_98 = var_88.Fields.Item("Last_Ent_Date")
  loc_1406A9F:     Set var_9C = Me.VchDt
  loc_1406AA5:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_1E8, CStr(Format(CVar(var_98), "dd/MMM/yyyy")))
  loc_1406AAD:     var_1E8.Text = 1
  loc_1406AD3:     Call Proc_185_166_1326620(CStr(Trim(CVar(var_88.Fields.Item("V_Type")))), global_128)
  loc_1406AE2:     Call TxtVtYpe_Validate(0)
  loc_1406AEA:   Else
  loc_1406B0A:     var_D0 = CVar(Proc_6_15_EF37AC(0, 1)) 'String
  loc_1406B25:     Set var_90 = Me.VchDt
  loc_1406B2B:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_98, CStr(Format(var_D0, "dd/MMM/yyyy")))
  loc_1406B33:     var_98.Text = 1
  loc_1406B55:     global_120 = "JV"
  loc_1406B6D:     Call Proc_185_166_1326620(vbNullString, 0)
  loc_1406B79:   End If
  loc_1406B7C: Else
  loc_1406B99:   Proc_183_9_EAB2F0(var_D0, MemVar_1F950C8, "SELECT LV.*,DESCRIPTION,NCAT FROM LastVoucher LV LEFT JOIN VOUCHER_tYPE VT ON Vt.V_TYPE=LV.V_TYPE where User_Name=", var_1A0)
  loc_1406BA1:   var_E0 = -1 & var_D0 
  loc_1406BD0:   var_180 = "dd/MMM/yyyy" & " AND LV.SITE_CODE='" & CVar(MemVar_1F95070) & "' AND LV.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' ORDER BY LV.LAST_ENT_DATE DESC" 
  loc_1406BDE:   unk_5C26D2.Execute CStr(var_180), var_90, 1
  loc_1406BE9:   Set var_88 = var_90
  loc_1406C19:   If (var_88.RecordCount > 0) Then
  loc_1406C4D:     global_120 = CStr(var_88.Fields.Item("NCat").Value)
  loc_1406CBB:     var_98 = var_88.Fields.Item("Last_Ent_Date")
  loc_1406CF4:     Set var_9C = Me.VchDt
  loc_1406CFA:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_1E8, CStr(Format(CVar(var_98), "dd/MMM/yyyy")))
  loc_1406D02:     var_1E8.Text = 1
  loc_1406D28:     Call Proc_185_166_1326620(CStr(Trim(CVar(var_88.Fields.Item("V_Type")))), global_128)
  loc_1406D37:     Call TxtVtYpe_Validate(0)
  loc_1406D3F:   Else
  loc_1406D5F:     var_E0 = Format(MemVar_1F950EC, "dd/MMM/yyyy")
  loc_1406D74:     Set var_90 = Me.VchDt
  loc_1406D7A:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_98, CStr(var_E0), 1)
  loc_1406D82:     var_98.Text = 1
  loc_1406DAC:     var_C0 = "SELECT VT.Description,VT.NCat,VT.V_Type,VP.Prefix FROM VOUCHER_tYPE AS VT INNER JOIN Voucher_Prefix AS VP ON (VT.Site_Code=VP.Site_Code) AND (VT.LogSite_Code=VP.LogSite_Code) AND (VT.V_Type=VP.V_Type) where VT.SITE_CODE='" & MemVar_1F95070
  loc_1406DCD:     Set var_90 = Me.VchDt
  loc_1406DD3:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_98, CVar(var_C0 & "' AND VT.CATEGORY='FA' AND VT.LOGSITE_CODE='" & MemVar_1F95078 & "' AND VP.DATE_FROM<="), var_1C0, -1)
  loc_1406DE2:     Proc_183_7_EB17D4(var_E0, CVar(var_98), var_1FC)
  loc_1406E00:     Set var_9C = Me.VchDt
  loc_1406E06:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_1E8, 0 & var_E0 & " AND VP.DATE_TO>=")
  loc_1406E15:     Proc_183_7_EB17D4(var_180, CVar(var_1E8))
  loc_1406E2B:     unk_5C26D2.Execute CStr(1 & var_180), global_108, 
  loc_1406E36:     Set var_88 = var_1FC
  loc_1406E76:     If (var_88.RecordCount > 0) Then
  loc_1406EAE:       global_120 = CStr(Trim(CVar(var_88.Fields.Item("NCat"))))
  loc_1406F3A:       global_128 = CStr(Trim(CVar(var_88.Fields.Item("Prefix"))))
  loc_1406F50:       var_C0 = 0
  loc_1406F5C:       Call Proc_185_166_1326620(CStr(Trim(CVar(var_88.Fields.Item("V_Type")))))
  loc_1406F67:     Else
  loc_1406F6D:       global_120 = "JV"
  loc_1406F85:       Call Proc_185_166_1326620(vbNullString, 0)
  loc_1406F91:     End If
  loc_1406FAE:     var_98 = Me.Fields.Item("ToBy")
  loc_1406FFD:     Set var_9C = Me.TxtCrDr
  loc_1407003:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_1E8)
  loc_140700B:     var_1E8.Text = CStr(IIf((var_98.Value = "Yes"), "By", "Dr"))
  loc_140702B:   End If
  loc_140702B: End If
  loc_1407038: Me.lblTDS.Caption = vbNullString
  loc_140704A: Call Proc_185_157_11F0D18(0, &HFF)
  loc_140705A: For var_200 = 1 To global_136: var_8A = var_200 'Integer
  loc_1407068:   Call Proc_185_157_11F0D18(var_8A, 0)
  loc_1407070: Next var_200 'Integer
  loc_14070A7: Set var_90 = Me.LblDrAmt
  loc_14070AD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_98, CStr(Format(0, "0.00")))
  loc_14070B5: var_98.Caption = 1
  loc_14070F2: var_C0 = CStr(Format(0, "0.00"))
  loc_14070FF: Set var_90 = Me.LblCrAmt
  loc_1407105: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_98, var_C0)
  loc_140710D: var_98.Caption = 1
  loc_140712E: Set var_90 = Me.VchDt
  loc_1407134: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_98)
  loc_140713C: var_98.SetFocus
  loc_140714D: Set var_88 = Nothing
  loc_1407150: Exit Sub
  loc_1407151: ' Referenced from: 1406758
  loc_1407157: Call 0.Method_arg_50 (var_C0, 1)
  loc_140716C: Proc_183_57_104B0BC(var_C0, "TopCtrl1_eAdd")
  loc_1407178: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F019D0
  'Data Table: 5C26BC
  loc_F01900: On Error Goto loc_F019A5
  loc_F01909: Call 0.Method_arg_50 (var_8C)
  loc_F01940: If (MsgBox("Are You Sure To Cancel Changes", &H14, CVar(var_8C), var_DC, var_FC) = 6) Then
  loc_F0194E:   Call Proc_185_169_F64FF4(CByte(3))
  loc_F01968:   var_8C = "INI"
  loc_F0196E:   Proc_5_1_100EC1C(var_8C, Me)
  loc_F01984:   For var_104 = 0 To global_136: var_86 = var_104 'Integer
  loc_F01992:     Call Proc_185_157_11F0D18(var_86, 0)
  loc_F0199A:   Next var_104 'Integer
  loc_F0199F:   Call Proc_185_144_19C1534()
  loc_F019A4: End If
  loc_F019A4: Exit Sub
  loc_F019A5: ' Referenced from: F01900
  loc_F019AB: Call 0.Method_arg_50 (var_8C)
  loc_F019B3: var_110 = "TopCtrl1_eCancel"
  loc_F019C0: Proc_183_57_104B0BC(var_8C)
  loc_F019CC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1539F6C
  'Data Table: 5C26BC
  Dim Me As Recordset15
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_110 As String
  Dim unk_5C26D2 As Connection15
  Dim var_9C As Recordset15
  Dim var_A0 As Recordset15
  Dim var_134 As Fields15
  Dim var_178 As Fields15
  loc_1538FD8: On Error Goto loc_1539F38
  loc_1538FE7: Me.ChqPrint.Visible = False
  loc_1538FFD: If (Proc_183_56_FE8B08(global_68) = &HFF) Then
  loc_1539000:   Exit Sub
  loc_1539001: End If
  loc_153901C: If (Me.FRAMEVLIST.Visible = &HFF) Then
  loc_153901F:   GoTo loc_1539F27
  loc_1539022: End If
  loc_1539061: var_EC = "SELECT * FROM LEDGERTDS WHERE DOCID='" & Me.Fields.Item("DocID").Value 
  loc_153906A: var_10C = var_EC & "' AND TDSPOST='Y'" 
  loc_153906E: var_110 = CStr(var_10C)
  loc_1539078: unk_5C26D2.Execute var_110, var_130, -1
  loc_15390B1: If (var_134.RecordCount > 0) Then
  loc_15390CD:   MsgBox("T.D.S.Challan Already Made,Can't delete it", 0, var_EC, var_10C, var_130)
  loc_15390E0: Else
  loc_15390F1:   var_98 = Me.Bookmark 'Variant
  loc_15390FE:   var_138 = Me.RecordCount
  loc_153910C:   If (var_138 > 0) Then
  loc_1539115:     Call 0.Method_arg_50 (var_110)
  loc_153914C:     If (MsgBox("Are sure to delete it", &H14, CVar(var_110), var_10C, var_130) = 6) Then
  loc_1539158:       unk_5C26D2.BeginTrans var_138
  loc_153918F:       Call Proc_185_172_F25210(CStr(Me.Fields.Item("DocID").Value))
  loc_15391D0:       var_170 = 0
  loc_15391E3:       var_168 = 0
  loc_15391EE:       var_164 = 0
  loc_1539201:       var_15C = 0
  loc_153920C:       var_158 = 0
  loc_153921F:       var_150 = 0
  loc_1539268:       Proc_154_5_10E3BD4(MemVar_1F951E0, "LEDGER", "DocId", &HC8, CStr(Me.Fields.Item("DocID").Value), 0, 0, 0)
  loc_15392BF:       var_170 = 0
  loc_15392D2:       var_168 = 0
  loc_15392DD:       var_164 = 0
  loc_15392F0:       var_15C = 0
  loc_15392FB:       var_158 = 0
  loc_153930E:       var_150 = 0
  loc_1539357:       Proc_154_5_10E3BD4(MemVar_1F951E0, "LEDGERM", "DocId", &HC8, CStr(Me.Fields.Item("DocID").Value), 0, 0, 0)
  loc_15393AE:       var_170 = 0
  loc_15393C1:       var_168 = 0
  loc_15393CC:       var_164 = 0
  loc_15393DF:       var_15C = 0
  loc_15393EA:       var_158 = 0
  loc_15393FD:       var_150 = 0
  loc_1539446:       Proc_154_5_10E3BD4(MemVar_1F951E0, "LEDGERADJ", "DocId1", &HC8, CStr(Me.Fields.Item("DocID").Value), 0, 0, 0)
  loc_153949D:       var_170 = 0
  loc_15394B0:       var_168 = 0
  loc_15394BB:       var_164 = 0
  loc_15394CE:       var_15C = 0
  loc_15394D9:       var_158 = 0
  loc_15394EC:       var_150 = 0
  loc_1539535:       Proc_154_5_10E3BD4(MemVar_1F951E0, "LEDGERTDS", "DocId", &HC8, CStr(Me.Fields.Item("DocID").Value), 0, 0, 0)
  loc_15395B3:       unk_5C26D2.Execute CStr("SELECT * FROM LEDGERTDS WHERE DOCID='" & Me.Fields.Item("DocID").Value & "'"), var_130, -1
  loc_15395BE:       Set var_9C = var_134
  loc_15395D8:       ' Referenced from:   153991A
  loc_15395E7:       If Not(var_9C.EOF) Then
  loc_153963D:         unk_5C26D2.Execute CStr("SELECT * FROM LEDGER WHERE DOCID='" & var_9C.Fields.Item("TDSDocId").Value & "'"), var_130, -1
  loc_1539648:         Set var_A0 = var_134
  loc_1539662:         ' Referenced from:   15398A0
  loc_1539671:         If Not(var_A0.EOF) Then
  loc_15396B0:           If (var_A0.Fields.Item("AmtCr").Value > 0) Then
  loc_15396EC:             var_134 = var_A0.Fields
  loc_153977A:             Proc_183_0_127A384(MemVar_1F951E0, CStr(var_A0.Fields.Item("subcode").Value), CSng(var_134.Item("AmtCr").Value), CDbl(0), CStr(var_A0.Fields.Item("GroupCode").Value), CDate(var_A0.Fields.Item("V_DATE").Value), var_134)
  loc_15397A7:           Else
  loc_15397E0:             var_134 = var_A0.Fields
  loc_153983E:             var_130 = var_A0.Fields.Item("V_DATE").Value
  loc_153986E:             Proc_183_0_127A384(MemVar_1F951E0, CStr(var_A0.Fields.Item("subcode").Value), CDbl(0), CSng(var_134.Item("AmtDr").Value), CStr(var_A0.Fields.Item("GroupCode").Value), CDate(var_130), var_134)
  loc_1539898:           End If
  loc_153989B:           var_A0.MoveNext
  loc_15398A0:           GoTo loc_1539662
  loc_15398A3:         End If
  loc_15398F6:         unk_5C26D2.Execute CStr("DELETE FROM LEDGER WHERE DOCID='" & var_9C.Fields.Item("TDSDocId").Value & "'"), var_130, -1
  loc_1539915:         var_9C.MoveNext
  loc_153991A:         GoTo loc_15395D8
  loc_153991D:       End If
  loc_1539973:       unk_5C26D2.Execute CStr("SELECT * FROM LEDGER WHERE DOCID='" & Me.Fields.Item("DocID").Value & "'"), var_130, -1
  loc_153997E:       Set var_9C = var_134
  loc_1539998:       ' Referenced from:   1539BD6
  loc_15399A7:       If Not(var_9C.EOF) Then
  loc_15399E6:         If (var_9C.Fields.Item("AmtCr").Value > 0) Then
  loc_1539A22:           var_134 = var_9C.Fields
  loc_1539AB0:           Proc_183_0_127A384(MemVar_1F951E0, CStr(var_9C.Fields.Item("subcode").Value), CSng(var_134.Item("AmtCr").Value), CDbl(0), CStr(var_9C.Fields.Item("GroupCode").Value), CDate(var_9C.Fields.Item("V_DATE").Value), var_134)
  loc_1539ADD:         Else
  loc_1539B16:           var_134 = var_9C.Fields
  loc_1539B3D:           var_178 = var_9C.Fields
  loc_1539B74:           var_130 = var_9C.Fields.Item("V_DATE").Value
  loc_1539BA4:           Proc_183_0_127A384(MemVar_1F951E0, CStr(var_9C.Fields.Item("subcode").Value), CDbl(0), CSng(var_134.Item("AmtDr").Value), CStr(var_178.Item("GroupCode").Value), CDate(var_130), var_134)
  loc_1539BCE:         End If
  loc_1539BD1:         var_9C.MoveNext
  loc_1539BD6:         GoTo loc_1539998
  loc_1539BD9:       End If
  loc_1539C2F:       unk_5C26D2.Execute CStr("DELETE FROM LEDGER  WHERE DOCID='" & Me.Fields.Item("DocID").Value & "'"), var_130, -1
  loc_1539CA1:       unk_5C26D2.Execute CStr("DELETE FROM LEDGERM WHERE DocID='" & Me.Fields.Item("DocID").Value & "'"), var_130, -1
  loc_1539D1E:       var_134 = Me.Fields
  loc_1539D2E:       var_130 = var_134.Item("DocID").Value
  loc_1539D4D:       unk_5C26D2.Execute CStr("DELETE FROM LEDGERADJ WHERE DocID1='" & Me.Fields.Item("DocID").Value & "' OR DocID2='" & var_130 & "'"), var_1EC, -1
  loc_1539DC9:       unk_5C26D2.Execute CStr("DELETE FROM LEDGERREF WHERE DocID='" & Me.Fields.Item("DocID").Value & "'"), var_130, -1
  loc_1539E2D:       var_10C = "DELETE FROM LEDGERTDS WHERE DocID='" & Me.Fields.Item("DocID").Value & "'" 
  loc_1539E31:       var_110 = CStr(var_10C)
  loc_1539E3B:       unk_5C26D2.Execute var_110, var_130, -1
  loc_1539E5D:       unk_5C26D2.CommitTrans
  loc_1539E6D:       Me.Requery -1
  loc_1539E8D:       If (CVar(Me.RecordCount) >= var_98) Then
  loc_1539E9A:         Me.Bookmark = var_98
  loc_1539EA2:       Else
  loc_1539EB6:         If (Me.EOF = 0) Then
  loc_1539EBF:           Me.MoveLast
  loc_1539EC4:         End If
  loc_1539EC4:       End If
  loc_1539EC4:       Call Proc_185_144_19C1534(var_134, var_134, var_178, var_134)
  loc_1539EE5:       Proc_5_0_1107AD0(&HFF, Me, global_68, 0)
  loc_1539EED:     End If
  loc_1539EF0:   Else
  loc_1539EF6:     Call 0.Method_arg_50 (var_110, var_134, var_150)
  loc_1539F17:     MsgBox("There Is No Record To Delete.", &H40, CVar(var_110), var_10C, var_130)
  loc_1539F27:   End If
  loc_1539F27: End If
  loc_1539F27: ' Referenced from: 153901F
  loc_1539F2C: Set var_9C = Nothing
  loc_1539F34: Set var_A0 = Nothing
  loc_1539F37: Exit Sub
  loc_1539F38: ' Referenced from: 1538FD8
  loc_1539F3E: unk_5C26D2.RollbackTrans
  loc_1539F49: Call 0.Method_arg_50 (var_110, 0)
  loc_1539F5E: Proc_183_57_104B0BC(var_110, "TopCtrl1_eDel")
  loc_1539F6A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FCBB74
  'Data Table: 5C26BC
  Dim var_88 As Variant
  Dim var_90 As TextBox
  Dim Me As Variant
  loc_FCB9CC: On Error Goto loc_FCBB4A
  loc_FCB9DB: Me.ChqPrint.Visible = False
  loc_FCB9F1: If (Proc_183_55_FE8490(global_68) = &HFF) Then
  loc_FCB9F4:   Exit Sub
  loc_FCB9F5: End If
  loc_FCBA10: If (Me.FRAMEVLIST.Visible = &HFF) Then
  loc_FCBA13:   Exit Sub
  loc_FCBA14: End If
  loc_FCBA32: Set var_88 = Me.VchDt
  loc_FCBA38: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_90)
  loc_FCBA40: var_94 = var_90.Text
  loc_FCBA59: If (((global_216 = "No") And (MemVar_1F950B8 <> 1)) And (CDate(var_94) < MemVar_1F950EC)) Then
  loc_FCBA62:   Call 0.Method_arg_50 (var_94)
  loc_FCBA83:   MsgBox("Back Date Entry Blocked.", &H10, CVar(var_94), var_E4, var_104)
  loc_FCBA93:   Exit Sub
  loc_FCBA94: End If
  loc_FCBAAB: If (Me.RecordCount > 0) Then
  loc_FCBAC6:   global_200 = Me.lblDocId.Caption
  loc_FCBAD7:   global_110 = CByte(2)
  loc_FCBAE7:   Set var_88 = Me
  loc_FCBAF0:   var_94 = "EDIT"
  loc_FCBAF6:   Proc_5_1_100EC1C(var_94, var_88)
  loc_FCBB06:   Call Proc_185_158_1019368(0, global_68)
  loc_FCBB11:   Call 0.Method_arg_1E8 (var_88)
  loc_FCBB20:   If TypeOf var_88 Is arg_1 Then
  loc_FCBB23:     GoTo loc_FCBB49
  loc_FCBB26:   End If
  loc_FCBB2F:   Set var_88 = Me.TxtCrDr
  loc_FCBB35:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_90)
  loc_FCBB3D:   var_90.SetFocus
  loc_FCBB49:   ' Referenced from: FCBB23
  loc_FCBB49: End If
  loc_FCBB49: Exit Sub
  loc_FCBB4A: ' Referenced from: FCB9CC
  loc_FCBB50: Call 0.Method_arg_50 (var_94)
  loc_FCBB65: Proc_183_57_104B0BC(var_94, "TopCtrl1_eEdit")
  loc_FCBB71: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19EEC
  'Data Table: 5C26BC
  loc_E19EE1: Me.Global.Unload Me
  loc_E19EE9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F '104F138
  'Data Table: 5C26BC
  Dim Me As Recordset15
  Dim var_100 As Variant
  Dim var_104 As Field20
  Dim var_8C As String
  Dim unk_5C26D2 As Connection15
  loc_104EEDC: On Error Goto loc_104F10E
  loc_104EEF6: If (Me.RecordCount <= 0) Then
  loc_104EEFF:   Call 0.Method_arg_50 (var_8C)
  loc_104EF20:   MsgBox("No Records To Search", &H40, CVar(var_8C), var_DC, var_FC)
  loc_104EF30:   Exit Sub
  loc_104EF31: End If
  loc_104EF56: var_AC = Me.Fields.Item("ShowCityName").Value
  loc_104EF70: If (var_AC = "Yes") Then
  loc_104EF87:   var_8C = "Select SubCode,NameWithCity AS Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES From ViewSubgroup WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_104EF97:   unk_5C26D2.Execute var_8C & "' OR LOGSITE_CODE='HO') order by Name", var_AC, -1
  loc_104EFA2:   CVarUnk
  loc_104EFA7:   VerifyVarObj
  loc_104EFAD:   Set var_104 = Me.Dcparty
  loc_104EFB3:   LateIdStAd
  loc_104EFD3: Else
  loc_104EFE7:   var_8C = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES From ViewSubgroup WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_104EFF7:   unk_5C26D2.Execute var_8C & "' OR LOGSITE_CODE='HO') order by Name", var_AC, -1
  loc_104F002:   CVarUnk
  loc_104F007:   VerifyVarObj
  loc_104F00D:   Set var_104 = Me.Dcparty
  loc_104F013:   LateIdStAd
  loc_104F030: End If
  loc_104F040: Me.Dcparty.ListField = "Name"
  loc_104F058: Me.Dcparty.BoundColumn = "Subcode"
  loc_104F06D: Me.TXTVDATE1.Text = vbNullString
  loc_104F082: Me.TXTVDATE2.Text = vbNullString
  loc_104F09A: Me.Dcparty.BoundText = vbNullString
  loc_104F0B2: Me.DataCombo1.BoundText = vbNullString
  loc_104F0C7: Me.Text1.Text = vbNullString
  loc_104F0DB: Me.FRAMEVLIST.Visible = True
  loc_104F0F3: Me.FRAMEVLIST.ZOrder 0
  loc_104F0FF: Set var_100 = Me.TXTVDATE1
  loc_104F105: var_100.SetFocus
  loc_104F10D: Exit Sub
  loc_104F10E: ' Referenced from: 104EEDC
  loc_104F114: Call 0.Method_arg_50 (var_8C, var_104, var_100, var_100)
  loc_104F129: Proc_183_57_104B0BC(var_8C, "TopCtrl1_eFind", var_104)
  loc_104F135: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E7983C
  'Data Table: 5C26BC
  loc_E797E4: On Error Goto loc_E79811
  loc_E79803: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7980B: Call Proc_185_144_19C1534(global_68)
  loc_E79810: Exit Sub
  loc_E79811: ' Referenced from: E797E4
  loc_E79817: Call 0.Method_arg_50 (var_94)
  loc_E7982C: Proc_183_57_104B0BC(var_94, "TopCtrl1_eFirst")
  loc_E79838: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E7CAB4
  'Data Table: 5C26BC
  loc_E7CA5C: On Error Goto loc_E7CA89
  loc_E7CA7B: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7CA83: Call Proc_185_144_19C1534(global_68)
  loc_E7CA88: Exit Sub
  loc_E7CA89: ' Referenced from: E7CA5C
  loc_E7CA8F: Call 0.Method_arg_50 (var_94)
  loc_E7CAA4: Proc_183_57_104B0BC(var_94, "TopCtrl1_eLast")
  loc_E7CAB0: Exit Sub
  loc_E7CAB1: StAryRecMove
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E7C1CC
  'Data Table: 5C26BC
  loc_E7C174: On Error Goto loc_E7C1A1
  loc_E7C193: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7C19B: Call Proc_185_144_19C1534(global_68)
  loc_E7C1A0: Exit Sub
  loc_E7C1A1: ' Referenced from: E7C174
  loc_E7C1A7: Call 0.Method_arg_50 (var_94)
  loc_E7C1BC: Proc_183_57_104B0BC(var_94, "TopCtrl1_eNext")
  loc_E7C1C8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E72320
  'Data Table: 5C26BC
  loc_E722E8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E722F0: Call Proc_185_144_19C1534(global_68)
  loc_E722F5: Exit Sub
  loc_E722FC: Call 0.Method_arg_50 (var_94)
  loc_E72311: Proc_183_57_104B0BC(var_94, "TopCtrl1_ePrev")
  loc_E7231D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'EB898C
  'Data Table: 5C26BC
  Dim var_8C As Frame
  loc_EB88F7: Set var_88 = Me.Frame1
  loc_EB88FD: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB8905: var_8C.Visible = True
  loc_EB891F: Set var_88 = Me.Frame1
  loc_EB8925: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB892D: var_8C.Left = CDbl(1845)
  loc_EB8947: Set var_88 = Me.Frame1
  loc_EB894D: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB8955: var_8C.Top = CDbl(675)
  loc_EB8970: Set var_88 = Me.Frame1
  loc_EB8976: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB897E: var_8C.ZOrder 0
  loc_EB898A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 '10CBE54
  'Data Table: 5C26BC
  Dim var_8C As String
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  Dim unk_5C26D2 As Connection15
  loc_10CBB5C: On Error Goto loc_10CBE29
  loc_10CBB6D: var_88 = "Where (LOGSite_Code='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO')"
  loc_10CBBB2: If (Me.Fields.Item("FilterAC").Value = "No") Then
  loc_10CBBBF:   Set global_88 = New 
  loc_10CBC05:   If (Me.Recordset15.Fields.Item("ShowCityName").Value = "Yes") Then
  loc_10CBC26:     var_8C = "Select SubCode,NameWithCity AS Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup " & var_88
  loc_10CBC37:     Me.Open CVar("Where (LOGSite_Code='" & MemVar_1F95078 & " and (ACTIVEYN=1 OR ACTIVEYN IS NULL) order by Name"), CVar(MemVar_1F951E0), 1
  loc_10CBC45:   Else
  loc_10CBC63:     var_8C = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup " & var_88
  loc_10CBC74:     Me.Open CVar("Where (LOGSite_Code='" & MemVar_1F95078 & " and (ACTIVEYN=1 OR ACTIVEYN IS NULL) order by Name"), CVar(MemVar_1F951E0), 1
  loc_10CBC7F:   End If
  loc_10CBC89:   Set global_92 = New 
  loc_10CBCA5:   var_90 = Me.Recordset15.Fields
  loc_10CBCCF:   If (var_90.Item("ShowCityName").Value = "Yes") Then
  loc_10CBCF0:     var_8C = "Select SubCode,NameWithCity AS Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup " & var_88
  loc_10CBD01:     Me.Open CVar("Where (LOGSite_Code='" & MemVar_1F95078 & " and (ACTIVEYN=1 OR ACTIVEYN IS NULL) order by Name"), CVar(MemVar_1F951E0), 1
  loc_10CBD0F:   Else
  loc_10CBD2D:     var_8C = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup " & var_88
  loc_10CBD3E:     Me.Open CVar("Where (LOGSite_Code='" & MemVar_1F95078 & " and (ACTIVEYN=1 OR ACTIVEYN IS NULL) order by Name"), CVar(MemVar_1F951E0), 1
  loc_10CBD49:   End If
  loc_10CBD49: End If
  loc_10CBD4F: Call 0.Method_arg_1E8 (var_90, 3, -1, 3, -1)
  loc_10CBD6A: If (var_90.Name = "TxtAcName") Then
  loc_10CBD73:   Call 0.Method_arg_1E8 (var_90, 3, -1)
  loc_10CBD7B:   var_B4 = var_90.index
  loc_10CBD84:   Call TxtAcName_GotFocus()
  loc_10CBD8F: End If
  loc_10CBDA6: If (Me.RecordCount > 0) Then
  loc_10CBDAF:   Me.MoveFirst
  loc_10CBDB4: End If
  loc_10CBDCB: If (Me.RecordCount > 0) Then
  loc_10CBDD4:   Me.MoveFirst
  loc_10CBDD9: End If
  loc_10CBDD9: Call Proc_185_169_F64FF4(CInt(var_B4), 3)
  loc_10CBDF2: var_8C = "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078
  loc_10CBE02: unk_5C26D2.Execute var_8C & "'", var_B4, -1
  loc_10CBE13: Set global_80 = var_90
  loc_10CBE28: Exit Sub
  loc_10CBE29: ' Referenced from: 10CBB5C
  loc_10CBE2F: Call 0.Method_arg_50 (var_8C, var_90)
  loc_10CBE44: Proc_183_57_104B0BC(var_8C, "TopCtrl1_eRef")
  loc_10CBE50: Exit Sub
  loc_10CBE51: BranchFVar -513
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1184714
  'Data Table: 5C26BC
  Dim var_90 As TextBox
  Dim var_AC As String
  Dim var_A8 As TextBox
  Dim var_10C As Variant
  loc_1184348: On Error Goto loc_11846E9
  loc_1184354: Set var_8C = Me.VchDt
  loc_118435A: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_1184362: var_98 = "Date"
  loc_1184383: If (Proc_183_19_E8E68C(var_90, var_98) = 0) Then
  loc_1184386:   Exit Sub
  loc_1184387: End If
  loc_1184396: Set var_8C = Me.VchDt
  loc_118439C: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90, var_98)
  loc_11843A4: var_A2 = var_90.Text
  loc_11843BB: Call 0.Method_arg_190 (CDate(var_98))
  loc_11843D0: If (var_A2 = 0) Then
  loc_11843D3:   Exit Sub
  loc_11843D4: End If
  loc_11843DD: Set var_8C = Me.TxtVno
  loc_11843E3: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90)
  loc_118440C: If (Proc_183_19_E8E68C(var_90, "Voucher No") = 0) Then
  loc_118440F:   Exit Sub
  loc_1184410: End If
  loc_118441C: Set var_8C = Me.TxtVno
  loc_1184422: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90)
  loc_1184445: Set var_94 = Me.TxtVno
  loc_118444B: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A8)
  loc_1184453: var_A8.Text = CStr(Val(var_90.Text))
  loc_118446F: var_FC = "E"
  loc_1184493: var_10C = IIf((CInt(global_110) = 1), "A", var_FC)
  loc_11844A3: Call Proc_185_171_1B39E94(CStr(var_10C), var_A2)
  loc_11844AC: var_86 = var_A2 'Byte
  loc_11844C7: If (CInt(var_86) = 2) Then
  loc_11844D3:   If (CInt(var_86) = 2) Then
  loc_1184505:     If (MsgBox("Vr.No.Already Exist,Generate New Vr.No.", 4, var_FC, var_10C, var_12C) = 7) Then
  loc_1184508:       Exit Sub
  loc_1184509:       ' Referenced from: 1184623
  loc_1184509:     End If
  loc_1184509:   End If
  loc_118450B:   If &HFF Then
  loc_118451A:     Set var_8C = Me.TxtVno
  loc_1184520:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90)
  loc_118453B:     var_AC = CStr((Val(var_90.Text) + CDbl(1)))
  loc_1184547:     Set var_94 = Me.TxtVno
  loc_118454D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A8)
  loc_1184555:     var_A8.Text = CStr(Val(var_90.Text))
  loc_11845A5:     Call Proc_185_171_1B39E94(CStr(IIf((CInt(global_110) = 1), "A", "E")), var_A2)
  loc_11845AE:     var_86 = var_A2 'Byte
  loc_11845C9:     If (CInt(var_86) <> 2) Then
  loc_11845E8:       Set var_8C = Me.TxtVno
  loc_11845EE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90, "Vr.No.Already Exist,New Vr.No. is ", 0)
  loc_1184605:       var_10C = (var_12C + Trim(CVar(var_90)))
  loc_1184609:       MsgBox(IIf((CInt(global_110) = 1), "A", "E"), var_13C, var_14C, var_90, )
  loc_1184623:     Else
  loc_1184623:       GoTo loc_1184509
  loc_1184626:     End If
  loc_1184626:   End If
  loc_1184632:   Set var_8C = Me.TxtVtYpe
  loc_1184638:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90)
  loc_118464B:   global_124 = var_90.Tag
  loc_1184659:   Call TopCtrl1_UnknownEvent_A()
  loc_1184661: Else
  loc_118466A:   If (CInt(var_86) = 0) Then
  loc_1184679:     If (CInt(global_110) = 2) Then
  loc_1184683:       global_110 = CByte(3)
  loc_118469C:       var_98 = "INI"
  loc_11846A2:       Proc_5_1_100EC1C(var_98, Me)
  loc_11846B0:     Else
  loc_11846BC:       Set var_8C = Me.TxtVtYpe
  loc_11846C2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90, var_98)
  loc_11846CA:       global_68 = var_90.Tag
  loc_11846D5:       global_124 = var_98
  loc_11846E3:       Call TopCtrl1_UnknownEvent_A()
  loc_11846E8:     End If
  loc_11846E8:   End If
  loc_11846E8: End If
  loc_11846E8: Exit Sub
  loc_11846E9: ' Referenced from: 1184348
  loc_11846EF: Call 0.Method_arg_50 (var_98)
  loc_1184704: Proc_183_57_104B0BC(var_98, "TopCtrl1_eSave")
  loc_1184710: Exit Sub
  loc_1184711: DestructRecord
End Sub

Private Sub FGVLIST_UnknownEvent_9 'F91638
  'Data Table: 5C26BC
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim Me As Recordset15
  loc_F914DC: On Error Goto loc_F9160D
  loc_F914F2: var_A8 = CVar(CLng(Me.FGVLIST.Row)) 'Long
  loc_F914F7: var_C8 = 8
  loc_F9152E: If (CStr(Me.FGVLIST.TextMatrix)) <> vbNullString) Then
  loc_F91537:   Me.MoveFirst
  loc_F9154F:   var_A8 = CVar(CLng(Me.FGVLIST.Row)) 'Long
  loc_F91554:   var_C8 = 8
  loc_F91567:   var_EC = Me.FGVLIST.TextMatrix)
  loc_F91588:   var_F0 = CStr(var_EC)
  loc_F9159C:   Me.Find "DOCID='" & var_F0 & "'", 0, 1
  loc_F915CC:   If (Me.EOF = 0) Then
  loc_F915EB:     Proc_5_0_1107AD0(&HFF, Me, global_68, 0, var_108)
  loc_F915F3:     Call Proc_185_144_19C1534(var_EC, var_C8, var_A8)
  loc_F91604:     Me.FRAMEVLIST.Visible = False
  loc_F9160C:   End If
  loc_F9160C: End If
  loc_F9160C: Exit Sub
  loc_F9160D: ' Referenced from: F914DC
  loc_F91613: Call 0.Method_arg_50 (var_F0, var_C8)
  loc_F91628: Proc_183_57_104B0BC(var_F0, "FGVLIST_Click")
  loc_F91634: Exit Sub
  loc_F91635: var_D0 = var_A8
End Sub

Private Sub TXTVDATE1_GotFocus() 'E65BEC
  'Data Table: 5C26BC
  loc_E65BA8: On Error Goto loc_E65BC3
  loc_E65BB5: Call Proc_185_163_E22184(Me.TXTVDATE1)
  loc_E65BBD: Call Proc_185_169_F64FF4()
  loc_E65BC2: Exit Sub
  loc_E65BC3: ' Referenced from: E65BA8
  loc_E65BC9: Call 0.Method_arg_50 (var_8C)
  loc_E65BD1: var_94 = "TXTVDATE1_GotFocus"
  loc_E65BDE: Proc_183_57_104B0BC(var_8C)
  loc_E65BEA: Exit Sub
End Sub

Private Sub TXTVDATE1_KeyDown(KeyCode As Integer, Shift As Integer) 'E5CD94
  'Data Table: 5C26BC
  loc_E5CD54: On Error Goto loc_E5CD6A
  loc_E5CD61: If (CLng(KeyCode) = &H1B) Then
  loc_E5CD64:   Call Proc_185_169_F64FF4()
  loc_E5CD69: End If
  loc_E5CD69: Exit Sub
  loc_E5CD6A: ' Referenced from: E5CD54
  loc_E5CD70: Call 0.Method_arg_50 (var_88)
  loc_E5CD78: var_90 = "TXTVDATE1_KeyDown"
  loc_E5CD85: Proc_183_57_104B0BC(var_88)
  loc_E5CD91: Exit Sub
End Sub

Private Sub TXTVDATE1_LostFocus() 'E994BC
  'Data Table: 5C26BC
  loc_E99444: On Error Goto loc_E99491
  loc_E9945D: Call 0.Method_arg_184 (Me.TXTVDATE1)
  loc_E99469: Set var_90 = Me.TXTVDATE1
  loc_E9946F: Me.TXTVDATE1.Text = var_8C
  loc_E99488: Call Proc_185_164_E27050(Me.TXTVDATE1)
  loc_E99490: Exit Sub
  loc_E99491: ' Referenced from: E99444
  loc_E99497: Call 0.Method_arg_50 (var_8C)
  loc_E994AC: Proc_183_57_104B0BC(var_8C, "TXTVDATE1_LOSTFOCUS")
  loc_E994B8: Exit Sub
End Sub

Private Sub TXTVDATE1_Validate(Cancel As Boolean) 'E8496C
  'Data Table: 5C26BC
  loc_E84908: On Error Goto loc_E84943
  loc_E84921: Call 0.Method_arg_184 (Me.TXTVDATE1)
  loc_E8492D: Set var_90 = Me.TXTVDATE1
  loc_E84933: Me.TXTVDATE1.Text = var_8C
  loc_E84942: Exit Sub
  loc_E84943: ' Referenced from: E84908
  loc_E84949: Call 0.Method_arg_50 (var_8C)
  loc_E8495E: Proc_183_57_104B0BC(var_8C, "TXTVDATE1_Validate")
  loc_E8496A: Exit Sub
End Sub

Private Sub DGVchrHlp_UnknownEvent_1B 'F5FCA0
  'Data Table: 5C26BC
  Dim Me As Recordset15
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F5FB84: On Error Goto loc_F5FC75
  loc_F5FB96: Me.DGVchrHlp.Visible = False
  loc_F5FBB5: If (Me.RecordCount > 0) Then
  loc_F5FBF2:   Set var_B4 = Me.TxtVtYpe
  loc_F5FBF8:   Call 0.Method_DGVchrHlp_UnknownEvent_1B0 (0, var_B8)
  loc_F5FC00:   var_B8.Tag = CStr(Me.Fields.Item("V_Type").Value)
  loc_F5FC44:   var_CC = CStr(Me.Fields.Item("Description").Value)
  loc_F5FC50:   Set var_B4 = Me.TxtVtYpe
  loc_F5FC56:   Call 0.Method_DGVchrHlp_UnknownEvent_1B0 (0, var_B8)
  loc_F5FC5E:   var_B8.Text = var_CC
  loc_F5FC74: End If
  loc_F5FC74: Exit Sub
  loc_F5FC75: ' Referenced from: F5FB84
  loc_F5FC7B: Call 0.Method_arg_50 (var_CC)
  loc_F5FC83: var_D4 = "DGVchrHlp_KeyDown"
  loc_F5FC90: Proc_183_57_104B0BC(var_CC)
  loc_F5FC9C: Exit Sub
End Sub

Private Sub TXTVDATE2_GotFocus() 'E63C78
  'Data Table: 5C26BC
  loc_E63C34: On Error Goto loc_E63C4F
  loc_E63C41: Call Proc_185_163_E22184(Me.TXTVDATE2)
  loc_E63C49: Call Proc_185_169_F64FF4()
  loc_E63C4E: Exit Sub
  loc_E63C4F: ' Referenced from: E63C34
  loc_E63C55: Call 0.Method_arg_50 (var_8C)
  loc_E63C5D: var_94 = "TXTVDATE2_GotFocus"
  loc_E63C6A: Proc_183_57_104B0BC(var_8C)
  loc_E63C76: Exit Sub
End Sub

Private Sub TXTVDATE2_KeyDown(KeyCode As Integer, Shift As Integer) 'E5DAA8
  'Data Table: 5C26BC
  Dim TXTVDATE2_KeyDown4FF As Integer
  loc_E5DA68: On Error Goto loc_E5DA7E
  loc_E5DA75: If (CLng(KeyCode) = &H1B) Then
  loc_E5DA78:   Call Proc_185_169_F64FF4()
  loc_E5DA7D: End If
  loc_E5DA7D: Exit Sub
  loc_E5DA7E: ' Referenced from: E5DA68
  loc_E5DA84: Call 0.Method_arg_50 (var_88)
  loc_E5DA99: Proc_183_57_104B0BC(var_88)
  loc_E5DAA5: Exit Sub
  loc_E5DAA6: TXTVDATE2_KeyDown4FF = "TXTVDATE2_LOSTFOCUS"
End Sub

Private Sub TXTVDATE2_LostFocus() 'E99CD0
  'Data Table: 5C26BC
  loc_E99C58: On Error Goto loc_E99CA5
  loc_E99C71: Call 0.Method_arg_184 (Me.TXTVDATE2)
  loc_E99C7D: Set var_90 = Me.TXTVDATE2
  loc_E99C83: Me.TXTVDATE2.Text = var_8C
  loc_E99C9C: Call Proc_185_164_E27050(Me.TXTVDATE2)
  loc_E99CA4: Exit Sub
  loc_E99CA5: ' Referenced from: E99C58
  loc_E99CAB: Call 0.Method_arg_50 (var_8C)
  loc_E99CC0: Proc_183_57_104B0BC(var_8C, "TXTVDATE2_LOSTFOCUS")
  loc_E99CCC: Exit Sub
End Sub

Private Sub TXTVDATE2_Validate(Cancel As Boolean) 'E86994
  'Data Table: 5C26BC
  loc_E86930: On Error Goto loc_E8696B
  loc_E86949: Call 0.Method_arg_184 (Me.TXTVDATE2)
  loc_E86955: Set var_90 = Me.TXTVDATE2
  loc_E8695B: Me.TXTVDATE2.Text = var_8C
  loc_E8696A: Exit Sub
  loc_E8696B: ' Referenced from: E86930
  loc_E86971: Call 0.Method_arg_50 (var_8C)
  loc_E86986: Proc_183_57_104B0BC(var_8C, "TXTVDATE2_Validate")
  loc_E86992: Exit Sub
End Sub

Private Sub TxtCrDr_GotFocus(Index As Integer) 'E8ED64
  'Data Table: 5C26BC
  loc_E8ECFC: On Error Goto loc_E8ED3C
  loc_E8ED08: If (global_132 = &HFF) Then
  loc_E8ED0B:   Exit Sub
  loc_E8ED0C: End If
  loc_E8ED16: Set var_88 = Me.TxtCrDr
  loc_E8ED1C: Call 0.Method_TxtCrDr_GotFocus0 (Index)
  loc_E8ED2A: Call Proc_185_163_E22184(var_8C)
  loc_E8ED36: Call Proc_185_169_F64FF4(var_8C)
  loc_E8ED3B: Exit Sub
  loc_E8ED3C: ' Referenced from: E8ECFC
  loc_E8ED42: Call 0.Method_arg_50 (var_94)
  loc_E8ED4A: var_9C = "TxtCrDr_GotFocus"
  loc_E8ED57: Proc_183_57_104B0BC(var_94)
  loc_E8ED63: Exit Sub
End Sub

Private Sub TxtCrDr_KeyDown(KeyCode As Integer, Shift As Integer) 'E689F4
  'Data Table: 5C26BC
  loc_E689A8: On Error Goto loc_E689CB
  loc_E689B4: If (global_132 = &HFF) Then
  loc_E689B7:   Exit Sub
  loc_E689B8: End If
  loc_E689C2: If (CLng(Shift) = &H1B) Then
  loc_E689C5:   Call Proc_185_169_F64FF4()
  loc_E689CA: End If
  loc_E689CA: Exit Sub
  loc_E689CB: ' Referenced from: E689A8
  loc_E689D1: Call 0.Method_arg_50 (var_88)
  loc_E689D9: var_90 = "TxtCrDr_KeyDown"
  loc_E689E6: Proc_183_57_104B0BC(var_88)
  loc_E689F2: Exit Sub
End Sub

Private Sub TxtCrDr_KeyPress(KeyAscii As Integer) '122D064
  'Data Table: 5C26BC
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_98 As String
  Dim arg_10 As Integer
  loc_122CB64: On Error Goto loc_122D03A
  loc_122CB70: If (global_132 = &HFF) Then
  loc_122CB73:   Exit Sub
  loc_122CB74: End If
  loc_122CB80: If (CInt(global_110) = 3) Then
  loc_122CB83:   Exit Sub
  loc_122CB84: End If
  loc_122CB87: var_88 = arg_10
  loc_122CB90: If Not (var_88 = &H44) Then
  loc_122CB99:   If Not (var_88 = &H64) Then
  loc_122CBA2:     If Not (var_88 = &H43) Then
  loc_122CBAB:       If Not (var_88 = &H63) Then
  loc_122CBB4:         If Not (var_88 = &H54) Then
  loc_122CBBD:           If Not (var_88 = &H74) Then
  loc_122CBC6:             If Not (var_88 = &H62) Then
  loc_122CBCF:               If (var_88 = &H42) Then
  loc_122CBD2:               End If
  loc_122CBD2:             End If
  loc_122CBD2:           End If
  loc_122CBD2:         End If
  loc_122CBD2:       End If
  loc_122CBD2:     End If
  loc_122CBD2:   End If
  loc_122CBD5:   var_8A = arg_10
  loc_122CBDE:   If Not (var_8A = &H44) Then
  loc_122CBE7:     If Not (var_8A = &H64) Then
  loc_122CBF0:       If Not (var_8A = &H62) Then
  loc_122CBF9:         If (var_8A = &H42) Then
  loc_122CBFC:         End If
  loc_122CBFC:       End If
  loc_122CBFC:     End If
  loc_122CC09:     Set var_90 = Me.TxtCrDr
  loc_122CC0F:     Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94, var_98)
  loc_122CC17:     var_8A = var_94.Text
  loc_122CC31:     Set var_9C = Me.TxtCrDr
  loc_122CC37:     Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_A0, var_A4)
  loc_122CC3F:     (var_98 = "Cr") = var_A0.Text
  loc_122CC5F:     If (var_88 Or (var_A4 = "To")) Then
  loc_122CC6F:       Set var_90 = Me.TxtCr
  loc_122CC75:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122CC8F:       Set var_9C = Me.TxtDr
  loc_122CC95:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_A0)
  loc_122CC9D:       var_A0.Text = var_94.Text
  loc_122CCBC:       Set var_90 = Me.TxtDr
  loc_122CCC2:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122CCCA:       var_94.Visible = True
  loc_122CCE3:       Set var_90 = Me.TxtCr
  loc_122CCE9:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122CCF1:       var_94.Text = vbNullString
  loc_122CD0A:       Set var_90 = Me.TxtDr
  loc_122CD10:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122CD34:       If (CDbl(Val(var_94.Text)) > CDbl(0)) Then
  loc_122CD41:         Set var_90 = Me.TxtDr
  loc_122CD47:         Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii)
  loc_122CD4F:         var_94.SetFocus
  loc_122CD5B:       End If
  loc_122CD5B:     End If
  loc_122CD78:     var_94 = Me.Fields.Item("ToBy")
  loc_122CDBA:     var_98 = CStr(IIf((var_94.Value = "Yes"), "By", "Dr"))
  loc_122CDC8:     Set var_9C = Me.TxtCrDr
  loc_122CDCE:     Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_A0)
  loc_122CDD6:     var_A0.Text = var_98
  loc_122CDF9:     Call TxtCrDr_LostFocus()
  loc_122CE00:     arg_10 = 0
  loc_122CE06:   Else
  loc_122CE0C:     If Not (var_8A = &H43) Then
  loc_122CE15:       If Not (var_8A = &H63) Then
  loc_122CE1E:         If Not (var_8A = &H54) Then
  loc_122CE27:           If (var_8A = &H74) Then
  loc_122CE2A:           End If
  loc_122CE2A:         End If
  loc_122CE2A:       End If
  loc_122CE37:       Set var_90 = Me.TxtCrDr
  loc_122CE3D:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94, var_98)
  loc_122CE45:       arg_10 = var_94.Text
  loc_122CE5F:       Set var_9C = Me.TxtCrDr
  loc_122CE65:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_A0, var_A4)
  loc_122CE6D:       (var_98 = "Dr") = var_A0.Text
  loc_122CE8D:       If (KeyAscii Or (var_A4 = "By")) Then
  loc_122CE9D:         Set var_90 = Me.TxtDr
  loc_122CEA3:         Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122CEBD:         Set var_9C = Me.TxtCr
  loc_122CEC3:         Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_A0)
  loc_122CECB:         var_A0.Text = var_94.Text
  loc_122CEEA:         Set var_90 = Me.TxtCr
  loc_122CEF0:         Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122CEF8:         var_94.Visible = True
  loc_122CF11:         Set var_90 = Me.TxtDr
  loc_122CF17:         Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122CF38:         Set var_90 = Me.TxtCr
  loc_122CF3E:         Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122CF62:         If (CDbl(Val(vbNullString)) > CDbl(0)) Then
  loc_122CF6F:           Set var_90 = Me.TxtCr
  loc_122CF75:           Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122CF7D:           var_94.SetFocus
  loc_122CF89:         End If
  loc_122CF89:       End If
  loc_122CFE8:       var_98 = CStr(IIf((Me.Fields.Item("ToBy").Value = "Yes"), "To", "Cr"))
  loc_122CFF6:       Set var_9C = Me.TxtCrDr
  loc_122CFFC:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_A0)
  loc_122D004:       var_A0.Text = var_98
  loc_122D027:       Call TxtCrDr_LostFocus()
  loc_122D02E:       arg_10 = 0
  loc_122D031:     End If
  loc_122D031:   End If
  loc_122D034: Else
  loc_122D036:   arg_10 = 0
  loc_122D039: End If
  loc_122D039: Exit Sub
  loc_122D03A: ' Referenced from: 122CB64
  loc_122D040: Call 0.Method_arg_50 (var_98, arg_10, arg_10)
  loc_122D055: Proc_183_57_104B0BC(var_98, "TxtCrDr_KeyPress")
  loc_122D061: Exit Sub
End Sub

Private Sub TxtCrDr_LostFocus(Index As Integer) 'FD3550
  'Data Table: 5C26BC
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_FD338C: On Error Goto loc_FD3526
  loc_FD3398: If (global_132 = &HFF) Then
  loc_FD339B:   Exit Sub
  loc_FD339C: End If
  loc_FD33A6: Set var_88 = Me.TxtCrDr
  loc_FD33AC: Call 0.Method_TxtCrDr_LostFocus0 (Index)
  loc_FD33BA: Call Proc_185_164_E27050(var_8C)
  loc_FD33D2: If (CInt(global_110) = 3) Then
  loc_FD33D5:   Exit Sub
  loc_FD33D6: End If
  loc_FD33E3: Set var_88 = Me.TxtCrDr
  loc_FD33E9: Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD33F1: var_94 = var_8C.Text
  loc_FD340B: Set var_90 = Me.TxtCrDr
  loc_FD3411: Call 0.Method_TxtCrDr_LostFocus0 (Index, var_98, var_9C)
  loc_FD3419: (var_94 = "Cr") = var_98.Text
  loc_FD3439: If (var_8C Or (var_9C = "To")) Then
  loc_FD3449:   Set var_88 = Me.TxtDr
  loc_FD344F:   Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD3457:   var_8C.Text = vbNullString
  loc_FD346F:   Set var_88 = Me.TxtDr
  loc_FD3475:   Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD347D:   var_8C.Visible = False
  loc_FD3495:   Set var_88 = Me.TxtCr
  loc_FD349B:   Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD34A3:   var_8C.Visible = True
  loc_FD34B2: Else
  loc_FD34BF:   Set var_88 = Me.TxtCr
  loc_FD34C5:   Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD34CD:   var_8C.Text = vbNullString
  loc_FD34E5:   Set var_88 = Me.TxtDr
  loc_FD34EB:   Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD34F3:   var_8C.Visible = True
  loc_FD350B:   Set var_88 = Me.TxtCr
  loc_FD3511:   Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD3519:   var_8C.Visible = False
  loc_FD3525: End If
  loc_FD3525: Exit Sub
  loc_FD3526: ' Referenced from: FD338C
  loc_FD352C: Call 0.Method_arg_50 (var_94)
  loc_FD3534: var_A0 = "TxtCrDr_LostFocus"
  loc_FD3541: Proc_183_57_104B0BC(var_94)
  loc_FD354D: Exit Sub
End Sub

Private Sub TxtCrDr_Validate(Cancel As Boolean) '1289CE8
  'Data Table: 5C26BC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_128 As Variant
  Dim var_130 As TextBox
  Dim arg_10 As Integer
  Dim var_15C As String
  Dim var_160 As String
  Dim unk_5C26D2 As Connection15
  Dim var_88 As Recordset15
  Dim var_158 As String
  Dim var_E8 As TextBox
  loc_1289738: On Error Goto loc_1289CBE
  loc_1289744: If (global_132 = &HFF) Then
  loc_1289747:   Exit Sub
  loc_1289748: End If
  loc_1289754: If (CInt(global_110) = 3) Then
  loc_1289757:   Exit Sub
  loc_1289758: End If
  loc_1289764: If (CInt(global_110) <= 2) Then
  loc_1289784:   var_A0 = Me.Fields.Item("ToBy")
  loc_12897A6:   If CBool(var_A0.Value <> "No") Then
  loc_12897B3:     Set var_8C = Me.TxtCrDr
  loc_12897B9:     Call 0.Method_TxtCrDr_Validate0 (Cancel)
  loc_12897E4:     Set var_E4 = Me.TxtCrDr
  loc_12897EA:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_128980B:     var_128 = (Trim(CVar(var_A0)) <> "To") And (Trim(CVar(var_E8)) <> "By")
  loc_128981C:     Set var_12C = Me.TxtCrDr
  loc_1289822:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_130, var_132)
  loc_128982A:     var_128 = var_130.Visible
  loc_1289857:     If CBool(var_A0 And (var_132 = &HFF)) Then
  loc_128985C:       arg_10 = &HFF
  loc_128985F:       Exit Sub
  loc_1289860:     End If
  loc_1289863:   Else
  loc_128986D:     Set var_8C = Me.TxtCrDr
  loc_1289873:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_A0)
  loc_128989E:     Set var_E4 = Me.TxtCrDr
  loc_12898A4:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_12898C5:     var_128 = (Trim(CVar(var_A0)) <> "Cr") And (Trim(CVar(var_E8)) <> "Dr")
  loc_12898D6:     Set var_12C = Me.TxtCrDr
  loc_12898DC:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_130, var_132)
  loc_12898E4:     var_128 = var_130.Visible
  loc_1289911:     If CBool(arg_10 And (var_132 = &HFF)) Then
  loc_1289916:       arg_10 = &HFF
  loc_1289919:       Exit Sub
  loc_128991A:     End If
  loc_128991A:   End If
  loc_128991A: End If
  loc_1289926: If (CInt(global_110) <= 2) Then
  loc_1289933:   Set var_8C = Me.TxtAcName
  loc_1289939:   Call 0.Method_TxtCrDr_Validate0 (Cancel, var_A0)
  loc_1289962:   If (Trim(CVar(var_A0)) = vbNullString) Then
  loc_128996F:     Set var_8C = Me.TxtCrDr
  loc_1289975:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_A0)
  loc_12899A0:     Set var_E4 = Me.TxtCrDr
  loc_12899A6:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_12899DF:     If CBool((Trim(CVar(var_A0)) = "Cr") Or (Trim(CVar(var_E8)) = "To")) Then
  loc_12899FE:       Set var_8C = Me.TxtVtYpe
  loc_1289A04:       Call 0.Method_TxtCrDr_Validate0 (0, var_A0, var_158, "SELECT SubGroup.Name,VOUCHER_TYPE.* FROM VOUCHER_TYPE LEFT JOIN SubGroup ON VOUCHER_TYPE.DefaultCrAC = SubGroup.SubCode WHERE VOUCHER_TYPE.V_TYPE='")
  loc_1289A0C:       var_B0 = var_A0.Tag
  loc_1289A15:       var_15C = -1 & var_158
  loc_1289A25:       unk_5C26D2.Execute var_15C & "'", var_E4, arg_10
  loc_1289A30:       Set var_88 = var_E4
  loc_1289A5C:       If (var_88.RecordCount > 0) Then
  loc_1289A94:         Set var_E4 = Me.TxtAcName
  loc_1289A9A:         Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_1289AA2:         var_E8.Tag = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("DefaultCrAC")))
  loc_1289ACD:         var_A0 = var_88.Fields.Item("Name")
  loc_1289ADE:         var_158 = Proc_183_2_E5AE94(CVar(var_A0))
  loc_1289AEB:         Set var_E4 = Me.TxtAcName
  loc_1289AF1:         Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_1289AF9:         var_E8.Text = var_158
  loc_1289B0D:       End If
  loc_1289B0D:     End If
  loc_1289B17:     Set var_8C = Me.TxtCrDr
  loc_1289B1D:     Call 0.Method_TxtCrDr_Validate0 (Cancel)
  loc_1289B48:     Set var_E4 = Me.TxtCrDr
  loc_1289B4E:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_1289B87:     If CBool((Trim(CVar(var_A0)) = "Dr") Or (Trim(CVar(var_E8)) = "By")) Then
  loc_1289BA6:       Set var_8C = Me.TxtVtYpe
  loc_1289BAC:       Call 0.Method_TxtCrDr_Validate0 (0, var_A0, var_158, "SELECT SubGroup.Name,VOUCHER_TYPE.* FROM VOUCHER_TYPE LEFT JOIN SubGroup ON VOUCHER_TYPE.DefaultDrAC = SubGroup.SubCode WHERE VOUCHER_TYPE.V_TYPE='")
  loc_1289BB4:       var_B0 = var_A0.Tag
  loc_1289BBD:       var_15C = -1 & var_158
  loc_1289BCD:       unk_5C26D2.Execute var_15C & "'", var_E4, var_A0
  loc_1289BD8:       Set var_88 = var_E4
  loc_1289C04:       If (var_88.RecordCount > 0) Then
  loc_1289C3C:         Set var_E4 = Me.TxtAcName
  loc_1289C42:         Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_1289C4A:         var_E8.Tag = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("DefaultDrAC")))
  loc_1289C86:         var_158 = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")))
  loc_1289C93:         Set var_E4 = Me.TxtAcName
  loc_1289C99:         Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_1289CA1:         var_E8.Text = var_158
  loc_1289CB5:       End If
  loc_1289CB5:     End If
  loc_1289CB5:   End If
  loc_1289CB5: End If
  loc_1289CBA: Set var_88 = Nothing
  loc_1289CBD: Exit Sub
  loc_1289CBE: ' Referenced from: 1289738
  loc_1289CC4: Call 0.Method_arg_50 (var_158)
  loc_1289CCC: var_160 = "TxtCrDr_Validate"
  loc_1289CD9: Proc_183_57_104B0BC(var_158)
  loc_1289CE5: Exit Sub
End Sub

Private Sub DGAcHlp_UnknownEvent_9 '13B7FC0
  'Data Table: 5C26BC
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_E8 As Variant
  Dim Me As Recordset15
  Dim var_F8 As Double
  Dim var_C0 As Variant
  Dim var_E4 As Variant
  Dim var_14C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_214 As Variant
  loc_13B76A0: On Error Goto loc_13B7F98
  loc_13B76C6: If (CStr(Me.DGAcHlp.Tag) = vbNullString) Then
  loc_13B76C9:   Exit Sub
  loc_13B76CA: End If
  loc_13B76D9: Me.DGAcHlp.Visible = False
  loc_13B7702: Set var_C0 = Me.TxtCrDr
  loc_13B7708: Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(CStr(Me.DGAcHlp.Tag)), var_C4)
  loc_13B773E: Set var_E4 = Me.TxtCrDr
  loc_13B7744: Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(CStr(Me.DGAcHlp.Tag)), var_E8)
  loc_13B777B: If ((var_C4.Text = "Cr") Or (var_E8.Text = "To")) Then
  loc_13B7795:   If (Me.RecordCount > 0) Then
  loc_13B77F1:     Set var_CC = Me.TxtAcName
  loc_13B77F7:     Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(Val(CStr(Me.DGAcHlp.Tag))), var_E4)
  loc_13B77FF:     var_E4.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_13B7839:     var_F8 = Val(CStr(Me.DGAcHlp.Tag))
  loc_13B7878:     Set var_CC = Me.TxtAcName
  loc_13B787E:     Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(var_F8), var_E4, CStr(Me.Fields.Item("Name").Value))
  loc_13B7886:     var_E4.Text = var_F8
  loc_13B790F:     If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_13B791E:       Me.TxtDetailS.Visible = True
  loc_13B7944:       Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_13B798A:       Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_13B79BD:       Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_13B79CF:     Else
  loc_13B79DB:       Me.TxtDetailS.Visible = False
  loc_13B79E3:     End If
  loc_13B7A0C:     If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_13B7A6F:       var_14C = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_13B7AB2:       var_E4 = Me.Fields
  loc_13B7ACA:       var_1BC = (IIf((Trim(CVar(Me.Fields.Item("FatherName"))) = vbNullString), vbNullString, var_14C) + var_E4.Item("GroupName").Value)
  loc_13B7AD3:       var_1DC = (var_1BC + vbCrLf)
  loc_13B7B04:       var_214 = (var_1DC + Me.Fields.Item("NameWithADDR").Value)
  loc_13B7B16:       Me.TxtDetailS.Text = CStr(var_214)
  loc_13B7B4F:     Else
  loc_13B7B5C:       Me.TxtDetailS.Text = vbNullString
  loc_13B7B64:     End If
  loc_13B7B64:   End If
  loc_13B7B67: Else
  loc_13B7B7E:   If (Me.RecordCount > 0) Then
  loc_13B7B9B:     var_F8 = Val(CStr(Me.DGAcHlp.Tag))
  loc_13B7BDA:     Set var_CC = Me.TxtAcName
  loc_13B7BE0:     Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(var_F8), var_E4, CStr(Me.Fields.Item("subcode").Value))
  loc_13B7BE8:     var_E4.Tag = var_F8
  loc_13B7C22:     var_F8 = Val(CStr(Me.DGAcHlp.Tag))
  loc_13B7C61:     Set var_CC = Me.TxtAcName
  loc_13B7C67:     Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(var_F8), var_E4, CStr(Me.Fields.Item("Name").Value))
  loc_13B7C6F:     var_E4.Text = var_F8
  loc_13B7CF8:     If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_13B7D07:       Me.TxtDetailS.Visible = True
  loc_13B7D2D:       Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_13B7D73:       Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_13B7DA6:       Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_13B7DB8:     Else
  loc_13B7DC4:       Me.TxtDetailS.Visible = False
  loc_13B7DCC:     End If
  loc_13B7DF5:     If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_13B7E21:       var_DC = Trim(CVar(Me.Fields.Item("FatherName")))
  loc_13B7E3B:       var_C4 = Me.Fields
  loc_13B7E58:       var_14C = (var_C4.Item("FatherName").Value + vbCrLf)
  loc_13B7EB3:       var_1BC = (IIf((var_DC = vbNullString), vbNullString, var_14C) + Me.Fields.Item("GroupName").Value)
  loc_13B7EBC:       var_1DC = (var_1BC + vbCrLf)
  loc_13B7EED:       var_214 = (var_1DC + Me.Fields.Item("NameWithADDR").Value)
  loc_13B7EFF:       Me.TxtDetailS.Text = CStr(var_214)
  loc_13B7F38:     Else
  loc_13B7F45:       Me.TxtDetailS.Text = vbNullString
  loc_13B7F4D:     End If
  loc_13B7F4D:   End If
  loc_13B7F4D: End If
  loc_13B7F5F: var_9C = CStr(Me.DGAcHlp.Tag)
  loc_13B7F75: Set var_C0 = Me.TxtAcName
  loc_13B7F7B: Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(Val(var_9C)), var_C4, Val(var_9C))
  loc_13B7F83: var_C4.SetFocus
  loc_13B7F97: Exit Sub
  loc_13B7F98: ' Referenced from: 13B76A0
  loc_13B7F9E: Call 0.Method_arg_50 (var_9C, var_DC)
  loc_13B7FB3: Proc_183_57_104B0BC(var_9C, "DGAcHlp_Click")
  loc_13B7FBF: Exit Sub
End Sub

Private Sub DGAcHlp_UnknownEvent_1B '133D790
  'Data Table: 5C26BC
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_D8 As Double
  Dim var_C0 As Variant
  Dim var_E0 As Double
  Dim var_A8 As Variant
  Dim var_CC As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_158 As Variant
  Dim var_C8 As Fields15
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_220 As Variant
  loc_133CFFC: On Error Goto loc_133D766
  loc_133D002: var_86 = Cancel
  loc_133D00F: If Not (var_86 = CInt(&H26)) Then
  loc_133D01C:   If Not (var_86 = CInt(&H28)) Then
  loc_133D029:     If Not (var_86 = CInt(&H22)) Then
  loc_133D036:       If (var_86 = CInt(&H21)) Then
  loc_133D039:       End If
  loc_133D039:     End If
  loc_133D039:   End If
  loc_133D053:   var_D8 = Val(CStr(Me.DGAcHlp.Tag))
  loc_133D070:   var_E0 = Val(CStr(Me.DGAcHlp.Tag))
  loc_133D081:   Set var_A4 = Me.TxtCrDr
  loc_133D087:   Call 0.Method_DGAcHlp_UnknownEvent_1B0 (CInt(var_D8), var_A8, var_AC)
  loc_133D0AA:   Set var_C8 = Me.TxtCrDr
  loc_133D0B0:   Call 0.Method_DGAcHlp_UnknownEvent_1B0 (CInt(var_A8.Text), var_CC, var_D0)
  loc_133D0B8:   (var_AC = "Cr") = var_CC.Text
  loc_133D0E7:   If (var_D8 Or (var_D0 = "To")) Then
  loc_133D0F6:     If (CInt(global_110) <= 2) Then
  loc_133D150:       Proc_183_34_1307118(Me.DGAcHlp, Me.TxtAcName, CInt(Val(CStr(Me.DGAcHlp.Tag))), global_92, Cancel)
  loc_133D1D1:       If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_133D1E0:         Me.TxtDetailS.Visible = True
  loc_133D206:         Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_133D24C:         Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_133D27F:         Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_133D291:       Else
  loc_133D29D:         Me.TxtDetailS.Visible = False
  loc_133D2A5:       End If
  loc_133D2CE:       If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_133D331:         var_158 = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_133D38C:         var_1C8 = (IIf((Trim(CVar(Me.Fields.Item("FatherName"))) = vbNullString), vbNullString, var_158) + Me.Fields.Item("GroupName").Value)
  loc_133D395:         var_1E8 = (var_1C8 + vbCrLf)
  loc_133D3C6:         var_220 = (var_1E8 + Me.Fields.Item("NameWithADDR").Value)
  loc_133D3D8:         Me.TxtDetailS.Text = CStr(var_220)
  loc_133D411:       Else
  loc_133D41E:         Me.TxtDetailS.Text = vbNullString
  loc_133D426:       End If
  loc_133D426:     End If
  loc_133D429:   Else
  loc_133D435:     If (CInt(global_110) <= 2) Then
  loc_133D460:       var_D8 = Val(CStr(Me.DGAcHlp.Tag))
  loc_133D48F:       Proc_183_34_1307118(Me.DGAcHlp, Me.TxtAcName, CInt(var_D8), global_88, Cancel, 0, 1)
  loc_133D510:       If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_133D51F:         Me.TxtDetailS.Visible = True
  loc_133D545:         Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_133D58B:         Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_133D5BE:         Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_133D5D0:       Else
  loc_133D5DC:         Me.TxtDetailS.Visible = False
  loc_133D5E4:       End If
  loc_133D60D:       If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_133D639:         var_C0 = Trim(CVar(Me.Fields.Item("FatherName")))
  loc_133D670:         var_158 = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_133D6CB:         var_1C8 = (IIf((var_C0 = vbNullString), vbNullString, var_158) + Me.Fields.Item("GroupName").Value)
  loc_133D6D4:         var_1E8 = (var_1C8 + vbCrLf)
  loc_133D705:         var_220 = (var_1E8 + Me.Fields.Item("NameWithADDR").Value)
  loc_133D709:         var_A0 = CStr(var_220)
  loc_133D717:         Me.TxtDetailS.Text = var_A0
  loc_133D750:       Else
  loc_133D75D:         Me.TxtDetailS.Text = vbNullString
  loc_133D765:       End If
  loc_133D765:     End If
  loc_133D765:   End If
  loc_133D765: End If
  loc_133D765: Exit Sub
  loc_133D766: ' Referenced from: 133CFFC
  loc_133D76C: Call 0.Method_arg_50 (var_A0, var_C0, var_D8, var_C0)
  loc_133D781: Proc_183_57_104B0BC(var_A0, "DGAcHlp_KeyDown", 0)
  loc_133D78D: Exit Sub
End Sub

Private Sub TxtAcName_GotFocus(Index As Integer) '120EDF4
  'Data Table: 5C26BC
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  Dim var_9C As String
  Dim var_C4 As String
  loc_120E928: On Error Goto loc_120EDC9
  loc_120E934: If (global_132 = &HFF) Then
  loc_120E937:   Exit Sub
  loc_120E938: End If
  loc_120E942: Set var_88 = Me.TxtAcName
  loc_120E948: Call 0.Method_TxtAcName_GotFocus0 (Index)
  loc_120E956: Call Proc_185_163_E22184(var_8C)
  loc_120E962: Call Proc_185_169_F64FF4(var_8C)
  loc_120E973: If (CInt(global_110) <= 2) Then
  loc_120E983:   Set var_88 = Me.TxtCrDr
  loc_120E989:   Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C)
  loc_120E991:   var_94 = var_8C.Text
  loc_120E9AB:   Set var_90 = Me.TxtCrDr
  loc_120E9B1:   Call 0.Method_TxtAcName_GotFocus0 (Index, var_98)
  loc_120E9B9:   var_9C = var_98.Text
  loc_120E9D9:   If ((var_94 = "Cr") Or (var_9C = "To")) Then
  loc_120E9F3:     If (Me.RecordCount > 0) Then
  loc_120E9FB:       CVarUnk
  loc_120EA00:       VerifyVarObj
  loc_120EA06:       Set var_88 = Me.DGAcHlp
  loc_120EA0C:       LateIdStAd
  loc_120EA20:       Me.MoveFirst
  loc_120EA2E:       CVarUnk
  loc_120EA33:       VerifyVarObj
  loc_120EA39:       Set var_88 = Me.DGAcHlp
  loc_120EA3F:       LateIdStAd
  loc_120EA50:     Else
  loc_120EA55:       CVarUnk
  loc_120EA5A:       VerifyVarObj
  loc_120EA60:       Set var_88 = Me.DGAcHlp
  loc_120EA66:       LateIdStAd
  loc_120EA74:     End If
  loc_120EA98:     Set var_88 = Me.TxtAcName
  loc_120EA9E:     Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C, var_94, (Me.RecordCount = 0), var_88)
  loc_120EAA6:     Nothing = var_8C.Text
  loc_120EABE:     If (var_88 Or (var_94 = vbNullString)) Then
  loc_120EAC1:       Exit Sub
  loc_120EAC2:     End If
  loc_120EAC5:   Else
  loc_120EADC:     If (Me.RecordCount > 0) Then
  loc_120EAE4:       CVarUnk
  loc_120EAE9:       VerifyVarObj
  loc_120EAEF:       Set var_88 = Me.DGAcHlp
  loc_120EAF5:       LateIdStAd
  loc_120EB09:       Me.MoveFirst
  loc_120EB17:       CVarUnk
  loc_120EB1C:       VerifyVarObj
  loc_120EB22:       Set var_88 = Me.DGAcHlp
  loc_120EB28:       LateIdStAd
  loc_120EB39:     Else
  loc_120EB3E:       CVarUnk
  loc_120EB43:       VerifyVarObj
  loc_120EB49:       Set var_88 = Me.DGAcHlp
  loc_120EB4F:       LateIdStAd
  loc_120EB5D:     End If
  loc_120EB81:     Set var_88 = Me.TxtAcName
  loc_120EB87:     Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C, var_94, (Me.RecordCount = 0), var_88, Nothing, var_88)
  loc_120EB8F:     global_88 = var_8C.Text
  loc_120EBA7:     If (var_88 Or (var_94 = vbNullString)) Then
  loc_120EBAA:       Exit Sub
  loc_120EBAB:     End If
  loc_120EBAB:   End If
  loc_120EBBE:   Me.DGAcHlp.Tag = CVar(CStr(Index))
  loc_120EBD6:   Set var_88 = Me.TxtAcName
  loc_120EBDC:   Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C, var_94, Nothing)
  loc_120EBE4:   global_92 = var_8C.Text
  loc_120EBFB:   If (var_94 <> vbNullString) Then
  loc_120EC0B:     Set var_88 = Me.TxtCrDr
  loc_120EC11:     Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C, var_94)
  loc_120EC19:     var_88 = var_8C.Text
  loc_120EC33:     Set var_90 = Me.TxtCrDr
  loc_120EC39:     Call 0.Method_TxtAcName_GotFocus0 (Index, var_98, var_9C)
  loc_120EC41:     (var_94 = "Cr") = var_98.Text
  loc_120EC61:     If (Nothing Or (var_9C = "To")) Then
  loc_120EC6A:       Me.MoveFirst
  loc_120EC8D:       Set var_88 = Me.TxtAcName
  loc_120EC93:       Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C, var_94, "Name='")
  loc_120EC9B:       0 = var_8C.Text
  loc_120ECB4:       Me.Find 1 & var_94 & "'", var_C0, 
  loc_120ECCC:     Else
  loc_120ECD2:       Me.MoveFirst
  loc_120ECF5:       Set var_88 = Me.TxtAcName
  loc_120ECFB:       Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C, var_94, "Name='")
  loc_120ED03:       0 = var_8C.Text
  loc_120ED1C:       Me.Find 1 & var_94 & "'", var_C0, 
  loc_120ED31:     End If
  loc_120ED35:     Set var_88 = Me.DGAcHlp
  loc_120ED3B:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6C
  loc_120ED49:   Else
  loc_120ED56:     Set var_88 = Me.TxtCrDr
  loc_120ED5C:     Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C)
  loc_120ED64:     var_94 = var_8C.Text
  loc_120ED7E:     Set var_90 = Me.TxtCrDr
  loc_120ED84:     Call 0.Method_TxtAcName_GotFocus0 (Index, var_98)
  loc_120EDAC:     If ((var_94 = "Cr") Or (var_98.Text = "To")) Then
  loc_120EDB5:       Me.MoveFirst
  loc_120EDBD:     Else
  loc_120EDC3:       Me.MoveFirst
  loc_120EDC8:     End If
  loc_120EDC8:   End If
  loc_120EDC8: End If
  loc_120EDC8: Exit Sub
  loc_120EDC9: ' Referenced from: 120E928
  loc_120EDCF: Call 0.Method_arg_50 (var_94)
  loc_120EDD7: var_C4 = "TxtAcName_GotFocus"
  loc_120EDE4: Proc_183_57_104B0BC(var_94)
  loc_120EDF0: Exit Sub
End Sub

Private Sub TxtAcName_KeyDown(KeyCode As Integer, Shift As Integer) '1314524
  'Data Table: 5C26BC
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_88 As Variant
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_E0 As Variant
  Dim var_130 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_200 As Variant
  Dim var_90 As String
  loc_1313E0C: On Error Goto loc_13144FA
  loc_1313E18: If (global_132 = &HFF) Then
  loc_1313E1B:   Exit Sub
  loc_1313E1C: End If
  loc_1313E26: If (CLng(Shift) = &H1B) Then
  loc_1313E29:   Call Proc_185_169_F64FF4()
  loc_1313E2E: End If
  loc_1313E3B: Set var_88 = Me.TxtCrDr
  loc_1313E41: Call 0.Method_TxtAcName_KeyDown0 (KeyCode, var_8C)
  loc_1313E63: Set var_94 = Me.TxtCrDr
  loc_1313E69: Call 0.Method_TxtAcName_KeyDown0 (KeyCode, var_98)
  loc_1313E91: If ((var_8C.Text = "Cr") Or (var_98.Text = "To")) Then
  loc_1313EA0:   If (CInt(global_110) <= 2) Then
  loc_1313ED9:     Proc_183_34_1307118(Me.DGAcHlp, Me.TxtAcName, KeyCode, global_92)
  loc_1313EFC:     Me.DGAcHlp.Tag = CVar(CStr(KeyCode))
  loc_1313F70:     If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_1313F7F:       Me.TxtDetailS.Visible = True
  loc_1313FA5:       Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_1313FEB:       Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_131401E:       Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_1314030:     Else
  loc_131403C:       Me.TxtDetailS.Visible = False
  loc_1314044:     End If
  loc_131406D:     If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_13140D0:       var_130 = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_131412B:       var_1A8 = (IIf((Trim(CVar(Me.Fields.Item("FatherName"))) = vbNullString), vbNullString, var_130) + Me.Fields.Item("GroupName").Value)
  loc_1314134:       var_1C8 = (var_1A8 + vbCrLf)
  loc_1314165:       var_200 = (var_1C8 + Me.Fields.Item("NameWithADDR").Value)
  loc_1314177:       Me.TxtDetailS.Text = CStr(var_200)
  loc_13141B0:     Else
  loc_13141BD:       Me.TxtDetailS.Text = vbNullString
  loc_13141C5:     End If
  loc_13141C5:   End If
  loc_13141C8: Else
  loc_13141D4:   If (CInt(global_110) <= 2) Then
  loc_131420D:     Proc_183_34_1307118(Me.DGAcHlp, Me.TxtAcName, KeyCode, global_88, Shift, 0)
  loc_1314230:     Me.DGAcHlp.Tag = CVar(CStr(KeyCode))
  loc_13142A4:     If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_13142B3:       Me.TxtDetailS.Visible = True
  loc_13142D9:       Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_131431F:       Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_1314352:       Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_1314364:     Else
  loc_1314370:       Me.TxtDetailS.Visible = False
  loc_1314378:     End If
  loc_13143A1:     If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_13143CD:       var_E0 = Trim(CVar(Me.Fields.Item("FatherName")))
  loc_1314404:       var_130 = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_131445F:       var_1A8 = (IIf((var_E0 = vbNullString), vbNullString, var_130) + Me.Fields.Item("GroupName").Value)
  loc_1314468:       var_1C8 = (var_1A8 + vbCrLf)
  loc_1314499:       var_200 = (var_1C8 + Me.Fields.Item("NameWithADDR").Value)
  loc_131449D:       var_90 = CStr(var_200)
  loc_13144AB:       Me.TxtDetailS.Text = var_90
  loc_13144E4:     Else
  loc_13144F1:       Me.TxtDetailS.Text = vbNullString
  loc_13144F9:     End If
  loc_13144F9:   End If
  loc_13144F9: End If
  loc_13144F9: Exit Sub
  loc_13144FA: ' Referenced from: 1313E0C
  loc_1314500: Call 0.Method_arg_50 (var_90, var_E0, 1, var_E0)
  loc_1314515: Proc_183_57_104B0BC(var_90, "TxtAcName_KeyDown", Shift)
  loc_1314521: Exit Sub
End Sub

Private Sub TxtAcName_KeyPress(KeyAscii As Integer) '1303CC0
  'Data Table: 5C26BC
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_88 As Variant
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_E0 As Variant
  Dim var_134 As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_204 As Variant
  Dim var_90 As String
  loc_13035E8: On Error Goto loc_1303C96
  loc_13035F4: If (global_132 = &HFF) Then
  loc_13035F7:   Exit Sub
  loc_13035F8: End If
  loc_13035FB: Proc_183_46_E07C50(arg_10)
  loc_130360D: Set var_88 = Me.TxtCrDr
  loc_1303613: Call 0.Method_TxtAcName_KeyPress0 (KeyAscii, var_8C)
  loc_1303635: Set var_94 = Me.TxtCrDr
  loc_130363B: Call 0.Method_TxtAcName_KeyPress0 (KeyAscii, var_98)
  loc_1303663: If ((var_8C.Text = "Cr") Or (var_98.Text = "To")) Then
  loc_1303682:   If (CBool(Me.DGAcHlp.Visible) = &HFF) Then
  loc_1303694:     var_90 = "Name"
  loc_13036AF:     Proc_183_41_145A968(Me.TxtAcName, KeyAscii, global_92)
  loc_1303727:     If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_1303736:       Me.TxtDetailS.Visible = True
  loc_130375C:       Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_13037A2:       Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_13037D5:       Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_13037E7:     Else
  loc_13037F3:       Me.TxtDetailS.Visible = False
  loc_13037FB:     End If
  loc_1303824:     If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_1303887:       var_134 = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_13038E2:       var_1AC = (IIf((Trim(CVar(Me.Fields.Item("FatherName"))) = vbNullString), vbNullString, var_134) + Me.Fields.Item("GroupName").Value)
  loc_13038EB:       var_1CC = (var_1AC + vbCrLf)
  loc_130391C:       var_204 = (var_1CC + Me.Fields.Item("NameWithADDR").Value)
  loc_130392E:       Me.TxtDetailS.Text = CStr(var_204)
  loc_1303967:     Else
  loc_1303974:       Me.TxtDetailS.Text = vbNullString
  loc_130397C:     End If
  loc_130397C:   End If
  loc_130397F: Else
  loc_130399B:   If (CBool(Me.DGAcHlp.Visible) = &HFF) Then
  loc_13039C8:     Proc_183_41_145A968(Me.TxtAcName, KeyAscii, global_88, arg_10, "Name")
  loc_1303A40:     If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_1303A4F:       Me.TxtDetailS.Visible = True
  loc_1303A75:       Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_1303ABB:       Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_1303AEE:       Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_1303B00:     Else
  loc_1303B0C:       Me.TxtDetailS.Visible = False
  loc_1303B14:     End If
  loc_1303B3D:     If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_1303B69:       var_E0 = Trim(CVar(Me.Fields.Item("FatherName")))
  loc_1303BA0:       var_134 = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_1303BFB:       var_1AC = (IIf((var_E0 = vbNullString), vbNullString, var_134) + Me.Fields.Item("GroupName").Value)
  loc_1303C04:       var_1CC = (var_1AC + vbCrLf)
  loc_1303C35:       var_204 = (var_1CC + Me.Fields.Item("NameWithADDR").Value)
  loc_1303C39:       var_90 = CStr(var_204)
  loc_1303C47:       Me.TxtDetailS.Text = var_90
  loc_1303C80:     Else
  loc_1303C8D:       Me.TxtDetailS.Text = vbNullString
  loc_1303C95:     End If
  loc_1303C95:   End If
  loc_1303C95: End If
  loc_1303C95: Exit Sub
  loc_1303C96: ' Referenced from: 13035E8
  loc_1303C9C: Call 0.Method_arg_50 (var_90, var_E0, 0, var_E0)
  loc_1303CB1: Proc_183_57_104B0BC(var_90, "TxtAcName_KeyPress", arg_10)
  loc_1303CBD: Exit Sub
End Sub

Private Sub TxtAcName_LostFocus(Index As Integer) 'E896B8
  'Data Table: 5C26BC
  loc_E89654: On Error Goto loc_E8968F
  loc_E89660: If (global_132 = &HFF) Then
  loc_E89663:   Exit Sub
  loc_E89664: End If
  loc_E8966E: Set var_88 = Me.TxtAcName
  loc_E89674: Call 0.Method_TxtAcName_LostFocus0 (Index)
  loc_E89682: Call Proc_185_164_E27050(var_8C)
  loc_E8968E: Exit Sub
  loc_E8968F: ' Referenced from: E89654
  loc_E89695: Call 0.Method_arg_50 (var_94)
  loc_E896AA: Proc_183_57_104B0BC(var_94, "TxtAcName_LostFocus")
  loc_E896B6: Exit Sub
End Sub

Private Sub TxtAcName_Validate(Cancel As Boolean) '11C7C30
  'Data Table: 5C26BC
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_AC As TextBox
  Dim Me As Recordset15
  Dim var_94 As String
  Dim arg_10 As Integer
  loc_11C77D8: On Error Goto loc_11C7C07
  loc_11C77E4: If (global_132 = &HFF) Then
  loc_11C77E7:   Exit Sub
  loc_11C77E8: End If
  loc_11C77F4: If (CInt(global_110) = 3) Then
  loc_11C77F7:   Exit Sub
  loc_11C77F8: End If
  loc_11C7805: Set var_8C = Me.TxtCrDr
  loc_11C780B: Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C782A: If (var_90.Text = vbNullString) Then
  loc_11C782D:   Exit Sub
  loc_11C782E: End If
  loc_11C784A: If (CBool(Me.DGAcHlp.Visible) = &HFF) Then
  loc_11C785A:   Set var_8C = Me.TxtCrDr
  loc_11C7860:   Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C7882:   Set var_A8 = Me.TxtCrDr
  loc_11C7888:   Call 0.Method_TxtAcName_Validate0 (Cancel, var_AC)
  loc_11C78B0:   If ((var_90.Text = "Cr") Or (var_AC.Text = "To")) Then
  loc_11C78F4:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11C7904:       Set var_8C = Me.TxtAcName
  loc_11C790A:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C7912:       var_90.Text = vbNullString
  loc_11C792B:       Set var_8C = Me.TxtAcName
  loc_11C7931:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C7939:       var_90.Tag = vbNullString
  loc_11C7948:     Else
  loc_11C7983:       Set var_A8 = Me.TxtAcName
  loc_11C7989:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_AC)
  loc_11C7991:       var_AC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11C79C4:       var_90 = Me.Fields.Item("subcode")
  loc_11C79E2:       Set var_A8 = Me.TxtAcName
  loc_11C79E8:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_AC)
  loc_11C79F0:       var_AC.Tag = CStr(var_90.Value)
  loc_11C7A06:     End If
  loc_11C7A09:   Else
  loc_11C7A4A:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11C7A5A:       Set var_8C = Me.TxtAcName
  loc_11C7A60:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C7A68:       var_90.Text = vbNullString
  loc_11C7A81:       Set var_8C = Me.TxtAcName
  loc_11C7A87:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C7A8F:       var_90.Tag = vbNullString
  loc_11C7A9E:     Else
  loc_11C7AD9:       Set var_A8 = Me.TxtAcName
  loc_11C7ADF:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_AC)
  loc_11C7AE7:       var_AC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11C7B1A:       var_90 = Me.Fields.Item("subcode")
  loc_11C7B38:       Set var_A8 = Me.TxtAcName
  loc_11C7B3E:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_AC)
  loc_11C7B46:       var_AC.Tag = CStr(var_90.Value)
  loc_11C7B5C:     End If
  loc_11C7B5C:   End If
  loc_11C7B5C: End If
  loc_11C7B68: If (CInt(global_110) <= 2) Then
  loc_11C7B78:   Set var_8C = Me.TxtAcName
  loc_11C7B7E:   Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C7B86:   var_94 = var_90.Text
  loc_11C7BB3:   Set var_A8 = Me.TxtAcName
  loc_11C7BB9:   Call 0.Method_TxtAcName_Validate0 (Cancel, var_AC)
  loc_11C7BC1:   var_B6 = var_AC.Visible
  loc_11C7BEA:   If CBool((Trim(CVar(var_94)) = vbNullString) And (var_B6 = &HFF)) Then
  loc_11C7BEF:     arg_10 = &HFF
  loc_11C7BF2:     Exit Sub
  loc_11C7BF3:   End If
  loc_11C7BF9:   Call Proc_185_145_E9CA60(Cancel, var_B6)
  loc_11C7C02:   var_86 = var_B6 'Byte
  loc_11C7C06: End If
  loc_11C7C06: Exit Sub
  loc_11C7C07: ' Referenced from: 11C77D8
  loc_11C7C0D: Call 0.Method_arg_50 (var_94)
  loc_11C7C22: Proc_183_57_104B0BC(var_94, "TxtAcName_Validate")
  loc_11C7C2E: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_9 'E55EA8
  'Data Table: 5C26BC
  Dim var_B4 As Double
  loc_E55E74: On Error Goto loc_E55E7D
  loc_E55E77: Call Proc_185_150_FEA4F0()
  loc_E55E7C: Exit Sub
  loc_E55E7D: ' Referenced from: E55E74
  loc_E55E83: Call 0.Method_arg_50 (var_88)
  loc_E55E98: Proc_183_57_104B0BC(var_88)
  loc_E55EA4: Exit Sub
  loc_E55EA5: var_B4 = "FGRIDADJUST_Click"
End Sub

Private Sub FgridAdjust_UnknownEvent_D 'E55498
  'Data Table: 5C26BC
  Dim var_B4 As Double
  loc_E55464: On Error Goto loc_E5546D
  loc_E55467: Call Proc_185_150_FEA4F0()
  loc_E5546C: Exit Sub
  loc_E5546D: ' Referenced from: E55464
  loc_E55473: Call 0.Method_arg_50 (var_88)
  loc_E55488: Proc_183_57_104B0BC(var_88)
  loc_E55494: Exit Sub
  loc_E55495: var_B4 = "FGRIDADJUST_KeyUp"
End Sub

Private Sub FgridAdjust_UnknownEvent_12 'EB7DA4
  'Data Table: 5C26BC
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_F0 As String
  loc_EB7D1C: On Error Goto loc_EB7D7B
  loc_EB7D32: var_A8 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_EB7D37: var_C8 = &HB
  loc_EB7D55: var_F0 = CStr(Me.FgridAdjust.TextMatrix))
  loc_EB7D62: Me.TXTNARRATION.Text = var_F0
  loc_EB7D7A: Exit Sub
  loc_EB7D7B: ' Referenced from: EB7D1C
  loc_EB7D81: Call 0.Method_arg_50 (var_F0, var_C8)
  loc_EB7D96: Proc_183_57_104B0BC(var_F0, "FgridAdjust_RowColChange")
  loc_EB7DA2: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_15 'E51A04
  'Data Table: 5C26BC
  Dim FgridAdjust_UnknownEvent_154FF As Integer
  loc_E519D4: Call Proc_185_150_FEA4F0()
  loc_E519D9: Exit Sub
  loc_E519E0: Call 0.Method_arg_50 (var_88)
  loc_E519F5: Proc_183_57_104B0BC(var_88)
  loc_E51A01: Exit Sub
  loc_E51A02: FgridAdjust_UnknownEvent_154FF = "FGRIDADJUST_Scroll"
End Sub

Private Sub VchDt_GotFocus() 'F08A00
  'Data Table: 5C26BC
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_F08924: On Error Goto loc_F089D8
  loc_F08930: If (global_132 = &HFF) Then
  loc_F08933:   Exit Sub
  loc_F08934: End If
  loc_F0893D: Set var_88 = Me.VchDt
  loc_F08943: Call 0.Method_VchDt_GotFocus0 (0)
  loc_F08951: Call Proc_185_163_E22184(var_8C)
  loc_F0895D: Call Proc_185_169_F64FF4(var_8C)
  loc_F08970: Set var_88 = Me.VchDt
  loc_F08976: Call 0.Method_VchDt_GotFocus0 (0, var_8C)
  loc_F0897E: var_8C.SelStart = 0
  loc_F08996: Set var_88 = Me.VchDt
  loc_F0899C: Call 0.Method_VchDt_GotFocus0 (0, var_8C)
  loc_F089A4: var_94 = var_8C.Text
  loc_F089B6: Set var_90 = Me.VchDt
  loc_F089BC: Call 0.Method_VchDt_GotFocus0 (0, var_98)
  loc_F089C4: var_98.SelLength = Len(var_94)
  loc_F089D7: Exit Sub
  loc_F089D8: ' Referenced from: F08924
  loc_F089DE: Call 0.Method_arg_50 (var_94)
  loc_F089E6: var_A0 = "VchDt_GotFocus"
  loc_F089F3: Proc_183_57_104B0BC(var_94)
  loc_F089FF: Exit Sub
End Sub

Private Sub VchDt_KeyDown(KeyCode As Integer, Shift As Integer) 'E6973C
  'Data Table: 5C26BC
  loc_E696F0: On Error Goto loc_E69713
  loc_E696FC: If (global_132 = &HFF) Then
  loc_E696FF:   Exit Sub
  loc_E69700: End If
  loc_E6970A: If (CLng(Shift) = &H1B) Then
  loc_E6970D:   Call Proc_185_169_F64FF4()
  loc_E69712: End If
  loc_E69712: Exit Sub
  loc_E69713: ' Referenced from: E696F0
  loc_E69719: Call 0.Method_arg_50 (var_88)
  loc_E69721: var_90 = "VchDt_KeyDown"
  loc_E6972E: Proc_183_57_104B0BC(var_88)
  loc_E6973A: Exit Sub
End Sub

Private Sub VchDt_LostFocus() 'E8B244
  'Data Table: 5C26BC
  loc_E8B1E0: On Error Goto loc_E8B21A
  loc_E8B1EC: If (global_132 = &HFF) Then
  loc_E8B1EF:   Exit Sub
  loc_E8B1F0: End If
  loc_E8B1F9: Set var_88 = Me.VchDt
  loc_E8B1FF: Call 0.Method_VchDt_LostFocus0 (0)
  loc_E8B20D: Call Proc_185_164_E27050(var_8C)
  loc_E8B219: Exit Sub
  loc_E8B21A: ' Referenced from: E8B1E0
  loc_E8B220: Call 0.Method_arg_50 (var_94)
  loc_E8B235: Proc_183_57_104B0BC(var_94, "VchDt_LostFocus")
  loc_E8B241: Exit Sub
  loc_E8B242: ArrayRebase1Var
End Sub

Private Sub VchDt_Validate(Cancel As Boolean) '122B000
  'Data Table: 5C26BC
  Dim var_90 As Variant
  Dim var_D0 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_114 As String
  Dim unk_5C26D2 As Connection15
  Dim var_88 As Recordset15
  Dim var_9C As Field20
  Dim var_130 As TextBox
  Dim var_110 As Variant
  Dim var_98 As String
  loc_122AB14: On Error Goto loc_122AFD8
  loc_122AB20: If (global_132 = &HFF) Then
  loc_122AB23:   Exit Sub
  loc_122AB24: End If
  loc_122AB30: If (CInt(global_110) = 3) Then
  loc_122AB33:   Exit Sub
  loc_122AB34: End If
  loc_122AB40: Set var_8C = Me.VchDt
  loc_122AB46: Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122AB5D: Call 0.Method_arg_184 (var_90)
  loc_122AB6E: Set var_9C = Me.VchDt
  loc_122AB74: Call 0.Method_VchDt_Validate0 (0, var_A0)
  loc_122AB7C: Me.VchDt.Text = var_98
  loc_122AB9B: Set var_8C = Me.VchDt
  loc_122ABA1: Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122ABB8: Call 0.Method_arg_198 (var_90, var_98)
  loc_122ABC4: Set var_9C = Me.LblDay
  loc_122ABCA: Me.LblDay.Caption = var_98
  loc_122ABF9: Set var_8C = Me.VchDt
  loc_122ABFF: Call 0.Method_VchDt_Validate0 (0, var_90, var_98)
  loc_122AC07: ((global_216 = "No") And (MemVar_1F950B8 <> 1)) = var_90.Text
  loc_122AC20: If (var_98 And (CDate(var_98) < MemVar_1F950EC)) Then
  loc_122AC29:   Call 0.Method_arg_50 (var_98)
  loc_122AC37:   var_D0 = CVar(var_98) 'String
  loc_122AC4A:   MsgBox("Back Date Entry Blocked.", &H10, var_D0, var_F0, var_110)
  loc_122AC5C:   arg_10 = &HFF
  loc_122AC5F:   Exit Sub
  loc_122AC60: End If
  loc_122AC75: var_8C = Me.Fields
  loc_122AC7D: var_90 = var_8C.Item("DateLock")
  loc_122AC85: var_C0 = var_90.Value
  loc_122AC9F: If (var_C0 = "Y") Then
  loc_122ACB8:   Call 0.Method_VchDt_Validate8 (var_98, "SELECT EDATE,SDATE FROM DateLock WHERE CODE='", var_C0)
  loc_122ACC1:   var_114 = -1 & var_98
  loc_122ACD1:   unk_5C26D2.Execute var_114 & "'", var_8C, arg_10
  loc_122ACDC:   Set var_88 = var_8C
  loc_122ACFA:   Set var_8C = Me.VchDt
  loc_122AD00:   Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122AD1F:   If (var_90.Text = vbNullString) Then
  loc_122AD3B:     MsgBox("Date is Required", 0, var_D0, var_F0, var_110)
  loc_122AD4D:     arg_10 = &HFF
  loc_122AD50:     Exit Sub
  loc_122AD51:   End If
  loc_122AD5D:   Set var_8C = Me.VchDt
  loc_122AD63:   Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122AD82:   If (var_90.Text <> vbNullString) Then
  loc_122ADA8:     If ((var_88.EOF <> &HFF) Or (var_88.BOF <> &HFF)) Then
  loc_122ADB7:       Set var_8C = Me.VchDt
  loc_122ADBD:       Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122ADFE:       var_D0 = (CDate(CDate(var_90.Text)) > var_88.Fields.Item("EDate").Value)
  loc_122AE0E:       Set var_A0 = Me.VchDt
  loc_122AE14:       Call 0.Method_VchDt_Validate0 (0, var_130, var_114)
  loc_122AE4D:       var_F0 = var_88.Fields.Item("SDate").Value
  loc_122AE55:       var_110 = (CDate(CDate(var_114)) < var_F0)
  loc_122AE80:       If CBool(arg_10 Or var_110) Then
  loc_122AE9C:         MsgBox("Date Not Permitted", &H10, var_130.Text, var_F0, var_110)
  loc_122AEAE:         arg_10 = &HFF
  loc_122AEB1:         Exit Sub
  loc_122AEB2:       End If
  loc_122AEB2:     End If
  loc_122AEB2:   End If
  loc_122AEB5: Else
  loc_122AEC1:   Set var_8C = Me.VchDt
  loc_122AEC7:   Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122AEE6:   If (var_90.Text = vbNullString) Then
  loc_122AEEE:     var_98 = CStr(MemVar_1F950EC)
  loc_122AEFA:     Set var_8C = Me.VchDt
  loc_122AF00:     Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122AF08:     var_90.Text = var_98
  loc_122AF17:   End If
  loc_122AF23:   Set var_8C = Me.VchDt
  loc_122AF29:   Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122AF40:   Call 0.Method_arg_184 (var_90, var_98)
  loc_122AF51:   Set var_9C = Me.VchDt
  loc_122AF57:   Call 0.Method_VchDt_Validate0 (0, var_A0)
  loc_122AF5F:   Me.VchDt.Text = var_98
  loc_122AF7E:   Set var_8C = Me.VchDt
  loc_122AF84:   Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122AF9B:   Call 0.Method_arg_198 (var_90, var_98)
  loc_122AFA7:   Set var_9C = Me.LblDay
  loc_122AFAD:   Me.LblDay.Caption = var_98
  loc_122AFBE: End If
  loc_122AFCA: Call Proc_185_166_1326620(global_124, global_128)
  loc_122AFD4: Set var_88 = Nothing
  loc_122AFD7: Exit Sub
  loc_122AFD8: ' Referenced from: 122AB14
  loc_122AFDE: Call 0.Method_arg_50 (var_98)
  loc_122AFF3: Proc_183_57_104B0BC(var_98, "VchDt_Validate")
  loc_122AFFF: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_0 'EDEBC0
  'Data Table: 5C26BC
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EDEB10: On Error Goto loc_EDEB95
  loc_EDEB36: If (CDbl(CLng(Me.FGridRef.BackColorSel)) = CDbl(global_52)) Then
  loc_EDEB4C:   Me.FGridRef.Col = 1
  loc_EDEB54: End If
  loc_EDEB67: Me.FGridRef.BackColorSel = CVar(CLng("16308221"))
  loc_EDEB7A: Set var_88 = Me.TxtGrid
  loc_EDEB80: Call 0.Method_FGridRef_UnknownEvent_00 (0, var_BC)
  loc_EDEB88: var_BC.Visible = False
  loc_EDEB94: Exit Sub
  loc_EDEB95: ' Referenced from: EDEB10
  loc_EDEB9B: Call 0.Method_arg_50 (var_C0)
  loc_EDEBA3: var_C8 = "FGridRef_GotFocus"
  loc_EDEBB0: Proc_183_57_104B0BC(var_C0)
  loc_EDEBBC: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_1 'EA005C
  'Data Table: 5C26BC
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E9FFE0: On Error Goto loc_EA0031
  loc_E9FFEF: Set var_88 = Me.TxtGrid
  loc_E9FFF5: Call 0.Method_FGridRef_UnknownEvent_10 (0, var_8C)
  loc_EA000F: If (var_8C.Visible = 0) Then
  loc_EA0028:   Me.FGridRef.BackColorSel = CVar(CLng(global_52))
  loc_EA0030: End If
  loc_EA0030: Exit Sub
  loc_EA0031: ' Referenced from: E9FFE0
  loc_EA0037: Call 0.Method_arg_50 (var_B4)
  loc_EA003F: var_BC = "FGridRef_LostFocus"
  loc_EA004C: Proc_183_57_104B0BC(var_B4)
  loc_EA0058: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_9 'E54938
  'Data Table: 5C26BC
  Dim MeFF As Double
  loc_E54904: On Error Goto loc_E5490D
  loc_E54907: Call Proc_185_167_E408B0()
  loc_E5490C: Exit Sub
  loc_E5490D: ' Referenced from: E54904
  loc_E54913: Call 0.Method_arg_50 (var_88)
  loc_E54928: Proc_183_57_104B0BC(var_88)
  loc_E54934: Exit Sub
  loc_E54935: MeFF = "FGridRef_Click"
End Sub

Private Sub FGridRef_UnknownEvent_A '11D5AA0
  'Data Table: 5C26BC
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_E8 As Long
  Dim var_F8 As Variant
  Dim var_118 As String
  loc_11D5630: On Error Goto loc_11D5A77
  loc_11D5637: Set var_88 = Me.TopCtrl1
  loc_11D563D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11D5682: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11D568B:   Call Form_KeyDown(Cancel, arg_10)
  loc_11D5690: End If
  loc_11D5694: Set var_88 = Me.TopCtrl1
  loc_11D569A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11D56B3: If (CStr() = "Browse") Then
  loc_11D56B6:   Exit Sub
  loc_11D56B7: End If
  loc_11D572B: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGridRef.Tag))) = CDbl((CLng(Me.FGridRef.Rows) - (CLng(Me.FGridRef.Rows) - 1))))) Then
  loc_11D5741:   Me.FGridRef.CellBackColor = CVar(CLng("16777215"))
  loc_11D574B:   Cancel = 0
  loc_11D5751: Else
  loc_11D5780:   var_9C = CStr(Me.FGridRef.Tag)
  loc_11D57A8:   If ((CLng(Cancel) = &H28) And (CDbl(Val(var_9C)) = CDbl((CLng(Me.FGridRef.Rows) - 1)))) Then
  loc_11D57BE:     Me.FGridRef.CellBackColor = CVar(CLng("16777215"))
  loc_11D57C8:     Cancel = 0
  loc_11D57CB:   End If
  loc_11D57CB: End If
  loc_11D57D1: global_168 = Cancel
  loc_11D57F7: Me.FGridRef.Tag = CVar(CStr(CLng(Me.FGridRef.Row)))
  loc_11D581B: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11D5831:   var_E8 = CLng(Me.FGridRef.Col)
  loc_11D5841:   If Not (var_E8 = CLng(6)) Then
  loc_11D584B:     If Not (var_E8 = CLng(5)) Then
  loc_11D5855:       If Not (var_E8 = CLng(7)) Then
  loc_11D585F:         If Not (var_E8 = CLng(2)) Then
  loc_11D5869:           If Not (var_E8 = CLng(3)) Then
  loc_11D5873:             If Not (var_E8 = CLng(4)) Then
  loc_11D587D:               If (var_E8 = CLng(8)) Then
  loc_11D5880:               End If
  loc_11D5880:             End If
  loc_11D5880:           End If
  loc_11D5880:         End If
  loc_11D5880:       End If
  loc_11D5880:     End If
  loc_11D5893:     var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D58AB:     var_F8 = CVar(CLng(Me.FGridRef.Col)) 'Long
  loc_11D58B0:     var_118 = vbNullString
  loc_11D58BA:     Set var_B4 = Me.FGridRef
  loc_11D58C0:     LateIdCallSt
  loc_11D58DB:   Else
  loc_11D58E2:     If (var_E8 = CLng(1)) Then
  loc_11D58F8:       var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D5900:       var_F8 = CVar(CLng(6)) 'Long
  loc_11D5905:       var_118 = vbNullString
  loc_11D590F:       Set var_A0 = Me.FGridRef
  loc_11D5915:       LateIdCallSt
  loc_11D593A:       var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D5942:       var_F8 = CVar(CLng(5)) 'Long
  loc_11D5947:       var_118 = vbNullString
  loc_11D5951:       Set var_A0 = Me.FGridRef
  loc_11D5957:       LateIdCallSt
  loc_11D597C:       var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D5984:       var_F8 = CVar(CLng(7)) 'Long
  loc_11D5989:       var_118 = vbNullString
  loc_11D5993:       Set var_A0 = Me.FGridRef
  loc_11D5999:       LateIdCallSt
  loc_11D59BE:       var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D59C6:       var_F8 = CVar(CLng(2)) 'Long
  loc_11D59CB:       var_118 = vbNullString
  loc_11D59D5:       Set var_A0 = Me.FGridRef
  loc_11D59DB:       LateIdCallSt
  loc_11D5A00:       var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D5A08:       var_F8 = CVar(CLng(3)) 'Long
  loc_11D5A0D:       var_118 = vbNullString
  loc_11D5A17:       Set var_A0 = Me.FGridRef
  loc_11D5A1D:       LateIdCallSt
  loc_11D5A42:       var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D5A4A:       var_F8 = CVar(CLng(4)) 'Long
  loc_11D5A4F:       var_118 = vbNullString
  loc_11D5A59:       Set var_A0 = Me.FGridRef
  loc_11D5A5F:       LateIdCallSt
  loc_11D5A71:     End If
  loc_11D5A71:   End If
  loc_11D5A71: End If
  loc_11D5A73: Cancel = 0
  loc_11D5A76: Exit Sub
  loc_11D5A77: ' Referenced from: 11D5630
  loc_11D5A7D: Call 0.Method_arg_50 (var_9C, Cancel, var_A0, var_118, var_F8, var_D4, var_A0, var_118)
  loc_11D5A92: Proc_183_57_104B0BC(var_9C, "FGridRef_KeyDown", var_F8, var_D4, var_A0)
  loc_11D5A9E: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_B 'E621C0
  'Data Table: 5C26BC
  loc_E6217C: On Error Goto loc_E62196
  loc_E62188: Call FGridRef_UnknownEvent_C()
  loc_E62192: global_196 = 0
  loc_E62195: Exit Sub
  loc_E62196: ' Referenced from: E6217C
  loc_E6219C: Call 0.Method_arg_50 (var_8C, global_196)
  loc_E621B1: Proc_183_57_104B0BC(var_8C, "FGridRef_DblClick")
  loc_E621BD: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_C '10431D8
  'Data Table: 5C26BC
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1042F8C: On Error Goto loc_10431AF
  loc_1042F93: Set var_88 = Me.TopCtrl1
  loc_1042F99: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1042FB2: If (CStr() = "Browse") Then
  loc_1042FB5:   Exit Sub
  loc_1042FB6: End If
  loc_1042FC9: var_A0 = CLng(Me.FGridRef.Col)
  loc_1042FD9: If Not (var_A0 = CLng(1)) Then
  loc_1042FE3:   If (var_A0 = CLng(2)) Then
  loc_1042FE6:   End If
  loc_1042FEA:   Set var_C4 = Me.FGridRef
  loc_104300E:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1043030:   Set var_B4 = var_C4
  loc_1043042:   Proc_183_26_11578C8(Me, var_B4, Me.TxtGrid, 0)
  loc_104306A:   Set var_88 = Me.TxtGrid
  loc_1043070:   Call 0.Method_FGridRef_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1043078:   0 = var_B4.Text
  loc_1043091:   If (Len(var_9C) <= 1) Then
  loc_10430A0:     Set var_88 = Me.TxtGrid
  loc_10430A6:     Call 0.Method_FGridRef_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_10430AE:     Asc(var_9C) = var_B4.Text
  loc_10430BF:     Set var_B8 = Me.TxtGrid
  loc_10430C5:     Call 0.Method_FGridRef_UnknownEvent_C0 (0, var_C4)
  loc_10430CD:     var_C4.Text = var_9C
  loc_10430E0:   End If
  loc_10430EC:   Set var_88 = Me.TxtGrid
  loc_10430F2:   Call 0.Method_FGridRef_UnknownEvent_C0 (0, var_B4)
  loc_10430FA:   var_9C = var_B4.Text
  loc_104310C:   Set var_B8 = Me.TxtGrid
  loc_1043112:   Call 0.Method_FGridRef_UnknownEvent_C0 (0, var_C4)
  loc_104311A:   var_C4.SelStart = Len(var_9C)
  loc_1043130: Else
  loc_1043137:   If Not (var_A0 = CLng(3)) Then
  loc_1043141:     If Not (var_A0 = CLng(4)) Then
  loc_104314B:       If (var_A0 = CLng(8)) Then
  loc_104314E:       End If
  loc_104314E:     End If
  loc_1043187:     Proc_183_26_11578C8(Me, Me.FGridRef, Me.TxtGrid, 0)
  loc_1043199:   End If
  loc_1043199: End If
  loc_10431A3: If (CLng(Cancel) <> &HD) Then
  loc_10431AB:   global_196 = &HFF
  loc_10431AE: End If
  loc_10431AE: Exit Sub
  loc_10431AF: ' Referenced from: 1042F8C
  loc_10431B5: Call 0.Method_arg_50 (var_9C, global_196, &HFF)
  loc_10431CA: Proc_183_57_104B0BC(var_9C, "FGridRef_KeyPress")
  loc_10431D6: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_D 'FEFE30
  'Data Table: 5C26BC
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  loc_FEFC54: On Error Goto loc_FEFE08
  loc_FEFC5B: Set var_88 = Me.TopCtrl1
  loc_FEFC61: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FEFC69: var_9C = CStr()
  loc_FEFC7A: If (var_9C = "Browse") Then
  loc_FEFC7D:   Exit Sub
  loc_FEFC7E: End If
  loc_FEFC9B: If (CLng(Me.FGridRef.ColSel) = CLng(0)) Then
  loc_FEFC9E:   Exit Sub
  loc_FEFC9F: End If
  loc_FEFCB0: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FEFCD2:   If (CLng(Me.FGridRef.Row) >= 1) Then
  loc_FEFD0C:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FEFD2E:       If (CLng(Me.FGridRef.Rows) > 2) Then
  loc_FEFD44:         var_AC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_FEFD4D:         Set var_110 = Me.FGridRef
  loc_FEFD68:       Else
  loc_FEFD7B:         Me.FGridRef.Rows = 1
  loc_FEFD83:         var_AC = vbNullString
  loc_FEFD8D:         Set var_88 = Me.FGridRef
  loc_FEFD9E:         var_AC = 1
  loc_FEFDB1:         Me.FGridRef.FixedRows = var_AC
  loc_FEFDB9:       End If
  loc_FEFDB9:       Call Proc_185_162_11F7928(FGridRef.DispID_10000, var_AC)
  loc_FEFDBE:     End If
  loc_FEFDC1:   Else
  loc_FEFDE2:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FEFDF2:   End If
  loc_FEFDF6:   Set var_88 = Me.FGridRef
  loc_FEFE07: End If
  loc_FEFE07: Exit Sub
  loc_FEFE08: ' Referenced from: FEFC54
  loc_FEFE0E: Call 0.Method_arg_50 (var_9C, FGridRef.DispID_8001)
  loc_FEFE23: Proc_183_57_104B0BC(var_9C, "FGridRef_KeyUp")
  loc_FEFE2F: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_15 'E7D0A0
  'Data Table: 5C26BC
  Dim var_8C As TextBox
  loc_E7D04C: On Error Goto loc_E7D075
  loc_E7D05A: Set var_88 = Me.TxtGrid
  loc_E7D060: Call 0.Method_FGridRef_UnknownEvent_150 (0, var_8C)
  loc_E7D068: var_8C.Visible = False
  loc_E7D074: Exit Sub
  loc_E7D075: ' Referenced from: E7D04C
  loc_E7D07B: Call 0.Method_arg_50 (var_90)
  loc_E7D083: var_98 = "FGridRef_Scroll"
  loc_E7D090: Proc_183_57_104B0BC(var_90)
  loc_E7D09C: Exit Sub
End Sub

Private Sub TxtGlb_GotFocus(Index As Integer) 'FCE978
  'Data Table: 5C26BC
  Dim var_90 As TextBox
  Dim var_D8 As Variant
  Dim unk_5C26D2 As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As String
  Dim var_104 As TextBox
  loc_FCE7D4: On Error Goto loc_FCE94E
  loc_FCE7E0: If (global_132 = &HFF) Then
  loc_FCE7E3:   Exit Sub
  loc_FCE7E4: End If
  loc_FCE7EE: Set var_8C = Me.TxtGlb
  loc_FCE7F4: Call 0.Method_TxtGlb_GotFocus0 (Index)
  loc_FCE7FC: Set var_94 = var_90
  loc_FCE802: Call Proc_185_163_E22184(var_94)
  loc_FCE80E: Call Proc_185_169_F64FF4(var_90)
  loc_FCE838: Set var_8C = Me.TxtGlb
  loc_FCE83E: Call 0.Method_TxtGlb_GotFocus0 (Index, var_90)
  loc_FCE846: var_98 = var_90.Text
  loc_FCE860: If (((CInt(global_110) <= 2) And (global_116 = "Y")) And (Len(var_98) = 0)) Then
  loc_FCE881:   Set var_8C = Me.TxtVtYpe
  loc_FCE887:   Call 0.Method_TxtGlb_GotFocus0 (0, var_90, var_98, "SELECT Narration FROM VOUCHER_tYPE WHERE V_tYPE=")
  loc_FCE88F:   var_FC = var_90.Tag
  loc_FCE89D:   Proc_183_9_EAB2F0(var_B8, CVar(var_98))
  loc_FCE8A5:   var_D8 = -1 & var_B8 
  loc_FCE8B3:   unk_5C26D2.Execute CStr(var_D8), var_94, 
  loc_FCE8BE:   Set var_88 = var_94
  loc_FCE8EC:   If (var_88.RecordCount > 0) Then
  loc_FCE917:     var_98 = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Narration")))
  loc_FCE923:     Set var_94 = Me.TxtGlb
  loc_FCE929:     Call 0.Method_TxtGlb_GotFocus0 (0, var_104)
  loc_FCE931:     var_104.Text = var_98
  loc_FCE945:   End If
  loc_FCE945: End If
  loc_FCE94A: Set var_88 = Nothing
  loc_FCE94D: Exit Sub
  loc_FCE94E: ' Referenced from: FCE7D4
  loc_FCE954: Call 0.Method_arg_50 (var_98)
  loc_FCE95C: var_108 = "TxtGlb_GotFocus"
  loc_FCE969: Proc_183_57_104B0BC(var_98)
  loc_FCE975: Exit Sub
End Sub

Private Sub TxtGlb_KeyDown(KeyCode As Integer, Shift As Integer) 'F5AF24
  'Data Table: 5C26BC
  Dim var_8C As TextBox
  Dim var_A0 As String
  Dim var_9C As TextBox
  loc_F5AE08: On Error Goto loc_F5AEFA
  loc_F5AE14: If (global_132 = &HFF) Then
  loc_F5AE17:   Exit Sub
  loc_F5AE18: End If
  loc_F5AE22: If (CLng(Shift) = &H1B) Then
  loc_F5AE25:   Call Proc_185_169_F64FF4()
  loc_F5AE2A: End If
  loc_F5AE36: If (CInt(global_110) <= 2) Then
  loc_F5AE43:   If (CLng(Shift) = &H2D) Then
  loc_F5AE53:     Set var_88 = Me.TxtGlb
  loc_F5AE59:     Call 0.Method_TxtGlb_KeyDown0 (KeyCode, var_8C)
  loc_F5AE6C:     Call Proc_185_165_E99400(var_90)
  loc_F5AE82:     Set var_98 = Me.TxtGlb
  loc_F5AE88:     Call 0.Method_TxtGlb_KeyDown0 (KeyCode, var_9C)
  loc_F5AE90:     var_9C.Text = var_8C.Text & var_90
  loc_F5AEB6:     Set var_88 = Me.TxtGlb
  loc_F5AEBC:     Call 0.Method_TxtGlb_KeyDown0 (KeyCode, var_8C)
  loc_F5AEC4:     var_90 = var_8C.Text
  loc_F5AED7:     Set var_98 = Me.TxtGlb
  loc_F5AEDD:     Call 0.Method_TxtGlb_KeyDown0 (KeyCode, var_9C)
  loc_F5AEE5:     var_9C.SelStart = Len(var_90)
  loc_F5AEF8:     Exit Sub
  loc_F5AEF9:   End If
  loc_F5AEF9: End If
  loc_F5AEF9: Exit Sub
  loc_F5AEFA: ' Referenced from: F5AE08
  loc_F5AF00: Call 0.Method_arg_50 (var_90)
  loc_F5AF08: var_A0 = "TxtGlb_KeyDown"
  loc_F5AF15: Proc_183_57_104B0BC(var_90)
  loc_F5AF21: Exit Sub
End Sub

Private Sub TxtGlb_LostFocus(Index As Integer) 'E8C66C
  'Data Table: 5C26BC
  loc_E8C608: On Error Goto loc_E8C643
  loc_E8C614: If (global_132 = &HFF) Then
  loc_E8C617:   Exit Sub
  loc_E8C618: End If
  loc_E8C622: Set var_88 = Me.TxtGlb
  loc_E8C628: Call 0.Method_TxtGlb_LostFocus0 (Index)
  loc_E8C636: Call Proc_185_164_E27050(var_8C)
  loc_E8C642: Exit Sub
  loc_E8C643: ' Referenced from: E8C608
  loc_E8C649: Call 0.Method_arg_50 (var_94)
  loc_E8C65E: Proc_183_57_104B0BC(var_94, "TxtGlb_LostFocus")
  loc_E8C66A: Exit Sub
End Sub

Public Function TmpCheqNew(Rst) 'FC52E0
  'Data Table: 5C26BC
  Dim var_8C As Recordset15
  loc_FC512D: Set var_8C = Rst 
  loc_FC5155: var_8C.Fields.Append "HeadName", &HC8, &H96
  loc_FC5181: var_8C.Fields.Append "Amt", 5, 0
  loc_FC51AD: var_8C.Fields.Append "AmtWord", &HC8, &HC8
  loc_FC51D9: var_8C.Fields.Append "Dt", 7, 8
  loc_FC5205: var_8C.Fields.Append "SiteName", &HC8, &H96
  loc_FC5231: var_8C.Fields.Append "SName", &HC8, &H96
  loc_FC525D: var_8C.Fields.Append "SiteCode", &HC8, 2
  loc_FC5289: var_8C.Fields.Append "AcNo", &HC8, &H32
  loc_FC5299: var_8C.CursorType = 3
  loc_FC52A6: var_8C.LockType = 3
  loc_FC52C5: var_8C.Open var_A0, var_B0, -1
  loc_FC52CC: Set var_8C = Nothing 
  loc_FC52D3: Set var_88 = Rst 
  loc_FC52D7: TmpCheqNew = -1
End Function

Public Sub Disp_Text(Enb) 'DFBD30
  'Data Table: 5C26BC
  loc_DFBD2C: Exit Sub
End Sub

Public Sub FindMove(mDocId) 'F966C4
  'Data Table: 5C26BC
  Dim var_88 As String
  Dim unk_5C28CF As Connection15
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_B0 As Fields15
  loc_F96560: On Error Goto loc_F9669A
  loc_F96574: If ((MemVar_1F95078 = "HO") And (MemVar_1F95070 = "HO")) Then
  loc_F9659B:   unk_5C28CF.Execute "SELECT DOCID,SITE_CODE,LOGSITE_CODE FROM LEDGERM WHERE DOCID='" & mDocId & "'", var_AC, -1
  loc_F965AC:   Set global_68 = var_B0
  loc_F965D8:   If (Me.RecordCount > 0) Then
  loc_F9661A:     If CBool(Me.Fields.Item("Site_Code").Value <> "HO") Then
  loc_F96622:       Call 0.Method_arg_1D4 (0)
  loc_F96627:       var_9C = False
  loc_F96630:       Set var_B0 = Me.TopCtrl1
  loc_F96636:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_9C)
  loc_F9663E:     End If
  loc_F9663E:   End If
  loc_F96641: Else
  loc_F96647:   Me.MoveFirst
  loc_F9664C: End If
  loc_F96661: var_88 = "DOCID='" & mDocId
  loc_F96671: Me.Find var_88 & "'", 0, 1
  loc_F96691: If (Me.EOF = 0) Then
  loc_F96694:   Call Proc_185_144_19C1534(var_9C)
  loc_F96699: End If
  loc_F96699: Exit Sub
  loc_F9669A: ' Referenced from: F96560
  loc_F966A0: Call 0.Method_arg_50 (var_88)
  loc_F966B5: Proc_183_57_104B0BC(var_88, "FindMove")
  loc_F966C1: Exit Sub
End Sub

Public Sub Proc_185_142_13068E8
  'Data Table: 5C26BC
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_B4 As String
  Dim var_11C As Variant
  Dim var_16C As Variant
  Dim var_88 As Recordset15
  Dim var_DC As Variant
  Dim var_200 As Variant
  Dim var_2A0 As Variant
  Dim var_378 As Variant
  Dim var_388 As Variant
  loc_1306284: On Error Goto loc_13068BE
  loc_130629A: Me.FGVLIST.Rows = 1
  loc_13062A5: var_8C = " WHERE NCAT<>'OPBAL'"
  loc_13062EB: If ((Me.TXTVDATE1.Text <> vbNullString) And (Me.TXTVDATE2.Text <> vbNullString)) Then
  loc_13062FE:   Proc_183_7_EB17D4(var_DC, CVar(Me.TXTVDATE1))
  loc_130631E:   Proc_183_7_EB17D4(var_11C, CVar(Me.TXTVDATE2))
  loc_130632B:   var_8C = CStr(" WHERE v_date BETWEEN " & var_DC & " and " & var_11C)
  loc_130633F: End If
  loc_1306362: If (CStr(Me.Dcparty.defText) <> vbNullString) Then
  loc_130639A:   var_FC = (CVar(var_8C) + IIf((Len(var_8C) = 0), " WHERE ", " AND "))
  loc_13063A3:   var_10C = (" WHERE v_date BETWEEN " & " AND " & " and " + " LEDGER.SUBCODE='")
  loc_13063BC:   var_16C = CVar(Me.TXTVDATE2) & CVar(CStr(Me.Dcparty.BoundText)) 
  loc_13063CA:   var_8C = CStr(var_16C & "'")
  loc_13063E7: End If
  loc_130640A: If (CStr(Me.DataCombo1.defText) <> vbNullString) Then
  loc_1306442:   var_FC = (CVar(var_8C) + IIf((Len(var_8C) = 0), " WHERE ", " AND "))
  loc_130644B:   var_10C = (" WHERE v_date BETWEEN " & " AND " & " and " + " LEDGER.V_TYPE=")
  loc_1306467:   Proc_183_9_EAB2F0(var_16C, CVar(CStr(Me.DataCombo1.BoundText)))
  loc_1306474:   var_8C = CStr(CVar(Me.TXTVDATE2) & var_16C)
  loc_1306491: End If
  loc_13064B1: If (Me.Text1.Text <> vbNullString) Then
  loc_13064E9:   var_FC = (CVar(var_8C) + IIf((Len(var_8C) = 0), " WHERE ", " AND "))
  loc_13064F2:   var_10C = (" WHERE v_date BETWEEN " & " AND " & " and " + " V_No=")
  loc_1306519:   var_8C = CStr(CVar(Me.TXTVDATE2) & CVar(Val(Me.Text1.Text)))
  loc_1306533: End If
  loc_1306568: var_FC = (CVar(var_8C) + IIf((Len(var_8C) = 0), " WHERE ", " AND "))
  loc_1306571: var_10C = (" WHERE v_date BETWEEN " & " AND " & " and " + " VOUCHER_TYPE.SITE_CODE='")
  loc_13065BA: Set var_88 = New 
  loc_13065C5: Me.Recordset15.CursorLocation = 3
  loc_13065E8: var_B4 = "SELECT LEDGER.*,SUBGROUP.NAME FROM (LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE) LEFT JOIN VOUCHER_tYPE ON VOUCHER_tYPE.V_TYPE=LEDGER.V_tYPE " & CStr(CVar(Me.TXTVDATE2) & CVar(MemVar_1F95070) & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'")
  loc_13065F6: var_88.Open CVar(var_B4 & " ORDER BY V_DATE,LEDGER.V_TYPE,V_NO,V_SNo"), CVar(MemVar_1F951E0), 2
  loc_1306601: ' Referenced from: 13068B2
  loc_1306610: If Not(var_88.EOF) Then
  loc_13066DA:   var_200 = vbNullString & Chr(9) & var_88.Fields.Item("V_DATE").Value & Chr(9) & var_88.Fields.Item("V_Type").Value & Chr(9) & var_88.Fields.Item("V_NO").Value 
  loc_130675F:   var_2A0 = 3 & CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("v_Prefix")), var_200 & Chr(9))) & Chr(9) & var_88.Fields.Item("Name").Value 
  loc_1306825:   var_378 = var_2A0 & Chr(9) & var_88.Fields.Item("AmtDr").Value & Chr(9) & var_88.Fields.Item("AmtCr").Value & Chr(9) & var_88.Fields.Item("DocID").Value 
  loc_130682A:   var_388 = CVar(CStr(var_378)) 'String
  loc_1306832:   Set var_39C = Me.FGVLIST
  loc_13068AD:   var_88.MoveNext
  loc_13068B2:   GoTo loc_1306601
  loc_13068B5: End If
  loc_13068BA: Set var_88 = Nothing
  loc_13068BD: Exit Sub
  loc_13068BE: ' Referenced from: 1306284
  loc_13068C4: Call 0.Method_arg_50 (var_B4, FGVLIST.DispID_10000)
  loc_13068D9: Proc_183_57_104B0BC(var_B4, "VRLIST")
  loc_13068E5: Exit Sub
End Sub

Public Sub Proc_185_143_E14C98
  'Data Table: 5C26BC
  loc_E14C80: Call TopCtrl1_UnknownEvent_D()
  loc_E14C85: Call TopCtrl1_UnknownEvent_16()
  loc_E14C8A: Call TopCtrl1_UnknownEvent_12()
  loc_E14C8F: Call Proc_185_143_E14C98()
  loc_E14C94: Exit Sub
  loc_E14C95: ThisVCallHidden
End Sub

Public Sub Proc_185_144_19C1534
  'Data Table: 5C26BC
  Dim var_9C As Variant
  Dim var_AC As String
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim unk_5C26D2 As Connection15
  Dim var_8C As Integer
  Dim var_C8 As Variant
  Dim var_EC As Variant
  Dim var_130 As Variant
  Dim var_B4 As String
  Dim var_100 As String
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_88 As Recordset15
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_1A8 As Fields15
  Dim var_1CC As Variant
  Dim var_1DC As Variant
  Dim var_94 As Recordset15
  Dim var_134 As Variant
  Dim var_164 As Variant
  Dim var_90 As Recordset15
  Dim var_21C As Recordset15
  Dim var_220 As Recordset15
  Dim var_224 As Recordset15
  Dim var_228 As Recordset15
  Dim var_98 As Recordset15
  Dim var_1BC As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_2EC As Variant
  Dim var_574 As Variant
  Dim var_594 As Variant
  Dim var_5C4 As Variant
  Dim var_5D8 As Fields15
  Dim var_60C As Variant
  Dim var_628 As Double
  Dim var_1A4 As Variant
  Dim var_8A As Integer
  loc_19BE55C: On Error Goto loc_19C150C
  loc_19BE56C: Me.lblTDS.Caption = vbNullString
  loc_19BE579: global_132 = &HFF
  loc_19BE587: For var_A0 = 0 To global_136: var_8C = var_A0 'Integer
  loc_19BE595:   Call Proc_185_157_11F0D18(var_8C, 0)
  loc_19BE59D: Next var_A0 'Integer
  loc_19BE5B2: Set var_9C = Me.LblDrAmt
  loc_19BE5B8: Call 0.Method_Proc_185_144_19C15340 (0, var_A8)
  loc_19BE5C0: var_A8.Caption = CStr(0)
  loc_19BE5DF: Set var_9C = Me.LblCrAmt
  loc_19BE5E5: Call 0.Method_Proc_185_144_19C15340 (0, var_A8)
  loc_19BE5ED: var_A8.Caption = CStr(0)
  loc_19BE5FC: Call Proc_185_156_1116EC8()
  loc_19BE606: global_108 = 0
  loc_19BE60E: Call Proc_185_158_1019368(&HFF)
  loc_19BE62A: If (Me.RecordCount <= 0) Then
  loc_19BE633:   global_120 = "JV"
  loc_19BE648:   Set var_9C = Me.VchDt
  loc_19BE64E:   Call 0.Method_Proc_185_144_19C15340 (0, var_A8)
  loc_19BE656:   var_A8.Text = CStr(MemVar_1F950EC)
  loc_19BE679:   Call Proc_185_166_1326620(vbNullString, 0)
  loc_19BE6A2:   Set var_9C = New
  loc_19BE6B1:   Call 0.Method_arg_1C4 (var_9C, var_A8)
  loc_19BE6BF:   global_72 = var_9C
  loc_19BE6CF:   Set global_72 = var_A8
  loc_19BE6F9:   Set var_9C = New
  loc_19BE708:   Call 0.Method_arg_1C8 (var_9C, var_A8)
  loc_19BE716:   global_100 = var_9C
  loc_19BE726:   Set global_100 = var_A8
  loc_19BE750:   Set var_9C = New
  loc_19BE75F:   Call 0.Method_arg_1CC (var_9C, var_A8)
  loc_19BE76D:   global_96 = var_9C
  loc_19BE77D:   Set global_96 = var_A8
  loc_19BE78D: Else
  loc_19BE7A3:   unk_5C26D2.Execute "SELECT SUBCODE,SUM(CURR_BAL) AS CURRBAL FROM SUBGROUPCURRBAL GROUP BY SUBCODE ORDER BY SUBCODE", var_D8, -1
  loc_19BE7AE:   Set var_98 = var_9C
  loc_19BE7E0:   If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_19BE7FA:     If (Me.RecordCount > 0) Then
  loc_19BE811:       If (Me.EOF = &HFF) Then
  loc_19BE81A:         Me.MoveLast
  loc_19BE81F:       End If
  loc_19BE833:       If (Me.BOF = &HFF) Then
  loc_19BE83C:         Me.MoveFirst
  loc_19BE841:       End If
  loc_19BE844:     Else
  loc_19BE849:       global_132 = 0
  loc_19BE84F:     Else
  loc_19BE84F:     End If
  loc_19BE851:     var_8C = 0
  loc_19BE871:     Set var_9C = New
  loc_19BE880:     Call 0.Method_arg_1C4 (var_9C, var_A8, var_8C)
  loc_19BE88E:     global_72 = var_9C
  loc_19BE89E:     Set global_72 = var_A8
  loc_19BE8C8:     Set var_9C = New
  loc_19BE8D7:     Call 0.Method_arg_1C8 (var_9C, var_A8, global_132)
  loc_19BE8E5:     global_100 = var_9C
  loc_19BE8F5:     Set global_100 = var_A8
  loc_19BE91F:     Set var_9C = New
  loc_19BE92E:     Call 0.Method_arg_1CC (var_9C, var_A8)
  loc_19BE93C:     global_96 = var_9C
  loc_19BE94C:     Set global_96 = var_A8
  loc_19BE95D:     Set var_88 = New 
  loc_19BE99F:     If (Me.Recordset15.Fields.Item("ShowCityName").Value = "Yes") Then
  loc_19BE9EA:       var_AC = "SELECT LEDGER.*,NameWithCity AS Name FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGER.V_TYPE WHERE VOUCHER_TYPE.SITE_CODE='" & MemVar_1F95070
  loc_19BEA05:       var_110 = CVar(var_AC & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & MemVar_1F95078 & "' AND LEDGER.DOCID='") & Me.Fields.Item("DocID").Value 
  loc_19BEA16:       var_88.Open var_110 & "' ORDER BY LEDGER.V_SNO", CVar(MemVar_1F951E0), 0
  loc_19BEA39:     Else
  loc_19BEA81:       var_AC = "SELECT LEDGER.*,SUBGROUP.NAME FROM (LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE) LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGER.V_TYPE WHERE VOUCHER_TYPE.SITE_CODE='" & MemVar_1F95070
  loc_19BEA9C:       var_110 = CVar(var_AC & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & MemVar_1F95078 & "' AND LEDGER.DOCID='") & Me.Fields.Item("DocID").Value 
  loc_19BEAAD:       var_88.Open var_110 & "' ORDER BY LEDGER.V_SNO", CVar(MemVar_1F951E0), 0
  loc_19BEACD:     End If
  loc_19BEADC:     var_9C = var_88.Fields
  loc_19BEAF5:     var_1F4 = Proc_6_38_E69628(CVar(var_9C.Item("U_AE")), 1, -1, 1)
  loc_19BEB20:     var_1F8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), -1)
  loc_19BEBA0:     var_1DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), IIf((var_1F4 = "A"), "Created By :     ", IIf((var_1F8 = "E"), "Modified By :     ", "User :     ")))) 'String
  loc_19BEBB5:     Me.LbLUser.Caption = CStr(var_9C & var_1DC)
  loc_19BEC2F:     var_134 = var_88.Fields.Item("U_AE")
  loc_19BECAC:     var_1A4 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :     ", IIf((Proc_6_38_E69628(CVar(var_134)) = "E"), "Last Update :     ", "entdt :     "))
  loc_19BECED:     Me.LblLDte.Caption = CStr(1 & Format(CVar(var_88.Fields.Item("U_EntDt")), "dd/mm/yyyy hh:nn"))
  loc_19BED3B:     If (var_88.RecordCount > 0) Then
  loc_19BED42:       Set var_94 = New 
  loc_19BED8D:       var_AC = "SELECT LEDGERM.*,VOUCHER_TYPE.NCAT FROM LEDGERM LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGERM.V_TYPE WHERE VOUCHER_TYPE.SITE_CODE='" & MemVar_1F95070
  loc_19BEDA2:       var_FC = CVar(var_AC & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & MemVar_1F95078 & "' AND  DOCID='") 'String
  loc_19BEDA8:       var_110 = var_FC & Me.Recordset15.Fields.Item("DocID").Value 
  loc_19BEDB1:       var_120 = var_110 & "' ORDER BY V_Date,DOCID" 
  loc_19BEDB9:       var_94.Open var_120, CVar(MemVar_1F951E0), 0
  loc_19BEDED:       If (var_94.RecordCount > 0) Then
  loc_19BEE28:         Me.lblDocId.Caption = CStr(var_94.Fields.Item("DocID").Value)
  loc_19BEE73:         Set var_B8 = Me.TxtVno
  loc_19BEE79:         Call 0.Method_Proc_185_144_19C15340 (0, var_134, CStr(var_94.Fields.Item("V_NO").Value), 1)
  loc_19BEE81:         var_134.Text = -1
  loc_19BEEB1:         var_A8 = var_94.Fields.Item("V_DATE")
  loc_19BEEC2:         var_AC = CStr(var_A8.Value)
  loc_19BEECE:         Set var_B8 = Me.VchDt
  loc_19BEED4:         Call 0.Method_Proc_185_144_19C15340 (0, var_134, var_AC)
  loc_19BEEDC:         var_134.Text = 1
  loc_19BEEFE:         Set var_9C = Me.VchDt
  loc_19BEF04:         Call 0.Method_Proc_185_144_19C15340 (0, var_A8, var_AC)
  loc_19BEF1B:         Call 0.Method_arg_198 (var_A8, var_1A4)
  loc_19BEF27:         Set var_134 = Me.LblDay
  loc_19BEF2D:         Me.LblDay.Caption = var_AC
  loc_19BEF72:         Set var_B8 = Me.TxtGlb
  loc_19BEF78:         Call 0.Method_Proc_185_144_19C15340 (0, var_134)
  loc_19BEF80:         var_134.Text = Proc_183_2_E5AE94(CVar(var_94.Fields.Item("Narration")))
  loc_19BEFCC:         Me.LblVPrefix.Caption = CStr(var_94.Fields.Item("v_Prefix").Value)
  loc_19BF011:         global_128 = CStr(var_94.Fields.Item("v_Prefix").Value)
  loc_19BF053:         global_120 = CStr(var_94.Fields.Item("NCat").Value)
  loc_19BF064:       End If
  loc_19BF085:       If (Trim(global_120) = vbNullString) Then
  loc_19BF0A1:         MsgBox("Nature Category Not set", 0, var_FC, var_110, var_120)
  loc_19BF0B1:       End If
  loc_19BF0F9:       Call Proc_185_166_1326620(CStr(var_88.Fields.Item("V_Type").Value), Me.LblVPrefix.Caption)
  loc_19BF145:       Set var_B8 = Me.TxtCHno
  loc_19BF14B:       Call 0.Method_Proc_185_144_19C15340 (0, var_134)
  loc_19BF153:       var_134.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Chq_No")))
  loc_19BF19B:       Set var_B8 = Me.TXTChDate
  loc_19BF1A1:       Call 0.Method_Proc_185_144_19C15340 (0, var_134)
  loc_19BF1A9:       var_134.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Chq_Date")))
  loc_19BF1F1:       Set var_B8 = Me.TXTClrDate
  loc_19BF1F7:       Call 0.Method_Proc_185_144_19C15340 (0, var_134)
  loc_19BF1FF:       var_134.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("clg_date")))
  loc_19BF213:       ' Referenced from:     19C131A
  loc_19BF222:       If Not(var_88.EOF) Then
  loc_19BF261:         If (var_88.Fields.Item("AmtCr").Value > 0) Then
  loc_19BF268:           Set var_90 = New 
  loc_19BF271:           var_C8 = "DocID"
  loc_19BF2D3:           var_EC = "SELECT * FROM LEDGERADJ WHERE DOCID1='"
  loc_19BF2F3:           var_90.Open var_EC & Me.Recordset15.Fields.Item(var_C8).Value & "' AND V_SNo1=" & var_88.Fields.Item("V_SNo").Value, CVar(MemVar_1F951E0), 0
  loc_19BF310:           ' Referenced from:     19BF552
  loc_19BF31F:           If Not(var_90.EOF) Then
  loc_19BF328:             Set var_21C = global_72 
  loc_19BF337:             var_21C.AddNew var_C8, var_EC
  loc_19BF37F:             var_21C.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID2"))
  loc_19BF3D3:             var_21C.Fields.Item("V_SNo").Value = CVar(var_90.Fields.Item("V_SNo2"))
  loc_19BF427:             var_21C.Fields.Item("VSNo").Value = CVar(var_90.Fields.Item("V_SNo1"))
  loc_19BF47B:             var_21C.Fields.Item("DR").Value = CVar(var_90.Fields.Item("cr"))
  loc_19BF4CF:             var_21C.Fields.Item("SUBCODE").Value = CVar(var_90.Fields.Item("subcode"))
  loc_19BF4E3:             var_C8 = "AgRefNo"
  loc_19BF507:             var_EC = "AgRefNo"
  loc_19BF523:             var_21C.Fields.Item(var_EC).Value = CVar(var_90.Fields.Item(var_C8))
  loc_19BF53F:             var_21C.Update var_C8, var_EC
  loc_19BF546:             Set var_21C = Nothing 
  loc_19BF54D:             var_90.MoveNext
  loc_19BF552:             GoTo loc_19BF310
  loc_19BF555:           End If
  loc_19BF558:         Else
  loc_19BF55C:           Set var_90 = New 
  loc_19BF565:           var_C8 = "DocID"
  loc_19BF5C7:           var_EC = "SELECT * FROM LEDGERADJ WHERE DOCID2='"
  loc_19BF5E7:           var_90.Open var_EC & Me.Fields.Item(var_C8).Value & "' AND V_SNo2=" & var_88.Fields.Item("V_SNo").Value, CVar(MemVar_1F951E0), 0
  loc_19BF604:           ' Referenced from:       19BF846
  loc_19BF613:           If Not(var_90.EOF) Then
  loc_19BF61C:             Set var_220 = global_72 
  loc_19BF62B:             var_220.AddNew var_C8, var_EC
  loc_19BF673:             var_220.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID1"))
  loc_19BF6C7:             var_220.Fields.Item("V_SNo").Value = CVar(var_90.Fields.Item("V_SNo1"))
  loc_19BF71B:             var_220.Fields.Item("VSNo").Value = CVar(var_90.Fields.Item("V_SNo2"))
  loc_19BF76F:             var_220.Fields.Item("CR").Value = CVar(var_90.Fields.Item("cr"))
  loc_19BF7C3:             var_220.Fields.Item("SUBCODE").Value = CVar(var_90.Fields.Item("subcode"))
  loc_19BF7D7:             var_C8 = "AgRefNo"
  loc_19BF7FB:             var_EC = "AgRefNo"
  loc_19BF817:             var_220.Fields.Item(var_EC).Value = CVar(var_90.Fields.Item(var_C8))
  loc_19BF833:             var_220.Update var_C8, var_EC
  loc_19BF83A:             Set var_220 = Nothing 
  loc_19BF841:             var_90.MoveNext
  loc_19BF846:             GoTo loc_19BF604
  loc_19BF849:           End If
  loc_19BF849:         End If
  loc_19BF84D:         Set var_90 = New 
  loc_19BF856:         var_C8 = "DocID"
  loc_19BF8B8:         var_EC = "SELECT * FROM LedgerRef WHERE DOCID='"
  loc_19BF8D8:         var_90.Open var_EC & Me.Fields.Item(var_C8).Value & "' AND V_SNo=" & var_88.Fields.Item("V_SNo").Value, CVar(MemVar_1F951E0), 0
  loc_19BF8F5:         ' Referenced from:     19BFC11
  loc_19BF904:         If Not(var_90.EOF) Then
  loc_19BF90D:           Set var_224 = global_100 
  loc_19BF91C:           var_224.AddNew var_C8, var_EC
  loc_19BF964:           var_224.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_19BF9B8:           var_224.Fields.Item("V_SNo").Value = CVar(var_90.Fields.Item("V_SNo"))
  loc_19BFA0C:           var_224.Fields.Item("DR").Value = CVar(var_90.Fields.Item("dr"))
  loc_19BFA60:           var_224.Fields.Item("CR").Value = CVar(var_90.Fields.Item("cr"))
  loc_19BFAB4:           var_224.Fields.Item("SUBCODE").Value = CVar(var_90.Fields.Item("subcode"))
  loc_19BFB08:           var_224.Fields.Item("AgRefNo").Value = CVar(var_90.Fields.Item("AgRefNo"))
  loc_19BFB5C:           var_224.Fields.Item("AgRefType").Value = CVar(var_90.Fields.Item("AgRefType"))
  loc_19BFB9C:           If Not(IsNull(CVar(var_90.Fields.Item("DueDate")))) Then
  loc_19BFBA2:             var_C8 = "DueDate"
  loc_19BFBC6:             var_EC = "DueDate"
  loc_19BFBE2:             var_224.Fields.Item(var_EC).Value = CVar(var_90.Fields.Item(var_C8))
  loc_19BFBF3:           End If
  loc_19BFBFE:           var_224.Update var_C8, var_EC
  loc_19BFC05:           Set var_224 = Nothing 
  loc_19BFC0C:           var_90.MoveNext
  loc_19BFC11:           GoTo loc_19BF8F5
  loc_19BFC14:         End If
  loc_19BFC18:         Set var_90 = New 
  loc_19BFC21:         var_C8 = "DocID"
  loc_19BFC83:         var_EC = "SELECT LEDGERTDS.*,SUBGROUP.NAME AS TDSNAME FROM LEDGERTDS LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGERTDS.TDSCODE WHERE DOCID='"
  loc_19BFCA3:         var_90.Open var_EC & Me.Fields.Item(var_C8).Value & "' AND V_SNo=" & var_88.Fields.Item("V_SNo").Value, CVar(MemVar_1F951E0), 0
  loc_19BFCD4:         If (var_90.RecordCount > 0) Then
  loc_19BFCE3:           Me.lblTDS.Visible = True
  loc_19BFCEB:           ' Referenced from:     19C0291
  loc_19BFCEB:         End If
  loc_19BFCFA:         If Not(var_90.EOF) Then
  loc_19BFD03:           Set var_228 = global_96 
  loc_19BFD12:           var_228.AddNew var_C8, var_EC
  loc_19BFD5A:           var_228.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_19BFDAE:           var_228.Fields.Item("V_SNo").Value = CVar(var_90.Fields.Item("V_SNo"))
  loc_19BFE02:           var_228.Fields.Item("TDSCode").Value = CVar(var_90.Fields.Item("TDSCODE"))
  loc_19BFE56:           var_228.Fields.Item("TDSNAME").Value = CVar(var_90.Fields.Item("TDSNAME"))
  loc_19BFEAA:           var_228.Fields.Item("TDSDrCode").Value = CVar(var_90.Fields.Item("TDSDRCODE"))
  loc_19BFEFE:           var_228.Fields.Item("TDSYN").Value = CVar(var_90.Fields.Item("TDSYN"))
  loc_19BFF52:           var_228.Fields.Item("ONAMT").Value = CVar(var_90.Fields.Item("ONAmt"))
  loc_19BFFA6:           var_228.Fields.Item("TDS").Value = CVar(var_90.Fields.Item("TDS"))
  loc_19BFFFA:           var_228.Fields.Item("TDSAMT").Value = CVar(var_90.Fields.Item("TDSAmt"))
  loc_19C003A:           var_AC = CStr(var_90.Fields.Item("TDSAmt").Value)
  loc_19C004B:           Me.lblTDS.Caption = "TDS Amount :     " & var_AC
  loc_19C00A6:           var_228.Fields.Item("TDSPOST").Value = CVar(var_90.Fields.Item("TDSPOST"))
  loc_19C00FA:           var_228.Fields.Item("TDSDocId").Value = CVar(var_90.Fields.Item("TDSDocId"))
  loc_19C014E:           var_228.Fields.Item("TDSV_SNo").Value = CVar(var_90.Fields.Item("TDSV_Sno"))
  loc_19C0163:           Set var_94 = New 
  loc_19C01E3:           var_164 = "SELECT * FROM LEDGER WHERE DOCID='" & Me.Recordset15.Fields.Item("TDSDocId").Value & "' AND V_SNo=" & var_90.Fields.Item("TDSV_Sno").Value 
  loc_19C01EB:           var_94.Open var_164, CVar(MemVar_1F951E0), 0
  loc_19C021C:           If (var_94.RecordCount > 0) Then
  loc_19C0222:             var_C8 = "Narration"
  loc_19C0246:             var_EC = "NARRATION"
  loc_19C0262:             var_228.Fields.Item(var_EC).Value = CVar(var_94.Fields.Item(var_C8))
  loc_19C0273:           End If
  loc_19C027E:           var_228.Update var_C8, var_EC
  loc_19C0285:           Set var_228 = Nothing 
  loc_19C028C:           var_90.MoveNext
  loc_19C0291:           GoTo loc_19BFCEB
  loc_19C0294:         End If
  loc_19C02A0:         var_98.Filter = 0
  loc_19C02E5:         var_98.Filter = "SUBCODE='" & var_88.Fields.Item("subcode").Value & "'"
  loc_19C030B:         If (var_88.EOF = &HFF) Then
  loc_19C04BA:           var_238 = vbNullString & Chr(9) & var_88.Fields.Item("V_SNo").Value & Chr(9) & var_88.Fields.Item("subcode").Value & Chr(9) & var_88.Fields.Item("Name").Value 
  loc_19C04EB:           var_288 = var_238 & Chr(9) & vbNullString & Chr(9) 
  loc_19C052A:           var_2EC = 1 & Format(CVar(var_88.Fields.Item("AmtDr")), "0.00") & Chr(9) 
  loc_19C05BC:           var_50C = IIf((var_88.Fields.Item("AmtCr").Value > 0), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "To", "Cr"), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "By", "Dr"))
  loc_19C0606:           var_574 = 1 & Format(CVar(var_88.Fields.Item("AmtCr")), "0.00") & Chr(9) & var_50C & Chr(9) & var_88.Fields.Item("Narration").Value 
  loc_19C0628:           var_5C4 = CVar(CStr(var_574 & Chr(9) & "0.00")) 'String
  loc_19C0630:           Set var_5D8 = Me.FGrid1
  loc_19C06CF:         Else
  loc_19C0803:           var_A8 = var_88.Fields.Item("V_SNo")
  loc_19C0887:           var_1BC = var_88.Fields.Item("Name")
  loc_19C08AB:           var_258 = vbNullString & Chr(9) & var_A8.Value & Chr(9) & var_88.Fields.Item("subcode").Value & Chr(9) & var_1BC.Value & Chr(9) 
  loc_19C08C8:           var_288 = var_258 & vbNullString & Chr(9) 
  loc_19C0907:           var_2EC = 1 & Format(CVar(var_88.Fields.Item("AmtDr")), "0.00") & Chr(9) 
  loc_19C0999:           var_50C = IIf((var_88.Fields.Item("AmtCr").Value > 0), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "To", "Cr"), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "By", "Dr"))
  loc_19C09E3:           var_574 = 1 & Format(CVar(var_88.Fields.Item("AmtCr")), "0.00") & Chr(9) & var_50C & Chr(9) & var_88.Fields.Item("Narration").Value 
  loc_19C09F7:           var_594 = var_574 & Chr(9) 
  loc_19C0A0A:           var_5C4 = "0.00"
  loc_19C0A27:           var_60C = CVar(CStr(1 & Format(CVar(var_98.Fields.Item("CurrBal")), var_5C4))) 'String
  loc_19C0A2F:           Set var_620 = Me.FGrid1
  loc_19C0AD3:         End If
  loc_19C0B06:         var_628 = Val(CStr(var_88.Fields.Item("AmtDr").Value))
  loc_19C0B15:         Set var_9C = Me.LblDrAmt
  loc_19C0B1B:         Call 0.Method_Proc_185_144_19C15340 (0, var_A8, var_AC, var_628, FGrid1.DispID_10000, var_60C, 1)
  loc_19C0B23:         var_594 = var_A8.Caption
  loc_19C0B36:         var_100 = CStr((Val(var_AC) + var_628))
  loc_19C0B42:         Set var_1A8 = Me.LblDrAmt
  loc_19C0B48:         Call 0.Method_Proc_185_144_19C15340 (0, var_1BC, var_AC & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & MemVar_1F95078, 1, var_2EC)
  loc_19C0B50:         var_1BC.Caption = 1
  loc_19C0B8A:         var_134 = var_88.Fields.Item("AmtCr")
  loc_19C0B9B:         var_B4 = CStr(var_134.Value)
  loc_19C0BA3:         var_628 = Val(var_B4)
  loc_19C0BB2:         Set var_9C = Me.LblCrAmt
  loc_19C0BB8:         Call 0.Method_Proc_185_144_19C15340 (0, var_A8, var_AC, var_628)
  loc_19C0BC0:         var_288 = var_A8.Caption
  loc_19C0BD3:         var_100 = CStr((Val(var_AC) + var_628))
  loc_19C0BDF:         Set var_1A8 = Me.LblCrAmt
  loc_19C0BE5:         Call 0.Method_Proc_185_144_19C15340 (0, var_1BC, var_AC & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & MemVar_1F95078)
  loc_19C0BED:         var_1BC.Caption = FGrid1.DispID_10000
  loc_19C0C17:         If (var_8C <= global_136) Then
  loc_19C0C22:           Call Proc_185_157_11F0D18(var_8C, &HFF)
  loc_19C0C66:           If (Me.Fields.Item("ToBy").Value = "Yes") Then
  loc_19C0CD3:             Set var_B8 = Me.TxtCrDr
  loc_19C0CD9:             Call 0.Method_Proc_185_144_19C15340 (var_8C, var_134)
  loc_19C0CE1:             var_134.Text = CStr(IIf((var_88.Fields.Item("AmtCr").Value > 0), "To", "By"))
  loc_19C0D04:           Else
  loc_19C0D6E:             Set var_B8 = Me.TxtCrDr
  loc_19C0D74:             Call 0.Method_Proc_185_144_19C15340 (var_8C, var_134)
  loc_19C0D7C:             var_134.Text = CStr(IIf((var_88.Fields.Item("AmtCr").Value > 0), "Cr", "Dr"))
  loc_19C0D9C:           End If
  loc_19C0DB6:           var_A8 = var_88.Fields.Item("V_SNo")
  loc_19C0DD4:           Set var_B8 = Me.TxtCrDr
  loc_19C0DDA:           Call 0.Method_Proc_185_144_19C15340 (var_8C, var_134)
  loc_19C0DE2:           var_134.Tag = CStr(var_A8.Value)
  loc_19C0E05:           Set var_9C = Me.TxtCrDr
  loc_19C0E0B:           Call 0.Method_Proc_185_144_19C15340 (var_8C, var_A8)
  loc_19C0E2D:           Set var_B8 = Me.TxtCrDr
  loc_19C0E33:           Call 0.Method_Proc_185_144_19C15340 (var_8C, var_134, var_B4)
  loc_19C0E3B:           (var_A8.Text = "Cr") = var_134.Text
  loc_19C0E5B:           If (var_5C4 Or (var_B4 = "To")) Then
  loc_19C0E75:             var_A8 = var_88.Fields.Item("AmtCr")
  loc_19C0EAF:             Set var_B8 = Me.TxtCr
  loc_19C0EB5:             Call 0.Method_Proc_185_144_19C15340 (var_8C, var_134, CStr(Format(CVar(var_A8), "0.00")))
  loc_19C0EBD:             var_134.Text = 1
  loc_19C0EE3:             Set var_9C = Me.TxtCr
  loc_19C0EE9:             Call 0.Method_Proc_185_144_19C15340 (var_8C, var_A8)
  loc_19C0EF1:             var_A8.Visible = True
  loc_19C0F0A:             Set var_9C = Me.TxtDr
  loc_19C0F10:             Call 0.Method_Proc_185_144_19C15340 (var_8C, var_A8)
  loc_19C0F18:             var_A8.Text = vbNullString
  loc_19C0F30:             Set var_9C = Me.TxtDr
  loc_19C0F36:             Call 0.Method_Proc_185_144_19C15340 (var_8C, var_A8)
  loc_19C0F3E:             var_A8.Visible = False
  loc_19C0F4D:           Else
  loc_19C0F64:             var_A8 = var_88.Fields.Item("AmtDr")
  loc_19C0F9E:             Set var_B8 = Me.TxtDr
  loc_19C0FA4:             Call 0.Method_Proc_185_144_19C15340 (var_8C, var_134, CStr(Format(CVar(var_A8), "0.00")))
  loc_19C0FAC:             var_134.Text = 1
  loc_19C0FD2:             Set var_9C = Me.TxtDr
  loc_19C0FD8:             Call 0.Method_Proc_185_144_19C15340 (var_8C, var_A8, &HFF)
  loc_19C0FE0:             var_A8.Visible = True
  loc_19C0FF9:             Set var_9C = Me.TxtCr
  loc_19C0FFF:             Call 0.Method_Proc_185_144_19C15340 (var_8C, var_A8)
  loc_19C1007:             var_A8.Text = vbNullString
  loc_19C101F:             Set var_9C = Me.TxtCr
  loc_19C1025:             Call 0.Method_Proc_185_144_19C15340 (var_8C, var_A8)
  loc_19C102D:             var_A8.Visible = False
  loc_19C1039:           End If
  loc_19C1071:           Set var_B8 = Me.TxtAcName
  loc_19C1077:           Call 0.Method_Proc_185_144_19C15340 (var_8C, var_134)
  loc_19C107F:           var_134.Tag = CStr(var_88.Fields.Item("subcode").Value)
  loc_19C10CA:           Set var_B8 = Me.TxtAcName
  loc_19C10D0:           Call 0.Method_Proc_185_144_19C15340 (var_8C, var_134)
  loc_19C10D8:           var_134.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Name")))
  loc_19C1121:           Set var_B8 = Me.TxtNar
  loc_19C1127:           Call 0.Method_Proc_185_144_19C15340 (var_8C, var_134)
  loc_19C112F:           var_134.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Narration")))
  loc_19C114F:           var_98.Filter = 0
  loc_19C1173:           var_A8 = var_88.Fields.Item("subcode")
  loc_19C1183:           var_FC = "SUBCODE='" & var_A8.Value 
  loc_19C1194:           var_98.Filter = var_FC & "'"
  loc_19C11AF:           var_A2 = var_88.EOF
  loc_19C11BA:           If (var_A2 = &HFF) Then
  loc_19C11CA:             Set var_9C = Me.LblCb
  loc_19C11D0:             Call 0.Method_Proc_185_144_19C15340 (var_8C, var_A8)
  loc_19C11D8:             var_A8.Caption = vbNullString
  loc_19C11E7:           Else
  loc_19C11FE:             var_A8 = var_98.Fields.Item("CurrBal")
  loc_19C120D:             Proc_183_3_E7DD58(var_FC, CVar(var_A8))
  loc_19C122C:             var_134 = var_98.Fields.Item("CurrBal")
  loc_19C1239:             var_130 = "Current Balance :"
  loc_19C126C:             var_1A4 = (1 + Format(Abs(var_FC), "0.00"))
  loc_19C1275:             var_1CC = (var_88.Fields.Item("subcode").Value + " ")
  loc_19C12AE:             var_268 = (vbNullString & Chr(9) & var_A8.Value & Chr(9) & var_88.Fields.Item("subcode").Value + IIf((var_134.Value > 0), "Cr", "Dr"))
  loc_19C12C0:             Set var_1A8 = Me.LblCb
  loc_19C12C6:             Call 0.Method_Proc_185_144_19C15340 (var_8C, var_1BC, CStr(IIf((var_134.Value > 0), "Cr", "Dr") & vbNullString))
  loc_19C12CE:             var_1BC.Caption = 1
  loc_19C1300:           End If
  loc_19C1306:           var_8C = (var_8C + 1)
  loc_19C130F:           var_8A = (var_8A + 1)
  loc_19C1312:         End If
  loc_19C1315:         var_88.MoveNext
  loc_19C131A:         GoTo loc_19BF213
  loc_19C131D:       End If
  loc_19C131D:     End If
  loc_19C1323:     Call 0.Method_arg_1B8 (var_A2, var_8A, var_8C)
  loc_19C132E:     If (var_A2 = &HFF) Then
  loc_19C133D:       Set var_9C = Me.TxtCrDr
  loc_19C1343:       Call 0.Method_Proc_185_144_19C15340 (0, var_A8, var_A2)
  loc_19C134B:       var_130 = var_A8.Visible
  loc_19C135D:       If (var_A2 = &HFF) Then
  loc_19C1369:         Set var_9C = Me.TxtCrDr
  loc_19C136F:         Call 0.Method_Proc_185_144_19C15340 (0, var_A8)
  loc_19C1377:         var_A8.SetFocus
  loc_19C1383:       End If
  loc_19C1383:     End If
  loc_19C1383:   End If
  loc_19C138F:   Set var_9C = Me.LblDrAmt
  loc_19C1395:   Call 0.Method_Proc_185_144_19C15340 (0, var_A8)
  loc_19C139D:   var_AC = var_A8.Caption
  loc_19C13E1:   Set var_B8 = Me.LblDrAmt
  loc_19C13E7:   Call 0.Method_Proc_185_144_19C15340 (0, var_134, CStr(Format(CVar(Val(var_AC)), "0.00")), 1)
  loc_19C13EF:   var_134.Caption = 1
  loc_19C141B:   Set var_9C = Me.LblCrAmt
  loc_19C1421:   Call 0.Method_Proc_185_144_19C15340 (0, var_A8, var_AC)
  loc_19C1429:   var_628 = var_A8.Caption
  loc_19C146D:   Set var_B8 = Me.LblCrAmt
  loc_19C1473:   Call 0.Method_Proc_185_144_19C15340 (0, var_134, CStr(Format(CVar(Val(var_AC)), "0.00")), 1)
  loc_19C147B:   var_134.Caption = 1
  loc_19C14A7:   Set var_9C = Me.TxtVtYpe
  loc_19C14AD:   Call 0.Method_Proc_185_144_19C15340 (0, var_A8, var_AC)
  loc_19C14B5:   var_628 = var_A8.Text
  loc_19C14CC:   If (var_AC <> "Bank Payment") Then
  loc_19C14DB:     Me.ChqPrint.Visible = False
  loc_19C14E3:   End If
  loc_19C14E8:   global_132 = 0
  loc_19C14EB: End If
  loc_19C14F0: Set var_98 = Nothing
  loc_19C14F8: Set var_88 = Nothing
  loc_19C1500: Set var_90 = Nothing
  loc_19C1508: Set var_94 = Nothing
  loc_19C150B: Exit Sub
  loc_19C150C: ' Referenced from: 19BE55C
  loc_19C1512: Call 0.Method_arg_50 (var_AC, global_132)
  loc_19C1527: Proc_183_57_104B0BC(var_AC, "MoveRec")
  loc_19C1533: Exit Sub
End Sub

Public Sub Proc_185_145_E9CA60(arg_C) 'E9CA60
  'Data Table: 5C26BC
  loc_E9C9E0: On Error Goto loc_E9CA33
  loc_E9C9EF: If (CInt(global_110) = 3) Then
  loc_E9C9F2:   Proc_185_145_E9CA60 = 
  loc_E9C9F8: End If
  loc_E9CA1D: Call 0.Method_arg_178 (Me, global_136, arg_C)
  loc_E9CA26: var_86 = var_8E 'Byte
  loc_E9CA2D: Proc_185_145_E9CA60 = global_108
  loc_E9CA33: ' Referenced from: E9C9E0
  loc_E9CA39: Call 0.Method_arg_50 (var_94)
  loc_E9CA4E: Proc_183_57_104B0BC(var_94, "VchTrnSaveLst")
  loc_E9CA5A: Proc_185_145_E9CA60 = var_8E
End Sub

Public Sub Proc_185_146_1256AFC(arg_C) '1256AFC
  'Data Table: 5C26BC
  Dim var_8C As TextBox
  Dim var_90 As Integer
  Dim var_9C As TextBox
  loc_1256590: On Error Goto loc_1256AD4
  loc_12565A4: If ((arg_C >= 1) And (arg_C <= global_136)) Then
  loc_12565B2:   If (global_112 = "Y") Then
  loc_12565C5:     Set var_88 = Me.TxtNar
  loc_12565CB:     Call 0.Method_Proc_185_146_1256AFC0 ((arg_C - 1), var_8C)
  loc_12565E5:     If (var_8C.Visible = 0) Then
  loc_12565F7:       Set var_88 = Me.TxtNar
  loc_12565FD:       Call 0.Method_Proc_185_146_1256AFC0 ((arg_C - 1), var_8C)
  loc_1256605:       var_8C.Visible = True
  loc_1256611:     End If
  loc_125661E:     Set var_88 = Me.TxtNar
  loc_1256624:     Call 0.Method_Proc_185_146_1256AFC0 ((arg_C - 1))
  loc_125662C:     var_8C.SetFocus
  loc_125663B:   Else
  loc_1256646:     If (global_112 = "N") Then
  loc_1256655:       If (arg_C > 0) Then
  loc_1256668:         Set var_88 = Me.TxtCrDr
  loc_125666E:         Call 0.Method_Proc_185_146_1256AFC0 ((arg_C - 1), var_8C, var_94)
  loc_1256676:         var_90 = var_8C.Text
  loc_1256693:         Set var_98 = Me.TxtCrDr
  loc_1256699:         Call 0.Method_Proc_185_146_1256AFC0 ((arg_C - 1), var_9C, var_A0)
  loc_12566A1:         (var_94 = "Dr") = var_9C.Text
  loc_12566C1:         If (var_8C Or (var_A0 = "By")) Then
  loc_12566D4:           Set var_88 = Me.TxtDr
  loc_12566DA:           Call 0.Method_Proc_185_146_1256AFC0 ((arg_C - 1), var_8C)
  loc_12566F4:           If (var_8C.Visible = 0) Then
  loc_1256706:             Set var_88 = Me.TxtDr
  loc_125670C:             Call 0.Method_Proc_185_146_1256AFC0 ((arg_C - 1), var_8C)
  loc_1256714:             var_8C.Visible = True
  loc_1256720:           End If
  loc_125672D:           Set var_88 = Me.TxtDr
  loc_1256733:           Call 0.Method_Proc_185_146_1256AFC0 ((arg_C - 1))
  loc_125673B:           var_8C.SetFocus
  loc_125674A:         Else
  loc_125675A:           Set var_88 = Me.TxtCrDr
  loc_1256760:           Call 0.Method_Proc_185_146_1256AFC0 ((arg_C - 1), var_8C)
  loc_1256785:           Set var_98 = Me.TxtCrDr
  loc_125678B:           Call 0.Method_Proc_185_146_1256AFC0 ((arg_C - 1), var_9C, var_A0)
  loc_1256793:           (var_8C.Text = "Cr") = var_9C.Text
  loc_12567B3:           If (var_8C Or (var_A0 = "To")) Then
  loc_12567C6:             Set var_88 = Me.TxtCr
  loc_12567CC:             Call 0.Method_Proc_185_146_1256AFC0 ((arg_C - 1), var_8C)
  loc_12567D4:             var_8E = var_8C.Visible
  loc_12567E6:             If (var_8E = 0) Then
  loc_12567F8:               Set var_88 = Me.TxtCr
  loc_12567FE:               Call 0.Method_Proc_185_146_1256AFC0 ((arg_C - 1), var_8C)
  loc_1256806:               var_8C.Visible = True
  loc_1256812:             End If
  loc_125681F:             Set var_88 = Me.TxtCr
  loc_1256825:             Call 0.Method_Proc_185_146_1256AFC0 ((arg_C - 1))
  loc_125682D:             var_8C.SetFocus
  loc_1256839:           End If
  loc_1256839:         End If
  loc_1256839:       End If
  loc_1256839:     End If
  loc_1256839:   End If
  loc_125683C: Else
  loc_1256842:   If (arg_C = 0) Then
  loc_125684E:     If (global_108 = 0) Then
  loc_1256851:       Exit Sub
  loc_1256852:     End If
  loc_125685E:     global_108 = (global_108 - 1)
  loc_125686F:     Call Proc_185_148_1354DE4("Previous", 0)
  loc_1256882:     If (global_112 = "Y") Then
  loc_1256892:       Set var_88 = Me.TxtNar
  loc_1256898:       Call 0.Method_Proc_185_146_1256AFC0 (arg_C, var_8C, var_8E)
  loc_12568A0:       global_108 = var_8C.Visible
  loc_12568B2:       If (var_8E = 0) Then
  loc_12568C1:         Set var_88 = Me.TxtNar
  loc_12568C7:         Call 0.Method_Proc_185_146_1256AFC0 (arg_C, var_8C)
  loc_12568CF:         var_8C.Visible = True
  loc_12568DB:       End If
  loc_12568E5:       Set var_88 = Me.TxtNar
  loc_12568EB:       Call 0.Method_Proc_185_146_1256AFC0 (arg_C, var_8C)
  loc_12568F3:       var_8C.SetFocus
  loc_1256902:     Else
  loc_125690D:       If (global_112 = "N") Then
  loc_125691D:         Set var_88 = Me.TxtCrDr
  loc_1256923:         Call 0.Method_Proc_185_146_1256AFC0 (arg_C, var_8C)
  loc_1256945:         Set var_98 = Me.TxtCrDr
  loc_125694B:         Call 0.Method_Proc_185_146_1256AFC0 (arg_C, var_9C, var_A0)
  loc_1256953:         (var_8C.Text = "Dr") = var_9C.Text
  loc_1256973:         If (var_8C Or (var_A0 = "By")) Then
  loc_1256983:           Set var_88 = Me.TxtDr
  loc_1256989:           Call 0.Method_Proc_185_146_1256AFC0 (arg_C, var_8C)
  loc_12569A3:           If (var_8C.Visible = 0) Then
  loc_12569B2:             Set var_88 = Me.TxtDr
  loc_12569B8:             Call 0.Method_Proc_185_146_1256AFC0 (arg_C, var_8C)
  loc_12569C0:             var_8C.Visible = True
  loc_12569CC:           End If
  loc_12569D6:           Set var_88 = Me.TxtDr
  loc_12569DC:           Call 0.Method_Proc_185_146_1256AFC0 (arg_C)
  loc_12569E4:           var_8C.SetFocus
  loc_12569F3:         Else
  loc_1256A00:           Set var_88 = Me.TxtCrDr
  loc_1256A06:           Call 0.Method_Proc_185_146_1256AFC0 (arg_C, var_8C)
  loc_1256A0E:           var_94 = var_8C.Text
  loc_1256A28:           Set var_98 = Me.TxtCrDr
  loc_1256A2E:           Call 0.Method_Proc_185_146_1256AFC0 (arg_C, var_9C, var_A0)
  loc_1256A36:           (var_94 = "Cr") = var_9C.Text
  loc_1256A56:           If (var_8C Or (var_A0 = "To")) Then
  loc_1256A66:             Set var_88 = Me.TxtCr
  loc_1256A6C:             Call 0.Method_Proc_185_146_1256AFC0 (arg_C, var_8C)
  loc_1256A86:             If (var_8C.Visible = 0) Then
  loc_1256A95:               Set var_88 = Me.TxtCr
  loc_1256A9B:               Call 0.Method_Proc_185_146_1256AFC0 (arg_C, var_8C)
  loc_1256AA3:               var_8C.Visible = True
  loc_1256AAF:             End If
  loc_1256AB9:             Set var_88 = Me.TxtCr
  loc_1256ABF:             Call 0.Method_Proc_185_146_1256AFC0 (arg_C)
  loc_1256AC7:             var_8C.SetFocus
  loc_1256AD3:           End If
  loc_1256AD3:         End If
  loc_1256AD3:       End If
  loc_1256AD3:     End If
  loc_1256AD3:   End If
  loc_1256AD3: End If
  loc_1256AD3: Exit Sub
  loc_1256AD4: ' Referenced from: 1256590
  loc_1256ADA: Call 0.Method_arg_50 (var_94)
  loc_1256AEF: Proc_183_57_104B0BC(var_94, "previousRow")
  loc_1256AFB: Exit Sub
End Sub

Public Sub Proc_185_147_12E4818(arg_C) '12E4818
  'Data Table: 5C26BC
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim var_8C As Variant
  Dim var_D0 As Double
  Dim arg_C As Integer
  Dim Me As Recordset15
  Dim var_94 As String
  loc_12E4178: On Error Goto loc_12E47EE
  loc_12E4190: Set var_8C = Me.TxtAcName
  loc_12E4196: Call 0.Method_Proc_185_147_12E48180 (arg_C, var_90)
  loc_12E419E: var_94 = var_90.Tag
  loc_12E41B8: Set var_98 = Me.TxtAcName
  loc_12E41BE: Call 0.Method_Proc_185_147_12E48180 (arg_C, var_9C, var_A0)
  loc_12E41C6: (var_94 = vbNullString) = var_9C.Text
  loc_12E41E1: Set var_A4 = Me.TxtCr
  loc_12E41E7: Call 0.Method_Proc_185_147_12E48180 (arg_C, var_A8)
  loc_12E420E: Set var_B0 = Me.TxtDr
  loc_12E4214: Call 0.Method_Proc_185_147_12E48180 (arg_C, var_B4, var_B8)
  loc_12E421C: (CDbl(Val(var_A8.Text)) = CDbl(0)) = var_B4.Text
  loc_12E424E: If ( And ((&HFF And (var_A0 = vbNullString)) Or (CDbl(Val(var_B8)) = CDbl(0)))) Then
  loc_12E4251:   Exit Sub
  loc_12E4252: End If
  loc_12E425E: If (CInt(global_110) = 3) Then
  loc_12E428C:   If (CLng((arg_C + global_108)) = (CLng(Me.FGrid1.Rows) - 1)) Then
  loc_12E428F:     Exit Sub
  loc_12E4290:   End If
  loc_12E4290: End If
  loc_12E429A: If (arg_C = global_136) Then
  loc_12E42A9:   global_108 = (global_108 + 1)
  loc_12E42B8:   Set var_98 = Me.LblCrAmt
  loc_12E42BE:   Call 0.Method_Proc_185_147_12E48180 (0, var_9C)
  loc_12E42C6:   var_A0 = var_9C.Caption
  loc_12E42D3:   var_D0 = Val(var_A0)
  loc_12E42E2:   Set var_8C = Me.LblDrAmt
  loc_12E42E8:   Call 0.Method_Proc_185_147_12E48180 (0, var_90, var_94)
  loc_12E4318:   If (CDbl((Val(var_94) + var_90.Caption)) > CDbl(0)) Then
  loc_12E4321:     var_94 = "Next"
  loc_12E4327:     Call Proc_185_148_1354DE4(var_94, arg_C)
  loc_12E432F:   End If
  loc_12E4335:   arg_C = (arg_C - 1)
  loc_12E4338: End If
  loc_12E4344: Set var_98 = Me.LblCrAmt
  loc_12E434A: Call 0.Method_Proc_185_147_12E48180 (0, var_9C, var_A0)
  loc_12E4352: arg_C = var_9C.Caption
  loc_12E435F: var_D0 = Val(var_A0)
  loc_12E436E: Set var_8C = Me.LblDrAmt
  loc_12E4374: Call 0.Method_Proc_185_147_12E48180 (0, var_90, var_94)
  loc_12E43A1: If (CDbl(Val(var_94)) = CDbl(var_90.Caption)) Then
  loc_12E43B4:   Set var_8C = Me.TxtCrDr
  loc_12E43BA:   Call 0.Method_Proc_185_147_12E48180 ((arg_C + 1), var_90)
  loc_12E43DF:   Set var_98 = Me.TxtCrDr
  loc_12E43E5:   Call 0.Method_Proc_185_147_12E48180 ((arg_C + 1), var_9C, var_A0)
  loc_12E43ED:   (var_90.Text = "Dr") = var_9C.Text
  loc_12E440D:   If (global_108 Or (var_A0 = "By")) Then
  loc_12E441F:     Set var_8C = Me.TxtCr
  loc_12E4425:     Call 0.Method_Proc_185_147_12E48180 ((arg_C + 1), var_90)
  loc_12E442D:     var_90.Visible = False
  loc_12E4439:   End If
  loc_12E4449:   Set var_8C = Me.TxtCrDr
  loc_12E444F:   Call 0.Method_Proc_185_147_12E48180 ((arg_C + 1), var_90)
  loc_12E4474:   Set var_98 = Me.TxtCrDr
  loc_12E447A:   Call 0.Method_Proc_185_147_12E48180 ((arg_C + 1), var_9C)
  loc_12E44A2:   If ((var_90.Text = "Cr") Or (var_9C.Text = "To")) Then
  loc_12E44B4:     Set var_8C = Me.TxtDr
  loc_12E44BA:     Call 0.Method_Proc_185_147_12E48180 ((arg_C + 1), var_90)
  loc_12E44C2:     var_90.Visible = False
  loc_12E44CE:   End If
  loc_12E44D1: Else
  loc_12E44E1:   Set var_8C = Me.TxtDr
  loc_12E44E7:   Call 0.Method_Proc_185_147_12E48180 ((arg_C + 1), var_90)
  loc_12E450C:   Set var_98 = Me.TxtCr
  loc_12E4512:   Call 0.Method_Proc_185_147_12E48180 ((arg_C + 1), var_9C)
  loc_12E453A:   If ((var_90.Text = vbNullString) And (var_9C.Text = vbNullString)) Then
  loc_12E4549:     Set var_98 = Me.LblDrAmt
  loc_12E454F:     Call 0.Method_Proc_185_147_12E48180 (0, var_9C)
  loc_12E4573:     Set var_8C = Me.LblCrAmt
  loc_12E4579:     Call 0.Method_Proc_185_147_12E48180 (0, var_90)
  loc_12E45A6:     If (CDbl(Val(var_90.Caption)) > CDbl(Val(var_9C.Caption))) Then
  loc_12E45C6:       var_90 = Me.Fields.Item("ToBy")
  loc_12E4608:       var_94 = CStr(IIf((var_90.Value = "Yes"), "By", "Dr"))
  loc_12E4619:       Set var_98 = Me.TxtCrDr
  loc_12E461F:       Call 0.Method_Proc_185_147_12E48180 ((arg_C + 1), var_9C)
  loc_12E4627:       var_9C.Text = var_94
  loc_12E4656:       Set var_8C = Me.TxtCr
  loc_12E465C:       Call 0.Method_Proc_185_147_12E48180 ((arg_C + 1), var_90)
  loc_12E4664:       var_90.Visible = False
  loc_12E4670:     End If
  loc_12E467C:     Set var_98 = Me.LblCrAmt
  loc_12E4682:     Call 0.Method_Proc_185_147_12E48180 (0, var_9C)
  loc_12E4697:     var_D0 = Val(var_9C.Caption)
  loc_12E46A6:     Set var_8C = Me.LblDrAmt
  loc_12E46AC:     Call 0.Method_Proc_185_147_12E48180 (0, var_90, var_94)
  loc_12E46D9:     If (CDbl(Val(var_94)) > CDbl(var_90.Caption)) Then
  loc_12E46F9:       var_90 = Me.Fields.Item("ToBy")
  loc_12E473B:       var_94 = CStr(IIf((var_90.Value = "Yes"), "To", "Cr"))
  loc_12E474C:       Set var_98 = Me.TxtCrDr
  loc_12E4752:       Call 0.Method_Proc_185_147_12E48180 ((arg_C + 1), var_9C)
  loc_12E475A:       var_9C.Text = var_94
  loc_12E4789:       Set var_8C = Me.TxtDr
  loc_12E478F:       Call 0.Method_Proc_185_147_12E48180 ((arg_C + 1), var_90)
  loc_12E4797:       var_90.Visible = False
  loc_12E47A3:     End If
  loc_12E47A3:   End If
  loc_12E47A3: End If
  loc_12E47B1: Call Proc_185_157_11F0D18((arg_C + 1), &HFF)
  loc_12E47C3: If ((arg_C + 1) = global_136) Then
  loc_12E47D3:   Set var_8C = Me.TxtCrDr
  loc_12E47D9:   Call 0.Method_Proc_185_147_12E48180 ((arg_C + 1), var_90)
  loc_12E47E1:   var_90.SetFocus
  loc_12E47ED: End If
  loc_12E47ED: Exit Sub
  loc_12E47EE: ' Referenced from: 12E4178
  loc_12E47F4: Call 0.Method_arg_50 (var_94)
  loc_12E4809: Proc_183_57_104B0BC(var_94, "NextRow")
  loc_12E4815: Exit Sub
End Sub

Public Sub Proc_185_148_1354DE4(arg_C) '1354DE4
  'Data Table: 5C26BC
  Dim var_88 As Integer
  Dim var_94 As MSFlexGrid
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_DC As Long
  Dim var_F4 As String
  Dim var_F0 As TextBox
  Dim var_F8 As Variant
  Dim Me As Recordset15
  Dim var_FC As String
  Dim var_100 As String
  Dim var_1A0 As Variant
  Dim var_258 As Double
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_250 As Variant
  Dim var_110 As Variant
  loc_13545EC: On Error Goto loc_1354DBC
  loc_13545F5: var_88 = global_136
  loc_13545FB: var_8C = arg_C
  loc_1354606: If (var_8C = "NextAdd") Then
  loc_1354612:   var_88 = (global_136 - 1)
  loc_1354618: Else
  loc_1354620:   If (var_8C = "Previous") Then
  loc_1354623:     GoTo loc_1354631
  loc_1354626:   End If
  loc_135462E:   If (var_8C = "Current") Then
  loc_1354631:     ' Referenced from:   1354623
  loc_1354631:   End If
  loc_1354631: End If
  loc_1354639: For var_90 = 0 To var_88: var_86 = var_90 'Integer
  loc_135466A:   If (CLng((global_108 + var_86)) > (CLng(Me.FGrid1.Rows) - 1)) Then
  loc_1354675:     Call Proc_185_157_11F0D18(var_86, 0, 0)
  loc_1354687:     Set var_94 = Me.TxtAcName
  loc_135468D:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_AC, vbNullString)
  loc_1354695:     var_AC.Tag = var_88
  loc_13546AE:     Set var_94 = Me.TxtAcName
  loc_13546B4:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_AC)
  loc_13546BC:     var_AC.Text = vbNullString
  loc_13546D5:     Set var_94 = Me.TxtCr
  loc_13546DB:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_AC)
  loc_13546E3:     var_AC.Text = vbNullString
  loc_13546FC:     Set var_94 = Me.TxtDr
  loc_1354702:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_AC)
  loc_135470A:     var_AC.Text = vbNullString
  loc_1354723:     Set var_94 = Me.TxtCrDr
  loc_1354729:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_AC)
  loc_1354731:     var_AC.Text = vbNullString
  loc_135474A:     Set var_94 = Me.LblCb
  loc_1354750:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_AC)
  loc_1354758:     var_AC.Caption = vbNullString
  loc_1354767:   Else
  loc_135476F:     Call Proc_185_157_11F0D18(var_86, &HFF)
  loc_135477F:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_13547A2:     var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_13547AF:     Set var_AC = Me.TxtCrDr
  loc_13547B5:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_F0, var_F4)
  loc_13547BD:     var_F0.Text = 7
  loc_13547DE:     Set var_94 = Me.TxtCrDr
  loc_13547E4:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_AC, var_F4)
  loc_13547EC:     var_BC = var_AC.Text
  loc_1354806:     Set var_F0 = Me.TxtCrDr
  loc_135480C:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_F8, var_FC)
  loc_1354814:     (var_F4 = "Cr") = var_F8.Text
  loc_1354834:     If (var_88 Or (var_FC = "To")) Then
  loc_135483D:       Me.MoveFirst
  loc_135484D:       var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1354852:       var_DC = 2
  loc_135489A:       Me.Find "SUBCODE='" & CStr(Me.FGrid1.TextMatrix)) & "'", 0, 1
  loc_13548B1:     Else
  loc_13548B7:       Me.MoveFirst
  loc_13548C7:       var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_13548CC:       var_DC = 2
  loc_1354914:       Me.Find "SUBCODE='" & CStr(Me.FGrid1.TextMatrix)) & "'", 0, 1
  loc_1354928:     End If
  loc_1354933:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1354938:     var_DC = 2
  loc_135494B:     var_A4 = Me.FGrid1.TextMatrix)
  loc_1354963:     Set var_AC = Me.TxtAcName
  loc_1354969:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_F0, CStr(var_A4), var_DC, var_BC, var_110, var_A4)
  loc_1354971:     var_F0.Tag = var_DC
  loc_1354990:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_13549C0:     Set var_AC = Me.TxtAcName
  loc_13549C6:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_F0, CStr(Me.FGrid1.TextMatrix)), 3, var_BC)
  loc_13549CE:     var_F0.Text = var_BC
  loc_13549ED:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1354A1D:     Set var_AC = Me.TxtCr
  loc_1354A23:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_F0, CStr(Me.FGrid1.TextMatrix)), 6, var_BC)
  loc_1354A2B:     var_F0.Text = var_110
  loc_1354A4A:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1354A7A:     Set var_AC = Me.TxtDr
  loc_1354A80:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_F0, CStr(Me.FGrid1.TextMatrix)), 5)
  loc_1354A88:     var_F0.Text = var_BC
  loc_1354AA7:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1354AD7:     Set var_AC = Me.TxtNar
  loc_1354ADD:     Call 0.Method_Proc_185_148_1354DE40 (var_86, var_F0, CStr(Me.FGrid1.TextMatrix)), 8)
  loc_1354AE5:     var_F0.Text = var_BC
  loc_1354B04:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1354B3D:     If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) = CDbl(0)) Then
  loc_1354B4D:       Set var_94 = Me.LblCb
  loc_1354B53:       Call 0.Method_Proc_185_148_1354DE40 (var_86, var_AC, vbNullString, 9)
  loc_1354B5B:       var_AC.Caption = var_BC
  loc_1354B6A:     Else
  loc_1354B75:       var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1354B7A:       var_DC = 9
  loc_1354BA4:       var_1A0 = CVar(CLng((global_108 + var_86))) 'Long
  loc_1354BCF:       var_258 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1354C05:       var_170 = (1 + Format(CVar(Abs(CDbl(CStr(Me.FGrid1.TextMatrix))))), "0.00"))
  loc_1354C0E:       var_190 = (var_170 + " ")
  loc_1354C3F:       var_250 = (var_190 + IIf((CDbl(var_258) > CDbl(0)), "Cr", "Dr"))
  loc_1354C51:       Set var_F0 = Me.LblCb
  loc_1354C57:       Call 0.Method_Proc_185_148_1354DE40 (var_86, var_F8, CStr(var_250), 1, "Current Balance :", var_258, 9)
  loc_1354C5F:       var_F8.Caption = var_1A0
  loc_1354C93:     End If
  loc_1354C9E:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1354CA3:     var_DC = 7
  loc_1354CB6:     var_A4 = Me.FGrid1.TextMatrix)
  loc_1354CC1:     var_F4 = CStr(var_A4)
  loc_1354CD4:     var_110 = CVar(CLng((global_108 + var_86))) 'Long
  loc_1354CE6:     Set var_AC = Me.FGrid1
  loc_1354D15:     If (7 Or (CStr(var_AC.TextMatrix)) = "To")) Then
  loc_1354D24:       Set var_94 = Me.TxtCr
  loc_1354D2A:       Call 0.Method_Proc_185_148_1354DE40 (var_86, var_AC, &HFF, var_110, (var_F4 = "Cr"), var_DC, var_BC)
  loc_1354D32:       var_AC.Visible = var_A4
  loc_1354D4A:       Set var_94 = Me.TxtDr
  loc_1354D50:       Call 0.Method_Proc_185_148_1354DE40 (var_86, var_AC, 0, var_DC)
  loc_1354D58:       var_AC.Visible = var_BC
  loc_1354D67:     Else
  loc_1354D73:       Set var_94 = Me.TxtDr
  loc_1354D79:       Call 0.Method_Proc_185_148_1354DE40 (var_86, var_AC, &HFF)
  loc_1354D81:       var_AC.Visible = var_A4
  loc_1354D99:       Set var_94 = Me.TxtCr
  loc_1354D9F:       Call 0.Method_Proc_185_148_1354DE40 (var_86, var_AC, 0)
  loc_1354DA7:       var_AC.Visible = var_DC
  loc_1354DB3:     End If
  loc_1354DB3:   End If
  loc_1354DB6: Next var_90 'Integer
  loc_1354DBB: Exit Sub
  loc_1354DBC: ' Referenced from: 13545EC
  loc_1354DC2: Call 0.Method_arg_50 (var_F4)
  loc_1354DCA: var_100 = "ScrollFiller"
  loc_1354DD7: Proc_183_57_104B0BC(var_F4)
  loc_1354DE3: Exit Sub
End Sub

Public Sub Proc_185_149_125FAA8(arg_C) '125FAA8
  'Data Table: 5C26BC
  Dim var_8C As MSFlexGrid
  Dim var_E4 As String
  Dim var_E0 As Variant
  Dim var_AC As Variant
  Dim arg_C As Integer
  Dim var_154 As Double
  Dim var_15C As Double
  Dim var_CC As Variant
  Dim var_148 As Label
  loc_125F540: On Error Goto loc_125FA80
  loc_125F54F: If (CInt(global_110) = 3) Then
  loc_125F552:   Exit Sub
  loc_125F553: End If
  loc_125F558: global_132 = &HFF
  loc_125F57A: If (CLng(Me.FGrid1.Rows) > 0) Then
  loc_125F5AF:   Set var_8C = Me.LblDrAmt
  loc_125F5B5:   Call 0.Method_Proc_185_149_125FAA80 (0, var_E0, CStr(Format(0, "0.00")))
  loc_125F5BD:   var_E0.Caption = 1
  loc_125F607:   Set var_8C = Me.LblCrAmt
  loc_125F60D:   Call 0.Method_Proc_185_149_125FAA80 (0, var_E0, CStr(Format(0, "0.00")), 1)
  loc_125F615:   var_E0.Caption = 1
  loc_125F65A:   If (((global_108 + arg_C) = 0) And (CLng(Me.FGrid1.Rows) = 1)) Then
  loc_125F670:     Me.FGrid1.Rows = 0
  loc_125F67A:     arg_C = 0
  loc_125F682:     global_108 = 0
  loc_125F688:   Else
  loc_125F693:     var_AC = CVar(CLng((global_108 + arg_C))) 'Long
  loc_125F69C:     Set var_8C = Me.FGrid1
  loc_125F6B6:     If (global_108 > 0) Then
  loc_125F6C5:       global_108 = (global_108 - 1)
  loc_125F6C8:       GoTo loc_125F6CB
  loc_125F6CB:       ' Referenced from:   125F6C8
  loc_125F6CB:     End If
  loc_125F6CB:   End If
  loc_125F6D7:   Call Proc_185_148_1354DE4("Next")
  loc_125F711:   Set var_8C = Me.LblDrAmt
  loc_125F717:   Call 0.Method_Proc_185_149_125FAA80 (0, var_E0, CStr(Format(0, "0.00")), 1, 1, arg_C, global_108)
  loc_125F71F:   var_E0.Caption = FGrid1.DispID_10000
  loc_125F75C:   var_E4 = CStr(Format(0, "0.00"))
  loc_125F769:   Set var_8C = Me.LblCrAmt
  loc_125F76F:   Call 0.Method_Proc_185_149_125FAA80 (0, var_E0, var_E4, 1, 1)
  loc_125F777:   var_E0.Caption = 0
  loc_125F7AE:   If (CLng(Me.FGrid1.Rows) > 0) Then
  loc_125F7D6:     For var_E8 = 0 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_E8 'Integer
  loc_125F7E8:       Set var_8C = Me.LblDrAmt
  loc_125F7EE:       Call 0.Method_Proc_185_149_125FAA80 (0, var_E0, var_E4, 0)
  loc_125F7F6:       global_108 = var_E0.Caption
  loc_125F835:       var_15C = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_125F854:       var_CC = CVar((Val(var_E4) + var_15C)) 'Double
  loc_125F870:       Set var_144 = Me.LblDrAmt
  loc_125F876:       Call 0.Method_Proc_185_149_125FAA80 (0, var_148, CStr(Format("0.00", "0.00")), 1, 1, var_15C)
  loc_125F87E:       var_148.Caption = 5
  loc_125F8B0:       Set var_8C = Me.LblCrAmt
  loc_125F8B6:       Call 0.Method_Proc_185_149_125FAA80 (0, var_E0, var_E4, CVar(CLng(var_88)))
  loc_125F8BE:       var_154 = var_E0.Caption
  loc_125F8D2:       var_AC = CVar(CLng(var_88)) 'Long
  loc_125F8FD:       var_15C = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_125F91C:       var_CC = CVar((Val(var_E4) + var_15C)) 'Double
  loc_125F938:       Set var_144 = Me.LblCrAmt
  loc_125F93E:       Call 0.Method_Proc_185_149_125FAA80 (0, var_148, CStr(Format("0.00", "0.00")), 1, 1, var_15C)
  loc_125F946:       var_148.Caption = 6
  loc_125F96F:     Next var_E8 'Integer
  loc_125F974:   End If
  loc_125F97D:   Set var_8C = Me.LblDrAmt
  loc_125F983:   Call 0.Method_Proc_185_149_125FAA80 (0)
  loc_125F98B:   var_E0.Refresh
  loc_125F9A0:   Set var_8C = Me.LblCrAmt
  loc_125F9A6:   Call 0.Method_Proc_185_149_125FAA80 (0, var_E0)
  loc_125F9AE:   var_E0.Refresh
  loc_125F9C7:   Set var_8C = Me.TxtCrDr
  loc_125F9CD:   Call 0.Method_Proc_185_149_125FAA80 (arg_C, var_E0)
  loc_125F9E7:   If (var_E0.Visible = &HFF) Then
  loc_125F9F4:     Set var_8C = Me.TxtCrDr
  loc_125F9FA:     Call 0.Method_Proc_185_149_125FAA80 (arg_C, var_E0)
  loc_125FA02:     var_E0.SetFocus
  loc_125FA11:   Else
  loc_125FA17:     If (arg_C = 0) Then
  loc_125FA24:       Call Proc_185_157_11F0D18(0, &HFF)
  loc_125FA33:       Set var_8C = Me.TxtCrDr
  loc_125FA39:       Call 0.Method_Proc_185_149_125FAA80 (arg_C, var_E0)
  loc_125FA41:       var_E0.SetFocus
  loc_125FA50:     Else
  loc_125FA5D:       Set var_8C = Me.TxtCrDr
  loc_125FA63:       Call 0.Method_Proc_185_149_125FAA80 ((arg_C - 1), var_E0)
  loc_125FA6B:       var_E0.SetFocus
  loc_125FA77:     End If
  loc_125FA77:   End If
  loc_125FA77: End If
  loc_125FA7C: global_132 = 0
  loc_125FA7F: Exit Sub
  loc_125FA80: ' Referenced from: 125F540
  loc_125FA86: Call 0.Method_arg_50 (var_E4, global_132)
  loc_125FA9B: Proc_183_57_104B0BC(var_E4, "RowDelete")
  loc_125FAA7: Exit Sub
End Sub

Public Sub Proc_185_150_FEA4F0
  'Data Table: 5C26BC
  Dim var_A8 As Variant
  Dim var_CC As Variant
  Dim var_E0 As Long
  Dim var_F4 As String
  loc_FEA314: On Error Goto loc_FEA4C8
  loc_FEA356: If (CLng(Me.FgridAdjust.Col) = &HA) Then
  loc_FEA365:   Me.TXTADJ_AMT.Visible = True
  loc_FEA37D:   Me.TXTADJ_AMT.ZOrder 0
  loc_FEA385:   var_A8 = 9
  loc_FEA3B0:   Me.TXTADJ_AMT.Width = CDbl(CLng(Me.FgridAdjust.ColWidth)))
  loc_FEA3F7:   Me.TXTADJ_AMT.Top = (CDbl(Me.FgridAdjust.Top) + CDbl(CLng(Me.FgridAdjust.CellTop)))
  loc_FEA416:   var_CC = Me.FgridAdjust.CellLeft
  loc_FEA444:   Me.TXTADJ_AMT.Left = (CDbl(Me.FgridAdjust.Left) + CDbl(CLng(var_CC)))
  loc_FEA460:   var_A8 = CVar(CLng(CInt(CLng(Me.FgridAdjust.Row)))) 'Long
  loc_FEA465:   var_E0 = &HA
  loc_FEA483:   var_F4 = CStr(Me.FgridAdjust.TextMatrix))
  loc_FEA49A:   Me.TXTADJ_AMT.Text = CStr(Val(var_F4))
  loc_FEA4BA:   Me.TXTADJ_AMT.SetFocus
  loc_FEA4C2: End If
  loc_FEA4C2: Call Proc_185_161_100F7F8(var_E0, var_A8, var_CC)
  loc_FEA4C7: Exit Sub
  loc_FEA4C8: ' Referenced from: FEA314
  loc_FEA4CE: Call 0.Method_arg_50 (var_F4, var_CC)
  loc_FEA4E3: Proc_183_57_104B0BC(var_F4, "UPD_ADJ")
  loc_FEA4EF: Exit Sub
End Sub

Public Sub Proc_185_151_DFC0D8
  'Data Table: 5C26BC
  loc_DFC0D4: Exit Sub
  loc_DFC0D5: Result  End Sub 'Integer
End Sub

Public Sub Proc_185_152_EF0B98
  'Data Table: 5C26BC
  loc_EF0AD0: On Error Goto loc_EF0B6E
  loc_EF0ADC: If (global_108 > 0) Then
  loc_EF0AEB:   Me.PicUP.Visible = True
  loc_EF0AF6: Else
  loc_EF0B02:   Me.PicUP.Visible = False
  loc_EF0B0A: End If
  loc_EF0B3F: If ((((CLng(Me.FGrid1.Rows) - 1) - CLng(global_108)) - CLng(global_136)) > 0) Then
  loc_EF0B4E:   Me.PicDN.Visible = True
  loc_EF0B59: Else
  loc_EF0B65:   Me.PicDN.Visible = False
  loc_EF0B6D: End If
  loc_EF0B6D: Exit Sub
  loc_EF0B6E: ' Referenced from: EF0AD0
  loc_EF0B74: Call 0.Method_arg_50 (var_9C)
  loc_EF0B7C: var_A4 = "PicDisp"
  loc_EF0B89: Proc_183_57_104B0BC(var_9C)
  loc_EF0B95: Exit Sub
End Sub

Public Sub Proc_185_153_E6FF48
  'Data Table: 5C26BC
  loc_E6FEF4: On Error Goto loc_E6FF20
  loc_E6FF03: Me.PicUP.Visible = False
  loc_E6FF17: Me.PicDN.Visible = False
  loc_E6FF1F: Exit Sub
  loc_E6FF20: ' Referenced from: E6FEF4
  loc_E6FF26: Call 0.Method_arg_50 (var_8C)
  loc_E6FF2E: var_94 = "PicFalse"
  loc_E6FF3B: Proc_183_57_104B0BC(var_8C)
  loc_E6FF47: Exit Sub
End Sub

Public Sub Proc_185_154_14B795C(arg_C) '14B795C
  'Data Table: 5C26BC
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A4 As Variant
  Dim var_FC As Variant
  Dim var_A8 As String
  Dim var_120 As Variant
  Dim var_10C As Variant
  Dim var_140 As Variant
  Dim var_110 As MSHFlexGrid
  Dim var_160 As Variant
  Dim var_164 As String
  Dim var_168 As MSHFlexGrid
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_1BC As MSHFlexGrid
  Dim var_1CC As Variant
  Dim var_130 As Variant
  Dim var_1F0 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim Me As Recordset15
  loc_14B6C78: On Error Goto loc_14B792D
  loc_14B6C7B: Call Proc_185_162_11F7928()
  loc_14B6C8C: If (arg_C = 0) Then
  loc_14B6CA2:   var_A0 = CLng(Me.FGridRef.Col)
  loc_14B6CB2:   If (var_A0 = CLng(1)) Then
  loc_14B6CC8:     var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6CE2:     Set var_8C = Me.TxtGrid
  loc_14B6CE8:     Call 0.Method_Proc_185_154_14B795C0 (arg_C, var_A4, var_A8, CVar(CLng(1)))
  loc_14B6CF0:     var_BC = var_A4.Text
  loc_14B6CF8:     var_FC = CVar(var_A8) 'String
  loc_14B6D00:     Set var_110 = Me.FGridRef
  loc_14B6D06:     LateIdCallSt
  loc_14B6D33:     var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6D3B:     var_DC = CVar(CLng(1)) 'Long
  loc_14B6D55:     var_A8 = CStr(Me.FGridRef.TextMatrix))
  loc_14B6D70:     var_10C = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6D78:     var_140 = CVar(CLng(1)) 'Long
  loc_14B6D92:     var_164 = CStr(Me.FGridRef.TextMatrix))
  loc_14B6DAE:     var_188 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6E00:     If (CVar(CLng(1)) And (CStr(Me.FGridRef.TextMatrix)) <> "New Ref")) Then
  loc_14B6E16:       var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6E1E:       var_DC = CVar(CLng(1)) 'Long
  loc_14B6E23:       var_10C = "On Account"
  loc_14B6E2D:       Set var_A4 = Me.FGridRef
  loc_14B6E33:       LateIdCallSt
  loc_14B6E45:     End If
  loc_14B6E58:     var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6E69:     Set var_A4 = Me.FGridRef
  loc_14B6EA5:     var_130 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6EB6:     Set var_110 = Me.FGridRef
  loc_14B6EC7:     var_A8 = CStr(var_110.TextMatrix))
  loc_14B6F4B:     If CBool(CVar(CLng(1)) And (CStr(Me.FGridRef.TextMatrix)) <> "On Account")) Then
  loc_14B6F7A:       Set var_8C = Me.TxtVtYpe
  loc_14B6F80:       Call 0.Method_Proc_185_154_14B795C0 (0, var_A4, var_A8, CVar(CLng(2)), CVar(CLng(Me.FGridRef.Row)), CVar(CLng(Me.FGridRef.Row)), CVar(CLng(1)) And (var_A8 <> "Ag.Ref."))
  loc_14B6F88:       var_130 = var_A4.Tag
  loc_14B6F9E:       var_BC = "-"
  loc_14B6FA3:       var_120 = (Trim(CVar(var_A8)) + var_BC)
  loc_14B6FB0:       Set var_AC = Me.TxtVno
  loc_14B6FB6:       Call 0.Method_Proc_185_154_14B795C0 (0, var_110, CVar(CStr(var_A4.TextMatrix))), (Trim(CVar(CStr(var_A4.TextMatrix)))) = vbNullString), CVar(CLng(2)))
  loc_14B6FCD:       var_1CC = (var_BC + Trim(CVar(var_110)))
  loc_14B6FD2:       var_1F0 = CVar(CStr(Me.FGridRef.Row)) 'String
  loc_14B6FDA:       Set var_1BC = Me.FGridRef
  loc_14B6FE0:       LateIdCallSt
  loc_14B7008:     End If
  loc_14B701B:     var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B7023:     var_DC = CVar(CLng(8)) 'Long
  loc_14B702C:     Set var_A4 = Me.FGridRef
  loc_14B7065:     If (Trim(CVar(CStr(var_A4.TextMatrix)))) = vbNullString) Then
  loc_14B7094:       Set var_8C = Me.VchDt
  loc_14B709A:       Call 0.Method_Proc_185_154_14B795C0 (0, var_A4, var_A8, CVar(CLng(8)), CVar(CLng(Me.FGridRef.Row)), CVar(CLng(8)))
  loc_14B70A2:       var_BC = var_A4.Text
  loc_14B70AA:       var_FC = CVar(var_A8) 'String
  loc_14B70B2:       Set var_110 = Me.FGridRef
  loc_14B70B8:       LateIdCallSt
  loc_14B70D2:     End If
  loc_14B7115:     If ((Me.LblRefAdjDrCrBal.Caption = "Dr") Or (Me.LblRefAdjDrCrBal.Caption = "By")) Then
  loc_14B712B:       var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B7133:       var_DC = CVar(CLng(3)) 'Long
  loc_14B7153:       var_160 = Trim(CVar(CStr(Me.FGridRef.TextMatrix))))
  loc_14B715B:       var_10C = vbNullString
  loc_14B7178:       var_130 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B71D6:       If CBool(CVar(CLng(4)) And (Trim(CVar(CStr(Me.FGridRef.TextMatrix)))) = vbNullString)) Then
  loc_14B7209:         var_DC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B7211:         var_10C = CVar(CLng(4)) 'Long
  loc_14B723E:         var_178 = CVar(CStr(Format(CVar(Val(Me.LblRefAdjBal.Caption)), "0.00"))) 'String
  loc_14B7246:         Set var_AC = Me.FGridRef
  loc_14B724C:         LateIdCallSt
  loc_14B726D:       End If
  loc_14B7270:     Else
  loc_14B72B3:       If ((Me.LblRefAdjDrCrBal.Caption = "Cr") Or (Me.LblRefAdjDrCrBal.Caption = "By")) Then
  loc_14B72C9:         var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B72D1:         var_DC = CVar(CLng(3)) 'Long
  loc_14B72F1:         var_160 = Trim(CVar(CStr(Me.FGridRef.TextMatrix))))
  loc_14B72F9:         var_10C = vbNullString
  loc_14B7316:         var_130 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B7374:         If CBool(CVar(CLng(4)) And (Trim(CVar(CStr(Me.FGridRef.TextMatrix)))) = vbNullString)) Then
  loc_14B73A7:           var_DC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B73AF:           var_10C = CVar(CLng(3)) 'Long
  loc_14B73DC:           var_178 = CVar(CStr(Format(CVar(Val(Me.LblRefAdjBal.Caption)), "0.00"))) 'String
  loc_14B73E4:           Set var_AC = Me.FGridRef
  loc_14B73EA:           LateIdCallSt
  loc_14B740B:         End If
  loc_14B740B:       End If
  loc_14B740B:     End If
  loc_14B740E:   Else
  loc_14B7415:     If (var_A0 = CLng(2)) Then
  loc_14B743C:       Set var_A4 = Me.FGridRef
  loc_14B744D:       var_A8 = CStr(var_A4.TextMatrix))
  loc_14B7466:       If (var_A8 = "Ag.Ref.") Then
  loc_14B74B7:         Set var_8C = Me.TxtGrid
  loc_14B74BD:         Call 0.Method_Proc_185_154_14B795C0 (arg_C, var_A4, var_A8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), CVar(CLng(1)), CVar(CLng(Me.FGridRef.Row)), var_AC)
  loc_14B74C5:         var_178 = var_A4.Text
  loc_14B74DD:         If (1 Or (var_A8 = vbNullString)) Then
  loc_14B74F3:           var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B74FB:           var_DC = CVar(CLng(2)) 'Long
  loc_14B7500:           var_10C = vbNullString
  loc_14B750A:           Set var_A4 = Me.FGridRef
  loc_14B7510:           LateIdCallSt
  loc_14B7525:         Else
  loc_14B7538:           var_CC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B7540:           var_EC = CVar(CLng(2)) 'Long
  loc_14B7562:           var_A4 = Me.Fields.Item("RefNo")
  loc_14B7573:           var_120 = CVar(CStr(var_A4.Value)) 'String
  loc_14B757B:           Set var_110 = Me.FGridRef
  loc_14B7581:           LateIdCallSt
  loc_14B759D:         End If
  loc_14B75AC:         Me.DGRefNo.Visible = False
  loc_14B75B7:       Else
  loc_14B75E4:         Set var_8C = Me.TxtGrid
  loc_14B75EA:         Call 0.Method_Proc_185_154_14B795C0 (arg_C, var_A4, var_A8, CVar(CLng(2)), CVar(CLng(Me.FGridRef.Row)), var_110, var_120)
  loc_14B75F2:         var_EC = var_A4.Text
  loc_14B75FA:         var_FC = CVar(var_A8) 'String
  loc_14B7602:         Set var_110 = Me.FGridRef
  loc_14B7608:         LateIdCallSt
  loc_14B7622:       End If
  loc_14B7625:     Else
  loc_14B762C:       If (var_A0 = CLng(3)) Then
  loc_14B763C:         Set var_8C = Me.TxtGrid
  loc_14B7642:         Call 0.Method_Proc_185_154_14B795C0 (arg_C, var_A4, var_A8, var_110, var_FC, var_CC)
  loc_14B764A:         var_A4 = var_A4.Text
  loc_14B7662:         var_CC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B766A:         var_EC = CVar(CLng(3)) 'Long
  loc_14B7696:         var_178 = CVar(CStr(Format(CVar(var_A8), "0.00"))) 'String
  loc_14B769E:         Set var_110 = Me.FGridRef
  loc_14B76A4:         LateIdCallSt
  loc_14B76D7:         var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B76DF:         var_DC = CVar(CLng(3)) 'Long
  loc_14B76F9:         var_A8 = CStr(Me.FGridRef.TextMatrix))
  loc_14B7717:         If (CDbl(Val(var_A8)) > CDbl(0)) Then
  loc_14B772D:           var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B7735:           var_DC = CVar(CLng(4)) 'Long
  loc_14B773A:           var_10C = "0.00"
  loc_14B7744:           Set var_A4 = Me.FGridRef
  loc_14B774A:           LateIdCallSt
  loc_14B775C:         End If
  loc_14B775F:       Else
  loc_14B7766:         If (var_A0 = CLng(4)) Then
  loc_14B7776:           Set var_8C = Me.TxtGrid
  loc_14B777C:           Call 0.Method_Proc_185_154_14B795C0 (arg_C, var_A4, var_A8, var_A4, var_10C, var_DC, var_BC)
  loc_14B7784:           var_DC = var_A4.Text
  loc_14B779C:           var_CC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B77A4:           var_EC = CVar(CLng(4)) 'Long
  loc_14B77D0:           var_178 = CVar(CStr(Format(CVar(var_A8), "0.00"))) 'String
  loc_14B77D8:           Set var_110 = Me.FGridRef
  loc_14B77DE:           LateIdCallSt
  loc_14B7811:           var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B7819:           var_DC = CVar(CLng(4)) 'Long
  loc_14B7833:           var_A8 = CStr(Me.FGridRef.TextMatrix))
  loc_14B7851:           If (CDbl(Val(var_A8)) > CDbl(0)) Then
  loc_14B7867:             var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B786F:             var_DC = CVar(CLng(3)) 'Long
  loc_14B7874:             var_10C = "0.00"
  loc_14B787E:             Set var_A4 = Me.FGridRef
  loc_14B7884:             LateIdCallSt
  loc_14B7896:           End If
  loc_14B7899:         Else
  loc_14B78A0:           If (var_A0 = CLng(8)) Then
  loc_14B78AD:             Set var_8C = Me.TxtGrid
  loc_14B78B3:             Call 0.Method_Proc_185_154_14B795C0 (arg_C, var_A4, var_A4, var_10C, var_DC, var_BC, var_DC)
  loc_14B78BC:             Set var_110 = Me.FGridRef
  loc_14B78ED:             Call 0.Method_arg_184 (var_A4, var_A8, CVar(CLng(8)), CVar(CLng(var_110.Row)), CVar(CLng(var_110.Row)), var_110)
  loc_14B78F5:             var_FC = CVar(var_A8) 'String
  loc_14B78FD:             Set var_168 = Me.FGridRef
  loc_14B7903:             LateIdCallSt
  loc_14B791D:           End If
  loc_14B791D:         End If
  loc_14B791D:       End If
  loc_14B791D:     End If
  loc_14B791D:   End If
  loc_14B791D: End If
  loc_14B791D: Call Proc_185_162_11F7928(var_168, var_FC, var_178, 1)
  loc_14B7927: Proc_185_154_14B795C = &HFF
  loc_14B792D: ' Referenced from: 14B6C78
  loc_14B7933: Call 0.Method_arg_50 (var_A8, 1)
  loc_14B7948: Proc_183_57_104B0BC(var_A8, "TxtGridLeave")
  loc_14B7954: Proc_185_154_14B795C = var_EC
End Sub

Public Sub Proc_185_155_139BFE4
  'Data Table: 5C26BC
  Dim var_9C As Double
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_148 As String
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_90 As String
  Dim Me As Recordset15
  Dim var_174 As String
  Dim var_178 As Variant
  Dim var_D0 As Variant
  Dim var_184 As Recordset15
  Dim var_194 As Double
  Dim var_18C As TextBox
  loc_139B6FC: On Error Goto loc_139BFBB
  loc_139B70B: Me.FrameRef.Visible = False
  loc_139B73A: Call Proc_185_145_E9CA60(CInt(Val(Me.FrameRef.Tag)))
  loc_139B76A: For var_B0 = 1 To CInt((CLng(Me.FGridRef.Rows) - 1)): var_86 = var_B0 'Integer
  loc_139B774:   var_100 = CVar(CLng(var_86)) 'Long
  loc_139B77C:   var_120 = CVar(CLng(4)) 'Long
  loc_139B7A5:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_139B7AD:   var_E0 = CVar(CLng(3)) 'Long
  loc_139B7ED:   If (CDbl((Val(CStr(Me.FGridRef.TextMatrix))) + Val(CStr(Me.FGridRef.TextMatrix))))) > CDbl(0)) Then
  loc_139B7F4:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_139B7FC:     var_E0 = CVar(CLng(1)) 'Long
  loc_139B827:     If (CStr(Me.FGridRef.TextMatrix)) <> "On Account") Then
  loc_139B82E:       var_C0 = CVar(CLng(var_86)) 'Long
  loc_139B836:       var_E0 = CVar(CLng(2)) 'Long
  loc_139B850:       var_144 = CVar(CStr(Me.FGridRef.TextMatrix))) 'String
  loc_139B856:       var_158 = Trim(var_144)
  loc_139B872:       If (var_158 = vbNullString) Then
  loc_139B88E:         MsgBox("Ref.No.Needed", 0, var_144, var_158, var_168)
  loc_139B89E:         Exit Sub
  loc_139B89F:       End If
  loc_139B89F:     End If
  loc_139B89F:   End If
  loc_139B8A2: Next var_B0 'Integer
  loc_139B8BE: If (Me.RecordCount > 0) Then
  loc_139B8CA:   Me.Sort = "V_SNo ASC"
  loc_139B8F2:   var_C0 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_139B8F7:   var_E0 = 1
  loc_139B93A:   var_174 = "V_SNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix))))
  loc_139B943:   Me.Find var_174, 0, 1
  loc_139B971:   If (Me.EOF = 0) Then
  loc_139B974:     ' Referenced from: 139BA47
  loc_139B999:     var_144 = Me.Fields.Item("V_SNo").Value
  loc_139B9C4:     var_D0 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_139BA0F:     If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_139BA1D:       Me.Delete
  loc_139BA28:       Me.MoveNext
  loc_139BA41:       If (Me.EOF = &HFF) Then
  loc_139BA44:         GoTo loc_139BA4A
  loc_139BA47:       End If
  loc_139BA47:       GoTo loc_139B974
  loc_139BA4A:       ' Referenced from: 139BA44
  loc_139BA4A:     End If
  loc_139BA4A:   End If
  loc_139BA4A: End If
  loc_139BA6F: For var_180 = 1 To CInt((CLng(Me.FGridRef.Rows) - 1)): var_86 = var_180 'Integer
  loc_139BA81:   var_E0 = CVar(CLng(3)) 'Long
  loc_139BA9B:   var_90 = CStr(Me.FGridRef.TextMatrix))
  loc_139BAAC:   var_100 = CVar(CLng(var_86)) 'Long
  loc_139BAF1:   If (CVar(CLng(4)) Or (CDbl(Val(CStr(Me.FGridRef.TextMatrix)))) > CDbl(0))) Then
  loc_139BAFA:     Set var_184 = global_100 
  loc_139BB09:     var_184.AddNew CVar(CLng(var_86)), var_D0
  loc_139BB31:     var_C0 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_139BB36:     var_E0 = 1
  loc_139BB54:     var_148 = CStr(Me.FGrid1.TextMatrix))
  loc_139BB80:     var_184.Fields.Item("V_SNo").Value = CVar(Val(var_148))
  loc_139BB9E:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_139BBA6:     var_E0 = CVar(CLng(5)) 'Long
  loc_139BBE3:     var_184.Fields.Item("DocId").Value = CVar(CStr(Me.FGridRef.TextMatrix)))
  loc_139BC1B:     var_C0 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_139BC20:     var_E0 = 2
  loc_139BC61:     var_184.Fields.Item("SUBCODE").Value = CVar(CStr(Me.FGrid1.TextMatrix)))
  loc_139BC7F:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_139BC87:     var_E0 = CVar(CLng(1)) 'Long
  loc_139BCC4:     var_184.Fields.Item("AgRefType").Value = CVar(CStr(Me.FGridRef.TextMatrix)))
  loc_139BCDD:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_139BCE5:     var_E0 = CVar(CLng(2)) 'Long
  loc_139BD22:     var_184.Fields.Item("AgRefNo").Value = CVar(CStr(Me.FGridRef.TextMatrix)))
  loc_139BD3B:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_139BD43:     var_E0 = CVar(CLng(3)) 'Long
  loc_139BD89:     var_184.Fields.Item("CR").Value = CVar(Val(CStr(Me.FGridRef.TextMatrix))))
  loc_139BDA1:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_139BDA9:     var_E0 = CVar(CLng(4)) 'Long
  loc_139BDEF:     var_184.Fields.Item("DR").Value = CVar(Val(CStr(Me.FGridRef.TextMatrix))))
  loc_139BE0F:     var_E0 = CVar(CLng(8)) 'Long
  loc_139BE44:     var_178 = var_184.Fields.Item("DueDate")
  loc_139BE4C:     var_178.Value = CVar(CStr(Me.FGridRef.TextMatrix)))
  loc_139BE6C:     var_184.Update CVar(CLng(var_86)), var_D0
  loc_139BE73:     Set var_184 = Nothing 
  loc_139BE77:   End If
  loc_139BE7A: Next var_180 'Integer
  loc_139BE99: var_9C = Val(Me.FrameRef.Tag)
  loc_139BEB6: var_194 = Val(Me.FrameRef.Tag)
  loc_139BEC7: Set var_134 = Me.TxtCrDr
  loc_139BECD: Call 0.Method_Proc_185_155_139BFE40 (CInt(var_9C), var_178, var_148)
  loc_139BEF0: Set var_188 = Me.TxtCrDr
  loc_139BEF6: Call 0.Method_Proc_185_155_139BFE40 (CInt(var_178.Text), var_18C, var_174)
  loc_139BEFE: (var_148 = "Cr") = var_18C.Text
  loc_139BF26: If (var_9C Or (var_174 = "To")) Then
  loc_139BF51:   Set var_134 = Me.TxtCr
  loc_139BF57:   Call 0.Method_Proc_185_155_139BFE40 (CInt(Val(Me.FrameRef.Tag)), var_178)
  loc_139BF5F:   var_178.SetFocus
  loc_139BF73: Else
  loc_139BF80:   var_90 = Me.FrameRef.Tag
  loc_139BF8D:   var_9C = Val(var_90)
  loc_139BF9B:   Set var_134 = Me.TxtDr
  loc_139BFA1:   Call 0.Method_Proc_185_155_139BFE40 (CInt(var_9C), var_178)
  loc_139BFA9:   var_178.SetFocus
  loc_139BFBA: End If
  loc_139BFBA: Exit Sub
  loc_139BFBB: ' Referenced from: 139B6FC
  loc_139BFC1: Call 0.Method_arg_50 (var_90, var_9C)
  loc_139BFD6: Proc_183_57_104B0BC(var_90, "RefAdjOk")
  loc_139BFE2: Exit Sub
End Sub

Public Sub Proc_185_156_1116EC8
  'Data Table: 5C26BC
  Dim var_AC As Variant
  Dim var_B0 As Variant
  loc_1116B6C: On Error Goto loc_1116EA0
  loc_1116B8A: Me.FGrid1.Rows = 0
  loc_1116B9E: Set var_AC = Me.TxtVtYpe
  loc_1116BA4: Call 0.Method_Proc_185_156_1116EC80 (0, var_B0)
  loc_1116BAC: var_B0.Text = vbNullString
  loc_1116BC4: Set var_AC = Me.TxtVtYpe
  loc_1116BCA: Call 0.Method_Proc_185_156_1116EC80 (0, var_B0)
  loc_1116BD2: var_B0.Tag = vbNullString
  loc_1116BEA: Set var_AC = Me.TxtVno
  loc_1116BF0: Call 0.Method_Proc_185_156_1116EC80 (0, var_B0)
  loc_1116BF8: var_B0.Text = vbNullString
  loc_1116C11: Me.LblVPrefix.Caption = vbNullString
  loc_1116C25: Set var_AC = Me.TxtAcName
  loc_1116C2B: Call 0.Method_Proc_185_156_1116EC8C (var_B2, var_86)
  loc_1116C39: For var_B6 = 0 To (var_B2 - 1): 0 = var_B6 'Integer
  loc_1116C4C:   Set var_AC = Me.TxtAcName
  loc_1116C52:   Call 0.Method_Proc_185_156_1116EC80 (var_86, var_B0)
  loc_1116C5A:   var_B0.Text = vbNullString
  loc_1116C73:   Set var_AC = Me.TxtAcName
  loc_1116C79:   Call 0.Method_Proc_185_156_1116EC80 (var_86, var_B0)
  loc_1116C81:   var_B0.Tag = vbNullString
  loc_1116C9A:   Set var_AC = Me.TxtCrDr
  loc_1116CA0:   Call 0.Method_Proc_185_156_1116EC80 (var_86, var_B0)
  loc_1116CA8:   var_B0.Text = vbNullString
  loc_1116CC1:   Set var_AC = Me.TxtCrDr
  loc_1116CC7:   Call 0.Method_Proc_185_156_1116EC80 (var_86, var_B0)
  loc_1116CCF:   var_B0.Tag = vbNullString
  loc_1116CE8:   Set var_AC = Me.TxtCr
  loc_1116CEE:   Call 0.Method_Proc_185_156_1116EC80 (var_86, var_B0)
  loc_1116CF6:   var_B0.Text = vbNullString
  loc_1116D0F:   Set var_AC = Me.TxtDr
  loc_1116D15:   Call 0.Method_Proc_185_156_1116EC80 (var_86, var_B0)
  loc_1116D1D:   var_B0.Text = vbNullString
  loc_1116D36:   Set var_AC = Me.TxtNar
  loc_1116D3C:   Call 0.Method_Proc_185_156_1116EC80 (var_86, var_B0)
  loc_1116D44:   var_B0.Text = vbNullString
  loc_1116D5D:   Set var_AC = Me.LblCb
  loc_1116D63:   Call 0.Method_Proc_185_156_1116EC80 (var_86, var_B0)
  loc_1116D6B:   var_B0.Caption = vbNullString
  loc_1116D84:   Set var_AC = Me.LblNar
  loc_1116D8A:   Call 0.Method_Proc_185_156_1116EC80 (var_86, var_B0)
  loc_1116D92:   var_B0.Caption = vbNullString
  loc_1116DA1: Next var_B6 'Integer
  loc_1116DB2: Set var_AC = Me.TxtGlb
  loc_1116DB8: Call 0.Method_Proc_185_156_1116EC80 (0, var_B0)
  loc_1116DC0: var_B0.Text = vbNullString
  loc_1116DD8: Set var_AC = Me.TXTChDate
  loc_1116DDE: Call 0.Method_Proc_185_156_1116EC80 (0, var_B0)
  loc_1116DE6: var_B0.Text = vbNullString
  loc_1116DFE: Set var_AC = Me.TxtCHno
  loc_1116E04: Call 0.Method_Proc_185_156_1116EC80 (0, var_B0)
  loc_1116E0C: var_B0.Text = vbNullString
  loc_1116E24: Set var_AC = Me.TXTClrDate
  loc_1116E2A: Call 0.Method_Proc_185_156_1116EC80 (0, var_B0)
  loc_1116E32: var_B0.Text = vbNullString
  loc_1116E4A: Set var_AC = Me.LblDrAmt
  loc_1116E50: Call 0.Method_Proc_185_156_1116EC80 (0, var_B0)
  loc_1116E58: var_B0.Caption = vbNullString
  loc_1116E70: Set var_AC = Me.LblCrAmt
  loc_1116E76: Call 0.Method_Proc_185_156_1116EC80 (0, var_B0)
  loc_1116E7E: var_B0.Caption = vbNullString
  loc_1116E97: Me.lblDocId.Caption = vbNullString
  loc_1116E9F: Exit Sub
  loc_1116EA0: ' Referenced from: 1116B6C
  loc_1116EA6: Call 0.Method_arg_50 (var_BC)
  loc_1116EAE: var_C4 = "MakeEmpty"
  loc_1116EBB: Proc_183_57_104B0BC(var_BC)
  loc_1116EC7: Exit Sub
End Sub

Public Sub Proc_185_157_11F0D18(arg_C, arg_10) '11F0D18
  'Data Table: 5C26BC
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_88 As Fields15
  loc_11F0888: On Error Goto loc_11F0CEE
  loc_11F0898: Set var_88 = Me.TxtCrDr
  loc_11F089E: Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F08A6: var_8C.Visible = arg_10
  loc_11F08BF: Set var_88 = Me.TxtAcName
  loc_11F08C5: Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F08CD: var_8C.Visible = arg_10
  loc_11F08E6: Set var_88 = Me.TxtCr
  loc_11F08EC: Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F08F4: var_8C.Visible = arg_10
  loc_11F090D: Set var_88 = Me.TxtDr
  loc_11F0913: Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F091B: var_8C.Visible = arg_10
  loc_11F0934: Set var_88 = Me.TxtNar
  loc_11F093A: Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0942: var_8C.Visible = arg_10
  loc_11F0954: If (arg_10 = 0) Then
  loc_11F0964:   Set var_88 = Me.LblCb
  loc_11F096A:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0972:   var_8C.Caption = vbNullString
  loc_11F098B:   Set var_88 = Me.TxtCrDr
  loc_11F0991:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0999:   var_8C.Text = vbNullString
  loc_11F09B2:   Set var_88 = Me.TxtAcName
  loc_11F09B8:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F09C0:   var_8C.Text = vbNullString
  loc_11F09D9:   Set var_88 = Me.TxtCr
  loc_11F09DF:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F09E7:   var_8C.Text = vbNullString
  loc_11F0A00:   Set var_88 = Me.TxtDr
  loc_11F0A06:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0A0E:   var_8C.Text = vbNullString
  loc_11F0A27:   Set var_88 = Me.TxtNar
  loc_11F0A2D:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0A35:   var_8C.Text = vbNullString
  loc_11F0A44: Else
  loc_11F0A51:   Set var_88 = Me.TxtCrDr
  loc_11F0A57:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0A79:   Set var_94 = Me.TxtCrDr
  loc_11F0A7F:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_98)
  loc_11F0AA7:   If ((var_8C.Text = "Cr") Or (var_98.Text = "To")) Then
  loc_11F0AB6:     Set var_88 = Me.TxtDr
  loc_11F0ABC:     Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0AC4:     var_8C.Visible = False
  loc_11F0AD0:   End If
  loc_11F0ADD:   Set var_88 = Me.TxtCrDr
  loc_11F0AE3:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0AEB:   var_90 = var_8C.Text
  loc_11F0B05:   Set var_94 = Me.TxtCrDr
  loc_11F0B0B:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_98)
  loc_11F0B33:   If ((var_90 = "Dr") Or (var_98.Text = "By")) Then
  loc_11F0B42:     Set var_88 = Me.TxtCr
  loc_11F0B48:     Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0B50:     var_8C.Visible = False
  loc_11F0B5C:   End If
  loc_11F0B5C: End If
  loc_11F0B6E: If ((global_112 = "Y") And (arg_10 = &HFF)) Then
  loc_11F0B7D:   Set var_88 = Me.LblNar
  loc_11F0B83:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0B8B:   var_8C.Visible = True
  loc_11F0BA4:   Set var_88 = Me.LblNar
  loc_11F0BAA:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0BB2:   var_8C.Caption = "Narration"
  loc_11F0BCB:   Set var_88 = Me.TxtNar
  loc_11F0BD1:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0BD9:   var_8C.Visible = arg_10
  loc_11F0BE8: Else
  loc_11F0BF5:   Set var_88 = Me.LblNar
  loc_11F0BFB:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0C03:   var_8C.Caption = vbNullString
  loc_11F0C1B:   Set var_88 = Me.LblNar
  loc_11F0C21:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0C29:   var_8C.Visible = False
  loc_11F0C41:   Set var_88 = Me.TxtNar
  loc_11F0C47:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0C4F:   var_8C.Visible = False
  loc_11F0C5B: End If
  loc_11F0C78: var_8C = Me.Fields.Item("ShowCurrentBalance")
  loc_11F0C9A: If (var_8C.Value = "Yes") Then
  loc_11F0CAA:   Set var_88 = Me.LblCb
  loc_11F0CB0:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0CB8:   var_8C.Visible = arg_10
  loc_11F0CC7: Else
  loc_11F0CD3:   Set var_88 = Me.LblCb
  loc_11F0CD9:   Call 0.Method_Proc_185_157_11F0D180 (arg_C, var_8C)
  loc_11F0CE1:   var_8C.Visible = False
  loc_11F0CED: End If
  loc_11F0CED: Exit Sub
  loc_11F0CEE: ' Referenced from: 11F0888
  loc_11F0CF4: Call 0.Method_arg_50 (var_90)
  loc_11F0CFC: var_E0 = "MakeVisible"
  loc_11F0D09: Proc_183_57_104B0BC(var_90)
  loc_11F0D15: Exit Sub
End Sub

Public Sub Proc_185_158_1019368(arg_C) '1019368
  'Data Table: 5C26BC
  Dim var_98 As TextBox
  loc_1019140: On Error Goto loc_101933F
  loc_101914F: Set var_8C = Me.TxtAcName
  loc_1019155: Call 0.Method_Proc_185_158_1019368C (var_8E, var_86)
  loc_1019163: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_1019176:   Set var_8C = Me.TxtAcName
  loc_101917C:   Call 0.Method_Proc_185_158_10193680 (var_86, var_98)
  loc_1019184:   var_98.Locked = arg_C
  loc_101919D:   Set var_8C = Me.TxtCrDr
  loc_10191A3:   Call 0.Method_Proc_185_158_10193680 (var_86, var_98)
  loc_10191AB:   var_98.Locked = arg_C
  loc_10191C4:   Set var_8C = Me.TxtCr
  loc_10191CA:   Call 0.Method_Proc_185_158_10193680 (var_86, var_98)
  loc_10191D2:   var_98.Locked = arg_C
  loc_10191EB:   Set var_8C = Me.TxtDr
  loc_10191F1:   Call 0.Method_Proc_185_158_10193680 (var_86, var_98)
  loc_10191F9:   var_98.Locked = arg_C
  loc_1019212:   Set var_8C = Me.TxtNar
  loc_1019218:   Call 0.Method_Proc_185_158_10193680 (var_86, var_98)
  loc_1019220:   var_98.Locked = arg_C
  loc_101922F: Next var_92 'Integer
  loc_1019240: Set var_8C = Me.TxtVtYpe
  loc_1019246: Call 0.Method_Proc_185_158_10193680 (0, var_98)
  loc_101924E: var_98.Locked = arg_C
  loc_1019266: Set var_8C = Me.TxtVno
  loc_101926C: Call 0.Method_Proc_185_158_10193680 (0, var_98)
  loc_1019274: var_98.Locked = arg_C
  loc_101928C: Set var_8C = Me.VchDt
  loc_1019292: Call 0.Method_Proc_185_158_10193680 (0, var_98)
  loc_101929A: var_98.Locked = arg_C
  loc_10192B2: Set var_8C = Me.TxtGlb
  loc_10192B8: Call 0.Method_Proc_185_158_10193680 (0, var_98)
  loc_10192C0: var_98.Locked = arg_C
  loc_10192D8: Set var_8C = Me.TXTChDate
  loc_10192DE: Call 0.Method_Proc_185_158_10193680 (0, var_98)
  loc_10192E6: var_98.Locked = arg_C
  loc_10192FE: Set var_8C = Me.TxtCHno
  loc_1019304: Call 0.Method_Proc_185_158_10193680 (0, var_98)
  loc_101930C: var_98.Locked = arg_C
  loc_1019324: Set var_8C = Me.TXTClrDate
  loc_101932A: Call 0.Method_Proc_185_158_10193680 (0, var_98)
  loc_1019332: var_98.Locked = arg_C
  loc_101933E: Exit Sub
  loc_101933F: ' Referenced from: 1019140
  loc_1019345: Call 0.Method_arg_50 (var_9C)
  loc_101934D: var_A4 = "LockFields"
  loc_101935A: Proc_183_57_104B0BC(var_9C)
  loc_1019366: Exit Sub
End Sub

Public Sub Proc_185_159_1683580
  'Data Table: 5C26BC
  Dim var_90 As Variant
  Dim var_B8 As String
  Dim var_E0 As Variant
  Dim var_A4 As Variant
  Dim var_DC As Variant
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim unk_5C26D2 As Connection15
  Dim var_8C As Recordset15
  Dim var_88 As Integer
  Dim Me As Variant
  Dim var_164 As Variant
  loc_1681D78: On Error Goto loc_1683557
  loc_1681DB4: If (Proc_183_2_E5AE94(CVar(Me.Recordset15.Fields.Item("DefaultCrAC"))) <> vbNullString) Then
  loc_1681DE5:   global_172 = Proc_183_2_E5AE94(CVar(Me.Recordset15.Fields.Item("DefaultCrAC")))
  loc_1681DF5: Else
  loc_1681DFB:   global_172 = vbNullString
  loc_1681DFF: End If
  loc_1681E38: If (Proc_183_2_E5AE94(CVar(Me.Recordset15.Fields.Item("DefaultDrAC"))) <> vbNullString) Then
  loc_1681E69:   global_176 = Proc_183_2_E5AE94(CVar(Me.Recordset15.Fields.Item("DefaultDrAC")))
  loc_1681E79: Else
  loc_1681E7F:   global_176 = vbNullString
  loc_1681E83: End If
  loc_1681E9A: var_A4 = Me.Recordset15.Fields.Item("FirstDrCr")
  loc_1681EBC: If (Proc_183_2_E5AE94(CVar(var_A4)) <> vbNullString) Then
  loc_1681EC8:   Set var_90 = Me.TxtAcName
  loc_1681ECE:   Call 0.Method_Proc_185_159_16835800 (0)
  loc_1681EF7:   If (Trim(CVar(var_A4)) = vbNullString) Then
  loc_1681F2E:     Set var_DC = Me.TxtCrDr
  loc_1681F34:     Call 0.Method_Proc_185_159_16835800 (0, var_E0)
  loc_1681F3C:     var_E0.Text = Proc_183_2_E5AE94(CVar(Me.TxtAcName.Fields.Item("FirstDrCr")))
  loc_1681F50:   End If
  loc_1681F50: End If
  loc_1681F85: global_120 = CStr(Trim(CVar(Me.Recordset15.Fields.Item("NCat"))))
  loc_1681FC7: global_124 = CStr(Me.Recordset15.Fields.Item("V_Type").Value)
  loc_1682006: global_112 = Proc_183_2_E5AE94(CVar(Me.Recordset15.Fields.Item("Separate_Narr")))
  loc_1682041: global_116 = Proc_183_2_E5AE94(CVar(Me.Recordset15.Fields.Item("Common_Narr")))
  loc_1682085: Set var_DC = Me.TxtVtYpe
  loc_168208B: Call 0.Method_Proc_185_159_16835800 (0, var_E0)
  loc_1682093: var_E0.Text = CStr(Me.Recordset15.Fields.Item("Description").Value)
  loc_16820E0: Set var_DC = Me.TxtVtYpe
  loc_16820E6: Call 0.Method_Proc_185_159_16835800 (0, var_E0)
  loc_16820EE: var_E0.Tag = CStr(Me.Recordset15.Fields.Item("V_Type").Value)
  loc_1682139: Me.LblVPrefix.Caption = Proc_183_2_E5AE94(CVar(Me.Recordset15.Fields.Item("Prefix")))
  loc_16821A3: Set var_DC = Me.TxtVno
  loc_16821A9: Call 0.Method_Proc_185_159_16835800 (0, var_E0)
  loc_16821B1: var_E0.Enabled = CBool(IIf((Me.Recordset15.Fields.Item("Number_Method").Value = "Automatic"), False, True))
  loc_16821DA: If (CInt(global_110) = 1) Then
  loc_1682219:   If (Me.Recordset15.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_168224B:     var_C8 = (Me.Recordset15.Fields.Item("start_srl_no").Value + 1)
  loc_168225C:     Set var_DC = Me.TxtVno
  loc_1682262:     Call 0.Method_Proc_185_159_16835800 (0, var_E0)
  loc_168226A:     var_E0.Text = CStr(Trim(CVar(Me.Recordset15.Fields.Item("NCat"))))
  loc_1682287:   Else
  loc_16822C3:     If (Me.Recordset15.Fields.Item("Number_Method").Value = "SemiAuto") Then
  loc_1682302:       var_C8 = "SELECT MAX(V_NO) as vno from ledger WHERE V_TYPE='" & Me.Recordset15.Fields.Item("V_Type").Value 
  loc_168233E:       unk_5C26D2.Execute CStr(var_C8 & "' AND V_PREFIX='" & CVar(Me.LblVPrefix.Caption) & "'"), var_164, -1
  loc_1682349:       Set var_8C = var_E0
  loc_1682371:       var_168 = var_8C.RecordCount
  loc_168237F:       If (var_168 > 0) Then
  loc_1682399:         var_A4 = var_8C.Fields.Item("VNo")
  loc_16823A8:         Proc_183_3_E7DD58(var_C8, CVar(var_A4))
  loc_16823B5:         var_D8 = (var_C8 + 1)
  loc_16823C6:         Set var_DC = Me.TxtVno
  loc_16823CC:         Call 0.Method_Proc_185_159_16835800 (0, var_E0, CStr(var_C8 & "' AND V_PREFIX='"))
  loc_16823D4:         var_E0.Text = var_E0
  loc_16823F1:       Else
  loc_16823F5:         var_B8 = CStr(1)
  loc_1682401:         Set var_90 = Me.TxtVno
  loc_1682407:         Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_168240F:         var_A4.Text = var_B8
  loc_168241E:       End If
  loc_168241E:     End If
  loc_168241E:   End If
  loc_168241E: End If
  loc_1682476: Set var_DC = Me.TxtGlb
  loc_168247C: Call 0.Method_Proc_185_159_16835800 (0, var_E0)
  loc_1682484: var_E0.Visible = CBool(IIf((Me.Recordset15.Fields.Item("Common_Narr").Value = "Y"), True, False))
  loc_16824F9: Set var_DC = Me.Label1
  loc_16824FF: Call 0.Method_Proc_185_159_16835800 (3, var_E0)
  loc_1682507: var_E0.Visible = CBool(IIf((Me.Recordset15.Fields.Item("Common_Narr").Value = "Y"), True, False))
  loc_168257D: Me.Label6.Visible = CBool(IIf((Me.Recordset15.Fields.Item("ChqNo").Value = "Y"), True, False))
  loc_16825F0: Set var_DC = Me.TxtCHno
  loc_16825F6: Call 0.Method_Proc_185_159_16835800 (0, var_E0)
  loc_16825FE: var_E0.Visible = CBool(IIf((Me.Recordset15.Fields.Item("ChqNo").Value = "Y"), True, False))
  loc_1682674: Me.Label5.Visible = CBool(IIf((Me.Recordset15.Fields.Item("ChqDt").Value = "Y"), True, False))
  loc_16826E7: Set var_DC = Me.TXTChDate
  loc_16826ED: Call 0.Method_Proc_185_159_16835800 (0, var_E0)
  loc_16826F5: var_E0.Visible = CBool(IIf((Me.Recordset15.Fields.Item("ChqDt").Value = "Y"), True, False))
  loc_168276B: Me.Label7.Visible = CBool(IIf((Me.Recordset15.Fields.Item("CLGDT").Value = "Y"), True, False))
  loc_16827DE: Set var_DC = Me.TXTClrDate
  loc_16827E4: Call 0.Method_Proc_185_159_16835800 (0, var_E0)
  loc_16827EC: var_E0.Visible = CBool(IIf((Me.Recordset15.Fields.Item("CLGDT").Value = "Y"), True, False))
  loc_168280C: var_88 = 1020
  loc_1682824: var_90 = Me.Fields
  loc_168282C: var_A4 = var_90.Item("ShowCurrentBalance")
  loc_1682869: If CBool((var_A4.Value = "Yes") And (global_112 = "Y")) Then
  loc_1682871:   global_136 = 4
  loc_1682880:   If (CInt(global_110) <= 2) Then
  loc_1682889:     Call 0.Method_arg_1E8 (var_90, global_136)
  loc_1682898:     If TypeOf var_90 Is arg_1 Then
  loc_16828A1:       Call 0.Method_arg_1E8 (var_90, var_88)
  loc_16828C0:       If (var_90.index > CVar(global_136)) Then
  loc_16828D2:         Call 0.Method_Proc_185_159_16835800 (var_A4)
  loc_16828DA:         var_A4(0).TextBox.SetFocus
  loc_16828E6:       End If
  loc_16828E6:     End If
  loc_16828E6:   End If
  loc_16828E9: Else
  loc_16828FE:   var_90 = Me.Fields
  loc_1682906:   var_A4 = var_90.Item("ShowCurrentBalance")
  loc_168297D:   var_164 = (var_A4.Value = "Yes") And (global_112 = "N") Or (Me.Fields.Item("ShowCurrentBalance").Value = "No") And (global_112 = "Y")
  loc_1682999:   If CBool(var_164) Then
  loc_16829A1:     global_136 = 6
  loc_16829B0:     If (CInt(global_110) <= 2) Then
  loc_16829B9:       Call 0.Method_arg_1E8 (var_90)
  loc_16829C8:       If TypeOf var_90 Is arg_1 Then
  loc_16829D1:         Call 0.Method_arg_1E8 (var_90)
  loc_16829F0:         If (var_90.index > CVar(global_136)) Then
  loc_1682A02:           Call 0.Method_Proc_185_159_16835800 (global_136)
  loc_1682A0A:           var_A4(0).TextBox.SetFocus
  loc_1682A16:         End If
  loc_1682A16:       End If
  loc_1682A16:     End If
  loc_1682A19:   Else
  loc_1682A1E:     global_136 = &HB
  loc_1682A21:   End If
  loc_1682A21: End If
  loc_1682A28: For var_17C = 1 To 4: var_86 = var_17C 'Integer
  loc_1682A41:   Set var_90 = Me.LblShort
  loc_1682A47:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4, &HFFFF)
  loc_1682A4F:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2E(1)
  loc_1682A5E: Next var_17C 'Integer
  loc_1682A69: var_180 = global_120
  loc_1682A74: If (var_180 = "CNT") Then
  loc_1682A7F:   Call 0.Method_arg_64 (&H80FF80)
  loc_1682A8A:   Call 0.Method_arg_60 (var_168)
  loc_1682A9B:   Set var_90 = Me.Frame1
  loc_1682AA1:   Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_1682AA9:   var_A4.BackColor = var_168
  loc_1682ABC:   For var_184 = 1 To 4: var_86 = var_184 'Integer
  loc_1682AC8:     Call 0.Method_arg_60 (var_168)
  loc_1682ADF:     Set var_90 = Me.LblShort
  loc_1682AE5:     Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1682AED:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(var_168))
  loc_1682AFC:   Next var_184 'Integer
  loc_1682B09:   global_56 = &HC9DBB3
  loc_1682B14:   global_60 = -2147483630
  loc_1682B29:   Set var_90 = Me.LblShort
  loc_1682B2F:   Call 0.Method_Proc_185_159_16835800 (1, var_A4, &HFFFF00)
  loc_1682B37:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2E(global_60)
  loc_1682B49:   Call 0.Method_arg_60 (var_168)
  loc_1682B5B:   Me.PicDN.BackColor = var_168
  loc_1682B66: Else
  loc_1682B6E:   If (var_180 = "PMT") Then
  loc_1682B79:     Call 0.Method_arg_64 (&HFF8080)
  loc_1682B84:     Call 0.Method_arg_60 (var_168)
  loc_1682B95:     Set var_90 = Me.Frame1
  loc_1682B9B:     Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_1682BA3:     var_A4.BackColor = var_168
  loc_1682BB6:     For var_188 = 1 To 4:   var_86 = var_188 'Integer
  loc_1682BC2:       Call 0.Method_arg_60 (var_168, 1)
  loc_1682BD9:       Set var_90 = Me.LblShort
  loc_1682BDF:       Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1682BE7:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(var_168))
  loc_1682BF6:     Next var_188 'Integer
  loc_1682C03:     global_56 = &HC8D5EC
  loc_1682C0E:     global_60 = -2147483630
  loc_1682C23:     Set var_90 = Me.LblShort
  loc_1682C29:     Call 0.Method_Proc_185_159_16835800 (2, var_A4, &HFFFF00)
  loc_1682C31:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2E(global_60)
  loc_1682C43:     Call 0.Method_arg_60 (var_168)
  loc_1682C55:     Me.PicDN.BackColor = var_168
  loc_1682C60:   Else
  loc_1682C68:     If (var_180 = "RCT") Then
  loc_1682C73:       Call 0.Method_arg_64 (&HFFFF80)
  loc_1682C7E:       Call 0.Method_arg_60 (var_168)
  loc_1682C8F:       Set var_90 = Me.Frame1
  loc_1682C95:       Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_1682C9D:       var_A4.BackColor = var_168
  loc_1682CB0:       For var_18C = 1 To 4:     var_86 = var_18C 'Integer
  loc_1682CBC:         Call 0.Method_arg_60 (var_168, 1)
  loc_1682CD3:         Set var_90 = Me.LblShort
  loc_1682CD9:         Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1682CE1:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(var_168))
  loc_1682CF0:       Next var_18C 'Integer
  loc_1682CFD:       global_56 = &HDCD5BE
  loc_1682D08:       global_60 = -2147483630
  loc_1682D1D:       Set var_90 = Me.LblShort
  loc_1682D23:       Call 0.Method_Proc_185_159_16835800 (3, var_A4, &HFFFF00)
  loc_1682D2B:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2E(global_60)
  loc_1682D3D:       Call 0.Method_arg_60 (var_168)
  loc_1682D4F:       Me.PicDN.BackColor = var_168
  loc_1682D5A:     Else
  loc_1682D62:       If (var_180 = "JV") Then
  loc_1682D6D:         Call 0.Method_arg_64 (&H80FFFF)
  loc_1682D78:         Call 0.Method_arg_60 (var_168)
  loc_1682D89:         Set var_90 = Me.Frame1
  loc_1682D8F:         Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_1682D97:         var_A4.BackColor = var_168
  loc_1682DAA:         For var_190 = 1 To 4:       var_86 = var_190 'Integer
  loc_1682DB6:           Call 0.Method_arg_60 (var_168, 1)
  loc_1682DCD:           Set var_90 = Me.LblShort
  loc_1682DD3:           Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1682DDB:           Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(var_168))
  loc_1682DEA:         Next var_190 'Integer
  loc_1682DF7:         global_56 = &HD0E6E4
  loc_1682E02:         global_60 = -2147483630
  loc_1682E17:         Set var_90 = Me.LblShort
  loc_1682E1D:         Call 0.Method_Proc_185_159_16835800 (4, var_A4, &HFFFF00)
  loc_1682E25:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2E(global_60)
  loc_1682E37:         Call 0.Method_arg_60 (var_168)
  loc_1682E49:         Me.PicDN.BackColor = var_168
  loc_1682E51:       End If
  loc_1682E51:     End If
  loc_1682E51:   End If
  loc_1682E51: End If
  loc_1682E58: For var_194 = 0 To &HB: var_86 = var_194 'Integer
  loc_1682E6D:   Set var_90 = Me.TxtCrDr
  loc_1682E73:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4, CDbl(var_88))
  loc_1682E7B:   var_A4.Top = 0
  loc_1682E95:   Set var_90 = Me.TxtCrDr
  loc_1682E9B:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1682EA3:   var_A4.Left = CDbl(&HF)
  loc_1682EBE:   Set var_90 = Me.TxtAcName
  loc_1682EC4:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1682ECC:   var_A4.Top = CDbl(var_88)
  loc_1682EE7:   Set var_90 = Me.TxtAcName
  loc_1682EED:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1682EF5:   var_A4.Left = CDbl(330)
  loc_1682F10:   Set var_90 = Me.TxtCr
  loc_1682F16:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1682F1E:   var_A4.Top = CDbl(var_88)
  loc_1682F39:   Set var_90 = Me.TxtCr
  loc_1682F3F:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1682F47:   var_A4.Left = CDbl(9015)
  loc_1682F62:   Set var_90 = Me.TxtDr
  loc_1682F68:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1682F70:   var_A4.Top = CDbl(var_88)
  loc_1682F8B:   Set var_90 = Me.TxtDr
  loc_1682F91:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1682F99:   var_A4.Left = CDbl(7620)
  loc_1682FC2:   var_A4 = Me.Fields.Item("ShowCurrentBalance")
  loc_1682FE4:   If (var_A4.Value = "Yes") Then
  loc_1682FEE:     var_88 = (var_88 + 240)
  loc_1683000:     Set var_90 = Me.LblCb
  loc_1683006:     Call 0.Method_Proc_185_159_16835800 (var_86, var_A4, CDbl(var_88))
  loc_168300E:     var_A4.Top = var_88
  loc_1683028:     Set var_90 = Me.LblCb
  loc_168302E:     Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1683036:     var_A4.Left = CDbl(&HF)
  loc_1683042:   End If
  loc_168304D:   If (global_112 = "Y") Then
  loc_1683057:     var_88 = (var_88 + 240)
  loc_1683069:     Set var_90 = Me.LblNar
  loc_168306F:     Call 0.Method_Proc_185_159_16835800 (var_86, var_A4, CDbl(var_88))
  loc_1683077:     var_A4.Top = var_88
  loc_1683091:     Set var_90 = Me.LblNar
  loc_1683097:     Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_168309F:     var_A4.Left = CDbl(&HF)
  loc_16830BA:     Set var_90 = Me.TxtNar
  loc_16830C0:     Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_16830C8:     var_A4.Top = CDbl(var_88)
  loc_16830E3:     Set var_90 = Me.TxtNar
  loc_16830E9:     Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_16830F1:     var_A4.Left = CDbl(990)
  loc_16830FD:   End If
  loc_1683104:   var_88 = (var_88 + 260)
  loc_168311E:   Set var_90 = Me.TxtCrDr
  loc_1683124:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4, var_B8)
  loc_168312C:   (global_136 >= var_86) = var_A4.Text
  loc_1683144:   If (var_88 And (var_B8 <> vbNullString)) Then
  loc_168314F:     Call Proc_185_157_11F0D18(var_86, &HFF)
  loc_1683157:   Else
  loc_168315F:     Call Proc_185_157_11F0D18(var_86, 0)
  loc_1683164:   End If
  loc_1683174:   Set var_90 = Me.TxtAcName
  loc_168317A:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1683182:   var_A4.BackColor = global_56
  loc_168319E:   Set var_90 = Me.TxtAcName
  loc_16831A4:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_16831AC:   var_A4.ForeColor = global_60
  loc_16831C8:   Set var_90 = Me.TxtCr
  loc_16831CE:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_16831D6:   var_A4.BackColor = global_56
  loc_16831F2:   Set var_90 = Me.TxtCr
  loc_16831F8:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1683200:   var_A4.ForeColor = global_60
  loc_168321C:   Set var_90 = Me.TxtCrDr
  loc_1683222:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_168322A:   var_A4.BackColor = global_56
  loc_1683246:   Set var_90 = Me.TxtCrDr
  loc_168324C:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_1683254:   var_A4.ForeColor = global_60
  loc_1683270:   Set var_90 = Me.TxtDr
  loc_1683276:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_168327E:   var_A4.BackColor = global_56
  loc_168329A:   Set var_90 = Me.TxtDr
  loc_16832A0:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_16832A8:   var_A4.ForeColor = global_60
  loc_16832C4:   Set var_90 = Me.TxtNar
  loc_16832CA:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_16832D2:   var_A4.BackColor = global_56
  loc_16832EE:   Set var_90 = Me.TxtNar
  loc_16832F4:   Call 0.Method_Proc_185_159_16835800 (var_86, var_A4)
  loc_16832FC:   var_A4.ForeColor = global_60
  loc_168330B: Next var_194 'Integer
  loc_168331F: Set var_90 = Me.TxtGlb
  loc_1683325: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_168332D: var_A4.BackColor = global_56
  loc_1683348: Set var_90 = Me.TxtGlb
  loc_168334E: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_1683356: var_A4.ForeColor = global_60
  loc_1683371: Set var_90 = Me.TxtVtYpe
  loc_1683377: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_168337F: var_A4.BackColor = global_56
  loc_168339A: Set var_90 = Me.TxtVtYpe
  loc_16833A0: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_16833A8: var_A4.ForeColor = global_60
  loc_16833C3: Set var_90 = Me.TxtVno
  loc_16833C9: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_16833D1: var_A4.ForeColor = global_60
  loc_16833EC: Set var_90 = Me.TxtVno
  loc_16833F2: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_16833FA: var_A4.BackColor = global_56
  loc_1683415: Set var_90 = Me.VchDt
  loc_168341B: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_1683423: var_A4.BackColor = global_56
  loc_168343E: Set var_90 = Me.VchDt
  loc_1683444: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_168344C: var_A4.ForeColor = global_60
  loc_1683467: Set var_90 = Me.TxtCHno
  loc_168346D: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_1683475: var_A4.BackColor = global_56
  loc_1683490: Set var_90 = Me.TxtCHno
  loc_1683496: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_168349E: var_A4.ForeColor = global_60
  loc_16834B9: Set var_90 = Me.TXTChDate
  loc_16834BF: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_16834C7: var_A4.BackColor = global_56
  loc_16834E2: Set var_90 = Me.TXTChDate
  loc_16834E8: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_16834F0: var_A4.ForeColor = global_60
  loc_168350B: Set var_90 = Me.TXTClrDate
  loc_1683511: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_1683519: var_A4.BackColor = global_56
  loc_1683534: Set var_90 = Me.TXTClrDate
  loc_168353A: Call 0.Method_Proc_185_159_16835800 (0, var_A4)
  loc_1683542: var_A4.ForeColor = global_60
  loc_1683553: Set var_8C = Nothing
  loc_1683556: Exit Sub
  loc_1683557: ' Referenced from: 1681D78
  loc_168355D: Call 0.Method_arg_50 (var_B8)
  loc_1683565: var_19C = "MakeVrTypeVisible"
  loc_1683572: Proc_183_57_104B0BC(var_B8)
  loc_168357E: Exit Sub
End Sub

Public Sub Proc_185_160_1024CBC(arg_C) '1024CBC
  'Data Table: 5C26BC
  Dim var_9C As Label
  Dim var_A8 As Double
  Dim var_90 As Variant
  Dim var_8C As MSFlexGrid
  loc_1024AA0: On Error Goto loc_1024C8C
  loc_1024AA7: var_86 = CByte(0) 'Byte
  loc_1024AB7: Set var_98 = Me.LblCrAmt
  loc_1024ABD: Call 0.Method_Proc_185_160_1024CBC0 (0, var_9C)
  loc_1024AE1: Set var_8C = Me.LblDrAmt
  loc_1024AE7: Call 0.Method_Proc_185_160_1024CBC0 (0, var_90)
  loc_1024AEF: var_94 = var_90.Caption
  loc_1024B17: If (CDbl((Val(var_94) + Val(var_9C.Caption))) > CDbl(0)) Then
  loc_1024B26:   Set var_98 = Me.LblCrAmt
  loc_1024B2C:   Call 0.Method_Proc_185_160_1024CBC0 (0, var_9C)
  loc_1024B41:   var_A8 = Val(var_9C.Caption)
  loc_1024B50:   Set var_8C = Me.LblDrAmt
  loc_1024B56:   Call 0.Method_Proc_185_160_1024CBC0 (0, var_90, var_94)
  loc_1024B5E:   var_A8 = var_90.Caption
  loc_1024B83:   If (CDbl(Val(var_94)) = CDbl(var_A8)) Then
  loc_1024B91:     If (global_116 = "Y") Then
  loc_1024BBF:       If (CLng((arg_C + global_108)) = (CLng(Me.FGrid1.Rows) - 1)) Then
  loc_1024BCB:         Set var_8C = Me.TxtGlb
  loc_1024BD1:         Call 0.Method_Proc_185_160_1024CBC0 (0, var_90)
  loc_1024BD9:         var_90.SetFocus
  loc_1024BE9:         var_86 = CByte(1) 'Byte
  loc_1024BED:         Proc_185_160_1024CBC = var_A8
  loc_1024BF3:       End If
  loc_1024BF6:     Else
  loc_1024C21:       If (CLng((arg_C + global_108)) = (CLng(Me.FGrid1.Rows) - 1)) Then
  loc_1024C30:         If (CInt(global_110) <= 2) Then
  loc_1024C39:           Call 0.Method_arg_50 (var_94)
  loc_1024C70:           If (MsgBox("Save Yes/No", &H44, CVar(var_94), var_F8, var_118) = 6) Then
  loc_1024C73:             Call TopCtrl1_UnknownEvent_16()
  loc_1024C78:           End If
  loc_1024C78:         End If
  loc_1024C7C:         var_86 = CByte(1) 'Byte
  loc_1024C80:         Proc_185_160_1024CBC = 
  loc_1024C86:       End If
  loc_1024C86:     End If
  loc_1024C86:   End If
  loc_1024C86: End If
  loc_1024C86: Proc_185_160_1024CBC = 
  loc_1024C8C: ' Referenced from: 1024AA0
  loc_1024C92: Call 0.Method_arg_50 (var_94)
  loc_1024CA7: Proc_183_57_104B0BC(var_94)
  loc_1024CB3: Proc_185_160_1024CBC = "askForSave"
End Sub

Public Sub Proc_185_161_100F7F8
  'Data Table: 5C26BC
  Dim var_90 As Double
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_EC As String
  Dim Me As Recordset15
  loc_100F5E8: On Error Goto loc_100F7CD
  loc_100F5EE: var_90 = CDbl(0)
  loc_100F616: For var_A8 = 1 To CInt((CLng(Me.FgridAdjust.Rows) - 1)): var_86 = var_A8 'Integer
  loc_100F620:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_100F625:   var_D8 = &HA
  loc_100F655:   var_90 = (var_90 + Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_100F664: Next var_A8 'Integer
  loc_100F69F: Me.ADJ_LAB7.Caption = CStr(Format(var_90, "0.00"))
  loc_100F6F0: If (Me.Fields.Item("ToBy").Value = "No") Then
  loc_100F740:   Me.ADJ_LAB8.Caption = CStr(IIf((Me.ADJ_LAB5.Caption = "Cr"), "Dr", "Cr"))
  loc_100F761: Else
  loc_100F76E:   var_EC = Me.ADJ_LAB5.Caption
  loc_100F7AE:   Me.ADJ_LAB8.Caption = CStr(IIf((var_EC = "To"), "By", "To"))
  loc_100F7CC: End If
  loc_100F7CC: Exit Sub
  loc_100F7CD: ' Referenced from: 100F5E8
  loc_100F7D3: Call 0.Method_arg_50 (var_EC, 1)
  loc_100F7E8: Proc_183_57_104B0BC(var_EC, "CAL_ADJ_TOT")
  loc_100F7F4: Exit Sub
End Sub

Public Sub Proc_185_162_11F7928
  'Data Table: 5C26BC
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim var_154 As Double
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_148 As Variant
  Dim Me As Recordset15
  Dim var_17C As Variant
  loc_11F74C0: On Error Goto loc_11F78FF
  loc_11F74C6: var_90 = CDbl(0)
  loc_11F74CC: var_98 = CDbl(0)
  loc_11F74F4: For var_B0 = 1 To CInt((CLng(Me.FGridRef.Rows) - 1)): var_86 = var_B0 'Integer
  loc_11F74FE:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_11F7506:   var_E0 = CVar(CLng(3)) 'Long
  loc_11F752F:   var_104 = CVar(CLng(var_86)) 'Long
  loc_11F7537:   var_124 = CVar(CLng(4)) 'Long
  loc_11F7567:   var_90 = ((var_90 + Val(CStr(Me.FGridRef.TextMatrix)))) - Val(CStr(Me.FGridRef.TextMatrix))))
  loc_11F7582: Next var_B0 'Integer
  loc_11F75BD: Me.LblRefAdj.Caption = CStr(Format(CVar(Abs(var_90)), "0.00"))
  loc_11F769D: var_224 = IIf((var_90 > CDbl(0)), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "To", "Cr"), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "By", "Dr"))
  loc_11F76D4: Me.LblRefAdjDrCr.Caption = CStr(IIf((var_90 = CDbl(0)), vbNullString, var_224))
  loc_11F7736: var_154 = Val(Me.LblRefAmt.Caption)
  loc_11F7754: var_148 = CVar(-Val(Me.LblRefAmt.Caption)) 'Double
  loc_11F777D: var_17C = (IIf((Me.LblRefAmtDrCr.Caption = "Cr"), CVar(var_154), "0.00") - CVar(var_90))
  loc_11F7782: var_98 = CSng("To")
  loc_11F77D8: Me.LblRefAdjBal.Caption = CStr(Format(CVar(Abs(var_98)), "0.00"))
  loc_11F78B8: var_224 = IIf((var_98 > CDbl(0)), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "To", "Cr"), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "By", "Dr"))
  loc_11F78C0: var_F4 = CStr(var_224)
  loc_11F78CE: Me.LblRefAdjDrCrBal.Caption = var_F4
  loc_11F78FE: Exit Sub
  loc_11F78FF: ' Referenced from: 11F74C0
  loc_11F7905: Call 0.Method_arg_50 (var_F4, 1, 1, var_98)
  loc_11F791A: Proc_183_57_104B0BC(var_F4, "CalAmountLF", var_154)
  loc_11F7926: Exit Sub
End Sub

Public Sub Proc_185_163_E22184
  'Data Table: 5C26BC
  Dim var_94 As Long
  loc_E22160: var_94 = -2147483640
  loc_E2216C: Me.BackColor = var_94
  loc_E22170: var_94 = -2147483634
  loc_E2217C: Me.ForeColor = var_94
  loc_E22180: Exit Sub
End Sub

Public Sub Proc_185_164_E27050
  'Data Table: 5C26BC
  loc_E27036: Me.BackColor = CVar(global_56)
  loc_E27048: Me.ForeColor = CVar(global_60)
  loc_E2704C: Exit Sub
End Sub

Public Sub Proc_185_165_E99400
  'Data Table: 5C26BC
  loc_E9938A: On Error Goto loc_E993D0
  loc_E993A2: Call 0.Method_arg_18C (var_8C)
  loc_E993AA: Call var_8C.Show
  loc_E993BF: Call 0.Method_arg_188 (var_B0)
  loc_E993C7: var_88 = var_B0
  loc_E993CA: Proc_185_165_E99400 = 1
  loc_E993D0: ' Referenced from: E9938A
  loc_E993D6: Call 0.Method_arg_50 (var_B0)
  loc_E993EB: Proc_183_57_104B0BC(var_B0)
  loc_E993F7: Proc_185_165_E99400 = "FaNarr"
End Sub

Public Sub Proc_185_166_1326620(arg_C, arg_10) '1326620
  'Data Table: 5C26BC
  Dim var_9C As String
  Dim var_A4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_94 As Double
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_194 As String
  Dim unk_5C26D2 As Connection15
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_12C As Variant
  loc_1325ED2: var_98 = " And (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO')"
  loc_1325EEA: Call 0.Method_Proc_185_166_13266200 (0, var_A4)
  loc_1325F00: Set var_A8 = Me.VchDt
  loc_1325F06: Call 0.Method_Proc_185_166_13266200 (0)
  loc_1325F16: var_CC = CVar(var_AC) 'Address
  loc_1325F33: var_94 = CDate(IIf((var_A4.Text <> vbNullString), var_CC, MemVar_1F950EC))
  loc_1325F5B: Proc_183_7_EB17D4(var_CC, var_94, " AND Date_From<=")
  loc_1325F7B: Proc_183_7_EB17D4(var_12C, var_94)
  loc_1325F9B: Proc_183_7_EB17D4(var_17C, var_94)
  loc_1325FD3: var_194 = CStr(var_94 & var_CC & " AND ISNULL(DATE_TO," & var_12C & " )>=" & var_17C) & " AND VT.SITE_CODE='" & MemVar_1F95070 & "' AND VT.LOGSITE_CODE='"
  loc_132602A: var_9C = "Select VT.V_Type,VT.DESCRIPTION,VP.Prefix,VP.Date_From,VP.Start_Srl_No,Number_Method,Separate_Narr,Common_Narr,NCAT,ChqNo,ChqDt,ClgDt,LTRIM(RTRIM(VT.V_Type))+'-'+LTRIM(RTRIM(VP.Prefix)) as SearchCode,VT.DefaultCrAc,VT.DefaultDrAC,VT.FirstDrCr From Voucher_Prefix VP right join Voucher_Type VT on VT.V_Type=VP.V_Type Where VT.NCAT='" & global_120
  loc_1326038: var_194 = CStr(var_94 & var_CC & " AND ISNULL(DATE_TO," & var_12C & " )>=" & var_17C) & " AND VT.SITE_CODE='" & "' " & var_194 & MemVar_1F95078 & "' AND VP.SITE_CODE='" & MemVar_1F95070 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "'"
  loc_1326048: unk_5C26D2.Execute var_194 & " order by Description,Prefix", var_CC, -1
  loc_1326059: Set global_76 = Me.VchDt
  loc_1326077: CVarUnk
  loc_132607C: VerifyVarObj
  loc_1326082: Set var_A0 = Me.DGVchrHlp
  loc_1326088: LateIdStAd
  loc_132609F: CVarUnk
  loc_13260A4: VerifyVarObj
  loc_13260AA: Set var_A0 = Me.DGVchrHlp
  loc_13260B0: LateIdStAd
  loc_13260D5: If (Me.RecordCount > 0) Then
  loc_13260DE:   Me.MoveFirst
  loc_13260FA:   If (Me.RecordCount = 1) Then
  loc_1326108:     Set var_A0 = Me.TxtVtYpe
  loc_132610E:     Call 0.Method_Proc_185_166_13266200 (0, var_A4, 0, var_A0, global_76)
  loc_1326116:     var_A4.Enabled = var_A0
  loc_1326125:   Else
  loc_1326136:     If ((arg_C <> vbNullString) And (arg_10 <> vbNullString)) Then
  loc_132613F:       Me.MoveFirst
  loc_1326144:       ' Referenced from:   13261E0
  loc_1326156:       If Not(Me.EOF) Then
  loc_1326199:         var_FC = "-"
  loc_132619E:         var_EC = (Trim(arg_C) + " AND ISNULL(DATE_TO,")
  loc_13261B5:         var_12C = (var_94 & Trim(arg_C) + Trim(arg_10))
  loc_13261CF:         If (Me.Fields.Item("SearchCode").Value = var_12C) Then
  loc_13261D2:           GoTo loc_13261E3
  loc_13261D5:         End If
  loc_13261DB:         Me.MoveNext
  loc_13261E0:         GoTo loc_1326144
  loc_13261E3:         ' Referenced from:   13261D2
  loc_13261E3:       End If
  loc_13261E6:     Else
  loc_13261EE:       If (arg_C <> vbNullString) Then
  loc_13261F7:         Me.MoveFirst
  loc_13261FC:         ' Referenced from:     1326272
  loc_132620E:         If Not(Me.EOF) Then
  loc_132622E:           var_A4 = Me.Fields.Item("V_Type")
  loc_1326236:           var_EC = var_A4.Value
  loc_1326261:           If (var_EC = Trim(arg_C)) Then
  loc_1326264:             GoTo loc_1326275
  loc_1326267:           End If
  loc_132626D:           Me.MoveNext
  loc_1326272:           GoTo loc_13261FC
  loc_1326275:           ' Referenced from:     1326264
  loc_1326275:         End If
  loc_1326275:       End If
  loc_1326275:     End If
  loc_1326289:     If (Me.EOF = &HFF) Then
  loc_1326292:       Me.MoveFirst
  loc_1326297:     End If
  loc_13262A2:     Set var_A0 = Me.TxtVtYpe
  loc_13262A8:     Call 0.Method_Proc_185_166_13266200 (0, var_A4, &HFF)
  loc_13262B0:     var_A4.Enabled = Nothing
  loc_13262BC:   End If
  loc_13262C2:   Call Proc_185_159_1683580(global_76, var_A0)
  loc_13262C7: End If
  loc_1326306: If (Me.Fields.Item("FilterAC").Value = "Yes") Then
  loc_1326313:   Set global_88 = New 
  loc_1326337:   var_A4 = Me.Recordset15.Fields.Item("ShowCityName")
  loc_1326359:   If (var_A4.Value = "Yes") Then
  loc_1326368:     Set var_A0 = Me.TxtVtYpe
  loc_132636E:     Call 0.Method_Proc_185_166_13266200 (0, var_A4)
  loc_1326376:     var_9C = var_A4.Tag
  loc_1326384:     Proc_183_9_EAB2F0(var_EC, CVar(var_9C))
  loc_13263A0:     var_BC = "Select SubCode,NameWithCity AS Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup WHERE GroupCode NOT IN (SELECT GROUPCODE FROM Voucher_Exclude WHERE DR='Y' AND V_tYPE="
  loc_13263CF:     Me.Open "ShowCityName" & var_EC & ") " & CVar(var_98) & " order by Name", CVar(MemVar_1F951E0), 1
  loc_13263ED:   Else
  loc_13263F9:     Set var_A0 = Me.TxtVtYpe
  loc_13263FF:     Call 0.Method_Proc_185_166_13266200 (0, var_A4, var_9C)
  loc_1326407:     3 = var_A4.Tag
  loc_1326415:     Proc_183_9_EAB2F0(var_EC, CVar(var_9C))
  loc_1326431:     var_BC = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup WHERE GroupCode NOT IN (SELECT GROUPCODE FROM Voucher_Exclude WHERE DR='Y' AND V_tYPE="
  loc_1326460:     Me.Open "ShowCityName" & var_EC & ") " & CVar(var_98) & " order by Name", CVar(MemVar_1F951E0), 1
  loc_132647B:   End If
  loc_1326485:   Set global_92 = New 
  loc_13264A9:   var_A4 = Me.Recordset15.Fields.Item("ShowCityName")
  loc_13264CB:   If (var_A4.Value = "Yes") Then
  loc_13264DA:     Set var_A0 = Me.TxtVtYpe
  loc_13264E0:     Call 0.Method_Proc_185_166_13266200 (0, var_A4, var_9C, 3)
  loc_13264E8:     -1 = var_A4.Tag
  loc_13264F6:     Proc_183_9_EAB2F0(var_EC, CVar(var_9C))
  loc_1326512:     var_BC = "Select SubCode,NameWithCity AS Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup WHERE GroupCode NOT IN (SELECT GROUPCODE FROM Voucher_Exclude WHERE CR='Y' AND V_tYPE="
  loc_1326541:     Me.Open "ShowCityName" & var_EC & ") " & CVar(var_98) & " order by Name", CVar(MemVar_1F951E0), 1
  loc_132655F:   Else
  loc_132656B:     Set var_A0 = Me.TxtVtYpe
  loc_1326571:     Call 0.Method_Proc_185_166_13266200 (0, var_A4, var_9C, 3)
  loc_1326579:     -1 = var_A4.Tag
  loc_1326587:     Proc_183_9_EAB2F0(var_EC, CVar(var_9C))
  loc_13265A3:     var_BC = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup WHERE GroupCode NOT IN (SELECT GROUPCODE FROM Voucher_Exclude WHERE CR='Y' AND V_tYPE="
  loc_13265D2:     Me.Open "ShowCityName" & var_EC & ") " & CVar(var_98) & " order by Name", CVar(MemVar_1F951E0), 1
  loc_13265ED:   End If
  loc_13265ED: End If
  loc_13265F2: Set var_88 = Nothing
  loc_13265F5: Exit Sub
  loc_13265FC: Call 0.Method_arg_50 (var_9C, 3, -1)
  loc_1326611: Proc_183_57_104B0BC(var_9C, "FaVrTypeSetting")
  loc_132661D: Exit Sub
End Sub

Public Sub Proc_185_167_E408B0
  'Data Table: 5C26BC
  loc_E4088C: Set var_88 = Me.TopCtrl1
  loc_E40892: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E408AB: If (CStr() = "Browse") Then
  loc_E408AE:   Exit Sub
  loc_E408AF: End If
  loc_E408AF: Exit Sub
End Sub

Public Sub Proc_185_168_12E72C0(arg_C, arg_10) '12E72C0
  'Data Table: 5C26BC
  Dim var_8A As Integer
  Dim arg_C As Integer
  Dim var_8C As Integer
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_9C As Variant
  Dim var_90 As String
  Dim var_144 As TextBox
  Dim var_148 As String
  Dim var_150 As String
  Dim var_154 As String
  Dim unk_5C26D2 As Connection15
  Dim var_88 As Recordset15
  loc_12E6C1C: On Error Goto loc_12E7298
  loc_12E6C32: If ((arg_10 = 0) And (CInt(global_110) = 3)) Then
  loc_12E6C35:   Exit Sub
  loc_12E6C36: End If
  loc_12E6C3C: If (arg_10 > 0) Then
  loc_12E6C42:   var_8A = arg_10
  loc_12E6C4B:   If (var_8A = 1) Then
  loc_12E6C54:     arg_C = CInt(&H75)
  loc_12E6C5A:   Else
  loc_12E6C60:     If (var_8A = 2) Then
  loc_12E6C69:       arg_C = CInt(&H76)
  loc_12E6C6F:     Else
  loc_12E6C75:       If (var_8A = 3) Then
  loc_12E6C7E:         arg_C = CInt(&H77)
  loc_12E6C84:       Else
  loc_12E6C8A:         If (var_8A = 4) Then
  loc_12E6C93:           arg_C = CInt(&H78)
  loc_12E6C96:         End If
  loc_12E6C96:       End If
  loc_12E6C96:     End If
  loc_12E6C96:   End If
  loc_12E6C96: End If
  loc_12E6C96: Call Proc_185_169_F64FF4(arg_C, arg_C, arg_C)
  loc_12E6C9E: var_8C = arg_C
  loc_12E6CAB: If (var_8C = CInt(&H1B)) Then
  loc_12E6CAE:   Call TopCtrl1_UnknownEvent_B()
  loc_12E6CB6: Else
  loc_12E6CC0:   If (var_8C = CInt(&H75)) Then
  loc_12E6CC9:     global_120 = "CNT"
  loc_12E6CD3:     global_124 = vbNullString
  loc_12E6CEB:     Call Proc_185_166_1326620(vbNullString, 0)
  loc_12E6D00:     Set var_98 = Me.TxtAcName
  loc_12E6D06:     Call 0.Method_Proc_185_168_12E72C00 (0, var_9C, var_8C)
  loc_12E6D2F:     If (Trim(CVar(var_9C)) = vbNullString) Then
  loc_12E6D4F:       var_9C = Me.Fields.Item("ToBy")
  loc_12E6D9E:       Set var_140 = Me.TxtCrDr
  loc_12E6DA4:       Call 0.Method_Proc_185_168_12E72C00 (0, var_144, CStr(IIf((var_9C.Value = "Yes"), "To", "Cr")))
  loc_12E6DAC:       var_144.Text = arg_C
  loc_12E6DCC:     End If
  loc_12E6DCF:   Else
  loc_12E6DD9:     If (var_8C = CInt(&H76)) Then
  loc_12E6DE2:       global_120 = "PMT"
  loc_12E6DEC:       global_124 = vbNullString
  loc_12E6E04:       Call Proc_185_166_1326620(vbNullString, 0)
  loc_12E6E19:       Set var_98 = Me.TxtAcName
  loc_12E6E1F:       Call 0.Method_Proc_185_168_12E72C00 (0, var_9C)
  loc_12E6E48:       If (Trim(CVar(var_9C)) = vbNullString) Then
  loc_12E6E68:         var_9C = Me.Fields.Item("ToBy")
  loc_12E6EB7:         Set var_140 = Me.TxtCrDr
  loc_12E6EBD:         Call 0.Method_Proc_185_168_12E72C00 (0, var_144)
  loc_12E6EC5:         var_144.Text = CStr(IIf((var_9C.Value = "Yes"), "By", "Dr"))
  loc_12E6EE5:       End If
  loc_12E6EE8:     Else
  loc_12E6EF2:       If (var_8C = CInt(&H77)) Then
  loc_12E6EFB:         global_120 = "RCT"
  loc_12E6F05:         global_124 = vbNullString
  loc_12E6F1D:         Call Proc_185_166_1326620(vbNullString, 0)
  loc_12E6F32:         Set var_98 = Me.TxtAcName
  loc_12E6F38:         Call 0.Method_Proc_185_168_12E72C00 (0, var_9C)
  loc_12E6F61:         If (Trim(CVar(var_9C)) = vbNullString) Then
  loc_12E6F81:           var_9C = Me.Fields.Item("ToBy")
  loc_12E6FD0:           Set var_140 = Me.TxtCrDr
  loc_12E6FD6:           Call 0.Method_Proc_185_168_12E72C00 (0, var_144)
  loc_12E6FDE:           var_144.Text = CStr(IIf((var_9C.Value = "Yes"), "To", "Cr"))
  loc_12E6FFE:         End If
  loc_12E7001:       Else
  loc_12E700B:         If (var_8C = CInt(&H78)) Then
  loc_12E7014:           global_120 = "JV"
  loc_12E701E:           global_124 = vbNullString
  loc_12E7036:           Call Proc_185_166_1326620(vbNullString, 0)
  loc_12E704B:           Set var_98 = Me.TxtAcName
  loc_12E7051:           Call 0.Method_Proc_185_168_12E72C00 (0, var_9C)
  loc_12E707A:           If (Trim(CVar(var_9C)) = vbNullString) Then
  loc_12E709A:             var_9C = Me.Fields.Item("ToBy")
  loc_12E70E9:             Set var_140 = Me.TxtCrDr
  loc_12E70EF:             Call 0.Method_Proc_185_168_12E72C00 (0, var_144)
  loc_12E70F7:             var_144.Text = CStr(IIf((var_9C.Value = "Yes"), "By", "Dr"))
  loc_12E7117:           End If
  loc_12E7117:         End If
  loc_12E7117:       End If
  loc_12E7117:     End If
  loc_12E7117:   End If
  loc_12E7117: End If
  loc_12E7123: Set var_98 = Me.TxtVtYpe
  loc_12E7129: Call 0.Method_Proc_185_168_12E72C00 (0, var_9C)
  loc_12E7148: If (var_9C.Tag <> vbNullString) Then
  loc_12E7174:   var_150 = "SELECT * FROM VOUCHER_TYPE WHERE SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "' AND V_TYPE='"
  loc_12E7183:   Set var_98 = Me.TxtVtYpe
  loc_12E7189:   Call 0.Method_Proc_185_168_12E72C00 (0, var_9C, var_14C, var_150)
  loc_12E7191:   var_AC = var_9C.Tag
  loc_12E719A:   var_154 = -1 & var_14C
  loc_12E71AA:   unk_5C26D2.Execute var_154 & "'", var_140, var_8A
  loc_12E71B5:   Set var_88 = var_140
  loc_12E71E9:   If (var_88.RecordCount > 0) Then
  loc_12E7236:     If CBool(Trim(CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("FirstDrCr"))))) <> vbNullString) Then
  loc_12E7261:       var_90 = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("FirstDrCr")))
  loc_12E726D:       Set var_140 = Me.TxtCrDr
  loc_12E7273:       Call 0.Method_Proc_185_168_12E72C00 (0, var_144)
  loc_12E727B:       var_144.Text = var_90
  loc_12E728F:     End If
  loc_12E728F:   End If
  loc_12E728F: End If
  loc_12E7294: Set var_88 = Nothing
  loc_12E7297: Exit Sub
  loc_12E7298: ' Referenced from: 12E6C1C
  loc_12E729E: Call 0.Method_arg_50 (var_90)
  loc_12E72A6: var_148 = "FrmHotKey"
  loc_12E72B3: Proc_183_57_104B0BC(var_90)
  loc_12E72BF: Exit Sub
End Sub

Public Sub Proc_185_169_F64FF4
  'Data Table: 5C26BC
  loc_F64ED4: If (CBool(Me.DGAcHlp.Visible) = &HFF) Then
  loc_F64EE6:   Me.DGAcHlp.Visible = False
  loc_F64EEE: End If
  loc_F64F0A: If (CBool(Me.DGVchrHlp.Visible) = &HFF) Then
  loc_F64F1C:   Me.DGVchrHlp.Visible = False
  loc_F64F24: End If
  loc_F64F3F: If (Me.TxtDetailS.Visible = &HFF) Then
  loc_F64F4E:   Me.TxtDetailS.Visible = False
  loc_F64F56: End If
  loc_F64F71: If (Me.FrameRef.Visible = &HFF) Then
  loc_F64F80:   Me.FrameRef.Visible = False
  loc_F64F88: End If
  loc_F64FA3: If (Me.FrameTDS.Visible = &HFF) Then
  loc_F64FB2:   Me.FrameTDS.Visible = False
  loc_F64FBA: End If
  loc_F64FD6: If (CBool(Me.DGTDSCODE.Visible) = &HFF) Then
  loc_F64FE8:   Me.DGTDSCODE.Visible = False
  loc_F64FF0: End If
  loc_F64FF0: Exit Sub
End Sub

Public Sub Proc_185_170_13BF510
  'Data Table: 5C26BC
  Dim var_88 As Variant
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_104 As MSHFlexGrid
  Dim var_108 As String
  Dim var_118 As String
  loc_13BEBA0: On Error Goto loc_13BF4E6
  loc_13BEBB2: Me.FRAMEVLIST.Top = CDbl(630)
  loc_13BEBC9: Me.FRAMEVLIST.Left = CDbl(2010)
  loc_13BEBDF: Set var_88 = Me.Frame1
  loc_13BEBE5: Call 0.Method_Proc_185_170_13BF5100 (1, var_8C)
  loc_13BEBED: var_8C.Top = CDbl(630)
  loc_13BEC07: Set var_88 = Me.Frame1
  loc_13BEC0D: Call 0.Method_Proc_185_170_13BF5100 (1, var_8C)
  loc_13BEC15: var_8C.Left = CDbl(2010)
  loc_13BEC2D: Set var_88 = Me.Label1
  loc_13BEC33: Call 0.Method_Proc_185_170_13BF5100 (1, var_8C)
  loc_13BEC52: Me.DGAcHlp.Left = CVar(var_8C.Left)
  loc_13BEC6C: Set var_88 = Me.Label1
  loc_13BEC72: Call 0.Method_Proc_185_170_13BF5100 (1, var_8C)
  loc_13BEC91: Me.DGAcHlp.Top = CVar(var_8C.Top)
  loc_13BECBE: Set var_88 = Me.Line2
  loc_13BECC4: Call 0.Method_Proc_185_170_13BF5100 (0, var_8C)
  loc_13BECCC: var_90 = var_8C.Y1
  loc_13BECDA: var_A0 = CVar((var_90 - CDbl(Me.DGAcHlp.Top))) 'Single
  loc_13BECE3: Set var_C8 = Me.DGAcHlp
  loc_13BECE9: var_C8.Height = CVar(var_8C.Top)
  loc_13BED0B: Me.FrameTDS.Left = CDbl(2000)
  loc_13BED22: Me.FrameTDS.Top = CDbl(1035)
  loc_13BED38: Me.FRAMEADJUST.Left = CDbl(0)
  loc_13BED4F: Me.FRAMEADJUST.Top = CDbl(1035)
  loc_13BED69: Me.FgridAdjust.Left = CVar(CDbl(&H5A))
  loc_13BED84: Me.FgridAdjust.Top = CVar(CDbl(465))
  loc_13BED9B: Me.FRAMEADJUST.Width = CDbl(11680)
  loc_13BEDB2: Me.FRAMEADJUST.Height = CDbl(5300)
  loc_13BEDCD: Me.FgridAdjust.Width = CVar(CDbl(10700))
  loc_13BEDE8: Me.FgridAdjust.Height = CVar(CDbl(4000))
  loc_13BEE27: Me.TXTNARRATION.Top = (CDbl(Me.FgridAdjust.Top) + CDbl(Me.FgridAdjust.Height))
  loc_13BEE54: Set var_8C = Me.TXTNARRATION
  loc_13BEE5A: var_8C.Width = CDbl(Me.FgridAdjust.Width)
  loc_13BEE78: Me.BTS_AUTO_ADJ.Left = CDbl(10800)
  loc_13BEE8F: Me.Command2.Left = CDbl(10800)
  loc_13BEEA6: Me.ADJ_OK.Left = CDbl(10800)
  loc_13BEEBD: Me.ADJ_CANCLE.Left = CDbl(10800)
  loc_13BEEC5: var_A0 = 2
  loc_13BEED4: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BEEDC: Set var_88 = Me.FgridAdjust
  loc_13BEEE2: LateIdCallSt
  loc_13BEEED: var_A0 = 5
  loc_13BEEFC: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BEF04: Set var_88 = Me.FgridAdjust
  loc_13BEF0A: LateIdCallSt
  loc_13BEF15: var_A0 = 7
  loc_13BEF24: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BEF2C: Set var_88 = Me.FgridAdjust
  loc_13BEF32: LateIdCallSt
  loc_13BEF3D: var_A0 = 8
  loc_13BEF4C: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BEF54: Set var_88 = Me.FgridAdjust
  loc_13BEF5A: LateIdCallSt
  loc_13BEF65: var_A0 = 9
  loc_13BEF74: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BEF7C: Set var_88 = Me.FgridAdjust
  loc_13BEF82: LateIdCallSt
  loc_13BEF8D: var_A0 = &HA
  loc_13BEF9C: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BEFA4: Set var_88 = Me.FgridAdjust
  loc_13BEFAA: LateIdCallSt
  loc_13BEFB5: var_A0 = 3
  loc_13BEFBE: var_E8 = 0
  loc_13BEFCB: Set var_88 = Me.FgridAdjust
  loc_13BEFD1: LateIdCallSt
  loc_13BEFDC: var_A0 = &HB
  loc_13BEFE5: var_E8 = 0
  loc_13BEFF2: Set var_88 = Me.FgridAdjust
  loc_13BEFF8: LateIdCallSt
  loc_13BF003: var_A0 = &HC
  loc_13BF00C: var_E8 = 0
  loc_13BF019: Set var_88 = Me.FgridAdjust
  loc_13BF01F: LateIdCallSt
  loc_13BF02A: var_A0 = &HD
  loc_13BF033: var_E8 = 0
  loc_13BF046: LateIdCallSt
  loc_13BF057: Call 0.Method_arg_70 (var_90, Me.FgridAdjust, var_E8, var_A0, Me.FgridAdjust, var_E8, var_A0, Me.FgridAdjust)
  loc_13BF069: Me.FrameRef.Left = var_90
  loc_13BF07D: Set var_88 = Me.TxtCrDr
  loc_13BF083: Call 0.Method_Proc_185_170_13BF5100 (0, var_8C, var_90, var_E8, var_A0)
  loc_13BF08B: var_88 = var_8C.Top
  loc_13BF09D: Me.FrameRef.Top = var_90
  loc_13BF0B7: Set var_B4 = Me.TxtCr
  loc_13BF0BD: Call 0.Method_Proc_185_170_13BF5100 (0, var_C8, var_FC, var_E8)
  loc_13BF0C5: var_A0 = var_C8.Width
  loc_13BF0D6: Set var_88 = Me.TxtCr
  loc_13BF0DC: Call 0.Method_Proc_185_170_13BF5100 (0, var_8C, var_90)
  loc_13BF0E4: var_88 = var_8C.Left
  loc_13BF0FB: Me.FrameRef.Width = (var_90 + var_FC)
  loc_13BF12B: Set var_88 = Me.Frame1
  loc_13BF131: Call 0.Method_Proc_185_170_13BF5100 (0, var_8C)
  loc_13BF150: Me.FrameRef.Height = (var_8C.Height - Me.FrameRef.Top)
  loc_13BF179: var_A0 = CVar((Me.FrameRef.Left + CDbl(&H32))) 'Single
  loc_13BF188: Me.FGridRef.Left = var_A0
  loc_13BF1AD: var_A0 = CVar((Me.FrameRef.Width - CDbl(&H64))) 'Single
  loc_13BF1BC: Me.FGridRef.Width = var_A0
  loc_13BF1E2: var_A0 = CVar((Me.FrameRef.Height - CDbl(1000))) 'Single
  loc_13BF1F1: Me.FGridRef.Height = var_A0
  loc_13BF201: Set var_104 = Me.FGridRef
  loc_13BF212: var_108 = CStr(CLng(var_104.BackColor))
  loc_13BF218: global_52 = var_108
  loc_13BF22E: var_104.Cols = 9
  loc_13BF233: var_A0 = 0
  loc_13BF23C: var_E8 = &H15E
  loc_13BF248: LateIdCallSt
  loc_13BF253: var_A0 = CVar(CLng(5)) 'Long
  loc_13BF258: var_E8 = 0
  loc_13BF264: LateIdCallSt
  loc_13BF26F: var_A0 = CVar(CLng(6)) 'Long
  loc_13BF274: var_E8 = 0
  loc_13BF280: LateIdCallSt
  loc_13BF28B: var_A0 = CVar(CLng(7)) 'Long
  loc_13BF290: var_E8 = 0
  loc_13BF29C: LateIdCallSt
  loc_13BF2A4: var_A0 = 0
  loc_13BF2B0: var_E8 = CVar(CLng(1)) 'Long
  loc_13BF2B5: var_118 = "Adj.Type"
  loc_13BF2BE: LateIdCallSt
  loc_13BF2C9: var_A0 = CVar(CLng(1)) 'Long
  loc_13BF2D4: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BF2DB: LateIdCallSt
  loc_13BF2E6: var_A0 = CVar(CLng(1)) 'Long
  loc_13BF2EB: var_E8 = &H7D0
  loc_13BF2F7: LateIdCallSt
  loc_13BF2FF: var_A0 = 0
  loc_13BF30B: var_E8 = CVar(CLng(2)) 'Long
  loc_13BF310: var_118 = "Ref."
  loc_13BF319: LateIdCallSt
  loc_13BF324: var_A0 = CVar(CLng(2)) 'Long
  loc_13BF32F: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BF336: LateIdCallSt
  loc_13BF341: var_A0 = CVar(CLng(2)) 'Long
  loc_13BF34C: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BF353: LateIdCallSt
  loc_13BF35E: var_A0 = CVar(CLng(2)) 'Long
  loc_13BF363: var_E8 = &H7D0
  loc_13BF36F: LateIdCallSt
  loc_13BF377: var_A0 = 0
  loc_13BF383: var_E8 = CVar(CLng(4)) 'Long
  loc_13BF388: var_118 = "Debit"
  loc_13BF391: LateIdCallSt
  loc_13BF39C: var_A0 = CVar(CLng(4)) 'Long
  loc_13BF3A7: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BF3AE: LateIdCallSt
  loc_13BF3B9: var_A0 = CVar(CLng(4)) 'Long
  loc_13BF3C4: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BF3CB: LateIdCallSt
  loc_13BF3D6: var_A0 = CVar(CLng(4)) 'Long
  loc_13BF3DB: var_E8 = &H6A4
  loc_13BF3E7: LateIdCallSt
  loc_13BF3EF: var_A0 = 0
  loc_13BF3FB: var_E8 = CVar(CLng(3)) 'Long
  loc_13BF400: var_118 = "Credit"
  loc_13BF409: LateIdCallSt
  loc_13BF414: var_A0 = CVar(CLng(3)) 'Long
  loc_13BF41F: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BF426: LateIdCallSt
  loc_13BF431: var_A0 = CVar(CLng(3)) 'Long
  loc_13BF43C: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BF443: LateIdCallSt
  loc_13BF44E: var_A0 = CVar(CLng(3)) 'Long
  loc_13BF453: var_E8 = &H6A4
  loc_13BF45F: LateIdCallSt
  loc_13BF467: var_A0 = 0
  loc_13BF473: var_E8 = CVar(CLng(8)) 'Long
  loc_13BF478: var_118 = "DueDate"
  loc_13BF481: LateIdCallSt
  loc_13BF48C: var_A0 = CVar(CLng(8)) 'Long
  loc_13BF497: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BF49E: LateIdCallSt
  loc_13BF4A9: var_A0 = CVar(CLng(8)) 'Long
  loc_13BF4B4: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BF4BB: LateIdCallSt
  loc_13BF4C6: var_A0 = CVar(CLng(8)) 'Long
  loc_13BF4CB: var_E8 = &H7D0
  loc_13BF4D7: LateIdCallSt
  loc_13BF4E1: Set var_104 = Nothing 
  loc_13BF4E5: Exit Sub
  loc_13BF4E6: ' Referenced from: 13BEBA0
  loc_13BF4EC: Call 0.Method_arg_50 (var_108, var_104, var_E8, var_A0, var_104, var_E8, var_A0, var_104)
  loc_13BF501: Proc_183_57_104B0BC(var_108, "Ini_Grid", var_E8, var_A0, var_104)
  loc_13BF50D: Exit Sub
End Sub

Public Sub Proc_185_171_1B39E94(arg_C) '1B39E94
  'Data Table: 5C26BC
  Dim var_F0 As Variant
  Dim var_108 As Variant
  Dim var_124 As Variant
  Dim var_E8 As String
  Dim var_100 As String
  Dim var_104 As String
  Dim var_118 As String
  Dim var_11C As String
  Dim var_134 As String
  Dim var_138 As String
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_F4 As String
  Dim unk_5C26D2 As Connection15
  Dim var_EC As Variant
  Dim var_1DC As Variant
  Dim Me As Recordset15
  Dim var_C6 As Integer
  Dim var_C8 As Integer
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_DC As Long
  Dim var_8C As Variant
  Dim var_214 As Double
  Dim var_158 As Variant
  Dim var_208 As Variant
  Dim var_90 As Recordset15
  Dim var_188 As Variant
  Dim var_234 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  Dim var_10C As String
  Dim var_110 As String
  Dim var_128 As String
  Dim var_120 As Variant
  Dim var_28C As Fields15
  Dim var_290 As Variant
  Dim var_2A4 As Variant
  Dim var_2D8 As Variant
  Dim var_2C8 As Variant
  Dim var_2A0 As Variant
  Dim var_2EC As Variant
  Dim var_2F4 As Fields15
  Dim var_2F8 As Field20
  Dim var_AA As Integer
  Dim var_94 As Recordset15
  Dim var_310 As Double
  Dim var_2B8 As Variant
  Dim var_308 As Variant
  Dim var_3AC As Variant
  Dim var_338 As Double
  Dim var_43C As Variant
  Dim var_910 As Double
  Dim var_4D0 As Variant
  Dim var_4E0 As Variant
  Dim var_570 As Variant
  Dim var_580 As Variant
  Dim var_610 As Variant
  Dim var_708 As Variant
  Dim var_760 As Variant
  Dim var_7F4 As Fields15
  Dim var_1B8 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_35C As Variant
  Dim var_3CC As Variant
  Dim var_3EC As Variant
  Dim var_460 As Variant
  Dim var_480 As Variant
  Dim var_500 As Variant
  Dim var_520 As Variant
  Dim var_5A0 As Variant
  Dim var_5C0 As Variant
  Dim var_5E0 As Variant
  Dim var_600 As Variant
  Dim var_670 As Variant
  Dim var_848 As Variant
  Dim var_4F0 As Variant
  Dim var_590 As Variant
  Dim var_620 As Variant
  Dim var_6B0 As Variant
  Dim var_6C0 As Variant
  Dim var_6F4 As Fields15
  Dim var_6F8 As Field20
  Dim var_718 As Variant
  loc_1B354DC: Set var_EC = Me.TxtVtYpe
  loc_1B354E2: Call 0.Method_Proc_185_171_1B39E940 (0, var_F0)
  loc_1B3550D: Set var_120 = Me.TxtVno
  loc_1B35513: Call 0.Method_Proc_185_171_1B39E940 (0, var_124)
  loc_1B35564: var_134 = MemVar_1F9506C & Proc_183_15_EAD490(MemVar_1F95070, 2) & Proc_183_15_EAD490(var_F0.Tag, 5) & Proc_183_15_EAD490(Me.LblVPrefix.Caption, 5)
  loc_1B3557C: var_B0 = var_134 & Proc_183_16_EAF86C(var_124.Text, 8)
  loc_1B355AC: Set var_EC = Me.TxtGlb
  loc_1B355B2: Call 0.Method_Proc_185_171_1B39E940 (0)
  loc_1B355DF: If (Len(Trim(CVar(var_F0))) > 0) Then
  loc_1B355EB:   Set var_EC = Me.TxtGlb
  loc_1B355F1:   Call 0.Method_Proc_185_171_1B39E940 (0, var_F0)
  loc_1B35633:   If (Asc(CStr(Right(Trim(CVar(var_F0)), 1))) = &HA) Then
  loc_1B3563F:     Set var_EC = Me.TxtGlb
  loc_1B35645:     Call 0.Method_Proc_185_171_1B39E940 (0, var_F0)
  loc_1B35662:     Set var_108 = Me.TxtGlb
  loc_1B35668:     Call 0.Method_Proc_185_171_1B39E940 (0, var_120)
  loc_1B35688:     var_1A8 = (Len(Trim(CVar(var_120))) - 1)
  loc_1B356A9:     Set var_124 = Me.TxtGlb
  loc_1B356AF:     Call 0.Method_Proc_185_171_1B39E940 (0, var_1BC)
  loc_1B356B7:     var_1BC.Text = CStr(Left(Trim(CVar(var_F0)), CLng(var_1A8)))
  loc_1B356D7:   End If
  loc_1B356E0:   Set var_EC = Me.TxtGlb
  loc_1B356E6:   Call 0.Method_Proc_185_171_1B39E940 (0, var_F0)
  loc_1B35728:   If (Asc(CStr(Right(Trim(CVar(var_F0)), 1))) = &HD) Then
  loc_1B35734:     Set var_EC = Me.TxtGlb
  loc_1B3573A:     Call 0.Method_Proc_185_171_1B39E940 (0, var_F0)
  loc_1B35742:     var_148 = CVar(var_F0) 'Address
  loc_1B35749:     var_158 = Trim(var_148)
  loc_1B35757:     Set var_108 = Me.TxtGlb
  loc_1B3575D:     Call 0.Method_Proc_185_171_1B39E940 (0, var_120)
  loc_1B3576C:     var_188 = Trim(CVar(var_120))
  loc_1B3577D:     var_1A8 = (Len(var_188) - 1)
  loc_1B3579E:     Set var_124 = Me.TxtGlb
  loc_1B357A4:     Call 0.Method_Proc_185_171_1B39E940 (0, var_1BC)
  loc_1B357AC:     var_1BC.Text = CStr(Left(var_158, CLng(var_1A8)))
  loc_1B357CC:   End If
  loc_1B357CC: End If
  loc_1B357D4: If (arg_C = "A") Then
  loc_1B357DD:   var_1CC = 0
  loc_1B3580A:   unk_5C26D2.Execute "SELECT COUNT(*) FROM LEDGERM WHERE DocId='" & var_B0 & "'", var_148, -1
  loc_1B35812:   var_EC = var_EC.Fields
  loc_1B3581A:   var_1CC = var_F0.Item(var_F0)
  loc_1B35822:   var_108 = var_108.Value
  loc_1B35849:   If (var_158 > 0) Then
  loc_1B35850:     var_86 = CByte(2) 'Byte
  loc_1B35854:     Proc_185_171_1B39E94 = var_158
  loc_1B3585A:   End If
  loc_1B3585A: End If
  loc_1B35862: If (arg_C = "E") Then
  loc_1B35889:   var_F0 = Me.Fields.Item("DocID")
  loc_1B35891:   var_148 = var_F0.Value
  loc_1B358A5:   If CBool(CVar(var_B0) <> var_148) Then
  loc_1B358AE:     var_1CC = 0
  loc_1B358CB:     var_E8 = "SELECT COUNT(*) FROM LEDGERM WHERE DocId='" & var_B0
  loc_1B358DB:     unk_5C26D2.Execute var_E8 & "'", var_148, -1
  loc_1B358E3:     var_EC = var_EC.Fields
  loc_1B358EB:     var_1CC = var_F0.Item(var_F0)
  loc_1B358F3:     var_108 = var_108.Value
  loc_1B3591A:     If (var_158 > 0) Then
  loc_1B35921:       var_86 = CByte(2) 'Byte
  loc_1B35925:       Proc_185_171_1B39E94 = var_158
  loc_1B3592B:     End If
  loc_1B3592B:   End If
  loc_1B3592B: End If
  loc_1B3592F: var_B2 = CByte(0) 'Byte
  loc_1B35935: var_C6 = 0
  loc_1B35941: var_86 = CByte(0) 'Byte
  loc_1B35956: var_DC = 0
  loc_1B3595C: var_D8 = vbNullString
  loc_1B35962: var_D4 = vbNullString
  loc_1B35981: Set var_EC = Me.TxtVtYpe
  loc_1B35987: Call 0.Method_Proc_185_171_1B39E940 (0, var_F0, var_E8, "SELECT * FROM Voucher_Include WHERE V_TYPE='", var_148, -1, var_108)
  loc_1B3598F: var_DC = var_F0.Tag
  loc_1B359B6: unk_5C26D2.Execute CDbl(0) & var_E8 & "' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') ORDER BY GROUPCODE", CDbl(0), 0
  loc_1B359C1: Set var_8C = var_108
  loc_1B359F1: If (var_8C.RecordCount <= 0) Then
  loc_1B359F6:   var_C6 = &HFF
  loc_1B359FB:   var_C8 = &HFF
  loc_1B359FE: End If
  loc_1B35A23: For var_1E4 = 0 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_96 = var_1E4 'Integer
  loc_1B35A2D:   var_178 = CVar(CLng(var_96)) 'Long
  loc_1B35A32:   var_1DC = 5
  loc_1B35A66:   If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_1B35A70:     var_A0 = (var_A0 + CDbl(1))
  loc_1B35A77:     var_178 = CVar(CLng(var_96)) 'Long
  loc_1B35A7C:     var_1DC = 2
  loc_1B35A9A:     var_D8 = CStr(Me.FGrid1.TextMatrix))
  loc_1B35AA6:   Else
  loc_1B35AAA:     var_178 = CVar(CLng(var_96)) 'Long
  loc_1B35AAF:     var_1DC = 6
  loc_1B35AE3:     If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_1B35AED:       var_A8 = (var_A8 + CDbl(1))
  loc_1B35AF4:       var_178 = CVar(CLng(var_96)) 'Long
  loc_1B35AF9:       var_1DC = 2
  loc_1B35B17:       var_D4 = CStr(Me.FGrid1.TextMatrix))
  loc_1B35B20:     End If
  loc_1B35B20:   End If
  loc_1B35B23: Next var_1E4 'Integer
  loc_1B35B37: If ((CDbl(0) = CDbl(1)) Or (CDbl(0) = CDbl(1))) Then
  loc_1B35B5F:   For var_1F8 = 0 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_96 = var_1F8 'Integer
  loc_1B35B69:     var_178 = CVar(CLng(var_96)) 'Long
  loc_1B35B6E:     var_1DC = 5
  loc_1B35BA2:     If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_1B35BAC:       If (CDbl(0) = CDbl(1)) Then
  loc_1B35BB3:         var_178 = CVar(CLng(var_96)) 'Long
  loc_1B35BB8:         var_1DC = 4
  loc_1B35BCC:         Set var_EC = Me.FGrid1
  loc_1B35BD2:         LateIdCallSt
  loc_1B35BDD:       End If
  loc_1B35BE0:     Else
  loc_1B35BE4:       var_178 = CVar(CLng(var_96)) 'Long
  loc_1B35BE9:       var_1DC = 6
  loc_1B35C1D:       If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_1B35C27:         If (CDbl(0) = CDbl(1)) Then
  loc_1B35C2E:           var_178 = CVar(CLng(var_96)) 'Long
  loc_1B35C33:           var_1DC = 4
  loc_1B35C47:           Set var_EC = Me.FGrid1
  loc_1B35C4D:           LateIdCallSt
  loc_1B35C58:         End If
  loc_1B35C58:       End If
  loc_1B35C58:     End If
  loc_1B35C5B:   Next var_1F8 'Integer
  loc_1B35C60: End If
  loc_1B35C63: var_D8 = vbNullString
  loc_1B35C69: var_D4 = vbNullString
  loc_1B35C6F: var_A0 = CDbl(0)
  loc_1B35C75: var_A8 = CDbl(0)
  loc_1B35C9D: For var_20C = 0 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_96 = var_20C 'Integer
  loc_1B35CA7:   var_178 = CVar(CLng(var_96)) 'Long
  loc_1B35CAC:   var_1DC = 5
  loc_1B35CDC:   var_A0 = (var_A0 + Val(CStr(Me.FGrid1.TextMatrix))))
  loc_1B35CEC:   var_178 = CVar(CLng(var_96)) 'Long
  loc_1B35CF1:   var_1DC = 6
  loc_1B35D17:   var_214 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1B35D21:   var_A8 = (var_A8 + var_214)
  loc_1B35D41:   If (var_8C.RecordCount > 0) Then
  loc_1B35D4D:     var_1DC = 2
  loc_1B35D71:     var_168 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1B35D7C:     Proc_183_9_EAB2F0(var_188, var_168, var_1DC, CVar(CLng(var_96)), var_A8, var_214, var_1DC, CVar(CLng(var_96)))
  loc_1B35DA4:     unk_5C26D2.Execute CStr("SELECT GROUPCODE FROM SUBGROUP WHERE SUBCODE=" & var_188), var_1A8, -1
  loc_1B35DAF:     Set var_90 = var_F0
  loc_1B35DDF:     If (var_90.RecordCount > 0) Then
  loc_1B35DE5:       var_8C.MoveFirst
  loc_1B35E14:       var_F0 = var_90.Fields.Item("GroupCode")
  loc_1B35E2E:       Proc_183_9_EAB2F0(var_168, Trim(CVar(var_F0)), "GROUPCODE=", 0, 1, var_1DC, var_F0)
  loc_1B35E36:       var_188 = var_A0 & var_168 
  loc_1B35E41:       var_8C.Find CStr(var_188), var_214, var_1DC
  loc_1B35E5B:       var_178 = CVar(CLng(var_96)) 'Long
  loc_1B35E60:       var_1DC = 5
  loc_1B35E94:       If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_1B35EA6:         If Not(var_8C.EOF) Then
  loc_1B35EE5:           If (var_8C.Fields.Item("dr").Value = "Y") Then
  loc_1B35EEA:             var_C6 = &HFF
  loc_1B35EED:           End If
  loc_1B35EED:         End If
  loc_1B35EED:       End If
  loc_1B35EF1:       var_178 = CVar(CLng(var_96)) 'Long
  loc_1B35EF6:       var_1DC = 6
  loc_1B35F2A:       If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_1B35F3C:         If Not(var_8C.EOF) Then
  loc_1B35F7B:           If (var_8C.Fields.Item("cr").Value = "Y") Then
  loc_1B35F80:             var_C8 = &HFF
  loc_1B35F83:           End If
  loc_1B35F83:         End If
  loc_1B35F83:       End If
  loc_1B35F83:     End If
  loc_1B35F83:   End If
  loc_1B35F87:   var_178 = CVar(CLng(var_96)) 'Long
  loc_1B35F8C:   var_1DC = 4
  loc_1B35FAA:   var_E8 = CStr(Me.FGrid1.TextMatrix))
  loc_1B35FB6:   var_208 = CVar(CLng(var_96)) 'Long
  loc_1B35FFC:   If (5 And (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0))) Then
  loc_1B36024:     For var_248 = 0 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_AA = var_248 'Integer
  loc_1B3602E:       var_258 = CVar(CLng(var_96)) 'Long
  loc_1B36033:       var_278 = 5
  loc_1B36046:       var_168 = Me.FGrid1.TextMatrix)
  loc_1B36060:       var_178 = CVar(CLng(var_AA)) 'Long
  loc_1B36065:       var_1DC = 4
  loc_1B36083:       var_E8 = CStr(Me.FGrid1.TextMatrix))
  loc_1B3608F:       var_208 = CVar(CLng(var_AA)) 'Long
  loc_1B360DC:       If (6 And (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) = CDbl(Val(CStr(var_168))))) Then
  loc_1B360E3:         var_208 = CVar(CLng(var_AA)) 'Long
  loc_1B360E8:         var_234 = 4
  loc_1B360F5:         var_178 = CVar(CLng(var_96)) 'Long
  loc_1B360FA:         var_1DC = 2
  loc_1B36118:         var_158 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_1B36120:         Set var_F0 = Me.FGrid1
  loc_1B36126:         LateIdCallSt
  loc_1B36140:         var_208 = CVar(CLng(var_96)) 'Long
  loc_1B36145:         var_234 = 4
  loc_1B36152:         var_178 = CVar(CLng(var_AA)) 'Long
  loc_1B36157:         var_1DC = 2
  loc_1B3616A:         var_148 = Me.FGrid1.TextMatrix)
  loc_1B36175:         var_158 = CVar(CStr(var_148)) 'String
  loc_1B3617D:         Set var_F0 = Me.FGrid1
  loc_1B36183:         LateIdCallSt
  loc_1B36199:       End If
  loc_1B3619C:     Next var_248 'Integer
  loc_1B361A1:   End If
  loc_1B361A4: Next var_20C 'Integer
  loc_1B361B1: If (arg_C = "A") Then
  loc_1B361BA:   var_1CC = 0
  loc_1B361E7:   unk_5C26D2.Execute "SELECT COUNT(*) FROM LEDGERM WHERE DocId='" & var_B0 & "'", var_148, -1
  loc_1B361EF:   var_EC = var_EC.Fields
  loc_1B361F7:   var_1CC = var_F0.Item(var_F0)
  loc_1B361FF:   var_108 = var_108.Value
  loc_1B36226:   If (var_158 > 0) Then
  loc_1B3622D:     var_86 = CByte(2) 'Byte
  loc_1B36231:     Proc_185_171_1B39E94 = var_158
  loc_1B36237:   End If
  loc_1B36237: End If
  loc_1B3623F: If (arg_C = "E") Then
  loc_1B36266:   var_F0 = Me.Fields.Item("DocID")
  loc_1B3626E:   var_148 = var_F0.Value
  loc_1B36282:   If CBool(CVar(var_B0) <> var_148) Then
  loc_1B3628B:     var_1CC = 0
  loc_1B362A8:     var_E8 = "SELECT COUNT(*) FROM LEDGERM WHERE DocId='" & var_B0
  loc_1B362B8:     unk_5C26D2.Execute var_E8 & "'", var_148, -1
  loc_1B362C0:     var_EC = var_EC.Fields
  loc_1B362C8:     var_1CC = var_F0.Item(var_F0)
  loc_1B362D0:     var_108 = var_108.Value
  loc_1B362F7:     If (var_158 > 0) Then
  loc_1B362FE:       var_86 = CByte(2) 'Byte
  loc_1B36302:       Proc_185_171_1B39E94 = var_158
  loc_1B36308:     End If
  loc_1B36308:   End If
  loc_1B36308: End If
  loc_1B3630E: If (var_C6 = 0) Then
  loc_1B36315:   var_86 = CByte(5) 'Byte
  loc_1B3631F:   Call 0.Method_arg_50 (var_E8)
  loc_1B36340:   MsgBox("Entry Does not Include Required Debit Account", &H10, CVar(var_E8), var_168, var_188)
  loc_1B36350:   Proc_185_171_1B39E94 = 
  loc_1B36356: End If
  loc_1B3635C: If (var_C8 = 0) Then
  loc_1B36363:   var_86 = CByte(5) 'Byte
  loc_1B3636D:   Call 0.Method_arg_50 (var_E8)
  loc_1B3638E:   MsgBox("Entry Does not Include Required Credit Account", &H10, CVar(var_E8), var_168, var_188)
  loc_1B3639E:   Proc_185_171_1B39E94 = 
  loc_1B363A4: End If
  loc_1B363B1: var_214 = Val(CStr(var_A8))
  loc_1B363C0: var_E8 = CStr(var_A0)
  loc_1B363D6: If ((var_A0 = CDbl(0)) Or (CDbl(Val(var_E8)) <> CDbl(var_214))) Then
  loc_1B363DD:   var_86 = CByte(4) 'Byte
  loc_1B363E7:   Call 0.Method_arg_50 (var_E8)
  loc_1B36402:   var_148 = "Entry Mismatched"
  loc_1B36408:   MsgBox(var_148, &H10, CVar(var_E8), var_168, var_188)
  loc_1B36418:   Proc_185_171_1B39E94 = var_214
  loc_1B3641E: End If
  loc_1B36435: If (Me.RecordCount > 0) Then
  loc_1B3644C:   var_E8 = "SELECT * FROM VOUCHER_TYPE WHERE NCAT='TDS' AND site_Code='" & MemVar_1F95070
  loc_1B3646A:   unk_5C26D2.Execute var_E8 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "'", var_148, -1
  loc_1B36475:   Set var_8C = var_EC
  loc_1B3649D:   If (var_8C.RecordCount > 0) Then
  loc_1B364B2:     var_EC = var_8C.Fields
  loc_1B364CB:     var_D8 = CStr(var_EC.Item("V_Type").Value)
  loc_1B364DB:   Else
  loc_1B364E1:     Call 0.Method_arg_50 (var_E8)
  loc_1B36502:     MsgBox("There Must be a TDS Vr.Type", &H10, CVar(var_E8), var_168, var_188)
  loc_1B36512:     Proc_185_171_1B39E94 = var_EC
  loc_1B36518:   End If
  loc_1B36518: End If
  loc_1B3652F: If (Me.RecordCount > 0) Then
  loc_1B36532:   ' Referenced from: 1B36624
  loc_1B36544:   If Not(Me.EOF) Then
  loc_1B36583:     If (Proc_183_2_E5AE94(CVar(Me.Fields.Item("TDSDocId"))) <> vbNullString) Then
  loc_1B365B1:       var_E0 = Proc_183_2_E5AE94(CVar(Me.Fields.Item("TDSDocId")))
  loc_1B365D4:       var_F0 = Me.Fields.Item("TDSDocId")
  loc_1B365DC:       var_148 = CVar(var_F0) 'Address
  loc_1B365F5:       var_158 = CVar(Proc_183_2_E5AE94(var_148)) 'String
  loc_1B365FB:       var_188 = Mid(var_158, &HE, 8)
  loc_1B36605:       var_DC = CLng(var_188)
  loc_1B36619:     End If
  loc_1B3661F:     Me.MoveNext
  loc_1B36624:     GoTo loc_1B36532
  loc_1B36627:   End If
  loc_1B3662F:   If (var_E0 = vbNullString) Then
  loc_1B3666D:     var_104 = "SELECT Max(V_NO) AS VNO FROM LEDGER WHERE V_TYPE='" & var_D8 & "' AND V_PREFIX='" & Me.LblVPrefix.Caption & "' AND SITE_CODE='"
  loc_1B36684:     unk_5C26D2.Execute var_104 & MemVar_1F95070 & "'", var_148, -1
  loc_1B3668F:     Set var_8C = var_F0
  loc_1B366B3:     var_1E0 = var_8C.RecordCount
  loc_1B366C1:     If (var_1E0 > 0) Then
  loc_1B366DB:       var_F0 = var_8C.Fields.Item("VNo")
  loc_1B366EA:       Proc_183_3_E7DD58(var_158, CVar(var_F0))
  loc_1B366F7:       var_168 = (var_158 + 1)
  loc_1B366FD:       var_DC = CLng(8)
  loc_1B3670F:     Else
  loc_1B36714:       var_DC = 1
  loc_1B36717:     End If
  loc_1B3676C:     var_10C = var_F0 & Proc_183_15_EAD490(var_D8, 5, var_DC & Proc_183_15_EAD490(MemVar_1F95070, 2, MemVar_1F9506C, var_DC))
  loc_1B36784:     var_11C = var_10C & Proc_183_15_EAD490(Me.LblVPrefix.Caption, 5)
  loc_1B3679D:     var_E0 = var_11C & Proc_183_16_EAF86C(CStr(Trim(Str(var_DC))), 8)
  loc_1B367BF:   End If
  loc_1B367BF: End If
  loc_1B367C8: unk_5C26D2.BeginTrans var_1E0
  loc_1B367D1: var_B2 = CByte(1) 'Byte
  loc_1B367DD: If (arg_C = "E") Then
  loc_1B367E3:   Call Proc_185_172_F25210(var_B0)
  loc_1B367E8: End If
  loc_1B367F9: If ((arg_C = "E") Or (arg_C = "D")) Then
  loc_1B36852:   unk_5C26D2.Execute CStr("SELECT * FROM LEDGER WHERE DocId='" & Me.Fields.Item("DocID").Value & "'"), var_188, -1
  loc_1B3685D:   Set var_8C = var_108
  loc_1B36877:   ' Referenced from: 1B36A4C
  loc_1B36886:   If Not(var_8C.EOF) Then
  loc_1B368C2:     var_108 = var_8C.Fields
  loc_1B368FB:     var_188 = CVar(var_8C.Fields.Item("AmtCr")) 'Address
  loc_1B36916:     var_1A8 = IIf((var_108.Item("AmtCr").Value > 0), var_188, 0)
  loc_1B36966:     var_2C8 = CVar(var_8C.Fields.Item("AmtDr")) 'Address
  loc_1B369A8:     var_320 = var_8C.Fields.Item("GroupCode").Value
  loc_1B369C7:     var_2F8 = var_8C.Fields.Item("V_DATE")
  loc_1B369CF:     var_330 = var_2F8.Value
  loc_1B36A00:     Proc_183_0_127A384(MemVar_1F951E0, CStr(var_8C.Fields.Item("subcode").Value), CSng(var_1A8), CSng(IIf((var_8C.Fields.Item("AmtDr").Value > 0), var_2C8, 0)))
  loc_1B36A47:     var_8C.MoveNext
  loc_1B36A4C:     GoTo loc_1B36877
  loc_1B36A4F:   End If
  loc_1B36AA5:   unk_5C26D2.Execute CStr("DELETE FROM LEDGER WHERE DocId='" & Me.Fields.Item("DocID").Value & "'"), var_188, -1
  loc_1B36ACE:   var_1CC = "SELECT TDSCODE,TDSAMT,V_DATE,GROUPCODE,TDSDRCODE,TDSDocId FROM LEDGERTDS LEFT JOIN SUBGROUP ON LEDGERTDS.TDSCODE=SUBGROUP.SUBCODE WHERE DOCID='"
  loc_1B36B17:   unk_5C26D2.Execute CStr(var_1CC & Me.Fields.Item("DocID").Value & "'"), var_188, -1
  loc_1B36B22:   Set var_8C = var_108
  loc_1B36B50:   If (var_8C.RecordCount > 0) Then
  loc_1B36B53:     ' Referenced from: 1B36DBE
  loc_1B36B62:     If Not(var_8C.EOF) Then
  loc_1B36C2C:       Proc_183_0_127A384(MemVar_1F951E0, CStr(var_8C.Fields.Item("TDSCODE").Value), CSng(var_8C.Fields.Item("TDSAmt").Value), CDbl(0), CStr(var_8C.Fields.Item("GroupCode").Value), CDate(var_8C.Fields.Item("V_DATE").Value))
  loc_1B36C8F:       var_108 = var_8C.Fields
  loc_1B36CB6:       var_124 = var_8C.Fields
  loc_1B36CDD:       var_28C = var_8C.Fields
  loc_1B36CED:       var_188 = var_28C.Item("V_DATE").Value
  loc_1B36D1D:       Proc_183_0_127A384(MemVar_1F951E0, CStr(var_8C.Fields.Item("TDSDRCODE").Value), CDbl(0), CSng(var_108.Item("TDSAmt").Value), CStr(var_124.Item("GroupCode").Value), CDate(var_188))
  loc_1B36D9A:       unk_5C26D2.Execute CStr("DELETE FROM LEDGER WHERE DOCID='" & var_8C.Fields.Item("TDSDocId").Value & "'"), var_188, -1
  loc_1B36DB9:       var_8C.MoveNext
  loc_1B36DBE:       GoTo loc_1B36B53
  loc_1B36DC1:     End If
  loc_1B36E17:     unk_5C26D2.Execute CStr("DELETE FROM LEDGERTDS WHERE DocId='" & Me.Fields.Item("DocID").Value & "'"), var_188, -1
  loc_1B36E33:   End If
  loc_1B36E33: End If
  loc_1B36E44: If ((arg_C = "A") Or (arg_C = "E")) Then
  loc_1B36E49:   var_AA = 0
  loc_1B36E71:   For var_33C = 0 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_96 = var_33C 'Integer
  loc_1B36E7B:     var_208 = CVar(CLng(var_96)) 'Long
  loc_1B36E80:     var_234 = 5
  loc_1B36E8D:     Set var_F0 = Me.FGrid1
  loc_1B36EAD:     var_178 = CVar(CLng(var_96)) 'Long
  loc_1B36EB2:     var_1DC = 6
  loc_1B36EF6:     If (CDbl((Val(CStr(Me.FGrid1.TextMatrix))) + Val(CStr(var_F0.TextMatrix))))) > CDbl(0)) Then
  loc_1B36F05:       var_AA = (var_AA + 1)
  loc_1B36F0C:       var_178 = CVar(CLng(var_96)) 'Long
  loc_1B36F11:       var_1DC = 2
  loc_1B36F35:       var_168 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1B36F66:       unk_5C26D2.Execute CStr("SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='" & var_168 & "'"), var_1A8, -1
  loc_1B36F71:       Set var_94 = var_F0
  loc_1B36FA1:       If (var_94.RecordCount > 0) Then
  loc_1B36FA8:         var_178 = CVar(CLng(var_96)) 'Long
  loc_1B36FD3:         var_214 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1B36FE8:         Call 0.Method_Proc_185_171_1B39E940 (0, var_108, var_10C, var_214, 1, var_178, Me.TxtVtYpe)
  loc_1B36FF0:         var_1DC = var_108.Tag
  loc_1B37001:         Set var_120 = Me.TxtVno
  loc_1B37007:         Call 0.Method_Proc_185_171_1B39E940 (0, var_124, var_11C, var_178, var_AA)
  loc_1B3700F:         var_1DC = var_124.Text
  loc_1B3701C:         var_310 = Val(var_11C)
  loc_1B3702A:         Proc_183_9_EAB2F0(var_168, CVar(Me.LblVPrefix), var_310)
  loc_1B37038:         Set var_1BC = Me.VchDt
  loc_1B3703E:         Call 0.Method_Proc_185_171_1B39E940 (0, var_28C, var_178)
  loc_1B3704D:         Proc_183_7_EB17D4(var_2C8, CVar(var_28C))
  loc_1B37068:         Set var_290 = Me.FGrid1
  loc_1B3706E:         var_308 = var_290.TextMatrix)
  loc_1B370A9:         var_338 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1B370DB:         var_910 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1B370F4:         Set var_2EC = Me.FGrid1
  loc_1B37105:         var_4E0 = CVar(CStr(var_2EC.TextMatrix))) 'String
  loc_1B3710B:         Proc_183_9_EAB2F0(var_4F0, var_4E0, 4, CVar(CLng(var_96)), var_910, 5, CVar(CLng(var_96)), var_338)
  loc_1B37137:         var_580 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_1B3713D:         Proc_183_9_EAB2F0(var_590, var_580, 8, CVar(CLng(var_96)), 6, CVar(CLng(var_96)))
  loc_1B37147:         var_610 = CVar(Proc_6_14_EF402C(var_308, 2, CVar(CLng(var_96)))) 'String
  loc_1B3714D:         Proc_183_8_EB1634(var_620, var_610)
  loc_1B3715B:         Set var_2F4 = Me.TxtCHno
  loc_1B37161:         Call 0.Method_Proc_185_171_1B39E940 (0, var_2F8)
  loc_1B3717B:         Proc_183_9_EAB2F0(var_6C0, Trim(CVar(var_2F8)))
  loc_1B37189:         Set var_6F4 = Me.TXTChDate
  loc_1B3718F:         Call 0.Method_Proc_185_171_1B39E940 (0, var_6F8)
  loc_1B37197:         var_708 = CVar(var_6F8) 'Address
  loc_1B3719E:         Proc_183_7_EB17D4(var_718, var_708)
  loc_1B371AC:         Set var_74C = Me.TXTClrDate
  loc_1B371B2:         Call 0.Method_Proc_185_171_1B39E940 (0, var_750)
  loc_1B371BA:         var_760 = CVar(var_750) 'Address
  loc_1B371C1:         Proc_183_7_EB17D4(var_770, var_760)
  loc_1B371D1:         Proc_183_9_EAB2F0(var_7C0, vbNullString)
  loc_1B371E8:         var_7F4 = var_94.Fields
  loc_1B37238:         var_E8 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,Chq_No,Chq_Date,Clg_Date,AgRefNo,GROUPCODE,GROUPNATURE,LOGSITE_CODE) VALUES ('" & var_B0
  loc_1B37273:         var_188 = CVar(var_E8 & "'," & CStr(var_214) & ",'" & var_10C & "'," & CStr(var_310) & ",") 'String
  loc_1B3729C:         var_2D8 = var_188 & var_168 & ",'" & CVar(MemVar_1F95070) & "'," & var_2C8 
  loc_1B372B0:         var_330 = var_2D8 & ",'" & CVar(CStr(var_308)) 
  loc_1B372D8:         var_460 = var_330 & "'," & CVar(var_338) & "," & CVar(var_910) 
  loc_1B372F8:         var_5A0 = var_460 & "," & var_4F0 & "," & var_590 
  loc_1B37314:         var_600 = var_5A0 & ",'" & CVar(MemVar_1F950C8) & "'," 
  loc_1B3732E:         var_670 = var_600 & var_620 & ",'" & CVar(arg_C) 
  loc_1B37387:         var_848 = var_670 & "'," & var_6C0 & "," & var_718 & "," & var_770 & "," & var_7C0 & ",'" & var_7F4.Item("GroupCode").Value & "','" 
  loc_1B373B8:         unk_5C26D2.Execute CStr(var_848 & var_94.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F95078) & "')"), var_904, -1
  loc_1B37490:         var_178 = CVar(CLng(var_96)) 'Long
  loc_1B37495:         var_1DC = 7
  loc_1B374B3:         var_E8 = CStr(Me.FGrid1.TextMatrix))
  loc_1B374BF:         var_208 = CVar(CLng(var_96)) 'Long
  loc_1B374E2:         var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_1B37500:         If (7 Or (var_F4 = "To")) Then
  loc_1B37507:           var_178 = CVar(CLng(var_96)) 'Long
  loc_1B3750C:           var_1DC = 2
  loc_1B3751F:           var_148 = Me.FGrid1.TextMatrix)
  loc_1B3755A:           var_910 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1B37590:           Set var_124 = Me.VchDt
  loc_1B37596:           Call 0.Method_Proc_185_171_1B39E940 (0, var_1BC, var_F4, var_910, 6, CVar(CLng(var_96)), var_148)
  loc_1B3759E:           var_1DC = var_1BC.Text
  loc_1B375CD:           Proc_183_0_127A384(MemVar_1F951E0, CStr(var_148), CDbl(0), var_910, CStr(var_94.Fields.Item("GroupCode").Value), CDate(var_F4))
  loc_1B375F8:         Else
  loc_1B375FC:           var_178 = CVar(CLng(var_96)) 'Long
  loc_1B37601:           var_1DC = 7
  loc_1B3761F:           var_E8 = CStr(Me.FGrid1.TextMatrix))
  loc_1B3762B:           var_208 = CVar(CLng(var_96)) 'Long
  loc_1B3764E:           var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_1B3766C:           If (7 Or (var_F4 = "By")) Then
  loc_1B37673:             var_178 = CVar(CLng(var_96)) 'Long
  loc_1B37678:             var_1DC = 2
  loc_1B3768B:             var_148 = Me.FGrid1.TextMatrix)
  loc_1B376B3:             var_158 = Me.FGrid1.TextMatrix)
  loc_1B376C6:             var_910 = Val(CStr(var_158))
  loc_1B376E3:             var_120 = var_94.Fields.Item("GroupCode")
  loc_1B376EB:             var_168 = var_120.Value
  loc_1B376FC:             Set var_124 = Me.VchDt
  loc_1B37702:             Call 0.Method_Proc_185_171_1B39E940 (0, var_1BC, var_F4, var_910, 5, CVar(CLng(var_96)), var_148)
  loc_1B3770A:             var_1DC = var_1BC.Text
  loc_1B37739:             Proc_183_0_127A384(MemVar_1F951E0, CStr(var_148), var_910, CDbl(0), CStr(var_168), CDate(var_F4))
  loc_1B37761:           End If
  loc_1B37761:         End If
  loc_1B37764:       Else
  loc_1B3777D:         MsgBox("Group Not Defined", 0, var_158, var_168, var_188)
  loc_1B3778D:         GoTo loc_1B39E48
  loc_1B37790:       End If
  loc_1B377A7:       If (Me.RecordCount > 0) Then
  loc_1B377B3:         Me.Sort = "VSNo ASC"
  loc_1B377BC:         var_178 = CVar(CLng(var_96)) 'Long
  loc_1B377C1:         var_1DC = 1
  loc_1B3780D:         Me.Find "VSNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix)))), 0, 1
  loc_1B37835:         If (Me.EOF = 0) Then
  loc_1B37838:           ' Referenced from: 1B37955
  loc_1B3785D:           var_158 = Me.Fields.Item("VSno").Value
  loc_1B37869:           var_1CC = CVar(CLng(var_96)) 'Long
  loc_1B378AE:           If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_1B378D6:             var_158 = Me.Fields.Item("subcode").Value
  loc_1B378E2:             var_1CC = CVar(CLng(var_96)) 'Long
  loc_1B3791D:             If CBool(2 <> CVar(CStr(Me.FGrid1.TextMatrix)))) Then
  loc_1B3792B:               Me.Delete
  loc_1B37930:             End If
  loc_1B37936:             Me.MoveNext
  loc_1B3794F:             If (Me.EOF = &HFF) Then
  loc_1B37952:               GoTo loc_1B37958
  loc_1B37955:             End If
  loc_1B37955:             GoTo loc_1B37838
  loc_1B37958:             ' Referenced from: 1B37952
  loc_1B37958:           End If
  loc_1B37958:         End If
  loc_1B37958:       End If
  loc_1B3796F:       If (Me.RecordCount > 0) Then
  loc_1B3797B:         Me.Sort = "V_SNo ASC"
  loc_1B37984:         var_178 = CVar(CLng(var_96)) 'Long
  loc_1B37989:         var_1DC = 1
  loc_1B379D5:         Me.Find "V_SNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix)))), 0, 1
  loc_1B379FD:         If (Me.EOF = 0) Then
  loc_1B37A00:           ' Referenced from: 1B37B1D
  loc_1B37A25:           var_158 = Me.Fields.Item("V_SNo").Value
  loc_1B37A31:           var_1CC = CVar(CLng(var_96)) 'Long
  loc_1B37A76:           If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_1B37A96:             var_F0 = Me.Fields.Item("subcode")
  loc_1B37A9E:             var_158 = var_F0.Value
  loc_1B37AAA:             var_1CC = CVar(CLng(var_96)) 'Long
  loc_1B37AE5:             If CBool(2 <> CVar(CStr(Me.FGrid1.TextMatrix)))) Then
  loc_1B37AF3:               Me.Delete
  loc_1B37AF8:             End If
  loc_1B37AFE:             Me.MoveNext
  loc_1B37B17:             If (Me.EOF = &HFF) Then
  loc_1B37B1A:               GoTo loc_1B37B20
  loc_1B37B1D:             End If
  loc_1B37B1D:             GoTo loc_1B37A00
  loc_1B37B20:             ' Referenced from: 1B37B1A
  loc_1B37B20:           End If
  loc_1B37B20:         End If
  loc_1B37B20:       End If
  loc_1B37B20:     End If
  loc_1B37B23:   Next var_33C 'Integer
  loc_1B37B43:   Set var_EC = Me.TopCtrl1
  loc_1B37B49:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(((global_200 <> var_B0) And (global_200 <> vbNullString)))
  loc_1B37B63:   If ( And (CStr() = "Edit")) Then
  loc_1B37B6B:     var_128 = 0
  loc_1B37B7E:     var_11C = 0
  loc_1B37B89:     var_118 = 0
  loc_1B37B9C:     var_110 = 0
  loc_1B37BA7:     var_10C = 0
  loc_1B37BBA:     var_104 = 0
  loc_1B37C01:     Proc_154_5_10E3BD4(MemVar_1F951E0, "Ledger", "Docid", &HC8, global_200, 0, 0, 0)
  loc_1B37C22:     var_128 = 0
  loc_1B37C35:     var_11C = 0
  loc_1B37C40:     var_118 = 0
  loc_1B37C53:     var_110 = 0
  loc_1B37C5E:     var_10C = 0
  loc_1B37C71:     var_104 = 0
  loc_1B37CB8:     Proc_154_5_10E3BD4(MemVar_1F951E0, "LEDGERM", "DocId", &HC8, global_200, 0, 0, 0)
  loc_1B37CD9:     var_128 = 0
  loc_1B37CEC:     var_11C = 0
  loc_1B37CF7:     var_118 = 0
  loc_1B37D0A:     var_110 = 0
  loc_1B37D15:     var_10C = 0
  loc_1B37D28:     var_104 = 0
  loc_1B37D6F:     Proc_154_5_10E3BD4(MemVar_1F951E0, "LEDGERADJ", "DocId1", &HC8, global_200, 0, 0, 0)
  loc_1B37D90:     var_128 = 0
  loc_1B37DA3:     var_11C = 0
  loc_1B37DAE:     var_118 = 0
  loc_1B37DC1:     var_110 = 0
  loc_1B37DCC:     var_10C = 0
  loc_1B37DDF:     var_104 = 0
  loc_1B37E14:     var_F4 = "DocId"
  loc_1B37E26:     Proc_154_5_10E3BD4(MemVar_1F951E0, "LEDGERTDS", var_F4, &HC8, global_200, 0, 0, 0)
  loc_1B37E42:   End If
  loc_1B37E4A:   If (arg_C = "A") Then
  loc_1B37E59:     Set var_EC = Me.TxtVtYpe
  loc_1B37E5F:     Call 0.Method_Proc_185_171_1B39E940 (0, var_F0, var_F4, var_104, 0, var_10C)
  loc_1B37E67:     var_110 = var_F0.Tag
  loc_1B37E70:     var_148 = CVar(Me.LblVPrefix) 'Address
  loc_1B37E77:     Proc_183_9_EAB2F0(var_158, var_148, 0)
  loc_1B37E88:     Set var_108 = Me.TxtVno
  loc_1B37E8E:     Call 0.Method_Proc_185_171_1B39E940 (0, var_120, var_104)
  loc_1B37E96:     var_118 = var_120.Text
  loc_1B37EA3:     var_214 = Val(var_104)
  loc_1B37EAF:     Set var_124 = Me.VchDt
  loc_1B37EB5:     Call 0.Method_Proc_185_171_1B39E940 (0, var_1BC, var_214)
  loc_1B37EC4:     Proc_183_7_EB17D4(var_2D8, CVar(var_1BC))
  loc_1B37ED5:     Set var_28C = Me.TxtGlb
  loc_1B37EDB:     Call 0.Method_Proc_185_171_1B39E940 (0, var_290, var_10C)
  loc_1B37EE3:     var_11C = var_290.Text
  loc_1B37F05:     var_320 = CVar(Replace(var_10C, vbCrLf, vbNullString, 1, -1, 0)) 'String
  loc_1B37F0B:     Proc_183_9_EAB2F0(var_330, CVar(CStr(var_308)))
  loc_1B37F15:     var_43C = CVar(Proc_6_14_EF402C(0)) 'String
  loc_1B37F1B:     Proc_183_8_EB1634(var_460)
  loc_1B37F2B:     Proc_183_9_EAB2F0(var_4E0, arg_C)
  loc_1B37F44:     var_E8 = "INSERT INTO LedgerM (DocId,V_Type,v_Prefix,V_No,Site_Code,V_Date,Narration,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_B0
  loc_1B37F52:     var_100 = var_E8 & "','" & var_F4
  loc_1B37FAF:     var_3AC = CVar(var_100 & "',") & var_158 & "," & CVar(var_214) & ",'" & CVar(MemVar_1F95070) & "'," & var_2D8 & "," & var_330 & ",'" 
  loc_1B38003:     unk_5C26D2.Execute CStr(var_3AC & CVar(MemVar_1F950C8) & "'," & var_460 & "," & var_4E0 & ",'" & CVar(MemVar_1F95078) & "')"), var_580, -1
  loc_1B38075:     Set var_EC = Me.TxtVno
  loc_1B3807B:     Call 0.Method_Proc_185_171_1B39E940 (0, var_F0, var_E8)
  loc_1B38083:     var_2A4 = var_F0.Text
  loc_1B38090:     var_214 = Val(var_E8)
  loc_1B3809F:     Set var_108 = Me.TxtVtYpe
  loc_1B380A5:     Call 0.Method_Proc_185_171_1B39E940 (0, var_120, var_100)
  loc_1B380EB:     var_10C = "UPDATE VOUCHER_Prefix SET Start_Srl_No=" & CStr(var_120.Tag) & " WHERE V_Type='" & var_100
  loc_1B38115:     var_138 = var_10C & "' and Prefix='" & Me.LblVPrefix.Caption & "' AND SITE_cODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_1B38125:     unk_5C26D2.Execute var_138 & "'", var_148, -1
  loc_1B38167:     Set var_EC = Me.TxtVtYpe
  loc_1B3816D:     Call 0.Method_Proc_185_171_1B39E940 (0, var_F0, var_E8)
  loc_1B38175:     var_1BC = var_F0.Tag
  loc_1B38180:     global_140 = var_E8
  loc_1B381A6:     global_128 = Me.LblVPrefix.Caption
  loc_1B381B3:   Else
  loc_1B381BF:     Set var_EC = Me.TxtVtYpe
  loc_1B381C5:     Call 0.Method_Proc_185_171_1B39E940 (0, var_F0)
  loc_1B381CD:     var_F4 = var_F0.Tag
  loc_1B381DD:     Proc_183_9_EAB2F0(var_158, CVar(Me.LblVPrefix))
  loc_1B381EE:     Set var_108 = Me.TxtVno
  loc_1B381F4:     Call 0.Method_Proc_185_171_1B39E940 (0, var_120)
  loc_1B38209:     var_214 = Val(var_120.Text)
  loc_1B38215:     Set var_124 = Me.VchDt
  loc_1B3821B:     Call 0.Method_Proc_185_171_1B39E940 (0, var_1BC)
  loc_1B3822A:     Proc_183_7_EB17D4(var_2D8, CVar(var_1BC))
  loc_1B3823B:     Set var_28C = Me.TxtGlb
  loc_1B38241:     Call 0.Method_Proc_185_171_1B39E940 (0, var_290, var_10C)
  loc_1B3826B:     var_320 = CVar(Replace(var_10C, vbCrLf, vbNullString, 1, -1, 0)) 'String
  loc_1B38271:     Proc_183_9_EAB2F0(var_330, CVar(CStr(CVar(var_100 & "',") & var_158 & "," & CVar(var_290.Text) & ",'" & CVar(MemVar_1F95070) & "'," & var_2D8 & ",")))
  loc_1B3827B:     var_43C = CVar(Proc_6_14_EF402C(var_43C)) 'String
  loc_1B38281:     Proc_183_8_EB1634(var_460)
  loc_1B382F3:     var_1A8 = CVar("UPDATE LedgerM SET DocId='" & var_B0 & "',V_Type='" & var_F4 & "',v_Prefix=") & var_158 & ",V_No=" & CVar(var_290.Text) 
  loc_1B3830F:     var_2B8 = var_1A8 & ",Site_Code='" & CVar(MemVar_1F95070) & "',V_Date=" 
  loc_1B38352:     var_4D0 = var_2B8 & var_2D8 & ",Narration=" & var_330 & ",U_Name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_460 & ",U_AE='" 
  loc_1B3835C:     var_4E0 = var_4D0 & CVar(arg_C) 
  loc_1B38378:     var_520 = var_4E0 & "',LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' WHERE DocId='" 
  loc_1B38396:     unk_5C26D2.Execute CStr(var_520 & Me.Fields.Item("DocID").Value & "'"), var_5A0, -1
  loc_1B38404:   End If
  loc_1B3840D:   Set var_EC = Me.VchDt
  loc_1B38413:   Call 0.Method_Proc_185_171_1B39E940 (0, var_F0)
  loc_1B3842F:   var_158 = "dd/MMM/yyyy"
  loc_1B38438:   var_148 = CVar(var_F0) 'Address
  loc_1B3844C:   var_188 = (Format(var_148, var_158) + " ")
  loc_1B38473:   var_2A0 = (1 + Format(Time, "hh:nn:ss"))
  loc_1B38478:   var_D0 = CStr("hh:nn:ss" & ",Site_Code='" & CVar(MemVar_1F95070))
  loc_1B384CA:   Set var_EC = Me.TxtVtYpe
  loc_1B384D0:   Call 0.Method_Proc_185_171_1B39E940 (0, var_F0, var_F4, "SELECT COUNT(*) FROM LastVoucher WHERE User_Name='" & MemVar_1F950C8 & "' AND V_Type='", var_148, -1, var_108)
  loc_1B384D8:   var_120 = var_F0.Tag
  loc_1B3850D:   unk_5C26D2.Execute 0 & var_F4 & "' AND SITE_cODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "'", var_124, var_158
  loc_1B38515:   1 = var_108.Fields
  loc_1B3851D:   1 = var_120.Item(CVar("UPDATE LedgerM SET DocId='" & var_B0 & "',V_Type='" & var_F4 & "',v_Prefix=") & var_158)
  loc_1B38525:    = var_124.Value
  loc_1B3855E:   If (var_158 > 0) Then
  loc_1B3858A:     Proc_183_8_EB1634(var_148, var_D0, CVar("UPDATE LastVoucher Set DOCID='" & var_B0 & "',Last_Ent_Date="))
  loc_1B3859B:     var_188 = var_4D0 & var_148 & ",V_Type='" 
  loc_1B385AB:     Set var_EC = Me.TxtVtYpe
  loc_1B385B1:     Call 0.Method_Proc_185_171_1B39E940 (0, var_F0, var_F4)
  loc_1B385B9:     var_188 = var_F0.Tag
  loc_1B385C4:     var_1A8 = -1 & CVar(var_F4) 
  loc_1B385DC:     Proc_183_8_EB1634(var_2B8, CVar(Proc_6_14_EF402C("hh:nn:ss" & "',U_EntDt=")))
  loc_1B385E4:     var_2C8 = var_124 & var_2B8 
  loc_1B38623:     Set var_108 = Me.TxtVtYpe
  loc_1B38629:     Call 0.Method_Proc_185_171_1B39E940 (0, var_120)
  loc_1B3863C:     var_3AC = var_2C8 & ",U_NAME='" & CVar(MemVar_1F950C8) & "' where User_Name='" & CVar(MemVar_1F950C8) & "' AND V_Type='" & CVar(var_120.Tag) 
  loc_1B38679:     unk_5C26D2.Execute CStr(var_3AC & "' AND SITE_cODE='" & CVar(MemVar_1F95070) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), , 
  loc_1B386C6:   Else
  loc_1B386DA:     var_E8 = "INSERT INTO LastVoucher (User_Name,V_Type,Last_Ent_Date,DOCID,U_Name,U_EntDt,SITE_CODE,LOGSITE_CODE) Values ('" & MemVar_1F950C8
  loc_1B386F0:     Set var_EC = Me.TxtVtYpe
  loc_1B386F6:     Call 0.Method_Proc_185_171_1B39E940 (0, var_F0, var_F4, var_E8 & "','")
  loc_1B386FE:     var_3AC = var_F0.Tag
  loc_1B38707:     var_100 = -1 & var_F4
  loc_1B3870E:     var_158 = CVar(CStr(var_3AC & "' AND SITE_cODE='" & CVar(MemVar_1F95070) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'") & "',") 'String
  loc_1B3871C:     Proc_183_8_EB1634(var_148, var_D0)
  loc_1B38737:     var_198 = var_158 & var_148 & ",'" & CVar(var_B0) 
  loc_1B38762:     Proc_183_8_EB1634(var_2C8, CVar(Proc_6_14_EF402C(var_198 & "','" & CVar(MemVar_1F950C8) & "',")))
  loc_1B3876A:     var_2D8 = var_108 & var_2C8 
  loc_1B38790:     var_330 = var_2D8 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_1B387A7:     unk_5C26D2.Execute CStr(var_330 & "')"), , 
  loc_1B387E7:   End If
  loc_1B38819:   unk_5C26D2.Execute "DELETE FROM LEDGERAdj WHERE DocId1='" & var_B0 & "' OR DocId2='" & var_B0 & "'", var_148, -1
  loc_1B38846:   If (Me.RecordCount > 0) Then
  loc_1B3884F:     Me.MoveFirst
  loc_1B38854:     ' Referenced from: 1B38D28
  loc_1B38866:     If Not(Me.EOF) Then
  loc_1B38892:       Proc_183_3_E7DD58(var_158, CVar(Me.Fields.Item("cr")))
  loc_1B388AC:       If (var_158 > 0) Then
  loc_1B388BC:         var_1CC = "INSERT INTO LEDGERADJ (DOCID1,V_SNO1,DOCID2,V_SNO2,CR,SUBCODE,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) VALUES ('"
  loc_1B388D6:         var_EC = Me.Fields
  loc_1B388EE:         var_158 = var_1CC & var_EC.Item("DocID").Value 
  loc_1B38924:         Proc_183_3_E7DD58(var_198, CVar(Me.Fields.Item("V_SNo")), var_158 & "',", var_600)
  loc_1B3892C:         var_1A8 = -1 & var_198 
  loc_1B3896E:         var_2C8 = CVar(Me.Fields.Item("VSno")) 'Address
  loc_1B38975:         Proc_183_3_E7DD58(var_2D8, var_2C8, var_198 & "','" & ",'" & CVar(var_B0) & "',")
  loc_1B389AC:         var_320 = CVar(Me.Fields.Item("cr")) 'Address
  loc_1B389B3:         Proc_183_3_E7DD58(var_330, var_320)
  loc_1B38A1A:         var_4D0 = CVar(Proc_6_14_EF402C(var_2EC & var_2D8 & "," & var_330 & ",'" & Me.Fields.Item("subcode").Value & "','" & CVar(MemVar_1F950C8) & "',")) 'String
  loc_1B38A20:         Proc_183_8_EB1634(var_4E0, var_4D0)
  loc_1B38A31:         var_500 = var_EC & var_4E0 & "," 
  loc_1B38A40:         Proc_183_9_EAB2F0(var_520, arg_C)
  loc_1B38A77:         var_5E0 = var_500 & var_520 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_1B38A85:         unk_5C26D2.Execute CStr(var_5E0), , 
  loc_1B38AEA:       Else
  loc_1B38AFE:         var_E8 = "INSERT INTO LEDGERADJ (DOCID1,V_SNO1,DOCID2,V_SNO2,CR,SUBCODE,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) VALUES ('" & var_B0
  loc_1B38B1A:         var_EC = Me.Fields
  loc_1B38B2A:         var_148 = CVar(var_EC.Item("VSno")) 'Address
  loc_1B38B31:         Proc_183_3_E7DD58(var_158, var_148, CVar(var_E8 & "',"))
  loc_1B38B73:         var_1B8 = var_5E0 & var_158 & ",'" & Me.Fields.Item("DocID").Value 
  loc_1B38BA9:         Proc_183_3_E7DD58(var_2C8, CVar(Me.Fields.Item("V_SNo")), var_1B8 & "',")
  loc_1B38BB1:         var_2D8 = -1 & var_2C8 
  loc_1B38BE7:         Proc_183_3_E7DD58(var_320, CVar(Me.Fields.Item("dr")))
  loc_1B38C3C:         var_43C = var_2D8 & "," & var_320 & ",'" & Me.Fields.Item("subcode").Value & "','" & CVar(MemVar_1F950C8) 
  loc_1B38C54:         Proc_183_8_EB1634(var_4D0, CVar(Proc_6_14_EF402C(var_43C & "',")))
  loc_1B38C74:         Proc_183_9_EAB2F0(var_500, arg_C)
  loc_1B38C7C:         var_520 = var_2EC & var_4D0 & "," & var_500 
  loc_1B38CA2:         var_5A0 = var_520 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_1B38CB9:         unk_5C26D2.Execute CStr(var_5A0 & "')"), , 
  loc_1B38D1D:       End If
  loc_1B38D23:       Me.MoveNext
  loc_1B38D28:       GoTo loc_1B38854
  loc_1B38D2B:     End If
  loc_1B38D2B:   End If
  loc_1B38D4F:   unk_5C26D2.Execute "DELETE FROM LedgerRef WHERE DocId='" & var_B0 & "'", var_148, -1
  loc_1B38D78:   If (Me.RecordCount > 0) Then
  loc_1B38D7D:     var_AA = 0
  loc_1B38D96:     unk_5C26D2.Execute "SELECT MAX(ID) AS MaxId FROM LedgerRef", var_148, -1
  loc_1B38DA1:     Set var_8C = var_EC
  loc_1B38DBE:     If (var_8C.RecordCount > 0) Then
  loc_1B38DD0:       var_EC = var_8C.Fields
  loc_1B38DE7:       Proc_183_3_E7DD58(var_158, CVar(var_EC.Item("MaxId")), var_EC)
  loc_1B38DF0:       var_AA = CInt(var_158)
  loc_1B38DFD:     End If
  loc_1B38E03:     Me.MoveFirst
  loc_1B38E08:     ' Referenced from: 1B3914E
  loc_1B38E1A:     If Not(Me.EOF) Then
  loc_1B38E23:       var_AA = (var_AA + 1)
  loc_1B38E3F:       var_F4 = "INSERT INTO LedgerRef (ID,DOCID,V_SNO,DR,CR,SUBCODE,U_Name,U_EntDt,U_AE,AgRefType,AgRefNo,DueDate,V_dATE,SITE_CODE,LOGSITE_CODE) VALUES (" & CStr(var_AA)
  loc_1B38E69:       var_EC = Me.Fields
  loc_1B38E80:       Proc_183_3_E7DD58(var_158, CVar(var_EC.Item("V_SNo")), CVar(var_F4 & ",'" & var_B0 & "',"), var_708, -1)
  loc_1B38EBE:       Proc_183_3_E7DD58(var_1B8, CVar(Me.Fields.Item("dr")), var_74C & var_158 & ",", var_AA)
  loc_1B38EFC:       Proc_183_3_E7DD58(var_2D8, CVar(Me.Fields.Item("cr")), var_AA & var_1B8 & ",")
  loc_1B38F63:       var_3EC = CVar(Proc_6_14_EF402C(var_AA & var_2D8 & ",'" & Me.Fields.Item("subcode").Value & "','" & CVar(MemVar_1F950C8) & "',")) 'String
  loc_1B38F69:       Proc_183_8_EB1634(var_43C, var_3EC)
  loc_1B38F89:       Proc_183_9_EAB2F0(var_4D0, arg_C)
  loc_1B38FC7:       Proc_183_9_EAB2F0(var_520, CVar(Me.Fields.Item("AgRefType")))
  loc_1B39005:       Proc_183_9_EAB2F0(var_5A0, CVar(Me.Fields.Item("AgRefNo")))
  loc_1B39043:       Proc_183_7_EB17D4(var_610, CVar(Me.Fields.Item("DueDate")))
  loc_1B39061:       Set var_6F4 = Me.VchDt
  loc_1B39067:       Call 0.Method_Proc_185_171_1B39E940 (0, var_6F8)
  loc_1B39076:       Proc_183_7_EB17D4(var_670, CVar(var_6F8))
  loc_1B39091:       var_6B0 = var_EC & var_43C & "," & var_4D0 & "," & var_520 & "," & var_5A0 & "," & var_610 & "," & var_670 & ",'" & CVar(MemVar_1F95070) 
  loc_1B3909A:       var_6C0 = var_6B0 & "','" 
  loc_1B390BB:       unk_5C26D2.Execute CStr(var_6C0 & CVar(MemVar_1F95078) & "')"), , 
  loc_1B39149:       Me.MoveNext
  loc_1B3914E:       GoTo loc_1B38E08
  loc_1B39151:     End If
  loc_1B39151:   End If
  loc_1B39153:   var_AA = 0
  loc_1B3916D:   If (Me.RecordCount > 0) Then
  loc_1B39176:     Me.MoveFirst
  loc_1B3917B:     ' Referenced from: 1B39D8C
  loc_1B3918D:     If Not(Me.EOF) Then
  loc_1B39196:       var_AA = (var_AA + 1)
  loc_1B391AD:       var_E8 = "INSERT INTO LEDGERTDS (DocId,V_SNo,TDSCode,TDSDrCode,TDSYN,ONAMT,TDS,TDSAMT,TDSPOST,TDSDocId,TDSV_SNo,V_dATE,v_Prefix,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_B0
  loc_1B39206:       var_108 = Me.Fields
  loc_1B39216:       var_198 = var_108.Item("TDSCODE").Value
  loc_1B39258:       var_2B8 = CVar(var_E8 & "',") & Me.Fields.Item("V_SNo").Value & ",'" & var_198 & "','" & Me.Fields.Item("TDSDRCODE").Value 
  loc_1B39306:       var_3CC = var_2B8 & "','" & Me.Fields.Item("TDSYN").Value & "'," & Me.Fields.Item("ONAmt").Value & "," & Me.Fields.Item("TDS").Value 
  loc_1B39372:       var_4D0 = Me.Fields.Item("TDSPOST").Value
  loc_1B393A9:       var_580 = var_3CC & "," & Me.Fields.Item("TDSAmt").Value & ",'" & var_4D0 & "','" & CVar(var_E0) & "'," & CVar(var_AA) & "," 
  loc_1B393B6:       Set var_74C = Me.VchDt
  loc_1B393BC:       Call 0.Method_Proc_185_171_1B39E940 (0, var_750, var_580, var_760)
  loc_1B393CB:       Proc_183_7_EB17D4(var_5A0, CVar(var_750), -1)
  loc_1B393EB:       Proc_183_9_EAB2F0(var_610, CVar(Me.LblVPrefix), var_7F4 & var_5A0 & ",")
  loc_1B393F3:       var_620 = var_AA & var_610 
  loc_1B39431:       Proc_183_8_EB1634(var_6C0, CVar(Proc_6_14_EF402C(var_620 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "',")))
  loc_1B39476:       unk_5C26D2.Execute CStr(var_AA & var_6C0 & ",'" & CVar(arg_C) & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1B3953C:       var_F0 = Me.Fields.Item("TDSCODE")
  loc_1B3954B:       var_158 = Trim(CVar(var_F0))
  loc_1B3956A:       unk_5C26D2.Execute CStr("SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='" & var_158 & "'"), var_198, -1
  loc_1B39575:       Set var_94 = var_108
  loc_1B395A3:       If (var_94.RecordCount > 0) Then
  loc_1B395B1:         Proc_183_9_EAB2F0(var_158, CVar(Me.LblVPrefix))
  loc_1B395BF:         Set var_EC = Me.VchDt
  loc_1B395C5:         Call 0.Method_Proc_185_171_1B39E940 (0, var_F0)
  loc_1B395D4:         Proc_183_7_EB17D4(var_2B8, CVar(var_F0))
  loc_1B395EE:         var_108 = Me.Fields
  loc_1B3964A:         var_290 = Me.Fields.Item("TDSDRCODE")
  loc_1B396A2:         var_480 = CVar(Replace(CStr(Me.Fields.Item("Narration").Value), vbCrLf, vbNullString, 1, -1, 0)) 'String
  loc_1B396A8:         Proc_183_9_EAB2F0(var_4D0, var_290.Value & "," & Me.Fields.Item("TDSAmt").Value & ",'")
  loc_1B396B2:         var_570 = CVar(Proc_6_14_EF402C(var_108)) 'String
  loc_1B396B8:         Proc_183_8_EB1634(var_580)
  loc_1B396D1:         var_E8 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_E0
  loc_1B3971B:         var_198 = CVar(var_E8 & "'," & CStr(var_AA) & ",'" & var_D8 & "'," & CStr(var_DC) & ",") & var_158 & ",'" 
  loc_1B39755:         var_35C = var_198 & CVar(MemVar_1F95070) & "'," & var_2B8 & ",'" & var_108.Item("TDSCODE").Value & "'," & Me.Fields.Item("TDSAmt").Value 
  loc_1B397AB:         var_5C0 = var_35C & ",0,'" & var_290.Value & "'," & var_4D0 & ",'" & CVar(MemVar_1F950C8) & "'," & var_580 & ",'" & CVar(arg_C) 
  loc_1B397D5:         unk_5C26D2.Execute CStr(var_5C0 & "','" & CVar(MemVar_1F95078) & "')"), var_620, -1
  loc_1B39894:         var_108 = Me.Fields
  loc_1B398CB:         var_168 = var_94.Fields.Item("GroupCode").Value
  loc_1B398DC:         Set var_28C = Me.VchDt
  loc_1B398E2:         Call 0.Method_Proc_185_171_1B39E940 (0, var_290, var_E8)
  loc_1B398EA:         var_2EC = var_290.Text
  loc_1B3991A:         Proc_183_0_127A384(MemVar_1F951E0, CStr(Me.Fields.Item("TDSCODE").Value), CDbl(0), CSng(var_108.Item("TDSAmt").Value))
  loc_1B39944:       End If
  loc_1B39970:       var_F0 = Me.Fields.Item("TDSDRCODE")
  loc_1B3997F:       var_158 = Trim(CVar(var_F0))
  loc_1B39987:       var_168 = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='" & var_158 
  loc_1B39994:       var_E8 = CStr(var_168 & "'")
  loc_1B3999E:       unk_5C26D2.Execute var_E8, var_198, -1
  loc_1B399A9:       Set var_94 = var_108
  loc_1B399D7:       If (var_94.RecordCount > 0) Then
  loc_1B399E0:         var_AA = (var_AA + 1)
  loc_1B399EE:         Proc_183_9_EAB2F0(var_158, CVar(Me.LblVPrefix), var_AA, var_108)
  loc_1B399FC:         Set var_EC = Me.VchDt
  loc_1B39A02:         Call 0.Method_Proc_185_171_1B39E940 (0, var_F0, CStr(var_168))
  loc_1B39A11:         Proc_183_7_EB17D4(var_2B8, CVar(var_F0))
  loc_1B39A87:         var_290 = Me.Fields.Item("TDSCODE")
  loc_1B39ADF:         var_480 = CVar(Replace(CStr(Me.Fields.Item("Narration").Value), vbCrLf, vbNullString, 1, -1, 0)) 'String
  loc_1B39AE5:         Proc_183_9_EAB2F0(var_4D0, var_290.Value & "," & Me.Fields.Item("TDSAmt").Value & ",'")
  loc_1B39AEF:         var_570 = CVar(Proc_6_14_EF402C(CDate(var_E8))) 'String
  loc_1B39AF5:         Proc_183_8_EB1634(var_580, var_570)
  loc_1B39B0E:         var_E8 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_E0
  loc_1B39B62:         var_1A8 = CVar(var_E8 & "'," & CStr(var_AA) & ",'" & var_D8 & "'," & CStr(var_DC) & ",") & var_158 & ",'" & CVar(MemVar_1F95070) 
  loc_1B39B9B:         var_3AC = var_1A8 & "'," & var_2B8 & ",'" & Me.Fields.Item("TDSDRCODE").Value & "',0," & Me.Fields.Item("TDSAmt").Value & ",'" 
  loc_1B39BF1:         var_5E0 = var_3AC & var_290.Value & "'," & var_4D0 & ",'" & CVar(MemVar_1F950C8) & "'," & var_580 & ",'" & CVar(arg_C) & "','" 
  loc_1B39C12:         unk_5C26D2.Execute CStr(var_5E0 & CVar(MemVar_1F95078) & "')"), var_620, -1
  loc_1B39C98:         var_178 = "TDSDRCODE"
  loc_1B39CAF:         var_F0 = Me.Fields.Item(var_178)
  loc_1B39D08:         var_168 = var_94.Fields.Item("GroupCode").Value
  loc_1B39D19:         Set var_28C = Me.VchDt
  loc_1B39D1F:         Call 0.Method_Proc_185_171_1B39E940 (0, var_290, var_E8)
  loc_1B39D27:         var_2EC = var_290.Text
  loc_1B39D57:         Proc_183_0_127A384(MemVar_1F951E0, CStr(var_F0.Value), CSng(Me.Fields.Item("TDSAmt").Value), CDbl(0))
  loc_1B39D81:       End If
  loc_1B39D87:       Me.MoveNext
  loc_1B39D8C:       GoTo loc_1B3917B
  loc_1B39D8F:     End If
  loc_1B39D8F:   End If
  loc_1B39D9B:   Set var_EC = Me.TxtVtYpe
  loc_1B39DA1:   Call 0.Method_Proc_185_171_1B39E940 (0, var_F0, var_E8)
  loc_1B39DA9:   CStr(var_168) = var_F0.Tag
  loc_1B39DB4:   global_124 = var_E8
  loc_1B39DC8:   unk_5C26D2.CommitTrans
  loc_1B39DD1:   var_B2 = CByte(0) 'Byte
  loc_1B39DE0:   Me.Requery -1
  loc_1B39DFA:   var_E8 = "DocId='" & var_B0
  loc_1B39E0A:   Me.Find var_E8 & "'", 0, 1
  loc_1B39E22:   If (CInt(global_110) = 2) Then
  loc_1B39E25:     Call Proc_185_144_19C1534(var_178, CDate(var_E8))
  loc_1B39E2A:   End If
  loc_1B39E2A: End If
  loc_1B39E2F: Set var_8C = Nothing
  loc_1B39E37: Set var_90 = Nothing
  loc_1B39E3F: Set var_94 = Nothing
  loc_1B39E42: Proc_185_171_1B39E94 = var_570
  loc_1B39E48: ' Referenced from: 1B3778D
  loc_1B39E51: If (CInt(var_B2) = 1) Then
  loc_1B39E5A:   unk_5C26D2.RollbackTrans
  loc_1B39E5F: End If
  loc_1B39E65: Call 0.Method_arg_50 (var_E8)
  loc_1B39E7A: Proc_183_57_104B0BC(var_E8)
  loc_1B39E8A: var_86 = CByte(1) 'Byte
  loc_1B39E8E: Proc_185_171_1B39E94 = "LedPost"
End Sub

Public Sub Proc_185_172_F25210(arg_C) 'F25210
  'Data Table: 5C26BC
  Dim var_88 As String
  Dim unk_5C26D2 As Connection15
  Dim var_B8 As String
  loc_F25134: unk_5C26D2.Execute "Insert Into LedgerLog Select * From Ledger Where DocId ='" & arg_C & "'", var_AC, -1
  loc_F2516A: unk_5C26D2.Execute "Insert Into LedgerMLog Select * From LedgerM Where DocId ='" & arg_C & "'", var_AC, -1
  loc_F25190: var_88 = "Update LedgerLog Set SeqNo=(Select Max(IsNull(SeqNo,0))+1 From LedgerLog Where DocId ='" & arg_C
  loc_F251A5: var_B8 = "Insert Into LedgerMLog Select * From LedgerM Where DocId ='" & arg_C & "') Where DocId ='" & arg_C & "' And IsNull(SeqNo,0)=0"
  loc_F251AE: unk_5C26D2.Execute var_B8, var_AC, -1
  loc_F251D8: var_88 = "Update LedgerMLog Set SeqNo=(Select Max(IsNull(SeqNo,0))+1 From LedgerMLog Where DocId ='" & arg_C
  loc_F251ED: var_B8 = "Insert Into LedgerMLog Select * From LedgerM Where DocId ='" & arg_C & "') Where DocId ='" & arg_C & "' And IsNull(SeqNo,0)=0"
  loc_F251F6: unk_5C26D2.Execute var_B8, var_AC, -1
  loc_F2520C: Exit Sub
End Sub
