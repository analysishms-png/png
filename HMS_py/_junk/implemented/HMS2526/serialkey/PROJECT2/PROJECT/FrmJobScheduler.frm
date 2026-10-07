VERSION 5.00
Begin VB.Form FrmJobScheduler
  Caption = "Task Scheduler"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 9510
  ClientHeight = 8880
  StartUpPosition = 1 'CenterOwner
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9510
    Height = 420
    TabIndex = 65
  End
  Begin Frame FrMonthly
    Left = 255
    Top = 3060
    Width = 8145
    Height = 870
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Begin ComboBox CMBMonthlyTheDay
      Style = 2
      Left = 2805
      Top = 435
      Width = 1770
      Height = 330
      TabIndex = 52
      List = "FrmJobScheduler.frx":0
      ItemData = "FrmJobScheduler.frx":5F
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
    Begin ComboBox CMBMonthlyThe
      Style = 2
      Left = 1380
      Top = 435
      Width = 1380
      Height = 330
      TabIndex = 51
      List = "FrmJobScheduler.frx":81
      ItemData = "FrmJobScheduler.frx":A8
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
    Begin Frame FrMonthlyFreq
      Caption = "Frame1"
      Left = 0
      Top = 90
      Width = 1095
      Height = 630
      TabIndex = 41
      BorderStyle = 0 'None
      Begin OptionButton OptMonthlyFreq
        Caption = "Day"
        Index = 0
        Left = 15
        Top = 30
        Width = 1365
        Height = 225
        TabIndex = 43
        Value = 255
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
      Begin OptionButton OptMonthlyFreq
        Caption = "The"
        Index = 1
        Left = 15
        Top = 375
        Width = 1365
        Height = 225
        TabIndex = 42
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
    End
    Begin UpDown UpDown1
      Index = 1
      Left = 2040
      Top = 120
      Width = 240
      Height = 255
      TabIndex = 44
    End
    Begin TextBox TxtNumUpDown1
      Index = 1
      Left = 1380
      Top = 90
      Width = 930
      Height = 315
      TabIndex = 45
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
    End
    Begin UpDown UpDown1
      Index = 2
      Left = 4305
      Top = 120
      Width = 240
      Height = 255
      TabIndex = 46
    End
    Begin UpDown UpDown1
      Index = 3
      Left = 6465
      Top = 465
      Width = 240
      Height = 255
      TabIndex = 47
    End
    Begin TextBox TxtNumUpDown1
      Index = 3
      Left = 5805
      Top = 435
      Width = 930
      Height = 315
      TabIndex = 48
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
    End
    Begin TextBox TxtNumUpDown1
      Index = 2
      Left = 3645
      Top = 90
      Width = 930
      Height = 315
      TabIndex = 64
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
    End
    Begin Label LblMonthlyTheMonthOfEvery
      Caption = "month(s)"
      ForeColor = &H0&
      Left = 6915
      Top = 480
      Width = 855
      Height = 210
      TabIndex = 54
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
    Begin Label LblMonthlyTheDayOfEvery
      Caption = "of every"
      ForeColor = &H0&
      Left = 4725
      Top = 480
      Width = 750
      Height = 210
      TabIndex = 53
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
    Begin Label LblMonthlyMonthOfEvery
      Caption = "month(s)"
      ForeColor = &H0&
      Left = 4725
      Top = 135
      Width = 855
      Height = 210
      TabIndex = 50
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
    Begin Label LblMonthlyDayOfEvery
      Caption = "of every"
      ForeColor = &H0&
      Left = 2445
      Top = 120
      Width = 750
      Height = 210
      TabIndex = 49
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
  End
  Begin Frame FrRecur
    Caption = "Frame1"
    Left = 315
    Top = 2640
    Width = 4125
    Height = 420
    TabIndex = 55
    BorderStyle = 0 'None
    Begin UpDown UpDown1
      Index = 0
      Left = 1980
      Top = 120
      Width = 240
      Height = 255
      TabIndex = 56
    End
    Begin TextBox TxtNumUpDown1
      Index = 0
      Left = 1320
      Top = 90
      Width = 930
      Height = 315
      TabIndex = 57
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
    End
    Begin Label LblFrequency
      Caption = "Recurs Every :"
      Index = 1
      ForeColor = &H0&
      Left = 0
      Top = 120
      Width = 1290
      Height = 210
      TabIndex = 59
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
    Begin Label LblFreqRecur
      Caption = "..."
      ForeColor = &H0&
      Left = 2310
      Top = 135
      Width = 180
      Height = 210
      TabIndex = 58
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
  End
  Begin Frame FrWeekly
    Left = 1515
    Top = 3060
    Width = 6825
    Height = 855
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    Begin CheckBox ChkWeekDay
      Caption = "Saturday"
      Index = 7
      Left = 5265
      Top = 105
      Width = 1425
      Height = 315
      TabIndex = 39
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
    Begin CheckBox ChkWeekDay
      Caption = "Friday"
      Index = 6
      Left = 3555
      Top = 105
      Width = 1425
      Height = 315
      TabIndex = 38
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
    Begin CheckBox ChkWeekDay
      Caption = "Thursday"
      Index = 5
      Left = 1845
      Top = 435
      Width = 1425
      Height = 315
      TabIndex = 37
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
    Begin CheckBox ChkWeekDay
      Caption = "Wednesday"
      Index = 4
      Left = 1845
      Top = 105
      Width = 1425
      Height = 315
      TabIndex = 36
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
    Begin CheckBox ChkWeekDay
      Caption = "Tuesday"
      Index = 3
      Left = 135
      Top = 435
      Width = 1425
      Height = 315
      TabIndex = 35
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
    Begin CheckBox ChkWeekDay
      Caption = "Monday"
      Index = 2
      Left = 135
      Top = 105
      Width = 1425
      Height = 315
      TabIndex = 34
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
    Begin CheckBox ChkWeekDay
      Caption = "Sunday"
      Index = 1
      Left = 5265
      Top = 435
      Width = 1425
      Height = 315
      TabIndex = 33
      Value = 1
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
  End
  Begin CommandButton CmdScheduledJobs
    Caption = "Scheduled Tasks"
    Left = 6360
    Top = 480
    Width = 2655
    Height = 315
    TabIndex = 28
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
  Begin CheckBox ChkEnabled
    Caption = "Enabled"
    Left = 6120
    Top = 960
    Width = 1110
    Height = 300
    TabIndex = 27
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 480
    Top = 7200
    Width = 6870
    Height = 1335
    TabIndex = 13
    MultiLine = -1  'True
    ScrollBars = 2
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
  End
  Begin Frame FrSchEndDate
    Caption = "Frame2"
    Left = 4515
    Top = 5565
    Width = 1410
    Height = 630
    TabIndex = 24
    BorderStyle = 0 'None
    Begin OptionButton OptSchEndDate
      Caption = "No End Date"
      Index = 1
      Left = 15
      Top = 375
      Width = 1470
      Height = 225
      TabIndex = 12
      Value = 255
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
    Begin OptionButton OptSchEndDate
      Caption = "End Date :"
      Index = 0
      Left = 15
      Top = 45
      Width = 1470
      Height = 225
      TabIndex = 10
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
  End
  Begin Frame FrDailyFreq
    Caption = "Frame1"
    Left = 270
    Top = 4230
    Width = 1830
    Height = 630
    TabIndex = 16
    BorderStyle = 0 'None
    Begin OptionButton OptDailyFreq
      Caption = "Occurs Every :"
      Index = 1
      Left = 0
      Top = 390
      Width = 1815
      Height = 225
      TabIndex = 5
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
    Begin OptionButton OptDailyFreq
      Caption = "Occurs Once at :"
      Index = 0
      Left = 0
      Top = 45
      Width = 1815
      Height = 225
      TabIndex = 3
      Value = 255
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
  End
  Begin ComboBox CMBOccurType
    Style = 2
    Left = 1635
    Top = 2310
    Width = 1380
    Height = 330
    TabIndex = 2
    List = "FrmJobScheduler.frx":BB
    ItemData = "FrmJobScheduler.frx":D7
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
  Begin ComboBox CMBSchduleType
    Style = 2
    Left = 1650
    Top = 930
    Width = 4320
    Height = 360
    TabIndex = 1
    List = "FrmJobScheduler.frx":E4
    ItemData = "FrmJobScheduler.frx":FD
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
  Begin DTPicker DTPSchStartDate
    Left = 2145
    Top = 5565
    Width = 1515
    Height = 315
    TabIndex = 9
  End
  Begin ComboBox CMBDFOccurUnit
    Style = 2
    Left = 3120
    Top = 4590
    Width = 1380
    Height = 330
    TabIndex = 6
    List = "FrmJobScheduler.frx":107
    ItemData = "FrmJobScheduler.frx":11F
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
  Begin DTPicker DTPDFOccurOnce
    Left = 2160
    Top = 4230
    Width = 1485
    Height = 315
    TabIndex = 4
  End
  Begin DataGrid DGHelp
    Left = 6240
    Top = 7455
    Width = 4395
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 1650
    Top = 480
    Width = 4300
    Height = 315
    TabIndex = 0
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
  End
  Begin DTPicker DTPDFStartTime
    Left = 5955
    Top = 4590
    Width = 1485
    Height = 315
    TabIndex = 7
  End
  Begin DTPicker DTPDFEndTime
    Left = 5955
    Top = 4920
    Width = 1485
    Height = 315
    TabIndex = 8
  End
  Begin DTPicker DTPSchEndDate
    Left = 5955
    Top = 5565
    Width = 1515
    Height = 315
    TabIndex = 11
  End
  Begin UpDown UpDown1
    Index = 4
    Left = 2820
    Top = 4620
    Width = 240
    Height = 255
    TabIndex = 31
  End
  Begin TextBox TxtNumUpDown1
    Index = 4
    Left = 2160
    Top = 4590
    Width = 930
    Height = 315
    TabIndex = 30
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
  End
  Begin DTPicker DTPOTMDate
    Left = 1635
    Top = 1620
    Width = 1515
    Height = 315
    TabIndex = 60
  End
  Begin DTPicker DTPOTMTime
    Left = 3885
    Top = 1620
    Width = 1485
    Height = 315
    TabIndex = 63
  End
  Begin Label LblOneTime
    Caption = "Time :"
    Index = 1
    ForeColor = &H0&
    Left = 3255
    Top = 1650
    Width = 540
    Height = 210
    TabIndex = 62
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
  Begin Label LblOneTime
    Caption = "Date :"
    Index = 0
    ForeColor = &H0&
    Left = 1020
    Top = 1650
    Width = 555
    Height = 210
    TabIndex = 61
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
  Begin Label LblFrequency
    Caption = "Occurs :"
    Index = 0
    ForeColor = &H0&
    Left = 315
    Top = 2340
    Width = 720
    Height = 210
    TabIndex = 29
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
  Begin Label LblOcrEvry
    Caption = "Starting at :"
    Index = 0
    ForeColor = &H0&
    Left = 4755
    Top = 4635
    Width = 1140
    Height = 210
    TabIndex = 26
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
  Begin Label LblOcrEvry
    Caption = "Ending at :"
    Index = 1
    ForeColor = &H0&
    Left = 4755
    Top = 4965
    Width = 1005
    Height = 210
    TabIndex = 25
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
  Begin Label LblSch
    Caption = "Start Date :"
    Index = 2
    ForeColor = &H0&
    Left = 765
    Top = 5595
    Width = 1095
    Height = 210
    TabIndex = 23
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
    Caption = "FrmJobScheduler.frx":129
    Index = 4
    ForeColor = &HC00000&
    Left = 165
    Top = 6900
    Width = 9225
    Height = 195
    TabIndex = 22
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
  Begin Label Lbl
    Caption = "FrmJobScheduler.frx":1BB
    Index = 3
    ForeColor = &HC00000&
    Left = 165
    Top = 5295
    Width = 9225
    Height = 195
    TabIndex = 21
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
  Begin Label Lbl
    Caption = "FrmJobScheduler.frx":250
    Index = 1
    ForeColor = &HC00000&
    Left = 165
    Top = 2040
    Width = 9225
    Height = 195
    TabIndex = 20
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
  Begin Label Lbl
    Caption = "FrmJobScheduler.frx":2E4
    Index = 2
    ForeColor = &HC00000&
    Left = 165
    Top = 3960
    Width = 9225
    Height = 195
    TabIndex = 19
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
  Begin Label Lbl
    Caption = "FrmJobScheduler.frx":376
    Index = 0
    ForeColor = &HC00000&
    Left = 165
    Top = 1305
    Width = 9225
    Height = 195
    TabIndex = 18
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
  Begin Label LblSch
    Caption = "Schedule Type"
    Index = 1
    ForeColor = &H0&
    Left = 165
    Top = 975
    Width = 1320
    Height = 210
    TabIndex = 17
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
  Begin Label LblSch
    Caption = "Name"
    Index = 0
    ForeColor = &H0&
    Left = 180
    Top = 510
    Width = 495
    Height = 210
    TabIndex = 14
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
End

