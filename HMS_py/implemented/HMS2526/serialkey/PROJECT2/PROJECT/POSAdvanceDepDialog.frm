VERSION 5.00
Begin VB.Form POSAdvanceDepDialog
  Caption = "Order Booking Advance"
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
  ClientWidth = 6945
  ClientHeight = 8250
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
  StartUpPosition = 1 'CenterOwner
  Begin Frame FrTxnNo
    Left = 6975
    Top = 1320
    Width = 4965
    Height = 255
    Visible = 0   'False
    TabIndex = 59
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3825
      Height = 255
      TabIndex = 8
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Txn. No."
      Index = 1
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 675
      Height = 225
      TabIndex = 60
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
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6945
    Height = 450
    TabIndex = 58
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3885
    Top = 1065
    Width = 1290
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin DataGrid DGFPNo
    Left = 1335
    Top = 5535
    Width = 4560
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 50
  End
  Begin Frame FrRem
    Left = 240
    Top = 2145
    Width = 6405
    Height = 255
    Visible = 0   'False
    TabIndex = 45
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 19
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 5265
      Height = 255
      TabIndex = 15
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin Label LblNarr
      Caption = "Narration"
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 795
      Height = 225
      TabIndex = 46
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
  End
  Begin Frame FrChqDet
    Left = 6975
    Top = 2655
    Width = 2595
    Height = 525
    Visible = 0   'False
    TabIndex = 42
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 13
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 13
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 14
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 270
      Width = 1440
      Height = 255
      TabIndex = 14
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Cheque No."
      Index = 15
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 960
      Height = 225
      TabIndex = 44
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
    Begin Label LblName
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &HFF0000&
      Left = 0
      Top = 270
      Width = 915
      Height = 225
      TabIndex = 43
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
  End
  Begin Frame FrSendRoom
    Left = 6975
    Top = 495
    Width = 3150
    Height = 255
    Visible = 0   'False
    TabIndex = 40
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 15
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 5
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Room No.#"
      Index = 26
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 915
      Height = 225
      TabIndex = 41
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
  End
  Begin Frame FrEmp
    Left = 6975
    Top = 1035
    Width = 4965
    Height = 255
    Visible = 0   'False
    TabIndex = 38
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 17
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3825
      Height = 255
      TabIndex = 7
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Staff"
      Index = 22
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 405
      Height = 225
      TabIndex = 39
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
  End
  Begin Frame FrComp
    Left = 6975
    Top = 765
    Width = 4965
    Height = 255
    Visible = 0   'False
    TabIndex = 36
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3825
      Height = 255
      TabIndex = 6
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Company"
      Index = 27
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 795
      Height = 225
      TabIndex = 37
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
  End
  Begin Frame FrCCDet
    Left = 6975
    Top = 1710
    Width = 4290
    Height = 795
    Visible = 0   'False
    TabIndex = 32
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3285
      Top = 540
      Width = 990
      Height = 255
      TabIndex = 12
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 2415
      Height = 255
      TabIndex = 9
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 270
      Width = 3165
      Height = 255
      TabIndex = 10
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 540
      Width = 1290
      Height = 255
      TabIndex = 11
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Batch No."
      Index = 0
      ForeColor = &HFF0000&
      Left = 2475
      Top = 555
      Width = 810
      Height = 225
      TabIndex = 57
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
    Begin Label LblName
      Caption = "C.C. No."
      Index = 18
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 645
      Height = 225
      TabIndex = 35
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
    Begin Label LblName
      Caption = "Holder"
      Index = 19
      ForeColor = &HFF0000&
      Left = 0
      Top = 270
      Width = 555
      Height = 225
      TabIndex = 34
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
    Begin Label LblName
      Caption = "Exp.Dt."
      Index = 20
      ForeColor = &HFF0000&
      Left = 0
      Top = 540
      Width = 585
      Height = 225
      TabIndex = 33
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
  End
  Begin DataGrid DGCompany
    Left = 5145
    Top = 8010
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin DataGrid DGTable
    Left = 2565
    Top = 6210
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 28
  End
  Begin DataGrid DGRoom
    Left = 7395
    Top = 3510
    Width = 2355
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
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
    TabIndex = 27
  End
  Begin Frame FrRest
    Left = 0
    Top = 915
    Width = 6885
    Height = 2355
    Visible = 0   'False
    TabIndex = 24
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1350
      Top = 420
      Width = 5295
      Height = 255
      TabIndex = 55
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 8
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3780
      Top = 960
      Width = 1395
      Height = 255
      Visible = 0   'False
      TabIndex = 53
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1350
      Top = 150
      Width = 1290
      Height = 255
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1350
      Top = 960
      Width = 1455
      Height = 255
      TabIndex = 4
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1350
      Top = 690
      Width = 3825
      Height = 255
      TabIndex = 3
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Party Name"
      Index = 12
      ForeColor = &HFF0000&
      Left = 240
      Top = 435
      Width = 990
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
    Begin Label LblName
      Caption = "Tip"
      Index = 21
      ForeColor = &HFF0000&
      Left = 3105
      Top = 960
      Width = 255
      Height = 225
      Visible = 0   'False
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
    Begin Label Lbl
      Caption = "Bill No."
      Index = 1
      ForeColor = &HFF0000&
      Left = 2970
      Top = 135
      Width = 570
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
    Begin Label Lbl
      Caption = "FP No."
      Index = 0
      ForeColor = &HFF0000&
      Left = 240
      Top = 165
      Width = 525
      Height = 225
      TabIndex = 51
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
    Begin Label LblName
      Caption = "Amount"
      Index = 14
      ForeColor = &HFF0000&
      Left = 240
      Top = 960
      Width = 660
      Height = 225
      TabIndex = 26
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
    Begin Label LblName
      Caption = "Type"
      Index = 13
      ForeColor = &HFF0000&
      Left = 240
      Top = 690
      Width = 405
      Height = 225
      TabIndex = 25
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
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 120
    Top = 3285
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 22
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
    Index = 2
    BackColor = &HFFFFFF&
    Left = 5490
    Top = 555
    Width = 1155
    Height = 255
    TabIndex = 16
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 1365
    Top = 555
    Width = 930
    Height = 255
    TabIndex = 0
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
  Begin MSHFlexGrid FGrid
    Left = 75
    Top = 3255
    Width = 6780
    Height = 1560
    TabIndex = 23
  End
  Begin MSFlexGrid FGPoint
    Left = 6165
    Top = 6345
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 47
  End
  Begin MSHFlexGrid FGrid1
    Left = 90
    Top = 5055
    Width = 6780
    Height = 1515
    Visible = 0   'False
    TabIndex = 48
  End
  Begin Label Label1
    Caption = "Bill Details"
    Index = 1
    ForeColor = &HFF0000&
    Left = 75
    Top = 4815
    Width = 6780
    Height = 240
    Visible = 0   'False
    TabIndex = 49
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
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
    Caption = "Press Ctrl+S to Save"
    Index = 0
    ForeColor = &HFF0000&
    Left = 240
    Top = 75
    Width = 2970
    Height = 300
    TabIndex = 31
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
    ForeColor = &HFF0000&
    Left = 2520
    Top = 555
    Width = 630
    Height = 225
    TabIndex = 21
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
  Begin Label Lbl
    Caption = "Date"
    Index = 37
    ForeColor = &HFF0000&
    Left = 4830
    Top = 555
    Width = 390
    Height = 225
    TabIndex = 20
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
  Begin Label Lbl
    Caption = "Rect No."
    Index = 36
    ForeColor = &HFF0000&
    Left = 255
    Top = 555
    Width = 705
    Height = 225
    TabIndex = 19
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
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu Del
      Caption = "Delete"
    End
  End
End

Attribute VB_Name = "POSAdvanceDepDialog"

Private global_64 As Integer
Private global_112 As Long
Private global_116 As Long
Private global_140 As Double
Private global_84 As Recordset15
Private global_108 As Integer
Private global_168 As Integer

