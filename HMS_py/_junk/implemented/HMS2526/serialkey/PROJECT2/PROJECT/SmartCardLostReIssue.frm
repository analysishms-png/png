VERSION 5.00
Begin VB.Form SmartCardLostReIssue
  Caption = "Smart Lost/ReIssue Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11520
  ClientHeight = 5760
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11520
    Height = 450
    TabIndex = 36
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 4305
    Width = 1380
    Height = 285
    TabIndex = 34
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
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
    Left = 2490
    Top = 4305
    Width = 1380
    Height = 285
    TabIndex = 32
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
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
    Top = 1200
    Width = 1380
    Height = 285
    TabIndex = 27
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    Left = 7020
    Top = 60
    Width = 2760
    Height = 240
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 21
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2505
    Top = 4935
    Width = 5475
    Height = 825
    TabIndex = 9
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 4620
    Width = 1380
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2145
    Width = 5475
    Height = 285
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2775
    Width = 5460
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 20
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin PictureBox Picture1
    Left = 13515
    Top = 7350
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 17
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
  Begin PictureBox Picture3
    Left = 13470
    Top = 6975
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 16
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
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 1830
    Width = 1380
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 1515
    Width = 1380
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 3990
    Width = 5475
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1830
    Width = 1380
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 3090
    Width = 5475
    Height = 870
    TabIndex = 4
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 125
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2460
    Width = 5475
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1515
    Width = 1380
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 15
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1200
    Width = 1380
    Height = 285
    TabIndex = 28
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3885
    Top = 1200
    Width = 630
    Height = 285
    TabIndex = 30
    BorderStyle = 0 'None
    MaxLength = 5
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin BtnEnh CmdCardScan
    Left = 2430
    Top = 570
    Width = 5625
    Height = 540
    TabIndex = 37
  End
  Begin Label LblName
    Caption = "Current Security Balance"
    Index = 11
    ForeColor = &HFF0000&
    Left = 4200
    Top = 4320
    Width = 2385
    Height = 285
    TabIndex = 35
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
  Begin Label LblName
    Caption = "Current Balance"
    Index = 10
    ForeColor = &HFF0000&
    Left = 825
    Top = 4305
    Width = 1545
    Height = 285
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
  Begin Label LblName
    Caption = "Transaction ID"
    Index = 9
    ForeColor = &HFF0000&
    Left = 5145
    Top = 1200
    Width = 1365
    Height = 285
    TabIndex = 31
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
  Begin Label LblName
    Caption = "Date"
    Index = 8
    ForeColor = &HFF0000&
    Left = 825
    Top = 1185
    Width = 435
    Height = 285
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
  Begin Label LblName
    Caption = "Remark"
    Index = 7
    ForeColor = &HFF0000&
    Left = 825
    Top = 4950
    Width = 735
    Height = 285
    TabIndex = 26
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
  Begin Label LblName
    Caption = "Valid Upto Date"
    Index = 5
    ForeColor = &HFF0000&
    Left = 825
    Top = 4620
    Width = 1485
    Height = 285
    TabIndex = 25
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
  Begin Label LblName
    Caption = "Member Name"
    Index = 3
    ForeColor = &HFF0000&
    Left = 825
    Top = 2145
    Width = 1395
    Height = 240
    TabIndex = 23
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
  Begin Image ImgSign
    Left = 8160
    Top = 3525
    Width = 2325
    Height = 705
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Image ImgPhoto
    Left = 8235
    Top = 1215
    Width = 2055
    Height = 2280
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Label LblPhoto
    Caption = "Photo"
    ForeColor = &H80&
    Left = 9030
    Top = 2220
    Width = 510
    Height = 240
    TabIndex = 21
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblSign
    Caption = "Signature"
    ForeColor = &H80&
    Left = 8910
    Top = 3690
    Width = 825
    Height = 240
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Member ID"
    Index = 4
    ForeColor = &HFF0000&
    Left = 825
    Top = 2775
    Width = 1035
    Height = 285
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
  Begin Label LblName
    Caption = "Mobile No."
    Index = 1
    ForeColor = &HFF0000&
    Left = 840
    Top = 3990
    Width = 1020
    Height = 240
    TabIndex = 18
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
  Begin Label LblName
    Caption = "Issue Date"
    Index = 0
    ForeColor = &HFF0000&
    Left = 5145
    Top = 1515
    Width = 975
    Height = 285
    TabIndex = 15
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
  Begin Label LblName
    Caption = "Valid Upto Date"
    Index = 4
    ForeColor = &HFF0000&
    Left = 825
    Top = 1830
    Width = 1485
    Height = 285
    TabIndex = 14
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
  Begin Label LblLedgerAc
    Caption = "Address"
    Index = 0
    ForeColor = &HFF0000&
    Left = 825
    Top = 3090
    Width = 750
    Height = 285
    TabIndex = 13
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
  Begin Label LblName
    Caption = "Blocked"
    Index = 6
    ForeColor = &HFF0000&
    Left = 5160
    Top = 1830
    Width = 765
    Height = 285
    TabIndex = 12
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
  Begin Label LblName
    Caption = "Account Name"
    Index = 2
    ForeColor = &HFF0000&
    Left = 825
    Top = 2460
    Width = 1380
    Height = 240
    TabIndex = 11
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
  Begin Label LblLedgerAc
    Caption = "Card Type"
    Index = 2
    ForeColor = &HFF0000&
    Left = 825
    Top = 1515
    Width = 975
    Height = 285
    TabIndex = 10
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

Attribute VB_Name = "SmartCardLostReIssue"

Private global_72 As Byte

