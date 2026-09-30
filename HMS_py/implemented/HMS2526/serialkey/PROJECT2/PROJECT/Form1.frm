VERSION 5.00
Begin VB.Form Form1
  Caption = "Form1"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  StartUpPosition = 3 'Windows Default
  Begin TextBox Txt
    Index = 42
    BackColor = &H80000004&
    Left = 6600
    Top = 690
    Width = 2235
    Height = 255
    Visible = 0   'False
    TabIndex = 132
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin Frame Frame1
    Left = 0
    Top = 360
    Width = 15210
    Height = 10500
    TabIndex = 1
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 77
      BackColor = &HFFFFFF&
      Left = 4110
      Top = 2055
      Width = 330
      Height = 255
      TabIndex = 79
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 2
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin TextBox Txt
      Index = 78
      BackColor = &HFFFFFF&
      Left = 4455
      Top = 2055
      Width = 330
      Height = 255
      TabIndex = 78
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 2
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin TextBox Txt
      Index = 76
      BackColor = &HFFFFFF&
      Left = 3720
      Top = 3405
      Width = 435
      Height = 255
      Text = "No"
      TabIndex = 77
      BorderStyle = 0 'None
      MaxLength = 3
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
      Index = 75
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 3405
      Width = 435
      Height = 255
      Text = "No"
      TabIndex = 76
      BorderStyle = 0 'None
      MaxLength = 3
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
    Begin PictureBox Picture7
      Picture = "Form1.frx":0
      Left = 9615
      Top = 2025
      Width = 300
      Height = 285
      TabIndex = 75
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
    End
    Begin TextBox Txt
      Index = 66
      BackColor = &HFFFFFF&
      Left = 6915
      Top = 2055
      Width = 2700
      Height = 255
      TabIndex = 74
      BorderStyle = 0 'None
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
    Begin Frame frmList1
      Left = 75
      Top = 7410
      Width = 1935
      Height = 1725
      Visible = 0   'False
      TabIndex = 73
      BorderStyle = 0 'None
    End
    Begin TextBox Txt
      Index = 8
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 3675
      Width = 3210
      Height = 255
      TabIndex = 72
      BorderStyle = 0 'None
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
      Index = 9
      BackColor = &HFFFFFF&
      Left = 3720
      Top = 3135
      Width = 990
      Height = 255
      TabIndex = 71
      BorderStyle = 0 'None
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
    Begin TextBox Txt
      Index = 23
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 3135
      Width = 435
      Height = 255
      TabIndex = 70
      BorderStyle = 0 'None
      MaxLength = 1
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
      Index = 24
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 2325
      Width = 480
      Height = 255
      Text = "2"
      TabIndex = 69
      BorderStyle = 0 'None
      MaxLength = 2
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
      Index = 25
      BackColor = &HFFFFFF&
      Left = 6810
      Top = 375
      Width = 1290
      Height = 255
      Visible = 0   'False
      TabIndex = 68
      BorderStyle = 0 'None
      MaxLength = 2
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
      Index = 27
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 1785
      Width = 1150
      Height = 255
      TabIndex = 67
      BorderStyle = 0 'None
      MaxLength = 50
      Locked = -1  'True
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
      Index = 14
      BackColor = &HFFFFFF&
      Left = 1995
      Top = 2325
      Width = 480
      Height = 255
      TabIndex = 66
      BorderStyle = 0 'None
      MaxLength = 2
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
      Index = 41
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 2595
      Width = 660
      Height = 255
      TabIndex = 65
      BorderStyle = 0 'None
      MaxLength = 5
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
      Index = 45
      BackColor = &HFFFFFF&
      Left = 2670
      Top = 1785
      Width = 330
      Height = 255
      TabIndex = 64
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 2
      Locked = -1  'True
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin TextBox Txt
      Index = 46
      BackColor = &HFFFFFF&
      Left = 3015
      Top = 1785
      Width = 330
      Height = 255
      TabIndex = 63
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 2
      Locked = -1  'True
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin TextBox Txt
      Index = 39
      BackColor = &HFFFFFF&
      Left = 9060
      Top = 5025
      Width = 540
      Height = 255
      Visible = 0   'False
      TabIndex = 62
      BorderStyle = 0 'None
      MaxLength = 3
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
      Index = 43
      BackColor = &HFFFFFF&
      Left = 6810
      Top = 105
      Width = 1290
      Height = 255
      TabIndex = 61
      BorderStyle = 0 'None
      MaxLength = 50
      Locked = -1  'True
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
      Index = 44
      BackColor = &HFFFFFF&
      Left = 7710
      Top = 6690
      Width = 1290
      Height = 255
      Visible = 0   'False
      TabIndex = 60
      BorderStyle = 0 'None
      MaxLength = 50
      Locked = -1  'True
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
      Index = 26
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 2055
      Width = 480
      Height = 255
      TabIndex = 59
      BorderStyle = 0 'None
      MaxLength = 3
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
      Left = 1500
      Top = 2865
      Width = 2895
      Height = 255
      TabIndex = 58
      BorderStyle = 0 'None
      MaxLength = 50
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
      Index = 22
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 4830
      Width = 3210
      Height = 255
      Enabled = 0   'False
      TabIndex = 57
      BorderStyle = 0 'None
      MaxLength = 30
      Locked = -1  'True
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
      Index = 21
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 5100
      Width = 3210
      Height = 255
      Enabled = 0   'False
      TabIndex = 56
      BorderStyle = 0 'None
      MaxLength = 30
      Locked = -1  'True
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
      Index = 16
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 5370
      Width = 3210
      Height = 255
      Enabled = 0   'False
      TabIndex = 55
      BorderStyle = 0 'None
      MaxLength = 30
      Locked = -1  'True
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
      Index = 12
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 4290
      Width = 3210
      Height = 255
      Enabled = 0   'False
      TabIndex = 54
      BorderStyle = 0 'None
      MaxLength = 24
      Locked = -1  'True
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
      Index = 11
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 4560
      Width = 3210
      Height = 255
      Enabled = 0   'False
      TabIndex = 53
      BorderStyle = 0 'None
      MaxLength = 24
      Locked = -1  'True
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
      Index = 3
      BackColor = &HFFFFFF&
      Left = 3495
      Top = 1455
      Width = 1200
      Height = 255
      Enabled = 0   'False
      TabIndex = 52
      BorderStyle = 0 'None
      MaxLength = 7
      Locked = -1  'True
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
      Index = 19
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 1455
      Width = 1980
      Height = 255
      Enabled = 0   'False
      TabIndex = 51
      BorderStyle = 0 'None
      MaxLength = 30
      Locked = -1  'True
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
      Index = 18
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 1185
      Width = 3195
      Height = 255
      Enabled = 0   'False
      TabIndex = 50
      BorderStyle = 0 'None
      MaxLength = 30
      Locked = -1  'True
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
      Index = 6
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 915
      Width = 1980
      Height = 255
      Enabled = 0   'False
      TabIndex = 49
      BorderStyle = 0 'None
      MaxLength = 35
      Locked = -1  'True
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
      Index = 2
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 645
      Width = 3195
      Height = 255
      Enabled = 0   'False
      TabIndex = 48
      BorderStyle = 0 'None
      MaxLength = 50
      Locked = -1  'True
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
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 375
      Width = 3195
      Height = 255
      Enabled = 0   'False
      TabIndex = 47
      BorderStyle = 0 'None
      MaxLength = 50
      Locked = -1  'True
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
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 105
      Width = 3195
      Height = 255
      Enabled = 0   'False
      TabIndex = 46
      BorderStyle = 0 'None
      MaxLength = 50
      Locked = -1  'True
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
      Index = 20
      BackColor = &HFFFFFF&
      Left = 3495
      Top = 915
      Width = 1200
      Height = 255
      Enabled = 0   'False
      TabIndex = 45
      BorderStyle = 0 'None
      MaxLength = 11
      Locked = -1  'True
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
      Index = 33
      BackColor = &HFFFFFF&
      Left = 6810
      Top = 645
      Width = 1290
      Height = 255
      Visible = 0   'False
      TabIndex = 44
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
      Index = 10
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 4020
      Width = 3210
      Height = 255
      Enabled = 0   'False
      TabIndex = 43
      BorderStyle = 0 'None
      MaxLength = 35
      Locked = -1  'True
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
      Index = 40
      BackColor = &HFFFFFF&
      Left = 6915
      Top = 3135
      Width = 2685
      Height = 255
      TabIndex = 42
      BorderStyle = 0 'None
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 34
      BackColor = &HFFFFFF&
      Left = 6915
      Top = 2325
      Width = 2685
      Height = 255
      TabIndex = 41
      BorderStyle = 0 'None
      MaxLength = 50
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
      Index = 31
      BackColor = &HFFFFFF&
      Left = 6915
      Top = 2595
      Width = 2685
      Height = 255
      TabIndex = 40
      BorderStyle = 0 'None
      MaxLength = 50
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
      Index = 30
      BackColor = &HFFFFFF&
      Left = 6915
      Top = 2865
      Width = 2685
      Height = 255
      TabIndex = 39
      BorderStyle = 0 'None
      MaxLength = 20
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
      Index = 56
      BackColor = &HFFFFFF&
      Left = 6915
      Top = 4755
      Width = 780
      Height = 255
      TabIndex = 38
      BorderStyle = 0 'None
      MaxLength = 5
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
      Index = 28
      BackColor = &HFFFFFF&
      Left = 6915
      Top = 4215
      Width = 780
      Height = 255
      TabIndex = 37
      BorderStyle = 0 'None
      MaxLength = 50
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
      Index = 36
      BackColor = &HFFFFFF&
      Left = 6915
      Top = 5025
      Width = 780
      Height = 255
      TabIndex = 36
      BorderStyle = 0 'None
      MaxLength = 5
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
      Index = 58
      BackColor = &HFFFFFF&
      Left = 6915
      Top = 3945
      Width = 2685
      Height = 255
      TabIndex = 35
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
    Begin Frame FrmList
      Left = 6195
      Top = 8055
      Width = 1935
      Height = 1725
      Visible = 0   'False
      TabIndex = 34
      BorderStyle = 0 'None
    End
    Begin TextBox Txt
      Index = 32
      BackColor = &HFFFFFF&
      Left = 6900
      Top = 6690
      Width = 795
      Height = 255
      Visible = 0   'False
      TabIndex = 33
      BorderStyle = 0 'None
      MaxLength = 9
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
      Index = 57
      BackColor = &HFFFFFF&
      Left = 8565
      Top = 6135
      Width = 1050
      Height = 270
      Visible = 0   'False
      TabIndex = 32
      BorderStyle = 0 'None
      MaxLength = 50
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
      Index = 37
      BackColor = &HFFFFFF&
      Left = 6900
      Top = 6135
      Width = 735
      Height = 270
      Visible = 0   'False
      TabIndex = 31
      BorderStyle = 0 'None
      MaxLength = 9
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
      Index = 55
      BackColor = &HFFFFFF&
      Left = 6900
      Top = 6420
      Width = 2715
      Height = 255
      Visible = 0   'False
      TabIndex = 30
      BorderStyle = 0 'None
      MaxLength = 15
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
      Index = 29
      BackColor = &HFFFFFF&
      Left = 6900
      Top = 5865
      Width = 2715
      Height = 255
      Visible = 0   'False
      TabIndex = 29
      BorderStyle = 0 'None
      MaxLength = 15
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
    Begin CommandButton CmdAdv
      Caption = "Advance Deposit"
      BackColor = &HC8E3E0&
      Left = 9960
      Top = 2310
      Width = 1590
      Height = 1125
      TabIndex = 28
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Advance Deposite Entry"
      MaskColor = &H679481&
    End
    Begin TextBox Txt
      Index = 60
      BackColor = &HFFFFFF&
      Left = 2940
      Top = 2055
      Width = 1150
      Height = 255
      TabIndex = 27
      BorderStyle = 0 'None
      MaxLength = 50
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
    Begin CommandButton Command1
      Caption = "Display Rack"
      BackColor = &H4B897E&
      Left = 9960
      Top = 3450
      Width = 1590
      Height = 1125
      TabIndex = 26
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
      ToolTipText = "Room Look Up"
    End
    Begin CommandButton CmdNextRoom
      Caption = "..."
      Left = 2175
      Top = 2580
      Width = 270
      Height = 270
      TabIndex = 25
      ToolTipText = "Find Next Available Room"
    End
    Begin CommandButton Command3
      Caption = "Walk In with Guest History"
      BackColor = &HC8E3E0&
      Left = 9960
      Top = 1185
      Width = 1590
      Height = 1125
      TabIndex = 20
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &HFFFFFF&
    End
    Begin CommandButton Command2
      Caption = "Duplicate Last Check In"
      BackColor = &HC8E3E0&
      Left = 9960
      Top = 30
      Width = 1590
      Height = 1140
      TabIndex = 19
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &HFFFFFF&
    End
    Begin CommandButton FrmMore
      Caption = "+"
      BackColor = &HC8E3E0&
      Left = 4290
      Top = 90
      Width = 420
      Height = 270
      Visible = 0   'False
      TabIndex = 17
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "More Names"
      MaskColor = &HFFFFFF&
    End
    Begin TextBox Txt
      Index = 61
      BackColor = &HFFFFFF&
      Left = 8820
      Top = 4485
      Width = 780
      Height = 255
      Enabled = 0   'False
      TabIndex = 16
      BorderStyle = 0 'None
      MaxLength = 5
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
      Index = 62
      BackColor = &HFFFFFF&
      Left = 6915
      Top = 4485
      Width = 780
      Height = 255
      Enabled = 0   'False
      TabIndex = 15
      BorderStyle = 0 'None
      MaxLength = 5
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
      Index = 63
      BackColor = &HFFFFFF&
      Left = 6915
      Top = 3405
      Width = 2685
      Height = 255
      TabIndex = 14
      BorderStyle = 0 'None
      MaxLength = 20
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
      Index = 64
      BackColor = &HFFFFFF&
      Left = 6915
      Top = 3675
      Width = 2685
      Height = 255
      TabIndex = 13
      BorderStyle = 0 'None
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 65
      BackColor = &HFFFFFF&
      Left = 6915
      Top = 1785
      Width = 2685
      Height = 255
      TabIndex = 10
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
    Begin CommandButton Command4
      Caption = "Check In"
      BackColor = &HC8E3E0&
      Left = 9960
      Top = 4590
      Width = 1590
      Height = 1125
      TabIndex = 8
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &HFFFFFF&
    End
    Begin PictureBox Picture2
      Picture = "Form1.frx":34E
      Left = 4410
      Top = 2850
      Width = 300
      Height = 270
      TabIndex = 7
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
    End
    Begin PictureBox Picture1
      Picture = "Form1.frx":69C
      Left = 9615
      Top = 1785
      Width = 300
      Height = 270
      TabIndex = 6
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
    End
    Begin PictureBox Picture3
      Picture = "Form1.frx":9EA
      Left = 9615
      Top = 2310
      Width = 300
      Height = 270
      TabIndex = 5
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
    End
    Begin PictureBox Picture4
      Picture = "Form1.frx":D38
      Left = 9615
      Top = 3390
      Width = 300
      Height = 270
      TabIndex = 4
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
    End
    Begin PictureBox Picture5
      Picture = "Form1.frx":1086
      Left = 9615
      Top = 3660
      Width = 300
      Height = 270
      TabIndex = 3
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
    End
    Begin PictureBox Picture6
      Picture = "Form1.frx":13D4
      Left = 2445
      Top = 2580
      Width = 300
      Height = 270
      TabIndex = 2
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
    End
    Begin DataGrid DGTravelAgent
      Left = 11400
      Top = 5280
      Width = 2955
      Height = 3330
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 9
    End
    Begin DataGrid DGSource
      Left = 12960
      Top = 1320
      Width = 3090
      Height = 2250
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 11
    End
    Begin DataGrid DGMarket
      Left = 12000
      Top = 4920
      Width = 2970
      Height = 2490
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 12
    End
    Begin DataGrid DGRoomNo
      Left = 12120
      Top = 2160
      Width = 1965
      Height = 2610
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 18
    End
    Begin DataGrid DGRoomType
      Left = 11880
      Top = 5520
      Width = 4980
      Height = 3330
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 21
    End
    Begin DataGrid DGGuest
      Left = 12120
      Top = 4560
      Width = 4980
      Height = 3330
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 22
    End
    Begin DataGrid DGCompany
      Left = 11880
      Top = 4080
      Width = 4980
      Height = 3330
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 23
    End
    Begin DataGrid DGPayment
      Left = 12480
      Top = 2880
      Width = 3090
      Height = 3330
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 24
    End
    Begin Label Lbl
      Caption = "Company"
      Index = 3
      ForeColor = &H0&
      Left = 225
      Top = 3660
      Width = 870
      Height = 240
      TabIndex = 131
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
    Begin Label Lbl
      Caption = "Room Rate"
      Index = 4
      ForeColor = &H0&
      Left = 2655
      Top = 3135
      Width = 1035
      Height = 240
      TabIndex = 130
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
    Begin Label Lbl
      Caption = "Rate Code"
      Index = 15
      ForeColor = &H0&
      Left = 225
      Top = 3135
      Width = 975
      Height = 240
      TabIndex = 129
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
    Begin Label Lbl
      Caption = "Adult/Child"
      Index = 16
      ForeColor = &H0&
      Left = 225
      Top = 2340
      Width = 960
      Height = 240
      TabIndex = 128
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
    Begin Label Lbl
      Caption = "Reservation No"
      Index = 17
      ForeColor = &H0&
      Left = 5055
      Top = 382
      Width = 1410
      Height = 240
      Visible = 0   'False
      TabIndex = 127
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
    Begin Label Lbl
      Caption = "Arrival Date"
      Index = 18
      ForeColor = &H0&
      Left = 225
      Top = 1785
      Width = 1050
      Height = 240
      TabIndex = 126
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
    Begin Shape Shape1
      BackColor = &H800000&
      BorderColor = &H808080&
      Left = 135
      Top = 1740
      Width = 4710
      Height = 2250
      BorderStyle = 6 'Inside Solid
      FillColor = &HFF80FF&
    End
    Begin Label Lbl
      Caption = "Days"
      Index = 20
      ForeColor = &H0&
      Left = 240
      Top = 2055
      Width = 480
      Height = 240
      TabIndex = 125
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
    Begin Label Lbl
      Caption = "Room Type"
      Index = 22
      ForeColor = &H0&
      Left = 225
      Top = 2865
      Width = 1080
      Height = 240
      TabIndex = 124
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
    Begin Label Lbl
      Caption = "Room No"
      Index = 34
      ForeColor = &H0&
      Left = 225
      Top = 2610
      Width = 870
      Height = 240
      TabIndex = 123
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
    Begin Shape Shape3
      BorderColor = &H808080&
      Left = 4830
      Top = 1740
      Width = 5100
      Height = 3990
      BorderStyle = 6 'Inside Solid
    End
    Begin Label Lbl
      Caption = "Purpose of Visit"
      Index = 24
      ForeColor = &H0&
      Left = 4920
      Top = 2865
      Width = 1395
      Height = 240
      TabIndex = 122
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
    Begin Label Lbl
      Caption = "Arr. From"
      Index = 27
      ForeColor = &H0&
      Left = 4920
      Top = 2325
      Width = 810
      Height = 240
      TabIndex = 121
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
    Begin Label Lbl
      Caption = "Destination"
      Index = 31
      ForeColor = &H0&
      Left = 4920
      Top = 2595
      Width = 1005
      Height = 240
      TabIndex = 120
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
    Begin Label Lbl
      Caption = "Split Folio"
      Index = 32
      ForeColor = &H0&
      Left = 8055
      Top = 5025
      Width = 885
      Height = 240
      Visible = 0   'False
      TabIndex = 119
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
    Begin Label Lbl
      Caption = "Mode of Travel"
      Index = 39
      ForeColor = &H0&
      Left = 4920
      Top = 3135
      Width = 1365
      Height = 240
      TabIndex = 118
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
    Begin Label Lbl
      Caption = "Folio No"
      Index = 36
      ForeColor = &H0&
      Left = 5055
      Top = 112
      Width = 765
      Height = 240
      TabIndex = 117
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
    Begin Label Lbl
      Caption = "Folio Date"
      Index = 37
      ForeColor = &H0&
      Left = 5970
      Top = 6690
      Width = 930
      Height = 240
      Visible = 0   'False
      TabIndex = 116
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
    Begin Label LblVPrefix
      Caption = "VPrefix"
      ForeColor = &H800000&
      Left = 8400
      Top = 112
      Width = 675
      Height = 240
      TabIndex = 115
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
    Begin Shape Shape5
      BackColor = &H8000000F&
      BorderColor = &H808080&
      Left = 4830
      Top = 15
      Width = 5100
      Height = 1740
      BorderStyle = 6 'Inside Solid
    End
    Begin Label LblAmount
      Caption = "."
      ForeColor = &H0&
      Left = 5025
      Top = 1462
      Width = 60
      Height = 240
      TabIndex = 114
      AutoSize = -1  'True
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
    Begin Label LblAddEdit
      Caption = "."
      ForeColor = &H0&
      Left = 5025
      Top = 922
      Width = 60
      Height = 240
      TabIndex = 113
      AutoSize = -1  'True
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
    Begin Label lblDep
      Caption = "."
      ForeColor = &H0&
      Left = 5025
      Top = 1192
      Width = 60
      Height = 240
      TabIndex = 112
      AutoSize = -1  'True
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
    Begin Label LblDay
      Caption = "."
      ForeColor = &H0&
      Left = 3390
      Top = 1785
      Width = 1440
      Height = 240
      TabIndex = 111
      AutoSize = -1  'True
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
    Begin Shape Shape4
      BackColor = &H800000&
      BorderColor = &H808080&
      Left = 135
      Top = 3975
      Width = 4710
      Height = 1755
    End
    Begin Label Lbl
      Caption = "Comments"
      Index = 21
      ForeColor = &HC00000&
      Left = 240
      Top = 4830
      Width = 1095
      Height = 240
      TabIndex = 110
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
    Begin Label Lbl
      Caption = "Mobile"
      Index = 8
      ForeColor = &H0&
      Left = 240
      Top = 4560
      Width = 615
      Height = 255
      TabIndex = 109
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
    Begin Label Lbl
      Caption = "Fax"
      Index = 9
      ForeColor = &H0&
      Left = 240
      Top = 4290
      Width = 330
      Height = 240
      TabIndex = 108
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
    Begin Label Lbl
      Caption = "Phone No(s)"
      Index = 7
      ForeColor = &H0&
      Left = 240
      Top = 4020
      Width = 1125
      Height = 255
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
    Begin Label Lbl
      Caption = "CheckOut Date"
      Index = 26
      ForeColor = &H0&
      Left = 5055
      Top = 652
      Width = 1350
      Height = 240
      Visible = 0   'False
      TabIndex = 106
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
    Begin Label Lbl
      Caption = "Country/Type"
      Index = 13
      ForeColor = &H0&
      Left = 225
      Top = 1470
      Width = 1215
      Height = 240
      TabIndex = 105
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
    Begin Label Lbl
      Caption = "State"
      Index = 12
      ForeColor = &H0&
      Left = 225
      Top = 1200
      Width = 465
      Height = 240
      TabIndex = 104
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
    Begin Label Lbl
      Caption = "City/Zip"
      Index = 11
      ForeColor = &H0&
      Left = 225
      Top = 915
      Width = 675
      Height = 240
      TabIndex = 103
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
    Begin Label Lbl
      Caption = "Address"
      Index = 6
      ForeColor = &H0&
      Left = 225
      Top = 375
      Width = 765
      Height = 240
      TabIndex = 102
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
    Begin Label Lbl
      Caption = "Name"
      Index = 5
      ForeColor = &H0&
      Left = 225
      Top = 105
      Width = 555
      Height = 240
      TabIndex = 101
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
    Begin Shape Shape2
      BackColor = &H800000&
      BorderColor = &H808080&
      Left = 135
      Top = 0
      Width = 4710
      Height = 1740
      BorderStyle = 6 'Inside Solid
    End
    Begin Label Lbl
      Caption = "Disc. Room %"
      Index = 45
      ForeColor = &H0&
      Left = 4920
      Top = 4755
      Width = 1275
      Height = 240
      TabIndex = 100
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
    Begin Label Lbl
      Caption = "Telephone Facility"
      Index = 19
      ForeColor = &H0&
      Left = 4920
      Top = 4215
      Width = 1665
      Height = 240
      TabIndex = 99
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
    Begin Label Lbl
      Caption = "Disc. Room Service %"
      Index = 28
      ForeColor = &H0&
      Left = 4920
      Top = 5025
      Width = 2010
      Height = 240
      TabIndex = 98
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
    Begin Label Lbl
      Caption = "Remarks"
      Index = 50
      ForeColor = &H0&
      Left = 4920
      Top = 3945
      Width = 825
      Height = 240
      TabIndex = 97
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
    Begin Label Lbl
      Caption = "Advance"
      Index = 25
      ForeColor = &H0&
      Left = 4920
      Top = 6690
      Width = 810
      Height = 240
      Visible = 0   'False
      TabIndex = 96
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
    Begin Label Lbl
      Caption = "Exp Date"
      Index = 49
      ForeColor = &H0&
      Left = 7710
      Top = 6150
      Width = 825
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
    Begin Label Lbl
      Caption = "Credit Limit"
      Index = 29
      ForeColor = &H0&
      Left = 4920
      Top = 6150
      Width = 975
      Height = 240
      Visible = 0   'False
      TabIndex = 94
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
    Begin Label Lbl
      Caption = "Account No"
      Index = 46
      ForeColor = &H0&
      Left = 4920
      Top = 6420
      Width = 1035
      Height = 240
      Visible = 0   'False
      TabIndex = 93
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
    Begin Label Lbl
      Caption = "Mode of Payment"
      Index = 23
      ForeColor = &H0&
      Left = 4920
      Top = 5880
      Width = 1575
      Height = 240
      Visible = 0   'False
      TabIndex = 92
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
    Begin Shape Shape6
      BackColor = &H800000&
      BorderColor = &H808080&
      Left = 4845
      Top = 5820
      Width = 4890
      Height = 1260
      Visible = 0   'False
      BorderStyle = 6 'Inside Solid
    End
    Begin Label LblChkOutDay
      Caption = "."
      ForeColor = &H4080&
      Left = 8145
      Top = 652
      Width = 1530
      Height = 240
      TabIndex = 91
      AutoSize = -1  'True
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
    Begin Label Lbl
      Caption = "Dep. Date"
      Index = 38
      ForeColor = &H0&
      Left = 2040
      Top = 2055
      Width = 915
      Height = 240
      TabIndex = 90
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
    Begin Shape Shape8
      BorderColor = &H808080&
      Left = 9915
      Top = 15
      Width = 1635
      Height = 5715
    End
    Begin Label Lbl
      Caption = "Day COS"
      Index = 52
      ForeColor = &H0&
      Left = 4920
      Top = 4485
      Width = 840
      Height = 240
      TabIndex = 89
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
    Begin Label Lbl
      Caption = "Night COS"
      Index = 53
      ForeColor = &H0&
      Left = 7740
      Top = 4500
      Width = 930
      Height = 240
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
    Begin Label Lbl
      Caption = "Business Source"
      Index = 54
      ForeColor = &H0&
      Left = 4920
      Top = 3675
      Width = 1515
      Height = 240
      TabIndex = 87
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
    Begin Label Lbl
      Caption = "Market Segment"
      Index = 55
      ForeColor = &H0&
      Left = 4920
      Top = 3405
      Width = 1470
      Height = 240
      TabIndex = 86
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
    Begin Label Lbl
      Caption = "Travel Agent"
      Index = 56
      ForeColor = &H0&
      Left = 4920
      Top = 1785
      Width = 1155
      Height = 240
      TabIndex = 85
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
    Begin Label Lbl
      Caption = "Plan/Package"
      Index = 59
      ForeColor = &H0&
      Left = 4920
      Top = 2070
      Width = 1290
      Height = 240
      TabIndex = 84
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
    Begin Label Lbl
      Caption = "R.R. Inc Tax"
      Index = 70
      ForeColor = &H0&
      Left = 210
      Top = 3405
      Width = 1050
      Height = 240
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
      Caption = "Yes/No"
      Index = 0
      ForeColor = &H0&
      Left = 1950
      Top = 3435
      Width = 600
      Height = 195
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
      Caption = "Yes/No"
      Index = 1
      ForeColor = &H0&
      Left = 4185
      Top = 3435
      Width = 615
      Height = 195
      TabIndex = 81
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
    Begin Label Lbl
      Caption = "Service Chg."
      Index = 71
      ForeColor = &H0&
      Left = 2640
      Top = 3390
      Width = 1080
      Height = 240
      TabIndex = 80
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
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 375
    TabIndex = 0
  End
  Begin DataGrid DGCity
    Left = 5925
    Top = 3930
    Width = 3420
    Height = 2800
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 133
  End
  Begin Label Lbl
    Caption = "Guest Status"
    Index = 2
    ForeColor = &H0&
    Left = 1950
    Top = 6165
    Width = 1125
    Height = 1155
    TabIndex = 139
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
  Begin Label Lbl
    Caption = "Anniversary"
    Index = 1
    ForeColor = &H0&
    Left = 4335
    Top = 5895
    Width = 1065
    Height = 1155
    TabIndex = 138
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
  Begin Label Lbl
    Caption = "Birth Date"
    Index = 0
    ForeColor = &H0&
    Left = 1950
    Top = 5895
    Width = 870
    Height = 1155
    TabIndex = 137
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
  Begin Label Lbl
    Caption = "Nationality"
    Index = 14
    ForeColor = &H0&
    Left = 1950
    Top = 5625
    Width = 945
    Height = 1155
    TabIndex = 136
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
  Begin Label Lbl
    Caption = "E-Mail"
    Index = 10
    ForeColor = &H0&
    Left = 1950
    Top = 5355
    Width = 570
    Height = 1170
    TabIndex = 135
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
  Begin Label lblLastRoomChangeDate
    Left = 11640
    Top = 2400
    Width = 2295
    Height = 255
    Visible = 0   'False
    TabIndex = 134
  End
  Begin Image GuestImage
    Left = 2535
    Top = 0
    Width = 1815
    Height = 1980
    Visible = 0   'False
    Stretch = -1  'True
  End
End

Attribute VB_Name = "Form1"