Private Sub FGPoint_UnknownEvent_9 'ED1828
  'Data Table: 531BC8
  loc_ED178C: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED178F:   Call DGTable_UnknownEvent_9()
  loc_ED1794: End If
  loc_ED17B0: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_ED17B3:   Call DGEmp_UnknownEvent_9()
  loc_ED17B8: End If
  loc_ED17D4: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_ED17D7:   Call DGPayType_UnknownEvent_9()
  loc_ED17DC: End If
  loc_ED17F8: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_ED17FB:   Call DGRoom_UnknownEvent_9()
  loc_ED1800: End If
  loc_ED181C: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_ED181F:   Call DGCompany_UnknownEvent_9()
  loc_ED1824: End If
  loc_ED1824: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F5E060
  'Data Table: 531BC8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5DF40: On Error Goto loc_F5E05A
  loc_F5DF52: Me.DGTable.Visible = False
  loc_F5DF71: If (Me.RecordCount > 0) Then
  loc_F5DFB0:   Set var_B4 = Me.Txt
  loc_F5DFB6:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(5), var_B8)
  loc_F5DFBE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5DFF1:   var_B0 = Me.Fields.Item("Code")
  loc_F5E010:   Set var_B4 = Me.Txt
  loc_F5E016:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(5), var_B8)
  loc_F5E01E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5E034: End If
  loc_F5E03F: Set var_A8 = Me.Txt
  loc_F5E045: Call 0.Method_DGTable_UnknownEvent_90 (CInt(5))
  loc_F5E04D: var_B0.SetFocus
  loc_F5E059: Exit Sub
  loc_F5E05A: ' Referenced from: F5DF40
  loc_F5E05A: Proc_6_60_E63754(var_B0)
  loc_F5E05F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA4288
  'Data Table: 531BC8
  Dim var_A8 As Variant
  loc_EA4208: Set var_88 = Me.DGTable
  loc_EA4232: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA423A: Set var_BC = Me.DGTable
  loc_EA4276: Proc_6_138_106E830(Me.DGTable, global_72, CInt(5), Me.FGPoint)
  loc_EA4284: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '15DABFC
  'Data Table: 531BC8
  Dim var_AC As String
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_B8 As String
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_D4 As String
  Dim var_CC As Variant
  Dim var_D8 As String
  Dim unk_531BDE As Connection15
  Dim var_94 As Recordset15
  Dim var_EC As Variant
  Dim var_98 As Variant
  Dim var_F8 As Variant
  Dim var_F0 As Variant
  Dim var_A8 As Variant
  Dim var_8E As Integer
  Dim var_108 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_140 As Variant
  Dim var_120 As Variant
  Dim var_1D4 As Variant
  Dim var_180 As Variant
  Dim var_110 As MSHFlexGrid
  Dim var_8C As Double
  Dim var_1F0 As Long
  Dim Me As Recordset15
  loc_15D98C4: Set var_98 = Me.TopCtrl1
  loc_15D98CA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_15D98E3: If (CStr() = "Add") Then
  loc_15D98EC:   var_B0 = global_116
  loc_15D98F8:   If (var_B0 = 6) Then
  loc_15D990F:     var_AC = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName," & " ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType, ST.AmtCr,"
  loc_15D991D:     var_B8 = var_AC & " ST.TipAmt, ST.FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.TxnNo, ST.ExpDate,ST.ContraDOCId," & " CC.Name as CompName,CompCode"
  loc_15D992B:     var_C0 = var_B8 & " FROM ((((PayChargeH AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code)" & " LEFT JOIN Employee AS E ON ST.EmpCode = E.Code)"
  loc_15D9940:     var_D4 = var_C0 & " LEFT JOIN RevMast AS P ON ST.PayCode = P.Code)" & ")" & " Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='"
  loc_15D9951:     Set var_98 = Me.Txt
  loc_15D9957:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_CC, var_D0, var_D4)
  loc_15D995F:     var_A8 = var_CC.Text
  loc_15D9968:     var_D8 = -1 & var_D0
  loc_15D9978:     unk_531BDE.Execute var_D8 & "' And AmtCr>0", var_F0, var_B0
  loc_15D9983:     Set var_94 = var_F0
  loc_15D99AE:   Else
  loc_15D99B7:     If (var_B0 = 5) Then
  loc_15D99CE:       var_AC = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName," & " ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType, ST.AmtCr,"
  loc_15D99D5:       var_B4 = var_AC & " ST.TipAmt, Cast(Substring(ST.ContraDocId,14,8) As int) As FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.TxnNo, ST.ExpDate,ST.BatchNo,ST.ContraDOCId,"
  loc_15D99E3:       var_BC = var_B4 & " CC.Name as CompName,CompCode" & " FROM ((((PayCharge AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code)"
  loc_15D99FF:       var_D4 = var_BC & " LEFT JOIN Employee AS E ON ST.EmpCode = E.Code)" & " LEFT JOIN RevMast AS P ON ST.PayCode = P.Code)" & ")" & " Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='"
  loc_15D9A10:       Set var_98 = Me.Txt
  loc_15D9A16:       Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_CC, var_D0, var_D4)
  loc_15D9A1E:       var_A8 = var_CC.Text
  loc_15D9A27:       var_D8 = -1 & var_D0
  loc_15D9A37:       unk_531BDE.Execute var_D8 & "' And AmtCr>0", var_F0, 
  loc_15D9A42:       Set var_94 = var_F0
  loc_15D9A6A:     End If
  loc_15D9A6A:   End If
  loc_15D9A81:   If (var_94.RecordCount > 0) Then
  loc_15D9AC0:     Set var_F0 = Me.Txt
  loc_15D9AC6:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_F8)
  loc_15D9ACE:     var_F8.Text = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_15D9B18:     global_100 = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_15D9B65:     Set var_F0 = Me.Txt
  loc_15D9B6B:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(1), var_F8)
  loc_15D9B73:     var_F8.Text = CStr(Me.Recordset15.Fields.Item("VNo").Value)
  loc_15D9BC5:     Set var_F0 = Me.Txt
  loc_15D9BCB:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(2), var_F8)
  loc_15D9BD3:     var_F8.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_15D9C24:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_15D9C71:     Set var_F0 = Me.Txt
  loc_15D9C77:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(9), var_F8)
  loc_15D9C7F:     var_F8.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_15D9CCC:     Set var_F0 = Me.Txt
  loc_15D9CD2:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_F8)
  loc_15D9CDA:     var_F8.Tag = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ContraDocId")))
  loc_15D9CEE:   End If
  loc_15D9CFD:   Me.FGrid.Redraw = False
  loc_15D9D12:   Set var_98 = Me.FGrid
  loc_15D9D18:   var_98.Rows = 1
  loc_15D9D22:   var_8E = 1
  loc_15D9D3C:   If (Me.var_98.RecordCount > 0) Then
  loc_15D9D3F:     ' Referenced from: 15DA545
  loc_15D9D51:     If Not(Me.Recordset15.EOF) Then
  loc_15D9D54:       var_EC = vbNullString
  loc_15D9D5E:       Set var_98 = Me.FGrid
  loc_15D9D73:       Set var_110 = Me.FGrid
  loc_15D9D7A:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15D9D7F:       var_130 = 0
  loc_15D9DB6:       var_150 = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_15D9DBD:       LateIdCallSt
  loc_15D9E10:       var_150 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_8E)), var_110, var_150)) 'String
  loc_15D9E17:       LateIdCallSt
  loc_15D9E2D:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15D9E32:       var_130 = 1
  loc_15D9E69:       var_150 = CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)) 'String
  loc_15D9E70:       LateIdCallSt
  loc_15D9EC3:       var_150 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_8E)), var_110, var_150, 3, CVar(CLng(var_8E)))) 'String
  loc_15D9ECA:       LateIdCallSt
  loc_15D9F17:       Proc_6_39_E7D3A0(var_150, CVar(Me.Recordset15.Fields.Item("FPNo")), &H17, CVar(CLng(var_8E)), var_110, var_150)
  loc_15D9F20:       var_170 = CVar(CStr(var_150)) 'String
  loc_15D9F27:       LateIdCallSt
  loc_15D9F79:       var_140 = 0
  loc_15D9FAE:       unk_531BDE.Execute CStr("SELECT PartyName FROM HallBook WHERE DocId='" & Me.Recordset15.Fields.Item("ContraDocId").Value & "'"), var_180, -1
  loc_15D9FB6:       var_F0 = var_F0.Fields
  loc_15D9FBE:       var_140 = var_F8.Item(var_F8)
  loc_15D9FCF:       var_1D4 = CVar(Proc_6_38_E69628(CVar(var_184), var_184, CVar(CLng(7)), CVar(CLng(var_8E)), var_110)) 'String
  loc_15D9FD6:       LateIdCallSt
  loc_15DA01E:       var_120 = CVar(CLng(var_8E)) 'Long
  loc_15DA023:       var_140 = 8
  loc_15DA054:       var_180 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_15DA05B:       LateIdCallSt
  loc_15DA075:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_15DA07A:       var_120 = 8
  loc_15DA086:       var_A8 = var_110.TextMatrix)
  loc_15DA0A3:       var_8C = (var_8C + Val(CStr(var_A8)))
  loc_15DA0B0:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DA0B8:       var_130 = CVar(CLng(9)) 'Long
  loc_15DA0EB:       var_150 = CVar(CStr(Me.var_A8.Fields.Item("CardNo").Value)) 'String
  loc_15DA0F2:       LateIdCallSt
  loc_15DA10C:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DA114:       var_130 = CVar(CLng(&HA)) 'Long
  loc_15DA147:       var_150 = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_15DA14E:       LateIdCallSt
  loc_15DA1A0:       var_150 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_110, var_150, CVar(CLng(&HB)), CVar(CLng(var_8E)))) 'String
  loc_15DA1A7:       LateIdCallSt
  loc_15DA1F5:       var_150 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BatchNo")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_110, var_150, var_110)) 'String
  loc_15DA1FC:       LateIdCallSt
  loc_15DA24B:       var_150 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TxnNo")), &H18, CVar(CLng(var_8E)), var_110, var_150)) 'String
  loc_15DA252:       LateIdCallSt
  loc_15DA268:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DA270:       var_130 = CVar(CLng(&HD)) 'Long
  loc_15DA2A3:       var_150 = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_15DA2AA:       LateIdCallSt
  loc_15DA2FC:       var_150 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_110, var_150, CVar(CLng(&HE)), CVar(CLng(var_8E)))) 'String
  loc_15DA303:       LateIdCallSt
  loc_15DA319:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DA321:       var_130 = CVar(CLng(&HF)) 'Long
  loc_15DA354:       var_150 = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_15DA35B:       LateIdCallSt
  loc_15DA3AD:       var_150 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&H10)), CVar(CLng(var_8E)), var_110, var_150, CVar(CLng(&H10)), CVar(CLng(var_8E)))) 'String
  loc_15DA3B4:       LateIdCallSt
  loc_15DA3CA:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DA3D2:       var_130 = CVar(CLng(&H11)) 'Long
  loc_15DA405:       var_150 = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_15DA40C:       LateIdCallSt
  loc_15DA45F:       var_150 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompCode")), &H15, CVar(CLng(var_8E)), var_110, var_150, &H15, CVar(CLng(var_8E)))) 'String
  loc_15DA466:       LateIdCallSt
  loc_15DA4B5:       var_150 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompName")), &H16, CVar(CLng(var_8E)), var_110, var_150, var_110)) 'String
  loc_15DA4BC:       LateIdCallSt
  loc_15DA4D2:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DA4D7:       var_130 = &H12
  loc_15DA50E:       var_150 = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_15DA515:       LateIdCallSt
  loc_15DA52D:       Set var_110 = Nothing 
  loc_15DA537:       var_8E = (var_8E + 1)
  loc_15DA540:       Me.Recordset15.MoveNext
  loc_15DA545:       GoTo loc_15D9D3F
  loc_15DA548:     End If
  loc_15DA55B:     Me.FGrid.FixedRows = 1
  loc_15DA56D:     var_A8 = Me.FGrid1.Tag
  loc_15DA583:     var_150 = CVar(CStr((Val(CStr(var_A8)) + var_8C))) 'String
  loc_15DA58B:     Set var_CC = Me.FGrid1
  loc_15DA591:     var_CC.Tag = var_150
  loc_15DA5AA:   Else
  loc_15DA5B0:     var_1F0 = global_116
  loc_15DA5BC:     If (var_1F0 = 6) Then
  loc_15DA5E2:       Call Proc_221_65_F729FC(Proc_5_1_100EC1C("ADD", Me, global_56, var_1F0, var_8E, var_110, var_150, var_130), var_108, var_110, var_150, var_150)
  loc_15DA5F7:       Set var_98 = Me.FGrid
  loc_15DA608:       Call Proc_221_66_F6772C(FGrid.DispID_10000, vbNullString, var_110)
  loc_15DA61A:       Set var_98 = Me.Txt
  loc_15DA620:       Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_CC, &HFF)
  loc_15DA628:       var_CC.Enabled = var_150
  loc_15DA63F:       Set var_98 = Me.Lbl
  loc_15DA645:       Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_CC, 0)
  loc_15DA64D:       var_CC.Visible = var_110
  loc_15DA66C:       Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(3), var_CC)
  loc_15DA674:       var_CC.Visible = False
  loc_15DA697:       var_AC = "SELECT HallBook.DocId AS Code, HallBook.VNo AS Name,HallBook.PartyName FROM HallBook WHERE HallBook.RestCode='" & global_52
  loc_15DA6C0:       unk_531BDE.Execute var_AC & "' AND HallbOOK.Docid='" & POSAdvanceDepDialog.pDocId & "'", var_A8, -1
  loc_15DA6D1:       Set global_88 = Me.Txt
  loc_15DA703:       If (Me.RecordCount <> 0) Then
  loc_15DA70C:         Call Proc_221_72_117E2C0(MemVar_1F95044, var_AC)
  loc_15DA729:         var_98 = Me.Fields
  loc_15DA750:         Set var_F0 = Me.Txt
  loc_15DA756:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_F8, CStr(var_98.Item("Code").Value))
  loc_15DA75E:         var_F8.Text = var_98
  loc_15DA7B0:         Set var_F0 = Me.Txt
  loc_15DA7B6:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_F8)
  loc_15DA7BE:         var_F8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15DA810:         Set var_F0 = Me.Txt
  loc_15DA816:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_F8)
  loc_15DA81E:         var_F8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15DA84E:         var_CC = Me.Fields.Item("PartyName")
  loc_15DA856:         var_A8 = CVar(var_CC) 'Address
  loc_15DA86D:         Set var_F0 = Me.Txt
  loc_15DA873:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(5), var_F8)
  loc_15DA87B:         var_F8.Text = Proc_6_38_E69628(var_A8)
  loc_15DA89A:         Set var_98 = Me.Txt
  loc_15DA8A0:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_CC)
  loc_15DA8A8:         var_CC.SetFocus
  loc_15DA8B4:       End If
  loc_15DA8B7:     Else
  loc_15DA8C0:       If (var_1F0 = 5) Then
  loc_15DA8E6:         Call Proc_221_65_F729FC(Proc_5_1_100EC1C("ADD", Me), global_56)
  loc_15DA8FB:         Set var_98 = Me.FGrid
  loc_15DA90C:         Call Proc_221_66_F6772C(FGrid.DispID_10000, vbNullString)
  loc_15DA91E:         Set var_98 = Me.Txt
  loc_15DA924:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_CC)
  loc_15DA92C:         var_CC.Enabled = True
  loc_15DA943:         Set var_98 = Me.Lbl
  loc_15DA949:         Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_CC)
  loc_15DA951:         var_CC.Visible = False
  loc_15DA970:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(3), var_CC)
  loc_15DA978:         var_CC.Visible = False
  loc_15DA99B:         var_AC = "SELECT PD.DocId AS Code, PD.VNo AS Name,PD.CustName As PartyName FROM PackingOrder PD WHERE PD.RestCode='" & global_52
  loc_15DA9C4:         unk_531BDE.Execute var_AC & "' AND PD.Docid='" & POSAdvanceDepDialog.pDocId & "'", var_A8, -1
  loc_15DA9D5:         Set global_88 = Me.Txt
  loc_15DAA07:         If (Me.RecordCount <> 0) Then
  loc_15DAA10:           Call Proc_221_72_117E2C0(MemVar_1F95044, var_AC)
  loc_15DAA2D:           var_98 = Me.Fields
  loc_15DAA54:           Set var_F0 = Me.Txt
  loc_15DAA5A:           Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_F8, CStr(var_98.Item("Code").Value))
  loc_15DAA62:           var_F8.Text = var_98
  loc_15DAAB4:           Set var_F0 = Me.Txt
  loc_15DAABA:           Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_F8)
  loc_15DAAC2:           var_F8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15DAB14:           Set var_F0 = Me.Txt
  loc_15DAB1A:           Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_F8)
  loc_15DAB22:           var_F8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15DAB52:           var_CC = Me.Fields.Item("PartyName")
  loc_15DAB71:           Set var_F0 = Me.Txt
  loc_15DAB77:           Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(5), var_F8)
  loc_15DAB7F:           var_F8.Text = Proc_6_38_E69628(CVar(var_CC))
  loc_15DAB9E:           Set var_98 = Me.Txt
  loc_15DABA4:           Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_CC)
  loc_15DABAC:           var_CC.SetFocus
  loc_15DABB8:         End If
  loc_15DABB8:       End If
  loc_15DABB8:     End If
  loc_15DABB8:   End If
  loc_15DABC6:   Me.FGrid.Redraw = True
  loc_15DABD3:   Set var_94 = Nothing
  loc_15DABE1:   Set var_98 = Me.Txt
  loc_15DABE7:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_CC)
  loc_15DABEF:   var_CC.SetFocus
  loc_15DABFB: End If
  loc_15DABFB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0A5B4
  'Data Table: 531BC8
  loc_E0A5A0: Call Proc_221_78_13B1EEC()
  loc_E0A5AB: Call Proc_221_75_11570CC(global_156)
  loc_E0A5B0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE135C
  'Data Table: 531BC8
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE1190: Set var_88 = Me.TopCtrl1
  loc_FE1196: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_FE11AF: If (CStr() = "Browse") Then
  loc_FE11B2:   Exit Sub
  loc_FE11B3: End If
  loc_FE11D0: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE11D3:   Exit Sub
  loc_FE11D4: End If
  loc_FE11E5: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FE1207:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE1241:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE1263:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE1279:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE1282:         Set var_110 = Me.FGrid
  loc_FE129D:       Else
  loc_FE12B0:         Me.FGrid.Rows = 1
  loc_FE12D4:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_FE12DC:         Set var_110 = Me.FGrid
  loc_FE1309:         Me.FGrid.FixedRows = 1
  loc_FE1311:       End If
  loc_FE1311:     End If
  loc_FE1314:   Else
  loc_FE1335:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE1345:   End If
  loc_FE1349:   Set var_88 = Me.FGrid
  loc_FE135A: End If
  loc_FE135A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E422E4
  'Data Table: 531BC8
  loc_E422BA: If (KeyCode = 2) Then
  loc_E422D5:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E422DD:   Call FGrid_UnknownEvent_9()
  loc_E422E2: End If
  loc_E422E2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F64A24
  'Data Table: 531BC8
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_D8 As Long
  loc_F648F8: On Error Goto loc_F64A1E
  loc_F6491E: Call Proc_221_65_F729FC(Proc_5_1_100EC1C("ADD", Me))
  loc_F64929: Call Proc_221_66_F6772C(global_56)
  loc_F64956: var_88 = CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy"))
  loc_F64965: Set var_8C = Me.Txt
  loc_F6496B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, var_88)
  loc_F64973: var_D4.Text = 1
  loc_F6498F: var_D8 = global_116
  loc_F6499B: If (var_D8 = 6) Then
  loc_F649A9:   Set var_8C = Me.Txt
  loc_F649AF:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_D4)
  loc_F649B7:   var_D4.SetFocus
  loc_F649C9:   Call Proc_221_72_117E2C0(MemVar_1F95044, var_88)
  loc_F649D1:   Call Fgrid1_UnknownEvent_9()
  loc_F649D9: Else
  loc_F649E2:   If (var_D8 = 5) Then
  loc_F649F0:     Set var_8C = Me.Txt
  loc_F649F6:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_D4)
  loc_F649FE:     var_D4.SetFocus
  loc_F64A10:     Call Proc_221_72_117E2C0(MemVar_1F95044, var_88)
  loc_F64A18:     Call Fgrid1_UnknownEvent_9()
  loc_F64A1D:   End If
  loc_F64A1D: End If
  loc_F64A1D: Exit Sub
  loc_F64A1E: ' Referenced from: F648F8
  loc_F64A1E: Proc_6_60_E63754(var_D8)
  loc_F64A23: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC461C
  'Data Table: 531BC8
  loc_EC4584: On Error Goto loc_EC4614
  loc_EC45BE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC45CD:   Set var_110 = Me
  loc_EC45E4:   Call Proc_221_65_F729FC(Proc_5_1_100EC1C("INI", var_110))
  loc_EC45EF:   Call Proc_221_70_FB76F4(global_56)
  loc_EC45F4:   Call Proc_221_68_150E800()
  loc_EC45FC: Else
  loc_EC4602:   Call 0.Method_arg_1E8 (var_110)
  loc_EC460A:   Call var_110.SetFocus
  loc_EC4613: End If
  loc_EC4613: Exit Sub
  loc_EC4614: ' Referenced from: EC4584
  loc_EC4614: Proc_6_60_E63754()
  loc_EC4619: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '13F150C
  'Data Table: 531BC8
  Dim var_A0 As Long
  Dim var_144 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Fields15
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_10C As String
  Dim unk_531BDE As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim var_C8 As Variant
  Dim var_1AC As Integer
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_9C As Double
  Dim var_12C As Variant
  Dim var_19C As Variant
  loc_13F0B3C: On Error Goto loc_13F14BB
  loc_13F0B45: var_A0 = global_116
  loc_13F0B51: If (var_A0 = 6) Then
  loc_13F0B5A:   var_144 = 0
  loc_13F0BAB:   var_108 = "SELECT count(*) FROM Ledger WHERE DocId='" & Me.Fields.Item("PostDocId").Value & "' AND V_Type='BREC'" 
  loc_13F0BB9:   unk_531BDE.Execute CStr(var_108), var_12C, -1
  loc_13F0BC1:   var_130 = var_130.Fields
  loc_13F0BC9:   var_144 = var_134.Item(var_134)
  loc_13F0BD1:   var_148 = var_148.Value
  loc_13F0BFE:   If (var_158 > 0) Then
  loc_13F0C28:     MsgBox(CVar("Recrod can not delete." & vbCrLf & "Related entry exist!"), &H10, "Delete...", var_108, var_12C)
  loc_13F0C3B:     Exit Sub
  loc_13F0C3C:   End If
  loc_13F0C73:   If (MsgBox("Delete Record ?", &H24, "Confirmation", var_108, var_12C) = 6) Then
  loc_13F0C7F:     unk_531BDE.BeginTrans var_17C
  loc_13F0C8D:     var_C8 = Me.Bookmark
  loc_13F0C95:     var_94 = var_C8 'Variant
  loc_13F0CB6:     Proc_6_7_F26918(var_C8, MemVar_1F950EC, "UPDATE HallBook SET Advance=0,U_EntDt=", var_210)
  loc_13F0CBE:     var_E8 = -1 & var_C8 
  loc_13F0CD1:     var_1AC = 0
  loc_13F0D11:     var_12C = Me.Fields.Item("SearchCode").Value
  loc_13F0D19:     var_158 = "SELECT ContraDocId FROM PayChargeH Where VType In ('AD','AR') AND Docid='" & var_12C 
  loc_13F0D22:     var_178 = var_158 & "'" 
  loc_13F0D30:     unk_531BDE.Execute CStr(var_178), var_19C, -1
  loc_13F0D38:     var_130 = var_130.Fields
  loc_13F0D40:     var_1AC = var_134.Item(var_134)
  loc_13F0D48:     var_148 = var_148.Value
  loc_13F0D67:     unk_531BDE.Execute CStr(var_1BC & var_1BC & "'"), "Confirmation" & " WHERE Docid='", var_214
  loc_13F0DF1:     unk_531BDE.Execute CStr("Delete From PayChargeH Where VType In ('AD','AR') AND Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_12C, -1
  loc_13F0E3C:     var_248 = 0
  loc_13F0E4F:     var_240 = 0
  loc_13F0E5A:     var_23C = 0
  loc_13F0E6D:     var_234 = 0
  loc_13F0E78:     var_230 = 0
  loc_13F0E8B:     var_228 = 0
  loc_13F0ED4:     Proc_154_5_10E3BD4(MemVar_1F95044, "PayChargeH", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13F0F44:     var_108 = "Delete From lEDGER Where Docid='" & Me.Fields.Item("PostDocId").Value & "'" 
  loc_13F0F52:     unk_531BDE.Execute CStr(var_108), var_12C, -1
  loc_13F0F9D:     var_248 = 0
  loc_13F0FB0:     var_240 = 0
  loc_13F0FBB:     var_23C = 0
  loc_13F0FCE:     var_234 = 0
  loc_13F0FD9:     var_230 = 0
  loc_13F0FEC:     var_228 = 0
  loc_13F1035:     Proc_154_5_10E3BD4(MemVar_1F95044, "Ledger", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13F1063:     unk_531BDE.CommitTrans
  loc_13F1073:     Me.Requery -1
  loc_13F1081:     var_17C = Me.RecordCount
  loc_13F1093:     If (CVar(var_17C) >= var_94) Then
  loc_13F10A0:       Me.Bookmark = var_94
  loc_13F10A8:     Else
  loc_13F10BC:       If (Me.EOF = 0) Then
  loc_13F10C5:         Me.MoveLast
  loc_13F10CA:       End If
  loc_13F10CA:     End If
  loc_13F10CA:     Call Proc_221_68_150E800(var_228, 0, var_230, var_234)
  loc_13F10EB:     Proc_5_0_1107AD0(&HFF, Me, global_56, 0)
  loc_13F10F3:   End If
  loc_13F10F6: Else
  loc_13F10FF:   If (var_A0 = 5) Then
  loc_13F1139:     If (MsgBox("Delete Record ?", &H24, "Confirmation", var_108, var_12C) = 6) Then
  loc_13F1145:       unk_531BDE.BeginTrans var_17C
  loc_13F115B:       var_94 = Me.Bookmark 'Variant
  loc_13F11B5:       unk_531BDE.Execute CStr("Delete From PayCharge Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_12C, -1
  loc_13F1200:       var_248 = 0
  loc_13F1213:       var_240 = 0
  loc_13F121E:       var_23C = 0
  loc_13F1231:       var_234 = 0
  loc_13F1298:       Proc_154_5_10E3BD4(MemVar_1F95044, "PayCharge", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13F12E5:       var_C8 = Me.Fields.Item("ContraDocId").Value
  loc_13F12F0:       var_144 = 0
  loc_13F1325:       unk_531BDE.Execute CStr("SELECT Sum(AmtCr) FROM PayCharge Where ContraDocid='" & var_C8 & "'"), var_12C, -1
  loc_13F132D:       var_130 = var_130.Fields
  loc_13F1335:       var_144 = var_134.Item(var_134)
  loc_13F133D:       var_148 = var_148.Value
  loc_13F1348:       Proc_6_39_E7D3A0(var_178, var_158, var_158, 0, 0)
  loc_13F1351:       var_9C = CSng(var_178)
  loc_13F137E:       Proc_6_7_F26918(var_C8, MemVar_1F950EC, var_9C, 0)
  loc_13F13C2:       var_10C = CStr(var_9C)
  loc_13F13D3:       var_108 = CVar("UPDATE PackingOrder SET AdvAmt=" & var_10C & ",U_EntDt=") & var_C8 
  loc_13F13DC:       var_12C = var_108 & " Where DocId='" 
  loc_13F13FA:       unk_531BDE.Execute CStr(var_12C & Me.Fields.Item("ContraDocId").Value & "'"), var_1BC, -1
  loc_13F142A:       unk_531BDE.CommitTrans
  loc_13F143A:       Me.Requery -1
  loc_13F145A:       If (CVar(Me.RecordCount) >= var_94) Then
  loc_13F1467:         Me.Bookmark = var_94
  loc_13F146F:       Else
  loc_13F1483:         If (Me.EOF = 0) Then
  loc_13F148C:           Me.MoveLast
  loc_13F1491:         End If
  loc_13F1491:       End If
  loc_13F1491:       Call Proc_221_68_150E800(var_130, var_234, 0)
  loc_13F14B2:       Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_13F14BA:     End If
  loc_13F14BA:   End If
  loc_13F14BA: End If
  loc_13F14BA: Exit Sub
  loc_13F14BB: ' Referenced from: 13F0B3C
  loc_13F14C1: unk_531BDE.RollbackTrans
  loc_13F14CE: Set var_A4 = Err()
  loc_13F14D4: Call 0.Method_arg_2C (var_10C, 0)
  loc_13F14F5: MsgBox(CVar(var_10C), &H30, " Deletion Error ", var_108, var_12C)
  loc_13F1508: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EA0124
  'Data Table: 531BC8
  Dim var_94 As TextBox
  loc_EA00A0: On Error Goto loc_EA011E
  loc_EA00C6: Call Proc_221_65_F729FC(Proc_5_1_100EC1C("EDIT", Me))
  loc_EA00DE: Set var_8C = Me.Txt
  loc_EA00E4: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_94)
  loc_EA00EC: var_94.Enabled = False
  loc_EA0103: Set var_8C = Me.Txt
  loc_EA0109: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_94)
  loc_EA0111: var_94.SetFocus
  loc_EA011D: Exit Sub
  loc_EA011E: ' Referenced from: EA00A0
  loc_EA011E: Proc_6_60_E63754(global_56)
  loc_EA0123: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B530
  'Data Table: 531BC8
  loc_E1B525: Me.Global.Unload Me
  loc_E1B52D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'FABD14
  'Data Table: 531BC8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As Long
  Dim var_110 As String
  Dim MemVar_1F950E4 As String
  loc_FABB94: On Error Goto loc_FABCAD
  loc_FABBA0: var_88 = Me.RecordCount
  loc_FABBAE: If (var_88 <= 0) Then
  loc_FABBB7:   var_B8 = "Information"
  loc_FABBD2:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_FABBE2:   Exit Sub
  loc_FABBE3: End If
  loc_FABBE9: var_10C = global_116
  loc_FABBF5: If (var_10C = 6) Then
  loc_FABC02:   var_110 = "SELECT Distinct Docid as Code,VNo As Rect_No,Convert(Varchar(11),Vdate,106) As V_Date,Comments,PayType,AmtCr As Amount FROM PayChargeH Where Vtype='" & global_124
  loc_FABC22:   MemVar_1F950E4 = var_110 & "' AND ContraDocID='" & POSAdvanceDepDialog.pDocId & "'"
  loc_FABC34: Else
  loc_FABC3D:   If (var_10C = 5) Then
  loc_FABC4A:     var_110 = "SELECT Distinct Docid as Code,VNo As Rect_No,Convert(Varchar(11),Vdate,106) As V_Date,Comments,PayType,AmtCr As Amount FROM PayCharge Where Vtype='" & global_124
  loc_FABC6A:     MemVar_1F950E4 = var_110 & "' AND ContraDocID='" & POSAdvanceDepDialog.pDocId & "'"
  loc_FABC79:   End If
  loc_FABC79: End If
  loc_FABC7F: MemVar_1F95120 = Me
  loc_FABC86: var_110 = "800,1000,4000,1000,1000"
  loc_FABC8C: Proc_6_126_F1C850(var_110, MemVar_1F950E4)
  loc_FABCA7: Call 0.Method_arg_2B0 (1, var_B8)
  loc_FABCAC: Exit Sub
  loc_FABCAD: ' Referenced from: FABB94
  loc_FABCB5: Set var_120 = Err()
  loc_FABCBB: Call 0.Method_arg_1C (var_88, MemVar_1F950E4)
  loc_FABCCC: If (var_88 <> 0) Then
  loc_FABCD7:   Set var_120 = Err()
  loc_FABCDD:   Call 0.Method_arg_2C (var_110)
  loc_FABCFE:   MsgBox(CVar(var_110), &H40, "Validation", var_E8, var_108)
  loc_FABD11: End If
  loc_FABD11: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3E708
  'Data Table: 531BC8
  loc_E3E6F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E700: Call Proc_221_68_150E800(global_56)
  loc_E3E705: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3EA68
  'Data Table: 531BC8
  loc_E3EA58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3EA60: Call Proc_221_68_150E800(global_56)
  loc_E3EA65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3EA08
  'Data Table: 531BC8
  loc_E3E9F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3EA00: Call Proc_221_68_150E800(global_56)
  loc_E3EA05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3E9A8
  'Data Table: 531BC8
  loc_E3E998: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E9A0: Call Proc_221_68_150E800(global_56)
  loc_E3E9A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E7F560
  'Data Table: 531BC8
  Dim var_8C As TextBox
  loc_E7F516: Set var_88 = Me.Txt
  loc_E7F51C: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_8C)
  loc_E7F532: var_9C = "Order Booking"
  loc_E7F548: Call Proc_221_69_1338600(var_8C.Text, "W")
  loc_E7F55D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E7F4D8
  'Data Table: 531BC8
  Dim Me As Recordset15
  loc_E7F473: Me.Requery -1
  loc_E7F483: Me.Requery -1
  loc_E7F493: Me.Requery -1
  loc_E7F4A4: If (global_116 = 6) Then
  loc_E7F4B2:   Me.Requery -1
  loc_E7F4B7: End If
  loc_E7F4C2: Me.Requery -1
  loc_E7F4D2: Me.Requery -1
  loc_E7F4D7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '19A8EBC
  'Data Table: 531BC8
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_124 As String
  Dim var_EC As Variant
  Dim var_158 As Long
  Dim var_15C As Variant
  Dim var_134 As Variant
  Dim var_160 As String
  Dim var_16C As Double
  Dim unk_531BDE As Connection15
  Dim var_17C As String
  Dim var_178 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_18C As String
  Dim var_CC As Variant
  Dim var_1A8 As Long
  Dim var_164 As String
  Dim var_1FC As String
  Dim var_1C8 As Variant
  Dim var_230 As Variant
  Dim var_1B8 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_174 As Variant
  Dim var_2D0 As Variant
  Dim var_320 As Variant
  Dim var_340 As Variant
  Dim var_360 As Variant
  Dim var_3F0 As Variant
  Dim var_410 As Variant
  Dim var_184 As MSHFlexGrid
  Dim var_430 As Variant
  Dim var_480 As Variant
  Dim var_4A0 As Variant
  Dim var_188 As Variant
  Dim var_4C0 As Variant
  Dim var_510 As Variant
  Dim var_530 As Variant
  Dim var_1A0 As MSHFlexGrid
  Dim var_BDC As Double
  Dim var_5E8 As Variant
  Dim var_BE4 As Double
  Dim var_6F8 As Variant
  Dim var_78C As Variant
  Dim var_810 As MSHFlexGrid
  Dim var_820 As Variant
  Dim var_8A4 As MSHFlexGrid
  Dim var_9EC As MSHFlexGrid
  Dim var_B24 As Variant
  Dim var_204 As String
  Dim var_220 As String
  Dim var_19C As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_310 As Variant
  Dim var_380 As Variant
  Dim var_3B0 As Variant
  Dim var_440 As Variant
  Dim var_470 As Variant
  Dim var_4E0 As Variant
  Dim var_500 As Variant
  Dim var_574 As Variant
  Dim var_62C As Variant
  Dim var_63C As Variant
  Dim var_64C As Variant
  Dim var_6A4 As Variant
  Dim var_708 As Variant
  Dim var_738 As Variant
  Dim var_7AC As Variant
  Dim var_830 As Variant
  Dim var_9A8 As Variant
  Dim var_A2C As Variant
  Dim var_A6C As Variant
  Dim var_B48 As Variant
  Dim var_B78 As Variant
  Dim var_B88 As Variant
  Dim var_BAC As String
  Dim var_240 As Variant
  Dim var_2C0 As Variant
  Dim var_650 As MSHFlexGrid
  Dim var_420 As Variant
  Dim var_654 As MSHFlexGrid
  Dim var_B20 As Variant
  Dim var_BD0 As MSHFlexGrid
  Dim var_BF0 As TextBox
  Dim var_C18 As Recordset15
  Dim var_C1C As Fields15
  Dim var_BCC As Variant
  Dim var_98 As Recordset15
  Dim var_674 As Variant
  Dim var_C4 As Double
  Dim var_B28 As String
  Dim var_CE0 As Double
  Dim var_A1C As Variant
  Dim var_AAC As Variant
  Dim var_CE4 As Long
  Dim Me As Recordset15
  Dim var_CE8 As Long
  loc_19A6120: On Error Goto loc_19A8E0B
  loc_19A6123: var_DC = 1
  loc_19A612C: var_FC = 1
  loc_19A615B: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_19A617F:   MsgBox("Please Fill Payment Details Before Saving..", &H40, "Save Data", var_144, var_154)
  loc_19A618F:   Exit Sub
  loc_19A6190: End If
  loc_19A61A2: If (global_116 = 6) Then
  loc_19A61A9:   Set var_15C = Me.FGrid1
  loc_19A61BF:   var_16C = Val(CStr(var_15C.Tag))
  loc_19A61E8:   var_164 = POSAdvanceDepDialog.AdvType
  loc_19A620D:   If ((CDbl(Val(CStr(Me.FGrid.Tag))) <> CDbl(var_16C)) And (var_164 <> "AD")) Then
  loc_19A6216:     var_DC = "Bill Sattlement..."
  loc_19A621B:     var_134 = var_DC
  loc_19A622D:     var_124 = "Bill Amount and Received Amount Not Matched" & vbCrLf
  loc_19A6250:     If (MsgBox(CVar(var_124 & "Are you want save?"), &H14, var_134, var_144, var_154) = 7) Then
  loc_19A6253:       Exit Sub
  loc_19A6254:     End If
  loc_19A6254:   End If
  loc_19A6254: End If
  loc_19A6258: var_86 = CByte(0) 'Byte
  loc_19A6265: unk_531BDE.BeginTrans var_170
  loc_19A626E: var_86 = CByte(1) 'Byte
  loc_19A6290: Set var_110 = Me.Txt
  loc_19A6296: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "Delete From PayChargeH Where Docid='", var_19C, -1)
  loc_19A62BF: Set var_174 = Me.Txt
  loc_19A62C5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_178, var_164, var_16C & var_124 & "' AND VNo=")
  loc_19A62CD: var_158 = var_178.Text
  loc_19A62EB: Set var_184 = Me.Txt
  loc_19A62F1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_19A6300: Proc_6_7_F26918(var_134, CVar(var_188))
  loc_19A6316: unk_531BDE.Execute CStr(CVar(var_FC & var_164 & " AND VDate=") & var_134), var_DC, 
  loc_19A6364: Set var_110 = Me.Txt
  loc_19A636A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "Delete From PayCharge Where Docid='")
  loc_19A6372: var_19C = var_15C.Text
  loc_19A637B: var_160 = -1 & var_124
  loc_19A6382: var_17C = var_16C & var_124 & "' AND VNo="
  loc_19A6393: Set var_174 = Me.Txt
  loc_19A6399: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_178, var_164)
  loc_19A63A1: var_17C = var_178.Text
  loc_19A63BF: Set var_184 = Me.Txt
  loc_19A63C5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_19A63D4: Proc_6_7_F26918(var_134, CVar(var_188))
  loc_19A63EA: unk_531BDE.Execute CStr(CVar(var_15C.Text & var_164 & " AND VDate=") & var_134), , 
  loc_19A643F: For var_1A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_1A4 'Integer
  loc_19A6449:   var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A644E:   var_FC = 2
  loc_19A647D:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_19A6484:     var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A6489:     var_FC = 8
  loc_19A64AF:     var_16C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A64B9:     var_CC = (var_CC + var_16C)
  loc_19A64CB:     var_1A8 = global_116
  loc_19A64D7:     If (var_1A8 = 6) Then
  loc_19A64DE:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A64E3:       var_FC = 2
  loc_19A6512:       If (CStr(Me.FGrid.TextMatrix)) = "Cheque") Then
  loc_19A6549:         var_17C = "Adv.Recd.Agnst.BillNo." & CStr(Val(CStr(Right(global_100, 8)))) & " Chq."
  loc_19A6550:         var_EC = CVar(CLng(var_AA)) 'Long
  loc_19A657D:         var_1FC = CVar(CLng(&HD)) & CStr(Me.FGrid.TextMatrix)) & " Dt."
  loc_19A6584:         var_1C8 = CVar(CLng(var_AA)) 'Long
  loc_19A6595:         Set var_15C = Me.FGrid
  loc_19A65AA:         var_94 = CVar(CLng(&HE)) & CStr(var_15C.TextMatrix))
  loc_19A65D3:       Else
  loc_19A65D7:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A65DF:         var_FC = CVar(CLng(&HF)) 'Long
  loc_19A6601:         var_94 = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), var_FC, var_DC, var_1C8, var_1FC, var_EC, var_17C, var_FC)
  loc_19A660E:       End If
  loc_19A6624:       If (POSAdvanceDepDialog.AdvType = "AD") Then
  loc_19A662B:         Set var_110 = Me.TopCtrl1
  loc_19A6631:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_DC)
  loc_19A6639:         var_124 = CStr(var_1A8)
  loc_19A664A:         If (var_124 = "Add") Then
  loc_19A6653:           Call Proc_221_72_117E2C0(MemVar_1F95044, var_124, var_CC, var_16C)
  loc_19A665E:           global_100 = var_124
  loc_19A6665:         End If
  loc_19A6678:         var_120 = Right(global_100, 8)
  loc_19A6689:         var_16C = Val(CStr(var_120))
  loc_19A669A:         var_134 = Trim(global_104)
  loc_19A66AA:         Set var_110 = Me.Txt
  loc_19A66B0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C, var_16C)
  loc_19A66BF:         Proc_6_7_F26918(var_240, CVar(var_15C), var_FC)
  loc_19A66F0:         var_1D8 = CVar(CLng(var_AA)) 'Long
  loc_19A66F8:         var_1F8 = CVar(CLng(&H11)) 'Long
  loc_19A6717:         var_320 = CVar(CLng(var_AA)) 'Long
  loc_19A671C:         var_340 = &H15
  loc_19A6729:         Set var_178 = Me.FGrid
  loc_19A673F:         var_3F0 = CVar(CLng(var_AA)) 'Long
  loc_19A6744:         var_410 = 1
  loc_19A6767:         var_480 = CVar(CLng(var_AA)) 'Long
  loc_19A6779:         Set var_188 = Me.FGrid
  loc_19A677F:         var_4C0 = var_188.TextMatrix)
  loc_19A67BA:         var_BDC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A67EC:         var_BE4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A67FA:         Set var_650 = Me.Txt
  loc_19A6800:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_654, var_BE4, &H12, CVar(CLng(var_AA)), var_BDC, 8)
  loc_19A680F:         Proc_6_39_E7D3A0(var_674, CVar(var_654), CVar(CLng(var_AA)), var_4C0, 2)
  loc_19A682F:         var_6F8 = Me.FGrid.TextMatrix)
  loc_19A6856:         var_78C = Me.FGrid.TextMatrix)
  loc_19A687D:         var_820 = Me.FGrid.TextMatrix)
  loc_19A689E:         Set var_8A4 = Me.FGrid
  loc_19A68B5:         Proc_6_7_F26918(var_8D4, CVar(CStr(var_8A4.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_AA)), var_820, CVar(CLng(&HD)), CVar(CLng(var_AA)), var_78C)
  loc_19A68E7:         Proc_6_17_EAAE40(var_978, CVar(CStr(Me.FGrid.TextMatrix))), &H18, CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_19A6918:         Proc_6_7_F26918(var_A1C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_6F8)
  loc_19A6928:         Proc_183_7_EB17D4(var_AAC, MemVar_1F950EC, CVar(CLng(9)), CVar(CLng(var_AA)))
  loc_19A693B:         Set var_B20 = Me.Txt
  loc_19A6941:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B24, var_B28)
  loc_19A6949:         var_480 = var_B24.Tag
  loc_19A6962:         var_124 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtCr,TipAmt,"
  loc_19A6970:         var_164 = var_124 & "FPNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,ContraDociD,BillAmount,LogSite_Code) Values ("
  loc_19A69C6:         var_220 = var_164 & "'" & global_100 & "'," & CStr(var_AA) & ",'" & global_124 & "'," & CStr(var_16C) & ",'" & MemVar_1F95070
  loc_19A69EC:         var_260 = CVar(var_220 & "','") & var_134 & "'," & var_240 & ",'" 
  loc_19A6A1E:         var_380 = var_260 & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_178.TextMatrix))) 
  loc_19A6A6D:         var_574 = var_380 & "','" & CVar(var_94) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_4C0)) & "'," & CVar(var_BDC) 
  loc_19A6AC2:         var_7AC = var_574 & "," & CVar(var_BE4) & "," & vbNullString & var_674 & ",'" & CVar(CStr(var_6F8)) & "','" & CVar(CStr(var_78C)) 
  loc_19A6B19:         var_A6C = var_7AC & "','" & CVar(CStr(var_820)) & "'," & var_8D4 & "," & var_978 & "," & var_A1C & ",'" & CVar(MemVar_1F950C8) 
  loc_19A6B65:         var_B88 = var_A6C & "'," & var_AAC & ",'A','" & CVar(global_52) & "','" & CVar(var_B28) & "',0,'" & CVar(MemVar_1F95078) 
  loc_19A6B7C:         unk_531BDE.Execute CStr(var_B88 & "')"), var_BCC, -1
  loc_19A6C88:         Set var_110 = Me.Txt
  loc_19A6C8E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_164)
  loc_19A6C96:         var_BD0 = var_15C.Text
  loc_19A6CC9:         var_18C = "UPDATE HallSale1 SET Advance=" & CStr(var_CC) & " WHERE BookDocId='" & var_164 & "'"
  loc_19A6CD2:         unk_531BDE.Execute var_18C, var_120, -1
  loc_19A6D00:         Set var_110 = Me.Txt
  loc_19A6D06:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_15C, var_164)
  loc_19A6D0E:         var_174 = var_15C.Text
  loc_19A6D1E:         Set var_174 = Me.Txt
  loc_19A6D24:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_178)
  loc_19A6D33:         Proc_6_7_F26918(var_134, CVar(var_178))
  loc_19A6D46:         Set var_184 = Me.Txt
  loc_19A6D4C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_188, var_18C)
  loc_19A6D54:         var_430 = var_188.Text
  loc_19A6D79:         var_17C = "UPDATE HallBook SET Advance=" & CStr(var_CC) & ",RectNo="
  loc_19A6DA0:         var_240 = CVar(var_17C & var_164 & ",rectDate=") & var_134 & " WHERE DocId='" & CVar(var_18C) 
  loc_19A6DB7:         unk_531BDE.Execute CStr(var_240 & "'"), var_260, -1
  loc_19A6DF2:       Else
  loc_19A6DF8:         global_124 = "IDC"
  loc_19A6E02:         POSAdvanceDepDialog.AdvType = "IDC"
  loc_19A6E15:         Set var_110 = Me.Txt
  loc_19A6E1B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_17C)
  loc_19A6E23:         var_1A0 = var_15C.Text
  loc_19A6E36:         Set var_174 = Me.Txt
  loc_19A6E3C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_178)
  loc_19A6E64:         Set var_184 = Me.Txt
  loc_19A6E6A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_19A6E79:         Proc_6_7_F26918(var_240, CVar(var_188))
  loc_19A6EAA:         var_1B8 = CVar(CLng(var_AA)) 'Long
  loc_19A6EB2:         var_1D8 = CVar(CLng(&H11)) 'Long
  loc_19A6ED1:         var_2C0 = CVar(CLng(var_AA)) 'Long
  loc_19A6ED6:         var_320 = &H15
  loc_19A6EF9:         var_3B0 = CVar(CLng(var_AA)) 'Long
  loc_19A6EFE:         var_3F0 = 1
  loc_19A6F21:         var_420 = CVar(CLng(var_AA)) 'Long
  loc_19A6F39:         var_4C0 = Me.FGrid.TextMatrix)
  loc_19A6F74:         var_16C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A6F93:         var_5E8 = Me.FGrid.TextMatrix)
  loc_19A6FA6:         var_BDC = Val(CStr(var_5E8))
  loc_19A6FB4:         Set var_810 = Me.Txt
  loc_19A6FBA:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_8A4, var_BDC, &H12, CVar(CLng(var_AA)), var_16C, 8)
  loc_19A6FC9:         Proc_6_39_E7D3A0(var_674, CVar(var_8A4), CVar(CLng(var_AA)), var_4C0, 2)
  loc_19A6FE9:         var_6F8 = Me.FGrid.TextMatrix)
  loc_19A7010:         var_78C = Me.FGrid.TextMatrix)
  loc_19A7031:         Set var_B20 = Me.FGrid
  loc_19A7037:         var_820 = var_B20.TextMatrix)
  loc_19A706F:         Proc_6_7_F26918(var_8D4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_AA)), var_820, CVar(CLng(&HD)), CVar(CLng(var_AA)), var_78C)
  loc_19A70A1:         Proc_6_17_EAAE40(var_978, CVar(CStr(Me.FGrid.TextMatrix))), &H18, CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_19A70D2:         Proc_6_7_F26918(var_A1C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_6F8)
  loc_19A70E2:         Proc_183_7_EB17D4(var_AAC, MemVar_1F950EC, CVar(CLng(9)), CVar(CLng(var_AA)))
  loc_19A70F5:         Set var_BEC = Me.Txt
  loc_19A70FB:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_BF0, var_B28)
  loc_19A7103:         var_420 = var_BF0.Tag
  loc_19A711E:         var_B78 = 0
  loc_19A713D:         unk_531BDE.Execute "SELECT NCUR FROM Enviro", var_C14, -1
  loc_19A7145:         var_C18 = var_C18.Fields
  loc_19A714D:         var_B78 = var_C1C.Item(var_C1C)
  loc_19A715C:         Proc_6_7_F26918(var_C40, CVar(var_C20), var_C20)
  loc_19A7175:         var_124 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtCr,TipAmt,"
  loc_19A7183:         var_164 = var_124 & "FPNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,ContraDociD,BillAmount,SettleDate,LogSite_Code) Values ("
  loc_19A71A4:         var_204 = var_164 & "'" & var_17C & "'," & CStr(var_AA)
  loc_19A71DE:         var_154 = CVar(var_204 & ",'" & global_124 & "'," & var_178.Text & ",'" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_19A721E:         var_310 = var_154 & "'," & var_240 & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_19A7259:         var_470 = var_310 & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(var_94) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_19A72AE:         var_6A4 = var_470 & CVar(CStr(var_4C0)) & "'," & CVar(var_16C) & "," & CVar(var_BDC) & "," & vbNullString & var_674 & ",'" 
  loc_19A72DE:         var_830 = CVar(CStr(var_820)) 'String
  loc_19A730A:         var_9A8 = var_6A4 & CVar(CStr(var_6F8)) & "','" & CVar(CStr(var_78C)) & "','" & var_830 & "'," & var_8D4 & "," & var_978 & "," 
  loc_19A7324:         var_A6C = var_9A8 & var_A1C & ",'" & CVar(MemVar_1F950C8) 
  loc_19A7371:         var_BCC = var_A6C & "'," & var_AAC & ",'A','" & CVar(global_52) & "','" & CVar(var_B28) & "'," & CVar(CStr(Me.FGrid1.Tag)) 
  loc_19A73A1:         var_BAC = CStr(var_BCC & "," & var_C40 & ",'" & CVar(MemVar_1F95078) & "')")
  loc_19A73AB:         unk_531BDE.Execute var_BAC, var_CB0, -1
  loc_19A74C9:       End If
  loc_19A74CD:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A74D2:       var_FC = 2
  loc_19A74DF:       Set var_110 = Me.FGrid
  loc_19A74E5:       var_120 = var_110.TextMatrix)
  loc_19A7501:       If (CStr(var_120) = "Room") Then
  loc_19A752F:         unk_531BDE.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_120, -1
  loc_19A753A:         Set var_98 = var_110
  loc_19A7560:         If (var_98.RecordCount > 0) Then
  loc_19A758F:           var_15C = var_98.Fields.Item("TaxStru")
  loc_19A759F:           var_134 = "Select * from taxstru where Code='" & var_15C.Value 
  loc_19A75A3:           var_FC = "' Order by Sno"
  loc_19A75A8:           var_144 = var_134 & var_FC 
  loc_19A75AC:           var_124 = CStr(var_144)
  loc_19A75B6:           unk_531BDE.Execute var_124, var_154, -1
  loc_19A75C1:           Set var_A0 = var_174
  loc_19A75DE:         Else
  loc_19A75F7:           MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_19A760D:           unk_531BDE.RollbackTrans
  loc_19A7612:           Exit Sub
  loc_19A7613:         End If
  loc_19A7627:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, var_174, Me.Txt, var_FC)
  loc_19A762F:         var_DC = var_15C.Text
  loc_19A7642:         Set var_174 = Me.Txt
  loc_19A7648:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_178, var_204, var_CB4)
  loc_19A7650:         var_B88 = var_178.Text
  loc_19A7670:         Set var_184 = Me.Txt
  loc_19A7676:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_19A7685:         Proc_6_7_F26918(var_240, CVar(var_188))
  loc_19A76B6:         var_1D8 = CVar(CLng(var_AA)) 'Long
  loc_19A76BB:         var_1F8 = 1
  loc_19A76DE:         var_320 = CVar(CLng(var_AA)) 'Long
  loc_19A76E3:         var_340 = 2
  loc_19A7731:         var_16C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A7750:         var_470 = Me.FGrid.TextMatrix)
  loc_19A7767:         Proc_183_7_EB17D4(var_5E8, MemVar_1F950EC, var_470, &H17, CVar(CLng(var_AA)), var_16C, 8, CVar(CLng(var_AA)))
  loc_19A7780:         var_160 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,FPNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,LOGSITE_CODE)Values " & "('"
  loc_19A7787:         var_164 = var_160 & var_124
  loc_19A77CE:         var_144 = CVar(var_164 & "'," & CStr(var_AC) & ",'" & global_124 & "'," & var_204 & ",'" & MemVar_1F95070 & "','") 'String
  loc_19A780A:         var_2D0 = var_144 & Trim(CVar(Me.LblVPrefix)) & "'," & var_240 & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(var_94) 
  loc_19A7846:         var_440 = var_2D0 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(var_16C) 
  loc_19A7898:         var_62C = var_440 & "," & CVar(CStr(var_470)) & ",'','',0,''," & vbNullString & "'" & CVar(MemVar_1F950C8) & "'," & var_5E8 & ",'A','" 
  loc_19A78CF:         unk_531BDE.Execute CStr(var_62C & CVar(global_52) & "','" & CVar(MemVar_1F95078) & "')"), var_6A4, -1
  loc_19A796B:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A7970:         var_FC = &H13
  loc_19A798E:         var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_19A799B:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A79A0:         var_FC = &H13
  loc_19A79E2:         var_B8 = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_19A79F7:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A79FC:         var_FC = &H17
  loc_19A7A24:         var_BC = CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_19A7A34:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A7A39:         var_FC = &H13
  loc_19A7A75:         var_B0 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5))
  loc_19A7A8A:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A7A8F:         var_FC = 8
  loc_19A7ABF:         var_C4 = (var_C4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19A7ACB:       End If
  loc_19A7ACE:     Else
  loc_19A7AD7:       If (var_1A8 = 5) Then
  loc_19A7ADE:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A7AE3:         var_FC = 2
  loc_19A7B01:         var_124 = CStr(Me.FGrid.TextMatrix))
  loc_19A7B12:         If (var_124 = "Cheque") Then
  loc_19A7B26:           Set var_110 = Me.Txt
  loc_19A7B2C:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_15C, var_124, "Recd.Agnst.OrderNo. ", var_FC, var_DC, var_C4)
  loc_19A7B34:           var_16C = var_15C.Text
  loc_19A7B55:           Set var_174 = Me.Txt
  loc_19A7B5B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_178, var_164, var_FC & var_124 & ", R.No. ", var_DC)
  loc_19A7B63:           var_120 = var_178.Text
  loc_19A7B73:           var_18C = var_FC & var_164 & " Chq."
  loc_19A7B7A:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A7BA7:           var_204 = CVar(CLng(&HD)) & CStr(Me.FGrid.TextMatrix)) & " Dt."
  loc_19A7BAE:           var_1B8 = CVar(CLng(var_AA)) 'Long
  loc_19A7BD4:           var_94 = CVar(CLng(&HE)) & CStr(Me.FGrid.TextMatrix))
  loc_19A7C07:         Else
  loc_19A7C0B:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A7C35:           var_94 = Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), var_DC, var_1B8, var_204)
  loc_19A7C42:         End If
  loc_19A7C46:         Set var_110 = Me.TopCtrl1
  loc_19A7C4C:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_DC)
  loc_19A7C54:         var_124 = CStr(var_18C)
  loc_19A7C65:         If (var_124 = "Add") Then
  loc_19A7C6E:           Call Proc_221_72_117E2C0(MemVar_1F95044, var_124)
  loc_19A7C79:           global_100 = var_124
  loc_19A7C80:         End If
  loc_19A7C93:         var_120 = Right(global_100, 8)
  loc_19A7CA4:         var_16C = Val(CStr(var_120))
  loc_19A7CC5:         Set var_110 = Me.Txt
  loc_19A7CCB:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C, var_16C)
  loc_19A7CDA:         Proc_6_7_F26918(var_240, CVar(var_15C))
  loc_19A7D0B:         var_1D8 = CVar(CLng(var_AA)) 'Long
  loc_19A7D13:         var_1F8 = CVar(CLng(&H11)) 'Long
  loc_19A7D1C:         Set var_174 = Me.FGrid
  loc_19A7D32:         var_320 = CVar(CLng(var_AA)) 'Long
  loc_19A7D37:         var_340 = &H15
  loc_19A7D44:         Set var_178 = Me.FGrid
  loc_19A7D5A:         var_3F0 = CVar(CLng(var_AA)) 'Long
  loc_19A7D5F:         var_410 = 1
  loc_19A7D82:         var_480 = CVar(CLng(var_AA)) 'Long
  loc_19A7D87:         var_4A0 = 2
  loc_19A7D94:         Set var_188 = Me.FGrid
  loc_19A7DAA:         var_510 = CVar(CLng(var_AA)) 'Long
  loc_19A7DAF:         var_530 = 8
  loc_19A7DF4:         var_5E8 = Me.FGrid.TextMatrix)
  loc_19A7E07:         var_BE4 = Val(CStr(var_5E8))
  loc_19A7E0E:         var_63C = CVar(CLng(var_AA)) 'Long
  loc_19A7E25:         var_64C = Me.FGrid.TextMatrix)
  loc_19A7E4C:         var_6A4 = Me.FGrid.TextMatrix)
  loc_19A7E73:         var_738 = Me.FGrid.TextMatrix)
  loc_19A7EAB:         Proc_6_7_F26918(var_830, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_AA)), var_738, CVar(CLng(&HD)), CVar(CLng(var_AA)), var_6A4)
  loc_19A7EDD:         Proc_6_17_EAAE40(var_8D4, CVar(CStr(Me.FGrid.TextMatrix))), &H18, CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_19A7F0E:         Proc_6_7_F26918(var_978, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_64C)
  loc_19A7F41:         var_CE0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A7F4F:         Proc_183_7_EB17D4(var_A6C, MemVar_1F950EC, var_CE0, CVar(CLng(&HC)), CVar(CLng(var_AA)))
  loc_19A7F62:         Set var_9EC = Me.Txt
  loc_19A7F68:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B20, var_BAC, CVar(CLng(9)))
  loc_19A7F70:         var_63C = var_B20.Tag
  loc_19A7F89:         var_124 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtCr,TipAmt,"
  loc_19A7F97:         var_164 = var_124 & "CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,BatchNo,U_Name,U_EntDt,U_AE,RestCode,ContraDociD,BillAmount,LogSite_Code) Values ("
  loc_19A7FC2:         var_204 = var_164 & "'" & global_100 & "'," & CStr(var_AA) & ",'"
  loc_19A8003:         var_19C = CVar(var_204 & global_124 & "'," & CStr(var_16C) & ",'" & MemVar_1F95070 & "','") & Trim(global_104) & "'," 
  loc_19A8045:         var_380 = var_19C & var_240 & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(var_174.TextMatrix))) & "','" & CVar(CStr(var_178.TextMatrix))) 
  loc_19A8089:         var_500 = var_380 & "','" & CVar(var_94) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_188.TextMatrix))) & "'," 
  loc_19A80D0:         var_708 = var_500 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_BE4) & ",'" & CVar(CStr(var_64C)) & "','" & CVar(CStr(var_6A4)) 
  loc_19A813B:         var_A2C = var_708 & "','" & CVar(CStr(var_738)) & "'," & var_830 & "," & var_8D4 & "," & var_978 & "," & CVar(var_CE0) & ",'" & CVar(MemVar_1F950C8) 
  loc_19A8187:         var_B48 = var_A2C & "'," & var_A6C & ",'A','" & CVar(global_52) & "','" & CVar(var_BAC) & "',0,'" & CVar(MemVar_1F95078) 
  loc_19A819E:         unk_531BDE.Execute CStr(var_B48 & "')"), var_B88, -1
  loc_19A82B7:         Proc_6_7_F26918(var_120, MemVar_1F950EC, "UPDATE PackingOrder SET AdvAmt=P1.AmtCr,U_EntDt=", var_240, -1)
  loc_19A82DA:         Set var_110 = Me.Txt
  loc_19A82E0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_15C, var_124, var_174 & var_120 & " From (SELECT ContraDocId,Sum(AmtCr) As AmtCr FROM PayCharge Where ContraDocid='")
  loc_19A82E8:         var_B24 = var_15C.Tag
  loc_19A82F0:         var_154 = CVar(var_124) 'String
  loc_19A830A:         unk_531BDE.Execute CStr(var_BE4 & var_154 & "' Group By ContraDocid) P1 WHERE PackingOrder.Docid=P1.ContraDocid"), &H12, CVar(CLng(var_AA))
  loc_19A8330:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A8335:         var_FC = 2
  loc_19A8342:         Set var_110 = Me.FGrid
  loc_19A8348:         var_120 = var_110.TextMatrix)
  loc_19A8364:         If (CStr(var_120) = "Room") Then
  loc_19A8392:           unk_531BDE.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F95078 & "TOUT" & "'", var_120, -1
  loc_19A839D:           Set var_98 = var_110
  loc_19A83C3:           If (var_98.RecordCount > 0) Then
  loc_19A83F2:             var_15C = var_98.Fields.Item("TaxStru")
  loc_19A8402:             var_134 = "Select * from taxstru where Code='" & var_15C.Value 
  loc_19A840B:             var_144 = var_134 & "' Order by Sno" 
  loc_19A840F:             var_124 = CStr(var_144)
  loc_19A8419:             unk_531BDE.Execute var_124, var_154, -1
  loc_19A8424:             Set var_A0 = var_174
  loc_19A8441:           Else
  loc_19A845A:             MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_19A8470:             unk_531BDE.RollbackTrans
  loc_19A8475:             Exit Sub
  loc_19A8476:           End If
  loc_19A8484:           Set var_110 = Me.Txt
  loc_19A848A:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, var_174)
  loc_19A8492:           var_110 = var_15C.Text
  loc_19A84A5:           Set var_174 = Me.Txt
  loc_19A84AB:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_178, var_204)
  loc_19A84B3:           var_FC = var_178.Text
  loc_19A84D3:           Set var_184 = Me.Txt
  loc_19A84D9:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_19A84E8:           Proc_6_7_F26918(var_240, CVar(var_188))
  loc_19A8504:           var_280 = "HH:mm"
  loc_19A8519:           var_1D8 = CVar(CLng(var_AA)) 'Long
  loc_19A851E:           var_1F8 = 1
  loc_19A852B:           Set var_1A0 = Me.FGrid
  loc_19A8541:           var_320 = CVar(CLng(var_AA)) 'Long
  loc_19A8546:           var_340 = 2
  loc_19A8594:           var_16C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A85B3:           var_470 = Me.FGrid.TextMatrix)
  loc_19A85CA:           Proc_183_7_EB17D4(var_5E8, MemVar_1F950EC, var_470, &H17, CVar(CLng(var_AA)), var_16C, 8, CVar(CLng(var_AA)))
  loc_19A85E3:           var_160 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,FPNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,LOGSITE_CODE)Values " & "('"
  loc_19A85FD:           var_18C = var_160 & var_124 & "'," & CStr(var_AC)
  loc_19A8637:           var_154 = CVar(var_18C & ",'" & global_124 & "'," & var_204 & ",'" & MemVar_1F95070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_19A8681:           var_360 = var_154 & "'," & var_240 & ",'" & CVar(Format$(Time, var_280)) & "','','" & CVar(var_94) & "','" & CVar(CStr(var_1A0.TextMatrix))) 
  loc_19A86C6:           var_4E0 = var_360 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(var_16C) & "," & CVar(CStr(var_470)) & ",'','',0,''," 
  loc_19A871B:           var_674 = var_4E0 & vbNullString & "'" & CVar(MemVar_1F950C8) & "'," & var_5E8 & ",'A','" & CVar(global_52) & "','" & CVar(MemVar_1F95078) 
  loc_19A8732:           unk_531BDE.Execute CStr(var_674 & "')"), var_6A4, -1
  loc_19A87CE:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A87D3:           var_FC = &H13
  loc_19A87F1:           var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_19A87FE:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A8803:           var_FC = &H13
  loc_19A8845:           var_B8 = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_19A885A:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A885F:           var_FC = &H17
  loc_19A8887:           var_BC = CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_19A8897:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A889C:           var_FC = &H13
  loc_19A88C9:           var_134 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_19A88D8:           var_B0 = CStr(Mid(var_134, 3, 5))
  loc_19A88ED:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A88F2:           var_FC = 8
  loc_19A8922:           var_C4 = (var_C4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19A892E:         End If
  loc_19A892E:       End If
  loc_19A892E:     End If
  loc_19A892E:   End If
  loc_19A8931: Next var_1A4 'Integer
  loc_19A894C: If (POSAdvanceDepDialog.AdvType = "AD") Then
  loc_19A895D:   Set var_110 = Me.Txt
  loc_19A8963:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_15C)
  loc_19A897B:   Set var_174 = Me.Txt
  loc_19A8981:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_19A8990:   Proc_6_7_F26918(var_134, CVar(var_178))
  loc_19A89A3:   Set var_184 = Me.Txt
  loc_19A89A9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_188)
  loc_19A89F4:   var_240 = CVar("Update hallbook set rectno=" & var_15C.Text & ",RectDate=") & var_134 & ",advance=" & CVar(var_CC) & " where Docid='" 
  loc_19A89FB:   var_250 = CVar(var_188.Tag) 'String
  loc_19A8A15:   unk_531BDE.Execute CStr(var_240 & var_250 & "'"), var_280, -1
  loc_19A8A4B: End If
  loc_19A8A4F: Set var_110 = Me.TopCtrl1
  loc_19A8A55: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_1A0)
  loc_19A8A6E: If (CStr(var_178) = "Add") Then
  loc_19A8A85:   var_124 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_19A8AAB:   var_144 = CVar(var_124 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_124 & "' And VP.Date_From<=") 'String
  loc_19A8ABC:   Set var_110 = Me.Txt
  loc_19A8AC2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C, var_18C, var_144)
  loc_19A8ACA:   var_230 = var_15C.Text
  loc_19A8AD8:   Proc_6_7_F26918(var_134, CVar(var_18C))
  loc_19A8AE0:   var_154 = -1 & var_134 
  loc_19A8AF7:   unk_531BDE.Execute CStr(CVar("Update hallbook set rectno=" & var_15C.Text & ",RectDate=") & var_134 & " Order By VP.Date_From DESC"), var_174, 
  loc_19A8B02:   Set var_90 = var_174
  loc_19A8B43:   If (Me.Recordset15.RecordCount > 0) Then
  loc_19A8B5A:     var_124 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where (SITE_CODE='" & MemVar_1F95070
  loc_19A8B78:     var_DC = "V_Type"
  loc_19A8B8F:     var_15C = Me.Recordset15.Fields.Item(var_DC)
  loc_19A8B9F:     var_144 = CVar(var_124 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='") & var_15C.Value 
  loc_19A8BA8:     var_154 = var_144 & "' and Date_From=" 
  loc_19A8BD5:     Proc_6_7_F26918(var_230, CVar(Me.Recordset15.Fields.Item("Date_From")), var_154)
  loc_19A8BEB:     unk_531BDE.Execute CStr(var_250 & var_230), -1, var_184
  loc_19A8C19:   End If
  loc_19A8C19: End If
  loc_19A8C2B: Me.FGrid.Tag = CVar(CStr(0))
  loc_19A8C3C: unk_531BDE.CommitTrans
  loc_19A8C47: var_CE4 = global_116
  loc_19A8C53: If (var_CE4 = 6) Then
  loc_19A8C56: End If
  loc_19A8C5B: Set var_98 = Nothing
  loc_19A8C63: Set var_9C = Nothing
  loc_19A8C6B: Set var_A0 = Nothing
  loc_19A8C73: Set var_A4 = Nothing
  loc_19A8C87: If (OpenMode = 2) Then
  loc_19A8C90:   var_124 = POSAdvanceDepDialog.AdvType
  loc_19A8CA0:   If (var_124 <> "AD") Then
  loc_19A8CA3:     Call Proc_221_64_11FCDDC(var_CE4)
  loc_19A8CAB:   Else
  loc_19A8CB8:     Me.Global.Unload Me
  loc_19A8CC0:     Exit Sub
  loc_19A8CC1:   End If
  loc_19A8CC1: End If
  loc_19A8CC5: var_86 = CByte(0) 'Byte
  loc_19A8CD4: Me.Requery -1
  loc_19A8CE4: Me.Requery -1
  loc_19A8CEF: var_CE8 = global_116
  loc_19A8CFB: If (var_CE8 = 6) Then
  loc_19A8D09:   Me.Requery -1
  loc_19A8D0E: End If
  loc_19A8D2D: Set var_110 = Me.Txt
  loc_19A8D33: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "SearchCode='")
  loc_19A8D3B: 0 = var_15C.Text
  loc_19A8D54: Me.Find 1 & var_124 & "'", var_DC, var_CE8
  loc_19A8D7E: var_124 = "INI"
  loc_19A8D8C: Call Proc_221_65_F729FC(Proc_5_1_100EC1C(var_124, Me))
  loc_19A8D97: Call Proc_221_70_FB76F4(global_56)
  loc_19A8D9C: Call Proc_221_68_150E800()
  loc_19A8DB2: If (OpenMode = 1) Then
  loc_19A8DC0:   var_134 = "Payment Entry..."
  loc_19A8DEC:   If (MsgBox("Print Recpt.", &H24, var_134, var_144, var_154) = 6) Then
  loc_19A8DEF:     Call TopCtrl1_UnknownEvent_14()
  loc_19A8DF4:   End If
  loc_19A8E01:   Me.Global.Unload Me
  loc_19A8E09:   Exit Sub
  loc_19A8E0A: End If
  loc_19A8E0A: Exit Sub
  loc_19A8E0B: ' Referenced from: 19A6120
  loc_19A8E14: If (CInt(var_86) = 1) Then
  loc_19A8E1D:   unk_531BDE.RollbackTrans
  loc_19A8E22: End If
  loc_19A8E2A: Set var_110 = Err()
  loc_19A8E30: Call 0.Method_arg_2C (var_124)
  loc_19A8E49: MsgBox(CVar(var_124), &H10, var_134, var_144, var_154)
  loc_19A8E5C: Exit Sub
  loc_19A8E66: If (CInt(var_86) = 1) Then
  loc_19A8E6F:   unk_531BDE.RollbackTrans
  loc_19A8E74: End If
  loc_19A8E95: MsgBox("Please Check Party Account.", &H10, "Payment Entry...", var_144, var_154)
  loc_19A8EB2: Me.Global.Unload Me
  loc_19A8EBA: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F38BB4
  'Data Table: 531BC8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F38AAB: Me.DGEmp.Visible = False
  loc_F38ACA: If (Me.RecordCount > 0) Then
  loc_F38B09:   Set var_B4 = Me.Txt
  loc_F38B0F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F38B17:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F38B4A:   var_B0 = Me.Fields.Item("Code")
  loc_F38B69:   Set var_B4 = Me.Txt
  loc_F38B6F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F38B77:   var_B8.Tag = CStr(var_B0.Value)
  loc_F38B8D: End If
  loc_F38B98: Set var_A8 = Me.Txt
  loc_F38B9E: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H11))
  loc_F38BA6: var_B0.SetFocus
  loc_F38BB2: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'EA403C
  'Data Table: 531BC8
  Dim var_A8 As Variant
  loc_EA3FBC: Set var_88 = Me.DGEmp
  loc_EA3FE6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3FEE: Set var_BC = Me.DGEmp
  loc_EA402A: Proc_6_138_106E830(Me.DGEmp, global_68, CInt(&H11), Me.FGPoint)
  loc_EA4038: Exit Sub
  loc_EA4039: Set var_88 = DGEmp.DispID_1B
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1525F14
  'Data Table: 531BC8
  Dim var_92 As Integer
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_8C As TextBox
  Dim var_B8 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_88 As Frame
  loc_1524FA2: Set var_88 = Me.Txt
  loc_1524FA8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1524FB6: Proc_6_74_E23240(var_8C)
  loc_1524FC2: Call Proc_221_70_FB76F4(var_8C)
  loc_1524FCA: var_92 = Index
  loc_1524FD5: If (var_92 = CInt(6)) Then
  loc_1524FF8:   Set var_A0 = Me.Txt
  loc_1524FFE:   Call 0.Method_Txt_GotFocus0 (CInt(6), var_A4)
  loc_1525019:   Set var_88 = Me.Txt
  loc_152501F:   Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C)
  loc_1525037:   var_B8 = CVar(((var_8C.Top + Me.FrRest.Top) + var_A4.Height)) 'Single
  loc_1525046:   Me.DGPayType.Top = var_B8
  loc_152507A:   Set var_88 = Me.Txt
  loc_1525080:   Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C)
  loc_1525094:   var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15250A3:   Me.DGPayType.Left = var_B8
  loc_15250CA:   If (Me.RecordCount > 0) Then
  loc_15250D8:     Set var_8C = Me.FGPoint
  loc_15250F0:     Proc_6_137_1192FDC(Me.DGPayType, global_60, Index)
  loc_15250FE:   End If
  loc_152514C:   Set var_88 = Me.Txt
  loc_1525152:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_152515A:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1525172:   If (var_8C Or (var_D4 = vbNullString)) Then
  loc_1525175:     Exit Sub
  loc_1525176:   End If
  loc_1525183:   Set var_88 = Me.Txt
  loc_1525189:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1525191:   var_D4 = var_8C.Text
  loc_15251A3:   var_B8 = "Name"
  loc_15251DE:   If CBool(CVar(var_D4) <> Me.Fields.Item(var_B8).Value) Then
  loc_15251E7:     Me.MoveFirst
  loc_152520A:     Set var_88 = Me.Txt
  loc_1525210:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_1525218:     0 = var_8C.Text
  loc_1525231:     Me.Find 1 & var_D4 & "'", var_B8, var_92
  loc_1525246:   End If
  loc_1525249: Else
  loc_1525251:   If (var_92 = CInt(&H11)) Then
  loc_152526B:     If (Me.RecordCount > 0) Then
  loc_1525279:       Set var_8C = Me.FGPoint
  loc_1525291:       Proc_6_137_1192FDC(Me.DGEmp, global_68)
  loc_152529F:     End If
  loc_15252ED:     Set var_88 = Me.Txt
  loc_15252F3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15252FB:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1525313:     If (Index Or (var_D4 = vbNullString)) Then
  loc_1525316:       Exit Sub
  loc_1525317:     End If
  loc_1525324:     Set var_88 = Me.Txt
  loc_152532A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1525332:     var_D4 = var_8C.Text
  loc_1525344:     var_B8 = "Name"
  loc_152537F:     If CBool(CVar(var_D4) <> Me.Fields.Item(var_B8).Value) Then
  loc_1525388:       Me.MoveFirst
  loc_15253AB:       Set var_88 = Me.Txt
  loc_15253B1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_15253B9:       0 = var_8C.Text
  loc_15253D2:       Me.Find 1 & var_D4 & "'", var_B8, var_8C
  loc_15253E7:     End If
  loc_15253EA:   Else
  loc_15253F2:     If (var_92 = CInt(5)) Then
  loc_1525415:       Set var_A0 = Me.Txt
  loc_152541B:       Call 0.Method_Txt_GotFocus0 (CInt(5), var_A4)
  loc_1525436:       Set var_88 = Me.Txt
  loc_152543C:       Call 0.Method_Txt_GotFocus0 (CInt(5), var_8C)
  loc_1525454:       var_B8 = CVar(((var_8C.Top + Me.FrRest.Top) + var_A4.Height)) 'Single
  loc_1525463:       Me.DGTable.Top = var_B8
  loc_1525497:       Set var_88 = Me.Txt
  loc_152549D:       Call 0.Method_Txt_GotFocus0 (CInt(5), var_8C)
  loc_15254B1:       var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15254C0:       Me.DGTable.Left = var_B8
  loc_15254E7:       If (Me.RecordCount > 0) Then
  loc_15254F5:         Set var_8C = Me.FGPoint
  loc_152550D:         Proc_6_137_1192FDC(Me.DGTable, global_72)
  loc_152551B:       End If
  loc_1525569:       Set var_88 = Me.Txt
  loc_152556F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1525577:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_152558F:       If (Index Or (var_D4 = vbNullString)) Then
  loc_1525592:         Exit Sub
  loc_1525593:       End If
  loc_15255A0:       Set var_88 = Me.Txt
  loc_15255A6:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15255AE:       var_D4 = var_8C.Text
  loc_15255B6:       var_F4 = CVar(var_D4) 'String
  loc_15255FB:       If CBool(var_F4 <> Me.Fields.Item("Name").Value) Then
  loc_1525604:         Me.MoveFirst
  loc_1525629:         Set var_88 = Me.Txt
  loc_152562F:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_1525637:         0 = var_8C.Text
  loc_1525645:         Proc_6_17_EAAE40(var_F4, CVar(var_D4), 1)
  loc_152565B:         Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_1525673:       End If
  loc_1525676:     Else
  loc_152567E:       If (var_92 = CInt(&HF)) Then
  loc_15256A1:         Set var_A0 = Me.Txt
  loc_15256A7:         Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_A4)
  loc_15256C2:         Set var_88 = Me.Txt
  loc_15256C8:         Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_15256E0:         var_B8 = CVar(((var_8C.Top + Me.FrSendRoom.Top) + var_A4.Height)) 'Single
  loc_15256EF:         Me.DGRoom.Top = "Name ="
  loc_1525723:         Set var_88 = Me.Txt
  loc_1525729:         Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_152573D:         var_B8 = CVar((var_8C.Left + Me.FrSendRoom.Left)) 'Single
  loc_152574C:         Me.DGRoom.Left = "Name ="
  loc_1525773:         If (Me.RecordCount > 0) Then
  loc_1525781:           Set var_8C = Me.FGPoint
  loc_1525799:           Proc_6_137_1192FDC(Me.DGRoom, global_76)
  loc_15257A7:         End If
  loc_15257F5:         Set var_88 = Me.Txt
  loc_15257FB:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1525803:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_152581B:         If (Index Or (var_D4 = vbNullString)) Then
  loc_152581E:           Exit Sub
  loc_152581F:         End If
  loc_152582C:         Set var_88 = Me.Txt
  loc_1525832:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_152583A:         var_D4 = var_8C.Text
  loc_1525842:         var_F4 = CVar(var_D4) 'String
  loc_152585B:         var_90 = Me.Fields
  loc_1525887:         If CBool(var_F4 <> var_90.Item("Name").Value) Then
  loc_1525890:           Me.MoveFirst
  loc_15258B5:           Set var_88 = Me.Txt
  loc_15258BB:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15258C3:           0 = var_8C.Text
  loc_15258D1:           Proc_6_17_EAAE40(var_F4, CVar(var_D4), 1)
  loc_15258E7:           Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15258FF:         End If
  loc_1525902:       Else
  loc_152590A:         If (var_92 = CInt(&H10)) Then
  loc_152591B:           Set var_8C = Me.Txt
  loc_1525921:           Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_90)
  loc_1525947:           var_B8 = CVar((Me.FrComp.Top + var_90.Height)) 'Single
  loc_1525956:           Me.DGCompany.Top = "Name ="
  loc_1525998:           Set var_88 = Me.Txt
  loc_152599E:           Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_15259B6:           var_B8 = CVar(((var_8C.Left + Me.FrRest.Left) + Me.FrComp.Left)) 'Single
  loc_15259C5:           Me.DGCompany.Left = "Name ="
  loc_15259EE:           If (Me.RecordCount > 0) Then
  loc_15259FC:             Set var_8C = Me.FGPoint
  loc_1525A14:             Proc_6_137_1192FDC(Me.DGCompany, global_80)
  loc_1525A22:           End If
  loc_1525A70:           Set var_88 = Me.Txt
  loc_1525A76:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1525A7E:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1525A96:           If (Index Or (var_D4 = vbNullString)) Then
  loc_1525A99:             Exit Sub
  loc_1525A9A:           End If
  loc_1525AA7:           Set var_88 = Me.Txt
  loc_1525AAD:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1525AB5:           var_D4 = var_8C.Text
  loc_1525ABD:           var_F4 = CVar(var_D4) 'String
  loc_1525ADE:           var_A0 = Me.Fields.Item("Name")
  loc_1525B02:           If CBool(var_F4 <> var_A0.Value) Then
  loc_1525B0B:             Me.MoveFirst
  loc_1525B30:             Set var_88 = Me.Txt
  loc_1525B36:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_1525B3E:             0 = var_8C.Text
  loc_1525B4C:             Proc_6_17_EAAE40(var_F4, CVar(var_D4), 1)
  loc_1525B62:             Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_1525B7A:           End If
  loc_1525B7D:         Else
  loc_1525B85:           If (var_92 = CInt(7)) Then
  loc_1525B97:             Set var_88 = Me.Txt
  loc_1525B9D:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1525BA5:             var_8C.SelStart = 0
  loc_1525BBE:             Set var_88 = Me.Txt
  loc_1525BC4:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1525BDF:             Set var_90 = Me.Txt
  loc_1525BE5:             Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_1525BED:             var_A0.SelLength = Len(var_8C.Text)
  loc_1525C03:           Else
  loc_1525C0B:             If (var_92 = CInt(8)) Then
  loc_1525C1D:               Set var_88 = Me.Txt
  loc_1525C23:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1525C2B:               var_8C.SelStart = 0
  loc_1525C44:               Set var_88 = Me.Txt
  loc_1525C4A:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1525C52:               var_D4 = var_8C.Text
  loc_1525C65:               Set var_90 = Me.Txt
  loc_1525C6B:               Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_1525C73:               var_A0.SelLength = Len(var_D4)
  loc_1525C89:             Else
  loc_1525C91:               If (var_92 = CInt(4)) Then
  loc_1525CA2:                 Set var_90 = Me.Txt
  loc_1525CA8:                 Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_A0)
  loc_1525CD5:                 Set var_88 = Me.Txt
  loc_1525CDB:                 Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_1525CF3:                 var_B8 = CVar(((var_8C.Top + var_A0.Height) + Me.FrRest.Top)) 'Single
  loc_1525D02:                 Me.DGFPNo.Top = "Name ="
  loc_1525D36:                 Set var_88 = Me.Txt
  loc_1525D3C:                 Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_1525D50:                 var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_1525D5F:                 Me.DGFPNo.Left = "Name ="
  loc_1525D86:                 If (Me.RecordCount > 0) Then
  loc_1525D94:                   Set var_8C = Me.FGPoint
  loc_1525DAC:                   Proc_6_137_1192FDC(Me.DGFPNo, global_88)
  loc_1525DBA:                 End If
  loc_1525E08:                 Set var_88 = Me.Txt
  loc_1525E0E:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1525E16:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1525E2E:                 If (Index Or (var_D4 = vbNullString)) Then
  loc_1525E31:                   Exit Sub
  loc_1525E32:                 End If
  loc_1525E3F:                 Set var_88 = Me.Txt
  loc_1525E45:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1525E4D:                 var_D4 = var_8C.Text
  loc_1525E55:                 var_F4 = CVar(var_D4) 'String
  loc_1525E9A:                 If CBool(var_F4 <> Me.Fields.Item("Name").Value) Then
  loc_1525EA3:                   Me.MoveFirst
  loc_1525EC8:                   Set var_88 = Me.Txt
  loc_1525ECE:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_1525ED6:                   0 = var_8C.Text
  loc_1525EE4:                   Proc_6_17_EAAE40(var_F4, CVar(var_D4), 1)
  loc_1525EFA:                   Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_1525F12:                 End If
  loc_1525F12:               End If
  loc_1525F12:             End If
  loc_1525F12:           End If
  loc_1525F12:         End If
  loc_1525F12:       End If
  loc_1525F12:     End If
  loc_1525F12:   End If
  loc_1525F12: End If
  loc_1525F12: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13C5790
  'Data Table: 531BC8
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
  loc_13C4E1B: var_88 = Shift
  loc_13C4E28: If (CLng(Shift) = &H1B) Then
  loc_13C4E2B:   Call Proc_221_70_FB76F4(var_88)
  loc_13C4E30:   Exit Sub
  loc_13C4E31: End If
  loc_13C4E34: var_8A = KeyCode
  loc_13C4E3F: If (var_8A = CInt(6)) Then
  loc_13C4E5F:   Set var_A4 = Me.FGPoint
  loc_13C4E6A:   Set var_A0 = Nothing
  loc_13C4E9C:   Proc_6_69_134A630(Me.DGPayType, Me.Txt, CInt(6), global_60, Shift, 0)
  loc_13C4F0B:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C4F31:     Proc_6_138_106E830(Me.DGPayType, global_60, KeyCode, Me.FGPoint, 1)
  loc_13C4F3F:   End If
  loc_13C4F42: Else
  loc_13C4F4A:   If (var_8A = CInt(4)) Then
  loc_13C4F75:     Set var_A0 = Nothing
  loc_13C4FA7:     Proc_6_69_134A630(Me.DGFPNo, Me.Txt, CInt(4), global_88, Shift, 0, 1)
  loc_13C5016:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C501D:       Set var_A0 = Me.DGFPNo
  loc_13C503C:       Proc_6_138_106E830(var_A0, global_88, KeyCode, Me.FGPoint, var_A0, Me.FGPoint)
  loc_13C504A:     End If
  loc_13C504D:   Else
  loc_13C5055:     If (var_8A = CInt(&H11)) Then
  loc_13C50B2:       Proc_6_69_134A630(Me.DGEmp, Me.Txt, CInt(&H11), global_68, Shift, 0, 1, Nothing)
  loc_13C5121:       If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C5147:         Proc_6_138_106E830(Me.DGEmp, global_68, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C5155:       End If
  loc_13C5158:     Else
  loc_13C5160:       If (var_8A = CInt(5)) Then
  loc_13C51BD:         Proc_6_69_134A630(Me.DGTable, Me.Txt, CInt(5), global_72, Shift, 0, 1, Nothing)
  loc_13C522C:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C5252:           Proc_6_138_106E830(Me.DGTable, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C5260:         End If
  loc_13C5263:       Else
  loc_13C526B:         If (var_8A = CInt(&HF)) Then
  loc_13C52C8:           Proc_6_69_134A630(Me.DGRoom, Me.Txt, CInt(&HF), global_76, Shift, 0, 1, Nothing)
  loc_13C5337:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C535D:             Proc_6_138_106E830(Me.DGRoom, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C536B:           End If
  loc_13C536E:         Else
  loc_13C5376:           If (var_8A = CInt(&H10)) Then
  loc_13C5396:             Set var_A4 = Me.FGPoint
  loc_13C53D3:             Proc_6_69_134A630(Me.DGCompany, Me.Txt, CInt(&H10), global_80, Shift, 0, 1, Nothing)
  loc_13C5442:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C5449:               Set var_A0 = Me.DGCompany
  loc_13C5450:               Set var_94 = Me.FGPoint
  loc_13C5468:               Proc_6_138_106E830(var_A0, global_80, KeyCode, var_94, var_A4, 0)
  loc_13C5476:             End If
  loc_13C5479:           Else
  loc_13C5481:             If (var_8A = CInt(&H13)) Then
  loc_13C548E:               If (CLng(Shift) = &H2D) Then
  loc_13C5494:                 Call Proc_221_79_EE3E48(var_BC, 0, var_A0)
  loc_13C54A6:                 Set var_90 = Me.Txt
  loc_13C54AC:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_13C54D0:                 Set var_90 = Me.Txt
  loc_13C54D6:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_13C54DE:                 0 = var_A4
  loc_13C54F1:                 Set var_A0 = Me.Txt
  loc_13C54F7:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_13C54FF:                 var_A4.SelStart = Len(var_BC)
  loc_13C5512:                 Exit Sub
  loc_13C5513:               End If
  loc_13C5513:             End If
  loc_13C5513:           End If
  loc_13C5513:         End If
  loc_13C5513:       End If
  loc_13C5513:     End If
  loc_13C5513:   End If
  loc_13C5513: End If
  loc_13C554A: var_EC = Me.DGRoom.Visible
  loc_13C5561: var_FC = Me.DGPayType.Visible
  loc_13C55BA: If ((((((CBool(Me.DGFPNo.Visible) = 0) And (CBool(Me.DGTable.Visible) = 0)) And (CBool(var_EC) = 0)) And (CBool(var_FC) = 0)) And (CBool(Me.DGEmp.Visible) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) Then
  loc_13C55DD:   If (((CLng(Shift) = &H26) And (global_116 = 6)) And (KeyCode = CInt(6))) Then
  loc_13C55E0:     Exit Sub
  loc_13C55E1:   End If
  loc_13C55FF:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HC))) Then
  loc_13C560C:     If (CLng(Shift) = &H28) Then
  loc_13C560F:       Exit Sub
  loc_13C5610:     End If
  loc_13C5647:     If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13C564A:       Call Proc_221_76_167BBC8(var_8A)
  loc_13C5651:       Shift = 0
  loc_13C5654:     End If
  loc_13C5654:     Exit Sub
  loc_13C5658:   Else
  loc_13C5676:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H13))) Then
  loc_13C5683:       If (CLng(Shift) = &H28) Then
  loc_13C5686:         Exit Sub
  loc_13C5687:       End If
  loc_13C56BE:       If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13C56C1:         Call Proc_221_76_167BBC8(Shift)
  loc_13C56C8:         Shift = 0
  loc_13C56CB:       End If
  loc_13C56CB:       Exit Sub
  loc_13C56CF:     Else
  loc_13C56ED:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HF))) Then
  loc_13C56FA:         If (CLng(Shift) = &H28) Then
  loc_13C56FD:           Exit Sub
  loc_13C56FE:         End If
  loc_13C570A:         Call Txt_Validate(CInt(&HF))
  loc_13C5746:         If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13C5749:           Call Proc_221_76_167BBC8(0)
  loc_13C5750:           Shift = 0
  loc_13C5753:         End If
  loc_13C5753:         Exit Sub
  loc_13C5754:       End If
  loc_13C5754:     End If
  loc_13C5754:   End If
  loc_13C5769:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13C5772:     Proc_6_75_E5335C(Shift, arg_14)
  loc_13C5777:   End If
  loc_13C5781:   If (CLng(Shift) = &H26) Then
  loc_13C578A:     Proc_6_76_E533C8(Shift, arg_14)
  loc_13C578F:   End If
  loc_13C578F: End If
  loc_13C578F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE89A0
  'Data Table: 531BC8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_EE88E2: If (arg_10 = &HD) Then
  loc_EE88E7:   arg_10 = 0
  loc_EE88EA: End If
  loc_EE88ED: Proc_6_58_E06050(arg_10)
  loc_EE88F8: Proc_6_133_E7FB08(var_94, arg_10)
  loc_EE8901: arg_10 = CInt(var_94)
  loc_EE890A: var_96 = KeyAscii
  loc_EE8915: If Not (var_96 = CInt(7)) Then
  loc_EE8920:   If (var_96 = CInt(8)) Then
  loc_EE8923:   End If
  loc_EE892D:   Set var_9C = Me.Txt
  loc_EE8933:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_EE894E:   Proc_6_42_129B55C(var_A0, arg_10, 8)
  loc_EE895D: Else
  loc_EE8965:   If (var_96 = CInt(&HC)) Then
  loc_EE8972:     Set var_9C = Me.Txt
  loc_EE8978:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 2)
  loc_EE8993:     Proc_6_42_129B55C(var_A0, arg_10, 4)
  loc_EE899F:   End If
  loc_EE899F: End If
  loc_EE899F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '11829E0
  'Data Table: 531BC8
  Dim var_86 As Integer
  loc_11825FB: var_86 = KeyCode
  loc_1182606: If (var_86 = CInt(6)) Then
  loc_1182625:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_1182639:     var_A4 = "Name"
  loc_118265D:     Proc_6_68_12A2818(Me.DGPayType, Me.Txt, KeyCode, global_60)
  loc_1182693:     Proc_6_138_106E830(Me.DGPayType, global_60, KeyCode, Me.FGPoint)
  loc_11826A1:   End If
  loc_11826A4: Else
  loc_11826AC:   If (var_86 = CInt(4)) Then
  loc_11826CB:     If (CBool(Me.DGFPNo.Visible) = &HFF) Then
  loc_11826DF:       var_A4 = "Name"
  loc_1182703:       Proc_6_68_12A2818(Me.DGFPNo, Me.Txt, KeyCode, global_88, Shift)
  loc_1182739:       Proc_6_138_106E830(Me.DGFPNo, global_88, KeyCode, Me.FGPoint)
  loc_1182747:     End If
  loc_118274A:   Else
  loc_1182752:     If (var_86 = CInt(&H11)) Then
  loc_1182771:       If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_11827A9:         Proc_6_68_12A2818(Me.DGEmp, Me.Txt, KeyCode, global_68, Shift)
  loc_11827DF:         Proc_6_138_106E830(Me.DGEmp, global_68, KeyCode, Me.FGPoint, "Name")
  loc_11827ED:       End If
  loc_11827F0:     Else
  loc_11827F8:       If (var_86 = CInt(5)) Then
  loc_1182817:         If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_118284F:           Proc_6_68_12A2818(Me.DGTable, Me.Txt, KeyCode, global_72, Shift)
  loc_1182885:           Proc_6_138_106E830(Me.DGTable, global_72, KeyCode, Me.FGPoint, "Name")
  loc_1182893:         End If
  loc_1182896:       Else
  loc_118289E:         If (var_86 = CInt(&HF)) Then
  loc_11828BD:           If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_11828F5:             Proc_6_68_12A2818(Me.DGRoom, Me.Txt, KeyCode, global_76, Shift)
  loc_118292B:             Proc_6_138_106E830(Me.DGRoom, global_76, KeyCode, Me.FGPoint, "Name")
  loc_1182939:           End If
  loc_118293C:         Else
  loc_1182944:           If (var_86 = CInt(&H10)) Then
  loc_1182963:             If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_118299B:               Proc_6_68_12A2818(Me.DGCompany, Me.Txt, KeyCode, global_80, Shift)
  loc_11829D1:               Proc_6_138_106E830(Me.DGCompany, global_80, KeyCode, Me.FGPoint, "Name")
  loc_11829DF:             End If
  loc_11829DF:           End If
  loc_11829DF:         End If
  loc_11829DF:       End If
  loc_11829DF:     End If
  loc_11829DF:   End If
  loc_11829DF: End If
  loc_11829DF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46E04
  'Data Table: 531BC8
  loc_E46DE2: Set var_88 = Me.Txt
  loc_E46DE8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46DF6: Proc_6_73_E23294(var_8C)
  loc_E46E02: Exit Sub