Attribute VB_Name = "FrmJobScheduler"

Private global_72 As Long

Private Sub TxtNumUpDown1_Change(Index As Integer) '1030AF4
  'Data Table: 527B9C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_A8 As Variant
  Dim var_E0 As Variant
  Dim var_94 As String
  loc_10308C7: var_86 = Index
  loc_10308D0: If (var_86 = 2) Then
  loc_10308E3:   Set var_8C = Me.TxtNumUpDown1
  loc_10308E9:   Call 0.Method_TxtNumUpDown1_Change0 (Index, var_90, var_94)
  loc_10308F1:   "01/" = var_90.Text
  loc_1030903:   var_A8 = CVar(Proc_6_34_14EEAAC(var_86 & var_94)) 'String
  loc_1030947:   Set var_DC = Me.UpDown1
  loc_103094D:   Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_E0)
  loc_1030982:   Set var_DC = Me.UpDown1
  loc_1030988:   Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_E0)
  loc_1030990:   var_E0.Min = var_E0.Max
  loc_10309A7:   Set var_8C = Me.TxtNumUpDown1
  loc_10309AD:   Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_90)
  loc_10309DB:   If (CDbl(Val(var_90.Text)) < CDbl(CLng(var_A8))) Then
  loc_10309E9:     Set var_8C = Me.UpDown1
  loc_10309EF:     Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_90)
  loc_10309F7:     var_90.Min = CVar(CLng(Day(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), var_A8)))))
  loc_1030A10:     Set var_DC = Me.TxtNumUpDown1
  loc_1030A16:     Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_E0)
  loc_1030A1E:     var_E0.Text = CStr(CLng())
  loc_1030A34:   End If
  loc_1030A3F:   Set var_DC = Me.UpDown1
  loc_1030A45:   Call 0.Method_TxtNumUpDown1_Change0 (CInt(1))
  loc_1030A4D:   var_E0.Max = var_E0
  loc_1030A64:   Set var_8C = Me.TxtNumUpDown1
  loc_1030A6A:   Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_90)
  loc_1030A98:   If (CDbl(Val(var_90.Text)) > CDbl(CLng(var_A8))) Then
  loc_1030AA6:     Set var_8C = Me.UpDown1
  loc_1030AAC:     Call 0.Method_TxtNumUpDown1_Change0 (CInt(1))
  loc_1030AB4:     var_90.Max = var_90
  loc_1030ACD:     Set var_DC = Me.TxtNumUpDown1
  loc_1030AD3:     Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_E0)
  loc_1030ADB:     var_E0.Text = CStr(CLng())
  loc_1030AF1:   End If
  loc_1030AF1: End If
  loc_1030AF1: Exit Sub
End Sub

Private Sub TxtNumUpDown1_KeyDown(KeyCode As Integer, Shift As Integer) 'E3FAAC
  'Data Table: 527B9C
  loc_E3FA82: If (CLng(Shift) = &H28) Then
  loc_E3FA8B:   Call UpDown1_UnknownEvent_A()
  loc_E3FA90: End If
  loc_E3FA9A: If (CLng(Shift) = &H26) Then
  loc_E3FAA3:   Call UpDown1_UnknownEvent_B()
  loc_E3FAA8: End If
  loc_E3FAA8: Exit Sub
End Sub

Private Sub OptMonthlyFreq_Click() 'F2960C
  'Data Table: 527B9C
  Dim var_8C As OptionButton
  Dim var_88 As ComboBox
  loc_F29504: Set var_88 = Me.OptMonthlyFreq
  loc_F2950A: Call 0.Method_OptMonthlyFreq_Click0 (0, var_8C)
  loc_F29524: If (var_8C.Value = &HFF) Then
  loc_F29533:   Call Proc_320_43_E6BDE0(CInt(1))
  loc_F29542:   Call Proc_320_43_E6BDE0(2, &HFF)
  loc_F2954A: Else
  loc_F29556:   Call Proc_320_43_E6BDE0(CInt(1), 0)
  loc_F29565:   Call Proc_320_43_E6BDE0(2, 0)
  loc_F2956A: End If
  loc_F29576: Set var_88 = Me.OptMonthlyFreq
  loc_F2957C: Call 0.Method_OptMonthlyFreq_Click0 (1, var_8C)
  loc_F29596: If (var_8C.Value = &HFF) Then
  loc_F295A5:   Me.CMBMonthlyThe.Enabled = True
  loc_F295B9:   Me.CMBMonthlyTheDay.Enabled = True
  loc_F295CB:   Call Proc_320_43_E6BDE0(3, &HFF)
  loc_F295D3: Else
  loc_F295DF:   Me.CMBMonthlyThe.Enabled = False
  loc_F295F3:   Me.CMBMonthlyTheDay.Enabled = False
  loc_F29605:   Call Proc_320_43_E6BDE0(3, 0)
  loc_F2960A: End If
  loc_F2960A: Exit Sub
End Sub

Private Sub OptDailyFreq_Click() 'F638F0
  'Data Table: 527B9C
  Dim var_8C As OptionButton
  Dim var_88 As Variant
  loc_F637C4: Set var_88 = Me.OptDailyFreq
  loc_F637CA: Call 0.Method_OptDailyFreq_Click0 (0, var_8C)
  loc_F637E4: If (var_8C.Value = &HFF) Then
  loc_F637F5:   Me.DTPDFOccurOnce.Enabled = True
  loc_F63800: Else
  loc_F6380F:   Me.DTPDFOccurOnce.Enabled = False
  loc_F63817: End If
  loc_F63823: Set var_88 = Me.OptDailyFreq
  loc_F63829: Call 0.Method_OptDailyFreq_Click0 (1, var_8C)
  loc_F63843: If (var_8C.Value = &HFF) Then
  loc_F63852:   Call Proc_320_43_E6BDE0(CInt(4))
  loc_F63863:   Me.CMBDFOccurUnit.Enabled = True
  loc_F63879:   Me.DTPDFStartTime.Enabled = True
  loc_F6388F:   Me.DTPDFEndTime.Enabled = True
  loc_F6389A: Else
  loc_F638A6:   Call Proc_320_43_E6BDE0(CInt(4), 0)
  loc_F638B7:   Me.CMBDFOccurUnit.Enabled = False
  loc_F638CE:   Me.DTPDFStartTime.Enabled = False
  loc_F638E5:   Me.DTPDFEndTime.Enabled = False
  loc_F638ED: End If
  loc_F638ED: Exit Sub
End Sub

Private Sub OptSchEndDate_Click() 'E77B2C
  'Data Table: 527B9C
  Dim var_8C As OptionButton
  Dim var_88 As DTPicker
  loc_E77AD8: Set var_88 = Me.OptSchEndDate
  loc_E77ADE: Call 0.Method_OptSchEndDate_Click0 (0, var_8C)
  loc_E77AF8: If (var_8C.Value = &HFF) Then
  loc_E77B09:   Me.DTPSchEndDate.Enabled = True
  loc_E77B14: Else
  loc_E77B23:   Me.DTPSchEndDate.Enabled = False
  loc_E77B2B: End If
  loc_E77B2B: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F134E0
  'Data Table: 527B9C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F133FC: On Error Goto loc_F134B6
  loc_F1340E: Me.DGHelp.Visible = False
  loc_F1342D: If (Me.RecordCount > 0) Then
  loc_F1344D:   var_B0 = Me.Fields.Item("ScheduleName")
  loc_F1345E:   var_CC = CStr(var_B0.Value)
  loc_F1346C:   Set var_B4 = Me.Txt
  loc_F13472:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F1347A:   var_B8.Text = var_CC
  loc_F13490: End If
  loc_F1349B: Set var_A8 = Me.Txt
  loc_F134A1: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F134A9: var_B0.SetFocus
  loc_F134B5: Exit Sub
  loc_F134B6: ' Referenced from: F133FC
  loc_F134BC: Call 0.Method_arg_50 (var_CC)
  loc_F134D1: Proc_183_57_104B0BC(var_CC, "DGHelp_Click")
  loc_F134DD: Exit Sub
End Sub

Public Sub UpDown1_UnknownEvent_A(Index As Integer) 'EF9A20
  'Data Table: 527B9C
  Dim var_98 As Variant
  Dim var_8C As TextBox
  Dim var_AC As String
  loc_EF9962: Set var_94 = Me.UpDown1
  loc_EF9968: Call 0.Method_UpDown1_UnknownEvent_A0 (Index)
  loc_EF9970: var_98.Min = var_98
  loc_EF9986: Set var_88 = Me.TxtNumUpDown1
  loc_EF998C: Call 0.Method_UpDown1_UnknownEvent_A0 (Index, var_8C)
  loc_EF99BA: If (CDbl(Val(var_8C.Text)) > CDbl(CLng(var_A8))) Then
  loc_EF99CA:   Set var_88 = Me.TxtNumUpDown1
  loc_EF99D0:   Call 0.Method_UpDown1_UnknownEvent_A0 (Index, var_8C)
  loc_EF99EB:   var_AC = CStr((Val(var_8C.Text) - CDbl(1)))
  loc_EF99F8:   Set var_94 = Me.TxtNumUpDown1
  loc_EF99FE:   Call 0.Method_UpDown1_UnknownEvent_A0 (Index, var_98)
  loc_EF9A06:   var_98.Text = var_AC
  loc_EF9A1D: End If
  loc_EF9A1D: Exit Sub
End Sub