Private Sub TopCtrl1_UnknownEvent_A 'F846D4
  'Data Table: 453278
  Dim var_108 As String
  Dim var_114 As TextBox
  loc_F84584: On Error Goto loc_F84690
  loc_F84592: If (global_68 = vbNullString) Then
  loc_F845B6:   MsgBox("Please Scan A Fress Card First.", &H40, "Smart Card Validation", var_E4, var_104)
  loc_F845C6:   Exit Sub
  loc_F845C7: End If
  loc_F845D2: If (global_60 = vbNullString) Then
  loc_F845F6:   MsgBox("Please Select Previous Card Detail.", &H40, "Smart Card Validation", var_E4, var_104)
  loc_F84606:   Exit Sub
  loc_F84607: End If
  loc_F8462A: Call Proc_282_20_10986F8(Proc_5_1_100EC1C("ADD", Me))
  loc_F84635: Call Proc_282_22_F0CB60(global_52)
  loc_F8463F: var_108 = CStr(MemVar_1F950EC)
  loc_F8464D: Set var_10C = Me.Txt
  loc_F84653: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HD), var_114)
  loc_F8465B: var_114.Text = var_108
  loc_F84675: Set var_10C = Me.Txt
  loc_F8467B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9))
  loc_F84683: var_114.SetFocus
  loc_F8468F: Exit Sub
  loc_F84690: ' Referenced from: F84584
  loc_F84698: Set var_10C = Err()
  loc_F8469E: Call 0.Method_arg_2C (var_108)
  loc_F846BF: MsgBox(CVar(var_108), &H40, "Information", var_E4, var_104)
  loc_F846D2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB98B0
  'Data Table: 453278
  loc_EB981C: On Error Goto loc_EB98A7
  loc_EB9856: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EB9865:   Set var_110 = Me
  loc_EB987C:   Call Proc_282_20_10986F8(Proc_5_1_100EC1C("INI", var_110))
  loc_EB9887:   Call Proc_282_23_13874D8(global_52)
  loc_EB988F: Else
  loc_EB9895:   Call 0.Method_arg_1E8 (var_110)
  loc_EB989D:   Call var_110.SetFocus
  loc_EB98A6: End If
  loc_EB98A6: Exit Sub
  loc_EB98A7: ' Referenced from: EB981C
  loc_EB98A7: Proc_6_60_E63754()
  loc_EB98AC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A14C
  'Data Table: 453278
  loc_E1A141: Me.Global.Unload Me
  loc_E1A149: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF4148
  'Data Table: 453278
  Dim Me As Recordset15
  loc_EF4080: On Error Goto loc_EF40E3
  loc_EF408A: global_72 = CByte(0)
  loc_EF4097: var_88 = Me.RecordCount
  loc_EF40A5: If (var_88 > 0) Then
  loc_EF40AB:   MemVar_1F950E4 = "SELECT SCL.Trans_Id As Searchcode,SCL.Trans_Id,SCL.CardRegId,Convert(Varchar(11),SCL.IssDate,103) VDate,SCL.Remark,SCL.U_Name,SCR.CardType,SCR.Name,SCR.CardNo,S.Name MemberName From SmartCardReIssueDetail SCL Inner Join SmartCardRegistration SCR On SCL.CardRegId=SCR.Code Left Join MemberFamily MF On SCR.Code=MF.CardRegId Left Join Subgroup S On SCR.MemberCode=S.SubCode Order By SCL.Trans_Id"
  loc_EF40B2:   var_8C = "900,1000,900,3000,800,800,2500,1000,2500"
  loc_EF40B8:   Proc_6_126_F1C850(var_8C)
  loc_EF40C6:   MemVar_1F95120 = Me
  loc_EF40DD:   Call 0.Method_arg_2B0 (1, var_AC)
  loc_EF40E2: End If
  loc_EF40E2: Exit Sub
  loc_EF40E3: ' Referenced from: EF4080
  loc_EF40EB: Set var_B0 = Err()
  loc_EF40F1: Call 0.Method_arg_1C (var_88)
  loc_EF4102: If (var_88 <> 0) Then
  loc_EF410D:   Set var_B0 = Err()
  loc_EF4113:   Call 0.Method_arg_2C (var_8C)
  loc_EF4134:   MsgBox(CVar(var_8C), &H40, "Validation", var_E0, var_100)
  loc_EF4147: End If
  loc_EF4147: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E348C8
  'Data Table: 453278
  loc_E348B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E348C0: Call Proc_282_23_13874D8(global_52)
  loc_E348C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E349E8
  'Data Table: 453278
  loc_E349D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E349E0: Call Proc_282_23_13874D8(global_52)
  loc_E349E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E34988
  'Data Table: 453278
  loc_E34978: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34980: Call Proc_282_23_13874D8(global_52)
  loc_E34985: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34928
  'Data Table: 453278
  loc_E34918: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34920: Call Proc_282_23_13874D8(global_52)
  loc_E34925: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '114DE48
  'Data Table: 453278
  Dim var_B8 As String
  Dim var_D8 As Variant
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_8C As Field20
  Dim var_E8 As Variant
  Dim var_F8 As String
  Dim var_108 As Variant
  Dim var_10C As String
  Dim unk_453286 As Connection15
  Dim var_A0 As Recordset15
  Dim var_146 As Integer
  loc_114DACB: Set var_88 = Me.Txt
  loc_114DAD1: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HD))
  loc_114DAEB: If (IsDate(CVar(var_8C)) = 0) Then
  loc_114DAEE:   Exit Sub
  loc_114DAEF: End If
  loc_114DAEF: On Error Goto loc_114DDFE
  loc_114DB06: var_B8 = "SELECT SCL.Trans_Id,SCL.CardRegId,SCL.IssDate,SCL.Remark,SCL.U_Name,SCL.U_EntDt,SCR.CurrBal,SCR.SecurBal,SCR.CardType,SCR.Name,SCR.CardNo,SCR.Addr,SCR.Phone,SCL.ValidUpto,SCR.BlockedYN,SCL.HW_Id,SCL.OldHW_Id,SCL.OldIssDate,SCL.OldValidUpto,SCR.MemberCode,MF.PicPath,MF.SigPath,S.Name MemberName From SmartCardReIssueDetail SCL Inner Join SmartCardRegistration SCR On SCL.CardRegId=SCR.Code Left Join MemberFamily MF On SCR.Code=MF.CardRegId Left Join Subgroup S On SCR.MemberCode=S.SubCode And SCL.LogSite_Code='" & MemVar_1F95078
  loc_114DB0D: var_D8 = CVar(var_B8 & "' Where SCL.Trans_Id=") 'String
  loc_114DB3D: var_E8 = var_D8 & Me.Fields.Item("SearchCode").Value 
  loc_114DB41: var_F8 = " Order By SCL.Trans_Id"
  loc_114DB46: var_108 = var_E8 & var_F8 
  loc_114DB54: unk_453286.Execute CStr(var_108), var_12C, -1
  loc_114DB5F: Set var_A0 = var_130
  loc_114DB85: var_134 = var_A0.RecordCount
  loc_114DB93: If (var_134 = 0) Then
  loc_114DBAF:   MsgBox("No Record Present For Printing", 0, var_D8, var_E8, var_108)
  loc_114DBBF:   Exit Sub
  loc_114DBC0: End If
  loc_114DBCF: var_10C = MemVar_1F950B4 & "\CardReIssueDetail.ttx"
  loc_114DBD6: Set var_88 = var_A0 
  loc_114DBE2: var_146 = CreateFieldDefFile(var_88, var_10C, &HFF)
  loc_114DBEC: Set var_A0 = var_88
  loc_114DBF2: var_C8 = CVar(var_146) 'Integer
  loc_114DBF5: var_B0 = var_C8 'Variant
  loc_114DC11: var_B8 = MemVar_1F950B4 & "\CardReIssueDetail.RPT"
  loc_114DC1A: Call 0.Method_arg_1C (var_B8, var_C8, var_88)
  loc_114DC25: MemVar_1F951E8 = var_88
  loc_114DC40: Call 0.Method_arg_90 (var_88, var_134, var_B2, 1)
  loc_114DC48: Call 0.Method_arg_24 (var_146, var_130)
  loc_114DC54: For var_14A =  To CInt(var_134): var_8C = var_14A 'Integer
  loc_114DC6D:   Call 0.Method_arg_90 (var_88, CLng(var_B2))
  loc_114DC75:   Call 0.Method_arg_20 (Me.Fields.Item("SearchCode"))
  loc_114DC7D:   Call 0.Method_arg_30 (var_B8)
  loc_114DC93:   var_15C = Ucase(CVar(var_B8)) 'Variant
  loc_114DCC3:   If (var_15C = Ucase("Title")) Then
  loc_114DCD9:     Call 0.Method_arg_90 (var_88, CLng(var_B2))
  loc_114DCE1:     Call 0.Method_arg_20 (Me.Fields.Item("SearchCode"))
  loc_114DCE9:     Call 0.Method_arg_38 ("'Re-Issued Card Detail'")
  loc_114DCF8:   Else
  loc_114DD09:     var_D8 = Ucase("PrintedBy")
  loc_114DD1A:     If (var_15C = var_D8) Then
  loc_114DD28:       Proc_6_17_EAAE40(var_D8)
  loc_114DD30:       var_B8 = CStr(var_D8)
  loc_114DD44:       Call 0.Method_arg_90 (var_88, CLng(var_B2), Me.Fields.Item("SearchCode"))
  loc_114DD4C:       Call 0.Method_arg_20 (var_B8)
  loc_114DD54:       Call 0.Method_arg_38 (CVar(Proc_6_13_E8C9C0()))
  loc_114DD6A:     End If
  loc_114DD6A:   End If
  loc_114DD6D: Next var_14A 'Integer
  loc_114DD8B: Call 0.Method_arg_64 (var_88, CVar(var_A0))
  loc_114DD93: Call 0.Method_arg_2C (var_F8)
  loc_114DDA1: Call 0.Method_arg_150 (var_11C)
  loc_114DDAC: Call 0.Method_arg_50 (var_B8)
  loc_114DDB6: Set var_8C = Nothing
  loc_114DDD0: Set var_88 = MemVar_1F951E8 
  loc_114DDDC: Proc_6_99_1484404(var_88, 0, var_B8)
  loc_114DDE7: MemVar_1F951E8 = var_88
  loc_114DDFA: Set var_A0 = Nothing
  loc_114DDFD: Exit Sub
  loc_114DDFE: ' Referenced from: 114DAEF
  loc_114DE06: Set var_88 = Err()
  loc_114DE0C: Call 0.Method_arg_2C (var_B8, &HFF)
  loc_114DE17: Call 0.Method_arg_50 (var_10C)
  loc_114DE33: MsgBox(CVar(var_B8), &H10, CVar(var_10C), var_E8, var_108)
  loc_114DE46: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0AC14
  'Data Table: 453278
  Dim Me As Recordset15
  loc_E0AC0B: Me.Requery -1
  loc_E0AC10: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13F0A1C
  'Data Table: 453278
  Dim var_C4 As String
  Dim var_12C As TextBox
  Dim var_11C As TextBox
  Dim unk_453286 As Connection15
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_21C As Variant
  Dim var_3AC As Variant
  Dim var_124 As String
  Dim var_114 As Variant
  Dim var_184 As Variant
  Dim var_B4 As Variant
  Dim var_130 As String
  Dim var_4C0 As Double
  Dim var_20C As TextBox
  Dim var_4C8 As Double
  Dim Me As Recordset15
  loc_13F00C8: On Error Goto loc_13F0974
  loc_13F00D6: If (global_68 = vbNullString) Then
  loc_13F00FA:   MsgBox("Please Scan A Fress Card First.", &H40, "Smart Card Validation", var_F4, var_114)
  loc_13F010A:   Exit Sub
  loc_13F010B: End If
  loc_13F0116: If (global_60 = vbNullString) Then
  loc_13F013A:   MsgBox("Please Select Previous Card Detail.", &H40, "Smart Card Validation", var_F4, var_114)
  loc_13F014A:   Exit Sub
  loc_13F014B: End If
  loc_13F0156: Set var_118 = Me.Txt
  loc_13F015C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD))
  loc_13F0185: If (Proc_183_19_E8E68C(var_11C, "Valid Upto Date") = 0) Then
  loc_13F0188:   Exit Sub
  loc_13F0189: End If
  loc_13F0194: Set var_118 = Me.Txt
  loc_13F019A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_11C)
  loc_13F01C3: If (Proc_183_19_E8E68C(var_11C, "Valid Upto Date") = 0) Then
  loc_13F01CD:   Call Txt_GotFocus()
  loc_13F01D2:   Exit Sub
  loc_13F01D3: End If
  loc_13F01E1: Set var_120 = Me.Txt
  loc_13F01E7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_12C, var_130)
  loc_13F01EF: CInt(7) = var_12C.Text
  loc_13F0202: Set var_118 = Me.Txt
  loc_13F0208: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_11C)
  loc_13F0232: If (CDate(var_11C.Text) < CDate(var_130)) Then
  loc_13F0250:   var_B4 = "Valid Upto Date should be greater than Issue Date."
  loc_13F0256:   MsgBox(var_B4, &H10, "Validation Error", var_F4, var_114)
  loc_13F026D:   Call Txt_GotFocus()
  loc_13F0272:   Exit Sub
  loc_13F0273: End If
  loc_13F027C: unk_453286.BeginTrans var_134
  loc_13F0285: var_92 = CByte(1) 'Byte
  loc_13F029A: If (Proc_275_11_10CC4B0(var_88, var_90, var_8C) = 0) Then
  loc_13F029D:   GoTo loc_13F0974
  loc_13F02A0: End If
  loc_13F02AB: If (global_68 = var_8C) Then
  loc_13F02BB:   var_C4 = "Insert Into SmartCardReIssueDetail(CardRegId,HW_Id,IssDate,ValidUpto,Remark,OldHW_Id,OldIssDate,OldValidUpto,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code) Values("
  loc_13F02CE:   Proc_6_17_EAAE40(var_B4, global_60, var_C4, var_4AC)
  loc_13F02D6:   var_D4 = -1 & var_B4 
  loc_13F02EE:   Proc_6_17_EAAE40(var_114, var_8C, "Validation Error" & ",")
  loc_13F02F6:   var_144 = var_4B0 & var_114 
  loc_13F030E:   Set var_118 = Me.Txt
  loc_13F0314:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_11C, var_144 & ",")
  loc_13F0323:   Proc_6_7_F26918(var_184, CVar(var_11C))
  loc_13F032B:   var_194 = CInt(7) & var_184 
  loc_13F0343:   Set var_120 = Me.Txt
  loc_13F0349:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_12C)
  loc_13F0358:   Proc_6_7_F26918(var_1D4, CVar(var_12C))
  loc_13F0378:   Set var_208 = Me.Txt
  loc_13F037E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_20C)
  loc_13F0398:   Proc_6_17_EAAE40(var_23C, Trim(CVar(var_20C)))
  loc_13F03BB:   Proc_6_17_EAAE40(var_28C, global_64)
  loc_13F03DB:   Set var_2C0 = Me.Txt
  loc_13F03E1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2C4)
  loc_13F03F0:   Proc_6_7_F26918(var_2E4, CVar(var_2C4))
  loc_13F0410:   Set var_318 = Me.Txt
  loc_13F0416:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_31C)
  loc_13F0425:   Proc_6_7_F26918(var_33C, CVar(var_31C))
  loc_13F0449:   var_3AC = var_194 & "," & var_1D4 & "," & var_23C & "," & var_28C & "," & var_2E4 & "," & var_33C & ",'" & CVar(MemVar_1F95070) & "','" 
  loc_13F046B:   Proc_183_8_EB1634(var_40C, CVar(Proc_6_14_EF402C(var_3AC & CVar(MemVar_1F950C8) & "',")))
  loc_13F048B:   Proc_6_17_EAAE40(var_45C, MemVar_1F95078)
  loc_13F04AA:   unk_453286.Execute CStr(var_11C & var_40C & ",'A'," & var_45C & ")"), , 
  loc_13F0535:   Proc_6_17_EAAE40(var_B4, var_8C, "Update SmartCardRegistration Set SerialNo=")
  loc_13F0555:   Set var_118 = Me.Txt
  loc_13F055B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_11C, var_23C & var_B4 & ",IssDate=")
  loc_13F056A:   Proc_6_7_F26918(var_144, CVar(var_11C))
  loc_13F0572:   var_164 = -1 & var_144 
  loc_13F058A:   Set var_120 = Me.Txt
  loc_13F0590:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_12C)
  loc_13F059F:   Proc_6_7_F26918(var_194, CVar(var_12C))
  loc_13F05C2:   Proc_6_17_EAAE40(var_1D4, global_60)
  loc_13F05EA:   var_124 = CStr(var_144 & "," & ",ValidUpto=" & var_194 & " Where Code=" & var_1D4 & " And LogSite_Code='" & CVar(MemVar_1F95078) & "'")
  loc_13F05F4:   unk_453286.Execute var_124, var_208, 
  loc_13F0647:   Proc_6_17_EAAE40(var_B4, var_8C, "Update MemberFamily Set HW_Id=")
  loc_13F064F:   var_D4 = var_23C & var_B4 
  loc_13F0667:   Set var_118 = Me.Txt
  loc_13F066D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_11C, var_D4 & ",CardIssDate=")
  loc_13F067C:   Proc_6_7_F26918(var_144, CVar(var_11C))
  loc_13F0684:   var_164 = -1 & var_144 
  loc_13F06A2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_12C)
  loc_13F06AA:   var_184 = CVar(var_12C) 'Address
  loc_13F06B1:   Proc_6_7_F26918(var_194, var_184)
  loc_13F06D4:   Proc_6_17_EAAE40(var_1D4, global_60)
  loc_13F06EF:   var_21C = var_144 & "," & ",CardValidUpto=" & var_194 & " Where CardRegId=" & var_1D4 & " And LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_13F06FC:   var_124 = CStr(var_21C & "'")
  loc_13F0706:   unk_453286.Execute var_124, var_208, 
  loc_13F075C:   Set var_118 = Me.Txt
  loc_13F0762:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_11C, var_124, "Update SmartCardMaster Set MemberCode=")
  loc_13F076A:   var_1B4 = var_11C.Tag
  loc_13F0778:   Proc_6_17_EAAE40(var_D4, CVar(var_124))
  loc_13F0780:   var_F4 = -1 & var_D4 
  loc_13F079B:   Proc_6_17_EAAE40(var_144, global_60)
  loc_13F07BB:   Proc_6_17_EAAE40(var_184, var_8C)
  loc_13F07C7:   var_130 = CStr(var_D4 & ",CardIssDate=" & ",CardRegId=" & var_144 & " Where HW_Id=" & var_184)
  loc_13F07D1:   unk_453286.Execute var_130, Me.Txt, 
  loc_13F0817:   Set var_118 = Me.Txt
  loc_13F081D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_11C)
  loc_13F083C:   var_F4 = Left(Trim(CVar(var_11C)), &H14)
  loc_13F084F:   Set var_120 = Me.Txt
  loc_13F0855:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_12C)
  loc_13F086A:   var_4C0 = Val(var_12C.Text)
  loc_13F087B:   Set var_208 = Me.Txt
  loc_13F0881:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_20C, var_130)
  loc_13F0896:   var_4C8 = Val(var_130)
  loc_13F08A5:   var_114 = CVar(Proc_6_45_EADFB8(global_60)) 'String
  loc_13F08AB:   var_144 = (var_114 + var_F4)
  loc_13F08E0:   If (Proc_275_3_1212B74(CStr(var_144), var_20C.Text, var_4C8) = 0) Then
  loc_13F08E3:     GoTo loc_13F0974
  loc_13F08E6:   End If
  loc_13F08E9: Else
  loc_13F090A:   MsgBox("Smart Card is Changed", &H10, "Smart Card Verification", var_F4, var_114)
  loc_13F091D: Else
  loc_13F0923:   unk_453286.CommitTrans
  loc_13F092C:   var_92 = CByte(0) 'Byte
  loc_13F093B:   Me.Requery -1
  loc_13F0955:   var_124 = "INI"
  loc_13F0963:   Call Proc_282_20_10986F8(Proc_5_1_100EC1C(var_124, Me, global_52), var_8C)
  loc_13F096E:   Call TopCtrl1_UnknownEvent_11()
  loc_13F0973:   Exit Sub
  loc_13F0974: End If
  loc_13F0974: ' Referenced from: 13F08E3
  loc_13F0974: ' Referenced from: 13F029D
  loc_13F0974: ' Referenced from: 13F00C8
  loc_13F097D: If (CInt(var_92) = 1) Then
  loc_13F0986:   unk_453286.RollbackTrans
  loc_13F0996:   var_D4 = "Smart Card Detail"
  loc_13F09AC:   MsgBox("Transaction Failed.", &H10, var_D4, var_F4, var_114)
  loc_13F09BC: End If
  loc_13F09C4: Set var_118 = Err()
  loc_13F09CA: Call 0.Method_arg_1C (var_134, var_4C8)
  loc_13F09DB: If (var_134 <> 0) Then
  loc_13F09E6:   Set var_118 = Err()
  loc_13F09EC:   Call 0.Method_arg_2C (var_124)
  loc_13F0A05:   MsgBox(CVar(var_124), &H10, var_D4, var_F4, var_114)
  loc_13F0A18: End If
  loc_13F0A18: Exit Sub