End Sub

Private Sub Txt_Click() 'DFC51C
  'Data Table: 531BC8
  loc_DFC518: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '143715C
  'Data Table: 531BC8
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_BC As TextBox
  Dim var_D4 As String
  Dim var_D8 As TextBox
  Dim var_E0 As TextBox
  Dim var_B8 As MSHFlexGrid
  Dim var_13C As Double
  loc_1436687: var_8E = Cancel
  loc_1436692: If (var_8E = CInt(1)) Then
  loc_14366A3:   Set var_94 = Me.Txt
  loc_14366A9:   Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_14366B1:   var_9C = var_98.Text
  loc_14366C8:   If (var_9C <> vbNullString) Then
  loc_14366D1:     Call Proc_221_72_117E2C0(MemVar_1F95044, var_9C)
  loc_14366DC:   Else
  loc_14366DE:     arg_10 = &HFF
  loc_14366E1:     Exit Sub
  loc_14366E2:   End If
  loc_14366E5: Else
  loc_14366ED:   If (var_8E = CInt(&HF)) Then
  loc_143673E:     Set var_94 = Me.Txt
  loc_1436744:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_143674C:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1436764:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_1436774:       Set var_94 = Me.Txt
  loc_143677A:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1436782:       var_98.Text = vbNullString
  loc_143679B:       Set var_94 = Me.Txt
  loc_14367A1:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14367A9:       var_98.Tag = vbNullString
  loc_14367B8:     Else
  loc_14367F3:       Set var_B8 = Me.Txt
  loc_14367F9:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1436801:       var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1436834:       var_98 = Me.Fields.Item("Code")
  loc_1436845:       var_9C = CStr(var_98.Value)
  loc_1436852:       Set var_B8 = Me.Txt
  loc_1436858:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1436860:       var_BC.Tag = var_9C
  loc_1436876:     End If
  loc_1436879:   Else
  loc_1436881:     If (var_8E = CInt(4)) Then
  loc_14368D2:       Set var_94 = Me.Txt
  loc_14368D8:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_14368E0:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_14368F8:       If (var_8E Or (var_9C = vbNullString)) Then
  loc_1436908:         Set var_94 = Me.Txt
  loc_143690E:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1436916:         var_98.Text = vbNullString
  loc_143692F:         Set var_94 = Me.Txt
  loc_1436935:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_143693D:         var_98.Tag = vbNullString
  loc_1436957:         Set var_94 = Me.Txt
  loc_143695D:         Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_1436965:         var_98.Text = vbNullString
  loc_143697F:         Set var_94 = Me.Txt
  loc_1436985:         Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_143698D:         var_98.Tag = vbNullString
  loc_143699C:       Else
  loc_14369D7:         Set var_B8 = Me.Txt
  loc_14369DD:         Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14369E5:         var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1436A36:         Set var_B8 = Me.Txt
  loc_1436A3C:         Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1436A44:         var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1436A74:         var_98 = Me.Fields.Item("PartyName")
  loc_1436A93:         Set var_B8 = Me.Txt
  loc_1436A99:         Call 0.Method_Txt_Validate0 (CInt(5), var_BC)
  loc_1436AA1:         var_BC.Text = Proc_6_38_E69628(CVar(var_98))
  loc_1436AB5:       End If
  loc_1436AB8:     Else
  loc_1436AC0:       If (var_8E = CInt(2)) Then
  loc_1436AD1:         Set var_94 = Me.Txt
  loc_1436AD7:         Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1436AFE:         Set var_B8 = Me.Txt
  loc_1436B04:         Call 0.Method_Txt_Validate0 (CInt(2), var_BC)
  loc_1436B0C:         var_BC.Text = Proc_6_34_14EEAAC(var_98.Text)
  loc_1436B29:         Call Proc_221_72_117E2C0(MemVar_1F95044)
  loc_1436B3F:         Set var_94 = Me.Txt
  loc_1436B45:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1436B64:         If (var_98.Text = vbNullString) Then
  loc_1436B69:           arg_10 = &HFF
  loc_1436B6C:         End If
  loc_1436B6F:       Else
  loc_1436B77:         If Not (var_8E = CInt(&HE)) Then
  loc_1436B82:           If (var_8E = CInt(&HB)) Then
  loc_1436B85:           End If
  loc_1436B8F:           Set var_94 = Me.Txt
  loc_1436B95:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1436BB5:           Set var_BC = Me.Txt
  loc_1436BBB:           Call 0.Method_Txt_Validate0 (Cancel, var_D8)
  loc_1436BC3:           var_D8.Text = Proc_6_33_15125B8(var_98, arg_10)
  loc_1436BD9:         Else
  loc_1436BE1:           If (var_8E = CInt(6)) Then
  loc_1436BF1:             Set var_94 = Me.Txt
  loc_1436BF7:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1436C16:             If (var_98.Text <> vbNullString) Then
  loc_1436C54:               Set var_B8 = Me.Txt
  loc_1436C5A:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1436CB3:               Set var_B8 = Me.Txt
  loc_1436CB9:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1436CC1:               var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1436CF1:               var_98 = Me.Fields.Item("PayType")
  loc_1436D02:               var_9C = Proc_6_38_E69628(CVar(var_98))
  loc_1436D08:               global_156 = var_9C
  loc_1436D26:               Set var_94 = Me.Txt
  loc_1436D2C:               Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_9C)
  loc_1436D34:               "Recd.Agnst.OrderNo. " = var_98.Text
  loc_1436D55:               Set var_B8 = Me.Txt
  loc_1436D5B:               Call 0.Method_Txt_Validate0 (CInt(1), var_BC)
  loc_1436D7A:               Set var_D8 = Me.Txt
  loc_1436D80:               Call 0.Method_Txt_Validate0 (CInt(&H13), var_E0)
  loc_1436D88:               var_E0.Text = var_9C & var_9C & ", R.No. " & CStr(Me.Fields.Item("Name").Value)
  loc_1436DB5:               Me.FrEmp.Visible = False
  loc_1436DC9:               Me.FrTxnNo.Visible = False
  loc_1436DDD:               Me.FrChqDet.Visible = False
  loc_1436DF1:               Me.FrCCDet.Visible = False
  loc_1436E28:               Call Proc_221_75_11570CC(Proc_6_38_E69628(CVar(Me.Fields.Item("PayType"))))
  loc_1436E66:               var_B4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_1436E78:               Set var_98 = Me.FGrid1
  loc_1436E97:               var_D4 = CStr((Val(CStr(var_98.TextMatrix))) - Val(CStr(Me.FGrid.Tag))))
  loc_1436EA5:               Set var_BC = Me.Txt
  loc_1436EAB:               Call 0.Method_Txt_Validate0 (CInt(7), var_D8, CStr(Me.Fields.Item("Name").Value))
  loc_1436EB3:               var_D8.Text = 4
  loc_1436EDA:             Else
  loc_1436EE7:               Set var_94 = Me.Txt
  loc_1436EED:               Call 0.Method_Txt_Validate0 (Cancel, var_98, vbNullString)
  loc_1436EF5:               var_98.Text = var_B4
  loc_1436F0E:               Set var_94 = Me.Txt
  loc_1436F14:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1436F1C:               var_98.Tag = vbNullString
  loc_1436F28:             End If
  loc_1436F2B:           Else
  loc_1436F33:             If Not (var_8E = CInt(7)) Then
  loc_1436F3E:               If (var_8E = CInt(8)) Then
  loc_1436F41:               End If
  loc_1436F4B:               Set var_94 = Me.Txt
  loc_1436F51:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1436F5D:               Proc_6_40_EA5C80(CVar(var_98))
  loc_1436F8C:               var_9C = CStr(Format(CVar(var_13C), "0.00"))
  loc_1436F9A:               Set var_B8 = Me.Txt
  loc_1436FA0:               Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_9C)
  loc_1436FA8:               var_BC.Text = 1
  loc_1436FC7:             Else
  loc_1436FCF:               If (var_8E = CInt(&H10)) Then
  loc_1437020:                 Set var_94 = Me.Txt
  loc_1437026:                 Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_143702E:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1437046:                 If (1 Or (var_9C = vbNullString)) Then
  loc_1437056:                   Set var_94 = Me.Txt
  loc_143705C:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1437064:                   var_98.Text = vbNullString
  loc_143707D:                   Set var_94 = Me.Txt
  loc_1437083:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_143708B:                   var_98.Tag = vbNullString
  loc_143709A:                 Else
  loc_14370D5:                   Set var_B8 = Me.Txt
  loc_14370DB:                   Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14370E3:                   var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1437134:                   Set var_B8 = Me.Txt
  loc_143713A:                   Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1437142:                   var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1437158:                 End If
  loc_1437158:               End If
  loc_1437158:             End If
  loc_1437158:           End If
  loc_1437158:         End If
  loc_1437158:       End If
  loc_1437158:     End If
  loc_1437158:   End If
  loc_1437158: End If
  loc_1437158: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F36274
  'Data Table: 531BC8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3616B: Me.DGCompany.Visible = False
  loc_F3618A: If (Me.RecordCount > 0) Then
  loc_F361C9:   Set var_B4 = Me.Txt
  loc_F361CF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F361D7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3620A:   var_B0 = Me.Fields.Item("Code")
  loc_F36229:   Set var_B4 = Me.Txt
  loc_F3622F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F36237:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3624D: End If
  loc_F36258: Set var_A8 = Me.Txt
  loc_F3625E: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H10))
  loc_F36266: var_B0.SetFocus
  loc_F36272: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA434C
  'Data Table: 531BC8
  Dim var_A8 As Variant
  loc_EA42CC: Set var_88 = Me.DGCompany
  loc_EA42F6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA42FE: Set var_BC = Me.DGCompany
  loc_EA433A: Proc_6_138_106E830(Me.DGCompany, global_80, CInt(&H10), Me.FGPoint)
  loc_EA4348: Exit Sub