Public Sub UpDown1_UnknownEvent_B(Index As Integer) 'EF990C
  'Data Table: 527B9C
  Dim var_98 As Variant
  Dim var_8C As TextBox
  Dim var_AC As String
  loc_EF984E: Set var_94 = Me.UpDown1
  loc_EF9854: Call 0.Method_UpDown1_UnknownEvent_B0 (Index)
  loc_EF985C: var_98.Max = var_98
  loc_EF9872: Set var_88 = Me.TxtNumUpDown1
  loc_EF9878: Call 0.Method_UpDown1_UnknownEvent_B0 (Index, var_8C)
  loc_EF98A6: If (CDbl(Val(var_8C.Text)) < CDbl(CLng(var_A8))) Then
  loc_EF98B6:   Set var_88 = Me.TxtNumUpDown1
  loc_EF98BC:   Call 0.Method_UpDown1_UnknownEvent_B0 (Index, var_8C)
  loc_EF98D7:   var_AC = CStr((Val(var_8C.Text) + CDbl(1)))
  loc_EF98E4:   Set var_94 = Me.TxtNumUpDown1
  loc_EF98EA:   Call 0.Method_UpDown1_UnknownEvent_B0 (Index, var_98)
  loc_EF98F2:   var_98.Text = var_AC
  loc_EF9909: End If
  loc_EF9909: Exit Sub
End Sub

Private Sub Form_Load() '101BA18
  'Data Table: 527B9C
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_527BB8 As Connection15
  loc_101B800: On Error Goto loc_101B9F0
  loc_101B80A: Call 0.Method_arg_74 (CDbl(0))
  loc_101B816: Call 0.Method_arg_7C (CDbl(0))
  loc_101B829: Set var_8C = Me.Txt
  loc_101B82F: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_101B84E: Me.DGHelp.Left = CVar(var_90.Left)
  loc_101B86A: Set var_B8 = Me.Txt
  loc_101B870: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_101B891: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_101B8A9: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_101B8B8: Me.DGHelp.Top = CVar(var_90.Left)
  loc_101B8CA: Call Proc_320_36_F1FE38()
  loc_101B8EA: var_CC = "SELECT Schedule_Id Code,ScheduleName Name FROM JobSchedule WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') ORDER BY ScheduleName"
  loc_101B8F3: unk_527BB8.Execute var_CC, var_DC, -1
  loc_101B922: CVarUnk
  loc_101B927: VerifyVarObj
  loc_101B933: LateIdStAd
  loc_101B955: var_C8 = "SELECT Schedule_Id AS SchCode,ScheduleName AS SchName,Site_Code AS CSite_Code,U_Name AS CU_Name,U_EntDt AS CU_EntDt,U_AE AS CU_AE,Site_Code,LogSite_Code FROM JobSchedule WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_101B965: unk_527BB8.Execute var_C8 & "' OR LOGSITE_CODE='HO') ORDER BY ScheduleName", var_DC, -1
  loc_101B9A0: var_C8 = "INI"
  loc_101B9AE: Call Proc_320_37_11A6E84(Proc_5_1_100EC1C(var_C8, Me, Me.DGHelp, Me), Me)
  loc_101B9B9: Call Proc_320_39_1430C40(Me.Txt)
  loc_101B9CF: If (OpenMode = 1) Then
  loc_101B9DC:   Set var_8C = Me.TopCtrl1
  loc_101B9E2:   Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AE*P")
  loc_101B9EA:   Call TopCtrl1_UnknownEvent_A()
  loc_101B9EF: End If
  loc_101B9EF: Exit Sub
  loc_101B9F0: ' Referenced from: 101B800
  loc_101B9F6: Call 0.Method_arg_50 (var_C8)
  loc_101BA0B: Proc_183_57_104B0BC(var_C8, "Form_Load")
  loc_101BA17: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2A2B0
  'Data Table: 527B9C
  loc_E2A293: Set global_52 = Nothing
  loc_E2A2A5: Set global_56 = Nothing
  loc_E2A2AC: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E6A6A0
  'Data Table: 527B9C
  loc_E6A658: On Error Goto loc_E6A676
  loc_E6A66D: Proc_183_40_F3169C(Me, KeyCode)
  loc_E6A675: Exit Sub
  loc_E6A676: ' Referenced from: E6A658
  loc_E6A67C: Call 0.Method_arg_50 (var_8C)
  loc_E6A691: Proc_183_57_104B0BC(var_8C, "Form_KeyDown")
  loc_E6A69D: Exit Sub
End Sub

Private Sub CMBOccurType_Click() 'FD7BB0
  'Data Table: 527B9C
  loc_FD79E1: Me.LblFreqRecur.Caption = vbNullString
  loc_FD79F5: Me.FrWeekly.Visible = False
  loc_FD7A09: Me.FrMonthly.Visible = False
  loc_FD7A1D: Me.FrRecur.Visible = False
  loc_FD7A45: If (Me.CMBOccurType.Text = "Daily") Then
  loc_FD7A5A:   Call Proc_320_42_FD8A4C(CInt(0), 365)
  loc_FD7A6C:   Me.LblFreqRecur.Caption = "day(s)"
  loc_FD7A80:   Me.FrRecur.Visible = True
  loc_FD7A8B: Else
  loc_FD7AAB:   If (Me.CMBOccurType.Text = "Weekly") Then
  loc_FD7ABF:     Call Proc_320_42_FD8A4C(CInt(0), &H34)
  loc_FD7AD1:     Me.LblFreqRecur.Caption = "week(s) on"
  loc_FD7AE5:     Me.FrRecur.Visible = True
  loc_FD7AF9:     Me.FrWeekly.Visible = True
  loc_FD7B04:   Else
  loc_FD7B24:     If (Me.CMBOccurType.Text = "Monthly") Then
  loc_FD7B36:       Call Proc_320_42_FD8A4C(3, &HC, 1)
  loc_FD7B4A:       Call Proc_320_42_FD8A4C(2, &HC, 1)
  loc_FD7B60:       Call Proc_320_42_FD8A4C(CInt(1), &H1F, 1)
  loc_FD7B84:       Me.FrMonthly.Top = Me.FrRecur.Top
  loc_FD7B9C:       Me.FrMonthly.Visible = True
  loc_FD7BA9:       Call OptMonthlyFreq_Click()
  loc_FD7BAE:     End If
  loc_FD7BAE:   End If
  loc_FD7BAE: End If
  loc_FD7BAE: Exit Sub
End Sub

Private Sub CMBDFOccurUnit_Click() 'E8D564
  'Data Table: 527B9C
  loc_E8D50C: If (Me.CMBDFOccurUnit.Text = "hour(s)") Then
  loc_E8D520:   Call Proc_320_42_FD8A4C(CInt(4), &H18)
  loc_E8D528: Else
  loc_E8D548:   If (Me.CMBDFOccurUnit.Text = "minute(s)") Then
  loc_E8D55C:     Call Proc_320_42_FD8A4C(CInt(4), &H3B)
  loc_E8D561:   End If
  loc_E8D561: End If
  loc_E8D561: Exit Sub
  loc_E8D562: Set arg_2468 = 1
End Sub