End Sub

Private Sub CmdCardScan_UnknownEvent_9 'E59EA4
  'Data Table: 453278
  Dim Me As Recordset15
  loc_E59E68: Call Proc_282_21_EE9AE4()
  loc_E59E7E: If (Proc_275_11_10CC4B0(var_88, var_8C) = 0) Then
  loc_E59E81:   Exit Sub
  loc_E59E82: End If
  loc_E59E88: global_68 = var_90
  loc_E59E97: Me.Requery -1
  loc_E59E9C: Call Proc_282_26_E6A734(var_90)
  loc_E59EA1: Exit Sub
End Sub

Private Sub Form_Load() 'F8C39C
  'Data Table: 453278
  Dim var_8C As String
  Dim unk_453286 As Connection15
  Dim var_B8 As Variant
  loc_F8C250: On Error Goto loc_F8C358
  loc_F8C25A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F8C273: var_8C = "SELECT R.Code As SearchCode,R.*,MF.PicPath,MF.SigPath,S.Name MemberName From SmartCardRegistration R Left Join MemberFamily MF On R.Code=MF.CardRegId Left Join Subgroup S On R.MemberCode=S.SubCode where R.Site_Code='" & MemVar_1F95070
  loc_F8C291: unk_453286.Execute var_8C & "' And (R.LOGSITE_CODE='" & MemVar_1F95078 & "' or R.LOGSITE_CODE='HO') Order By R.IssDate,R.Code", var_B8, -1
  loc_F8C2A2: Set global_56 = var_BC
  loc_F8C2CF: var_8C = "SELECT SCL.Trans_Id As Searchcode,SCL.Trans_Id,SCL.CardRegId,Convert(Varchar(11),SCL.IssDate,103) VDate,SCL.Remark,SCL.U_Name,SCL.U_EntDt,SCR.CurrBal,SCR.SecurBal,SCL.IssDate,SCR.CardType,SCR.Name,SCR.CardNo,SCR.Addr,SCR.Phone,SCL.ValidUpto,SCR.BlockedYN,SCL.HW_Id,SCL.OldHW_Id,SCL.OldIssDate,SCL.OldValidUpto,SCR.MemberCode,MF.PicPath,MF.SigPath,S.Name MemberName From SmartCardReIssueDetail SCL Inner Join SmartCardRegistration SCR On SCL.CardRegId=SCR.Code Left Join MemberFamily MF On SCR.Code=MF.CardRegId Left Join Subgroup S On SCR.MemberCode=S.SubCode And SCL.LogSite_Code='" & MemVar_1F95078
  loc_F8C2DF: unk_453286.Execute var_8C & "' Order By SCL.Trans_Id", var_B8, -1
  loc_F8C311: Set var_BC = Me
  loc_F8C31A: var_8C = "INI"
  loc_F8C328: Call Proc_282_20_10986F8(Proc_5_1_100EC1C(var_8C, var_BC, var_BC), var_BC)
  loc_F8C33C: Call 0.Method_arg_160 (var_BC)
  loc_F8C34A: Call 0.Method_arg_164 (var_BC)
  loc_F8C352: Call Proc_282_23_13874D8(var_BC)
  loc_F8C357: Exit Sub
  loc_F8C358: ' Referenced from: F8C250
  loc_F8C360: Set var_BC = Err()
  loc_F8C366: Call 0.Method_arg_2C (var_8C)
  loc_F8C387: MsgBox(CVar(var_8C), &H40, "Information", var_F4, var_114)
  loc_F8C39A: Exit Sub
  loc_F8C39B: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E14274
  'Data Table: 453278
  loc_E1426B: Set global_52 = Nothing
  loc_E14272: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E296D4
  'Data Table: 453278
  loc_E296AC: On Error Goto loc_E296CB
  loc_E296C3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E296CB: ' Referenced from: E296AC
  loc_E296CB: Proc_6_60_E63754(Shift)
  loc_E296D0: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E7C12C
  'Data Table: 453278
  Dim var_86 As Integer
  loc_E7C0DC: On Error Goto loc_E7C0E6
  loc_E7C0E2: var_86 = Index
  loc_E7C0E5: Exit Sub
  loc_E7C0E6: ' Referenced from: E7C0DC
  loc_E7C0EE: Set var_8C = Err()
  loc_E7C0F4: Call 0.Method_arg_2C (var_90)
  loc_E7C115: MsgBox(CVar(var_90), &H40, "Information", var_E0, var_100)
  loc_E7C128: Exit Sub
  loc_E7C129: Exit Sub
  loc_E7C12A: DOC
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E7C69C
  'Data Table: 453278
  Dim var_86 As Integer
  Dim var_88 As Integer
  loc_E7C637: var_86 = Shift
  loc_E7C644: If (CLng(Shift) = &H1B) Then
  loc_E7C647:   Exit Sub
  loc_E7C648: End If
  loc_E7C64B: var_88 = KeyCode
  loc_E7C66C: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HA))) Then
  loc_E7C675:   Proc_6_75_E5335C(Shift, arg_14)
  loc_E7C67A: End If
  loc_E7C68D: If ((CLng(Shift) = &H26) And (KeyCode <> CInt(9))) Then
  loc_E7C696:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E7C69B: End If
  loc_E7C69B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E08390
  'Data Table: 453278
  Dim var_86 As Integer
  loc_E08383: Proc_6_58_E06050(arg_10)
  loc_E0838B: var_86 = KeyAscii
  loc_E0838E: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'EE8168
  'Data Table: 453278
  Dim var_A0 As String
  Dim var_9C As TextBox
  loc_EE80BC: On Error Goto loc_EE8122
  loc_EE80CD: If (Cancel = CInt(9)) Then
  loc_EE80DA:   Set var_8C = Me.Txt
  loc_EE80E0:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_EE80F3:   var_A0 = Proc_6_33_15125B8(var_90)
  loc_EE8100:   Set var_98 = Me.Txt
  loc_EE8106:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_EE810E:   var_9C.Text = var_A0
  loc_EE8121: End If
  loc_EE8121: Exit Sub
  loc_EE8122: ' Referenced from: EE80BC
  loc_EE812A: Set var_8C = Err()
  loc_EE8130: Call 0.Method_arg_2C (var_A0)
  loc_EE8151: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_EE8164: Exit Sub
  loc_EE8165: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'F0A6F4
  'Data Table: 453278
  Dim Me As Recordset15
  Dim var_8C As String
  loc_F0A61B: var_88 = MyValue
  loc_F0A61E: On Error Goto loc_F0A6B0
  loc_F0A62D: If (CInt(global_72) = 0) Then
  loc_F0A636:   Me.MoveFirst
  loc_F0A650:   var_8C = "SearchCode='" & var_88
  loc_F0A660:   Me.Find var_8C & "'", 0, 1
  loc_F0A688:   Proc_5_0_1107AD0(&HFF, Me, global_52)
  loc_F0A690:   Call Proc_282_23_13874D8(0)
  loc_F0A698: Else
  loc_F0A6A4:   If (CInt(global_72) = 1) Then
  loc_F0A6AA:     Call Proc_282_24_12C4770(var_88)
  loc_F0A6AF:   End If
  loc_F0A6AF: End If
  loc_F0A6AF: Exit Sub
  loc_F0A6B0: ' Referenced from: F0A61E
  loc_F0A6B8: Set var_A8 = Err()
  loc_F0A6BE: Call 0.Method_arg_2C (var_8C)
  loc_F0A6DF: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_F0A6F2: Exit Sub
  loc_F0A6F3: Exit Sub