End Sub

Private Sub DGFPNo_UnknownEvent_9 'F49BF4
  'Data Table: 531BC8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F49AEB: Me.DGFPNo.Visible = False
  loc_F49B0A: If (Me.RecordCount > 0) Then
  loc_F49B49:   Set var_B4 = Me.Txt
  loc_F49B4F:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(4), var_B8)
  loc_F49B57:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F49B8A:   var_B0 = Me.Fields.Item("Code")
  loc_F49BA9:   Set var_B4 = Me.Txt
  loc_F49BAF:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(4), var_B8)
  loc_F49BB7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F49BCD: End If
  loc_F49BD8: Set var_A8 = Me.Txt
  loc_F49BDE: Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(4))
  loc_F49BE6: var_B0.SetFocus
  loc_F49BF2: Exit Sub
End Sub

Private Sub Form_Load() '13C6164
  'Data Table: 531BC8
  Dim var_9C As Long
  Dim var_D0 As Variant
  Dim var_94 As Variant
  Dim var_C0 As String
  Dim var_D4 As String
  Dim unk_531BDE As Connection15
  Dim var_90 As Recordset15
  Dim var_DC As String
  Dim var_E0 As String
  Dim var_E4 As Long
  Dim var_D8 As Variant
  Dim MemVar_1F95E84 As String
  Dim var_BC As Integer
  Dim var_F8 As Field20
  loc_13C57F8: On Error Goto loc_13C611D
  loc_13C5813: Proc_6_23_DFC5B8(Me, 6195)
  loc_13C5821: var_9C = global_116
  loc_13C582D: If (var_9C = 6) Then
  loc_13C5848:   Proc_6_23_DFC5B8(Me, 7200, 6975)
  loc_13C5853: Else
  loc_13C585C:   If (var_9C = 5) Then
  loc_13C5877:     Proc_6_23_DFC5B8(Me, 7200, 6975)
  loc_13C587F:   End If
  loc_13C587F: End If
  loc_13C5889: Set var_94 = Me.TopCtrl1
  loc_13C588F: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000B("AEDP")
  loc_13C589D: Call 0.Method_arg_50 (var_C0, var_9C)
  loc_13C58A5: var_D0 = CVar(var_C0) 'String
  loc_13C58AD: Set var_94 = Me.TopCtrl1
  loc_13C58B3: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030007(var_D0)
  loc_13C58CF: global_124 = POSAdvanceDepDialog.AdvType
  loc_13C58DD: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_13C58F0: Me.FrRest.BackColor = CLng(MemVar_1F951B4)
  loc_13C5906: Me.FrCCDet.BackColor = CLng(MemVar_1F951B4)
  loc_13C591C: Me.FrTxnNo.BackColor = CLng(MemVar_1F951B4)
  loc_13C5932: Me.FrChqDet.BackColor = CLng(MemVar_1F951B4)
  loc_13C5948: Me.FrComp.BackColor = CLng(MemVar_1F951B4)
  loc_13C595E: Me.FrEmp.BackColor = CLng(MemVar_1F951B4)
  loc_13C5974: Me.FrRem.BackColor = CLng(MemVar_1F951B4)
  loc_13C598A: Me.FrSendRoom.BackColor = CLng(MemVar_1F951B4)
  loc_13C59A5: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_13C59BA: Set var_94 = Me.FGrid1
  loc_13C59C0: var_94.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_13C59EC: unk_531BDE.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_D0, -1
  loc_13C5A16: var_94 = var_94.Fields
  loc_13C5A26: var_D0 = CVar(var_94.Item("CreditCardInfoMandatory")) 'Address
  loc_13C5A40: If (Proc_6_38_E69628(var_D0, var_94) = "Y") Then
  loc_13C5A49:   global_172 = "Y"
  loc_13C5A4D: End If
  loc_13C5A68: var_D4 = "SELECT Code,Name,PayType FROM RevMast Where (LogSite_Code='" & MemVar_1F95078 & "' OR LogSite_Code='HO') and FieldType='P' ORDER BY Name"
  loc_13C5A71: unk_531BDE.Execute var_D4, var_D0, -1
  loc_13C5A82: Set global_60 = var_94
  loc_13C5AA0: CVarUnk
  loc_13C5AA5: VerifyVarObj
  loc_13C5AB1: LateIdStAd
  loc_13C5AE3: unk_531BDE.Execute "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F95078 & "' or LogSite_Code='HO') ORDER BY Name", var_D0, -1
  loc_13C5B12: CVarUnk
  loc_13C5B17: VerifyVarObj
  loc_13C5B23: LateIdStAd
  loc_13C5B45: var_C0 = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.FolioNO From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (T.LogSite_Code='" & MemVar_1F95078
  loc_13C5B5A: var_E0 = "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F95078 & "' and RoomOcc.LogSite_Code='" & MemVar_1F95078 & "')  and T.Type in ('HL') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_13C5B63: unk_531BDE.Execute var_E0, var_D0, -1
  loc_13C5B96: CVarUnk
  loc_13C5B9B: VerifyVarObj
  loc_13C5BA7: LateIdStAd
  loc_13C5BD0: var_D4 = "Select SubCode as Code,Name From SubGroup where LogSite_Code in ('HO','" & MemVar_1F95078 & "') and CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_13C5BD9: unk_531BDE.Execute var_D4, var_D0, -1
  loc_13C5C08: CVarUnk
  loc_13C5C0D: VerifyVarObj
  loc_13C5C19: LateIdStAd
  loc_13C5C3B: var_C0 = "SELECT PD.DocId AS Code, PD.VNo AS Name,PD.CustName As PartyName,LogSite_Code,Site_Code FROM PackingOrder PD WHERE LogSite_Code='" & MemVar_1F95078
  loc_13C5C5C: unk_531BDE.Execute var_C0 & "' and RestCode='" & global_52 & "'", var_D0, -1
  loc_13C5C8F: CVarUnk
  loc_13C5C94: VerifyVarObj
  loc_13C5C9A: Set var_94 = Me.DGFPNo
  loc_13C5CA0: LateIdStAd
  loc_13C5CBA: Call 0.Method_arg_38 (MemVar_1F953B0, var_94, Me.DGCompany, var_94, var_94, Me.DGRoom, var_94, var_94)
  loc_13C5CCB: Call 0.Method_arg_3C (MemVar_1F950EC, Me.DGEmp, var_94, var_94)
  loc_13C5CDC: Call 0.Method_arg_54 (MemVar_1F9506C, Me.DGPayType, var_94)
  loc_13C5CED: Call 0.Method_arg_1C (MemVar_1F95070, var_94)
  loc_13C5CFE: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_13C5D0F: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_13C5D20: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_13C5D31: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_13C5D42: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_13C5D53: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_13C5D6D: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_13C5D7B: Set var_94 = MemVar_1F95044
  loc_13C5D8A: Call 0.Method_Form_Load8 (var_94)
  loc_13C5DA0: Me.DGFPNo.Clone
  loc_13C5DBA: Call 0.Method_arg_50 (var_94, -1)
  loc_13C5DCC: var_E4 = global_116
  loc_13C5DD8: If (var_E4 = 6) Then
  loc_13C5DEF:   var_C0 = "SELECT Distinct Docid as SearchCode,PostDocId,LogSite_Code,Site_Code FROM PayChargeH Where LogSite_Code='" & MemVar_1F95078
  loc_13C5E29:   Me.Connection15.Execute var_C0 & "' And ContraDocId='" & POSAdvanceDepDialog.pDocId & "' AND Vtype='" & global_124 & "'", var_D0, -1
  loc_13C5E3A:   Set global_56 = var_94
  loc_13C5E5C: Else
  loc_13C5E68:   If (global_112 = 1) Then
  loc_13C5E7F:     var_C0 = "SELECT Distinct Docid as SearchCode,ContraDocId,LogSite_Code,Site_Code FROM PayCharge Where LogSite_Code='" & MemVar_1F95078
  loc_13C5EB9:     unk_531BDE.Execute var_C0 & "' And ContraDocId='" & POSAdvanceDepDialog.pDocId & "' And Vtype='" & global_124 & "'", var_D0, -1
  loc_13C5ECA:     Set global_56 = var_94
  loc_13C5EEC:   Else
  loc_13C5F00:     var_C0 = "SELECT Distinct Docid as SearchCode,ContraDocId,LogSite_Code,Site_Code FROM PayCharge Where LogSite_Code='" & MemVar_1F95078
  loc_13C5F21:     unk_531BDE.Execute var_C0 & "' And Vtype='" & global_124 & "'", var_D0, -1
  loc_13C5F32:     Set global_56 = var_94
  loc_13C5F4B:   End If
  loc_13C5F4B: End If
  loc_13C5F4E: MemVar_1F95E84 = "A**P"
  loc_13C5F74: var_DC = "SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp WHERE UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_13C5F95: unk_531BDE.Execute var_DC & "' AND OutletCode='" & global_52 & "' AND [Option]='Order Booking Advance'", var_D0, -1
  loc_13C5FA0: Set var_8C = var_94
  loc_13C5FCF: If (Me.Recordset15.RecordCount > 0) Then
  loc_13C5FEF:   var_D8 = Me.Recordset15.Fields.Item("UPrivilege")
  loc_13C5FF7:   var_D0 = var_D8.Value
  loc_13C6000:   MemVar_1F95E84 = CStr(var_D0)
  loc_13C600E: End If
  loc_13C6014: var_BC = 0
  loc_13C6043: var_DC = "Select Count(*) From PackingOrderDetail Where DocId='" & POSAdvanceDepDialog.pDocId & "' And isnull(Contradocid,'')='' And IsNull(VoidYN,'')<>'Y'"
  loc_13C604C: unk_531BDE.Execute var_DC, var_D0, -1
  loc_13C605C: var_BC = var_D8.Item(var_D8)
  loc_13C6064: var_F8 = var_F8.Value
  loc_13C606F: Proc_6_39_E7D3A0(var_118, var_108, var_108, MemVar_1F95E84, var_94.Fields)
  loc_13C60AE: If CBool((var_118 = 0) And (MemVar_1F950B8 <> 1)) Then
  loc_13C60B4:   MemVar_1F95E84 = "***P"
  loc_13C60B8: End If
  loc_13C60C4: Set var_94 = Me
  loc_13C60CD: var_C0 = "INI"
  loc_13C60DB: Call Proc_221_65_F729FC(Proc_5_1_100EC1C(var_C0, var_94, global_56, var_94), var_94)
  loc_13C60E6: Call Proc_221_67_12ACFA8(var_94)
  loc_13C60EB: Call Proc_221_73_120321C(var_E4)
  loc_13C6104: If (global_112 = 2) Then
  loc_13C6107:   Call Proc_221_68_150E800(&HFF)
  loc_13C610C: End If
  loc_13C6111: Set var_8C = Nothing
  loc_13C6119: Set var_90 = Nothing
  loc_13C611C: Exit Sub
  loc_13C611D: ' Referenced from: 13C57F8
  loc_13C6125: Set var_94 = Err()
  loc_13C612B: Call 0.Method_arg_2C (var_C0)
  loc_13C614C: MsgBox(CVar(var_C0), &H40, "Information", var_118, var_138)
  loc_13C615F: Exit Sub
  loc_13C6160: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E83608
  'Data Table: 531BC8
  loc_E835A3: Set global_72 = Nothing
  loc_E835B5: Set global_56 = Nothing
  loc_E835C7: Set global_60 = Nothing
  loc_E835D9: Set global_68 = Nothing
  loc_E835EB: Set global_84 = Nothing
  loc_E835FD: Set global_88 = Nothing
  loc_E83604: Exit Sub
  loc_E83605: Set var_B4 = 
End Sub

Private Sub Form_Activate() '1349578
  'Data Table: 531BC8
  Dim var_88 As Long
  Dim var_8C As String
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_531BDE As Connection15
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_D4 As TextBox
  Dim var_BC As Variant
  Dim var_D8 As Long
  Dim var_DC As Long
  Dim var_D0 As Variant
  Dim var_F4 As TextBox
  Dim var_100 As Long
  loc_1348D8D: If (global_64 = &HFF) Then
  loc_1348D95:   global_64 = 0
  loc_1348D9B: Else
  loc_1348D9B:   Exit Sub
  loc_1348D9C: End If
  loc_1348DA2: var_88 = global_116
  loc_1348DAE: If (var_88 = 6) Then
  loc_1348DB7:   Call 0.Method_arg_1C0 (var_8C, var_88)
  loc_1348DCC:   If (CDbl(Val(var_8C)) > CDbl(0)) Then
  loc_1348DED:     var_94 = "SELECT Distinct Docid as SearchCode,PostDocId,ContraDocId FROM PayChargeH Where Vtype='" & global_124 & "' AND ContraDocID='"
  loc_1348E0F:     unk_531BDE.Execute var_94 & POSAdvanceDepDialog.pDocId & "'", var_BC, -1
  loc_1348E52:     If (Me.RecordCount <= 0) Then
  loc_1348E78:       Call Proc_221_65_F729FC(Proc_5_1_100EC1C("ADD", Me, Me), Me)
  loc_1348E83:       Call Proc_221_66_F6772C(global_64)
  loc_1348E95:       Set var_C0 = Me.Txt
  loc_1348E9B:       Call 0.Method_Form_Activate0 (CInt(6), var_C4)
  loc_1348EA3:       var_C4.Enabled = True
  loc_1348EBA:       Set var_C0 = Me.Lbl
  loc_1348EC0:       Call 0.Method_Form_Activate0 (1, var_C4)
  loc_1348EC8:       var_C4.Visible = False
  loc_1348EE7:       Call 0.Method_Form_Activate0 (CInt(3), var_C4)
  loc_1348EEF:       var_C4.Visible = False
  loc_1348F12:       var_8C = "SELECT HallBook.DocId AS Code, HallBook.VNo AS Name,HallBook.PartyName FROM HallBook WHERE HallBook.RestCode='" & global_52
  loc_1348F3B:       unk_531BDE.Execute var_8C & "' AND HallbOOK.Docid='" & POSAdvanceDepDialog.pDocId & "'", var_BC, -1
  loc_1348F4C:       Set global_88 = Me.Txt
  loc_1348F7E:       If (Me.RecordCount <> 0) Then
  loc_1348F87:         Call Proc_221_72_117E2C0(MemVar_1F95044, var_8C)
  loc_1348FCB:         Set var_D0 = Me.Txt
  loc_1348FD1:         Call 0.Method_Form_Activate0 (CInt(0), var_D4)
  loc_1348FD9:         var_D4.Text = CStr(Me.Fields.Item("Code").Value)
  loc_134902B:         Set var_D0 = Me.Txt
  loc_1349031:         Call 0.Method_Form_Activate0 (CInt(4), var_D4)
  loc_1349039:         var_D4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_134908B:         Set var_D0 = Me.Txt
  loc_1349091:         Call 0.Method_Form_Activate0 (CInt(4), var_D4)
  loc_1349099:         var_D4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13490C9:         var_C4 = Me.Fields.Item("PartyName")
  loc_13490D1:         var_BC = CVar(var_C4) 'Address
  loc_13490E8:         Set var_D0 = Me.Txt
  loc_13490EE:         Call 0.Method_Form_Activate0 (CInt(5), var_D4)
  loc_13490F6:         var_D4.Text = Proc_6_38_E69628(var_BC)
  loc_1349115:         Set var_C0 = Me.Txt
  loc_134911B:         Call 0.Method_Form_Activate0 (CInt(6), var_C4)
  loc_1349123:         var_C4.SetFocus
  loc_134912F:       End If
  loc_1349132:     Else
  loc_1349132:       Call Proc_221_68_150E800(var_C0)
  loc_1349137:     End If
  loc_1349141:     Call 0.Method_arg_1C4 (CStr(0))
  loc_134914C:   Else
  loc_134917C:     var_98 = "SELECT Distinct Docid as SearchCode,PostDocId FROM PayChargeH Where Vtype='" & global_124 & "' AND ContraDocID='" & POSAdvanceDepDialog.pDocId
  loc_134918C:     unk_531BDE.Execute var_98 & "'", var_BC, -1
  loc_134919D:     Set global_56 = var_C0
  loc_13491B8:   End If
  loc_13491BB: Else
  loc_13491C4:   If (var_88 = 5) Then
  loc_13491F7:     var_98 = "SELECT Distinct Docid as SearchCode,ContraDocId FROM PayCharge Where Vtype='" & global_124 & "' AND ContraDocID='" & POSAdvanceDepDialog.pDocId
  loc_1349207:     unk_531BDE.Execute var_98 & "'", var_BC, -1
  loc_1349218:     Set global_56 = var_C0
  loc_1349233:   End If
  loc_1349233: End If
  loc_134924A: If (OpenMode = 1) Then
  loc_1349250:   var_C8 = OpenType
  loc_1349258:   var_DC = var_C8
  loc_1349264:   If (var_DC = 6) Then
  loc_1349272:     Set var_C0 = Me.Txt
  loc_1349278:     Call 0.Method_Form_Activate0 (CInt(6), var_C4, var_DC)
  loc_1349280:     var_C4.SetFocus
  loc_134929A:     Set var_C0 = Me.Txt
  loc_13492A0:     Call 0.Method_Form_Activate0 (CInt(6), var_C4, var_C8)
  loc_13492A8:     var_D8 = var_C4.Left
  loc_13492B9:     Set var_D0 = Me.DGPayType
  loc_13492BF:     var_D0.Left = CVar(var_C8)
  loc_13492DB:     Set var_C4 = Me.Txt
  loc_13492E1:     Call 0.Method_Form_Activate0 (CInt(6), var_D0, var_F0)
  loc_13492E9:     var_C0 = var_D0.Top
  loc_13492FC:     Set var_D4 = Me.Txt
  loc_1349302:     Call 0.Method_Form_Activate0 (CInt(6), var_F4)
  loc_1349330:     var_AC = CVar((((Me.FrRest.Top + var_F0) + var_F4.Height) + CDbl(&HF))) 'Single
  loc_134933F:     Me.DGPayType.Top = CVar(Me.FrRest.Top)
  loc_1349356:   Else
  loc_134935F:     If (var_DC = 5) Then
  loc_134936E:       Set var_C0 = Me.Lbl
  loc_1349374:       Call 0.Method_Form_Activate0 (0, var_C4)
  loc_134937C:       var_C4.Caption = "Booking No."
  loc_1349393:       Set var_C0 = Me.Lbl
  loc_1349399:       Call 0.Method_Form_Activate0 (1, var_C4)
  loc_13493A1:       var_C4.Visible = False
  loc_13493BA:       Set var_C0 = Me.Txt
  loc_13493C0:       Call 0.Method_Form_Activate0 (CInt(3), var_C4)
  loc_13493C8:       var_C4.Visible = False
  loc_13493E2:       Set var_C0 = Me.Txt
  loc_13493E8:       Call 0.Method_Form_Activate0 (CInt(6), var_C4)
  loc_1349402:       If (var_C4.Enabled = &HFF) Then
  loc_1349410:         Set var_C0 = Me.Txt
  loc_1349416:         Call 0.Method_Form_Activate0 (CInt(6), var_C4)
  loc_134941E:         var_C4.SetFocus
  loc_134942A:       End If
  loc_1349438:       Set var_C0 = Me.Txt
  loc_134943E:       Call 0.Method_Form_Activate0 (CInt(6), var_C4)
  loc_1349457:       Set var_D0 = Me.DGPayType
  loc_134945D:       var_D0.Left = CVar(var_C4.Left)
  loc_1349479:       Set var_C4 = Me.Txt
  loc_134947F:       Call 0.Method_Form_Activate0 (CInt(6), var_D0)
  loc_134949A:       Set var_D4 = Me.Txt
  loc_13494A0:       Call 0.Method_Form_Activate0 (CInt(6), var_F4)
  loc_13494B4:       Set var_C0 = Me.FrRest
  loc_13494CE:       var_AC = CVar((((var_C0.Top + var_D0.Top) + var_F4.Height) + CDbl(&HF))) 'Single
  loc_13494DD:       Me.DGPayType.Top = CVar(var_C4.Left)
  loc_13494F1:       Call Proc_221_68_150E800(var_C0)
  loc_13494F6:     End If
  loc_13494F6:   End If
  loc_13494F9: Else
  loc_1349502:   If (var_D8 = 2) Then
  loc_1349510:     var_100 = OpenType
  loc_134951C:     If (var_100 = 6) Then
  loc_1349535:       If (POSAdvanceDepDialog.AdvType <> "AD") Then
  loc_1349538:         Call Proc_221_80_1100D58(var_100)
  loc_134953D:         Call Proc_221_64_11FCDDC()
  loc_1349542:         Exit Sub
  loc_1349543:       End If
  loc_1349546:     Else
  loc_134954F:       If (var_100 = 5) Then
  loc_1349568:         If (POSAdvanceDepDialog.AdvType <> "AD") Then
  loc_134956B:           Call Proc_221_80_1100D58()
  loc_1349570:           Call Proc_221_64_11FCDDC()
  loc_1349575:           Exit Sub
  loc_1349576:         End If
  loc_1349576:       End If
  loc_1349576:     End If
  loc_1349576:   End If
  loc_1349576: End If
  loc_1349576: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F03058
  'Data Table: 531BC8
  Dim var_B4 As DataGrid
  loc_F02F9C: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_F02FD0:   Set var_B4 = Me.DGEmp
  loc_F02FF5:   If (((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_B4.Visible) = 0)) Then
  loc_F03005:     Me.var_B4.Unload Me
  loc_F0300D:     Exit Sub
  loc_F0300E:   End If
  loc_F0300E: End If
  loc_F0302C: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_112 = 1)) Then
  loc_F0302F:   Call Proc_221_76_167BBC8()
  loc_F03034:   Call TopCtrl1_UnknownEvent_16()
  loc_F03039:   Exit Sub
  loc_F0303A: End If
  loc_F0304E: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_F03056: Exit Sub