Private Sub CMBSchduleType_Click() 'E9A4F0
  'Data Table: 527B9C
  loc_E9A48C: If (Me.CMBSchduleType.Text = "One Time") Then
  loc_E9A49D:   Me.DTPOTMDate.Enabled = True
  loc_E9A4B3:   Me.DTPOTMTime.Enabled = True
  loc_E9A4BE: Else
  loc_E9A4CD:   Me.DTPOTMDate.Enabled = False
  loc_E9A4E4:   Me.DTPOTMTime.Enabled = False
  loc_E9A4EC: End If
  loc_E9A4EC: Exit Sub
  loc_E9A4ED: StAryRecMove
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E894B4
  'Data Table: 527B9C
  Dim var_92 As Integer
  loc_E89450: On Error Goto loc_E89489
  loc_E8945D: Set var_88 = Me.Txt
  loc_E89463: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E89471: Proc_183_28_E216B0(var_8C)
  loc_E8947D: Call Proc_320_41_E5407C(var_8C)
  loc_E89485: var_92 = Index
  loc_E89488: Exit Sub
  loc_E89489: ' Referenced from: E89450
  loc_E8948F: Call 0.Method_arg_50 (var_98)
  loc_E894A4: Proc_183_57_104B0BC(var_98, "Txt_GotFocus")
  loc_E894B0: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F6F690
  'Data Table: 527B9C
  loc_F6F564: On Error Goto loc_F6F665
  loc_F6F571: If (CLng(Shift) = &H1B) Then
  loc_F6F574:   Call Proc_320_41_E5407C()
  loc_F6F579:   Exit Sub
  loc_F6F57A: End If
  loc_F6F588: If (KeyCode = CInt(0)) Then
  loc_F6F5C5:   Proc_183_31_100957C(Me.DGHelp, Me.Txt, CInt(0), global_56)
  loc_F6F5D5: End If
  loc_F6F5F1: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_F6F607:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_F6F610:     Proc_183_30_E53D10(Shift, arg_14, Shift)
  loc_F6F615:   End If
  loc_F6F633:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_F6F636:     GoTo loc_F6F65C
  loc_F6F639:   End If
  loc_F6F64E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F6F657:     Proc_183_29_E53794(Shift, arg_14, 0)
  loc_F6F65C:     ' Referenced from: F6F636
  loc_F6F65C:   End If
  loc_F6F65C: End If
  loc_F6F661: Set var_88 = Nothing
  loc_F6F664: Exit Sub
  loc_F6F665: ' Referenced from: F6F564
  loc_F6F66B: Call 0.Method_arg_50 (var_B8, 1)
  loc_F6F680: Proc_183_57_104B0BC(var_B8, "Txt_KeyDown")
  loc_F6F68C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E6D79C
  'Data Table: 527B9C
  Dim var_96 As Integer
  loc_E6D74C: On Error Goto loc_E6D773
  loc_E6D755: Proc_183_52_E80008(var_94)
  loc_E6D767: Proc_183_46_E07C50(CInt(var_94), CInt(var_94))
  loc_E6D76F: var_96 = KeyAscii
  loc_E6D772: Exit Sub
  loc_E6D773: ' Referenced from: E6D74C
  loc_E6D779: Call 0.Method_arg_50 (var_9C, var_96)
  loc_E6D78E: Proc_183_57_104B0BC(var_9C, "TXT_KeyPress")
  loc_E6D79A: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EBD690
  'Data Table: 527B9C
  loc_EBD5FC: On Error Goto loc_EBD668
  loc_EBD60D: If (KeyCode = CInt(0)) Then
  loc_EBD62C:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBD639:     var_A4 = "Name"
  loc_EBD658:     Proc_183_32_FE97F0(Me.Txt, CInt(0), global_56)
  loc_EBD667:   End If
  loc_EBD667: End If
  loc_EBD667: Exit Sub
  loc_EBD668: ' Referenced from: EBD5FC
  loc_EBD66E: Call 0.Method_arg_50 (var_A4, Shift)
  loc_EBD683: Proc_183_57_104B0BC(var_A4, "Txt_KeyUp")
  loc_EBD68F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D73C
  'Data Table: 527B9C
  loc_E4D71A: Set var_88 = Me.Txt
  loc_E4D720: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D72E: Proc_183_27_E23198(var_8C)
  loc_E4D73A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E6DCB0
  'Data Table: 527B9C
  Dim arg_10 As Integer
  loc_E6DC5C: On Error Goto loc_E6DC88
  loc_E6DC6D: If (Cancel = CInt(0)) Then
  loc_E6DC73:   Call Proc_320_40_108EB80(var_88)
  loc_E6DC7E:   If (var_88 = &HFF) Then
  loc_E6DC83:     arg_10 = &HFF
  loc_E6DC86:     Exit Sub
  loc_E6DC87:   End If
  loc_E6DC87: End If
  loc_E6DC87: Exit Sub
  loc_E6DC88: ' Referenced from: E6DC5C
  loc_E6DC8E: Call 0.Method_arg_50 (var_8C, arg_10)
  loc_E6DCA3: Proc_183_57_104B0BC(var_8C, "Txt_Validate")
  loc_E6DCAF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EBDD74
  'Data Table: 527B9C
  Dim var_8C As CheckBox
  Dim var_94 As TextBox
  loc_EBDCDC: On Error Goto loc_EBDD4C
  loc_EBDCF4: var_88 = "ADD"
  loc_EBDD02: Call Proc_320_37_11A6E84(Proc_5_1_100EC1C(var_88, Me))
  loc_EBDD0D: Call Proc_320_38_1020F48(global_52)
  loc_EBDD1E: Me.ChkEnabled.Enabled = False
  loc_EBDD31: Set var_8C = Me.Txt
  loc_EBDD37: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EBDD3F: var_94.SetFocus
  loc_EBDD4B: Exit Sub
  loc_EBDD4C: ' Referenced from: EBDCDC
  loc_EBDD52: Call 0.Method_arg_50 (var_88)
  loc_EBDD67: Proc_183_57_104B0BC(var_88, "TopCtrl1_eAdd")
  loc_EBDD73: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EEB450
  'Data Table: 527B9C
  loc_EEB398: On Error Goto loc_EEB428
  loc_EEB3D2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EEB3E1:   Set var_110 = Me
  loc_EEB3EA:   var_10C = "INI"
  loc_EEB3F8:   Call Proc_320_37_11A6E84(Proc_5_1_100EC1C(var_10C, var_110))
  loc_EEB403:   Call Proc_320_41_E5407C(global_52)
  loc_EEB408:   Call Proc_320_39_1430C40()
  loc_EEB410: Else
  loc_EEB416:   Call 0.Method_arg_1E8 (var_110)
  loc_EEB41E:   Call var_110.SetFocus
  loc_EEB427: End If
  loc_EEB427: Exit Sub
  loc_EEB428: ' Referenced from: EEB398
  loc_EEB42E: Call 0.Method_arg_50 (var_10C)
  loc_EEB436: var_11C = "TopCtrl1_eCancel"
  loc_EEB443: Proc_183_57_104B0BC(var_10C)
  loc_EEB44F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '104FE9C
  'Data Table: 527B9C
  Dim Me As Recordset15
  Dim var_96 As Integer
  Dim unk_527BB8 As Connection15
  Dim var_114 As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  loc_104FC4C: On Error Goto loc_104FE5E
  loc_104FC5D: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_104FC60:   Exit Sub
  loc_104FC61: End If
  loc_104FC86: var_C8 = Me.Fields.Item("SchCode").Value
  loc_104FC8E: var_D4 = "Message Schedule"
  loc_104FCD6: If (Proc_183_53_FE0460(MemVar_1F951E0, "JobScheduledDetail", "Schedule_Id") = 0) Then
  loc_104FCD9:   Exit Sub
  loc_104FCDA: End If
  loc_104FD11: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_104FD16:   var_96 = 0
  loc_104FD22:   unk_527BB8.BeginTrans var_D0
  loc_104FD29:   var_96 = &HFF
  loc_104FD91:   var_B4 = CStr("Delete From JobSchedule Where Schedule_Id='" & Me.Fields.Item("SchCode").Value & "'")
  loc_104FD9B:   unk_527BB8.Execute var_B4, var_134, -1
  loc_104FDBD:   unk_527BB8.CommitTrans
  loc_104FDC4:   var_96 = 0
  loc_104FDD2:   Me.Requery -1
  loc_104FDE2:   Me.Requery -1
  loc_104FDFE:   If (Me.RecordCount > 0) Then
  loc_104FE18:     If (Me.AbsolutePosition > 1) Then
  loc_104FE23:       var_C8 = (CVar(Me.AbsolutePosition) - 1)
  loc_104FE2F:       Me.AbsolutePosition = CLng(Me.Fields.Item("SchCode").Value)
  loc_104FE34:     End If
  loc_104FE34:   End If
  loc_104FE34:   Call Proc_320_39_1430C40(var_96, var_138, var_96, var_96)
  loc_104FE55:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_104FE5D: End If
  loc_104FE5D: Exit Sub
  loc_104FE5E: ' Referenced from: 104FC4C
  loc_104FE64: If (var_96 = &HFF) Then
  loc_104FE6D:   unk_527BB8.RollbackTrans
  loc_104FE72: End If
  loc_104FE78: Call 0.Method_arg_50 (var_B4, CStr(Me.Fields.Item("SchCode").Value))
  loc_104FE8D: Proc_183_57_104B0BC(var_B4, "TopCtrl1_eDel")
  loc_104FE99: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF11E0
  'Data Table: 527B9C
  Dim var_94 As TextBox
  loc_EF1118: On Error Goto loc_EF11B6
  loc_EF1129: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_EF112C:   Exit Sub
  loc_EF112D: End If
  loc_EF1150: Call Proc_320_37_11A6E84(Proc_5_1_100EC1C("EDIT", Me))
  loc_EF1169: Set var_8C = Me.Txt
  loc_EF116F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF1177: var_88 = var_94.Text
  loc_EF1182: global_64 = var_88
  loc_EF119B: Set var_8C = Me.Txt
  loc_EF11A1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF11A9: var_94.SetFocus
  loc_EF11B5: Exit Sub
  loc_EF11B6: ' Referenced from: EF1118
  loc_EF11BC: Call 0.Method_arg_50 (var_88)
  loc_EF11D1: Proc_183_57_104B0BC(var_88, "TopCtrl1_eEdit")
  loc_EF11DD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16E3C
  'Data Table: 527B9C
  loc_E16E31: Me.Global.Unload Me
  loc_E16E39: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF0760
  'Data Table: 527B9C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EF06A0: On Error Goto loc_EF0738
  loc_EF06BA: If (Me.RecordCount <= 0) Then
  loc_EF06C3:   var_B8 = "Information"
  loc_EF06DE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_EF06EE:   Exit Sub
  loc_EF06EF: End If
  loc_EF06FD: MemVar_1F950E4 = "Select Schedule_Id As SearchCode,ScheduleName as JobSchedule FROM JobSchedule WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') ORDER BY ScheduleName"
  loc_EF070A: MemVar_1F95120 = Me
  loc_EF0711: var_10C = "3000"
  loc_EF0717: Proc_183_54_F1EA10(var_10C)
  loc_EF0732: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EF0737: Exit Sub
  loc_EF0738: ' Referenced from: EF06A0
  loc_EF073E: Call 0.Method_arg_50 (var_10C)
  loc_EF0753: Proc_183_57_104B0BC(var_10C, "TopCtrl1_eFind")
  loc_EF075F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E77794
  'Data Table: 527B9C
  loc_E7773C: On Error Goto loc_E77769
  loc_E7775B: Proc_5_0_1107AD0(&HFF, Me)
  loc_E77763: Call Proc_320_39_1430C40(global_52)
  loc_E77768: Exit Sub
  loc_E77769: ' Referenced from: E7773C
  loc_E7776F: Call 0.Method_arg_50 (var_94)
  loc_E77784: Proc_183_57_104B0BC(var_94, "TopCtrl1_eFirst")
  loc_E77790: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E7B1C4
  'Data Table: 527B9C
  loc_E7B16C: On Error Goto loc_E7B199
  loc_E7B18B: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7B193: Call Proc_320_39_1430C40(global_52)
  loc_E7B198: Exit Sub
  loc_E7B199: ' Referenced from: E7B16C
  loc_E7B19F: Call 0.Method_arg_50 (var_94)
  loc_E7B1B4: Proc_183_57_104B0BC(var_94, "TopCtrl1_eLast")
  loc_E7B1C0: Exit Sub
  loc_E7B1C1: Set var_8C = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E7B094
  'Data Table: 527B9C
  loc_E7B03C: On Error Goto loc_E7B069
  loc_E7B05B: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7B063: Call Proc_320_39_1430C40(global_52)
  loc_E7B068: Exit Sub
  loc_E7B069: ' Referenced from: E7B03C
  loc_E7B06F: Call 0.Method_arg_50 (var_94)
  loc_E7B084: Proc_183_57_104B0BC(var_94, "TopCtrl1_eNext")
  loc_E7B090: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E7A08C
  'Data Table: 527B9C
  loc_E7A034: On Error Goto loc_E7A061
  loc_E7A053: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7A05B: Call Proc_320_39_1430C40(global_52)
  loc_E7A060: Exit Sub
  loc_E7A061: ' Referenced from: E7A034
  loc_E7A067: Call 0.Method_arg_50 (var_94)
  loc_E7A07C: Proc_183_57_104B0BC(var_94, "TopCtrl1_ePrev")
  loc_E7A088: Exit Sub
  loc_E7A089: Set var_8C = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '103B180
  'Data Table: 527B9C
  Dim unk_527BB8 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  loc_103AF48: On Error Goto loc_103B157
  loc_103AF61: unk_527BB8.Execute "SELECT Schedule_Id AS SchCode, ScheduleName AS SchName, Site_Code AS CSite_Code, U_Name AS CU_Name, U_EntDt AS CU_EntDt, U_AE AS CU_AE FROM JobSchedule ORDER BY ScheduleName", var_BC, -1
  loc_103AF6C: Set var_88 = var_C0
  loc_103AF7B: var_C4 = var_88.RecordCount
  loc_103AF89: If (var_C4 = 0) Then
  loc_103AFA5:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_103AFB5:   Exit Sub
  loc_103AFB6: End If
  loc_103AFCC: Set var_C0 = var_88 
  loc_103AFD8: var_12E = CreateFieldDefFile(var_C0, MemVar_1F950B4 & "\JobSchedule.ttx")
  loc_103AFE2: Set var_88 = var_C0
  loc_103AFE8: var_AC = CVar(var_12E) 'Integer
  loc_103AFEB: var_98 = var_AC 'Variant
  loc_103B007: var_128 = MemVar_1F950B4 & "\JobSchedule.RPT"
  loc_103B010: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_103B01B: MemVar_1F951E8 = var_C0
  loc_103B036: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_103B03E: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_103B04A: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_103B063:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_103B06B:   Call 0.Method_arg_20 (var_138)
  loc_103B073:   Call 0.Method_arg_30 (var_128)
  loc_103B0B9:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_103B0CF:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_103B0D7:     Call 0.Method_arg_20 (var_138)
  loc_103B0DF:     Call 0.Method_arg_38 ("'JobSchedule Master'")
  loc_103B0EB:   End If
  loc_103B0EE: Next var_132 'Integer
  loc_103B10C: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_103B114: Call 0.Method_arg_2C (var_D4)
  loc_103B122: Call 0.Method_arg_150 (var_F4)
  loc_103B12D: Call 0.Method_arg_50 (var_128)
  loc_103B146: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_103B153: Set var_88 = Nothing
  loc_103B156: Exit Sub
  loc_103B157: ' Referenced from: 103AF48
  loc_103B15D: Call 0.Method_arg_50 (var_128, var_128)
  loc_103B172: Proc_183_57_104B0BC(var_128, "TopCtrl1_ePrn")
  loc_103B17E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E5C6F4
  'Data Table: 527B9C
  Dim Me As Recordset15
  loc_E5C6B8: On Error Goto loc_E5C6CC
  loc_E5C6C6: Me.Requery -1
  loc_E5C6CB: Exit Sub
  loc_E5C6CC: ' Referenced from: E5C6B8
  loc_E5C6D2: Call 0.Method_arg_50 (var_88)
  loc_E5C6DA: var_90 = "TopCtrl1_eRef"
  loc_E5C6E7: Proc_183_57_104B0BC(var_88)
  loc_E5C6F3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '158717C
  'Data Table: 527B9C
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_CC As TextBox
  Dim var_A4 As String
  Dim var_F0 As Variant
  Dim unk_527BB8 As Connection15
  Dim var_94 As Variant
  Dim var_C8 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_E0 As Variant
  Dim var_114 As Variant
  Dim Me As Recordset15
  Dim var_24C As OptionButton
  Dim var_260 As Variant
  Dim var_33C As Variant
  Dim var_3D4 As TextBox
  Dim var_45C As OptionButton
  Dim var_490 As Variant
  Dim var_4F8 As TextBox
  Dim var_A14 As Double
  Dim var_544 As TextBox
  Dim var_A1C As Double
  Dim var_630 As TextBox
  Dim var_A24 As Double
  Dim var_67C As OptionButton
  Dim var_6B0 As Variant
  Dim var_768 As TextBox
  Dim var_A2C As Double
  Dim var_85C As Variant
  Dim var_C4 As Variant
  Dim var_1B8 As Variant
  Dim var_1F8 As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_37C As Variant
  Dim var_4D0 As Variant
  Dim var_53C As Variant
  Dim var_588 As Variant
  Dim var_760 As Variant
  Dim var_7DC As Variant
  Dim var_89C As Variant
  Dim var_93C As Variant
  Dim var_9BC As Variant
  Dim var_2B4 As Variant
  Dim var_188 As Variant
  Dim var_39C As Variant
  Dim var_5F8 As Variant
  Dim var_730 As Variant
  Dim var_86C As Variant
  Dim var_8BC As Variant
  Dim var_95C As Variant
  Dim var_9AC As Variant
  Dim var_634 As String
  loc_15861E4: On Error Goto loc_158713D
  loc_15861EB: var_86 = CByte(0) 'Byte
  loc_15861FD: Set var_94 = Me.Txt
  loc_1586203: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_96, var_88)
  loc_1586213: For var_9A =  To CByte((var_96 - 1)): CByte(0) = var_9A 'Byte
  loc_1586229:   Set var_94 = Me.Txt
  loc_158622F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_A0)
  loc_158623F:   var_B4 = CVar(var_A0.Text) 'String
  loc_1586245:   var_C4 = Trim(var_B4)
  loc_158625E:   Set var_C8 = Me.Txt
  loc_1586264:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_CC)
  loc_158626C:   var_CC.Text = CStr(var_C4)
  loc_1586289: Next var_9A 'Byte
  loc_158629A: Set var_94 = Me.Txt
  loc_15862A0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15862C9: If (Proc_183_19_E8E68C(var_A0, "Name") = 0) Then
  loc_15862D3:   Call Txt_GotFocus(CInt(0))
  loc_15862D8:   Exit Sub
  loc_15862D9: End If
  loc_15862DC: Call Proc_320_40_108EB80(var_96)
  loc_15862E7: If (var_96 = &HFF) Then
  loc_15862EA:   Exit Sub
  loc_15862EB: End If
  loc_15862EF: Set var_94 = Me.TopCtrl1
  loc_15862F5: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_158630E: If (CStr() = "Add") Then
  loc_1586317:   var_F0 = 0
  loc_1586334:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Schedule_Id,3,9) AS INT)),0)+1 AS MyCode From JobSchedule WHERE SITE_CODE='" & MemVar_1F95070
  loc_1586344:   unk_527BB8.Execute CStr() & "'", var_B4, -1
  loc_158634C:   var_94 = var_94.Fields
  loc_1586354:   var_F0 = var_A0.Item(var_A0)
  loc_158635C:   var_C8 = var_C8.Value
  loc_1586395:   var_104 = CVar(Proc_183_15_EAD490(MemVar_1F95070, 2)) 'String
  loc_15863BB:   var_C4 = Format(CStr(var_C4), "000000000")
  loc_15863C3:   var_114 = (1 + var_C4)
  loc_15863CE:   global_60 = CStr(var_114)
  loc_15863E3: Else
  loc_1586400:   var_A0 = Me.Fields.Item("SchCode")
  loc_1586408:   var_B4 = var_A0.Value
  loc_1586411:   var_A4 = CStr(var_B4)
  loc_1586417:   global_60 = var_A4
  loc_1586428: End If
  loc_1586436: Set var_94 = Me.Txt
  loc_158643C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4)
  loc_1586444: 1 = var_A0.Text
  loc_1586457: var_90 = Proc_183_20_FB48CC(var_A4, var_104)
  loc_1586471: unk_527BB8.BeginTrans var_118
  loc_158647A: var_86 = CByte(1) 'Byte
  loc_1586482: Set var_94 = Me.TopCtrl1
  loc_1586488: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_15864A1: If (CStr() = "Add") Then
  loc_15864AA:   var_E0 = global_60
  loc_15864B2:   Proc_6_17_EAAE40(var_B4)
  loc_15864C2:   Set var_94 = Me.Txt
  loc_15864C8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0)
  loc_15864D7:   Proc_6_17_EAAE40(var_138, CVar(var_A0))
  loc_15864E7:   Proc_6_17_EAAE40(var_188, CVar(Me.CMBSchduleType))
  loc_15864F9:   var_96 = Me.ChkEnabled.Value
  loc_1586509:   Proc_6_7_F26918(var_218, CVar(Me.DTPSchStartDate))
  loc_158651A:   Set var_CC = Me.OptSchEndDate
  loc_1586520:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_24C)
  loc_1586528:   var_24E = var_24C.Value
  loc_1586531:   var_260 = CVar(Me.DTPSchEndDate) 'Address
  loc_1586538:   Proc_6_7_F26918(var_270, var_260)
  loc_1586557:   Proc_6_7_F26918(var_2B4, CDate(CDate(Me.DTPSchEndDate.MaxDate)))
  loc_1586596:   var_33C = (Me.DTPOTMDate._Value + Me.DTPOTMTime._Value)
  loc_158659D:   Proc_6_8_EB1974(var_34C, var_33C)
  loc_15865AD:   Proc_6_17_EAAE40(var_39C, CVar(Me.CMBOccurType))
  loc_15865C0:   Set var_3D0 = Me.TxtNumUpDown1
  loc_15865C6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_3D4)
  loc_15865CE:   var_F4 = var_3D4.Text
  loc_15865DB:   var_A0C = Val(var_F4)
  loc_15865EA:   Set var_458 = Me.OptMonthlyFreq
  loc_15865F0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_45C, var_45E)
  loc_1586627:   Set var_4F4 = Me.TxtNumUpDown1
  loc_158662D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4F8)
  loc_1586635:   var_4FC = var_4F8.Text
  loc_1586642:   var_A14 = Val(var_4FC)
  loc_1586651:   Set var_540 = Me.TxtNumUpDown1
  loc_1586657:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_544, var_548)
  loc_158666C:   var_A1C = Val(var_548)
  loc_158667A:   Proc_6_17_EAAE40(var_5A8, CVar(Me.CMBMonthlyThe))
  loc_158668A:   Proc_6_17_EAAE40(var_5F8, CVar(Me.CMBMonthlyTheDay))
  loc_158669B:   Set var_62C = Me.TxtNumUpDown1
  loc_15866A1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_630, var_634)
  loc_15866B6:   var_A24 = Val(var_634)
  loc_15866C5:   Set var_678 = Me.OptDailyFreq
  loc_15866CB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_67C, var_67E)
  loc_15866EF:   var_6E0 = IIf((var_67E = &HFF), 0, 1)
  loc_15866FF:   Proc_6_8_EB1974(var_730, CVar(Me.DTPDFOccurOnce))
  loc_1586712:   Set var_764 = Me.TxtNumUpDown1
  loc_1586718:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_768)
  loc_158672D:   var_A2C = Val(var_768.Text)
  loc_158673B:   Proc_6_17_EAAE40(var_7CC, CVar(Me.CMBDFOccurUnit))
  loc_158674B:   Proc_6_8_EB1974(var_81C, CVar(Me.DTPDFStartTime))
  loc_1586754:   var_85C = CVar(Me.DTPDFEndTime) 'Address
  loc_158675B:   Proc_6_8_EB1974(var_86C, var_85C)
  loc_158676B:   Proc_6_17_EAAE40(var_8BC, MemVar_1F95070)
  loc_158677B:   Proc_6_17_EAAE40(var_90C, MemVar_1F950C8)
  loc_1586785:   var_94C = CVar(Proc_6_14_EF402C(var_A2C)) 'String
  loc_158678B:   Proc_6_8_EB1974(var_95C, var_94C)
  loc_158679B:   Proc_6_17_EAAE40(var_9AC, MemVar_1F95078)
  loc_15867B4:   var_A4 = "INSERT INTO JobSchedule(Schedule_Id,ScheduleName,ScheduleType,ScheduleEnabled," & "ScheduleStartDate,ScheduleEndDate,OneTimeOccur,FreqOccurs,FreqRecurs,FreqWeekdays,FreqMonth,FreqMonthDay,"
  loc_15867C2:   var_C4 = CVar(var_A4 & "FreqMonthDayOfEveryMonth,FreqMonthThe,FreqMonthTheDay,FreqMonthTheDayOfEveryMonth,DFreq,DFreqOccursOnce," & "DFreqOccursEvery,DFreqOccursType,DFreqOccursStartTime,DFreqOccursEndTime,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values(") 'String
  loc_15867F1:   var_1B8 = var_C4 & var_B4 & "," & var_138 & "," & var_188 & "," 
  loc_1586824:   var_304 = var_1B8 & CVar(var_96) & "," & var_218 & "," & IIf((var_24E = &HFF), var_270, var_2B4) & "," 
  loc_1586876:   var_4D0 = var_304 & var_34C & "," & var_39C & "," & CVar(var_45C.Value) & "," & CVar(global_68) & "," & IIf((var_45E = &HFF), 0, 1) 
  loc_1586893:   var_53C = var_4D0 & "," & CVar(var_544.Text) & "," 
  loc_15868FB:   var_760 = var_53C & CVar(var_630.Text) & "," & var_5A8 & "," & var_5F8 & "," & CVar(var_67C.Value) & "," & var_6E0 & "," & var_730 & "," 
  loc_158693F:   var_89C = var_760 & CVar(var_A2C) & "," & var_7CC & "," & var_81C & "," & var_86C & "," 
  loc_1586976:   var_9BC = var_89C & var_8BC & "," & var_90C & "," & var_95C & ",'A'," & var_9AC 
  loc_158698D:   unk_527BB8.Execute CStr(var_9BC & ")"), var_A00, -1
  loc_1586AA0: Else
  loc_1586AAB:   Set var_94 = Me.Txt
  loc_1586AB1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0)
  loc_1586AC0:   Proc_6_17_EAAE40(var_C4, CVar(var_A0))
  loc_1586AD0:   Proc_6_17_EAAE40(var_138, CVar(Me.CMBSchduleType))
  loc_1586AE2:   var_96 = Me.ChkEnabled.Value
  loc_1586AF2:   Proc_6_7_F26918(var_1B8, CVar(Me.DTPSchStartDate))
  loc_1586B03:   Set var_CC = Me.OptSchEndDate
  loc_1586B09:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_24C, var_24E)
  loc_1586B11:   var_A04 = var_24C.Value
  loc_1586B21:   Proc_6_7_F26918(var_218, CVar(Me.DTPSchEndDate))
  loc_1586B40:   Proc_6_7_F26918(var_260, CDate(CDate(Me.DTPSchEndDate.MaxDate)))
  loc_1586B7F:   var_2E4 = (Me.DTPOTMDate._Value + Me.DTPOTMTime._Value)
  loc_1586B86:   Proc_6_8_EB1974(var_304, var_1B8 & CVar(var_96) & "," & var_218 & "," & IIf((var_24E = &HFF), IIf((var_24E = &HFF), var_218, var_260), Me.DTPOTMDate._Value))
  loc_1586B96:   Proc_6_17_EAAE40(var_34C, CVar(Me.CMBOccurType))
  loc_1586BA9:   Set var_3D0 = Me.TxtNumUpDown1
  loc_1586BAF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_3D4)
  loc_1586BC4:   var_A0C = Val(var_3D4.Text)
  loc_1586BD3:   Set var_458 = Me.OptMonthlyFreq
  loc_1586BD9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_45C, var_45E)
  loc_1586C10:   Set var_4F4 = Me.TxtNumUpDown1
  loc_1586C16:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4F8)
  loc_1586C2B:   var_A14 = Val(var_4F8.Text)
  loc_1586C3A:   Set var_540 = Me.TxtNumUpDown1
  loc_1586C40:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_544, var_F4)
  loc_1586C55:   var_A1C = Val(var_F4)
  loc_1586C63:   Proc_6_17_EAAE40(var_53C, CVar(Me.CMBMonthlyThe))
  loc_1586C73:   Proc_6_17_EAAE40(var_5A8, CVar(Me.CMBMonthlyTheDay))
  loc_1586C84:   Set var_62C = Me.TxtNumUpDown1
  loc_1586C8A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_630, var_4FC)
  loc_1586C9F:   var_A24 = Val(var_4FC)
  loc_1586CAE:   Set var_678 = Me.OptDailyFreq
  loc_1586CB4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_67C, var_67E)
  loc_1586CE8:   Proc_6_8_EB1974(var_6E0, CVar(Me.DTPDFOccurOnce))
  loc_1586CFB:   Set var_764 = Me.TxtNumUpDown1
  loc_1586D01:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_768)
  loc_1586D16:   var_A2C = Val(var_768.Text)
  loc_1586D24:   Proc_6_17_EAAE40(var_760, CVar(Me.CMBDFOccurUnit))
  loc_1586D34:   Proc_6_8_EB1974(var_7CC, CVar(Me.DTPDFStartTime))
  loc_1586D44:   Proc_6_8_EB1974(var_81C, CVar(Me.DTPDFEndTime))
  loc_1586D54:   Proc_6_17_EAAE40(var_85C, MemVar_1F95070)
  loc_1586D64:   Proc_6_17_EAAE40(var_89C, MemVar_1F950C8)
  loc_1586D74:   Proc_6_8_EB1974(var_90C, CVar(Proc_6_14_EF402C(var_A2C)))
  loc_1586D84:   Proc_6_17_EAAE40(var_94C, MemVar_1F95078)
  loc_1586D96:   var_E0 = "UPDATE JobSchedule SET ScheduleName="
  loc_1586DDA:   var_1F8 = var_E0 & var_C4 & ",ScheduleType=" & var_138 & ",ScheduleEnabled=" & CVar(var_96) & ",ScheduleStartDate=" & var_1B8 & ",ScheduleEndDate=" 
  loc_1586E0A:   var_37C = var_1F8 & IIf((var_24E = &HFF), var_218, var_260) & ",OneTimeOccur=" & var_304 & ",FreqOccurs=" & var_34C & ",FreqRecurs=" 
  loc_1586E45:   var_490 = var_37C & CVar(var_45C.Value) & ",FreqWeekdays=" & CVar(global_68) & ",FreqMonth=" & IIf((var_45E = &HFF), 0, 1) & ",FreqMonthDay=" 
  loc_1586E7D:   var_588 = var_490 & CVar(var_544.Text) & ",FreqMonthDayOfEveryMonth=" & CVar(var_630.Text) & ",FreqMonthThe=" & var_53C & ",FreqMonthTheDay=" 
  loc_1586EB1:   var_6B0 = var_588 & var_5A8 & ",FreqMonthTheDayOfEveryMonth=" & CVar(var_67C.Value) & ",DFreq=" & IIf((var_67E = &HFF), 0, 1) & ",DFreqOccursOnce=" 
  loc_1586EEC:   var_7DC = var_6B0 & var_6E0 & ",DFreqOccursEvery=" & CVar(var_A2C) & ",DFreqOccursType=" & var_760 & ",DFreqOccursStartTime=" & var_7CC 
  loc_1586F35:   var_93C = var_7DC & ",DFreqOccursEndTime=" & var_81C & ",Site_Code=" & var_85C & ",U_Name=" & var_89C & ",U_EntDt=" & var_90C & ",U_AE='E',LogSite_Code=" 
  loc_1586F69:   unk_527BB8.Execute CStr(var_93C & var_94C & " WHERE Schedule_Id='" & CVar(global_60) & "'"), var_9BC, -1
  loc_1587071: End If
  loc_1587077: unk_527BB8.CommitTrans
  loc_1587080: var_86 = CByte(0) 'Byte
  loc_158708F: Me.Requery -1
  loc_158709F: Me.Requery -1
  loc_15870CC: Me.Find "SchCode='" & global_60 & "'", 0, 1
  loc_15870DC: Set var_94 = Me.TopCtrl1
  loc_15870E2: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E0)
  loc_15870FB: If (CStr(var_A04) = "Add") Then
  loc_15870FE:   Call TopCtrl1_UnknownEvent_A()
  loc_1587103:   Exit Sub
  loc_1587104: End If
  loc_1587119: var_A4 = "INI"
  loc_1587127: Call Proc_320_37_11A6E84(Proc_5_1_100EC1C(var_A4, Me), global_52)
  loc_1587132: Call Proc_320_41_E5407C(var_E0)
  loc_1587137: Call Proc_320_39_1430C40()
  loc_158713C: Exit Sub
  loc_158713D: ' Referenced from: 15861E4
  loc_1587146: If (CInt(var_86) = 1) Then
  loc_158714F:   unk_527BB8.RollbackTrans
  loc_1587154: End If
  loc_158715A: Call 0.Method_arg_50 (var_A4)
  loc_1587162: var_F4 = "TopCtrl1_eSave"
  loc_158716F: Proc_183_57_104B0BC(var_A4)
  loc_158717B: Exit Sub
