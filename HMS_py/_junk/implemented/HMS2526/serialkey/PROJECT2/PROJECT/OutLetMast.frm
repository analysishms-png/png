VERSION 5.00
Begin VB.Form OutLetMast
  Caption = "Outlet Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 1080
  ClientWidth = 16230
  ClientHeight = 9345
  LockControls = -1  'True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin TextBox Txt
    Index = 49
    ForeColor = &HC00000&
    Left = 4605
    Top = 6915
    Width = 600
    Height = 285
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 48
    ForeColor = &HC00000&
    Left = 1425
    Top = 6915
    Width = 600
    Height = 285
    TabIndex = 23
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 47
    ForeColor = &HC00000&
    Left = 1425
    Top = 6600
    Width = 600
    Height = 285
    TabIndex = 21
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 46
    ForeColor = &HC00000&
    Left = 4605
    Top = 3180
    Width = 600
    Height = 285
    TabIndex = 158
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin Frame FrDiscType
    Caption = "Discount Type"
    BackColor = &HFFC0C0&
    Left = 12600
    Top = 1245
    Width = 2010
    Height = 315
    TabIndex = 156
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CheckBox ChkDisc
      Caption = "Group Discount"
      Index = 0
      BackColor = &HFFC0C0&
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 1800
      Height = 345
      TabIndex = 157
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
  End
  Begin TextBox Txt
    Index = 45
    ForeColor = &HC00000&
    Left = 7785
    Top = 2235
    Width = 600
    Height = 285
    TabIndex = 153
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 16230
    Height = 450
    TabIndex = 152
  End
  Begin Frame Frame2
    Left = 150
    Top = 7215
    Width = 5325
    Height = 1050
    Visible = 0   'False
    TabIndex = 148
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 30
      ForeColor = &HC00000&
      Left = 1725
      Top = 720
      Width = 3450
      Height = 285
      TabIndex = 26
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
      Index = 29
      ForeColor = &HC00000&
      Left = 1725
      Top = 405
      Width = 3450
      Height = 285
      TabIndex = 25
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
    Begin Label Label1
      Caption = "IInd Copy Remark"
      Index = 48
      ForeColor = &HC00000&
      Left = 0
      Top = 720
      Width = 1695
      Height = 240
      TabIndex = 151
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
      Caption = "Ist Copy Remark"
      Index = 47
      ForeColor = &HC00000&
      Left = 0
      Top = 405
      Width = 1545
      Height = 240
      TabIndex = 150
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
      Caption = "Order Booking Printing Information"
      Index = 78
      BackColor = &HC00000&
      ForeColor = &HFFFFFF&
      Left = 0
      Top = 0
      Width = 5145
      Height = 375
      TabIndex = 149
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
  End
  Begin TextBox Txt
    Index = 8
    ForeColor = &HC00000&
    Left = 7785
    Top = 2550
    Width = 4635
    Height = 285
    TabIndex = 33
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
    Index = 7
    ForeColor = &HC00000&
    Left = 7785
    Top = 4440
    Width = 4635
    Height = 285
    TabIndex = 39
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
    ForeColor = &HC00000&
    Left = 7785
    Top = 4125
    Width = 4635
    Height = 285
    TabIndex = 38
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
    Index = 4
    ForeColor = &HC00000&
    Left = 7785
    Top = 3180
    Width = 4635
    Height = 285
    TabIndex = 35
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
    Index = 3
    ForeColor = &HC00000&
    Left = 7785
    Top = 2865
    Width = 4635
    Height = 285
    TabIndex = 34
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
    Index = 33
    ForeColor = &HC00000&
    Left = 7785
    Top = 3495
    Width = 4635
    Height = 285
    TabIndex = 36
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
    Index = 34
    ForeColor = &HC00000&
    Left = 7785
    Top = 3810
    Width = 4635
    Height = 285
    TabIndex = 37
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
    Index = 39
    ForeColor = &HC00000&
    Left = 7995
    Top = 4755
    Width = 4425
    Height = 285
    TabIndex = 40
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
    ForeColor = &HC00000&
    Left = 7785
    Top = 1290
    Width = 600
    Height = 285
    TabIndex = 27
    BorderStyle = 0 'None
    MaxLength = 3
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
    ForeColor = &HC00000&
    Left = 10935
    Top = 1290
    Width = 600
    Height = 285
    TabIndex = 30
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
    Index = 17
    ForeColor = &HC00000&
    Left = 7785
    Top = 1605
    Width = 600
    Height = 285
    TabIndex = 28
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 28
    ForeColor = &HC00000&
    Left = 10935
    Top = 1605
    Width = 600
    Height = 285
    TabIndex = 31
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
    Index = 35
    ForeColor = &HC00000&
    Left = 10935
    Top = 1920
    Width = 600
    Height = 285
    TabIndex = 32
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
    Index = 24
    ForeColor = &HC00000&
    Left = 1425
    Top = 4575
    Width = 3780
    Height = 285
    TabIndex = 12
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
  Begin TextBox Txt
    Index = 37
    ForeColor = &HC00000&
    Left = 1425
    Top = 4260
    Width = 3780
    Height = 285
    TabIndex = 11
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
  Begin TextBox Txt
    Index = 23
    ForeColor = &HC00000&
    Left = 4605
    Top = 3945
    Width = 600
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 3
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
    Left = 1425
    Top = 1920
    Width = 3780
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
    Index = 22
    ForeColor = &HC00000&
    Left = 1425
    Top = 2235
    Width = 3780
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
  Begin Frame Frame1
    BackColor = &HFFC0C0&
    Left = 14370
    Top = 7065
    Width = 4425
    Height = 630
    Visible = 0   'False
    TabIndex = 59
    BorderStyle = 0 'None
    Begin Label Label1
      Caption = "Back Color"
      Index = 13
      ForeColor = &HC0&
      Left = 405
      Top = 270
      Width = 1005
      Height = 240
      Visible = 0   'False
      TabIndex = 61
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
      Index = 14
      BackColor = &H8080FF&
      ForeColor = &H0&
      Left = 2250
      Top = 255
      Width = 4290
      Height = 285
      Visible = 0   'False
      TabIndex = 60
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
    Begin Shape Shape1
      Left = 2220
      Top = 240
      Width = 4335
      Height = 330
      Visible = 0   'False
      BorderWidth = 2
    End
  End
  Begin TextBox Txt
    Index = 25
    ForeColor = &HC00000&
    Left = 4605
    Top = 6285
    Width = 600
    Height = 285
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 6
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
    Index = 40
    ForeColor = &HC00000&
    Left = 4605
    Top = 2865
    Width = 600
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 42
    ForeColor = &HC00000&
    Left = 4605
    Top = 4890
    Width = 600
    Height = 285
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 6
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
    Index = 44
    ForeColor = &HC00000&
    Left = 10755
    Top = 6975
    Width = 1575
    Height = 285
    Visible = 0   'False
    TabIndex = 101
    BorderStyle = 0 'None
    TabStop = 0   'False
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
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HFFFFFF&
    Left = 12240
    Top = 7935
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 100
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin DataGrid DGSch
    Left = 14505
    Top = 4215
    Width = 4695
    Height = 1155
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 98
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    Left = 4050
    Top = 8850
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 96
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 43
    Left = 12525
    Top = 8925
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 93
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 41
    ForeColor = &HC00000&
    Left = 4605
    Top = 6600
    Width = 600
    Height = 285
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 38
    Left = 12525
    Top = 8655
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 46
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin Frame FrmList1
    Left = 14700
    Top = 585
    Width = 1185
    Height = 1155
    Visible = 0   'False
    TabIndex = 86
    BorderStyle = 0 'None
    Begin ListView ListView1
      Left = 840
      Top = -240
      Width = 1800
      Height = 1080
      TabStop = 0   'False
      TabIndex = 87
    End
  End
  Begin TextBox Txt
    Index = 36
    ForeColor = &HC00000&
    Left = 4605
    Top = 5655
    Width = 600
    Height = 285
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 32
    Left = 12525
    Top = 8385
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 45
    BorderStyle = 0 'None
    MaxLength = 6
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
    Index = 31
    ForeColor = &HC00000&
    Left = 4605
    Top = 5970
    Width = 600
    Height = 285
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 27
    ForeColor = &HC00000&
    Left = 7785
    Top = 1920
    Width = 600
    Height = 285
    TabIndex = 29
    BorderStyle = 0 'None
    MaxLength = 1
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
    Index = 26
    ForeColor = &HC00000&
    Left = 1425
    Top = 4890
    Width = 600
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 2
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
    Index = 21
    ForeColor = &HC00000&
    Left = 1425
    Top = 6285
    Width = 600
    Height = 285
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 20
    ForeColor = &HC00000&
    Left = 1425
    Top = 2865
    Width = 600
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 19
    ForeColor = &HC00000&
    Left = 1425
    Top = 5655
    Width = 600
    Height = 285
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 18
    ForeColor = &HC00000&
    Left = 1425
    Top = 5970
    Width = 600
    Height = 285
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 16
    ForeColor = &HC00000&
    Left = 4605
    Top = 2550
    Width = 600
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin CommandButton Command1
    Caption = "Show Print Details"
    BackColor = &HC0FFFF&
    Left = 17265
    Top = 510
    Width = 1020
    Height = 900
    Visible = 0   'False
    TabIndex = 41
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &HC0FFFF&
    Style = 1
  End
  Begin TextBox Txt
    Index = 14
    Left = 12405
    Top = 8085
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 44
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin PictureBox Picture3
    Picture = "OutLetMast.frx":0
    Left = 12525
    Top = 930
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 66
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin DataGrid DGHelp
    Left = 14700
    Top = 1650
    Width = 4185
    Height = 1065
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 65
  End
  Begin Frame FrmList
    Left = 15105
    Top = 4560
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 63
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 120
      Top = 0
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 64
    End
  End
  Begin TextBox Txt
    Index = 13
    Left = 12405
    Top = 7815
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 42
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 12
    ForeColor = &HC00000&
    Left = 1425
    Top = 3180
    Width = 600
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 11
    Left = 12525
    Top = 9150
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 43
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 1
    ForeColor = &HC00000&
    Left = 1425
    Top = 1605
    Width = 1935
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 13
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
    Index = 10
    ForeColor = &HC00000&
    Left = 4620
    Top = 1605
    Width = 585
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 4
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
  Begin CommonDialog CDLG
  End
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 1425
    Top = 2550
    Width = 600
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 0
    ForeColor = &HC00000&
    Left = 1425
    Top = 1290
    Width = 3780
    Height = 285
    TabIndex = 0
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
  Begin MSFlexGrid FGPoint
    Left = 14865
    Top = 2880
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 62
  End
  Begin MSFlexGrid FGrid
    Left = 6810
    Top = 5475
    Width = 5415
    Height = 1470
    TabIndex = 97
  End
  Begin MSFlexGrid FGBarCode
    Left = 7125
    Top = 7395
    Width = 6570
    Height = 1860
    Visible = 0   'False
    TabIndex = 99
  End
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 89
    ForeColor = &HC0&
    Left = 5250
    Top = 6915
    Width = 825
    Height = 225
    TabIndex = 166
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
  Begin Label Label1
    Caption = "Mobile No.(M)"
    Index = 88
    ForeColor = &HC00000&
    Left = 3255
    Top = 6930
    Width = 1305
    Height = 240
    TabIndex = 165
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
    Caption = "(Y)es/(N)o"
    Index = 87
    ForeColor = &HC0&
    Left = 2055
    Top = 6930
    Width = 825
    Height = 225
    TabIndex = 164
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
  Begin Label Label1
    Caption = "Cover (M)"
    Index = 86
    ForeColor = &HC00000&
    Left = 60
    Top = 6915
    Width = 900
    Height = 240
    TabIndex = 163
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
    Caption = "Free Item App"
    Index = 85
    ForeColor = &HC00000&
    Left = 60
    Top = 6600
    Width = 1350
    Height = 240
    TabIndex = 162
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
    Caption = "(Y)es/(N)o"
    Index = 84
    ForeColor = &HC0&
    Left = 2055
    Top = 6615
    Width = 825
    Height = 225
    TabIndex = 161
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 83
    ForeColor = &HC0&
    Left = 5250
    Top = 3225
    Width = 825
    Height = 225
    TabIndex = 160
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
  Begin Label Label1
    Caption = "Label Printing"
    Index = 82
    ForeColor = &HC00000&
    Left = 3165
    Top = 3195
    Width = 1350
    Height = 240
    TabIndex = 159
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
    Caption = "(Y)es/(N)o"
    Index = 81
    ForeColor = &HC0&
    Left = 8430
    Top = 2220
    Width = 825
    Height = 225
    TabIndex = 155
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
  Begin Label Label1
    Caption = "Dis.% Print"
    Index = 73
    ForeColor = &HC00000&
    Left = 6660
    Top = 2250
    Width = 1005
    Height = 240
    TabIndex = 154
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
    Caption = "   Bar Code Printing (Partition App.On)"
    Index = 80
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 7065
    Top = 6945
    Width = 5520
    Height = 375
    Visible = 0   'False
    TabIndex = 147
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
    Caption = "Secheme Details"
    Index = 79
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 6615
    Top = 5100
    Width = 5805
    Height = 375
    TabIndex = 146
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
    Caption = "(Order Booking)"
    Index = 49
    ForeColor = &HC0&
    Left = 6870
    Top = 8535
    Width = 1470
    Height = 210
    Visible = 0   'False
    TabIndex = 145
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
    Caption = "(Order Booking)"
    Index = 50
    ForeColor = &HC0&
    Left = 6870
    Top = 8775
    Width = 1470
    Height = 210
    Visible = 0   'False
    TabIndex = 144
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
    Caption = "(Sale Bill Printing)"
    Index = 63
    ForeColor = &HC0&
    Left = 12450
    Top = 4470
    Width = 1500
    Height = 225
    TabIndex = 143
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
  Begin Label Label1
    Caption = "Header"
    Index = 9
    ForeColor = &HC00000&
    Left = 6660
    Top = 2550
    Width = 690
    Height = 240
    TabIndex = 142
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
    Caption = "Slogan2"
    Index = 8
    ForeColor = &HC00000&
    Left = 6660
    Top = 4440
    Width = 780
    Height = 240
    TabIndex = 141
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
    Caption = "Slogan1"
    Index = 7
    ForeColor = &HC00000&
    Left = 6660
    Top = 4125
    Width = 780
    Height = 240
    TabIndex = 140
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
    Caption = "Header2 "
    Index = 5
    ForeColor = &HC00000&
    Left = 6660
    Top = 3180
    Width = 855
    Height = 240
    TabIndex = 139
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
    Caption = "Header1"
    Index = 4
    ForeColor = &HC00000&
    Left = 6660
    Top = 2865
    Width = 795
    Height = 240
    TabIndex = 138
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
    Caption = "Header3 "
    Index = 55
    ForeColor = &HC00000&
    Left = 6660
    Top = 3495
    Width = 855
    Height = 240
    TabIndex = 137
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
    Caption = "Header4"
    Index = 56
    ForeColor = &HC00000&
    Left = 6660
    Top = 3810
    Width = 795
    Height = 240
    TabIndex = 136
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
    Caption = "Token Header"
    Index = 64
    ForeColor = &HC00000&
    Left = 6660
    Top = 4755
    Width = 1335
    Height = 240
    TabIndex = 135
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
    Caption = "(Y)es/(N)o"
    Index = 20
    ForeColor = &HC0&
    Left = 8430
    Top = 1290
    Width = 825
    Height = 225
    TabIndex = 134
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
  Begin Label Label1
    Caption = "Comp.Title"
    Index = 10
    ForeColor = &HC00000&
    Left = 6660
    Top = 1290
    Width = 1035
    Height = 240
    TabIndex = 133
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
  Begin Label Label3
    Caption = "Print Token Bef."
    Index = 40
    ForeColor = &HC00000&
    Left = 9450
    Top = 1305
    Width = 1485
    Height = 210
    TabIndex = 132
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
  Begin Label Label
    Caption = "(Y)es/(N)o"
    Index = 3
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 11580
    Top = 1290
    Width = 825
    Height = 225
    TabIndex = 131
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Outlet Title"
    Index = 26
    ForeColor = &HC00000&
    Left = 6660
    Top = 1620
    Width = 1050
    Height = 240
    TabIndex = 130
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
    Caption = "(Y)es/(N)o"
    Index = 27
    ForeColor = &HC0&
    Left = 8430
    Top = 1620
    Width = 825
    Height = 225
    TabIndex = 129
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
  Begin Label Label
    Caption = "(Y)es/(N)o"
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 11580
    Top = 1605
    Width = 825
    Height = 225
    TabIndex = 128
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
    Appearance = 0 'Flat
  End
  Begin Label Label3
    Caption = "Print Token Aft."
    Index = 0
    ForeColor = &HC00000&
    Left = 9450
    Top = 1635
    Width = 1485
    Height = 210
    TabIndex = 127
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
  Begin Label Label3
    Caption = "Print Token No."
    Index = 1
    ForeColor = &HC00000&
    Left = 9450
    Top = 1950
    Width = 1425
    Height = 210
    TabIndex = 126
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
  Begin Label Label
    Caption = "(Y)es/(N)o"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 11580
    Top = 1920
    Width = 825
    Height = 225
    TabIndex = 125
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Sale Bill Printing Information"
    Index = 77
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 6615
    Top = 885
    Width = 5805
    Height = 375
    TabIndex = 124
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
    Caption = "Sale Bill Setup"
    Index = 76
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 105
    Top = 5235
    Width = 5145
    Height = 375
    TabIndex = 123
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
    Caption = "(Cen.KOT/O. B.)"
    Index = 40
    ForeColor = &HC0&
    Left = 5250
    Top = 4590
    Width = 1290
    Height = 225
    TabIndex = 122
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
  Begin Label Label1
    Caption = "(Cen.KOT/O. B.)"
    Index = 59
    ForeColor = &HC0&
    Left = 5250
    Top = 4290
    Width = 1290
    Height = 225
    TabIndex = 121
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
  Begin Label Label1
    Caption = "Printing Path"
    Index = 39
    ForeColor = &HC00000&
    Left = 135
    Top = 4605
    Width = 1245
    Height = 240
    TabIndex = 120
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
    Caption = "Printing Type"
    Index = 60
    ForeColor = &HC00000&
    Left = 135
    Top = 4290
    Width = 1275
    Height = 240
    TabIndex = 119
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
    Caption = "(Y)es/(N)o"
    Index = 37
    ForeColor = &HC0&
    Left = 5250
    Top = 3960
    Width = 825
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
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Cen.KOT or Order Booking Token Print"
    Index = 38
    ForeColor = &HC00000&
    Left = 150
    Top = 3945
    Width = 3690
    Height = 240
    TabIndex = 117
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
    Caption = "Kot Printing Information"
    Index = 75
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 105
    Top = 3540
    Width = 5145
    Height = 375
    TabIndex = 116
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
    Caption = "Phone No."
    Index = 6
    ForeColor = &HC00000&
    Left = 135
    Top = 1920
    Width = 990
    Height = 240
    TabIndex = 115
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
    Caption = "Tin No."
    Index = 36
    ForeColor = &HC00000&
    Left = 150
    Top = 2235
    Width = 675
    Height = 240
    TabIndex = 114
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
    Caption = "Outlet Details"
    Index = 74
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 105
    Top = 885
    Width = 5130
    Height = 375
    TabIndex = 113
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
    Left = 15
    Top = 375
    Width = 150
    Height = 390
    TabIndex = 112
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 15.75
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
    Left = 405
    Top = 8820
    Width = 3330
    Height = 255
    TabIndex = 111
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
    Left = 405
    Top = 8535
    Width = 3375
    Height = 285
    TabIndex = 110
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
  Begin Label Label1
    Caption = "Current TokenNo"
    Index = 41
    ForeColor = &HC00000&
    Left = 3000
    Top = 6300
    Width = 1605
    Height = 240
    TabIndex = 109
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
    Caption = "Current TokenNo"
    Index = 70
    ForeColor = &HC00000&
    Left = 2940
    Top = 4890
    Width = 1605
    Height = 240
    TabIndex = 108
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
    Caption = "Disc. Applicable"
    Index = 19
    ForeColor = &H0&
    Left = 10815
    Top = 7815
    Width = 1335
    Height = 240
    Visible = 0   'False
    TabIndex = 107
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
  Begin Label Label1
    Caption = "Split Bill"
    Index = 32
    ForeColor = &HC00000&
    Left = 135
    Top = 2865
    Width = 810
    Height = 240
    TabIndex = 106
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
    Caption = "No.Of KOT(s)"
    Index = 44
    ForeColor = &HC00000&
    Left = 135
    Top = 4890
    Width = 1200
    Height = 240
    TabIndex = 105
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
    Caption = "No.Of Bill(s)"
    Index = 45
    ForeColor = &HC00000&
    Left = 6660
    Top = 1935
    Width = 1110
    Height = 240
    TabIndex = 104
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
    Caption = "Bar Code App."
    Index = 66
    ForeColor = &HC00000&
    Left = 3165
    Top = 2880
    Width = 1380
    Height = 240
    TabIndex = 103
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
    Caption = "Auto Reset Token"
    Index = 67
    ForeColor = &HC00000&
    Left = 2940
    Top = 6615
    Width = 1665
    Height = 240
    TabIndex = 102
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
    Caption = "Direct Billing"
    Index = 72
    ForeColor = &H0&
    Left = 10695
    Top = 8925
    Width = 1050
    Height = 240
    Visible = 0   'False
    TabIndex = 95
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 71
    ForeColor = &H0&
    Left = 13080
    Top = 8880
    Width = 900
    Height = 195
    Visible = 0   'False
    TabIndex = 94
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "(KOT)"
    Index = 69
    ForeColor = &HC0&
    Left = 5250
    Top = 4890
    Width = 480
    Height = 225
    TabIndex = 92
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 68
    ForeColor = &H0&
    Left = 12240
    Top = 7695
    Width = 900
    Height = 195
    Visible = 0   'False
    TabIndex = 91
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 65
    ForeColor = &HC0&
    Left = 5250
    Top = 2895
    Width = 825
    Height = 225
    TabIndex = 90
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 62
    ForeColor = &H0&
    Left = 13200
    Top = 8640
    Width = 900
    Height = 195
    Visible = 0   'False
    TabIndex = 89
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "W. Scale App."
    Index = 61
    ForeColor = &H0&
    Left = 10695
    Top = 8655
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 88
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
  Begin Label Label1
    Caption = "Auto Settlement"
    Index = 58
    ForeColor = &HC00000&
    Left = 3060
    Top = 5670
    Width = 1530
    Height = 240
    TabIndex = 85
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
    Caption = "(Cash)"
    Index = 57
    ForeColor = &HC0&
    Left = 5250
    Top = 5655
    Width = 555
    Height = 225
    TabIndex = 84
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
  Begin Label Label1
    Caption = "Book Of Bills"
    Index = 54
    ForeColor = &H0&
    Left = 10695
    Top = 8385
    Width = 1050
    Height = 240
    Visible = 0   'False
    TabIndex = 83
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
  Begin Label Label1
    Caption = "(Book No.)"
    Index = 53
    ForeColor = &H0&
    Left = 13320
    Top = 8400
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 82
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Printing"
    Index = 52
    ForeColor = &HC0&
    Left = 5250
    Top = 5970
    Width = 660
    Height = 225
    TabIndex = 81
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
  Begin Label Label1
    Caption = "Print On Save"
    Index = 51
    ForeColor = &HC00000&
    Left = 3255
    Top = 5970
    Width = 1320
    Height = 240
    TabIndex = 80
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
    Caption = "Printing"
    Index = 46
    ForeColor = &HC0&
    Left = 5085
    Top = 8820
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 79
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
    Caption = "Printing"
    Index = 43
    ForeColor = &HC0&
    Left = 5985
    Top = 8790
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 78
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
    Caption = "(Order/Sale Bill)"
    Index = 42
    ForeColor = &HC0&
    Left = 5250
    Top = 6270
    Width = 1335
    Height = 225
    TabIndex = 77
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 35
    ForeColor = &HC0&
    Left = 2055
    Top = 6300
    Width = 825
    Height = 225
    TabIndex = 76
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
  Begin Label Label1
    Caption = "Customer Info."
    Index = 34
    ForeColor = &HC00000&
    Left = 60
    Top = 6285
    Width = 1380
    Height = 240
    TabIndex = 75
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
    Caption = "(Y)es/(N)o"
    Index = 33
    ForeColor = &HC0&
    Left = 2055
    Top = 2880
    Width = 825
    Height = 225
    TabIndex = 74
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 31
    ForeColor = &H0&
    Left = 13200
    Top = 9120
    Width = 900
    Height = 195
    Visible = 0   'False
    TabIndex = 73
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Party Name"
    Index = 30
    ForeColor = &HC00000&
    Left = 135
    Top = 5655
    Width = 1110
    Height = 240
    TabIndex = 72
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
    Caption = "(Y)es/(N)o"
    Index = 29
    ForeColor = &HC0&
    Left = 2055
    Top = 5970
    Width = 825
    Height = 225
    TabIndex = 71
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
  Begin Label Label1
    Caption = "Member Info."
    Index = 28
    ForeColor = &HC00000&
    Left = 135
    Top = 5970
    Width = 1260
    Height = 240
    TabIndex = 70
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
    Caption = "(Y)es/(N)o"
    Index = 25
    ForeColor = &HC0&
    Left = 2055
    Top = 5655
    Width = 825
    Height = 225
    TabIndex = 69
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
  Begin Label Label1
    Caption = "Order Booking"
    Index = 24
    ForeColor = &HC00000&
    Left = 3165
    Top = 2565
    Width = 1380
    Height = 240
    TabIndex = 68
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
    Caption = "Round Off"
    Index = 23
    ForeColor = &H0&
    Left = 0
    Top = 0
    Width = 855
    Height = 240
    TabIndex = 67
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
  Begin Label Label1
    Caption = "Round Off"
    Index = 22
    ForeColor = &H0&
    Left = 10575
    Top = 8100
    Width = 855
    Height = 240
    Visible = 0   'False
    TabIndex = 58
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 21
    ForeColor = &H0&
    Left = 13080
    Top = 8100
    Width = 900
    Height = 195
    Visible = 0   'False
    TabIndex = 57
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 17
    ForeColor = &HC0&
    Left = 2055
    Top = 2550
    Width = 825
    Height = 225
    TabIndex = 56
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
  Begin Label Label1
    Caption = "Rate Incl."
    Index = 16
    ForeColor = &HC00000&
    Left = 135
    Top = 3180
    Width = 900
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
    Caption = "(Y)es/(N)o"
    Index = 11
    ForeColor = &HC0&
    Left = 2055
    Top = 3195
    Width = 825
    Height = 225
    TabIndex = 54
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
  Begin Label Label1
    Caption = "Link To FOM"
    Index = 2
    ForeColor = &H0&
    Left = 10815
    Top = 9165
    Width = 1065
    Height = 240
    Visible = 0   'False
    TabIndex = 53
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &HC0&
    Left = 5250
    Top = 2565
    Width = 825
    Height = 225
    TabIndex = 52
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
  Begin Label Label1
    Caption = "Outlet Nature"
    Index = 12
    ForeColor = &HC00000&
    Left = 135
    Top = 1620
    Width = 1260
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
  Begin Label Label1
    Caption = "Short Name"
    Index = 15
    ForeColor = &HC00000&
    Left = 3450
    Top = 1620
    Width = 1125
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 18
    ForeColor = &HC0&
    Left = 5250
    Top = 6600
    Width = 825
    Height = 225
    TabIndex = 49
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
  Begin Label Label1
    Caption = "KOT"
    Index = 3
    ForeColor = &HC00000&
    Left = 135
    Top = 2550
    Width = 360
    Height = 210
    TabIndex = 48
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
    Caption = "Outlet Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 135
    Top = 1305
    Width = 1185
    Height = 240
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
End

Attribute VB_Name = "OutLetMast"

Private global_52 As Integer
Private global_72 As Integer
Private global_104 As Integer