End Sub

Public Sub Proc_282_20_10986F8(arg_C) '10986F8
  'Data Table: 453278
  Dim var_98 As TextBox
  loc_109843E: Set var_8C = Me.Txt
  loc_1098444: Call 0.Method_Proc_282_20_10986F8C (var_8E, var_86)
  loc_1098454: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_109846A:   Set var_8C = Me.Txt
  loc_1098470:   Call 0.Method_Proc_282_20_10986F80 (CInt(var_86), var_98)
  loc_1098478:   var_98.Enabled = arg_C
  loc_1098487: Next var_92 'Byte
  loc_109849A: Set var_8C = Me.Txt
  loc_10984A0: Call 0.Method_Proc_282_20_10986F80 (CInt(0), var_98)
  loc_10984A8: var_98.Enabled = False
  loc_10984C1: Set var_8C = Me.Txt
  loc_10984C7: Call 0.Method_Proc_282_20_10986F80 (CInt(1), var_98)
  loc_10984CF: var_98.Enabled = False
  loc_10984E8: Set var_8C = Me.Txt
  loc_10984EE: Call 0.Method_Proc_282_20_10986F80 (CInt(2), var_98)
  loc_10984F6: var_98.Enabled = False
  loc_109850F: Set var_8C = Me.Txt
  loc_1098515: Call 0.Method_Proc_282_20_10986F80 (CInt(3), var_98)
  loc_109851D: var_98.Enabled = False
  loc_1098536: Set var_8C = Me.Txt
  loc_109853C: Call 0.Method_Proc_282_20_10986F80 (CInt(4), var_98)
  loc_1098544: var_98.Enabled = False
  loc_109855D: Set var_8C = Me.Txt
  loc_1098563: Call 0.Method_Proc_282_20_10986F80 (CInt(5), var_98)
  loc_109856B: var_98.Enabled = False
  loc_1098584: Set var_8C = Me.Txt
  loc_109858A: Call 0.Method_Proc_282_20_10986F80 (CInt(6), var_98)
  loc_1098592: var_98.Enabled = False
  loc_10985AB: Set var_8C = Me.Txt
  loc_10985B1: Call 0.Method_Proc_282_20_10986F80 (CInt(7), var_98)
  loc_10985B9: var_98.Enabled = False
  loc_10985D2: Set var_8C = Me.Txt
  loc_10985D8: Call 0.Method_Proc_282_20_10986F80 (CInt(8), var_98)
  loc_10985E0: var_98.Enabled = False
  loc_10985F9: Set var_8C = Me.Txt
  loc_10985FF: Call 0.Method_Proc_282_20_10986F80 (CInt(&HB), var_98)
  loc_1098607: var_98.Enabled = False
  loc_1098620: Set var_8C = Me.Txt
  loc_1098626: Call 0.Method_Proc_282_20_10986F80 (CInt(&HC), var_98)
  loc_109862E: var_98.Enabled = False
  loc_1098647: Set var_8C = Me.Txt
  loc_109864D: Call 0.Method_Proc_282_20_10986F80 (CInt(&HD), var_98)
  loc_1098655: var_98.Enabled = False
  loc_109866E: Set var_8C = Me.Txt
  loc_1098674: Call 0.Method_Proc_282_20_10986F80 (CInt(&HE), var_98)
  loc_109867C: var_98.Enabled = False
  loc_1098695: Set var_8C = Me.Txt
  loc_109869B: Call 0.Method_Proc_282_20_10986F80 (CInt(&HF), var_98)
  loc_10986A3: var_98.Enabled = False
  loc_10986BC: Set var_8C = Me.Txt
  loc_10986C2: Call 0.Method_Proc_282_20_10986F80 (CInt(&H10), var_98)
  loc_10986CA: var_98.Enabled = False
  loc_10986E3: Set var_8C = Me.CmdCardScan
  loc_10986E9: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_10986F4: Exit Sub