End Sub

Private Sub Del_Click() 'F91CDC
  'Data Table: 531BC8
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F91B9B: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F91BD5:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F91BF7:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F91C0D:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F91C16:       Set var_10C = Me.FGrid
  loc_F91C31:     Else
  loc_F91C44:       Me.FGrid.Rows = 1
  loc_F91C68:       var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0))) 'String
  loc_F91C70:       Set var_10C = Me.FGrid
  loc_F91C9D:       Me.FGrid.FixedRows = 1
  loc_F91CA5:     End If
  loc_F91CA5:   End If
  loc_F91CA8: Else
  loc_F91CC9:   MsgBox("No Entries To Delete", &H10, "Delete Module", var_E8, var_108)
  loc_F91CD9: End If
  loc_F91CD9: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F3FC74
  'Data Table: 531BC8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3FB6B: Me.DGRoom.Visible = False
  loc_F3FB8A: If (Me.RecordCount > 0) Then
  loc_F3FBC9:   Set var_B4 = Me.Txt
  loc_F3FBCF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3FBD7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3FC0A:   var_B0 = Me.Fields.Item("Code")
  loc_F3FC29:   Set var_B4 = Me.Txt
  loc_F3FC2F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3FC37:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3FC4D: End If
  loc_F3FC58: Set var_A8 = Me.Txt
  loc_F3FC5E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(5))
  loc_F3FC66: var_B0.SetFocus
  loc_F3FC72: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA41C4
  'Data Table: 531BC8
  Dim var_A8 As Variant
  loc_EA4144: Set var_88 = Me.DGRoom
  loc_EA416E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA4176: Set var_BC = Me.DGRoom
  loc_EA41B2: Proc_6_138_106E830(Me.DGRoom, global_76, CInt(5), Me.FGPoint)
  loc_EA41C0: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 '110C1C8
  'Data Table: 531BC8
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_D0 As String
  Dim var_BC As TextBox
  Dim var_E4 As TextBox
  loc_110BEA7: Me.DGPayType.Visible = False
  loc_110BEB5: var_AC = global_116
  loc_110BEC1: If (var_AC = 6) Then
  loc_110BEDB:   If (Me.RecordCount > 0) Then
  loc_110BF1A:     Set var_B8 = Me.Txt
  loc_110BF20:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(6), var_BC)
  loc_110BF28:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_110BF7A:     Set var_B8 = Me.Txt
  loc_110BF80:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&H13), var_BC)
  loc_110BF88:     var_BC.Text = CStr(Me.Fields.Item("PayType").Value)
  loc_110BFBB:     var_B4 = Me.Fields.Item("Code")
  loc_110BFDA:     Set var_B8 = Me.Txt
  loc_110BFE0:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(6), var_BC)
  loc_110BFE8:     var_BC.Tag = CStr(var_B4.Value)
  loc_110BFFE:   End If
  loc_110C009:   Set var_A8 = Me.Txt
  loc_110C00F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(6), var_B4)
  loc_110C017:   var_B4.SetFocus
  loc_110C026: Else
  loc_110C02F:   If (var_AC = 5) Then
  loc_110C049:     If (Me.RecordCount > 0) Then
  loc_110C069:       var_B4 = Me.Fields.Item("Name")
  loc_110C07A:       var_D0 = CStr(var_B4.Value)
  loc_110C088:       Set var_B8 = Me.Txt
  loc_110C08E:       Call 0.Method_DGPayType_UnknownEvent_90 (CInt(6), var_BC)
  loc_110C0BD:       Set var_A8 = Me.Txt
  loc_110C0C3:       Call 0.Method_DGPayType_UnknownEvent_90 (CInt(4), var_B4, var_D0)
  loc_110C0CB:       "Recd.Agnst.OrderNo. " = var_B4.Text
  loc_110C0EC:       Set var_B8 = Me.Txt
  loc_110C0F2:       Call 0.Method_DGPayType_UnknownEvent_90 (CInt(1), var_BC)
  loc_110C111:       Set var_E0 = Me.Txt
  loc_110C117:       Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&H13), var_E4)
  loc_110C11F:       var_E4.Text = var_AC & var_D0 & ", R.No. " & var_D0
  loc_110C15D:       var_B4 = Me.Fields.Item("Code")
  loc_110C17C:       Set var_B8 = Me.Txt
  loc_110C182:       Call 0.Method_DGPayType_UnknownEvent_90 (CInt(6), var_BC)
  loc_110C18A:       var_BC.Tag = CStr(var_B4.Value)
  loc_110C1A0:     End If
  loc_110C1AB:     Set var_A8 = Me.Txt
  loc_110C1B1:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(6))
  loc_110C1B9:     var_B4.SetFocus
  loc_110C1C5:   End If
  loc_110C1C5: End If
  loc_110C1C5: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EA4100
  'Data Table: 531BC8
  Dim var_A8 As Variant
  loc_EA4080: Set var_88 = Me.DGPayType
  loc_EA40AA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA40B2: Set var_BC = Me.DGPayType
  loc_EA40EE: Proc_6_138_106E830(Me.DGPayType, global_60, CInt(6), Me.FGPoint)
  loc_EA40FC: Exit Sub
  loc_EA40FD: Exit Sub
End Sub

Public Function global_52Get() '53356C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '53357B
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4B54
  'Data Table: 531BC8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC4ACA: On Error Goto loc_EC4B0F
  loc_EC4AD3: Me.MoveFirst
  loc_EC4AED: var_8C = "Searchcode='" & MyValue
  loc_EC4AFD: Me.Find var_8C & "'", 0, 1
  loc_EC4B09: Call Proc_221_68_150E800(var_A0)
  loc_EC4B0E: Exit Sub
  loc_EC4B0F: ' Referenced from: EC4ACA
  loc_EC4B17: Set var_A4 = Err()
  loc_EC4B1D: Call 0.Method_arg_2C (var_8C)
  loc_EC4B3E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4B51: Exit Sub
  loc_EC4B52: Exit Sub
End Sub

Public Property Get OpenMode() 'E04150
  'Data Table: 531BC8
  loc_E04149: OpenMode = global_112
End Sub

Public Property Let OpenMode(vNewValue) 'E02CB0
  'Data Table: 531BC8
  loc_E02CAA: global_112 = vNewValue
  loc_E02CAD: Exit Sub
End Sub

Public Property Get OpenType() 'E05C10
  'Data Table: 531BC8
  loc_E05C09: OpenType = global_116
End Sub

Public Property Let OpenType(vNewValue) 'E03214
  'Data Table: 531BC8
  loc_E0320E: global_116 = vNewValue
  loc_E03211: Exit Sub
End Sub

Public Property Get AdvType() 'E0ED84
  'Data Table: 531BC8
  loc_E0ED78: var_88 = global_124
  loc_E0ED7B: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E129FC
  'Data Table: 531BC8
  loc_E129F4: global_124 = vNewValue
  loc_E129F8: Exit Sub
End Sub

Public Property Get IdNo() 'E1341C
  'Data Table: 531BC8
  loc_E13410: var_88 = global_120
  loc_E13413: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E0F7EC
  'Data Table: 531BC8
  loc_E0F7E4: global_120 = vNewValue
  loc_E0F7E8: Exit Sub
End Sub

Public Property Get PersonCode() 'E0F90C
  'Data Table: 531BC8
  loc_E0F900: var_88 = global_132
  loc_E0F903: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E0FE64
  'Data Table: 531BC8
  loc_E0FE5C: global_132 = vNewValue
  loc_E0FE60: Exit Sub
End Sub

Public Property Get pDocId() 'E0FFCC
  'Data Table: 531BC8
  loc_E0FFC0: var_88 = global_128
  loc_E0FFC3: pDocId = 
End Sub

Public Property Let pDocId(vNewValue) 'E100A4
  'Data Table: 531BC8
  loc_E1009C: global_128 = vNewValue
  loc_E100A0: Exit Sub
End Sub

Public Property Get PTableOrRoomNo() 'E100EC
  'Data Table: 531BC8
  loc_E100E0: var_88 = global_136
  loc_E100E3: PTableOrRoomNo = 
  loc_E100EA: If ( = ) Then Exit Sub
  loc_E100EA: End If
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E1017C
  'Data Table: 531BC8
  loc_E10174: global_136 = vNewValue
  loc_E10178: Exit Sub
End Sub

Public Property Get PRoomCat() 'E1056C
  'Data Table: 531BC8
  loc_E10560: var_88 = global_160
  loc_E10563: PRoomCat = 
End Sub

Public Property Let PRoomCat(vNewValue) 'E1068C
  'Data Table: 531BC8
  loc_E10684: global_160 = vNewValue
  loc_E10688: Exit Sub
End Sub

Public Property Get PRoomtype() 'E109EC
  'Data Table: 531BC8
  loc_E109E0: var_88 = global_164
  loc_E109E3: PRoomtype = 
End Sub

Public Property Let PRoomtype(vNewValue) 'E10A7C
  'Data Table: 531BC8
  loc_E10A74: global_164 = vNewValue
  loc_E10A78: Exit Sub
End Sub

Public Property Get PBillAmt() 'E10B54
  'Data Table: 531BC8
  loc_E10B4A: var_88 = CStr(global_140)
  loc_E10B4D: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E10EB4
  'Data Table: 531BC8
  Dim arg_5001 As Boolean
  loc_E10EAE: global_140 = CDbl(vNewValue)
  loc_E10EB1: Exit Sub
  loc_E10EB2: arg_5001 = True
End Sub