Private Sub ListView_UnknownEvent_13 'F5A6AC
  'Data Table: 51C24C
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5A5CE: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5A5D5:   Set var_A8 = Me.ListView
  loc_F5A61F:   Set var_C0 = Me.Txt
  loc_F5A625:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5A62D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5A64D: End If
  loc_F5A659: Me.FrmList.Visible = False
  loc_F5A689: Set var_9C = Me.Txt
  loc_F5A68F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5A697: var_A8.SetFocus
  loc_F5A6AB: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F36C14
  'Data Table: 51C24C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F36B0B: Me.DGHelp.Visible = False
  loc_F36B2A: If (Me.RecordCount > 0) Then
  loc_F36B69:   Set var_B4 = Me.Txt
  loc_F36B6F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F36B77:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F36BAA:   var_B0 = Me.Fields.Item("Name")
  loc_F36BC9:   Set var_B4 = Me.Txt
  loc_F36BCF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F36BD7:   var_B8.Text = CStr(var_B0.Value)
  loc_F36BED: End If
  loc_F36BF8: Set var_A8 = Me.Txt
  loc_F36BFE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F36C06: var_B0.SetFocus
  loc_F36C12: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6E2F8
  'Data Table: 51C24C
  loc_E6E2B6: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E6E2CD: Set var_8C = Me.FGPoint
  loc_E6E2E9: Proc_6_138_106E830(Me.DGHelp, global_60, CInt(0))
  loc_E6E2F7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '11FAAC4
  'Data Table: 51C24C
  Dim var_8C As Variant
  Dim unk_51C26E As Connection15
  Dim var_88 As Recordset15
  Dim var_140 As Variant
  Dim var_238 As Variant
  loc_11FA654: On Error Goto loc_11FAABD
  loc_11FA664: Me.LblUser.Caption = vbNullString
  loc_11FA673: Set var_8C = Me.LblLDt
  loc_11FA679: var_8C.Caption = vbNullString
  loc_11FA697: unk_51C26E.Execute "Select Count(*) from Depart where OutletYN='Y'", var_AC, -1
  loc_11FA6A2: Set var_88 = var_8C
  loc_11FA6DD: var_EC = Left(MemVar_1F95130, &HA)
  loc_11FA6E8: var_FC = Ucase(var_EC)
  loc_11FA79B: var_238 = (Left(MemVar_1F95130, 9) = "RAVE@MOTI") Or (var_FC = "SUTTHIMANI") And (var_88.Fields.Item(0).Value <= 15) Or (Ucase(Left(MemVar_1F95130, &HA)) = "FOOD COURT") And (var_88.Fields.Item(0).Value <= 11)
  loc_11FA7BD: If CBool(var_238) Then
  loc_11FA7C0:   GoTo loc_11FA82C
  loc_11FA7C3: End If
  loc_11FA7DD: var_140 = var_88.Fields.Item(0)
  loc_11FA7FF: If (var_140.Value >= 9) Then
  loc_11FA81B:   MsgBox("Contact to your S/W Vendor", 0, var_CC, var_EC, var_FC)
  loc_11FA82B:   Exit Sub
  loc_11FA82C:   ' Referenced from: 11FA7C0
  loc_11FA82C: End If
  loc_11FA831: Set var_88 = Nothing
  loc_11FA840: Set var_8C = Me
  loc_11FA857: Call Proc_70_58_EBBA44(Proc_5_1_100EC1C("ADD", var_8C), global_64)
  loc_11FA862: Call Proc_70_56_FFDFA0(var_8C)
  loc_11FA875: Set var_8C = Me.Txt
  loc_11FA87B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H12), var_140)
  loc_11FA883: var_140.Text = "No"
  loc_11FA89D: Set var_8C = Me.Txt
  loc_11FA8A3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H13), var_140)
  loc_11FA8AB: var_140.Text = "No"
  loc_11FA8C5: Set var_8C = Me.Txt
  loc_11FA8CB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H10), var_140)
  loc_11FA8D3: var_140.Text = "No"
  loc_11FA8ED: Set var_8C = Me.Txt
  loc_11FA8F3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HC), var_140)
  loc_11FA8FB: var_140.Text = "No"
  loc_11FA915: Set var_8C = Me.Txt
  loc_11FA91B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HE), var_140)
  loc_11FA923: var_140.Text = "No"
  loc_11FA93D: Set var_8C = Me.Txt
  loc_11FA943: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_140)
  loc_11FA94B: var_140.Text = "Yes"
  loc_11FA965: Set var_8C = Me.Txt
  loc_11FA96B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H2D), var_140)
  loc_11FA973: var_140.Text = "Yes"
  loc_11FA98D: Set var_8C = Me.Txt
  loc_11FA993: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H28), var_140)
  loc_11FA99B: var_140.Text = "No"
  loc_11FA9B5: Set var_8C = Me.Txt
  loc_11FA9BB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H2E), var_140)
  loc_11FA9C3: var_140.Text = "No"
  loc_11FA9DA: Set var_8C = Me.Txt
  loc_11FA9E0: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_11FA9E8: var_140.SetFocus
  loc_11FAA02: Set var_8C = Me.Txt
  loc_11FAA08: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H19), var_140)
  loc_11FAA10: var_140.Text = "0"
  loc_11FAA2A: Set var_8C = Me.Txt
  loc_11FAA30: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H2A), var_140)
  loc_11FAA38: var_140.Text = "0"
  loc_11FAA52: Set var_8C = Me.Txt
  loc_11FAA58: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1A), var_140)
  loc_11FAA60: var_140.Text = "1"
  loc_11FAA7A: Set var_8C = Me.Txt
  loc_11FAA80: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1B), var_140)
  loc_11FAA88: var_140.Text = "1"
  loc_11FAAA2: Set var_8C = Me.Txt
  loc_11FAAA8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H20), var_140)
  loc_11FAAB0: var_140.Text = "0"
  loc_11FAABC: Exit Sub
  loc_11FAABD: ' Referenced from: 11FA654
  loc_11FAABD: Proc_6_60_E63754(var_140)
  loc_11FAAC2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9EF18
  'Data Table: 51C24C
  loc_E9EEA0: On Error Goto loc_E9EF11
  loc_E9EEDA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9EF00:   Call Proc_70_58_EBBA44(Proc_5_1_100EC1C("INI", Me))
  loc_E9EF0B:   Call Proc_70_57_178640C(global_64)
  loc_E9EF10: End If
  loc_E9EF10: Exit Sub
  loc_E9EF11: ' Referenced from: E9EEA0
  loc_E9EF11: Proc_6_60_E63754()
  loc_E9EF16: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '14F2540
  'Data Table: 51C24C
  Dim Me As Recordset15
  Dim var_A4 As Fields15
  Dim var_B8 As Variant
  Dim var_C0 As String
  Dim var_D4 As String
  Dim var_DC As String
  Dim unk_51C26E As Connection15
  Dim var_E4 As Recordset15
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_BC As String
  Dim var_10C As Variant
  Dim var_14C As Boolean
  Dim var_164 As Fields15
  Dim var_168 As Field20
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_D0 As Variant
  loc_14F171C: On Error Goto loc_14F24F1
  loc_14F172D: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_14F1730:   Exit Sub
  loc_14F1731: End If
  loc_14F1763: var_DC = "Item Group"
  loc_14F17AB: If (Proc_6_108_101061C(MemVar_1F95044, "ItemGrp", "RestCode", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_14F17AE:   Exit Sub
  loc_14F17AF: End If
  loc_14F17CC: var_B8 = Me.Fields.Item("SearchCode")
  loc_14F17D4: var_D0 = var_B8.Value
  loc_14F17E1: var_DC = "Menu Item"
  loc_14F1803: var_BC = "ItemMast"
  loc_14F1829: If (Proc_6_108_101061C(MemVar_1F95044, var_BC, "RestCode", CStr(var_D0), 0) = 0) Then
  loc_14F182C:   Exit Sub
  loc_14F182D: End If
  loc_14F185D: Set var_A4 = Me.Txt
  loc_14F1863: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "B", "Select Count(*) From Stock Where VType='", var_D0, -1)
  loc_14F186B: var_E4 = var_B8.Text
  loc_14F1888: unk_51C26E.Execute 0 & var_E8 & var_BC & "'", var_FC, var_10C
  loc_14F1890: var_DC = var_E4.Fields
  loc_14F1898:  = var_E8.Item(0)
  loc_14F18A0:  = var_FC.Value
  loc_14F18CF: If (var_10C > 0) Then
  loc_14F18F3:   Set var_A4 = Me.Txt
  loc_14F18F9:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "B")
  loc_14F1901:   "Select V_Type,V_No From Stock Where VType='" = var_B8.Text
  loc_14F190E:   var_D4 = -1 & var_D0 & var_BC
  loc_14F191E:   unk_51C26E.Execute 0 & var_E8 & var_BC & "'", var_E4, 
  loc_14F195D:   var_B8 = var_E4.Fields.Item(1)
  loc_14F1965:   var_D0 = var_B8.Value
  loc_14F1999:   var_C0 = CStr(var_D0)
  loc_14F19A1:   var_10C = CVar("Can't delete Department!" & vbCrLf & "Records found in Sale Bill" & "RefNo:" & var_C0) 'String
  loc_14F19A4:   MsgBox(var_10C, &H40, "HMS", var_13C, var_15C)
  loc_14F19CA:   Exit Sub
  loc_14F19CB: End If
  loc_14F19D9: Set var_A4 = Me.Txt
  loc_14F19DF: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(2), var_B8)
  loc_14F19E7: var_BC = var_B8.Text
  loc_14F19F4: var_14C = (var_BC = "Yes")
  loc_14F1A28: Set var_E4 = Me.Txt
  loc_14F1A2E: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_E8, var_C0, "K", "Select Count(*) From Stock Where VType='", var_D0, -1)
  loc_14F1A36: var_FC = var_E8.Text
  loc_14F1A53: unk_51C26E.Execute 0 & var_164 & var_C0 & "'", var_168, var_10C
  loc_14F1A5B: var_14C = var_FC.Fields
  loc_14F1A63:  = var_164.Item()
  loc_14F1A6B:  = var_168.Value
  loc_14F1A7D: var_13C =  And (var_10C > 0)
  loc_14F1AAA: If CBool(var_13C) Then
  loc_14F1ACE:   Set var_A4 = Me.Txt
  loc_14F1AD4:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "K")
  loc_14F1ADC:   "Select V_Type,V_No From Stock Where VType='" = var_B8.Text
  loc_14F1AE9:   var_D4 = -1 & var_D0 & var_BC
  loc_14F1AF9:   unk_51C26E.Execute var_164 & var_D0 & var_BC & "'", var_E4, 
  loc_14F1B38:   var_B8 = var_E4.Fields.Item(1)
  loc_14F1B40:   var_D0 = var_B8.Value
  loc_14F1B50:   var_12C = "HMS"
  loc_14F1B62:   var_BC = "Can't delete Department!" & vbCrLf
  loc_14F1B7F:   MsgBox(CVar(var_BC & "Records found in KOT" & "RefNo:" & CStr(var_D0)), &H40, var_12C, var_13C, var_15C)
  loc_14F1BA5:   Exit Sub
  loc_14F1BA6: End If
  loc_14F1BD6: Set var_A4 = Me.Txt
  loc_14F1BDC: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "B", "Select Count(*) From SundryType Where V_Type='", var_D0)
  loc_14F1BE4: -1 = var_B8.Text
  loc_14F1C01: unk_51C26E.Execute var_E8 & var_E4 & var_BC & "'", 0, var_FC
  loc_14F1C11:  = var_E8.Item()
  loc_14F1C19:  = var_FC.Value
  loc_14F1C48: If (var_E4.Fields > 0) Then
  loc_14F1C8B:   var_D0 = CVar("Can't delete Department!" & vbCrLf & vbCrLf & "Records found in Voucher wise Sundry Setting" & vbCrLf & vbCrLf & "Please delete settings first!") 'String
  loc_14F1C8E:   MsgBox(var_D0, &H40, "HMS", var_12C, var_13C)
  loc_14F1CAB:   Exit Sub
  loc_14F1CAC: End If
  loc_14F1CE3: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_12C, var_13C) = 6) Then
  loc_14F1CEF:   unk_51C26E.BeginTrans var_D8
  loc_14F1D05:   var_94 = Me.Bookmark 'Variant
  loc_14F1D17:   Set var_A4 = Me.Txt
  loc_14F1D1D:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_B8)
  loc_14F1D3C:   If (var_B8.Text = "Banquet") Then
  loc_14F1D95:     unk_51C26E.Execute CStr("Delete From Depart Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_13C, -1
  loc_14F1DE8:     var_D0 = Me.Fields.Item("SearchCode").Value
  loc_14F1E07:     unk_51C26E.Execute CStr("Delete From RevMast Where Code='" & var_D0 & "'"), var_13C, -1
  loc_14F1E37:     var_BC = "Delete From RevMast Where NAme='BAN - ROUND-OFF" & "'"
  loc_14F1E40:     unk_51C26E.Execute CStr("Delete From RevMast Where Code='" & var_D0 & "'"), var_D0, -1
  loc_14F1E62:     var_BC = "Delete From RevMast Where NAme='BAN - DISCOUNT" & "'"
  loc_14F1E6B:     unk_51C26E.Execute CStr("Delete From RevMast Where Code='" & var_D0 & "'"), var_D0, -1
  loc_14F1E8F:     unk_51C26E.Execute "Delete From Voucher_Type Where V_Type='KBAN'", var_D0, -1
  loc_14F1EB0:     unk_51C26E.Execute "Delete From Voucher_Prefix Where V_Type='KBAN'", var_D0, -1
  loc_14F1ED1:     unk_51C26E.Execute "Delete From Voucher_Type Where V_Type='NBAN'", var_D0, -1
  loc_14F1EF2:     unk_51C26E.Execute "Delete From Voucher_Prefix Where V_Type='NBAN'", var_D0, -1
  loc_14F1F13:     unk_51C26E.Execute "Delete From Voucher_Type Where V_Type='BBAN'", var_D0, -1
  loc_14F1F34:     unk_51C26E.Execute "Delete From Voucher_Prefix Where V_Type='BBAN'", var_D0, -1
  loc_14F1F42:   Else
  loc_14F1F98:     unk_51C26E.Execute CStr("Delete From Depart Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_13C, -1
  loc_14F1FE3:     var_B8 = Me.Fields.Item("SearchCode")
  loc_14F1FEB:     var_D0 = var_B8.Value
  loc_14F2000:     var_BC = CStr("Delete From RevMast Where Code='" & var_D0 & "'")
  loc_14F200A:     unk_51C26E.Execute var_BC, var_13C, -1
  loc_14F204A:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "Delete From RevMast Where NAme='", var_D0, -1, var_E4)
  loc_14F2052:     var_E4 = var_B8.Text
  loc_14F205E:     var_C0 = var_BC & " - ROUND-OFF"
  loc_14F2072:     unk_51C26E.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", Me.Txt, Me.Txt
  loc_14F20B2:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "Delete From RevMast Where NAme='", var_D0)
  loc_14F20BA:     -1 = var_B8.Text
  loc_14F20C6:     var_C0 = var_BC & " - DISCOUNT"
  loc_14F20DA:     unk_51C26E.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", Me.Txt, Me.Txt
  loc_14F211D:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "K", "Delete From Voucher_Type Where V_Type='")
  loc_14F2125:     var_D0 = var_B8.Text
  loc_14F212E:     var_C0 = -1 & var_BC
  loc_14F2142:     unk_51C26E.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", Me.Txt, 
  loc_14F217F:     Set var_A4 = Me.Txt
  loc_14F2185:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "K")
  loc_14F218D:     "Delete From Voucher_Prefix Where V_Type='" = var_B8.Text
  loc_14F219A:     var_D4 = -1 & var_D0 & var_BC
  loc_14F21AA:     unk_51C26E.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", var_E4, 
  loc_14F21E7:     Set var_A4 = Me.Txt
  loc_14F21ED:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "N")
  loc_14F21F5:     "Delete From Voucher_Type Where V_Type='" = var_B8.Text
  loc_14F2202:     var_D4 = -1 & var_D0 & var_BC
  loc_14F2212:     unk_51C26E.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", var_E4, 
  loc_14F224F:     Set var_A4 = Me.Txt
  loc_14F2255:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "N")
  loc_14F225D:     "Delete From Voucher_Prefix Where V_Type='" = var_B8.Text
  loc_14F226A:     var_D4 = -1 & var_D0 & var_BC
  loc_14F227A:     unk_51C26E.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", var_E4, 
  loc_14F22B7:     Set var_A4 = Me.Txt
  loc_14F22BD:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "B")
  loc_14F22C5:     "Delete From Voucher_Type Where V_Type='" = var_B8.Text
  loc_14F22D2:     var_D4 = -1 & var_D0 & var_BC
  loc_14F22E2:     unk_51C26E.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", var_E4, 
  loc_14F231F:     Set var_A4 = Me.Txt
  loc_14F2325:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "B")
  loc_14F232D:     "Delete From Voucher_Prefix Where V_Type='" = var_B8.Text
  loc_14F233A:     var_D4 = -1 & var_D0 & var_BC
  loc_14F234A:     unk_51C26E.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", var_E4, 
  loc_14F23BC:     unk_51C26E.Execute CStr("Delete from MenuHelp where OutletCode='" & Me.Fields.Item("SearchCode").Value & "'"), var_13C, -1
  loc_14F2420:     var_12C = "Delete from UserModule where OutletCode='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_14F2424:     var_BC = CStr(var_12C)
  loc_14F242E:     unk_51C26E.Execute var_BC, var_13C, -1
  loc_14F244A:   End If
  loc_14F2450:   unk_51C26E.CommitTrans
  loc_14F2460:   Me.Requery -1
  loc_14F2470:   Me.Requery -1
  loc_14F2490:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_14F249D:     Me.Bookmark = var_94
  loc_14F24A5:   Else
  loc_14F24B9:     If (Me.EOF = 0) Then
  loc_14F24C2:       Me.MoveLast
  loc_14F24C7:     End If
  loc_14F24C7:   End If
  loc_14F24C7:   Call Proc_70_57_178640C(var_E4)
  loc_14F24E8:   Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_14F24F0: End If
  loc_14F24F0: Exit Sub
  loc_14F24F1: ' Referenced from: 14F171C
  loc_14F24F7: unk_51C26E.RollbackTrans
  loc_14F2504: Set var_A4 = Err()
  loc_14F250A: Call 0.Method_arg_2C (var_BC, 0)
  loc_14F252B: MsgBox(CVar(var_BC), &H10, " Deletion Message", var_12C, var_13C)
  loc_14F253E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA8660
  'Data Table: 51C24C
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_FA84CC: On Error Goto loc_FA8659
  loc_FA84DC: Me.LblUser.Caption = vbNullString
  loc_FA84F1: Me.LblLDt.Caption = vbNullString
  loc_FA8507: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_FA850A:   Exit Sub
  loc_FA850B: End If
  loc_FA852E: Call Proc_70_58_EBBA44(Proc_5_1_100EC1C("EDIT", Me))
  loc_FA8547: Set var_88 = Me.Txt
  loc_FA854D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_FA8560: global_68 = var_94.Tag
  loc_FA857B: Set var_88 = Me.Txt
  loc_FA8581: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_FA8589: var_94.Enabled = False
  loc_FA85A2: Set var_88 = Me.Txt
  loc_FA85A8: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_FA85B0: var_94.Enabled = False
  loc_FA85C9: Set var_88 = Me.Txt
  loc_FA85CF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HA), var_94)
  loc_FA85D7: var_94.Enabled = False
  loc_FA85F0: Set var_88 = Me.Txt
  loc_FA85F6: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_FA85FE: var_94.Enabled = False
  loc_FA8617: Set var_88 = Me.Txt
  loc_FA861D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H19), var_94)
  loc_FA8625: var_94.Enabled = True
  loc_FA863E: Set var_88 = Me.Txt
  loc_FA8644: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H2A), var_94)
  loc_FA864C: var_94.Enabled = True
  loc_FA8658: Exit Sub
  loc_FA8659: ' Referenced from: FA84CC
  loc_FA8659: Proc_6_60_E63754(global_64)
  loc_FA865E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B5C8
  'Data Table: 51C24C
  loc_E1B5BD: Me.Global.Unload Me
  loc_E1B5C5: Exit Sub
  loc_E1B5C6: ArrayRebase1Var
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEC1C4
  'Data Table: 51C24C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EEC100: On Error Goto loc_EEC1BE
  loc_EEC11A: If (Me.RecordCount <= 0) Then
  loc_EEC123:   var_B8 = "Information"
  loc_EEC13E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEC14E:   Exit Sub
  loc_EEC14F: End If
  loc_EEC15A: If (global_56 = "Banquet") Then
  loc_EEC164:   var_10C = "SELECT R.Code AS SEARCHCODE,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncl=CASE R.RateInclTax WHEN 'Y' THEN 'Yes' ELSE 'No' END,DiscApp=CASE R.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,Roff=CASE R.Roff WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name From Depart R Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_EEC16B:   MemVar_1F950E4 = var_10C & "' or LOGSITE_CODE='HO') and RestType='Banquet' and OutletYN='Y' Order by R.Name"
  loc_EEC175: Else
  loc_EEC17C:   var_10C = "SELECT R.Code AS SEARCHCODE,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Header3,R.Header4,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,LinkRoom=CASE R.LinkToRoom WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncl=CASE R.RateInclTax WHEN 'Y' THEN 'Yes' ELSE 'No' END,DiscApp=CASE R.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,Roff=CASE R.Roff WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name,Order_Booking=CASE R.Order_Booking when 'Y' then 'yes' else 'No' END From Depart R Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_EEC183:   MemVar_1F950E4 = var_10C & "' or LOGSITE_CODE='HO') and RestType<>'Banquet' and OutletYN='Y' Order by R.Name"
  loc_EEC18A: End If
  loc_EEC190: MemVar_1F95120 = Me
  loc_EEC19D: Proc_6_126_F1C850("3000,1000,2000,2000,2000,2000,2000", MemVar_1F950E4)
  loc_EEC1B8: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEC1BD: Exit Sub
  loc_EEC1BE: ' Referenced from: EEC100
  loc_EEC1BE: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EEC1C3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E398A8
  'Data Table: 51C24C
  loc_E39898: Proc_5_0_1107AD0(&HFF, Me)
  loc_E398A0: Call Proc_70_57_178640C(global_64)
  loc_E398A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39788
  'Data Table: 51C24C
  loc_E39778: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39780: Call Proc_70_57_178640C(global_64)
  loc_E39785: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E39668
  'Data Table: 51C24C
  loc_E39658: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39660: Call Proc_70_57_178640C(global_64)
  loc_E39665: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E39548
  'Data Table: 51C24C
  loc_E39538: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39540: Call Proc_70_57_178640C(global_64)
  loc_E39545: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '102EA0C
  'Data Table: 51C24C
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim unk_51C26E As Connection15
  Dim var_D2 As Integer
  Dim var_B8 As Variant
  loc_102E7DC: On Error Goto loc_102EA03
  loc_102E7E8: var_A4 = Me.RecordCount
  loc_102E7F6: If (var_A4 <= 0) Then
  loc_102E7F9:   Exit Sub
  loc_102E7FA: End If
  loc_102E801: var_A8 = "SELECT R.Code AS SEARCHCODE,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Header3,R.Header4,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,LinkRoom=CASE R.LinkToRoom WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncl=CASE R.RateInclTax WHEN 'Y' THEN 'Yes' ELSE 'No' END,DiscApp=CASE R.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,Roff=CASE R.Roff WHEN 'Y' THEN 'Yes' ELSE 'No' END,Order_Booking=case R.Order_Booking when 'Y' THEN 'yes' ELSE 'NO' END,R.U_Name From Depart R Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_102E808: var_88 = var_A8 & "' or LOGSITE_CODE='HO') and OutletYN='Y' Order by R.Name"
  loc_102E816: If (var_88 = vbNullString) Then
  loc_102E819:   Exit Sub
  loc_102E81A: End If
  loc_102E830: unk_51C26E.Execute var_88, var_C8, -1
  loc_102E85A: Set var_CC = var_CC 
  loc_102E866: var_D2 = CreateFieldDefFile(var_CC, MemVar_1F950B4 & "\Depart.ttx")
  loc_102E870: Set var_9C = var_CC
  loc_102E876: var_B8 = CVar(var_D2) 'Integer
  loc_102E879: var_98 = var_B8 'Variant
  loc_102E895: var_A8 = MemVar_1F950B4 & "\Depart.RPT"
  loc_102E89E: Call 0.Method_arg_1C (var_A8, var_B8, var_CC)
  loc_102E8A9: MemVar_1F951E8 = var_CC
  loc_102E8C4: Call 0.Method_arg_90 (var_CC, var_A4, var_9E, 1)
  loc_102E8CC: Call 0.Method_arg_24 (var_D2, &HFF)
  loc_102E8D8: For var_D6 =  To CInt(var_A4): var_CC = var_D6 'Integer
  loc_102E8F1:   Call 0.Method_arg_90 (var_CC, CLng(var_9E))
  loc_102E8F9:   Call 0.Method_arg_20 (var_DC)
  loc_102E901:   Call 0.Method_arg_30 (var_A8)
  loc_102E91B:   If (var_A8 = "Title") Then
  loc_102E927:     Call 0.Method_arg_50 (var_A8)
  loc_102E94A:     Call 0.Method_arg_90 (var_CC, CLng(var_9E))
  loc_102E952:     Call 0.Method_arg_20 (var_DC)
  loc_102E95A:     Call 0.Method_arg_38 ("'" & var_A8 & "'")
  loc_102E96F:   End If
  loc_102E972: Next var_D6 'Integer
  loc_102E990: Call 0.Method_arg_64 (var_CC, CVar(var_9C))
  loc_102E998: Call 0.Method_arg_2C (var_F4)
  loc_102E9A6: Call 0.Method_arg_150 (var_104)
  loc_102E9B1: Call 0.Method_arg_50 (var_A8)
  loc_102E9BB: Set var_DC = Nothing
  loc_102E9D5: Set var_CC = MemVar_1F951E8 
  loc_102E9E1: Proc_6_99_1484404(var_CC, 0, var_A8)
  loc_102E9EC: MemVar_1F951E8 = var_CC
  loc_102E9FF: Set var_9C = Nothing
  loc_102EA02: Exit Sub
  loc_102EA03: ' Referenced from: 102E7DC
  loc_102EA03: Proc_6_60_E63754(&HFF)
  loc_102EA08: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B95C
  'Data Table: 51C24C
  Dim Me As Recordset15
  loc_E0B953: Me.Requery -1
  loc_E0B958: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1CE0EF0
  'Data Table: 51C24C
  Dim var_CC As Variant
  Dim var_108 As Variant
  Dim var_E8 As Variant
  Dim var_118 As Variant
  Dim var_D4 As Variant
  Dim unk_51C26E As Connection15
  Dim var_88 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_8A As Variant
  Dim var_160 As String
  Dim var_138 As Variant
  Dim var_15C As Variant
  Dim var_170 As Variant
  Dim var_174 As String
  Dim var_92 As Variant
  Dim var_1A4 As Variant
  Dim var_1A8 As Variant
  Dim var_1C4 As TextBox
  Dim var_1D0 As TextBox
  Dim var_20C As Variant
  Dim var_248 As TextBox
  Dim var_294 As Variant
  Dim var_2E0 As TextBox
  Dim var_32C As TextBox
  Dim var_378 As TextBox
  Dim var_474 As TextBox
  Dim var_4C0 As Variant
  Dim var_508 As Variant
  Dim var_A04 As Variant
  Dim var_B54 As TextBox
  Dim var_BF8 As TextBox
  Dim var_C9C As TextBox
  Dim var_CE8 As TextBox
  Dim var_1320 As Double
  Dim var_D34 As TextBox
  Dim var_1328 As Double
  Dim var_D80 As TextBox
  Dim var_1330 As Double
  Dim var_DCC As TextBox
  Dim var_1338 As Double
  Dim var_E18 As TextBox
  Dim var_E64 As TextBox
  Dim var_EB0 As TextBox
  Dim var_FBC As Variant
  Dim var_10C4 As Variant
  Dim var_1214 As TextBox
  Dim var_1340 As Double
  Dim var_1260 As CheckBox
  Dim var_1B0 As String
  Dim var_1B4 As String
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1E4 As Variant
  Dim var_1F4 As Variant
  Dim var_128 As Variant
  Dim var_220 As Variant
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_25C As Variant
  Dim var_28C As Variant
  Dim var_2A8 As Variant
  Dim var_2B8 As Variant
  Dim var_2C8 As Variant
  Dim var_2F4 As Variant
  Dim var_304 As Variant
  Dim var_324 As Variant
  Dim var_350 As Variant
  Dim var_360 As Variant
  Dim var_38C As Variant
  Dim var_3BC As Variant
  Dim var_46C As Variant
  Dim var_498 As Variant
  Dim var_4E0 As Variant
  Dim var_51C As Variant
  Dim var_56C As Variant
  Dim var_5FC As Variant
  Dim var_704 As Variant
  Dim var_75C As Variant
  Dim var_80C As Variant
  Dim var_934 As Variant
  Dim var_9CC As Variant
  Dim var_AF4 As Variant
  Dim var_B2C As Variant
  Dim var_BD0 As Variant
  Dim var_C74 As Variant
  Dim var_D78 As Variant
  Dim var_DC4 As Variant
  Dim var_EA8 As Variant
  Dim var_F2C As Variant
  Dim var_1194 As Variant
  Dim var_11EC As Variant
  Dim var_1AC As String
  Dim var_1C8 As String
  Dim var_210 As String
  Dim var_1BC As TextBox
  Dim var_24C As String
  Dim var_37C As String
  Dim var_478 As String
  Dim var_3C4 As TextBox
  Dim var_A4C As TextBox
  Dim var_AFC As TextBox
  Dim var_BA0 As TextBox
  Dim var_C44 As TextBox
  Dim var_110C As TextBox
  Dim var_1164 As CheckBox
  Dim var_3E4 As Variant
  Dim var_D38 As String
  Dim var_D0 As Variant
  Dim var_1B8 As Variant
  Dim var_1D4 As String
  Dim var_50C As String
  Dim var_9C As Recordset15
  Dim var_1C0 As Fields15
  Dim var_1CC As Fields15
  Dim var_208 As MSFlexGrid
  Dim var_244 As Fields15
  Dim var_290 As Fields15
  Dim Me As Recordset15
  loc_1CDA210: On Error Goto loc_1CE0ED5
  loc_1CDA21E: Set var_C8 = Me.Txt
  loc_1CDA224: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1CDA24D: If (Proc_6_27_EA61EC(var_CC, "Name") = 0) Then
  loc_1CDA250:   Exit Sub
  loc_1CDA251: End If
  loc_1CDA25C: Set var_C8 = Me.Txt
  loc_1CDA262: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC)
  loc_1CDA28B: If (Proc_6_27_EA61EC(var_CC, "KOT") = 0) Then
  loc_1CDA28E:   Exit Sub
  loc_1CDA28F: End If
  loc_1CDA29A: Set var_C8 = Me.Txt
  loc_1CDA2A0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_CC)
  loc_1CDA2C9: If (Proc_6_27_EA61EC(var_CC, "Company Title") = 0) Then
  loc_1CDA2CC:   Exit Sub
  loc_1CDA2CD: End If
  loc_1CDA2D8: Set var_C8 = Me.Txt
  loc_1CDA2DE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_CC)
  loc_1CDA307: If (Proc_6_27_EA61EC(var_CC, "Outlet Title") = 0) Then
  loc_1CDA30A:   Exit Sub
  loc_1CDA30B: End If
  loc_1CDA316: Set var_C8 = Me.Txt
  loc_1CDA31C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_CC)
  loc_1CDA345: If (Proc_6_27_EA61EC(var_CC, "Link To Room") = 0) Then
  loc_1CDA348:   Exit Sub
  loc_1CDA349: End If
  loc_1CDA354: Set var_C8 = Me.Txt
  loc_1CDA35A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_CC)
  loc_1CDA383: If (Proc_6_27_EA61EC(var_CC, "Part Name") = 0) Then
  loc_1CDA386:   Exit Sub
  loc_1CDA387: End If
  loc_1CDA392: Set var_C8 = Me.Txt
  loc_1CDA398: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_CC)
  loc_1CDA3C1: If (Proc_6_27_EA61EC(var_CC, "Rate Incl. Tax") = 0) Then
  loc_1CDA3C4:   Exit Sub
  loc_1CDA3C5: End If
  loc_1CDA3D0: Set var_C8 = Me.Txt
  loc_1CDA3D6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_CC)
  loc_1CDA3FF: If (Proc_6_27_EA61EC(var_CC, "Round Off") = 0) Then
  loc_1CDA402:   Exit Sub
  loc_1CDA403: End If
  loc_1CDA40E: Set var_C8 = Me.Txt
  loc_1CDA414: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC)
  loc_1CDA43D: If (Proc_6_27_EA61EC(var_CC, "Restaurant Type") = 0) Then
  loc_1CDA440:   Exit Sub
  loc_1CDA441: End If
  loc_1CDA44C: Set var_C8 = Me.Txt
  loc_1CDA452: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDA47B: If (Proc_6_27_EA61EC(var_CC, "Short Name") = 0) Then
  loc_1CDA47E:   Exit Sub
  loc_1CDA47F: End If
  loc_1CDA48A: Set var_C8 = Me.Txt
  loc_1CDA490: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_CC)
  loc_1CDA4B9: If (Proc_6_27_EA61EC(var_CC, "OrderBooking") = 0) Then
  loc_1CDA4BC:   Exit Sub
  loc_1CDA4BD: End If
  loc_1CDA4C8: Set var_C8 = Me.Txt
  loc_1CDA4CE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_CC)
  loc_1CDA4F7: If (Proc_6_27_EA61EC(var_CC, "Member Info.") = 0) Then
  loc_1CDA4FA:   Exit Sub
  loc_1CDA4FB: End If
  loc_1CDA506: Set var_C8 = Me.Txt
  loc_1CDA50C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_CC)
  loc_1CDA535: If (Proc_6_27_EA61EC(var_CC, "Customer Info.") = 0) Then
  loc_1CDA538:   Exit Sub
  loc_1CDA539: End If
  loc_1CDA544: Set var_C8 = Me.Txt
  loc_1CDA54A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_CC)
  loc_1CDA573: If (Proc_6_27_EA61EC(var_CC, "DisPrint") = 0) Then
  loc_1CDA576:   Exit Sub
  loc_1CDA577: End If
  loc_1CDA585: Set var_C8 = Me.Txt
  loc_1CDA58B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_CC)
  loc_1CDA5AA: If (var_CC.Text = "Yes") Then
  loc_1CDA5B8:   Set var_C8 = Me.Txt
  loc_1CDA5BE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H25), var_CC)
  loc_1CDA5E7:   If (Proc_6_27_EA61EC(var_CC, "Central KOT Printing Type") = 0) Then
  loc_1CDA5EA:     Exit Sub
  loc_1CDA5EB:   End If
  loc_1CDA5EB: End If
  loc_1CDA5F9: Set var_C8 = Me.Txt
  loc_1CDA5FF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_CC)
  loc_1CDA61E: If (var_CC.Text = "Yes") Then
  loc_1CDA62C:   Set var_C8 = Me.Txt
  loc_1CDA632:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_CC)
  loc_1CDA643:   Set var_D0 = var_CC
  loc_1CDA65B:   If (Proc_6_27_EA61EC(var_D0, "Central KOT Printing Path") = 0) Then
  loc_1CDA65E:     Exit Sub
  loc_1CDA65F:   End If
  loc_1CDA65F: End If
  loc_1CDA662: Call Proc_70_55_1088CE4(var_D6)
  loc_1CDA66D: If (var_D6 = &HFF) Then
  loc_1CDA670:   Exit Sub
  loc_1CDA671: End If
  loc_1CDA674: Call Proc_70_65_103E074(var_D6)
  loc_1CDA67F: If (var_D6 = 0) Then
  loc_1CDA682:   Exit Sub
  loc_1CDA683: End If
  loc_1CDA68E: If (global_56 = "Banquet") Then
  loc_1CDA6AE:   Proc_6_17_EAAE40(var_F8, MemVar_1F95078, "Select HallDiscAC from enviro WHERE logSITE_CODE=", var_138)
  loc_1CDA6B6:   var_118 = -1 & var_F8 
  loc_1CDA6C4:   unk_51C26E.Execute CStr(var_118), var_C8, var_CC
  loc_1CDA6CF:   Set var_88 = var_C8
  loc_1CDA6F5:   If (var_88.RecordCount > 0) Then
  loc_1CDA707:     var_C8 = var_88.Fields
  loc_1CDA731:     If (Proc_6_38_E69628(CVar(var_C8.Item("HallDiscAC"))) = vbNullString) Then
  loc_1CDA74F:       var_F8 = "Please define Banquet Discount A/c In Enviro"
  loc_1CDA755:       MsgBox(var_F8, &H40, "HMS", var_138, var_15C)
  loc_1CDA765:       Exit Sub
  loc_1CDA766:     End If
  loc_1CDA766:   End If
  loc_1CDA783:   Proc_6_17_EAAE40(var_F8, MemVar_1F95078, "Select HallRoundOff from enviro WHERE logSITE_CODE=")
  loc_1CDA799:   unk_51C26E.Execute CStr(var_138 & var_F8), -1, var_C8
  loc_1CDA7A4:   Set var_88 = var_C8
  loc_1CDA7CA:   If (var_88.RecordCount > 0) Then
  loc_1CDA7DC:     var_C8 = var_88.Fields
  loc_1CDA806:     If (Proc_6_38_E69628(CVar(var_C8.Item("HallRoundOff"))) = vbNullString) Then
  loc_1CDA81F:       var_E8 = "Please define Banquet Round-Off Ac In Enviro"
  loc_1CDA824:       var_F8 = "HallRoundOff"
  loc_1CDA82A:       MsgBox(var_F8, &H40, "HMS", var_138, var_15C)
  loc_1CDA83A:       Exit Sub
  loc_1CDA83B:     End If
  loc_1CDA83B:   End If
  loc_1CDA83E: Else
  loc_1CDA85B:   Proc_6_17_EAAE40(var_F8, MemVar_1F95078, "Select OutletDiscAc from enviro WHERE LOGSITE_CODE=")
  loc_1CDA871:   unk_51C26E.Execute CStr(var_138 & var_F8), -1, var_C8
  loc_1CDA87C:   Set var_88 = var_C8
  loc_1CDA8A2:   If (var_88.RecordCount > 0) Then
  loc_1CDA8B4:     var_C8 = var_88.Fields
  loc_1CDA8CD:     var_B8 = Proc_6_38_E69628(CVar(var_C8.Item("OutletDiscAc")))
  loc_1CDA8DE:     If (var_B8 = vbNullString) Then
  loc_1CDA8FC:       var_F8 = "Please define Outlet Discount A/c In Enviro"
  loc_1CDA902:       MsgBox(var_F8, &H40, "HMS", var_138, var_15C)
  loc_1CDA912:       Exit Sub
  loc_1CDA913:     End If
  loc_1CDA913:   End If
  loc_1CDA930:   Proc_6_17_EAAE40(var_F8, MemVar_1F95078, "Select OutletRoundAc from enviro WHERE LOGSITE_CODE=")
  loc_1CDA93C:   var_D4 = CStr(var_138 & var_F8)
  loc_1CDA946:   unk_51C26E.Execute var_D4, -1, var_C8
  loc_1CDA951:   Set var_88 = var_C8
  loc_1CDA969:   var_13C = var_88.RecordCount
  loc_1CDA977:   If (var_13C > 0) Then
  loc_1CDA991:     var_CC = var_88.Fields.Item("OutletRoundAc")
  loc_1CDA9A2:     var_BC = Proc_6_38_E69628(CVar(var_CC))
  loc_1CDA9B3:     If (var_BC = vbNullString) Then
  loc_1CDA9CC:       var_E8 = "Please define Round-Off Ac In Enviro"
  loc_1CDA9D7:       MsgBox("OutletRoundAc", &H40, "HMS", var_138, var_15C)
  loc_1CDA9E7:       Exit Sub
  loc_1CDA9E8:     End If
  loc_1CDA9E8:   End If
  loc_1CDA9E8: End If
  loc_1CDA9EA: var_8A = &HFF
  loc_1CDA9F6: unk_51C26E.BeginTrans var_13C
  loc_1CDAA0C: Set var_C8 = Me.Txt
  loc_1CDAA12: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, var_D4)
  loc_1CDAA1A: "B" = var_CC.Text
  loc_1CDAA23: var_98 = var_8A & var_D4
  loc_1CDAA34: Set var_C8 = Me.TopCtrl1
  loc_1CDAA3A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1CDAA53: If (CStr() = "Add") Then
  loc_1CDAA61:   Set var_C8 = Me.Txt
  loc_1CDAA67:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1CDAA94:   var_D4 = "Select ISNULL(Max(cAST(SUBSTRING(Code,4,Len(Code)-3) AS INT)),0) As tCode From Depart Where SITE_CODE='" & MemVar_1F95070
  loc_1CDAAAC:   var_E8 = "' And IsNumeric(SUBSTRING(Code,4,Len(Code)-3))=1"
  loc_1CDAABF:   unk_51C26E.Execute CStr(CVar(CStr() & "' AND Left(Code,3)='" & MemVar_1F95078) & Left(CVar(var_CC), 1) & "OutletRoundAc"), var_184, -1
  loc_1CDAACA:   Set var_88 = var_D0
  loc_1CDAB30:   If ((var_88.RecordCount > 0) And Not(IsNull(CVar(var_88.Fields.Item("TCode"))))) Then
  loc_1CDAB4D:     var_CC = var_88.Fields.Item("TCode")
  loc_1CDAB62:     var_118 = (var_CC.Value + 1)
  loc_1CDAB67:     var_92 = CInt(Left(CVar(var_CC), 1))
  loc_1CDAB7B:   Else
  loc_1CDAB7D:     var_92 = 1
  loc_1CDAB80:   End If
  loc_1CDAB8B:   Set var_C8 = Me.Txt
  loc_1CDAB91:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_92)
  loc_1CDABF8:   var_D4 = CStr(1 & Format(var_92, "000"))
  loc_1CDAC07:   Set var_D0 = Me.Txt
  loc_1CDAC0D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4, 1)
  loc_1CDAC15:   var_1A8.Tag = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2, var_92)) & Ucase(Left(CVar(var_CC), 1))
  loc_1CDAC47:   Set var_C8 = Me.Txt
  loc_1CDAC4D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4)
  loc_1CDAC55:   var_D0 = var_CC.Tag
  loc_1CDAC68:   Set var_D0 = Me.Txt
  loc_1CDAC6E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8)
  loc_1CDAC86:   Set var_1B8 = Me.Txt
  loc_1CDAC8C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1BC)
  loc_1CDAC99:   var_F8 = CVar(var_1BC) 'Address
  loc_1CDACA0:   var_118 = Left(var_F8, 1)
  loc_1CDACB9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1C4)
  loc_1CDACD4:   Set var_1CC = Me.Txt
  loc_1CDACDA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1D0)
  loc_1CDACE2:   var_1D4 = var_1D0.Text
  loc_1CDACF5:   Set var_208 = Me.Txt
  loc_1CDACFB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_20C)
  loc_1CDAD16:   Set var_244 = Me.Txt
  loc_1CDAD1C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_248)
  loc_1CDAD37:   Set var_290 = Me.Txt
  loc_1CDAD3D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_294)
  loc_1CDAD58:   Set var_2DC = Me.Txt
  loc_1CDAD5E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2E0)
  loc_1CDAD79:   Set var_328 = Me.Txt
  loc_1CDAD7F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_32C)
  loc_1CDAD9A:   Set var_374 = Me.Txt
  loc_1CDADA0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_378)
  loc_1CDADB8:   Set var_3C0 = Me.Txt
  loc_1CDADBE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_3C4)
  loc_1CDADE2:   Set var_418 = Me.Txt
  loc_1CDADE8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_41C)
  loc_1CDAE0F:   Set var_470 = Me.Txt
  loc_1CDAE15:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_474)
  loc_1CDAE2E:   Set var_4BC = Me.Label1
  loc_1CDAE34:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_4C0)
  loc_1CDAE4F:   Set var_504 = Me.Txt
  loc_1CDAE55:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_508)
  loc_1CDAE5D:   var_50C = var_508.Text
  loc_1CDAE6D:   Set var_570 = Me.Txt
  loc_1CDAE73:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_574)
  loc_1CDAE97:   Set var_5C8 = Me.Txt
  loc_1CDAE9D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_5CC)
  loc_1CDAEC1:   Set var_620 = Me.Txt
  loc_1CDAEC7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_624)
  loc_1CDAEEB:   Set var_678 = Me.Txt
  loc_1CDAEF1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_67C)
  loc_1CDAF15:   Set var_6D0 = Me.Txt
  loc_1CDAF1B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_6D4)
  loc_1CDAF3F:   Set var_728 = Me.Txt
  loc_1CDAF45:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_72C)
  loc_1CDAF69:   Set var_780 = Me.Txt
  loc_1CDAF6F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_784)
  loc_1CDAF93:   Set var_7D8 = Me.Txt
  loc_1CDAF99:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_7DC)
  loc_1CDAFBD:   Set var_830 = Me.Txt
  loc_1CDAFC3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2E), var_834)
  loc_1CDAFEA:   Proc_6_7_F26918(var_924, Date)
  loc_1CDAFFA:   Set var_998 = Me.Txt
  loc_1CDB000:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_99C)
  loc_1CDB01F:   Set var_9F0 = Me.Txt
  loc_1CDB025:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_9F4)
  loc_1CDB044:   Set var_A48 = Me.Txt
  loc_1CDB04A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_A4C)
  loc_1CDB069:   Set var_AA0 = Me.Txt
  loc_1CDB06F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_AA4)
  loc_1CDB093:   Set var_AF8 = Me.Txt
  loc_1CDB099:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_AFC)
  loc_1CDB0C0:   Set var_B50 = Me.Txt
  loc_1CDB0C6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_B54)
  loc_1CDB0CE:   var_B58 = var_B54.Text
  loc_1CDB0DE:   Set var_B9C = Me.Txt
  loc_1CDB0E4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_BA0)
  loc_1CDB10B:   Set var_BF4 = Me.Txt
  loc_1CDB111:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H25), var_BF8)
  loc_1CDB129:   Set var_C40 = Me.Txt
  loc_1CDB12F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_C44)
  loc_1CDB151:   Set var_C98 = Me.Txt
  loc_1CDB157:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_C9C)
  loc_1CDB172:   Set var_CE4 = Me.Txt
  loc_1CDB178:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_CE8)
  loc_1CDB18D:   var_1320 = Val(var_CE8.Text)
  loc_1CDB19E:   Set var_D30 = Me.Txt
  loc_1CDB1A4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2A), var_D34, var_D38)
  loc_1CDB1B9:   var_1328 = Val(var_D38)
  loc_1CDB1CA:   Set var_D7C = Me.Txt
  loc_1CDB1D0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_D80, var_D84)
  loc_1CDB1E5:   var_1330 = Val(var_D84)
  loc_1CDB1F6:   Set var_DC8 = Me.Txt
  loc_1CDB1FC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_DCC, var_DD0)
  loc_1CDB211:   var_1338 = Val(var_DD0)
  loc_1CDB222:   Set var_E14 = Me.Txt
  loc_1CDB228:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_E18, var_E1C)
  loc_1CDB243:   Set var_E60 = Me.Txt
  loc_1CDB249:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_E64)
  loc_1CDB264:   Set var_EAC = Me.Txt
  loc_1CDB26A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H27), var_EB0)
  loc_1CDB282:   Set var_EF8 = Me.Txt
  loc_1CDB288:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_EFC)
  loc_1CDB2A7:   Set var_F50 = Me.Txt
  loc_1CDB2AD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_F54)
  loc_1CDB2CC:   Set var_FA8 = Me.Txt
  loc_1CDB2D2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_FAC)
  loc_1CDB2F1:   Set var_1000 = Me.Txt
  loc_1CDB2F7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H28), var_1004)
  loc_1CDB316:   Set var_1058 = Me.Txt
  loc_1CDB31C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_105C)
  loc_1CDB33B:   Set var_10B0 = Me.Txt
  loc_1CDB341:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2F), var_10B4)
  loc_1CDB360:   Set var_1108 = Me.Txt
  loc_1CDB366:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H30), var_110C)
  loc_1CDB385:   Set var_1160 = Me.Txt
  loc_1CDB38B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H31), var_1164)
  loc_1CDB3AA:   Set var_11B8 = Me.Txt
  loc_1CDB3B0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_11BC)
  loc_1CDB3D2:   Set var_1210 = Me.Txt
  loc_1CDB3D8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_1214)
  loc_1CDB3ED:   var_1340 = Val(var_1214.Text)
  loc_1CDB3FE:   Set var_125C = Me.ChkDisc
  loc_1CDB404:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1260, var_D6)
  loc_1CDB421:   var_1290 = "Y"
  loc_1CDB44D:   var_160 = "Insert Into Depart(Code,Name,KotYn,Header1,Header2,Header3,Header4,Phone,Slogan1,Slogan2,LstNo,CompanyTitle,OutletTitle,POS,RestType,BackColor,ShortName,OutletYN,LinkToRoom,PartyName,SplitBill,RateInclTax,DiscApp,Roff,MemberInfo,DisPrint,LabelPrinting,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,TokenPrint,TokenPrintAfter,PrintTokenNo,Order_Booking,CustInfo,CstNo,CKOTPrintYN,PrintType,BarCodePartitionAppOn,CKOTPrintPath,CurTokenNo,CurTokenNoKOT,NoOfKOt,NoOfBill,OrderBookCom1,OrderBookCom2,SaleBillTokenHeader1,PrintOnSave,AutoSettlement,WScaleApp,BarCodeApp,AutoResetToken,FreeItemApp,CoverMandatory,MobileNoMandatory,DirectBilling,BookOfBills,GrpDiscApp) " & " Values ('"
  loc_1CDB45B:   var_1B0 = var_160 & var_D4 & "','"
  loc_1CDB473:   var_E8 = "','"
  loc_1CDB486:   var_108 = "','"
  loc_1CDB4A8:   var_230 = CVar(var_1B0 & var_1A8.Text & "','") & var_118 & var_E8 & CVar(var_1C4.Text) & var_108 & CVar(var_1D4) & "','" & CVar(var_20C.Text) 
  loc_1CDB4F4:   var_350 = var_230 & "','" & CVar(var_248.Text) & "','" & CVar(var_294.Text) & "','" & CVar(var_2E0.Text) & "','" & CVar(var_32C.Text) 
  loc_1CDB53A:   var_498 = var_350 & "','" & CVar(var_378.Text) & "','" & Left(CVar(var_3C4), 1) & "','" & Left(CVar(var_41C), 1) & "','Y','" & CVar(var_474.Text) 
  loc_1CDB58A:   var_5FC = var_498 & "'," & CVar(var_4C0.BackColor) & ",'" & CVar(var_50C) & "','Y'," & "'" & Left(CVar(var_574), 1) & "','" & Left(CVar(var_5CC), 1) 
  loc_1CDB5CA:   var_75C = var_5FC & "','" & Left(CVar(var_624), 1) & "','" & Left(CVar(var_67C), 1) & "','" & Left(CVar(var_6D4), 1) & "','" & Left(CVar(var_72C), 1) 
  loc_1CDB60D:   var_8A4 = var_75C & "','" & Left(CVar(var_784), 1) & "','" & Left(CVar(var_7DC), 1) & "','" & Left(CVar(var_834), 1) & "','" & CVar(MemVar_1F95070) 
  loc_1CDB653:   var_9CC = var_8A4 & " ','" & CVar(MemVar_1F950C8) & "'," & var_924 & ",'A','" & CVar(MemVar_1F95078) & "','" & Trim(CVar(var_99C)) 
  loc_1CDB693:   var_B2C = var_9CC & "','" & Trim(CVar(var_9F4)) & "','" & Trim(CVar(var_A4C)) & "','" & Left(CVar(var_AA4), 1) & "','" & Left(CVar(var_AFC), 1) 
  loc_1CDB6D9:   var_C74 = var_B2C & "','" & CVar(var_B58) & "','" & Left(CVar(var_BA0), 1) & "','" & CVar(var_BF8.Text) & "','" & Trim(CVar(var_C44)) 
  loc_1CDB731:   var_DC4 = var_C74 & "','" & CVar(var_C9C.Text) & "'," & CVar(var_D34.Text) & "," & CVar(var_D80.Text) & "," & CVar(var_DCC.Text) & "," 
  loc_1CDB785:   var_F2C = var_DC4 & CVar(var_E18.Text) & ",'" & CVar(var_E1C) & "','" & CVar(var_E64.Text) & "','" & CVar(var_EB0.Text) & "','" & Trim(CVar(var_EFC)) 
  loc_1CDB7C5:   var_108C = var_F2C & "','" & Trim(CVar(var_F54)) & "','" & Trim(CVar(var_FAC)) & "','" & Trim(CVar(var_1004)) & "','" & Trim(CVar(var_105C)) 
  loc_1CDB805:   var_11EC = var_108C & "','" & Trim(CVar(var_10B4)) & "','" & Trim(CVar(var_110C)) & "','" & Trim(CVar(var_1164)) & "','" & Trim(CVar(var_11BC)) 
  loc_1CDB840:   unk_51C26E.Execute CStr(var_11EC & "'," & CVar(var_1260.Value) & ",'" & IIf((var_D6 = 1), var_1290, "N") & "')"), var_1314, -1
  loc_1CDBA93:   Set var_C8 = Me.Txt
  loc_1CDBA99:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4)
  loc_1CDBAAD:   Call Proc_70_61_F58EBC(var_D4, var_1318)
  loc_1CDBAB5:   var_AC = var_CC.Text
  loc_1CDBAD6:   var_D4 = "Insert Into RevMast(Code,DeskCode,Name,ShortName,SysYN,Type,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_AC
  loc_1CDBAEE:   Set var_C8 = Me.Txt
  loc_1CDBAF4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_160, var_D4 & "','")
  loc_1CDBAFC:   var_1A4 = var_CC.Tag
  loc_1CDBB05:   var_1AC = -1 & var_160
  loc_1CDBB0C:   var_1B4 = var_1A8.Text & "','"
  loc_1CDBB1D:   Set var_D0 = Me.Txt
  loc_1CDBB23:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1B0)
  loc_1CDBB2B:   var_1B4 = var_1A8.Text
  loc_1CDBB3B:   var_210 = Me.Txt & var_1B0 & "','"
  loc_1CDBB4C:   Set var_1B8 = Me.Txt
  loc_1CDBB52:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1BC, var_1D4)
  loc_1CDBB5A:   var_210 = var_1BC.Text
  loc_1CDBB7F:   var_37C = var_CC & var_1D4 & "','Y','Cr','Amount','Header','POS','" & MemVar_1F95070 & "','" & MemVar_1F950C8
  loc_1CDBB97:   Proc_6_7_F26918(var_118, Date)
  loc_1CDBBAF:   var_108 = CVar(MemVar_1F95078) 'String
  loc_1CDBBBF:   var_478 = CStr(CVar(var_37C & "',") & var_118 & ",'A','" & var_108 & "')")
  loc_1CDBBC9:   unk_51C26E.Execute var_478, , 
  loc_1CDBC16: Else
  loc_1CDBC21:   Set var_C8 = Me.Txt
  loc_1CDBC27:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF))
  loc_1CDBC2F:   var_F8 = CVar(var_CC) 'Address
  loc_1CDBC36:   var_118 = Trim(var_F8)
  loc_1CDBC46:   Set var_D0 = Me.Txt
  loc_1CDBC4C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_1A8)
  loc_1CDBC6B:   Set var_1B8 = Me.Txt
  loc_1CDBC71:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_1BC)
  loc_1CDBC80:   var_1F4 = Trim(CVar(var_1BC))
  loc_1CDBC90:   Set var_1C0 = Me.Txt
  loc_1CDBC96:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1C4)
  loc_1CDBCAA:   var_240 = Left(CVar(var_1C4), 1)
  loc_1CDBCBD:   Set var_1CC = Me.Txt
  loc_1CDBCC3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1D0)
  loc_1CDBCCB:   var_D4 = var_1D0.Text
  loc_1CDBCDE:   Set var_208 = Me.Txt
  loc_1CDBCE4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_20C)
  loc_1CDBCEC:   var_160 = var_20C.Text
  loc_1CDBCFF:   Set var_244 = Me.Txt
  loc_1CDBD05:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_248)
  loc_1CDBD20:   Set var_290 = Me.Txt
  loc_1CDBD26:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_294)
  loc_1CDBD41:   Set var_2DC = Me.Txt
  loc_1CDBD47:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2E0)
  loc_1CDBD62:   Set var_328 = Me.Txt
  loc_1CDBD68:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_32C)
  loc_1CDBD83:   Set var_374 = Me.Txt
  loc_1CDBD89:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_378)
  loc_1CDBDA4:   Set var_3C0 = Me.Txt
  loc_1CDBDAA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_3C4)
  loc_1CDBDC2:   Set var_418 = Me.Txt
  loc_1CDBDC8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_41C)
  loc_1CDBDD5:   var_4E0 = CVar(var_41C) 'Address
  loc_1CDBDEC:   Set var_470 = Me.Txt
  loc_1CDBDF2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_474)
  loc_1CDBE06:   var_56C = Left(CVar(var_474), 1)
  loc_1CDBE19:   Set var_4BC = Me.Txt
  loc_1CDBE1F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4C0)
  loc_1CDBE27:   var_210 = var_4C0.Text
  loc_1CDBE38:   Set var_504 = Me.Label1
  loc_1CDBE3E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_508)
  loc_1CDBE56:   Set var_570 = Me.Txt
  loc_1CDBE5C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_574)
  loc_1CDBE80:   Set var_5C8 = Me.Txt
  loc_1CDBE86:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_5CC)
  loc_1CDBEAA:   Set var_620 = Me.Txt
  loc_1CDBEB0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_624)
  loc_1CDBED4:   Set var_678 = Me.Txt
  loc_1CDBEDA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_67C)
  loc_1CDBEFE:   Set var_6D0 = Me.Txt
  loc_1CDBF04:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_6D4)
  loc_1CDBF28:   Set var_728 = Me.Txt
  loc_1CDBF2E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_72C)
  loc_1CDBF52:   Set var_780 = Me.Txt
  loc_1CDBF58:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_784)
  loc_1CDBF7C:   Set var_7D8 = Me.Txt
  loc_1CDBF82:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_7DC)
  loc_1CDBFA6:   Set var_830 = Me.Txt
  loc_1CDBFAC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2E), var_834)
  loc_1CDBFD3:   Proc_6_7_F26918(var_9CC, Date)
  loc_1CDBFE3:   Set var_998 = Me.Txt
  loc_1CDBFE9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_99C)
  loc_1CDC00D:   Set var_9F0 = Me.Txt
  loc_1CDC013:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_9F4)
  loc_1CDC03A:   Set var_A48 = Me.Txt
  loc_1CDC040:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_A4C)
  loc_1CDC058:   Set var_AA0 = Me.Txt
  loc_1CDC05E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_AA4)
  loc_1CDC085:   Set var_AF8 = Me.Txt
  loc_1CDC08B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H25), var_AFC)
  loc_1CDC0A3:   Set var_B50 = Me.Txt
  loc_1CDC0A9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_B54)
  loc_1CDC0CB:   Set var_B9C = Me.Txt
  loc_1CDC0D1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_BA0)
  loc_1CDC0EC:   Set var_BF4 = Me.Txt
  loc_1CDC0F2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_BF8)
  loc_1CDC107:   var_1320 = Val(var_BF8.Text)
  loc_1CDC118:   Set var_C40 = Me.Txt
  loc_1CDC11E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2A), var_C44, var_37C)
  loc_1CDC133:   var_1328 = Val(var_37C)
  loc_1CDC144:   Set var_C98 = Me.Txt
  loc_1CDC14A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_C9C, var_478)
  loc_1CDC15F:   var_1330 = Val(var_478)
  loc_1CDC170:   Set var_CE4 = Me.Txt
  loc_1CDC176:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_CE8, var_50C)
  loc_1CDC18B:   var_1338 = Val(var_50C)
  loc_1CDC19C:   Set var_D30 = Me.Txt
  loc_1CDC1A2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_D34, var_B58)
  loc_1CDC1BD:   Set var_D7C = Me.Txt
  loc_1CDC1C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_D80)
  loc_1CDC1DE:   Set var_DC8 = Me.Txt
  loc_1CDC1E4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H27), var_DCC)
  loc_1CDC1FC:   Set var_E14 = Me.Txt
  loc_1CDC202:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_E18)
  loc_1CDC221:   Set var_E60 = Me.Txt
  loc_1CDC227:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_E64)
  loc_1CDC246:   Set var_EAC = Me.Txt
  loc_1CDC24C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_EB0)
  loc_1CDC26B:   Set var_EF8 = Me.Txt
  loc_1CDC271:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H28), var_EFC)
  loc_1CDC290:   Set var_F50 = Me.Txt
  loc_1CDC296:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_F54)
  loc_1CDC2B5:   Set var_FA8 = Me.Txt
  loc_1CDC2BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2F), var_FAC)
  loc_1CDC2DA:   Set var_1000 = Me.Txt
  loc_1CDC2E0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H30), var_1004)
  loc_1CDC2FF:   Set var_1058 = Me.Txt
  loc_1CDC305:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H31), var_105C)
  loc_1CDC324:   Set var_10B0 = Me.Txt
  loc_1CDC32A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_10B4)
  loc_1CDC34C:   Set var_1108 = Me.Txt
  loc_1CDC352:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_110C)
  loc_1CDC367:   var_1340 = Val(var_110C.Text)
  loc_1CDC378:   Set var_1160 = Me.ChkDisc
  loc_1CDC37E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1164, var_D6)
  loc_1CDC3C0:   var_E8 = "Update Depart Set TokenPrint='"
  loc_1CDC3CC:   var_108 = "',TokenPrintAfter='"
  loc_1CDC3DC:   var_128 = "',PrintTokenNo ='"
  loc_1CDC40B:   var_2A8 = var_E8 & var_118 & var_108 & Trim(CVar(var_1A8)) & var_128 & var_1F4 & "',KotYn='" & var_240 & "',Header1='" & CVar(var_D4) 
  loc_1CDC414:   var_2B8 = var_2A8 & "',Header2='" 
  loc_1CDC454:   var_3BC = CVar(var_2E0.Text) 'String
  loc_1CDC460:   var_3E4 = var_2B8 & CVar(var_160) & "',Header3='" & CVar(var_248.Text) & "',Header4='" & CVar(var_294.Text) & "',Phone='" & var_3BC & "',Slogan1='" 
  loc_1CDC4A0:   var_51C = var_3E4 & CVar(var_32C.Text) & "',Slogan2='" & CVar(var_378.Text) & "',LstNo='" & CVar(var_3C4.Text) & "',CompanyTitle='" & Left(var_4E0, 1) 
  loc_1CDC4E0:   var_5FC = var_51C & "',OutletTitle='" & var_56C & "',POS='Y',RestType='" & CVar(var_210) & "',BackColor=" & CVar(var_508.BackColor) & ",LinkToRoom='" 
  loc_1CDC510:   var_704 = var_5FC & Left(CVar(var_574), 1) & "', PartyName='" & Left(CVar(var_5CC), 1) & "', splitbill='" & Left(CVar(var_624), 1) & "',RateInclTax='" 
  loc_1CDC540:   var_80C = var_704 & Left(CVar(var_67C), 1) & "',DiscApp='" & Left(CVar(var_6D4), 1) & "',Roff='" & Left(CVar(var_72C), 1) & "',MemberInfo='" 
  loc_1CDC570:   var_934 = var_80C & Left(CVar(var_784), 1) & "',DisPrint='" & Left(CVar(var_7DC), 1) & "',LabelPrinting='" & Left(CVar(var_834), 1) & "',Site_Code='" 
  loc_1CDC5A6:   var_A04 = var_934 & CVar(MemVar_1F95070) & "',OutLetYN='Y',U_Name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_9CC & ",U_AE='E',Order_Booking='" 
  loc_1CDC5D9:   var_AF4 = var_A04 & Left(CVar(var_99C), 1) & "',CustInfo='" & Left(CVar(var_9F4), 1) & "',CstNo='" & CVar(var_A4C.Text) & "',CKOTPrintYN='" 
  loc_1CDC603:   var_BD0 = var_AF4 & Left(CVar(var_AA4), 1) & "',PrintType='" & CVar(var_AFC.Text) & "',BarCodePartitionAppOn='" & Trim(CVar(var_B54)) 
  loc_1CDC63E:   var_C74 = var_BD0 & "',CKOTPrintPath='" & CVar(var_BA0.Text) & "',CurTokenNo=" & CVar(var_C44.Text) & ",CurTokenNoKOT=" & CVar(var_C9C.Text) 
  loc_1CDC682:   var_D78 = var_C74 & ",NoOfKot=" & CVar(var_CE8.Text) & ",NoOfBill=" & CVar(var_D34.Text) & ",OrderBookCom1='" & CVar(var_B58) & "',OrderBookCom2='" 
  loc_1CDC6B8:   var_EA8 = var_D78 & CVar(var_D80.Text) & "',SaleBillTokenHeader1='" & CVar(var_DCC.Text) & "',PrintOnSave='" & Trim(CVar(var_E18)) & "',AutoSettlement='" 
  loc_1CDC6E8:   var_FBC = var_EA8 & Trim(CVar(var_E64)) & "',WScaleApp='" & Trim(CVar(var_EB0)) & "',BarCodeApp='" & Trim(CVar(var_EFC)) & "',AutoResetToken='" 
  loc_1CDC718:   var_10C4 = var_FBC & Trim(CVar(var_F54)) & "',FreeItemApp='" & Trim(CVar(var_FAC)) & "',CoverMandatory='" & Trim(CVar(var_1004)) & "',MobileNoMandatory='" 
  loc_1CDC74C:   var_1194 = var_10C4 & Trim(CVar(var_105C)) & "',DirectBilling='" & Trim(CVar(var_10B4)) & "',BookOfBills=" & CVar(var_1164.Value) & ",GrpDiscApp='" 
  loc_1CDC780:   unk_51C26E.Execute CStr(var_1194 & IIf((var_D6 = 1), "Y", "N") & "' Where Code='" & CVar(global_68) & "'"), var_1290, -1
  loc_1CDC9A0: End If
  loc_1CDC9DB: Set var_C8 = Me.Txt
  loc_1CDC9E1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, var_160, "Select Count(*) from RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_F8, -1, var_D0)
  loc_1CDC9E9: var_1A8 = var_CC.Text
  loc_1CDC9F5: var_1AC = var_160 & " - DISCOUNT"
  loc_1CDC9F9: var_1B0 = 0 & var_294.Text
  loc_1CDCA09: unk_51C26E.Execute var_1B0 & "'", var_1B8, var_118
  loc_1CDCA11: var_11B8 = var_D0.Fields
  loc_1CDCA19:  = var_1A8.Item(var_CC)
  loc_1CDCA21:  = var_1B8.Value
  loc_1CDCA54: If (var_118 = 0) Then
  loc_1CDCA67:   var_118 = Right(var_AC, 3)
  loc_1CDCA78:   var_1320 = Val(CStr(var_118))
  loc_1CDCAAF:   var_138 = CVar((var_1320 + CDbl(1))) 'Double
  loc_1CDCABE:   var_184 = (1 + Format(var_AC & var_118, "000"))
  loc_1CDCAC3:   var_AC = CStr(Trim(CVar(var_1A8)))
  loc_1CDCAEC:   var_D4 = "Insert Into RevMast(Code,DeskCode,Name,ShortName,SysYN,Type,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,AcCode,FieldType,LogSite_Code) Values ('" & var_AC
  loc_1CDCB04:   Set var_C8 = Me.Txt
  loc_1CDCB0A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_160, var_D4 & "','", var_1F4)
  loc_1CDCB12:   -1 = var_CC.Tag
  loc_1CDCB33:   Set var_D0 = Me.Txt
  loc_1CDCB39:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_1B0, var_1C0 & var_160 & "','")
  loc_1CDCB41:   1 = var_1A8.Text
  loc_1CDCB4D:   var_1C8 = var_1B0 & " - DISCOUNT"
  loc_1CDCB58:   var_24C = Left(var_AC, 3) & var_378.Text & "','"
  loc_1CDCB69:   Set var_1B8 = Me.Txt
  loc_1CDCB6F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1BC, var_210)
  loc_1CDCB77:   var_24C = var_1BC.Text
  loc_1CDCBA9:   var_F8 = Date
  loc_1CDCBB4:   Proc_6_7_F26918(var_118, var_F8)
  loc_1CDCBBC:   var_15C = CVar(var_1320 & var_210 & "','Y','Dr','Amount','Detail','POS','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_118 
  loc_1CDCBF9:   unk_51C26E.Execute CStr(var_15C & ",'A','" & CVar(var_B8) & "','C','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1CDCC49: End If
  loc_1CDCC84: Set var_C8 = Me.Txt
  loc_1CDCC8A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, var_160, "Select Count(*) from RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_F8, -1)
  loc_1CDCC9E: var_1AC = var_160 & " - ROUND-OFF"
  loc_1CDCCA2: var_1B0 = var_1A8 & var_1C0 & var_160
  loc_1CDCCB2: unk_51C26E.Execute var_1B0 & "'", 0, var_1B8
  loc_1CDCCC2:  = var_1A8.Item()
  loc_1CDCCCA:  = var_1B8.Value
  loc_1CDCCFD: If (var_CC.Text.Fields = 0) Then
  loc_1CDCD10:   var_118 = Right(var_AC, 3)
  loc_1CDCD21:   var_1320 = Val(CStr(var_118))
  loc_1CDCD58:   var_138 = CVar((var_1320 + CDbl(1))) 'Double
  loc_1CDCD5F:   var_170 = Format(CVar(var_1320 & var_210 & "','Y','Dr','Amount','Detail','POS','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',"), "000")
  loc_1CDCD67:   var_184 = (1 + var_170)
  loc_1CDCD95:   var_D4 = "Insert Into RevMast(Code,DeskCode,Name,ShortName,SysYN,Type,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,AcCode,FieldType,LogSite_Code) Values ('" & CStr("000" & ",'A','" & CVar(var_B8))
  loc_1CDCDAD:   Set var_C8 = Me.Txt
  loc_1CDCDB3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_160, var_D4 & "','", var_1F4)
  loc_1CDCDBB:   -1 = var_CC.Tag
  loc_1CDCDDC:   Set var_D0 = Me.Txt
  loc_1CDCDE2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_1B0, var_1C0 & var_160 & "','")
  loc_1CDCDEA:   1 = var_1A8.Text
  loc_1CDCDF6:   var_1C8 = var_1B0 & " - ROUND-OFF"
  loc_1CDCE01:   var_24C = Left(CStr("000" & ",'A','" & CVar(var_B8)), 3) & var_378.Text & "','"
  loc_1CDCE12:   Set var_1B8 = Me.Txt
  loc_1CDCE18:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1BC, var_210)
  loc_1CDCE20:   var_24C = var_1BC.Text
  loc_1CDCE5D:   Proc_6_7_F26918(var_118, Date)
  loc_1CDCE65:   var_15C = CVar(var_1320 & var_210 & "','Y','Cr','Amount','Detail','POS','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") & var_118 
  loc_1CDCEA2:   unk_51C26E.Execute CStr(var_15C & ",'A','" & CVar(var_BC) & "','C','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1CDCEF2: End If
  loc_1CDCEF6: Set var_C8 = Me.TopCtrl1
  loc_1CDCEFC: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1CDCF15: If (CStr() = "Add") Then
  loc_1CDCF23:   If (global_56 = "Banquet") Then
  loc_1CDCF37:     Set var_C8 = Me.Txt
  loc_1CDCF3D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDCF4E:     var_A8 = "HB" & var_CC.Text
  loc_1CDCF6C:     Set var_C8 = Me.Txt
  loc_1CDCF72:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDCF83:     var_B0 = "HC" & var_CC.Text
  loc_1CDCFA4:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HSBILL','HSBIL','" & var_98
  loc_1CDCFCD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','" & var_A8 & "','"))
  loc_1CDCFD5:     var_F8 = CVar(var_CC) 'Address
  loc_1CDCFE9:     var_138 = (Trim(var_F8) + " Bill Entry")
  loc_1CDCFED:     var_170 = var_3BC & CVar(var_1320 & var_210 & "','Y','Cr','Amount','Detail','POS','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") 
  loc_1CDD005:     Set var_D0 = Me.Txt
  loc_1CDD00B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDD027:     var_1E4 = (Trim(CVar(var_1A8)) + " Bill Entry")
  loc_1CDD02B:     var_1F4 = -1 & CVar(var_D4 & "','" & var_A8 & "','") & ",'A','" & CVar(var_BC) & "','C','" & CVar(MemVar_1F95078) & "')" 
  loc_1CDD04E:     Proc_6_104_ED68A8(var_240, var_1F4 & "','" & CVar(var_98) & "','',0,'Automatic',")
  loc_1CDD079:     Proc_6_104_ED68A8(var_2B8)
  loc_1CDD08A:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDD09C:     Set var_1B8 = Me.Txt
  loc_1CDD0A2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDD0DB:     var_38C = var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_1CDD0F2:     unk_51C26E.Execute CStr(var_38C & "')"), , 
  loc_1CDD160:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98
  loc_1CDD175:     Proc_6_7_F26918(var_F8, MemVar_1F950F4, CVar(var_D4 & "',"))
  loc_1CDD195:     Proc_6_7_F26918(var_170, MemVar_1F950FC, var_2B8 & var_F8 & ",")
  loc_1CDD19D:     var_184 = -1 & var_170 
  loc_1CDD1D9:     var_220 = var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & CVar(MemVar_1F95070) & "'," 
  loc_1CDD1EB:     Proc_6_7_F26918(var_240, Date)
  loc_1CDD206:     var_28C = var_220 & var_240 & ",'" & CVar(MemVar_1F95078) 
  loc_1CDD21D:     unk_51C26E.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDD269:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HSBOOK','HSBK','" & var_A8
  loc_1CDD284:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','Booking Entry ("))
  loc_1CDD28C:     var_F8 = CVar(var_CC) 'Address
  loc_1CDD2A4:     var_170 = var_38C & Trim(var_F8) & ")','Booking Entry (" 
  loc_1CDD2B3:     Set var_D0 = Me.Txt
  loc_1CDD2B9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170)
  loc_1CDD2D0:     var_1A4 = -1 & Trim(CVar(var_1A8)) 
  loc_1CDD2F3:     Proc_6_104_ED68A8(var_220, Year(MemVar_1F950F4) & ")','" & CVar(var_A8) & "','',0,'Automatic',")
  loc_1CDD304:     var_240 = var_1C0 & var_220 & ",'','N','Y','','Y','','','','','','" 
  loc_1CDD31E:     Proc_6_104_ED68A8(var_28C)
  loc_1CDD32F:     var_2B8 = var_240 & CVar(MemVar_1F950C8) & "'," & var_28C & ",'A','N','N','N',0,'" 
  loc_1CDD341:     Set var_1B8 = Me.Txt
  loc_1CDD347:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDD397:     unk_51C26E.Execute CStr(var_2B8 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1CDD3FD:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A8
  loc_1CDD412:     Proc_6_7_F26918(var_F8, MemVar_1F950F4, CVar(var_D4 & "',"))
  loc_1CDD432:     Proc_6_7_F26918(var_170, MemVar_1F950FC, var_2B8 & var_F8 & ",")
  loc_1CDD43A:     var_184 = -1 & var_170 
  loc_1CDD476:     var_220 = CVar(var_1A8) & ",'" & Year(MemVar_1F950F4) & "',0,'" & CVar(MemVar_1F95070) & "'," 
  loc_1CDD488:     Proc_6_7_F26918(var_240, Date)
  loc_1CDD4A3:     var_28C = var_220 & var_240 & ",'" & CVar(MemVar_1F95078) 
  loc_1CDD4BA:     unk_51C26E.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDD506:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HSBOOK','HSBK','" & var_B0
  loc_1CDD521:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','N.C. Booking Entry ("))
  loc_1CDD529:     var_F8 = CVar(var_CC) 'Address
  loc_1CDD541:     var_170 = var_38C & Trim(var_F8) & ")','N.C. Booking Entry (" 
  loc_1CDD550:     Set var_D0 = Me.Txt
  loc_1CDD556:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170)
  loc_1CDD56D:     var_1A4 = -1 & Trim(CVar(var_1A8)) 
  loc_1CDD590:     Proc_6_104_ED68A8(var_220, Year(MemVar_1F950F4) & ")','" & CVar(var_B0) & "','',0,'Automatic',")
  loc_1CDD5A1:     var_240 = var_1C0 & var_220 & ",'','N','Y','','Y','','','','','','" 
  loc_1CDD5BB:     Proc_6_104_ED68A8(var_28C)
  loc_1CDD5CC:     var_2B8 = var_240 & CVar(MemVar_1F950C8) & "'," & var_28C & ",'A','N','N','N',0,'" 
  loc_1CDD5DE:     Set var_1B8 = Me.Txt
  loc_1CDD5E4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDD634:     unk_51C26E.Execute CStr(var_2B8 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1CDD69A:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_B0
  loc_1CDD6AF:     Proc_6_7_F26918(var_F8, MemVar_1F950F4, CVar(var_D4 & "',"))
  loc_1CDD6CF:     Proc_6_7_F26918(var_170, MemVar_1F950FC, var_2B8 & var_F8 & ",")
  loc_1CDD6D7:     var_184 = -1 & var_170 
  loc_1CDD725:     Proc_6_7_F26918(var_240, Date)
  loc_1CDD740:     var_28C = CVar(var_1A8) & ",'" & Year(MemVar_1F950F4) & "',0,'" & CVar(MemVar_1F95070) & "'," & var_240 & ",'" & CVar(MemVar_1F95078) 
  loc_1CDD757:     unk_51C26E.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDD792:   Else
  loc_1CDD7A3:     Set var_C8 = Me.Txt
  loc_1CDD7A9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDD7BA:     var_A8 = "K" & var_CC.Text
  loc_1CDD7DB:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSKOT','RSKOT','" & var_A8
  loc_1CDD7F6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDD7FE:     var_F8 = CVar(var_CC) 'Address
  loc_1CDD812:     var_138 = (Trim(var_F8) + " KOT Entry")
  loc_1CDD816:     var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDD82E:     Set var_D0 = Me.Txt
  loc_1CDD834:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDD850:     var_1E4 = (Trim(CVar(var_1A8)) + " KOT Entry")
  loc_1CDD854:     var_1F4 = -1 & CVar(var_1A8) & ",'" & Year(MemVar_1F950F4) 
  loc_1CDD877:     Proc_6_104_ED68A8(var_240, CVar(var_1A8) & ",'" & Year(MemVar_1F950F4) & "',0,'" & "','" & CVar(var_A8) & "','',0,'Automatic',")
  loc_1CDD8A2:     Proc_6_104_ED68A8(var_2B8)
  loc_1CDD8B3:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDD8C5:     Set var_1B8 = Me.Txt
  loc_1CDD8CB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDD91B:     unk_51C26E.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1CDD985:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A8
  loc_1CDD99A:     Proc_6_7_F26918(var_F8, MemVar_1F950F4, CVar(var_D4 & "',"))
  loc_1CDD9BA:     Proc_6_7_F26918(var_170, MemVar_1F950FC, var_2B8 & var_F8 & ",")
  loc_1CDD9C2:     var_184 = -1 & var_170 
  loc_1CDDA10:     Proc_6_7_F26918(var_240, Date)
  loc_1CDDA2B:     var_28C = var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & CVar(MemVar_1F95070) & "'," & var_240 & ",'" & CVar(MemVar_1F95078) 
  loc_1CDDA42:     unk_51C26E.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDDA8E:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSBILL','RSBIL','" & var_98
  loc_1CDDAB7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','" & var_A8 & "','"))
  loc_1CDDABF:     var_F8 = CVar(var_CC) 'Address
  loc_1CDDAD3:     var_138 = (Trim(var_F8) + " Memo Entry")
  loc_1CDDAD7:     var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDDAEF:     Set var_D0 = Me.Txt
  loc_1CDDAF5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDDB11:     var_1E4 = (Trim(CVar(var_1A8)) + " Memo Entry")
  loc_1CDDB15:     var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F950F4) 
  loc_1CDDB38:     Proc_6_104_ED68A8(var_240, var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & "','" & CVar(var_98) & "','',0,'Automatic',")
  loc_1CDDB63:     Proc_6_104_ED68A8(var_2B8)
  loc_1CDDB74:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDDB86:     Set var_1B8 = Me.Txt
  loc_1CDDB8C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDDBDC:     unk_51C26E.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1CDDC4A:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98
  loc_1CDDC5F:     Proc_6_7_F26918(var_F8, MemVar_1F950F4, CVar(var_D4 & "',"))
  loc_1CDDC7F:     Proc_6_7_F26918(var_170, MemVar_1F950FC, var_2B8 & var_F8 & ",")
  loc_1CDDC87:     var_184 = -1 & var_170 
  loc_1CDDCD5:     Proc_6_7_F26918(var_240, Date)
  loc_1CDDCF0:     var_28C = var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & CVar(MemVar_1F95070) & "'," & var_240 & ",'" & CVar(MemVar_1F95078) 
  loc_1CDDD07:     unk_51C26E.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDDD50:     Set var_C8 = Me.Txt
  loc_1CDDD56:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDDD67:     var_A8 = "T" & var_CC.Text
  loc_1CDDD88:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSTKN','RSTKN','" & var_A8
  loc_1CDDDA3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDDDAB:     var_F8 = CVar(var_CC) 'Address
  loc_1CDDDBF:     var_138 = (Trim(var_F8) + " TOKEN Entry")
  loc_1CDDDC3:     var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDDDDB:     Set var_D0 = Me.Txt
  loc_1CDDDE1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDDDFD:     var_1E4 = (Trim(CVar(var_1A8)) + " TOKEN Entry")
  loc_1CDDE01:     var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F950F4) 
  loc_1CDDE24:     Proc_6_104_ED68A8(var_240, var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & "','" & CVar(var_A8) & "','',0,'Automatic',")
  loc_1CDDE4F:     Proc_6_104_ED68A8(var_2B8)
  loc_1CDDE60:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDDE72:     Set var_1B8 = Me.Txt
  loc_1CDDE78:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDDEC8:     unk_51C26E.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1CDDF32:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A8
  loc_1CDDF47:     Proc_6_7_F26918(var_F8, MemVar_1F950F4, CVar(var_D4 & "',"))
  loc_1CDDF67:     Proc_6_7_F26918(var_170, MemVar_1F950FC, var_2B8 & var_F8 & ",")
  loc_1CDDF6F:     var_184 = -1 & var_170 
  loc_1CDDFBD:     Proc_6_7_F26918(var_240, Date)
  loc_1CDDFD8:     var_28C = var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & CVar(MemVar_1F95070) & "'," & var_240 & ",'" & CVar(MemVar_1F95078) 
  loc_1CDDFEF:     unk_51C26E.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDE038:     Set var_C8 = Me.Txt
  loc_1CDE03E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDE04F:     var_B0 = "N" & var_CC.Text
  loc_1CDE06A:     Set var_C8 = Me.Txt
  loc_1CDE070:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC)
  loc_1CDE08F:     If (var_CC.Text = "Yes") Then
  loc_1CDE0A6:       var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSKOT','RSKOT','" & var_B0
  loc_1CDE0C1:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDE0C9:       var_F8 = CVar(var_CC) 'Address
  loc_1CDE0DD:       var_138 = (Trim(var_F8) + " N.C.KOT Entry")
  loc_1CDE0E1:       var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDE0F9:       Set var_D0 = Me.Txt
  loc_1CDE0FF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDE11B:       var_1E4 = (Trim(CVar(var_1A8)) + " N.C.KOT Entry")
  loc_1CDE11F:       var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F950F4) 
  loc_1CDE142:       Proc_6_104_ED68A8(var_240, var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & "','" & CVar(var_B0) & "','',0,'Automatic',")
  loc_1CDE16D:       Proc_6_104_ED68A8(var_2B8)
  loc_1CDE17E:       var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDE190:       Set var_1B8 = Me.Txt
  loc_1CDE196:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDE1E6:       unk_51C26E.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1CDE250:       var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_B0
  loc_1CDE265:       Proc_6_7_F26918(var_F8, MemVar_1F950F4, CVar(var_D4 & "',"))
  loc_1CDE285:       Proc_6_7_F26918(var_170, MemVar_1F950FC, var_2B8 & var_F8 & ",")
  loc_1CDE28D:       var_184 = -1 & var_170 
  loc_1CDE2DB:       Proc_6_7_F26918(var_240, Date)
  loc_1CDE2F6:       var_28C = var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & CVar(MemVar_1F95070) & "'," & var_240 & ",'" & CVar(MemVar_1F95078) 
  loc_1CDE30D:       unk_51C26E.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDE348:     Else
  loc_1CDE356:       Set var_C8 = Me.Txt
  loc_1CDE35C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC)
  loc_1CDE37B:       If (var_CC.Text = "No") Then
  loc_1CDE392:         var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSTKN','RSTKN','" & var_B0
  loc_1CDE3AD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDE3B5:         var_F8 = CVar(var_CC) 'Address
  loc_1CDE3C9:         var_138 = (Trim(var_F8) + " N.C.TOKEN Entry")
  loc_1CDE3CD:         var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDE3E5:         Set var_D0 = Me.Txt
  loc_1CDE3EB:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDE407:         var_1E4 = (Trim(CVar(var_1A8)) + " N.C.TOKEN Entry")
  loc_1CDE40B:         var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F950F4) 
  loc_1CDE42E:         Proc_6_104_ED68A8(var_240, var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & "','" & CVar(var_B0) & "','',0,'Automatic',")
  loc_1CDE459:         Proc_6_104_ED68A8(var_2B8)
  loc_1CDE46A:         var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDE47C:         Set var_1B8 = Me.Txt
  loc_1CDE482:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDE4D2:         unk_51C26E.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1CDE53C:         var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_B0
  loc_1CDE551:         Proc_6_7_F26918(var_F8, MemVar_1F950F4, CVar(var_D4 & "',"))
  loc_1CDE571:         Proc_6_7_F26918(var_170, MemVar_1F950FC, var_2B8 & var_F8 & ",")
  loc_1CDE579:         var_184 = -1 & var_170 
  loc_1CDE5C7:         Proc_6_7_F26918(var_240, Date)
  loc_1CDE5E2:         var_28C = var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & CVar(MemVar_1F95070) & "'," & var_240 & ",'" & CVar(MemVar_1F95078) 
  loc_1CDE5F9:         unk_51C26E.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDE631:       End If
  loc_1CDE631:     End If
  loc_1CDE641:     Set var_C8 = Me.Txt
  loc_1CDE647:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDE65E:     var_138 = ("O" + Trim(CVar(var_CC)))
  loc_1CDE663:     var_A0 = CStr(var_2B8 & CVar(var_CC))
  loc_1CDE686:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('ORDER','ORDER','" & var_A0
  loc_1CDE6A1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDE6A9:     var_F8 = CVar(var_CC) 'Address
  loc_1CDE6BD:     var_138 = (Trim(var_F8) + " Booking Entry")
  loc_1CDE6C1:     var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDE6D9:     Set var_D0 = Me.Txt
  loc_1CDE6DF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDE6FB:     var_1E4 = (Trim(CVar(var_1A8)) + " Booking Entry")
  loc_1CDE6FF:     var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F950F4) 
  loc_1CDE722:     Proc_6_104_ED68A8(var_240, var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & "','" & CVar(var_A0) & "','',0,'Automatic',")
  loc_1CDE74D:     Proc_6_104_ED68A8(var_2B8)
  loc_1CDE75E:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDE770:     Set var_1B8 = Me.Txt
  loc_1CDE776:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDE7C6:     unk_51C26E.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1CDE830:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A0
  loc_1CDE845:     Proc_6_7_F26918(var_F8, MemVar_1F950F4, CVar(var_D4 & "',"))
  loc_1CDE865:     Proc_6_7_F26918(var_170, MemVar_1F950FC, var_2B8 & var_F8 & ",")
  loc_1CDE86D:     var_184 = -1 & var_170 
  loc_1CDE8BB:     Proc_6_7_F26918(var_240, Date)
  loc_1CDE8D6:     var_28C = var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & CVar(MemVar_1F95070) & "'," & var_240 & ",'" & CVar(MemVar_1F95078) 
  loc_1CDE8ED:     unk_51C26E.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDE935:     Set var_C8 = Me.Txt
  loc_1CDE93B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDE952:     var_138 = ("A" + Trim(CVar(var_CC)))
  loc_1CDE957:     var_A4 = CStr(var_2B8 & CVar(var_CC))
  loc_1CDE97A:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('POSAdvance','PADV','" & var_A4
  loc_1CDE995:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDE99D:     var_F8 = CVar(var_CC) 'Address
  loc_1CDE9B1:     var_138 = (Trim(var_F8) + " Advance Entry")
  loc_1CDE9B5:     var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDE9CD:     Set var_D0 = Me.Txt
  loc_1CDE9D3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDE9EF:     var_1E4 = (Trim(CVar(var_1A8)) + " Advance Entry")
  loc_1CDE9F3:     var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F950F4) 
  loc_1CDEA16:     Proc_6_104_ED68A8(var_240, var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & "','" & CVar(var_A4) & "','',0,'Automatic',")
  loc_1CDEA41:     Proc_6_104_ED68A8(var_2B8)
  loc_1CDEA52:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDEA64:     Set var_1B8 = Me.Txt
  loc_1CDEA6A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDEABA:     unk_51C26E.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_1CDEB24:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A4
  loc_1CDEB39:     Proc_6_7_F26918(var_F8, MemVar_1F950F4, CVar(var_D4 & "',"))
  loc_1CDEB59:     Proc_6_7_F26918(var_170, MemVar_1F950FC, var_2B8 & var_F8 & ",")
  loc_1CDEB61:     var_184 = -1 & var_170 
  loc_1CDEBAF:     Proc_6_7_F26918(var_240, Date)
  loc_1CDEBCA:     var_28C = var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & CVar(MemVar_1F95070) & "'," & var_240 & ",'" & CVar(MemVar_1F95078) 
  loc_1CDEBE1:     unk_51C26E.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDEC29:     Set var_C8 = Me.Txt
  loc_1CDEC2F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDEC46:     var_138 = ("P" + Trim(CVar(var_CC)))
  loc_1CDEC4B:     var_B4 = CStr(var_2B8 & CVar(var_CC))
  loc_1CDEC6E:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('POSPayment','PPMT','" & var_B4
  loc_1CDEC89:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDEC91:     var_F8 = CVar(var_CC) 'Address
  loc_1CDECA5:     var_138 = (Trim(var_F8) + " Payment Receive")
  loc_1CDECA9:     var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDECC1:     Set var_D0 = Me.Txt
  loc_1CDECC7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDECE3:     var_1E4 = (Trim(CVar(var_1A8)) + " Payment Receive")
  loc_1CDECE7:     var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F950F4) 
  loc_1CDED0A:     Proc_6_104_ED68A8(var_240, var_170 & "','" & ",'" & Year(MemVar_1F950F4) & "',0,'" & "','" & CVar(var_B4) & "','',0,'Automatic',")
  loc_1CDED35:     Proc_6_104_ED68A8(var_2B8)
  loc_1CDED46:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F950C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDED58:     Set var_1B8 = Me.Txt
  loc_1CDED5E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDEDA4:     var_174 = CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')")
  loc_1CDEDAE:     unk_51C26E.Execute var_174, , 
  loc_1CDEE18:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_B4
  loc_1CDEE2D:     Proc_6_7_F26918(var_F8, MemVar_1F950F4, CVar(var_D4 & "',"))
  loc_1CDEE4D:     Proc_6_7_F26918(var_170, MemVar_1F950FC, var_2B8 & var_F8 & ",")
  loc_1CDEE55:     var_184 = -1 & var_170 
  loc_1CDEE5E:     var_194 = var_170 & "','" & ",'" 
  loc_1CDEEA3:     Proc_6_7_F26918(var_240, Date)
  loc_1CDEECB:     var_160 = CStr(var_194 & Year(MemVar_1F950F4) & "',0,'" & CVar(MemVar_1F95070) & "'," & var_240 & ",'" & CVar(MemVar_1F95078) & "' )")
  loc_1CDEED5:     unk_51C26E.Execute var_160, Me.Txt, 
  loc_1CDEF1B:     Set var_C8 = Me.Txt
  loc_1CDEF21:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC)
  loc_1CDEF40:     If (var_CC.Text = "LAUNDRY") Then
  loc_1CDEF51:       Set var_C8 = Me.Txt
  loc_1CDEF57:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC)
  loc_1CDEF72:       Set var_D0 = Me.Txt
  loc_1CDEF78:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8)
  loc_1CDEF80:       var_D4 = var_1A8.Tag
  loc_1CDEF97:       var_1B4 = vbNullString
  loc_1CDEFCB:       Proc_165_0_14CCDD8(var_CC.Text, &HF, 3, vbNullString, vbNullString)
  loc_1CDEFF6:       Set var_C8 = Me.Txt
  loc_1CDEFFC:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC, var_D4, &HFF)
  loc_1CDF004:       var_1B4 = var_CC.Text
  loc_1CDF01B:       If (var_D4 = "Yes") Then
  loc_1CDF02C:         Set var_C8 = Me.Txt
  loc_1CDF032:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CDF03A:         0 = var_CC.Text
  loc_1CDF04D:         Set var_D0 = Me.Txt
  loc_1CDF053:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8)
  loc_1CDF05B:         var_D4 = var_1A8.Tag
  loc_1CDF072:         var_1B4 = vbNullString
  loc_1CDF0A6:         Proc_165_0_14CCDD8("LOT Entry", &HF, 0, var_174, vbNullString)
  loc_1CDF0D1:         Set var_C8 = Me.Txt
  loc_1CDF0D7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 0)
  loc_1CDF0DF:         var_1B4 = var_CC.Text
  loc_1CDF0F2:         Set var_D0 = Me.Txt
  loc_1CDF0F8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDF100:         0 = var_1A8.Tag
  loc_1CDF117:         var_1B4 = vbNullString
  loc_1CDF14B:         Proc_165_0_14CCDD8("LOT Transfer", &HF, 0, var_174, vbNullString, &HA)
  loc_1CDF16B:       Else
  loc_1CDF179:         Set var_C8 = Me.Txt
  loc_1CDF17F:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC, var_D4, var_1B4)
  loc_1CDF187:         0 = var_CC.Text
  loc_1CDF19E:         If (var_D4 = "No") Then
  loc_1CDF1AF:           Set var_C8 = Me.Txt
  loc_1CDF1B5:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CDF1D0:           Set var_D0 = Me.Txt
  loc_1CDF1D6:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_CC.Text)
  loc_1CDF1DE:           var_D4 = var_1A8.Tag
  loc_1CDF1F5:           var_1B4 = vbNullString
  loc_1CDF229:           Proc_165_0_14CCDD8("LOT Entry", &HF, 2, var_174, vbNullString)
  loc_1CDF254:           Set var_C8 = Me.Txt
  loc_1CDF25A:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 0)
  loc_1CDF262:           var_1B4 = var_CC.Text
  loc_1CDF275:           Set var_D0 = Me.Txt
  loc_1CDF27B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDF283:           0 = var_1A8.Tag
  loc_1CDF29A:           var_1B4 = vbNullString
  loc_1CDF2CE:           Proc_165_0_14CCDD8("LOT Transfer", &HF, 2, var_174, vbNullString, &HA)
  loc_1CDF2EB:         End If
  loc_1CDF2EB:       End If
  loc_1CDF2F9:       Set var_C8 = Me.Txt
  loc_1CDF2FF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, var_1B4)
  loc_1CDF307:       0 = var_CC.Text
  loc_1CDF31A:       Set var_D0 = Me.Txt
  loc_1CDF320:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDF373:       Proc_165_0_14CCDD8("Laundry Memo", &HF, 0, var_174, vbNullString, 2)
  loc_1CDF39E:       Set var_C8 = Me.Txt
  loc_1CDF3A4:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDF3AC:       0 = var_CC.Text
  loc_1CDF3BF:       Set var_D0 = Me.Txt
  loc_1CDF3C5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CDF3CD:       var_D4 = var_1A8.Tag
  loc_1CDF3E4:       var_1B4 = vbNullString
  loc_1CDF412:       var_160 = "Memo Reprint"
  loc_1CDF418:       Proc_165_0_14CCDD8(var_160, &HF, 0, var_174, vbNullString, 4)
  loc_1CDF438:     Else
  loc_1CDF446:       Set var_C8 = Me.Txt
  loc_1CDF44C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4, var_1B4)
  loc_1CDF454:       0 = var_CC.Text
  loc_1CDF46B:       If (var_D4 = "MINI BAR") Then
  loc_1CDF47C:         Set var_C8 = Me.Txt
  loc_1CDF482:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_160)
  loc_1CDF49D:         Set var_D0 = Me.Txt
  loc_1CDF4A3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_CC.Text)
  loc_1CDF4AB:         var_D4 = var_1A8.Tag
  loc_1CDF4C2:         var_1B4 = vbNullString
  loc_1CDF4F6:         Proc_165_0_14CCDD8(var_160, &HF, 3, vbNullString, vbNullString)
  loc_1CDF521:         Set var_C8 = Me.Txt
  loc_1CDF527:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC, var_D4, &HFF)
  loc_1CDF52F:         var_1B4 = var_CC.Text
  loc_1CDF546:         If (var_D4 = "Yes") Then
  loc_1CDF557:           Set var_C8 = Me.Txt
  loc_1CDF55D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CDF565:           0 = var_CC.Text
  loc_1CDF578:           Set var_D0 = Me.Txt
  loc_1CDF57E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDF586:           var_D4 = var_1A8.Tag
  loc_1CDF59D:           var_1B4 = vbNullString
  loc_1CDF5D1:           Proc_165_0_14CCDD8("KOT Entry", &HF, 0, var_174, vbNullString)
  loc_1CDF5FC:           Set var_C8 = Me.Txt
  loc_1CDF602:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 0)
  loc_1CDF60A:           var_1B4 = var_CC.Text
  loc_1CDF61D:           Set var_D0 = Me.Txt
  loc_1CDF623:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDF62B:           0 = var_1A8.Tag
  loc_1CDF642:           var_1B4 = vbNullString
  loc_1CDF676:           Proc_165_0_14CCDD8("KOT Transfer", &HF, 0, var_174, vbNullString, &HA)
  loc_1CDF696:         Else
  loc_1CDF6A4:           Set var_C8 = Me.Txt
  loc_1CDF6AA:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC, var_D4, var_1B4)
  loc_1CDF6B2:           0 = var_CC.Text
  loc_1CDF6C9:           If (var_D4 = "No") Then
  loc_1CDF6DA:             Set var_C8 = Me.Txt
  loc_1CDF6E0:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CDF6FB:             Set var_D0 = Me.Txt
  loc_1CDF701:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_CC.Text)
  loc_1CDF709:             var_D4 = var_1A8.Tag
  loc_1CDF720:             var_1B4 = vbNullString
  loc_1CDF754:             Proc_165_0_14CCDD8("KOT Entry", &HF, 2, var_174, vbNullString)
  loc_1CDF77F:             Set var_C8 = Me.Txt
  loc_1CDF785:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 0)
  loc_1CDF78D:             var_1B4 = var_CC.Text
  loc_1CDF7A0:             Set var_D0 = Me.Txt
  loc_1CDF7A6:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDF7AE:             0 = var_1A8.Tag
  loc_1CDF7C5:             var_1B4 = vbNullString
  loc_1CDF7F9:             Proc_165_0_14CCDD8("KOT Transfer", &HF, 2, var_174, vbNullString, &HA)
  loc_1CDF816:           End If
  loc_1CDF816:         End If
  loc_1CDF824:         Set var_C8 = Me.Txt
  loc_1CDF82A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, var_1B4)
  loc_1CDF832:         0 = var_CC.Text
  loc_1CDF845:         Set var_D0 = Me.Txt
  loc_1CDF84B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDF89E:         Proc_165_0_14CCDD8("Sale Bill Entry", &HF, 0, var_174, vbNullString, 2)
  loc_1CDF8C9:         Set var_C8 = Me.Txt
  loc_1CDF8CF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDF8D7:         0 = var_CC.Text
  loc_1CDF8EA:         Set var_D0 = Me.Txt
  loc_1CDF8F0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CDF8F8:         var_D4 = var_1A8.Tag
  loc_1CDF90F:         var_1B4 = vbNullString
  loc_1CDF93D:         var_160 = "POS Bill Reprint"
  loc_1CDF943:         Proc_165_0_14CCDD8(var_160, &HF, 0, var_174, vbNullString, 4)
  loc_1CDF963:       Else
  loc_1CDF971:         Set var_C8 = Me.Txt
  loc_1CDF977:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_160, var_1B4)
  loc_1CDF97F:         0 = var_CC.Text
  loc_1CDF992:         Set var_D0 = Me.Txt
  loc_1CDF998:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDF9A0:         var_D4 = var_1A8.Tag
  loc_1CDF9EB:         Proc_165_0_14CCDD8(var_160, &H11, 3, vbNullString, vbNullString, &HFF)
  loc_1CDFA16:         Set var_C8 = Me.Txt
  loc_1CDFA1C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC, var_D4, vbNullString)
  loc_1CDFA24:         0 = var_CC.Text
  loc_1CDFA3B:         If (var_D4 = "Yes") Then
  loc_1CDFA4C:           Set var_C8 = Me.Txt
  loc_1CDFA52:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CDFA6D:           Set var_D0 = Me.Txt
  loc_1CDFA73:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_CC.Text)
  loc_1CDFA7B:           var_D4 = var_1A8.Tag
  loc_1CDFA92:           var_1B4 = vbNullString
  loc_1CDFAC6:           Proc_165_0_14CCDD8("KOT Entry", &H11, 0, var_174, vbNullString)
  loc_1CDFAF1:           Set var_C8 = Me.Txt
  loc_1CDFAF7:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 0)
  loc_1CDFAFF:           var_1B4 = var_CC.Text
  loc_1CDFB12:           Set var_D0 = Me.Txt
  loc_1CDFB18:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDFB20:           0 = var_1A8.Tag
  loc_1CDFB6B:           Proc_165_0_14CCDD8("Table Change Entry", &H11, 0, var_174, vbNullString, 1)
  loc_1CDFB96:           Set var_C8 = Me.Txt
  loc_1CDFB9C:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDFBA4:           0 = var_CC.Text
  loc_1CDFBB7:           Set var_D0 = Me.Txt
  loc_1CDFBBD:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDFC10:           Proc_165_0_14CCDD8("KOT Transfer", &H11, 0, var_174, vbNullString, &HA)
  loc_1CDFC3B:           Set var_C8 = Me.Txt
  loc_1CDFC41:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDFC49:           0 = var_CC.Text
  loc_1CDFC5C:           Set var_D0 = Me.Txt
  loc_1CDFC62:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CDFC6A:           var_D4 = var_1A8.Tag
  loc_1CDFC81:           var_1B4 = vbNullString
  loc_1CDFCB5:           Proc_165_0_14CCDD8("Token Entry", &H11, 2, var_174, vbNullString, &HB)
  loc_1CDFCD5:         Else
  loc_1CDFCE3:           Set var_C8 = Me.Txt
  loc_1CDFCE9:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC, var_D4, var_1B4)
  loc_1CDFCF1:           0 = var_CC.Text
  loc_1CDFD08:           If (var_D4 = "No") Then
  loc_1CDFD19:             Set var_C8 = Me.Txt
  loc_1CDFD1F:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CDFD3A:             Set var_D0 = Me.Txt
  loc_1CDFD40:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_CC.Text)
  loc_1CDFD48:             var_D4 = var_1A8.Tag
  loc_1CDFD5F:             var_1B4 = vbNullString
  loc_1CDFD93:             Proc_165_0_14CCDD8("KOT Entry", &H11, 2, var_174, vbNullString)
  loc_1CDFDBE:             Set var_C8 = Me.Txt
  loc_1CDFDC4:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 0)
  loc_1CDFDCC:             var_1B4 = var_CC.Text
  loc_1CDFDDF:             Set var_D0 = Me.Txt
  loc_1CDFDE5:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDFDED:             0 = var_1A8.Tag
  loc_1CDFE38:             Proc_165_0_14CCDD8("Table Change Entry", &H11, 2, var_174, vbNullString, 1)
  loc_1CDFE63:             Set var_C8 = Me.Txt
  loc_1CDFE69:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDFE71:             0 = var_CC.Text
  loc_1CDFE84:             Set var_D0 = Me.Txt
  loc_1CDFE8A:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDFEDD:             Proc_165_0_14CCDD8("KOT Transfer", &H11, 2, var_174, vbNullString, &HA)
  loc_1CDFF08:             Set var_C8 = Me.Txt
  loc_1CDFF0E:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDFF16:             0 = var_CC.Text
  loc_1CDFF29:             Set var_D0 = Me.Txt
  loc_1CDFF2F:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CDFF37:             var_D4 = var_1A8.Tag
  loc_1CDFF4E:             var_1B4 = vbNullString
  loc_1CDFF82:             Proc_165_0_14CCDD8("Token Entry", &H11, 0, var_174, vbNullString, &HB)
  loc_1CDFF9F:           End If
  loc_1CDFF9F:         End If
  loc_1CDFFAD:         Set var_C8 = Me.Txt
  loc_1CDFFB3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, var_1B4)
  loc_1CDFFBB:         0 = var_CC.Text
  loc_1CDFFCE:         Set var_D0 = Me.Txt
  loc_1CDFFD4:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CE0027:         Proc_165_0_14CCDD8("Sale Bill Entry", &H11, 0, var_174, vbNullString, 2)
  loc_1CE0052:         Set var_C8 = Me.Txt
  loc_1CE0058:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CE0060:         0 = var_CC.Text
  loc_1CE0073:         Set var_D0 = Me.Txt
  loc_1CE0079:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CE00CC:         Proc_165_0_14CCDD8("Settlement Entry", &H11, 0, var_174, vbNullString, 3)
  loc_1CE00F7:         Set var_C8 = Me.Txt
  loc_1CE00FD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CE0105:         0 = var_CC.Text
  loc_1CE0118:         Set var_D0 = Me.Txt
  loc_1CE011E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CE0171:         Proc_165_0_14CCDD8("POS Bill Reprint", &H11, 0, var_174, vbNullString, 4)
  loc_1CE019C:         Set var_C8 = Me.Txt
  loc_1CE01A2:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CE01AA:         0 = var_CC.Text
  loc_1CE01BD:         Set var_D0 = Me.Txt
  loc_1CE01C3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CE0216:         Proc_165_0_14CCDD8("Split Sale Bill", &H11, 0, var_174, vbNullString, 5)
  loc_1CE0241:         Set var_C8 = Me.Txt
  loc_1CE0247:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CE024F:         0 = var_CC.Text
  loc_1CE0262:         Set var_D0 = Me.Txt
  loc_1CE0268:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CE0270:         var_D4 = var_1A8.Tag
  loc_1CE02BB:         Proc_165_0_14CCDD8("Display Table", &H11, 0, var_174, vbNullString, 6)
  loc_1CE02E3:         Set var_C8 = Me.Txt
  loc_1CE02E9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_CC, vbNullString, 0)
  loc_1CE02F1:         var_F8 = CVar(var_CC) 'Address
  loc_1CE02F8:         var_118 = Trim(var_F8)
  loc_1CE0312:         If (var_118 = "Yes") Then
  loc_1CE0323:           Set var_C8 = Me.Txt
  loc_1CE0329:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CE0344:           Set var_D0 = Me.Txt
  loc_1CE034A:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_CC.Text)
  loc_1CE0352:           var_D4 = var_1A8.Tag
  loc_1CE0369:           var_1B4 = vbNullString
  loc_1CE039D:           Proc_165_0_14CCDD8("Order Booking", &H11, 0, var_174, vbNullString)
  loc_1CE03C8:           Set var_C8 = Me.Txt
  loc_1CE03CE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 7)
  loc_1CE03D6:           var_1B4 = var_CC.Text
  loc_1CE03E9:           Set var_D0 = Me.Txt
  loc_1CE03EF:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CE03F7:           0 = var_1A8.Tag
  loc_1CE040E:           var_1B4 = vbNullString
  loc_1CE0442:           Proc_165_0_14CCDD8("Order Booking Advance", &H11, 0, var_174, vbNullString, 9)
  loc_1CE0462:         Else
  loc_1CE0470:           Set var_C8 = Me.Txt
  loc_1CE0476:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, var_1B4)
  loc_1CE047E:           0 = var_CC.Text
  loc_1CE0491:           Set var_D0 = Me.Txt
  loc_1CE0497:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CE04EA:           Proc_165_0_14CCDD8("Order Booking", &H11, 2, var_174, vbNullString, 7)
  loc_1CE0515:           Set var_C8 = Me.Txt
  loc_1CE051B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CE0523:           0 = var_CC.Text
  loc_1CE0536:           Set var_D0 = Me.Txt
  loc_1CE053C:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CE0544:           var_D4 = var_1A8.Tag
  loc_1CE055B:           var_1B4 = vbNullString
  loc_1CE058F:           Proc_165_0_14CCDD8("Order Booking Advance", &H11, 2, var_174, vbNullString, 9)
  loc_1CE05AC:         End If
  loc_1CE05BA:         Set var_C8 = Me.Txt
  loc_1CE05C0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, var_1B4)
  loc_1CE05C8:         0 = var_CC.Text
  loc_1CE05DB:         Set var_D0 = Me.Txt
  loc_1CE05E1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CE05E9:         var_D4 = var_1A8.Tag
  loc_1CE0600:         var_1B4 = vbNullString
  loc_1CE0634:         Proc_165_0_14CCDD8("Bill Lookup", &H11, 0, var_174, vbNullString, 8)
  loc_1CE0651:       End If
  loc_1CE0651:     End If
  loc_1CE0651:   End If
  loc_1CE0651: End If
  loc_1CE066F: Set var_C8 = Me.Txt
  loc_1CE0675: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4, "Delete From SchemeOutletDiscount Where RestCode='", var_F8, -1)
  loc_1CE067D: var_D0 = var_CC.Tag
  loc_1CE0696: unk_51C26E.Execute var_1B4 & var_D4 & "'", 0, var_D4
  loc_1CE06D5: For var_134C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_134C 'Integer
  loc_1CE06DF:   var_E8 = CVar(CLng(var_94)) 'Long
  loc_1CE06E7:   var_128 = CVar(CLng(1)) 'Long
  loc_1CE0712:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1CE0719:     var_E8 = CVar(CLng(var_94)) 'Long
  loc_1CE0721:     var_128 = CVar(CLng(1)) 'Long
  loc_1CE0730:     var_F8 = Me.FGrid.TextMatrix)
  loc_1CE0750:     var_D4 = CStr(var_F8)
  loc_1CE0764:     unk_51C26E.Execute "Select * From SchemeMast Where Code='" & var_D4 & "'", var_118, -1
  loc_1CE076F:     Set var_9C = var_CC
  loc_1CE0797:     Set var_C8 = Me.Txt
  loc_1CE079D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4, var_CC, var_F8, var_128)
  loc_1CE07A5:     var_E8 = var_CC.Tag
  loc_1CE07AD:     var_E8 = "StartDate"
  loc_1CE07B9:     var_D0 = var_9C.Fields
  loc_1CE07D0:     Proc_6_7_F26918(var_118, CVar(var_D0.Item(var_E8)), var_128, var_E8)
  loc_1CE07FB:     Proc_6_7_F26918(var_194, CVar(var_9C.Fields.Item("EndDate")), 1)
  loc_1CE0888:     var_2A8 = "HH:nn"
  loc_1CE08B7:     var_304 = Me.FGrid.TextMatrix)
  loc_1CE08F1:     var_1320 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1CE091C:     var_1C8 = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Active")), var_1320, CVar(CLng(3)), CVar(CLng(var_94)), var_304, CVar(CLng(1)))
  loc_1CE0954:     Proc_6_7_F26918(var_4E0, Date, CVar(CLng(var_94)), 1)
  loc_1CE096D:     var_160 = "Insert into SchemeOutletDiscount(RestCode,Appdate,EndDate,FromTime,ToTime,SchemeCode,DiscPer,Active,Days,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_D4
  loc_1CE099A:     var_240 = CVar(var_160 & "',") & var_118 & "," & var_194 & ",'" & Format(CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("FromTime")), var_D4)), "HH:nn") 
  loc_1CE09BB:     var_324 = CVar(CStr(var_304)) 'String
  loc_1CE09C7:     var_350 = var_240 & "','" & Format(CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("ToTime")), 1)), var_2A8) & "','" & var_324 & "'," 
  loc_1CE0A11:     var_46C = var_350 & CVar(var_1320) & ",'" & CVar(var_1C8) & "'," & var_9C.Fields.Item("DAYS").Value & ",'" & CVar(MemVar_1F95070) & "','" 
  loc_1CE0A55:     unk_51C26E.Execute CStr(var_46C & CVar(MemVar_1F950C8) & "'," & var_4E0 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_56C, -1
  loc_1CE0AE5:   End If
  loc_1CE0AE8: Next var_134C 'Integer
  loc_1CE0B0B: Set var_C8 = Me.Txt
  loc_1CE0B11: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4, "Delete From OutletBarCodePartDetail Where RestCode='")
  loc_1CE0B19: var_F8 = var_CC.Tag
  loc_1CE0B22: var_160 = -1 & var_D4
  loc_1CE0B32: unk_51C26E.Execute var_160 & "'", var_D0, 
  loc_1CE0B71: For var_1350 = 1 To CInt((CLng(Me.FGBarCode.Rows) - 1)): var_94 = var_1350 'Integer
  loc_1CE0B7B:   var_E8 = CVar(CLng(var_94)) 'Long
  loc_1CE0B83:   var_128 = CVar(CLng(1)) 'Long
  loc_1CE0B9D:   var_D4 = CStr(Me.FGBarCode.TextMatrix))
  loc_1CE0BAE:   If (var_D4 <> vbNullString) Then
  loc_1CE0BBF:     Set var_C8 = Me.Txt
  loc_1CE0BC5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4)
  loc_1CE0BCD:     var_128 = var_CC.Tag
  loc_1CE0BD6:     var_E8 = CVar(CLng(var_94)) 'Long
  loc_1CE0BDE:     var_128 = CVar(CLng(1)) 'Long
  loc_1CE0BF8:     var_118 = CVar(CStr(Me.FGBarCode.TextMatrix))) 'String
  loc_1CE0BFE:     var_138 = Trim(var_118)
  loc_1CE0C07:     var_2C8 = CVar(CLng(var_94)) 'Long
  loc_1CE0C0F:     var_360 = CVar(CLng(2)) 'Long
  loc_1CE0C31:     var_1320 = Val(CStr(Me.FGBarCode.TextMatrix)))
  loc_1CE0C62:     var_1328 = Val(CStr(Me.FGBarCode.TextMatrix)))
  loc_1CE0C73:     Proc_6_7_F26918(var_2A8, Date, var_1328, CVar(CLng(3)), CVar(CLng(var_94)), var_1320)
  loc_1CE0C8C:     var_160 = "Insert into OutletBarCodePartDetail(RestCode,BarCodePart,BarCodeStartFrom,BarCodeLength,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_D4
  loc_1CE0C93:     var_15C = CVar(var_160 & "','") 'String
  loc_1CE0CE7:     var_25C = var_15C & var_138 & "'," & CVar(var_1320) & "," & CVar(var_1328) & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_1CE0D21:     unk_51C26E.Execute CStr(var_25C & "'," & var_2A8 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_324, -1
  loc_1CE0D73:   End If
  loc_1CE0D76: Next var_1350 'Integer
  loc_1CE0D81: unk_51C26E.CommitTrans
  loc_1CE0D94: Set var_C8 = Me.Txt
  loc_1CE0D9A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC)
  loc_1CE0DAA: var_90 = var_CC.Tag
  loc_1CE0DB6: var_8A = 0
  loc_1CE0DC4: Me.Requery -1
  loc_1CE0DD4: Me.Requery -1
  loc_1CE0DDD: Set var_C8 = Me.TopCtrl1
  loc_1CE0DE3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8A)
  loc_1CE0DFC: If (CStr() = "Add") Then
  loc_1CE0E37:   If (MsgBox(CVar("Reload Application to update menu settings" & vbCrLf & "Want to Reload Application ?"), 4, var_118, var_138, var_15C) = 6) Then
  loc_1CE0E3A:     End
  loc_1CE0E3C:   End If
  loc_1CE0E3C: End If
  loc_1CE0E61: Me.Find "SearchCode ='" & var_90 & "'", 0, 1
  loc_1CE0E71: Set var_C8 = Me.TopCtrl1
  loc_1CE0E77: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E8)
  loc_1CE0E90: If (CStr() = "Add") Then
  loc_1CE0E93:   Call TopCtrl1_UnknownEvent_A()
  loc_1CE0E98:   Exit Sub
  loc_1CE0E99: End If
  loc_1CE0EBC: Call Proc_70_58_EBBA44(Proc_5_1_100EC1C("INI", Me))
  loc_1CE0EC7: Call Proc_70_57_178640C(global_64)
  loc_1CE0ED1: Set var_88 = Nothing
  loc_1CE0ED4: Exit Sub
  loc_1CE0ED5: ' Referenced from: 1CDA210
  loc_1CE0EDB: If (var_8A = &HFF) Then
  loc_1CE0EE4:   unk_51C26E.RollbackTrans
  loc_1CE0EE9: End If
  loc_1CE0EE9: Proc_6_60_E63754()
  loc_1CE0EEE: Exit Sub
  loc_1CE0EEF: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E39DE4
  'Data Table: 51C24C
  loc_E39DD8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E39DDB:   Call DGHelp_UnknownEvent_9()
  loc_E39DE0: End If
  loc_E39DE0: Exit Sub
  loc_E39DE1:  = 