End Sub

Public Sub Proc_282_21_EE9AE4
  'Data Table: 453278
  Dim var_98 As TextBox
  loc_EE9A2E: Set var_8C = Me.Txt
  loc_EE9A34: Call 0.Method_Proc_282_21_EE9AE4C (var_8E, var_86)
  loc_EE9A44: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE9A5A:   Set var_8C = Me.Txt
  loc_EE9A60:   Call 0.Method_Proc_282_21_EE9AE40 (CInt(var_86), var_98)
  loc_EE9A68:   var_98.Text = vbNullString
  loc_EE9A84:   Set var_8C = Me.Txt
  loc_EE9A8A:   Call 0.Method_Proc_282_21_EE9AE40 (CInt(var_86), var_98)
  loc_EE9A92:   var_98.Tag = vbNullString
  loc_EE9AA1: Next var_92 'Byte
  loc_EE9AAD: global_60 = vbNullString
  loc_EE9AB7: global_64 = vbNullString
  loc_EE9AC1: global_68 = vbNullString
  loc_EE9AC8: var_A0 = vbNullString
  loc_EE9AD7: Call Proc_282_25_11DBA04(vbNullString)
  loc_EE9AE3: Exit Sub
End Sub

Public Sub Proc_282_22_F0CB60
  'Data Table: 453278
  Dim var_8C As TextBox
  loc_F0CA7A: Set var_88 = Me.Txt
  loc_F0CA80: Call 0.Method_Proc_282_22_F0CB600 (CInt(&HD), var_8C)
  loc_F0CA88: var_8C.Text = vbNullString
  loc_F0CAA2: Set var_88 = Me.Txt
  loc_F0CAA8: Call 0.Method_Proc_282_22_F0CB600 (CInt(&HC), var_8C)
  loc_F0CAB0: var_8C.Text = vbNullString
  loc_F0CACA: Set var_88 = Me.Txt
  loc_F0CAD0: Call 0.Method_Proc_282_22_F0CB600 (CInt(&HE), var_8C)
  loc_F0CAD8: var_8C.Text = vbNullString
  loc_F0CAF2: Set var_88 = Me.Txt
  loc_F0CAF8: Call 0.Method_Proc_282_22_F0CB600 (CInt(&HB), var_8C)
  loc_F0CB00: var_8C.Text = vbNullString
  loc_F0CB1A: Set var_88 = Me.Txt
  loc_F0CB20: Call 0.Method_Proc_282_22_F0CB600 (CInt(9), var_8C)
  loc_F0CB28: var_8C.Text = vbNullString
  loc_F0CB42: Set var_88 = Me.Txt
  loc_F0CB48: Call 0.Method_Proc_282_22_F0CB600 (CInt(&HA), var_8C)
  loc_F0CB50: var_8C.Text = vbNullString
  loc_F0CB5C: Exit Sub