Public Sub Proc_221_64_11FCDDC
  'Data Table: 531BC8
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_531BDE As Connection15
  Dim var_A8 As Variant
  Dim var_86 As Integer
  Dim var_104 As Long
  Dim var_E4 As Variant
  Dim var_CC As Variant
  loc_11FC943: Me.FGrid1.Rows = 1
  loc_11FC94B: var_98 = vbNullString
  loc_11FC955: Set var_AC = Me.FGrid1
  loc_11FC973: Set var_AC = Me.FGrid1
  loc_11FC979: var_AC.FixedRows = 1
  loc_11FC987: var_B0 = global_116
  loc_11FC993: If (var_B0 = 6) Then
  loc_11FC9AA:   var_B4 = "SELECT max(H.DocId) AS DocId,max(H.BooKDocId) AS BookDocId,max(H.VNo) as FPNo,max(H.Party) AS Party, " & "max(H.VDate) AS FPDate,max(H.NetAmt-H.Advance) AS Amount,Sum(IsNull(P.AmtCr,0)) AS PaidAmount, "
  loc_11FC9B1:   var_B8 = var_B4 & "max(H.NetAmt-H.Advance) - IsNull(Sum(P.AmtCr),0) AS Balance FROM (HallSale1 AS H LEFT JOIN PayChargeH AS P ON H.DocId=P.DocId) "
  loc_11FC9C1:   unk_531BDE.Execute var_B8 & "GROUP By H.DocId ORDER BY H.DocId", var_CC, -1
  loc_11FC9D2:   Set global_84 = var_AC
  loc_11FC9EC: Else
  loc_11FC9F5:   If (var_B0 = 5) Then
  loc_11FCA0C:     var_B4 = "SELECT max(H.DocId) AS DocId,max(P.ContraDocid) AS BookDocId,max(H.VNo) as FPNo,max(H.CustName) AS Party, " & "max(H.VDate) AS FPDate,max(H.NetAmt-H.AdvAmt) AS Amount,Sum(IsNull(P.AmtCr,0)) AS PaidAmount, "
  loc_11FCA13:     var_B8 = var_B4 & "max(H.NetAmt-H.AdvAmt) - IsNull(Sum(P.AmtCr),0) AS Balance FROM (PackingOrder AS H LEFT JOIN PayCharge AS P ON H.DocId=P.ContraDocid) "
  loc_11FCA23:     unk_531BDE.Execute var_B8 & "GROUP By H.DocId ORDER BY H.DocId", var_CC, -1
  loc_11FCA34:     Set global_84 = var_AC
  loc_11FCA4B:   End If
  loc_11FCA4B: End If
  loc_11FCA59: global_84.Requery -1
  loc_11FCA5E: ' Referenced from: 11FCDCA
  loc_11FCA73: If Not(Me.Recordset15.EOF) Then
  loc_11FCAB8:   If (Me.Recordset15.Fields.Item("Balance").Value > 0) Then
  loc_11FCAC1:     var_86 = (var_86 + 1)
  loc_11FCACB:     var_98 = CVar(CLng((var_86 + 1))) 'Long
  loc_11FCADA:     Me.FGrid1.Rows = "Balance"
  loc_11FCAE6:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_11FCAEB:     var_104 = 0
  loc_11FCB25:     var_E4 = CVar(CStr(Me.var_AC.Fields.Item("DocID").Value)) 'String
  loc_11FCB2D:     Set var_128 = Me.FGrid1
  loc_11FCB33:     LateIdCallSt
  loc_11FCB4F:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_11FCB54:     var_104 = 1
  loc_11FCB8E:     var_E4 = CVar(CStr(Me.FGrid1.Fields.Item("FPNo").Value)) 'String
  loc_11FCB96:     Set var_128 = Me.FGrid1
  loc_11FCB9C:     LateIdCallSt
  loc_11FCBB8:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_11FCBBD:     var_104 = 2
  loc_11FCBF7:     var_E4 = CVar(CStr(Me.FGrid1.Fields.Item("Party").Value)) 'String
  loc_11FCBFF:     Set var_128 = Me.FGrid1
  loc_11FCC05:     LateIdCallSt
  loc_11FCC21:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_11FCC26:     var_104 = 3
  loc_11FCC60:     var_E4 = CVar(CStr(Me.FGrid1.Fields.Item("FPDate").Value)) 'String
  loc_11FCC68:     Set var_128 = Me.FGrid1
  loc_11FCC6E:     LateIdCallSt
  loc_11FCC8A:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_11FCC8F:     var_104 = 4
  loc_11FCCC9:     var_E4 = CVar(CStr(Me.FGrid1.Fields.Item("Balance").Value)) 'String
  loc_11FCCD1:     Set var_128 = Me.FGrid1
  loc_11FCCD7:     LateIdCallSt
  loc_11FCCF3:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_11FCCF8:     var_104 = 5
  loc_11FCD32:     var_E4 = CVar(CStr(Me.FGrid1.Fields.Item("Amount").Value)) 'String
  loc_11FCD40:     LateIdCallSt
  loc_11FCD98:     var_E4 = CVar(Proc_6_38_E69628(CVar(Me.FGrid1.Fields.Item("BOOKDOCID")), 6, CVar(CLng(var_86)), Me.FGrid1, var_E4, 6, CVar(CLng(var_86)))) 'String
  loc_11FCDA0:     Set var_128 = Me.FGrid1
  loc_11FCDA6:     LateIdCallSt
  loc_11FCDBC:   End If
  loc_11FCDC5:   global_84.MoveNext
  loc_11FCDCA:   GoTo loc_11FCA5E
  loc_11FCDCD: End If
  loc_11FCDD6: global_84.Close
  loc_11FCDDB: Exit Sub
End Sub

Public Sub Proc_221_65_F729FC(arg_C) 'F729FC
  'Data Table: 531BC8
  Dim var_98 As TextBox
  loc_F728BE: Set var_8C = Me.Txt
  loc_F728C4: Call 0.Method_Proc_221_65_F729FC8 (var_8E, var_86)
  loc_F728D1: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F728E7:   Set var_8C = Me.Txt
  loc_F728ED:   Call 0.Method_Proc_221_65_F729FC0 (CInt(var_86), var_98)
  loc_F728F5:   var_98.Enabled = arg_C
  loc_F72904: Next var_92 'Byte
  loc_F72916: If (global_112 = 1) Then
  loc_F72926:   Set var_8C = Me.Txt
  loc_F7292C:   Call 0.Method_Proc_221_65_F729FC0 (CInt(1), var_98)
  loc_F72934:   var_98.Enabled = False
  loc_F72940: End If
  loc_F7294D: Set var_8C = Me.Txt
  loc_F72953: Call 0.Method_Proc_221_65_F729FC0 (CInt(2), var_98)
  loc_F7295B: var_98.Enabled = False
  loc_F72974: Set var_8C = Me.Txt
  loc_F7297A: Call 0.Method_Proc_221_65_F729FC0 (CInt(0), var_98)
  loc_F72982: var_98.Enabled = False
  loc_F7299B: Set var_8C = Me.Txt
  loc_F729A1: Call 0.Method_Proc_221_65_F729FC0 (CInt(5), var_98)
  loc_F729A9: var_98.Enabled = False
  loc_F729CC: If (OpenMode = 1) Then
  loc_F729DC:   Set var_8C = Me.Txt
  loc_F729E2:   Call 0.Method_Proc_221_65_F729FC0 (CInt(5), var_98)
  loc_F729EA:   var_98.Enabled = False
  loc_F729F6:   GoTo loc_F729F9
  loc_F729F9:   ' Referenced from: F729F6
  loc_F729F9: End If
  loc_F729F9: Exit Sub
End Sub

Public Sub Proc_221_66_F6772C
  'Data Table: 531BC8
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_F67606: Set var_8C = Me.Txt
  loc_F6760C: Call 0.Method_Proc_221_66_F6772C8 (var_8E, var_86)
  loc_F67619: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F6762F:   Set var_8C = Me.Txt
  loc_F67635:   Call 0.Method_Proc_221_66_F6772C0 (CInt(var_86), var_98)
  loc_F6763D:   var_98.Text = vbNullString
  loc_F67659:   Set var_8C = Me.Txt
  loc_F6765F:   Call 0.Method_Proc_221_66_F6772C0 (CInt(var_86), var_98)
  loc_F67667:   var_98.Tag = vbNullString
  loc_F67676: Next var_92 'Byte
  loc_F676B3: Set var_8C = Me.Txt
  loc_F676B9: Call 0.Method_Proc_221_66_F6772C0 (CInt(2), var_98, CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy")))
  loc_F676C1: var_98.Text = 1
  loc_F676EA: Me.FGrid.Rows = 1
  loc_F676F2: var_A8 = "1"
  loc_F676FC: Set var_8C = Me.FGrid
  loc_F67720: Me.FGrid.FixedRows = 1
  loc_F67728: Exit Sub
End Sub

Public Sub Proc_221_67_12ACFA8
  'Data Table: 531BC8
  Dim var_90 As Long
  Dim var_A0 As Variant
  Dim var_B8 As Variant
  Dim var_C4 As TextBox
  Dim var_DC As Variant
  Dim var_B4 As Variant
  loc_12AC987: Me.FrRest.Top = CDbl(915)
  loc_12AC99D: Me.FrRest.Left = CDbl(0)
  loc_12AC9B0: var_90 = OpenType
  loc_12AC9BC: If (var_90 = 6) Then
  loc_12AC9D2:   Me.FGrid.Top = CVar(CDbl(3270))
  loc_12AC9DD: Else
  loc_12AC9E6:   If (var_90 = 5) Then
  loc_12AC9FC:     Me.FGrid.Top = CVar(CDbl(3270))
  loc_12ACA04:   End If
  loc_12ACA04: End If
  loc_12ACA16: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_12ACA2C: Set var_B4 = Me.Txt
  loc_12ACA32: Call 0.Method_Proc_221_67_12ACFA80 (CInt(7), var_B8)
  loc_12ACA4D: Set var_C0 = Me.Txt
  loc_12ACA53: Call 0.Method_Proc_221_67_12ACFA80 (CInt(7), var_C4)
  loc_12ACA8C: Me.FrTxnNo.Top = (((Me.FrRest.Top + var_B8.Top) + var_C4.Height) + CDbl(&H14))
  loc_12ACAAF: Me.FrTxnNo.Left = CDbl(240)
  loc_12ACAC5: Set var_B4 = Me.Txt
  loc_12ACACB: Call 0.Method_Proc_221_67_12ACFA80 (CInt(7), var_B8)
  loc_12ACAE6: Set var_C0 = Me.Txt
  loc_12ACAEC: Call 0.Method_Proc_221_67_12ACFA80 (CInt(7), var_C4)
  loc_12ACB25: Me.FrChqDet.Top = (((Me.FrRest.Top + var_B8.Top) + var_C4.Height) + CDbl(&H14))
  loc_12ACB48: Me.FrChqDet.Left = CDbl(240)
  loc_12ACB5E: Set var_B4 = Me.Txt
  loc_12ACB64: Call 0.Method_Proc_221_67_12ACFA80 (CInt(7), var_B8)
  loc_12ACB6C: var_BC = var_B8.Top
  loc_12ACB7F: Set var_C0 = Me.Txt
  loc_12ACB85: Call 0.Method_Proc_221_67_12ACFA80 (CInt(7), var_C4)
  loc_12ACBBE: Me.FrCCDet.Top = (((Me.FrRest.Top + var_BC) + var_C4.Height) + CDbl(&H14))
  loc_12ACBE1: Me.FrCCDet.Left = CDbl(240)
  loc_12ACC0B: Me.DGPayType.Top = CVar(CDbl(Me.FGrid.Top))
  loc_12ACC3C: Me.DGPayType.Height = CVar(CDbl(Me.FGrid.Height))
  loc_12ACC79: var_A0 = CVar((Me.FrRest.Top + CDbl(Me.FGrid.Top))) 'Single
  loc_12ACC82: Set var_B8 = Me.DGTable
  loc_12ACC88: var_B8.Top = CVar(CDbl(Me.FGrid.Height))
  loc_12ACCBB: Me.DGTable.Height = CVar(CDbl(Me.FGrid.Height))
  loc_12ACCD8: Set var_B4 = Me.Txt
  loc_12ACCDE: Call 0.Method_Proc_221_67_12ACFA80 (CInt(7), var_B8, var_BC)
  loc_12ACCE6: var_DC = var_B8.Top
  loc_12ACCF9: Set var_C0 = Me.Txt
  loc_12ACCFF: Call 0.Method_Proc_221_67_12ACFA80 (CInt(7), var_C4)
  loc_12ACD38: Me.FrSendRoom.Top = (((Me.FrRest.Top + var_BC) + var_C4.Height) + CDbl(&H14))
  loc_12ACD5B: Me.FrSendRoom.Left = CDbl(240)
  loc_12ACD71: Set var_B4 = Me.Txt
  loc_12ACD77: Call 0.Method_Proc_221_67_12ACFA80 (CInt(7), var_B8)
  loc_12ACD92: Set var_C0 = Me.Txt
  loc_12ACD98: Call 0.Method_Proc_221_67_12ACFA80 (CInt(7), var_C4)
  loc_12ACDD1: Me.FrEmp.Top = (((Me.FrRest.Top + var_B8.Top) + var_C4.Height) + CDbl(&H14))
  loc_12ACDF4: Me.FrEmp.Left = CDbl(240)
  loc_12ACE0A: Set var_B4 = Me.Txt
  loc_12ACE10: Call 0.Method_Proc_221_67_12ACFA80 (CInt(7), var_B8)
  loc_12ACE2B: Set var_C0 = Me.Txt
  loc_12ACE31: Call 0.Method_Proc_221_67_12ACFA80 (CInt(7), var_C4)
  loc_12ACE6A: Me.FrComp.Top = (((Me.FrRest.Top + var_B8.Top) + var_C4.Height) + CDbl(&H14))
  loc_12ACE8D: Me.FrComp.Left = CDbl(240)
  loc_12ACEA8: Me.DGRoom.Top = CVar(CDbl(405))
  loc_12ACEC3: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_12ACEDE: Me.DGEmp.Top = CVar(CDbl(405))
  loc_12ACEF9: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_12ACF14: Me.DGCompany.Top = CVar(CDbl(405))
  loc_12ACF2F: Me.DGCompany.Left = CVar(CDbl(5550))
  loc_12ACF43: If (global_116 = 6) Then
  loc_12ACF55:   Me.FrRem.Width = CDbl(4925)
  loc_12ACF5D: End If
  loc_12ACF82: Me.FrRem.Top = (Me.FrRest.Top + CDbl(960))
  loc_12ACF9D: Me.FrRem.Left = CDbl(240)
  loc_12ACFA5: Exit Sub
End Sub

Public Sub Proc_221_68_150E800
  'Data Table: 531BC8
  Dim Me As Recordset15
  Dim var_98 As Long
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_A4 As String
  Dim var_A8 As String
  Dim var_AC As String
  Dim var_EC As Variant
  Dim var_C8 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Field20
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim unk_531BDE As Connection15
  Dim var_148 As Variant
  Dim var_144 As Variant
  Dim var_DC As Variant
  Dim var_8E As Integer
  Dim var_160 As Variant
  Dim var_184 As Long
  Dim var_170 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_1C8 As Variant
  loc_150D920: On Error Goto loc_150E7BB
  loc_150D929: Proc_183_45_E5CCA8(global_56)
  loc_150D945: If (Me.RecordCount <= 0) Then
  loc_150D948:   Call Proc_221_66_F6772C()
  loc_150D950: Else
  loc_150D956:   var_98 = global_116
  loc_150D962:   If (var_98 = 6) Then
  loc_150D979:     var_9C = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName," & " ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType, ST.AmtCr,"
  loc_150D987:     var_A4 = var_9C & " ST.TipAmt, ST.FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.TxnNo, ST.ExpDate,ST.ContraDOCId," & " CC.Name as CompName,CompCode"
  loc_150D995:     var_AC = var_A4 & " FROM ((((PayChargeH AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code)" & " LEFT JOIN Employee AS E ON ST.EmpCode = E.Code)"
  loc_150D9AA:     var_EC = CVar(var_AC & " Inner JOIN RevMast AS P ON ST.PayCode = P.Code)" & ")" & " Left join SubGroup CC on CC.SubCode=ST.CompCode Where ST.Docid='") 'String
  loc_150D9F1:     unk_531BDE.Execute CStr(var_EC & Me.Fields.Item("SearchCode").Value & "' And AmtCr>0"), var_140, -1
  loc_150D9FC:     Set var_88 = var_144
  loc_150DA2B:   Else
  loc_150DA34:     If (var_98 = 5) Then
  loc_150DA4B:       var_9C = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName," & " ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType, ST.AmtCr,"
  loc_150DA52:       var_A0 = var_9C & " ST.TipAmt,  Cast(Substring(ST.ContraDocId,14,8) As int) As FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.TxnNo, ST.ExpDate,ST.BatchNo,ST.ContraDOCId,"
  loc_150DA60:       var_A8 = var_A0 & " CC.Name as CompName,CompCode" & " FROM ((((PayCharge AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code)"
  loc_150DA7C:       var_EC = CVar(var_A8 & " LEFT JOIN Employee AS E ON ST.EmpCode = E.Code)" & " Inner JOIN RevMast AS P ON ST.PayCode = P.Code)" & ")" & " Left join SubGroup CC on CC.SubCode=ST.CompCode Where ST.Docid='") 'String
  loc_150DAB5:       var_11C = var_EC & Me.Fields.Item("SearchCode").Value & "'" 
  loc_150DAC3:       unk_531BDE.Execute CStr(var_11C), var_140, -1
  loc_150DACE:       Set var_88 = var_144
  loc_150DAFA:     End If
  loc_150DAFA:   End If
  loc_150DB2E:   global_96 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_150DB56:   If (Me.Recordset15.RecordCount > 0) Then
  loc_150DB9B:     Call 0.Method_Proc_221_68_150E8000 (CInt(0), var_148, CStr(Me.Recordset15.Fields.Item("DocID").Value))
  loc_150DBA3:     var_148.Text = Me.Txt
  loc_150DBED:     global_100 = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_150DC40:     Call 0.Method_Proc_221_68_150E8000 (CInt(1), var_148, CStr(Me.Recordset15.Fields.Item("VNo").Value))
  loc_150DC48:     var_148.Text = Me.Txt
  loc_150DC9A:     Set var_144 = Me.Txt
  loc_150DCA0:     Call 0.Method_Proc_221_68_150E8000 (CInt(2), var_148)
  loc_150DCA8:     var_148.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_150DCF9:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_150DD46:     Set var_144 = Me.Txt
  loc_150DD4C:     Call 0.Method_Proc_221_68_150E8000 (CInt(9), var_148)
  loc_150DD54:     var_148.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_150DDA1:     Set var_144 = Me.Txt
  loc_150DDA7:     Call 0.Method_Proc_221_68_150E8000 (CInt(4), var_148)
  loc_150DDAF:     var_148.Tag = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ContraDocId")))
  loc_150DDC3:   End If
  loc_150DDD2:   Me.FGrid.Redraw = False
  loc_150DDE7:   Set var_B8 = Me.FGrid
  loc_150DDED:   var_B8.Rows = 1
  loc_150DDF7:   var_8E = 1
  loc_150DE11:   If (Me.var_B8.RecordCount > 0) Then
  loc_150DE14:     ' Referenced from:   150E6C3
  loc_150DE26:     If Not(Me.Recordset15.EOF) Then
  loc_150DE29:       var_C8 = vbNullString
  loc_150DE33:       Set var_B8 = Me.FGrid
  loc_150DE48:       Set var_150 = Me.FGrid
  loc_150DE4F:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150DE54:       var_160 = 0
  loc_150DE8B:       var_EC = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_150DE92:       LateIdCallSt
  loc_150DEE5:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_8E)), var_150, var_EC, 2)) 'String
  loc_150DEEC:       LateIdCallSt
  loc_150DF02:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150DF07:       var_160 = 1
  loc_150DF3E:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)) 'String
  loc_150DF45:       LateIdCallSt
  loc_150DF98:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_8E)), var_150, var_EC, 3, CVar(CLng(var_8E)))) 'String
  loc_150DF9F:       LateIdCallSt
  loc_150DFEC:       Proc_6_39_E7D3A0(var_EC, CVar(Me.Recordset15.Fields.Item("FPNo")), &H17, CVar(CLng(var_8E)), var_150, var_EC)
  loc_150DFF5:       var_FC = CVar(CStr(var_EC)) 'String
  loc_150DFFC:       LateIdCallSt
  loc_150E016:       var_184 = global_116
  loc_150E022:       If (var_184 = 6) Then
  loc_150E063:         var_170 = 0
  loc_150E098:         unk_531BDE.Execute CStr("SELECT PartyName FROM HallBook WHERE DocId='" & Me.Recordset15.Fields.Item("ContraDocId").Value & "'"), var_11C, -1
  loc_150E0A0:         var_144 = var_144.Fields
  loc_150E0A8:         var_170 = var_148.Item(var_148)
  loc_150E0B9:         var_1C8 = CVar(Proc_6_38_E69628(CVar(var_188), var_188, CVar(CLng(7)), CVar(CLng(var_8E)), var_184)) 'String
  loc_150E0C0:         LateIdCallSt
  loc_150E0E8:       Else
  loc_150E0F1:         If (var_184 = 5) Then
  loc_150E132:           var_170 = 0
  loc_150E15D:           var_9C = CStr("SELECT CustName FROM PackingOrder WHERE DocId='" & Me.Recordset15.Fields.Item("ContraDocId").Value & "'")
  loc_150E167:           unk_531BDE.Execute var_9C, var_11C, -1
  loc_150E16F:           var_144 = var_144.Fields
  loc_150E177:           var_170 = var_148.Item(var_148)
  loc_150E188:           var_1C8 = CVar(Proc_6_38_E69628(CVar(var_188), var_188, CVar(CLng(7)), CVar(CLng(var_8E)), var_150)) 'String
  loc_150E18F:           LateIdCallSt
  loc_150E1B4:         End If
  loc_150E1B4:       End If
  loc_150E1D7:       var_130 = CVar(CLng(var_8E)) 'Long
  loc_150E1DC:       var_170 = 8
  loc_150E204:       var_FC = Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00")
  loc_150E20D:       var_11C = CVar(CStr(var_FC)) 'String
  loc_150E214:       LateIdCallSt
  loc_150E22E:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150E236:       var_160 = CVar(CLng(9)) 'Long
  loc_150E269:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("CardNo").Value)) 'String
  loc_150E270:       LateIdCallSt
  loc_150E28A:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150E292:       var_160 = CVar(CLng(&HA)) 'Long
  loc_150E2C5:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_150E2CC:       LateIdCallSt
  loc_150E31E:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HB)), CVar(CLng(var_8E)))) 'String
  loc_150E325:       LateIdCallSt
  loc_150E373:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BatchNo")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_150E37A:       LateIdCallSt
  loc_150E3C9:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TxnNo")), &H18, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_150E3D0:       LateIdCallSt
  loc_150E3E6:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150E3EE:       var_160 = CVar(CLng(&HD)) 'Long
  loc_150E421:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_150E428:       LateIdCallSt
  loc_150E47A:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HE)), CVar(CLng(var_8E)))) 'String
  loc_150E481:       LateIdCallSt
  loc_150E497:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150E49F:       var_160 = CVar(CLng(&HF)) 'Long
  loc_150E4D2:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_150E4D9:       LateIdCallSt
  loc_150E52B:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&H10)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&H10)), CVar(CLng(var_8E)))) 'String
  loc_150E532:       LateIdCallSt
  loc_150E548:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150E550:       var_160 = CVar(CLng(&H11)) 'Long
  loc_150E583:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_150E58A:       LateIdCallSt
  loc_150E5DD:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompCode")), &H15, CVar(CLng(var_8E)), var_150, var_EC, &H15, CVar(CLng(var_8E)))) 'String
  loc_150E5E4:       LateIdCallSt
  loc_150E633:       var_EC = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompName")), &H16, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_150E63A:       LateIdCallSt
  loc_150E650:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150E655:       var_160 = &H12
  loc_150E68C:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_150E693:       LateIdCallSt
  loc_150E6AB:       Set var_150 = Nothing 
  loc_150E6B5:       var_8E = (var_8E + 1)
  loc_150E6BE:       Me.Recordset15.MoveNext
  loc_150E6C3:       GoTo loc_150DE14
  loc_150E6C6:     End If
  loc_150E6D9:     Me.FGrid.FixedRows = 1
  loc_150E6E1:   End If
  loc_150E6EF:   Me.FGrid.Redraw = True
  loc_150E6FD:   If (var_8E = 1) Then
  loc_150E713:     Me.FGrid.Rows = 1
  loc_150E737:     var_DC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, var_8E, var_150, var_EC, var_160, var_10C))) 'String
  loc_150E73F:     Set var_CC = Me.FGrid
  loc_150E76C:     Me.FGrid.FixedRows = 1
  loc_150E774:   End If
  loc_150E79F:   Call Proc_221_75_11570CC(CStr(Me.FGrid.TextMatrix)), 2, 1, FGrid.DispID_10000, Me.FGrid.TextMatrix), var_150)
  loc_150E7AD:   Call Proc_221_78_13B1EEC(var_EC, var_EC, var_150)
  loc_150E7B2: End If
  loc_150E7B7: Set var_88 = Nothing
  loc_150E7BA: Exit Sub
  loc_150E7BB: ' Referenced from: 150D920
  loc_150E7C3: Set var_B8 = Err()
  loc_150E7C9: Call 0.Method_arg_2C (var_9C, var_EC)
  loc_150E7EA: MsgBox(CVar(var_9C), &H40, "Information", var_FC, var_11C)
  loc_150E7FD: Exit Sub
End Sub

Public Sub Proc_221_69_1338600(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) '1338600
  'Data Table: 531BC8
  Dim var_B8 As String
  Dim unk_531BDE As Connection15
  Dim var_88 As Integer
  Dim var_A8 As Recordset15
  Dim var_D4 As Variant
  Dim var_FC As Variant
  Dim var_86 As Integer
  Dim var_E8 As Fields15
  Dim var_114 As Field20
  Dim var_14C As Variant
  Dim var_16C As String
  Dim var_134 As Variant
  Dim var_18C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_214 As Variant
  Dim var_224 As Variant
  Dim var_E4 As Variant
  Dim var_10C As Variant
  Dim var_15C As Variant
  Dim var_1AC As Variant
  loc_1337E98: On Error Goto loc_13385F8
  loc_1337EAF: var_B8 = "SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo As ChqNo,P.ChqDate AS ChqDate,P.ExpDate AS CCExpDate,P.BatchNo As BatchNo,P.AMTCR AS RECTAMT,PO.VType+'/'+Cast(PO.VNO As Char)AS BOOKNO,PO.CUSTNAME,P.TxnNo FROM (PAYCHARGE P left join PackingOrder PO On P.ContraDocid=PO.DocId) WHERE P.DOCID IN ('" & arg_C
  loc_1337ECD: unk_531BDE.Execute var_B8 & "') AND P.VTYPE='" & arg_18 & "'", var_E4, -1
  loc_1337ED8: Set var_A8 = var_E8
  loc_1337EEE: Close 1
  loc_1337EF7: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1337EFD: var_88 = 1
  loc_1337F03: MemVar_1F953C4 = "N"
  loc_1337F0A: MemVar_1F953C8 = "N"
  loc_1337F11: MemVar_1F953CC = "M"
  loc_1337F1B: var_EC = var_A8.RecordCount
  loc_1337F29: If (var_EC > 0) Then
  loc_1337F4A:   If CBool(Trim(arg_10) <> "W") Then
  loc_1337F4D:     ' Referenced from: 133838A
  loc_1337F5C:     If Not(var_A8.EOF) Then
  loc_1337F6B:       If (var_86 = 0) Then
  loc_1337F86:         Print 1, vbNullString
  loc_1337F91:         Print 1, vbNullString
  loc_1337FB8:         Print 1, Proc_6_128_1026560(" ADVANCE RECEIPT ", "B", &H50)
  loc_1337FCC:         Print 1, vbNullString
  loc_1337FD7:         Print 1, vbNullString
  loc_1338037:         Proc_6_39_E7D3A0(var_15C, CVar(var_A8.Fields.Item("GRCNo")), Proc_6_129_12B862C(var_88, var_86, &H50))
  loc_13380A4:         var_134 = (CVar("Receipt No.  :" & CStr(var_A8.Fields.Item("RectNo").Value)) + Space(8))
  loc_13380AB:         var_18C = CVar(Proc_6_45_EADFB8(CStr("GRC No. :" & var_15C), &HE)) 'String
  loc_13380AE:         var_19C = (var_134 + var_18C)
  loc_13380B5:         var_1BC = (var_19C + Space(8))
  loc_13380BE:         var_1DC = (var_1BC + "Date :")
  loc_13380C8:         var_224 = (var_1DC + CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("RectDate")), var_88)))
  loc_13380CE:         Print 1, var_224
  loc_1338110:         Print 1, vbNullString
  loc_133811B:         Print 1, vbNullString
  loc_1338149:         var_10C = CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("GuestName")))) 'String
  loc_133815C:         var_134 = ("Recieved with thanks from Mr. " + Ucase(var_10C))
  loc_1338162:         Print 1, var_134
  loc_133817B:         Print 1, vbNullString
  loc_1338198:         var_114 = var_A8.Fields.Item("RectAmt")
  loc_13381A7:         Proc_6_39_E7D3A0(var_10C, CVar(var_114))
  loc_13381B6:         var_FC = "0.00"
  loc_13381F2:         Proc_6_39_E7D3A0(var_18C, CVar(var_A8.Fields.Item("RectAmt")), 1)
  loc_1338244:         var_16C = "A Sum of Rs. "
  loc_133824C:         var_14C = (var_16C + Format(var_10C, var_FC))
  loc_1338255:         var_15C = (CVar(var_A8.Fields.Item("GRCNo")) + " (")
  loc_133825F:         var_1AC = (var_15C + CVar(Proc_6_43_1003B24(CSng(var_18C), "Rs", vbNullString)))
  loc_1338268:         var_1BC = (Space(8) + ") by ")
  loc_1338272:         var_214 = (var_1BC + CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("RectMode")), 1)))
  loc_1338278:         Print 1, CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("RectDate")), var_88))
  loc_13382B6:         Print 1, vbNullString
  loc_13382C8:         Print 1, "towards (Room Charge/Others)" & "______________________________________________"
  loc_13382D6:         Print 1, vbNullString
  loc_13382E1:         Print 1, vbNullString
  loc_13382EC:         Print 1, vbNullString
  loc_13382F7:         Print 1, vbNullString
  loc_1338302:         Print 1, vbNullString
  loc_1338326:         Print 1, Proc_6_52_EAE084("Autho. Signature", &H46)
  loc_133833A:         Print 1, vbNullString
  loc_1338345:         Print 1, "---------------------------------------------------------------------------------------"
  loc_133834B:       End If
  loc_1338351:       var_86 = (var_86 + &H18)
  loc_1338354:       ' Referenced from: 1338371
  loc_133835A:       If (Proc_6_129_12B862C(var_88, var_86, &H50) < &H22) Then
  loc_1338362:         Print 1, vbNullString
  loc_133836E:         var_86 = (var_86 + 1)
  loc_1338371:         GoTo loc_1338354
  loc_1338374:       End If
  loc_1338376:       var_86 = 0
  loc_133837F:       var_88 = (var_88 + 1)
  loc_1338385:       var_A8.MoveNext
  loc_133838A:       GoTo loc_1337F4D
  loc_133838D:     End If
  loc_1338390:   Else
  loc_1338397:     var_AC = arg_14 & " Advance Receipt"
  loc_133839D:     var_D4 = arg_14
  loc_13383AE:     var_B0 = CStr(Ucase(var_D4))
  loc_13383D8:     Set var_E8 = var_A8 
  loc_13383DF:     CreateFieldDefFile(var_E8, MemVar_1F950B4 & "\" & var_AC & ".ttx", &HFF, var_88)
  loc_133840A:     var_B8 = MemVar_1F950B4 & "\"
  loc_1338421:     Call 0.Method_arg_1C (var_B8 & var_AC & ".RPT", var_D4, var_E8, var_86)
  loc_133842C:     MemVar_1F951E8 = var_E8
  loc_1338455:     Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_FC, var_16C)
  loc_133845D:     Call 0.Method_arg_2C (var_86, var_86)
  loc_133846B:     Call 0.Method_arg_150 (var_E8)
  loc_1338481:     Call 0.Method_arg_90 (var_E8, var_EC)
  loc_1338489:     Call 0.Method_arg_24 (var_B2)
  loc_1338495:     For var_250 =  To CInt(var_EC):   1 = var_250 'Integer
  loc_13384AE:       Call 0.Method_arg_90 (var_E8, CLng(var_B2))
  loc_13384B6:       Call 0.Method_arg_20 (var_114)
  loc_13384BE:       Call 0.Method_arg_30 (var_B8)
  loc_13384ED:       If (Ucase(CVar(var_B8)) = "TITLE") Then
  loc_1338511:         Call 0.Method_arg_90 (var_E8, CLng(var_B2))
  loc_1338519:         Call 0.Method_arg_20 (var_114)
  loc_1338521:         Call 0.Method_arg_38 ("'" & arg_14 & "'")
  loc_1338534:       End If
  loc_1338537:     Next var_250 'Integer
  loc_1338541:     Set var_114 = Nothing
  loc_1338557:     Set var_E8 = MemVar_1F951E8 
  loc_1338563:     Proc_6_99_1484404(var_E8, 0, var_B0)
  loc_133856E:     MemVar_1F951E8 = var_E8
  loc_1338579:   End If
  loc_1338579: End If
  loc_133857B: Close 1
  loc_1338584: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1338594: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_133859F: Close 1
  loc_13385A9: If (MemVar_1F953BC = "Y") Then
  loc_13385C5:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_13385CF: Else
  loc_13385E8:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_13385EF: End If
  loc_13385F4: Set var_A8 = Nothing
  loc_13385F7: Exit Sub
  loc_13385F8: ' Referenced from: 1337E98
  loc_13385F8: Proc_6_60_E63754(&HFF)
  loc_13385FD: Exit Sub