End Sub

Private Sub Label1_Click(Index As Integer) 'E99E48
  'Data Table: 51C24C
  Dim var_88 As CommonDialog
  Dim arg_20 As Variant
  Dim var_A4 As Label
  loc_E99DD4: Set var_88 = Me.TopCtrl1
  loc_E99DDA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E99DF3: If (CStr() <> "Browse") Then
  loc_E99E00:   arg_20 = Me.CDLG._Action
  loc_E99E28:   Set var_A0 = Me.Label1
  loc_E99E2E:   Call 0.Method_Label1_Click0 (Index, var_A4)
  loc_E99E36:   var_A4.BackColor = CLng(Me.CDLG.Color)
  loc_E99E47: End If
  loc_E99E47: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12C185C
  'Data Table: 51C24C
  Dim var_8C As Variant
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim var_88 As MSFlexGrid
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_90 As Variant
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim Me As Variant
  Dim var_108 As TextBox
  Dim var_14C As Long
  loc_12C1222: Set var_88 = Me.TxtGrid
  loc_12C1228: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12C1236: Proc_6_74_E23240(var_8C)
  loc_12C1242: Call Proc_70_59_F1C994(var_8C)
  loc_12C1256: Set var_88 = Me.TxtGrid
  loc_12C125C: Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12C1264: var_8C.MaxLength = 0
  loc_12C1273: var_92 = Index
  loc_12C127C: If (var_92 = 0) Then
  loc_12C1295:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_12C12B0:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C12B9:   Set var_8C = Me.FGrid
  loc_12C12EF:   Set var_108 = Me.TxtGrid
  loc_12C12F5:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12C12FD:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_12C132E:   var_114 = CLng(Me.FGrid.Col)
  loc_12C133E:   If (var_114 = CLng(2)) Then
  loc_12C1350:     Set var_88 = Me.TxtGrid
  loc_12C1356:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32)
  loc_12C135E:     var_8C.MaxLength = var_114
  loc_12C1374:     Set global_96 = New 
  loc_12C1386:     Me.Recordset15.CursorLocation = 3
  loc_12C13B0:     var_C4 = CVar("Select Code,Name From SchemeMast Where ISNULL(Active,'')='Y' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_12C13BA:     Me.Open var_C4, CVar(MemVar_1F95044), 2
  loc_12C13CE:     CVarUnk
  loc_12C13D3:     VerifyVarObj
  loc_12C13D9:     Set var_88 = Me.DGSch
  loc_12C13DF:     LateIdStAd
  loc_12C1400:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_118, Me.TxtGrid, global_96)
  loc_12C1408:     3 = var_8C.Left
  loc_12C141F:     Me.DGSch.Left = CVar(var_118)
  loc_12C143A:     Set var_90 = Me.TxtGrid
  loc_12C1440:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_11C)
  loc_12C1448:     -1 = var_108.Height
  loc_12C145A:     Set var_88 = Me.TxtGrid
  loc_12C1460:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_118)
  loc_12C1468:     var_A4 = var_8C.Top
  loc_12C1474:     var_A4 = CVar((var_118 + var_11C)) 'Single
  loc_12C147D:     Set var_10C = Me.DGSch
  loc_12C1483:     var_10C.Top = var_A4
  loc_12C14A0:     Set var_8C = Me.FGPoint
  loc_12C14B8:     Proc_6_137_1192FDC(Me.DGSch, global_96, Index)
  loc_12C14D9:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C14E1:     var_E4 = CVar(CLng(1)) 'Long
  loc_12C1525:     Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_12C156B:     var_D4 = Me.FGrid.TextMatrix)
  loc_12C158B:     global_100 = CStr(Trim(CVar(CStr(var_D4))))
  loc_12C15BB:     If (Me.RecordCount > 0) Then
  loc_12C15C9:       Set var_8C = Me.FGPoint
  loc_12C15E1:       Proc_6_137_1192FDC(Me.DGSch, global_96, Index, var_8C, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)))
  loc_12C15EF:     End If
  loc_12C1630:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12C1633:       Exit Sub
  loc_12C1634:     End If
  loc_12C163D:     CVarUnk
  loc_12C1642:     VerifyVarObj
  loc_12C1648:     Set var_88 = Me.DGSch
  loc_12C164E:     LateIdStAd
  loc_12C165F:   Else
  loc_12C1666:     If (var_114 = CLng(3)) Then
  loc_12C167E:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 5, Me.TxtGrid, global_96, var_134)
  loc_12C1686:       var_8C.MaxLength = var_D4
  loc_12C1692:     End If
  loc_12C1692:   End If
  loc_12C1695: Else
  loc_12C169B:   If (var_92 = 1) Then
  loc_12C16B4:     Me.FGBarCode.CellBackColor = CVar(CLng(global_108))
  loc_12C16E7:     var_E4 = CVar(CLng(Me.FGBarCode.Col)) 'Long
  loc_12C170E:     Set var_108 = Me.TxtGrid
  loc_12C1714:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGBarCode.TextMatrix)), var_E4, CVar(CLng(Me.FGBarCode.Row)))
  loc_12C171C:     var_10C.Tag = var_E4
  loc_12C174D:     var_14C = CLng(Me.FGBarCode.Col)
  loc_12C175D:     If (var_14C = CLng(1)) Then
  loc_12C176D:       ReDim var_150(0 To 3)
  loc_12C1784:       var_150(0) = "Item"
  loc_12C1793:       var_150(1) = "Qty"
  loc_12C17A2:       var_150(2) = "Rate"
  loc_12C17B1:       var_150(3) = "Amount"
  loc_12C17C8:       global_76 = Array(var_150)
  loc_12C17EE:       Set var_8C = Me.TxtGrid
  loc_12C1808:       Set global_92 = Proc_6_66_F0048C(Me.ListView1, var_8C, Index, global_76, 4)
  loc_12C181C:     Else
  loc_12C1823:       If Not (var_14C = CLng(2)) Then
  loc_12C182D:         If (var_14C = CLng(3)) Then
  loc_12C1830:         End If
  loc_12C183F:         Set var_88 = Me.TxtGrid
  loc_12C1845:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 2, global_76)
  loc_12C184D:         var_8C.MaxLength = var_14C
  loc_12C1859:       End If
  loc_12C1859:     End If
  loc_12C1859:   End If
  loc_12C1859: End If
  loc_12C1859: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12B5EFC
  'Data Table: 51C24C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_D0 As Long
  Dim var_C0 As TextBox
  Dim var_DC As TextBox
  loc_12B58E3: var_86 = Shift
  loc_12B58F2: If (KeyCode = 0) Then
  loc_12B58FF:   If (CLng(Shift) = &H1B) Then
  loc_12B590F:     Set var_8C = Me.TxtGrid
  loc_12B5915:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_12B591D:     var_88 = var_90.Tag
  loc_12B592F:     Set var_98 = Me.TxtGrid
  loc_12B5935:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12B593D:     var_9C.Text = var_94
  loc_12B5959:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12B595E:     Call Proc_70_59_F1C994(arg_14)
  loc_12B5967:     Set var_8C = Me.FGrid
  loc_12B5984:     Set var_8C = Me.TxtGrid
  loc_12B598A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12B5992:     var_90.Visible = FGrid.DispID_8001
  loc_12B599E:     Exit Sub
  loc_12B599F:   End If
  loc_12B59B2:   var_B0 = CLng(Me.FGrid.Col)
  loc_12B59C2:   If (var_B0 = CLng(2)) Then
  loc_12B59D0:     Set var_C0 = Me.TxtGrid
  loc_12B59E2:     Set var_9C = Me.FGPoint
  loc_12B59ED:     Set var_98 = Nothing
  loc_12B5A1B:     Proc_6_69_134A630(Me.DGSch, var_C0, KeyCode, global_96, Shift, &HFF)
  loc_12B5A3A:     var_C8 = Me.RecordCount
  loc_12B5A8A:     If ((var_C8 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12B5A91:       Set var_98 = Me.DGSch
  loc_12B5AB0:       Proc_6_138_106E830(var_98, global_96, KeyCode, Me.FGPoint, 1)
  loc_12B5ABE:     End If
  loc_12B5AC8:     If (CLng(Shift) = &HD) Then
  loc_12B5AD1:       Call Proc_70_63_13285F4(KeyCode, var_B2, var_98, var_9C)
  loc_12B5ADC:       If (var_B2 = &HFF) Then
  loc_12B5B22:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, 4)
  loc_12B5B32:       End If
  loc_12B5B32:     End If
  loc_12B5B35:   Else
  loc_12B5B3C:     If (var_B0 = CLng(3)) Then
  loc_12B5B7F:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_104 = &HFF))) Then
  loc_12B5B88:         Call Proc_70_63_13285F4(KeyCode, var_B2, 0, 0)
  loc_12B5B93:         If (var_B2 = &HFF) Then
  loc_12B5BA1:           Set var_9C = Me.TxtGrid
  loc_12B5BCA:           Set var_90 = var_9C
  loc_12B5BD9:           Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_104, 4, 0)
  loc_12B5BE9:         End If
  loc_12B5BE9:       End If
  loc_12B5BE9:     End If
  loc_12B5BE9:   End If
  loc_12B5BEC: Else
  loc_12B5BF2:   If (var_88 = 1) Then
  loc_12B5BFF:     If (CLng(Shift) = &H1B) Then
  loc_12B5C0F:       Set var_8C = Me.TxtGrid
  loc_12B5C15:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94, 0, 0)
  loc_12B5C1D:       0 = var_90.Tag
  loc_12B5C2F:       Set var_98 = Me.TxtGrid
  loc_12B5C35:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_12B5C3D:       var_9C.Text = 0
  loc_12B5C59:       Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12B5C5E:       Call Proc_70_59_F1C994(arg_14, var_B0)
  loc_12B5C67:       Set var_8C = Me.FGBarCode
  loc_12B5C84:       Set var_8C = Me.TxtGrid
  loc_12B5C8A:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12B5C92:       var_90.Visible = FGBarCode.DispID_8001
  loc_12B5C9E:       Exit Sub
  loc_12B5C9F:     End If
  loc_12B5CC2:     If (CLng(Me.FGBarCode.Col) = CLng(1)) Then
  loc_12B5CE7:       Set var_8C = Me.TxtGrid
  loc_12B5CED:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_12B5CF5:       var_D0 = var_90.Left
  loc_12B5D07:       Set var_98 = Me.TxtGrid
  loc_12B5D0D:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12B5D27:       Set var_BC = Me.TxtGrid
  loc_12B5D2D:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0)
  loc_12B5D47:       Set var_C4 = Me.TxtGrid
  loc_12B5D4D:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_DC)
  loc_12B5D55:       var_E0 = var_DC.Width
  loc_12B5DA0:       Proc_6_114_11A421C(Me.FrmList1, Me.ListView1, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12B5DCE:       If (CLng(Shift) = &HD) Then
  loc_12B5DD7:         Call Proc_70_63_13285F4(KeyCode, var_B2, CInt(var_C8), CInt(((var_9C.Top + var_C0.Height) + CDbl(&H19))))
  loc_12B5DE2:         If (var_B2 = &HFF) Then
  loc_12B5E28:           Proc_6_62_1254E68(Me.FGBarCode, Me.TxtGrid, KeyCode, Shift, global_104, 4)
  loc_12B5E38:         End If
  loc_12B5E38:       End If
  loc_12B5E3B:     Else
  loc_12B5E42:       If Not (var_D0 = CLng(2)) Then
  loc_12B5E4C:         If (var_D0 = CLng(3)) Then
  loc_12B5E4F:         End If
  loc_12B5E8F:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_104 = &HFF))) Then
  loc_12B5E98:           Call Proc_70_63_13285F4(KeyCode, var_B2, 0, 0)
  loc_12B5EA3:           If (var_B2 = &HFF) Then
  loc_12B5EE9:             Proc_6_62_1254E68(Me.FGBarCode, Me.TxtGrid, KeyCode, Shift, global_104, 4, 0)
  loc_12B5EF9:           End If
  loc_12B5EF9:         End If
  loc_12B5EF9:       End If
  loc_12B5EF9:     End If
  loc_12B5EF9:   End If
  loc_12B5EF9: End If
  loc_12B5EF9: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'FA2578
  'Data Table: 51C24C
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B8 As Long
  Dim MemVar_F413D4 As Integer
  loc_FA23FB: Proc_6_58_E06050(arg_10)
  loc_FA2403: var_86 = KeyAscii
  loc_FA240C: If (var_86 = 0) Then
  loc_FA2422:   var_A0 = CLng(Me.FGrid.Col)
  loc_FA2432:   If (var_A0 = CLng(2)) Then
  loc_FA2451:     If (CBool(Me.DGSch.Visible) = &HFF) Then
  loc_FA2463:       var_A4 = "Name"
  loc_FA247E:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_96, arg_10)
  loc_FA2498:       Set var_AC = Me.FGPoint
  loc_FA24B0:       Proc_6_138_106E830(Me.DGSch, global_96, KeyAscii, var_AC)
  loc_FA24BE:     End If
  loc_FA24C1:   Else
  loc_FA24C8:     If (var_A0 = CLng(3)) Then
  loc_FA24D5:       Set var_8C = Me.TxtGrid
  loc_FA24DB:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_FA24F6:       Proc_6_42_129B55C(var_AC, arg_10, 2, 2)
  loc_FA2502:     End If
  loc_FA2502:   End If
  loc_FA2505: Else
  loc_FA250B:   If (var_86 = 1) Then
  loc_FA2521:     var_B8 = CLng(Me.FGBarCode.Col)
  loc_FA2531:     If Not (var_B8 = CLng(2)) Then
  loc_FA253B:       If (var_B8 = CLng(3)) Then
  loc_FA253E:       End If
  loc_FA2548:       Set var_8C = Me.TxtGrid
  loc_FA254E:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_B8)
  loc_FA2569:       Proc_6_42_129B55C(var_AC, arg_10, 2, 0)
  loc_FA2575:     End If
  loc_FA2575:   End If
  loc_FA2575: End If
  loc_FA2575: Exit Sub
  loc_FA2576: MemVar_F413D4 = 0
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10EF798
  'Data Table: 51C24C
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_184 As Long
  loc_10EF48C: On Error Goto loc_10EF78F
  loc_10EF492: var_86 = KeyCode
  loc_10EF49B: If (var_86 = 0) Then
  loc_10EF4B1:   var_A0 = CLng(Me.FGrid.Col)
  loc_10EF4C1:   If (var_A0 = CLng(2)) Then
  loc_10EF4E7:     If ((Shift <> &HD) And (CBool(Me.DGSch.Visible) = 0)) Then
  loc_10EF4F8:       Call TxtGrid_KeyDown(KeyCode, global_72)
  loc_10EF501:       Set var_AC = Me.TxtGrid
  loc_10EF50C:       var_A8 = "Name"
  loc_10EF527:       Proc_6_89_1470B00(var_AC, KeyCode, global_96, Shift, var_A8)
  loc_10EF536:     End If
  loc_10EF539:   Else
  loc_10EF540:     If (var_A0 = CLng(3)) Then
  loc_10EF550:       Set var_8C = Me.TxtGrid
  loc_10EF556:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_10EF55E:       0 = var_AC.Text
  loc_10EF581:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10EF599:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10EF5C6:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_10EF5CE:       Set var_178 = Me.FGrid
  loc_10EF5D4:       LateIdCallSt
  loc_10EF5FB:     End If
  loc_10EF5FB:   End If
  loc_10EF5FE: Else
  loc_10EF604:   If (var_86 = 1) Then
  loc_10EF61A:     var_184 = CLng(Me.FGBarCode.Col)
  loc_10EF62A:     If (var_184 = CLng(1)) Then
  loc_10EF64F:       If ((Shift <> &HD) And (Me.FrmList1.Visible = 0)) Then
  loc_10EF660:         Call TxtGrid_KeyDown(KeyCode, global_72)
  loc_10EF665:       End If
  loc_10EF680:       If (Me.FrmList1.Visible = &HFF) Then
  loc_10EF6A0:         Set var_AC = Me.TxtGrid
  loc_10EF6AF:         Proc_6_64_F299E8(Me.ListView1, var_AC, KeyCode, Shift, global_92, 0, var_184, var_178)
  loc_10EF6BF:       End If
  loc_10EF6C2:     Else
  loc_10EF6C9:       If Not (var_184 = CLng(2)) Then
  loc_10EF6D3:         If (var_184 = CLng(3)) Then
  loc_10EF6D6:         End If
  loc_10EF6E3:         Set var_8C = Me.TxtGrid
  loc_10EF6E9:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, var_164, 1, 1)
  loc_10EF6F1:         var_144 = var_AC.Text
  loc_10EF714:         var_124 = CVar(CLng(Me.FGBarCode.Row)) 'Long
  loc_10EF72C:         var_144 = CVar(CLng(Me.FGBarCode.Col)) 'Long
  loc_10EF759:         var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0"))) 'String
  loc_10EF761:         Set var_178 = Me.FGBarCode
  loc_10EF767:         LateIdCallSt
  loc_10EF78E:       End If
  loc_10EF78E:     End If
  loc_10EF78E:   End If
  loc_10EF78E: End If
  loc_10EF78E: Exit Sub
  loc_10EF78F: ' Referenced from: 10EF48C
  loc_10EF78F: Proc_6_60_E63754(var_178, var_164, 1, 1, var_144, var_124)
  loc_10EF794: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E0B6F8
  'Data Table: 51C24C
  Dim arg_10 As Integer
  loc_E0B6EA: Call Proc_70_63_13285F4(Cancel)
  loc_E0B6F3: arg_10 = Not(var_86)
  loc_E0B6F6: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_13 'EB4430
  'Data Table: 51C24C
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB43BC: Set var_9C = Me.ListView1.SelectedItem
  loc_EB43D3: Set var_A4 = Me.TxtGrid
  loc_EB43D9: Call 0.Method_ListView1_UnknownEvent_130 (1, var_A8)
  loc_EB43E1: var_A8.Text = var_9C.Text
  loc_EB4403: Me.FrmList1.Visible = False
  loc_EB4414: Set var_88 = Me.TxtGrid
  loc_EB441A: Call 0.Method_ListView1_UnknownEvent_130 (1)
  loc_EB4422: var_9C.SetFocus
  loc_EB442E: Exit Sub