End Sub

Public Sub Proc_282_23_13874D8
  'Data Table: 453278
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_EC As TextBox
  Dim var_E8 As Fields15
  Dim var_D4 As Variant
  loc_1386C1C: On Error Goto loc_1387492
  loc_1386C25: Proc_183_45_E5CCA8(global_52)
  loc_1386C2A: Call Proc_282_21_EE9AE4()
  loc_1386C46: If (Me.RecordCount > 0) Then
  loc_1386C7A:   global_64 = Proc_6_38_E69628(CVar(Me.Fields.Item("OldHW_ID")))
  loc_1386CDC:   Set var_E8 = Me.Txt
  loc_1386CE2:   Call 0.Method_Proc_282_23_13874D80 (CInt(&HD), var_EC, CStr(Format(CVar(Me.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_1386CEA:   var_EC.Text = 1
  loc_1386D32:   var_D4 = "hh:nn"
  loc_1386D59:   Set var_E8 = Me.Txt
  loc_1386D5F:   Call 0.Method_Proc_282_23_13874D80 (CInt(&HE), var_EC, CStr(Format(CVar(Me.Fields.Item("U_EntDt")), var_D4)))
  loc_1386D67:   var_EC.Text = 1
  loc_1386DAA:   Proc_6_39_E7D3A0(var_D4, CVar(Me.Fields.Item("Trans_Id")))
  loc_1386DC1:   Set var_E8 = Me.Txt
  loc_1386DC7:   Call 0.Method_Proc_282_23_13874D80 (CInt(&HC), var_EC, CStr(var_D4))
  loc_1386DCF:   var_EC.Text = 1
  loc_1386E3C:   Set var_E8 = Me.Txt
  loc_1386E42:   Call 0.Method_Proc_282_23_13874D80 (CInt(0), var_EC, CStr(Format(CVar(Me.Fields.Item("OldIssDate")), "dd/MMM/yyyy")))
  loc_1386E4A:   var_EC.Text = 1
  loc_1386EA0:   Set var_E8 = Me.Txt
  loc_1386EA6:   Call 0.Method_Proc_282_23_13874D80 (CInt(1), var_EC, CStr(Me.Fields.Item("CardType").Value))
  loc_1386EAE:   var_EC.Text = 1
  loc_1386EFD:   Set var_E8 = Me.Txt
  loc_1386F03:   Call 0.Method_Proc_282_23_13874D80 (CInt(2), var_EC)
  loc_1386F0B:   var_EC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("MemberName")))
  loc_1386F58:   Set var_E8 = Me.Txt
  loc_1386F5E:   Call 0.Method_Proc_282_23_13874D80 (CInt(2), var_EC)
  loc_1386F66:   var_EC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("MemberCode")))
  loc_1386FB3:   Set var_E8 = Me.Txt
  loc_1386FB9:   Call 0.Method_Proc_282_23_13874D80 (CInt(3), var_EC)
  loc_1386FC1:   var_EC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_138700E:   Set var_E8 = Me.Txt
  loc_1387014:   Call 0.Method_Proc_282_23_13874D80 (CInt(3), var_EC)
  loc_138701C:   var_EC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("CardRegId")))
  loc_138706C:   Set var_E8 = Me.Txt
  loc_1387072:   Call 0.Method_Proc_282_23_13874D80 (CInt(4), var_EC)
  loc_138707A:   var_EC.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_13870C9:   Set var_E8 = Me.Txt
  loc_13870CF:   Call 0.Method_Proc_282_23_13874D80 (CInt(5), var_EC)
  loc_13870D7:   var_EC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Addr")))
  loc_1387124:   Set var_E8 = Me.Txt
  loc_138712A:   Call 0.Method_Proc_282_23_13874D80 (CInt(6), var_EC)
  loc_1387132:   var_EC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Phone")))
  loc_138719B:   Set var_E8 = Me.Txt
  loc_13871A1:   Call 0.Method_Proc_282_23_13874D80 (CInt(7), var_EC, CStr(Format(CVar(Me.Fields.Item("OldValidUpto")), "dd/MMM/yyyy")))
  loc_13871A9:   var_EC.Text = 1
  loc_1387201:   var_D4 = "Yes"
  loc_1387219:   var_11C = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("BlockedYN")), 1) = "Y"), var_D4, "No")
  loc_1387230:   Set var_E8 = Me.Txt
  loc_1387236:   Call 0.Method_Proc_282_23_13874D80 (CInt(8), var_EC)
  loc_138723E:   var_EC.Text = CStr(var_11C)
  loc_138728B:   Proc_6_47_EF6560(var_D4, CVar(Me.Fields.Item("CurrBal")))
  loc_13872A2:   Set var_E8 = Me.Txt
  loc_13872A8:   Call 0.Method_Proc_282_23_13874D80 (CInt(&HF), var_EC)
  loc_13872B0:   var_EC.Text = CStr(var_D4)
  loc_13872F1:   Proc_6_47_EF6560(var_D4, CVar(Me.Fields.Item("SecurBal")))
  loc_1387308:   Set var_E8 = Me.Txt
  loc_138730E:   Call 0.Method_Proc_282_23_13874D80 (CInt(&H10), var_EC)
  loc_1387316:   var_EC.Text = CStr(var_D4)
  loc_138735C:   var_D4 = "dd/MMM/yyyy"
  loc_138736C:   var_E4 = Format(CVar(Me.Fields.Item("ValidUpto")), var_D4)
  loc_1387383:   Set var_E8 = Me.Txt
  loc_1387389:   Call 0.Method_Proc_282_23_13874D80 (CInt(9), var_EC, CStr(var_E4))
  loc_1387391:   var_EC.Text = 1
  loc_13873D4:   Proc_6_47_EF6560(var_D4, CVar(Me.Fields.Item("Remark")))
  loc_13873DC:   var_B4 = CStr(var_D4)
  loc_13873EB:   Set var_E8 = Me.Txt
  loc_13873F1:   Call 0.Method_Proc_282_23_13874D80 (CInt(&HA), var_EC, var_B4)
  loc_13873F9:   var_EC.Text = 1
  loc_1387475:   Call Proc_282_25_11DBA04(Proc_6_38_E69628(CVar(Me.Fields.Item("PicPath"))), Proc_6_38_E69628(CVar(Me.Fields.Item("SigPath"))))
  loc_1387491: End If
  loc_1387491: Exit Sub
  loc_1387492: ' Referenced from: 1386C1C
  loc_138749A: Set var_8C = Err()
  loc_13874A0: Call 0.Method_arg_2C (var_B4)
  loc_13874C1: MsgBox(CVar(var_B4), &H40, "Information", var_E4, var_11C)
  loc_13874D4: Exit Sub