End Sub

Public Property Get OpenMode() 'E09ED0
  'Data Table: 527B9C
  loc_E09EC9: OpenMode = global_72
End Sub

Public Property Let OpenMode(vNewValue) 'E0247C
  'Data Table: 527B9C
  loc_E02476: global_72 = vNewValue
  loc_E02479: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E92F64
  'Data Table: 527B9C
  Dim Me As Recordset15
  Dim var_8C As String
  loc_E92EF6: On Error Goto loc_E92F3B
  loc_E92EFF: Me.MoveFirst
  loc_E92F19: var_8C = "SchCode='" & MyValue
  loc_E92F29: Me.Find var_8C & "'", 0, 1
  loc_E92F35: Call Proc_320_39_1430C40(var_A0)
  loc_E92F3A: Exit Sub
  loc_E92F3B: ' Referenced from: E92EF6
  loc_E92F41: Call 0.Method_arg_50 (var_8C)
  loc_E92F49: var_A4 = "SEARCHBACK"
  loc_E92F56: Proc_183_57_104B0BC(var_8C)
  loc_E92F62: Exit Sub
End Sub

Public Sub Proc_320_36_F1FE38
  'Data Table: 527B9C
  Dim var_8C As Double
  Dim var_94 As Double
  loc_F1FD3A: var_8C = CDate(Proc_6_15_EF37AC())
  loc_F1FD45: var_94 = CDate("01/Jan/1900 12:00:00 AM")
  loc_F1FD5A: Me.DTPOTMTime.Value = CDate(var_94)
  loc_F1FD74: Me.DTPDFOccurOnce.Value = CDate(var_94)
  loc_F1FD8E: Me.DTPDFStartTime.Value = CDate(var_94)
  loc_F1FDBB: Me.DTPDFEndTime.Value = DateAdd("s", CDbl(&HFF), var_94)
  loc_F1FDD8: Me.DTPOTMDate.Value = CDate(var_8C)
  loc_F1FDF2: Me.DTPSchStartDate.Value = CDate(var_8C)
  loc_F1FE0C: Me.DTPSchEndDate.Value = CDate(var_8C)
  loc_F1FE14: Call CMBSchduleType_Click()
  loc_F1FE19: Call CMBOccurType_Click()
  loc_F1FE23: Call OptDailyFreq_Click()
  loc_F1FE28: Call CMBDFOccurUnit_Click()
  loc_F1FE32: Call OptSchEndDate_Click()
  loc_F1FE37: Exit Sub