End Sub

Private Sub Form_Load() '116A5E0
  'Data Table: 51C24C
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_C8 As TextBox
  Dim var_D0 As DataGrid
  Dim var_D4 As TextBox
  Dim var_DC As DataGrid
  Dim var_B4 As String
  Dim Me As Recordset15
  Dim var_E0 As String
  loc_116A224: On Error Goto loc_116A5D7
  loc_116A23D: Proc_6_23_DFC5B8(Me, 0)
  loc_116A24C: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_116A260: Me.LblUser.Left = CDbl(13500)
  loc_116A277: Me.LblUser.Top = CDbl(7800)
  loc_116A28E: Me.LblLDt.Top = CDbl(8160)
  loc_116A2A5: Me.LblLDt.Left = CDbl(13500)
  loc_116A2C0: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_116A2DB: Me.FGBarCode.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_116A2F1: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_116A303: Set var_8C = Me.TopCtrl1
  loc_116A309: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_116A317: Call 0.Method_arg_50 (var_B4)
  loc_116A327: Set var_8C = Me.TopCtrl1
  loc_116A32D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B4))
  loc_116A346: Set var_8C = Me.Txt
  loc_116A34C: Call 0.Method_Form_Load0 (CInt(&H28), var_C8)
  loc_116A36B: If (var_C8.Text = "No") Then
  loc_116A37D:   Me.FGBarCode.Visible = False
  loc_116A385: End If
  loc_116A393: Set var_8C = Me.Txt
  loc_116A399: Call 0.Method_Form_Load0 (CInt(0), var_C8)
  loc_116A3B8: Me.DGHelp.Left = CVar(var_C8.Left)
  loc_116A3D4: Set var_D0 = Me.Txt
  loc_116A3DA: Call 0.Method_Form_Load0 (CInt(0), var_D4)
  loc_116A3F5: Set var_8C = Me.Txt
  loc_116A3FB: Call 0.Method_Form_Load0 (CInt(0), var_C8)
  loc_116A413: var_A0 = CVar(((var_C8.Top + var_D4.Height) + CDbl(&H1E))) 'Single
  loc_116A41C: Set var_DC = Me.DGHelp
  loc_116A422: var_DC.Top = CVar(var_C8.Left)
  loc_116A43E: Set global_60 = New 
  loc_116A450: Me.var_DC.CursorLocation = 3
  loc_116A460: If (global_56 = "Banquet") Then
  loc_116A488:   var_C4 = CVar("Select Code,Name,RestType  From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RestType in ('Banquet')  Order by Name") 'String
  loc_116A492:   Me.Open var_C4, CVar(MemVar_1F95044), 3
  loc_116A4A0: Else
  loc_116A4C5:   var_C4 = CVar("Select Code,Name,RestType  From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RestType not in ('House Keeping','Kitchen','Banquet') AND RestType IN ('Outlet','Room Service') Order by Name") 'String
  loc_116A4CF:   Me.Open var_C4, CVar(MemVar_1F95044), 3
  loc_116A4DA: End If
  loc_116A4E3: CVarUnk
  loc_116A4E8: VerifyVarObj
  loc_116A4EE: Set var_8C = Me.DGHelp
  loc_116A4F4: LateIdStAd
  loc_116A51E: Me.DGHelp.CursorLocation = 3
  loc_116A541: var_B4 = "SELECT SplitBill,R.Code AS SEARCHCODE,P_Name=CASE R.PartyName WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Header3,R.Header4,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,Outl=CASE R.OutletTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END," & "MemberInfo=CASE R.MemberInfo WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,LinkRoom=CASE R.LinkToRoom WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncl=CASE R.RateInclTax WHEN 'Y' THEN 'Yes' ELSE 'No' END,DiscApp=CASE R.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,Roff=CASE R.Roff WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name,R.RestType,R.BackColor,R.ShortName,R.SITE_CODE,R.LOGSITE_CODE,TokenPrint,TokenPrintAfter,PrintTokenNo,Order_Booking=CASE R.Order_Booking WHEN 'Y' THEN 'Yes' ELSE 'No' END,CustInfo=CASE R.CustInfo WHEN 'Y' THEN 'Yes' ELSE 'No' END,DisPrint=CASE R.DisPrint WHEN 'Y' THEN 'Yes' ELSE 'No' END,LabelPrinting=CASE R.LabelPrinting WHEN 'Y' THEN 'Yes' ELSE 'No' END,CstNo,"
  loc_116A548: var_E0 = var_B4 & "CKOTPrintYN=CASE R.CKOTPrintYN WHEN 'Y' THEN 'Yes' ELSE 'No' END,PrintType,BarCodePartitionAppOn,CKOTPrintPath,CurTokenNo,CurTokenNoKOT,NoOfKot,NoOfBill,OrderBookCom1,OrderBookCom2,SaleBillTokenHeader1,PrintOnSave,AutoSettlement,WScaleApp,BarCodeApp,AutoResetToken,FreeItemApp,CoverMandatory,MobileNoMandatory,DirectBilling,BookOfBills,GrpDiscApp From Depart R "
  loc_116A55D: var_C4 = CVar(var_E0 & "Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RestType<>'Banquet' and OutletYN='Y' Order by R.Name") 'String
  loc_116A567: Me.Open var_C4, CVar(MemVar_1F95044), 3
  loc_116A586: Set var_8C = Me
  loc_116A59D: Call Proc_70_58_EBBA44(Proc_5_1_100EC1C("INI", var_8C, New, 1, -1, var_8C), global_60, 1, -1)
  loc_116A5B1: Call 0.Method_arg_160 (var_8C, 1)
  loc_116A5BF: Call 0.Method_arg_164 (var_8C, -1)
  loc_116A5C7: Call Proc_70_64_101C174(0)
  loc_116A5CC: Call Proc_70_67_1004FE8()
  loc_116A5D1: Call Proc_70_57_178640C()
  loc_116A5D6: Exit Sub
  loc_116A5D7: ' Referenced from: 116A224
  loc_116A5D7: Proc_6_60_E63754()
  loc_116A5DC: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3078
  'Data Table: 51C24C
  Dim var_8C As Label
  loc_ED2FD6: Call 0.Method_arg_50 (var_88)
  loc_ED2FE8: Me.LblFormCaption.Caption = var_88
  loc_ED3001: Me.LblFormCaption.Left = CDbl(0)
  loc_ED300D: Set var_A0 = Me.TopCtrl1
  loc_ED3013: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED3020: Set var_8C = Me.TopCtrl1
  loc_ED3026: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED3040: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED305B: Call 0.Method_arg_100 (var_B8)
  loc_ED306D: Me.LblFormCaption.Width = var_B8
  loc_ED3075: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E45228
  'Data Table: 51C24C
  loc_E45203: Set global_64 = Nothing
  loc_E45215: Set global_60 = Nothing
  loc_E45221: global_52 = 0
  loc_E45224: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26B7C
  'Data Table: 51C24C
  loc_E26B61: If (global_52 = &HFF) Then
  loc_E26B71:   Me.Global.Unload Me
  loc_E26B79: End If
  loc_E26B79: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27F1C
  'Data Table: 51C24C
  loc_E27EF4: On Error Goto loc_E27F14
  loc_E27F0B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E27F13: Exit Sub
  loc_E27F14: ' Referenced from: E27EF4
  loc_E27F14: Proc_6_60_E63754(Shift)
  loc_E27F19: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12111CC
  'Data Table: 51C24C
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_C4 As TextBox
  loc_1210D0E: Set var_88 = Me.Txt
  loc_1210D14: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1210D22: Proc_6_74_E23240(var_8C)
  loc_1210D2E: Call Proc_70_59_F1C994(var_8C)
  loc_1210D36: var_92 = Index
  loc_1210D41: If (var_92 = CInt(0)) Then
  loc_1210D5B:   If (Me.RecordCount > 0) Then
  loc_1210D69:     Set var_8C = Me.FGPoint
  loc_1210D81:     Proc_6_137_1192FDC(Me.DGHelp, global_60, Index)
  loc_1210D8F:   End If
  loc_1210D92: Else
  loc_1210D9A:   If (var_92 = CInt(1)) Then
  loc_1210DA8:     If (global_56 = "Banquet") Then
  loc_1210DB8:       ReDim var_9C(0 To 0)
  loc_1210DCF:       var_9C(0) = "Banquet"
  loc_1210DF1:       Set var_C4 = Me.ListView
  loc_1210E0C:       Set var_8C = Me.Txt
  loc_1210E26:       Set global_92 = Proc_6_66_F0048C(var_C4, var_8C, Index, Array(var_9C))
  loc_1210E44:       Set var_88 = Me.Txt
  loc_1210E4A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC, 1)
  loc_1210E52:       global_76 = var_8C.Text
  loc_1210E64:       Set var_90 = Me.Txt
  loc_1210E6A:       Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_CC)
  loc_1210E72:       var_C4.Tag = var_8C
  loc_1210E88:     Else
  loc_1210E95:       ReDim var_9C(0 To 2)
  loc_1210EAC:       var_9C(0) = "Outlet"
  loc_1210EBB:       var_9C(1) = "Room Service"
  loc_1210ECA:       var_9C(2) = "Production"
  loc_1210EE1:       global_76 = Array(var_9C)
  loc_1210EEC:       Set var_C4 = Me.ListView
  loc_1210F07:       Set var_8C = Me.Txt
  loc_1210F21:       Set global_92 = Proc_6_66_F0048C(var_C4, var_8C, Index, global_76)
  loc_1210F3F:       Set var_88 = Me.Txt
  loc_1210F45:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_1210F4D:       3 = var_8C.Text
  loc_1210F5F:       Set var_90 = Me.Txt
  loc_1210F65:       Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_CC)
  loc_1210F6D:       var_C4.Tag = global_76
  loc_1210F80:     End If
  loc_1210F83:   Else
  loc_1210F8B:     If (var_92 = CInt(&H25)) Then
  loc_1210F9B:       ReDim var_9C(0 To 5)
  loc_1210FB2:       var_9C(0) = "3 INCH RUNNING PAPER (NORMAL PRINTER)"
  loc_1210FC1:       var_9C(1) = "3 INCH RUNNING PAPER (THERMAL PRINTER)"
  loc_1210FD0:       var_9C(2) = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)"
  loc_1210FDF:       var_9C(3) = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)"
  loc_1210FEE:       var_9C(4) = "3 INCH RUNNING PAPER WINPRINT"
  loc_1210FFD:       var_9C(5) = "ADJUSTABLE WINDOWS KOT PRINT"
  loc_1211014:       global_76 = Array(var_9C)
  loc_121101F:       Set var_C4 = Me.ListView
  loc_121103A:       Set var_8C = Me.Txt
  loc_1211054:       Set global_92 = Proc_6_66_F0048C(var_C4, var_8C, Index, global_76)
  loc_1211072:       Set var_88 = Me.Txt
  loc_1211078:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_1211080:       6 = var_8C.Text
  loc_1211092:       Set var_90 = Me.Txt
  loc_1211098:       Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_CC)
  loc_12110A0:       var_C4.Tag = global_76
  loc_12110B6:     Else
  loc_12110BE:       If (var_92 = CInt(&H2C)) Then
  loc_12110CE:         ReDim var_9C(0 To 3)
  loc_12110E5:         var_9C(0) = "NONE"
  loc_12110F4:         var_9C(1) = "GRID"
  loc_1211103:         var_9C(2) = "TEXTBOX"
  loc_1211112:         var_9C(3) = "BOTH"
  loc_1211129:         global_76 = Array(var_9C)
  loc_1211134:         Set var_C4 = Me.ListView
  loc_121114F:         Set var_8C = Me.Txt
  loc_1211169:         Set global_92 = Proc_6_66_F0048C(var_C4, var_8C, Index, global_76)
  loc_1211187:         Set var_88 = Me.Txt
  loc_121118D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_1211195:         4 = var_8C.Text
  loc_12111A7:         Set var_90 = Me.Txt
  loc_12111AD:         Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_CC)
  loc_12111B5:         var_C4.Tag = global_76
  loc_12111C8:       End If
  loc_12111C8:     End If
  loc_12111C8:   End If
  loc_12111C8: End If
  loc_12111C8: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12E5D68
  'Data Table: 51C24C
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  Dim var_B0 As TextBox
  Dim var_C0 As TextBox
  Dim var_90 As ListView
  loc_12E56D2: If (CLng(Shift) = &H1B) Then
  loc_12E56D5:   Call Proc_70_59_F1C994()
  loc_12E56DA:   Exit Sub
  loc_12E56DB: End If
  loc_12E56DE: var_88 = KeyCode
  loc_12E56E9: If (var_88 = CInt(0)) Then
  loc_12E570E:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_12E5715:     Set var_A8 = Me.DGHelp
  loc_12E5723:     Set var_B0 = Me.FGPoint
  loc_12E572E:     Set var_A0 = var_B0
  loc_12E5760:     Proc_6_79_11AD564(var_A8, Me.Txt, CInt(0), global_60, Shift)
  loc_12E5774:   End If
  loc_12E577D:   var_8C = Me.RecordCount
  loc_12E57CD:   If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12E57DB:     Set var_94 = Me.FGPoint
  loc_12E57F3:     Proc_6_138_106E830(Me.DGHelp, global_60, KeyCode, var_94, 0)
  loc_12E5801:   End If
  loc_12E5804: Else
  loc_12E580C:   If Not (var_88 = CInt(2)) Then
  loc_12E5817:     If (var_88 = CInt(9)) Then
  loc_12E581A:     End If
  loc_12E581D:   Else
  loc_12E5825:     If (var_88 = CInt(1)) Then
  loc_12E5833:       If (global_56 = "Banquet") Then
  loc_12E5858:         Set var_90 = Me.Txt
  loc_12E585E:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, 1)
  loc_12E5866:         var_A0 = var_94.Left
  loc_12E5878:         Set var_A0 = Me.Txt
  loc_12E587E:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B4)
  loc_12E5886:         0 = var_A8.Top
  loc_12E5898:         Set var_AC = Me.Txt
  loc_12E589E:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0)
  loc_12E58A6:         var_B8 = var_B0.Height
  loc_12E58B8:         Set var_BC = Me.Txt
  loc_12E58BE:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12E58C6:         var_C4 = var_C0.Width
  loc_12E590E:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12E5935:       Else
  loc_12E5957:         Set var_90 = Me.Txt
  loc_12E595D:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, CInt(var_8C))
  loc_12E5965:         CInt((var_B4 + var_B8)) = var_94.Left
  loc_12E5977:         Set var_A0 = Me.Txt
  loc_12E597D:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B4)
  loc_12E5985:         CInt(var_C4) = var_A8.Top
  loc_12E5997:         Set var_AC = Me.Txt
  loc_12E599D:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_B8)
  loc_12E59A5:         260 = var_B0.Height
  loc_12E59B7:         Set var_BC = Me.Txt
  loc_12E59BD:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12E59C5:         var_C4 = var_C0.Width
  loc_12E5A0D:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12E5A31:       End If
  loc_12E5A34:     Else
  loc_12E5A3C:       If (var_88 = CInt(&H25)) Then
  loc_12E5A61:         Set var_90 = Me.Txt
  loc_12E5A67:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, CInt(var_8C))
  loc_12E5A6F:         CInt((var_B4 + var_B8)) = var_94.Left
  loc_12E5A81:         Set var_A0 = Me.Txt
  loc_12E5A87:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B4)
  loc_12E5A8F:         CInt(var_C4) = var_A8.Top
  loc_12E5AA1:         Set var_AC = Me.Txt
  loc_12E5AA7:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_B8)
  loc_12E5AAF:         780 = var_B0.Height
  loc_12E5AC1:         Set var_BC = Me.Txt
  loc_12E5AC7:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12E5ACF:         var_C4 = var_C0.Width
  loc_12E5B17:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12E5B3E:       Else
  loc_12E5B46:         If (var_88 = CInt(&H2C)) Then
  loc_12E5B6B:           Set var_90 = Me.Txt
  loc_12E5B71:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, CInt(var_8C))
  loc_12E5B79:           CInt((var_B4 + var_B8)) = var_94.Left
  loc_12E5B8B:           Set var_A0 = Me.Txt
  loc_12E5B91:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B4)
  loc_12E5B99:           CInt(var_C4) = var_A8.Top
  loc_12E5BAB:           Set var_AC = Me.Txt
  loc_12E5BB1:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_B8)
  loc_12E5BB9:           1560 = var_B0.Height
  loc_12E5BCB:           Set var_BC = Me.Txt
  loc_12E5BD1:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12E5BD9:           var_C4 = var_C0.Width
  loc_12E5C21:           Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12E5C45:         End If
  loc_12E5C45:       End If
  loc_12E5C45:     End If
  loc_12E5C45:   End If
  loc_12E5C45: End If
  loc_12E5C80: If ((CBool(Me.ListView.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) Then
  loc_12E5CA1:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_12E5CAC:     Call Txt_Validate(KeyCode)
  loc_12E5CB7:     If (var_86 = &HFF) Then
  loc_12E5CBA:       Exit Sub
  loc_12E5CBB:     End If
  loc_12E5CF2:     If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_12E5CF5:       Call TopCtrl1_UnknownEvent_16()
  loc_12E5CFA:     End If
  loc_12E5CFA:     Exit Sub
  loc_12E5CFB:   End If
  loc_12E5D10:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12E5D19:     Proc_6_75_E5335C(Shift, arg_14, &HFF, CInt(var_8C))
  loc_12E5D1E:   End If
  loc_12E5D28:   If (CLng(Shift) = &H26) Then
  loc_12E5D2F:     Set var_90 = Me.TopCtrl1
  loc_12E5D35:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt((var_B4 + var_B8)))
  loc_12E5D4E:     If (CStr(CInt(var_C4)) = "Add") Then
  loc_12E5D59:       If (KeyCode <> CInt(0)) Then
  loc_12E5D62:         Proc_6_76_E533C8(Shift, arg_14)
  loc_12E5D67:       End If
  loc_12E5D67:     End If
  loc_12E5D67:   End If
  loc_12E5D67: End If
  loc_12E5D67: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '116919C
  'Data Table: 51C24C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  Dim 0.global_-11264 As Long
  loc_1168DD7: Proc_6_58_E06050(arg_10)
  loc_1168E48: If Not(((((((((((((KeyAscii = CInt(&H18)) Or (KeyAscii = CInt(&H16))) Or (KeyAscii = CInt(8))) Or (KeyAscii = CInt(3))) Or (KeyAscii = CInt(4))) Or (KeyAscii = CInt(&H21))) Or (KeyAscii = CInt(&H22))) Or (KeyAscii = CInt(6))) Or (KeyAscii = CInt(7))) Or (KeyAscii = CInt(&H1D))) Or (KeyAscii = CInt(&H1E))) Or (KeyAscii = CInt(&H27)))) Then
  loc_1168E51:   Proc_6_133_E7FB08(var_94)
  loc_1168E5A:   arg_10 = CInt(var_94)
  loc_1168E60: End If
  loc_1168E63: var_96 = KeyAscii
  loc_1168E6E: If Not (var_96 = CInt(2)) Then
  loc_1168E79:   If Not (var_96 = CInt(9)) Then
  loc_1168E84:     If Not (var_96 = CInt(&HB)) Then
  loc_1168E8F:       If Not (var_96 = CInt(&HC)) Then
  loc_1168E9A:         If Not (var_96 = CInt(&HD)) Then
  loc_1168EA5:           If Not (var_96 = CInt(&HE)) Then
  loc_1168EB0:             If Not (var_96 = CInt(&H10)) Then
  loc_1168EBB:               If Not (var_96 = CInt(&H11)) Then
  loc_1168EC6:                 If Not (var_96 = CInt(&H2D)) Then
  loc_1168ED1:                   If Not (var_96 = CInt(&H2E)) Then
  loc_1168EDC:                     If Not (var_96 = CInt(&H12)) Then
  loc_1168EE7:                       If Not (var_96 = CInt(&H13)) Then
  loc_1168EF2:                         If Not (var_96 = CInt(&H14)) Then
  loc_1168EFD:                           If Not (var_96 = CInt(&H15)) Then
  loc_1168F08:                             If (var_96 = CInt(&H17)) Then
  loc_1168F0B:                             End If
  loc_1168F0B:                           End If
  loc_1168F0B:                         End If
  loc_1168F0B:                       End If
  loc_1168F0B:                     End If
  loc_1168F0B:                   End If
  loc_1168F0B:                 End If
  loc_1168F0B:               End If
  loc_1168F0B:             End If
  loc_1168F0B:           End If
  loc_1168F0B:         End If
  loc_1168F0B:       End If
  loc_1168F0B:     End If
  loc_1168F0B:   End If
  loc_1168F34:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1168F44:     Set var_CC = Me.Txt
  loc_1168F4A:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_1168F52:     var_D0.Text = var_96
  loc_1168F61:   Else
  loc_1168F8A:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1168F9A:       Set var_CC = Me.Txt
  loc_1168FA0:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_1168FA8:       var_D0.Text = arg_10
  loc_1168FB4:     End If
  loc_1168FB4:   End If
  loc_1168FB6:   arg_10 = 0
  loc_1168FBC: Else
  loc_1168FC4:   If Not (var_96 = CInt(&HF)) Then
  loc_1168FCF:     If Not (var_96 = CInt(&H1C)) Then
  loc_1168FDA:       If Not (var_96 = CInt(&H1F)) Then
  loc_1168FE5:         If Not (var_96 = CInt(&H24)) Then
  loc_1168FF0:           If Not (var_96 = CInt(&H26)) Then
  loc_1168FFB:             If Not (var_96 = CInt(&H28)) Then
  loc_1169006:               If Not (var_96 = CInt(&H29)) Then
  loc_1169011:                 If Not (var_96 = CInt(&H2F)) Then
  loc_116901C:                   If Not (var_96 = CInt(&H30)) Then
  loc_1169027:                     If Not (var_96 = CInt(&H31)) Then
  loc_1169032:                       If Not (var_96 = CInt(&H2B)) Then
  loc_116903D:                         If (var_96 = CInt(&H23)) Then
  loc_1169040:                         End If
  loc_1169040:                       End If
  loc_1169040:                     End If
  loc_1169040:                   End If
  loc_1169040:                 End If
  loc_1169040:               End If
  loc_1169040:             End If
  loc_1169040:           End If
  loc_1169040:         End If
  loc_1169040:       End If
  loc_1169040:     End If
  loc_1169069:     If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1169079:       Set var_CC = Me.Txt
  loc_116907F:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_1169087:       var_D0.Text = arg_10
  loc_1169096:     Else
  loc_11690BF:       If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11690CF:         Set var_CC = Me.Txt
  loc_11690D5:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_11690DD:         var_D0.Text = "No"
  loc_11690E9:       End If
  loc_11690E9:     End If
  loc_11690EB:     arg_10 = 0
  loc_11690F1:   Else
  loc_11690F9:     If Not (var_96 = CInt(&H19)) Then
  loc_1169104:       If Not (var_96 = CInt(&H2A)) Then
  loc_116910F:         If (var_96 = CInt(&H20)) Then
  loc_1169112:         End If
  loc_1169112:       End If
  loc_116911C:       Set var_CC = Me.Txt
  loc_1169122:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_116913D:       Proc_6_42_129B55C(var_D0, arg_10, 6)
  loc_116914C:     Else
  loc_1169154:       If Not (var_96 = CInt(&H1A)) Then
  loc_116915F:         If (var_96 = CInt(&H1B)) Then
  loc_1169162:         End If
  loc_116916C:         Set var_CC = Me.Txt
  loc_1169172:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, 0)
  loc_116918D:         Proc_6_42_129B55C(var_D0, arg_10, 1)
  loc_1169199:       End If
  loc_1169199:     End If
  loc_1169199:   End If
  loc_1169199: End If
  loc_1169199: Exit Sub
  loc_116919A: 0.global_-11264 = arg_10
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F9F5F8
  'Data Table: 51C24C
  Dim var_86 As Integer
  loc_F9F483: var_86 = KeyCode
  loc_F9F48E: If (var_86 = CInt(0)) Then
  loc_F9F4AD:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F9F4BA:     var_A4 = "Name"
  loc_F9F4D9:     Proc_6_80_FF1F20(Me.Txt, CInt(0), global_60)
  loc_F9F50B:     Proc_6_138_106E830(Me.DGHelp, global_60, KeyCode, Me.FGPoint)
  loc_F9F519:   End If
  loc_F9F51C: Else
  loc_F9F524:   If (var_86 = CInt(1)) Then
  loc_F9F542:     If (Me.FrmList.Visible = &HFF) Then
  loc_F9F571:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F9F581:     End If
  loc_F9F584:   Else
  loc_F9F58C:     If Not (var_86 = CInt(&H25)) Then
  loc_F9F597:       If (var_86 = CInt(&H2C)) Then
  loc_F9F59A:       End If
  loc_F9F5B5:       If (Me.FrmList.Visible = &HFF) Then
  loc_F9F5E4:         Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift, global_92)
  loc_F9F5F4:       End If
  loc_F9F5F4:     End If
  loc_F9F5F4:   End If
  loc_F9F5F4: End If
  loc_F9F5F4: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4AC94
  'Data Table: 51C24C
  loc_E4AC72: Set var_88 = Me.Txt
  loc_E4AC78: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4AC86: Proc_6_73_E23294(var_8C)
  loc_E4AC92: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1311EEC
  'Data Table: 51C24C
  Dim var_86 As Integer
  Dim var_A0 As Variant
  Dim var_BC As String
  Dim var_B8 As Variant
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_B0 As Integer
  Dim var_B4 As Variant
  Dim var_F4 As Variant
  Dim unk_51C26E As Connection15
  Dim var_F0 As Variant
  loc_13117C7: var_86 = Cancel
  loc_13117D2: If (var_86 = CInt(0)) Then
  loc_13117E0:   Set var_8C = Me.Txt
  loc_13117E6:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_131180C:   Set var_B4 = Me.Txt
  loc_1311812:   Call 0.Method_Txt_Validate0 (CInt(0), var_B8)
  loc_131181A:   var_B8.Text = CStr(Trim(CVar(var_90)))
  loc_1311835:   Call Proc_70_55_1088CE4(var_BE)
  loc_1311840:   If (var_BE = &HFF) Then
  loc_1311845:     arg_10 = &HFF
  loc_1311848:     Exit Sub
  loc_1311849:   End If
  loc_1311854:   Set var_8C = Me.Txt
  loc_131185A:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1311883:   If (Proc_6_27_EA61EC(var_90, "Name") = 0) Then
  loc_1311888:     arg_10 = &HFF
  loc_131188B:     Exit Sub
  loc_131188C:   End If
  loc_131188F: Else
  loc_1311897:   If Not (var_86 = CInt(2)) Then
  loc_13118A2:     If (var_86 = CInt(9)) Then
  loc_13118A5:     End If
  loc_13118AF:     Set var_8C = Me.Txt
  loc_13118B5:     Call 0.Method_Txt_Validate0 (Cancel, var_90, arg_10)
  loc_13118F0:     If (Ucase(Left(CVar(var_90), 1)) = "N") Then
  loc_1311900:       Set var_8C = Me.Txt
  loc_1311906:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "No")
  loc_131190E:       var_90.Text = arg_10
  loc_131191D:     Else
  loc_131192A:       Set var_8C = Me.Txt
  loc_1311930:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1311938:       var_90.Text = "Yes"
  loc_1311944:     End If
  loc_1311947:   Else
  loc_131194F:     If Not (var_86 = CInt(&HB)) Then
  loc_131195A:       If Not (var_86 = CInt(&HC)) Then
  loc_1311965:         If Not (var_86 = CInt(&HD)) Then
  loc_1311970:           If Not (var_86 = CInt(&HE)) Then
  loc_131197B:             If Not (var_86 = CInt(&H11)) Then
  loc_1311986:               If Not (var_86 = CInt(&H12)) Then
  loc_1311991:                 If Not (var_86 = CInt(&H2D)) Then
  loc_131199C:                   If Not (var_86 = CInt(&H2E)) Then
  loc_13119A7:                     If (var_86 = CInt(&H13)) Then
  loc_13119AA:                     End If
  loc_13119AA:                   End If
  loc_13119AA:                 End If
  loc_13119AA:               End If
  loc_13119AA:             End If
  loc_13119AA:           End If
  loc_13119AA:         End If
  loc_13119AA:       End If
  loc_13119B4:       Set var_8C = Me.Txt
  loc_13119BA:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13119D9:       var_D0 = Ucase(Left(CVar(var_90), 1))
  loc_13119F5:       If (var_D0 = "Y") Then
  loc_1311A05:         Set var_8C = Me.Txt
  loc_1311A0B:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1311A13:         var_90.Text = "Yes"
  loc_1311A22:       Else
  loc_1311A2F:         Set var_8C = Me.Txt
  loc_1311A35:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1311A3D:         var_90.Text = "No"
  loc_1311A49:       End If
  loc_1311A4C:     Else
  loc_1311A54:       If (var_86 = CInt(1)) Then
  loc_1311A64:         Set var_8C = Me.Txt
  loc_1311A6A:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1311A89:         If (var_90.Text <> vbNullString) Then
  loc_1311AAA:           var_BC = Me.ListView.SelectedItem.Text
  loc_1311ABC:           Set var_B4 = Me.Txt
  loc_1311AC2:           Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_1311ACA:           var_B8.Text = var_BC
  loc_1311AE3:         Else
  loc_1311AE9:           var_B0 = 1
  loc_1311AF8:           var_A0 = Me.ListView.ListItems
  loc_1311B03:           Set var_90 = var_A0
  loc_1311B09:           var_B0 = var_90.ControlDefault
  loc_1311B11:           var_B4 = var_B4.Default
  loc_1311B23:           Set var_B8 = Me.Txt
  loc_1311B29:           Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_BC)
  loc_1311B31:           var_F4.Text = var_BC
  loc_1311B4D:         End If
  loc_1311B50:       Else
  loc_1311B58:         If (var_86 = CInt(&HA)) Then
  loc_1311B5F:           Set var_8C = Me.TopCtrl1
  loc_1311B65:           Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_1311B6D:           var_BC = CStr()
  loc_1311B7E:           If (var_BC = "Add") Then
  loc_1311BAD:             Set var_8C = Me.Txt
  loc_1311BB3:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_BC, "Select Count(*) From Depart Where ShortName='", var_A0, -1)
  loc_1311BD4:             unk_51C26E.Execute var_B8 & var_BC & "'", 0, var_F4
  loc_1311BE4:              = var_B8.Item()
  loc_1311BEC:              = var_F4.Value
  loc_1311C19:             If (var_90.Text.Fields > 0) Then
  loc_1311C26:               Set var_8C = Me.Txt
  loc_1311C2C:               Call 0.Method_Txt_Validate0 (Cancel)
  loc_1311C57:               Set var_B4 = Me.Txt
  loc_1311C5D:               Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_1311C65:               var_F0 = CVar(var_B8) 'Address
  loc_1311C8C:               Set var_F4 = Me.Txt
  loc_1311C92:               Call 0.Method_Txt_Validate0 (Cancel, var_150)
  loc_1311CD1:               If CBool((Ucase(CVar(var_90)) = "FOM") Or (Ucase(var_F0) = "PURC") Or (Ucase(CVar(var_150)) = "BANQ")) Then
  loc_1311CF5:                 MsgBox("This ShortName is reserved for System", &H40, "Information", var_D0, var_F0)
  loc_1311D08:               Else
  loc_1311D29:                 MsgBox("Duplicate ShortName", &H40, "Information", var_D0, var_F0)
  loc_1311D39:               End If
  loc_1311D3B:               arg_10 = &HFF
  loc_1311D3E:               Exit Sub
  loc_1311D3F:             End If
  loc_1311D3F:           End If
  loc_1311D42:         Else
  loc_1311D4A:           If Not (var_86 = CInt(&HF)) Then
  loc_1311D55:             If Not (var_86 = CInt(&H1C)) Then
  loc_1311D60:               If Not (var_86 = CInt(&H1F)) Then
  loc_1311D6B:                 If Not (var_86 = CInt(&H24)) Then
  loc_1311D76:                   If Not (var_86 = CInt(&H26)) Then
  loc_1311D81:                     If Not (var_86 = CInt(&H28)) Then
  loc_1311D8C:                       If Not (var_86 = CInt(&H29)) Then
  loc_1311D97:                         If Not (var_86 = CInt(&H2F)) Then
  loc_1311DA2:                           If Not (var_86 = CInt(&H30)) Then
  loc_1311DAD:                             If Not (var_86 = CInt(&H31)) Then
  loc_1311DB8:                               If Not (var_86 = CInt(&H2B)) Then
  loc_1311DC3:                                 If (var_86 = CInt(&H23)) Then
  loc_1311DC6:                                 End If
  loc_1311DC6:                               End If
  loc_1311DC6:                             End If
  loc_1311DC6:                           End If
  loc_1311DC6:                         End If
  loc_1311DC6:                       End If
  loc_1311DC6:                     End If
  loc_1311DC6:                   End If
  loc_1311DC6:                 End If
  loc_1311DC6:               End If
  loc_1311DC6:             End If
  loc_1311DD0:             Set var_8C = Me.Txt
  loc_1311DD6:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1311E11:             If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_1311E21:               Set var_8C = Me.Txt
  loc_1311E27:               Call 0.Method_Txt_Validate0 (Cancel, var_90, "Yes")
  loc_1311E2F:               var_90.Text = arg_10
  loc_1311E3E:             Else
  loc_1311E4B:               Set var_8C = Me.Txt
  loc_1311E51:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1311E59:               var_90.Text = "No"
  loc_1311E65:             End If
  loc_1311E68:           Else
  loc_1311E70:             If (var_86 = CInt(&H10)) Then
  loc_1311E7E:               Set var_8C = Me.Txt
  loc_1311E84:               Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1311EBF:               If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_1311ED0:                 Set var_8C = Me.Txt
  loc_1311ED6:                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_90)
  loc_1311EDE:                 var_90.Text = "No"
  loc_1311EEA:               End If
  loc_1311EEA:             End If
  loc_1311EEA:           End If
  loc_1311EEA:         End If
  loc_1311EEA:       End If
  loc_1311EEA:     End If
  loc_1311EEA:   End If
  loc_1311EEA: End If
  loc_1311EEA: Exit Sub