End Sub

Public Sub Proc_282_24_12C4770(arg_C) '12C4770
  'Data Table: 453278
  Dim Me As Recordset15
  Dim var_AC As Fields15
  Dim var_F8 As TextBox
  Dim var_B0 As Variant
  Dim var_F4 As Fields15
  Dim var_E0 As Variant
  loc_12C4113: var_88 = arg_C
  loc_12C412D: If (Me.RecordCount > 0) Then
  loc_12C4136:   Me.MoveFirst
  loc_12C4160:   Me.Find "SearchCode ='" & var_88 & "'", 0, 1
  loc_12C4195:   If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_12C419E:     global_60 = var_88
  loc_12C41D3:     global_64 = Proc_6_38_E69628(CVar(Me.Fields.Item("SerialNo")))
  loc_12C4235:     Set var_F4 = Me.Txt
  loc_12C423B:     Call 0.Method_Proc_282_24_12C47700 (CInt(0), var_F8, CStr(Format(CVar(Me.Fields.Item("IssDate")), "dd/MMM/yyyy")))
  loc_12C4243:     var_F8.Text = 1
  loc_12C4299:     Set var_F4 = Me.Txt
  loc_12C429F:     Call 0.Method_Proc_282_24_12C47700 (CInt(1), var_F8, CStr(Me.Fields.Item("CardType").Value))
  loc_12C42A7:     var_F8.Text = 1
  loc_12C42F6:     Set var_F4 = Me.Txt
  loc_12C42FC:     Call 0.Method_Proc_282_24_12C47700 (CInt(2), var_F8)
  loc_12C4304:     var_F8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("MemberName")))
  loc_12C4351:     Set var_F4 = Me.Txt
  loc_12C4357:     Call 0.Method_Proc_282_24_12C47700 (CInt(2), var_F8)
  loc_12C435F:     var_F8.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("MemberCode")))
  loc_12C438D:     var_B0 = Me.Fields.Item("Name")
  loc_12C43AC:     Set var_F4 = Me.Txt
  loc_12C43B2:     Call 0.Method_Proc_282_24_12C47700 (CInt(3), var_F8)
  loc_12C43BA:     var_F8.Text = Proc_6_38_E69628(CVar(var_B0))
  loc_12C43DC:     Set var_AC = Me.Txt
  loc_12C43E2:     Call 0.Method_Proc_282_24_12C47700 (CInt(3), var_B0)
  loc_12C43EA:     var_B0.Tag = var_88
  loc_12C442F:     Set var_F4 = Me.Txt
  loc_12C4435:     Call 0.Method_Proc_282_24_12C47700 (CInt(4), var_F8)
  loc_12C443D:     var_F8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CardNo")))
  loc_12C448A:     Set var_F4 = Me.Txt
  loc_12C4490:     Call 0.Method_Proc_282_24_12C47700 (CInt(5), var_F8)
  loc_12C4498:     var_F8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Addr")))
  loc_12C44E5:     Set var_F4 = Me.Txt
  loc_12C44EB:     Call 0.Method_Proc_282_24_12C47700 (CInt(6), var_F8)
  loc_12C44F3:     var_F8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Phone")))
  loc_12C455C:     Set var_F4 = Me.Txt
  loc_12C4562:     Call 0.Method_Proc_282_24_12C47700 (CInt(7), var_F8, CStr(Format(CVar(Me.Fields.Item("ValidUpto")), "dd/MMM/yyyy")))
  loc_12C456A:     var_F8.Text = 1
  loc_12C45C2:     var_E0 = "Yes"
  loc_12C45F1:     Set var_F4 = Me.Txt
  loc_12C45F7:     Call 0.Method_Proc_282_24_12C47700 (CInt(8), var_F8)
  loc_12C45FF:     var_F8.Text = CStr(IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("BlockedYN")), 1) = "Y"), var_E0, "No"))
  loc_12C464C:     Proc_6_47_EF6560(var_E0, CVar(Me.Fields.Item("CurrBal")))
  loc_12C4663:     Set var_F4 = Me.Txt
  loc_12C4669:     Call 0.Method_Proc_282_24_12C47700 (CInt(&HF), var_F8)
  loc_12C4671:     var_F8.Text = CStr(var_E0)
  loc_12C46B2:     Proc_6_47_EF6560(var_E0, CVar(Me.Fields.Item("SecurBal")))
  loc_12C46C9:     Set var_F4 = Me.Txt
  loc_12C46CF:     Call 0.Method_Proc_282_24_12C47700 (CInt(&H10), var_F8)
  loc_12C46D7:     var_F8.Text = CStr(var_E0)
  loc_12C4753:     Call Proc_282_25_11DBA04(Proc_6_38_E69628(CVar(Me.Fields.Item("PicPath"))), Proc_6_38_E69628(CVar(Me.Fields.Item("SigPath"))))
  loc_12C476F:   End If
  loc_12C476F: End If
  loc_12C476F: Exit Sub
