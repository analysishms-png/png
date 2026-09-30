VERSION 5.00
Begin VB.Form RsTokenEntry
  Caption = "Token Entry"
  BackColor = &HDEE6FE&
  ForeColor = &H40&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 15240
  ClientHeight = 10935
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin Frame FrTOKEN
    Caption = "Frame1"
    Left = 0
    Top = 0
    Width = 15225
    Height = 9060
    TabIndex = 13
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 13
      ForeColor = &HFF0000&
      Left = 3570
      Top = 720
      Width = 855
      Height = 240
      Enabled = 0   'False
      TabIndex = 45
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
    Begin CommandButton Command1
      Caption = "Command1"
      Left = 12225
      Top = 6495
      Width = 1740
      Height = 405
      Visible = 0   'False
      TabIndex = 44
    End
    Begin DataGrid DGMember
      Left = 12330
      Top = 3735
      Width = 6720
      Height = 3315
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 43
    End
    Begin TextBox Txt
      Index = 11
      ForeColor = &HFF0000&
      Left = 1455
      Top = 465
      Width = 5115
      Height = 240
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 0
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 6585
      Top = 465
      Width = 1620
      Height = 240
      Visible = 0   'False
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 11
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
    Begin MSFlexGrid FGPoint
      Left = 10110
      Top = 1800
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 25
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HFFFFC0&
      ForeColor = &H80000012&
      Left = 7500
      Top = 6975
      Width = 765
      Height = 240
      Visible = 0   'False
      TabIndex = 24
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
      Index = 1
      ForeColor = &HFF0000&
      Left = 4905
      Top = 720
      Width = 1095
      Height = 240
      TabIndex = 3
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
      Index = 0
      ForeColor = &HFF0000&
      Left = 1455
      Top = 720
      Width = 1200
      Height = 240
      TabIndex = 2
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
      Index = 3
      BackColor = &H80000000&
      Left = 9765
      Top = 120
      Width = 2325
      Height = 210
      Visible = 0   'False
      TabIndex = 23
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
      Index = 4
      ForeColor = &HFF0000&
      Left = 1455
      Top = 1230
      Width = 5115
      Height = 240
      Visible = 0   'False
      TabIndex = 5
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
      Index = 5
      ForeColor = &HFF0000&
      Left = 1455
      Top = 1485
      Width = 5115
      Height = 240
      Visible = 0   'False
      TabIndex = 6
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
      Index = 2
      Left = 6015
      Top = 720
      Width = 555
      Height = 240
      TabIndex = 4
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
    Begin CheckBox ChkNCTOKEN
      Caption = "NC TOKEN "
      BackColor = &HDEE6FE&
      ForeColor = &HFF0000&
      Left = 6585
      Top = 1170
      Width = 1440
      Height = 240
      Visible = 0   'False
      TabIndex = 22
      Alignment = 1 'Right Justify
    End
    Begin TextBox Txt
      Index = 6
      ForeColor = &HFF0000&
      Left = 1455
      Top = 975
      Width = 5115
      Height = 240
      TabIndex = 7
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
      Index = 7
      ForeColor = &HFF0000&
      Left = 7800
      Top = 1470
      Width = 2625
      Height = 240
      Visible = 0   'False
      TabIndex = 17
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
      Index = 8
      ForeColor = &HFF0000&
      Left = 1140
      Top = 7350
      Width = 3480
      Height = 270
      Enabled = 0   'False
      TabIndex = 9
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
      Index = 9
      ForeColor = &HFF0000&
      Left = 1140
      Top = 7650
      Width = 3480
      Height = 300
      Enabled = 0   'False
      TabIndex = 10
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
      Index = 10
      ForeColor = &HFF0000&
      Left = 1140
      Top = 7980
      Width = 3480
      Height = 270
      Enabled = 0   'False
      TabIndex = 11
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
    Begin CommandButton cmdNCBill
      Caption = "Print &NC Bill"
      Left = 8460
      Top = 6750
      Width = 2985
      Height = 465
      Visible = 0   'False
      TabIndex = 12
    End
    Begin Frame FrmeDisc
      Caption = "Description"
      Left = 4200
      Top = 3720
      Width = 4695
      Height = 1695
      Visible = 0   'False
      TabIndex = 14
      Begin TextBox txtDisc
        Left = 145
        Top = 300
        Width = 4335
        Height = 240
        TabIndex = 15
        BorderStyle = 0 'None
        MaxLength = 35
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
    Begin Timer Timer1
      Interval = 10
      Left = 6840
      Top = 8160
    End
    Begin CommonDialog cdl
    End
    Begin DataGrid DGNCType
      Left = 7800
      Top = 1695
      Width = 4155
      Height = 3390
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 16
    End
    Begin DataGrid DGTable
      Left = 12390
      Top = 3360
      Width = 9240
      Height = 3390
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 18
    End
    Begin DataGrid DGRest
      Left = 12060
      Top = 3000
      Width = 5910
      Height = 3390
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 19
    End
    Begin DataGrid DGItem
      Left = 11775
      Top = 2520
      Width = 4035
      Height = 4710
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 20
    End
    Begin DataGrid DGWaiter
      Left = 11805
      Top = 3675
      Width = 4290
      Height = 3390
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 21
    End
    Begin MSHFlexGrid FGrid
      Left = 135
      Top = 1755
      Width = 11325
      Height = 4710
      TabIndex = 8
    End
    Begin MainCtrl TopCtrl1
      Left = 0
      Top = 0
      Width = 15225
      Height = 420
      TabIndex = 47
    End
    Begin Label Label1
      Caption = "Token No."
      Index = 12
      ForeColor = &HFF0000&
      Left = 2685
      Top = 705
      Width = 840
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
    Begin Label Label1
      Caption = "Member"
      Index = 11
      ForeColor = &HFF0000&
      Left = 165
      Top = 480
      Width = 705
      Height = 225
      Visible = 0   'False
      TabIndex = 42
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
      Caption = "VPrefix"
      ForeColor = &HFF0000&
      Left = 795
      Top = 720
      Width = 630
      Height = 225
      TabIndex = 41
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
    Begin Label Label1
      Caption = "Date"
      Index = 1
      ForeColor = &HFF0000&
      Left = 4485
      Top = 735
      Width = 390
      Height = 225
      TabIndex = 40
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
      Caption = "KOT#"
      Index = 3
      ForeColor = &HFF0000&
      Left = 165
      Top = 735
      Width = 465
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
    Begin Label Label1
      Caption = "Table Code"
      Index = 2
      BackColor = &H80&
      ForeColor = &HFF0000&
      Left = 165
      Top = 1230
      Width = 945
      Height = 225
      Visible = 0   'False
      TabIndex = 38
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
      Caption = "Steward"
      Index = 5
      ForeColor = &HFF0000&
      Left = 165
      Top = 1485
      Width = 720
      Height = 225
      Visible = 0   'False
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
    Begin Label LblRest
      Caption = "#"
      BackColor = &HC0C0C0&
      ForeColor = &HFF0000&
      Left = 9585
      Top = 690
      Width = 225
      Height = 465
      TabIndex = 36
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
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
    Begin Label LblState
      BackColor = &HC0C0C0&
      ForeColor = &HFF&
      Left = 135
      Top = 6795
      Width = 3885
      Height = 450
      TabIndex = 35
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 20.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label lblSession
      Caption = "#"
      BackColor = &HC0C0C0&
      ForeColor = &HC00000&
      Left = 8835
      Top = 1185
      Width = 1665
      Height = 330
      TabIndex = 34
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Remarks"
      Index = 0
      BackColor = &H80&
      ForeColor = &HFF0000&
      Left = 165
      Top = 960
      Width = 780
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
    Begin Label Label1
      Caption = "NC Category"
      Index = 4
      ForeColor = &H40&
      Left = 6615
      Top = 1470
      Width = 1050
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
    Begin Label Label1
      Caption = "Steward"
      Index = 6
      ForeColor = &HFF0000&
      Left = 8325
      Top = 450
      Width = 720
      Height = 225
      Visible = 0   'False
      TabIndex = 31
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
      Caption = "Comment1"
      Index = 7
      ForeColor = &HFF0000&
      Left = 225
      Top = 7365
      Width = 930
      Height = 225
      TabIndex = 30
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
      Caption = "Comment2"
      Index = 8
      ForeColor = &HFF0000&
      Left = 210
      Top = 7680
      Width = 930
      Height = 225
      TabIndex = 29
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
      Caption = "Comment3"
      Index = 9
      ForeColor = &HFF0000&
      Left = 210
      Top = 7995
      Width = 930
      Height = 225
      TabIndex = 28
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
    Begin Label lblclr
      BackColor = &HFF00&
      Left = 7500
      Top = 7245
      Width = 885
      Height = 240
      TabIndex = 27
    End
    Begin Label Label1
      Caption = "Free Items"
      Index = 10
      ForeColor = &H40&
      Left = 9405
      Top = 7020
      Width = 885
      Height = 210
      TabIndex = 26
      AutoSize = -1  'True
      WordWrap = -1  'True
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
  End
End

Attribute VB_Name = "RsTokenEntry"

Private global_212 As Integer
Private global_214 As Integer
Private global_128 As Integer
Private global_130 As Integer
Private MasterFormExit As Integer
Private global_204 As Long
Private global_120 As Long

Private Sub DGMember_UnknownEvent_9 'F58390
  'Data Table: 542AE4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F58270: On Error Goto loc_F5838A
  loc_F58282: Me.DGMember.Visible = False
  loc_F582A1: If (Me.RecordCount > 0) Then
  loc_F582E0:   Set var_B4 = Me.Txt
  loc_F582E6:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F582EE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F58321:   var_B0 = Me.Fields.Item("Code")
  loc_F58340:   Set var_B4 = Me.Txt
  loc_F58346:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F5834E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F58364: End If
  loc_F5836F: Set var_A8 = Me.Txt
  loc_F58375: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HB))
  loc_F5837D: var_B0.SetFocus
  loc_F58389: Exit Sub
  loc_F5838A: ' Referenced from: F58270
  loc_F5838A: Proc_6_60_E63754(var_B0)
  loc_F5838F: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'E6F044
  'Data Table: 542AE4
  loc_E6F002: Proc_6_153_E91D24(Me.DGMember, arg_14)
  loc_E6F019: Set var_8C = Me.FGPoint
  loc_E6F035: Proc_6_138_106E830(Me.DGMember, global_176, CInt(&HB))
  loc_E6F043: Exit Sub
End Sub

Private Sub Timer1_Timer() '10BD39C
  'Data Table: 542AE4
  Dim var_88 As Variant
  Dim var_A0 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_B0 As Variant
  loc_10BD0C0: Set var_88 = Me.TopCtrl1
  loc_10BD0C6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10BD0DA: Set var_A0 = Me.TopCtrl1
  loc_10BD0E0: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005((CStr() = "Edit"))
  loc_10BD106: If ( Or (CStr() = "Add")) Then
  loc_10BD114:   If (global_216 = "Go") Then
  loc_10BD123:     Me.FrmeDisc.Visible = True
  loc_10BD135:     Me.txtDisc.SetFocus
  loc_10BD153:     Me.FrmeDisc.Width = CDbl((global_212 * 430))
  loc_10BD170:     Me.FrmeDisc.Height = CDbl((global_212 * &H3C))
  loc_10BD19C:     Me.FrmeDisc.Top = (Me.FrmeDisc.Top + CDbl(&HA))
  loc_10BD1CC:     Me.FrmeDisc.Left = (Me.FrmeDisc.Left + CDbl(&HA))
  loc_10BD1E6:     If ((global_212 * 250) > 2700) Then
  loc_10BD1F5:       Me.Timer1.Enabled = False
  loc_10BD203:       global_216 = vbNullString
  loc_10BD207:     End If
  loc_10BD213:     global_212 = (global_212 + 1)
  loc_10BD216:   End If
  loc_10BD221:   If (global_216 = "Back") Then
  loc_10BD230:     global_212 = (global_212 - 1)
  loc_10BD249:     Me.FrmeDisc.Width = CDbl((global_212 * 430))
  loc_10BD266:     Me.FrmeDisc.Height = CDbl((global_212 * &H3C))
  loc_10BD292:     Me.FrmeDisc.Top = (Me.FrmeDisc.Top - CDbl(&HA))
  loc_10BD2C2:     Me.FrmeDisc.Left = (Me.FrmeDisc.Left - CDbl(&HA))
  loc_10BD2D7:     If (global_212 = 0) Then
  loc_10BD2ED:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BD2F5:       var_E8 = CVar(CLng(6)) 'Long
  loc_10BD30F:       var_B0 = CVar(Me.txtDisc.Text) 'String
  loc_10BD317:       Set var_10C = Me.FGrid
  loc_10BD31D:       LateIdCallSt
  loc_10BD34B:       Me.FGrid.Col = CVar(CLng(global_214))
  loc_10BD357:       Set var_88 = Me.FGrid
  loc_10BD374:       Me.Timer1.Enabled = False
  loc_10BD382:       global_216 = vbNullString
  loc_10BD392:       Me.FrmeDisc.Visible = False
  loc_10BD39A:     End If
  loc_10BD39A:   End If
  loc_10BD39A: End If
  loc_10BD39A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1221568
  'Data Table: 542AE4
  Dim var_90 As String
  Dim var_9C As TextBox
  Dim var_114 As Double
  Dim var_10C As String
  Dim unk_542AFA As Connection15
  Dim var_94 As Fields15
  Dim var_AC As Variant
  Dim var_11C As Label
  Dim Me As Recordset15
  Dim var_120 As TextBox
  loc_1221090: On Error Goto loc_1221561
  loc_12210B6: Call Proc_229_83_100CB3C(Proc_5_1_100EC1C("ADD", Me))
  loc_12210C1: Call Proc_229_82_FEC9EC(global_92)
  loc_12210CB: var_90 = CStr(MemVar_1F950EC)
  loc_12210D9: Set var_94 = Me.Txt
  loc_12210DF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_12210E7: var_9C.Text = var_90
  loc_12210FC: Call Proc_229_86_1185374(MemVar_1F95044)
  loc_122110F: Set var_94 = Me.Txt
  loc_1221115: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_9C)
  loc_122111D: var_9C.Text = var_90
  loc_122116C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_9C, CStr(Format(Time, "hh:nn")))
  loc_1221174: var_9C.Text = 1
  loc_122118F: var_AC = Time
  loc_12211EA: var_8C = Replace(CStr(Left(CVar(CStr(Format(var_AC, "HH:MM"))), 5)), ":", ".", 1, -1, 0)
  loc_1221207: var_114 = Val(var_8C)
  loc_1221238: var_10C = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND " & CStr(var_114) & " BETWEEN FromTime AND ToTime"
  loc_1221241: unk_542AFA.Execute var_10C, var_AC, -1
  loc_122124C: Set var_88 = Me.Txt
  loc_1221279: If (Me.Recordset15.RecordCount > 0) Then
  loc_122128E:   var_94 = Me.Recordset15.Fields
  loc_1221296:   var_9C = var_94.Item("Name")
  loc_12212A7:   var_90 = Proc_6_38_E69628(CVar(var_9C), var_94, var_114, 1)
  loc_12212B4:   Me.lblSession.Caption = var_90
  loc_12212C6: End If
  loc_12212D4: Set var_94 = Me.Txt
  loc_12212DA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_9C, var_96)
  loc_12212E2: 1 = var_9C.Visible
  loc_12212F4: If (var_96 = &HFF) Then
  loc_1221302:   If (global_172 = "Auto") Then
  loc_1221305:     Call Command1_Click()
  loc_1221318:     Set var_94 = Me.Txt
  loc_122131E:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_9C, var_90)
  loc_1221326:     1 = var_9C.Tag
  loc_1221352:     If (Trim(CVar(var_90)) = vbNullString) Then
  loc_122136A:       var_90 = "INI"
  loc_1221378:       Call Proc_229_83_100CB3C(Proc_5_1_100EC1C(var_90, Me), global_92)
  loc_122139A:       If (Me.RecordCount > 0) Then
  loc_122139D:         Call Proc_229_80_16C14B4(var_90)
  loc_12213A2:       End If
  loc_12213A2:       Exit Sub
  loc_12213A3:     End If
  loc_12213A3:   End If
  loc_12213B1:   Set var_94 = Me.Txt
  loc_12213B7:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_9C)
  loc_12213D1:   If (var_9C.Enabled = &HFF) Then
  loc_12213DF:     Set var_94 = Me.Txt
  loc_12213E5:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB))
  loc_12213ED:     var_9C.SetFocus
  loc_12213FC:   Else
  loc_122140A:     Set var_94 = Me.Txt
  loc_1221410:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C)
  loc_1221418:     var_96 = var_9C.Visible
  loc_1221431:     Set var_11C = Me.Txt
  loc_1221437:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_120, var_122)
  loc_122143F:     (var_96 = &HFF) = var_120.Enabled
  loc_1221456:     If (var_9C And (var_122 = &HFF)) Then
  loc_1221464:       Set var_94 = Me.Txt
  loc_122146A:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4))
  loc_1221472:       var_9C.SetFocus
  loc_1221481:     Else
  loc_1221485:       Set var_94 = Me.FGrid
  loc_1221496:     End If
  loc_1221496:   End If
  loc_1221499: Else
  loc_12214A7:   Set var_94 = Me.Txt
  loc_12214AD:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C, var_96)
  loc_12214B5:   FGrid.DispID_8001 = var_9C.Visible
  loc_12214C7:   If (var_96 = &HFF) Then
  loc_12214D5:     Set var_94 = Me.Txt
  loc_12214DB:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C)
  loc_12214E3:     var_9C.SetFocus
  loc_12214F2:   Else
  loc_1221500:     Set var_94 = Me.Txt
  loc_1221506:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_9C)
  loc_1221520:     If (var_9C.Visible = &HFF) Then
  loc_122152E:       Set var_94 = Me.Txt
  loc_1221534:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_9C)
  loc_122153C:       var_9C.SetFocus
  loc_122154B:     Else
  loc_122154F:       Set var_94 = Me.FGrid
  loc_1221560:     End If
  loc_1221560:   End If
  loc_1221560: End If
  loc_1221560: Exit Sub
  loc_1221561: ' Referenced from: 1221090
  loc_1221561: Proc_6_60_E63754(FGrid.DispID_8001)
  loc_1221566: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB2C2C
  'Data Table: 542AE4
  loc_EB2BA0: On Error Goto loc_EB2C25
  loc_EB2BDA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EB2C00:   Call Proc_229_83_100CB3C(Proc_5_1_100EC1C("INI", Me))
  loc_EB2C0B:   Call Proc_229_80_16C14B4(global_92)
  loc_EB2C1C:   Me.FrmeDisc.Visible = False
  loc_EB2C24: End If
  loc_EB2C24: Exit Sub
  loc_EB2C25: ' Referenced from: EB2BA0
  loc_EB2C25: Proc_6_60_E63754()
  loc_EB2C2A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '147C4B4
  'Data Table: 542AE4
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
  Dim unk_542AFA As Connection15
  Dim var_1BC As Recordset15
  Dim var_1C0 As Fields15
  Dim var_1D4 As Variant
  Dim var_98 As Recordset15
  Dim var_208 As String
  Dim var_20C As String
  Dim var_220 As String
  Dim var_164 As Variant
  Dim var_124 As TextBox
  Dim var_994 As Double
  Dim var_2D4 As TextBox
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_42C As Variant
  Dim var_44C As Variant
  Dim var_470 As Variant
  Dim var_4E0 As Variant
  Dim var_9A4 As Double
  Dim var_59C As Variant
  Dim var_638 As TextBox
  Dim var_75C As Variant
  Dim var_77C As Variant
  Dim var_9B4 As Double
  Dim var_9BC As Double
  Dim var_1B8 As Variant
  Dim var_1E4 As Variant
  Dim var_2AC As Variant
  Dim var_41C As Variant
  Dim var_65C As Variant
  Dim var_72C As Variant
  Dim var_8F4 As Variant
  Dim var_944 As Variant
  loc_147BA00: On Error Goto loc_147C466
  loc_147BA11: If (Proc_183_56_FE8B08(global_92) = &HFF) Then
  loc_147BA14:   Exit Sub
  loc_147BA15: End If
  loc_147BA51: var_110 = Me.Fields
  loc_147BA59: var_124 = var_110.Item("SearchCode")
  loc_147BA5E: var_154 = 1
  loc_147BA6B: var_134 = CVar(var_124) 'Address
  loc_147BA72: var_164 = Mid(var_134, 4, var_154)
  loc_147BA7D: var_1D0 = 0
  loc_147BAAB: var_174 = "Select count(*) from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & var_164 
  loc_147BAC2: unk_542AFA.Execute CStr(var_174 & "'<>'N'"), var_1B8, -1
  loc_147BACA: var_1BC = var_1BC.Fields
  loc_147BAD2: var_1D0 = var_1C0.Item(var_1C0)
  loc_147BADA: var_1D4 = var_1D4.Value
  loc_147BB13: If (var_1E4 > 0) Then
  loc_147BB6C:   unk_542AFA.Execute CStr("Select VNo from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_147BB77:   Set var_98 = var_110
  loc_147BBC3:   var_10C = "**** Deletion Not Allowed ****"
  loc_147BBE3:   var_20C = "Bill Allready Prepared For this TOKEN" & vbCrLf & vbCrLf & "Ref. No. "
  loc_147BC04:   var_220 = var_20C & CStr(var_98.Fields.Item(0).Value) & vbCrLf & vbCrLf & vbCrLf
  loc_147BC0E:   MsgBox(CVar(var_220 & vbCrLf), &H10, var_10C, var_134, var_154)
  loc_147BC3C:   Exit Sub
  loc_147BC3D: End If
  loc_147BC74: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_10C, var_134) = 6) Then
  loc_147BCA1:   var_9C = InputBox("Please Specify, Reason For Delete ?", "Reason", var_10C, var_134, var_154, var_164, var_174)
  loc_147BCBE:   unk_542AFA.BeginTrans var_224
  loc_147BCD4:   var_94 = Me.Bookmark 'Variant
  loc_147BD4C:   For var_22A = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_22A 'Integer
  loc_147BD5E:     var_FC = CVar(CLng(&HA)) 'Long
  loc_147BD78:     var_EC = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_147BDA5:     Set var_BC = Me.FGrid
  loc_147BDB6:     var_198 = CStr(var_BC.TextMatrix))
  loc_147BDE4:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_198)) <> CDbl(0))) Then
  loc_147BDF5:       Set var_A8 = Me.Txt
  loc_147BDFB:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_BC, var_198, CVar(CLng(var_9E)), (Trim(var_EC) <> vbNullString))
  loc_147BE03:       var_FC = var_BC.Text
  loc_147BE16:       Set var_110 = Me.Txt
  loc_147BE1C:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_20C, CVar(CLng(var_9E)))
  loc_147BE24:       1 = var_124.Text
  loc_147BE31:       var_994 = Val(var_20C)
  loc_147BE3F:       Set var_1BC = Me.Txt
  loc_147BE45:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_1C0, var_994)
  loc_147BE54:       Proc_6_7_F26918(var_EC, CVar(var_1C0))
  loc_147BE79:       Set var_2D0 = Me.Txt
  loc_147BE7F:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_2D4, var_220)
  loc_147BE87:       var_110 = var_2D4.Tag
  loc_147BE90:       var_324 = CVar(CLng(var_9E)) 'Long
  loc_147BE98:       var_344 = CVar(CLng(0)) 'Long
  loc_147BEE9:       var_42C = CVar(CLng(var_9E)) 'Long
  loc_147BEF1:       var_44C = CVar(CLng(&HA)) 'Long
  loc_147BF00:       var_470 = Me.FGrid.TextMatrix)
  loc_147BF18:       var_4E0 = CVar(CLng(7)) 'Long
  loc_147BF3A:       var_9A4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_147BF58:       var_59C = Me.FGrid.TextMatrix)
  loc_147BFA0:       Set var_634 = Me.Txt
  loc_147BFA6:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(5), var_638, var_63C, var_59C, CVar(CLng(9)), CVar(CLng(var_9E)), var_9A4)
  loc_147BFAE:       var_4E0 = var_638.Tag
  loc_147BFC1:       Proc_6_7_F26918(var_6DC, Now, CVar(CLng(var_9E)), var_470)
  loc_147BFCA:       var_75C = CVar(CLng(var_9E)) 'Long
  loc_147BFD2:       var_77C = CVar(CLng(8)) 'Long
  loc_147C025:       var_9B4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_147C056:       var_9BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_147C07D:       var_208 = "Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,Rate,Amount,Reasons,DELFLAG,LogSite_Code) Values ('" & var_198
  loc_147C0C6:       var_1B8 = CVar(var_208 & "'," & CStr(var_994) & ",") & var_EC & ",'" & CVar(global_156) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_147C11B:       var_2AC = var_1B8 & "','" & CVar(MemVar_1F95070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_160) & "','" & CVar(global_164) 
  loc_147C15B:       var_41C = var_2AC & "','" & CVar(var_220) & "','Y'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & Format(Time, "hh:nn") & "','" 
  loc_147C19D:       var_65C = var_41C & CVar(CStr(var_470)) & "'," & CVar(var_9A4) & ",'" & IIf((CStr(var_59C) = "Yes"), "Y", "N") & "','" & CVar(var_63C) 
  loc_147C1D3:       var_72C = var_65C & "','" & CVar(MemVar_1F950C8) & "'," & var_6DC & ",'A','" & CVar(CStr(IIf((Me.ChkNCTOKEN.Value = 1), "Y", "N"))) 
  loc_147C20F:       var_8F4 = CVar(Proc_6_38_E69628(var_9C, var_9BC, CVar(CLng(8)), CVar(CLng(var_9E)), var_9B4, CVar(CLng(7)), CVar(CLng(var_9E)))) 'String
  loc_147C225:       var_944 = var_72C & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar((var_9B4 * var_9BC)) & ",'" & var_8F4 & "','D','" & CVar(MemVar_1F95078) 
  loc_147C23C:       unk_542AFA.Execute CStr(var_944 & "')"), var_988, -1
  loc_147C310:     End If
  loc_147C313:   Next var_22A 'Integer
  loc_147C32C:   var_198 = "Update TOKEN Set DelFlag='Y',U_Name1='" & MemVar_1F950C8
  loc_147C333:   var_10C = CVar(var_198 & "',U_EntDt1=") 'String
  loc_147C344:   Proc_6_7_F26918(var_EC, Date, var_10C)
  loc_147C34C:   var_134 = var_1B8 & var_EC 
  loc_147C39D:   unk_542AFA.Execute CStr(var_134 & ",U_AE1='E' Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), -1, var_110
  loc_147C3CD:   unk_542AFA.CommitTrans
  loc_147C3DD:   Me.Requery -1
  loc_147C3FD:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_147C40A:     Me.Bookmark = var_94
  loc_147C412:   Else
  loc_147C426:     If (Me.EOF = 0) Then
  loc_147C42F:       Me.MoveLast
  loc_147C434:     End If
  loc_147C434:   End If
  loc_147C434:   Call Proc_229_80_16C14B4()
  loc_147C455:   Proc_5_0_1107AD0(&HFF, Me)
  loc_147C45D: End If
  loc_147C462: Set var_98 = Nothing
  loc_147C465: Exit Sub
  loc_147C466: ' Referenced from: 147BA00
  loc_147C46C: unk_542AFA.RollbackTrans
  loc_147C479: Set var_A8 = Err()
  loc_147C47F: Call 0.Method_arg_2C (var_198, global_92)
  loc_147C4A0: MsgBox(CVar(var_198), &H10, " Deletion Message", var_10C, var_134)
  loc_147C4B3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1215474
  'Data Table: 542AE4
  Dim var_12C As Integer
  Dim Me As Variant
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim unk_542AFA As Connection15
  Dim var_118 As Variant
  Dim var_11C As Fields15
  Dim var_130 As Field20
  Dim var_140 As Integer
  Dim var_114 As Variant
  Dim var_180 As Variant
  Dim var_88 As Recordset15
  loc_1214FDC: On Error Goto loc_121546B
  loc_1214FED: If (Proc_183_55_FE8490(global_92) = &HFF) Then
  loc_1214FF0:   Exit Sub
  loc_1214FF1: End If
  loc_1214FF7: var_12C = 0
  loc_1215056: unk_542AFA.Execute CStr("Select count(*) from TOKEN Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And IsNull(ContraDocId,'')<>''"), var_114, -1
  loc_121505E: var_118 = var_118.Fields
  loc_1215066: var_12C = var_11C.Item(var_11C)
  loc_121506E: var_130 = var_130.Value
  loc_121509B: If (var_140 > 0) Then
  loc_12150DA:   var_118 = Me.Fields
  loc_12150E7:   var_140 = 1
  loc_12150F4:   var_114 = CVar(var_118.Item("SearchCode")) 'Address
  loc_121512E:   var_180 = "Select VNo from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & Mid(var_114, 4, var_140) & "'<>'N'" 
  loc_121513C:   unk_542AFA.Execute CStr(var_180), var_1A0, -1
  loc_1215147:   Set var_88 = var_130
  loc_1215181:   If (var_88.RecordCount > 0) Then
  loc_121519E:     var_A0 = var_88.Fields.Item(0)
  loc_12151FE:     var_D0 = CVar("Bill Allready Prepared For this TOKEN" & vbCrLf & vbCrLf & "Ref. No. " & CStr(var_A0.Value) & vbCrLf & vbCrLf & vbCrLf & vbCrLf) 'String
  loc_1215201:     MsgBox(var_D0, &H10, "**** Modification Not Allowed ****", var_114, var_140)
  loc_121522F:     Exit Sub
  loc_1215230:   End If
  loc_1215230: End If
  loc_1215253: Call Proc_229_83_100CB3C(Proc_5_1_100EC1C("EDIT", Me, global_92), var_130)
  loc_121526B: Set var_8C = Me.Txt
  loc_1215271: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_A0)
  loc_1215279: var_A0.Enabled = False
  loc_1215291: Me.ChkNCTOKEN.Enabled = False
  loc_12152A4: Set var_8C = Me.Txt
  loc_12152AA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_A0)
  loc_12152B2: var_A0.SetFocus
  loc_12152D5: If (Me.RecordCount > 0) Then
  loc_121532E:   unk_542AFA.Execute CStr("Select K.U_Name,K.U_AE,K.U_EntDt,K.Pending From TOKEN K Where K.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_114, -1
  loc_1215339:   Set var_88 = var_118
  loc_1215356:   Set var_1C8 = var_88 
  loc_121538B:   global_136 = CStr(var_88.Fields.Item("U_Name").Value)
  loc_12153CD:   global_148 = CStr(var_88.Fields.Item("U_AE").Value)
  loc_121540D:   global_140 = CDate(var_88.Fields.Item("U_EntDt").Value)
  loc_121544B:   global_152 = CStr(var_88.Fields.Item("Pending").Value)
  loc_121545E:   Set var_1C8 = Nothing 
  loc_1215462: End If
  loc_1215467: Set var_88 = Nothing
  loc_121546A: Exit Sub
  loc_121546B: ' Referenced from: 1214FDC
  loc_121546B: Proc_6_60_E63754(global_140, var_118)
  loc_1215470: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BA3C
  'Data Table: 542AE4
  loc_E1BA31: Me.Global.Unload Me
  loc_E1BA39: Exit Sub
  loc_E1BA3A: Result  End Sub 'Long
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'FFF3D0
  'Data Table: 542AE4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_D8 As Integer
  Dim unk_542AFA As Connection15
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
  loc_FFF214: On Error Goto loc_FFF3CA
  loc_FFF22E: If (Me.RecordCount <= 0) Then
  loc_FFF237:   var_B8 = "Information"
  loc_FFF24C:   var_A8 = "No Records To Search."
  loc_FFF252:   MsgBox(var_A8, &H40, var_B8, var_E8, var_108)
  loc_FFF262:   Exit Sub
  loc_FFF263: End If
  loc_FFF26A: var_10C = "Select Distinct K.DocId as SearchCode,K.VNo as [No],CAST (K.VDate AS VARCHAR(11)) as [Date],K.VTime as [Time],K.ROOMNO AS TableNo,H.Name as Restaurant,W.Name as Waiter  From (((TOKEN K Inner Join Voucher_Type V On (K.VType= V.V_Type And K.Logsite_Code=V.LogSite_Code)) Inner Join Depart H On K.RESTCODE= H.Code) Inner Join Waiter W On W.COde=K.Waiter) WHERE (K.LOGSITE_CODE='" & MemVar_1F95078
  loc_FFF27F: Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_FFF287: var_E8 = CVar(var_10C & "' or K.LOGSITE_CODE='HO') and (DelFlag NOT IN ('Y') OR DelFlag IS NULL) And (K.VDate=") & var_A8 
  loc_FFF296: var_D8 = 0
  loc_FFF2C6: unk_542AFA.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_108, -1
  loc_FFF2CE: var_118 = var_118.Fields
  loc_FFF2D6: var_D8 = var_11C.Item(var_11C)
  loc_FFF2DE: var_120 = var_120.Value
  loc_FFF2E6: var_140 = (var_130 + var_130)
  loc_FFF2F3: var_170 = ") AND (K.VType='T" & var_140 & "' OR K.VType='" 
  loc_FFF2FD: var_1B0 = 0
  loc_FFF31D: var_174 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_FFF32D: unk_542AFA.Execute var_174 & "'", var_198, -1
  loc_FFF335: var_19C = var_19C.Fields
  loc_FFF33D: var_1B0 = var_1A0.Item(var_1A0)
  loc_FFF345: var_1B4 = var_1B4.Value
  loc_FFF39F: Proc_6_126_F1C850("800,1000,800,1000,2000,2000", CStr(var_1C4 & var_1C4 & "') Order by Docid"))
  loc_FFF3AD: MemVar_1F95120 = Me
  loc_FFF3C4: Call 0.Method_arg_2B0 (1, var_B8)
  loc_FFF3C9: Exit Sub
  loc_FFF3CA: ' Referenced from: FFF214
  loc_FFF3CA: Proc_6_60_E63754(var_170)
  loc_FFF3CF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3C728
  'Data Table: 542AE4
  loc_E3C718: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C720: Call Proc_229_80_16C14B4(global_92)
  loc_E3C725: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3C6C8
  'Data Table: 542AE4
  Dim arg_6CFF As Double
  loc_E3C6B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C6C0: Call Proc_229_80_16C14B4(global_92)
  loc_E3C6C5: Exit Sub
  loc_E3C6C6: arg_6CFF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E37EC8
  'Data Table: 542AE4
  Dim arg_6CFF As Double
  loc_E37EB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E37EC0: Call Proc_229_80_16C14B4(global_92)
  loc_E37EC5: Exit Sub
  loc_E37EC6: arg_6CFF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3C488
  'Data Table: 542AE4
  loc_E3C478: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3C480: Call Proc_229_80_16C14B4(global_92)
  loc_E3C485: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1C18A9C
  'Data Table: 542AE4
  Dim var_130 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_144 As String
  Dim unk_542AFA As Connection15
  Dim var_100 As Recordset15
  Dim var_168 As Variant
  Dim var_120 As Variant
  Dim var_174 As String
  Dim var_BC As Recordset15
  Dim var_E6 As Integer
  Dim var_154 As Variant
  Dim var_188 As Fields15
  Dim var_184 As Variant
  Dim var_1CC As Variant
  Dim var_164 As Variant
  Dim var_E8 As Integer
  Dim Me As Recordset15
  Dim var_170 As Variant
  Dim var_1E4 As String
  Dim var_D0 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_18C As Field20
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_1F4 As Variant
  Dim var_1DC As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_B8 As Recordset15
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_27C As Variant
  Dim var_304 As String
  Dim var_308 As String
  Dim var_19C As Variant
  Dim var_21C As Variant
  Dim var_34C As Variant
  Dim var_35C As Variant
  Dim var_DC As Recordset15
  Dim var_2FC As Variant
  Dim var_338 As Variant
  Dim var_300 As String
  Dim var_2CC As Variant
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_2AC As Variant
  Dim var_388 As Variant
  Dim var_3A8 As Variant
  Dim var_3D4 As Variant
  Dim var_3E4 As Variant
  loc_1C12D68: On Error Goto loc_1C18A95
  loc_1C12D88: Proc_6_17_EAAE40(var_120, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1C12D9E: unk_542AFA.Execute CStr(var_164 & var_120), -1, var_168
  loc_1C12DA9: Set var_100 = var_168
  loc_1C12DCF: If (var_100.RecordCount > 0) Then
  loc_1C12E09:   var_F0 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("KOTHeader1"))))))
  loc_1C12E4F:   var_F4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("KOTHeader2"))))))
  loc_1C12E95:   var_F8 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("KOTHeader3"))))))
  loc_1C12EB3:   var_168 = var_100.Fields
  loc_1C12EC3:   var_120 = CVar(var_168.Item("KOTHeader4")) 'Address
  loc_1C12EDB:   var_FC = CStr(Trim(CVar(Proc_6_38_E69628(var_120))))
  loc_1C12EEA: End If
  loc_1C12EEF: Set var_100 = Nothing
  loc_1C12F19: unk_542AFA.Execute "Select CKOTPrintYN,NoOfKot From Depart Where Code='" & LocalRestCode & "'", var_120, -1
  loc_1C12F24: Set var_BC = var_168
  loc_1C12F48: If (var_BC.RecordCount > 0) Then
  loc_1C12F73:   var_140 = CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("CKOTPrintYN")))) 'String
  loc_1C12F8D:   var_E4 = CStr(Ucase(Trim(var_140)))
  loc_1C12FC4:   Proc_6_39_E7D3A0(var_140, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1C12FCD:   var_E6 = CInt(var_140)
  loc_1C13000:   Proc_6_39_E7D3A0(var_140, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1C13014:   var_188 = var_BC.Fields
  loc_1C1302B:   Proc_6_39_E7D3A0(var_19C, CVar(var_188.Item("NoOfKot")))
  loc_1C13058:   var_E8 = CInt(IIf((var_140 <= 0), 1, var_19C))
  loc_1C13073: End If
  loc_1C1307B: If (var_E4 = "Y") Then
  loc_1C13081:   Call Proc_229_72_1B9E67C(var_1DE, var_E8)
  loc_1C1308C:   If (var_1DE = 0) Then
  loc_1C1308F:     Exit Sub
  loc_1C13090:   End If
  loc_1C13090: End If
  loc_1C13093: MemVar_1F953C4 = "N"
  loc_1C1309A: MemVar_1F953C8 = "N"
  loc_1C130A1: MemVar_1F953CC = "K"
  loc_1C130AC: var_144 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.NCTOKEN, K.Remarks,K.TokenNo,K.U_Name , K.ContraDocId, D.ShortName " & "From ((TOKEN K Left Join Waiter W on K.Waiter=W.Code) Left Join Depart D on D.Code=K.RestCode)"
  loc_1C130F1: var_88 = CStr(CVar(var_144 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1C13110: var_140 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C13130: var_170 = Me.Fields.Item("SearchCode")
  loc_1C13138: var_120 = var_170.Value
  loc_1C13140: var_164 = var_140 & var_120 
  loc_1C13149: var_184 = var_164 & "'" 
  loc_1C1314E: var_8C = CStr(var_184)
  loc_1C1316B: If (var_88 = vbNullString) Then
  loc_1C1316E:   Exit Sub
  loc_1C1316F: End If
  loc_1C13177: If (var_8C = vbNullString) Then
  loc_1C1317A:   Exit Sub
  loc_1C1317B: End If
  loc_1C1319F: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(4), var_170, var_144, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='", var_120)
  loc_1C131A7: -1 = var_170.Text
  loc_1C131C0: unk_542AFA.Execute var_188 & var_144 & "' AND CONTRADOCID IS NULL", var_E6, Me.Txt
  loc_1C131F7: If (var_188.RecordCount = 1) Then
  loc_1C131FD:   var_C8 = "New Order"
  loc_1C13203: Else
  loc_1C1320A:   Set var_168 = Me.LblState
  loc_1C13218:   var_C8 = var_168.Caption
  loc_1C1321E: End If
  loc_1C13234: unk_542AFA.Execute var_88, var_120, -1
  loc_1C1323F: Set var_B4 = var_168
  loc_1C1325E: unk_542AFA.Execute "SELECT KOTPrinting FROM Enviro", var_120, -1
  loc_1C13269: Set var_D0 = var_168
  loc_1C13281: var_168 = var_B4.Fields
  loc_1C132AB: If (Proc_6_38_E69628(CVar(var_168.Item("ContraDocId")), var_168) <> vbNullString) Then
  loc_1C132C7:   MsgBox("Sale Bill Already Generated !!", &H40, var_140, var_164, var_184)
  loc_1C132D7:   Exit Sub
  loc_1C132D8: End If
  loc_1C132E7: var_168 = var_D0.Fields
  loc_1C132F7: var_120 = CVar(var_168.Item("KOTPrinting")) 'Address
  loc_1C13322: If (Trim(CVar(Proc_6_38_E69628(var_120))) = vbNullString) Then
  loc_1C13339:   var_144 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_1C13349:   unk_542AFA.Execute var_144 & "MK'", var_120, -1
  loc_1C13354:   Set var_BC = var_168
  loc_1C13367: Else
  loc_1C1337B:   var_140 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C133C2:   unk_542AFA.Execute CStr(var_140 & Me.Fields.Item("SearchCode").Value & "'"), var_19C, -1
  loc_1C133CD:   Set var_BC = var_188
  loc_1C133E9:   ' Referenced from:   1C18A79
  loc_1C133E9: End If
  loc_1C133F8: If Not(var_BC.EOF) Then
  loc_1C13445:   If (Trim(CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("KOTPrinting")), var_188))) = "Seperate for All Kitchen") Then
  loc_1C1344F:     var_140 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C134C8:     var_1DC = var_140 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C13504:     var_8C = CStr(var_1DC & var_BC.Fields.Item("Code").Value & "'")
  loc_1C13532:   Else
  loc_1C13539:     var_140 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C13551:     var_168 = Me.Fields
  loc_1C13561:     var_120 = var_168.Item("SearchCode").Value
  loc_1C13577:     var_8C = CStr(var_140 & var_120 & "'")
  loc_1C1358C:   End If
  loc_1C135A2:   unk_542AFA.Execute var_8C, var_120, -1
  loc_1C135AD:   Set var_B8 = var_168
  loc_1C135BC:   var_16C = var_B8.RecordCount
  loc_1C135CA:   If (var_16C > 0) Then
  loc_1C135DC:     var_168 = var_BC.Fields
  loc_1C135FB:     var_25C = Trim(CVar(var_168.Item("PrintType"))) 'Variant
  loc_1C13610:     If (var_25C = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1C13620:       Call Proc_229_73_EFA61C(New, var_168, var_168)
  loc_1C13628:       Set var_D4 = var_168
  loc_1C1362E:       Me.Recordset15.MoveFirst
  loc_1C13633:       ' Referenced from: 1C143C1
  loc_1C13642:       If Not(var_B4.EOF) Then
  loc_1C13647:         var_92 = 0
  loc_1C1365E:         var_168 = var_B4.Fields
  loc_1C1376F:         var_2FC = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_168.Item("ShortName")), 1, var_92))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN")), var_168) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C13778:         var_90 = CStr(var_2FC)
  loc_1C137BC:         If (var_92 = 0) Then
  loc_1C137C2:           var_1E4 = vbNullString
  loc_1C137DD:           Call Proc_229_74_F156A0(var_D4, vbNullString, vbNullString)
  loc_1C13819:           var_C0 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1C13850:           var_140 = CVar(Me.LblRest.Caption) 'String
  loc_1C13853:           var_164 = (Space(1) + var_140)
  loc_1C13868:           Call Proc_229_74_F156A0(var_D4, vbNullString, CStr(Trim(CVar(Proc_6_38_E69628(CVar(Me.LblRest.Item("ShortName")), 1, var_92)))))
  loc_1C1389A:           Call Proc_229_74_F156A0(var_D4, vbNullString, var_90, vbNullString)
  loc_1C138C9:           Call Proc_229_74_F156A0(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C138FD:           Proc_6_39_E7D3A0(var_140, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C13931:           var_1E4 = vbNullString
  loc_1C1393A:           Call Proc_229_74_F156A0(var_D4, var_1E4, " TOKEN No.   : " & Proc_6_45_EADFB8(CStr(var_140), &HA, vbNullString))
  loc_1C139F6:           var_308 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")), " TOKEN Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1C13A0A:           Call Proc_229_74_F156A0(var_D4, vbNullString, " TOKEN Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC) & " " & var_308)
  loc_1C13A51:           var_170 = var_B4.Fields.Item("Remarks")
  loc_1C13A9C:           Call Proc_229_74_F156A0(var_D4, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_170), vbNullString), &H1E))
  loc_1C13ACE:           Set var_168 = Me.Label1
  loc_1C13AD4:           Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_170)
  loc_1C13B3F:           var_304 = vbNullString
  loc_1C13B4E:           var_19C = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_170))), &HA)))
  loc_1C13B57:           var_1AC = (Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_168.Item("ShortName")), 1, &H12))), 1, 3) + ": ")
  loc_1C13B5E:           var_1DC = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1C13B61:           var_21C = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_168.Item("ShortName")), 1, &H12))), 1, 3)) + var_1DC)
  loc_1C13B76:           Call Proc_229_74_F156A0(var_D4, vbNullString, CStr("* NC LOT *"))
  loc_1C13BAD:           var_174 = vbNullString
  loc_1C13BC2:           Call Proc_229_74_F156A0(var_D4, vbNullString, var_C0)
  loc_1C13BCE:         End If
  loc_1C13BF4:         var_164 = (var_174 + CVar(Proc_6_45_EADFB8("ITEM NAME", &H19, Space(1))))
  loc_1C13C08:         var_19C = (Trim(CVar(var_170)) + Space(1))
  loc_1C13C1F:         var_1AC = CVar(Proc_6_52_EAE084("Qty", 6, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_168.Item("ShortName")), 1, &H12))), 1, 3))) 'String
  loc_1C13C22:         var_1CC = (var_304 + var_1AC)
  loc_1C13C27:         var_AC = CStr(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C13C45:         var_174 = vbNullString
  loc_1C13C5A:         Call Proc_229_74_F156A0(var_D4, vbNullString, var_AC)
  loc_1C13C69:         var_174 = vbNullString
  loc_1C13C7E:         Call Proc_229_74_F156A0(var_D4, vbNullString, var_C0)
  loc_1C13C90:         var_92 = (var_92 + 4)
  loc_1C13C96:         var_B8.MoveFirst
  loc_1C13C9B:         ' Referenced from: 1C1401C
  loc_1C13CAA:         If Not(var_B8.EOF) Then
  loc_1C13CE3:           var_188 = var_B8.Fields
  loc_1C13CFA:           Proc_6_39_E7D3A0(var_1DC, CVar(var_188.Item("qty")), &H12)
  loc_1C13D25:           var_1BC = "Cancel"
  loc_1C13D5F:           var_1F4 = "Y"
  loc_1C13D9D:           var_184 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1C13DB1:           var_1AC = (Space(1) + Space(1))
  loc_1C13DCA:           var_27C = (var_174 + CVar(Proc_6_52_EAE084(CStr(Format(var_1DC, "0")), 3, var_1AC)))
  loc_1C13DE0:           var_34C = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item(var_1BC).Value = var_1F4), "Void", vbNullString)), 5, CVar(var_B4.Fields.Item("NCTOKEN")))) 'String
  loc_1C13DE3:           var_35C = (var_174 + var_34C)
  loc_1C13E42:           Call Proc_229_74_F156A0(var_D4, vbNullString, CStr(var_35C))
  loc_1C13E54:           var_92 = (var_92 + 1)
  loc_1C13E90:           If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C13EC1:             var_304 = vbNullString
  loc_1C13EE8:             Call Proc_229_74_F156A0(var_D4, vbNullString, "(" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), vbNullString) & ")")
  loc_1C13F08:             var_92 = (var_92 + 1)
  loc_1C13F0B:           End If
  loc_1C13F15:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C13F30:             Call Proc_229_74_F156A0(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C13F5A:             Call Proc_229_74_F156A0(var_D4, vbNullString, " Contd.", vbNullString)
  loc_1C13F6E:             var_94 = (var_94 + 1)
  loc_1C13F8E:             Call Proc_229_74_F156A0(var_D4, vbNullString, var_90, vbNullString, 0)
  loc_1C13FB7:             Call Proc_229_74_F156A0(var_D4, vbNullString, var_C0, vbNullString, &H12)
  loc_1C13FDB:             Call Proc_229_74_F156A0(var_D4, vbNullString, var_AC, vbNullString)
  loc_1C13FFF:             Call Proc_229_74_F156A0(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C14011:             var_92 = (var_92 + 4)
  loc_1C14014:           End If
  loc_1C14017:           var_B8.MoveNext
  loc_1C1401C:           GoTo loc_1C13C9B
  loc_1C1401F:         End If
  loc_1C14029:         If (&H12 < (&H45 - var_A6)) Then
  loc_1C1402C:           ' Referenced from: 1C1406E
  loc_1C14036:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C14057:             Call Proc_229_74_F156A0(var_D4, vbNullString, vbNullString, vbNullString, &H12)
  loc_1C1406B:             var_92 = (var_92 + 1)
  loc_1C1406E:             GoTo loc_1C1402C
  loc_1C14071:           End If
  loc_1C14071:         End If
  loc_1C14089:         Call Proc_229_74_F156A0(var_D4, vbNullString, var_C0, vbNullString, &H12)
  loc_1C140D7:         var_304 = vbNullString
  loc_1C140F7:         Call Proc_229_74_F156A0(var_D4, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1C14152:         Call Proc_229_74_F156A0(var_D4, vbNullString, CStr(" ***  " & Trim(var_C8) & "  ***"), vbNullString)
  loc_1C141B1:         var_164 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C141BF:         unk_542AFA.Execute CStr(var_164), Space(1), -1
  loc_1C14220:         If (var_188.Fields.Item(0).Value > 1) Then
  loc_1C1424A:           Call Proc_229_74_F156A0(var_D4, vbNullString, " ***  " & "Changed TOKEN" & "  ***", vbNullString)
  loc_1C1425D:         Else
  loc_1C1426A:           var_130 = "Select Printed from TOKEN where docid='"
  loc_1C142A0:           var_154 = "'"
  loc_1C142B3:           unk_542AFA.Execute CStr(var_130 & Me.Fields.Item("SearchCode").Value & var_154), Space(1), -1
  loc_1C142DB:           var_110 = 0
  loc_1C14311:           If (Proc_6_38_E69628(CVar(var_188.Fields.Item(var_110)), var_188, var_188) = "Y") Then
  loc_1C1433B:             Call Proc_229_74_F156A0(var_D4, vbNullString, " ***  " & "DUPLICATE TOKEN" & "  ***", vbNullString)
  loc_1C1434E:           Else
  loc_1C1436C:             Call Proc_229_74_F156A0(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C1437A:           End If
  loc_1C1437A:         End If
  loc_1C1437F:         Set var_DC = Nothing
  loc_1C143A9:         Call Proc_229_74_F156A0(var_D4, vbNullString, "** " & MemVar_1F95220 & " **", vbNullString)
  loc_1C143BC:         var_B4.MoveNext
  loc_1C143C1:         GoTo loc_1C13633
  loc_1C143C4:       End If
  loc_1C143C7:       var_D8 = "WinTOKENPrint"
  loc_1C143EE:       Set var_168 = var_D4 
  loc_1C143F5:       CreateFieldDefFile(var_168, MemVar_1F950B4 & "\" & var_D8 & ".ttx", &HFF)
  loc_1C14437:       Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_D8 & ".RPT", var_110, var_168)
  loc_1C14442:       MemVar_1F951E8 = var_168
  loc_1C1446B:       Call 0.Method_arg_64 (var_168, CVar(var_168), var_130, var_154)
  loc_1C14473:       Call 0.Method_arg_2C (var_304, var_304)
  loc_1C144B4:       If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_1C14501:         If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C14530:           Call Proc_229_71_F0F928(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))
  loc_1C1453E:         End If
  loc_1C1453E:       End If
  loc_1C1454D:       var_130 = CVar(var_E8) 'Integer
  loc_1C1455C:       Call 0.Method_Me8 (False, var_130, var_154)
  loc_1C14566:       Set var_D4 = Nothing
  loc_1C1456C:     Else
  loc_1C14577:       If (var_25C = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1C1457D:         var_B4.MoveFirst
  loc_1C14582:         ' Referenced from:   1C15356
  loc_1C14591:         If Not(var_B4.EOF) Then
  loc_1C14597:           var_110 = "ShortName"
  loc_1C145C7:           var_184 = 3
  loc_1C145EA:           var_1BC = "NCTOKEN"
  loc_1C145F6:           var_188 = var_B4.Fields
  loc_1C145FE:           var_18C = var_188.Item(var_1BC)
  loc_1C14633:           var_1F4 = (Proc_6_38_E69628(CVar(var_18C), var_1F4) = "Y")
  loc_1C146A0:           var_154 = "LAU"
  loc_1C146AA:           var_2EC = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item(var_110)), var_1BC))), 1, var_184)) = var_154) 'Variant
  loc_1C146B4:           var_2FC = IIf(var_2EC, IIf(var_1F4, "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C146BD:           var_90 = CStr(var_2FC)
  loc_1C146FE:           var_D8 = "TOKENPrint"
  loc_1C14725:           Set var_168 = var_B8 
  loc_1C1472C:           CreateFieldDefFile(var_168, MemVar_1F950B4 & "\" & var_D8 & ".ttx")
  loc_1C14738:           Set var_B8 = var_168
  loc_1C1476E:           Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_D8 & ".RPT", var_110, var_168)
  loc_1C14779:           MemVar_1F951E8 = var_168
  loc_1C147A2:           Call 0.Method_arg_64 (var_168, CVar(var_B8), var_130)
  loc_1C147AA:           Call 0.Method_arg_2C (var_154, &HFF)
  loc_1C147B8:           Call 0.Method_arg_150 (var_168)
  loc_1C14805:           var_164 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C14813:           unk_542AFA.Execute CStr(var_164), var_184, -1
  loc_1C14874:           If (var_188.Fields.Item(0).Value > 1) Then
  loc_1C1487A:             var_CC = "Changed TOKEN"
  loc_1C14880:           Else
  loc_1C148D6:             unk_542AFA.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_184, -1
  loc_1C1490A:             var_168 = var_188.Fields
  loc_1C14912:             var_170 = var_168.Item(0)
  loc_1C14923:             var_144 = Proc_6_38_E69628(CVar(var_170), var_188)
  loc_1C14934:             If (var_144 = "Y") Then
  loc_1C1493A:               var_CC = "DUPLICATE TOKEN"
  loc_1C14940:             Else
  loc_1C14943:               var_CC = vbNullString
  loc_1C14946:             End If
  loc_1C14946:           End If
  loc_1C1494B:           Set var_DC = Nothing
  loc_1C1495F:           Call 0.Method_arg_90 (var_168, var_16C, var_AE)
  loc_1C14967:           Call 0.Method_arg_24 (1)
  loc_1C14973:           For var_360 =  To CInt(var_16C):   var_188 = var_360 'Integer
  loc_1C1498C:             Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C14994:             Call 0.Method_arg_20 (var_170)
  loc_1C1499C:             Call 0.Method_arg_30 (var_144)
  loc_1C149B2:             var_370 = Ucase(CVar(var_144)) 'Variant
  loc_1C149E2:             If (var_370 = Ucase("comp_name")) Then
  loc_1C14A06:               Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C14A0E:               Call 0.Method_arg_20 (var_170)
  loc_1C14A16:               Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1C14A2C:             Else
  loc_1C14A4E:               If (var_370 = Ucase("comp_add1")) Then
  loc_1C14A72:                 Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C14A7A:                 Call 0.Method_arg_20 (var_170)
  loc_1C14A82:                 Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1C14A98:               Else
  loc_1C14ABA:                 If (var_370 = Ucase("comp_pin")) Then
  loc_1C14ADE:                   Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C14AE6:                   Call 0.Method_arg_20 (var_170)
  loc_1C14AEE:                   Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1C14B04:                 Else
  loc_1C14B26:                   If (var_370 = Ucase("comp_GSTIN")) Then
  loc_1C14B4A:                     Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C14B52:                     Call 0.Method_arg_20 (var_170)
  loc_1C14B5A:                     Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1C14B70:                   Else
  loc_1C14B92:                     If (var_370 = Ucase("RestName")) Then
  loc_1C14B9F:                       Set var_168 = Me.LblRest
  loc_1C14BC8:                       Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C14BD0:                       Call 0.Method_arg_20 (var_188)
  loc_1C14BD8:                       Call 0.Method_arg_38 ("'" & var_168.Caption & "'")
  loc_1C14BF2:                     Else
  loc_1C14C14:                       If (var_370 = Ucase("mTitle")) Then
  loc_1C14C38:                         Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C14C40:                         Call 0.Method_arg_20 (var_170)
  loc_1C14C48:                         Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_1C14C5E:                       Else
  loc_1C14C66:                         var_120 = "Header1"
  loc_1C14C80:                         If (var_370 = Ucase(var_120)) Then
  loc_1C14C8E:                           Proc_6_17_EAAE40(var_120)
  loc_1C14CAA:                           Call 0.Method_arg_90 (var_168, CLng(var_AE), var_170)
  loc_1C14CB2:                           Call 0.Method_arg_20 (CStr(var_120))
  loc_1C14CBA:                           Call 0.Method_arg_38 (var_F0)
  loc_1C14CCF:                         Else
  loc_1C14CD7:                           var_120 = "Header2"
  loc_1C14CF1:                           If (var_370 = Ucase(var_120)) Then
  loc_1C14CFF:                             Proc_6_17_EAAE40(var_120)
  loc_1C14D1B:                             Call 0.Method_arg_90 (var_168, CLng(var_AE), var_170)
  loc_1C14D23:                             Call 0.Method_arg_20 (CStr(var_120))
  loc_1C14D2B:                             Call 0.Method_arg_38 (var_F4)
  loc_1C14D40:                           Else
  loc_1C14D48:                             var_120 = "Header3"
  loc_1C14D62:                             If (var_370 = Ucase(var_120)) Then
  loc_1C14D70:                               Proc_6_17_EAAE40(var_120)
  loc_1C14D8C:                               Call 0.Method_arg_90 (var_168, CLng(var_AE), var_170)
  loc_1C14D94:                               Call 0.Method_arg_20 (CStr(var_120))
  loc_1C14D9C:                               Call 0.Method_arg_38 (var_F8)
  loc_1C14DB1:                             Else
  loc_1C14DB9:                               var_120 = "Header4"
  loc_1C14DD3:                               If (var_370 = Ucase(var_120)) Then
  loc_1C14DE1:                                 Proc_6_17_EAAE40(var_120)
  loc_1C14DFD:                                 Call 0.Method_arg_90 (var_168, CLng(var_AE), var_170)
  loc_1C14E05:                                 Call 0.Method_arg_20 (CStr(var_120))
  loc_1C14E0D:                                 Call 0.Method_arg_38 (var_FC)
  loc_1C14E22:                               Else
  loc_1C14E33:                                 var_140 = Ucase("TOKENNo")
  loc_1C14E44:                                 If (var_370 = var_140) Then
  loc_1C14E72:                                   Proc_6_39_E7D3A0(var_140, CVar(var_B4.Fields.Item("VNo")))
  loc_1C14E7E:                                   var_154 = "'"
  loc_1C14E9B:                                   Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C14EA3:                                   Call 0.Method_arg_20 (var_18C)
  loc_1C14EAB:                                   Call 0.Method_arg_38 (CStr("'" & var_140 & var_154))
  loc_1C14ECA:                                 Else
  loc_1C14EEC:                                   If (var_370 = Ucase("TOKENDate")) Then
  loc_1C14F38:                                     Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C14F40:                                     Call 0.Method_arg_20 (var_18C)
  loc_1C14F48:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))) & "'")
  loc_1C14F65:                                   Else
  loc_1C14F87:                                     If (var_370 = Ucase("TOKENTime")) Then
  loc_1C14FD3:                                       Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C14FDB:                                       Call 0.Method_arg_20 (var_18C)
  loc_1C14FE3:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))) & "'")
  loc_1C15000:                                     Else
  loc_1C15022:                                       If (var_370 = Ucase("Remarks")) Then
  loc_1C1503F:                                         var_170 = var_B4.Fields.Item("Remarks")
  loc_1C1506E:                                         Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C15076:                                         Call 0.Method_arg_20 (var_18C)
  loc_1C1507E:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_170)) & "'")
  loc_1C1509B:                                       Else
  loc_1C150BD:                                         If (var_370 = Ucase("TableTitle")) Then
  loc_1C150CE:                                           Set var_168 = Me.Label1
  loc_1C150D4:                                           Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_170)
  loc_1C1510C:                                           Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C15114:                                           Call 0.Method_arg_20 (var_18C)
  loc_1C1511C:                                           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_170)) & "'"))
  loc_1C1513B:                                         Else
  loc_1C1515D:                                           If (var_370 = Ucase("TableNo")) Then
  loc_1C151A9:                                             Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C151B1:                                             Call 0.Method_arg_20 (var_18C)
  loc_1C151B9:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))) & "'")
  loc_1C151D6:                                           Else
  loc_1C151F8:                                             If (var_370 = Ucase("Steward")) Then
  loc_1C1520D:                                               var_168 = var_B4.Fields
  loc_1C15215:                                               var_170 = var_168.Item("WaiterName")
  loc_1C15244:                                               Call 0.Method_arg_90 (var_188, CLng(var_AE))
  loc_1C1524C:                                               Call 0.Method_arg_20 (var_18C)
  loc_1C15254:                                               Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_170)) & "'")
  loc_1C15271:                                             Else
  loc_1C15293:                                               If (var_370 = Ucase("TOKENStatus")) Then
  loc_1C152B7:                                                 Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C152BF:                                                 Call 0.Method_arg_20 (var_170)
  loc_1C152C7:                                                 Call 0.Method_arg_38 ("'" & var_C8 & "'")
  loc_1C152DD:                                               Else
  loc_1C152FF:                                                 If (var_370 = Ucase("TOKENRemark")) Then
  loc_1C15323:                                                   Call 0.Method_arg_90 (var_168, CLng(var_AE))
  loc_1C1532B:                                                   Call 0.Method_arg_20 (var_170)
  loc_1C15333:                                                   Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1C15346:                                                 End If
  loc_1C15346:                                               End If
  loc_1C15346:                                             End If
  loc_1C15346:                                           End If
  loc_1C15346:                                         End If
  loc_1C15346:                                       End If
  loc_1C15346:                                     End If
  loc_1C15346:                                   End If
  loc_1C15346:                                 End If
  loc_1C15346:                               End If
  loc_1C15346:                             End If
  loc_1C15346:                           End If
  loc_1C15346:                         End If
  loc_1C15346:                       End If
  loc_1C15346:                     End If
  loc_1C15346:                   End If
  loc_1C15346:                 End If
  loc_1C15346:               End If
  loc_1C15346:             End If
  loc_1C15349:           Next var_360 'Integer
  loc_1C15351:           var_B4.MoveNext
  loc_1C15356:           GoTo loc_1C14582
  loc_1C15359:         End If
  loc_1C15381:         var_144 = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")))
  loc_1C15392:         If (var_144 <> vbNullString) Then
  loc_1C153DF:           If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C1540E:             Call Proc_229_71_F0F928(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))
  loc_1C1541C:           End If
  loc_1C1541C:         End If
  loc_1C15422:         If (var_E6 <= 0) Then
  loc_1C1542B:           Call 0.Method_arg_50 (var_144)
  loc_1C15435:           Set var_170 = Nothing
  loc_1C1544F:           Set var_168 = MemVar_1F951E8 
  loc_1C1545B:           Proc_6_99_1484404(var_168, 0, var_144)
  loc_1C15466:           MemVar_1F951E8 = var_168
  loc_1C15477:         Else
  loc_1C15495:           Call 0.Method_Me8 (False, CVar(var_E6), var_154, var_1BC)
  loc_1C1549A:         End If
  loc_1C1549D:       Else
  loc_1C154A8:         If (var_25C = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1C154AD:           Close 1
  loc_1C154D4:           Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C154E4:           var_B4.MoveFirst
  loc_1C154E9:           ' Referenced from:     1C1638C
  loc_1C154F8:           If Not(var_B4.EOF) Then
  loc_1C154FD:             var_92 = 0
  loc_1C15538:             var_184 = 3
  loc_1C155D8:             var_300 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN")), &HFF)
  loc_1C155F4:             var_174 = var_300
  loc_1C1561B:             var_2EC = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92))), 1, var_184)) = "LAU") 'Variant
  loc_1C15625:             var_2FC = IIf(var_2EC, IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN")), (Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN")), var_1F4) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_174 = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C1562E:             var_90 = CStr(var_2FC)
  loc_1C15672:             If (var_92 = 0) Then
  loc_1C15677:               Print 1
  loc_1C156AB:               var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C156BC:               If (var_F0 <> vbNullString) Then
  loc_1C156E5:                 var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1C156EB:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C156FD:               End If
  loc_1C15705:               If (var_F4 <> vbNullString) Then
  loc_1C1572E:                 var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1C15734:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C15746:               End If
  loc_1C1574E:               If (var_F8 <> vbNullString) Then
  loc_1C15777:                 var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1C1577D:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C1578F:               End If
  loc_1C15797:               If (var_FC <> vbNullString) Then
  loc_1C157C0:                 var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H28)))
  loc_1C157C6:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C157D8:               End If
  loc_1C157DA:               Print 1
  loc_1C1580A:               Call Proc_229_89_EFB31C(Me.LblRest.Caption, "D", &H28)
  loc_1C15814:               Print 1, var_300
  loc_1C1583A:               Call Proc_229_89_EFB31C(var_90, "D", &H28)
  loc_1C15844:               Print 1, var_174
  loc_1C15858:               Print 1
  loc_1C15860:               Print 1
  loc_1C15899:               Proc_6_39_E7D3A0(var_184, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C158BB:               var_140 = (Chr(&HF) + "TOKEN No.   :     ")
  loc_1C158C5:               var_1AC = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_184), &HA, Proc_6_45_EADFB8(CStr(var_184), &HA, var_174))))
  loc_1C158CB:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, var_184))
  loc_1C1597D:               var_140 = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_1C15987:               var_19C = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_300), &HC)))
  loc_1C15990:               var_1AC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_300), &HC))), &HA, Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_300), &HC))), &HA, var_174))) + " ")
  loc_1C1599A:               var_21C = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_300), &HC)))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C159A0:               Print 1, "* NC LOT *"
  loc_1C159F5:               var_170 = var_B4.Fields.Item("Remarks")
  loc_1C15A32:               var_140 = (Chr(&HF) + "Remarks :     ")
  loc_1C15A3C:               var_19C = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_170)), &H32)))
  loc_1C15A43:               var_1CC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_170)), &H32))), &HA, Proc_6_38_E69628(CVar(var_170)))) + Chr(&H12))
  loc_1C15A49:               Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C15A82:               Set var_168 = Me.Label1
  loc_1C15A88:               Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_170)
  loc_1C15AD9:               var_300 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C15AF9:               var_19C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_170))), &HA)))
  loc_1C15B02:               var_1AC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_170))), &HA))), &HA, Proc_6_38_E69628(CVar(var_170)))) + ":     ")
  loc_1C15B0C:               var_21C = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_300, 5)))
  loc_1C15B12:               Print 1, "* NC LOT *"
  loc_1C15B57:               var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C15B5D:               Print 1, CVar(var_170)
  loc_1C15B6A:             End If
  loc_1C15B90:             var_164 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1C15B9C:             var_174 = "Qty"
  loc_1C15BAA:             var_19C = (Trim(CVar(var_170)) + CVar(Proc_6_52_EAE084(var_174, 6)))
  loc_1C15BAF:             var_AC = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_174, 6))), &HA, var_174)))
  loc_1C15BDC:             var_140 = (Chr(&HF) + CVar(var_AC))
  loc_1C15BE2:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1C15C05:             var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C15C0B:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1C15C1E:             var_92 = (var_92 + 4)
  loc_1C15C24:             var_B8.MoveFirst
  loc_1C15C29:             ' Referenced from:     1C15FCA
  loc_1C15C38:             If Not(var_B8.EOF) Then
  loc_1C15C71:               var_188 = var_B8.Fields
  loc_1C15C88:               Proc_6_39_E7D3A0(Chr(&H12), CVar(var_188.Item("qty")))
  loc_1C15D2B:               var_184 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1C15D44:               var_22C = (1 + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084(var_174, 6)))))
  loc_1C15D5A:               var_2FC = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1C15D5D:               var_338 = (&H12 + var_2FC)
  loc_1C15DB6:               var_140 = (Chr(&HF) + CVar(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1C15DBC:               Print 1, Space(3)
  loc_1C15DCF:               var_92 = (var_92 + 1)
  loc_1C15E0B:               If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C15E4E:                 var_140 = (Chr(&HF) + "(")
  loc_1C15E58:                 var_19C = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1C15E61:                 var_1AC = (CVar(var_188.Item("qty")) + ")")
  loc_1C15E67:                 Print 1, Chr(&H12)
  loc_1C15E88:                 var_92 = (var_92 + 1)
  loc_1C15E8B:               End If
  loc_1C15E95:               If (&H12 = (&H45 - var_A6)) Then
  loc_1C15EAE:                 var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C15EB4:                 Print 1, Space(3)
  loc_1C15EC6:                 Print 1, "Contd."
  loc_1C15EDE:                 Print 1, Chr(&HC)
  loc_1C15EED:                 var_94 = (var_94 + 1)
  loc_1C15F03:                 Call Proc_229_90_12027B8(1, 0, &H28, var_30A)
  loc_1C15F22:                 Call Proc_229_89_EFB31C(var_90, "B", &H28, var_174, var_30A)
  loc_1C15F2C:                 Print 1, var_174
  loc_1C15F3B:                 var_92 = &H12
  loc_1C15F54:                 var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C15F5A:                 Print 1, Space(3)
  loc_1C15F7D:                 var_140 = (Chr(&HF) + CVar(var_AC))
  loc_1C15F83:                 Print 1, Space(3)
  loc_1C15FA6:                 var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C15FAC:                 Print 1, Space(3)
  loc_1C15FBF:                 var_92 = (var_92 + 4)
  loc_1C15FC2:               End If
  loc_1C15FC5:               var_B8.MoveNext
  loc_1C15FCA:               GoTo loc_1C15C29
  loc_1C15FCD:             End If
  loc_1C15FD7:             If (var_92 < (&H45 - var_A6)) Then
  loc_1C15FDA:               ' Referenced from:     1C15FFB
  loc_1C15FE4:               If (var_92 = (&H45 - var_A6)) Then
  loc_1C15FEC:                 Print 1, vbNullString
  loc_1C15FF8:                 var_92 = (var_92 + 1)
  loc_1C15FFB:                 GoTo loc_1C15FDA
  loc_1C15FFE:               End If
  loc_1C15FFE:             End If
  loc_1C16014:             var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C1601A:             Print 1, Space(3)
  loc_1C1607B:             var_140 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1C16082:             var_184 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1C16085:             var_19C = (Space(3) + var_184)
  loc_1C1608B:             Print 1, CVar(var_188.Item("qty"))
  loc_1C160CF:             var_140 = (Chr(&HF) + "***  ")
  loc_1C160D6:             var_184 = Space(3) & Trim(var_C8) 
  loc_1C160E5:             Print 1, var_184 & "  ***"
  loc_1C16140:             var_164 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C1614E:             unk_542AFA.Execute CStr(var_164), var_184, -1
  loc_1C161AF:             If (var_188.Fields.Item(0).Value > 1) Then
  loc_1C161E0:               Call Proc_229_89_EFB31C(Proc_6_45_EADFB8("Changed TOKEN", &H14, var_188), "D", &H28, var_300)
  loc_1C161EA:               Print 1, var_300
  loc_1C16200:             Else
  loc_1C16256:               unk_542AFA.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_184, -1
  loc_1C162B4:               If (Proc_6_38_E69628(CVar(var_188.Fields.Item(0)), var_188, 1) = "Y") Then
  loc_1C162CA:                 var_304 = Proc_6_45_EADFB8("DUPLICATE TOKEN", &H14)
  loc_1C162E5:                 Call Proc_229_89_EFB31C(var_304, "D", &H28)
  loc_1C162EF:                 Print 1, var_300
  loc_1C16305:               Else
  loc_1C16307:                 Print 1
  loc_1C1630D:               End If
  loc_1C1630D:             End If
  loc_1C16312:             Set var_DC = Nothing
  loc_1C1632A:             var_140 = (Chr(&HF) + "** ")
  loc_1C16334:             var_164 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1C1633D:             var_184 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C16343:             Print 1, var_184
  loc_1C16357:             var_B4.MoveNext
  loc_1C1635E:             Print 1
  loc_1C16366:             Print 1
  loc_1C1636E:             Print 1
  loc_1C16376:             Print 1
  loc_1C1637E:             Print 1
  loc_1C16386:             Print 1
  loc_1C1638C:             GoTo loc_1C154E9
  loc_1C1638F:           End If
  loc_1C16391:           Close 1
  loc_1C163CC:           If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), var_300) <> vbNullString) Then
  loc_1C163F4:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C1644C:             var_164 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C16452:             Print 1, var_164
  loc_1C16472:           Else
  loc_1C16497:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C164CE:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1C164DF:           End If
  loc_1C164E1:           Close 1
  loc_1C164EB:           If (MemVar_1F953BC = "Y") Then
  loc_1C1651D:             var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C1652E:           Else
  loc_1C16536:             For var_374 = 1 To var_E8:       var_EA = var_374 'Integer
  loc_1C1656B:               var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C1657C:             Next var_374 'Integer
  loc_1C16581:           End If
  loc_1C16584:         Else
  loc_1C1658F:           If (var_25C = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1C16594:             Close 1
  loc_1C165BB:             Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C165CB:             var_B4.MoveFirst
  loc_1C165D0:             ' Referenced from:       1C174C3
  loc_1C165DF:             If Not(var_B4.EOF) Then
  loc_1C1661F:               var_184 = 3
  loc_1C16667:               var_1E4 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN")))
  loc_1C16702:               var_2EC = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_184)) = "LAU") 'Variant
  loc_1C1670C:               var_2FC = IIf(var_2EC, IIf((var_1E4 = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C16715:               var_90 = CStr(var_2FC)
  loc_1C16759:               If (0 = 0) Then
  loc_1C1675E:                 Print 1
  loc_1C16792:                 var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C167A3:                 If (var_F0 <> vbNullString) Then
  loc_1C167CC:                   var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1C167D2:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C167E4:                 End If
  loc_1C167EC:                 If (var_F4 <> vbNullString) Then
  loc_1C16815:                   var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1C1681B:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C1682D:                 End If
  loc_1C16835:                 If (var_F8 <> vbNullString) Then
  loc_1C1685E:                   var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1C16864:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C16876:                 End If
  loc_1C1687E:                 If (var_FC <> vbNullString) Then
  loc_1C168A7:                   var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H28)))
  loc_1C168AD:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C168BF:                 End If
  loc_1C168C1:                 Print 1
  loc_1C16905:                 Call Proc_229_89_EFB31C(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1C1690F:                 Print 1, var_304
  loc_1C1694D:                 Call Proc_229_89_EFB31C(Proc_6_45_EADFB8(var_90, &H14), "D", &H28)
  loc_1C16957:                 Print 1, var_1E4
  loc_1C1696F:                 Print 1
  loc_1C16977:                 Print 1
  loc_1C169B0:                 Proc_6_39_E7D3A0(var_184, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C169D2:                 var_140 = (Chr(&HF) + "TOKEN No.   :       ")
  loc_1C169DC:                 var_1AC = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_184), &HA, var_1E4)))
  loc_1C169E2:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_184))
  loc_1C16A94:                 var_140 = (Chr(&HF) + "TOKEN Dt.   :       ")
  loc_1C16A9B:                 var_184 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")))), &HC)) 'String
  loc_1C16A9E:                 var_19C = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + var_184)
  loc_1C16AA7:                 var_1AC = (CVar(Proc_6_45_EADFB8(CStr(var_184), &HA, Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")))))) + " ")
  loc_1C16AB1:                 var_21C = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_184)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C16AB7:                 Print 1, "* NC LOT *"
  loc_1C16B0C:                 var_170 = var_B4.Fields.Item("Remarks")
  loc_1C16B49:                 var_140 = (Chr(&HF) + "Remarks :       ")
  loc_1C16B53:                 var_19C = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_170)), &H32)))
  loc_1C16B5A:                 var_1CC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_170)), &H32))), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_170)), &H32))) + Chr(&H12))
  loc_1C16B60:                 Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C16B99:                 Set var_168 = Me.Label1
  loc_1C16B9F:                 Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_170)
  loc_1C16BF0:                 var_300 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C16C10:                 var_19C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_170))), &HA)))
  loc_1C16C19:                 var_1AC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_170))), &HA))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_170))), &HA))) + ":       ")
  loc_1C16C23:                 var_21C = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_300, 5)))
  loc_1C16C29:                 Print 1, "* NC LOT *"
  loc_1C16C6E:                 var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C16C74:                 Print 1, CVar(var_170)
  loc_1C16C81:               End If
  loc_1C16CA7:               var_164 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1C16CB3:               var_174 = "Qty"
  loc_1C16CC1:               var_19C = (Trim(CVar(var_170)) + CVar(Proc_6_52_EAE084(var_174, 6)))
  loc_1C16CC6:               var_AC = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_174, 6))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_170))), &HA))))
  loc_1C16CF3:               var_140 = (Chr(&HF) + CVar(var_AC))
  loc_1C16CF9:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1C16D1C:               var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C16D22:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1C16D35:               var_92 = (var_92 + 4)
  loc_1C16D3B:               var_B8.MoveFirst
  loc_1C16D40:               ' Referenced from:       1C170E1
  loc_1C16D4F:               If Not(var_B8.EOF) Then
  loc_1C16D88:                 var_188 = var_B8.Fields
  loc_1C16D9F:                 Proc_6_39_E7D3A0(Chr(&H12), CVar(var_188.Item("qty")))
  loc_1C16E42:                 var_184 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1C16E5B:                 var_22C = (1 + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084(var_174, 6)))))
  loc_1C16E71:                 var_2FC = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1C16E74:                 var_338 = (&H12 + var_2FC)
  loc_1C16ECD:                 var_140 = (Chr(&HF) + CVar(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1C16ED3:                 Print 1, Space(3)
  loc_1C16EE6:                 var_92 = (var_92 + 1)
  loc_1C16F22:                 If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C16F65:                   var_140 = (Chr(&HF) + "(")
  loc_1C16F6F:                   var_19C = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1C16F78:                   var_1AC = (CVar(var_188.Item("qty")) + ")")
  loc_1C16F7E:                   Print 1, Chr(&H12)
  loc_1C16F9F:                   var_92 = (var_92 + 1)
  loc_1C16FA2:                 End If
  loc_1C16FAC:                 If (&H12 = (&H45 - var_A6)) Then
  loc_1C16FC5:                   var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C16FCB:                   Print 1, Space(3)
  loc_1C16FDD:                   Print 1, "Contd."
  loc_1C16FF5:                   Print 1, Chr(&HC)
  loc_1C17004:                   var_94 = (var_94 + 1)
  loc_1C1701A:                   Call Proc_229_90_12027B8(1, 0, &H28, var_30A)
  loc_1C17039:                   Call Proc_229_89_EFB31C(var_90, "B", &H28, var_174, var_30A)
  loc_1C17043:                   Print 1, var_174
  loc_1C17052:                   var_92 = &H12
  loc_1C1706B:                   var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C17071:                   Print 1, Space(3)
  loc_1C17094:                   var_140 = (Chr(&HF) + CVar(var_AC))
  loc_1C1709A:                   Print 1, Space(3)
  loc_1C170BD:                   var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C170C3:                   Print 1, Space(3)
  loc_1C170D6:                   var_92 = (var_92 + 4)
  loc_1C170D9:                 End If
  loc_1C170DC:                 var_B8.MoveNext
  loc_1C170E1:                 GoTo loc_1C16D40
  loc_1C170E4:               End If
  loc_1C170EE:               If (var_92 < (&H45 - var_A6)) Then
  loc_1C170F1:                 ' Referenced from:       1C17112
  loc_1C170FB:                 If (var_92 = (&H45 - var_A6)) Then
  loc_1C17103:                   Print 1, vbNullString
  loc_1C1710F:                   var_92 = (var_92 + 1)
  loc_1C17112:                   GoTo loc_1C170F1
  loc_1C17115:                 End If
  loc_1C17115:               End If
  loc_1C1712B:               var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C17131:               Print 1, Space(3)
  loc_1C17187:               var_1E4 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)
  loc_1C17192:               var_140 = (Chr(&HF) + "Waiter Name  :       ")
  loc_1C1719C:               var_19C = (Space(3) + CVar(var_1E4))
  loc_1C171A2:               Print 1, CVar(var_188.Item("qty"))
  loc_1C171E6:               var_140 = (Chr(&HF) + "***  ")
  loc_1C171ED:               var_184 = Space(3) & Trim(var_C8) 
  loc_1C171FC:               Print 1, var_184 & "  ***"
  loc_1C17257:               var_164 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C17265:               unk_542AFA.Execute CStr(var_164), var_184, -1
  loc_1C172C6:               If (var_188.Fields.Item(0).Value > 1) Then
  loc_1C172F7:                 Call Proc_229_89_EFB31C(Proc_6_45_EADFB8("Changed TOKEN", &H14, var_188), "D", &H28, var_300)
  loc_1C17301:                 Print 1, var_300
  loc_1C17317:               Else
  loc_1C1736D:                 unk_542AFA.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_184, -1
  loc_1C173CB:                 If (Proc_6_38_E69628(CVar(var_188.Fields.Item(0)), var_188, 1) = "Y") Then
  loc_1C173FC:                   Call Proc_229_89_EFB31C(Proc_6_45_EADFB8("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1C17406:                   Print 1, var_300
  loc_1C1741C:                 Else
  loc_1C1741E:                   Print 1
  loc_1C17424:                 End If
  loc_1C17424:               End If
  loc_1C17429:               Set var_DC = Nothing
  loc_1C17441:               var_140 = (Chr(&HF) + "** ")
  loc_1C1744B:               var_164 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1C17454:               var_184 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C1745A:               Print 1, var_184
  loc_1C1746E:               var_B4.MoveNext
  loc_1C17475:               Print 1
  loc_1C1747D:               Print 1
  loc_1C17485:               Print 1
  loc_1C1748D:               Print 1
  loc_1C17495:               Print 1
  loc_1C1749D:               Print 1
  loc_1C174A5:               Print 1
  loc_1C174AD:               Print 1
  loc_1C174B5:               Print 1
  loc_1C174BD:               Print 1
  loc_1C174C3:               GoTo loc_1C165D0
  loc_1C174C6:             End If
  loc_1C174C8:             Close 1
  loc_1C17503:             If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), var_300) <> vbNullString) Then
  loc_1C1752B:               Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C17583:               var_164 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C17589:               Print 1, var_164
  loc_1C175A9:             Else
  loc_1C175CE:               Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C17605:               Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1C17616:             End If
  loc_1C17618:             Close 1
  loc_1C17622:             If (MemVar_1F953BC = "Y") Then
  loc_1C17654:               var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C17665:             Else
  loc_1C1766D:               For var_378 = 1 To var_E8:         var_EA = var_378 'Integer
  loc_1C176A2:                 var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C176B3:               Next var_378 'Integer
  loc_1C176B8:             End If
  loc_1C176BB:           Else
  loc_1C176C6:             If Not (var_25C = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1C176D4:               If (var_25C = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_1C176D7:               End If
  loc_1C176D9:               Close 1
  loc_1C17700:               Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C17710:               var_B4.MoveFirst
  loc_1C17715:               ' Referenced from:         1C187A2
  loc_1C17724:               If Not(var_B4.EOF) Then
  loc_1C17851:                 var_2FC = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C1785A:                 var_90 = CStr(var_2FC)
  loc_1C178C6:                 var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1C178D5:                 If (0 = 0) Then
  loc_1C178DA:                   Print 1
  loc_1C178E8:                   If (var_F0 <> vbNullString) Then
  loc_1C1791E:                     var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H2A)))
  loc_1C17925:                     var_19C = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C1792B:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C17941:                   End If
  loc_1C17949:                   If (var_F4 <> vbNullString) Then
  loc_1C1797F:                     var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H2A)))
  loc_1C17986:                     var_19C = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C1798C:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C179A2:                   End If
  loc_1C179AA:                   If (var_F8 <> vbNullString) Then
  loc_1C179E0:                     var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H2A)))
  loc_1C179E7:                     var_19C = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C179ED:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C17A03:                   End If
  loc_1C17A0B:                   If (var_FC <> vbNullString) Then
  loc_1C17A41:                     var_164 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H2A)))
  loc_1C17A48:                     var_19C = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C17A4E:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C17A64:                   End If
  loc_1C17A66:                   Print 1
  loc_1C17A95:                   var_19C = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1C17AD8:                   var_2DC = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1C17AEA:                   var_2FC = Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *") / 2)))
  loc_1C17B02:                   var_1DC = (Chr(&HF) + Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))))
  loc_1C17B09:                   var_24C = (CVar(var_B4.Fields.Item("NCTOKEN")) + Trim(CVar(Me.LblRest)))
  loc_1C17B10:                   var_338 = (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *") + var_2FC)
  loc_1C17B17:                   var_35C = (IIf((var_B8.Fields.Item(2).Value = (Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1C17B1D:                   Print 1, var_35C
  loc_1C17B6B:                   var_184 = (40 - Len(Trim(var_90)))
  loc_1C17B9E:                   var_24C = (40 - Len(Trim(var_90)))
  loc_1C17BB0:                   var_2AC = Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *") / 2)))
  loc_1C17BC8:                   var_1CC = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1C17BD2:                   var_1DC = (Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))) + CVar(var_90))
  loc_1C17BD9:                   var_2CC = (CVar(var_B4.Fields.Item("NCTOKEN")) + var_2AC)
  loc_1C17BE0:                   var_2EC = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1C17BE6:                   Print 1, (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *") / 2)
  loc_1C17C05:                   var_92 = &H12
  loc_1C17C48:                   var_184 = Trim(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name")), 40)))
  loc_1C17C54:                   var_1AC = (var_92 - Len(var_184))
  loc_1C17CC2:                   var_2CC = CVar(var_BC.Fields.Item("Name")) 'Address
  loc_1C17CDD:                   var_338 = (var_92 - Len(Trim(CVar(Proc_6_38_E69628(var_2CC, 40)))))
  loc_1C17D07:                   var_21C = (Chr(&HF) + Space(CLng((Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) / 2))))
  loc_1C17D0E:                   var_2AC = (Trim(var_90) + Trim(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name"))))))
  loc_1C17D15:                   var_388 = (var_2AC + Space(CLng((IIf((var_B8.Fields.Item("Name").Value = "Name"), "Void", vbNullString) / 2))))
  loc_1C17D1C:                   var_3A8 = (var_388 + Chr(&H12))
  loc_1C17D22:                   Print 1, var_3A8
  loc_1C17D58:                   Print 1
  loc_1C17D8A:                   var_164 = CVar(var_B4.Fields.Item("TokenNo")) 'Address
  loc_1C17D91:                   Proc_6_39_E7D3A0(var_184)
  loc_1C17DC0:                   var_140 = (Chr(&HF) + "TOKEN No.   :         ")
  loc_1C17DCA:                   var_1AC = (CVar(var_BC.Fields.Item("Name")) + CVar(Proc_6_45_EADFB8(CStr(var_184), &HA)))
  loc_1C17DD1:                   var_1DC = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1C17DD7:                   Print 1, Space(CLng((Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) / 2)))
  loc_1C17E43:                   var_300 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))), &HC)
  loc_1C17E9A:                   var_140 = (Chr(&HF) + "TOKEN Dt.   :         ")
  loc_1C17EA4:                   var_19C = (CVar(var_BC.Fields.Item("Name")) + CVar(var_300))
  loc_1C17EAD:                   var_1AC = (CVar(Proc_6_45_EADFB8(CStr(CVar(var_300)), &HA)) + " ")
  loc_1C17EB7:                   var_21C = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C17EBE:                   var_24C = (Trim(var_90) + Chr(&H12))
  loc_1C17EC4:                   Print 1, CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name"))))
  loc_1C17F5A:                   var_140 = (Chr(&HF) + "Remarks :         ")
  loc_1C17F64:                   var_19C = (CVar(var_BC.Fields.Item("Name")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H20)))
  loc_1C17F6B:                   var_1CC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H20))), &HA)) + Chr(&H12))
  loc_1C17F71:                   Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C17FB7:                   var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C17FBE:                   var_184 = (CVar(var_BC.Fields.Item("Name")) + Chr(&H12))
  loc_1C17FC4:                   Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Remarks"))), &H20))
  loc_1C17FD5:                 End If
  loc_1C17FFB:                 var_164 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Space(1))
  loc_1C18015:                 var_19C = (Chr(&H12) + CVar(Proc_6_52_EAE084("Qty", 7)))
  loc_1C18021:                 var_1AC = Space(1)
  loc_1C18029:                 var_1CC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 7))), &HA)) + var_1AC)
  loc_1C18043:                 var_21C = (CVar(var_B4.Fields.Item("VTIME")) + CVar(Proc_6_52_EAE084("Rate", 7)))
  loc_1C1808C:                 var_140 = (Chr(&HF) + CVar(CStr(Trim(var_90))))
  loc_1C18093:                 var_184 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Chr(&H12))
  loc_1C18099:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1C180CD:                 var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C180D4:                 var_184 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Chr(&H12))
  loc_1C180DA:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1C180F1:                 var_92 = (var_92 + 4)
  loc_1C180F7:                 var_B8.MoveFirst
  loc_1C180FC:                 ' Referenced from:         1C1840A
  loc_1C1810B:                 If Not(var_B8.EOF) Then
  loc_1C18144:                   var_188 = var_B8.Fields
  loc_1C1815B:                   Proc_6_39_E7D3A0(var_1AC, CVar(var_188.Item("qty")))
  loc_1C181A6:                   Proc_6_39_E7D3A0(var_2CC, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_1C18249:                   var_184 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H15, 1, 1)) + Space(1))
  loc_1C18262:                   var_22C = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1AC, "0.000")), 7, CVar(Proc_6_52_EAE084("Qty", 7)))))
  loc_1C18276:                   var_27C = (Chr(&H12) + Space(1))
  loc_1C1828C:                   var_2FC = CVar(Proc_6_52_EAE084(CStr(Format(var_2CC, "0.00")), 7, Trim(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Name"))))))) 'String
  loc_1C1828F:                   var_338 = (var_92 + var_2FC)
  loc_1C182A5:                   var_3D4 = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1C182A8:                   var_3E4 = (IIf((var_B8.Fields.Item("Rate").Value = "0.00"), "Void", vbNullString) + var_3D4)
  loc_1C18322:                   var_140 = (Chr(&HF) + CVar(CStr(var_3E4)))
  loc_1C18329:                   var_184 = (Space(1) + Chr(&H12))
  loc_1C1832F:                   Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1C18346:                   var_92 = (var_92 + 1)
  loc_1C18382:                   If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), var_92) <> vbNullString) Then
  loc_1C183C5:                     var_140 = (Chr(&HF) + "(")
  loc_1C183CF:                     var_19C = (Space(1) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1C183D8:                     var_1AC = (CVar(var_188.Item("qty")) + ")")
  loc_1C183DE:                     Print 1, var_1AC
  loc_1C183FF:                     var_92 = (var_92 + 1)
  loc_1C18402:                   End If
  loc_1C18405:                   var_B8.MoveNext
  loc_1C1840A:                   GoTo loc_1C180FC
  loc_1C1840D:                 End If
  loc_1C18430:                 var_140 = (Chr(&HF) + CVar(var_C0))
  loc_1C18437:                 var_184 = (Space(1) + Chr(&H12))
  loc_1C1843D:                 Print 1, CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description"))))
  loc_1C184A2:                 var_1AC = Chr(&H12)
  loc_1C184AF:                 var_140 = (Chr(&HF) + "User Name  :         ")
  loc_1C184B6:                 var_184 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_Name")), var_92), &H14)) 'String
  loc_1C184B9:                 var_19C = (Space(1) + var_184)
  loc_1C184C0:                 var_1CC = (CVar(var_188.Item("qty")) + var_1AC)
  loc_1C184C6:                 Print 1, "0.000"
  loc_1C18531:                 var_164 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C1853F:                 unk_542AFA.Execute CStr(var_164), var_184, -1
  loc_1C185A0:                 If (var_188.Fields.Item(0).Value > 1) Then
  loc_1C185D1:                   Call Proc_229_89_EFB31C(Proc_6_45_EADFB8("Changed TOKEN", &H14), "D", &H28)
  loc_1C185DB:                   Print 1, var_300
  loc_1C185F1:                 Else
  loc_1C18647:                   unk_542AFA.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_184, -1
  loc_1C186A5:                   If (Proc_6_38_E69628(CVar(var_188.Fields.Item(0)), var_188, var_300) = "Y") Then
  loc_1C186D6:                     Call Proc_229_89_EFB31C(Proc_6_45_EADFB8("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1C186E0:                     Print 1, var_300
  loc_1C186F6:                   Else
  loc_1C186F8:                     Print 1
  loc_1C186FE:                   End If
  loc_1C186FE:                 End If
  loc_1C18703:                 Set var_DC = Nothing
  loc_1C1871B:                 var_140 = (Chr(&HF) + "** ")
  loc_1C18725:                 var_164 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1C1872E:                 var_184 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C18734:                 Print 1, var_184
  loc_1C18748:                 var_B4.MoveNext
  loc_1C1874F:                 Print 1
  loc_1C18757:                 Print 1
  loc_1C1875F:                 Print 1
  loc_1C18767:                 Print 1
  loc_1C1878D:                 var_164 = (Chr(&H1B) + Chr(&H6D))
  loc_1C18793:                 Print 1, "Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1C187A2:                 GoTo loc_1C17715
  loc_1C187A5:               End If
  loc_1C187A7:               Close 1
  loc_1C187E2:               If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), var_300) <> vbNullString) Then
  loc_1C1880A:                 Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C18862:                 var_164 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C18868:                 Print 1, var_164
  loc_1C18888:               Else
  loc_1C188AD:                 Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C188E4:                 Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1C188F5:               End If
  loc_1C188F7:               Close 1
  loc_1C18901:               If (MemVar_1F953BC = "Y") Then
  loc_1C18933:                 var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C18944:               Else
  loc_1C1894C:                 For var_3E8 = 1 To var_E8:           var_EA = var_3E8 'Integer
  loc_1C18981:                   var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C18992:                 Next var_3E8 'Integer
  loc_1C18997:               End If
  loc_1C18997:             End If
  loc_1C18997:           End If
  loc_1C18997:         End If
  loc_1C18997:       End If
  loc_1C18997:     End If
  loc_1C189ED:     unk_542AFA.Execute CStr("UPDATE TOKEN SET PRINTED='Y' WHERE DOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_184, -1
  loc_1C18A0C:   Else
  loc_1C18A56:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, var_184, CVar(var_188.Item("qty")), var_1AC)
  loc_1C18A71:   End If
  loc_1C18A74:   var_BC.MoveNext
  loc_1C18A79:   GoTo loc_1C133E9
  loc_1C18A7C: End If
  loc_1C18A81: Set var_B4 = Nothing
  loc_1C18A89: Set var_B8 = Nothing
  loc_1C18A91: Set var_BC = Nothing
  loc_1C18A94: Exit Sub
  loc_1C18A95: ' Referenced from: 1C12D68
  loc_1C18A95: Proc_6_60_E63754(var_188)
  loc_1C18A9A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E58C00
  'Data Table: 542AE4
  Dim Me As Recordset15
  loc_E58BC7: Me.Requery -1
  loc_E58BD7: Me.Requery -1
  loc_E58BE7: Me.Requery -1
  loc_E58BF7: Me.Requery -1
  loc_E58BFC: Exit Sub
  loc_E58BFD: BranchFVar 27648
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1A9D4FC
  'Data Table: 542AE4
  Dim var_C0 As Variant
  Dim var_100 As Variant
  Dim var_A4 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_A8 As Variant
  Dim var_E0 As Variant
  Dim var_B0 As Variant
  Dim var_1A0 As String
  Dim unk_542AFA As Connection15
  Dim var_AC As Variant
  Dim MemVar_1F950EC As Double
  Dim var_1A8 As Variant
  Dim var_1AC As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_1B4 As String
  Dim var_1B8 As String
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_88 As Variant
  Dim var_14C As Double
  Dim var_1BC As String
  Dim var_19C As Variant
  Dim var_1DC As Variant
  Dim var_210 As Field20
  Dim var_254 As Variant
  Dim var_268 As Variant
  Dim var_2FC As Variant
  Dim var_2EC As Variant
  Dim var_300 As Variant
  Dim var_354 As Variant
  Dim var_3AC As Variant
  Dim var_39C As Variant
  Dim var_3B0 As Variant
  Dim var_404 As Variant
  Dim var_3F4 As Variant
  Dim var_408 As Variant
  Dim var_44C As Variant
  Dim var_460 As Variant
  Dim var_57C As Variant
  Dim var_56C As Fields15
  Dim var_580 As Variant
  Dim var_5C4 As Fields15
  Dim var_5D8 As Field20
  Dim var_630 As Variant
  Dim var_674 As Variant
  Dim var_688 As Variant
  Dim var_75C As Variant
  Dim var_7B4 As Fields15
  Dim var_7C8 As Variant
  Dim var_820 As Field20
  Dim var_17C As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_288 As Variant
  Dim var_2C8 As Variant
  Dim var_2D8 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_378 As Variant
  Dim var_438 As Variant
  Dim var_480 As Variant
  Dim var_4A0 As Variant
  Dim var_4D8 As Variant
  Dim var_4F8 As Variant
  Dim var_548 As Variant
  Dim var_5C0 As Variant
  Dim var_618 As Variant
  Dim var_650 As Variant
  Dim var_670 As Variant
  Dim var_6A8 As Variant
  Dim var_758 As Variant
  Dim var_790 As Variant
  Dim var_850 As Variant
  Dim var_8B8 As Variant
  Dim var_8F0 As Variant
  Dim var_900 As Variant
  Dim var_988 As Variant
  Dim var_9F0 As Variant
  Dim var_A00 As Variant
  Dim var_1C4 As TextBox
  Dim var_AAC As Double
  Dim var_A54 As String
  Dim var_AB4 As Double
  Dim var_ABC As Double
  Dim var_A5C As String
  Dim var_A60 As String
  Dim var_A70 As Variant
  Dim var_A34 As String
  Dim var_1D8 As Variant
  Dim var_220 As Variant
  Dim var_278 As Variant
  Dim var_3C0 As Variant
  Dim var_418 As Variant
  Dim var_470 As Variant
  Dim var_A94 As String
  Dim var_590 As Variant
  Dim var_728 As Variant
  Dim var_E80 As Double
  Dim var_A50 As String
  Dim var_E88 As Double
  Dim var_B68 As Variant
  Dim var_E94 As Double
  Dim var_BF8 As Variant
  Dim var_C18 As Variant
  Dim var_C38 As Variant
  Dim var_E9C As Double
  Dim var_C78 As Variant
  Dim var_C98 As Variant
  Dim var_CB8 As Variant
  Dim var_D48 As Variant
  Dim var_DD8 As Variant
  Dim var_DF8 As Variant
  Dim var_E18 As Variant
  Dim var_718 As Variant
  Dim var_BB8 As Variant
  Dim var_A20 As Variant
  Dim var_CC8 As Variant
  Dim var_CD8 As Variant
  Dim var_D58 As Variant
  Dim var_DA8 As Variant
  Dim var_B98 As Variant
  Dim var_CA8 As Variant
  Dim var_A2C As String
  loc_1A9999C: On Error Goto loc_1A9D4E2
  loc_1A999AA: Set var_A4 = Me.Txt
  loc_1A999B0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1A999D9: If (Proc_6_27_EA61EC(var_A8, "Voucher Date") = 0) Then
  loc_1A999DC:   Exit Sub
  loc_1A999DD: End If
  loc_1A999E8: Set var_A4 = Me.Txt
  loc_1A999EE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_1A99A17: If (Proc_6_27_EA61EC(var_A8, "Voucher No") = 0) Then
  loc_1A99A1A:   Exit Sub
  loc_1A99A1B: End If
  loc_1A99A26: If (LocalRestCode = vbNullString) Then
  loc_1A99A42:   MsgBox("Open RestaurantChange Master", 0, var_F0, var_110, var_130)
  loc_1A99A52:   Exit Sub
  loc_1A99A53: End If
  loc_1A99A5E: Set var_A4 = Me.Txt
  loc_1A99A64: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8)
  loc_1A99A8D: If (Proc_6_27_EA61EC(var_A8, "TOKEN Time") = 0) Then
  loc_1A99A90:   Exit Sub
  loc_1A99A91: End If
  loc_1A99A91: var_C0 = 1
  loc_1A99A9A: var_100 = 1
  loc_1A99AB8: var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A99ABE: var_110 = Trim(var_F0)
  loc_1A99ADA: If (var_110 = vbNullString) Then
  loc_1A99AF6:   MsgBox("Fill Item Name ", 0, var_F0, var_110, var_130)
  loc_1A99B19:   Me.FGrid.Row = 1
  loc_1A99B25:   Set var_A4 = Me.FGrid
  loc_1A99B49:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1A99B51:   Exit Sub
  loc_1A99B52: End If
  loc_1A99B52: var_C0 = 1
  loc_1A99B5E: var_100 = CVar(CLng(4)) 'Long
  loc_1A99B78: var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A99B7E: var_110 = Trim(var_F0)
  loc_1A99B9A: If (var_110 = vbNullString) Then
  loc_1A99BB6:   MsgBox("Item Detail Required ", 0, var_F0, var_110, var_130)
  loc_1A99BD9:   Me.FGrid.Row = 1
  loc_1A99BE5:   Set var_A4 = Me.FGrid
  loc_1A99BFA:   var_C0 = CVar(CLng("14737632")) 'Long
  loc_1A99C09:   Me.FGrid.CellBackColor = var_C0
  loc_1A99C11:   Exit Sub
  loc_1A99C12: End If
  loc_1A99C15: Call Proc_229_81_1081110(var_142, FGrid.DispID_8001, var_100, var_C0)
  loc_1A99C20: If (var_142 = 0) Then
  loc_1A99C23:   Exit Sub
  loc_1A99C24: End If
  loc_1A99C2F: Set var_A4 = Me.TxtGrid
  loc_1A99C35: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A8, 0, FGrid.DispID_8001)
  loc_1A99C3D: var_A8.Visible = var_100
  loc_1A99C49: Call Proc_229_84_F6DD2C(var_C0)
  loc_1A99C5C: Set var_A4 = Me.Txt
  loc_1A99C62: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_1A99C8A: If (Proc_6_91_EF38D0(CDate(var_A8.Text)) = 0) Then
  loc_1A99C98:   Set var_A4 = Me.Txt
  loc_1A99C9E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_1A99CA6:   var_A8.SetFocus
  loc_1A99CB2:   Exit Sub
  loc_1A99CB3: End If
  loc_1A99CE8: var_110 = IIf((Me.ChkNCTOKEN.Value = 1), "Y", "N")
  loc_1A99CF1: var_9C = CStr(var_110)
  loc_1A99D06: Set var_A4 = Me.TopCtrl1
  loc_1A99D0C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_A8)
  loc_1A99D25: If (CStr() = "Add") Then
  loc_1A99D43:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A99D5A:     var_F0 = "Reason"
  loc_1A99D65:     var_D0 = "Please Specify, Reason of Editing ?"
  loc_1A99D76:     global_188 = InputBox(var_D0, var_F0, var_110, var_130, var_15C, var_17C, var_19C)
  loc_1A99D8E:   End If
  loc_1A99D94:   var_E0 = 0
  loc_1A99DB1:   var_B0 = "Select NCUR from enviro where LogSite_code='" & MemVar_1F95078
  loc_1A99DC1:   unk_542AFA.Execute var_B0 & "'", var_D0, -1
  loc_1A99DC9:   var_A4 = var_A4.Fields
  loc_1A99DD1:   var_E0 = var_A8.Item(var_A8)
  loc_1A99DD9:   var_AC = var_AC.Value
  loc_1A99DE3:   MemVar_1F950EC = CDate(var_F0)
  loc_1A99E2A:   Set var_A4 = Me.Txt
  loc_1A99E30:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, "Select Count(*) From TOKEN Where DocID='", var_D0, -1, var_AC)
  loc_1A99E51:   unk_542AFA.Execute 0 & var_B0 & "'", var_1AC, var_F0
  loc_1A99E59:   MemVar_1F950EC = var_AC.Fields
  loc_1A99E61:    = var_A8.Text.Item(var_F0)
  loc_1A99E69:    = var_1AC.Value
  loc_1A99E96:   If (var_F0 > 0) Then
  loc_1A99E9F:     Call Proc_229_86_1185374(MemVar_1F95044)
  loc_1A99EB2:     Set var_A4 = Me.Txt
  loc_1A99EB8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8)
  loc_1A99EC0:     var_A8.Text = var_B0
  loc_1A99ECF:   End If
  loc_1A99ED2: Else
  loc_1A99EE6:   var_F0 = "Reason"
  loc_1A99F02:   global_188 = InputBox("Please Specify, Reason of Editing ?", var_F0, var_110, var_130, var_15C, var_17C, var_19C)
  loc_1A99F37:   var_A8 = Me.Fields.Item("DocID")
  loc_1A99F4E:   global_112 = CStr(var_A8.Value)
  loc_1A99F5F: End If
  loc_1A99F61: var_8A = &HFF
  loc_1A99F6D: unk_542AFA.BeginTrans var_1B0
  loc_1A99F76: Set var_A4 = Me.TopCtrl1
  loc_1A99F7C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_8A)
  loc_1A99F84: var_B0 = CStr(var_B0)
  loc_1A99F95: If (var_B0 = "Add") Then
  loc_1A99F9E:   Call Proc_229_86_1185374(MemVar_1F95044)
  loc_1A99FB1:   Set var_A4 = Me.Txt
  loc_1A99FB7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8)
  loc_1A99FBF:   var_A8.Text = var_B0
  loc_1A99FE2:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1A9A008:   var_110 = CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_156 & "' And VP.Date_From<=") 'String
  loc_1A9A019:   Set var_A4 = Me.Txt
  loc_1A9A01F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8, var_1BC, var_110)
  loc_1A9A027:   var_17C = var_A8.Text
  loc_1A9A035:   Proc_6_7_F26918(var_F0, CVar(var_1BC), -1)
  loc_1A9A054:   unk_542AFA.Execute CStr(var_AC & var_F0 & " Order By VP.Date_From DESC"), var_B0, 
  loc_1A9A05F:   Set var_88 = var_AC
  loc_1A9A09D:   If (var_88.RecordCount > 0) Then
  loc_1A9A0AE:     Set var_A4 = Me.Txt
  loc_1A9A0B4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_1A9A0DE:     var_AC = var_88.Fields
  loc_1A9A119:     Proc_6_7_F26918(var_17C, CVar(var_88.Fields.Item("Date_From")))
  loc_1A9A14C:     var_1BC = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(Val(var_A8.Text)) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1A9A169:     var_130 = CVar(var_1BC & MemVar_1F95078 & "') and V_Type='") & var_AC.Item("V_Type").Value & "' and Date_From=" 
  loc_1A9A17E:     unk_542AFA.Execute CStr(var_130 & var_17C), var_1D8, -1
  loc_1A9A1B8:   End If
  loc_1A9A1BB: Else
  loc_1A9A211:   unk_542AFA.Execute CStr("Select * from TOKEN Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_130, -1
  loc_1A9A21C:   Set var_88 = var_AC
  loc_1A9A236:   ' Referenced from:   1A9A8CA
  loc_1A9A245:   If Not(var_88.EOF) Then
  loc_1A9A281:     var_AC = var_88.Fields
  loc_1A9A291:     var_130 = var_AC.Item("VNo").Value
  loc_1A9A2AD:     var_1C4 = var_88.Fields.Item("VDate")
  loc_1A9A2BC:     Proc_6_7_F26918(var_1D8, CVar(var_1C4), var_AC)
  loc_1A9A2DB:     var_210 = var_88.Fields.Item("vType")
  loc_1A9A302:     var_268 = var_88.Fields.Item("vPrefix")
  loc_1A9A43B:     var_580 = var_88.Fields.Item("Item")
  loc_1A9A4A8:     var_674 = var_88.Fields
  loc_1A9A4C0:     var_718 = Now
  loc_1A9A4CB:     Proc_6_7_F26918(var_728, var_718, 1)
  loc_1A9A511:     var_7C8 = var_88.Fields.Item("NCTOKEN")
  loc_1A9A5EE:     var_E0 = "Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKot,Rate,Amount,Reasons,DELFLAG,LogSite_Code,FreeSno,ItemRestCode) Values ('"
  loc_1A9A636:     var_288 = var_E0 & var_88.Fields.Item("DocID").Value & "'," & var_130 & "," & var_1D8 & ",'" & var_210.Value & "','" & var_268.Value 
  loc_1A9A669:     var_378 = var_288 & "','" & CVar(MemVar_1F95070) & "','" & var_88.Fields.Item("RestCode").Value & "','" & var_88.Fields.Item("RoomCat").Value 
  loc_1A9A699:     var_480 = var_378 & "','" & var_88.Fields.Item("Roomtype").Value & "','" & var_88.Fields.Item("RoomNo").Value & "','" & var_88.Fields.Item("Pending").Value 
  loc_1A9A6A2:     var_4A0 = var_480 & "'," 
  loc_1A9A6B2:     var_4F8 = var_4A0 & var_88.Fields.Item("SNo").Value & ",'" 
  loc_1A9A6E9:     var_650 = var_4F8 & Format(Time, "hh:nn") & "','" & var_580.Value & "'," & var_88.Fields.Item("qty").Value & ",'" & var_88.Fields.Item("VoidYN").Value 
  loc_1A9A72C:     var_790 = var_650 & "','" & var_674.Item("Waiter").Value & "','" & CVar(MemVar_1F950C8) & "'," & var_728 & ",'" & var_88.Fields.Item("U_AE").Value 
  loc_1A9A765:     var_8B8 = var_790 & "','" & var_7C8.Value & "'," & var_88.Fields.Item("Rate").Value & "," & var_88.Fields.Item("Amount").Value & ",'" 
  loc_1A9A78F:     var_988 = var_8B8 & var_88.Fields.Item("Reasons").Value & "','E','" & CVar(MemVar_1F95078) & "'," & var_88.Fields.Item("FreeSno").Value 
  loc_1A9A7B6:     unk_542AFA.Execute CStr(var_988 & ",'" & var_88.Fields.Item("ItemRestcode").Value & "')"), var_A20, -1
  loc_1A9A8C5:     var_88.MoveNext
  loc_1A9A8CA:     GoTo loc_1A9A236
  loc_1A9A8CD:   End If
  loc_1A9A8E4:   If (Me.RecordCount > 0) Then
  loc_1A9A93D:     unk_542AFA.Execute CStr("Delete From TOKEN Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_130, -1
  loc_1A9A9AF:     unk_542AFA.Execute CStr("Delete From Stock Where KOTDocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_130, -1
  loc_1A9A9FA:     var_A8 = Me.Fields.Item("SearchCode")
  loc_1A9AA02:     var_D0 = var_A8.Value
  loc_1A9AA17:     var_B0 = CStr("Delete From Stock Where DocID='" & var_D0 & "'")
  loc_1A9AA21:     unk_542AFA.Execute var_B0, var_130, -1
  loc_1A9AA3D:   End If
  loc_1A9AA5B:   Set var_A4 = Me.Txt
  loc_1A9AA61:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, "Delete From TOKEN Where DocID='", var_D0, -1, var_AC)
  loc_1A9AA69:   var_AC = var_A8.Text
  loc_1A9AA82:   unk_542AFA.Execute var_AC & var_B0 & "'", var_AC, var_A24
  loc_1A9AA9C: End If
  loc_1A9AAB7: If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A9AADF:   For var_A28 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_A28 'Integer
  loc_1A9AAE9:     var_C0 = CVar(CLng(var_92)) 'Long
  loc_1A9AAF1:     var_100 = CVar(CLng(9)) 'Long
  loc_1A9AB3A:     If (Ucase(Trim(CVar(CStr(Me.FGrid.TextMatrix))))) = "YES") Then
  loc_1A9AB40:       var_A0 = "Y"
  loc_1A9AB46:     Else
  loc_1A9AB49:       var_A0 = "N"
  loc_1A9AB4C:     End If
  loc_1A9AB78:     var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1A9AB9F:     Set var_A8 = Me.FGrid
  loc_1A9ABB0:     var_B0 = CStr(var_A8.TextMatrix))
  loc_1A9ABFF:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_B0)) <> CDbl(0)) And (Me.RecordCount > 0)) Then
  loc_1A9AC10:       Set var_A4 = Me.Txt
  loc_1A9AC16:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, CVar(CLng(var_92)), (var_110 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1A9AC1E:       var_100 = var_A8.Text
  loc_1A9AC38:       Set var_AC = Me.FGrid
  loc_1A9AC51:       var_14C = Val(CStr(var_AC.TextMatrix)))
  loc_1A9AC74:       Set var_1AC = Me.Txt
  loc_1A9AC7A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1C4, var_A40, var_14C, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1A9AC82:       var_C0 = var_1C4.Text
  loc_1A9AC8F:       var_AAC = Val(var_A40)
  loc_1A9AC9D:       Set var_1DC = Me.Txt
  loc_1A9ACA3:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_210, var_AAC, 1)
  loc_1A9ACB2:       Proc_6_7_F26918(var_110, CVar(var_210), 1)
  loc_1A9ACC5:       Set var_254 = Me.Txt
  loc_1A9ACCB:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_268, var_A50)
  loc_1A9ACD3:       var_1DC = var_268.Tag
  loc_1A9ACDC:       var_2D8 = CVar(CLng(var_92)) 'Long
  loc_1A9ACE4:       var_330 = CVar(CLng(&HA)) 'Long
  loc_1A9AD03:       var_3AC = CVar(CLng(var_92)) 'Long
  loc_1A9AD0B:       var_404 = CVar(CLng(5)) 'Long
  loc_1A9AD1A:       var_320 = Me.FGrid.TextMatrix)
  loc_1A9AD54:       var_AB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9AD85:       var_ABC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9AD96:       Proc_6_7_F26918(var_4A0, Date, var_ABC, CVar(CLng(8)), CVar(CLng(var_92)), var_AB4, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A9AD9F:       Set var_39C = Me.TopCtrl1
  loc_1A9ADA5:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_320)
  loc_1A9ADF9:       var_3F4 = Me.Fields.Item("SearchCode")
  loc_1A9AE0A:       var_850 = CVar(CLng(var_92)) 'Long
  loc_1A9AE12:       var_8A8 = CVar(CLng(0)) 'Long
  loc_1A9AE3B:       var_9F0 = CVar(CLng(var_92)) 'Long
  loc_1A9AE43:       var_A70 = CVar(CLng(1)) 'Long
  loc_1A9AE4C:       Set var_44C = Me.FGrid
  loc_1A9AE72:       var_1A0 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,KOTDOCID,KOTSNO,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_B0
  loc_1A9AEB9:       var_A44 = var_1A0 & "'," & CStr(var_14C) & ",'" & global_156 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "',"
  loc_1A9AF14:       var_220 = CVar(var_A44 & CStr(var_AAC) & ",") & var_110 & ",'" & CVar(LocalRestCode) & "','" & CVar(global_160) & "','" & CVar(global_164) 
  loc_1A9AF63:       var_3C0 = var_220 & "','" & CVar(var_A50) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_320)) & "'," & CVar(var_AB4) 
  loc_1A9AFAA:       var_548 = var_3C0 & "," & CVar(var_ABC) & ",'" & CVar(MemVar_1F950C8) & "'," & var_4A0 & ",'" & IIf((CStr(var_4F8) = "Add"), "A", "E") 
  loc_1A9AFF4:       var_670 = var_548 & "','" & var_3F4.Value & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(var_A0) & "','" & CVar(MemVar_1F95078) 
  loc_1A9B01F:       unk_542AFA.Execute CStr(var_670 & "','" & CVar(CStr(var_44C.TextMatrix))) & "')"), var_718, -1
  loc_1A9B0F4:     Else
  loc_1A9B120:       var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1A9B147:       Set var_A8 = Me.FGrid
  loc_1A9B158:       var_B0 = CStr(var_A8.TextMatrix))
  loc_1A9B186:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_1A9B197:         Set var_A4 = Me.Txt
  loc_1A9B19D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, CVar(CLng(var_92)), (var_110 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1A9B1A5:         var_460 = var_A8.Text
  loc_1A9B1BF:         Set var_AC = Me.FGrid
  loc_1A9B1D8:         var_14C = Val(CStr(var_AC.TextMatrix)))
  loc_1A9B1E8:         var_A2C = Me.LblVPrefix.Caption
  loc_1A9B1FB:         Set var_1AC = Me.Txt
  loc_1A9B201:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1C4, var_A40, var_14C, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1A9B209:         var_6A8 = var_1C4.Text
  loc_1A9B216:         var_AAC = Val(var_A40)
  loc_1A9B224:         Set var_1DC = Me.Txt
  loc_1A9B22A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_210, var_AAC, var_A70)
  loc_1A9B239:         Proc_6_7_F26918(var_110, CVar(var_210), var_9F0)
  loc_1A9B24C:         Set var_254 = Me.Txt
  loc_1A9B252:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_268, var_A50)
  loc_1A9B25A:         var_AC4 = var_268.Tag
  loc_1A9B263:         var_2D8 = CVar(CLng(var_92)) 'Long
  loc_1A9B26B:         var_330 = CVar(CLng(&HA)) 'Long
  loc_1A9B28A:         var_3AC = CVar(CLng(var_92)) 'Long
  loc_1A9B292:         var_404 = CVar(CLng(5)) 'Long
  loc_1A9B29B:         Set var_300 = Me.FGrid
  loc_1A9B2A1:         var_320 = var_300.TextMatrix)
  loc_1A9B2D3:         var_A54 = CStr(Me.FGrid.TextMatrix))
  loc_1A9B2DB:         var_AB4 = Val(var_A54)
  loc_1A9B30C:         var_ABC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9B31D:         Proc_6_7_F26918(var_4A0, Date, var_ABC, CVar(CLng(8)), CVar(CLng(var_92)), var_AB4, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A9B326:         Set var_39C = Me.TopCtrl1
  loc_1A9B32C:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_320)
  loc_1A9B367:         var_8A8 = CVar(CLng(var_92)) 'Long
  loc_1A9B36F:         var_900 = CVar(CLng(1)) 'Long
  loc_1A9B39E:         var_1A0 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_B0
  loc_1A9B3D0:         var_A34 = var_1A0 & "'," & CStr(var_14C) & ",'" & global_156 & "','" & var_A2C
  loc_1A9B3E5:         var_A44 = var_A34 & "','" & MemVar_1F95070 & "',"
  loc_1A9B3FE:         var_15C = CVar(var_A44 & CStr(var_AAC) & ",") & var_110 
  loc_1A9B453:         var_278 = var_15C & ",'" & CVar(LocalRestCode) & "','" & CVar(global_160) & "','" & CVar(global_164) & "','" & CVar(var_A50) 
  loc_1A9B4A3:         var_418 = var_278 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_320)) & "'," & CVar(var_AB4) & "," & CVar(var_ABC) 
  loc_1A9B4E9:         var_590 = var_418 & ",'" & CVar(MemVar_1F950C8) & "'," & var_4A0 & ",'" & IIf((CStr(var_4F8) = "Add"), "A", "E") & "','" & CVar(var_A0) 
  loc_1A9B50D:         var_618 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A9B51D:         var_A60 = CStr(var_590 & "','" & CVar(MemVar_1F95078) & "','" & var_618 & "')")
  loc_1A9B527:         unk_542AFA.Execute var_A60, var_670, -1
  loc_1A9B5E5:       End If
  loc_1A9B5E5:     End If
  loc_1A9B5E8:   Next var_A28 'Integer
  loc_1A9B5F0: Else
  loc_1A9B5F4:   Set var_A4 = Me.TopCtrl1
  loc_1A9B5FA:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1A9B613:   If (CStr() = "Edit") Then
  loc_1A9B62D:     If (Me.RecordCount > 0) Then
  loc_1A9B644:       var_B0 = "UPDATE TOKEN SET NCTOKEN='" & var_9C
  loc_1A9B64B:       var_F0 = CVar(var_B0 & "' Where DocID='") 'String
  loc_1A9B66B:       var_A8 = Me.Fields.Item("SearchCode")
  loc_1A9B692:       unk_542AFA.Execute CStr(var_F0 & var_A8.Value & "'"), var_15C, -1
  loc_1A9B6B4:     End If
  loc_1A9B6D2:     Set var_A4 = Me.Txt
  loc_1A9B6D8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, "Delete From TOKEN Where CONTRADocID='")
  loc_1A9B6E0:     var_D0 = var_A8.Text
  loc_1A9B6E9:     var_1A0 = -1 & var_B0
  loc_1A9B6F9:     unk_542AFA.Execute CStr(var_F0 & var_A8.Value & "'") & "'", var_AC, var_AC
  loc_1A9B713:   End If
  loc_1A9B713: End If
  loc_1A9B717: Set var_A4 = Me.TopCtrl1
  loc_1A9B71D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1A9B736: If (CStr() = "Add") Then
  loc_1A9B73F:   var_E0 = 0
  loc_1A9B75F:   var_B0 = "Select IsNull(Max(TokenNo),0)+1 From Token Where VType='" & global_156
  loc_1A9B774:   var_1B4 = CStr() & "' And Logsite_code='" & MemVar_1F95078 & "' And RestCode='"
  loc_1A9B78E:   unk_542AFA.Execute var_1B4 & LocalRestCode & "' And IsNull(CancelYN,'')<>'Y'", var_D0, -1
  loc_1A9B796:   var_A4 = var_A4.Fields
  loc_1A9B79E:   var_E0 = var_A8.Item(var_A8)
  loc_1A9B7A6:   var_AC = var_AC.Value
  loc_1A9B7BD:   Set var_1A8 = Me.Txt
  loc_1A9B7C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_1AC)
  loc_1A9B7CB:   var_1AC.Text = CStr(var_F0)
  loc_1A9B7F5: End If
  loc_1A9B81A: For var_AC8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_AC8 'Integer
  loc_1A9B83B:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A9B842:     Set var_A4 = Me.TopCtrl1
  loc_1A9B848:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_1A9B861:     If (CStr(var_F0) = "Edit") Then
  loc_1A9B868:       var_C0 = CVar(CLng(var_92)) 'Long
  loc_1A9B870:       var_100 = CVar(CLng(&HA)) 'Long
  loc_1A9B88A:       var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A9B8B7:       Set var_A8 = Me.FGrid
  loc_1A9B8C8:       var_B0 = CStr(var_A8.TextMatrix))
  loc_1A9B8F6:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_1A9B907:         Set var_A4 = Me.Txt
  loc_1A9B90D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, CVar(CLng(var_92)))
  loc_1A9B915:         (Trim(var_F0) <> vbNullString) = var_A8.Text
  loc_1A9B928:         Set var_AC = Me.Txt
  loc_1A9B92E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1B4)
  loc_1A9B936:         var_100 = var_1A8.Text
  loc_1A9B943:         var_14C = Val(var_1B4)
  loc_1A9B951:         Set var_1AC = Me.Txt
  loc_1A9B957:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4)
  loc_1A9B95F:         var_D0 = CVar(var_1C4) 'Address
  loc_1A9B966:         Proc_6_7_F26918(var_F0, var_D0)
  loc_1A9B98B:         Set var_210 = Me.Txt
  loc_1A9B991:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_254, var_A2C)
  loc_1A9B9A2:         var_2FC = CVar(CLng(var_92)) 'Long
  loc_1A9B9AA:         var_354 = CVar(CLng(0)) 'Long
  loc_1A9B9CC:         var_AAC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9B9DD:         Set var_2EC = Me.Txt
  loc_1A9B9E3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_300, var_A34, var_AAC)
  loc_1A9B9EB:         var_354 = var_300.Text
  loc_1A9B9F4:         var_438 = CVar(CLng(var_92)) 'Long
  loc_1A9BA0B:         var_418 = Me.FGrid.TextMatrix)
  loc_1A9BA23:         var_57C = CVar(CLng(7)) 'Long
  loc_1A9BA45:         var_AB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9BA63:         var_4D8 = Me.FGrid.TextMatrix)
  loc_1A9BAAB:         Set var_3B0 = Me.Txt
  loc_1A9BAB1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_3F4, var_A40, var_4D8, CVar(CLng(9)), CVar(CLng(var_92)), var_AB4)
  loc_1A9BAB9:         var_57C = var_3F4.Tag
  loc_1A9BACC:         Proc_6_7_F26918(var_618, Date, CVar(CLng(var_92)), var_418)
  loc_1A9BADF:         Set var_408 = Me.Txt
  loc_1A9BAE5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_44C, var_A44, CVar(CLng(&HA)))
  loc_1A9BAED:         var_438 = var_44C.Text
  loc_1A9BB01:         var_900 = CVar(CLng(var_92)) 'Long
  loc_1A9BB2B:         var_AC4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9BB5C:         var_E80 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9BB8D:         var_E88 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9BBA0:         var_E8C = Proc_6_38_E69628(global_188, var_E88, CVar(CLng(8)), CVar(CLng(var_92)), var_E80, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A9BBB1:         Set var_56C = Me.Txt
  loc_1A9BBB7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_580, var_A54, var_AC4, CVar(CLng(8)))
  loc_1A9BBBF:         var_900 = var_580.Text
  loc_1A9BBE1:         var_5D8 = Me.Fields.Item("SearchCode")
  loc_1A9BBF2:         var_B68 = CVar(CLng(var_92)) 'Long
  loc_1A9BC1C:         var_E94 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9BC2A:         Set var_630 = Me.Txt
  loc_1A9BC30:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_674, var_E94, CVar(CLng(0)))
  loc_1A9BC6A:         var_C18 = CVar(CLng(var_92)) 'Long
  loc_1A9BC72:         var_C38 = CVar(CLng(&HB)) 'Long
  loc_1A9BC8C:         var_A5C = CStr(Me.FGrid.TextMatrix))
  loc_1A9BC9B:         var_C78 = CVar(CLng(var_92)) 'Long
  loc_1A9BCA3:         var_C98 = CVar(CLng(&HC)) 'Long
  loc_1A9BCAC:         Set var_75C = Me.FGrid
  loc_1A9BCB2:         var_CB8 = var_75C.TextMatrix)
  loc_1A9BCD9:         var_D48 = Me.FGrid.TextMatrix)
  loc_1A9BCF3:         Set var_7B4 = Me.Txt
  loc_1A9BCF9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_7C8, var_A60, var_D48, CVar(CLng(6)), CVar(CLng(var_92)), var_CB8)
  loc_1A9BD01:         var_C98 = var_7C8.Tag
  loc_1A9BD0A:         var_DD8 = CVar(CLng(var_92)) 'Long
  loc_1A9BD12:         var_DF8 = CVar(CLng(1)) 'Long
  loc_1A9BD21:         var_E18 = Me.FGrid.TextMatrix)
  loc_1A9BD41:         var_1A0 = "Insert Into TOKEN(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,TokenNo,Rate,Amount,Reasons,Remarks,ContraDocID,ContraSno,Logsite_Code,NCType,FreeSno,SchemeCode,Description,Party,ItemRestCode) " & " Values ('"
  loc_1A9BD6C:         var_C0 = ",'"
  loc_1A9BD91:         var_1EC = CVar(var_1A0 & var_B0 & "'," & CStr(var_254.Tag) & ",") & var_F0 & var_C0 & CVar(global_156) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1A9BDE6:         var_2C8 = var_1EC & "','" & CVar(MemVar_1F95070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_160) & "','" & CVar(global_164) 
  loc_1A9BE3D:         var_470 = var_2C8 & "','" & CVar(var_A2C) & "','N'," & CVar(var_AAC) & ",'" & CVar(var_A34) & "','" & CVar(CStr(var_418)) & "'," 
  loc_1A9BE7E:         var_5C0 = var_470 & CVar(var_AB4) & ",'" & IIf((CStr(var_4D8) = "Yes"), "Y", "N") & "','" & CVar(var_A40) & "','" & CVar(MemVar_1F950C8) 
  loc_1A9BEE1:         var_758 = var_5C0 & "'," & var_618 & ",'A','" & CVar(var_9C) & "'," & CVar(Val(var_A44)) & "," & CVar(var_AC4) & "," & CVar((var_E80 * var_E88)) 
  loc_1A9BF3E:         var_8F0 = var_758 & ",'" & CVar(var_E8C) & "','" & CVar(var_A54) & "','" & var_5D8.Value & "'," & CVar(var_E94) & ",'" & CVar(MemVar_1F95078) 
  loc_1A9BF76:         var_CD8 = var_8F0 & "','" & IIf((var_9C = "Y"), Trim(CVar(var_674)), vbNullString) & "'," & CVar(Val(var_A5C)) & ",'" & CVar(CStr(var_CB8)) 
  loc_1A9BF9D:         var_DA8 = var_CD8 & "','" & CVar(CStr(var_D48)) & "','" & CVar(var_A60) 
  loc_1A9BFC8:         unk_542AFA.Execute CStr(var_DA8 & "','" & CVar(CStr(var_E18)) & "')"), var_E78, -1
  loc_1A9C108:       End If
  loc_1A9C10B:     Else
  loc_1A9C131:       var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A9C15E:       Set var_A8 = Me.FGrid
  loc_1A9C16F:       var_B0 = CStr(var_A8.TextMatrix))
  loc_1A9C19D:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_1A9C1AE:         Set var_A4 = Me.Txt
  loc_1A9C1B4:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, CVar(CLng(var_92)), (Trim(var_F0) <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1A9C1BC:         var_820 = var_A8.Text
  loc_1A9C1CF:         Set var_AC = Me.Txt
  loc_1A9C1D5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1B4, var_E18, var_DF8)
  loc_1A9C1DD:         var_DD8 = var_1A8.Text
  loc_1A9C1EA:         var_14C = Val(var_1B4)
  loc_1A9C1F8:         Set var_1AC = Me.Txt
  loc_1A9C1FE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_14C)
  loc_1A9C206:         var_D0 = CVar(var_1C4) 'Address
  loc_1A9C20D:         Proc_6_7_F26918(var_F0, var_D0, var_C78)
  loc_1A9C232:         Set var_210 = Me.Txt
  loc_1A9C238:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_254, var_A2C)
  loc_1A9C240:         var_E9C = var_254.Tag
  loc_1A9C249:         var_2FC = CVar(CLng(var_92)) 'Long
  loc_1A9C251:         var_354 = CVar(CLng(0)) 'Long
  loc_1A9C273:         var_AAC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9C284:         Set var_2EC = Me.Txt
  loc_1A9C28A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_300, var_A34, var_AAC)
  loc_1A9C292:         var_354 = var_300.Text
  loc_1A9C29B:         var_438 = CVar(CLng(var_92)) 'Long
  loc_1A9C2B2:         var_418 = Me.FGrid.TextMatrix)
  loc_1A9C2CA:         var_57C = CVar(CLng(7)) 'Long
  loc_1A9C2EC:         var_AB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9C30A:         var_4D8 = Me.FGrid.TextMatrix)
  loc_1A9C352:         Set var_3B0 = Me.Txt
  loc_1A9C358:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_3F4, var_A40, var_4D8, CVar(CLng(9)), CVar(CLng(var_92)), var_AB4)
  loc_1A9C360:         var_57C = var_3F4.Tag
  loc_1A9C373:         Proc_6_7_F26918(var_618, Date, CVar(CLng(var_92)), var_418)
  loc_1A9C386:         Set var_408 = Me.Txt
  loc_1A9C38C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_44C, var_A44, CVar(CLng(&HA)))
  loc_1A9C394:         var_438 = var_44C.Text
  loc_1A9C3A1:         var_ABC = Val(var_A44)
  loc_1A9C3A8:         var_900 = CVar(CLng(var_92)) 'Long
  loc_1A9C3D2:         var_AC4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9C403:         var_E80 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9C434:         var_E88 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9C447:         var_A94 = Proc_6_38_E69628(global_188, var_E88, CVar(CLng(8)), CVar(CLng(var_92)), var_E80, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A9C458:         Set var_56C = Me.Txt
  loc_1A9C45E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_580, var_A54, var_AC4, CVar(CLng(8)))
  loc_1A9C466:         var_900 = var_580.Text
  loc_1A9C476:         Set var_5C4 = Me.Txt
  loc_1A9C47C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_5D8, var_ABC)
  loc_1A9C4B6:         var_B98 = CVar(CLng(var_92)) 'Long
  loc_1A9C4BE:         var_BB8 = CVar(CLng(&HB)) 'Long
  loc_1A9C4E7:         var_BF8 = CVar(CLng(var_92)) 'Long
  loc_1A9C4EF:         var_C18 = CVar(CLng(&HC)) 'Long
  loc_1A9C4FE:         var_988 = Me.FGrid.TextMatrix)
  loc_1A9C525:         var_A00 = Me.FGrid.TextMatrix)
  loc_1A9C53F:         Set var_688 = Me.Txt
  loc_1A9C545:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_75C, var_A5C, var_A00, CVar(CLng(6)), CVar(CLng(var_92)), var_988)
  loc_1A9C54D:         var_C18 = var_75C.Tag
  loc_1A9C556:         var_CA8 = CVar(CLng(var_92)) 'Long
  loc_1A9C55E:         var_D08 = CVar(CLng(1)) 'Long
  loc_1A9C56D:         var_D58 = Me.FGrid.TextMatrix)
  loc_1A9C58D:         var_1A0 = "Insert Into TOKEN(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,TokenNo,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,FreeSno,SchemeCode,Description,Party,ItemRestCode) " & " Values ('"
  loc_1A9C5DD:         var_1EC = CVar(var_1A0 & var_B0 & "'," & CStr(var_14C) & ",") & var_F0 & ",'" & CVar(global_156) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1A9C632:         var_2C8 = var_1EC & "','" & CVar(MemVar_1F95070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_160) & "','" & CVar(global_164) 
  loc_1A9C689:         var_470 = var_2C8 & "','" & CVar(var_A2C) & "','N'," & CVar(var_AAC) & ",'" & CVar(var_A34) & "','" & CVar(CStr(var_418)) & "'," 
  loc_1A9C6CA:         var_5C0 = var_470 & CVar(var_AB4) & ",'" & IIf((CStr(var_4D8) = "Yes"), "Y", "N") & "','" & CVar(var_A40) & "','" & CVar(MemVar_1F950C8) 
  loc_1A9C72D:         var_758 = var_5C0 & "'," & var_618 & ",'A','" & CVar(var_9C) & "'," & CVar(var_ABC) & "," & CVar(var_AC4) & "," & CVar((var_E80 * var_E88)) 
  loc_1A9C776:         var_8F0 = var_758 & ",'" & CVar(var_A94) & "','" & CVar(var_A54) & "','" & CVar(MemVar_1F95078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_5D8)), vbNullString) 
  loc_1A9C7BB:         var_CC8 = var_8F0 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_988)) & "','" & CVar(CStr(var_A00)) & "','" 
  loc_1A9C7F0:         unk_542AFA.Execute CStr(var_CC8 & CVar(var_A5C) & "','" & CVar(CStr(var_D58)) & "')"), var_DA8, -1
  loc_1A9C91C:       End If
  loc_1A9C91C:     End If
  loc_1A9C91F:   Else
  loc_1A9C93A:     var_D0 = Me.FGrid.TextMatrix)
  loc_1A9C945:     var_F0 = CVar(CStr(var_D0)) 'String
  loc_1A9C972:     Set var_A8 = Me.FGrid
  loc_1A9C983:     var_B0 = CStr(var_A8.TextMatrix))
  loc_1A9C9B1:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_1A9C9C2:       Set var_A4 = Me.Txt
  loc_1A9C9C8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, CVar(CLng(var_92)), (Trim(var_F0) <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1A9C9D0:       var_7B4 = var_A8.Text
  loc_1A9C9E3:       Set var_AC = Me.Txt
  loc_1A9C9E9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1B4, var_D58, var_D08)
  loc_1A9C9F1:       var_CA8 = var_1A8.Text
  loc_1A9C9FE:       var_14C = Val(var_1B4)
  loc_1A9CA0C:       Set var_1AC = Me.Txt
  loc_1A9CA12:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_14C)
  loc_1A9CA1A:       var_D0 = CVar(var_1C4) 'Address
  loc_1A9CA21:       Proc_6_7_F26918(var_F0, var_D0, var_BF8)
  loc_1A9CA46:       Set var_210 = Me.Txt
  loc_1A9CA4C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_254, var_A2C)
  loc_1A9CA54:       var_E94 = var_254.Tag
  loc_1A9CA5D:       var_2FC = CVar(CLng(var_92)) 'Long
  loc_1A9CA65:       var_354 = CVar(CLng(0)) 'Long
  loc_1A9CA87:       var_AAC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9CA98:       Set var_2EC = Me.Txt
  loc_1A9CA9E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_300, var_A34, var_AAC)
  loc_1A9CAA6:       var_354 = var_300.Text
  loc_1A9CAAF:       var_438 = CVar(CLng(var_92)) 'Long
  loc_1A9CAC6:       var_418 = Me.FGrid.TextMatrix)
  loc_1A9CADE:       var_57C = CVar(CLng(7)) 'Long
  loc_1A9CB00:       var_AB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9CB1E:       var_4D8 = Me.FGrid.TextMatrix)
  loc_1A9CB66:       Set var_3B0 = Me.Txt
  loc_1A9CB6C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_3F4, var_A40, var_4D8, CVar(CLng(9)), CVar(CLng(var_92)), var_AB4)
  loc_1A9CB74:       var_57C = var_3F4.Tag
  loc_1A9CB87:       Proc_6_7_F26918(var_618, Date, CVar(CLng(var_92)), var_418)
  loc_1A9CB9A:       Set var_408 = Me.Txt
  loc_1A9CBA0:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_44C, var_A44, CVar(CLng(&HA)))
  loc_1A9CBA8:       var_438 = var_44C.Text
  loc_1A9CBB5:       var_ABC = Val(var_A44)
  loc_1A9CBBC:       var_900 = CVar(CLng(var_92)) 'Long
  loc_1A9CBE6:       var_AC4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9CC17:       var_E80 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9CC48:       var_E88 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A9CC5B:       var_A94 = Proc_6_38_E69628(global_188, var_E88, CVar(CLng(8)), CVar(CLng(var_92)), var_E80, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A9CC6C:       Set var_56C = Me.Txt
  loc_1A9CC72:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_580, var_A54, var_AC4, CVar(CLng(8)))
  loc_1A9CC7A:       var_900 = var_580.Text
  loc_1A9CC8A:       Set var_5C4 = Me.Txt
  loc_1A9CC90:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_5D8, var_ABC)
  loc_1A9CCCA:       var_B98 = CVar(CLng(var_92)) 'Long
  loc_1A9CCD2:       var_BB8 = CVar(CLng(&HB)) 'Long
  loc_1A9CCFB:       var_BF8 = CVar(CLng(var_92)) 'Long
  loc_1A9CD03:       var_C18 = CVar(CLng(&HC)) 'Long
  loc_1A9CD12:       var_988 = Me.FGrid.TextMatrix)
  loc_1A9CD39:       var_A00 = Me.FGrid.TextMatrix)
  loc_1A9CD53:       Set var_688 = Me.Txt
  loc_1A9CD59:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_75C, var_A5C, var_A00, CVar(CLng(6)), CVar(CLng(var_92)), var_988)
  loc_1A9CD61:       var_C18 = var_75C.Tag
  loc_1A9CD6A:       var_CA8 = CVar(CLng(var_92)) 'Long
  loc_1A9CD72:       var_D08 = CVar(CLng(1)) 'Long
  loc_1A9CDA1:       var_1A0 = "Insert Into TOKEN(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,TokenNo,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,FreeSno,SchemeCode,Description,Party,ItemRestCode) " & " Values ('"
  loc_1A9CDEE:       var_1D8 = CVar(Me.LblVPrefix.Caption) 'String
  loc_1A9CDFA:       var_1FC = CVar(var_1A0 & var_B0 & "'," & CStr(var_14C) & ",") & var_F0 & ",'" & CVar(global_156) & "','" & var_1D8 & "','" 
  loc_1A9CE46:       var_2C8 = var_1FC & CVar(MemVar_1F95070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_160) & "','" & CVar(global_164) 
  loc_1A9CE9D:       var_470 = var_2C8 & "','" & CVar(var_A2C) & "','Y'," & CVar(var_AAC) & ",'" & CVar(var_A34) & "','" & CVar(CStr(var_418)) & "'," 
  loc_1A9CEDE:       var_5C0 = var_470 & CVar(var_AB4) & ",'" & IIf((CStr(var_4D8) = "Yes"), "Y", "N") & "','" & CVar(var_A40) & "','" & CVar(MemVar_1F950C8) 
  loc_1A9CF41:       var_758 = var_5C0 & "'," & var_618 & ",'A','" & CVar(var_9C) & "'," & CVar(var_ABC) & "," & CVar(var_AC4) & "," & CVar((var_E80 * var_E88)) 
  loc_1A9CF8A:       var_8F0 = var_758 & ",'" & CVar(var_A94) & "','" & CVar(var_A54) & "','" & CVar(MemVar_1F95078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_5D8)), vbNullString) 
  loc_1A9CFCF:       var_CC8 = var_8F0 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_988)) & "','" & CVar(CStr(var_A00)) & "','" 
  loc_1A9D004:       unk_542AFA.Execute CStr(var_CC8 & CVar(var_A5C) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')"), var_DA8, -1
  loc_1A9D130:     End If
  loc_1A9D130:   End If
  loc_1A9D133: Next var_AC8 'Integer
  loc_1A9D13C: Set var_A4 = Me.TopCtrl1
  loc_1A9D142: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1A9D15B: If (CStr() = "Add") Then
  loc_1A9D181:   var_B0 = "SELECT COUNT(*) FROM LASTVOU WHERE lOGSITE_CODE='" & MemVar_1F95078
  loc_1A9D196:   var_1B8 = var_B0 & "' AND UNAME='" & MemVar_1F950C8 & "' AND ENAME='"
  loc_1A9D19F:   Call 0.Method_arg_50 (var_1B4, var_1B8, var_D0, -1, var_A4)
  loc_1A9D1B8:   unk_542AFA.Execute var_A8 & var_1B4 & "' ", 0, var_AC
  loc_1A9D1C0:   var_F0 = var_A4.Fields
  loc_1A9D1C8:    = var_A8.Item()
  loc_1A9D1D0:    = var_AC.Value
  loc_1A9D201:   If (var_F0 > 0) Then
  loc_1A9D222:     Set var_A4 = Me.Txt
  loc_1A9D228:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0, "UPDATE LASTVOU  SET DOCID='")
  loc_1A9D230:     var_D0 = var_A8.Text
  loc_1A9D239:     var_1A0 = -1 & var_B0
  loc_1A9D257:     Call 0.Method_arg_50 (var_1B8, var_B0 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F950C8 & "' AND ENAME='")
  loc_1A9D270:     unk_542AFA.Execute var_AC & var_1B8 & "'  ", , 
  loc_1A9D297:   Else
  loc_1A9D2BB:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "' AND UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "','", var_1D8)
  loc_1A9D2C4:     var_1B4 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "' AND UNAME='"
  loc_1A9D2CB:     var_1BC = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F950C8 & "','"
  loc_1A9D2DC:     Set var_A4 = Me.Txt
  loc_1A9D2E2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_1B8)
  loc_1A9D2EA:     var_1BC = var_A8.Text
  loc_1A9D308:     var_110 = CVar(var_AC & var_1B8 & "','" & MemVar_1F95070 & "',") 'String
  loc_1A9D319:     Proc_6_7_F26918(var_F0, Date)
  loc_1A9D321:     var_130 = var_110 & var_F0 
  loc_1A9D325:     var_C0 = ",'A','"
  loc_1A9D34B:     unk_542AFA.Execute CStr(var_130 & var_C0 & CVar(MemVar_1F95078) & "')"), , 
  loc_1A9D383:   End If
  loc_1A9D383: End If
  loc_1A9D389: unk_542AFA.CommitTrans
  loc_1A9D390: var_8A = 0
  loc_1A9D3A1: Set var_A4 = Me.Txt
  loc_1A9D3A7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8)
  loc_1A9D3C3: var_8A = 0
  loc_1A9D3D1: Me.Requery -1
  loc_1A9D3ED: If (Me.RecordCount > 0) Then
  loc_1A9D40B:   If (Me.ChkNCTOKEN.Value <> 1) Then
  loc_1A9D433:     Me.Find "SearchCode ='" & var_A8.Text & "'", 0, 1
  loc_1A9D442:   Else
  loc_1A9D448:     Me.MoveLast
  loc_1A9D44D:   End If
  loc_1A9D44D: End If
  loc_1A9D470: Call Proc_229_83_100CB3C(Proc_5_1_100EC1C("INI", Me, global_92), var_C0)
  loc_1A9D47B: Call Proc_229_80_16C14B4(var_8A)
  loc_1A9D497: If (Me.RecordCount > 0) Then
  loc_1A9D4D1:   If (MsgBox("Print TOKEN ?", &H24, "Print", var_110, var_130) = 6) Then
  loc_1A9D4D4:     Call TopCtrl1_UnknownEvent_14()
  loc_1A9D4D9:   End If
  loc_1A9D4D9: End If
  loc_1A9D4DE: Set var_88 = Nothing
  loc_1A9D4E1: Exit Sub
  loc_1A9D4E2: ' Referenced from: 1A9999C
  loc_1A9D4E8: If (var_8A = &HFF) Then
  loc_1A9D4F1:   unk_542AFA.RollbackTrans
  loc_1A9D4F6: End If
  loc_1A9D4F6: Proc_6_60_E63754(var_8A)
  loc_1A9D4FB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E61444
  'Data Table: 542AE4
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6140F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E61422: Set var_A8 = Me.TxtGrid
  loc_E61428: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61430: var_AC.Visible = False
  loc_E6143C: Call Proc_229_84_F6DD2C()
  loc_E61441: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68310
  'Data Table: 542AE4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E682CC: Set var_88 = Me.TxtGrid
  loc_E682D2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E682EC: If (var_8C.Visible = 0) Then
  loc_E68305:   Me.FGrid.BackColorSel = CVar(CLng(global_108))
  loc_E6830D: End If
  loc_E6830D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E49E5C
  'Data Table: 542AE4
  loc_E49E34: Set var_88 = Me.TopCtrl1
  loc_E49E3A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E49E53: If (CStr() <> "Browse") Then
  loc_E49E56:   Call Proc_229_76_E41DC8()
  loc_E49E5B: End If
  loc_E49E5B: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '12BB494
  'Data Table: 542AE4
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim arg_C As Integer
  Dim var_110 As Long
  Dim var_120 As String
  loc_12BAE4C: Set var_88 = Me.TopCtrl1
  loc_12BAE52: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_12BAE66: Set var_A0 = Me.TopCtrl1
  loc_12BAE6C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005((CStr() = "Edit"))
  loc_12BAE92: If ( Or (CStr() = "Add")) Then
  loc_12BAEA2:   If ((arg_C = &H4D) And (arg_10 = 2)) Then
  loc_12BAEBC:     global_214 = CInt(CLng(Me.FGrid.Col))
  loc_12BAED8:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BAEDD:     var_E4 = 6
  loc_12BAF08:     Me.txtDisc.Text = CStr(Me.FGrid.TextMatrix))
  loc_12BAF2F:     Me.txtDisc.SelLength = 0
  loc_12BAF57:     Me.txtDisc.SelStart = Len(Me.txtDisc.Text)
  loc_12BAF66:     var_C4 = 6
  loc_12BAF79:     Me.FGrid.Col = var_C4
  loc_12BAF8B:     var_B0 = Me.FGrid.CellTop
  loc_12BAFBE:     Me.FrmeDisc.Top = ((CDbl(Me.FGrid.Top) + CDbl(CLng(var_B0))) + CDbl(200))
  loc_12BAFF8:     Me.FrmeDisc.Left = CDbl((CLng(Me.FGrid.CellLeft) + &HC8))
  loc_12BB015:     Me.FrmeDisc.Width = CDbl(1)
  loc_12BB02B:     Me.FrmeDisc.Height = CDbl(1)
  loc_12BB038:     global_212 = 1
  loc_12BB041:     global_216 = "Go"
  loc_12BB051:     Me.Timer1.Enabled = True
  loc_12BB059:   End If
  loc_12BB059: End If
  loc_12BB05D: Set var_88 = Me.TopCtrl1
  loc_12BB063: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(global_212)
  loc_12BB0A8: If ((CStr(var_B0) = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_12BB0B1:   Call Form_KeyDown(arg_C, arg_10)
  loc_12BB0B6: End If
  loc_12BB0BA: Set var_88 = Me.TopCtrl1
  loc_12BB0C0: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_E4)
  loc_12BB0D9: If (CStr(var_C4) = "Browse") Then
  loc_12BB0DC:   Exit Sub
  loc_12BB0DD: End If
  loc_12BB0FA: var_108 = Me.FGrid.Rows
  loc_12BB151: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_108) - 1))))) Then
  loc_12BB16A:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_12BB17A:   var_9C = "+{Tab}"
  loc_12BB180:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0, var_108)
  loc_12BB18A:   arg_C = 0
  loc_12BB190: Else
  loc_12BB19A:   var_B0 = Me.FGrid.Rows
  loc_12BB1E7:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12BB200:     Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_12BB208:     Call Proc_229_85_F0C8F0(var_B0, arg_C)
  loc_12BB20F:     arg_C = 0
  loc_12BB212:   End If
  loc_12BB212: End If
  loc_12BB218: global_128 = arg_C
  loc_12BB23E: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12BB262: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_12BB278:   var_110 = CLng(Me.FGrid.Col)
  loc_12BB288:   If (var_110 = CLng(4)) Then
  loc_12BB29E:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BB2B6:     var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BB2BB:     var_120 = vbNullString
  loc_12BB2C5:     Set var_F8 = Me.FGrid
  loc_12BB2CB:     LateIdCallSt
  loc_12BB2F6:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BB2FE:     var_E4 = CVar(CLng(&HA)) 'Long
  loc_12BB303:     var_120 = vbNullString
  loc_12BB30D:     Set var_A0 = Me.FGrid
  loc_12BB313:     LateIdCallSt
  loc_12BB338:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BB340:     var_E4 = CVar(CLng(7)) 'Long
  loc_12BB345:     var_120 = vbNullString
  loc_12BB34F:     Set var_A0 = Me.FGrid
  loc_12BB355:     LateIdCallSt
  loc_12BB37A:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BB382:     var_E4 = CVar(CLng(&HD)) 'Long
  loc_12BB387:     var_120 = vbNullString
  loc_12BB391:     Set var_A0 = Me.FGrid
  loc_12BB397:     LateIdCallSt
  loc_12BB3AC:   Else
  loc_12BB3B3:     If Not (var_110 = CLng(7)) Then
  loc_12BB3BD:       If (var_110 = CLng(3)) Then
  loc_12BB3C0:       End If
  loc_12BB3D3:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BB3EB:       var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BB3F0:       var_120 = vbNullString
  loc_12BB3FA:       Set var_F8 = Me.FGrid
  loc_12BB400:       LateIdCallSt
  loc_12BB41B:     Else
  loc_12BB422:       If (var_110 = CLng(9)) Then
  loc_12BB438:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BB450:         var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BB455:         var_120 = vbNullString
  loc_12BB45F:         Set var_F8 = Me.FGrid
  loc_12BB465:         LateIdCallSt
  loc_12BB47D:       End If
  loc_12BB47D:     End If
  loc_12BB47D:   End If
  loc_12BB47D: End If
  loc_12BB483: If (arg_C = &HD) Then
  loc_12BB48B:   global_130 = 0
  loc_12BB48E: End If
  loc_12BB490: arg_C = 0
  loc_12BB493: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'FB5A1C
  'Data Table: 542AE4
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_134 As String
  Dim arg_2CFF As Integer
  loc_FB5890: Set var_88 = Me.TopCtrl1
  loc_FB5896: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_FB58AF: If (CStr() = "Browse") Then
  loc_FB58B2:   Exit Sub
  loc_FB58B3: End If
  loc_FB58D0: If (CLng(Me.FGrid.Col) = CLng(9)) Then
  loc_FB58E6:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB58FE:   var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB5944:   If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "YES") Then
  loc_FB595A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB5972:     var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB5977:     var_134 = "No"
  loc_FB5981:     Set var_F4 = Me.FGrid
  loc_FB5987:     LateIdCallSt
  loc_FB59A2:   Else
  loc_FB59B5:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB59CD:     var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB59D2:     var_134 = "Yes"
  loc_FB59DC:     Set var_F4 = Me.FGrid
  loc_FB59E2:     LateIdCallSt
  loc_FB59FA:   End If
  loc_FB59FD: Else
  loc_FB5A06:   Call FGrid_UnknownEvent_C()
  loc_FB5A10:   global_130 = 0
  loc_FB5A13: End If
  loc_FB5A13: Call Proc_229_92_12622BC(global_130, CInt(&HD), var_F4, var_134, var_E0, var_C0)
  loc_FB5A18: Exit Sub
  loc_FB5A19: arg_2CFF = var_F4
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '1197D38
  'Data Table: 542AE4
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_F4 As Long
  Dim var_F8 As MSHFlexGrid
  Dim var_10C As Variant
  Dim var_12E As Integer
  loc_1197944: Set var_88 = Me.TopCtrl1
  loc_119794A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1197963: If (CStr() = "Browse") Then
  loc_1197966:   Exit Sub
  loc_1197967: End If
  loc_119797A: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1197982: var_CC = CVar(CLng(&HB)) 'Long
  loc_11979BA: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_11979BD:   Exit Sub
  loc_11979BE: End If
  loc_11979D1: var_F4 = CLng(Me.FGrid.Col)
  loc_11979E1: If (var_F4 = CLng(4)) Then
  loc_11979E8:   Set var_88 = Me.TopCtrl1
  loc_11979EE:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_F4)
  loc_11979F6:   var_9C = CStr(var_CC)
  loc_1197A08:   var_F0 = Me.FGrid.Col
  loc_1197A29:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1197A71:   If (CVar(CLng(4)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_1197A74:     Exit Sub
  loc_1197A75:   End If
  loc_1197A79:   Set var_10C = Me.FGrid
  loc_1197A95:   var_F0 = Ucase(Chr(CLng(Index)))
  loc_1197A9D:   var_9C = CStr(var_F0)
  loc_1197ACA:   Set var_E0 = var_10C
  loc_1197ADC:   Proc_6_63_110B734(Me, var_E0, Me.TxtGrid, 0, 0, Asc(var_9C))
  loc_1197B04:   Set var_88 = Me.TxtGrid
  loc_1197B0A:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_9C, 0)
  loc_1197B12:   var_12E = var_E0.Text
  loc_1197B2B:   If (Len(var_9C) <= 1) Then
  loc_1197B3A:     Set var_88 = Me.TxtGrid
  loc_1197B40:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_9C)
  loc_1197B48:     var_AC = var_E0.Text
  loc_1197B59:     Set var_F8 = Me.TxtGrid
  loc_1197B5F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_10C, var_9C)
  loc_1197B67:     var_10C.Text = ((var_9C = "Edit") And (CLng(var_F0) <> CLng(9)))
  loc_1197B7A:   End If
  loc_1197B86:   Set var_88 = Me.TxtGrid
  loc_1197B8C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0)
  loc_1197BA6:   Set var_F8 = Me.TxtGrid
  loc_1197BAC:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_10C)
  loc_1197BB4:   var_10C.SelStart = Len(var_E0.Text)
  loc_1197BCA: Else
  loc_1197BD1:   If (var_F4 = CLng(3)) Then
  loc_1197BEF:     If (((Index >= &H41) And (Index <= &H5A)) Or ((Index >= &H61) And (Index <= &H7A))) Then
  loc_1197C04:       Me.FGrid.Col = CVar(CLng(4))
  loc_1197C0C:     End If
  loc_1197C4A:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1197C5F:   Else
  loc_1197C66:     If Not (var_F4 = CLng(9)) Then
  loc_1197C70:       If (var_F4 = CLng(2)) Then
  loc_1197C73:       End If
  loc_1197CB1:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_1197CC6:     Else
  loc_1197CCD:       If (var_F4 = CLng(7)) Then
  loc_1197D0E:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index)
  loc_1197D20:       End If
  loc_1197D20:     End If
  loc_1197D20:   End If
  loc_1197D20: End If
  loc_1197D2A: If (CLng(Index) <> &HD) Then
  loc_1197D32:   global_130 = &HFF
  loc_1197D35: End If
  loc_1197D35: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '10011CC
  'Data Table: 542AE4
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_1000FD4: Set var_88 = Me.TopCtrl1
  loc_1000FDA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1000FF3: If (CStr() = "Browse") Then
  loc_1000FF6:   Exit Sub
  loc_1000FF7: End If
  loc_1000FFB: Set var_88 = Me.TopCtrl1
  loc_1001001: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_100101A: If (CStr() = "Edit") Then
  loc_100101D:   Exit Sub
  loc_100101E: End If
  loc_100103B: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_100103E:   Exit Sub
  loc_100103F: End If
  loc_1001050: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_1001072:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10010AC:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_10010CE:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10010E4:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10010ED:         Set var_110 = Me.FGrid
  loc_1001108:       Else
  loc_100111B:         Me.FGrid.Rows = 1
  loc_1001141:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_1001149:         Set var_110 = Me.FGrid
  loc_1001176:         Me.FGrid.FixedRows = 1
  loc_100117E:       End If
  loc_100117E:     End If
  loc_1001181:   Else
  loc_10011A2:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_10011B2:   End If
  loc_10011B6:   Set var_88 = Me.FGrid
  loc_10011C7: End If
  loc_10011C7: Exit Sub
  loc_10011C8: Exit Sub
  loc_10011C9: FGrid.DispID_8001.global_27864 = FGrid.DispID_10000
End Sub

Private Sub FGrid_UnknownEvent_14 'EE05F8
  'Data Table: 542AE4
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_EE055B: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EE0563: var_C8 = CVar(CLng(&HB)) 'Long
  loc_EE059B: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_EE05E2:   Proc_96_0_E6CA28(Me.FGrid, CInt(CLng(Me.FGrid.Row)), Me.lblclr.BackColor)
  loc_EE05F5: End If
  loc_EE05F5: Exit Sub
  loc_EE05F6: var_98 = arg_6C00
End Sub

Private Sub FGrid_UnknownEvent_15 'E45EA4
  'Data Table: 542AE4
  Dim var_8C As TextBox
  loc_E45E78: Call Proc_229_84_F6DD2C()
  loc_E45E88: Set var_88 = Me.TxtGrid
  loc_E45E8E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E45E96: var_8C.Visible = False
  loc_E45EA2: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED2CC8
  'Data Table: 542AE4
  loc_ED2C2C: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED2C2F:   Call DGTable_UnknownEvent_9()
  loc_ED2C34: End If
  loc_ED2C50: If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_ED2C53:   Call DGWaiter_UnknownEvent_9()
  loc_ED2C58: End If
  loc_ED2C74: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_ED2C77:   Call DGItem_UnknownEvent_9()
  loc_ED2C7C: End If
  loc_ED2C98: If (CBool(Me.DGNCType.Visible) = &HFF) Then
  loc_ED2C9B:   Call DGNCType_UnknownEvent_9()
  loc_ED2CA0: End If
  loc_ED2CBC: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_ED2CBF:   Call DGRest_UnknownEvent_9()
  loc_ED2CC4: End If
  loc_ED2CC4: Exit Sub
  loc_ED2CC5: Exit Sub
End Sub

Private Sub DGNCType_UnknownEvent_9 'F57C88
  'Data Table: 542AE4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F57B68: On Error Goto loc_F57C82
  loc_F57B7A: Me.DGNCType.Visible = False
  loc_F57B99: If (Me.RecordCount > 0) Then
  loc_F57BD8:   Set var_B4 = Me.Txt
  loc_F57BDE:   Call 0.Method_DGNCType_UnknownEvent_90 (CInt(7), var_B8)
  loc_F57BE6:   var_B8.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_F57C19:   var_B0 = Me.Fields.Item("NCPer")
  loc_F57C38:   Set var_B4 = Me.Txt
  loc_F57C3E:   Call 0.Method_DGNCType_UnknownEvent_90 (CInt(7), var_B8)
  loc_F57C46:   var_B8.Tag = CStr(var_B0.Value)
  loc_F57C5C: End If
  loc_F57C67: Set var_A8 = Me.Txt
  loc_F57C6D: Call 0.Method_DGNCType_UnknownEvent_90 (CInt(7))
  loc_F57C75: var_B0.SetFocus
  loc_F57C81: Exit Sub
  loc_F57C82: ' Referenced from: F57B68
  loc_F57C82: Proc_6_60_E63754(var_B0)
  loc_F57C87: Exit Sub
End Sub

Private Sub cmdNCBill_Click() '196B428
  'Data Table: 542AE4
  Dim var_11C As Variant
  Dim var_E0 As String
  Dim var_E4 As String
  Dim unk_542AFA As Connection15
  Dim var_108 As Variant
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_134 As String
  Dim var_130 As Variant
  Dim var_F4 As Variant
  Dim Me As Recordset15
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_CC As Recordset15
  Dim var_BC As Recordset15
  Dim var_104 As Variant
  Dim var_168 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_B8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_92 As Integer
  Dim var_240 As String
  Dim var_178 As Variant
  Dim var_274 As Variant
  Dim var_1F8 As Variant
  Dim var_288 As Variant
  Dim var_29C As Variant
  Dim var_2AC As Variant
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_3DC As Variant
  Dim var_DC As Double
  Dim var_2CC As Variant
  Dim var_2DC As Variant
  Dim var_3BC As Variant
  Dim var_2BC As Variant
  loc_196877A: var_11C = 0
  loc_19687AA: unk_542AFA.Execute "Select CKOTPrintYN From Depart Where Code='" & LocalRestCode & "'", var_104, -1
  loc_19687B2: var_108 = var_108.Fields
  loc_19687BA: var_11C = var_10C.Item(var_10C)
  loc_19687C2: var_120 = var_120.Value
  loc_19687F0: If (Proc_6_38_E69628(var_130) = "Y") Then
  loc_19687F6:   Call Proc_229_69_19462A4(var_136)
  loc_19687FB:   Exit Sub
  loc_19687FC: End If
  loc_19687FF: MemVar_1F953C4 = "N"
  loc_1968806: MemVar_1F953C8 = "N"
  loc_196880D: MemVar_1F953CC = "K"
  loc_196882C: If (Me.ChkNCTOKEN.Value <> 1) Then
  loc_196882F:   Exit Sub
  loc_1968830: End If
  loc_1968837: var_E0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (TOKEN K Left Join Waiter W on K.Waiter=W.Code) "
  loc_196887C: var_88 = CStr(CVar(var_E0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_196889B: var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.RestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_19688D9: var_8C = CStr(var_130 & Me.Fields.Item("SearchCode").Value & "'")
  loc_1968902: var_130 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.RestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1968922: var_10C = Me.Fields.Item("SearchCode")
  loc_196892A: var_104 = var_10C.Value
  loc_196893F: var_E0 = CStr(var_130 & var_104 & "'")
  loc_1968949: unk_542AFA.Execute var_E0, var_178, -1
  loc_1968954: Set var_BC = var_120
  loc_1968978: If (var_88 = vbNullString) Then
  loc_196897B:   Exit Sub
  loc_196897C: End If
  loc_1968984: If (var_8C = vbNullString) Then
  loc_1968987:   Exit Sub
  loc_1968988: End If
  loc_19689A6: Set var_108 = Me.Txt
  loc_19689AC: Call 0.Method_cmdNCBill_Click0 (CInt(4), var_10C, var_E0, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='", var_104)
  loc_19689B4: -1 = var_10C.Text
  loc_19689CD: unk_542AFA.Execute var_120 & var_E0 & "' AND CONTRADOCID IS NULL", var_120, var_130
  loc_1968A04: If (var_120.RecordCount = 1) Then
  loc_1968A0A:   var_C8 = "New Order"
  loc_1968A10: Else
  loc_1968A17:   Set var_108 = Me.LblState
  loc_1968A25:   var_C8 = var_108.Caption
  loc_1968A2B: End If
  loc_1968A41: unk_542AFA.Execute var_88, var_104, -1
  loc_1968A4C: Set var_B4 = var_108
  loc_1968A55: ' Referenced from: 196B3F4
  loc_1968A64: If Not(var_BC.EOF) Then
  loc_1968A7D:   unk_542AFA.Execute "SELECT KOTPrinting FROM Enviro", var_104, -1
  loc_1968AA0:   var_108 = var_108.Fields
  loc_1968ADB:   If (Trim(CVar(Proc_6_38_E69628(CVar(var_108.Item("KOTPrinting")), var_108))) = "Seperate for All Kitchen") Then
  loc_1968AE5:     var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1968B5E:     var_1D0 = var_130 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1968B9A:     var_8C = CStr(var_1D0 & var_BC.Fields.Item("Code").Value & "' and K.VoidYN<>'Y'")
  loc_1968BC8:   Else
  loc_1968BCF:     var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1968BE7:     var_108 = Me.Fields
  loc_1968BF7:     var_104 = var_108.Item("SearchCode").Value
  loc_1968C0D:     var_8C = CStr(var_130 & var_104 & "' and K.VoidYN<>'Y'")
  loc_1968C22:   End If
  loc_1968C38:   unk_542AFA.Execute var_8C, var_104, -1
  loc_1968C43:   Set var_B8 = var_108
  loc_1968C60:   If (var_B8.RecordCount > 0) Then
  loc_1968C72:     var_108 = var_BC.Fields
  loc_1968C91:     var_238 = Trim(CVar(var_108.Item("PrintType"))) 'Variant
  loc_1968CA6:     If (var_238 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1968CB6:       Call Proc_229_73_EFA61C(New, var_108)
  loc_1968CBE:       Set var_D0 = var_108
  loc_1968CC4:       Me.Recordset15.MoveFirst
  loc_1968CC9:       ' Referenced from: 1969943
  loc_1968CD8:       If Not(var_B4.EOF) Then
  loc_1968CF1:         If (0 = 0) Then
  loc_1968D12:           Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString)
  loc_1968D4E:           var_C0 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_1968D85:           var_130 = CVar(Me.LblRest.Caption) 'String
  loc_1968D88:           var_148 = (Space(1) + var_130)
  loc_1968D9D:           Call Proc_229_74_F156A0(var_D0, vbNullString, CStr(var_130 & Space(1)), vbNullString)
  loc_1968DCF:           Call Proc_229_74_F156A0(var_D0, vbNullString, " * NC Bill *", vbNullString)
  loc_1968DDD:           var_92 = &H12
  loc_1968DFE:           Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString, var_92)
  loc_1968E2A:           Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString)
  loc_1968E5E:           Proc_6_39_E7D3A0(var_130, CVar(var_B4.Fields.Item("VNo")), 1)
  loc_1968E9B:           Call Proc_229_74_F156A0(var_D0, vbNullString, " V No.     : " & Proc_6_45_EADFB8(CStr(var_130), &HA, var_92))
  loc_1968EC8:           var_108 = var_B4.Fields
  loc_1968F6B:           Call Proc_229_74_F156A0(var_D0, vbNullString, " Date.     : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_108.Item("VDate")), vbNullString), &HC) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")), var_108), 8))
  loc_1968FB2:           var_10C = var_B4.Fields.Item("Remarks")
  loc_1968FFD:           Call Proc_229_74_F156A0(var_D0, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_10C), vbNullString), &H1E))
  loc_196902F:           Set var_108 = Me.Label1
  loc_1969035:           Call 0.Method_cmdNCBill_Click0 (2, var_10C)
  loc_19690BE:           var_250 = Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")), vbNullString)), "000")), 5, 1)
  loc_19690C4:           var_240 = vbNullString
  loc_19690D3:           var_178 = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_10C))), &HA)))
  loc_19690DC:           var_190 = (var_BC.Fields.Item("Code").Value + ": ")
  loc_19690E6:           var_274 = (CVar(var_10C) & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value + CVar(var_250))
  loc_19690FB:           Call Proc_229_74_F156A0(var_D0, vbNullString, CStr(var_274))
  loc_196914D:           Call Proc_229_74_F156A0(var_D0, vbNullString, var_C0, vbNullString)
  loc_1969159:         End If
  loc_196917F:         var_148 = (var_240 + CVar(Proc_6_45_EADFB8("ITEM NAME", &H12, Space(1))))
  loc_1969193:         var_178 = (Trim(CVar(var_10C)) + Space(1))
  loc_19691AD:         var_1B0 = (1 + CVar(Proc_6_52_EAE084("Qty", 3, var_BC.Fields.Item("Code").Value)))
  loc_19691B9:         var_1D0 = Space(1)
  loc_19691C1:         var_1F8 = (CVar(var_B4.Fields.Item("TableNo")) + var_1D0)
  loc_19691DB:         var_228 = ("000" + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_19691EF:         var_288 = (CVar(var_250) + Space(1))
  loc_1969209:         var_2AC = (var_288 + CVar(Proc_6_52_EAE084("Amount", 7)))
  loc_1969240:         var_E4 = vbNullString
  loc_1969255:         Call Proc_229_74_F156A0(var_D0, vbNullString, CStr(var_2AC))
  loc_1969264:         var_E4 = vbNullString
  loc_1969279:         Call Proc_229_74_F156A0(var_D0, vbNullString, var_C0)
  loc_196928B:         var_92 = (var_92 + 4)
  loc_1969291:         var_B8.MoveFirst
  loc_1969296:         ' Referenced from: 19695B0
  loc_19692A5:         If Not(var_B8.EOF) Then
  loc_19692CA:           var_130 = var_B8.Fields.Item("ItemName").Value
  loc_19692F5:           Proc_6_39_E7D3A0(var_1D0, CVar(var_B8.Fields.Item("qty")), var_92)
  loc_196931D:           var_1A0 = "Rate"
  loc_1969340:           Proc_6_39_E7D3A0(var_2BC, CVar(var_B8.Fields.Item(var_1A0)), 1, 1)
  loc_196934F:           var_1C0 = "0.00"
  loc_196938B:           Proc_6_39_E7D3A0(var_344, CVar(var_B8.Fields.Item("qty")), 1, 1)
  loc_19693B6:           Proc_6_39_E7D3A0(var_36C, CVar(var_B8.Fields.Item("Rate")), var_E4)
  loc_196940E:           var_158 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_130), &H12, Space(1), 1)))
  loc_1969422:           var_190 = (Space(1) + Space(1))
  loc_1969438:           var_228 = CVar(Proc_6_52_EAE084(CStr(Format(var_1D0, "0")), 3, CVar(Proc_6_52_EAE084("Qty", 3, var_BC.Fields.Item("Code").Value)))) 'String
  loc_196943B:           var_274 = (var_E4 + var_228)
  loc_196944F:           var_29C = (Space(1) + Space(1))
  loc_1969468:           var_2FC = (CVar(Proc_6_52_EAE084("Amount", 7)) + CVar(Proc_6_52_EAE084(CStr(Format(var_2BC, var_1C0)), 6)))
  loc_196947C:           var_31C = (var_2FC + Space(1))
  loc_1969495:           var_3DC = (var_31C + CVar(Proc_6_52_EAE084(CStr(Format((var_344 * var_36C), "0.00")), 7)))
  loc_19694FB:           var_168 = CVar(var_DC) 'Double
  loc_196950E:           var_108 = var_B8.Fields
  loc_1969525:           Proc_6_39_E7D3A0(var_130, CVar(var_108.Item("qty")))
  loc_1969553:           Proc_6_39_E7D3A0(Space(1), CVar(var_B8.Fields.Item("Rate")), var_130)
  loc_196955F:           var_190 = (var_108 + (var_168 * Space(1)))
  loc_1969564:           var_DC = CSng(CVar(Proc_6_52_EAE084("Qty", 3, var_BC.Fields.Item("Code").Value)))
  loc_196957E:           var_E4 = vbNullString
  loc_1969593:           Call Proc_229_74_F156A0(var_D0, vbNullString, CStr(var_3DC))
  loc_19695A5:           var_92 = (var_92 + 1)
  loc_19695AB:           var_B8.MoveNext
  loc_19695B0:           GoTo loc_1969296
  loc_19695B3:         End If
  loc_19695CB:         Call Proc_229_74_F156A0(var_D0, vbNullString, var_C0, vbNullString)
  loc_19695F5:         Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString)
  loc_1969630:         var_11C = "0.00"
  loc_1969635:         var_158 = var_11C
  loc_1969682:         var_148 = (Space(&H16) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8, var_92)))
  loc_196968C:         var_1F8 = (CVar(var_B8.Fields.Item("Rate")) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_DC, var_158))))), 8, 1)))
  loc_19696A1:         Call Proc_229_74_F156A0(var_D0, vbNullString, CStr("0"), vbNullString)
  loc_19696EC:         Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString)
  loc_19696FD:         var_F4 = "WaiterName"
  loc_196973C:         var_240 = vbNullString
  loc_196975C:         Call Proc_229_74_F156A0(var_D0, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item(var_F4)), 1), &H14))
  loc_1969796:         Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString)
  loc_19697CB:         Call Proc_229_74_F156A0(var_D0, vbNullString, " ** " & MemVar_1F95220 & " **", vbNullString)
  loc_19697DE:         var_B4.MoveNext
  loc_1969801:         Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString)
  loc_196982D:         Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString)
  loc_1969859:         Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString)
  loc_1969885:         Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString)
  loc_19698B1:         Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString)
  loc_19698DD:         Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString)
  loc_1969909:         Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString)
  loc_1969935:         Call Proc_229_74_F156A0(var_D0, vbNullString, vbNullString, vbNullString)
  loc_1969943:         GoTo loc_1968CC9
  loc_1969946:       End If
  loc_1969949:       var_D4 = "WinTOKENPrint"
  loc_1969970:       Set var_108 = var_D0 
  loc_1969977:       CreateFieldDefFile(var_108, MemVar_1F950B4 & "\" & var_D4 & ".ttx", &HFF)
  loc_19699A9:       var_E4 = MemVar_1F950B4 & "\" & var_D4
  loc_19699B9:       Call 0.Method_arg_1C (var_E4 & ".RPT", var_F4, var_108)
  loc_19699C4:       MemVar_1F951E8 = var_108
  loc_19699ED:       Call 0.Method_arg_64 (var_108, CVar(var_108), var_11C, var_168)
  loc_19699F5:       Call 0.Method_arg_2C (var_240, var_E4)
  loc_1969A36:       If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_1969A83:         If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1969AB2:           Call Proc_229_71_F0F928(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))
  loc_1969AC0:         End If
  loc_1969AC0:       End If
  loc_1969ADD:       Call 0.Method_Me8 (False, 1, var_168)
  loc_1969AE7:       Set var_D0 = Nothing
  loc_1969AED:     Else
  loc_1969AF8:       If Not (var_238 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1969B06:         If (var_238 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1969B09:         End If
  loc_1969B0B:         Close 1
  loc_1969B2B:         var_134 = "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT"
  loc_1969B32:         Open var_134 For Output As 1 Len = &HFF
  loc_1969B42:         var_B4.MoveFirst
  loc_1969B47:         ' Referenced from:   196A5E5
  loc_1969B56:         If Not(var_B4.EOF) Then
  loc_1969B5B:           var_92 = 0
  loc_1969B6F:           If (var_92 = 0) Then
  loc_1969B74:             Print 1
  loc_1969BA8:             var_C0 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_1969BEF:             Call Proc_229_89_EFB31C(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14, 1, var_92), "D", &H28, var_240)
  loc_1969BF9:             Print 1, var_240
  loc_1969C37:             Call Proc_229_89_EFB31C(Proc_6_45_EADFB8("* NC Bill *", &H14, var_1A0), "D", &H28)
  loc_1969C41:             Print 1, var_134
  loc_1969C59:             Print 1
  loc_1969C61:             Print 1
  loc_1969C9A:             Proc_6_39_E7D3A0(var_158, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1969CBC:             var_130 = (Chr(&HF) + "V No.     :   ")
  loc_1969CC6:             var_190 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")))) + CVar(Proc_6_45_EADFB8(CStr(var_158), &HA, var_134)))
  loc_1969CCC:             Print 1, CVar(CStr(Format(var_DC, var_158)))
  loc_1969D7E:             var_130 = (Chr(&HF) + "Date.     :   ")
  loc_1969D88:             var_178 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_1C0), &HC)))
  loc_1969D91:             var_190 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_1C0), &HC))), &HA, Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_1C0))) + " ")
  loc_1969D9B:             var_1F8 = (CVar(CStr(Format(var_DC, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_1C0), &HC))))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1969DA1:             Print 1, "0"
  loc_1969DF6:             var_10C = var_B4.Fields.Item("Remarks")
  loc_1969E33:             var_130 = (Chr(&HF) + "Remarks :   ")
  loc_1969E3D:             var_178 = (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_10C)), &H32)))
  loc_1969E44:             var_1B0 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_10C)), &H32))), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_10C)), &H32))) + Chr(&H12))
  loc_1969E4A:             Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1969E83:             Set var_108 = Me.Label1
  loc_1969E89:             Call 0.Method_cmdNCBill_Click0 (2, var_10C)
  loc_1969F1E:             var_178 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_10C))), &HA)))
  loc_1969F27:             var_190 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_10C))), &HA))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_10C))), &HA))) + ":   ")
  loc_1969F2E:             var_228 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1969F31:             var_274 = (Chr(&H12) + var_228)
  loc_1969F37:             Print 1, Space(1)
  loc_1969F82:             var_130 = (Chr(&HF) + CVar(var_C0))
  loc_1969F88:             Print 1, CVar(var_10C)
  loc_1969F95:           End If
  loc_1969FBB:           var_148 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1969FD5:           var_178 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_10C)))))
  loc_1969FE1:           var_190 = Space(3)
  loc_1969FE9:           var_1B0 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_10C))))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_10C))), &HA))) + var_190)
  loc_196A003:           var_1F8 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_196A017:           var_228 = ("000" + Space(3))
  loc_196A031:           var_288 = (var_228 + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_196A077:           var_130 = (Chr(&HF) + CVar(CStr(Space(1))))
  loc_196A07D:           Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_196A0A0:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_196A0A6:           Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_196A0B9:           var_92 = (var_92 + 4)
  loc_196A0BF:           var_B8.MoveFirst
  loc_196A0C4:           ' Referenced from:   196A3CB
  loc_196A0D3:           If Not(var_B8.EOF) Then
  loc_196A123:             Proc_6_39_E7D3A0(var_190, CVar(var_B8.Fields.Item("qty")))
  loc_196A16E:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Amount", 7)), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_196A1B9:             Proc_6_39_E7D3A0(var_31C, CVar(var_B8.Fields.Item("qty")), 1, 1)
  loc_196A1E4:             Proc_6_39_E7D3A0(var_344, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_196A234:             var_130 = Space(3)
  loc_196A23C:             var_158 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + var_130)
  loc_196A252:             var_1F8 = CVar(Proc_6_52_EAE084(CStr(Format(var_190, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_196A255:             var_208 = (1 + var_1F8)
  loc_196A269:             var_274 = (Space(3) + Space(3))
  loc_196A27F:             var_2CC = CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Amount", 7)), "0.00")), 6, CVar(Proc_6_52_EAE084("Amount", &HA)))) 'String
  loc_196A282:             var_2DC = (&H12 + var_2CC)
  loc_196A296:             var_2FC = (Format(Format(CVar(Proc_6_52_EAE084("Amount", 7)), "0.00"), "0.00") + Space(3))
  loc_196A2AF:             var_3BC = (var_2FC + CVar(Proc_6_52_EAE084(CStr(Format((var_31C * var_344), "0.00")), &HA)))
  loc_196A33B:             Proc_6_39_E7D3A0(var_130, CVar(var_B8.Fields.Item("qty")))
  loc_196A369:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty"))))), CVar(var_B8.Fields.Item("Rate")), var_130)
  loc_196A375:             var_190 = (var_DC + (CVar(var_DC) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))))
  loc_196A37A:             var_DC = CSng(var_190)
  loc_196A3A7:             var_130 = (Chr(&HF) + CVar(CStr(Format((var_344 * (var_31C * var_344)), "0.00"))))
  loc_196A3AD:             Print 1, var_130
  loc_196A3C0:             var_92 = (var_92 + 1)
  loc_196A3C6:             var_B8.MoveNext
  loc_196A3CB:             GoTo loc_196A0C4
  loc_196A3CE:           End If
  loc_196A3E4:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_196A3EA:           Print 1, var_130
  loc_196A3FC:           Print 1, vbNullString
  loc_196A482:           var_148 = (Chr(&HF) + Space(&H25))
  loc_196A48C:           var_178 = (CVar(var_B8.Fields.Item("Rate")) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8)))
  loc_196A496:           var_228 = ((CVar(var_DC) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_DC, "0.00"))))), &HB, 1)))
  loc_196A49C:           Print 1, Space(3)
  loc_196A4CD:           Print 1, vbNullString
  loc_196A527:           var_130 = (Chr(&HF) + "Waiter Name  :   ")
  loc_196A531:           var_178 = (Space(&H25) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14)))
  loc_196A537:           Print 1, (CVar(var_DC) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty"))))))
  loc_196A558:           Print 1
  loc_196A573:           var_130 = (Chr(&HF) + "** ")
  loc_196A57D:           var_148 = (Space(&H25) + CVar(MemVar_1F95220))
  loc_196A586:           var_158 = (CVar(var_B4.Fields.Item("WaiterName")) + " **")
  loc_196A58C:           Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14))
  loc_196A5A0:           var_B4.MoveNext
  loc_196A5A7:           Print 1
  loc_196A5AF:           Print 1
  loc_196A5B7:           Print 1
  loc_196A5BF:           Print 1
  loc_196A5C7:           Print 1
  loc_196A5CF:           Print 1
  loc_196A5D7:           Print 1
  loc_196A5DF:           Print 1
  loc_196A5E5:           GoTo loc_1969B47
  loc_196A5E8:         End If
  loc_196A5EA:         Close 1
  loc_196A625:         If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), &H12) <> vbNullString) Then
  loc_196A64D:           Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_196A6AB:           Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value
  loc_196A6CB:         Else
  loc_196A6F5:           Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_196A706:         End If
  loc_196A708:         Close 1
  loc_196A712:         If (MemVar_1F953BC = "Y") Then
  loc_196A744:           var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_196A755:         Else
  loc_196A784:           var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_196A792:         End If
  loc_196A795:       Else
  loc_196A7A0:         If Not (var_238 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_196A7AE:           If (var_238 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_196A7B1:           End If
  loc_196A7B3:           Close 1
  loc_196A7DA:           Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_196A7EA:           var_B4.MoveFirst
  loc_196A7EF:           ' Referenced from:     196B22D
  loc_196A7FE:           If Not(var_B4.EOF) Then
  loc_196A80E:             var_90 = "* TOKEN *"
  loc_196A83F:             var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_196A84E:             If (0 = 0) Then
  loc_196A853:               Print 1
  loc_196A882:               var_178 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_196A8C5:               var_2AC = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_196A8EF:               var_1D0 = (Chr(&HF) + Space(CLng(((CVar(var_DC) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))) / 2))))
  loc_196A8F6:               var_228 = (CVar(CStr(Format(var_DC, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_196A8FD:               var_2DC = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_196A904:               var_2FC = (Format(("0.00" / 2), "0.00") + Chr(&H12))
  loc_196A90A:               Print 1, var_2FC
  loc_196A958:               var_158 = (42 - Len(Trim(var_90)))
  loc_196A98B:               var_228 = (42 - Len(Trim(var_90)))
  loc_196A9B5:               var_1B0 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_196A9BF:               var_1D0 = (Space(CLng(((CVar(var_DC) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))) / 2))) + CVar(var_90))
  loc_196A9C6:               var_29C = (CVar(CStr(Format(var_DC, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_196A9CD:               var_2BC = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_196A9D3:               Print 1, ("0.00" / 2)
  loc_196A9F2:               var_92 = &H12
  loc_196A9F7:               Print 1
  loc_196A9FF:               Print 1
  loc_196AA38:               Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("VNo")), var_92)
  loc_196AA67:               var_130 = (Chr(&HF) + "TOKEN No.   :     ")
  loc_196AA71:               var_190 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)))
  loc_196AA78:               var_1D0 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_196AA7E:               Print 1, CVar(CStr(Format(var_DC, "0.00")))
  loc_196AB41:               var_130 = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_196AB4B:               var_178 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_92), &HC)))
  loc_196AB54:               var_190 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + " ")
  loc_196AB5E:               var_1F8 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_196AB65:               var_228 = (Trim(var_90) + Chr(&H12))
  loc_196AB6B:               Print 1, Space(3)
  loc_196ABC4:               var_10C = var_B4.Fields.Item("Remarks")
  loc_196AC01:               var_130 = (Chr(&HF) + "Remarks :     ")
  loc_196AC0B:               var_178 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_10C)), &H20)))
  loc_196AC12:               var_1B0 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_196AC18:               Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_196AC51:               Set var_108 = Me.Label1
  loc_196AC57:               Call 0.Method_cmdNCBill_Click0 (2, var_10C)
  loc_196ACF9:               var_178 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_10C))), &HA)))
  loc_196AD02:               var_190 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + ":     ")
  loc_196AD09:               var_228 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_196AD0C:               var_274 = (Chr(&H12) + var_228)
  loc_196AD13:               var_29C = ((Space(3) / 2) + Chr(&H12))
  loc_196AD19:               Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_196AD75:               var_130 = (Chr(&HF) + CVar(var_C0))
  loc_196AD7C:               var_158 = (CVar(var_10C) + Chr(&H12))
  loc_196AD82:               Print 1, CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_10C))), &HA))
  loc_196AD93:             End If
  loc_196ADB9:             var_148 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Space(3))
  loc_196ADD3:             var_178 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))
  loc_196ADDF:             var_190 = Space(3)
  loc_196ADE7:             var_1B0 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + var_190)
  loc_196AE01:             var_1F8 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_196AE4A:             var_130 = (Chr(&HF) + CVar(CStr("000")))
  loc_196AE51:             var_158 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_196AE57:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_196AE8B:             var_130 = (Chr(&HF) + CVar(var_C0))
  loc_196AE92:             var_158 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_196AE98:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_196AEAF:             var_92 = (var_92 + 4)
  loc_196AEB5:             var_B8.MoveFirst
  loc_196AEBA:             ' Referenced from:     196B089
  loc_196AEC9:             If Not(var_B8.EOF) Then
  loc_196AF19:               Proc_6_39_E7D3A0(var_190, CVar(var_B8.Fields.Item("qty")))
  loc_196AF64:               Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_196AFAE:               var_158 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_196AFC7:               var_208 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_190, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))))
  loc_196AFDB:               var_274 = (Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000") + Space(3))
  loc_196AFF4:               var_2DC = (var_92 + CVar(Proc_6_52_EAE084(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_196B05A:               var_130 = (Chr(&HF) + CVar(CStr(Format(Format(Len(Trim(CVar(Me.LblRest))), "0.00"), "0.00"))))
  loc_196B061:               var_158 = (Space(3) + Chr(&H12))
  loc_196B067:               Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_196B07E:               var_92 = (var_92 + 1)
  loc_196B084:               var_B8.MoveNext
  loc_196B089:               GoTo loc_196AEBA
  loc_196B08C:             End If
  loc_196B0AF:             var_130 = (Chr(&HF) + CVar(var_C0))
  loc_196B0B6:             var_158 = (Space(3) + Chr(&H12))
  loc_196B0BC:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_196B12E:             var_130 = (Chr(&HF) + "Waiter Name  :     ")
  loc_196B138:             var_178 = (Space(3) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92), &H14)))
  loc_196B13F:             var_1B0 = (CVar(var_B8.Fields.Item("qty")) + Chr(&H12))
  loc_196B145:             Print 1, "0.00"
  loc_196B18D:             var_178 = Chr(&H12)
  loc_196B19A:             var_130 = (Chr(&HF) + "***  ")
  loc_196B1AD:             var_190 = ("  ***" + var_178)
  loc_196B1B7:             Print 1, Space(3) & Trim(var_C8) & Chr(&H12)
  loc_196B1D0:             Print 1
  loc_196B1EB:             var_130 = (Chr(&HF) + "** ")
  loc_196B1F5:             var_148 = (Space(3) + CVar(MemVar_1F95220))
  loc_196B1FE:             var_158 = (Trim(var_C8) + " **")
  loc_196B204:             Print 1, Space(3) & Trim(var_C8)
  loc_196B218:             var_B4.MoveNext
  loc_196B21F:             Print 1
  loc_196B227:             Print 1
  loc_196B22D:             GoTo loc_196A7EF
  loc_196B230:           End If
  loc_196B232:           Close 1
  loc_196B26D:           If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_196B295:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_196B2ED:             var_148 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_196B2F3:             Print 1, var_148
  loc_196B313:           Else
  loc_196B338:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_196B36F:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_196B380:           End If
  loc_196B382:           Close 1
  loc_196B384:         End If
  loc_196B384:       End If
  loc_196B384:     End If
  loc_196B387:   Else
  loc_196B3D1:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, Space(3) & Trim(var_C8), var_178, Chr(&H12))
  loc_196B3EC:   End If
  loc_196B3EF:   var_BC.MoveNext
  loc_196B3F4:   GoTo loc_1968A55
  loc_196B3F7: End If
  loc_196B3FC: Set var_B4 = Nothing
  loc_196B404: Set var_B8 = Nothing
  loc_196B40C: Set var_BC = Nothing
  loc_196B414: Set var_CC = Nothing
  loc_196B41C: Set var_D0 = Nothing
  loc_196B41F: Exit Sub
  loc_196B420: Proc_6_60_E63754(var_DC)
  loc_196B425: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12AF010
  'Data Table: 542AE4
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_12AE9F6: Set var_88 = Me.TxtGrid
  loc_12AE9FC: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12AEA0A: Proc_6_74_E23240(var_8C)
  loc_12AEA16: Call Proc_229_84_F6DD2C(var_8C)
  loc_12AEA29: Set var_88 = Me.TxtGrid
  loc_12AEA2F: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12AEA37: var_8C.MaxLength = 0
  loc_12AEA4F: If (Index = 0) Then
  loc_12AEA68:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_12AEA83:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AEAC2:   Set var_108 = Me.TxtGrid
  loc_12AEAC8:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12AEAD0:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_12AEB01:   var_114 = CLng(Me.FGrid.Col)
  loc_12AEB11:   If (var_114 = CLng(3)) Then
  loc_12AEB3B:     Set var_8C = Me.FGrid
  loc_12AEB61:     Me.Filter = CVar(CVar(CLng(1)) & CStr(var_8C.TextMatrix)) & "'")
  loc_12AEB8B:     Set var_88 = Me.TxtGrid
  loc_12AEB91:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 4, CVar(CLng(Me.FGrid.Row)))
  loc_12AEB99:     var_8C.MaxLength = "OutletCode='"
  loc_12AEBA8:   Else
  loc_12AEBAF:     If (var_114 = CLng(4)) Then
  loc_12AEBD5:       Proc_6_137_1192FDC(Me.DGItem, global_88, Index, Me.FGPoint)
  loc_12AEC30:       Me.Filter = CVar(CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'")
  loc_12AEC63:       If (Me.RecordCount > 0) Then
  loc_12AEC89:         Proc_6_137_1192FDC(Me.DGItem, global_88, Index, Me.FGPoint, CVar(CLng(Me.FGrid.Row)))
  loc_12AEC97:       End If
  loc_12AECA0:       var_11C = Me.RecordCount
  loc_12AECB7:       var_11E = Me.EOF
  loc_12AECCB:       var_120 = Me.BOF
  loc_12AECEB:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AED27:       If (CVar(CLng(&HA)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_12AED2A:         Exit Sub
  loc_12AED2B:       End If
  loc_12AED31:       Me.MoveFirst
  loc_12AED49:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AED51:       var_E4 = CVar(CLng(&HA)) 'Long
  loc_12AED5A:       Set var_8C = Me.FGrid
  loc_12AED60:       var_D4 = var_8C.TextMatrix)
  loc_12AED95:       Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_12AEDC5:       If (Me.EOF = &HFF) Then
  loc_12AEDCE:         Me.MoveFirst
  loc_12AEDD3:       End If
  loc_12AEDDC:       CVarUnk
  loc_12AEDE1:       VerifyVarObj
  loc_12AEDE7:       Set var_88 = Me.DGItem
  loc_12AEDED:       LateIdStAd
  loc_12AEDFE:     Else
  loc_12AEE05:       If (var_114 = CLng(7)) Then
  loc_12AEE1D:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, Me.TxtGrid, global_88, var_134, var_D4)
  loc_12AEE25:         var_8C.MaxLength = var_E4
  loc_12AEE3A:         If (global_130 = 0) Then
  loc_12AEE45:           var_110 = "{Home}+{End}"
  loc_12AEE4B:           Proc_303_0_FBACC8(CStr(var_D4), 0, var_A4, var_A4)
  loc_12AEE53:         End If
  loc_12AEE56:       Else
  loc_12AEE5D:         If (var_114 = CLng(2)) Then
  loc_12AEE77:           If (Me.RecordCount > 0) Then
  loc_12AEE9D:             Proc_6_137_1192FDC(Me.DGRest, global_104, Index, Me.FGPoint)
  loc_12AEEAB:           End If
  loc_12AEEB4:           var_11C = Me.RecordCount
  loc_12AEECB:           var_11E = Me.EOF
  loc_12AEEDF:           var_120 = Me.BOF
  loc_12AEEFF:           var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AEF3B:           If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_12AEF3E:             Exit Sub
  loc_12AEF3F:           End If
  loc_12AEF45:           Me.MoveFirst
  loc_12AEF5D:           var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AEF65:           var_E4 = CVar(CLng(1)) 'Long
  loc_12AEFA9:           Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_12AEFD9:           If (Me.EOF = &HFF) Then
  loc_12AEFE2:             Me.MoveFirst
  loc_12AEFE7:           End If
  loc_12AEFF0:           CVarUnk
  loc_12AEFF5:           VerifyVarObj
  loc_12AEFFB:           Set var_88 = Me.DGRest
  loc_12AF001:           LateIdStAd
  loc_12AF00F:         End If
  loc_12AF00F:       End If
  loc_12AF00F:     End If
  loc_12AF00F:   End If
  loc_12AF00F: End If
  loc_12AF00F: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13A0AA4
  'Data Table: 542AE4
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
  loc_13A01E7: var_86 = Shift
  loc_13A01F6: If (KeyCode = 0) Then
  loc_13A0203:   If (CLng(Shift) = &H1B) Then
  loc_13A0213:     Set var_8C = Me.TxtGrid
  loc_13A0219:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_13A0221:     var_88 = var_90.Tag
  loc_13A0233:     Set var_98 = Me.TxtGrid
  loc_13A0239:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_13A0241:     var_9C.Text = var_94
  loc_13A025D:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13A0262:     Call Proc_229_84_F6DD2C(arg_14)
  loc_13A026B:     Set var_8C = Me.FGrid
  loc_13A0288:     Set var_8C = Me.TxtGrid
  loc_13A028E:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_13A0296:     var_90.Visible = FGrid.DispID_8001
  loc_13A02A2:     Exit Sub
  loc_13A02A3:   End If
  loc_13A02B6:   var_B0 = CLng(Me.FGrid.Col)
  loc_13A02C6:   If (var_B0 = CLng(4)) Then
  loc_13A02E6:     Set var_9C = Me.FGPoint
  loc_13A02F1:     Set var_98 = Nothing
  loc_13A031F:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_88, Shift, &HFF)
  loc_13A038E:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_13A0395:       Set var_98 = Me.DGItem
  loc_13A03B4:       Proc_6_138_106E830(var_98, global_88, KeyCode, Me.FGPoint, 1)
  loc_13A03C2:     End If
  loc_13A03CC:     If (CLng(Shift) = &HD) Then
  loc_13A03D5:       Call Proc_229_77_17018E8(KeyCode, var_B2, var_98, var_9C)
  loc_13A03E0:       If (var_B2 = &HFF) Then
  loc_13A0426:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_130, 7)
  loc_13A0436:       End If
  loc_13A0436:     End If
  loc_13A0439:   Else
  loc_13A0440:     If (var_B0 = CLng(2)) Then
  loc_13A044E:       Set var_C0 = Me.TxtGrid
  loc_13A0499:       Proc_6_69_134A630(Me.DGRest, var_C0, KeyCode, global_104, Shift, &HFF, 1, Nothing)
  loc_13A0508:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_13A052E:         Proc_6_138_106E830(Me.DGRest, global_104, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13A053C:       End If
  loc_13A0546:       If (CLng(Shift) = &HD) Then
  loc_13A054F:         Call Proc_229_77_17018E8(KeyCode, var_B2, 0, 7)
  loc_13A055A:         If (var_B2 = &HFF) Then
  loc_13A05A0:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_130, 7, 0)
  loc_13A05B0:         End If
  loc_13A05B0:       End If
  loc_13A05B3:     Else
  loc_13A05BA:       If (var_B0 = CLng(3)) Then
  loc_13A05C7:         If (CLng(Shift) = &HD) Then
  loc_13A05D0:           Call Proc_229_77_17018E8(KeyCode, var_B2, 3, 0)
  loc_13A05DB:           If (var_B2 = &HFF) Then
  loc_13A0628:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_130, CByte((CInt(7) + 1)), 0)
  loc_13A064B:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A0653:             var_FC = CVar(CLng(3)) 'Long
  loc_13A0686:             If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13A069B:               Me.FGrid.Col = CVar(CLng(4))
  loc_13A06A6:             Else
  loc_13A06A9:               var_DC = CVar(CLng(7)) 'Long
  loc_13A06B8:               Me.FGrid.Col = var_DC
  loc_13A06C0:             End If
  loc_13A06C0:           End If
  loc_13A06C0:         End If
  loc_13A06C3:       Else
  loc_13A06CA:         If (var_B0 = CLng(7)) Then
  loc_13A070D:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_130 = &HFF))) Then
  loc_13A0716:             Call Proc_229_77_17018E8(KeyCode, var_B2, var_FC, var_DC, 0)
  loc_13A0721:             If (var_B2 = &HFF) Then
  loc_13A0737:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A073F:               var_FC = CVar(CLng(&HA)) 'Long
  loc_13A074E:               var_11C = Me.FGrid.TextMatrix)
  loc_13A0784:               var_17C = Me.FGrid.TextMatrix)
  loc_13A079E:               Set var_BC = Me.Txt
  loc_13A07A4:               Call 0.Method_TxtGrid_KeyDown0 (CInt(1), var_C0, var_280, var_17C, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_11C)
  loc_13A07AC:               var_FC = var_C0.Text
  loc_13A07C4:               var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A07DC:               var_1D0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13A0827:               var_22C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A082F:               var_24C = CVar(CLng(0)) 'Long
  loc_13A0885:               Call Proc_229_78_155CFE0(CStr(var_11C), CStr(var_17C), var_280, CInt(Val(CStr(Me.FGrid.TextMatrix)))), CInt(CLng(Me.FGrid.Row)), CInt(Val(CStr(Me.FGrid.TextMatrix)))), var_CA, Val(CStr(Me.FGrid.TextMatrix))))
  loc_13A08CC:               If var_CA Then
  loc_13A08CF:               End If
  loc_13A08E1:               Me.FGrid.Col = CVar(CLng(7))
  loc_13A0933:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_130, CByte((CInt(9) - 1)), 0, 0)
  loc_13A0956:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A095E:               var_FC = CVar(CLng(1)) 'Long
  loc_13A0971:               Set var_90 = Me.FGrid
  loc_13A0977:               LateIdCallSt
  loc_13A099C:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A09A4:               var_FC = CVar(CLng(2)) 'Long
  loc_13A09B7:               Set var_90 = Me.FGrid
  loc_13A09BD:               LateIdCallSt
  loc_13A09D2:               var_DC = CVar(CLng(3)) 'Long
  loc_13A09E1:               Me.FGrid.Col = var_DC
  loc_13A09E9:             End If
  loc_13A09E9:           End If
  loc_13A09EC:         Else
  loc_13A09F3:           If (var_B0 = CLng(9)) Then
  loc_13A0A36:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_130 = &HFF))) Then
  loc_13A0A3F:               Call Proc_229_77_17018E8(KeyCode, var_B2, var_90, global_72, var_FC, var_DC, var_90)
  loc_13A0A4A:               If (var_B2 = &HFF) Then
  loc_13A0A90:                 Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_130, 9, 0, 0)
  loc_13A0AA0:               End If
  loc_13A0AA0:             End If
  loc_13A0AA0:           End If
  loc_13A0AA0:         End If
  loc_13A0AA0:       End If
  loc_13A0AA0:     End If
  loc_13A0AA0:   End If
  loc_13A0AA0: End If
  loc_13A0AA0: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10A8D5C
  'Data Table: 542AE4
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As MSHFlexGrid
  Dim var_A4 As String
  loc_10A8A8F: Proc_6_58_E06050(arg_10)
  loc_10A8AA0: If (KeyAscii = 0) Then
  loc_10A8AB6:   var_A0 = CLng(Me.FGrid.Col)
  loc_10A8AC6:   If (var_A0 = CLng(4)) Then
  loc_10A8AE5:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10A8AF7:       var_A4 = "Name"
  loc_10A8B12:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_88, arg_10)
  loc_10A8B44:       Proc_6_138_106E830(Me.DGItem, global_88, KeyAscii, Me.FGPoint)
  loc_10A8B52:     End If
  loc_10A8B55:   Else
  loc_10A8B5C:     If (var_A0 = CLng(2)) Then
  loc_10A8B7B:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_10A8BA8:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_104, arg_10, "Name")
  loc_10A8BDA:         Proc_6_138_106E830(Me.DGRest, global_104, KeyAscii, Me.FGPoint, 0)
  loc_10A8BE8:       End If
  loc_10A8BEB:     Else
  loc_10A8BF2:       If (var_A0 = CLng(3)) Then
  loc_10A8C10:         If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_10A8C25:           Me.FGrid.Col = CVar(CLng(4))
  loc_10A8C49:           If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10A8C76:             Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_88, arg_10, "Name")
  loc_10A8C85:           End If
  loc_10A8C85:         End If
  loc_10A8C88:       Else
  loc_10A8C8F:         If (var_A0 = CLng(7)) Then
  loc_10A8CB6:           Set var_AC = Me.FGrid
  loc_10A8CC7:           var_A4 = CStr(var_AC.TextMatrix))
  loc_10A8CE5:           If (CDbl(Val(var_A4)) = CDbl(0)) Then
  loc_10A8CF2:             Set var_8C = Me.TxtGrid
  loc_10A8CF8:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), 0)
  loc_10A8D13:             Proc_6_42_129B55C(var_AC, arg_10, 4, 2)
  loc_10A8D22:           Else
  loc_10A8D2C:             Set var_8C = Me.TxtGrid
  loc_10A8D32:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_10A8D4D:             Proc_6_42_129B55C(var_AC, arg_10, 4, 0)
  loc_10A8D59:           End If
  loc_10A8D59:         End If
  loc_10A8D59:       End If
  loc_10A8D59:     End If
  loc_10A8D59:   End If
  loc_10A8D59: End If
  loc_10A8D59: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10971D4
  'Data Table: 542AE4
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_1096F30: On Error Goto loc_10971CD
  loc_1096F36: var_86 = KeyCode
  loc_1096F3F: If (var_86 = 0) Then
  loc_1096F55:   var_A0 = CLng(Me.FGrid.Col)
  loc_1096F65:   If (var_A0 = CLng(2)) Then
  loc_1096F8B:     If ((Shift <> &HD) And (CBool(Me.DGRest.Visible) = 0)) Then
  loc_1096F9C:       Call TxtGrid_KeyDown(KeyCode, global_128)
  loc_1096FCB:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_104, Shift, "Name")
  loc_1096FDA:     End If
  loc_1096FDD:   Else
  loc_1096FE4:     If (var_A0 = CLng(4)) Then
  loc_109700A:       If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_109701B:         Call TxtGrid_KeyDown(KeyCode, global_128)
  loc_1097024:         Set var_AC = Me.TxtGrid
  loc_109702F:         var_A8 = "Name"
  loc_109704A:         Proc_6_89_1470B00(var_AC, KeyCode, global_88, Shift, var_A8, &HFF)
  loc_1097059:       End If
  loc_109705C:     Else
  loc_1097063:       If (var_A0 = CLng(9)) Then
  loc_1097070:         Set var_B0 = Me.TxtGrid
  loc_1097076:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_B4, 0, &HFF)
  loc_1097088:         Set var_8C = Me.TxtGrid
  loc_109708E:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8)
  loc_1097096:         0 = var_AC.Text
  loc_10970F9:         If CBool((Len(var_A8) = 0) Or (Ucase(Mid(CVar(var_B4), 1, 1)) = "Y")) Then
  loc_1097109:           Set var_8C = Me.TxtGrid
  loc_109710F:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, "Yes")
  loc_1097117:           var_AC.Text = var_A0
  loc_1097126:         Else
  loc_1097130:           Set var_8C = Me.TxtGrid
  loc_1097136:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1097178:           If (Ucase(Mid(CVar(var_AC), 1, 1)) = "N") Then
  loc_1097188:             Set var_8C = Me.TxtGrid
  loc_109718E:             Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1097196:             var_AC.Text = "No"
  loc_10971A5:           Else
  loc_10971B2:             Set var_8C = Me.TxtGrid
  loc_10971B8:             Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_10971C0:             var_AC.Text = "Yes"
  loc_10971CC:           End If
  loc_10971CC:         End If
  loc_10971CC:       End If
  loc_10971CC:     End If
  loc_10971CC:   End If
  loc_10971CC: End If
  loc_10971CC: Exit Sub
  loc_10971CD: ' Referenced from: 1096F30
  loc_10971CD: Proc_6_60_E63754(var_86)
  loc_10971D2: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E24794
  'Data Table: 542AE4
  Dim arg_10 As Integer
  loc_E2477C: If (Cancel = 0) Then
  loc_E24785:   Call Proc_229_77_17018E8(Cancel, var_88)
  loc_E2478E:   arg_10 = Not(var_88)
  loc_E24791: End If
  loc_E24791: Exit Sub
End Sub

Private Sub ChkNCTOKEN_Click() '11ADE30
  'Data Table: 542AE4
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_D8 As Integer
  Dim var_B4 As String
  Dim unk_542AFA As Connection15
  Dim var_DC As Field20
  Dim var_88 As Recordset15
  Dim arg_6C48 As Variant
  loc_11ADA28: Set var_8C = Me.TopCtrl1
  loc_11ADA2E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_11ADA47: If (CStr() = "Browse") Then
  loc_11ADA4A:   Exit Sub
  loc_11ADA4B: End If
  loc_11ADA66: If (Me.ChkNCTOKEN.Value = 1) Then
  loc_11ADA77:   Set var_8C = Me.Txt
  loc_11ADA7D:   Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_A8)
  loc_11ADA97:   If (var_A8.Visible = 0) Then
  loc_11ADAA7:     Set var_8C = Me.Txt
  loc_11ADAAD:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_A8)
  loc_11ADAB5:     var_A8.Visible = True
  loc_11ADACC:     Set var_8C = Me.Label1
  loc_11ADAD2:     Call 0.Method_ChkNCTOKEN_Click0 (4, var_A8)
  loc_11ADADA:     var_A8.Visible = True
  loc_11ADAE6:   End If
  loc_11ADB01:   var_AC = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_11ADB18:   var_D8 = 0
  loc_11ADB38:   var_B4 = "Select 'N'+ ShortName From Depart Where Code='" & LocalRestCode
  loc_11ADB48:   unk_542AFA.Execute var_B4 & "'", var_9C, -1
  loc_11ADB50:   var_8C = var_8C.Fields
  loc_11ADB58:   var_D8 = var_A8.Item(var_A8)
  loc_11ADB60:   var_DC = var_DC.Value
  loc_11ADB7F:   unk_542AFA.Execute CStr(var_EC & var_EC & "' Order by Description"), CVar(var_AC & MemVar_1F95078 & "') AND V_Type='"), var_150
  loc_11ADB8A:   Set var_88 = var_154
  loc_11ADBCA:   If (var_88.RecordCount > 0) Then
  loc_11ADBE7:     var_A8 = var_88.Fields.Item(0)
  loc_11ADBEF:     var_9C = var_A8.Value
  loc_11ADBF8:     var_A0 = CStr(var_9C)
  loc_11ADBFE:     global_156 = var_A0
  loc_11ADC15:     Call Proc_229_86_1185374(MemVar_1F95044, var_A0)
  loc_11ADC28:     Set var_8C = Me.Txt
  loc_11ADC2E:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(3), var_A8, var_A0)
  loc_11ADC36:     var_A8.Text = -1
  loc_11ADC45:   End If
  loc_11ADC48: Else
  loc_11ADC56:   Set var_8C = Me.Txt
  loc_11ADC5C:   Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_A8)
  loc_11ADC76:   If (var_A8.Visible = &HFF) Then
  loc_11ADC86:     Set var_8C = Me.Txt
  loc_11ADC8C:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_A8)
  loc_11ADC94:     var_A8.Visible = False
  loc_11ADCAB:     Set var_8C = Me.Label1
  loc_11ADCB1:     Call 0.Method_ChkNCTOKEN_Click0 (4, var_A8)
  loc_11ADCB9:     var_A8.Visible = False
  loc_11ADCC5:   End If
  loc_11ADCE0:   var_AC = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_11ADCF7:   var_D8 = 0
  loc_11ADD17:   var_B4 = "Select 'T'+ShortName From Depart Where Code='" & LocalRestCode
  loc_11ADD27:   unk_542AFA.Execute var_B4 & "'", var_9C, -1
  loc_11ADD2F:   var_8C = var_8C.Fields
  loc_11ADD37:   var_D8 = var_A8.Item(var_A8)
  loc_11ADD3F:   var_DC = var_DC.Value
  loc_11ADD5E:   unk_542AFA.Execute CStr(var_EC & var_EC & "' Order by Description"), CVar(var_AC & MemVar_1F95078 & "') AND V_Type='"), var_150
  loc_11ADD69:   Set var_88 = var_154
  loc_11ADDA9:   If (var_88.RecordCount > 0) Then
  loc_11ADDC6:     var_A8 = var_88.Fields.Item(0)
  loc_11ADDD7:     var_A0 = CStr(var_A8.Value)
  loc_11ADDDD:     global_156 = var_A0
  loc_11ADDF4:     Call Proc_229_86_1185374(MemVar_1F95044, var_A0, -1)
  loc_11ADE07:     Set var_8C = Me.Txt
  loc_11ADE0D:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(3), var_A8, var_A0)
  loc_11ADE15:     var_A8.Text = var_154
  loc_11ADE24:   End If
  loc_11ADE24: End If
  loc_11ADE29: Set var_88 = Nothing
  loc_11ADE2C: Exit Sub
  loc_11ADE2D: arg_6C48 = CVar(var_154) 'Long
End Sub

Private Sub DGRest_UnknownEvent_9 'FE4454
  'Data Table: 542AE4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE428F: Me.DGRest.Visible = False
  loc_FE42AE: If (Me.RecordCount > 0) Then
  loc_FE42EB:   Set var_B4 = Me.TxtGrid
  loc_FE42F1:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B8)
  loc_FE42F9:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE4322:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE432A:   var_EC = CVar(CLng(2)) 'Long
  loc_FE435D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE4365:   Set var_B8 = Me.FGrid
  loc_FE436B:   LateIdCallSt
  loc_FE439A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE43A2:   var_EC = CVar(CLng(1)) 'Long
  loc_FE43C4:   var_B0 = Me.Fields.Item("Code")
  loc_FE43D5:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE43DD:   Set var_B8 = Me.FGrid
  loc_FE43E3:   LateIdCallSt
  loc_FE43FF: End If
  loc_FE440B: Set var_A8 = Me.TxtGrid
  loc_FE4411: Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE4419: var_A4 = var_B0.Visible
  loc_FE442B: If (var_12E = &HFF) Then
  loc_FE4437:   Set var_A8 = Me.TxtGrid
  loc_FE443D:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE4445:   var_B0.SetFocus
  loc_FE4451: End If
  loc_FE4451: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E6EA7C
  'Data Table: 542AE4
  loc_E6EA3A: Proc_6_153_E91D24(Me.DGRest, arg_14)
  loc_E6EA51: Set var_8C = Me.FGPoint
  loc_E6EA6B: Proc_6_138_106E830(Me.DGRest, global_104, 0)
  loc_E6EA79: Exit Sub
End Sub

Private Sub lblclr_Click() 'F1435C
  'Data Table: 542AE4
  Dim arg_20 As Variant
  Dim var_B4 As Variant
  loc_F14276: arg_20 = Me.cdl._Action
  loc_F1429E: Me.lblclr.BackColor = CLng(Me.cdl.Color)
  loc_F142D2: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F142DC:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_F14314:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_F14342:     Proc_96_0_E6CA28(Me.FGrid, var_86, Me.lblclr.BackColor, CVar(CLng(&HB)))
  loc_F14350:   End If
  loc_F14353: Next var_A4 'Integer
  loc_F14358: Exit Sub
  loc_F14359:  = 
End Sub

Private Sub Form_Load() '149ABB4
  'Data Table: 542AE4
  Dim var_A0 As Variant
  Dim var_C8 As Variant
  Dim var_B8 As String
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_DC As Variant
  Dim Me As Recordset15
  Dim var_E0 As String
  Dim var_E4 As String
  Dim unk_542AFA As Connection15
  Dim var_88 As Recordset15
  Dim var_F8 As Variant
  Dim var_11C As Variant
  Dim var_1BC As Integer
  Dim var_180 As String
  Dim var_1A8 As Variant
  Dim var_1AC As Fields15
  Dim var_1C0 As Field20
  Dim var_108 As Variant
  Dim var_14C As Variant
  Dim var_16C As String
  Dim var_118 As Variant
  loc_1499F54: On Error Goto loc_149ABAD
  loc_1499F66: Call 0.Method_arg_7C (CDbl(0))
  loc_1499F72: Call 0.Method_arg_74 (CDbl(0))
  loc_1499F81: Set var_B4 = Me.TopCtrl1
  loc_1499F87: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_1499F95: Call 0.Method_arg_50 (var_B8)
  loc_1499F9D: var_C8 = CVar(var_B8) 'String
  loc_1499FA5: Set var_B4 = Me.TopCtrl1
  loc_1499FAB: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_C8)
  loc_1499FBC: If (MemVar_1F950B8 <> 1) Then
  loc_1499FC3:   Set var_B4 = Me.TopCtrl1
  loc_1499FC9:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(1)
  loc_1499FF3:   var_D8 = CVar(Replace(CStr(var_C8), "D", "*", 1, -1, 0)) 'String
  loc_1499FFB:   Set var_DC = Me.TopCtrl1
  loc_149A001:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(var_D8)
  loc_149A017: End If
  loc_149A046: global_76 = LocalRestCode
  loc_149A05A: Me.LblRest.Caption = global_80
  loc_149A083: If CBool(Trim(global_68) <> "Room Service") Then
  loc_149A093:   Set var_B4 = Me.Label1
  loc_149A099:   Call 0.Method_Form_Load0 (CInt(7), var_DC, 0)
  loc_149A0A1:   var_DC.Visible = Proc_96_17_FDCB2C(LocalRestCode, global_68, global_80)
  loc_149A0BA:   Set var_B4 = Me.Label1
  loc_149A0C0:   Call 0.Method_Form_Load0 (CInt(8), var_DC, 0)
  loc_149A0C8:   var_DC.Visible = global_72
  loc_149A0E1:   Set var_B4 = Me.Label1
  loc_149A0E7:   Call 0.Method_Form_Load0 (CInt(9), var_DC)
  loc_149A0EF:   var_DC.Visible = False
  loc_149A108:   Set var_B4 = Me.Txt
  loc_149A10E:   Call 0.Method_Form_Load0 (CInt(8), var_DC)
  loc_149A116:   var_DC.Visible = False
  loc_149A12F:   Set var_B4 = Me.Txt
  loc_149A135:   Call 0.Method_Form_Load0 (CInt(9), var_DC)
  loc_149A13D:   var_DC.Visible = False
  loc_149A156:   Set var_B4 = Me.Txt
  loc_149A15C:   Call 0.Method_Form_Load0 (CInt(&HA), var_DC)
  loc_149A164:   var_DC.Visible = False
  loc_149A170: End If
  loc_149A17A: Set global_180 = New 
  loc_149A18C: Me.CursorLocation = 3
  loc_149A1C0: var_E4 = "select MemberInfo from Depart where (Logsite_code='" & MemVar_1F95078 & "'or LOGSITE_CODE='HO') and Code='" & LocalRestCode
  loc_149A1D1: Me.Open CVar(var_E4 & "'"), CVar(MemVar_1F95044), 3
  loc_149A1F9: If (Me.RecordCount > 0) Then
  loc_149A216:   var_DC = Me.Fields.Item("MemberInfo")
  loc_149A21E:   var_C8 = CVar(var_DC) 'Address
  loc_149A238:   If (Proc_6_38_E69628(var_C8, 1) = "Y") Then
  loc_149A248:     Set var_B4 = Me.Txt
  loc_149A24E:     Call 0.Method_Form_Load0 (CInt(&HB), var_DC, &HFF)
  loc_149A256:     var_DC.Visible = True
  loc_149A26D:     Set var_B4 = Me.Label1
  loc_149A273:     Call 0.Method_Form_Load0 (&HB, var_DC)
  loc_149A27B:     var_DC.Visible = True
  loc_149A294:     Set var_B4 = Me.Txt
  loc_149A29A:     Call 0.Method_Form_Load0 (CInt(&HC), var_DC)
  loc_149A2A2:     var_DC.Visible = True
  loc_149A2CB:     Proc_6_17_EAAE40(var_C8, MemVar_1F95078, "SELECT * FROM MEMENVIRO WHERE LOGSITE_CODE=", var_108)
  loc_149A2D3:     var_D8 = -1 & var_C8 
  loc_149A2E1:     unk_542AFA.Execute CStr(var_D8), var_B4, global_84
  loc_149A2EC:     Set var_88 = var_B4
  loc_149A312:     If (var_88.RecordCount > 0) Then
  loc_149A32C:       var_DC = var_88.Fields.Item("MemberVarificationInKOT")
  loc_149A343:       global_172 = Proc_6_38_E69628(CVar(var_DC))
  loc_149A350:     End If
  loc_149A350:   End If
  loc_149A350: End If
  loc_149A35A: Set global_176 = New 
  loc_149A36C: Me.CursorLocation = 3
  loc_149A396: var_E0 = "Select SubCode as Code,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_149A3AE: Me.Open CVar(var_E0 & MemVar_1F95078 & "') Order By Name"), CVar(MemVar_1F95044), 3
  loc_149A3C8: CVarUnk
  loc_149A3CD: VerifyVarObj
  loc_149A3D3: Set var_B4 = Me.DGMember
  loc_149A3D9: LateIdStAd
  loc_149A3F1: Set global_88 = New 
  loc_149A403: Me.DGMember.CursorLocation = 3
  loc_149A426: var_B8 = "Select I.Code,I.Name as Name,I.Unit,IsNull(U.PriceType,0) As PriceType,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_149A42D: var_C8 = CVar(var_B8 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by I.Name") 'String
  loc_149A437: Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_149A44B: CVarUnk
  loc_149A450: VerifyVarObj
  loc_149A456: Set var_B4 = Me.DGItem
  loc_149A45C: LateIdStAd
  loc_149A486: Me.DGItem.CursorLocation = 3
  loc_149A4B0: var_C8 = CVar("SELECT CODE ,ShortName as NAME,Name as Restaurant FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' ORDER BY NAME") 'String
  loc_149A4BA: Me.Open var_C8, CVar(MemVar_1F95044), 3
  loc_149A4CE: CVarUnk
  loc_149A4D3: VerifyVarObj
  loc_149A4D9: Set var_B4 = Me.DGRest
  loc_149A4DF: LateIdStAd
  loc_149A509: Me.DGRest.CursorLocation = 3
  loc_149A531: Me.Open "SELECT NCType,NcPer FROM NCTypeMast ORDER BY NCType", CVar(MemVar_1F95044), 3
  loc_149A53F: CVarUnk
  loc_149A544: VerifyVarObj
  loc_149A54A: Set var_B4 = Me.DGNCType
  loc_149A550: LateIdStAd
  loc_149A57A: Me.DGNCType.CursorLocation = 3
  loc_149A5A4: var_C8 = CVar("Select W.Code,W.Name As Name From Waiter W wHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by W.Name") 'String
  loc_149A5C2: CVarUnk
  loc_149A5C7: VerifyVarObj
  loc_149A5CD: Set var_B4 = Me.DGWaiter
  loc_149A5D3: LateIdStAd
  loc_149A5E1: Call Proc_229_88_11FE6D8(var_B4, New, 1, -1, var_B4, New, 1)
  loc_149A5F0: Set global_92 = New 
  loc_149A602: Me.DGWaiter.CursorLocation = 3
  loc_149A612: Proc_6_7_F26918(var_C8, MemVar_1F950EC, -1, var_B4, New)
  loc_149A61D: var_F8 = 0
  loc_149A64D: unk_542AFA.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_118, -1
  loc_149A655: var_B4 = var_B4.Fields
  loc_149A65D: var_F8 = var_DC.Item(var_DC)
  loc_149A665: var_11C = var_11C.Value
  loc_149A670: var_1BC = 0
  loc_149A690: var_180 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_149A6A0: unk_542AFA.Execute var_180 & "'", var_1A4, -1
  loc_149A6A8: var_1A8 = var_1A8.Fields
  loc_149A6B0: var_1BC = var_1AC.Item(var_1AC)
  loc_149A6B8: var_1C0 = var_1C0.Value
  loc_149A6DB: var_B8 = "Select Distinct K.DocId as SearchCode,K.DocID,K.RESTCODE,K.SITE_CODE,K.LOGSITE_CODE  From TOKEN K WHERE LOGSITE_CODE='" & MemVar_1F95078
  loc_149A6E2: var_D8 = CVar(var_B8 & "' AND (K.Pending='Y' AND NCTOKEN='N' And DelFlag NOT IN ('Y') OR DelFlag IS NULL) OR (K.VDate=") 'String
  loc_149A6F4: var_14C = (" And DelFlag NOT IN ('Y') OR DelFlag IS NULL) AND (K.VType='T" + var_12C)
  loc_149A71C: r_C8, CVar(MemVar_1F95044), 3 var_D8 & var_C8 & var_14C & "' OR K.VType='" & var_1D0 & "') Order by Docid", CVar(MemVar_1F95044), 3
  loc_149A762: var_B8 = "RESTCODE='" & LocalRestCode
  loc_149A769: var_C8 = CVar(var_B8 & "'") 'String
  loc_149A773: Me.Filter = var_C8
  loc_149A7A3: Call 0.Method_arg_50 (var_B8, "SELECT COUNT(*) FROM LASTVOU WHERE  ENAME='", var_C8, -1, var_B4, var_DC, 0, var_11C)
  loc_149A7CA: unk_542AFA.Execute var_D8 & var_B8 & "' AND UNAME='" & MemVar_1F950C8 & "'", 1, -1
  loc_149A7D2: var_1D0 = var_B4.Fields
  loc_149A7DA: 1 = var_DC.Item(var_12C)
  loc_149A7E2: -1 = var_11C.Value
  loc_149A80F: If (var_D8 > 0) Then
  loc_149A84A:   Call 0.Method_arg_50 (var_B8, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_C8, -1, var_B4, var_DC, 0)
  loc_149A871:   unk_542AFA.Execute var_11C & var_B8 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_D8, "SearchCode='"
  loc_149A879:   0 = var_B4.Fields
  loc_149A881:   var_16C = var_DC.Item(1)
  loc_149A889:    = var_11C.Value
  loc_149A8A8:   Me.Find CStr(var_D8 & "'"), , 
  loc_149A8D0: End If
  loc_149A8E7: If (Me.RecordCount > 0) Then
  loc_149A8FE:   If (Me.EOF = &HFF) Then
  loc_149A907:     Me.MoveLast
  loc_149A90C:   End If
  loc_149A90C: End If
  loc_149A915: Call 0.Method_arg_160 (var_B4)
  loc_149A923: Call 0.Method_arg_164 (var_B4)
  loc_149A94E: Call Proc_229_83_100CB3C(Proc_5_1_100EC1C("INI", Me))
  loc_149A971: Proc_6_23_DFC5B8(Me, 7350)
  loc_149A980: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), 11670)
  loc_149A998: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_149A9AE: Me.FrTOKEN.BackColor = CLng(MemVar_1F951B4)
  loc_149A9C4: Me.ChkNCTOKEN.BackColor = CLng(MemVar_1F951B4)
  loc_149A9CC: Call Proc_229_68_1304BE0(global_92)
  loc_149A9F3: Me.DGItem.Top = CVar(CDbl(Me.FGrid.Top))
  loc_149AA47: var_A0 = CVar((CDbl(Me.FGrid.Left) + (CDbl(Me.FGrid.Width) - CDbl(Me.DGItem.Width)))) 'Single
  loc_149AA56: Me.DGItem.Left = CVar(CDbl(Me.FGrid.Top))
  loc_149AA91: Me.DGItem.Height = CVar(CDbl(Me.FGrid.Height))
  loc_149AAC2: Me.DGRest.Top = CVar(CDbl(Me.FGrid.Top))
  loc_149AADB: var_D8 = Me.FGrid.Width
  loc_149AAEE: var_108 = Me.DGRest.Width
  loc_149AB16: var_A0 = CVar((CDbl(Me.FGrid.Left) + (CDbl(var_D8) - CDbl(var_108)))) 'Single
  loc_149AB25: Me.DGRest.Left = CVar(CDbl(Me.FGrid.Top))
  loc_149AB60: Me.DGRest.Height = CVar(CDbl(Me.FGrid.Height))
  loc_149AB6F: Call Proc_229_80_16C14B4(var_108, var_D8)
  loc_149AB80: Me.Timer1.Enabled = False
  loc_149AB94: Me.lblclr.Visible = True
  loc_149ABA1: Set var_90 = Nothing
  loc_149ABA9: Set var_88 = Nothing
  loc_149ABAC: Exit Sub
  loc_149ABAD: ' Referenced from: 1499F54
  loc_149ABAD: Proc_6_60_E63754(var_108)
  loc_149ABB2: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EB1F38
  'Data Table: 542AE4
  loc_EB1EA7: Set global_100 = Nothing
  loc_EB1EB9: Set global_88 = Nothing
  loc_EB1ECB: Set global_104 = Nothing
  loc_EB1EDD: Set global_96 = Nothing
  loc_EB1EEF: Set global_92 = Nothing
  loc_EB1F01: Set global_196 = Nothing
  loc_EB1F13: Set global_180 = Nothing
  loc_EB1F25: Set global_176 = Nothing
  loc_EB1F31: MasterFormExit = 0
  loc_EB1F34: Exit Sub
End Sub

Private Sub Form_Activate() 'F8DF68
  'Data Table: 542AE4
  Dim var_90 As String
  Dim var_F8 As Variant
  Dim var_D4 As Integer
  Dim var_98 As String
  Dim unk_542AFA As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_108 As Variant
  Dim var_88 As Recordset15
  loc_F8DE4F: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_F8DE5D: var_F8 = CVar(var_90 & MemVar_1F95078 & "') AND V_Type='") 'String
  loc_F8DE66: var_D4 = 0
  loc_F8DE86: var_98 = "Select 'T'+ShortName From Depart Where Code='" & LocalRestCode
  loc_F8DE96: unk_542AFA.Execute var_98 & "'", var_BC, -1
  loc_F8DE9E: var_C0 = var_C0.Fields
  loc_F8DEA6: var_D4 = var_C4.Item(var_C4)
  loc_F8DEAE: var_D8 = var_D8.Value
  loc_F8DEB6: var_108 = var_E8 & var_E8 
  loc_F8DECD: unk_542AFA.Execute CStr(var_108 & "' Order by Description"), var_F8, var_14C
  loc_F8DF18: If (var_150.RecordCount > 0) Then
  loc_F8DF1B:   GoTo loc_F8DF5D
  loc_F8DF1E: End If
  loc_F8DF37: MsgBox("TOKEN Not Configured for selected Restaurant", 0, var_E8, var_F8, var_108)
  loc_F8DF54: Me.Global.Unload Me
  loc_F8DF5C: Exit Sub
  loc_F8DF5D: ' Referenced from: F8DF1B
  loc_F8DF62: Set var_88 = Nothing
  loc_F8DF65: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E265A4
  'Data Table: 542AE4
  loc_E26589: If (MasterFormExit = &HFF) Then
  loc_E26599:   Me.Global.Unload Me
  loc_E265A1: End If
  loc_E265A1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'ED2F94
  'Data Table: 542AE4
  Dim var_88 As Variant
  loc_ED2EE0: On Error Goto loc_ED2F8C
  loc_ED2EE7: Set var_88 = Me.TopCtrl1
  loc_ED2EED: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_ED2F06: If (CStr() = "Edit") Then
  loc_ED2F16:   If ((KeyCode = &H4D) And (Shift = 2)) Then
  loc_ED2F27:     Me.FrmeDisc.Width = CDbl(1)
  loc_ED2F3D:     Me.FrmeDisc.Height = CDbl(1)
  loc_ED2F4A:     global_212 = 1
  loc_ED2F53:     global_216 = "Go"
  loc_ED2F63:     Me.Timer1.Enabled = True
  loc_ED2F6B:   End If
  loc_ED2F6B: End If
  loc_ED2F83: Proc_6_88_FE8F6C(Me, KeyCode, Shift)
  loc_ED2F8B: Exit Sub
  loc_ED2F8C: ' Referenced from: ED2EE0
  loc_ED2F8C: Proc_6_60_E63754(MasterFormExit)
  loc_ED2F91: Exit Sub
End Sub

Private Sub txtDisc_KeyDown(KeyCode As Integer, Shift As Integer) 'E6B150
  'Data Table: 542AE4
  Dim var_88 As Variant
  loc_E6B0FE: If (KeyCode = &HD) Then
  loc_E6B105:   Set var_88 = Me.FGrid
  loc_E6B129:   Me.FGrid.Col = 6
  loc_E6B137:   global_216 = "Back"
  loc_E6B147:   Me.Timer1.Enabled = True
  loc_E6B14F: End If
  loc_E6B14F: Exit Sub
End Sub

Private Sub txtDisc_LostFocus() 'E4A20C
  'Data Table: 542AE4
  loc_E4A1F3: If (Me.FrmeDisc.Visible = &HFF) Then
  loc_E4A200:   Me.txtDisc.SetFocus
  loc_E4A208: End If
  loc_E4A208: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '114D680
  'Data Table: 542AE4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_114D2F2: Set var_88 = Me.Txt
  loc_114D2F8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_114D306: Proc_6_74_E23240(var_8C)
  loc_114D312: Call Proc_229_84_F6DD2C(var_8C)
  loc_114D31A: var_92 = Index
  loc_114D325: If (var_92 = CInt(7)) Then
  loc_114D33F:   If (Me.RecordCount > 0) Then
  loc_114D34D:     Set var_8C = Me.FGPoint
  loc_114D365:     Proc_6_137_1192FDC(Me.DGNCType, global_196, Index)
  loc_114D373:   End If
  loc_114D3C1:   Set var_88 = Me.Txt
  loc_114D3C7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_114D3CF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_114D3E7:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_114D3EA:     Exit Sub
  loc_114D3EB:   End If
  loc_114D3F8:   Set var_88 = Me.Txt
  loc_114D3FE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_114D406:   var_A0 = var_8C.Text
  loc_114D40E:   var_D4 = CVar(var_A0) 'String
  loc_114D453:   If CBool(var_D4 <> Me.Fields.Item("NCType").Value) Then
  loc_114D45C:     Me.MoveFirst
  loc_114D481:     Set var_88 = Me.Txt
  loc_114D487:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "NCType =")
  loc_114D48F:     0 = var_8C.Text
  loc_114D49D:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_114D4B3:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_114D4CB:   End If
  loc_114D4CE: Else
  loc_114D4D6:   If (var_92 = CInt(&HB)) Then
  loc_114D4F0:     If (Me.RecordCount > 0) Then
  loc_114D4FE:       Set var_8C = Me.FGPoint
  loc_114D516:       Proc_6_137_1192FDC(Me.DGMember, global_176)
  loc_114D524:     End If
  loc_114D572:     Set var_88 = Me.Txt
  loc_114D578:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_114D580:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_114D598:     If (Index Or (var_A0 = vbNullString)) Then
  loc_114D59B:       Exit Sub
  loc_114D59C:     End If
  loc_114D5A9:     Set var_88 = Me.Txt
  loc_114D5AF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_114D5B7:     var_A0 = var_8C.Text
  loc_114D5BF:     var_D4 = CVar(var_A0) 'String
  loc_114D604:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_114D60D:       Me.MoveFirst
  loc_114D632:       Set var_88 = Me.Txt
  loc_114D638:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_114D640:       0 = var_8C.Text
  loc_114D64E:       Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_114D664:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_114D67C:     End If
  loc_114D67C:   End If
  loc_114D67C: End If
  loc_114D67C: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10F3C5C
  'Data Table: 542AE4
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_9C As DataGrid
  Dim var_A0 As DataGrid
  loc_10F394B: var_86 = Shift
  loc_10F3958: If (CLng(Shift) = &H1B) Then
  loc_10F395B:   Call Proc_229_84_F6DD2C(var_86)
  loc_10F3960:   Exit Sub
  loc_10F3961: End If
  loc_10F3964: var_88 = KeyCode
  loc_10F396F: If (var_88 = CInt(7)) Then
  loc_10F398F:   Set var_A0 = Me.FGPoint
  loc_10F399A:   Set var_9C = Nothing
  loc_10F39CC:   Proc_6_69_134A630(Me.DGNCType, Me.Txt, CInt(7), global_196, Shift, 0)
  loc_10F3A3B:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10F3A61:     Proc_6_138_106E830(Me.DGNCType, global_196, KeyCode, Me.FGPoint, 0)
  loc_10F3A6F:   End If
  loc_10F3A72: Else
  loc_10F3A7A:   If (var_88 = CInt(&HB)) Then
  loc_10F3AA5:     Set var_9C = Nothing
  loc_10F3AD7:     Proc_6_69_134A630(Me.DGMember, Me.Txt, CInt(&HB), global_176, Shift, 0, 1)
  loc_10F3B46:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10F3B4D:       Set var_9C = Me.DGMember
  loc_10F3B6C:       Proc_6_138_106E830(var_9C, global_176, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_10F3B7A:     End If
  loc_10F3B7A:   End If
  loc_10F3B7A: End If
  loc_10F3BAB: Set var_9C = Me.DGTable
  loc_10F3BC2: Set var_A0 = Me.DGNCType
  loc_10F3C06: If (((((CBool(Me.DGItem.Visible) = 0) And (CBool(Me.DGWaiter.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(var_A0.Visible) = 0)) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_10F3C1E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10F3C27:     Proc_6_75_E5335C(Shift, arg_14, 0, var_9C)
  loc_10F3C2C:   End If
  loc_10F3C34:   If (KeyCode <> CInt(4)) Then
  loc_10F3C4C:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10F3C55:       Proc_6_76_E533C8(Shift, arg_14, var_A0)
  loc_10F3C5A:     End If
  loc_10F3C5A:   End If
  loc_10F3C5A: End If
  loc_10F3C5A: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FA5770
  'Data Table: 542AE4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FA55E8: On Error Goto loc_FA576A
  loc_FA55EE: Proc_6_58_E06050(arg_10)
  loc_FA55F6: var_86 = KeyAscii
  loc_FA5601: If (var_86 = CInt(0)) Then
  loc_FA560E:   Set var_8C = Me.Txt
  loc_FA5614:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FA562F:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_FA563E: Else
  loc_FA5646:   If (var_86 = CInt(7)) Then
  loc_FA5665:     If (CBool(Me.DGNCType.Visible) = &HFF) Then
  loc_FA5677:       var_AC = "NCType"
  loc_FA5692:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_196, arg_10)
  loc_FA56C4:       Proc_6_138_106E830(Me.DGNCType, global_196, KeyAscii, Me.FGPoint)
  loc_FA56D2:     End If
  loc_FA56D5:   Else
  loc_FA56DD:     If (var_86 = CInt(&HB)) Then
  loc_FA56FC:       If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_FA570E:         var_AC = "Name"
  loc_FA5729:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_176, arg_10, var_AC)
  loc_FA575B:         Proc_6_138_106E830(Me.DGMember, global_176, KeyAscii, Me.FGPoint, 0)
  loc_FA5769:       End If
  loc_FA5769:     End If
  loc_FA5769:   End If
  loc_FA5769: End If
  loc_FA5769: Exit Sub
  loc_FA576A: ' Referenced from: FA55E8
  loc_FA576A: Proc_6_60_E63754(var_AC, 0)
  loc_FA576F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFED7C
  'Data Table: 542AE4
  Dim var_86 As Integer
  loc_DFED77: var_86 = KeyCode
  loc_DFED7A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49D8C
  'Data Table: 542AE4
  loc_E49D6A: Set var_88 = Me.Txt
  loc_E49D70: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49D7E: Proc_6_73_E23294(var_8C)
  loc_E49D8A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '155299C
  'Data Table: 542AE4
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim var_B0 As Variant
  Dim var_A0 As String
  Dim var_128 As String
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_16C As Variant
  Dim var_170 As Variant
  Dim var_194 As Variant
  Dim var_94 As Variant
  Dim var_14C As String
  Dim unk_542AFA As Connection15
  Dim var_9C As Variant
  Dim var_19C As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_1AC As Double
  loc_155198C: On Error Goto loc_1552993
  loc_1551992: var_8E = Cancel
  loc_155199D: If (var_8E = CInt(0)) Then
  loc_15519AB:   Set var_94 = Me.Txt
  loc_15519B1:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15519B9:   var_A0 = "Vr. No"
  loc_15519DA:   If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_15519E8:     Set var_94 = Me.Txt
  loc_15519EE:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15519F6:     var_98.SetFocus
  loc_1551A04:     arg_10 = &HFF
  loc_1551A07:     Exit Sub
  loc_1551A08:   End If
  loc_1551A16:   Set var_94 = Me.Txt
  loc_1551A1C:   Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0)
  loc_1551A24:   arg_10 = var_98.Text
  loc_1551A3C:   If (CDbl(var_A0) = CDbl(0)) Then
  loc_1551A58:     MsgBox("Vr. No Can Not Be 0", 0, var_E0, var_100, var_120)
  loc_1551A72:     Set var_94 = Me.Txt
  loc_1551A78:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551A80:     var_98.SetFocus
  loc_1551A8E:     arg_10 = &HFF
  loc_1551A91:     Exit Sub
  loc_1551A92:   End If
  loc_1551A96:   Set var_94 = Me.TopCtrl1
  loc_1551A9C:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_1551AB5:   If (CStr(var_8E) = "Add") Then
  loc_1551AE9:     var_C0 = Space((5 - Len(global_156)))
  loc_1551AF1:     var_100 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & global_156) + "Vr. No Can Not Be 0")
  loc_1551B05:     var_120 = Space((5 - Len(global_116)))
  loc_1551B0D:     var_138 = (var_100 + var_120)
  loc_1551B1A:     var_148 = (var_138 + CVar(global_116))
  loc_1551B31:     Set var_94 = Me.Txt
  loc_1551B37:     Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_14C)
  loc_1551B3F:     8 = var_98.Text
  loc_1551B4C:     var_15C = Space((var_148 - Len(var_14C)))
  loc_1551B54:     var_16C = ( + var_15C)
  loc_1551B66:     Set var_9C = Me.Txt
  loc_1551B6C:     Call 0.Method_Txt_Validate0 (CInt(0), var_170)
  loc_1551B7F:     var_194 = (var_16C + CVar(var_170.Text))
  loc_1551BCC:     Set var_94 = Me.Txt
  loc_1551BD2:     Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_1551BDA:     var_98.Text = CStr(var_194)
  loc_1551BF6:     Me.LblVPrefix.Caption = global_116
  loc_1551BFE:   End If
  loc_1551C02:   Set var_94 = Me.TopCtrl1
  loc_1551C08:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1551C10:   var_A0 = CStr()
  loc_1551C21:   If (var_A0 = "Add") Then
  loc_1551C51:     Set var_94 = Me.Txt
  loc_1551C57:     Call 0.Method_Txt_Validate0 (CInt(3), var_98, var_A0, "Select Count(*) From TOKEN Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_1551C68:     var_128 = var_170 & var_A0
  loc_1551C78:     unk_542AFA.Execute var_128 & "'", 0, var_19C
  loc_1551C88:      = var_170.Item()
  loc_1551C90:      = var_19C.Value
  loc_1551CBD:     If (var_98.Text.Fields > 0) Then
  loc_1551CC6:       Call 0.Method_arg_50 (var_A0)
  loc_1551CE7:       MsgBox("Duplicate Voucher No.", &H40, CVar(var_A0), var_100, var_120)
  loc_1551CFD:       Call Proc_229_86_1185374(MemVar_1F95044)
  loc_1551D0D:       If (var_A0 = vbNullString) Then
  loc_1551D1A:         Set var_94 = Me.Txt
  loc_1551D20:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551D28:         var_98.SetFocus
  loc_1551D36:         arg_10 = &HFF
  loc_1551D39:         Exit Sub
  loc_1551D3A:       End If
  loc_1551D40:       Call Proc_229_86_1185374(MemVar_1F95044, var_A0)
  loc_1551D53:       Set var_94 = Me.Txt
  loc_1551D59:       Call 0.Method_Txt_Validate0 (CInt(3), var_98, var_A0)
  loc_1551D61:       var_98.Text = arg_10
  loc_1551D72:       arg_10 = &HFF
  loc_1551D75:       Exit Sub
  loc_1551D76:     End If
  loc_1551D76:   End If
  loc_1551D79: Else
  loc_1551D81:   If (var_8E = CInt(1)) Then
  loc_1551D92:     Set var_94 = Me.Txt
  loc_1551D98:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0)
  loc_1551DA0:     arg_10 = var_98.Text
  loc_1551DB6:     var_100 = Len(Trim(CVar(var_A0)))
  loc_1551DD0:     If (var_100 = 0) Then
  loc_1551DE6:       Set var_94 = Me.Txt
  loc_1551DEC:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1551DF4:       var_98.Text = CStr(MemVar_1F950EC)
  loc_1551E06:     Else
  loc_1551E10:       Set var_94 = Me.Txt
  loc_1551E16:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551E36:       Set var_170 = Me.Txt
  loc_1551E3C:       Call 0.Method_Txt_Validate0 (Cancel, var_19C)
  loc_1551E44:       var_19C.Text = Proc_6_33_15125B8(var_98)
  loc_1551E57:     End If
  loc_1551E64:     Set var_94 = Me.Txt
  loc_1551E6A:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1551E72:     var_A0 = var_98.Text
  loc_1551E8D:     Set var_9C = Me.Txt
  loc_1551E93:     Call 0.Method_Txt_Validate0 (Cancel, var_170, var_128)
  loc_1551E9B:     (CDate(var_A0) >= MemVar_1F950F4) = var_170.Text
  loc_1551EBD:     If Not((var_A0 And (CDate(var_128) <= MemVar_1F950FC))) Then
  loc_1551ED6:       var_B0 = "V.Date Not Between Current Fin. Year"
  loc_1551EE1:       MsgBox(var_B0, 0, "Date Validate", var_100, var_120)
  loc_1551EFB:       Set var_94 = Me.Txt
  loc_1551F01:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_1551F09:       var_98.SetFocus
  loc_1551F17:       arg_10 = &HFF
  loc_1551F1A:       Exit Sub
  loc_1551F1B:     End If
  loc_1551F1F:     Set var_94 = Me.TopCtrl1
  loc_1551F25:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_1551F2D:     var_A0 = CStr(var_98)
  loc_1551F43:     Set var_98 = Me.Txt
  loc_1551F49:     Call 0.Method_Txt_Validate0 (CInt(0), var_9C)
  loc_1551F72:     If ((var_A0 = "Add") And (var_9C.Text = vbNullString)) Then
  loc_1551F7B:       Call Proc_229_86_1185374(MemVar_1F95044)
  loc_1551F8E:       Set var_94 = Me.Txt
  loc_1551F94:       Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_1551F9C:       var_98.Text = var_A0
  loc_1551FAB:     End If
  loc_1551FAE:   Else
  loc_1551FB6:     If (var_8E = CInt(&HB)) Then
  loc_1551FFA:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_155200A:         Set var_94 = Me.Txt
  loc_1552010:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_155202F:         If (var_98.Text = vbNullString) Then
  loc_155203F:           Set var_94 = Me.Txt
  loc_1552045:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_155204D:           var_98.Text = vbNullString
  loc_1552066:           Set var_94 = Me.Txt
  loc_155206C:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1552074:           var_98.Tag = vbNullString
  loc_155208E:           Set var_94 = Me.Txt
  loc_1552094:           Call 0.Method_Txt_Validate0 (CInt(&HC), var_98)
  loc_155209C:           var_98.Text = vbNullString
  loc_15520A8:         End If
  loc_15520AB:       Else
  loc_15520B8:         Set var_94 = Me.Txt
  loc_15520BE:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15520DD:         If (var_98.Text = vbNullString) Then
  loc_15520ED:           Set var_94 = Me.Txt
  loc_15520F3:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1552112:           If (var_98.Text = vbNullString) Then
  loc_1552122:             Set var_94 = Me.Txt
  loc_1552128:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1552130:             var_98.Text = vbNullString
  loc_1552149:             Set var_94 = Me.Txt
  loc_155214F:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1552157:             var_98.Tag = vbNullString
  loc_1552171:             Set var_94 = Me.Txt
  loc_1552177:             Call 0.Method_Txt_Validate0 (CInt(&HC), var_98)
  loc_155217F:             var_98.Text = vbNullString
  loc_155218B:           End If
  loc_155218E:         Else
  loc_155219C:           Set var_94 = Me.Txt
  loc_15521A2:           Call 0.Method_Txt_Validate0 (CInt(&HB), var_98)
  loc_15521AA:           var_A0 = var_98.Tag
  loc_15521C1:           If (var_A0 <> vbNullString) Then
  loc_15521E3:             Set var_94 = Me.Txt
  loc_15521E9:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_98, var_A0, "Code='")
  loc_15521F1:             0 = var_98.Tag
  loc_155220A:             Me.Find 1 & var_A0 & "'", var_B0, var_A0
  loc_155221F:           End If
  loc_155225A:           Set var_9C = Me.Txt
  loc_1552260:           Call 0.Method_Txt_Validate0 (Cancel, var_170)
  loc_1552268:           var_170.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15522B9:           Set var_9C = Me.Txt
  loc_15522BF:           Call 0.Method_Txt_Validate0 (Cancel, var_170)
  loc_15522C7:           var_170.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15522FA:           var_98 = Me.Fields.Item("CardNo")
  loc_1552319:           Set var_9C = Me.Txt
  loc_155231F:           Call 0.Method_Txt_Validate0 (CInt(&HC), var_170)
  loc_1552327:           var_170.Text = CStr(var_98.Value)
  loc_1552357:           Set var_94 = Me.Txt
  loc_155235D:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_155237F:           If (Proc_96_1_F8D0C4(var_98.Tag) = 0) Then
  loc_155238F:             Set var_94 = Me.Txt
  loc_1552395:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15523A9:             Proc_96_2_100E504(var_98.Tag)
  loc_15523AE:             var_1AC = 0
  loc_15523B7:             var_B0 = "Member Varification"
  loc_15523E1:             var_C0 = CVar("Credit Is Not allowed to this Member" & vbCrLf & " & Current A/c Balance is Rs.:         " & CStr(var_1AC)) 'String
  loc_15523E4:             MsgBox(var_C0, &H40, var_B0, var_100, var_120)
  loc_1552406:           End If
  loc_1552406:         End If
  loc_1552406:       End If
  loc_1552409:     Else
  loc_1552411:       If (var_8E = CInt(&HC)) Then
  loc_155241E:         Set var_94 = Me.Txt
  loc_1552424:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_155243B:         var_A0 = CStr(Trim(CVar(var_98)))
  loc_1552449:         Set var_9C = Me.Txt
  loc_155244F:         Call 0.Method_Txt_Validate0 (Cancel, var_170)
  loc_1552457:         var_170.Text = var_A0
  loc_1552486:         If (Me.RecordCount > 0) Then
  loc_155248F:           Me.MoveFirst
  loc_15524B2:           Set var_94 = Me.Txt
  loc_15524B8:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0, "CardNo='")
  loc_15524C0:           0 = var_98.Text
  loc_15524D9:           Me.Find 1 & var_A0 & "'", var_B0, var_1AC
  loc_1552517:           If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_1552528:             Set var_94 = Me.Txt
  loc_155252E:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_98)
  loc_1552536:             var_98.Text = vbNullString
  loc_1552550:             Set var_94 = Me.Txt
  loc_1552556:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_98)
  loc_155255E:             var_98.Tag = vbNullString
  loc_1552577:             Set var_94 = Me.Txt
  loc_155257D:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1552585:             var_98.Text = vbNullString
  loc_1552594:           Else
  loc_15525D0:             Set var_9C = Me.Txt
  loc_15525D6:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_170)
  loc_15525DE:             var_170.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1552630:             Set var_9C = Me.Txt
  loc_1552636:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_170)
  loc_155263E:             var_170.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1552671:             var_98 = Me.Fields.Item("CardNo")
  loc_155268F:             Set var_9C = Me.Txt
  loc_1552695:             Call 0.Method_Txt_Validate0 (Cancel, var_170)
  loc_155269D:             var_170.Text = CStr(var_98.Value)
  loc_15526CE:             Set var_94 = Me.Txt
  loc_15526D4:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_98)
  loc_15526F6:             If (Proc_96_1_F8D0C4(var_98.Tag) = 0) Then
  loc_1552707:               Set var_94 = Me.Txt
  loc_155270D:               Call 0.Method_Txt_Validate0 (CInt(&HB), var_98)
  loc_1552721:               Proc_96_2_100E504(var_98.Tag)
  loc_1552726:               var_1AC = 0
  loc_1552759:               var_C0 = CVar("Credit Is Not allowed to this Member" & vbCrLf & " & Current A/c Balance is Rs.:         " & CStr(var_1AC)) 'String
  loc_155275C:               MsgBox(var_C0, &H40, "Member Varification", var_100, var_120)
  loc_155277E:             End If
  loc_155277E:           End If
  loc_155277E:         End If
  loc_1552781:       Else
  loc_1552789:         If (var_8E = CInt(7)) Then
  loc_1552796:           Set var_94 = Me.Txt
  loc_155279C:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15527A4:           var_A0 = "NC Category"
  loc_15527C5:           If (Proc_6_27_EA61EC(var_98, var_A0) = 0) Then
  loc_15527D2:             Set var_94 = Me.Txt
  loc_15527D8:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15527E0:             var_98.SetFocus
  loc_15527EE:             arg_10 = &HFF
  loc_15527F1:             Exit Sub
  loc_15527F2:           End If
  loc_1552840:           Set var_94 = Me.Txt
  loc_1552846:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_155284E:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1552866:           If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1552876:             Set var_94 = Me.Txt
  loc_155287C:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1552884:             var_98.Text = vbNullString
  loc_155289D:             Set var_94 = Me.Txt
  loc_15528A3:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15528AB:             var_98.Tag = vbNullString
  loc_15528BA:           Else
  loc_15528F5:             Set var_9C = Me.Txt
  loc_15528FB:             Call 0.Method_Txt_Validate0 (Cancel, var_170)
  loc_1552903:             var_170.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_1552954:             Set var_9C = Me.Txt
  loc_155295A:             Call 0.Method_Txt_Validate0 (Cancel, var_170)
  loc_1552962:             var_170.Tag = CStr(Me.Fields.Item("NCPer").Value)
  loc_1552978:           End If
  loc_1552978:         End If
  loc_1552978:       End If
  loc_1552978:     End If
  loc_1552978:   End If
  loc_1552978: End If
  loc_155298A: Me.FGrid.Col = CVar(CLng(3))
  loc_1552992: Exit Sub
  loc_1552993: ' Referenced from: 155198C
  loc_1552993: Proc_6_60_E63754(var_1AC)
  loc_1552998: Exit Sub
End Sub

Private Sub Command1_Click() 'F7C9E0
  'Data Table: 542AE4
  Dim unk_542AFA As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  loc_F7C8A8: On Error Goto loc_F7C9DA
  loc_F7C8CF: unk_542AFA.Execute "Select Interface From MemEnviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_B0, -1
  loc_F7C8DA: Set var_88 = var_B4
  loc_F7C8FE: If (var_88.RecordCount > 0) Then
  loc_F7C910:   var_B4 = var_88.Fields
  loc_F7C929:   var_C0 = Proc_6_38_E69628(CVar(var_B4.Item("Interface")))
  loc_F7C93A:   If (var_C0 = "SmartCard_ACR") Then
  loc_F7C93D:     Call Proc_229_70_DFC92C(var_B4)
  loc_F7C945:   Else
  loc_F7C94D:     If (var_C0 = "NBSD_Mifare") Then
  loc_F7C969:       MsgBox("Procedure Not Defined!", &H40, var_E0, var_100, var_120)
  loc_F7C97C:     Else
  loc_F7C995:       MsgBox("Smart Card Interface Not Defined!", &H40, var_E0, var_100, var_120)
  loc_F7C9A5:     End If
  loc_F7C9A5:   End If
  loc_F7C9A8: Else
  loc_F7C9C1:   MsgBox("Member Environment Settings NOT SET!", 0, var_E0, var_100, var_120)
  loc_F7C9D1: End If
  loc_F7C9D6: Set var_88 = Nothing
  loc_F7C9D9: Exit Sub
  loc_F7C9DA: ' Referenced from: F7C8A8
  loc_F7C9DA: Proc_6_60_E63754()
  loc_F7C9DF: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '11E153C
  'Data Table: 542AE4
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
  loc_11E10F7: Me.DGItem.Visible = False
  loc_11E1116: If (Me.RecordCount > 0) Then
  loc_11E1153:   Set var_B4 = Me.TxtGrid
  loc_11E1159:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_11E118A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E1192:   var_EC = CVar(CLng(4)) 'Long
  loc_11E11C5:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_11E11CD:   Set var_B8 = Me.FGrid
  loc_11E11D3:   LateIdCallSt
  loc_11E1202:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E120A:   var_EC = CVar(CLng(&HA)) 'Long
  loc_11E123D:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_11E124B:   LateIdCallSt
  loc_11E12B2:   var_11C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(5)))) 'String
  loc_11E12BA:   Set var_B8 = Me.FGrid
  loc_11E12C0:   LateIdCallSt
  loc_11E1328:   var_11C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_11E1336:   LateIdCallSt
  loc_11E138A:   Set var_B4 = Me.Txt
  loc_11E1390:   Call 0.Method_DGItem_UnknownEvent_90 (CInt(1), Me.FGrid, var_138, Me.FGrid, var_11C, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_11E1398:   var_B8 = CStr(Me.Fields.Item("Name").Value)
  loc_11E13E1:   Call Proc_229_91_F20E88(CStr(Me.Fields.Item("Code").Value), var_138, CStr(Me.Fields.Item("OutletCode").Value), var_148, var_11C)
  loc_11E13F9:   var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E1401:   var_18C = CVar(CLng(8)) 'Long
  loc_11E142E:   var_1AC = CVar(CStr(Format(CVar(var_148), "0.00"))) 'String
  loc_11E1436:   Set var_1C0 = Me.FGrid
  loc_11E143C:   LateIdCallSt
  loc_11E1484:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E148C:   var_EC = CVar(CLng(&HD)) 'Long
  loc_11E14AE:   var_B0 = Me.Fields.Item("PriceType")
  loc_11E14BF:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_11E14C7:   Set var_B8 = Me.FGrid
  loc_11E14CD:   LateIdCallSt
  loc_11E14E9: End If
  loc_11E14F5: Set var_A8 = Me.TxtGrid
  loc_11E14FB: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_1C2, var_B8, var_11C, var_EC, var_A4)
  loc_11E1503: var_1C0 = var_B0.Visible
  loc_11E1515: If (var_1C2 = &HFF) Then
  loc_11E1521:   Set var_A8 = Me.TxtGrid
  loc_11E1527:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_1AC, 1)
  loc_11E152F:   var_B0.SetFocus
  loc_11E153B: End If
  loc_11E153B: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E6E954
  'Data Table: 542AE4
  loc_E6E912: Proc_6_153_E91D24(Me.DGItem, arg_14)
  loc_E6E929: Set var_8C = Me.FGPoint
  loc_E6E943: Proc_6_138_106E830(Me.DGItem, global_88, 0)
  loc_E6E951: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F57DF0
  'Data Table: 542AE4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F57CD0: On Error Goto loc_F57DEA
  loc_F57CE2: Me.DGTable.Visible = False
  loc_F57D01: If (Me.RecordCount > 0) Then
  loc_F57D40:   Set var_B4 = Me.Txt
  loc_F57D46:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F57D4E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F57D81:   var_B0 = Me.Fields.Item("Code")
  loc_F57DA0:   Set var_B4 = Me.Txt
  loc_F57DA6:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F57DAE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F57DC4: End If
  loc_F57DCF: Set var_A8 = Me.Txt
  loc_F57DD5: Call 0.Method_DGTable_UnknownEvent_90 (CInt(4))
  loc_F57DDD: var_B0.SetFocus
  loc_F57DE9: Exit Sub
  loc_F57DEA: ' Referenced from: F57CD0
  loc_F57DEA: Proc_6_60_E63754(var_B0)
  loc_F57DEF: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'E6E8C0
  'Data Table: 542AE4
  loc_E6E87E: Proc_6_153_E91D24(Me.DGTable, arg_14)
  loc_E6E895: Set var_8C = Me.FGPoint
  loc_E6E8B1: Proc_6_138_106E830(Me.DGTable, global_100, CInt(4))
  loc_E6E8BF: Exit Sub
End Sub

Private Sub DGWaiter_UnknownEvent_9 'F572B0
  'Data Table: 542AE4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F57190: On Error Goto loc_F572AA
  loc_F571A2: Me.DGWaiter.Visible = False
  loc_F571C1: If (Me.RecordCount > 0) Then
  loc_F57200:   Set var_B4 = Me.Txt
  loc_F57206:   Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(5), var_B8)
  loc_F5720E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F57241:   var_B0 = Me.Fields.Item("Code")
  loc_F57260:   Set var_B4 = Me.Txt
  loc_F57266:   Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(5), var_B8)
  loc_F5726E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F57284: End If
  loc_F5728F: Set var_A8 = Me.Txt
  loc_F57295: Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(5))
  loc_F5729D: var_B0.SetFocus
  loc_F572A9: Exit Sub
  loc_F572AA: ' Referenced from: F57190
  loc_F572AA: Proc_6_60_E63754(var_B0)
  loc_F572AF: Exit Sub
End Sub

Private Sub DGWaiter_UnknownEvent_1F 'E6EB10
  'Data Table: 542AE4
  loc_E6EACE: Proc_6_153_E91D24(Me.DGWaiter, arg_14)
  loc_E6EAE5: Set var_8C = Me.FGPoint
  loc_E6EB01: Proc_6_138_106E830(Me.DGWaiter, global_96, CInt(5))
  loc_E6EB0F: Exit Sub
End Sub

Public Function MasterFormExitGet() '5446E0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '5446EF
  MasterFormExit = Value
End Sub

Public Function LocalRestCodeGet() '5446FE
  LocalRestCodeGet = LocalRestCode
End Function

Public Sub LocalRestCodePut(Value) '54470D
  LocalRestCode = Value
End Sub

Public Function SpecialRateGet() '54471C
  SpecialRateGet = SpecialRate
End Function

Public Sub SpecialRatePut(Value) '54472B
  SpecialRate = Value
End Sub

Public Property Let pRestCode(vNewValue) 'E12E34
  'Data Table: 542AE4
  loc_E12E2C: global_208 = vNewValue
  loc_E12E30: Exit Sub
  loc_E12E31: Set var_8C = 
End Sub

Public Property Get pRestCode() 'E12F54
  'Data Table: 542AE4
  loc_E12F48: var_88 = global_208
  loc_E12F4B: pRestCode = 
  loc_E12F51: If  Then Exit Sub
  loc_E12F51: End If
End Sub

Public Property Get OpenMode() 'E068D0
  'Data Table: 542AE4
  loc_E068C9: OpenMode = global_204
End Sub

Public Property Let OpenMode(vNewValue) 'E02C38
  'Data Table: 542AE4
  loc_E02C32: global_204 = vNewValue
  loc_E02C35: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E950E8
  'Data Table: 542AE4
  Dim Me As Recordset15
  loc_E95076: On Error Goto loc_E950DF
  loc_E9507F: Me.MoveFirst
  loc_E950A9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E950D1: Proc_5_0_1107AD0(&HFF, Me, global_92)
  loc_E950D9: Call Proc_229_80_16C14B4(0)
  loc_E950DE: Exit Sub
  loc_E950DF: ' Referenced from: E95076
  loc_E950DF: Proc_6_60_E63754(var_A0)
  loc_E950E4: Exit Sub
End Sub

Public Sub Proc_229_68_1304BE0
  'Data Table: 542AE4
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_13044D2: Me.FGrid.Left = CVar(CDbl(&H7D))
  loc_13044ED: Me.FGrid.Top = CVar(CDbl(1770))
  loc_1304508: Me.FGrid.Height = CVar(CDbl(4920))
  loc_1304523: Me.FGrid.Width = CVar(CDbl(10625))
  loc_130453E: Me.DGItem.Left = CVar(CDbl(3420))
  loc_1304559: Me.DGItem.Top = CVar(CDbl(825))
  loc_130456F: Set var_A8 = Me.Txt
  loc_1304575: Call 0.Method_Proc_229_68_1304BE00 (CInt(4), var_AC)
  loc_1304594: Me.DGTable.Left = CVar(var_AC.Left)
  loc_13045B0: Set var_B4 = Me.Txt
  loc_13045B6: Call 0.Method_Proc_229_68_1304BE00 (CInt(4), var_B8)
  loc_13045D1: Set var_A8 = Me.Txt
  loc_13045D7: Call 0.Method_Proc_229_68_1304BE00 (CInt(4), var_AC)
  loc_13045EF: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13045FE: Me.DGTable.Top = CVar(var_AC.Left)
  loc_130461E: Set var_A8 = Me.Txt
  loc_1304624: Call 0.Method_Proc_229_68_1304BE00 (CInt(5), var_AC)
  loc_1304643: Me.DGWaiter.Left = CVar(var_AC.Left)
  loc_130465F: Set var_B4 = Me.Txt
  loc_1304665: Call 0.Method_Proc_229_68_1304BE00 (CInt(5), var_B8)
  loc_1304680: Set var_A8 = Me.Txt
  loc_1304686: Call 0.Method_Proc_229_68_1304BE00 (CInt(5), var_AC)
  loc_130469E: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13046AD: Me.DGWaiter.Top = CVar(var_AC.Left)
  loc_13046CD: Set var_A8 = Me.Txt
  loc_13046D3: Call 0.Method_Proc_229_68_1304BE00 (CInt(&HB), var_AC)
  loc_13046F2: Me.DGMember.Left = CVar(var_AC.Left)
  loc_130470E: Set var_B4 = Me.Txt
  loc_1304714: Call 0.Method_Proc_229_68_1304BE00 (CInt(&HB), var_B8)
  loc_130472F: Set var_A8 = Me.Txt
  loc_1304735: Call 0.Method_Proc_229_68_1304BE00 (CInt(&HB), var_AC)
  loc_130474D: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_130475C: Me.DGMember.Top = CVar(var_AC.Left)
  loc_1304772: Set var_C4 = Me.FGrid
  loc_1304789: global_108 = CStr(CLng(var_C4.BackColor))
  loc_130479F: var_C4.Cols = &HE
  loc_13047A7: var_94 = CVar(CLng(0)) 'Long
  loc_13047AC: var_E8 = &H1C2
  loc_13047B8: LateIdCallSt
  loc_13047C0: var_94 = 0
  loc_13047CC: var_E8 = CVar(CLng(1)) 'Long
  loc_13047D1: var_108 = "Rest"
  loc_13047DA: LateIdCallSt
  loc_13047E5: var_94 = CVar(CLng(1)) 'Long
  loc_13047F0: var_E8 = CVar(CInt(1)) 'Integer
  loc_13047F7: LateIdCallSt
  loc_1304802: var_94 = CVar(CLng(1)) 'Long
  loc_1304807: var_E8 = 0
  loc_1304813: LateIdCallSt
  loc_130481B: var_94 = 0
  loc_1304827: var_E8 = CVar(CLng(2)) 'Long
  loc_130482C: var_108 = "Rest."
  loc_1304835: LateIdCallSt
  loc_1304840: var_94 = CVar(CLng(2)) 'Long
  loc_130484B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1304852: LateIdCallSt
  loc_130485D: var_94 = CVar(CLng(2)) 'Long
  loc_1304862: var_E8 = &H352
  loc_130486E: LateIdCallSt
  loc_1304876: var_94 = 0
  loc_1304882: var_E8 = CVar(CLng(3)) 'Long
  loc_1304887: var_108 = "Code"
  loc_1304890: LateIdCallSt
  loc_130489B: var_94 = CVar(CLng(3)) 'Long
  loc_13048A6: var_E8 = CVar(CInt(1)) 'Integer
  loc_13048AD: LateIdCallSt
  loc_13048B8: var_94 = CVar(CLng(3)) 'Long
  loc_13048BD: var_E8 = &H352
  loc_13048C9: LateIdCallSt
  loc_13048D1: var_94 = 0
  loc_13048DD: var_E8 = CVar(CLng(4)) 'Long
  loc_13048E2: var_108 = "Item Name"
  loc_13048EB: LateIdCallSt
  loc_13048F6: var_94 = CVar(CLng(4)) 'Long
  loc_1304901: var_E8 = CVar(CInt(1)) 'Integer
  loc_1304908: LateIdCallSt
  loc_1304913: var_94 = CVar(CLng(4)) 'Long
  loc_1304918: var_E8 = &HDAC
  loc_1304924: LateIdCallSt
  loc_130492C: var_94 = 0
  loc_1304938: var_E8 = CVar(CLng(5)) 'Long
  loc_130493D: var_108 = "Unit"
  loc_1304946: LateIdCallSt
  loc_1304951: var_94 = CVar(CLng(5)) 'Long
  loc_130495C: var_E8 = CVar(CInt(1)) 'Integer
  loc_1304963: LateIdCallSt
  loc_130496E: var_94 = CVar(CLng(5)) 'Long
  loc_1304973: var_E8 = &H519
  loc_130497F: LateIdCallSt
  loc_1304987: var_94 = 0
  loc_1304993: var_E8 = CVar(CLng(6)) 'Long
  loc_1304998: var_108 = "Description"
  loc_13049A1: LateIdCallSt
  loc_13049AC: var_94 = CVar(CLng(6)) 'Long
  loc_13049B7: var_E8 = CVar(CInt(1)) 'Integer
  loc_13049BE: LateIdCallSt
  loc_13049C9: var_94 = CVar(CLng(6)) 'Long
  loc_13049D4: var_E8 = CVar(CInt(1)) 'Integer
  loc_13049DB: LateIdCallSt
  loc_13049E6: var_94 = CVar(CLng(6)) 'Long
  loc_13049EB: var_E8 = &H1DB
  loc_13049F7: LateIdCallSt
  loc_13049FF: var_94 = 0
  loc_1304A0B: var_E8 = CVar(CLng(7)) 'Long
  loc_1304A10: var_108 = "Qty"
  loc_1304A19: LateIdCallSt
  loc_1304A24: var_94 = CVar(CLng(7)) 'Long
  loc_1304A2F: var_E8 = CVar(CInt(7)) 'Integer
  loc_1304A36: LateIdCallSt
  loc_1304A41: var_94 = CVar(CLng(7)) 'Long
  loc_1304A4C: var_E8 = CVar(CInt(7)) 'Integer
  loc_1304A53: LateIdCallSt
  loc_1304A5E: var_94 = CVar(CLng(7)) 'Long
  loc_1304A63: var_E8 = &H41A
  loc_1304A6F: LateIdCallSt
  loc_1304A77: var_94 = 0
  loc_1304A83: var_E8 = CVar(CLng(8)) 'Long
  loc_1304A88: var_108 = "Rate"
  loc_1304A91: LateIdCallSt
  loc_1304A9C: var_94 = CVar(CLng(8)) 'Long
  loc_1304AA7: var_E8 = CVar(CInt(7)) 'Integer
  loc_1304AAE: LateIdCallSt
  loc_1304AB9: var_94 = CVar(CLng(8)) 'Long
  loc_1304AC4: var_E8 = CVar(CInt(7)) 'Integer
  loc_1304ACB: LateIdCallSt
  loc_1304AD6: var_94 = CVar(CLng(8)) 'Long
  loc_1304ADB: var_E8 = &H41A
  loc_1304AE7: LateIdCallSt
  loc_1304AEF: var_94 = 0
  loc_1304AFB: var_E8 = CVar(CLng(9)) 'Long
  loc_1304B00: var_108 = "Cancel"
  loc_1304B09: LateIdCallSt
  loc_1304B14: var_94 = CVar(CLng(9)) 'Long
  loc_1304B1F: var_E8 = CVar(CInt(1)) 'Integer
  loc_1304B26: LateIdCallSt
  loc_1304B31: var_94 = CVar(CLng(9)) 'Long
  loc_1304B3C: var_E8 = CVar(CInt(1)) 'Integer
  loc_1304B43: LateIdCallSt
  loc_1304B4E: var_94 = CVar(CLng(9)) 'Long
  loc_1304B53: var_E8 = &H2EE
  loc_1304B5F: LateIdCallSt
  loc_1304B6A: var_94 = CVar(CLng(&HA)) 'Long
  loc_1304B6F: var_E8 = 0
  loc_1304B7B: LateIdCallSt
  loc_1304B86: var_94 = CVar(CLng(&HB)) 'Long
  loc_1304B8B: var_E8 = 0
  loc_1304B97: LateIdCallSt
  loc_1304BA2: var_94 = CVar(CLng(&HC)) 'Long
  loc_1304BA7: var_E8 = 0
  loc_1304BB3: LateIdCallSt
  loc_1304BBE: var_94 = CVar(CLng(&HD)) 'Long
  loc_1304BC3: var_E8 = 0
  loc_1304BCF: LateIdCallSt
  loc_1304BD9: Set var_C4 = Nothing 
  loc_1304BDD: Exit Sub
End Sub

Public Sub Proc_229_69_19462A4
  'Data Table: 542AE4
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
  Dim unk_542AFA As Connection15
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
  loc_19436B7: MemVar_1F953C4 = "N"
  loc_19436BE: MemVar_1F953C8 = "N"
  loc_19436C5: MemVar_1F953CC = "K"
  loc_19436E4: If (Me.ChkNCTOKEN.Value <> 1) Then
  loc_19436EC:   Proc_229_69_19462A4 = 0
  loc_19436F2: End If
  loc_19436F9: var_F0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (TOKEN K Left Join Waiter W on K.Waiter=W.Code) "
  loc_194373E: var_8C = CStr(CVar(var_F0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_194375D: var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_194377D: var_104 = Me.Fields.Item("SearchCode")
  loc_194379B: var_90 = CStr(var_124 & var_104.Value & "'")
  loc_19437B8: If (var_8C = vbNullString) Then
  loc_19437C0:   Proc_229_69_19462A4 = 0
  loc_19437C6: End If
  loc_19437CE: If (var_90 = vbNullString) Then
  loc_19437D6:   Proc_229_69_19462A4 = 0
  loc_19437DC: End If
  loc_19437FA: Set var_E8 = Me.Txt
  loc_1943800: Call 0.Method_Proc_229_69_19462A40 (CInt(4), var_104, var_F0, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='")
  loc_1943808: var_114 = var_104.Text
  loc_1943811: var_158 = -1 & var_F0
  loc_1943821: unk_542AFA.Execute var_158 & "' AND CONTRADOCID IS NULL", var_160, 
  loc_194384A: var_144 = 0
  loc_194387A: unk_542AFA.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_114, -1
  loc_194388A: var_144 = var_104.Item(var_104)
  loc_1943892: var_160 = var_160.Value
  loc_194389F: var_D4 = Proc_6_38_E69628(var_124)
  loc_19438CD: var_F0 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_19438DD: unk_542AFA.Execute var_F0 & "MK'", var_114, -1
  loc_19438E8: Set var_C0 = var_E8.Fields
  loc_194390C: If (var_160.RecordCount = 1) Then
  loc_1943912:   var_CC = "New Order"
  loc_1943918: Else
  loc_194391F:   Set var_E8 = Me.LblState
  loc_194392D:   var_CC = var_E8.Caption
  loc_1943933: End If
  loc_1943949: unk_542AFA.Execute var_8C, var_114, -1
  loc_1943954: Set var_B8 = var_E8
  loc_194395D: ' Referenced from: 1946262
  loc_194396C: If Not(var_C0.EOF) Then
  loc_1943985:   unk_542AFA.Execute "SELECT KOTPrinting FROM Enviro", var_114, -1
  loc_1943990:   Set var_D0 = var_E8
  loc_19439A0:   var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_19439B8:   var_E8 = Me.Fields
  loc_19439C8:   var_114 = var_E8.Item("SearchCode").Value
  loc_1943A09:   unk_542AFA.Execute CStr(var_124 & var_114 & "' and K.VoidYN<>'Y'"), var_114, -1
  loc_1943A14:   Set var_BC = var_E8
  loc_1943A31:   If (var_BC.RecordCount > 0) Then
  loc_1943A43:     var_E8 = var_C0.Fields
  loc_1943A62:     var_174 = Trim(CVar(var_E8.Item("PrintType"))) 'Variant
  loc_1943A77:     If (var_174 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1943A87:       Call Proc_229_73_EFA61C(New, var_E8, var_E8, var_E8)
  loc_1943A8F:       Set var_D8 = var_E8
  loc_1943A95:       Me.Recordset15.MoveFirst
  loc_1943A9A:       ' Referenced from: 1944714
  loc_1943AA9:       If Not(var_B8.EOF) Then
  loc_1943AC2:         If (0 = 0) Then
  loc_1943AE3:           Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString, 1)
  loc_1943B1F:           var_C4 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_1943B56:           var_124 = CVar(Me.LblRest.Caption) 'String
  loc_1943B59:           var_134 = (Space(1) + var_124)
  loc_1943B6E:           Call Proc_229_74_F156A0(var_D8, vbNullString, CStr(var_124 & Space(1)), vbNullString)
  loc_1943BA0:           Call Proc_229_74_F156A0(var_D8, vbNullString, " * NC Bill *", vbNullString)
  loc_1943BAE:           var_96 = &H12
  loc_1943BCF:           Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString, var_96)
  loc_1943BFB:           Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1943C18:           var_E8 = var_B8.Fields
  loc_1943C2F:           Proc_6_39_E7D3A0(var_124, CVar(var_E8.Item("VNo")), var_96)
  loc_1943C6C:           Call Proc_229_74_F156A0(var_D8, vbNullString, " V No.     : " & Proc_6_45_EADFB8(CStr(var_124), &HA, var_E8))
  loc_1943C99:           var_E8 = var_B8.Fields
  loc_1943D3C:           Call Proc_229_74_F156A0(var_D8, vbNullString, " Date.     : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_E8.Item("VDate")), vbNullString), &HC) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")), var_E8), 8))
  loc_1943D83:           var_104 = var_B8.Fields.Item("Remarks")
  loc_1943DCE:           Call Proc_229_74_F156A0(var_D8, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104), vbNullString), &H1E))
  loc_1943E00:           Set var_E8 = Me.Label1
  loc_1943E06:           Call 0.Method_Proc_229_69_19462A40 (2, var_104)
  loc_1943E8F:           var_190 = Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")), vbNullString)), "000")), 5, 1)
  loc_1943E95:           var_17C = vbNullString
  loc_1943EA4:           var_1B4 = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA)))
  loc_1943EAD:           var_1C4 = (var_1B4 + ": ")
  loc_1943EB7:           var_234 = (var_1C4 + CVar(var_190))
  loc_1943ECC:           Call Proc_229_74_F156A0(var_D8, vbNullString, CStr(var_234))
  loc_1943F1E:           Call Proc_229_74_F156A0(var_D8, vbNullString, var_C4, vbNullString)
  loc_1943F2A:         End If
  loc_1943F50:         var_134 = (var_17C + CVar(Proc_6_45_EADFB8("ITEM NAME", &H12, Space(1))))
  loc_1943F64:         var_1B4 = (Trim(CVar(var_104)) + Space(1))
  loc_1943F7E:         var_1D4 = (1 + CVar(Proc_6_52_EAE084("Qty", 3, var_1B4)))
  loc_1943F8A:         var_1E4 = Space(1)
  loc_1943F92:         var_204 = (CVar(var_B8.Fields.Item("TableNo")) + var_1E4)
  loc_1943FAC:         var_224 = ("000" + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_1943FC0:         var_248 = (CVar(var_190) + Space(1))
  loc_1943FDA:         var_26C = (var_248 + CVar(Proc_6_52_EAE084("Amount", 7)))
  loc_1944011:         var_158 = vbNullString
  loc_1944026:         Call Proc_229_74_F156A0(var_D8, vbNullString, CStr(var_26C))
  loc_1944035:         var_158 = vbNullString
  loc_194404A:         Call Proc_229_74_F156A0(var_D8, vbNullString, var_C4)
  loc_194405C:         var_96 = (var_96 + 4)
  loc_1944062:         var_BC.MoveFirst
  loc_1944067:         ' Referenced from: 1944381
  loc_1944076:         If Not(var_BC.EOF) Then
  loc_194409B:           var_124 = var_BC.Fields.Item("ItemName").Value
  loc_19440C6:           Proc_6_39_E7D3A0(var_1E4, CVar(var_BC.Fields.Item("qty")), var_96)
  loc_19440EE:           var_280 = "Rate"
  loc_1944111:           Proc_6_39_E7D3A0(var_294, CVar(var_BC.Fields.Item(var_280)), 1, 1)
  loc_1944120:           var_2A4 = "0.00"
  loc_194415C:           Proc_6_39_E7D3A0(var_33C, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_1944187:           Proc_6_39_E7D3A0(var_374, CVar(var_BC.Fields.Item("Rate")), var_158)
  loc_19441DF:           var_154 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_124), &H12, Space(1), 1)))
  loc_19441F3:           var_1C4 = (Space(1) + Space(1))
  loc_194420C:           var_234 = (var_158 + CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0")), 3, CVar(Proc_6_52_EAE084("Qty", 3, Space(1))))))
  loc_1944220:           var_25C = (Space(1) + Space(1))
  loc_1944239:           var_2E4 = (CVar(Proc_6_52_EAE084("Amount", 7)) + CVar(Proc_6_52_EAE084(CStr(Format(var_294, var_2A4)), 6)))
  loc_194424D:           var_304 = (var_2E4 + Space(1))
  loc_1944266:           var_3E4 = (var_304 + CVar(Proc_6_52_EAE084(CStr(Format((var_33C * var_374), "0.00")), 7)))
  loc_19442CC:           var_1F4 = CVar(var_E4) 'Double
  loc_19442F6:           Proc_6_39_E7D3A0(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_1944324:           Proc_6_39_E7D3A0(Space(1), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_1944330:           var_1C4 = (var_124 + (var_1F4 * Space(1)))
  loc_1944335:           var_E4 = CSng(CVar(Proc_6_52_EAE084("Qty", 3, (var_1F4 * Space(1)))))
  loc_194434F:           var_158 = vbNullString
  loc_1944364:           Call Proc_229_74_F156A0(var_D8, vbNullString, CStr(var_3E4))
  loc_1944376:           var_96 = (var_96 + 1)
  loc_194437C:           var_BC.MoveNext
  loc_1944381:           GoTo loc_1944067
  loc_1944384:         End If
  loc_194439C:         Call Proc_229_74_F156A0(var_D8, vbNullString, var_C4, vbNullString)
  loc_19443C6:         Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1944401:         var_144 = "0.00"
  loc_1944406:         var_154 = var_144
  loc_1944453:         var_134 = (Space(&H16) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8, var_96)))
  loc_194445D:         var_204 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_E4, var_154))))), 8, 1)))
  loc_1944472:         Call Proc_229_74_F156A0(var_D8, vbNullString, CStr("0"), vbNullString)
  loc_19444BD:         Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19444CE:         var_100 = "WaiterName"
  loc_194450D:         var_17C = vbNullString
  loc_194452D:         Call Proc_229_74_F156A0(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_100)), 1), &H14))
  loc_1944567:         Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString)
  loc_194459C:         Call Proc_229_74_F156A0(var_D8, vbNullString, " ** " & MemVar_1F95220 & " **", vbNullString)
  loc_19445AF:         var_B8.MoveNext
  loc_19445D2:         Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19445FE:         Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString)
  loc_194462A:         Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1944656:         Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1944682:         Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19446AE:         Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19446DA:         Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1944706:         Call Proc_229_74_F156A0(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1944714:         GoTo loc_1943A9A
  loc_1944717:       End If
  loc_194471A:       var_DC = "WinTOKENPrint"
  loc_1944741:       Set var_E8 = var_D8 
  loc_1944748:       CreateFieldDefFile(var_E8, MemVar_1F950B4 & "\" & var_DC & ".ttx", &HFF)
  loc_194477A:       var_158 = MemVar_1F950B4 & "\" & var_DC
  loc_194478A:       Call 0.Method_arg_1C (var_158 & ".RPT", var_100, var_E8)
  loc_1944795:       MemVar_1F951E8 = var_E8
  loc_19447BE:       Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_144, var_1F4)
  loc_19447C6:       Call 0.Method_arg_2C (var_17C, var_158)
  loc_19447D6:       If (var_D4 <> vbNullString) Then
  loc_19447F7:         If CBool(Ucase(var_D4) <> "PRN") Then
  loc_19447FD:           Call Proc_229_71_F0F928(var_D4)
  loc_1944802:         End If
  loc_1944802:       End If
  loc_194481F:       Call 0.Method_Me8 (False, 1, var_1F4)
  loc_1944829:       Set var_D8 = Nothing
  loc_194482F:     Else
  loc_194483A:       If Not (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1944848:         If (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_194484B:         End If
  loc_194484D:         Close 1
  loc_194486D:         var_15C = "C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT"
  loc_1944874:         Open var_15C For Output As 1 Len = &HFF
  loc_1944884:         var_B8.MoveFirst
  loc_1944889:         ' Referenced from:   1945327
  loc_1944898:         If Not(var_B8.EOF) Then
  loc_194489D:           var_96 = 0
  loc_19448B1:           If (var_96 = 0) Then
  loc_19448B6:             Print 1
  loc_19448EA:             var_C4 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_1944931:             Call Proc_229_89_EFB31C(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14, 1, var_96), "D", &H28, var_17C)
  loc_194493B:             Print 1, var_17C
  loc_1944979:             Call Proc_229_89_EFB31C(Proc_6_45_EADFB8("* NC Bill *", &H14, var_280), "D", &H28)
  loc_1944983:             Print 1, var_15C
  loc_194499B:             Print 1
  loc_19449A3:             Print 1
  loc_19449DC:             Proc_6_39_E7D3A0(var_154, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_19449FE:             var_124 = (Chr(&HF) + "V No.     :   ")
  loc_1944A08:             var_1C4 = (CVar(Proc_6_45_EADFB8("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EADFB8(CStr(var_154), &HA, var_15C)))
  loc_1944A0E:             Print 1, CVar(CStr(Format(var_E4, var_154)))
  loc_1944AC0:             var_124 = (Chr(&HF) + "Date.     :   ")
  loc_1944ACA:             var_1B4 = (CVar(Proc_6_45_EADFB8("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC)))
  loc_1944AD3:             var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))), &HA, Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4))) + " ")
  loc_1944ADD:             var_204 = (CVar(CStr(Format(var_E4, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1944AE3:             Print 1, "0"
  loc_1944B38:             var_104 = var_B8.Fields.Item("Remarks")
  loc_1944B75:             var_124 = (Chr(&HF) + "Remarks :   ")
  loc_1944B7F:             var_1B4 = (CVar(Proc_6_45_EADFB8("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H32)))
  loc_1944B86:             var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H32))), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H32))) + Chr(&H12))
  loc_1944B8C:             Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1944BC5:             Set var_E8 = Me.Label1
  loc_1944BCB:             Call 0.Method_Proc_229_69_19462A40 (2, var_104)
  loc_1944C60:             var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA)))
  loc_1944C69:             var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))) + ":   ")
  loc_1944C70:             var_224 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1944C73:             var_234 = (Chr(&H12) + var_224)
  loc_1944C79:             Print 1, Space(1)
  loc_1944CC4:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1944CCA:             Print 1, CVar(var_104)
  loc_1944CD7:           End If
  loc_1944CFD:           var_134 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1944D17:           var_1B4 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_104)))))
  loc_1944D23:           var_1C4 = Space(3)
  loc_1944D2B:           var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_104))))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))) + var_1C4)
  loc_1944D45:           var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_1944D59:           var_224 = ("000" + Space(3))
  loc_1944D73:           var_248 = (var_224 + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_1944DB9:           var_124 = (Chr(&HF) + CVar(CStr(Space(1))))
  loc_1944DBF:           Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1944DE2:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1944DE8:           Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1944DFB:           var_96 = (var_96 + 4)
  loc_1944E01:           var_BC.MoveFirst
  loc_1944E06:           ' Referenced from:   194510D
  loc_1944E15:           If Not(var_BC.EOF) Then
  loc_1944E65:             Proc_6_39_E7D3A0(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_1944EB0:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Amount", 7)), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1944EFB:             Proc_6_39_E7D3A0(var_304, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_1944F26:             Proc_6_39_E7D3A0(var_33C, CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1944F76:             var_124 = Space(3)
  loc_1944F7E:             var_154 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + var_124)
  loc_1944F94:             var_204 = CVar(Proc_6_52_EAE084(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("ItemName"))))))) 'String
  loc_1944F97:             var_214 = (1 + var_204)
  loc_1944FAB:             var_234 = (Space(3) + Space(3))
  loc_1944FC1:             var_2B4 = CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Amount", 7)), "0.00")), 6, CVar(Proc_6_52_EAE084("Amount", &HA)))) 'String
  loc_1944FC4:             var_2C4 = (&H12 + var_2B4)
  loc_1944FD8:             var_2E4 = (Format(Format(CVar(Proc_6_52_EAE084("Amount", 7)), "0.00"), "0.00") + Space(3))
  loc_1944FF1:             var_3C4 = (var_2E4 + CVar(Proc_6_52_EAE084(CStr(Format((var_304 * var_33C), "0.00")), &HA)))
  loc_194507D:             Proc_6_39_E7D3A0(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_19450AB:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_19450B7:             var_1C4 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))))
  loc_19450BC:             var_E4 = CSng(var_1C4)
  loc_19450E9:             var_124 = (Chr(&HF) + CVar(CStr(Format((var_33C * (var_304 * var_33C)), "0.00"))))
  loc_19450EF:             Print 1, var_124
  loc_1945102:             var_96 = (var_96 + 1)
  loc_1945108:             var_BC.MoveNext
  loc_194510D:             GoTo loc_1944E06
  loc_1945110:           End If
  loc_1945126:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_194512C:           Print 1, var_124
  loc_194513E:           Print 1, vbNullString
  loc_19451C4:           var_134 = (Chr(&HF) + Space(&H25))
  loc_19451CE:           var_1B4 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8)))
  loc_19451D8:           var_224 = ((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_19451DE:           Print 1, Space(3)
  loc_194520F:           Print 1, vbNullString
  loc_1945269:           var_124 = (Chr(&HF) + "Waiter Name  :   ")
  loc_1945273:           var_1B4 = (Space(&H25) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14)))
  loc_1945279:           Print 1, (CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))))
  loc_194529A:           Print 1
  loc_19452B5:           var_124 = (Chr(&HF) + "** ")
  loc_19452BF:           var_134 = (Space(&H25) + CVar(MemVar_1F95220))
  loc_19452C8:           var_154 = (CVar(var_B8.Fields.Item("WaiterName")) + " **")
  loc_19452CE:           Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14))
  loc_19452E2:           var_B8.MoveNext
  loc_19452E9:           Print 1
  loc_19452F1:           Print 1
  loc_19452F9:           Print 1
  loc_1945301:           Print 1
  loc_1945309:           Print 1
  loc_1945311:           Print 1
  loc_1945319:           Print 1
  loc_1945321:           Print 1
  loc_1945327:           GoTo loc_1944889
  loc_194532A:         End If
  loc_194532C:         Close 1
  loc_1945367:         If (Proc_6_38_E69628(CVar(var_C0.Fields.Item("Printer")), &H12) <> vbNullString) Then
  loc_194538F:           Open "C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_19453ED:           Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>") & var_C0.Fields.Item("Printer").Value
  loc_194540D:         Else
  loc_1945437:           Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1945448:         End If
  loc_194544A:         Close 1
  loc_1945454:         If (MemVar_1F953BC = "Y") Then
  loc_1945486:           var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1945497:         Else
  loc_19454C6:           var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_19454D4:         End If
  loc_19454D7:       Else
  loc_19454E2:         If Not (var_174 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_19454F0:           If (var_174 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_19454F3:           End If
  loc_19454F5:           Close 1
  loc_194551C:           Open "C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_194552C:           var_B8.MoveFirst
  loc_1945531:           ' Referenced from:     1945F6F
  loc_1945540:           If Not(var_B8.EOF) Then
  loc_1945550:             var_94 = "* TOKEN *"
  loc_1945581:             var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1945590:             If (0 = 0) Then
  loc_1945595:               Print 1
  loc_19455C4:               var_1B4 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1945607:               var_26C = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1945631:               var_1E4 = (Chr(&HF) + Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))))
  loc_1945638:               var_224 = (CVar(CStr(Format(var_E4, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_194563F:               var_2C4 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_1945646:               var_2E4 = (Format(("0.00" / 2), "0.00") + Chr(&H12))
  loc_194564C:               Print 1, var_2E4
  loc_194569A:               var_154 = (42 - Len(Trim(var_94)))
  loc_19456CD:               var_224 = (42 - Len(Trim(var_94)))
  loc_19456F7:               var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1945701:               var_1E4 = (Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))) + CVar(var_94))
  loc_1945708:               var_25C = (CVar(CStr(Format(var_E4, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_194570F:               var_294 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1945715:               Print 1, ("0.00" / 2)
  loc_1945734:               var_96 = &H12
  loc_1945739:               Print 1
  loc_1945741:               Print 1
  loc_194577A:               Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")), var_96)
  loc_19457A9:               var_124 = (Chr(&HF) + "TOKEN No.   :     ")
  loc_19457B3:               var_1C4 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)))
  loc_19457BA:               var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_19457C0:               Print 1, CVar(CStr(Format(var_E4, "0.00")))
  loc_1945883:               var_124 = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_194588D:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_96), &HC)))
  loc_1945896:               var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + " ")
  loc_19458A0:               var_204 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_19458A7:               var_224 = (Trim(var_94) + Chr(&H12))
  loc_19458AD:               Print 1, Space(3)
  loc_1945906:               var_104 = var_B8.Fields.Item("Remarks")
  loc_1945943:               var_124 = (Chr(&HF) + "Remarks :     ")
  loc_194594D:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H20)))
  loc_1945954:               var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_194595A:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1945993:               Set var_E8 = Me.Label1
  loc_1945999:               Call 0.Method_Proc_229_69_19462A40 (2, var_104)
  loc_1945A3B:               var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA)))
  loc_1945A44:               var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + ":     ")
  loc_1945A4B:               var_224 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1945A4E:               var_234 = (Chr(&H12) + var_224)
  loc_1945A55:               var_25C = ((Space(3) / 2) + Chr(&H12))
  loc_1945A5B:               Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_1945AB7:               var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1945ABE:               var_154 = (CVar(var_104) + Chr(&H12))
  loc_1945AC4:               Print 1, CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))
  loc_1945AD5:             End If
  loc_1945AFB:             var_134 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Space(3))
  loc_1945B15:             var_1B4 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))
  loc_1945B21:             var_1C4 = Space(3)
  loc_1945B29:             var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + var_1C4)
  loc_1945B43:             var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_1945B8C:             var_124 = (Chr(&HF) + CVar(CStr("000")))
  loc_1945B93:             var_154 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1945B99:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_1945BCD:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1945BD4:             var_154 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1945BDA:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_1945BF1:             var_96 = (var_96 + 4)
  loc_1945BF7:             var_BC.MoveFirst
  loc_1945BFC:             ' Referenced from:     1945DCB
  loc_1945C0B:             If Not(var_BC.EOF) Then
  loc_1945C5B:               Proc_6_39_E7D3A0(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_1945CA6:               Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1945CF0:               var_154 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1945D09:               var_214 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))))
  loc_1945D1D:               var_234 = (Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))), "000") + Space(3))
  loc_1945D36:               var_2C4 = (var_96 + CVar(Proc_6_52_EAE084(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_1945D9C:               var_124 = (Chr(&HF) + CVar(CStr(Format(Format(Len(Trim(CVar(Me.LblRest))), "0.00"), "0.00"))))
  loc_1945DA3:               var_154 = (Space(3) + Chr(&H12))
  loc_1945DA9:               Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_1945DC0:               var_96 = (var_96 + 1)
  loc_1945DC6:               var_BC.MoveNext
  loc_1945DCB:               GoTo loc_1945BFC
  loc_1945DCE:             End If
  loc_1945DF1:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1945DF8:             var_154 = (Space(3) + Chr(&H12))
  loc_1945DFE:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_1945E70:             var_124 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1945E7A:             var_1B4 = (Space(3) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), var_96), &H14)))
  loc_1945E81:             var_1D4 = (CVar(var_BC.Fields.Item("qty")) + Chr(&H12))
  loc_1945E87:             Print 1, "0.00"
  loc_1945ECF:             var_1B4 = Chr(&H12)
  loc_1945EDC:             var_124 = (Chr(&HF) + "***  ")
  loc_1945EEF:             var_1C4 = ("  ***" + var_1B4)
  loc_1945EF9:             Print 1, Space(3) & Trim(var_CC) & Chr(&H12)
  loc_1945F12:             Print 1
  loc_1945F2D:             var_124 = (Chr(&HF) + "** ")
  loc_1945F37:             var_134 = (Space(3) + CVar(MemVar_1F95220))
  loc_1945F40:             var_154 = (Trim(var_CC) + " **")
  loc_1945F46:             Print 1, Space(3) & Trim(var_CC)
  loc_1945F5A:             var_B8.MoveNext
  loc_1945F61:             Print 1
  loc_1945F69:             Print 1
  loc_1945F6F:             GoTo loc_1945531
  loc_1945F72:           End If
  loc_1945F74:           Close 1
  loc_1945FAF:           If (Proc_6_38_E69628(CVar(var_C0.Fields.Item("Printer"))) <> vbNullString) Then
  loc_1945FD7:             Open "C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1946029:             var_124 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>") 'String
  loc_194602F:             var_134 = var_124 & var_C0.Fields.Item("Printer").Value 
  loc_1946035:             Print 1, var_134
  loc_1946055:           Else
  loc_194607A:             Open "C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_19460B1:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_19460C2:           End If
  loc_19460C4:           Close 1
  loc_19460CE:           If (MemVar_1F953BC = "Y") Then
  loc_1946100:             var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_194613D:             If (MsgBox("Press OK to cut TOKEN", &H40, var_124, var_134, Space(3) & Trim(var_CC)) = 1) Then
  loc_1946159:               var_A8 = CVar(Shell("C:\reptmp\SCUTTER.PIF", 0)) 'Variant
  loc_1946160:             End If
  loc_1946163:           Else
  loc_1946192:             var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_19461CF:             If (MsgBox("Press OK to cut TOKEN", &H40, var_124, var_134, Space(3) & Trim(var_CC)) = 1) Then
  loc_19461EB:               var_A8 = CVar(Shell("C:\reptmp\SCUTTER.bat", 0)) 'Variant
  loc_19461F2:             End If
  loc_19461F2:           End If
  loc_19461F2:         End If
  loc_19461F2:       End If
  loc_19461F2:     End If
  loc_19461F5:   Else
  loc_194623F:     MsgBox("Please Check Printer Setting of " & var_C0.Fields.Item("Name").Value & ".", &H40, Space(3) & Trim(var_CC), var_1B4, Chr(&H12))
  loc_194625A:   End If
  loc_194625D:   var_C0.MoveNext
  loc_1946262:   GoTo loc_194395D
  loc_1946265: End If
  loc_194626A: Set var_B8 = Nothing
  loc_1946272: Set var_BC = Nothing
  loc_194627A: Set var_C0 = Nothing
  loc_1946282: Set var_D0 = Nothing
  loc_194628A: Set var_D8 = Nothing
  loc_1946292: Proc_229_69_19462A4 = &HFF
  loc_1946298: Proc_6_60_E63754(var_E4)
  loc_194629D: Proc_229_69_19462A4 = 
End Sub

Public Sub Proc_229_70_DFC92C
  'Data Table: 542AE4
  loc_DFC928: Exit Sub
End Sub

Public Sub Proc_229_71_F0F928(arg_C) 'F0F928
  'Data Table: 542AE4
  Dim var_94 As Integer
  Dim var_96 As Integer
  Dim var_C8 As Variant
  loc_F0F857: var_94 = CInt(InStr(1, arg_C, ",", 0))
  loc_F0F880: var_96 = CInt(InStr((InStr(1, arg_C, ",", 0) + 1), arg_C, ",", 0))
  loc_F0F889: var_C8 = CVar((var_94 - 1)) 'Integer
  loc_F0F8B9: var_C8 = CVar((var_96 - (var_94 + 1))) 'Integer
  loc_F0F8CE: var_D8 = Mid(arg_C, CLng((var_94 + 1)), var_C8)
  loc_F0F8E8: var_C8 = CVar((CInt(Len(arg_C)) - var_96)) 'Integer
  loc_F0F8FD: var_D8 = Mid(arg_C, CLng((var_96 + 1)), var_C8)
  loc_F0F91F: Call 0.Method_MeC (CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)))
  loc_F0F924: Exit Sub
End Sub

Public Sub Proc_229_72_1B9E67C
  'Data Table: 542AE4
  Dim var_128 As Variant
  Dim var_108 As Variant
  Dim var_138 As Variant
  Dim var_13C As String
  Dim unk_542AFA As Connection15
  Dim var_F8 As Recordset15
  Dim var_160 As Variant
  Dim var_118 As Variant
  Dim Me As Recordset15
  Dim var_168 As Variant
  Dim var_15C As Variant
  Dim var_178 As Variant
  Dim var_17C As String
  Dim var_180 As String
  Dim var_D4 As Recordset15
  Dim var_184 As Variant
  Dim var_B8 As Recordset15
  Dim var_C0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_194 As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_274 As Variant
  Dim var_14C As Variant
  Dim var_2FC As String
  Dim var_300 As String
  Dim var_1D8 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_21C As Variant
  Dim var_24C As Variant
  Dim var_344 As Variant
  Dim var_354 As Variant
  Dim var_E4 As Recordset15
  Dim var_23C As Variant
  Dim var_2F4 As Variant
  Dim var_330 As Variant
  Dim var_2C4 As Variant
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  loc_1B99420: On Error Goto loc_1B9E670
  loc_1B99440: Proc_6_17_EAAE40(var_118, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1B99456: unk_542AFA.Execute CStr(var_15C & var_118), -1, var_160
  loc_1B99461: Set var_F8 = var_160
  loc_1B99487: If (var_F8.RecordCount > 0) Then
  loc_1B994C1:   var_E8 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_F8.Fields.Item("KOTHeader1"))))))
  loc_1B99507:   var_EC = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_F8.Fields.Item("KOTHeader2"))))))
  loc_1B9954D:   var_F0 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_F8.Fields.Item("KOTHeader3"))))))
  loc_1B99593:   var_F4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_F8.Fields.Item("KOTHeader4"))))))
  loc_1B995A2: End If
  loc_1B995A5: MemVar_1F953C4 = "N"
  loc_1B995AC: MemVar_1F953C8 = "N"
  loc_1B995B3: MemVar_1F953CC = "K"
  loc_1B995BE: var_13C = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.NCTOKEN,K.Remarks , K.ContraDocId, D.ShortName " & "From ((TOKEN K Left Join Waiter W on K.Waiter=W.Code) Left Join Depart D on D.Code=K.RestCode) "
  loc_1B99603: var_8C = CStr(CVar(var_13C & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1B99622: var_138 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1B99642: var_168 = Me.Fields.Item("SearchCode")
  loc_1B99652: var_15C = var_138 & var_168.Value 
  loc_1B9965B: var_178 = var_15C & "'" 
  loc_1B99660: var_90 = CStr(var_178)
  loc_1B9967D: If (var_8C = vbNullString) Then
  loc_1B99685:   Proc_229_72_1B9E67C = 0
  loc_1B9968B: End If
  loc_1B99693: If (var_90 = vbNullString) Then
  loc_1B9969B:   Proc_229_72_1B9E67C = 0
  loc_1B996A1: End If
  loc_1B996BF: Set var_160 = Me.Txt
  loc_1B996C5: Call 0.Method_Proc_229_72_1B9E67C0 (CInt(4), var_168, var_13C, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='")
  loc_1B996CD: var_118 = var_168.Text
  loc_1B996D6: var_17C = -1 & var_13C
  loc_1B996E6: unk_542AFA.Execute var_17C & "' AND CONTRADOCID IS NULL", var_184, 
  loc_1B9971D: If (var_184.RecordCount = 1) Then
  loc_1B99723:   var_CC = "New Order"
  loc_1B99729: Else
  loc_1B99730:   Set var_160 = Me.LblState
  loc_1B9973E:   var_CC = var_160.Caption
  loc_1B99744: End If
  loc_1B9975A: unk_542AFA.Execute var_8C, var_118, -1
  loc_1B99765: Set var_B8 = var_160
  loc_1B99784: unk_542AFA.Execute "SELECT KOTPrinting FROM Enviro", var_118, -1
  loc_1B9978F: Set var_D4 = var_160
  loc_1B9979E: var_128 = 0
  loc_1B997CE: unk_542AFA.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_118, -1
  loc_1B997D6: var_160 = var_160.Fields
  loc_1B997DE: var_128 = var_168.Item(var_168)
  loc_1B997E6: var_184 = var_184.Value
  loc_1B997F3: var_D8 = Proc_6_38_E69628(var_138, var_138)
  loc_1B9981C: var_160 = var_B8.Fields
  loc_1B99846: If (Proc_6_38_E69628(CVar(var_160.Item("ContraDocId")), var_160) <> vbNullString) Then
  loc_1B9985C:   var_118 = "Sale Bill Already Generated !!"
  loc_1B99862:   MsgBox(var_118, &H40, var_138, var_15C, var_178)
  loc_1B99877:   Proc_229_72_1B9E67C = 0
  loc_1B9987D: End If
  loc_1B99894: var_13C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & LocalRestCode
  loc_1B998A4: unk_542AFA.Execute var_13C & "'", var_118, -1
  loc_1B998AF: Set var_C0 = var_160
  loc_1B998BF: ' Referenced from: 1B9E64A
  loc_1B998CE: If Not(var_C0.EOF) Then
  loc_1B998D8:   var_138 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1B998F0:   var_160 = Me.Fields
  loc_1B99900:   var_118 = var_160.Item("SearchCode").Value
  loc_1B99941:   unk_542AFA.Execute CStr(var_138 & var_118 & "'"), var_118, -1
  loc_1B9994C:   Set var_BC = var_160
  loc_1B9995B:   var_164 = var_BC.RecordCount
  loc_1B99969:   If (var_164 > 0) Then
  loc_1B9997B:     var_160 = var_C0.Fields
  loc_1B9999A:     var_1A8 = Trim(CVar(var_160.Item("PrintType"))) 'Variant
  loc_1B999AF:     If (var_1A8 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1B999BF:       Call Proc_229_73_EFA61C(New, var_160, var_160)
  loc_1B999C7:       Set var_E0 = var_160
  loc_1B999CD:       Me.Recordset15.MoveFirst
  loc_1B999D2:       ' Referenced from: 1B9A760
  loc_1B999E1:       If Not(var_B8.EOF) Then
  loc_1B999E6:         var_96 = 0
  loc_1B999FD:         var_160 = var_B8.Fields
  loc_1B99B0E:         var_2F4 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_160.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_160) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1B99B17:         var_94 = CStr(var_2F4)
  loc_1B99B5B:         If (var_96 = 0) Then
  loc_1B99B61:           var_180 = vbNullString
  loc_1B99B7C:           Call Proc_229_74_F156A0(var_E0, vbNullString, vbNullString)
  loc_1B99BB8:           var_C4 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1B99BEF:           var_138 = CVar(Me.LblRest.Caption) 'String
  loc_1B99BF2:           var_15C = (Space(1) + var_138)
  loc_1B99C07:           Call Proc_229_74_F156A0(var_E0, vbNullString, CStr(Trim(CVar(Proc_6_38_E69628(CVar(Me.LblRest.Item("ShortName")), 1, var_96)))))
  loc_1B99C39:           Call Proc_229_74_F156A0(var_E0, vbNullString, var_94, vbNullString)
  loc_1B99C68:           Call Proc_229_74_F156A0(var_E0, vbNullString, vbNullString, vbNullString)
  loc_1B99C9C:           Proc_6_39_E7D3A0(var_138, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1B99CD0:           var_180 = vbNullString
  loc_1B99CD9:           Call Proc_229_74_F156A0(var_E0, var_180, " TOKEN No.   : " & Proc_6_45_EADFB8(CStr(var_138), &HA, vbNullString))
  loc_1B99D95:           var_300 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")), " TOKEN Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1B99DA9:           Call Proc_229_74_F156A0(var_E0, vbNullString, " TOKEN Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC) & " " & var_300)
  loc_1B99DF0:           var_168 = var_B8.Fields.Item("Remarks")
  loc_1B99E3B:           Call Proc_229_74_F156A0(var_E0, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_168), vbNullString), &H1E))
  loc_1B99E6D:           Set var_160 = Me.Label1
  loc_1B99E73:           Call 0.Method_Proc_229_72_1B9E67C0 (2, var_168)
  loc_1B99EDE:           var_2FC = vbNullString
  loc_1B99EED:           var_1B8 = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_168))), &HA)))
  loc_1B99EF6:           var_1C8 = (Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_160.Item("ShortName")), 1, &H12))), 1, 3) + ": ")
  loc_1B99EFD:           var_1EC = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1B99F00:           var_21C = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_160.Item("ShortName")), 1, &H12))), 1, 3)) + var_1EC)
  loc_1B99F15:           Call Proc_229_74_F156A0(var_E0, vbNullString, CStr("* NC LOT *"))
  loc_1B99F4C:           var_17C = vbNullString
  loc_1B99F61:           Call Proc_229_74_F156A0(var_E0, vbNullString, var_C4)
  loc_1B99F6D:         End If
  loc_1B99F93:         var_15C = (var_17C + CVar(Proc_6_45_EADFB8("ITEM NAME", &H19, Space(1))))
  loc_1B99FA7:         var_1B8 = (Trim(CVar(var_168)) + Space(1))
  loc_1B99FBE:         var_1C8 = CVar(Proc_6_52_EAE084("Qty", 3, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_160.Item("ShortName")), 1, &H12))), 1, 3))) 'String
  loc_1B99FC1:         var_1D8 = (var_2FC + var_1C8)
  loc_1B99FC6:         var_B0 = CStr(CVar(var_B8.Fields.Item("TableNo")))
  loc_1B99FE4:         var_17C = vbNullString
  loc_1B99FF9:         Call Proc_229_74_F156A0(var_E0, vbNullString, var_B0)
  loc_1B9A008:         var_17C = vbNullString
  loc_1B9A01D:         Call Proc_229_74_F156A0(var_E0, vbNullString, var_C4)
  loc_1B9A02F:         var_96 = (var_96 + 4)
  loc_1B9A035:         var_BC.MoveFirst
  loc_1B9A03A:         ' Referenced from: 1B9A3BB
  loc_1B9A049:         If Not(var_BC.EOF) Then
  loc_1B9A082:           var_184 = var_BC.Fields
  loc_1B9A099:           Proc_6_39_E7D3A0(var_1EC, CVar(var_184.Item("qty")), &H12)
  loc_1B9A0C4:           var_194 = "Cancel"
  loc_1B9A0FE:           var_1FC = "Y"
  loc_1B9A13C:           var_178 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1B9A150:           var_1C8 = (Space(1) + Space(1))
  loc_1B9A169:           var_274 = (var_17C + CVar(Proc_6_52_EAE084(CStr(Format(var_1EC, "0")), 3, var_1C8)))
  loc_1B9A17F:           var_344 = CVar(Proc_6_52_EAE084(CStr(IIf((var_BC.Fields.Item(var_194).Value = var_1FC), "Void", vbNullString)), 5, CVar(var_B8.Fields.Item("NCTOKEN")))) 'String
  loc_1B9A182:           var_354 = (var_17C + var_344)
  loc_1B9A1E1:           Call Proc_229_74_F156A0(var_E0, vbNullString, CStr(var_354))
  loc_1B9A1F3:           var_96 = (var_96 + 1)
  loc_1B9A22F:           If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1B9A260:             var_2FC = vbNullString
  loc_1B9A287:             Call Proc_229_74_F156A0(var_E0, vbNullString, "(" & Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), vbNullString) & ")")
  loc_1B9A2A7:             var_96 = (var_96 + 1)
  loc_1B9A2AA:           End If
  loc_1B9A2B4:           If (&H12 = (&H45 - var_AA)) Then
  loc_1B9A2CF:             Call Proc_229_74_F156A0(var_E0, vbNullString, var_C4, vbNullString)
  loc_1B9A2F9:             Call Proc_229_74_F156A0(var_E0, vbNullString, " Contd.", vbNullString)
  loc_1B9A30D:             var_98 = (var_98 + 1)
  loc_1B9A32D:             Call Proc_229_74_F156A0(var_E0, vbNullString, var_94, vbNullString, 0)
  loc_1B9A356:             Call Proc_229_74_F156A0(var_E0, vbNullString, var_C4, vbNullString, &H12)
  loc_1B9A37A:             Call Proc_229_74_F156A0(var_E0, vbNullString, var_B0, vbNullString)
  loc_1B9A39E:             Call Proc_229_74_F156A0(var_E0, vbNullString, var_C4, vbNullString)
  loc_1B9A3B0:             var_96 = (var_96 + 4)
  loc_1B9A3B3:           End If
  loc_1B9A3B6:           var_BC.MoveNext
  loc_1B9A3BB:           GoTo loc_1B9A03A
  loc_1B9A3BE:         End If
  loc_1B9A3C8:         If (&H12 < (&H45 - var_AA)) Then
  loc_1B9A3CB:           ' Referenced from: 1B9A40D
  loc_1B9A3D5:           If (&H12 = (&H45 - var_AA)) Then
  loc_1B9A3F6:             Call Proc_229_74_F156A0(var_E0, vbNullString, vbNullString, vbNullString, &H12)
  loc_1B9A40A:             var_96 = (var_96 + 1)
  loc_1B9A40D:             GoTo loc_1B9A3CB
  loc_1B9A410:           End If
  loc_1B9A410:         End If
  loc_1B9A428:         Call Proc_229_74_F156A0(var_E0, vbNullString, var_C4, vbNullString, &H12)
  loc_1B9A476:         var_2FC = vbNullString
  loc_1B9A496:         Call Proc_229_74_F156A0(var_E0, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1B9A4F1:         Call Proc_229_74_F156A0(var_E0, vbNullString, CStr(" ***  " & Trim(var_CC) & "  ***"), vbNullString)
  loc_1B9A550:         var_15C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1B9A55E:         unk_542AFA.Execute CStr(var_15C), Space(1), -1
  loc_1B9A5BF:         If (var_184.Fields.Item(0).Value > 1) Then
  loc_1B9A5E9:           Call Proc_229_74_F156A0(var_E0, vbNullString, " ***  " & "Changed TOKEN" & "  ***", vbNullString)
  loc_1B9A5FC:         Else
  loc_1B9A609:           var_128 = "Select Printed from TOKEN where docid='"
  loc_1B9A63F:           var_14C = "'"
  loc_1B9A652:           unk_542AFA.Execute CStr(var_128 & Me.Fields.Item("SearchCode").Value & var_14C), Space(1), -1
  loc_1B9A67A:           var_108 = 0
  loc_1B9A6B0:           If (Proc_6_38_E69628(CVar(var_184.Fields.Item(var_108)), var_184, var_184) = "Y") Then
  loc_1B9A6DA:             Call Proc_229_74_F156A0(var_E0, vbNullString, " ***  " & "DUPLICATE TOKEN" & "  ***", vbNullString)
  loc_1B9A6ED:           Else
  loc_1B9A70B:             Call Proc_229_74_F156A0(var_E0, vbNullString, vbNullString, vbNullString)
  loc_1B9A719:           End If
  loc_1B9A719:         End If
  loc_1B9A71E:         Set var_E4 = Nothing
  loc_1B9A748:         Call Proc_229_74_F156A0(var_E0, vbNullString, "** " & MemVar_1F95220 & " **", vbNullString)
  loc_1B9A75B:         var_B8.MoveNext
  loc_1B9A760:         GoTo loc_1B999D2
  loc_1B9A763:       End If
  loc_1B9A766:       var_DC = "WinTOKENPrint"
  loc_1B9A78D:       Set var_160 = var_E0 
  loc_1B9A794:       CreateFieldDefFile(var_160, MemVar_1F950B4 & "\" & var_DC & ".ttx", &HFF)
  loc_1B9A7D6:       Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_DC & ".RPT", var_108, var_160)
  loc_1B9A7E1:       MemVar_1F951E8 = var_160
  loc_1B9A80A:       Call 0.Method_arg_64 (var_160, CVar(var_160), var_128, var_14C)
  loc_1B9A812:       Call 0.Method_arg_2C (var_2FC, var_2FC)
  loc_1B9A822:       If (var_D8 <> vbNullString) Then
  loc_1B9A843:         If CBool(Ucase(var_D8) <> "PRN") Then
  loc_1B9A849:           Call Proc_229_71_F0F928(var_D8)
  loc_1B9A84E:         End If
  loc_1B9A84E:       End If
  loc_1B9A85A:       var_128 = 1
  loc_1B9A86B:       Call 0.Method_Me8 (False, var_128, var_14C)
  loc_1B9A875:       Set var_E0 = Nothing
  loc_1B9A87B:     Else
  loc_1B9A886:       If (var_1A8 = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1B9A88C:         var_B8.MoveFirst
  loc_1B9A891:         ' Referenced from:   1B9B665
  loc_1B9A8A0:         If Not(var_B8.EOF) Then
  loc_1B9A8A6:           var_108 = "ShortName"
  loc_1B9A8D6:           var_178 = 3
  loc_1B9A905:           var_184 = var_B8.Fields
  loc_1B9A90D:           var_1DC = var_184.Item("NCTOKEN")
  loc_1B9A9AF:           var_14C = "LAU"
  loc_1B9A9B9:           var_2E4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_108)), "NCTOKEN"))), 1, var_178)) = var_14C) 'Variant
  loc_1B9A9C3:           var_2F4 = IIf(var_2E4, IIf((Proc_6_38_E69628(CVar(var_1DC), (Proc_6_38_E69628(CVar(var_1DC), var_1FC) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1B9A9CC:           var_94 = CStr(var_2F4)
  loc_1B9AA0D:           var_DC = "TOKENPrint"
  loc_1B9AA34:           Set var_160 = var_BC 
  loc_1B9AA3B:           CreateFieldDefFile(var_160, MemVar_1F950B4 & "\" & var_DC & ".ttx")
  loc_1B9AA47:           Set var_BC = var_160
  loc_1B9AA7D:           Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_DC & ".RPT", var_108, var_160)
  loc_1B9AA88:           MemVar_1F951E8 = var_160
  loc_1B9AAB1:           Call 0.Method_arg_64 (var_160, CVar(var_BC), var_128)
  loc_1B9AAB9:           Call 0.Method_arg_2C (var_14C, &HFF)
  loc_1B9AAC7:           Call 0.Method_arg_150 (var_160)
  loc_1B9AB14:           var_15C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1B9AB22:           unk_542AFA.Execute CStr(var_15C), var_178, -1
  loc_1B9AB83:           If (var_184.Fields.Item(0).Value > 1) Then
  loc_1B9AB89:             var_D0 = "Changed TOKEN"
  loc_1B9AB8F:           Else
  loc_1B9ABE5:             unk_542AFA.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_178, -1
  loc_1B9AC19:             var_160 = var_184.Fields
  loc_1B9AC21:             var_168 = var_160.Item(0)
  loc_1B9AC32:             var_13C = Proc_6_38_E69628(CVar(var_168), var_184)
  loc_1B9AC43:             If (var_13C = "Y") Then
  loc_1B9AC49:               var_D0 = "DUPLICATE TOKEN"
  loc_1B9AC4F:             Else
  loc_1B9AC52:               var_D0 = vbNullString
  loc_1B9AC55:             End If
  loc_1B9AC55:           End If
  loc_1B9AC5A:           Set var_E4 = Nothing
  loc_1B9AC6E:           Call 0.Method_arg_90 (var_160, var_164, var_B2)
  loc_1B9AC76:           Call 0.Method_arg_24 (1)
  loc_1B9AC82:           For var_358 =  To CInt(var_164):   var_184 = var_358 'Integer
  loc_1B9AC9B:             Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B9ACA3:             Call 0.Method_arg_20 (var_168)
  loc_1B9ACAB:             Call 0.Method_arg_30 (var_13C)
  loc_1B9ACC1:             var_368 = Ucase(CVar(var_13C)) 'Variant
  loc_1B9ACF1:             If (var_368 = Ucase("comp_name")) Then
  loc_1B9AD15:               Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B9AD1D:               Call 0.Method_arg_20 (var_168)
  loc_1B9AD25:               Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1B9AD3B:             Else
  loc_1B9AD5D:               If (var_368 = Ucase("comp_add1")) Then
  loc_1B9AD81:                 Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B9AD89:                 Call 0.Method_arg_20 (var_168)
  loc_1B9AD91:                 Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1B9ADA7:               Else
  loc_1B9ADC9:                 If (var_368 = Ucase("comp_pin")) Then
  loc_1B9ADED:                   Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B9ADF5:                   Call 0.Method_arg_20 (var_168)
  loc_1B9ADFD:                   Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1B9AE13:                 Else
  loc_1B9AE35:                   If (var_368 = Ucase("comp_GSTIN")) Then
  loc_1B9AE59:                     Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B9AE61:                     Call 0.Method_arg_20 (var_168)
  loc_1B9AE69:                     Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1B9AE7F:                   Else
  loc_1B9AEA1:                     If (var_368 = Ucase("RestName")) Then
  loc_1B9AEAE:                       Set var_160 = Me.LblRest
  loc_1B9AED7:                       Call 0.Method_arg_90 (var_168, CLng(var_B2))
  loc_1B9AEDF:                       Call 0.Method_arg_20 (var_184)
  loc_1B9AEE7:                       Call 0.Method_arg_38 ("'" & var_160.Caption & "'")
  loc_1B9AF01:                     Else
  loc_1B9AF23:                       If (var_368 = Ucase("mTitle")) Then
  loc_1B9AF47:                         Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B9AF4F:                         Call 0.Method_arg_20 (var_168)
  loc_1B9AF57:                         Call 0.Method_arg_38 ("'" & var_94 & "'")
  loc_1B9AF6D:                       Else
  loc_1B9AF75:                         var_118 = "Header1"
  loc_1B9AF8F:                         If (var_368 = Ucase(var_118)) Then
  loc_1B9AF9D:                           Proc_6_17_EAAE40(var_118)
  loc_1B9AFB9:                           Call 0.Method_arg_90 (var_160, CLng(var_B2), var_168)
  loc_1B9AFC1:                           Call 0.Method_arg_20 (CStr(var_118))
  loc_1B9AFC9:                           Call 0.Method_arg_38 (var_E8)
  loc_1B9AFDE:                         Else
  loc_1B9AFE6:                           var_118 = "Header2"
  loc_1B9B000:                           If (var_368 = Ucase(var_118)) Then
  loc_1B9B00E:                             Proc_6_17_EAAE40(var_118)
  loc_1B9B02A:                             Call 0.Method_arg_90 (var_160, CLng(var_B2), var_168)
  loc_1B9B032:                             Call 0.Method_arg_20 (CStr(var_118))
  loc_1B9B03A:                             Call 0.Method_arg_38 (var_EC)
  loc_1B9B04F:                           Else
  loc_1B9B057:                             var_118 = "Header3"
  loc_1B9B071:                             If (var_368 = Ucase(var_118)) Then
  loc_1B9B07F:                               Proc_6_17_EAAE40(var_118)
  loc_1B9B09B:                               Call 0.Method_arg_90 (var_160, CLng(var_B2), var_168)
  loc_1B9B0A3:                               Call 0.Method_arg_20 (CStr(var_118))
  loc_1B9B0AB:                               Call 0.Method_arg_38 (var_F0)
  loc_1B9B0C0:                             Else
  loc_1B9B0C8:                               var_118 = "Header4"
  loc_1B9B0E2:                               If (var_368 = Ucase(var_118)) Then
  loc_1B9B0F0:                                 Proc_6_17_EAAE40(var_118)
  loc_1B9B10C:                                 Call 0.Method_arg_90 (var_160, CLng(var_B2), var_168)
  loc_1B9B114:                                 Call 0.Method_arg_20 (CStr(var_118))
  loc_1B9B11C:                                 Call 0.Method_arg_38 (var_F4)
  loc_1B9B131:                               Else
  loc_1B9B142:                                 var_138 = Ucase("TOKENNo")
  loc_1B9B153:                                 If (var_368 = var_138) Then
  loc_1B9B181:                                   Proc_6_39_E7D3A0(var_138, CVar(var_B8.Fields.Item("VNo")))
  loc_1B9B18D:                                   var_14C = "'"
  loc_1B9B1AA:                                   Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B9B1B2:                                   Call 0.Method_arg_20 (var_1DC)
  loc_1B9B1BA:                                   Call 0.Method_arg_38 (CStr("'" & var_138 & var_14C))
  loc_1B9B1D9:                                 Else
  loc_1B9B1FB:                                   If (var_368 = Ucase("TOKENDate")) Then
  loc_1B9B247:                                     Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B9B24F:                                     Call 0.Method_arg_20 (var_1DC)
  loc_1B9B257:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate"))) & "'")
  loc_1B9B274:                                   Else
  loc_1B9B296:                                     If (var_368 = Ucase("TOKENTime")) Then
  loc_1B9B2E2:                                       Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B9B2EA:                                       Call 0.Method_arg_20 (var_1DC)
  loc_1B9B2F2:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))) & "'")
  loc_1B9B30F:                                     Else
  loc_1B9B331:                                       If (var_368 = Ucase("Remarks")) Then
  loc_1B9B34E:                                         var_168 = var_B8.Fields.Item("Remarks")
  loc_1B9B37D:                                         Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B9B385:                                         Call 0.Method_arg_20 (var_1DC)
  loc_1B9B38D:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_168)) & "'")
  loc_1B9B3AA:                                       Else
  loc_1B9B3CC:                                         If (var_368 = Ucase("TableTitle")) Then
  loc_1B9B3DD:                                           Set var_160 = Me.Label1
  loc_1B9B3E3:                                           Call 0.Method_Proc_229_72_1B9E67C0 (2, var_168)
  loc_1B9B41B:                                           Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B9B423:                                           Call 0.Method_arg_20 (var_1DC)
  loc_1B9B42B:                                           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_168)) & "'"))
  loc_1B9B44A:                                         Else
  loc_1B9B46C:                                           If (var_368 = Ucase("TableNo")) Then
  loc_1B9B4B8:                                             Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B9B4C0:                                             Call 0.Method_arg_20 (var_1DC)
  loc_1B9B4C8:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo"))) & "'")
  loc_1B9B4E5:                                           Else
  loc_1B9B507:                                             If (var_368 = Ucase("Steward")) Then
  loc_1B9B51C:                                               var_160 = var_B8.Fields
  loc_1B9B524:                                               var_168 = var_160.Item("WaiterName")
  loc_1B9B553:                                               Call 0.Method_arg_90 (var_184, CLng(var_B2))
  loc_1B9B55B:                                               Call 0.Method_arg_20 (var_1DC)
  loc_1B9B563:                                               Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_168)) & "'")
  loc_1B9B580:                                             Else
  loc_1B9B5A2:                                               If (var_368 = Ucase("TOKENStatus")) Then
  loc_1B9B5C6:                                                 Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B9B5CE:                                                 Call 0.Method_arg_20 (var_168)
  loc_1B9B5D6:                                                 Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1B9B5EC:                                               Else
  loc_1B9B60E:                                                 If (var_368 = Ucase("TOKENRemark")) Then
  loc_1B9B632:                                                   Call 0.Method_arg_90 (var_160, CLng(var_B2))
  loc_1B9B63A:                                                   Call 0.Method_arg_20 (var_168)
  loc_1B9B642:                                                   Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1B9B655:                                                 End If
  loc_1B9B655:                                               End If
  loc_1B9B655:                                             End If
  loc_1B9B655:                                           End If
  loc_1B9B655:                                         End If
  loc_1B9B655:                                       End If
  loc_1B9B655:                                     End If
  loc_1B9B655:                                   End If
  loc_1B9B655:                                 End If
  loc_1B9B655:                               End If
  loc_1B9B655:                             End If
  loc_1B9B655:                           End If
  loc_1B9B655:                         End If
  loc_1B9B655:                       End If
  loc_1B9B655:                     End If
  loc_1B9B655:                   End If
  loc_1B9B655:                 End If
  loc_1B9B655:               End If
  loc_1B9B655:             End If
  loc_1B9B658:           Next var_358 'Integer
  loc_1B9B660:           var_B8.MoveNext
  loc_1B9B665:           GoTo loc_1B9A891
  loc_1B9B668:         End If
  loc_1B9B670:         If (var_D8 <> vbNullString) Then
  loc_1B9B691:           If CBool(Ucase(var_D8) <> "PRN") Then
  loc_1B9B697:             Call Proc_229_71_F0F928(var_D8)
  loc_1B9B69C:           End If
  loc_1B9B69C:         End If
  loc_1B9B6B9:         Call 0.Method_Me8 (False, 1, var_14C)
  loc_1B9B6C1:       Else
  loc_1B9B6CC:         If (var_1A8 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1B9B6D1:           Close 1
  loc_1B9B6DA:           Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1B9B6E1:           var_B8.MoveFirst
  loc_1B9B6E6:           ' Referenced from:     1B9C589
  loc_1B9B6F5:           If Not(var_B8.EOF) Then
  loc_1B9B6FA:             var_96 = 0
  loc_1B9B735:             var_178 = 3
  loc_1B9B758:             var_194 = "NCTOKEN"
  loc_1B9B7D5:             var_2F8 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")))
  loc_1B9B7F1:             var_17C = var_2F8
  loc_1B9B818:             var_2E4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_178)) = "LAU") 'Variant
  loc_1B9B822:             var_2F4 = IIf(var_2E4, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_194)), var_194) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_17C = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1B9B82B:             var_94 = CStr(var_2F4)
  loc_1B9B86F:             If (var_96 = 0) Then
  loc_1B9B874:               Print 1
  loc_1B9B8A8:               var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1B9B8B9:               If (var_E8 <> vbNullString) Then
  loc_1B9B8E2:                 var_15C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E8, &H28)))
  loc_1B9B8E8:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9B8FA:               End If
  loc_1B9B902:               If (var_EC <> vbNullString) Then
  loc_1B9B92B:                 var_15C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1B9B931:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9B943:               End If
  loc_1B9B94B:               If (var_F0 <> vbNullString) Then
  loc_1B9B974:                 var_15C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1B9B97A:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9B98C:               End If
  loc_1B9B994:               If (var_F4 <> vbNullString) Then
  loc_1B9B9BD:                 var_15C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1B9B9C3:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9B9D5:               End If
  loc_1B9B9D7:               Print 1
  loc_1B9BA07:               Call Proc_229_89_EFB31C(Me.LblRest.Caption, "D", &H28)
  loc_1B9BA11:               Print 1, var_2F8
  loc_1B9BA37:               Call Proc_229_89_EFB31C(var_94, "D", &H28)
  loc_1B9BA41:               Print 1, var_17C
  loc_1B9BA55:               Print 1
  loc_1B9BA5D:               Print 1
  loc_1B9BA96:               Proc_6_39_E7D3A0(var_178, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1B9BAB8:               var_138 = (Chr(&HF) + "TOKEN No.   :     ")
  loc_1B9BAC2:               var_1C8 = (CVar(Proc_6_45_EADFB8(var_F4, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_178), &HA, Proc_6_45_EADFB8(CStr(var_178), &HA, var_17C))))
  loc_1B9BAC8:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_178))
  loc_1B9BB7A:               var_138 = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_1B9BB84:               var_1B8 = (CVar(Proc_6_45_EADFB8(var_F4, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2F8), &HC)))
  loc_1B9BB8D:               var_1C8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2F8), &HC))), &HA, Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2F8), &HC))), &HA, var_17C))) + " ")
  loc_1B9BB97:               var_21C = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2F8), &HC)))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1B9BB9D:               Print 1, "* NC LOT *"
  loc_1B9BBF2:               var_168 = var_B8.Fields.Item("Remarks")
  loc_1B9BC2F:               var_138 = (Chr(&HF) + "Remarks :     ")
  loc_1B9BC39:               var_1B8 = (CVar(Proc_6_45_EADFB8(var_F4, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_168)), &H32)))
  loc_1B9BC40:               var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_168)), &H32))), &HA, Proc_6_38_E69628(CVar(var_168)))) + Chr(&H12))
  loc_1B9BC46:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1B9BC7F:               Set var_160 = Me.Label1
  loc_1B9BC85:               Call 0.Method_Proc_229_72_1B9E67C0 (2, var_168)
  loc_1B9BCD6:               var_2F8 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))
  loc_1B9BCF6:               var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_168))), &HA)))
  loc_1B9BCFF:               var_1C8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_168))), &HA))), &HA, Proc_6_38_E69628(CVar(var_168)))) + ":     ")
  loc_1B9BD09:               var_21C = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_2F8, 5)))
  loc_1B9BD0F:               Print 1, "* NC LOT *"
  loc_1B9BD54:               var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9BD5A:               Print 1, CVar(var_168)
  loc_1B9BD67:             End If
  loc_1B9BD8D:             var_15C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1B9BD99:             var_17C = "Qty"
  loc_1B9BDA7:             var_1B8 = (Trim(CVar(var_168)) + CVar(Proc_6_52_EAE084(var_17C, 6)))
  loc_1B9BDAC:             var_B0 = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_17C, 6))), &HA, var_17C)))
  loc_1B9BDD9:             var_138 = (Chr(&HF) + CVar(var_B0))
  loc_1B9BDDF:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1B9BE02:             var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9BE08:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1B9BE1B:             var_96 = (var_96 + 4)
  loc_1B9BE21:             var_BC.MoveFirst
  loc_1B9BE26:             ' Referenced from:     1B9C1C7
  loc_1B9BE35:             If Not(var_BC.EOF) Then
  loc_1B9BE6E:               var_184 = var_BC.Fields
  loc_1B9BE85:               Proc_6_39_E7D3A0(Chr(&H12), CVar(var_184.Item("qty")))
  loc_1B9BF28:               var_178 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1B9BF41:               var_23C = (1 + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084(var_17C, 6)))))
  loc_1B9BF57:               var_2F4 = CVar(Proc_6_52_EAE084(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1B9BF5A:               var_330 = (&H12 + var_2F4)
  loc_1B9BFB3:               var_138 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1B9BFB9:               Print 1, Space(3)
  loc_1B9BFCC:               var_96 = (var_96 + 1)
  loc_1B9C008:               If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1B9C04B:                 var_138 = (Chr(&HF) + "(")
  loc_1B9C055:                 var_1B8 = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")))))
  loc_1B9C05E:                 var_1C8 = (CVar(var_184.Item("qty")) + ")")
  loc_1B9C064:                 Print 1, Chr(&H12)
  loc_1B9C085:                 var_96 = (var_96 + 1)
  loc_1B9C088:               End If
  loc_1B9C092:               If (&H12 = (&H45 - var_AA)) Then
  loc_1B9C0AB:                 var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9C0B1:                 Print 1, Space(3)
  loc_1B9C0C3:                 Print 1, "Contd."
  loc_1B9C0DB:                 Print 1, Chr(&HC)
  loc_1B9C0EA:                 var_98 = (var_98 + 1)
  loc_1B9C100:                 Call Proc_229_90_12027B8(1, 0, &H28, var_302)
  loc_1B9C11F:                 Call Proc_229_89_EFB31C(var_94, "B", &H28, var_17C, var_302)
  loc_1B9C129:                 Print 1, var_17C
  loc_1B9C138:                 var_96 = &H12
  loc_1B9C151:                 var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9C157:                 Print 1, Space(3)
  loc_1B9C17A:                 var_138 = (Chr(&HF) + CVar(var_B0))
  loc_1B9C180:                 Print 1, Space(3)
  loc_1B9C1A3:                 var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9C1A9:                 Print 1, Space(3)
  loc_1B9C1BC:                 var_96 = (var_96 + 4)
  loc_1B9C1BF:               End If
  loc_1B9C1C2:               var_BC.MoveNext
  loc_1B9C1C7:               GoTo loc_1B9BE26
  loc_1B9C1CA:             End If
  loc_1B9C1D4:             If (var_96 < (&H45 - var_AA)) Then
  loc_1B9C1D7:               ' Referenced from:     1B9C1F8
  loc_1B9C1E1:               If (var_96 = (&H45 - var_AA)) Then
  loc_1B9C1E9:                 Print 1, vbNullString
  loc_1B9C1F5:                 var_96 = (var_96 + 1)
  loc_1B9C1F8:                 GoTo loc_1B9C1D7
  loc_1B9C1FB:               End If
  loc_1B9C1FB:             End If
  loc_1B9C211:             var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9C217:             Print 1, Space(3)
  loc_1B9C278:             var_138 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1B9C27F:             var_178 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)) 'String
  loc_1B9C282:             var_1B8 = (Space(3) + var_178)
  loc_1B9C288:             Print 1, CVar(var_184.Item("qty"))
  loc_1B9C2CC:             var_138 = (Chr(&HF) + "***  ")
  loc_1B9C2D3:             var_178 = Space(3) & Trim(var_CC) 
  loc_1B9C2E2:             Print 1, var_178 & "  ***"
  loc_1B9C33D:             var_15C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1B9C34B:             unk_542AFA.Execute CStr(var_15C), var_178, -1
  loc_1B9C3AC:             If (var_184.Fields.Item(0).Value > 1) Then
  loc_1B9C3DD:               Call Proc_229_89_EFB31C(Proc_6_45_EADFB8("Changed TOKEN", &H14, var_184), "D", &H28, var_2F8)
  loc_1B9C3E7:               Print 1, var_2F8
  loc_1B9C3FD:             Else
  loc_1B9C453:               unk_542AFA.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_178, -1
  loc_1B9C4B1:               If (Proc_6_38_E69628(CVar(var_184.Fields.Item(0)), var_184, 1) = "Y") Then
  loc_1B9C4C7:                 var_2FC = Proc_6_45_EADFB8("DUPLICATE TOKEN", &H14)
  loc_1B9C4E2:                 Call Proc_229_89_EFB31C(var_2FC, "D", &H28)
  loc_1B9C4EC:                 Print 1, var_2F8
  loc_1B9C502:               Else
  loc_1B9C504:                 Print 1
  loc_1B9C50A:               End If
  loc_1B9C50A:             End If
  loc_1B9C50F:             Set var_E4 = Nothing
  loc_1B9C527:             var_138 = (Chr(&HF) + "** ")
  loc_1B9C531:             var_15C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1B9C53A:             var_178 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1B9C540:             Print 1, var_178
  loc_1B9C554:             var_B8.MoveNext
  loc_1B9C55B:             Print 1
  loc_1B9C563:             Print 1
  loc_1B9C56B:             Print 1
  loc_1B9C573:             Print 1
  loc_1B9C57B:             Print 1
  loc_1B9C583:             Print 1
  loc_1B9C589:             GoTo loc_1B9B6E6
  loc_1B9C58C:           End If
  loc_1B9C58E:           Close 1
  loc_1B9C598:           If (var_D8 <> vbNullString) Then
  loc_1B9C5A2:             Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1B9C5B2:             Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1B9C5BE:           Else
  loc_1B9C5CA:             Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F953B8
  loc_1B9C5D3:           End If
  loc_1B9C5D5:           Close 1
  loc_1B9C5DF:           If (MemVar_1F953BC = "Y") Then
  loc_1B9C5FB:             var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1B9C605:           Else
  loc_1B9C61E:             var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1B9C625:           End If
  loc_1B9C628:         Else
  loc_1B9C633:           If (var_1A8 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1B9C638:             Close 1
  loc_1B9C641:             Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1B9C648:             var_B8.MoveFirst
  loc_1B9C64D:             ' Referenced from:       1B9D540
  loc_1B9C65C:             If Not(var_B8.EOF) Then
  loc_1B9C661:               var_96 = 0
  loc_1B9C69C:               var_178 = 3
  loc_1B9C6E4:               var_180 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_2F8)
  loc_1B9C77F:               var_2E4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_178)) = "LAU") 'Variant
  loc_1B9C789:               var_2F4 = IIf(var_2E4, IIf((var_180 = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1B9C792:               var_94 = CStr(var_2F4)
  loc_1B9C7D6:               If (var_96 = 0) Then
  loc_1B9C7DB:                 Print 1
  loc_1B9C80F:                 var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1B9C820:                 If (var_E8 <> vbNullString) Then
  loc_1B9C849:                   var_15C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E8, &H28)))
  loc_1B9C84F:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9C861:                 End If
  loc_1B9C869:                 If (var_EC <> vbNullString) Then
  loc_1B9C892:                   var_15C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1B9C898:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9C8AA:                 End If
  loc_1B9C8B2:                 If (var_F0 <> vbNullString) Then
  loc_1B9C8DB:                   var_15C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1B9C8E1:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9C8F3:                 End If
  loc_1B9C8FB:                 If (var_F4 <> vbNullString) Then
  loc_1B9C924:                   var_15C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1B9C92A:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9C93C:                 End If
  loc_1B9C93E:                 Print 1
  loc_1B9C982:                 Call Proc_229_89_EFB31C(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1B9C98C:                 Print 1, var_2FC
  loc_1B9C9CA:                 Call Proc_229_89_EFB31C(Proc_6_45_EADFB8(var_94, &H14), "D", &H28)
  loc_1B9C9D4:                 Print 1, var_180
  loc_1B9C9EC:                 Print 1
  loc_1B9C9F4:                 Print 1
  loc_1B9CA2D:                 Proc_6_39_E7D3A0(var_178, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1B9CA4F:                 var_138 = (Chr(&HF) + "TOKEN No.   :       ")
  loc_1B9CA59:                 var_1C8 = (CVar(Proc_6_45_EADFB8(var_F4, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_178), &HA, var_180)))
  loc_1B9CA5F:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_178))
  loc_1B9CB11:                 var_138 = (Chr(&HF) + "TOKEN Dt.   :       ")
  loc_1B9CB18:                 var_178 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")))), &HC)) 'String
  loc_1B9CB1B:                 var_1B8 = (CVar(Proc_6_45_EADFB8(var_F4, &H28)) + var_178)
  loc_1B9CB24:                 var_1C8 = (CVar(Proc_6_45_EADFB8(CStr(var_178), &HA, Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")))))) + " ")
  loc_1B9CB2E:                 var_21C = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_178)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1B9CB34:                 Print 1, "* NC LOT *"
  loc_1B9CB89:                 var_168 = var_B8.Fields.Item("Remarks")
  loc_1B9CBC6:                 var_138 = (Chr(&HF) + "Remarks :       ")
  loc_1B9CBD0:                 var_1B8 = (CVar(Proc_6_45_EADFB8(var_F4, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_168)), &H32)))
  loc_1B9CBD7:                 var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_168)), &H32))), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_168)), &H32))) + Chr(&H12))
  loc_1B9CBDD:                 Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1B9CC16:                 Set var_160 = Me.Label1
  loc_1B9CC1C:                 Call 0.Method_Proc_229_72_1B9E67C0 (2, var_168)
  loc_1B9CC6D:                 var_2F8 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))
  loc_1B9CC8D:                 var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_168))), &HA)))
  loc_1B9CC96:                 var_1C8 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_168))), &HA))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_168))), &HA))) + ":       ")
  loc_1B9CCA0:                 var_21C = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_2F8, 5)))
  loc_1B9CCA6:                 Print 1, "* NC LOT *"
  loc_1B9CCEB:                 var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9CCF1:                 Print 1, CVar(var_168)
  loc_1B9CCFE:               End If
  loc_1B9CD24:               var_15C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1B9CD30:               var_17C = "Qty"
  loc_1B9CD3E:               var_1B8 = (Trim(CVar(var_168)) + CVar(Proc_6_52_EAE084(var_17C, 6)))
  loc_1B9CD43:               var_B0 = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_17C, 6))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_168))), &HA))))
  loc_1B9CD70:               var_138 = (Chr(&HF) + CVar(var_B0))
  loc_1B9CD76:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1B9CD99:               var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9CD9F:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1B9CDB2:               var_96 = (var_96 + 4)
  loc_1B9CDB8:               var_BC.MoveFirst
  loc_1B9CDBD:               ' Referenced from:       1B9D15E
  loc_1B9CDCC:               If Not(var_BC.EOF) Then
  loc_1B9CE05:                 var_184 = var_BC.Fields
  loc_1B9CE1C:                 Proc_6_39_E7D3A0(Chr(&H12), CVar(var_184.Item("qty")))
  loc_1B9CEBF:                 var_178 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1B9CED8:                 var_23C = (1 + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084(var_17C, 6)))))
  loc_1B9CEEE:                 var_2F4 = CVar(Proc_6_52_EAE084(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1B9CEF1:                 var_330 = (&H12 + var_2F4)
  loc_1B9CF4A:                 var_138 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1B9CF50:                 Print 1, Space(3)
  loc_1B9CF63:                 var_96 = (var_96 + 1)
  loc_1B9CF9F:                 If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1B9CFE2:                   var_138 = (Chr(&HF) + "(")
  loc_1B9CFEC:                   var_1B8 = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")))))
  loc_1B9CFF5:                   var_1C8 = (CVar(var_184.Item("qty")) + ")")
  loc_1B9CFFB:                   Print 1, Chr(&H12)
  loc_1B9D01C:                   var_96 = (var_96 + 1)
  loc_1B9D01F:                 End If
  loc_1B9D029:                 If (&H12 = (&H45 - var_AA)) Then
  loc_1B9D042:                   var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9D048:                   Print 1, Space(3)
  loc_1B9D05A:                   Print 1, "Contd."
  loc_1B9D072:                   Print 1, Chr(&HC)
  loc_1B9D081:                   var_98 = (var_98 + 1)
  loc_1B9D097:                   Call Proc_229_90_12027B8(1, 0, &H28, var_302)
  loc_1B9D0B6:                   Call Proc_229_89_EFB31C(var_94, "B", &H28, var_17C, var_302)
  loc_1B9D0C0:                   Print 1, var_17C
  loc_1B9D0CF:                   var_96 = &H12
  loc_1B9D0E8:                   var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9D0EE:                   Print 1, Space(3)
  loc_1B9D111:                   var_138 = (Chr(&HF) + CVar(var_B0))
  loc_1B9D117:                   Print 1, Space(3)
  loc_1B9D13A:                   var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9D140:                   Print 1, Space(3)
  loc_1B9D153:                   var_96 = (var_96 + 4)
  loc_1B9D156:                 End If
  loc_1B9D159:                 var_BC.MoveNext
  loc_1B9D15E:                 GoTo loc_1B9CDBD
  loc_1B9D161:               End If
  loc_1B9D16B:               If (var_96 < (&H45 - var_AA)) Then
  loc_1B9D16E:                 ' Referenced from:       1B9D18F
  loc_1B9D178:                 If (var_96 = (&H45 - var_AA)) Then
  loc_1B9D180:                   Print 1, vbNullString
  loc_1B9D18C:                   var_96 = (var_96 + 1)
  loc_1B9D18F:                   GoTo loc_1B9D16E
  loc_1B9D192:                 End If
  loc_1B9D192:               End If
  loc_1B9D1A8:               var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9D1AE:               Print 1, Space(3)
  loc_1B9D204:               var_180 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)
  loc_1B9D20F:               var_138 = (Chr(&HF) + "Waiter Name  :       ")
  loc_1B9D219:               var_1B8 = (Space(3) + CVar(var_180))
  loc_1B9D21F:               Print 1, CVar(var_184.Item("qty"))
  loc_1B9D263:               var_138 = (Chr(&HF) + "***  ")
  loc_1B9D26A:               var_178 = Space(3) & Trim(var_CC) 
  loc_1B9D279:               Print 1, var_178 & "  ***"
  loc_1B9D2D4:               var_15C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1B9D2E2:               unk_542AFA.Execute CStr(var_15C), var_178, -1
  loc_1B9D343:               If (var_184.Fields.Item(0).Value > 1) Then
  loc_1B9D374:                 Call Proc_229_89_EFB31C(Proc_6_45_EADFB8("Changed TOKEN", &H14, var_184), "D", &H28, var_2F8)
  loc_1B9D37E:                 Print 1, var_2F8
  loc_1B9D394:               Else
  loc_1B9D3EA:                 unk_542AFA.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_178, -1
  loc_1B9D448:                 If (Proc_6_38_E69628(CVar(var_184.Fields.Item(0)), var_184, 1) = "Y") Then
  loc_1B9D479:                   Call Proc_229_89_EFB31C(Proc_6_45_EADFB8("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1B9D483:                   Print 1, var_2F8
  loc_1B9D499:                 Else
  loc_1B9D49B:                   Print 1
  loc_1B9D4A1:                 End If
  loc_1B9D4A1:               End If
  loc_1B9D4A6:               Set var_E4 = Nothing
  loc_1B9D4BE:               var_138 = (Chr(&HF) + "** ")
  loc_1B9D4C8:               var_15C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1B9D4D1:               var_178 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1B9D4D7:               Print 1, var_178
  loc_1B9D4EB:               var_B8.MoveNext
  loc_1B9D4F2:               Print 1
  loc_1B9D4FA:               Print 1
  loc_1B9D502:               Print 1
  loc_1B9D50A:               Print 1
  loc_1B9D512:               Print 1
  loc_1B9D51A:               Print 1
  loc_1B9D522:               Print 1
  loc_1B9D52A:               Print 1
  loc_1B9D532:               Print 1
  loc_1B9D53A:               Print 1
  loc_1B9D540:               GoTo loc_1B9C64D
  loc_1B9D543:             End If
  loc_1B9D545:             Close 1
  loc_1B9D54F:             If (var_D8 <> vbNullString) Then
  loc_1B9D559:               Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1B9D569:               Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1B9D575:             Else
  loc_1B9D581:               Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F953B8
  loc_1B9D58A:             End If
  loc_1B9D58C:             Close 1
  loc_1B9D596:             If (MemVar_1F953BC = "Y") Then
  loc_1B9D5B2:               var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1B9D5BC:             Else
  loc_1B9D5D5:               var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1B9D5DC:             End If
  loc_1B9D5DF:           Else
  loc_1B9D5EA:             If Not (var_1A8 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1B9D5F8:               If (var_1A8 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_1B9D5FB:               End If
  loc_1B9D5FD:               Close 1
  loc_1B9D606:               Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1B9D60D:               var_B8.MoveFirst
  loc_1B9D612:               ' Referenced from:         1B9E581
  loc_1B9D621:               If Not(var_B8.EOF) Then
  loc_1B9D626:                 var_96 = 0
  loc_1B9D744:                 var_2E4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU") 'Variant
  loc_1B9D74E:                 var_2F4 = IIf(var_2E4, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1B9D757:                 var_94 = CStr(var_2F4)
  loc_1B9D7C3:                 var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1B9D7D2:                 If (var_96 = 0) Then
  loc_1B9D7D7:                   Print 1
  loc_1B9D7E5:                   If (var_E8 <> vbNullString) Then
  loc_1B9D80E:                     var_15C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_E8, &H28)))
  loc_1B9D814:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9D826:                   End If
  loc_1B9D82E:                   If (var_EC <> vbNullString) Then
  loc_1B9D857:                     var_15C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1B9D85D:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9D86F:                   End If
  loc_1B9D877:                   If (var_F0 <> vbNullString) Then
  loc_1B9D8A0:                     var_15C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1B9D8A6:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9D8B8:                   End If
  loc_1B9D8C0:                   If (var_F4 <> vbNullString) Then
  loc_1B9D8E9:                     var_15C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1B9D8EF:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1B9D901:                   End If
  loc_1B9D903:                   Print 1
  loc_1B9D932:                   var_1B8 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1B9D944:                   var_1D8 = Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3) / 2)))
  loc_1B9D975:                   var_2D4 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1B9D97E:                   var_2E4 = (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96) = "Y"), "* NC TOKEN *", "* TOKEN *") / 2)
  loc_1B9D99F:                   var_1EC = (Chr(&HF) + var_1D8)
  loc_1B9D9A6:                   var_24C = (CVar(var_B8.Fields.Item("NCTOKEN")) + Trim(CVar(Me.LblRest)))
  loc_1B9D9AD:                   var_330 = (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y"), "* NC LOT *", "* LOT *") + Space(CLng(var_2E4)))
  loc_1B9D9B4:                   var_354 = (IIf((var_BC.Fields.Item(2).Value = (Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1B9D9BA:                   Print 1, var_354
  loc_1B9DA08:                   var_178 = (42 - Len(Trim(var_94)))
  loc_1B9DA3B:                   var_24C = (42 - Len(Trim(var_94)))
  loc_1B9DA44:                   var_274 = (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y"), "* NC LOT *", "* LOT *") / 2)
  loc_1B9DA65:                   var_1D8 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1B9DA6F:                   var_1EC = (var_1D8 + CVar(var_94))
  loc_1B9DA76:                   var_2C4 = (CVar(var_B8.Fields.Item("NCTOKEN")) + Space(CLng(var_274)))
  loc_1B9DA7D:                   var_2E4 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1B9DA83:                   Print 1, var_2E4
  loc_1B9DAA7:                   Print 1
  loc_1B9DAAF:                   Print 1
  loc_1B9DAE8:                   Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")))
  loc_1B9DB17:                   var_138 = (Chr(&HF) + "TOKEN No.   :         ")
  loc_1B9DB21:                   var_1C8 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)))
  loc_1B9DB28:                   var_1EC = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1B9DB2E:                   Print 1, CVar(var_B8.Fields.Item("NCTOKEN"))
  loc_1B9DBF1:                   var_138 = (Chr(&HF) + "TOKEN Dt.   :         ")
  loc_1B9DBFB:                   var_1B8 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), &H12), &HC)))
  loc_1B9DC04:                   var_1C8 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + " ")
  loc_1B9DC0E:                   var_21C = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1B9DC15:                   var_24C = (Trim(var_94) + Chr(&H12))
  loc_1B9DC1B:                   Print 1, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), &H12), &HC)) = "Y"), "* NC LOT *", "* LOT *")
  loc_1B9DC74:                   var_168 = var_B8.Fields.Item("Remarks")
  loc_1B9DCB1:                   var_138 = (Chr(&HF) + "Remarks :         ")
  loc_1B9DCBB:                   var_1B8 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_168)), &H20)))
  loc_1B9DCC2:                   var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + Chr(&H12))
  loc_1B9DCC8:                   Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1B9DD01:                   Set var_160 = Me.Label1
  loc_1B9DD07:                   Call 0.Method_Proc_229_72_1B9E67C0 (2, var_168)
  loc_1B9DD58:                   var_2F8 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))
  loc_1B9DD85:                   var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_168))), &HA)))
  loc_1B9DD8E:                   var_1C8 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + ":         ")
  loc_1B9DD98:                   var_21C = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_2F8, 5)))
  loc_1B9DD9F:                   var_24C = (Trim(var_94) + Chr(&H12))
  loc_1B9DDA5:                   Print 1, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_2F8) = "Y"), "* NC LOT *", "* LOT *")
  loc_1B9DDFB:                   var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9DE02:                   var_178 = (CVar(var_168) + Chr(&H12))
  loc_1B9DE08:                   Print 1, CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_168))), &HA))
  loc_1B9DE19:                 End If
  loc_1B9DE3F:                 var_15C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Space(3))
  loc_1B9DE59:                 var_1B8 = (Chr(&H12) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1B9DE65:                 var_1C8 = Space(3)
  loc_1B9DE6D:                 var_1D8 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + var_1C8)
  loc_1B9DE87:                 var_21C = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_1B9DED0:                 var_138 = (Chr(&HF) + CVar(CStr(Trim(var_94))))
  loc_1B9DED7:                 var_178 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1B9DEDD:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1B9DF11:                 var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9DF18:                 var_178 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1B9DF1E:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1B9DF35:                 var_96 = (var_96 + 4)
  loc_1B9DF3B:                 var_BC.MoveFirst
  loc_1B9DF40:                 ' Referenced from:         1B9E1C8
  loc_1B9DF4F:                 If Not(var_BC.EOF) Then
  loc_1B9DF88:                   var_184 = var_BC.Fields
  loc_1B9DF9F:                   Proc_6_39_E7D3A0(var_1C8, CVar(var_184.Item("qty")))
  loc_1B9DFEA:                   Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1B9DFF9:                   var_1FC = "0.00"
  loc_1B9E034:                   var_178 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1B9E04D:                   var_23C = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1C8, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6)))))
  loc_1B9E061:                   var_274 = (Chr(&H12) + Space(3))
  loc_1B9E07A:                   var_330 = (&H12 + CVar(Proc_6_52_EAE084(CStr(Format(Len(Trim(CVar(Me.LblRest))), var_1FC)), 6, var_274)))
  loc_1B9E0E0:                   var_138 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Rate").Value = var_1FC), "Void", vbNullString))))
  loc_1B9E0E7:                   var_178 = (Space(3) + Chr(&H12))
  loc_1B9E0ED:                   Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1B9E104:                   var_96 = (var_96 + 1)
  loc_1B9E140:                   If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1B9E183:                     var_138 = (Chr(&HF) + "(")
  loc_1B9E18D:                     var_1B8 = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")))))
  loc_1B9E196:                     var_1C8 = (CVar(var_184.Item("qty")) + ")")
  loc_1B9E19C:                     Print 1, var_1C8
  loc_1B9E1BD:                     var_96 = (var_96 + 1)
  loc_1B9E1C0:                   End If
  loc_1B9E1C3:                   var_BC.MoveNext
  loc_1B9E1C8:                   GoTo loc_1B9DF40
  loc_1B9E1CB:                 End If
  loc_1B9E1EE:                 var_138 = (Chr(&HF) + CVar(var_C4))
  loc_1B9E1F5:                 var_178 = (Space(3) + Chr(&H12))
  loc_1B9E1FB:                 Print 1, CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description"))))
  loc_1B9E26D:                 var_138 = (Chr(&HF) + "Waiter Name  :         ")
  loc_1B9E277:                 var_1B8 = (Space(3) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1B9E27E:                 var_1D8 = (CVar(var_184.Item("qty")) + Chr(&H12))
  loc_1B9E284:                 Print 1, "0.00"
  loc_1B9E2CC:                 var_1B8 = Chr(&H12)
  loc_1B9E2D9:                 var_138 = (Chr(&HF) + "***  ")
  loc_1B9E2E0:                 var_178 = Space(3) & Trim(var_CC) 
  loc_1B9E2EC:                 var_1C8 = ("  ***" + var_1B8)
  loc_1B9E2F6:                 Print 1, var_178 & Chr(&H12)
  loc_1B9E355:                 var_15C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1B9E363:                 unk_542AFA.Execute CStr(var_15C), var_178, -1
  loc_1B9E3C4:                 If (var_184.Fields.Item(0).Value > 1) Then
  loc_1B9E3F5:                   Call Proc_229_89_EFB31C(Proc_6_45_EADFB8("Changed TOKEN", &H14), "D", &H28)
  loc_1B9E3FF:                   Print 1, var_2F8
  loc_1B9E415:                 Else
  loc_1B9E46B:                   unk_542AFA.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_178, -1
  loc_1B9E4C9:                   If (Proc_6_38_E69628(CVar(var_184.Fields.Item(0)), var_184, var_2F8) = "Y") Then
  loc_1B9E4FA:                     Call Proc_229_89_EFB31C(Proc_6_45_EADFB8("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1B9E504:                     Print 1, var_2F8
  loc_1B9E51A:                   Else
  loc_1B9E51C:                     Print 1
  loc_1B9E522:                   End If
  loc_1B9E522:                 End If
  loc_1B9E527:                 Set var_E4 = Nothing
  loc_1B9E53F:                 var_138 = (Chr(&HF) + "** ")
  loc_1B9E549:                 var_15C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1B9E552:                 var_178 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1B9E558:                 Print 1, var_178
  loc_1B9E56C:                 var_B8.MoveNext
  loc_1B9E573:                 Print 1
  loc_1B9E57B:                 Print 1
  loc_1B9E581:                 GoTo loc_1B9D612
  loc_1B9E584:               End If
  loc_1B9E586:               Close 1
  loc_1B9E590:               If (var_D8 <> vbNullString) Then
  loc_1B9E59A:                 Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1B9E5AA:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1B9E5B6:               Else
  loc_1B9E5BD:                 Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1B9E5CD:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F953B8
  loc_1B9E5D6:               End If
  loc_1B9E5D8:               Close 1
  loc_1B9E5DA:             End If
  loc_1B9E5DA:           End If
  loc_1B9E5DA:         End If
  loc_1B9E5DA:       End If
  loc_1B9E5DA:     End If
  loc_1B9E5DD:   Else
  loc_1B9E627:     MsgBox("Please Check Printer Setting of Central TOKEN For " & var_C0.Fields.Item("Name").Value & ".", &H40, var_178, var_1B8, Chr(&H12))
  loc_1B9E642:   End If
  loc_1B9E645:   var_C0.MoveNext
  loc_1B9E64A:   GoTo loc_1B998BF
  loc_1B9E64D: End If
  loc_1B9E652: Set var_B8 = Nothing
  loc_1B9E65A: Set var_BC = Nothing
  loc_1B9E662: Set var_C0 = Nothing
  loc_1B9E66A: Proc_229_72_1B9E67C = &HFF
  loc_1B9E670: ' Referenced from: 1B99420
  loc_1B9E670: Proc_6_60_E63754(var_2F8, var_184)
  loc_1B9E675: Proc_229_72_1B9E67C = var_1FC
End Sub

Public Sub Proc_229_73_EFA61C(arg_C) 'EFA61C
  'Data Table: 542AE4
  Dim var_8C As Recordset15
  loc_EFA545: Set var_8C = arg_C 
  loc_EFA56D: var_8C.Fields.Append "mLine", &HC8, 1
  loc_EFA599: var_8C.Fields.Append "Detail", &HC8, &H32
  loc_EFA5C5: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EFA5D5: var_8C.CursorType = 3
  loc_EFA5E2: var_8C.LockType = 3
  loc_EFA601: var_8C.Open var_A0, var_B0, -1
  loc_EFA608: Set var_8C = Nothing 
  loc_EFA60F: Set var_88 = arg_C 
  loc_EFA613: Proc_229_73_EFA61C = -1
  loc_EFA619: -1 = &H20
End Sub

Public Sub Proc_229_74_F156A0(arg_C, arg_10, arg_14, arg_18) 'F156A0
  'Data Table: 542AE4
  Dim var_88 As Recordset15
  Dim var_98 As Variant
  Dim var_A8 As String
  loc_F155AF: Set var_88 = arg_C 
  loc_F155BE: var_88.AddNew var_98, var_A8
  loc_F155F6: var_88.Fields.Item("mLine").Value = Trim(arg_10)
  loc_F15638: var_88.Fields.Item("Detail").Value = Trim(arg_14)
  loc_F1564A: var_98 = arg_18
  loc_F1565E: var_A8 = "Mark"
  loc_F1567A: var_88.Fields.Item(var_A8).Value = Trim(var_98)
  loc_F15694: var_88.Update var_98, var_A8
  loc_F1569B: Set var_88 = Nothing 
  loc_F1569F: Exit Sub
End Sub

Public Sub Proc_229_75_15452A0
  'Data Table: 542AE4
  Dim var_D0 As String
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim unk_542AFA As Connection15
  Dim var_160 As String
  Dim var_BC As Recordset15
  Dim var_F8 As Variant
  Dim var_15C As Fields15
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1F8 As Variant
  Dim var_218 As Variant
  Dim var_B8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_158 As Variant
  Dim var_1E8 As Variant
  Dim var_238 As Variant
  Dim var_21C As String
  loc_154430C: On Error Goto loc_154529A
  loc_1544312: MemVar_1F953C4 = "N"
  loc_1544319: MemVar_1F953C8 = "N"
  loc_1544320: MemVar_1F953CC = "K"
  loc_154432B: var_D0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (TOKEN K Left Join Waiter W on K.Waiter=W.Code) "
  loc_1544370: var_88 = CStr(CVar(var_D0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_154438F: var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_15443CD: var_8C = CStr(var_108 & Me.Fields.Item("SearchCode").Value & "'")
  loc_15443F6: var_108 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1544416: var_E8 = Me.Fields.Item("SearchCode")
  loc_1544433: var_D0 = CStr(var_108 & var_E8.Value & "'")
  loc_154443D: unk_542AFA.Execute var_D0, var_158, -1
  loc_1544448: Set var_BC = var_15C
  loc_154446C: If (var_88 = vbNullString) Then
  loc_154446F:   Exit Sub
  loc_1544470: End If
  loc_1544478: If (var_8C = vbNullString) Then
  loc_154447B:   Exit Sub
  loc_154447C: End If
  loc_154449A: Set var_D4 = Me.Txt
  loc_15444A0: Call 0.Method_Proc_229_75_15452A00 (CInt(4), var_E8, var_D0, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='")
  loc_15444A8: var_F8 = var_E8.Text
  loc_15444B1: var_160 = -1 & var_D0
  loc_15444C1: unk_542AFA.Execute var_160 & "' AND CONTRADOCID IS NULL", var_15C, var_15C
  loc_15444F8: If (var_15C.RecordCount = 1) Then
  loc_15444FE:   var_C8 = "New Order"
  loc_1544504: Else
  loc_154450B:   Set var_D4 = Me.LblState
  loc_1544519:   var_C8 = var_D4.Caption
  loc_154451F: End If
  loc_1544535: unk_542AFA.Execute var_88, var_F8, -1
  loc_1544540: Set var_B4 = var_D4
  loc_1544549: ' Referenced from: 154527E
  loc_1544558: If Not(var_BC.EOF) Then
  loc_1544571:   unk_542AFA.Execute "SELECT KOTPrinting FROM Enviro", var_F8, -1
  loc_1544594:   var_D4 = var_D4.Fields
  loc_15445CF:   If (Trim(CVar(Proc_6_38_E69628(CVar(var_D4.Item("KOTPrinting")), var_D4))) = "Seperate for All Kitchen") Then
  loc_15445D9:     var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName,Depart.Code From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1544652:     var_1C0 = var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_154468E:     var_8C = CStr(var_1C0 & var_BC.Fields.Item("Code").Value & "' and K.VoidYN<>'Y'")
  loc_15446BC:   Else
  loc_15446C3:     var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName,Depart.Code From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_15446DB:     var_D4 = Me.Fields
  loc_15446EB:     var_F8 = var_D4.Item("SearchCode").Value
  loc_15446FC:     var_138 = var_108 & var_F8 & "' and K.VoidYN<>'Y'" 
  loc_1544701:     var_8C = CStr(var_138)
  loc_1544716:   End If
  loc_154472C:   unk_542AFA.Execute var_8C, var_F8, -1
  loc_1544737:   Set var_B8 = var_D4
  loc_1544754:   If (var_B8.RecordCount > 0) Then
  loc_1544759:     Close 1
  loc_1544772:     var_160 = "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition)
  loc_1544780:     Open var_160 & ".TXT" For Output As 1 Len = &HFF
  loc_1544790:     var_B4.MoveFirst
  loc_1544795:     ' Referenced from: 1545061
  loc_15447A4:     If Not(var_B4.EOF) Then
  loc_15447B4:       var_90 = "* TOKEN *"
  loc_15447BD:       If (0 = 0) Then
  loc_15447C2:         Print 1
  loc_15447F6:         var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1544829:         Call Proc_229_89_EFB31C(Me.LblRest.Caption, "D", &H28, var_21C)
  loc_1544833:         Print 1, var_21C
  loc_1544859:         Call Proc_229_89_EFB31C(var_90, "D", &H28, var_160)
  loc_1544863:         Print 1, var_160
  loc_1544872:         var_92 = &H12
  loc_1544877:         Print 1
  loc_154487F:         Print 1
  loc_15448B8:         Proc_6_39_E7D3A0(var_138, CVar(var_B4.Fields.Item("VNo")), var_92, 1)
  loc_15448DA:         var_108 = (Chr(&HF) + "TOKEN No.   : ")
  loc_15448E4:         var_180 = (var_108 + CVar(Proc_6_45_EADFB8(CStr(var_138), &HA, var_92)))
  loc_15448EA:         Print 1, var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value
  loc_1544925:         var_D4 = var_B4.Fields
  loc_154499C:         var_108 = (Chr(&HF) + "TOKEN Dt.   : ")
  loc_15449A6:         var_158 = (var_108 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_D4.Item("VDate")), var_D4), &HC)))
  loc_15449AF:         var_180 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_D4.Item("VDate")), var_D4), &HC))), &HA, var_92)) + " ")
  loc_15449B9:         var_1E8 = (var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_15449BF:         Print 1, var_BC.Fields.Item("Code").Value
  loc_1544A14:         var_E8 = var_B4.Fields.Item("Remarks")
  loc_1544A51:         var_108 = (Chr(&HF) + "Remarks : ")
  loc_1544A5B:         var_158 = (var_108 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_E8)), &H32)))
  loc_1544A62:         var_1A0 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_E8)), &H32))), &HA, var_92)) + Chr(&H12))
  loc_1544A68:         Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1544AA1:         Set var_D4 = Me.Label1
  loc_1544AA7:         Call 0.Method_Proc_229_75_15452A00 (2, var_E8)
  loc_1544B3C:         var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_E8))), &HA)))
  loc_1544B45:         var_180 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_E8))), &HA))), &HA, var_92)) + ": ")
  loc_1544B4C:         var_218 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1544B4F:         var_238 = (Chr(&H12) + var_218)
  loc_1544B55:         Print 1, var_238
  loc_1544BA0:         var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1544BA6:         Print 1, CVar(var_E8)
  loc_1544BB3:       End If
  loc_1544BD9:       var_118 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1544BE5:       var_160 = "Qty"
  loc_1544BF3:       var_158 = (1 + CVar(Proc_6_52_EAE084(var_160, 6, Trim(CVar(var_E8)))))
  loc_1544BF8:       var_AC = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_160, 6, Trim(CVar(var_E8))))), &HA, var_92)))
  loc_1544C25:       var_108 = (Chr(&HF) + CVar(var_AC))
  loc_1544C2B:       Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1544C4E:       var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1544C54:       Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1544C67:       var_92 = (var_92 + 4)
  loc_1544C6D:       var_B8.MoveFirst
  loc_1544C72:       ' Referenced from: 1544ED4
  loc_1544C81:       If Not(var_B8.EOF) Then
  loc_1544CD1:         Proc_6_39_E7D3A0(Chr(&H12), CVar(var_B8.Fields.Item("qty")))
  loc_1544D1B:         var_138 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1544D31:         var_1E8 = CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084(var_160, 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_1544D34:         var_1F8 = (1 + var_1E8)
  loc_1544D79:         var_108 = (Chr(&HF) + CVar(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000"))))
  loc_1544D7F:         Print 1, Space(3)
  loc_1544D92:         var_92 = (var_92 + 1)
  loc_1544D9F:         If (var_92 = (&H45 - var_A6)) Then
  loc_1544DB8:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1544DBE:           Print 1, Space(3)
  loc_1544DD0:           Print 1, "Contd."
  loc_1544DE8:           Print 1, Chr(&HC)
  loc_1544DF7:           var_94 = (var_94 + 1)
  loc_1544E0D:           Call Proc_229_90_12027B8(1, 0, &H28, var_21E, 0)
  loc_1544E2C:           Call Proc_229_89_EFB31C(var_90, "B", &H28, var_160, var_21E)
  loc_1544E36:           Print 1, var_160
  loc_1544E45:           var_92 = &H12
  loc_1544E5E:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1544E64:           Print 1, Space(3)
  loc_1544E87:           var_108 = (Chr(&HF) + CVar(var_AC))
  loc_1544E8D:           Print 1, Space(3)
  loc_1544EB0:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1544EB6:           Print 1, Space(3)
  loc_1544EC9:           var_92 = (var_92 + 4)
  loc_1544ECC:         End If
  loc_1544ECF:         var_B8.MoveNext
  loc_1544ED4:         GoTo loc_1544C72
  loc_1544ED7:       End If
  loc_1544EE1:       If (var_92 < (&H45 - var_A6)) Then
  loc_1544EE4:         ' Referenced from: 1544F05
  loc_1544EEE:         If (var_92 = (&H45 - var_A6)) Then
  loc_1544EF6:           Print 1, vbNullString
  loc_1544F02:           var_92 = (var_92 + 1)
  loc_1544F05:           GoTo loc_1544EE4
  loc_1544F08:         End If
  loc_1544F08:       End If
  loc_1544F1E:       var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1544F24:       Print 1, Space(3)
  loc_1544F85:       var_108 = (Chr(&HF) + "Waiter Name  : ")
  loc_1544F8C:       var_138 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, 1)) 'String
  loc_1544F8F:       var_158 = (Space(3) + var_138)
  loc_1544F95:       Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1544FD9:       var_108 = (Chr(&HF) + "***  ")
  loc_1544FE9:       var_158 = Space(3) & Trim(var_C8) & "  ***" 
  loc_1544FEF:       Print 1, var_158
  loc_1545004:       Print 1
  loc_154501F:       var_108 = (Chr(&HF) + "** ")
  loc_1545029:       var_118 = (Space(3) + CVar(MemVar_1F95220))
  loc_1545032:       var_138 = (Trim(var_C8) + " **")
  loc_1545038:       Print 1, Space(3) & Trim(var_C8)
  loc_154504C:       var_B4.MoveNext
  loc_1545053:       Print 1
  loc_154505B:       Print 1
  loc_1545061:       GoTo loc_1544795
  loc_1545064:     End If
  loc_1545066:     Close 1
  loc_15450A1:     If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), var_92) <> vbNullString) Then
  loc_15450C9:       Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1545127:       Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value
  loc_1545147:     Else
  loc_1545171:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1545182:     End If
  loc_1545184:     Close 1
  loc_154518E:     If (MemVar_1F953BC = "Y") Then
  loc_15451C0:       var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_15451D1:     Else
  loc_1545200:       var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_154520E:     End If
  loc_1545211:   Else
  loc_154525B:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, Space(3) & Trim(var_C8), var_158, Chr(&H12))
  loc_1545276:   End If
  loc_1545279:   var_BC.MoveNext
  loc_154527E:   GoTo loc_1544549
  loc_1545281: End If
  loc_1545286: Set var_B4 = Nothing
  loc_154528E: Set var_B8 = Nothing
  loc_1545296: Set var_BC = Nothing
  loc_1545299: Exit Sub
  loc_154529A: ' Referenced from: 154430C
  loc_154529A: Proc_6_60_E63754(var_92)
  loc_154529F: Exit Sub
End Sub

Public Sub Proc_229_76_E41DC8
  'Data Table: 542AE4
  loc_E41DA4: Set var_88 = Me.TopCtrl1
  loc_E41DAA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E41DC3: If (CStr() = "Browse") Then
  loc_E41DC6:   Exit Sub
  loc_E41DC7: End If
  loc_E41DC7: Exit Sub
End Sub

Public Sub Proc_229_77_17018E8(arg_C) '17018E8
  'Data Table: 542AE4
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_BC As String
  Dim var_130 As MSHFlexGrid
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_178 As String
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_1EC As Double
  Dim var_204 As Variant
  Dim var_208 As MSHFlexGrid
  Dim var_90 As Double
  Dim var_88 As Integer
  loc_16FFD88: If (arg_C = 0) Then
  loc_16FFD9E:   var_AC = CLng(Me.FGrid.Col)
  loc_16FFDAE:   If (var_AC = CLng(2)) Then
  loc_16FFDFF:     Set var_98 = Me.TxtGrid
  loc_16FFE05:     Call 0.Method_Proc_229_77_17018E80 (arg_C, var_B8, var_BC)
  loc_16FFE0D:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_16FFE25:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_16FFE3B:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FFE43:       var_EC = CVar(CLng(2)) 'Long
  loc_16FFE48:       var_10C = vbNullString
  loc_16FFE52:       Set var_B8 = Me.FGrid
  loc_16FFE58:       LateIdCallSt
  loc_16FFE7D:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FFE85:       var_EC = CVar(CLng(1)) 'Long
  loc_16FFE8A:       var_10C = vbNullString
  loc_16FFE94:       Set var_B8 = Me.FGrid
  loc_16FFE9A:       LateIdCallSt
  loc_16FFEAF:     Else
  loc_16FFEC8:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FFED0:       var_EC = CVar(CLng(1)) 'Long
  loc_16FFEEA:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_16FFF08:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FFF10:       var_150 = CVar(CLng(1)) 'Long
  loc_16FFF2A:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_16FFF95:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_16FFFAB:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_16FFFB3:         var_FC = CVar(CLng(2)) 'Long
  loc_16FFFE6:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_16FFFEE:         Set var_164 = Me.FGrid
  loc_16FFFF4:         LateIdCallSt
  loc_1700023:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_170002B:         var_FC = CVar(CLng(1)) 'Long
  loc_170005E:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1700066:         Set var_164 = Me.FGrid
  loc_170006C:         LateIdCallSt
  loc_170009B:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17000A3:         var_EC = CVar(CLng(4)) 'Long
  loc_17000A8:         var_10C = vbNullString
  loc_17000B2:         Set var_B8 = Me.FGrid
  loc_17000B8:         LateIdCallSt
  loc_17000DD:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17000E5:         var_EC = CVar(CLng(&HA)) 'Long
  loc_17000EA:         var_10C = vbNullString
  loc_17000F4:         Set var_B8 = Me.FGrid
  loc_17000FA:         LateIdCallSt
  loc_170011F:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700127:         var_EC = CVar(CLng(3)) 'Long
  loc_170012C:         var_10C = vbNullString
  loc_1700136:         Set var_B8 = Me.FGrid
  loc_170013C:         LateIdCallSt
  loc_170014E:       End If
  loc_170014E:     End If
  loc_1700151:   Else
  loc_1700158:     If (var_AC = CLng(3)) Then
  loc_1700167:       Set var_98 = Me.TxtGrid
  loc_170016D:       Call 0.Method_Proc_229_77_17018E80 (0, var_B8, var_BC, var_B8, var_10C, var_EC, var_CC)
  loc_1700175:       var_B8 = var_B8.Text
  loc_170018C:       If (var_BC = "9999") Then
  loc_1700199:         Set global_168 = New RsSpecItemEntry
  loc_17001AF:         RsSpecItemEntry.PKOTForm = Me
  loc_17001C3:         RsSpecItemEntry.pRestCode = LocalRestCode
  loc_17001CF:         Set var_98 = var_10C(var_BC)
  loc_17001D5:         var_EC = RsSpecItemEntry.Label.Caption
  loc_17001E3:         RsSpecItemEntry.PRestName = var_BC
  loc_1700201:         Call 0.Method_arg_2B0 (1, var_DC, 1)
  loc_1700209:       Else
  loc_1700220:         If (Me.RecordCount > 0) Then
  loc_1700229:           Me.MoveFirst
  loc_170022E:         End If
  loc_1700245:         If (Me.RecordCount > 0) Then
  loc_1700254:           Set var_98 = Me.TxtGrid
  loc_170025A:           Call 0.Method_Proc_229_77_17018E80 (0, var_B8, var_BC)
  loc_1700262:           var_B8 = var_B8.Text
  loc_170026F:           var_1EC = Val(var_BC)
  loc_1700295:           Me.Find "DispCode=" & CStr(var_1EC), 0, 1
  loc_17002AA:         End If
  loc_17002F8:         Set var_98 = Me.TxtGrid
  loc_17002FE:         Call 0.Method_Proc_229_77_17018E80 (arg_C, var_B8, var_BC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1700306:         var_CC = var_B8.Text
  loc_170031E:         If (var_1EC Or (var_BC = vbNullString)) Then
  loc_1700334:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_170033C:           var_EC = CVar(CLng(4)) 'Long
  loc_1700341:           var_10C = vbNullString
  loc_170034B:           Set var_B8 = Me.FGrid
  loc_1700351:           LateIdCallSt
  loc_1700376:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_170037E:           var_EC = CVar(CLng(&HA)) 'Long
  loc_1700383:           var_10C = vbNullString
  loc_170038D:           Set var_B8 = Me.FGrid
  loc_1700393:           LateIdCallSt
  loc_17003B8:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17003C0:           var_EC = CVar(CLng(3)) 'Long
  loc_17003C5:           var_10C = vbNullString
  loc_17003CF:           Set var_B8 = Me.FGrid
  loc_17003D5:           LateIdCallSt
  loc_17003FA:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700402:           var_EC = CVar(CLng(5)) 'Long
  loc_1700407:           var_10C = vbNullString
  loc_1700411:           Set var_B8 = Me.FGrid
  loc_1700417:           LateIdCallSt
  loc_170043C:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700444:           var_EC = CVar(CLng(8)) 'Long
  loc_1700449:           var_10C = vbNullString
  loc_1700453:           Set var_B8 = Me.FGrid
  loc_1700459:           LateIdCallSt
  loc_170047E:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700486:           var_EC = CVar(CLng(&HD)) 'Long
  loc_170048B:           var_10C = vbNullString
  loc_1700495:           Set var_B8 = Me.FGrid
  loc_170049B:           LateIdCallSt
  loc_17004B0:         Else
  loc_17004C9:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17004D1:           var_EC = CVar(CLng(&HA)) 'Long
  loc_17004EB:           var_BC = CStr(Me.FGrid.TextMatrix))
  loc_1700509:           var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700511:           var_150 = CVar(CLng(&HA)) 'Long
  loc_170052B:           var_178 = CStr(Me.FGrid.TextMatrix))
  loc_1700596:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_17005AC:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17005B4:             var_FC = CVar(CLng(4)) 'Long
  loc_17005E7:             var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_17005EF:             Set var_164 = Me.FGrid
  loc_17005F5:             LateIdCallSt
  loc_1700624:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_170062C:             var_FC = CVar(CLng(&HA)) 'Long
  loc_170065F:             var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1700667:             Set var_164 = Me.FGrid
  loc_170066D:             LateIdCallSt
  loc_170069C:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17006A4:             var_FC = CVar(CLng(3)) 'Long
  loc_17006D7:             var_140 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_17006DF:             Set var_164 = Me.FGrid
  loc_17006E5:             LateIdCallSt
  loc_1700714:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_170071C:             var_FC = CVar(CLng(5)) 'Long
  loc_170074F:             var_140 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_170075D:             LateIdCallSt
  loc_17007C4:             var_140 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("PriceType")), CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_140, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_17007CC:             Set var_164 = Me.FGrid
  loc_17007D2:             LateIdCallSt
  loc_1700824:             Set var_130 = Me.Txt
  loc_170082A:             Call 0.Method_Proc_229_77_17018E80 (CInt(1), var_164, var_178, var_164, var_140, var_164)
  loc_1700832:             var_140 = var_164.Text
  loc_1700854:             var_1D0 = Me.Fields.Item("OutletCode")
  loc_170087B:             Call Proc_229_91_F20E88(CStr(Me.Fields.Item("Code").Value), var_178, CStr(var_1D0.Value), var_1EC)
  loc_1700893:             var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_170089B:             var_150 = CVar(CLng(8)) 'Long
  loc_17008C8:             var_204 = CVar(CStr(Format(CVar(var_1EC), "0.00"))) 'String
  loc_17008D0:             Set var_208 = Me.FGrid
  loc_17008D6:             LateIdCallSt
  loc_170091E:             var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700926:             var_EC = CVar(CLng(&HA)) 'Long
  loc_1700935:             var_12C = Me.FGrid.TextMatrix)
  loc_170096B:             var_174 = Me.FGrid.TextMatrix)
  loc_1700985:             Set var_17C = Me.Txt
  loc_170098B:             Call 0.Method_Proc_229_77_17018E80 (CInt(1), var_1D0, var_1F0, var_174, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_1700993:             var_EC = var_1D0.Text
  loc_17009AB:             var_19C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17009F9:             Call Proc_229_79_1285944(CStr(var_12C), CStr(var_174), var_1F0, Val(CStr(Me.FGrid.TextMatrix))), var_214, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)))
  loc_1700A01:             var_90 = var_214
  loc_1700A38:             If (var_90 <> CDbl(0)) Then
  loc_1700A4E:               var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700A56:               var_10C = CVar(CLng(8)) 'Long
  loc_1700A84:               var_174 = CVar(CStr(Format(var_90, "0.00"))) 'String
  loc_1700A8C:               Set var_B8 = Me.FGrid
  loc_1700A92:               LateIdCallSt
  loc_1700AAC:             End If
  loc_1700AC0:             var_88 = CInt(CLng(Me.FGrid.Row))
  loc_1700ACD:             var_CC = CVar(CLng(var_88)) 'Long
  loc_1700AD5:             var_EC = CVar(CLng(0)) 'Long
  loc_1700ADF:             var_A8 = CVar(CStr(var_88)) 'String
  loc_1700AE7:             Set var_98 = Me.FGrid
  loc_1700AED:             LateIdCallSt
  loc_1700AFF:             var_CC = CVar(CLng(var_88)) 'Long
  loc_1700B07:             var_EC = CVar(CLng(&HD)) 'Long
  loc_1700B37:             If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1700B3E:               var_CC = CVar(CLng(var_88)) 'Long
  loc_1700B46:               var_EC = CVar(CLng(7)) 'Long
  loc_1700B76:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1700B7D:                 var_CC = CVar(CLng(var_88)) 'Long
  loc_1700B85:                 var_EC = CVar(CLng(7)) 'Long
  loc_1700B8A:                 var_10C = "1.0"
  loc_1700B94:                 Set var_98 = Me.FGrid
  loc_1700B9A:                 LateIdCallSt
  loc_1700BA5:               End If
  loc_1700BA8:             Else
  loc_1700BAC:               var_CC = CVar(CLng(var_88)) 'Long
  loc_1700BB4:               var_EC = CVar(CLng(7)) 'Long
  loc_1700BCE:               var_BC = CStr(Me.FGrid.TextMatrix))
  loc_1700BE4:               If (CDbl(Val(var_BC)) = CDbl(0)) Then
  loc_1700BEB:                 var_CC = CVar(CLng(var_88)) 'Long
  loc_1700BF3:                 var_EC = CVar(CLng(7)) 'Long
  loc_1700BF8:                 var_10C = "1"
  loc_1700C02:                 Set var_98 = Me.FGrid
  loc_1700C08:                 LateIdCallSt
  loc_1700C13:               End If
  loc_1700C13:             End If
  loc_1700C13:           End If
  loc_1700C13:         End If
  loc_1700C13:       End If
  loc_1700C16:     Else
  loc_1700C1D:       If (var_AC = CLng(4)) Then
  loc_1700C74:         Call 0.Method_Proc_229_77_17018E80 (arg_C, var_B8, var_BC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), Me.TxtGrid, var_10C, var_EC)
  loc_1700C7C:         var_CC = var_B8.Text
  loc_1700C94:         If (var_EC Or (var_BC = vbNullString)) Then
  loc_1700CAA:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700CB2:           var_EC = CVar(CLng(4)) 'Long
  loc_1700CB7:           var_10C = vbNullString
  loc_1700CC1:           Set var_B8 = Me.FGrid
  loc_1700CC7:           LateIdCallSt
  loc_1700CEC:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700CF4:           var_EC = CVar(CLng(&HA)) 'Long
  loc_1700CF9:           var_10C = vbNullString
  loc_1700D03:           Set var_B8 = Me.FGrid
  loc_1700D09:           LateIdCallSt
  loc_1700D2E:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700D36:           var_EC = CVar(CLng(3)) 'Long
  loc_1700D3B:           var_10C = vbNullString
  loc_1700D45:           Set var_B8 = Me.FGrid
  loc_1700D4B:           LateIdCallSt
  loc_1700D70:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700D78:           var_EC = CVar(CLng(5)) 'Long
  loc_1700D7D:           var_10C = vbNullString
  loc_1700D87:           Set var_B8 = Me.FGrid
  loc_1700D8D:           LateIdCallSt
  loc_1700DB2:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700DBA:           var_EC = CVar(CLng(8)) 'Long
  loc_1700DBF:           var_10C = vbNullString
  loc_1700DC9:           Set var_B8 = Me.FGrid
  loc_1700DCF:           LateIdCallSt
  loc_1700DF4:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700DFC:           var_EC = CVar(CLng(&HD)) 'Long
  loc_1700E01:           var_10C = vbNullString
  loc_1700E0B:           Set var_B8 = Me.FGrid
  loc_1700E11:           LateIdCallSt
  loc_1700E26:         Else
  loc_1700E3F:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700E47:           var_EC = CVar(CLng(&HA)) 'Long
  loc_1700E61:           var_BC = CStr(Me.FGrid.TextMatrix))
  loc_1700E7F:           var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700E87:           var_150 = CVar(CLng(&HA)) 'Long
  loc_1700EA1:           var_178 = CStr(Me.FGrid.TextMatrix))
  loc_1700F0C:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1700F23:             var_88 = CInt(CLng(Me.FGrid.Row))
  loc_1700F3F:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700F47:             var_FC = CVar(CLng(4)) 'Long
  loc_1700F7A:             var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1700F82:             Set var_164 = Me.FGrid
  loc_1700F88:             LateIdCallSt
  loc_1700FB7:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1700FBF:             var_FC = CVar(CLng(&HA)) 'Long
  loc_1700FF2:             var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1700FFA:             Set var_164 = Me.FGrid
  loc_1701000:             LateIdCallSt
  loc_170102F:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1701037:             var_FC = CVar(CLng(3)) 'Long
  loc_170106A:             var_140 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1701072:             Set var_164 = Me.FGrid
  loc_1701078:             LateIdCallSt
  loc_17010A7:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17010AF:             var_FC = CVar(CLng(5)) 'Long
  loc_17010E2:             var_140 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_17010F0:             LateIdCallSt
  loc_1701157:             var_140 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("PriceType")), CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_140, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1701165:             LateIdCallSt
  loc_1701183:             var_CC = CVar(CLng(var_88)) 'Long
  loc_1701195:             var_A8 = CVar(CStr(var_88)) 'String
  loc_170119D:             Set var_98 = Me.FGrid
  loc_17011A3:             LateIdCallSt
  loc_17011B7:             var_CC = "Code"
  loc_17011C6:             var_98 = Me.Fields
  loc_17011D6:             var_A8 = var_98.Item(var_CC).Value
  loc_17011E9:             Set var_130 = Me.Txt
  loc_17011EF:             Call 0.Method_Proc_229_77_17018E80 (CInt(1), Me.FGrid, var_178, var_98, var_A8, CVar(CLng(0)), var_CC)
  loc_17011F7:             var_164 = var_164.Text
  loc_1701219:             var_1D0 = Me.Fields.Item("OutletCode")
  loc_1701240:             Call Proc_229_91_F20E88(CStr(var_A8), var_178, CStr(var_1D0.Value), var_1EC, var_140)
  loc_1701258:             var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1701260:             var_150 = CVar(CLng(8)) 'Long
  loc_170128D:             var_204 = CVar(CStr(Format(CVar(var_1EC), "0.00"))) 'String
  loc_1701295:             Set var_208 = Me.FGrid
  loc_170129B:             LateIdCallSt
  loc_17012E3:             var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17012EB:             var_EC = CVar(CLng(&HA)) 'Long
  loc_17012FA:             var_12C = Me.FGrid.TextMatrix)
  loc_170132A:             Set var_164 = Me.FGrid
  loc_1701330:             var_174 = var_164.TextMatrix)
  loc_170134A:             Set var_17C = Me.Txt
  loc_1701350:             Call 0.Method_Proc_229_77_17018E80 (CInt(1), var_1D0, var_1F0, var_174, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_1701358:             var_EC = var_1D0.Text
  loc_1701370:             var_19C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17013BE:             Call Proc_229_79_1285944(CStr(var_12C), CStr(var_174), var_1F0, Val(CStr(Me.FGrid.TextMatrix))), var_214, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)))
  loc_17013C6:             var_90 = var_214
  loc_17013FD:             If (var_90 <> CDbl(0)) Then
  loc_170140A:               var_140 = Me.FGrid.Row
  loc_1701413:               var_EC = CVar(CLng(var_140)) 'Long
  loc_170141B:               var_10C = CVar(CLng(8)) 'Long
  loc_1701449:               var_174 = CVar(CStr(Format(var_90, "0.00"))) 'String
  loc_1701451:               Set var_B8 = Me.FGrid
  loc_1701457:               LateIdCallSt
  loc_1701471:             End If
  loc_1701475:             var_CC = CVar(CLng(var_88)) 'Long
  loc_170147D:             var_EC = CVar(CLng(&HD)) 'Long
  loc_17014AD:             If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_17014B4:               var_CC = CVar(CLng(var_88)) 'Long
  loc_17014BC:               var_EC = CVar(CLng(7)) 'Long
  loc_17014EC:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_17014F3:                 var_CC = CVar(CLng(var_88)) 'Long
  loc_17014FB:                 var_EC = CVar(CLng(7)) 'Long
  loc_1701500:                 var_10C = "1.0"
  loc_170150A:                 Set var_98 = Me.FGrid
  loc_1701510:                 LateIdCallSt
  loc_170151B:               End If
  loc_170151E:             Else
  loc_1701522:               var_CC = CVar(CLng(var_88)) 'Long
  loc_170152A:               var_EC = CVar(CLng(7)) 'Long
  loc_170155A:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1701561:                 var_CC = CVar(CLng(var_88)) 'Long
  loc_1701569:                 var_EC = CVar(CLng(7)) 'Long
  loc_170156E:                 var_10C = "1"
  loc_1701578:                 Set var_98 = Me.FGrid
  loc_170157E:                 LateIdCallSt
  loc_1701589:               End If
  loc_1701589:             End If
  loc_1701589:           End If
  loc_1701589:         End If
  loc_170158C:       Else
  loc_1701593:         If (var_AC = CLng(7)) Then
  loc_17015A9:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17015B1:           var_EC = CVar(CLng(&HB)) 'Long
  loc_17015BA:           Set var_B8 = Me.FGrid
  loc_17015C0:           var_12C = var_B8.TextMatrix)
  loc_17015CB:           var_BC = CStr(var_12C)
  loc_17015E9:           If (CDbl(Val(var_BC)) > CDbl(0)) Then
  loc_17015FA:             var_CC = "Free Qty Can't Edit "
  loc_1701605:             MsgBox(var_CC, 0, var_12C, var_140, var_174)
  loc_1701615:             Proc_229_77_17018E8 = var_EC
  loc_170161B:           End If
  loc_170162B:           Call 0.Method_Proc_229_77_17018E80 (arg_C, var_B8, var_CC, Me.TxtGrid, var_10C, var_EC)
  loc_170164A:           Set var_130 = Me.TxtGrid
  loc_1701650:           Call 0.Method_Proc_229_77_17018E80 (arg_C, var_164, var_BC, Not(IsNumeric(CVar(var_B8))), var_CC)
  loc_1701658:           var_EC = var_164.Text
  loc_170167A:           If (var_CC Or (CDbl(Val(var_BC)) <= CDbl(0))) Then
  loc_1701694:             Call 0.Method_Proc_229_77_17018E80 (arg_C, var_B8, CStr(0))
  loc_170169C:             var_B8.Text = Me.TxtGrid
  loc_17016B0:             Proc_229_77_17018E8 = 0
  loc_17016B6:           End If
  loc_17016C9:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17016DA:           Set var_B8 = Me.FGrid
  loc_17016EB:           var_BC = CStr(var_B8.TextMatrix))
  loc_1701709:           If (CDbl(Val(var_BC)) = CDbl(0)) Then
  loc_1701719:             Set var_98 = Me.TxtGrid
  loc_170171F:             Call 0.Method_Proc_229_77_17018E80 (arg_C, var_B8, var_BC, CVar(CLng(&HD)))
  loc_1701727:             var_CC = var_B8.Text
  loc_170173F:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1701757:             var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1701783:             var_1E0 = CVar(CStr(Format(CVar(var_BC), "0.00"))) 'String
  loc_170178B:             Set var_17C = Me.FGrid
  loc_1701791:             LateIdCallSt
  loc_17017B8:           Else
  loc_17017C5:             Set var_98 = Me.TxtGrid
  loc_17017CB:             Call 0.Method_Proc_229_77_17018E80 (arg_C, var_B8, var_BC, var_17C, var_1E0, 1)
  loc_17017D3:             1 = var_B8.Text
  loc_17017EB:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1701803:             var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_170182F:             var_1E0 = CVar(CStr(Format(CVar(var_BC), "0"))) 'String
  loc_1701837:             Set var_17C = Me.FGrid
  loc_170183D:             LateIdCallSt
  loc_1701861:           End If
  loc_1701864:         Else
  loc_170186B:           If (var_AC = CLng(9)) Then
  loc_170189A:             Set var_98 = Me.TxtGrid
  loc_17018A0:             Call 0.Method_Proc_229_77_17018E80 (0, var_B8, var_BC, CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_17C, var_1E0)
  loc_17018A8:             1 = var_B8.Text
  loc_17018BE:             LateIdCallSt
  loc_17018D8:             Call Proc_229_92_12622BC(Me.FGrid, CVar(var_BC), 1, var_FC)
  loc_17018DD:           End If
  loc_17018DD:         End If
  loc_17018DD:       End If
  loc_17018DD:     End If
  loc_17018DD:   End If
  loc_17018DD: End If
  loc_17018E2: Proc_229_77_17018E8 = &HFF
End Sub

Public Sub Proc_229_78_155CFE0(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) '155CFE0
  'Data Table: 542AE4
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
  Dim unk_542AFA As Connection15
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
  loc_155C000: var_128 = CVar(CLng(arg_1C)) 'Long
  loc_155C038: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_155C03B:   Proc_229_78_155CFE0 = CVar(CLng(&HB))
  loc_155C041: End If
  loc_155C066: For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_116 = var_174 'Integer
  loc_155C090:   If (CLng(var_116) > (CLng(Me.FGrid.Rows) - 1)) Then
  loc_155C093:     GoTo loc_155C0FC
  loc_155C096:   End If
  loc_155C09A:   var_128 = CVar(CLng(var_116)) 'Long
  loc_155C0A2:   var_148 = CVar(CLng(&HB)) 'Long
  loc_155C0D3:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(arg_20)) Then
  loc_155C0DA:     var_128 = CVar(CLng(var_116)) 'Long
  loc_155C0E3:     Set var_15C = Me.FGrid
  loc_155C0F4:   End If
  loc_155C0F7: Next var_174 'Integer
  loc_155C0FC: ' Referenced from: 155C093
  loc_155C100: Set var_15C = Me.FGrid
  loc_155C106: var_16C = var_15C.Row
  loc_155C110: var_118 = CInt(CLng(var_16C))
  loc_155C14E: var_188 = "SELECT SD.* FROM SchemeItemDetail SD WHERE SD.restCode='" & arg_10 & "' AND SD.ItemCode ='" & arg_C & "' AND SD.Qty <=" & CStr(arg_18)
  loc_155C163: Proc_6_7_F26918(var_16C, arg_14, CVar(var_188 & " AND "), var_26C)
  loc_155C16B: var_1A8 = -1 & var_16C 
  loc_155C187: var_1D8 = var_1A8 & " Between SD.appdate And SD.Enddate AND SD.LogSite_Code='" & CVar(MemVar_1F95078) & "' AND SD.Active='Y' And ISNULL(SD.Days,'') Like '%" 
  loc_155C1D0: unk_542AFA.Execute CStr(var_1D8 & Trim(Str(Weekday(arg_14, 1))) & "%' Order By SD.Qty Desc"), var_15C, var_118
  loc_155C1DB: Set var_8C = var_15C
  loc_155C221: If (var_8C.RecordCount > 0) Then
  loc_155C2B5:   If CBool(InStr(1, Trim(Str(CVar(var_8C.Fields.Item("DAYS")))), Trim(Str(Weekday(arg_14, 1))), 0) <> 0) Then
  loc_155C2E3:     var_94 = CStr(var_8C.Fields.Item("FromTime").Value)
  loc_155C302:     var_15C = var_8C.Fields
  loc_155C31B:     var_98 = CStr(var_15C.Item("ToTime").Value)
  loc_155C353:     var_A8 = Format(Time, "HH") 'Variant
  loc_155C389:     var_B8 = Format(Time, "NN") 'Variant
  loc_155C3B9:     var_C8 = CVar(Val(CStr(Left(var_94, 2)))) 'Variant
  loc_155C3E8:     var_D8 = CVar(Val(CStr(Right(var_94, 2)))) 'Variant
  loc_155C417:     var_E8 = CVar(Val(CStr(Left(var_98, 2)))) 'Variant
  loc_155C443:     var_EA = CInt(Val(CStr(Right(var_98, 2))))
  loc_155C454:     If (var_E8 < var_C8) Then
  loc_155C45F:       var_16C = (var_E8 + 24)
  loc_155C463:       var_E8 = Right(var_98, 2) 'Variant
  loc_155C467:     End If
  loc_155C472:     If (var_A8 <= 12) Then
  loc_155C47D:       var_16C = (var_A8 + 24)
  loc_155C481:       var_A8 = Right(var_98, 2) 'Variant
  loc_155C485:     End If
  loc_155C499:     var_198 = (var_C8 + (var_D8 / 60))
  loc_155C4A8:     var_FC = Round("NN", 2) 'Variant
  loc_155C4C3:     var_16C = (var_E8 + CVar((CDbl(var_EA) / CDbl(&H3C))))
  loc_155C4D2:     var_10C = Round((var_D8 / 60), 2) 'Variant
  loc_155C4ED:     var_198 = (var_A8 + (var_B8 / 60))
  loc_155C4FD:     var_114 = CSng(Round(Round((var_D8 / 60), 2), 2))
  loc_155C537:     var_1A8 = (Left(var_94, 2) + Right(var_94, 2))
  loc_155C588:     var_1A8 = (Left(var_98, 2) + Right(var_98, 2))
  loc_155C608:     var_208 = (1 + Format(Time, "nn"))
  loc_155C60D:     var_114 = CSng(Str(Weekday(arg_14, 1)))
  loc_155C62C:     var_16C = (CVar(Val(CStr(Round(Round((var_D8 / 60), 2), 2)))) <= CVar(var_114))
  loc_155C645:     If CBool(var_16C And (CVar(Val(CStr(Round(Round((var_D8 / 60), 2), 2)))) >= CVar(var_114))) Then
  loc_155C65C:       var_170 = "SELECT SD.RestCode, Depart.ShortName, IM.DispCode, IM.NAME, IM.Unit, IM.Code, FD.FreeQty, SD.ItemCode As Itemcode, SD.Qty,SD.SchemeCode FROM SchemeItemDetail SD  JOIN FreeItemDetail FD ON SD.Code = FD.Code Join Depart on SD.RestCode=Depart.Code JOIN ItemMast IM on FD.FreeItem=IM.Code And FD.RestCode=IM.RestCode WHERE SD.RestCode='" & arg_10
  loc_155C692:       Proc_6_7_F26918(var_16C, arg_14, CVar(var_170 & "' AND SD.ItemCode ='" & arg_C & "' AND SD.Qty <=" & CStr(arg_18) & " AND "), var_26C, -1, var_15C, var_114, 1)
  loc_155C6AD:       var_1C8 = (Format(Time, "HH") * 100) & var_16C & " Between SD.Appdate And SD.EndDate AND SD.LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_155C6F1:       var_248 = var_1C8 & "' AND SD.Active='Y' And ISNULL(SD.Days,'') Like '%" & Trim(Str(Weekday(arg_14, 1))) & "%' Order By SD.Qty Desc" 
  loc_155C6FF:       unk_542AFA.Execute CStr(var_248), 1, 1
  loc_155C70A:       Set var_90 = var_15C
  loc_155C750:       If (var_90.RecordCount > 0) Then
  loc_155C757:         var_128 = CVar(CLng(var_118)) 'Long
  loc_155C75F:         var_148 = CVar(CLng(&HA)) 'Long
  loc_155C7A0:         var_90.Find "Itemcode='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_155C7CD:         var_128 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155C7D5:         var_148 = CVar(CLng(4)) 'Long
  loc_155C808:         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_155C824:           var_128 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155C82D:           Set var_274 = Me.FGrid
  loc_155C845:         End If
  loc_155C845:         var_128 = vbNullString
  loc_155C84F:         Set var_15C = Me.FGrid
  loc_155C879:         var_1E8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155C881:         var_25C = CVar(CLng(0)) 'Long
  loc_155C89F:         var_128 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_155C8A7:         var_148 = CVar(CLng(0)) 'Long
  loc_155C8CC:         var_1B8 = CVar(CStr((CDbl(CStr(Me.FGrid.TextMatrix))) + CDbl(1)))) 'String
  loc_155C8D4:         Set var_29C = Me.FGrid
  loc_155C8DA:         LateIdCallSt
  loc_155C914:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155C91C:         var_158 = CVar(CLng(1)) 'Long
  loc_155C94C:         var_1A8 = CVar(CStr(var_90.Fields.Item("RestCode").Value)) 'String
  loc_155C954:         Set var_29C = Me.FGrid
  loc_155C95A:         LateIdCallSt
  loc_155C98F:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155C997:         var_158 = CVar(CLng(2)) 'Long
  loc_155C9C7:         var_1A8 = CVar(CStr(var_90.Fields.Item("ShortName").Value)) 'String
  loc_155C9CF:         Set var_29C = Me.FGrid
  loc_155C9D5:         LateIdCallSt
  loc_155CA0A:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155CA12:         var_158 = CVar(CLng(3)) 'Long
  loc_155CA42:         var_1A8 = CVar(CStr(var_90.Fields.Item("DispCode").Value)) 'String
  loc_155CA4A:         Set var_29C = Me.FGrid
  loc_155CA50:         LateIdCallSt
  loc_155CA85:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155CA8D:         var_158 = CVar(CLng(4)) 'Long
  loc_155CABD:         var_1A8 = CVar(CStr(var_90.Fields.Item("Name").Value)) 'String
  loc_155CAC5:         Set var_29C = Me.FGrid
  loc_155CACB:         LateIdCallSt
  loc_155CB00:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155CB08:         var_158 = CVar(CLng(5)) 'Long
  loc_155CB38:         var_1A8 = CVar(CStr(var_90.Fields.Item("Unit").Value)) 'String
  loc_155CB40:         Set var_29C = Me.FGrid
  loc_155CB46:         LateIdCallSt
  loc_155CBA3:         var_29C = var_90.Fields.Item("qty")
  loc_155CBAB:         var_1A8 = var_29C.Value
  loc_155CBCC:         var_158 = CVar(arg_18) 'Integer
  loc_155CBDB:         Proc_6_142_14A62A0(CSng((var_158 / var_1A8)), CByte(0), "L", CByte(4), var_29C, var_1A8, var_158, " Between SD.Appdate And SD.EndDate AND SD.LogSite_Code='")
  loc_155CC23:         var_288 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155CC2B:         var_2C4 = CVar(CLng(7)) 'Long
  loc_155CC59:         var_1C8 = ((CVar(arg_18) / var_90.Fields.Item("qty").Value) + CVar(var_29C))
  loc_155CC77:         var_26C = CVar(CStr(Format((var_1C8 * var_90.Fields.Item("FreeQty").Value), "0.00"))) 'String
  loc_155CC7F:         Set var_2E8 = Me.FGrid
  loc_155CC85:         LateIdCallSt
  loc_155CCD1:         var_148 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155CCD9:         var_1E8 = CVar(CLng(8)) 'Long
  loc_155CD0A:         var_1C8 = CVar(CStr(Format("0.01", "0.00"))) 'String
  loc_155CD12:         Set var_274 = Me.FGrid
  loc_155CD18:         LateIdCallSt
  loc_155CD4D:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155CD55:         var_158 = CVar(CLng(&HA)) 'Long
  loc_155CD85:         var_1A8 = CVar(CStr(var_90.Fields.Item("Code").Value)) 'String
  loc_155CD8D:         Set var_29C = Me.FGrid
  loc_155CD93:         LateIdCallSt
  loc_155CDC8:         var_128 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155CDDA:         var_198 = CVar(CStr(arg_20)) 'String
  loc_155CDE2:         Set var_274 = Me.FGrid
  loc_155CDE8:         LateIdCallSt
  loc_155CE08:         var_198 = Me.FGrid.Rows
  loc_155CE17:         var_138 = CVar((CLng(var_198) - 1)) 'Long
  loc_155CE27:         var_128 = "SchemeCode"
  loc_155CE3B:         var_274 = var_90.Fields.Item(var_128)
  loc_155CE54:         Set var_29C = Me.FGrid
  loc_155CE5A:         LateIdCallSt
  loc_155CE78:         Set var_29C = Me.FGrid
  loc_155CEBE:         Proc_96_0_E6CA28(var_29C, CInt((CLng(Me.FGrid.Rows) - 1)), Me.lblclr.BackColor, Me.FGrid.Rows, var_29C, CVar(Proc_6_38_E69628(CVar(Me.lblclr), CVar(CLng(&HC)), "0.00", Me.lblclr, var_198, CVar(CLng(&HB)), var_128)))
  loc_155CED3:         var_86 = &HFF
  loc_155CEEF:         var_1E8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155CEF7:         var_25C = CVar(CLng(9)) 'Long
  loc_155CF00:         var_128 = CVar(CLng(var_118)) 'Long
  loc_155CF08:         var_148 = CVar(CLng(9)) 'Long
  loc_155CF22:         var_1A8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_155CF2A:         Set var_278 = Me.FGrid
  loc_155CF30:         LateIdCallSt
  loc_155CF6F:         For var_2F8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_116 = var_2F8 'Integer
  loc_155CF79:           var_128 = CVar(CLng(var_116)) 'Long
  loc_155CF81:           var_148 = CVar(CLng(0)) 'Long
  loc_155CF8B:           var_16C = CVar(CStr(var_116)) 'String
  loc_155CF93:           Set var_15C = Me.FGrid
  loc_155CF99:           LateIdCallSt
  loc_155CFAA:         Next var_2F8 'Integer
  loc_155CFB4:         Set var_8C = Nothing
  loc_155CFBC:         Set var_90 = Nothing
  loc_155CFBF:         Proc_229_78_155CFE0 = 
  loc_155CFC5:       End If
  loc_155CFC5:     End If
  loc_155CFC5:   End If
  loc_155CFC5: End If
  loc_155CFCF: Set var_8C = Nothing
  loc_155CFD7: Set var_90 = Nothing
  loc_155CFDA: Proc_229_78_155CFE0 = 0
End Sub

Public Sub Proc_229_79_1285944(arg_C, arg_10, arg_14, arg_18) '1285944
  'Data Table: 542AE4
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_1F4 As Variant
  Dim var_254 As Variant
  Dim unk_542AFA As Connection15
  Dim var_90 As Recordset15
  Dim var_2BC As Fields15
  Dim var_E2 As Integer
  Dim var_134 As Variant
  Dim var_114 As Double
  Dim var_194 As Variant
  Dim var_8C As Double
  loc_12853E1: Proc_6_17_EAAE40(var_134, arg_10, "SELECT * FROM HappyHours where RestCode =")
  loc_1285401: Proc_6_17_EAAE40(var_194, arg_C, var_2B8 & var_134 & " AND itemCode=")
  loc_1285409: var_1A4 = -1 & var_194 
  loc_1285421: Proc_6_7_F26918(var_1E4, arg_14)
  loc_1285445: var_254 = var_1A4 & " AND " & var_1E4 & " Between AppDate And EndDate AND  Site_Code='" & CVar(MemVar_1F95070) & "' AND (LogSite_code='" 
  loc_1285466: unk_542AFA.Execute CStr(var_254 & CVar(MemVar_1F95078) & "' OR Logsite_Code='HO') AND Active='Y' ORDER BY AppDate DESC"), var_2BC, 
  loc_1285471: Set var_90 = var_2BC
  loc_12854AD: If (var_90.RecordCount > 0) Then
  loc_12854DB:   var_E8 = CStr(var_90.Fields.Item("FromTime").Value)
  loc_1285513:   var_EC = CStr(var_90.Fields.Item("ToTime").Value)
  loc_128554B:   var_E0 = Format(Time, "HH") 'Variant
  loc_1285582:   var_E2 = CInt(Format(Time, "NN"))
  loc_12855B3:   var_A0 = CVar(Val(CStr(Left(var_E8, 2)))) 'Variant
  loc_12855E2:   var_B0 = CVar(Val(CStr(Right(var_E8, 2)))) 'Variant
  loc_1285611:   var_C0 = CVar(Val(CStr(Left(var_EC, 2)))) 'Variant
  loc_1285640:   var_D0 = CVar(Val(CStr(Right(var_EC, 2)))) 'Variant
  loc_1285652:   If (var_C0 < var_A0) Then
  loc_128565D:     var_134 = (var_C0 + 24)
  loc_1285661:     var_C0 = Right(var_EC, 2) 'Variant
  loc_1285665:   End If
  loc_1285670:   If (var_E0 <= 12) Then
  loc_128567B:     var_134 = (var_E0 + 24)
  loc_128567F:     var_E0 = Right(var_EC, 2) 'Variant
  loc_1285683:   End If
  loc_1285697:   var_154 = (var_A0 + (var_B0 / 60))
  loc_12856A6:   var_FC = Round("NN", 2) 'Variant
  loc_12856C1:   var_154 = (var_C0 + (var_D0 / 60))
  loc_12856D0:   var_10C = Round("NN", 2) 'Variant
  loc_12856EB:   var_134 = (var_E0 + CVar((CDbl(var_E2) / CDbl(&H3C))))
  loc_12856FB:   var_114 = CSng(Round((var_D0 / 60), 2))
  loc_1285735:   var_174 = (Left(var_E8, 2) + Right(var_E8, 2))
  loc_1285786:   var_174 = (Left(var_EC, 2) + Right(var_EC, 2))
  loc_12857DF:   var_194 = (Format(Time, "HH") * 100)
  loc_1285806:   var_1F4 = (1 + Format(Time, "NN"))
  loc_128580B:   var_114 = CSng(Time & " AND " & Format(Time, "NN"))
  loc_1285843:   If CBool((CVar(Val(CStr(Round("NN", 2)))) <= CVar(var_114)) And (CVar(Val(CStr(Round("NN", 2)))) >= CVar(var_114))) Then
  loc_1285882:     If (var_90.Fields.Item("DiscountType").Value = "Amount") Then
  loc_12858B6:       var_154 = (CVar(arg_18) - var_90.Fields.Item("DiscountValue").Value)
  loc_12858BB:       var_8C = CSng("HH")
  loc_12858CB:     Else
  loc_1285910:       var_194 = (CVar(arg_18) - (CVar(arg_18) * (var_90.Fields.Item("DiscountValue").Value / 100)))
  loc_1285915:       var_8C = CSng(var_194)
  loc_1285922:     End If
  loc_1285925:   Else
  loc_1285928:     var_8C = CDbl(0)
  loc_128592B:   End If
  loc_128592E: Else
  loc_1285931:   var_8C = CDbl(0)
  loc_1285934: End If
  loc_1285939: Set var_90 = Nothing
  loc_128593C: Proc_229_79_1285944 = var_8C
  loc_1285942: CExtInstUnk
End Sub

Public Sub Proc_229_80_16C14B4
  'Data Table: 542AE4
  Dim Me As Variant
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_542AFA As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Variant
  Dim var_138 As String
  Dim var_13C As String
  Dim var_140 As String
  Dim var_144 As String
  Dim var_148 As String
  Dim var_12C As Variant
  Dim var_C4 As Variant
  Dim var_88 As Recordset15
  Dim var_8C As Recordset15
  Dim var_94 As Recordset15
  Dim var_150 As Field20
  Dim var_160 As Variant
  Dim var_128 As Variant
  Dim var_8E As Integer
  Dim var_118 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_170 As Variant
  Dim var_98 As Recordset15
  loc_16BFB33: If (Me.RecordCount > 0) Then
  loc_16BFB75:   var_E4 = "Select K.*,R.name as RName From TOKEN K left join RoomMast R on R.Type=K.RoomType and R.Code=K.RoomNo Where K.Docid='" & Me.Fields.Item("DocID").Value 
  loc_16BFB8C:   unk_542AFA.Execute CStr(var_E4 & "' order by K.Sno"), var_128, -1
  loc_16BFB97:   Set var_88 = var_12C
  loc_16BFBB4:   Set var_130 = var_88 
  loc_16BFBF1:   Set var_12C = Me.Txt
  loc_16BFBF7:   Call 0.Method_Proc_229_80_16C14B40 (CInt(3), var_134)
  loc_16BFBFF:   var_134.Text = CStr(var_130.Fields.Item("DocID").Value)
  loc_16BFC2F:   var_B4 = var_130.Fields.Item("vType")
  loc_16BFC37:   var_C4 = var_B4.Value
  loc_16BFC5D:   var_D4 = 0
  loc_16BFC8F:   var_140 = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='"
  loc_16BFCA9:   unk_542AFA.Execute var_140 & CStr(var_C4) & "'", var_C4, -1
  loc_16BFCB1:   var_A0 = var_A0.Fields
  loc_16BFCB9:   var_D4 = var_B4.Item(var_B4)
  loc_16BFCC1:   var_12C = var_12C.Value
  loc_16BFCD0:   global_124 = CStr(var_E4)
  loc_16BFD2E:   Set var_12C = Me.Txt
  loc_16BFD34:   Call 0.Method_Proc_229_80_16C14B40 (CInt(0), var_134, CStr(var_130.Fields.Item("VNo").Value))
  loc_16BFD3C:   var_134.Text = var_E4
  loc_16BFD8B:   Set var_12C = Me.Txt
  loc_16BFD91:   Call 0.Method_Proc_229_80_16C14B40 (CInt(&HD), var_134)
  loc_16BFD99:   var_134.Text = CStr(var_130.Fields.Item("TokenNo").Value)
  loc_16BFDDA:   var_E4 = "DD/MMM/YYYY"
  loc_16BFE01:   Set var_12C = Me.Txt
  loc_16BFE07:   Call 0.Method_Proc_229_80_16C14B40 (CInt(1), var_134, CStr(Format(CVar(var_130.Fields.Item("VDate")), var_E4)))
  loc_16BFE0F:   var_134.Text = 1
  loc_16BFE61:   Me.LblVPrefix.Caption = CStr(var_130.Fields.Item("vPrefix").Value)
  loc_16BFEAB:   Set var_12C = Me.Txt
  loc_16BFEB1:   Call 0.Method_Proc_229_80_16C14B40 (CInt(6), var_134)
  loc_16BFEB9:   var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks")), 1)
  loc_16BFF05:   var_108 = Proc_6_38_E69628(CVar(var_130.Fields.Item("Party")), "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q where Code='", var_E4)
  loc_16BFF09:   var_138 = -1 & var_108
  loc_16BFF19:   unk_542AFA.Execute "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & "'", var_12C, var_12C
  loc_16BFF24:   Set var_8C = var_12C
  loc_16BFF52:   If (var_8C.RecordCount > 0) Then
  loc_16BFF8E:     Set var_12C = Me.Txt
  loc_16BFF94:     Call 0.Method_Proc_229_80_16C14B40 (CInt(&HB), var_134)
  loc_16BFF9C:     var_134.Tag = CStr(var_8C.Fields.Item(0).Value)
  loc_16BFFEB:     Set var_12C = Me.Txt
  loc_16BFFF1:     Call 0.Method_Proc_229_80_16C14B40 (CInt(&HB), var_134)
  loc_16BFFF9:     var_134.Text = CStr(var_8C.Fields.Item(1).Value)
  loc_16C0029:     var_B4 = var_8C.Fields.Item(2)
  loc_16C0048:     Set var_12C = Me.Txt
  loc_16C004E:     Call 0.Method_Proc_229_80_16C14B40 (CInt(&HC), var_134)
  loc_16C0056:     var_134.Text = CStr(var_B4.Value)
  loc_16C006F:   Else
  loc_16C007D:     Set var_A0 = Me.Txt
  loc_16C0083:     Call 0.Method_Proc_229_80_16C14B40 (CInt(&HB), var_B4)
  loc_16C008B:     var_B4.Tag = vbNullString
  loc_16C00A5:     Set var_A0 = Me.Txt
  loc_16C00AB:     Call 0.Method_Proc_229_80_16C14B40 (CInt(&HB), var_B4)
  loc_16C00B3:     var_B4.Text = vbNullString
  loc_16C00CD:     Set var_A0 = Me.Txt
  loc_16C00D3:     Call 0.Method_Proc_229_80_16C14B40 (CInt(&HC), var_B4)
  loc_16C00DB:     var_B4.Text = vbNullString
  loc_16C00E7:   End If
  loc_16C010F:   var_108 = Proc_6_38_E69628(CVar(var_130.Fields.Item("Waiter")))
  loc_16C011D:   Set var_12C = Me.Txt
  loc_16C0123:   Call 0.Method_Proc_229_80_16C14B40 (CInt(5), var_134)
  loc_16C012B:   var_134.Tag = var_108
  loc_16C0159:   var_B4 = var_130.Fields.Item("Waiter")
  loc_16C017B:   If CBool(var_B4.Value <> vbNullString) Then
  loc_16C019C:     Set var_A0 = Me.Txt
  loc_16C01A2:     Call 0.Method_Proc_229_80_16C14B40 (CInt(5), var_B4, var_108, "Select Name From Waiter Where Code='")
  loc_16C01AA:     var_C4 = var_B4.Tag
  loc_16C01B3:     var_138 = -1 & var_108
  loc_16C01BA:     var_13C = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & "' and (code is not null or code <> '')"
  loc_16C01C3:     unk_542AFA.Execute var_13C, var_12C, 
  loc_16C01CE:     Set var_94 = var_12C
  loc_16C01FA:     If (var_94.RecordCount > 0) Then
  loc_16C0217:       var_B4 = var_94.Fields.Item("Name")
  loc_16C0236:       Set var_12C = Me.Txt
  loc_16C023C:       Call 0.Method_Proc_229_80_16C14B40 (CInt(5), var_134)
  loc_16C0244:       var_134.Text = CStr(var_B4.Value)
  loc_16C025A:     End If
  loc_16C025F:     Set var_94 = Nothing
  loc_16C0265:   Else
  loc_16C0273:     Set var_A0 = Me.Txt
  loc_16C0279:     Call 0.Method_Proc_229_80_16C14B40 (CInt(5), var_B4)
  loc_16C0281:     var_B4.Text = vbNullString
  loc_16C028D:   End If
  loc_16C02A4:   If ((global_164 = "TB") Or (global_164 = "RO")) Then
  loc_16C02DD:     Set var_12C = Me.Txt
  loc_16C02E3:     Call 0.Method_Proc_229_80_16C14B40 (CInt(4), var_134)
  loc_16C02EB:     var_134.Text = Proc_6_38_E69628(CVar(var_130.Fields.Item("RoomNo")))
  loc_16C0302:   Else
  loc_16C0338:     Set var_12C = Me.Txt
  loc_16C033E:     Call 0.Method_Proc_229_80_16C14B40 (CInt(4), var_134)
  loc_16C0346:     var_134.Text = Proc_6_38_E69628(CVar(var_130.Fields.Item("RName")))
  loc_16C035A:   End If
  loc_16C0374:   var_B4 = var_130.Fields.Item("Pending")
  loc_16C037C:   var_C4 = var_B4.Value
  loc_16C0396:   If (var_C4 = "Y") Then
  loc_16C03D7:     Set var_A0 = Me.Txt
  loc_16C03DD:     Call 0.Method_Proc_229_80_16C14B40 (CInt(4), var_B4, "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='", "sELECT COUNT(DISTINCT VNO) FROM TOKEN WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='", var_C4, -1)
  loc_16C03F5:     var_144 = var_134 & "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & "' AND PENDING='Y' AND (DELFLAG IS NULL OR DELFLAG<>'Y')"
  loc_16C03FE:     unk_542AFA.Execute var_144, 0, var_150
  loc_16C040E:      = var_134.Item()
  loc_16C0416:      = var_150.Value
  loc_16C0447:     If (var_B4.Text.Fields = 1) Then
  loc_16C0457:       Me.LblState.Caption = "New Order"
  loc_16C0462:     Else
  loc_16C046F:       Me.LblState.Caption = "Running Order"
  loc_16C0477:     End If
  loc_16C047A:   Else
  loc_16C0487:     Me.LblState.Caption = "Completed Order"
  loc_16C048F:   End If
  loc_16C04A9:   var_B4 = var_130.Fields.Item("NCTOKEN")
  loc_16C04EA:   Me.ChkNCTOKEN.Value = CInt(IIf((var_B4.Value = "Y"), 1, 0))
  loc_16C0520:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_16C0530:     Set var_A0 = Me.Txt
  loc_16C0536:     Call 0.Method_Proc_229_80_16C14B40 (CInt(7), var_B4)
  loc_16C053E:     var_B4.Visible = True
  loc_16C0555:     Set var_A0 = Me.Label1
  loc_16C055B:     Call 0.Method_Proc_229_80_16C14B40 (4, var_B4)
  loc_16C0563:     var_B4.Visible = True
  loc_16C0572:   Else
  loc_16C057F:     Set var_A0 = Me.Txt
  loc_16C0585:     Call 0.Method_Proc_229_80_16C14B40 (CInt(7), var_B4)
  loc_16C058D:     var_B4.Visible = False
  loc_16C05A4:     Set var_A0 = Me.Label1
  loc_16C05AA:     Call 0.Method_Proc_229_80_16C14B40 (4, var_B4)
  loc_16C05B2:     var_B4.Visible = False
  loc_16C05BE:   End If
  loc_16C05F4:   Set var_12C = Me.Txt
  loc_16C05FA:   Call 0.Method_Proc_229_80_16C14B40 (CInt(7), var_134)
  loc_16C0602:   var_134.Text = Proc_6_38_E69628(CVar(var_130.Fields.Item("NCType")))
  loc_16C066B:   global_192 = CByte(IIf((var_130.Fields.Item("NCTOKEN").Value = "Y"), 1, 0))
  loc_16C06AF:   var_128 = 1
  loc_16C0718:   var_108 = Proc_6_38_E69628(CVar(var_130.Fields.Item("RoomNo")), CByte(IIf((var_130.Fields.Item("NCTOKEN").Value = "Y"), var_128, 0)))
  loc_16C0726:   Set var_12C = Me.Txt
  loc_16C072C:   Call 0.Method_Proc_229_80_16C14B40 (CInt(4), var_134)
  loc_16C0734:   var_134.Tag = var_108
  loc_16C0773:   var_E4 = "hh:nn"
  loc_16C079A:   Set var_12C = Me.Txt
  loc_16C07A0:   Call 0.Method_Proc_229_80_16C14B40 (CInt(2), var_134, CStr(Format(CVar(var_130.Fields.Item("VTIME")), var_E4)))
  loc_16C07A8:   var_134.Text = 1
  loc_16C080A:   var_13C = Replace(CStr(var_130.Fields.Item("VTIME").Value), ":", ".", 1, -1, 0)
  loc_16C083C:   var_148 = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and " & CStr(Val("sELECT COUNT(DISTINCT VNO) FROM TOKEN WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='"))
  loc_16C084C:   unk_542AFA.Execute var_148 & " BETWEEN FromTime AND ToTime", var_E4, -1
  loc_16C0857:   Set var_94 = var_12C
  loc_16C087D:   Set var_130 = Nothing 
  loc_16C0890:   Me.FGrid.Redraw = False
  loc_16C08AB:   Me.FGrid.Rows = 1
  loc_16C08B5:   var_8E = 1
  loc_16C08C5:   var_D4 = "Select K1.*,I.name as ItemName,I.Unit,IsNull(U.PriceType,0) As PriceType,DispCode,D.Code as DepartCode,D.ShortName as DepartName From (TOKEN K1 Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner Join Depart D on D.Code=I.RestCode Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code Where K1.DocId='"
  loc_16C090E:   unk_542AFA.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "' order by K1.Sno"), var_128, -1
  loc_16C0919:   Set var_88 = var_12C
  loc_16C0947:   If (var_88.RecordCount > 0) Then
  loc_16C094A:     ' Referenced from: 16C0FF5
  loc_16C0959:     If Not(var_88.EOF) Then
  loc_16C095C:       var_B0 = vbNullString
  loc_16C0966:       Set var_A0 = Me.FGrid
  loc_16C097B:       Set var_180 = Me.FGrid
  loc_16C0982:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_16C098A:       var_118 = CVar(CLng(0)) 'Long
  loc_16C09BA:       var_E4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_16C09C1:       LateIdCallSt
  loc_16C09DB:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_16C09E3:       var_118 = CVar(CLng(&HA)) 'Long
  loc_16C0A13:       var_E4 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_16C0A1A:       LateIdCallSt
  loc_16C0A69:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_8E)), var_180, var_E4, CVar(CLng(3)), CVar(CLng(var_8E)))) 'String
  loc_16C0A70:       LateIdCallSt
  loc_16C0ABB:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_8E)), var_180, var_E4, var_180)) 'String
  loc_16C0AC2:       LateIdCallSt
  loc_16C0B0D:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(var_8E)), var_180, var_E4)) 'String
  loc_16C0B14:       LateIdCallSt
  loc_16C0B5F:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_8E)), var_180, var_E4)) 'String
  loc_16C0B66:       LateIdCallSt
  loc_16C0B98:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_16C0BA0:       var_190 = CVar(CLng(7)) 'Long
  loc_16C0BCD:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.00"))) 'String
  loc_16C0BD4:       LateIdCallSt
  loc_16C0C46:       LateIdCallSt
  loc_16C0C84:       var_138 = Proc_6_38_E69628(CVar(var_88.Fields.Item("VoidYN")), var_180, CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))), 1, 1, CVar(CLng(8)), CVar(CLng(var_8E)))
  loc_16C0CD0:       LateIdCallSt
  loc_16C0D2A:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_180, CVar(CStr(IIf((var_138 = "Y"), "Yes", "No"))), CVar(CLng(9)), CVar(CLng(var_8E)))) 'String
  loc_16C0D31:       LateIdCallSt
  loc_16C0D7C:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_180, var_E4, var_180)) 'String
  loc_16C0D83:       LateIdCallSt
  loc_16C0DCC:       Proc_6_39_E7D3A0(var_E4, CVar(var_88.Fields.Item("FreeSno")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_180, var_E4)
  loc_16C0DDC:       LateIdCallSt
  loc_16C0E29:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SchemeCode")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_180, CVar(CStr(var_E4)))) 'String
  loc_16C0E30:       LateIdCallSt
  loc_16C0E79:       Proc_6_39_E7D3A0(var_E4, CVar(var_88.Fields.Item("PriceType")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_180, var_E4)
  loc_16C0E82:       var_104 = CVar(CStr(var_E4)) 'String
  loc_16C0E89:       LateIdCallSt
  loc_16C0EA1:       var_B0 = CVar(CLng(var_8E)) 'Long
  loc_16C0EA9:       var_F4 = CVar(CLng(&HD)) 'Long
  loc_16C0ED9:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(1)) Then
  loc_16C0EE0:         var_B0 = CVar(CLng(var_8E)) 'Long
  loc_16C0EE8:         var_F4 = CVar(CLng(7)) 'Long
  loc_16C0F07:         var_1A0 = CVar(CLng(var_8E)) 'Long
  loc_16C0F0F:         var_1C0 = CVar(CLng(7)) 'Long
  loc_16C0F3C:         var_160 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0"))) 'String
  loc_16C0F44:         Set var_B4 = Me.FGrid
  loc_16C0F4A:         LateIdCallSt
  loc_16C0F66:       End If
  loc_16C0F68:       Set var_180 = Nothing 
  loc_16C0FA8:       If (var_88.Fields.Item("FreeSno").Value > 0) Then
  loc_16C0FD6:         Proc_96_0_E6CA28(Me.FGrid, var_8E, Me.lblclr.BackColor, Me.FGrid, var_160, 1, 1)
  loc_16C0FE4:       End If
  loc_16C0FEA:       var_8E = (var_8E + 1)
  loc_16C0FF0:       var_88.MoveNext
  loc_16C0FF5:       GoTo loc_16C094A
  loc_16C0FF8:     End If
  loc_16C100B:     Me.FGrid.FixedRows = 1
  loc_16C1013:   End If
  loc_16C1021:   Me.FGrid.Redraw = True
  loc_16C102F:   If (var_8E = 1) Then
  loc_16C1045:     Me.FGrid.Rows = 1
  loc_16C1051:     Set var_12C = Me.FGrid
  loc_16C106B:     var_C4 = CVar(CStr(Proc_6_127_F25B10(var_12C, CInt(0), var_8E, var_1C0, var_1A0))) 'String
  loc_16C1073:     Set var_B4 = Me.FGrid
  loc_16C10A0:     Me.FGrid.FixedRows = 1
  loc_16C10A8:   End If
  loc_16C10B3:   If (global_68 = "Room Service") Then
  loc_16C10D6:     If (Me.LblState.Caption = "Running Order") Then
  loc_16C10ED:       var_108 = "SELECT RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest,GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3 FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) where (RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_16C1105:       Set var_A0 = Me.Txt
  loc_16C110B:       Call 0.Method_Proc_229_80_16C14B40 (CInt(4), var_B4, var_138, var_108 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL and RC.RoomNo='", var_C4, -1, var_12C)
  loc_16C1113:       FGrid.DispID_10000 = var_B4.Tag
  loc_16C112C:       unk_542AFA.Execute var_C4 & var_138 & "'  Order by RC.ROOMNO", var_C4, var_F4
  loc_16C1137:       Set var_98 = var_12C
  loc_16C1156:     Else
  loc_16C1163:       var_D4 = "SELECT distinct GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, TOKEN.RoomNo, GuestProf.Name FROM  PayCharge INNER JOIN  TOKEN ON PayCharge.DocId = TOKEN.ContraDocId INNER JOIN   GuestProf ON PayCharge.GuestProf = GuestProf.Code WHERE (TOKEN.DocId = '"
  loc_16C116E:       var_B0 = "DocID"
  loc_16C1195:       var_E4 = var_D4 & Me.Fields.Item(var_B0).Value 
  loc_16C1199:       var_F4 = "') AND  TOKEN.ContraDocID<>'' AND (PayCharge.RoomType = 'RO') AND (PayCharge.PayCode = '"
  loc_16C11C3:       Set var_12C = Me.Txt
  loc_16C11C9:       Call 0.Method_Proc_229_80_16C14B40 (CInt(4), var_134, var_108, var_E4 & var_F4 & CVar(MemVar_1F95078) & "TOUT') AND  TOKEN.RoomNo='", var_214)
  loc_16C11D1:       -1 = var_134.Tag
  loc_16C11D9:       var_170 = CVar(var_108) 'String
  loc_16C11F3:       unk_542AFA.Execute CStr(var_150 & var_170 & "'"), var_B0, var_F4
  loc_16C11FE:       Set var_98 = var_150
  loc_16C1226:     End If
  loc_16C123A:     If (var_98.RecordCount > 0) Then
  loc_16C123D:       ' Referenced from: 16C1361
  loc_16C124E:       If (var_98.EOF = 0) Then
  loc_16C1287:         Set var_12C = Me.Txt
  loc_16C128D:         Call 0.Method_Proc_229_80_16C14B40 (CInt(8), var_134)
  loc_16C1295:         var_134.Text = Proc_6_38_E69628(CVar(var_98.Fields.Item("Comments1")))
  loc_16C12DF:         Set var_12C = Me.Txt
  loc_16C12E5:         Call 0.Method_Proc_229_80_16C14B40 (CInt(9), var_134)
  loc_16C12ED:         var_134.Text = Proc_6_38_E69628(CVar(var_98.Fields.Item("Comments2")))
  loc_16C1304:         var_B0 = "Comments3"
  loc_16C1318:         var_B4 = var_98.Fields.Item(var_B0)
  loc_16C1320:         var_C4 = CVar(var_B4) 'Address
  loc_16C1337:         Set var_12C = Me.Txt
  loc_16C133D:         Call 0.Method_Proc_229_80_16C14B40 (CInt(&HA), var_134)
  loc_16C1345:         var_134.Text = Proc_6_38_E69628(var_C4)
  loc_16C135C:         var_98.MoveNext
  loc_16C1361:         GoTo loc_16C123D
  loc_16C1364:       End If
  loc_16C1364:     End If
  loc_16C1364:   End If
  loc_16C1367: Else
  loc_16C1367:   Call Proc_229_82_FEC9EC(var_B0)
  loc_16C1387:   var_138 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_16C139E:   var_D4 = 0
  loc_16C13BE:   var_140 = "Select 'T'+ShortName From Depart Where Code='" & LocalRestCode
  loc_16C13CE:   unk_542AFA.Execute var_C4 & var_138 & "'", var_C4, -1
  loc_16C13D6:   var_A0 = var_A0.Fields
  loc_16C13DE:   var_D4 = var_B4.Item(var_B4)
  loc_16C13E6:   var_12C = var_12C.Value
  loc_16C1405:   unk_542AFA.Execute CStr(var_E4 & var_E4 & "' Order by Description"), CVar(var_138 & MemVar_1F95078 & "') and V_Type='"), var_170
  loc_16C1410:   Set var_88 = var_134
  loc_16C1450:   If (var_88.RecordCount > 0) Then
  loc_16C1484:     global_156 = CStr(var_88.Fields.Item(0).Value)
  loc_16C1495:   End If
  loc_16C1495: End If
  loc_16C1495: Call Proc_229_84_F6DD2C(-1)
  loc_16C149F: Set var_88 = Nothing
  loc_16C14A7: Set var_98 = Nothing
  loc_16C14AA: Exit Sub
  loc_16C14AB: Proc_6_60_E63754(var_134)
  loc_16C14B0: Exit Sub
End Sub

Public Sub Proc_229_81_1081110
  'Data Table: 542AE4
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_542AFA As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_F8 As Variant
  Dim var_BC As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  loc_1080E89: Set var_8C = Me.TopCtrl1
  loc_1080E8F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(&HFF)
  loc_1080E97: var_A0 = CStr()
  loc_1080EA8: If (var_A0 = "Add") Then
  loc_1080ED8:   Set var_8C = Me.Txt
  loc_1080EDE:   Call 0.Method_Proc_229_81_10811100 (CInt(3), var_A4, var_A0, "Select Count(*) From TOKEN Where DocID='", var_9C, -1)
  loc_1080EFF:   unk_542AFA.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_1080F0F:    = var_C4.Item()
  loc_1080F17:    = var_D8.Value
  loc_1080F44:   If (var_A4.Text.Fields > 0) Then
  loc_1080F4D:     Call 0.Method_arg_50 (var_A0)
  loc_1080F6E:     MsgBox("Duplicate TOKEN No.", &H40, CVar(var_A0), var_108, var_118)
  loc_1080F84:     Call Proc_229_86_1185374(MemVar_1F95044)
  loc_1080F97:     Set var_8C = Me.Txt
  loc_1080F9D:     Call 0.Method_Proc_229_81_10811100 (CInt(3), var_A4)
  loc_1080FA5:     var_A4.Text = var_A0
  loc_1080FB9:     Proc_229_81_1081110 = 0
  loc_1080FBF:   End If
  loc_1080FBF: End If
  loc_1080FE4: For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_11C 'Integer
  loc_1080FEE:   var_BC = CVar(CLng(var_88)) 'Long
  loc_1080FF6:   var_F8 = CVar(CLng(&HA)) 'Long
  loc_1081016:   var_108 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1081032:   If CBool(var_108 <> vbNullString) Then
  loc_1081039:     var_BC = CVar(CLng(var_88)) 'Long
  loc_1081041:     var_F8 = CVar(CLng(7)) 'Long
  loc_1081071:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1081099:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_108, var_118)
  loc_10810BF:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_10810CB:       Set var_8C = Me.FGrid
  loc_10810EF:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_10810FC:       Proc_229_81_1081110 = 0
  loc_1081102:     End If
  loc_1081102:   End If
  loc_1081105: Next var_11C 'Integer
  loc_108110A: Proc_229_81_1081110 = 
End Sub

Public Sub Proc_229_82_FEC9EC
  'Data Table: 542AE4
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_FEC80D: Me.LblVPrefix.Caption = vbNullString
  loc_FEC823: Set var_8C = Me.Txt
  loc_FEC829: Call 0.Method_Proc_229_82_FEC9ECC (var_8E, var_86)
  loc_FEC839: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FEC84F:   Set var_8C = Me.Txt
  loc_FEC855:   Call 0.Method_Proc_229_82_FEC9EC0 (CInt(var_86), var_98)
  loc_FEC85D:   var_98.Text = vbNullString
  loc_FEC879:   Set var_8C = Me.Txt
  loc_FEC87F:   Call 0.Method_Proc_229_82_FEC9EC0 (CInt(var_86), var_98)
  loc_FEC887:   var_98.Tag = vbNullString
  loc_FEC896: Next var_92 'Byte
  loc_FEC8AA: Set var_8C = Me.Txt
  loc_FEC8B0: Call 0.Method_Proc_229_82_FEC9EC0 (CInt(2), var_98)
  loc_FEC8B8: var_98.Text = "00:00"
  loc_FEC8D2: Set var_8C = Me.Txt
  loc_FEC8D8: Call 0.Method_Proc_229_82_FEC9EC0 (CInt(2), var_98)
  loc_FEC8E0: var_98.Tag = vbNullString
  loc_FEC8FF: Me.FGrid.Rows = 1
  loc_FEC925: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_FEC92D: Set var_98 = Me.FGrid
  loc_FEC947: var_A8 = 1
  loc_FEC953: var_DC = CVar(CLng(1)) 'Long
  loc_FEC966: Set var_8C = Me.FGrid
  loc_FEC96C: LateIdCallSt
  loc_FEC977: var_A8 = 1
  loc_FEC983: var_DC = CVar(CLng(2)) 'Long
  loc_FEC996: Set var_8C = Me.FGrid
  loc_FEC99C: LateIdCallSt
  loc_FEC9BA: Me.FGrid.FixedRows = 1
  loc_FEC9CE: Me.ChkNCTOKEN.Value = 0
  loc_FEC9E3: Me.LblState.Caption = vbNullString
  loc_FEC9EB: Exit Sub
End Sub

Public Sub Proc_229_83_100CB3C(arg_C) '100CB3C
  'Data Table: 542AE4
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D4 As String
  loc_100C92A: Set var_8C = Me.Txt
  loc_100C930: Call 0.Method_Proc_229_83_100CB3CC (var_8E, var_86)
  loc_100C940: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_100C956:   Set var_8C = Me.Txt
  loc_100C95C:   Call 0.Method_Proc_229_83_100CB3C0 (CInt(var_86), var_98)
  loc_100C964:   var_98.Enabled = arg_C
  loc_100C973: Next var_92 'Byte
  loc_100C987: Me.cmdNCBill.Enabled = Not(arg_C)
  loc_100C99C: Set var_8C = Me.Txt
  loc_100C9A2: Call 0.Method_Proc_229_83_100CB3C0 (CInt(2), var_98)
  loc_100C9AA: var_98.Enabled = False
  loc_100C9C3: Set var_8C = Me.Txt
  loc_100C9C9: Call 0.Method_Proc_229_83_100CB3C0 (CInt(3), var_98)
  loc_100C9D1: var_98.Enabled = False
  loc_100C9EA: Set var_8C = Me.Txt
  loc_100C9F0: Call 0.Method_Proc_229_83_100CB3C0 (CInt(1), var_98)
  loc_100C9F8: var_98.Enabled = False
  loc_100CA11: Set var_8C = Me.Txt
  loc_100CA17: Call 0.Method_Proc_229_83_100CB3C0 (CInt(0), var_98)
  loc_100CA1F: var_98.Enabled = False
  loc_100CA38: Set var_8C = Me.Txt
  loc_100CA3E: Call 0.Method_Proc_229_83_100CB3C0 (CInt(&HD), var_98)
  loc_100CA46: var_98.Enabled = False
  loc_100CA5F: Set var_8C = Me.Txt
  loc_100CA65: Call 0.Method_Proc_229_83_100CB3C0 (CInt(8), var_98)
  loc_100CA6D: var_98.Enabled = False
  loc_100CA86: Set var_8C = Me.Txt
  loc_100CA8C: Call 0.Method_Proc_229_83_100CB3C0 (CInt(9), var_98)
  loc_100CA94: var_98.Enabled = False
  loc_100CAAD: Set var_8C = Me.Txt
  loc_100CAB3: Call 0.Method_Proc_229_83_100CB3C0 (CInt(&HA), var_98)
  loc_100CABB: var_98.Enabled = False
  loc_100CAD4: Me.ChkNCTOKEN.Enabled = arg_C
  loc_100CAE7: If (global_172 = "Auto") Then
  loc_100CAF7:   Set var_8C = Me.Txt
  loc_100CAFD:   Call 0.Method_Proc_229_83_100CB3C0 (CInt(&HB), var_98)
  loc_100CB05:   var_98.Enabled = False
  loc_100CB1E:   Set var_8C = Me.Txt
  loc_100CB24:   Call 0.Method_Proc_229_83_100CB3C0 (CInt(&HC), var_98)
  loc_100CB2C:   var_98.Enabled = False
  loc_100CB38: End If
  loc_100CB38: Exit Sub
  loc_100CB39: var_D4 = 
End Sub

Public Sub Proc_229_84_F6DD2C
  'Data Table: 542AE4
  Dim Me00 As Long
  loc_F6DC00: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F6DC12:   Me.DGItem.Visible = False
  loc_F6DC1A: End If
  loc_F6DC36: If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_F6DC48:   Me.DGWaiter.Visible = False
  loc_F6DC50: End If
  loc_F6DC6C: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_F6DC7E:   Me.DGMember.Visible = False
  loc_F6DC86: End If
  loc_F6DCA2: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F6DCB4:   Me.DGTable.Visible = False
  loc_F6DCBC: End If
  loc_F6DCD8: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_F6DCEA:   Me.DGRest.Visible = False
  loc_F6DCF2: End If
  loc_F6DD0E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6DD20:   Me.FGPoint.Visible = False
  loc_F6DD28: End If
  loc_F6DD28: Exit Sub
  loc_F6DD29: Me00 = 
End Sub

Public Sub Proc_229_85_F0C8F0
  'Data Table: 542AE4
  loc_F0C814: Call Proc_229_84_F6DD2C()
  loc_F0C824: Set var_88 = Me.Txt
  loc_F0C82A: Call 0.Method_Proc_229_85_F0C8F00 (CInt(1))
  loc_F0C853: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0C856:   Exit Sub
  loc_F0C857: End If
  loc_F0C862: Set var_88 = Me.Txt
  loc_F0C868: Call 0.Method_Proc_229_85_F0C8F00 (CInt(0), var_8C)
  loc_F0C891: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0C894:   Exit Sub
  loc_F0C895: End If
  loc_F0C8CC: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0C8CF:   Call TopCtrl1_UnknownEvent_16()
  loc_F0C8D7: Else
  loc_F0C8DD:   Call 0.Method_arg_1E8 (var_88)
  loc_F0C8E5:   Call var_88.SetFocus
  loc_F0C8EE: End If
  loc_F0C8EE: Exit Sub
End Sub

Public Sub Proc_229_86_1185374
  'Data Table: 542AE4
  Dim var_94 As String
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
  Dim unk_542AFA As Connection15
  Dim var_134 As Field20
  Dim var_184 As TextBox
  loc_1184FE0: var_90 = global_156
  loc_1184FF7: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1185028: Set var_A8 = Me.Txt
  loc_118502E: Call 0.Method_Proc_229_86_11853740 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_118503D: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_1185045: var_EC = -1 & var_CC 
  loc_1185059: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_1185064: Set var_8C = var_134
  loc_11850A0: If (var_8C.RecordCount > 0) Then
  loc_11850DF:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_1185113:     global_116 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_118513E:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_1185153:     var_CC = (var_AC.Value + 1)
  loc_118515C:     global_120 = CLng(var_CC)
  loc_118516D:   End If
  loc_118516D: End If
  loc_1185188: var_CC = CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) 'String
  loc_1185198: var_BC = Space((5 - Len(var_90)))
  loc_11851A0: var_DC = (var_CC + var_AC.Value)
  loc_11851B4: var_EC = Space((5 - Len(global_116)))
  loc_11851BC: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_11851C9: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_116))
  loc_11851E2: var_14C = Space((8 - Len(CStr(global_120))))
  loc_11851EA: var_15C = (var_130 + var_14C)
  loc_11851F9: var_17C = (var_15C + CVar(CStr(global_120)))
  loc_1185204: global_112 = CStr(var_17C)
  loc_118523A: Me.LblVPrefix.Caption = global_116
  loc_1185253: Set var_A8 = Me.Txt
  loc_1185259: Call 0.Method_Proc_229_86_11853740 (CInt(3), var_AC)
  loc_1185261: var_AC.Text = global_112
  loc_1185273: var_120 = 0
  loc_1185293: var_94 = "Select IsNull(Max(TokenNo),0)+1 From Token Where VType='" & global_156
  loc_11852B9: var_110 = Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' And Logsite_code='" & MemVar_1F95078 & "' And RestCode='" & LocalRestCode & "' And IsNull(CancelYN,'')<>'Y'"
  loc_11852C2: unk_542AFA.Execute var_110, var_AC.Value, -1
  loc_11852CA: var_A8 = var_A8.Fields
  loc_11852D2: var_120 = var_AC.Item(var_AC)
  loc_11852DA: var_134 = var_134.Value
  loc_11852F1: Set var_180 = Me.Txt
  loc_11852F7: Call 0.Method_Proc_229_86_11853740 (CInt(&HD), var_184, CStr(var_CC))
  loc_11852FF: var_184.Text = var_CC
  loc_118533F: Set var_A8 = Me.Txt
  loc_1185345: Call 0.Method_Proc_229_86_11853740 (CInt(0), var_AC)
  loc_118534D: var_AC.Text = CStr(global_120)
  loc_1185362: var_88 = global_112
  loc_118536A: Set var_8C = Nothing
  loc_118536D: Proc_229_86_1185374 = global_120
End Sub

Public Sub Proc_229_87_FC2BB8
  'Data Table: 542AE4
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC2A3B: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_FC2A40:   var_92 = 4 'Byte
  loc_FC2A44: End If
  loc_FC2A4D: Set var_98 = Me.TxtGrid
  loc_FC2A53: Call 0.Method_Proc_229_87_FC2BB80 (0, var_B0)
  loc_FC2A76: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC2AAA: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC2ACE:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC2AD1:     GoTo loc_FC2BA3
  loc_FC2AD4:   End If
  loc_FC2AD8:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC2B02:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC2B0C:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC2B41:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC2B65:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC2B7E:     Set var_98 = Me.TxtGrid
  loc_FC2B84:     Call 0.Method_Proc_229_87_FC2BB80 (0, var_B0, CVar(CLng(var_92)))
  loc_FC2B8C:     var_B0.SetFocus
  loc_FC2B9D:     Proc_229_87_FC2BB8 = 0
  loc_FC2BA3:     ' Referenced from: FC2AD1
  loc_FC2BA3:   End If
  loc_FC2BA6: Next var_D4 'Integer
  loc_FC2BB0: Proc_229_87_FC2BB8 = &HFF
End Sub

Public Sub Proc_229_88_11FE6D8
  'Data Table: 542AE4
  Dim var_90 As String
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_D0 As String
  loc_11FE232: Set global_100 = New 
  loc_11FE244: Me.Recordset15.CursorLocation = 3
  loc_11FE24F: var_8C = global_68
  loc_11FE25A: If (var_8C = "Hall") Then
  loc_11FE282:   var_A0 = CVar("Select T.Code,T.Name As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')and  T.Type in('HL') Order by T.Code") 'String
  loc_11FE28C:   Me.Open var_A0, CVar(MemVar_1F95044), 3
  loc_11FE2A3:   Set var_88 = Me.Label1
  loc_11FE2A9:   Call 0.Method_Proc_229_88_11FE6D80 (2, var_B4, "Hall")
  loc_11FE2B1:   var_B4.Caption = 1
  loc_11FE2CD:   Set var_88 = Me.DGTable
  loc_11FE2EC:   DGTable.DispID_69.Item(1).Caption = "Hall"
  loc_11FE303:   global_160 = "HALL"
  loc_11FE30D:   global_164 = "HL"
  loc_11FE322:   Set var_88 = Me.DGTable
  loc_11FE341:   DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_11FE363:   Set var_88 = Me.DGTable
  loc_11FE374:   Set var_B4 = DGTable.DispID_69
  loc_11FE382:   var_B4.Item(3).Width = CDbl(0)
  loc_11FE3A1:   Set var_88 = Me.Txt
  loc_11FE3A7:   Call 0.Method_Proc_229_88_11FE6D80 (CInt(4), var_B4)
  loc_11FE3AF:   var_BC = var_B4.Width
  loc_11FE3C6:   Me.DGTable.Width = CVar(var_BC)
  loc_11FE3D7: Else
  loc_11FE3DF:   If (var_8C = "Outlet") Then
  loc_11FE3EE:     Set var_88 = Me.Label1
  loc_11FE3F4:     Call 0.Method_Proc_229_88_11FE6D80 (2, var_B4)
  loc_11FE3FC:     var_B4.Caption = "Table #"
  loc_11FE418:     Set var_88 = Me.DGTable
  loc_11FE437:     DGTable.DispID_69.Item(1).Caption = "Table No"
  loc_11FE46D:     var_D0 = "Select T.Code,T.Code As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and T.Type in ('TB') And RestCode='"
  loc_11FE488:     Me.Open CVar(var_D0 & LocalRestCode & "' Order By T.Code"), CVar(MemVar_1F95044), 3
  loc_11FE49F:     global_160 = "REST"
  loc_11FE4A9:     global_164 = "TB"
  loc_11FE4BE:     Set var_88 = Me.DGTable
  loc_11FE4DD:     DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_11FE4FF:     Set var_88 = Me.DGTable
  loc_11FE510:     Set var_B4 = DGTable.DispID_69
  loc_11FE51E:     var_B4.Item(3).Width = CDbl(0)
  loc_11FE53D:     Set var_88 = Me.Txt
  loc_11FE543:     Call 0.Method_Proc_229_88_11FE6D80 (CInt(4), var_B4, var_BC)
  loc_11FE54B:     1 = var_B4.Width
  loc_11FE562:     Me.DGTable.Width = CVar(var_BC)
  loc_11FE573:   Else
  loc_11FE57B:     If (var_8C = "Room Service") Then
  loc_11FE58A:       Set var_88 = Me.Label1
  loc_11FE590:       Call 0.Method_Proc_229_88_11FE6D80 (2, var_B4, "Room #")
  loc_11FE598:       var_B4.Caption = -1
  loc_11FE5B4:       Set var_88 = Me.DGTable
  loc_11FE5D3:       DGTable.DispID_69.Item(1).Caption = "Room No"
  loc_11FE602:       var_90 = "SELECT RC.RoomNo AS Code, RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3,RC.Docid   FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_11FE609:       var_A0 = CVar(var_90 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO") 'String
  loc_11FE613:       Me.Open var_A0, CVar(MemVar_1F95044), 3
  loc_11FE624:       global_164 = "RO"
  loc_11FE63A:       Set var_88 = Me.DGTable
  loc_11FE659:       DGTable.DispID_69.Item(1).Width = CDbl(1515)
  loc_11FE67C:       Set var_88 = Me.DGTable
  loc_11FE69B:       DGTable.DispID_69.Item(2).Width = CDbl(3539)
  loc_11FE6AC:       GoTo loc_11FE6AF
  loc_11FE6AF:       ' Referenced from:     11FE6AC
  loc_11FE6AF:     End If
  loc_11FE6AF:   End If
  loc_11FE6AF: End If
  loc_11FE6B8: CVarUnk
  loc_11FE6BD: VerifyVarObj
  loc_11FE6C3: Set var_88 = Me.DGTable
  loc_11FE6C9: LateIdStAd
  loc_11FE6D7: Exit Sub
End Sub

Public Sub Proc_229_89_EFB31C(arg_C, arg_10, arg_14) 'EFB31C
  'Data Table: 542AE4
  Dim var_8A As Integer
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  loc_EFB265: var_88 = vbNullString
  loc_EFB27C: arg_C = CStr(Trim(arg_C))
  loc_EFB288: var_8A = CInt(Len(arg_C))
  loc_EFB299: If (arg_10 = "D") Then
  loc_EFB2CE:   var_E0 = (Chr(&HE) + Chr(&HF))
  loc_EFB2DB:   var_F0 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_EFB2F5:   var_130 = (var_E0 + Space(CLng((var_F0 / 2))))
  loc_EFB2FF:   var_150 = (var_130 + CVar(arg_C))
  loc_EFB304:   var_88 = CStr(var_150)
  loc_EFB316: End If
  loc_EFB316: Proc_229_89_EFB31C = var_8A
End Sub

Public Sub Proc_229_90_12027B8(arg_C, arg_10, arg_14) '12027B8
  'Data Table: 542AE4
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
  loc_1202355: var_90 = vbNullString
  loc_120235B: var_94 = vbNullString
  loc_1202361: var_98 = vbNullString
  loc_1202367: var_9C = vbNullString
  loc_1202372: If (MemVar_1F953C4 = "Y") Then
  loc_120237C:   var_E0 = vbNullString & "DATE "
  loc_12023AD:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_12023C0: End If
  loc_12023C8: If (MemVar_1F953C8 = "Y") Then
  loc_120242C:   var_164 = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, "dd/MM/yy")))), 0))
  loc_1202453:   var_1B4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_120245B:   var_1D4 = (var_164 - Len(var_1B4))
  loc_120246C:   var_204 = (CVar(var_8C) + Space(CLng(var_1D4)))
  loc_1202475:   var_224 = (var_204 + " PAGE NO ")
  loc_1202497:   var_264 = (var_224 + Trim(Str(arg_C)))
  loc_120249C:   var_8C = CStr(var_264)
  loc_12024C9: End If
  loc_12024D7: If (MemVar_1F953CC = "K") Then
  loc_12024E4:   If (Len(MemVar_1F95130) <= &H28) Then
  loc_12024FD:     var_DC = (CVar(var_90) + Chr(&HF))
  loc_1202511:     var_134 = (Format(MemVar_1F950EC, "dd/MM/yy") + Chr(&HE))
  loc_1202525:     var_164 = (0 + Chr(&H1B))
  loc_1202539:     var_194 = (var_164 + Chr(&H45))
  loc_1202543:     var_1B4 = (Trim(Str(arg_C)) + CVar(MemVar_1F95130))
  loc_1202557:     var_1D4 = (var_1B4 + Chr(&H1B))
  loc_120256B:     var_204 = (var_1D4 + Chr(&H46))
  loc_120257F:     var_244 = (var_204 + Chr(&HE))
  loc_1202584:     var_90 = CStr(Str(arg_C))
  loc_12025AB:   Else
  loc_12025C1:     var_DC = (CVar(var_90) + Chr(&H12))
  loc_12025D5:     var_134 = (Format(MemVar_1F950EC, "dd/MM/yy") + Chr(&HE))
  loc_12025E9:     var_164 = (0 + Chr(&HF))
  loc_12025F3:     var_184 = (var_164 + CVar(MemVar_1F95130))
  loc_1202607:     var_1B4 = (Chr(&H45) + Chr(&H12))
  loc_120260C:     var_90 = CStr(var_1B4)
  loc_1202624:   End If
  loc_120262E:   If (Len(MemVar_1F95134) > 0) Then
  loc_120265A:     Call Proc_229_89_EFB31C(MemVar_1F95134, "D", CInt(Val(CStr(arg_14))))
  loc_1202663:     var_94 = var_270 & var_270
  loc_120266F:   End If
  loc_1202679:   If (Len(MemVar_1F95138) > 0) Then
  loc_12026A5:     Call Proc_229_89_EFB31C(MemVar_1F95138, "D", CInt(Val(CStr(arg_14))))
  loc_12026AE:     var_98 = var_270 & var_270
  loc_12026BA:   End If
  loc_12026C4:   If (Len(MemVar_1F9513C) > 0) Then
  loc_12026F0:     Call Proc_229_89_EFB31C(MemVar_1F9513C, "D", CInt(Val(CStr(arg_14))))
  loc_12026F9:     var_9C = var_270 & var_270
  loc_1202705:   End If
  loc_1202705: End If
  loc_120270F: If (Len(var_8C) > 0) Then
  loc_1202717:   Print 1, var_8C
  loc_1202723:   arg_10 = (arg_10 + 1)
  loc_1202726: End If
  loc_1202730: If (Len(var_90) > 0) Then
  loc_1202738:   Print 1, var_90
  loc_1202744:   arg_10 = (arg_10 + 1)
  loc_1202747: End If
  loc_1202751: If (Len(var_94) > 0) Then
  loc_1202759:   Print 1, var_94
  loc_1202765:   arg_10 = (arg_10 + 1)
  loc_1202768: End If
  loc_1202772: If (Len(var_98) > 0) Then
  loc_120277A:   Print 1, var_98
  loc_1202786:   arg_10 = (arg_10 + 1)
  loc_1202789: End If
  loc_1202793: If (Len(var_9C) > 0) Then
  loc_120279B:   Print 1, var_9C
  loc_12027A7:   arg_10 = (arg_10 + 1)
  loc_12027AA: End If
  loc_12027B0: Proc_229_90_12027B8 = arg_10
End Sub

Public Sub Proc_229_91_F20E88(arg_C, arg_10, arg_14) 'F20E88
  'Data Table: 542AE4
  Dim unk_542AFA As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F20DCD: Proc_6_7_F26918(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F20DFF: unk_542AFA.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' Order by Appdate Desc"), -1, var_15C
  loc_F20E0A: Set var_90 = var_15C
  loc_F20E3C: If (var_90.RecordCount > 0) Then
  loc_F20E6A:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F20E7A: Else
  loc_F20E7D:   var_8C = CDbl(0)
  loc_F20E80: End If
  loc_F20E80: Proc_229_91_F20E88 = var_8C
End Sub

Public Sub Proc_229_92_12622BC
  'Data Table: 542AE4
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
  Dim unk_542AFA As Connection15
  Dim var_88 As Recordset15
  loc_1261DDE: Set var_9C = Me.Txt
  loc_1261DE4: Call 0.Method_Proc_229_92_12622BC0 (CInt(1), var_A0)
  loc_1261E12: var_94 = CInt(CLng(Me.FGrid.Row))
  loc_1261E38: If (CLng(Me.FGrid.Col) = CLng(9)) Then
  loc_1261E4E:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1261E53:   var_E4 = 1
  loc_1261E66:   var_104 = Me.FGrid.TextMatrix)
  loc_1261E8A:   var_150 = &HA
  loc_1261E9D:   var_174 = Me.FGrid.TextMatrix)
  loc_1261EE6:   var_344 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1261EF5:   Set var_1FC = Me.Txt
  loc_1261EFB:   Call 0.Method_Proc_229_92_12622BC0 (1, var_200, var_204, var_344, CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), var_174)
  loc_1261F03:   var_150 = var_200.Text
  loc_1261F11:   Proc_6_7_F26918(var_224, CVar(var_204), CVar(CLng(Me.FGrid.Row)), var_104)
  loc_1261F55:   var_A4 = "SELECT SD.RestCode, Depart.ShortName, IM.DispCode, FD.FreeItem, IM.NAME as FreeItemName, IM.Unit, FD.FreeQty, I1.code as MainCode,I1.Name, SD.Qty FROM SchemeItemDetail SD JOIN FreeItemDetail FD ON SD.Code = FD.Code And SD.RestCode = FD.RestCode JOIN ItemMast IM on FD.FreeItem=IM.Code And FD.RestCode=IM.RestCode Join Depart on SD.RestCode=Depart.Code Join Itemmast I1 on SD.Itemcode=I1.code And SD.RestCode=I1.RestCode " & " WHERE SD.restCode='"
  loc_1261F8C:   var_234 = CVar(var_A4 & CStr(var_104) & "' AND SD.ItemCode ='" & CStr(var_174) & "' AND SD.Qty <=" & CStr(var_344) & " AND ") 'String
  loc_1261FAE:   var_2A4 = var_234 & var_224 & " Between SD.Appdate And SD.EndDate AND SD.LogSite_Code='" & CVar(MemVar_1F95078) & "' AND SD.Active='Y' And ISNULL(SD.Days,'') Like '%" 
  loc_1261FCC:   unk_542AFA.Execute CStr(var_2A4 & Trim(Str(Weekday(Me.FGrid.Text, 1))) & "%' Order By SD.Qty Desc"), var_338, -1
  loc_1261FD7:   Set var_88 = var_33C
  loc_1262045:   If (var_88.RecordCount > 0) Then
  loc_12620AB:     var_90 = CStr(var_88.Fields.Item("Maincode").Value)
  loc_12620DE:     For var_34C = var_94 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_34C 'Integer
  loc_12620F7:       Me.FGrid.Row = CVar(CLng(var_92))
  loc_1262132:       If (CLng(Me.FGrid.CellBackColor) = Me.lblclr.BackColor) Then
  loc_1262139:         var_C4 = CVar(CLng(var_92)) 'Long
  loc_126213E:         var_E4 = &HA
  loc_126216D:         If (CStr(Me.FGrid.TextMatrix)) = CStr(var_88.Fields.Item("FreeItem").Value)) Then
  loc_1262174:           var_C4 = CVar(CLng(var_94)) 'Long
  loc_126217C:           var_E4 = CVar(CLng(9)) 'Long
  loc_12621A7:           If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_12621AE:             var_C4 = CVar(CLng(var_92)) 'Long
  loc_12621B6:             var_E4 = CVar(CLng(9)) 'Long
  loc_12621BB:             var_130 = "Yes"
  loc_12621C5:             Set var_9C = Me.FGrid
  loc_12621CB:             LateIdCallSt
  loc_12621D9:           Else
  loc_12621DD:             var_C4 = CVar(CLng(var_94)) 'Long
  loc_12621E5:             var_E4 = CVar(CLng(9)) 'Long
  loc_1262210:             If (CStr(Me.FGrid.TextMatrix)) = "No") Then
  loc_1262217:               var_C4 = CVar(CLng(var_92)) 'Long
  loc_126221F:               var_E4 = CVar(CLng(9)) 'Long
  loc_1262224:               var_130 = "No"
  loc_126222E:               Set var_9C = Me.FGrid
  loc_1262234:               LateIdCallSt
  loc_1262242:             Else
  loc_1262246:               var_C4 = CVar(CLng(var_94)) 'Long
  loc_126224E:               var_E4 = CVar(CLng(9)) 'Long
  loc_1262279:               If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1262280:                 var_C4 = CVar(CLng(var_92)) 'Long
  loc_1262288:                 var_E4 = CVar(CLng(9)) 'Long
  loc_126228D:                 var_130 = vbNullString
  loc_1262297:                 Set var_9C = Me.FGrid
  loc_126229D:                 LateIdCallSt
  loc_12622A8:               End If
  loc_12622A8:             End If
  loc_12622A8:           End If
  loc_12622A8:           Exit For
  loc_12622AB:         End If
  loc_12622AB:       End If
  loc_12622AE:     Next var_34C 'Integer
  loc_12622B3:     ' Referenced from: 12622A8
  loc_12622B3:   End If
  loc_12622B3: End If
  loc_12622B8: Set var_88 = Nothing
  loc_12622BB: Exit Sub
End Sub