End Sub

Private Sub FGBarCode_UnknownEvent_0 'E60FC4
  'Data Table: 51C24C
  Dim var_A8 As MSFlexGrid
  Dim var_AC As TextBox
  loc_E60F8F: Me.FGBarCode.BackColorSel = CVar(CLng("14737632"))
  loc_E60FA2: Set var_A8 = Me.TxtGrid
  loc_E60FA8: Call 0.Method_FGBarCode_UnknownEvent_00 (1, var_AC)
  loc_E60FB0: var_AC.Visible = False
  loc_E60FBC: Call Proc_70_59_F1C994()
  loc_E60FC1: Exit Sub
  loc_E60FC2: Loop Until  'do at: E5E37C
End Sub

Private Sub FGBarCode_UnknownEvent_9 'E4F88C
  'Data Table: 51C24C
  loc_E4F864: Set var_88 = Me.TopCtrl1
  loc_E4F86A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4F883: If (CStr() <> "Browse") Then
  loc_E4F886:   Call Proc_70_66_E45FCC()
  loc_E4F88B: End If
  loc_E4F88B: Exit Sub
End Sub

Private Sub FGBarCode_UnknownEvent_A '10DD7B0
  'Data Table: 51C24C
  Dim var_9C As String
  Dim var_B4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10DD4A8: Set var_88 = Me.TopCtrl1
  loc_10DD4AE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10DD4F3: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10DD4FC:   Call Form_KeyDown(Cancel, arg_10)
  loc_10DD501: End If
  loc_10DD505: Set var_88 = Me.TopCtrl1
  loc_10DD50B: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10DD524: If (CStr() = "Browse") Then
  loc_10DD527:   Exit Sub
  loc_10DD528: End If
  loc_10DD59C: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGBarCode.Tag))) = CDbl((CLng(Me.FGBarCode.Rows) - (CLng(Me.FGBarCode.Rows) - 1))))) Then
  loc_10DD5B5:   Me.FGBarCode.CellBackColor = CVar(CLng(global_108))
  loc_10DD5C5:   var_9C = "+{Tab}"
  loc_10DD5CB:   Proc_303_0_FBACC8(CStr(Me.FGBarCode.Tag), 0)
  loc_10DD5D5:   Cancel = 0
  loc_10DD5DB: Else
  loc_10DD632:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGBarCode.Tag))) = CDbl((CLng(Me.FGBarCode.Rows) - 1)))) Then
  loc_10DD64B:     Me.FGBarCode.CellBackColor = CVar(CLng(global_108))
  loc_10DD655:     Cancel = 0
  loc_10DD658:   End If
  loc_10DD658: End If
  loc_10DD65E: global_72 = Cancel
  loc_10DD684: Me.FGBarCode.Tag = CVar(CStr(CLng(Me.FGBarCode.Row)))
  loc_10DD6A8: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10DD6BE:   var_EC = CLng(Me.FGBarCode.Col)
  loc_10DD6CE:   If (var_EC = CLng(1)) Then
  loc_10DD6E4:     var_D4 = CVar(CLng(Me.FGBarCode.Row)) 'Long
  loc_10DD6FC:     var_FC = CVar(CLng(Me.FGBarCode.Col)) 'Long
  loc_10DD701:     var_11C = vbNullString
  loc_10DD70B:     Set var_B4 = Me.FGBarCode
  loc_10DD711:     LateIdCallSt
  loc_10DD72C:   Else
  loc_10DD733:     If Not (var_EC = CLng(2)) Then
  loc_10DD73D:       If (var_EC = CLng(3)) Then
  loc_10DD740:       End If
  loc_10DD753:       var_D4 = CVar(CLng(Me.FGBarCode.Row)) 'Long
  loc_10DD76B:       var_FC = CVar(CLng(Me.FGBarCode.Col)) 'Long
  loc_10DD770:       var_11C = vbNullString
  loc_10DD77A:       Set var_B4 = Me.FGBarCode
  loc_10DD780:       LateIdCallSt
  loc_10DD798:     End If
  loc_10DD798:   End If
  loc_10DD798: End If
  loc_10DD79E: If (Cancel = &HD) Then
  loc_10DD7A6:   global_104 = 0
  loc_10DD7A9: End If
  loc_10DD7AB: Cancel = 0
  loc_10DD7AE: Exit Sub