End Sub

Public Sub Proc_282_25_11DBA04(arg_C, arg_10) '11DBA04
  'Data Table: 453278
  Dim var_8C As Image
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_11DB5AB: Set var_8C = Me.ImgPhoto
  loc_11DB5C4: If (var_8C.Tag <> arg_C) Then
  loc_11DB5D4:   var_F0 = IsNull(arg_C)
  loc_11DB5DB:   var_B0 = arg_C
  loc_11DB5EB:   var_D0 = vbNullString
  loc_11DB602:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11DB623:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DB638:     Me.ImgPhoto.Picture = var_8C
  loc_11DB651:     Me.ImgPhoto.Tag = vbNullString
  loc_11DB65C:   Else
  loc_11DB65F:     var_A0 = arg_C
  loc_11DB66F:     var_D0 = arg_C
  loc_11DB69A:     var_B0 = "DAT"
  loc_11DB6C2:     var_F0 = "AVI"
  loc_11DB6E1:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11DB6F0:       Me.ImgPhoto.Visible = False
  loc_11DB6FB:     Else
  loc_11DB708:       Me.ImgPhoto.Tag = arg_C
  loc_11DB71C:       Call 0.Method_Proc_282_25_11DBA044 (arg_C, var_17A)
  loc_11DB724:       If var_17A Then
  loc_11DB741:         Set var_8C = Me.ImgPhoto
  loc_11DB759:         Me.Global.LoadPicture CVar(Me.ImgPhoto.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11DB76E:         Me.ImgPhoto.Picture = var_114
  loc_11DB783:         Set var_8C = Me.ImgPhoto
  loc_11DB789:         var_8C.Refresh
  loc_11DB794:       Else
  loc_11DB7B2:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DB7C7:         Me.ImgPhoto.Picture = var_8C
  loc_11DB7D3:       End If
  loc_11DB7D3:     End If
  loc_11DB7D3:   End If
  loc_11DB7D3: End If
  loc_11DB7DA: Set var_8C = Me.ImgSign
  loc_11DB7F3: If (var_8C.Tag <> arg_10) Then
  loc_11DB803:   var_F0 = IsNull(arg_10)
  loc_11DB80A:   var_B0 = arg_10
  loc_11DB81A:   var_D0 = vbNullString
  loc_11DB831:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11DB852:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DB867:     Me.ImgSign.Picture = var_8C
  loc_11DB880:     Me.ImgSign.Tag = vbNullString
  loc_11DB88B:   Else
  loc_11DB88E:     var_A0 = arg_10
  loc_11DB89E:     var_D0 = arg_10
  loc_11DB8C9:     var_B0 = "DAT"
  loc_11DB8F1:     var_F0 = "AVI"
  loc_11DB910:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11DB91F:       Me.ImgSign.Visible = False
  loc_11DB92A:     Else
  loc_11DB931:       Set var_8C = Me.ImgSign
  loc_11DB937:       var_8C.Tag = arg_10
  loc_11DB94B:       Call 0.Method_Proc_282_25_11DBA044 (arg_10, var_17A, var_8C)
  loc_11DB953:       If var_17A Then
  loc_11DB970:         Set var_8C = Me.ImgSign
  loc_11DB988:         Me.Global.LoadPicture CVar(Me.ImgSign.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11DB99D:         Me.ImgSign.Picture = var_114
  loc_11DB9B2:         Set var_8C = Me.ImgSign
  loc_11DB9B8:         var_8C.Refresh
  loc_11DB9C3:       Else
  loc_11DB9E1:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DB9F6:         Me.ImgSign.Picture = var_8C
  loc_11DBA02:       End If
  loc_11DBA02:     End If
  loc_11DBA02:   End If
  loc_11DBA02: End If
  loc_11DBA02: Exit Sub
End Sub

Public Sub Proc_282_26_E6A734
  'Data Table: 453278
  Dim var_88 As String
  loc_E6A6E7: global_72 = CByte(1)
  loc_E6A6F2: var_88 = "Select SCR.Code As SearchCode,SCR.Code,Convert(Varchar(11),SCR.IssDate,103) IssueDate,SCR.CardType,S.Name As MemberName,SCR.Name As Name,SCR.CardNo As MemberID,SCR.Addr As Address,SCR.Phone,Convert(Varchar(11),SCR.ValidUpTo,103) As ValidUpTo,SCR.BlockedYN FROM SmartCardRegistration SCR Left Join Subgroup S On SCR.Membercode=S.SubCode WHERE (SCR.LOGSITE_CODE='" & MemVar_1F95078
  loc_E6A709: Proc_6_126_F1C850("1200,900,900,3500,3500,1500,3500,2000,900,500", "1200,900,900,3500,3500,1500,3500,2000,900,500" & "' or SCR.LOGSITE_CODE='HO') Order by SCR.IssDate,SCR.Code")
  loc_E6A717: MemVar_1F95120 = Me
  loc_E6A72E: Call 0.Method_arg_2B0 (1, var_A8)
  loc_E6A733: Exit Sub
End Sub