End Sub

Public Sub Proc_221_70_FB76F4
  'Data Table: 531BC8
  loc_FB755C: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_FB756E:   Me.DGPayType.Visible = False
  loc_FB7576: End If
  loc_FB7592: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_FB75A4:   Me.DGPayType.Visible = False
  loc_FB75AC: End If
  loc_FB75C8: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_FB75DA:   Me.DGEmp.Visible = False
  loc_FB75E2: End If
  loc_FB75FE: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_FB7610:   Me.DGTable.Visible = False
  loc_FB7618: End If
  loc_FB7634: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_FB7646:   Me.DGRoom.Visible = False
  loc_FB764E: End If
  loc_FB766A: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_FB767C:   Me.DGCompany.Visible = False
  loc_FB7684: End If
  loc_FB76A0: If (CBool(Me.DGFPNo.Visible) = &HFF) Then
  loc_FB76B2:   Me.DGFPNo.Visible = False
  loc_FB76BA: End If
  loc_FB76D6: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FB76E8:   Me.FGPoint.Visible = False
  loc_FB76F0: End If
  loc_FB76F0: Exit Sub
End Sub

Public Sub Proc_221_71_E9133C(arg_C) 'E9133C
  'Data Table: 531BC8
  Dim var_10C As TextBox
  loc_E912D0: Call Proc_221_70_FB76F4()
  loc_E9130C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E9130F:   Call TopCtrl1_UnknownEvent_16()
  loc_E91317: Else
  loc_E91321:   Set var_108 = Me.Txt
  loc_E91327:   Call 0.Method_Proc_221_71_E9133C0 (arg_C)
  loc_E9132F:   var_10C.SetFocus
  loc_E9133B: End If
  loc_E9133B: Exit Sub
End Sub

Public Sub Proc_221_72_117E2C0
  'Data Table: 531BC8
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
  loc_117DF28: var_90 = global_124
  loc_117DF3F: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_117DF70: Set var_A8 = Me.Txt
  loc_117DF76: Call 0.Method_Proc_221_72_117E2C00 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_117DF85: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_117DF8D: var_EC = -1 & var_CC 
  loc_117DFA1: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_117DFAC: Set var_8C = var_134
  loc_117DFE8: If (var_8C.RecordCount > 0) Then
  loc_117E027:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_117E02A:     GoTo loc_117E0B7
  loc_117E02D:   End If
  loc_117E05E:   global_104 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_117E089:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_117E09E:   var_CC = (var_AC.Value + 1)
  loc_117E0A6:   global_108 = CInt(var_CC)
  loc_117E0B7:   ' Referenced from: 117E02A
  loc_117E0E2:   var_BC = Space((5 - Len(var_90)))
  loc_117E0EA:   var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_117E0FE:   var_EC = Space((5 - Len(global_104)))
  loc_117E106:   var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_117E113:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_104))
  loc_117E12C:   var_14C = Space((8 - Len(CStr(global_108))))
  loc_117E134:   var_15C = (var_130 + var_14C)
  loc_117E143:   var_17C = (var_15C + CVar(CStr(global_108)))
  loc_117E14E:   global_100 = CStr(var_17C)
  loc_117E184:   Me.LblVPrefix.Caption = global_104
  loc_117E19D:   Set var_A8 = Me.Txt
  loc_117E1A3:   Call 0.Method_Proc_221_72_117E2C00 (CInt(0), var_AC)
  loc_117E1AB:   var_AC.Text = global_100
  loc_117E1CD:   Set var_A8 = Me.Txt
  loc_117E1D3:   Call 0.Method_Proc_221_72_117E2C00 (CInt(1), var_AC)
  loc_117E1DB:   var_AC.Text = CStr(global_108)
  loc_117E1F0:   var_88 = global_100
  loc_117E1F6: Else
  loc_117E1FC:   global_100 = vbNullString
  loc_117E21E:   Set var_A8 = Me.Txt
  loc_117E224:   Call 0.Method_Proc_221_72_117E2C00 (global_108, var_AC)
  loc_117E22C:   var_AC.Text = CStr(0)
  loc_117E24B:   Me.LblVPrefix.Caption = vbNullString
  loc_117E264:   Set var_A8 = Me.Txt
  loc_117E26A:   Call 0.Method_Proc_221_72_117E2C00 (CInt(0), var_AC)
  loc_117E272:   var_AC.Text = global_100
  loc_117E28C:   Set var_A8 = Me.Txt
  loc_117E292:   Call 0.Method_Proc_221_72_117E2C00 (CInt(1), var_AC)
  loc_117E29A:   var_AC.Text = vbNullString
  loc_117E2AC:   var_88 = global_100
  loc_117E2AF: End If
  loc_117E2B4: Set var_8C = Nothing
  loc_117E2B7: Proc_221_72_117E2C0 = global_108
  loc_117E2BD:  = 
End Sub

Public Sub Proc_221_73_120321C
  'Data Table: 531BC8
  Dim var_88 As Long
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_1202D5A: var_88 = global_116
  loc_1202D66: If (var_88 = 6) Then
  loc_1202D75:   Me.FrRest.Visible = True
  loc_1202D80: Else
  loc_1202D89:   If (var_88 = 5) Then
  loc_1202D98:     Me.FrRest.Visible = True
  loc_1202DA0:   End If
  loc_1202DA0: End If
  loc_1202DB3: Me.FGrid.Cols = &H19
  loc_1202DBB: var_A0 = CVar(CLng(9)) 'Long
  loc_1202DC0: var_C0 = 0
  loc_1202DCC: LateIdCallSt
  loc_1202DD7: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1202DDC: var_C0 = 0
  loc_1202DE8: LateIdCallSt
  loc_1202DF3: var_A0 = CVar(CLng(&HB)) 'Long
  loc_1202DF8: var_C0 = 0
  loc_1202E04: LateIdCallSt
  loc_1202E0F: var_A0 = CVar(CLng(&HC)) 'Long
  loc_1202E14: var_C0 = 0
  loc_1202E20: LateIdCallSt
  loc_1202E28: var_A0 = &H18
  loc_1202E31: var_C0 = 0
  loc_1202E3D: LateIdCallSt
  loc_1202E48: var_A0 = CVar(CLng(&HD)) 'Long
  loc_1202E4D: var_C0 = 0
  loc_1202E59: LateIdCallSt
  loc_1202E64: var_A0 = CVar(CLng(&HE)) 'Long
  loc_1202E69: var_C0 = 0
  loc_1202E75: LateIdCallSt
  loc_1202E80: var_A0 = CVar(CLng(&HF)) 'Long
  loc_1202E85: var_C0 = 0
  loc_1202E91: LateIdCallSt
  loc_1202E9C: var_A0 = CVar(CLng(&H10)) 'Long
  loc_1202EA1: var_C0 = 0
  loc_1202EAD: LateIdCallSt
  loc_1202EB8: var_A0 = CVar(CLng(&H11)) 'Long
  loc_1202EBD: var_C0 = 0
  loc_1202EC9: LateIdCallSt
  loc_1202ED1: var_A0 = &H12
  loc_1202EDA: var_C0 = 0
  loc_1202EE6: LateIdCallSt
  loc_1202EEE: var_A0 = 1
  loc_1202EF7: var_C0 = 0
  loc_1202F03: LateIdCallSt
  loc_1202F0B: var_A0 = 4
  loc_1202F14: var_C0 = 0
  loc_1202F20: LateIdCallSt
  loc_1202F28: var_A0 = 5
  loc_1202F31: var_C0 = 0
  loc_1202F3D: LateIdCallSt
  loc_1202F48: var_A0 = CVar(CLng(6)) 'Long
  loc_1202F4D: var_C0 = 0
  loc_1202F59: LateIdCallSt
  loc_1202F64: var_A0 = CVar(CLng(7)) 'Long
  loc_1202F69: var_C0 = 0
  loc_1202F75: LateIdCallSt
  loc_1202F7D: var_A0 = 2
  loc_1202F86: var_C0 = 0
  loc_1202F92: LateIdCallSt
  loc_1202F9A: var_A0 = 0
  loc_1202FA3: var_C0 = &HFA
  loc_1202FAF: LateIdCallSt
  loc_1202FB7: var_A0 = 0
  loc_1202FC0: var_C0 = 0
  loc_1202FC9: var_E0 = "SNo"
  loc_1202FD2: LateIdCallSt
  loc_1202FDA: var_A0 = 0
  loc_1202FE3: var_C0 = &H1C2
  loc_1202FEF: LateIdCallSt
  loc_1202FF7: var_A0 = 0
  loc_1203000: var_C0 = 3
  loc_1203009: var_E0 = "Payment Type"
  loc_1203012: LateIdCallSt
  loc_120301A: var_A0 = 3
  loc_1203029: var_C0 = CVar(CInt(1)) 'Integer
  loc_1203030: LateIdCallSt
  loc_1203038: var_A0 = 3
  loc_1203041: var_C0 = &HDAC
  loc_120304D: LateIdCallSt
  loc_1203055: var_A0 = 0
  loc_120305E: var_C0 = 8
  loc_1203067: var_E0 = "Amount"
  loc_1203070: LateIdCallSt
  loc_1203078: var_A0 = 8
  loc_1203087: var_C0 = CVar(CInt(7)) 'Integer
  loc_120308E: LateIdCallSt
  loc_1203096: var_A0 = 8
  loc_12030A5: var_C0 = CVar(CInt(7)) 'Integer
  loc_12030AC: LateIdCallSt
  loc_12030B4: var_A0 = 8
  loc_12030BD: var_C0 = &H578
  loc_12030C9: LateIdCallSt
  loc_12030D1: var_A0 = 0
  loc_12030DA: var_C0 = &H12
  loc_12030E3: var_E0 = "Tip"
  loc_12030EC: LateIdCallSt
  loc_12030F4: var_A0 = &H12
  loc_1203103: var_C0 = CVar(CInt(7)) 'Integer
  loc_120310A: LateIdCallSt
  loc_1203112: var_A0 = &H12
  loc_1203121: var_C0 = CVar(CInt(7)) 'Integer
  loc_1203128: LateIdCallSt
  loc_1203130: var_A0 = &H12
  loc_1203139: var_C0 = &H514
  loc_1203145: LateIdCallSt
  loc_120314D: var_A0 = &H13
  loc_1203156: var_C0 = 0
  loc_1203162: LateIdCallSt
  loc_120316A: var_A0 = &H14
  loc_1203173: var_C0 = 0
  loc_120317F: LateIdCallSt
  loc_1203187: var_A0 = &H15
  loc_1203190: var_C0 = 0
  loc_120319C: LateIdCallSt
  loc_12031A4: var_A0 = &H16
  loc_12031AD: var_C0 = 0
  loc_12031B9: LateIdCallSt
  loc_12031C1: var_A0 = &H17
  loc_12031CA: var_C0 = 0
  loc_12031D6: LateIdCallSt
  loc_1203208: LateIdCallSt
  loc_1203216: Call Proc_221_74_F96008(Me.FGrid, CVar(CStr(1)), 0, 1, Nothing, 0, 1, Nothing)
  loc_120321B: Exit Sub
End Sub

Public Sub Proc_221_74_F96008
  'Data Table: 531BC8
  Dim var_98 As Variant
  Dim Me As Recordset15
  loc_F95EAA: Set global_72 = New 
  loc_F95EBC: Me.Recordset15.CursorLocation = 3
  loc_F95ED8: If (OpenType = 6) Then
  loc_F95EE7:   Set var_8C = Me.LblName
  loc_F95EED:   Call 0.Method_Proc_221_74_F960080 (&HC, var_98)
  loc_F95EF5:   var_98.Caption = "Party"
  loc_F95F11:   Set var_8C = Me.DGTable
  loc_F95F22:   Set var_98 = DGTable.DispID_69
  loc_F95F30:   var_98.Item(1).Caption = "Hall #"
  loc_F95F73:   Me.Open CVar("Select T.Code,T.nAME As Name From VenueMast T where Departcode='" & global_52 & "' Order By T.Code"), CVar(MemVar_1F95044), 3
  loc_F95F84:   global_148 = "HALL"
  loc_F95F8E:   global_152 = "HL"
  loc_F95F9D:   Set var_8C = Me.Lbl
  loc_F95FA3:   Call 0.Method_Proc_221_74_F960080 (1, var_98, 0)
  loc_F95FAB:   var_98.Visible = True
  loc_F95FC4:   Set var_8C = Me.Txt
  loc_F95FCA:   Call 0.Method_Proc_221_74_F960080 (CInt(3), var_98, 0)
  loc_F95FD2:   var_98.Visible = True
  loc_F95FE7:   CVarUnk
  loc_F95FEC:   VerifyVarObj
  loc_F95FF2:   Set var_8C = Me.DGTable
  loc_F95FF8:   LateIdStAd
  loc_F96006: End If
  loc_F96006: Exit Sub
End Sub

Public Sub Proc_221_75_11570CC(arg_C) '11570CC
  'Data Table: 531BC8
  Dim var_8C As Long
  Dim var_98 As Frame
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_1156D28: Me.FrChqDet.Visible = False
  loc_1156D3C: Me.FrRem.Visible = False
  loc_1156D50: Me.FrCCDet.Visible = False
  loc_1156D64: Me.FrEmp.Visible = False
  loc_1156D78: Me.FrComp.Visible = False
  loc_1156D8C: Me.FrSendRoom.Visible = False
  loc_1156DA0: Me.FrTxnNo.Visible = False
  loc_1156DAE: var_8C = global_116
  loc_1156DBA: If Not (var_8C = 6) Then
  loc_1156DC6:   If (var_8C = 5) Then
  loc_1156DC9:   End If
  loc_1156DCC:   var_90 = arg_C
  loc_1156DD7:   If (var_90 = "Cheque") Then
  loc_1156DE6:     Me.FrChqDet.Visible = True
  loc_1156DFA:     Me.FrRem.Visible = True
  loc_1156E3C:     Me.FrRem.Top = ((Me.FrChqDet.Top + Me.FrChqDet.Height) + CDbl(&HF))
  loc_1156E4D:   Else
  loc_1156E55:     If (var_90 = "Credit Card") Then
  loc_1156E64:       Me.FrCCDet.Visible = True
  loc_1156E78:       Me.FrRem.Visible = False
  loc_1156E83:     Else
  loc_1156E8B:       If (var_90 = "Staff") Then
  loc_1156E9A:         Me.FrEmp.Visible = True
  loc_1156EAE:         Me.FrRem.Visible = True
  loc_1156EF0:         Me.FrRem.Top = ((Me.FrEmp.Top + Me.FrEmp.Height) + CDbl(&HF))
  loc_1156F01:       Else
  loc_1156F09:         If (var_90 = "Company") Then
  loc_1156F18:           Me.FrComp.Visible = True
  loc_1156F2C:           Me.FrRem.Visible = True
  loc_1156F6E:           Me.FrRem.Top = ((Me.FrComp.Top + Me.FrComp.Height) + CDbl(&HF))
  loc_1156F7F:         Else
  loc_1156F87:           If (var_90 = "Room") Then
  loc_1156F96:             Me.FrSendRoom.Visible = True
  loc_1156FAA:             Me.FrRem.Visible = False
  loc_1156FB5:           Else
  loc_1156FBD:             If (var_90 = "UPI") Then
  loc_1156FCC:               Me.FrTxnNo.Visible = True
  loc_1156FE0:               Me.FrRem.Visible = True
  loc_115701C:               Set var_A0 = Me.FrRem
  loc_1157022:               var_A0.Top = ((Me.FrTxnNo.Top + Me.FrTxnNo.Height) + CDbl(&HF))
  loc_1157033:             Else
  loc_115703F:               Me.FrRem.Visible = True
  loc_1157055:               Set var_98 = Me.Txt
  loc_115705B:               Call 0.Method_Proc_221_75_11570CC0 (CInt(7), var_A0)
  loc_1157076:               Set var_A4 = Me.Txt
  loc_115707C:               Call 0.Method_Proc_221_75_11570CC0 (CInt(7), var_A8)
  loc_11570B5:               Me.FrRem.Top = (((Me.FrRest.Top + var_A0.Top) + var_A8.Height) + CDbl(&HF))
  loc_11570C9:             End If
  loc_11570C9:           End If
  loc_11570C9:         End If
  loc_11570C9:       End If
  loc_11570C9:     End If
  loc_11570C9:   End If
  loc_11570C9: End If
  loc_11570C9: Exit Sub
End Sub