End Sub

Public Sub Proc_320_37_11A6E84(arg_C) '11A6E84
  'Data Table: 527B9C
  Dim var_98 As Variant
  Dim var_8C As Variant
  loc_11A6A54: On Error Goto loc_11A6E59
  loc_11A6A65: Set var_8C = Me.Txt
  loc_11A6A6B: Call 0.Method_Proc_320_37_11A6E84C (var_8E, var_86)
  loc_11A6A7B: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_11A6A91:   Set var_8C = Me.Txt
  loc_11A6A97:   Call 0.Method_Proc_320_37_11A6E840 (CInt(var_86), var_98)
  loc_11A6A9F:   var_98.Enabled = arg_C
  loc_11A6AAE: Next var_92 'Byte
  loc_11A6AC2: Me.CmdScheduledJobs.Enabled = Not(arg_C)
  loc_11A6AD7: Me.CMBSchduleType.Enabled = arg_C
  loc_11A6AEC: Me.ChkEnabled.Enabled = arg_C
  loc_11A6B05: Me.DTPOTMDate.Enabled = arg_C
  loc_11A6B1E: Me.DTPOTMTime.Enabled = arg_C
  loc_11A6B33: Me.CMBOccurType.Enabled = arg_C
  loc_11A6B47: Set var_8C = Me.TxtNumUpDown1
  loc_11A6B4D: Call 0.Method_Proc_320_37_11A6E84C (var_8E, var_88)
  loc_11A6B5B: For var_AC =  To (var_8E - 1): 0 = var_AC 'Integer
  loc_11A6B67:   Call Proc_320_43_E6BDE0(var_88)
  loc_11A6B6F: Next var_AC 'Integer
  loc_11A6B80: Set var_8C = Me.OptMonthlyFreq
  loc_11A6B86: Call 0.Method_Proc_320_37_11A6E840 (0, var_98)
  loc_11A6B8E: var_98.Enabled = arg_C
  loc_11A6BA6: Set var_8C = Me.OptMonthlyFreq
  loc_11A6BAC: Call 0.Method_Proc_320_37_11A6E840 (1, var_98)
  loc_11A6BB4: var_98.Enabled = arg_C
  loc_11A6BCD: Me.CMBMonthlyThe.Enabled = arg_C
  loc_11A6BE2: Me.CMBMonthlyTheDay.Enabled = arg_C
  loc_11A6BF8: Set var_8C = Me.ChkWeekDay
  loc_11A6BFE: Call 0.Method_Proc_320_37_11A6E84C (var_8E, var_86)
  loc_11A6C0B: For var_B0 =  To CByte(var_8E): CByte(1) = var_B0 'Byte
  loc_11A6C21:   Set var_8C = Me.ChkWeekDay
  loc_11A6C27:   Call 0.Method_Proc_320_37_11A6E840 (CInt(var_86), var_98)
  loc_11A6C2F:   var_98.Enabled = arg_C
  loc_11A6C3E: Next var_B0 'Byte
  loc_11A6C50: Set var_8C = Me.OptDailyFreq
  loc_11A6C56: Call 0.Method_Proc_320_37_11A6E840 (0, var_98)
  loc_11A6C5E: var_98.Enabled = arg_C
  loc_11A6C76: Set var_8C = Me.OptDailyFreq
  loc_11A6C7C: Call 0.Method_Proc_320_37_11A6E840 (1, var_98)
  loc_11A6C84: var_98.Enabled = arg_C
  loc_11A6CA1: Me.DTPDFOccurOnce.Enabled = arg_C
  loc_11A6CB6: Me.CMBDFOccurUnit.Enabled = arg_C
  loc_11A6CCF: Me.DTPDFStartTime.Enabled = arg_C
  loc_11A6CE8: Me.DTPDFEndTime.Enabled = arg_C
  loc_11A6D01: Me.DTPSchStartDate.Enabled = arg_C
  loc_11A6D15: Set var_8C = Me.OptSchEndDate
  loc_11A6D1B: Call 0.Method_Proc_320_37_11A6E840 (0, var_98)
  loc_11A6D23: var_98.Enabled = arg_C
  loc_11A6D3B: Set var_8C = Me.OptSchEndDate
  loc_11A6D41: Call 0.Method_Proc_320_37_11A6E840 (1, var_98)
  loc_11A6D49: var_98.Enabled = arg_C
  loc_11A6D66: Me.DTPSchEndDate.Enabled = arg_C
  loc_11A6D74: If (arg_C = &HFF) Then
  loc_11A6D77:   Call CMBOccurType_Click()
  loc_11A6D7C:   Call CMBSchduleType_Click()
  loc_11A6D81:   Call CMBDFOccurUnit_Click()
  loc_11A6D92:   Set var_8C = Me.OptSchEndDate
  loc_11A6D98:   Call 0.Method_Proc_320_37_11A6E840 (0, var_98)
  loc_11A6DA0:   var_8E = var_98.Value
  loc_11A6DB2:   If (var_8E = &HFF) Then
  loc_11A6DBA:     Call OptSchEndDate_Click()
  loc_11A6DC2:   Else
  loc_11A6DC7:     Call OptSchEndDate_Click()
  loc_11A6DCC:   End If
  loc_11A6DD8:   Set var_8C = Me.OptMonthlyFreq
  loc_11A6DDE:   Call 0.Method_Proc_320_37_11A6E840 (0, var_98, var_8E)
  loc_11A6DE6:   1 = var_98.Value
  loc_11A6DF8:   If (var_8E = &HFF) Then
  loc_11A6E00:     Call OptMonthlyFreq_Click()
  loc_11A6E08:   Else
  loc_11A6E0D:     Call OptMonthlyFreq_Click()
  loc_11A6E12:   End If
  loc_11A6E1E:   Set var_8C = Me.OptDailyFreq
  loc_11A6E24:   Call 0.Method_Proc_320_37_11A6E840 (0, var_98, var_8E)
  loc_11A6E2C:   1 = var_98.Value
  loc_11A6E3E:   If (var_8E = &HFF) Then
  loc_11A6E46:     Call OptDailyFreq_Click()
  loc_11A6E4E:   Else
  loc_11A6E53:     Call OptDailyFreq_Click()
  loc_11A6E58:   End If
  loc_11A6E58: End If
  loc_11A6E58: Exit Sub
  loc_11A6E59: ' Referenced from: 11A6A54
  loc_11A6E5F: Call 0.Method_arg_50 (var_B4, 1, 0)
  loc_11A6E74: Proc_183_57_104B0BC(var_B4, "Disp_Text")
  loc_11A6E80: Exit Sub