End Sub

Private Sub FGBarCode_UnknownEvent_B 'E5E2E4
  'Data Table: 51C24C
  loc_E5E2A8: Set var_88 = Me.TopCtrl1
  loc_E5E2AE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5E2C7: If (CStr() = "Browse") Then
  loc_E5E2CA:   Exit Sub
  loc_E5E2CB: End If
  loc_E5E2D4: Call FGBarCode_UnknownEvent_C()
  loc_E5E2E1: Exit Sub
  loc_E5E2E2: Set var_2C00 = 0
End Sub

Private Sub FGBarCode_UnknownEvent_C '101A928
  'Data Table: 51C24C
  Dim var_9C As String
  Dim var_88 As MSFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_101A710: Set var_88 = Me.TopCtrl1
  loc_101A716: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_101A72F: If (CStr() = "Browse") Then
  loc_101A732:   Exit Sub
  loc_101A733: End If
  loc_101A746: var_A0 = CLng(Me.FGBarCode.Col)
  loc_101A756: If (var_A0 = CLng(1)) Then
  loc_101A75D:   Set var_C4 = Me.FGBarCode
  loc_101A781:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_101A7AE:   Set var_B4 = var_C4
  loc_101A7C0:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 1, 0)
  loc_101A7E8:   Set var_88 = Me.TxtGrid
  loc_101A7EE:   Call 0.Method_FGBarCode_UnknownEvent_C0 (1, var_B4, var_9C, Asc(var_9C))
  loc_101A7F6:   0 = var_B4.Text
  loc_101A80F:   If (Len(var_9C) <= 1) Then
  loc_101A81E:     Set var_88 = Me.TxtGrid
  loc_101A824:     Call 0.Method_FGBarCode_UnknownEvent_C0 (1, var_B4, var_9C)
  loc_101A82C:     var_CA = var_B4.Text
  loc_101A83D:     Set var_B8 = Me.TxtGrid
  loc_101A843:     Call 0.Method_FGBarCode_UnknownEvent_C0 (1, var_C4)
  loc_101A84B:     var_C4.Text = var_9C
  loc_101A85E:   End If
  loc_101A86A:   Set var_88 = Me.TxtGrid
  loc_101A870:   Call 0.Method_FGBarCode_UnknownEvent_C0 (1, var_B4)
  loc_101A88A:   Set var_B8 = Me.TxtGrid
  loc_101A890:   Call 0.Method_FGBarCode_UnknownEvent_C0 (1, var_C4)
  loc_101A898:   var_C4.SelStart = Len(var_B4.Text)
  loc_101A8AE: Else
  loc_101A8B5:   If Not (var_A0 = CLng(2)) Then
  loc_101A8BF:     If (var_A0 = CLng(3)) Then
  loc_101A8C2:     End If
  loc_101A900:     Proc_6_63_110B734(Me, Me.FGBarCode, Me.TxtGrid, 1)
  loc_101A912:   End If
  loc_101A912: End If
  loc_101A91C: If (CLng(Cancel) <> &HD) Then
  loc_101A924:   global_104 = &HFF
  loc_101A927: End If
  loc_101A927: Exit Sub