Public Sub Proc_221_76_167BBC8
  'Data Table: 531BC8
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_104 As Long
  Dim var_114 As Double
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim Me As Variant
  Dim var_150 As Variant
  Dim var_10C As String
  Dim var_158 As TextBox
  loc_167A40C: On Error Goto loc_167BB8B
  loc_167A41D: Set var_8C = Me.Txt
  loc_167A423: Call 0.Method_Proc_221_76_167BBC80 (CInt(6), var_90)
  loc_167A442: If (var_90.Tag = vbNullString) Then
  loc_167A445:   Exit Sub
  loc_167A446: End If
  loc_167A454: Set var_8C = Me.Txt
  loc_167A45A: Call 0.Method_Proc_221_76_167BBC80 (CInt(7), var_90)
  loc_167A47E: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_167A48F:   Set var_8C = Me.Txt
  loc_167A495:   Call 0.Method_Proc_221_76_167BBC80 (CInt(7), var_90)
  loc_167A49D:   var_90.Text = vbNullString
  loc_167A4A9: End If
  loc_167A4B7: Set var_8C = Me.Txt
  loc_167A4BD: Call 0.Method_Proc_221_76_167BBC80 (CInt(7), var_90)
  loc_167A4D7: If (var_90.Visible = &HFF) Then
  loc_167A4E5:   Set var_8C = Me.Txt
  loc_167A4EB:   Call 0.Method_Proc_221_76_167BBC80 (CInt(7))
  loc_167A4F3:   var_94 = "Amount"
  loc_167A514:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_167A517:     Exit Sub
  loc_167A518:   End If
  loc_167A518: End If
  loc_167A531: Set var_8C = Me.Txt
  loc_167A537: Call 0.Method_Proc_221_76_167BBC80 (CInt(&H11), var_90, var_94)
  loc_167A53F: (global_156 = "Staff") = var_90.Text
  loc_167A557: If (var_90 And (var_94 = vbNullString)) Then
  loc_167A565:   Set var_8C = Me.Txt
  loc_167A56B:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&H11))
  loc_167A573:   var_94 = "Staff Name"
  loc_167A594:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_167A597:     Exit Sub
  loc_167A598:   End If
  loc_167A598: End If
  loc_167A5B1: Set var_8C = Me.Txt
  loc_167A5B7: Call 0.Method_Proc_221_76_167BBC80 (CInt(&HF), var_90, var_94)
  loc_167A5BF: (global_156 = "Room") = var_90.Text
  loc_167A5D7: If (var_90 And (var_94 = vbNullString)) Then
  loc_167A5E5:   Set var_8C = Me.Txt
  loc_167A5EB:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&HF))
  loc_167A5F3:   var_94 = "Room Name"
  loc_167A614:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_167A617:     Exit Sub
  loc_167A618:   End If
  loc_167A618: End If
  loc_167A631: Set var_8C = Me.Txt
  loc_167A637: Call 0.Method_Proc_221_76_167BBC80 (CInt(&H10), var_90, var_94)
  loc_167A63F: (global_156 = "Company") = var_90.Text
  loc_167A657: If (var_90 And (var_94 = vbNullString)) Then
  loc_167A665:   Set var_8C = Me.Txt
  loc_167A66B:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&H10))
  loc_167A673:   var_94 = "Company Name"
  loc_167A694:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_167A697:     Exit Sub
  loc_167A698:   End If
  loc_167A698: End If
  loc_167A6A3: If (global_172 = "Y") Then
  loc_167A6BF:   Set var_8C = Me.Txt
  loc_167A6C5:   Call 0.Method_Proc_221_76_167BBC80 (CInt(9), var_90, var_94)
  loc_167A6CD:   (global_156 = "Credit Card") = var_90.Text
  loc_167A6E5:   If (var_90 And (var_94 = vbNullString)) Then
  loc_167A6F3:     Set var_8C = Me.Txt
  loc_167A6F9:     Call 0.Method_Proc_221_76_167BBC80 (CInt(9))
  loc_167A701:     var_94 = "Credit Card No."
  loc_167A722:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_167A725:       Exit Sub
  loc_167A726:     End If
  loc_167A726:   End If
  loc_167A73F:   Set var_8C = Me.Txt
  loc_167A745:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&HA), var_90, var_94)
  loc_167A74D:   (global_156 = "Credit Card") = var_90.Text
  loc_167A765:   If (var_90 And (var_94 = vbNullString)) Then
  loc_167A773:     Set var_8C = Me.Txt
  loc_167A779:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&HA))
  loc_167A781:     var_94 = "Holder's Name"
  loc_167A7A2:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_167A7A5:       Exit Sub
  loc_167A7A6:     End If
  loc_167A7A6:   End If
  loc_167A7A6: End If
  loc_167A7BF: Set var_8C = Me.Txt
  loc_167A7C5: Call 0.Method_Proc_221_76_167BBC80 (CInt(&H12), var_90, var_94)
  loc_167A7CD: (global_156 = "UPI") = var_90.Text
  loc_167A7E5: If (var_90 And (var_94 = vbNullString)) Then
  loc_167A7F3:   Set var_8C = Me.Txt
  loc_167A7F9:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&H12))
  loc_167A801:   var_94 = "Txn. No."
  loc_167A822:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_167A825:     Exit Sub
  loc_167A826:   End If
  loc_167A826: End If
  loc_167A83F: Set var_8C = Me.Txt
  loc_167A845: Call 0.Method_Proc_221_76_167BBC80 (CInt(&HD), var_90, var_94)
  loc_167A84D: (global_156 = "Cheque") = var_90.Text
  loc_167A865: If (var_90 And (var_94 = vbNullString)) Then
  loc_167A873:   Set var_8C = Me.Txt
  loc_167A879:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&HD))
  loc_167A881:   var_94 = "Cheque No."
  loc_167A8A2:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_167A8A5:     Exit Sub
  loc_167A8A6:   End If
  loc_167A8A6: End If
  loc_167A8BF: Set var_8C = Me.Txt
  loc_167A8C5: Call 0.Method_Proc_221_76_167BBC80 (CInt(&HE), var_90, var_94)
  loc_167A8CD: (global_156 = "Cheque") = var_90.Text
  loc_167A8E5: If (var_90 And (var_94 = vbNullString)) Then
  loc_167A8F3:   Set var_8C = Me.Txt
  loc_167A8F9:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&HE))
  loc_167A922:   If (Proc_6_27_EA61EC(var_90, "Cheque Dt.") = 0) Then
  loc_167A925:     Exit Sub
  loc_167A926:   End If
  loc_167A926: End If
  loc_167A92F: If (global_168 = 0) Then
  loc_167A94B:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_167A987:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_167A9A6:     var_AC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, 0, 3))) 'String
  loc_167A9AE:     Set var_90 = Me.FGrid
  loc_167A9C8:   End If
  loc_167A9E2:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_167A9EE: Else
  loc_167AA02:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_167AA0B: End If
  loc_167AA16: var_104 = OpenType
  loc_167AA22: If (var_104 = 6) Then
  loc_167AA29:   Set var_90 = Me.FGrid1
  loc_167AA3F:   var_114 = Val(CStr(var_90.Tag))
  loc_167AA54:   var_94 = CStr(Me.FGrid.Tag)
  loc_167AA8D:   If ((CDbl(Val(var_94)) >= CDbl(var_114)) And (POSAdvanceDepDialog.AdvType <> "AD")) Then
  loc_167AA90:     GoTo loc_167B95C
  loc_167AA93:   End If
  loc_167AA97:   Set var_118 = Me.FGrid
  loc_167AABA:   Set var_8C = Me.Txt
  loc_167AAC0:   Call 0.Method_Proc_221_76_167BBC80 (CInt(6), var_90, var_94, 1, CVar(CLng(var_86)), var_114, var_104)
  loc_167AAC8:   var_86 = var_90.Tag
  loc_167AAD0:   var_AC = CVar(var_94) 'String
  loc_167AAD7:   LateIdCallSt
  loc_167AAED:   var_BC = CVar(CLng(var_86)) 'Long
  loc_167AAF2:   var_DC = 2
  loc_167AB08:   LateIdCallSt
  loc_167AB30:   Set var_8C = Me.Txt
  loc_167AB36:   Call 0.Method_Proc_221_76_167BBC80 (CInt(6), var_90, var_94, 3, CVar(CLng(var_86)), var_118, global_156)
  loc_167AB3E:   var_DC = var_90.Text
  loc_167AB46:   var_AC = CVar(var_94) 'String
  loc_167AB4D:   LateIdCallSt
  loc_167AB63:   var_BC = CVar(CLng(var_86)) 'Long
  loc_167AB68:   var_DC = 4
  loc_167AB7E:   LateIdCallSt
  loc_167AB8A:   var_BC = CVar(CLng(var_86)) 'Long
  loc_167AB8F:   var_DC = 5
  loc_167ABA5:   LateIdCallSt
  loc_167ABCC:   Set var_8C = Me.Txt
  loc_167ABD2:   Call 0.Method_Proc_221_76_167BBC80 (CInt(5), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_118, global_152)
  loc_167ABDA:   var_DC = var_90.Tag
  loc_167ABE9:   LateIdCallSt
  loc_167AC1A:   Set var_8C = Me.Txt
  loc_167AC20:   Call 0.Method_Proc_221_76_167BBC80 (CInt(5), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_118, CVar(var_94))
  loc_167AC28:   var_BC = var_90.Text
  loc_167AC30:   var_AC = CVar(var_94) 'String
  loc_167AC37:   LateIdCallSt
  loc_167AC69:   Set var_8C = Me.Txt
  loc_167AC6F:   Call 0.Method_Proc_221_76_167BBC80 (CInt(7), var_90, var_94, 8, CVar(CLng(var_86)), var_118)
  loc_167AC77:   var_AC = var_90.Text
  loc_167AC7F:   var_AC = CVar(var_94) 'String
  loc_167AC86:   LateIdCallSt
  loc_167ACB7:   Set var_8C = Me.Txt
  loc_167ACBD:   Call 0.Method_Proc_221_76_167BBC80 (CInt(9), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_118)
  loc_167ACC5:   var_AC = var_90.Text
  loc_167ACCD:   var_AC = CVar(var_94) 'String
  loc_167ACD4:   LateIdCallSt
  loc_167AD05:   Set var_8C = Me.Txt
  loc_167AD0B:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&HA), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_118)
  loc_167AD13:   var_AC = var_90.Text
  loc_167AD1B:   var_AC = CVar(var_94) 'String
  loc_167AD22:   LateIdCallSt
  loc_167AD53:   Set var_8C = Me.Txt
  loc_167AD59:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&HB), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_118)
  loc_167AD61:   var_AC = var_90.Text
  loc_167AD69:   var_AC = CVar(var_94) 'String
  loc_167AD70:   LateIdCallSt
  loc_167ADA1:   Set var_8C = Me.Txt
  loc_167ADA7:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&HC), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_118)
  loc_167ADAF:   var_AC = var_90.Text
  loc_167ADB7:   var_AC = CVar(var_94) 'String
  loc_167ADBE:   LateIdCallSt
  loc_167ADF0:   Set var_8C = Me.Txt
  loc_167ADF6:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&H12), var_90, var_94, &H18, CVar(CLng(var_86)), var_118)
  loc_167ADFE:   var_AC = var_90.Text
  loc_167AE06:   var_AC = CVar(var_94) 'String
  loc_167AE0D:   LateIdCallSt
  loc_167AE3E:   Set var_8C = Me.Txt
  loc_167AE44:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&HD), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_118)
  loc_167AE4C:   var_AC = var_90.Text
  loc_167AE54:   var_AC = CVar(var_94) 'String
  loc_167AE5B:   LateIdCallSt
  loc_167AE8C:   Set var_8C = Me.Txt
  loc_167AE92:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&HE), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_118)
  loc_167AE9A:   var_AC = var_90.Text
  loc_167AEA2:   var_AC = CVar(var_94) 'String
  loc_167AEA9:   LateIdCallSt
  loc_167AEDA:   Set var_8C = Me.Txt
  loc_167AEE0:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&H13), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_118)
  loc_167AEE8:   var_AC = var_90.Text
  loc_167AEF0:   var_AC = CVar(var_94) 'String
  loc_167AEF7:   LateIdCallSt
  loc_167AF28:   Set var_8C = Me.Txt
  loc_167AF2E:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&H11), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_118)
  loc_167AF36:   var_AC = var_90.Text
  loc_167AF3E:   var_AC = CVar(var_94) 'String
  loc_167AF45:   LateIdCallSt
  loc_167AF76:   Set var_8C = Me.Txt
  loc_167AF7C:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&H11), var_90, var_94, CVar(CLng(&H11)), CVar(CLng(var_86)), var_118)
  loc_167AF84:   var_AC = var_90.Tag
  loc_167AF8C:   var_AC = CVar(var_94) 'String
  loc_167AF93:   LateIdCallSt
  loc_167AFC5:   Set var_8C = Me.Txt
  loc_167AFCB:   Call 0.Method_Proc_221_76_167BBC80 (CInt(8), var_90, var_94, &H12, CVar(CLng(var_86)), var_118)
  loc_167AFD3:   var_AC = var_90.Text
  loc_167AFDB:   var_AC = CVar(var_94) 'String
  loc_167AFE2:   LateIdCallSt
  loc_167B014:   Set var_8C = Me.Txt
  loc_167B01A:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&HF), var_90, var_94, &H13, CVar(CLng(var_86)), var_118)
  loc_167B022:   var_AC = var_90.Tag
  loc_167B02A:   var_AC = CVar(var_94) 'String
  loc_167B031:   LateIdCallSt
  loc_167B063:   Set var_8C = Me.Txt
  loc_167B069:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&HF), var_90, var_94, &H14, CVar(CLng(var_86)), var_118)
  loc_167B071:   var_AC = var_90.Text
  loc_167B079:   var_AC = CVar(var_94) 'String
  loc_167B080:   LateIdCallSt
  loc_167B0B2:   Set var_8C = Me.Txt
  loc_167B0B8:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&H10), var_90, var_94, &H15, CVar(CLng(var_86)), var_118)
  loc_167B0C0:   var_AC = var_90.Tag
  loc_167B0C8:   var_AC = CVar(var_94) 'String
  loc_167B0CF:   LateIdCallSt
  loc_167B101:   Set var_8C = Me.Txt
  loc_167B107:   Call 0.Method_Proc_221_76_167BBC80 (CInt(&H10), var_90, var_94, &H16, CVar(CLng(var_86)), var_118)
  loc_167B10F:   var_AC = var_90.Text
  loc_167B117:   var_AC = CVar(var_94) 'String
  loc_167B11E:   LateIdCallSt
  loc_167B150:   Set var_8C = Me.Txt
  loc_167B156:   Call 0.Method_Proc_221_76_167BBC80 (CInt(5), var_90, var_94, &H13, CVar(CLng(var_86)), var_118)
  loc_167B15E:   var_AC = var_90.Tag
  loc_167B166:   var_AC = CVar(var_94) 'String
  loc_167B16D:   LateIdCallSt
  loc_167B18A:   If (global_156 = "Room") Then
  loc_167B191:     var_CC = CVar(CLng(var_86)) 'Long
  loc_167B196:     var_EC = &H17
  loc_167B1BC:     var_90 = Me.Fields.Item("FolioNo")
  loc_167B1CD:     var_FC = CVar(CStr(var_90.Value)) 'String
  loc_167B1D4:     LateIdCallSt
  loc_167B1EA:   End If
  loc_167B1EC:   Set var_118 = Nothing 
  loc_167B1F3: Else
  loc_167B1FC:   If (var_104 = 5) Then
  loc_167B203:     Set var_13C = Me.FGrid
  loc_167B226:     Set var_8C = Me.Txt
  loc_167B22C:     Call 0.Method_Proc_221_76_167BBC80 (CInt(6), var_90, var_94, 1, CVar(CLng(var_86)), var_118, var_FC)
  loc_167B234:     var_EC = var_90.Tag
  loc_167B23C:     var_AC = CVar(var_94) 'String
  loc_167B243:     LateIdCallSt
  loc_167B259:     var_BC = CVar(CLng(var_86)) 'Long
  loc_167B25E:     var_DC = 2
  loc_167B274:     LateIdCallSt
  loc_167B29C:     Set var_8C = Me.Txt
  loc_167B2A2:     Call 0.Method_Proc_221_76_167BBC80 (CInt(6), var_90, var_94, 3, CVar(CLng(var_86)), var_13C, global_156)
  loc_167B2AA:     var_DC = var_90.Text
  loc_167B2B2:     var_AC = CVar(var_94) 'String
  loc_167B2B9:     LateIdCallSt
  loc_167B2CF:     var_BC = CVar(CLng(var_86)) 'Long
  loc_167B2D4:     var_DC = 4
  loc_167B2EA:     LateIdCallSt
  loc_167B2F6:     var_BC = CVar(CLng(var_86)) 'Long
  loc_167B2FB:     var_DC = 5
  loc_167B311:     LateIdCallSt
  loc_167B338:     Set var_8C = Me.Txt
  loc_167B33E:     Call 0.Method_Proc_221_76_167BBC80 (CInt(5), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_13C, global_152)
  loc_167B346:     var_DC = var_90.Tag
  loc_167B355:     LateIdCallSt
  loc_167B386:     Set var_8C = Me.Txt
  loc_167B38C:     Call 0.Method_Proc_221_76_167BBC80 (CInt(5), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_13C, CVar(var_94))
  loc_167B394:     var_BC = var_90.Text
  loc_167B39C:     var_AC = CVar(var_94) 'String
  loc_167B3A3:     LateIdCallSt
  loc_167B3D5:     Set var_8C = Me.Txt
  loc_167B3DB:     Call 0.Method_Proc_221_76_167BBC80 (CInt(7), var_90, var_94, 8, CVar(CLng(var_86)), var_13C)
  loc_167B3E3:     var_AC = var_90.Text
  loc_167B3EB:     var_AC = CVar(var_94) 'String
  loc_167B3F2:     LateIdCallSt
  loc_167B423:     Set var_8C = Me.Txt
  loc_167B429:     Call 0.Method_Proc_221_76_167BBC80 (CInt(9), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_13C)
  loc_167B431:     var_AC = var_90.Text
  loc_167B439:     var_AC = CVar(var_94) 'String
  loc_167B440:     LateIdCallSt
  loc_167B471:     Set var_8C = Me.Txt
  loc_167B477:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&HA), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_13C)
  loc_167B47F:     var_AC = var_90.Text
  loc_167B487:     var_AC = CVar(var_94) 'String
  loc_167B48E:     LateIdCallSt
  loc_167B4BF:     Set var_8C = Me.Txt
  loc_167B4C5:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&HB), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_13C)
  loc_167B4CD:     var_AC = var_90.Text
  loc_167B4D5:     var_AC = CVar(var_94) 'String
  loc_167B4DC:     LateIdCallSt
  loc_167B50D:     Set var_8C = Me.Txt
  loc_167B513:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&HC), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_13C)
  loc_167B51B:     var_AC = var_90.Text
  loc_167B523:     var_AC = CVar(var_94) 'String
  loc_167B52A:     LateIdCallSt
  loc_167B55C:     Set var_8C = Me.Txt
  loc_167B562:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&H12), var_90, var_94, &H18, CVar(CLng(var_86)), var_13C)
  loc_167B56A:     var_AC = var_90.Text
  loc_167B572:     var_AC = CVar(var_94) 'String
  loc_167B579:     LateIdCallSt
  loc_167B5AA:     Set var_8C = Me.Txt
  loc_167B5B0:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&HD), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_13C)
  loc_167B5B8:     var_AC = var_90.Text
  loc_167B5C0:     var_AC = CVar(var_94) 'String
  loc_167B5C7:     LateIdCallSt
  loc_167B5F8:     Set var_8C = Me.Txt
  loc_167B5FE:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&HE), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_13C)
  loc_167B606:     var_AC = var_90.Text
  loc_167B60E:     var_AC = CVar(var_94) 'String
  loc_167B615:     LateIdCallSt
  loc_167B646:     Set var_8C = Me.Txt
  loc_167B64C:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&H13), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_13C)
  loc_167B654:     var_AC = var_90.Text
  loc_167B65C:     var_AC = CVar(var_94) 'String
  loc_167B663:     LateIdCallSt
  loc_167B694:     Set var_8C = Me.Txt
  loc_167B69A:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&H11), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_13C)
  loc_167B6A2:     var_AC = var_90.Text
  loc_167B6AA:     var_AC = CVar(var_94) 'String
  loc_167B6B1:     LateIdCallSt
  loc_167B6E2:     Set var_8C = Me.Txt
  loc_167B6E8:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&H11), var_90, var_94, CVar(CLng(&H11)), CVar(CLng(var_86)), var_13C)
  loc_167B6F0:     var_AC = var_90.Tag
  loc_167B6F8:     var_AC = CVar(var_94) 'String
  loc_167B6FF:     LateIdCallSt
  loc_167B731:     Set var_8C = Me.Txt
  loc_167B737:     Call 0.Method_Proc_221_76_167BBC80 (CInt(8), var_90, var_94, &H12, CVar(CLng(var_86)), var_13C)
  loc_167B73F:     var_AC = var_90.Text
  loc_167B747:     var_AC = CVar(var_94) 'String
  loc_167B74E:     LateIdCallSt
  loc_167B780:     Set var_8C = Me.Txt
  loc_167B786:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&HF), var_90, var_94, &H13, CVar(CLng(var_86)), var_13C)
  loc_167B78E:     var_AC = var_90.Tag
  loc_167B796:     var_AC = CVar(var_94) 'String
  loc_167B79D:     LateIdCallSt
  loc_167B7CF:     Set var_8C = Me.Txt
  loc_167B7D5:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&HF), var_90, var_94, &H14, CVar(CLng(var_86)), var_13C)
  loc_167B7DD:     var_AC = var_90.Text
  loc_167B7E5:     var_AC = CVar(var_94) 'String
  loc_167B7EC:     LateIdCallSt
  loc_167B81E:     Set var_8C = Me.Txt
  loc_167B824:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&H10), var_90, var_94, &H15, CVar(CLng(var_86)), var_13C)
  loc_167B82C:     var_AC = var_90.Tag
  loc_167B834:     var_AC = CVar(var_94) 'String
  loc_167B83B:     LateIdCallSt
  loc_167B86D:     Set var_8C = Me.Txt
  loc_167B873:     Call 0.Method_Proc_221_76_167BBC80 (CInt(&H10), var_90, var_94, &H16, CVar(CLng(var_86)), var_13C)
  loc_167B87B:     var_AC = var_90.Text
  loc_167B883:     var_AC = CVar(var_94) 'String
  loc_167B88A:     LateIdCallSt
  loc_167B8BC:     Set var_8C = Me.Txt
  loc_167B8C2:     Call 0.Method_Proc_221_76_167BBC80 (CInt(5), var_90, var_94, &H13, CVar(CLng(var_86)), var_13C)
  loc_167B8CA:     var_AC = var_90.Tag
  loc_167B8D2:     var_AC = CVar(var_94) 'String
  loc_167B8D9:     LateIdCallSt
  loc_167B8F6:     If (global_156 = "Room") Then
  loc_167B8FD:       var_CC = CVar(CLng(var_86)) 'Long
  loc_167B902:       var_EC = &H17
  loc_167B939:       var_FC = CVar(CStr(Me.Fields.Item("FolioNo").Value)) 'String
  loc_167B940:       LateIdCallSt
  loc_167B956:     End If
  loc_167B958:     Set var_13C = Nothing 
  loc_167B95C:   End If
  loc_167B95C:   ' Referenced from: 167AA90
  loc_167B95C: End If
  loc_167B968: If (global_116 = 6) Then
  loc_167B97B:   Me.FGrid.Tag = vbNullString
  loc_167B9A8:   For var_140 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_140 'Integer
  loc_167B9B2:     var_BC = CVar(CLng(var_86)) 'Long
  loc_167B9B7:     var_DC = 8
  loc_167BA00:     var_150 = CVar(CStr((Val(CStr(Me.FGrid.Tag)) + Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_167BA0E:     Me.FGrid.Tag = var_150
  loc_167BA2F:   Next var_140 'Integer
  loc_167BA3E:   var_150 = Me.FGrid.Tag
  loc_167BA64:   var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_167BA95:   var_10C = CStr((Val(CStr(Me.FGrid1.TextMatrix))) - Val(CStr(var_150))))
  loc_167BAA3:   Set var_154 = Me.Txt
  loc_167BAA9:   Call 0.Method_Proc_221_76_167BBC80 (CInt(7), var_158, POSAdvanceDepDialog.AdvType)
  loc_167BAB1:   var_158.Text = 4
  loc_167BAD9:   Set var_90 = Me.FGrid
  loc_167BADF:   var_FC = var_90.Tag
  loc_167BAEF:   var_114 = Val(CStr(var_FC))
  loc_167BB04:   var_94 = CStr(Me.FGrid1.Tag)
  loc_167BB27:   If (CDbl(Val(var_94)) = CDbl(var_114)) Then
  loc_167BB2A:     Call TopCtrl1_UnknownEvent_16()
  loc_167BB2F:     Exit Sub
  loc_167BB33:   Else
  loc_167BB3E:     Set var_8C = Me.Txt
  loc_167BB44:     Call 0.Method_Proc_221_76_167BBC80 (CInt(6), var_90, var_114)
  loc_167BB4C:     var_90.SetFocus
  loc_167BB58:   End If
  loc_167BB58: End If
  loc_167BB58: Call Proc_221_77_101D26C(var_BC)
  loc_167BB68: Set var_8C = Me.Txt
  loc_167BB6E: Call 0.Method_Proc_221_76_167BBC80 (CInt(6), var_90)
  loc_167BB76: var_90.SetFocus
  loc_167BB87: global_168 = 0
  loc_167BB8A: Exit Sub
  loc_167BB8B: ' Referenced from: 167A40C
  loc_167BBA1: Set var_8C = Err()
  loc_167BBA7: Call 0.Method_arg_2C (var_94, 0, var_FC, var_150)
  loc_167BBB2: MsgBox(CVar(var_94), var_168, global_168, var_114, )
  loc_167BBC5: Exit Sub
End Sub

Public Sub Proc_221_77_101D26C
  'Data Table: 531BC8
  Dim var_8C As TextBox
  loc_101D046: Set var_88 = Me.Txt
  loc_101D04C: Call 0.Method_Proc_221_77_101D26C0 (CInt(6), var_8C)
  loc_101D054: var_8C.Text = vbNullString
  loc_101D06E: Set var_88 = Me.Txt
  loc_101D074: Call 0.Method_Proc_221_77_101D26C0 (CInt(6), var_8C)
  loc_101D07C: var_8C.Tag = vbNullString
  loc_101D096: Set var_88 = Me.Txt
  loc_101D09C: Call 0.Method_Proc_221_77_101D26C0 (CInt(7), var_8C)
  loc_101D0A4: var_8C.Text = vbNullString
  loc_101D0BE: Set var_88 = Me.Txt
  loc_101D0C4: Call 0.Method_Proc_221_77_101D26C0 (CInt(8), var_8C)
  loc_101D0CC: var_8C.Text = vbNullString
  loc_101D0E6: Set var_88 = Me.Txt
  loc_101D0EC: Call 0.Method_Proc_221_77_101D26C0 (CInt(&H11), var_8C)
  loc_101D0F4: var_8C.Text = vbNullString
  loc_101D10E: Set var_88 = Me.Txt
  loc_101D114: Call 0.Method_Proc_221_77_101D26C0 (CInt(&H13), var_8C)
  loc_101D11C: var_8C.Text = vbNullString
  loc_101D136: Set var_88 = Me.Txt
  loc_101D13C: Call 0.Method_Proc_221_77_101D26C0 (CInt(9), var_8C)
  loc_101D144: var_8C.Text = vbNullString
  loc_101D15E: Set var_88 = Me.Txt
  loc_101D164: Call 0.Method_Proc_221_77_101D26C0 (CInt(&HA), var_8C)
  loc_101D16C: var_8C.Text = vbNullString
  loc_101D186: Set var_88 = Me.Txt
  loc_101D18C: Call 0.Method_Proc_221_77_101D26C0 (CInt(&HB), var_8C)
  loc_101D194: var_8C.Text = vbNullString
  loc_101D1AE: Set var_88 = Me.Txt
  loc_101D1B4: Call 0.Method_Proc_221_77_101D26C0 (CInt(&HC), var_8C)
  loc_101D1BC: var_8C.Text = vbNullString
  loc_101D1D6: Set var_88 = Me.Txt
  loc_101D1DC: Call 0.Method_Proc_221_77_101D26C0 (CInt(&HD), var_8C)
  loc_101D1E4: var_8C.Text = vbNullString
  loc_101D1FE: Set var_88 = Me.Txt
  loc_101D204: Call 0.Method_Proc_221_77_101D26C0 (CInt(&HE), var_8C)
  loc_101D20C: var_8C.Text = vbNullString
  loc_101D226: Set var_88 = Me.Txt
  loc_101D22C: Call 0.Method_Proc_221_77_101D26C0 (CInt(&H10), var_8C)
  loc_101D234: var_8C.Text = vbNullString
  loc_101D24E: Set var_88 = Me.Txt
  loc_101D254: Call 0.Method_Proc_221_77_101D26C0 (CInt(&H10), var_8C)
  loc_101D25C: var_8C.Tag = vbNullString
  loc_101D268: Exit Sub
  loc_101D269: Set var_88 = 
End Sub

Public Sub Proc_221_78_13B1EEC
  'Data Table: 531BC8
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_158 As Variant
  Dim var_200 As TextBox
  loc_13B15C7: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B15CC: var_C8 = 1
  loc_13B1603: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13B160A:   Set var_F4 = Me.FGrid
  loc_13B164A:   Set var_DC = Me.Txt
  loc_13B1650:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_13B1658:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13B1683:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B1688:   var_C8 = 2
  loc_13B16A5:   global_156 = CStr(var_F4.TextMatrix))
  loc_13B16CE:   var_C8 = 3
  loc_13B16F3:   Set var_DC = Me.Txt
  loc_13B16F9:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_13B1701:   var_F8.Text = var_C8
  loc_13B172C:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B1731:   var_C8 = 4
  loc_13B174E:   global_148 = CStr(var_F4.TextMatrix))
  loc_13B1772:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B1777:   var_C8 = 5
  loc_13B1794:   global_152 = CStr(var_F4.TextMatrix))
  loc_13B17B8:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B17E1:   Set var_DC = Me.Txt
  loc_13B17E7:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(5), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(6)), var_A8, CVar(CLng(6)))
  loc_13B17EF:   var_F8.Tag = var_A8
  loc_13B181A:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B1822:   var_C8 = CVar(CLng(7)) 'Long
  loc_13B1859:   var_158 = var_F4.TextMatrix)
  loc_13B1869:   Set var_F8 = Me.FGrid
  loc_13B18C7:   Set var_1FC = Me.Txt
  loc_13B18CD:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(5), var_200, CStr(IIf((CStr(var_F4.TextMatrix)) = vbNullString), CVar(CStr(var_158)), CVar(CStr(var_F4.TextMatrix))))), CVar(CLng(7)), CVar(CLng(var_F8.Row)), var_158, CVar(CLng(6)))
  loc_13B18D5:   var_200.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1918:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B191D:   var_C8 = &H17
  loc_13B1929:   var_EC = var_F4.TextMatrix)
  loc_13B193A:   Proc_6_39_E7D3A0(var_158, CVar(CStr(var_EC)), var_C8, var_A8, var_EC)
  loc_13B1951:   Set var_DC = Me.Txt
  loc_13B1957:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(4), var_F8, CStr(var_158), var_C8)
  loc_13B195F:   var_F8.Text = var_A8
  loc_13B19B8:   Set var_DC = Me.Txt
  loc_13B19BE:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(7), var_F8, CStr(var_F4.TextMatrix)), 8)
  loc_13B19C6:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1A1A:   Set var_DC = Me.Txt
  loc_13B1A20:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(9), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)))
  loc_13B1A28:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1A7C:   Set var_DC = Me.Txt
  loc_13B1A82:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(&HA), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_13B1A8A:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1ADE:   Set var_DC = Me.Txt
  loc_13B1AE4:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(&HB), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_13B1AEC:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1B40:   Set var_DC = Me.Txt
  loc_13B1B46:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(&HC), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_13B1B4E:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1BA3:   Set var_DC = Me.Txt
  loc_13B1BA9:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_13B1BB1:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1C05:   Set var_DC = Me.Txt
  loc_13B1C0B:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_13B1C13:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1C67:   Set var_DC = Me.Txt
  loc_13B1C6D:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_13B1C75:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1CC9:   Set var_DC = Me.Txt
  loc_13B1CCF:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_13B1CD7:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1D2B:   Set var_DC = Me.Txt
  loc_13B1D31:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(&H11), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_13B1D39:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1D8D:   Set var_DC = Me.Txt
  loc_13B1D93:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(&H11), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H11)))
  loc_13B1D9B:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13B1DF0:   Set var_DC = Me.Txt
  loc_13B1DF6:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(8), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_13B1DFE:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1E53:   Set var_DC = Me.Txt
  loc_13B1E59:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_13B1E61:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13B1EB6:   Set var_DC = Me.Txt
  loc_13B1EBC:   Call 0.Method_Proc_221_78_13B1EEC0 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), &H16)
  loc_13B1EC4:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1EE1:   global_168 = &HFF
  loc_13B1EE6:   Set var_F4 = Nothing 
  loc_13B1EEA: End If
  loc_13B1EEA: Exit Sub
End Sub

Public Sub Proc_221_79_EE3E48
  'Data Table: 531BC8
  loc_EE3D96: On Error Goto loc_EE3DDC
  loc_EE3DAE: Call 0.Method_arg_18C (var_8C)
  loc_EE3DB6: Call var_8C.Show
  loc_EE3DCB: Call 0.Method_arg_188 (var_B0)
  loc_EE3DD3: var_88 = var_B0
  loc_EE3DD6: Proc_221_79_EE3E48 = 1
  loc_EE3DDC: ' Referenced from: EE3D96
  loc_EE3DE4: Set var_8C = Err()
  loc_EE3DEA: Call 0.Method_arg_1C (var_B4)
  loc_EE3DFB: If (var_B4 <> 0) Then
  loc_EE3E06:   Set var_8C = Err()
  loc_EE3E0C:   Call 0.Method_arg_2C (var_B0)
  loc_EE3E2D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE3E40: End If
  loc_EE3E40: Proc_221_79_EE3E48 = 
End Sub

Public Sub Proc_221_80_1100D58
  'Data Table: 531BC8
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_94 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_E4 As String
  loc_1100A1D: Set var_88 = Me.Txt
  loc_1100A23: Call 0.Method_Proc_221_80_1100D580 (CInt(3), var_8C)
  loc_1100A2B: var_8C.Visible = False
  loc_1100A42: Set var_88 = Me.Lbl
  loc_1100A48: Call 0.Method_Proc_221_80_1100D580 (1, var_8C)
  loc_1100A50: var_8C.Visible = False
  loc_1100A60: Set var_94 = Me.FGrid1
  loc_1100A6F: var_94.Cols = 7
  loc_1100A74: var_A4 = 0
  loc_1100A7D: var_C4 = 0
  loc_1100A89: LateIdCallSt
  loc_1100A91: var_A4 = 0
  loc_1100A9A: var_C4 = 1
  loc_1100AA3: var_E4 = "FP No"
  loc_1100AAC: LateIdCallSt
  loc_1100AB4: var_A4 = 1
  loc_1100AC3: var_C4 = CVar(CInt(1)) 'Integer
  loc_1100ACA: LateIdCallSt
  loc_1100AD2: var_A4 = 1
  loc_1100ADB: var_C4 = &H3B6
  loc_1100AE7: LateIdCallSt
  loc_1100AEF: var_A4 = 0
  loc_1100AF8: var_C4 = 2
  loc_1100B01: var_E4 = "Party Name"
  loc_1100B0A: LateIdCallSt
  loc_1100B12: var_A4 = 2
  loc_1100B21: var_C4 = CVar(CInt(1)) 'Integer
  loc_1100B28: LateIdCallSt
  loc_1100B30: var_A4 = 2
  loc_1100B3F: var_C4 = CVar(CInt(1)) 'Integer
  loc_1100B46: LateIdCallSt
  loc_1100B4E: var_A4 = 2
  loc_1100B57: var_C4 = &HAF0
  loc_1100B63: LateIdCallSt
  loc_1100B6B: var_A4 = 0
  loc_1100B74: var_C4 = 3
  loc_1100B7D: var_E4 = "FP Date"
  loc_1100B86: LateIdCallSt
  loc_1100B8E: var_A4 = 3
  loc_1100B9D: var_C4 = CVar(CInt(1)) 'Integer
  loc_1100BA4: LateIdCallSt
  loc_1100BAC: var_A4 = 3
  loc_1100BBB: var_C4 = CVar(CInt(1)) 'Integer
  loc_1100BC2: LateIdCallSt
  loc_1100BCA: var_A4 = 3
  loc_1100BD3: var_C4 = &H578
  loc_1100BDF: LateIdCallSt
  loc_1100BE7: var_A4 = 0
  loc_1100BF0: var_C4 = 4
  loc_1100BF9: var_E4 = "Amount"
  loc_1100C02: LateIdCallSt
  loc_1100C0A: var_A4 = 4
  loc_1100C19: var_C4 = CVar(CInt(7)) 'Integer
  loc_1100C20: LateIdCallSt
  loc_1100C28: var_A4 = 4
  loc_1100C37: var_C4 = CVar(CInt(7)) 'Integer
  loc_1100C3E: LateIdCallSt
  loc_1100C46: var_A4 = 4
  loc_1100C4F: var_C4 = &H5DC
  loc_1100C5B: LateIdCallSt
  loc_1100C63: var_A4 = 0
  loc_1100C6C: var_C4 = 5
  loc_1100C75: var_E4 = "Balance"
  loc_1100C7E: LateIdCallSt
  loc_1100C86: var_A4 = 5
  loc_1100C95: var_C4 = CVar(CInt(7)) 'Integer
  loc_1100C9C: LateIdCallSt
  loc_1100CA4: var_A4 = 5
  loc_1100CB3: var_C4 = CVar(CInt(7)) 'Integer
  loc_1100CBA: LateIdCallSt
  loc_1100CC2: var_A4 = 5
  loc_1100CCB: var_C4 = 0
  loc_1100CD7: LateIdCallSt
  loc_1100CDF: var_A4 = 0
  loc_1100CE8: var_C4 = 6
  loc_1100CFA: LateIdCallSt
  loc_1100D02: var_A4 = 6
  loc_1100D17: LateIdCallSt
  loc_1100D1F: var_A4 = True
  loc_1100D26: var_94.Visible = var_A4
  loc_1100D36: Set var_88 = Me.Label1
  loc_1100D3C: Call 0.Method_Proc_221_80_1100D580 (1, var_8C, &HFF, var_94, 0, var_A4, var_94)
  loc_1100D44: var_8C.Visible = "Book DocId"
  loc_1100D52: Set var_94 = Nothing 
  loc_1100D56: Exit Sub
End Sub