End Sub

Public Sub Proc_320_38_1020F48
  'Data Table: 527B9C
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_8C As Variant
  loc_1020D1C: On Error Goto loc_1020F1D
  loc_1020D25: global_64 = vbNullString
  loc_1020D37: Set var_8C = Me.Txt
  loc_1020D3D: Call 0.Method_Proc_320_38_1020F48C (var_8E, var_86)
  loc_1020D4D: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1020D63:   Set var_8C = Me.Txt
  loc_1020D69:   Call 0.Method_Proc_320_38_1020F480 (CInt(var_86), var_98)
  loc_1020D71:   var_98.Text = vbNullString
  loc_1020D8D:   Set var_8C = Me.Txt
  loc_1020D93:   Call 0.Method_Proc_320_38_1020F480 (CInt(var_86), var_98)
  loc_1020D9B:   var_98.Tag = vbNullString
  loc_1020DAA: Next var_92 'Byte
  loc_1020DBE: Set var_8C = Me.TxtNumUpDown1
  loc_1020DC4: Call 0.Method_Proc_320_38_1020F48C (var_8E, var_86)
  loc_1020DD4: For var_9C =  To CByte((var_8E - 1)): CByte(0) = var_9C 'Byte
  loc_1020DEE:   Set var_8C = Me.TxtNumUpDown1
  loc_1020DF4:   Call 0.Method_Proc_320_38_1020F480 (CInt(var_86), var_98)
  loc_1020DFC:   var_98.Text = CStr(1)
  loc_1020E0E: Next var_9C 'Byte
  loc_1020E24: Me.ChkEnabled.Value = CInt(1)
  loc_1020E4D: Me.CMBSchduleType.Text = Me.CMBSchduleType.List(0)
  loc_1020E7D: Me.CMBOccurType.Text = Me.CMBOccurType.List(0)
  loc_1020EAD: Me.CMBDFOccurUnit.Text = Me.CMBDFOccurUnit.List(0)
  loc_1020EDD: Me.CMBMonthlyThe.Text = Me.CMBMonthlyThe.List(0)
  loc_1020EFB: var_A0 = Me.CMBMonthlyTheDay.List(0)
  loc_1020F0D: Me.CMBMonthlyTheDay.Text = var_A0
  loc_1020F1C: Exit Sub
  loc_1020F1D: ' Referenced from: 1020D1C
  loc_1020F23: Call 0.Method_arg_50 (var_A0)
  loc_1020F2B: var_A8 = "BlankText"
  loc_1020F38: Proc_183_57_104B0BC(var_A0)
  loc_1020F44: Exit Sub
End Sub

Public Sub Proc_320_39_1430C40
  'Data Table: 527B9C
  Dim Me As Variant
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As String
  Dim var_DC As Variant
  Dim unk_527BD2 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As TextBox
  Dim var_114 As Variant
  Dim var_110 As Integer
  Dim var_CC As Variant
  loc_1430170: On Error Goto loc_1430C18
  loc_1430179: Proc_183_45_E5CCA8(global_52)
  loc_1430195: If (Me.RecordCount <= 0) Then
  loc_1430198:   Call Proc_320_38_1020F48()
  loc_14301A0: Else
  loc_14301D4:   global_60 = CStr(Me.Fields.Item("SchCode").Value)
  loc_14301F9:   var_B8 = "Select Schedule_Id,ScheduleName,ScheduleType,ScheduleEnabled," & "ScheduleStartDate,ScheduleEndDate,OneTimeOccur,FreqOccurs,FreqRecurs,FreqWeekdays,FreqMonth,FreqMonthDay,"
  loc_1430207:   var_DC = CVar(var_B8 & "FreqMonthDayOfEveryMonth,FreqMonthThe,FreqMonthTheDay,FreqMonthTheDayOfEveryMonth,DFreq,DFreqOccursOnce," & "DFreqOccursEvery,DFreqOccursType,DFreqOccursStartTime,DFreqOccursEndTime,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code From JobSchedule Where Schedule_Id=") 'String
  loc_1430233:   Proc_6_17_EAAE40(var_CC, CVar(Me.Fields.Item("SchCode")), var_DC)
  loc_1430249:   unk_527BD2.Execute CStr(var_110 & var_CC), -1, var_114
  loc_1430254:   Set var_88 = var_114
  loc_1430288:   If (var_88.RecordCount > 0) Then
  loc_14302C4:     Set var_114 = Me.Txt
  loc_14302CA:     Call 0.Method_Proc_320_39_1430C400 (CInt(0), var_118)
  loc_14302D2:     var_118.Tag = CStr(var_88.Fields.Item("Schedule_Id").Value)
  loc_1430321:     Set var_114 = Me.Txt
  loc_1430327:     Call 0.Method_Proc_320_39_1430C400 (CInt(0), var_118)
  loc_143032F:     var_118.Text = CStr(var_88.Fields.Item("ScheduleName").Value)
  loc_143037D:     Me.CMBSchduleType.Text = CStr(var_88.Fields.Item("ScheduleType").Value)
  loc_14303EA:     Me.ChkEnabled.Value = CInt(IIf((var_88.Fields.Item("ScheduleEnabled").Value = True), 1, 0))
  loc_1430453:     Me.DTPSchStartDate._Value = Format(CVar(var_88.Fields.Item("ScheduleStartDate")), "dd/MMM/yyyy")
  loc_14304B6:     Me.DTPSchEndDate._Value = Format(CVar(var_88.Fields.Item("ScheduleEndDate")), "dd/MMM/yyyy")
  loc_14304D5:     var_CC = Me.DTPSchEndDate.MaxDate
  loc_14304F8:     var_A4 = var_88.Fields.Item("ScheduleEndDate")
  loc_1430520:     If (CDate(var_A4.Value) <> CDate(var_CC)) Then
  loc_143052E:       Set var_90 = Me.OptSchEndDate
  loc_1430534:       Call 0.Method_Proc_320_39_1430C400 (0, var_A4, &HFF, var_CC)
  loc_143053C:       var_A4.Value = True
  loc_143054B:     Else
  loc_1430556:       Set var_90 = Me.OptSchEndDate
  loc_143055C:       Call 0.Method_Proc_320_39_1430C400 (1, var_A4, &HFF)
  loc_1430564:       var_A4.Value = True
  loc_1430570:     End If
  loc_14305BE:     Me.DTPOTMDate._Value = Format(CVar(var_88.Fields.Item("OneTimeOccur")), "dd/MMM/yyyy")
  loc_14305FE:     var_CC = "hh:nn:ss"
  loc_1430621:     Me.DTPOTMTime._Value = Format(CVar(var_88.Fields.Item("OneTimeOccur")), var_CC)
  loc_143065C:     Proc_6_39_E7D3A0(var_CC, CVar(var_88.Fields.Item("FreqOccurs")), 1, 1)
  loc_1430672:     Me.CMBOccurType.Text = CStr(var_CC)
  loc_14306AE:     Proc_6_39_E7D3A0(var_CC, CVar(var_88.Fields.Item("FreqRecurs")), 1)
  loc_14306C5:     Set var_114 = Me.TxtNumUpDown1
  loc_14306CB:     Call 0.Method_Proc_320_39_1430C400 (CInt(0), var_118, CStr(var_CC))
  loc_14306D3:     var_118.Text = 1
  loc_1430711:     Proc_6_39_E7D3A0(var_CC, CVar(var_88.Fields.Item("FreqWeekdays")))
  loc_1430742:     var_A4 = var_88.Fields.Item("FreqMonth")
  loc_1430751:     Proc_6_39_E7D3A0(var_CC, CVar(var_A4), CLng(var_CC))
  loc_143076B:     If (var_CC = 0) Then
  loc_1430779:       Set var_90 = Me.OptMonthlyFreq
  loc_143077F:       Call 0.Method_Proc_320_39_1430C400 (0, var_A4, &HFF)
  loc_1430787:       var_A4.Value = True
  loc_1430796:     Else
  loc_14307A1:       Set var_90 = Me.OptMonthlyFreq
  loc_14307A7:       Call 0.Method_Proc_320_39_1430C400 (1, var_A4)
  loc_14307AF:       var_A4.Value = True
  loc_14307BB:     End If
  loc_14307E1:     Proc_6_39_E7D3A0(var_CC, CVar(var_88.Fields.Item("FreqMonthDay")))
  loc_14307F8:     Set var_114 = Me.TxtNumUpDown1
  loc_14307FE:     Call 0.Method_Proc_320_39_1430C400 (CInt(1), var_118)
  loc_1430806:     var_118.Text = CStr(var_CC)
  loc_1430844:     Proc_6_39_E7D3A0(var_CC, CVar(var_88.Fields.Item("FreqMonthDayOfEveryMonth")))
  loc_1430859:     Set var_114 = Me.TxtNumUpDown1
  loc_143085F:     Call 0.Method_Proc_320_39_1430C400 (2, var_118)
  loc_1430867:     var_118.Text = CStr(var_CC)
  loc_143089A:     If (Me.CMBMonthlyThe.Enabled = &HFF) Then
  loc_14308D2:       Me.CMBMonthlyThe.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("FreqMonthThe")))
  loc_14308E4:     End If
  loc_14308FF:     If (Me.CMBMonthlyTheDay.Enabled = &HFF) Then
  loc_1430937:       Me.CMBMonthlyTheDay.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("FreqMonthTheDay")))
  loc_1430949:     End If
  loc_143096F:     Proc_6_39_E7D3A0(var_CC, CVar(var_88.Fields.Item("FreqMonthTheDayOfEveryMonth")))
  loc_1430984:     Set var_114 = Me.TxtNumUpDown1
  loc_143098A:     Call 0.Method_Proc_320_39_1430C400 (3, var_118)
  loc_1430992:     var_118.Text = CStr(var_CC)
  loc_14309C1:     var_A4 = var_88.Fields.Item("DFreq")
  loc_14309D0:     Proc_6_39_E7D3A0(var_CC, CVar(var_A4))
  loc_14309EA:     If (var_CC = 0) Then
  loc_14309F8:       Set var_90 = Me.OptDailyFreq
  loc_14309FE:       Call 0.Method_Proc_320_39_1430C400 (0, var_A4)
  loc_1430A06:       var_A4.Value = True
  loc_1430A15:     Else
  loc_1430A20:       Set var_90 = Me.OptDailyFreq
  loc_1430A26:       Call 0.Method_Proc_320_39_1430C400 (1, var_A4)
  loc_1430A2E:       var_A4.Value = True
  loc_1430A3A:     End If
  loc_1430A65:     var_CC = "hh:nn:ss"
  loc_1430A88:     Me.DTPDFOccurOnce._Value = Format(CVar(var_88.Fields.Item("DFreqOccursOnce")), var_CC)
  loc_1430AC3:     Proc_6_39_E7D3A0(var_CC, CVar(var_88.Fields.Item("DFreqOccursEvery")), 1)
  loc_1430ADA:     Set var_114 = Me.TxtNumUpDown1
  loc_1430AE0:     Call 0.Method_Proc_320_39_1430C400 (CInt(4), var_118, CStr(var_CC))
  loc_1430AE8:     var_118.Text = 1
  loc_1430B28:     var_B8 = Proc_6_38_E69628(CVar(var_88.Fields.Item("DFreqOccursType")))
  loc_1430B35:     Me.CMBDFOccurUnit.Text = var_B8
  loc_1430B95:     Me.DTPDFStartTime._Value = Format(CVar(var_88.Fields.Item("DFreqOccursStartTime")), "hh:nn:ss")
  loc_1430BF8:     Me.DTPDFEndTime._Value = Format(CVar(var_88.Fields.Item("DFreqOccursEndTime")), "hh:nn:ss")
  loc_1430C0D:   End If
  loc_1430C0D: End If
  loc_1430C12: Call Proc_320_37_11A6E84(0)
  loc_1430C17: Exit Sub
  loc_1430C18: ' Referenced from: 1430170
  loc_1430C1E: Call 0.Method_arg_50 (var_B8, 1, 1)
  loc_1430C33: Proc_183_57_104B0BC(var_B8, "MoveRec", 1)
  loc_1430C3F: Exit Sub