End Sub

Private Sub FGBarCode_UnknownEvent_D 'FE5350
  'Data Table: 51C24C
  Dim var_88 As MSFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE5180: Set var_88 = Me.TopCtrl1
  loc_FE5186: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE519F: If (CStr() = "Browse") Then
  loc_FE51A2:   Exit Sub
  loc_FE51A3: End If
  loc_FE51C0: If (CLng(Me.FGBarCode.ColSel) = CLng(0)) Then
  loc_FE51C3:   Exit Sub
  loc_FE51C4: End If
  loc_FE51D5: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE51F7:   If (CLng(Me.FGBarCode.Row) >= 1) Then
  loc_FE5231:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE5253:       If (CLng(Me.FGBarCode.Rows) > 2) Then
  loc_FE5269:         var_AC = CVar(CLng(Me.FGBarCode.Row)) 'Long
  loc_FE5272:         Set var_110 = Me.FGBarCode
  loc_FE528D:       Else
  loc_FE52A0:         Me.FGBarCode.Rows = 1
  loc_FE52C6:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGBarCode, CInt(0)))) 'String
  loc_FE52CE:         Set var_110 = Me.FGBarCode
  loc_FE52FB:         Me.FGBarCode.FixedRows = 1
  loc_FE5303:       End If
  loc_FE5303:     End If
  loc_FE5306:   Else
  loc_FE5327:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE5337:   End If
  loc_FE533B:   Set var_88 = Me.FGBarCode
  loc_FE534C: End If
  loc_FE534C: Exit Sub
  loc_FE534D: Exit Sub
End Sub

Private Sub FGBarCode_UnknownEvent_15 'E45F6C
  'Data Table: 51C24C
  Dim var_8C As TextBox
  loc_E45F40: Call Proc_70_59_F1C994()
  loc_E45F50: Set var_88 = Me.TxtGrid
  loc_E45F56: Call 0.Method_FGBarCode_UnknownEvent_150 (1, var_8C)
  loc_E45F5E: var_8C.Visible = False
  loc_E45F6A: Exit Sub
End Sub

Private Sub Command1_Click() 'EE96D4
  'Data Table: 51C24C
  Dim var_88 As Variant
  Dim var_A0 As TextBox
  loc_EE9630: If (Me.Command1.Caption = "Show Print Details") Then
  loc_EE9640:   Me.Command1.Caption = "Hide Print Details"
  loc_EE9654:   Me.Frame1.Visible = True
  loc_EE9660:   Set var_88 = Me.TopCtrl1
  loc_EE9666:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EE967F:   If (CStr() <> "Browse") Then
  loc_EE968D:     Set var_88 = Me.Txt
  loc_EE9693:     Call 0.Method_Command1_Click0 (CInt(&H11))
  loc_EE969B:     var_A0.SetFocus
  loc_EE96A7:   End If
  loc_EE96AA: Else
  loc_EE96B7:   Me.Command1.Caption = "Show Print Details"
  loc_EE96CB:   Me.Frame1.Visible = False
  loc_EE96D3: End If
  loc_EE96D3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60444
  'Data Table: 51C24C
  Dim var_A8 As MSFlexGrid
  Dim var_AC As TextBox
  loc_E6040F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60422: Set var_A8 = Me.TxtGrid
  loc_E60428: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60430: var_AC.Visible = False
  loc_E6043C: Call Proc_70_59_F1C994()
  loc_E60441: Exit Sub
  loc_E60442: Loop Until  'do at: E5D7FC
End Sub

Private Sub FGrid_UnknownEvent_9 'E4B4B4
  'Data Table: 51C24C
  loc_E4B48C: Set var_88 = Me.TopCtrl1
  loc_E4B492: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4B4AB: If (CStr() <> "Browse") Then
  loc_E4B4AE:   Call Proc_70_62_E453B0()
  loc_E4B4B3: End If
  loc_E4B4B3: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '10FBCC4
  'Data Table: 51C24C
  Dim var_9C As String
  Dim var_A0 As MSFlexGrid
  Dim var_B4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10FB998: Set var_88 = Me.TopCtrl1
  loc_10FB99E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10FB9E3: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_10FB9EC:   Call Form_KeyDown(arg_C, arg_10)
  loc_10FB9F1: End If
  loc_10FB9F5: Set var_88 = Me.TopCtrl1
  loc_10FB9FB: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10FBA14: If (CStr() = "Browse") Then
  loc_10FBA17:   Exit Sub
  loc_10FBA18: End If
  loc_10FBA8C: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10FBAA5:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_10FBAB5:   var_9C = "+{Tab}"
  loc_10FBABB:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10FBAC5:   arg_C = 0
  loc_10FBACB: Else
  loc_10FBB22:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10FBB3B:     Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_10FBB45:     arg_C = 0
  loc_10FBB48:   End If
  loc_10FBB48: End If
  loc_10FBB4E: global_72 = arg_C
  loc_10FBB74: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10FBB98: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_10FBBAE:   var_EC = CLng(Me.FGrid.Col)
  loc_10FBBBE:   If (var_EC = CLng(2)) Then
  loc_10FBBD4:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FBBDC:     var_FC = CVar(CLng(2)) 'Long
  loc_10FBBE1:     var_11C = vbNullString
  loc_10FBBEB:     Set var_A0 = Me.FGrid
  loc_10FBBF1:     LateIdCallSt
  loc_10FBC16:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FBC1E:     var_FC = CVar(CLng(1)) 'Long
  loc_10FBC23:     var_11C = vbNullString
  loc_10FBC2D:     Set var_A0 = Me.FGrid
  loc_10FBC33:     LateIdCallSt
  loc_10FBC48:   Else
  loc_10FBC4F:     If (var_EC = CLng(3)) Then
  loc_10FBC65:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FBC7D:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10FBC82:       var_11C = vbNullString
  loc_10FBC8C:       Set var_B4 = Me.FGrid
  loc_10FBC92:       LateIdCallSt
  loc_10FBCAA:     End If
  loc_10FBCAA:   End If
  loc_10FBCAA: End If
  loc_10FBCB0: If (arg_C = &HD) Then
  loc_10FBCB8:   global_104 = 0
  loc_10FBCBB: End If
  loc_10FBCBD: arg_C = 0
  loc_10FBCC0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E5E1EC
  'Data Table: 51C24C
  loc_E5E1B0: Set var_88 = Me.TopCtrl1
  loc_E5E1B6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5E1CF: If (CStr() = "Browse") Then
  loc_E5E1D2:   Exit Sub
  loc_E5E1D3: End If
  loc_E5E1DC: Call FGrid_UnknownEvent_C()
  loc_E5E1E9: Exit Sub
  loc_E5E1EA: Set var_2C00 = 0
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '10148D8
  'Data Table: 51C24C
  Dim var_9C As String
  Dim var_88 As MSFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_10146C8: Set var_88 = Me.TopCtrl1
  loc_10146CE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10146E7: If (CStr() = "Browse") Then
  loc_10146EA:   Exit Sub
  loc_10146EB: End If
  loc_10146FE: var_A0 = CLng(Me.FGrid.Col)
  loc_101470E: If (var_A0 = CLng(2)) Then
  loc_1014715:   Set var_C4 = Me.FGrid
  loc_1014739:   var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_1014766:   Set var_B4 = var_C4
  loc_1014778:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_10147A0:   Set var_88 = Me.TxtGrid
  loc_10147A6:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_10147AE:   0 = var_B4.Text
  loc_10147C7:   If (Len(var_9C) <= 1) Then
  loc_10147D6:     Set var_88 = Me.TxtGrid
  loc_10147DC:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_10147E4:     var_CA = var_B4.Text
  loc_10147F5:     Set var_B8 = Me.TxtGrid
  loc_10147FB:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1014803:     var_C4.Text = var_9C
  loc_1014816:   End If
  loc_1014822:   Set var_88 = Me.TxtGrid
  loc_1014828:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1014842:   Set var_B8 = Me.TxtGrid
  loc_1014848:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1014850:   var_C4.SelStart = Len(var_B4.Text)
  loc_1014866: Else
  loc_101486D:   If (var_A0 = CLng(3)) Then
  loc_10148AE:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_10148C0:   End If
  loc_10148C0: End If
  loc_10148CA: If (CLng(Index) <> &HD) Then
  loc_10148D2:   global_104 = &HFF
  loc_10148D5: End If
  loc_10148D5: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FE39A0
  'Data Table: 51C24C
  Dim var_88 As MSFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE37D0: Set var_88 = Me.TopCtrl1
  loc_FE37D6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE37EF: If (CStr() = "Browse") Then
  loc_FE37F2:   Exit Sub
  loc_FE37F3: End If
  loc_FE3810: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE3813:   Exit Sub
  loc_FE3814: End If
  loc_FE3825: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FE3847:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE3881:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE38A3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE38B9:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE38C2:         Set var_110 = Me.FGrid
  loc_FE38DD:       Else
  loc_FE38F0:         Me.FGrid.Rows = 1
  loc_FE3916:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_FE391E:         Set var_110 = Me.FGrid
  loc_FE394B:         Me.FGrid.FixedRows = 1
  loc_FE3953:       End If
  loc_FE3953:     End If
  loc_FE3956:   Else
  loc_FE3977:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE3987:   End If
  loc_FE398B:   Set var_88 = Me.FGrid
  loc_FE399C: End If
  loc_FE399C: Exit Sub
  loc_FE399D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E46868
  'Data Table: 51C24C
  Dim var_8C As TextBox
  loc_E4683C: Call Proc_70_59_F1C994()
  loc_E4684C: Set var_88 = Me.TxtGrid
  loc_E46852: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4685A: var_8C.Visible = False
  loc_E46866: Exit Sub
End Sub

Public Function global_52Get() '51DB1C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '51DB2B
  global_52 = Value
End Sub

Public Function global_56Get() '51DB3A
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '51DB49
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E971F8
  'Data Table: 51C24C
  Dim Me As Recordset15
  loc_E97186: On Error Goto loc_E971EF
  loc_E9718F: Me.MoveFirst
  loc_E971B9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E971E1: Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_E971E9: Call Proc_70_57_178640C(0)
  loc_E971EE: Exit Sub
  loc_E971EF: ' Referenced from: E97186
  loc_E971EF: Proc_6_60_E63754(var_A0)
  loc_E971F4: Exit Sub
End Sub

Public Sub Proc_70_55_1088CE4
  'Data Table: 51C24C
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_A8 As TextBox
  Dim unk_51C26E As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1088A77: If (Me.RecordCount = 0) Then
  loc_1088A7A:   Proc_70_55_1088CE4 = 
  loc_1088A80: End If
  loc_1088A84: Set var_90 = Me.TopCtrl1
  loc_1088A8A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1088AA3: If (CStr() = "Add") Then
  loc_1088AD0:   var_B0 = "Select Count(*) From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' AND Name='"
  loc_1088AE1:   Set var_90 = Me.Txt
  loc_1088AE7:   Call 0.Method_Proc_70_55_1088CE40 (CInt(0), var_A8, var_AC, var_B0, var_A0, -1)
  loc_1088B08:   unk_51C26E.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1088B18:    = var_D0.Item()
  loc_1088B20:    = var_E4.Value
  loc_1088B51:   If (var_A8.Text.Fields > 0) Then
  loc_1088B6F:     var_A0 = "Duplicate Name"
  loc_1088B75:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1088B90:     Set var_90 = Me.Txt
  loc_1088B96:     Call 0.Method_Proc_70_55_1088CE40 (CInt(0))
  loc_1088B9E:     var_A8.SetFocus
  loc_1088BAF:     Proc_70_55_1088CE4 = &HFF
  loc_1088BB5:   End If
  loc_1088BB8: Else
  loc_1088BE2:   var_B0 = "Select Count(*) From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' AND Code='"
  loc_1088BF3:   Set var_90 = Me.Txt
  loc_1088BF9:   Call 0.Method_Proc_70_55_1088CE40 (CInt(0), var_A8, var_AC, var_B0, var_A0, -1)
  loc_1088C2B:   unk_51C26E.Execute var_D0 & var_AC & "' And Code<>'" & global_68 & "'", 0, var_E4
  loc_1088C3B:    = var_D0.Item(var_A8)
  loc_1088C43:    = var_E4.Value
  loc_1088C78:   If (var_A8.Tag.Fields > 0) Then
  loc_1088C9C:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1088CB7:     Set var_90 = Me.Txt
  loc_1088CBD:     Call 0.Method_Proc_70_55_1088CE40 (CInt(0))
  loc_1088CC5:     var_A8.SetFocus
  loc_1088CD6:     Proc_70_55_1088CE4 = &HFF
  loc_1088CDC:   End If
  loc_1088CDC: End If
  loc_1088CDC: Proc_70_55_1088CE4 = var_A8
End Sub

Public Sub Proc_70_56_FFDFA0
  'Data Table: 51C24C
  Dim var_98 As Variant
  Dim var_8C As MSFlexGrid
  Dim var_C8 As Variant
  loc_FFDDA2: global_68 = vbNullString
  loc_FFDDB4: Set var_8C = Me.Txt
  loc_FFDDBA: Call 0.Method_Proc_70_56_FFDFA0C (var_8E, var_86)
  loc_FFDDCA: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FFDDE0:   Set var_8C = Me.Txt
  loc_FFDDE6:   Call 0.Method_Proc_70_56_FFDFA00 (CInt(var_86), var_98)
  loc_FFDDEE:   var_98.Text = vbNullString
  loc_FFDE0A:   Set var_8C = Me.Txt
  loc_FFDE10:   Call 0.Method_Proc_70_56_FFDFA00 (CInt(var_86), var_98)
  loc_FFDE18:   var_98.Tag = vbNullString
  loc_FFDE27: Next var_92 'Byte
  loc_FFDE40: Me.FGrid.Rows = 1
  loc_FFDE66: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_FFDE6E: Set var_98 = Me.FGrid
  loc_FFDE9B: Me.FGrid.FixedRows = 1
  loc_FFDEB6: Me.FGBarCode.Rows = 1
  loc_FFDEDC: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGBarCode, CInt(0), FGrid.DispID_10000))) 'String
  loc_FFDEE4: Set var_98 = Me.FGBarCode
  loc_FFDF11: Me.FGBarCode.FixedRows = 1
  loc_FFDF27: Set var_8C = Me.Label1
  loc_FFDF2D: Call 0.Method_Proc_70_56_FFDFA00 (&HE, var_98, &HECD9FB, FGBarCode.DispID_10000)
  loc_FFDF35: var_98.BackColor = var_C8
  loc_FFDF4F: Set var_8C = Me.Txt
  loc_FFDF55: Call 0.Method_Proc_70_56_FFDFA00 (CInt(9), var_98, "No")
  loc_FFDF5D: var_98.Text = var_C8
  loc_FFDF74: If (global_56 = "Banquet") Then
  loc_FFDF85:   Set var_8C = Me.Txt
  loc_FFDF8B:   Call 0.Method_Proc_70_56_FFDFA00 (CInt(2), var_98)
  loc_FFDF93:   var_98.Text = "No"
  loc_FFDF9F: End If
  loc_FFDF9F: Exit Sub
End Sub