End Sub

Public Sub Proc_320_40_108EB80
  'Data Table: 527B9C
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_527BB8 As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_108E8F0: On Error Goto loc_108EB51
  loc_108E90A: If (Me.RecordCount = 0) Then
  loc_108E90D:   Proc_320_40_108EB80 = 
  loc_108E913: End If
  loc_108E917: Set var_90 = Me.TopCtrl1
  loc_108E91D: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108E925: var_A4 = CStr()
  loc_108E936: If (var_A4 = "Add") Then
  loc_108E966:   Set var_90 = Me.Txt
  loc_108E96C:   Call 0.Method_Proc_320_40_108EB800 (CInt(0), var_A8, var_A4, "Select Count(*) From JobSchedule Where ScheduleName='", var_A0, -1)
  loc_108E98D:   unk_527BB8.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_108E99D:    = var_C8.Item()
  loc_108E9A5:    = var_DC.Value
  loc_108E9D2:   If (var_A8.Text.Fields > 0) Then
  loc_108E9F0:     var_A0 = "Duplicate Name"
  loc_108E9F6:     MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_108EA11:     Set var_90 = Me.Txt
  loc_108EA17:     Call 0.Method_Proc_320_40_108EB800 (CInt(0))
  loc_108EA1F:     var_A8.SetFocus
  loc_108EA30:     Proc_320_40_108EB80 = &HFF
  loc_108EA36:   End If
  loc_108EA39: Else
  loc_108EA66:   Set var_90 = Me.Txt
  loc_108EA6C:   Call 0.Method_Proc_320_40_108EB800 (CInt(0), var_A8, var_A4, "Select Count(*) From JobSchedule Where ScheduleName='", var_A0, -1)
  loc_108EA9E:   unk_527BB8.Execute var_C8 & var_A4 & "' And ScheduleName<>'" & global_64 & "'", 0, var_DC
  loc_108EAAE:    = var_C8.Item(var_A8)
  loc_108EAB6:    = var_DC.Value
  loc_108EAE7:   If (var_A8.Text.Fields > 0) Then
  loc_108EB0B:     MsgBox("Duplicate Name", &H40, "Information", var_10C, var_12C)
  loc_108EB26:     Set var_90 = Me.Txt
  loc_108EB2C:     Call 0.Method_Proc_320_40_108EB800 (CInt(0))
  loc_108EB34:     var_A8.SetFocus
  loc_108EB45:     Proc_320_40_108EB80 = &HFF
  loc_108EB4B:   End If
  loc_108EB4B: End If
  loc_108EB4B: Proc_320_40_108EB80 = var_A8
  loc_108EB51: ' Referenced from: 108E8F0
  loc_108EB57: Call 0.Method_arg_50 (var_A4)
  loc_108EB6C: Proc_183_57_104B0BC(var_A4)
  loc_108EB78: Proc_320_40_108EB80 = "ValidateName"
  loc_108EB7E: Put , ,  'put  bytes
End Sub

Public Sub Proc_320_41_E5407C
  'Data Table: 527B9C
  loc_E54060: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E54072:   Me.DGHelp.Visible = False
  loc_E5407A: End If
  loc_E5407A: Exit Sub
End Sub

Public Sub Proc_320_42_FD8A4C(arg_C, arg_10, arg_14) 'FD8A4C
  'Data Table: 527B9C
  Dim var_9C As Variant
  Dim var_8C As Variant
  Dim var_B8 As Variant
  loc_FD8880: var_9C = CVar(CLng(arg_10)) 'Long
  loc_FD888F: Set var_88 = Me.UpDown1
  loc_FD8895: Call 0.Method_Proc_320_42_FD8A4C0 (arg_C, var_8C)
  loc_FD88AD: var_9C = CVar(CLng(arg_14)) 'Long
  loc_FD88BC: Set var_88 = Me.UpDown1
  loc_FD88C2: Call 0.Method_Proc_320_42_FD8A4C0 (arg_C, var_8C, var_9C)
  loc_FD88E0: Set var_B4 = Me.UpDown1
  loc_FD88E6: Call 0.Method_Proc_320_42_FD8A4C0 (arg_C, var_B8, var_8C.Min)
  loc_FD88EE: var_B8.Min = var_8C.Max
  loc_FD8904: Set var_88 = Me.TxtNumUpDown1
  loc_FD890A: Call 0.Method_Proc_320_42_FD8A4C0 (arg_C, var_8C)
  loc_FD8938: If (CDbl(Val(var_8C.Text)) < CDbl(CLng(var_C8))) Then
  loc_FD8945:   Set var_88 = Me.UpDown1
  loc_FD894B:   Call 0.Method_Proc_320_42_FD8A4C0 (arg_C, var_8C)
  loc_FD8953:   var_8C.Min = var_9C
  loc_FD896B:   Set var_B4 = Me.TxtNumUpDown1
  loc_FD8971:   Call 0.Method_Proc_320_42_FD8A4C0 (arg_C, var_B8)
  loc_FD8979:   var_B8.Text = CStr(CLng())
  loc_FD898F: End If
  loc_FD8999: Set var_B4 = Me.UpDown1
  loc_FD899F: Call 0.Method_Proc_320_42_FD8A4C0 (arg_C)
  loc_FD89A7: var_B8.Max = var_B8
  loc_FD89BD: Set var_88 = Me.TxtNumUpDown1
  loc_FD89C3: Call 0.Method_Proc_320_42_FD8A4C0 (arg_C, var_8C)
  loc_FD89F1: If (CDbl(Val(var_8C.Text)) > CDbl(CLng(var_C8))) Then
  loc_FD89FE:   Set var_88 = Me.UpDown1
  loc_FD8A04:   Call 0.Method_Proc_320_42_FD8A4C0 (arg_C)
  loc_FD8A0C:   var_8C.Max = var_8C
  loc_FD8A24:   Set var_B4 = Me.TxtNumUpDown1
  loc_FD8A2A:   Call 0.Method_Proc_320_42_FD8A4C0 (arg_C, var_B8)
  loc_FD8A32:   var_B8.Text = CStr(CLng())
  loc_FD8A48: End If
  loc_FD8A48: Exit Sub
End Sub

Public Sub Proc_320_43_E6BDE0(arg_C, arg_10) 'E6BDE0
  'Data Table: 527B9C
  Dim var_8C As Variant
  loc_E6BD99: Set var_88 = Me.TxtNumUpDown1
  loc_E6BD9F: Call 0.Method_Proc_320_43_E6BDE00 (arg_C, var_8C)
  loc_E6BDA7: var_8C.Enabled = arg_10
  loc_E6BDC4: Set var_88 = Me.UpDown1
  loc_E6BDCA: Call 0.Method_Proc_320_43_E6BDE00 (arg_C, var_8C)
  loc_E6BDD2: var_8C.Enabled = arg_10
  loc_E6BDDE: Exit Sub
End Sub