Public Sub Proc_70_57_178640C
  'Data Table: 51C24C
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_51C26E As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_124 As Fields15
  Dim var_110 As Variant
  Dim var_190 As Fields15
  Dim var_128 As Variant
  Dim var_120 As Variant
  Dim var_1A4 As TextBox
  Dim var_88 As Recordset15
  Dim var_8A As Integer
  loc_178458C: On Error Goto loc_1786405
  loc_17845A6: If (Me.RecordCount > 0) Then
  loc_17845FF:   unk_51C26E.Execute CStr("Select U_Name,U_AE,U_EntDt From Depart where Code='" & Me.Fields.Item("SearchCode").Value & "'  "), var_120, -1
  loc_178460A:   Set var_90 = var_124
  loc_178465E:   var_124 = var_90.Fields
  loc_17846C7:   var_18C = IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_178470C:   Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("U_Name")), var_18C)))
  loc_1784786:   var_128 = var_90.Fields.Item("U_AE")
  loc_178478E:   var_DC = CVar(var_128) 'Address
  loc_17847E7:   var_18C = IIf((Proc_6_38_E69628(CVar(var_90.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(var_DC) = "E"), "Last Update : ", "entdt : "))
  loc_1784806:   var_1A4 = var_90.Fields.Item("U_EntDt")
  loc_178482C:   Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E69628(CVar(var_1A4))))
  loc_1784864: End If
  loc_178487B: If (Me.RecordCount > 0) Then
  loc_17848BA:   Set var_124 = Me.Txt
  loc_17848C0:   Call 0.Method_Proc_70_57_178640C0 (CInt(0), var_128)
  loc_17848C8:   var_128.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_1784917:   Set var_124 = Me.Txt
  loc_178491D:   Call 0.Method_Proc_70_57_178640C0 (CInt(0), var_128)
  loc_1784925:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_1784972:   Set var_124 = Me.Txt
  loc_1784978:   Call 0.Method_Proc_70_57_178640C0 (CInt(2), var_128)
  loc_1784980:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("K1")))
  loc_17849CD:   Set var_124 = Me.Txt
  loc_17849D3:   Call 0.Method_Proc_70_57_178640C0 (CInt(3), var_128)
  loc_17849DB:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Header1")))
  loc_1784A28:   Set var_124 = Me.Txt
  loc_1784A2E:   Call 0.Method_Proc_70_57_178640C0 (CInt(4), var_128)
  loc_1784A36:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Header2")))
  loc_1784A83:   Set var_124 = Me.Txt
  loc_1784A89:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H21), var_128)
  loc_1784A91:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Header3")))
  loc_1784ADE:   Set var_124 = Me.Txt
  loc_1784AE4:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H22), var_128)
  loc_1784AEC:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Header4")))
  loc_1784B39:   Set var_124 = Me.Txt
  loc_1784B3F:   Call 0.Method_Proc_70_57_178640C0 (CInt(5), var_128)
  loc_1784B47:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Phone")))
  loc_1784B94:   Set var_124 = Me.Txt
  loc_1784B9A:   Call 0.Method_Proc_70_57_178640C0 (CInt(6), var_128)
  loc_1784BA2:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Slogan1")))
  loc_1784BEF:   Set var_124 = Me.Txt
  loc_1784BF5:   Call 0.Method_Proc_70_57_178640C0 (CInt(7), var_128)
  loc_1784BFD:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Slogan2")))
  loc_1784C4A:   Set var_124 = Me.Txt
  loc_1784C50:   Call 0.Method_Proc_70_57_178640C0 (CInt(8), var_128)
  loc_1784C58:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LstNo")))
  loc_1784CA8:   Set var_124 = Me.Txt
  loc_1784CAE:   Call 0.Method_Proc_70_57_178640C0 (CInt(9), var_128)
  loc_1784CB6:   var_128.Text = CStr(Me.Fields.Item("Comp1").Value)
  loc_1784D05:   Set var_124 = Me.Txt
  loc_1784D0B:   Call 0.Method_Proc_70_57_178640C0 (CInt(&HA), var_128)
  loc_1784D13:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ShortName")))
  loc_1784D60:   Set var_124 = Me.Txt
  loc_1784D66:   Call 0.Method_Proc_70_57_178640C0 (CInt(1), var_128)
  loc_1784D6E:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RestType")))
  loc_1784DBB:   Set var_124 = Me.Txt
  loc_1784DC1:   Call 0.Method_Proc_70_57_178640C0 (CInt(&HB), var_128)
  loc_1784DC9:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LinkRoom")))
  loc_1784E16:   Set var_124 = Me.Txt
  loc_1784E1C:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H13), var_128)
  loc_1784E24:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("P_Name")))
  loc_1784E71:   Set var_124 = Me.Txt
  loc_1784E77:   Call 0.Method_Proc_70_57_178640C0 (CInt(&HE), var_128)
  loc_1784E7F:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Roff")))
  loc_1784ECC:   Set var_124 = Me.Txt
  loc_1784ED2:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H12), var_128)
  loc_1784EDA:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("MemberInfo")))
  loc_1784F27:   Set var_124 = Me.Txt
  loc_1784F2D:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H2D), var_128)
  loc_1784F35:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DisPrint")))
  loc_1784F82:   Set var_124 = Me.Txt
  loc_1784F88:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H2E), var_128)
  loc_1784F90:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelPrinting")))
  loc_1784FDD:   Set var_124 = Me.Txt
  loc_1784FE3:   Call 0.Method_Proc_70_57_178640C0 (CInt(&HC), var_128)
  loc_1784FEB:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RateIncl")))
  loc_1785038:   Set var_124 = Me.Txt
  loc_178503E:   Call 0.Method_Proc_70_57_178640C0 (CInt(&HD), var_128)
  loc_1785046:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DiscApp")))
  loc_178507C:   var_BC = CVar(Me.Fields.Item("BackColor")) 'Address
  loc_1785083:   Proc_6_39_E7D3A0(var_DC)
  loc_1785096:   Set var_124 = Me.Label1
  loc_178509C:   Call 0.Method_Proc_70_57_178640C0 (&HE, var_128)
  loc_17850A4:   var_128.BackColor = CLng(var_DC)
  loc_17850F2:   Set var_124 = Me.Txt
  loc_17850F8:   Call 0.Method_Proc_70_57_178640C0 (CInt(&HF), var_128)
  loc_1785100:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TokenPrint")))
  loc_178514D:   Set var_124 = Me.Txt
  loc_1785153:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H1C), var_128)
  loc_178515B:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TokenPrintAfter")))
  loc_17851A8:   Set var_124 = Me.Txt
  loc_17851AE:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H23), var_128)
  loc_17851B6:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PrintTokenNo")))
  loc_1785203:   Set var_124 = Me.Txt
  loc_1785209:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H10), var_128)
  loc_1785211:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Order_Booking")))
  loc_178525E:   Set var_124 = Me.Txt
  loc_1785264:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H11), var_128)
  loc_178526C:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Outl")))
  loc_17852EE:   Set var_124 = Me.Txt
  loc_17852F4:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H14), var_128)
  loc_17852FC:   var_128.Text = CStr(IIf((Me.Fields.Item("SplitBill").Value = "Y"), "Yes", "No"))
  loc_1785355:   Set var_124 = Me.Txt
  loc_178535B:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H15), var_128)
  loc_1785363:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CustInfo")))
  loc_17853B0:   Set var_124 = Me.Txt
  loc_17853B6:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H16), var_128)
  loc_17853BE:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CstNo")))
  loc_178540B:   Set var_124 = Me.Txt
  loc_1785411:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H17), var_128)
  loc_1785419:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CKOTPrintYN")))
  loc_1785466:   Set var_124 = Me.Txt
  loc_178546C:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H25), var_128)
  loc_1785474:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PrintType")))
  loc_17854D0:   var_128 = Me.Fields.Item("BarCodePartitionAppOn")
  loc_17854D8:   var_DC = CVar(var_128) 'Address
  loc_1785501:   var_14C = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("BarCodePartitionAppOn"))) = vbNullString), "NONE", CVar(Proc_6_38_E69628(var_DC)))
  loc_1785518:   Set var_190 = Me.Txt
  loc_178551E:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H2C), var_1A4)
  loc_1785526:   var_1A4.Text = CStr(var_14C)
  loc_1785587:   Set var_124 = Me.Txt
  loc_178558D:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H18), var_128)
  loc_1785595:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CKOTPrintPath")))
  loc_17855D2:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Fields.Item("CurTokenNo")))
  loc_17855E9:   Set var_124 = Me.Txt
  loc_17855EF:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H19), var_128)
  loc_17855F7:   var_128.Text = CStr(var_DC)
  loc_1785638:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Fields.Item("CurTokenNoKOT")))
  loc_178564F:   Set var_124 = Me.Txt
  loc_1785655:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H2A), var_128)
  loc_178565D:   var_128.Text = CStr(var_DC)
  loc_178569E:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Fields.Item("NoOfKot")))
  loc_17856B5:   Set var_124 = Me.Txt
  loc_17856BB:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H1A), var_128)
  loc_17856C3:   var_128.Text = CStr(var_DC)
  loc_1785704:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Fields.Item("NoOfBill")))
  loc_178571B:   Set var_124 = Me.Txt
  loc_1785721:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H1B), var_128)
  loc_1785729:   var_128.Text = CStr(var_DC)
  loc_178577A:   Set var_124 = Me.Txt
  loc_1785780:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H1D), var_128)
  loc_1785788:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("OrderBookCom1")))
  loc_17857D5:   Set var_124 = Me.Txt
  loc_17857DB:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H1E), var_128)
  loc_17857E3:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("OrderBookCom2")))
  loc_1785830:   Set var_124 = Me.Txt
  loc_1785836:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H27), var_128)
  loc_178583E:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("SaleBillTokenHeader1")))
  loc_178588B:   Set var_124 = Me.Txt
  loc_1785891:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H1F), var_128)
  loc_1785899:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PrintOnSave")))
  loc_17858E6:   Set var_124 = Me.Txt
  loc_17858EC:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H24), var_128)
  loc_17858F4:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("AutoSettlement")))
  loc_1785941:   Set var_124 = Me.Txt
  loc_1785947:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H26), var_128)
  loc_178594F:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("WScaleApp")))
  loc_178599C:   Set var_124 = Me.Txt
  loc_17859A2:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H28), var_128)
  loc_17859AA:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("BarCodeApp")))
  loc_17859F7:   Set var_124 = Me.Txt
  loc_17859FD:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H29), var_128)
  loc_1785A05:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("AutoResetToken")))
  loc_1785A52:   Set var_124 = Me.Txt
  loc_1785A58:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H2F), var_128)
  loc_1785A60:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FreeItemApp")))
  loc_1785AAD:   Set var_124 = Me.Txt
  loc_1785AB3:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H30), var_128)
  loc_1785ABB:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CoverMandatory")))
  loc_1785B08:   Set var_124 = Me.Txt
  loc_1785B0E:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H31), var_128)
  loc_1785B16:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("MobileNoMandatory")))
  loc_1785B63:   Set var_124 = Me.Txt
  loc_1785B69:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H2B), var_128)
  loc_1785B71:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DirectBilling")))
  loc_1785BAE:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Fields.Item("BookOfBills")))
  loc_1785BC5:   Set var_124 = Me.Txt
  loc_1785BCB:   Call 0.Method_Proc_70_57_178640C0 (CInt(&H20), var_128)
  loc_1785BD3:   var_128.Text = CStr(var_DC)
  loc_1785C49:   Set var_124 = Me.ChkDisc
  loc_1785C4F:   Call 0.Method_Proc_70_57_178640C0 (CInt(0), var_128)
  loc_1785C57:   var_128.Value = CInt(IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("GrpDiscApp"))) = "Y"), 1, 0))
  loc_1785C96:   var_AC = Me.Fields.Item("BarCodeApp")
  loc_1785CB8:   If (var_AC.Value = "Yes") Then
  loc_1785CC9:     Me.FGBarCode.Visible = True
  loc_1785CDC:     Set var_98 = Me.Label1
  loc_1785CE2:     Call 0.Method_Proc_70_57_178640C0 (&H50, var_AC)
  loc_1785CEA:     var_AC.Visible = True
  loc_1785D01:     Set var_98 = Me.Txt
  loc_1785D07:     Call 0.Method_Proc_70_57_178640C0 (&H2C, var_AC)
  loc_1785D0F:     var_AC.Visible = True
  loc_1785D1E:   Else
  loc_1785D2D:     Me.FGBarCode.Visible = False
  loc_1785D40:     Set var_98 = Me.Label1
  loc_1785D46:     Call 0.Method_Proc_70_57_178640C0 (&H50, var_AC)
  loc_1785D4E:     var_AC.Visible = False
  loc_1785D65:     Set var_98 = Me.Txt
  loc_1785D6B:     Call 0.Method_Proc_70_57_178640C0 (&H2C, var_AC)
  loc_1785D73:     var_AC.Visible = False
  loc_1785D7F:   End If
  loc_1785DBE:   If (Me.Fields.Item("Order_Booking").Value = "Yes") Then
  loc_1785DCD:     Me.Frame2.Visible = True
  loc_1785DD8:   Else
  loc_1785DE4:     Me.Frame2.Visible = False
  loc_1785DEC:   End If
  loc_1785E00:   var_100 = "Select SD.SchemeCode, SM.Name, SD.DiscPer, SD.RestCode from SchemeOutletDiscount SD Inner Join SchemeMast SM On SD.SchemeCode = SM.Code where (SD.LOGSITE_CODE='" & MemVar_1F95078
  loc_1785E40:   var_120 = CVar(var_100 & "' or SD.LOGSITE_CODE='HO') AND SD.RestCode='") & Me.Fields.Item("SearchCode").Value & "' Order By SM.Name" 
  loc_1785E4E:   unk_51C26E.Execute CStr(var_120), var_14C, -1
  loc_1785E59:   Set var_88 = var_124
  loc_1785E8C:   Me.FGrid.Rows = 1
  loc_1785E98:   Set var_124 = Me.FGrid
  loc_1785EB2:   var_BC = CVar(CStr(Proc_6_127_F25B10(var_124, CInt(0)))) 'String
  loc_1785EBA:   Set var_AC = Me.FGrid
  loc_1785EE7:   Me.FGrid.FixedRows = 1
  loc_1785F03:   If (var_88.RecordCount > 0) Then
  loc_1785F08:     var_8A = 1
  loc_1785F1F:     var_A8 = CVar((var_88.RecordCount + 1)) 'Long
  loc_1785F2E:     Me.FGrid.Rows = 1
  loc_1785F36:     ' Referenced from: 17860ED
  loc_1785F45:     If Not(var_88.EOF) Then
  loc_1785F4C:       Set var_1EC = Me.FGrid
  loc_1785F53:       var_A8 = CVar(CLng(var_8A)) 'Long
  loc_1785F5B:       var_EC = CVar(CLng(0)) 'Long
  loc_1785F65:       var_BC = CVar(CStr(var_8A)) 'String
  loc_1785F6C:       LateIdCallSt
  loc_1785F7B:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_1785F83:       var_110 = CVar(CLng(1)) 'Long
  loc_1785FB3:       var_DC = CVar(CStr(var_88.Fields.Item("SchemeCode").Value)) 'String
  loc_1785FBA:       LateIdCallSt
  loc_1786009:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1EC, var_DC, CVar(CLng(2)), CVar(CLng(var_8A)))) 'String
  loc_1786010:       LateIdCallSt
  loc_1786059:       Proc_6_47_EF6560(var_DC, CVar(var_88.Fields.Item("DiscPer")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1EC, var_DC)
  loc_1786062:       var_FC = CVar(CStr(var_DC)) 'String
  loc_1786069:       LateIdCallSt
  loc_1786081:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_1786089:       var_110 = CVar(CLng(4)) 'Long
  loc_17860B9:       var_DC = CVar(CStr(var_88.Fields.Item("RestCode").Value)) 'String
  loc_17860C0:       LateIdCallSt
  loc_17860D8:       Set var_1EC = Nothing 
  loc_17860E2:       var_8A = (var_8A + 1)
  loc_17860E8:       var_88.MoveNext
  loc_17860ED:       GoTo loc_1785F36
  loc_17860F0:     End If
  loc_17860F0:   End If
  loc_1786104:   var_100 = "Select BD.BarCodePart, BD.BarCodeStartFrom, BD.BarCodeLength, BD.RestCode from OutletBarCodePartDetail BD where (BD.LOGSITE_CODE='" & MemVar_1F95078
  loc_1786144:   var_120 = CVar(var_100 & "' or BD.LOGSITE_CODE='HO') AND BD.RestCode='") & Me.Fields.Item("SearchCode").Value & "' Order By BD.BarCodeStartFrom" 
  loc_1786152:   unk_51C26E.Execute CStr(var_120), var_14C, -1
  loc_178615D:   Set var_88 = var_124
  loc_1786190:   Me.FGBarCode.Rows = 1
  loc_178619C:   Set var_124 = Me.FGBarCode
  loc_17861B6:   var_BC = CVar(CStr(Proc_6_127_F25B10(var_124, CInt(0), var_124, var_8A, var_1EC))) 'String
  loc_17861BE:   Set var_AC = Me.FGBarCode
  loc_17861EB:   Me.FGBarCode.FixedRows = 1
  loc_1786207:   If (var_88.RecordCount > 0) Then
  loc_178620C:     var_8A = 1
  loc_1786223:     var_A8 = CVar((var_88.RecordCount + 1)) 'Long
  loc_1786232:     Me.FGBarCode.Rows = 1
  loc_178623A:     ' Referenced from: 17863EC
  loc_1786249:     If Not(var_88.EOF) Then
  loc_1786250:       Set var_1F0 = Me.FGBarCode
  loc_1786257:       var_A8 = CVar(CLng(var_8A)) 'Long
  loc_1786269:       var_BC = CVar(CStr(var_8A)) 'String
  loc_1786270:       LateIdCallSt
  loc_178628F:       var_A8 = "BarCodePart"
  loc_17862B4:       var_DC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A8)), CVar(CLng(1)), CVar(CLng(var_8A)), var_1F0, CVar(var_88.Fields.Item(var_A8)), CVar(CLng(0)), var_A8)) 'String
  loc_17862BB:       LateIdCallSt
  loc_1786304:       Proc_6_48_EF4E00(var_DC, CVar(var_88.Fields.Item("BarCodeStartFrom")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1F0, var_DC)
  loc_1786314:       LateIdCallSt
  loc_178635F:       Proc_6_48_EF4E00(var_DC, CVar(var_88.Fields.Item("BarCodeLength")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1F0, CVar(CStr(var_DC)))
  loc_178636F:       LateIdCallSt
  loc_178638F:       var_110 = CVar(CLng(4)) 'Long
  loc_17863B3:       var_BC = CVar(var_88.Fields.Item("RestCode")) 'Address
  loc_17863BC:       var_DC = CVar(Proc_6_38_E69628(var_BC, var_110, CVar(CLng(var_8A)), var_1F0, CVar(CStr(var_DC)), var_8A)) 'String
  loc_17863C3:       LateIdCallSt
  loc_17863D7:       Set var_1F0 = Nothing 
  loc_17863E1:       var_8A = (var_8A + 1)
  loc_17863E7:       var_88.MoveNext
  loc_17863EC:       GoTo loc_178623A
  loc_17863EF:     End If
  loc_17863EF:   End If
  loc_17863F4:   Set var_88 = Nothing
  loc_17863FA: Else
  loc_17863FA:   Call Proc_70_56_FFDFA0(var_8A, var_1F0, var_DC, FGBarCode.DispID_10000)
  loc_17863FF: End If
  loc_17863FF: Call Proc_70_59_F1C994(var_BC, var_DC)
  loc_1786404: Exit Sub
  loc_1786405: ' Referenced from: 178458C
  loc_1786405: Proc_6_60_E63754(var_110)
  loc_178640A: Exit Sub
End Sub

Public Sub Proc_70_58_EBBA44(arg_C) 'EBBA44
  'Data Table: 51C24C
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_EBB9AE: Set var_8C = Me.Txt
  loc_EBB9B4: Call 0.Method_Proc_70_58_EBBA44C (var_8E, var_86)
  loc_EBB9C4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EBB9DA:   Set var_8C = Me.Txt
  loc_EBB9E0:   Call 0.Method_Proc_70_58_EBBA440 (CInt(var_86), var_98)
  loc_EBB9E8:   var_98.Enabled = arg_C
  loc_EBB9F7: Next var_92 'Byte
  loc_EBBA0A: Me.FrDiscType.Enabled = arg_C
  loc_EBBA18: If (MemVar_1F950B8 <> 1) Then
  loc_EBBA28:   Set var_8C = Me.Txt
  loc_EBBA2E:   Call 0.Method_Proc_70_58_EBBA440 (CInt(&H2B), var_98)
  loc_EBBA36:   var_98.Enabled = False
  loc_EBBA42: End If
  loc_EBBA42: Exit Sub
End Sub

Public Sub Proc_70_59_F1C994
  'Data Table: 51C24C
  loc_F1C8A8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F1C8BA:   Me.DGHelp.Visible = False
  loc_F1C8C2: End If
  loc_F1C8DE: If (CBool(Me.DGSch.Visible) = &HFF) Then
  loc_F1C8F0:   Me.DGSch.Visible = False
  loc_F1C8F8: End If
  loc_F1C913: If (Me.FrmList.Visible = &HFF) Then
  loc_F1C922:   Me.FrmList.Visible = False
  loc_F1C92A: End If
  loc_F1C945: If (Me.FrmList1.Visible = &HFF) Then
  loc_F1C954:   Me.FrmList1.Visible = False
  loc_F1C95C: End If
  loc_F1C978: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F1C98A:   Me.FGPoint.Visible = False
  loc_F1C992: End If
  loc_F1C992: Exit Sub
End Sub

Public Sub Proc_70_60_E83B18
  'Data Table: 51C24C
  loc_E83AB8: Call Proc_70_59_F1C994()
  loc_E83AF4: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E83AF7:   Call TopCtrl1_UnknownEvent_16()
  loc_E83AFF: Else
  loc_E83B05:   Call 0.Method_arg_1E8 (var_108)
  loc_E83B0D:   Call var_108.SetFocus
  loc_E83B16: End If
  loc_E83B16: Exit Sub
End Sub

Public Sub Proc_70_61_F58EBC(arg_C) 'F58EBC
  'Data Table: 51C24C
  Dim var_144 As Integer
  Dim var_D8 As String
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim unk_51C26E As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim var_158 As Variant
  loc_F58DCD: var_144 = 0
  loc_F58DE3: var_D8 = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE SUBSTRING(Code,1,3) ='"
  loc_F58DF1: var_C8 = (CVar(MemVar_1F95070) + Left(arg_C, 1))
  loc_F58E0C: unk_51C26E.Execute CStr(var_D8 & var_C8 & "' AND ISNUMERIC(SUBSTRING(Code,4,3))=1"), var_12C, -1
  loc_F58E14: var_130 = var_130.Fields
  loc_F58E1C: var_144 = var_134.Item(var_134)
  loc_F58E24: var_148 = var_148.Value
  loc_F58E73: var_E8 = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) + Left(arg_C, 1))
  loc_F58E9F: var_158 = (1 + Format(CStr(var_158), "000"))
  loc_F58EA4: var_88 = CStr(var_158)
  loc_F58EB6: Proc_70_61_F58EBC = 1
End Sub

Public Sub Proc_70_62_E453B0
  'Data Table: 51C24C
  loc_E4538C: Set var_88 = Me.TopCtrl1
  loc_E45392: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E453AB: If (CStr() = "Browse") Then
  loc_E453AE:   Exit Sub
  loc_E453AF: End If
  loc_E453AF: Exit Sub
End Sub

Public Sub Proc_70_63_13285F4(arg_C) '13285F4
  'Data Table: 51C24C
  Dim var_8E As Integer
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_11C As MSFlexGrid
  Dim var_12C As Variant
  Dim var_B8 As String
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_130 As Variant
  Dim var_174 As String
  Dim var_178 As MSFlexGrid
  Dim var_188 As Variant
  Dim var_1DC As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_1E4 As Long
  loc_1327E77: var_8E = arg_C
  loc_1327E80: If (var_8E = 0) Then
  loc_1327E96:   var_A8 = CLng(Me.FGrid.Col)
  loc_1327EA6:   If (var_A8 = CLng(2)) Then
  loc_1327EF7:     Set var_94 = Me.TxtGrid
  loc_1327EFD:     Call 0.Method_Proc_70_63_13285F40 (arg_C, var_B4, var_B8)
  loc_1327F05:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_1327F1D:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_1327F33:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1327F3B:       var_E8 = CVar(CLng(2)) 'Long
  loc_1327F40:       var_108 = vbNullString
  loc_1327F4A:       Set var_B4 = Me.FGrid
  loc_1327F50:       LateIdCallSt
  loc_1327F75:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1327F7D:       var_E8 = CVar(CLng(1)) 'Long
  loc_1327F82:       var_108 = vbNullString
  loc_1327F8C:       Set var_B4 = Me.FGrid
  loc_1327F92:       LateIdCallSt
  loc_1327FA7:     Else
  loc_1327FD4:       Set var_94 = Me.TxtGrid
  loc_1327FDA:       Call 0.Method_Proc_70_63_13285F40 (arg_C, var_B4, var_B8, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_B4, var_108)
  loc_1327FE2:       var_E8 = var_B4.Text
  loc_1327FEA:       var_12C = CVar(var_B8) 'String
  loc_1327FF2:       Set var_130 = Me.FGrid
  loc_1327FF8:       LateIdCallSt
  loc_132802B:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1328033:       var_E8 = CVar(CLng(1)) 'Long
  loc_132804D:       var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_132806B:       var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1328073:       var_150 = CVar(CLng(1)) 'Long
  loc_132808D:       var_174 = CStr(Me.FGrid.TextMatrix))
  loc_13280F8:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_132810E:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1328116:         var_F8 = CVar(CLng(2)) 'Long
  loc_1328149:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1328151:         Set var_130 = Me.FGrid
  loc_1328157:         LateIdCallSt
  loc_1328186:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_132818E:         var_F8 = CVar(CLng(1)) 'Long
  loc_13281B0:         var_B4 = Me.Fields.Item("Code")
  loc_13281C1:         var_140 = CVar(CStr(var_B4.Value)) 'String
  loc_13281C9:         Set var_130 = Me.FGrid
  loc_13281CF:         LateIdCallSt
  loc_13281EB:       End If
  loc_13281EB:     End If
  loc_13281EE:   Else
  loc_13281F5:     If (var_A8 = CLng(3)) Then
  loc_1328202:       Set var_94 = Me.TxtGrid
  loc_1328208:       Call 0.Method_Proc_70_63_13285F40 (arg_C, var_B4, var_130, var_140, var_F8, var_D8, var_130)
  loc_1328227:       Set var_11C = Me.TxtGrid
  loc_132822D:       Call 0.Method_Proc_70_63_13285F40 (arg_C, var_130, var_B8, Not(IsNumeric(CVar(var_B4))), var_140, var_F8)
  loc_1328235:       var_D8 = var_130.Text
  loc_1328257:       If ((var_150 = var_174) Or (CDbl(Val(var_B8)) <= CDbl(0))) Then
  loc_132825E:         var_B8 = CStr(0)
  loc_132826B:         Set var_94 = Me.TxtGrid
  loc_1328271:         Call 0.Method_Proc_70_63_13285F40 (arg_C, var_B4, var_B8)
  loc_1328279:         var_B4.Text = var_108
  loc_132828D:         Proc_70_63_13285F4 = 0
  loc_1328293:       End If
  loc_13282A0:       Set var_94 = Me.TxtGrid
  loc_13282A6:       Call 0.Method_Proc_70_63_13285F40 (arg_C, var_B4, var_B8)
  loc_13282AE:       global_100 = var_B4.Text
  loc_13282C6:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13282CE:       var_F8 = CVar(CLng(3)) 'Long
  loc_13282FA:       var_188 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_1328302:       Set var_130 = Me.FGrid
  loc_1328308:       LateIdCallSt
  loc_1328328:     End If
  loc_1328328:   End If
  loc_132832B: Else
  loc_1328331:   If (var_8E = 1) Then
  loc_1328347:     var_1E4 = CLng(Me.FGBarCode.Col)
  loc_1328357:     If (var_1E4 = CLng(1)) Then
  loc_1328367:       Set var_94 = Me.TxtGrid
  loc_132836D:       Call 0.Method_Proc_70_63_13285F40 (arg_C, var_B4, var_B8, var_1E4, var_130, var_188)
  loc_1328375:       1 = var_B4.Text
  loc_132838C:       If (var_B8 <> vbNullString) Then
  loc_13283A7:         Set var_B4 = Me.ListView1.SelectedItem
  loc_13283AD:         var_B8 = var_B4.Text
  loc_13283BF:         Set var_11C = Me.TxtGrid
  loc_13283C5:         Call 0.Method_Proc_70_63_13285F40 (arg_C, var_130, var_B8, 1)
  loc_13283CD:         var_130.Text = var_F8
  loc_13283E3:       End If
  loc_13283F6:       var_C8 = CVar(CLng(Me.FGBarCode.Row)) 'Long
  loc_13283FF:       Set var_130 = Me.FGBarCode
  loc_1328420:       Set var_94 = Me.TxtGrid
  loc_1328426:       Call 0.Method_Proc_70_63_13285F40 (arg_C, var_B4, var_B8, CVar(CLng(var_130.Col)))
  loc_132842E:       var_C8 = var_B4.Text
  loc_1328436:       var_140 = CVar(var_B8) 'String
  loc_132843E:       Set var_178 = Me.FGBarCode
  loc_1328444:       LateIdCallSt
  loc_1328465:     Else
  loc_132846C:       If Not (var_1E4 = CLng(4)) Then
  loc_1328476:         If (var_1E4 = CLng(3)) Then
  loc_1328479:         End If
  loc_1328483:         Set var_94 = Me.TxtGrid
  loc_1328489:         Call 0.Method_Proc_70_63_13285F40 (arg_C, var_B4, var_178)
  loc_13284A8:         Set var_11C = Me.TxtGrid
  loc_13284AE:         Call 0.Method_Proc_70_63_13285F40 (arg_C, var_130, var_B8, Not(IsNumeric(CVar(var_B4))))
  loc_13284B6:         var_140 = var_130.Text
  loc_13284D8:         If (var_D8 Or (CDbl(Val(var_B8)) <= CDbl(0))) Then
  loc_13284EC:           Set var_94 = Me.TxtGrid
  loc_13284F2:           Call 0.Method_Proc_70_63_13285F40 (arg_C, var_B4)
  loc_13284FA:           var_B4.Text = CStr(0)
  loc_132850E:           Proc_70_63_13285F4 = 0
  loc_1328514:         End If
  loc_1328521:         Set var_94 = Me.TxtGrid
  loc_1328527:         Call 0.Method_Proc_70_63_13285F40 (arg_C, var_B4)
  loc_1328547:         var_D8 = CVar(CLng(Me.FGBarCode.Row)) 'Long
  loc_132855F:         var_F8 = CVar(CLng(Me.FGBarCode.Col)) 'Long
  loc_132858B:         var_1DC = CVar(CStr(Format(CVar(var_B4.Text), "0"))) 'String
  loc_1328593:         Set var_178 = Me.FGBarCode
  loc_1328599:         LateIdCallSt
  loc_13285BD:       End If
  loc_13285BD:     End If
  loc_13285BD:   End If
  loc_13285BD: End If
  loc_13285D1: Set var_94 = Me.TxtGrid
  loc_13285D7: Call 0.Method_Proc_70_63_13285F40 (arg_C, var_B4, 0, &HFF, var_178, var_1DC)
  loc_13285DF: var_B4.MaxLength = 1
  loc_13285EB: Proc_70_63_13285F4 = 1
End Sub

Public Sub Proc_70_64_101C174
  'Data Table: 51C24C
  Dim var_88 As MSFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As String
  loc_101BF44: On Error Goto loc_101C16C
  loc_101BF4B: Set var_88 = Me.FGrid
  loc_101BF62: global_108 = CStr(CLng(var_88.BackColor))
  loc_101BF78: var_88.Cols = 5
  loc_101BF80: var_AC = CVar(CLng(0)) 'Long
  loc_101BF85: var_CC = &HFA
  loc_101BF91: LateIdCallSt
  loc_101BF99: var_AC = 0
  loc_101BFA5: var_CC = CVar(CLng(0)) 'Long
  loc_101BFAA: var_EC = "SNo"
  loc_101BFB3: LateIdCallSt
  loc_101BFBB: var_AC = 1
  loc_101BFC7: var_CC = CVar(CLng(0)) 'Long
  loc_101BFCC: var_EC = "1"
  loc_101BFD5: LateIdCallSt
  loc_101BFE0: var_AC = CVar(CLng(0)) 'Long
  loc_101BFE5: var_CC = &H1C2
  loc_101BFF1: LateIdCallSt
  loc_101BFF9: var_AC = 0
  loc_101C005: var_CC = CVar(CLng(1)) 'Long
  loc_101C00A: var_EC = "Scheme Code"
  loc_101C013: LateIdCallSt
  loc_101C01E: var_AC = CVar(CLng(1)) 'Long
  loc_101C029: var_CC = CVar(CInt(1)) 'Integer
  loc_101C030: LateIdCallSt
  loc_101C03B: var_AC = CVar(CLng(1)) 'Long
  loc_101C040: var_CC = 0
  loc_101C04C: LateIdCallSt
  loc_101C054: var_AC = 0
  loc_101C060: var_CC = CVar(CLng(2)) 'Long
  loc_101C065: var_EC = "Scheme Name"
  loc_101C06E: LateIdCallSt
  loc_101C079: var_AC = CVar(CLng(2)) 'Long
  loc_101C084: var_CC = CVar(CInt(1)) 'Integer
  loc_101C08B: LateIdCallSt
  loc_101C096: var_AC = CVar(CLng(2)) 'Long
  loc_101C09B: var_CC = &HDAC
  loc_101C0A7: LateIdCallSt
  loc_101C0AF: var_AC = 0
  loc_101C0BB: var_CC = CVar(CLng(3)) 'Long
  loc_101C0C0: var_EC = "Disc %"
  loc_101C0C9: LateIdCallSt
  loc_101C0D4: var_AC = CVar(CLng(3)) 'Long
  loc_101C0DF: var_CC = CVar(CInt(7)) 'Integer
  loc_101C0E6: LateIdCallSt
  loc_101C0F1: var_AC = CVar(CLng(3)) 'Long
  loc_101C0F6: var_CC = &H4B0
  loc_101C102: LateIdCallSt
  loc_101C10A: var_AC = 0
  loc_101C116: var_CC = CVar(CLng(4)) 'Long
  loc_101C11B: var_EC = "RestCode"
  loc_101C124: LateIdCallSt
  loc_101C12F: var_AC = CVar(CLng(4)) 'Long
  loc_101C13A: var_CC = CVar(CInt(7)) 'Integer
  loc_101C141: LateIdCallSt
  loc_101C14C: var_AC = CVar(CLng(4)) 'Long
  loc_101C151: var_CC = 0
  loc_101C15D: LateIdCallSt
  loc_101C167: Set var_88 = Nothing 
  loc_101C16B: Exit Sub
  loc_101C16C: ' Referenced from: 101BF44
  loc_101C16C: Proc_6_60_E63754(var_88, var_CC, var_AC, var_88, var_CC, var_AC, var_88, var_EC)
  loc_101C171: Exit Sub
End Sub

Public Sub Proc_70_65_103E074
  'Data Table: 51C24C
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_144 As String
  loc_103DE55: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A4 'Integer
  loc_103DE5F:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_103DE67:   var_D4 = CVar(CLng(1)) 'Long
  loc_103DE92:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_103DEBE:     For var_EC = (var_88 + 1) To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_EC 'Integer
  loc_103DEC8:       var_B4 = CVar(CLng(var_88)) 'Long
  loc_103DED0:       var_D4 = CVar(CLng(1)) 'Long
  loc_103DF13:       var_144 = CStr(Me.FGrid.TextMatrix))
  loc_103DF2D:       If (CVar(CLng(1)) = var_144) Then
  loc_103DF3C:         var_D4 = CVar(CLng(2)) 'Long
  loc_103DF4B:         var_A0 = Me.FGrid.TextMatrix)
  loc_103DF5D:         Call 0.Method_arg_50 (var_144, var_A0, var_D4, CVar(CLng(var_8A)), CVar(CLng(var_8A)), CStr(Me.FGrid.TextMatrix)))
  loc_103DF81:         MsgBox(CVar(CStr(var_A0) & " taken multi times."), &H10, CVar(var_144), var_164, var_174)
  loc_103DF99:         Proc_70_65_103E074 = var_D4
  loc_103DF9F:       End If
  loc_103DFA2:     Next var_EC 'Integer
  loc_103DFAB:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_103DFB3:     var_D4 = CVar(CLng(3)) 'Long
  loc_103DFE3:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <= CDbl(0)) Then
  loc_103E001:       var_A0 = Me.FGrid.TextMatrix)
  loc_103E013:       Call 0.Method_arg_50 (var_178, var_A0, CVar(CLng(2)))
  loc_103E03E:       MsgBox(CVar("DiscIn " & CStr(var_A0) & " should be greated then Zero."), &H10, CVar(var_178), var_164, var_174)
  loc_103E05A:       Proc_70_65_103E074 = CVar(CLng(var_88))
  loc_103E060:     End If
  loc_103E060:   End If
  loc_103E063: Next var_A4 'Integer
  loc_103E06D: Proc_70_65_103E074 = &HFF
End Sub

Public Sub Proc_70_66_E45FCC
  'Data Table: 51C24C
  loc_E45FA8: Set var_88 = Me.TopCtrl1
  loc_E45FAE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E45FC7: If (CStr() = "Browse") Then
  loc_E45FCA:   Exit Sub
  loc_E45FCB: End If
  loc_E45FCB: Exit Sub
End Sub

Public Sub Proc_70_67_1004FE8
  'Data Table: 51C24C
  Dim var_88 As MSFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As String
  loc_1004DD4: On Error Goto loc_1004FE0
  loc_1004DDB: Set var_88 = Me.FGBarCode
  loc_1004DF2: global_108 = CStr(CLng(var_88.BackColor))
  loc_1004E08: var_88.Cols = 5
  loc_1004E0D: var_AC = 0
  loc_1004E19: var_CC = CVar(CLng(0)) 'Long
  loc_1004E1E: var_EC = "SNo"
  loc_1004E27: LateIdCallSt
  loc_1004E2F: var_AC = 1
  loc_1004E3B: var_CC = CVar(CLng(0)) 'Long
  loc_1004E40: var_EC = "1"
  loc_1004E49: LateIdCallSt
  loc_1004E54: var_AC = CVar(CLng(0)) 'Long
  loc_1004E59: var_CC = &H1E0
  loc_1004E65: LateIdCallSt
  loc_1004E6D: var_AC = 0
  loc_1004E79: var_CC = CVar(CLng(1)) 'Long
  loc_1004E7E: var_EC = "BarCode Part"
  loc_1004E87: LateIdCallSt
  loc_1004E92: var_AC = CVar(CLng(1)) 'Long
  loc_1004E9D: var_CC = CVar(CInt(1)) 'Integer
  loc_1004EA4: LateIdCallSt
  loc_1004EAF: var_AC = CVar(CLng(1)) 'Long
  loc_1004EB4: var_CC = &H834
  loc_1004EC0: LateIdCallSt
  loc_1004EC8: var_AC = 0
  loc_1004ED4: var_CC = CVar(CLng(2)) 'Long
  loc_1004ED9: var_EC = "Start From"
  loc_1004EE2: LateIdCallSt
  loc_1004EED: var_AC = CVar(CLng(2)) 'Long
  loc_1004EF8: var_CC = CVar(CInt(7)) 'Integer
  loc_1004EFF: LateIdCallSt
  loc_1004F0A: var_AC = CVar(CLng(2)) 'Long
  loc_1004F0F: var_CC = &H514
  loc_1004F1B: LateIdCallSt
  loc_1004F23: var_AC = 0
  loc_1004F2F: var_CC = CVar(CLng(3)) 'Long
  loc_1004F34: var_EC = "Length"
  loc_1004F3D: LateIdCallSt
  loc_1004F48: var_AC = CVar(CLng(3)) 'Long
  loc_1004F53: var_CC = CVar(CInt(7)) 'Integer
  loc_1004F5A: LateIdCallSt
  loc_1004F65: var_AC = CVar(CLng(3)) 'Long
  loc_1004F6A: var_CC = &H514
  loc_1004F76: LateIdCallSt
  loc_1004F7E: var_AC = 0
  loc_1004F8A: var_CC = CVar(CLng(4)) 'Long
  loc_1004F8F: var_EC = "RestCode"
  loc_1004F98: LateIdCallSt
  loc_1004FA3: var_AC = CVar(CLng(4)) 'Long
  loc_1004FAE: var_CC = CVar(CInt(7)) 'Integer
  loc_1004FB5: LateIdCallSt
  loc_1004FC0: var_AC = CVar(CLng(4)) 'Long
  loc_1004FC5: var_CC = 0
  loc_1004FD1: LateIdCallSt
  loc_1004FDB: Set var_88 = Nothing 
  loc_1004FDF: Exit Sub
  loc_1004FE0: ' Referenced from: 1004DD4
  loc_1004FE0: Proc_6_60_E63754(var_88, var_CC, var_AC, var_88, var_CC, var_AC, var_88, var_EC)
  loc_1004FE5: Exit Sub
End Sub
