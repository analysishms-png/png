VERSION 5.00
Begin VB.Form SmartCardRefund
  Caption = "Smart Card Refund Entry"
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
  ClientHeight = 5490
  Begin CommandButton CmdWaiveoff
    Caption = "Waive-off All Cash Card Balance"
    Left = 10335
    Top = 7650
    Width = 3825
    Height = 600
    Visible = 0   'False
    TabIndex = 38
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
    Left = 2475
    Top = 4605
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
    Left = 2490
    Top = 4290
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
    Left = 2505
    Top = 1515
    Width = 1365
    Height = 285
    TabIndex = 27
    BorderStyle = 0 'None
    MaxLength = 11
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
    Left = 6570
    Top = 4605
    Width = 1380
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 11
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6570
    Top = 4290
    Width = 1380
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 11
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
      Weight = 400
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
    Width = 5475
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
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
  Begin PictureBox Picture1
    ForeColor = &HFF0000&
    Left = 13560
    Top = 10635
    Width = 300
    Height = 285
    Visible = 0   'False
    TabIndex = 17
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin PictureBox Picture3
    ForeColor = &HFF0000&
    Left = 13185
    Top = 10125
    Width = 300
    Height = 285
    Visible = 0   'False
    TabIndex = 16
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
    ForeColor = &HFF0000&
    Left = 2490
    Top = 3975
    Width = 5475
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 35
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1830
    Width = 2025
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 11
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 3090
    Width = 5475
    Height = 855
    TabIndex = 4
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 125
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
    ForeColor = &HFF0000&
    Left = 6585
    Top = 1200
    Width = 1395
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 15
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
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin BtnEnh CmdCardScan
    Left = 2385
    Top = 555
    Width = 5625
    Height = 540
    TabIndex = 37
  End
  Begin Label LblName
    Caption = "Current Security Balance"
    Index = 11
    ForeColor = &HFF0000&
    Left = 90
    Top = 4620
    Width = 2385
    Height = 240
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
    Left = 900
    Top = 4290
    Width = 1545
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
  Begin Label LblName
    Caption = "Receipt.No."
    Index = 9
    ForeColor = &HFF0000&
    Left = 900
    Top = 1515
    Width = 1095
    Height = 240
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
    Left = 900
    Top = 1185
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
  Begin Label LblName
    Caption = "Security Amount"
    Index = 7
    ForeColor = &HFF0000&
    Left = 4935
    Top = 4605
    Width = 1575
    Height = 240
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
    Caption = "Refund Amount"
    Index = 5
    ForeColor = &HFF0000&
    Left = 4980
    Top = 4290
    Width = 1470
    Height = 240
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
    Left = 900
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
    Left = 8130
    Top = 3600
    Width = 2295
    Height = 705
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Image ImgPhoto
    Left = 8130
    Top = 1245
    Width = 2310
    Height = 2280
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Label LblPhoto
    Caption = "Photo"
    ForeColor = &H80&
    Left = 9015
    Top = 2340
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
    Left = 8850
    Top = 3855
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
    Left = 900
    Top = 2775
    Width = 1035
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
  Begin Label LblName
    Caption = "Mobil No."
    Index = 1
    ForeColor = &HFF0000&
    Left = 900
    Top = 3975
    Width = 900
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
    Left = 5535
    Top = 1515
    Width = 975
    Height = 240
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
    Left = 900
    Top = 1830
    Width = 1485
    Height = 240
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
    Left = 900
    Top = 3090
    Width = 750
    Height = 240
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
    Left = 5550
    Top = 1830
    Width = 765
    Height = 240
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
    Left = 900
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
    Left = 5535
    Top = 1200
    Width = 975
    Height = 240
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

Attribute VB_Name = "SmartCardRefund"


Private Sub Form_Load() 'F00368
  'Data Table: 458EAC
  loc_F00298: On Error Goto loc_F00321
  loc_F002A2: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F002A7: Call Proc_285_21_EE11D4()
  loc_F002AC: Call Proc_285_26_EF778C()
  loc_F002BD: Set var_90 = Me
  loc_F002C6: var_8C = "INI"
  loc_F002D4: Call Proc_285_20_10950F8(Proc_5_1_100EC1C(var_8C, var_90))
  loc_F002E8: Call 0.Method_arg_160 (var_90)
  loc_F002F6: Call 0.Method_arg_164 (var_90)
  loc_F00304: If (MemVar_1F950B8 = 1) Then
  loc_F0030D:   Set var_90 = Me.PictShortCuts
  loc_F00313:   MDIForm1.PictShortCuts.Visible = True
  loc_F0031B: End If
  loc_F0031B: Call Proc_285_23_135F014(global_52)
  loc_F00320: Exit Sub
  loc_F00321: ' Referenced from: F00298
  loc_F00329: Set var_90 = Err()
  loc_F0032F: Call 0.Method_arg_2C (var_8C)
  loc_F00350: MsgBox(CVar(var_8C), &H40, "Information", var_E8, var_108)
  loc_F00363: Exit Sub
  loc_F00364: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0EE5C
  'Data Table: 458EAC
  loc_E0EE53: Set global_52 = Nothing
  loc_E0EE5A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28D7C
  'Data Table: 458EAC
  loc_E28D54: On Error Goto loc_E28D73
  loc_E28D6B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E28D73: ' Referenced from: E28D54
  loc_E28D73: Proc_6_60_E63754(Shift)
  loc_E28D78: Exit Sub
End Sub

Private Sub CmdWaiveoff_Click() '10C2C8C
  'Data Table: 458EAC
  Dim var_B0 As String
  Dim unk_458EB8 As Connection15
  Dim var_128 As Recordset15
  Dim var_134 As Fields15
  Dim var_C0 As Variant
  Dim var_140 As String
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_16C As Variant
  Dim var_180 As String
  loc_10C29F0: On Error Goto loc_10C2C3C
  loc_10C2A01: var_B0 = "Process will Waive-off All Cash Card Balance."
  loc_10C2A06: var_C0 = var_B0
  loc_10C2A22: If (MsgBox(var_C0, &H114, var_E0, var_100, var_120) = 7) Then
  loc_10C2A25:   Exit Sub
  loc_10C2A26: End If
  loc_10C2A2F: unk_458EB8.BeginTrans var_124
  loc_10C2A4A: unk_458EB8.Execute "Select Code,Name,CurrBal,SerialNo From SmartCardRegistration where CardType ='Cash Card' And IsNull(CurrBal,0)<>0", var_C0, -1
  loc_10C2A55: Set var_128 = var_134
  loc_10C2A5E: ' Referenced from: 10C2BDB
  loc_10C2A6D: If Not(var_128.EOF) Then
  loc_10C2A82:   var_134 = var_128.Fields
  loc_10C2ACA:   var_C0 = CVar(var_128.Fields.Item("Code")) 'Address
  loc_10C2AF5:   var_E0 = CVar(var_128.Fields.Item("SerialNo")) 'Address
  loc_10C2B20:   var_100 = CVar(var_128.Fields.Item("CurrBal")) 'Address
  loc_10C2B27:   Proc_6_39_E7D3A0(var_120)
  loc_10C2B53:   var_16C = CVar(var_128.Fields.Item("CurrBal")) 'Address
  loc_10C2B5A:   Proc_6_39_E7D3A0(var_17C)
  loc_10C2B7C:   var_180 = Proc_6_14_EF402C(var_100)
  loc_10C2BA0:   var_140 = Proc_6_38_E69628(var_C0)
  loc_10C2BA3:   Proc_275_17_1187538(var_140, Proc_6_38_E69628(var_E0), "Waive-off", MemVar_1F950EC, CSng(var_120), CDbl(0), var_128.Fields & Proc_6_38_E69628(CVar(var_128.Fields.Item("Name")), "Waive off Card Balance "))
  loc_10C2BD6:   var_128.MoveNext
  loc_10C2BDB:   GoTo loc_10C2A5E
  loc_10C2BDE: End If
  loc_10C2BF4: unk_458EB8.Execute "Update SmartCardRegistration Set CurrBal=0 where CardType ='Cash Card' And IsNull(CurrBal,0)<>0", var_C0, -1
  loc_10C2C05: unk_458EB8.CommitTrans
  loc_10C2C0F: Set var_128 = Nothing
  loc_10C2C2B: MsgBox("Process completed successfully", &H40, var_E0, var_100, var_120)
  loc_10C2C3B: Exit Sub
  loc_10C2C3C: ' Referenced from: 10C29F0
  loc_10C2C42: unk_458EB8.RollbackTrans
  loc_10C2C55: Call 0.Method_arg_2C (var_140, Err(), MemVar_1F950C8, CDate(var_180), "A")
  loc_10C2C60: var_B0 = " Waive-off Message"
  loc_10C2C76: MsgBox(CVar(var_140), &H10, "Process completed successfully", var_100, var_120)
  loc_10C2C89: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E7979C
  'Data Table: 458EAC
  Dim var_86 As Integer
  loc_E7974C: On Error Goto loc_E79756
  loc_E79752: var_86 = Index
  loc_E79755: Exit Sub
  loc_E79756: ' Referenced from: E7974C
  loc_E7975E: Set var_8C = Err()
  loc_E79764: Call 0.Method_arg_2C (var_90)
  loc_E79785: MsgBox(CVar(var_90), &H40, "Information", var_E0, var_100)
  loc_E79798: Exit Sub
  loc_E79799: Exit Sub
  loc_E7979A: DOC
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E79A14
  'Data Table: 458EAC
  Dim var_86 As Integer
  Dim var_88 As Integer
  loc_E799AF: var_86 = Shift
  loc_E799BC: If (CLng(Shift) = &H1B) Then
  loc_E799BF:   Exit Sub
  loc_E799C0: End If
  loc_E799C3: var_88 = KeyCode
  loc_E799E4: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HA))) Then
  loc_E799ED:   Proc_6_75_E5335C(Shift, arg_14)
  loc_E799F2: End If
  loc_E79A05: If ((CLng(Shift) = &H26) And (KeyCode <> CInt(9))) Then
  loc_E79A0E:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E79A13: End If
  loc_E79A13: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EEBFB8
  'Data Table: 458EAC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_EEBEF6: Proc_6_133_E7FB08(var_94)
  loc_EEBEFF: arg_10 = CInt(var_94)
  loc_EEBF08: Proc_6_58_E06050(arg_10, arg_10)
  loc_EEBF10: var_96 = KeyAscii
  loc_EEBF1B: If (var_96 = CInt(9)) Then
  loc_EEBF24:   If (arg_10 = &H2D) Then
  loc_EEBF29:     arg_10 = 0
  loc_EEBF2C:   End If
  loc_EEBF36:   Set var_9C = Me.Txt
  loc_EEBF3C:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, arg_10)
  loc_EEBF57:   Proc_6_42_129B55C(var_A0, arg_10, 7)
  loc_EEBF66: Else
  loc_EEBF6E:   If (var_96 = CInt(&HA)) Then
  loc_EEBF77:     If (arg_10 = &H2D) Then
  loc_EEBF7C:       arg_10 = 0
  loc_EEBF7F:     End If
  loc_EEBF89:     Set var_9C = Me.Txt
  loc_EEBF8F:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, arg_10)
  loc_EEBFAA:     Proc_6_42_129B55C(var_A0, arg_10, 6, 0)
  loc_EEBFB6:   End If
  loc_EEBFB6: End If
  loc_EEBFB6: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F895F4
  'Data Table: 458EAC
  Dim var_86 As Integer
  Dim var_DC As String
  Dim var_D8 As TextBox
  loc_F894A8: On Error Goto loc_F895AF
  loc_F894AE: var_86 = Cancel
  loc_F894B9: If (var_86 = CInt(9)) Then
  loc_F894C6:   Set var_8C = Me.Txt
  loc_F894CC:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F89506:   Set var_D4 = Me.Txt
  loc_F8950C:   Call 0.Method_Txt_Validate0 (Cancel, var_D8, CStr(Format(CVar(var_90), "0.00")))
  loc_F89514:   var_D8.Text = 1
  loc_F89531: Else
  loc_F89539:   If (var_86 = CInt(&HA)) Then
  loc_F89546:     Set var_8C = Me.Txt
  loc_F8954C:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F89570:     var_D0 = Format(CVar(var_90), "0.00")
  loc_F89578:     var_DC = CStr(var_D0)
  loc_F89586:     Set var_D4 = Me.Txt
  loc_F8958C:     Call 0.Method_Txt_Validate0 (Cancel, var_D8, var_DC, 1)
  loc_F89594:     var_D8.Text = 1
  loc_F895AE:   End If
  loc_F895AE: End If
  loc_F895AE: Exit Sub
  loc_F895AF: ' Referenced from: F894A8
  loc_F895B7: Set var_8C = Err()
  loc_F895BD: Call 0.Method_arg_2C (var_DC, 1)
  loc_F895DE: MsgBox(CVar(var_DC), &H40, "Information", var_D0, var_10C)
  loc_F895F1: Exit Sub
  loc_F895F2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F3487C
  'Data Table: 458EAC
  Dim var_108 As String
  Dim var_114 As TextBox
  loc_F3476C: On Error Goto loc_F34838
  loc_F3477A: If (global_56 = vbNullString) Then
  loc_F3479E:   MsgBox("Please Scan Card First.", &H40, "Smart Card Validation", var_E4, var_104)
  loc_F347AE:   Exit Sub
  loc_F347AF: End If
  loc_F347D2: Call Proc_285_20_10950F8(Proc_5_1_100EC1C("ADD", Me))
  loc_F347DD: Call Proc_285_22_F0D394(global_52)
  loc_F347E7: var_108 = CStr(MemVar_1F950EC)
  loc_F347F5: Set var_10C = Me.Txt
  loc_F347FB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HD), var_114)
  loc_F34803: var_114.Text = var_108
  loc_F3481D: Set var_10C = Me.Txt
  loc_F34823: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9))
  loc_F3482B: var_114.SetFocus
  loc_F34837: Exit Sub
  loc_F34838: ' Referenced from: F3476C
  loc_F34840: Set var_10C = Err()
  loc_F34846: Call 0.Method_arg_2C (var_108)
  loc_F34867: MsgBox(CVar(var_108), &H40, "Information", var_E4, var_104)
  loc_F3487A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBA06C
  'Data Table: 458EAC
  loc_EB9FD8: On Error Goto loc_EBA063
  loc_EBA012: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBA021:   Set var_110 = Me
  loc_EBA038:   Call Proc_285_20_10950F8(Proc_5_1_100EC1C("INI", var_110))
  loc_EBA043:   Call Proc_285_23_135F014(global_52)
  loc_EBA04B: Else
  loc_EBA051:   Call 0.Method_arg_1E8 (var_110)
  loc_EBA059:   Call var_110.SetFocus
  loc_EBA062: End If
  loc_EBA062: Exit Sub
  loc_EBA063: ' Referenced from: EB9FD8
  loc_EBA063: Proc_6_60_E63754()
  loc_EBA068: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19D24
  'Data Table: 458EAC
  loc_E19D19: Me.Global.Unload Me
  loc_E19D21: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE7D68
  'Data Table: 458EAC
  Dim Me As Recordset15
  loc_EE7CAC: On Error Goto loc_EE7D02
  loc_EE7CAF: Call Proc_285_26_EF778C()
  loc_EE7CBD: var_88 = Me.RecordCount
  loc_EE7CCB: If (var_88 > 0) Then
  loc_EE7CD1:   var_8C = "0,0,900,900,3000,800,0,1000,1000,0,0,2500,1000,0,0,0,0,0,0,0,0,2500"
  loc_EE7CD7:   Proc_6_126_F1C850(var_8C)
  loc_EE7CE5:   MemVar_1F95120 = Me
  loc_EE7CFC:   Call 0.Method_arg_2B0 (1)
  loc_EE7D01: End If
  loc_EE7D01: Exit Sub
  loc_EE7D02: ' Referenced from: EE7CAC
  loc_EE7D0A: Set var_B0 = Err()
  loc_EE7D10: Call 0.Method_arg_1C (var_88)
  loc_EE7D21: If (var_88 <> 0) Then
  loc_EE7D2C:   Set var_B0 = Err()
  loc_EE7D32:   Call 0.Method_arg_2C (var_8C)
  loc_EE7D53:   MsgBox(CVar(var_8C), &H40, "Validation", var_E0, var_100)
  loc_EE7D66: End If
  loc_EE7D66: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E34028
  'Data Table: 458EAC
  loc_E34018: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34020: Call Proc_285_23_135F014(global_52)
  loc_E34025: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E34268
  'Data Table: 458EAC
  loc_E34258: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34260: Call Proc_285_23_135F014(global_52)
  loc_E34265: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E34208
  'Data Table: 458EAC
  loc_E341F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34200: Call Proc_285_23_135F014(global_52)
  loc_E34205: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E341A8
  'Data Table: 458EAC
  loc_E34198: Proc_5_0_1107AD0(&HFF, Me)
  loc_E341A0: Call Proc_285_23_135F014(global_52)
  loc_E341A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'F00B34
  'Data Table: 458EAC
  Dim var_8C As TextBox
  loc_F00A6B: Set var_88 = Me.Txt
  loc_F00A71: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HD))
  loc_F00A88: If IsDate(CVar(var_8C)) Then
  loc_F00A99:   Set var_88 = Me.Txt
  loc_F00A9F:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HD), var_8C)
  loc_F00ABF:   If (CDate(var_8C.Text) = MemVar_1F950EC) Then
  loc_F00AD0:     Set var_88 = Me.Txt
  loc_F00AD6:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HB), var_8C)
  loc_F00ADE:     var_A0 = var_8C.Text
  loc_F00AE9:     Proc_275_19_166FAB8(var_A0, MemVar_1F953B8)
  loc_F00AFB:   Else
  loc_F00B01:     Call 0.Method_arg_50 (var_A0)
  loc_F00B22:     MsgBox("Print Receipt Of Current Date Only.", &H40, CVar(var_A0), var_E0, var_100)
  loc_F00B32:   End If
  loc_F00B32: End If
  loc_F00B32: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '131F7B4
  'Data Table: 458EAC
  Dim var_BC As String
  Dim var_134 As TextBox
  Dim var_140 As TextBox
  Dim unk_458EB8 As Connection15
  Dim var_138 As String
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_154 As Double
  Dim var_15C As Double
  Dim var_168 As TextBox
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_144 As String
  Dim var_160 As String
  Dim var_240 As Variant
  Dim Me As Recordset15
  loc_131F090: On Error Goto loc_131F70A
  loc_131F09E: If (global_56 = vbNullString) Then
  loc_131F0AC:   var_EC = "Smart Card Validation"
  loc_131F0C2:   MsgBox("Please Scan Card First.", &H40, var_EC, var_10C, var_12C)
  loc_131F0D2:   Exit Sub
  loc_131F0D3: End If
  loc_131F0E1: Set var_130 = Me.Txt
  loc_131F0E7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134)
  loc_131F10F: Set var_13C = Me.Txt
  loc_131F115: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_140)
  loc_131F142: If ((CDbl(Val(var_134.Text)) = CDbl(0)) And (CDbl(Val(var_140.Text)) = CDbl(0))) Then
  loc_131F15E:   MsgBox("Both of Amount Should Not be Zero.", &H40, var_EC, var_10C, var_12C)
  loc_131F175:   Call Txt_GotFocus(CInt(9))
  loc_131F17A:   Exit Sub
  loc_131F17B: End If
  loc_131F184: unk_458EB8.BeginTrans var_14C
  loc_131F18D: var_AA = CByte(1) 'Byte
  loc_131F1A4: Set var_130 = Me.Txt
  loc_131F1AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_134)
  loc_131F1B2: var_134.Text = CStr(MemVar_1F950EC)
  loc_131F1CC: var_160 = 0
  loc_131F1F1: var_144 = 0
  loc_131F21B: If (Proc_275_12_130B494(2, var_8C, var_88, 0, var_144) = 0) Then
  loc_131F21E:   GoTo loc_131F70A
  loc_131F221: End If
  loc_131F238: If ((global_60 = var_8C) And (global_56 = var_88)) Then
  loc_131F23E:   var_A4 = "Refund"
  loc_131F248:   var_138 = "Agnst. Refund " & var_88
  loc_131F24F:   var_10C = CVar(var_138 & "/") 'String
  loc_131F25D:   Set var_130 = Me.Txt
  loc_131F263:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_134, var_10C, 0)
  loc_131F272:   var_EC = Trim(CVar(var_134))
  loc_131F27A:   var_12C = 0 & var_EC 
  loc_131F27F:   var_A0 = CStr(var_12C)
  loc_131F2A1:   Set var_130 = Me.Txt
  loc_131F2A7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134, var_138)
  loc_131F2AF:   var_160 = var_134.Text
  loc_131F2BC:   var_154 = Val(var_138)
  loc_131F2CD:   Set var_13C = Me.Txt
  loc_131F2D3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_140, var_144)
  loc_131F316:   If ((CDbl((var_94 - var_140.Text)) < CDbl(0)) Or (CDbl((var_9C - Val(var_144))) < CDbl(0))) Then
  loc_131F332:     MsgBox("Refund Amount Should Not be Greater than Current Balance.", &H40, var_EC, var_10C, var_12C)
  loc_131F345:   Else
  loc_131F353:     Set var_130 = Me.Txt
  loc_131F359:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_134, var_160)
  loc_131F361:     var_15C = var_134.Text
  loc_131F374:     Set var_13C = Me.Txt
  loc_131F37A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_140, var_138)
  loc_131F382:     var_94 = var_140.Text
  loc_131F38F:     var_154 = Val(var_138)
  loc_131F3A0:     Set var_164 = Me.Txt
  loc_131F3A6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_168, var_144)
  loc_131F3BB:     var_15C = Val(var_144)
  loc_131F3F9:     Proc_275_17_1187538(var_88, global_60, var_A4, CDate(var_160), var_168.Text, var_15C, var_A0)
  loc_131F428:     Set var_130 = Me.Txt
  loc_131F42E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134, var_138, MemVar_1F950C8, CDate(Proc_6_14_EF402C(var_15C)))
  loc_131F436:     "A" = var_134.Text
  loc_131F443:     var_154 = Val(var_138)
  loc_131F44D:     var_94 = (var_94 - var_154)
  loc_131F468:     Set var_130 = Me.Txt
  loc_131F46E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_134, var_138, var_94, var_154)
  loc_131F476:     var_A8 = var_134.Text
  loc_131F48D:     var_9C = (var_9C - Val(var_138))
  loc_131F4A8:     Set var_130 = Me.Txt
  loc_131F4AE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134, var_138, var_9C)
  loc_131F4B6:     var_154 = var_134.Text
  loc_131F4C3:     var_154 = Val(var_138)
  loc_131F4D1:     Proc_6_17_EAAE40(var_EC, CVar(Proc_6_14_EF402C(var_154, var_94)))
  loc_131F4E1:     Proc_6_17_EAAE40(var_1F0, var_88)
  loc_131F506:     var_10C = CVar("Update SmartCardRegistration Set LastTransAmt=" & CStr(var_154) & ",LastTransDate=") 'String
  loc_131F50C:     var_12C = var_10C & var_EC 
  loc_131F557:     var_240 = var_12C & ",CurrBal=" & CVar(var_94) & ",SecurBal=" & CVar(var_9C) & " Where Code=" & var_1F0 & " And LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_131F56E:     unk_458EB8.Execute CStr(var_240 & "'"), var_280, -1
  loc_131F5B9:     If (Proc_275_7_10CE5A4(var_94, var_9C, var_8C) = 0) Then
  loc_131F5BC:       GoTo loc_131F70A
  loc_131F5BF:     End If
  loc_131F5C2:   Else
  loc_131F5D8:     var_BC = "Smart Card is Changed"
  loc_131F5E3:     MsgBox(var_BC, &H10, "Smart Card Verification", var_10C, var_12C)
  loc_131F5F6:   Else
  loc_131F5FC:     unk_458EB8.CommitTrans
  loc_131F605:     var_AA = CByte(0) 'Byte
  loc_131F609:     Call Proc_285_26_EF778C(var_13C, var_9C)
  loc_131F633:     Me.Find "SearchCode='" & var_A8 & "'", 0, 1
  loc_131F662:     Call Proc_285_20_10950F8(Proc_5_1_100EC1C("INI", Me, global_52), var_BC)
  loc_131F66D:     Call Proc_285_23_135F014(var_9C)
  loc_131F67B:     var_14C = Me.RecordCount
  loc_131F689:     If (var_14C > 0) Then
  loc_131F6C3:       If (MsgBox("Print Receipt ?", &H24, "Print", var_10C, var_12C) = 6) Then
  loc_131F6CC:         Proc_275_19_166FAB8(var_A8)
  loc_131F6D1:       End If
  loc_131F6D1:     End If
  loc_131F6D1:     Call Proc_285_21_EE11D4(MemVar_1F953B8)
  loc_131F6D6:     Call Proc_285_26_EF778C()
  loc_131F6F0:     var_138 = "INI"
  loc_131F6FE:     Call Proc_285_20_10950F8(Proc_5_1_100EC1C(var_138, Me))
  loc_131F709:     Exit Sub
  loc_131F70A:   End If
  loc_131F70A:   ' Referenced from:   131F5BC
  loc_131F70A: End If
  loc_131F70A: ' Referenced from: 131F21E
  loc_131F70A: ' Referenced from: 131F090
  loc_131F713: If (CInt(var_AA) = 1) Then
  loc_131F71C:   unk_458EB8.RollbackTrans
  loc_131F72C:   var_EC = "Smart Card Detail"
  loc_131F742:   MsgBox("Transaction Failed.", &H10, var_EC, var_10C, var_12C)
  loc_131F752:   Call Proc_285_21_EE11D4(global_52)
  loc_131F757: End If
  loc_131F75F: Set var_130 = Err()
  loc_131F765: Call 0.Method_arg_1C (var_14C)
  loc_131F776: If (var_14C <> 0) Then
  loc_131F781:   Set var_130 = Err()
  loc_131F787:   Call 0.Method_arg_2C (var_138)
  loc_131F7A0:   MsgBox(CVar(var_138), &H10, var_EC, var_10C, var_12C)
  loc_131F7B3: End If
  loc_131F7B3: Exit Sub
End Sub

Private Sub CmdCardScan_UnknownEvent_9 'F6F39C
  'Data Table: 458EAC
  Dim var_D8 As TextBox
  loc_F6F264: Call Proc_285_21_EE11D4()
  loc_F6F271: If (Proc_275_20_13682EC() = 0) Then
  loc_F6F274:   Exit Sub
  loc_F6F275: End If
  loc_F6F280: var_B0 = 0
  loc_F6F2D5: If (Proc_275_12_130B494(2, global_60, global_56, 0, 0) = 0) Then
  loc_F6F2D8:   Exit Sub
  loc_F6F2D9: End If
  loc_F6F2DF: Call Proc_285_24_125E380(global_56, 0, 0)
  loc_F6F2EF: Proc_6_47_EF6560(var_D0, var_8C, var_B0)
  loc_F6F306: Set var_D4 = Me.Txt
  loc_F6F30C: Call 0.Method_CmdCardScan_UnknownEvent_90 (CInt(&HF), var_D8, CStr(var_D0))
  loc_F6F314: var_D8.Text = var_8C
  loc_F6F331: Proc_6_47_EF6560(var_D0, var_94)
  loc_F6F348: Set var_D4 = Me.Txt
  loc_F6F34E: Call 0.Method_CmdCardScan_UnknownEvent_90 (CInt(&H10), var_D8)
  loc_F6F356: var_D8.Text = CStr(var_D0)
  loc_F6F368: Call Proc_285_26_EF778C(var_94)
  loc_F6F390: Call Proc_285_20_10950F8(Proc_5_1_100EC1C("INI", Me))
  loc_F6F39B: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EEA2F4
  'Data Table: 458EAC
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EEA246: On Error Goto loc_EEA2AF
  loc_EEA24F: Me.MoveFirst
  loc_EEA269: var_8C = "SearchCode='" & MyValue
  loc_EEA279: Me.Find var_8C & "'", 0, 1
  loc_EEA2A1: Proc_5_0_1107AD0(&HFF, Me, global_52)
  loc_EEA2A9: Call Proc_285_23_135F014(0)
  loc_EEA2AE: Exit Sub
  loc_EEA2AF: ' Referenced from: EEA246
  loc_EEA2B7: Set var_A8 = Err()
  loc_EEA2BD: Call 0.Method_arg_2C (var_8C)
  loc_EEA2DE: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_EEA2F1: Exit Sub
  loc_EEA2F2: Exit Sub
End Sub

Public Sub Proc_285_20_10950F8(arg_C) '10950F8
  'Data Table: 458EAC
  Dim var_98 As TextBox
  loc_1094E3E: Set var_8C = Me.Txt
  loc_1094E44: Call 0.Method_Proc_285_20_10950F8C (var_8E, var_86)
  loc_1094E54: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1094E6A:   Set var_8C = Me.Txt
  loc_1094E70:   Call 0.Method_Proc_285_20_10950F80 (CInt(var_86), var_98)
  loc_1094E78:   var_98.Enabled = arg_C
  loc_1094E87: Next var_92 'Byte
  loc_1094E9A: Set var_8C = Me.Txt
  loc_1094EA0: Call 0.Method_Proc_285_20_10950F80 (CInt(0), var_98)
  loc_1094EA8: var_98.Enabled = False
  loc_1094EC1: Set var_8C = Me.Txt
  loc_1094EC7: Call 0.Method_Proc_285_20_10950F80 (CInt(1), var_98)
  loc_1094ECF: var_98.Enabled = False
  loc_1094EE8: Set var_8C = Me.Txt
  loc_1094EEE: Call 0.Method_Proc_285_20_10950F80 (CInt(2), var_98)
  loc_1094EF6: var_98.Enabled = False
  loc_1094F0F: Set var_8C = Me.Txt
  loc_1094F15: Call 0.Method_Proc_285_20_10950F80 (CInt(3), var_98)
  loc_1094F1D: var_98.Enabled = False
  loc_1094F36: Set var_8C = Me.Txt
  loc_1094F3C: Call 0.Method_Proc_285_20_10950F80 (CInt(4), var_98)
  loc_1094F44: var_98.Enabled = False
  loc_1094F5D: Set var_8C = Me.Txt
  loc_1094F63: Call 0.Method_Proc_285_20_10950F80 (CInt(5), var_98)
  loc_1094F6B: var_98.Enabled = False
  loc_1094F84: Set var_8C = Me.Txt
  loc_1094F8A: Call 0.Method_Proc_285_20_10950F80 (CInt(6), var_98)
  loc_1094F92: var_98.Enabled = False
  loc_1094FAB: Set var_8C = Me.Txt
  loc_1094FB1: Call 0.Method_Proc_285_20_10950F80 (CInt(7), var_98)
  loc_1094FB9: var_98.Enabled = False
  loc_1094FD2: Set var_8C = Me.Txt
  loc_1094FD8: Call 0.Method_Proc_285_20_10950F80 (CInt(8), var_98)
  loc_1094FE0: var_98.Enabled = False
  loc_1094FF9: Set var_8C = Me.Txt
  loc_1094FFF: Call 0.Method_Proc_285_20_10950F80 (CInt(&HB), var_98)
  loc_1095007: var_98.Enabled = False
  loc_1095020: Set var_8C = Me.Txt
  loc_1095026: Call 0.Method_Proc_285_20_10950F80 (CInt(&HC), var_98)
  loc_109502E: var_98.Enabled = False
  loc_1095047: Set var_8C = Me.Txt
  loc_109504D: Call 0.Method_Proc_285_20_10950F80 (CInt(&HD), var_98)
  loc_1095055: var_98.Enabled = False
  loc_109506E: Set var_8C = Me.Txt
  loc_1095074: Call 0.Method_Proc_285_20_10950F80 (CInt(&HE), var_98)
  loc_109507C: var_98.Enabled = False
  loc_1095095: Set var_8C = Me.Txt
  loc_109509B: Call 0.Method_Proc_285_20_10950F80 (CInt(&HF), var_98)
  loc_10950A3: var_98.Enabled = False
  loc_10950BC: Set var_8C = Me.Txt
  loc_10950C2: Call 0.Method_Proc_285_20_10950F80 (CInt(&H10), var_98)
  loc_10950CA: var_98.Enabled = False
  loc_10950E3: Set var_8C = Me.CmdCardScan
  loc_10950E9: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_10950F4: Exit Sub
  loc_10950F5:  = 
End Sub

Public Sub Proc_285_21_EE11D4
  'Data Table: 458EAC
  Dim var_98 As TextBox
  loc_EE1126: Set var_8C = Me.Txt
  loc_EE112C: Call 0.Method_Proc_285_21_EE11D4C (var_8E, var_86)
  loc_EE113C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE1152:   Set var_8C = Me.Txt
  loc_EE1158:   Call 0.Method_Proc_285_21_EE11D40 (CInt(var_86), var_98)
  loc_EE1160:   var_98.Text = vbNullString
  loc_EE117C:   Set var_8C = Me.Txt
  loc_EE1182:   Call 0.Method_Proc_285_21_EE11D40 (CInt(var_86), var_98)
  loc_EE118A:   var_98.Tag = vbNullString
  loc_EE1199: Next var_92 'Byte
  loc_EE11A5: global_56 = vbNullString
  loc_EE11AF: global_60 = vbNullString
  loc_EE11B6: var_A0 = vbNullString
  loc_EE11C5: Call Proc_285_25_11DC868(vbNullString)
  loc_EE11D1: Exit Sub
  loc_EE11D2: CExtInstUnk
End Sub

Public Sub Proc_285_22_F0D394
  'Data Table: 458EAC
  Dim var_8C As TextBox
  loc_F0D2AE: Set var_88 = Me.Txt
  loc_F0D2B4: Call 0.Method_Proc_285_22_F0D3940 (CInt(&HD), var_8C)
  loc_F0D2BC: var_8C.Text = vbNullString
  loc_F0D2D6: Set var_88 = Me.Txt
  loc_F0D2DC: Call 0.Method_Proc_285_22_F0D3940 (CInt(&HC), var_8C)
  loc_F0D2E4: var_8C.Text = vbNullString
  loc_F0D2FE: Set var_88 = Me.Txt
  loc_F0D304: Call 0.Method_Proc_285_22_F0D3940 (CInt(&HE), var_8C)
  loc_F0D30C: var_8C.Text = vbNullString
  loc_F0D326: Set var_88 = Me.Txt
  loc_F0D32C: Call 0.Method_Proc_285_22_F0D3940 (CInt(&HB), var_8C)
  loc_F0D334: var_8C.Text = vbNullString
  loc_F0D34E: Set var_88 = Me.Txt
  loc_F0D354: Call 0.Method_Proc_285_22_F0D3940 (CInt(9), var_8C)
  loc_F0D35C: var_8C.Text = vbNullString
  loc_F0D376: Set var_88 = Me.Txt
  loc_F0D37C: Call 0.Method_Proc_285_22_F0D3940 (CInt(&HA), var_8C)
  loc_F0D384: var_8C.Text = vbNullString
  loc_F0D390: Exit Sub
  loc_F0D391:  = 
End Sub

Public Sub Proc_285_23_135F014
  'Data Table: 458EAC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_BC As TextBox
  Dim var_B8 As Fields15
  Dim var_DC As Variant
  loc_135E7D8: On Error Goto loc_135EFCE
  loc_135E7E1: Proc_183_45_E5CCA8(global_52)
  loc_135E7FD: If (Me.RecordCount <= 0) Then
  loc_135E800:   Call Proc_285_21_EE11D4()
  loc_135E808: Else
  loc_135E839:   global_60 = Proc_6_38_E69628(CVar(Me.Fields.Item("SerialNo")))
  loc_135E882:   Set var_B8 = Me.Txt
  loc_135E888:   Call 0.Method_Proc_285_23_135F0140 (CInt(&HB), var_BC)
  loc_135E890:   var_BC.Text = CStr(Me.Fields.Item("SearchCode").Value)
  loc_135E8FB:   Set var_B8 = Me.Txt
  loc_135E901:   Call 0.Method_Proc_285_23_135F0140 (CInt(&HD), var_BC, CStr(Format(CVar(Me.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_135E909:   var_BC.Text = 1
  loc_135E951:   var_DC = "hh:nn"
  loc_135E978:   Set var_B8 = Me.Txt
  loc_135E97E:   Call 0.Method_Proc_285_23_135F0140 (CInt(&HE), var_BC, CStr(Format(CVar(Me.Fields.Item("U_EntDt")), var_DC)))
  loc_135E986:   var_BC.Text = 1
  loc_135E9C9:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Fields.Item("VNo")))
  loc_135E9E0:   Set var_B8 = Me.Txt
  loc_135E9E6:   Call 0.Method_Proc_285_23_135F0140 (CInt(&HC), var_BC, CStr(var_DC))
  loc_135E9EE:   var_BC.Text = 1
  loc_135EA5B:   Set var_B8 = Me.Txt
  loc_135EA61:   Call 0.Method_Proc_285_23_135F0140 (CInt(0), var_BC, CStr(Format(CVar(Me.Fields.Item("IssDate")), "dd/MMM/yyyy")))
  loc_135EA69:   var_BC.Text = 1
  loc_135EABF:   Set var_B8 = Me.Txt
  loc_135EAC5:   Call 0.Method_Proc_285_23_135F0140 (CInt(1), var_BC, CStr(Me.Fields.Item("CardType").Value))
  loc_135EACD:   var_BC.Text = 1
  loc_135EB1C:   Set var_B8 = Me.Txt
  loc_135EB22:   Call 0.Method_Proc_285_23_135F0140 (CInt(2), var_BC)
  loc_135EB2A:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("MemberName")))
  loc_135EB77:   Set var_B8 = Me.Txt
  loc_135EB7D:   Call 0.Method_Proc_285_23_135F0140 (CInt(2), var_BC)
  loc_135EB85:   var_BC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("MemberCode")))
  loc_135EBD2:   Set var_B8 = Me.Txt
  loc_135EBD8:   Call 0.Method_Proc_285_23_135F0140 (CInt(3), var_BC)
  loc_135EBE0:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_135EC2D:   Set var_B8 = Me.Txt
  loc_135EC33:   Call 0.Method_Proc_285_23_135F0140 (CInt(3), var_BC)
  loc_135EC3B:   var_BC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("Code")))
  loc_135EC8B:   Set var_B8 = Me.Txt
  loc_135EC91:   Call 0.Method_Proc_285_23_135F0140 (CInt(4), var_BC)
  loc_135EC99:   var_BC.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_135ECE8:   Set var_B8 = Me.Txt
  loc_135ECEE:   Call 0.Method_Proc_285_23_135F0140 (CInt(5), var_BC)
  loc_135ECF6:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Addr")))
  loc_135ED43:   Set var_B8 = Me.Txt
  loc_135ED49:   Call 0.Method_Proc_285_23_135F0140 (CInt(6), var_BC)
  loc_135ED51:   var_BC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Phone")))
  loc_135EDBA:   Set var_B8 = Me.Txt
  loc_135EDC0:   Call 0.Method_Proc_285_23_135F0140 (CInt(7), var_BC, CStr(Format(CVar(Me.Fields.Item("ValidUpto")), "dd/MMM/yyyy")))
  loc_135EDC8:   var_BC.Text = 1
  loc_135EE15:   var_EC = "No"
  loc_135EE20:   var_DC = "Yes"
  loc_135EE38:   var_11C = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("BlockedYN")), 1) = "Y"), var_DC, var_EC)
  loc_135EE4F:   Set var_B8 = Me.Txt
  loc_135EE55:   Call 0.Method_Proc_285_23_135F0140 (CInt(8), var_BC)
  loc_135EE5D:   var_BC.Text = CStr(var_11C)
  loc_135EEAA:   Proc_6_47_EF6560(var_DC, CVar(Me.Fields.Item("CashAmt")))
  loc_135EEC1:   Set var_B8 = Me.Txt
  loc_135EEC7:   Call 0.Method_Proc_285_23_135F0140 (CInt(9), var_BC)
  loc_135EECF:   var_BC.Text = CStr(var_DC)
  loc_135EF10:   Proc_6_47_EF6560(var_DC, CVar(Me.Fields.Item("SecurityAmt")))
  loc_135EF18:   var_B4 = CStr(var_DC)
  loc_135EF27:   Set var_B8 = Me.Txt
  loc_135EF2D:   Call 0.Method_Proc_285_23_135F0140 (CInt(&HA), var_BC)
  loc_135EF35:   var_BC.Text = var_B4
  loc_135EFB1:   Call Proc_285_25_11DC868(Proc_6_38_E69628(CVar(Me.Fields.Item("PicPath"))), Proc_6_38_E69628(CVar(Me.Fields.Item("SigPath"))))
  loc_135EFCD: End If
  loc_135EFCD: Exit Sub
  loc_135EFCE: ' Referenced from: 135E7D8
  loc_135EFD6: Set var_8C = Err()
  loc_135EFDC: Call 0.Method_arg_2C (var_B4)
  loc_135EFFD: MsgBox(CVar(var_B4), &H40, "Information", var_EC, var_11C)
  loc_135F010: Exit Sub
End Sub

Public Sub Proc_285_24_125E380(arg_C) '125E380
  'Data Table: 458EAC
  Dim var_90 As String
  Dim unk_458EB8 As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Fields15
  Dim var_BC As Variant
  Dim var_100 As TextBox
  Dim var_C8 As Variant
  Dim var_FC As Fields15
  loc_125DE27: var_88 = arg_C
  loc_125DE3E: var_90 = "Select SCR.MemberCode,S.Name As MemberName,SCR.Code,SCR.Name As Name,SCR.CardType,SCR.CardNo,SCR.Addr,SCR.Phone,SCR.SerialNo,SCR.IssDate,SCR.ValidUpto,SCR.BlockedYN,MF.PicPath,MF.SigPath From SmartCardRegistration SCR Left Join MemberFamily MF On MF.CardRegId=SCR.Code Left Join SubGroup S On SCR.MemberCode=S.Subcode Where SCR.LogSite_Code='" & MemVar_1F95078
  loc_125DE5C: unk_458EB8.Execute var_90 & "' And SCR.Code='" & var_88 & "'", var_BC, -1
  loc_125DE67: Set var_8C = var_C0
  loc_125DE8F: If (var_8C.RecordCount > 0) Then
  loc_125DEC0:   global_60 = Proc_6_38_E69628(CVar(var_8C.Fields.Item("SerialNo")))
  loc_125DF1F:   Set var_FC = Me.Txt
  loc_125DF25:   Call 0.Method_Proc_285_24_125E3800 (CInt(0), var_100, CStr(Format(CVar(var_8C.Fields.Item("IssDate")), "dd/MMM/yyyy")))
  loc_125DF2D:   var_100.Text = 1
  loc_125DF80:   Set var_FC = Me.Txt
  loc_125DF86:   Call 0.Method_Proc_285_24_125E3800 (CInt(1), var_100, CStr(var_8C.Fields.Item("CardType").Value))
  loc_125DF8E:   var_100.Text = 1
  loc_125DFDA:   Set var_FC = Me.Txt
  loc_125DFE0:   Call 0.Method_Proc_285_24_125E3800 (CInt(2), var_100)
  loc_125DFE8:   var_100.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("MemberName")))
  loc_125E032:   Set var_FC = Me.Txt
  loc_125E038:   Call 0.Method_Proc_285_24_125E3800 (CInt(2), var_100)
  loc_125E040:   var_100.Tag = Proc_6_38_E69628(CVar(var_8C.Fields.Item("MemberCode")))
  loc_125E06B:   var_C8 = var_8C.Fields.Item("Name")
  loc_125E08A:   Set var_FC = Me.Txt
  loc_125E090:   Call 0.Method_Proc_285_24_125E3800 (CInt(3), var_100)
  loc_125E098:   var_100.Text = Proc_6_38_E69628(CVar(var_C8))
  loc_125E0BA:   Set var_C0 = Me.Txt
  loc_125E0C0:   Call 0.Method_Proc_285_24_125E3800 (CInt(3), var_C8)
  loc_125E0C8:   var_C8.Tag = var_88
  loc_125E10A:   Set var_FC = Me.Txt
  loc_125E110:   Call 0.Method_Proc_285_24_125E3800 (CInt(4), var_100)
  loc_125E118:   var_100.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardNo")))
  loc_125E162:   Set var_FC = Me.Txt
  loc_125E168:   Call 0.Method_Proc_285_24_125E3800 (CInt(5), var_100)
  loc_125E170:   var_100.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Addr")))
  loc_125E1BA:   Set var_FC = Me.Txt
  loc_125E1C0:   Call 0.Method_Proc_285_24_125E3800 (CInt(6), var_100)
  loc_125E1C8:   var_100.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Phone")))
  loc_125E22E:   Set var_FC = Me.Txt
  loc_125E234:   Call 0.Method_Proc_285_24_125E3800 (CInt(7), var_100, CStr(Format(CVar(var_8C.Fields.Item("ValidUpto")), "dd/MMM/yyyy")))
  loc_125E23C:   var_100.Text = 1
  loc_125E2C0:   Set var_FC = Me.Txt
  loc_125E2C6:   Call 0.Method_Proc_285_24_125E3800 (CInt(8), var_100)
  loc_125E2CE:   var_100.Text = CStr(IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("BlockedYN")), 1) = "Y"), "Yes", "No"))
  loc_125E301:   var_C0 = var_8C.Fields
  loc_125E350:   Call Proc_285_25_11DC868(Proc_6_38_E69628(CVar(var_C0.Item("PicPath"))), Proc_6_38_E69628(CVar(var_8C.Fields.Item("SigPath"))))
  loc_125E36F: Else
  loc_125E36F:   Call Proc_285_21_EE11D4(var_C0)
  loc_125E374: End If
  loc_125E379: Set var_8C = Nothing
  loc_125E37C: Exit Sub
End Sub

Public Sub Proc_285_25_11DC868(arg_C, arg_10) '11DC868
  'Data Table: 458EAC
  Dim var_8C As Image
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_11DC40F: Set var_8C = Me.ImgPhoto
  loc_11DC428: If (var_8C.Tag <> arg_C) Then
  loc_11DC438:   var_F0 = IsNull(arg_C)
  loc_11DC43F:   var_B0 = arg_C
  loc_11DC44F:   var_D0 = vbNullString
  loc_11DC466:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11DC487:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DC49C:     Me.ImgPhoto.Picture = var_8C
  loc_11DC4B5:     Me.ImgPhoto.Tag = vbNullString
  loc_11DC4C0:   Else
  loc_11DC4C3:     var_A0 = arg_C
  loc_11DC4D3:     var_D0 = arg_C
  loc_11DC4FE:     var_B0 = "DAT"
  loc_11DC526:     var_F0 = "AVI"
  loc_11DC545:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11DC554:       Me.ImgPhoto.Visible = False
  loc_11DC55F:     Else
  loc_11DC56C:       Me.ImgPhoto.Tag = arg_C
  loc_11DC580:       Call 0.Method_Proc_285_25_11DC8684 (arg_C, var_17A)
  loc_11DC588:       If var_17A Then
  loc_11DC5A5:         Set var_8C = Me.ImgPhoto
  loc_11DC5BD:         Me.Global.LoadPicture CVar(Me.ImgPhoto.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11DC5D2:         Me.ImgPhoto.Picture = var_114
  loc_11DC5E7:         Set var_8C = Me.ImgPhoto
  loc_11DC5ED:         var_8C.Refresh
  loc_11DC5F8:       Else
  loc_11DC616:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DC62B:         Me.ImgPhoto.Picture = var_8C
  loc_11DC637:       End If
  loc_11DC637:     End If
  loc_11DC637:   End If
  loc_11DC637: End If
  loc_11DC63E: Set var_8C = Me.ImgSign
  loc_11DC657: If (var_8C.Tag <> arg_10) Then
  loc_11DC667:   var_F0 = IsNull(arg_10)
  loc_11DC66E:   var_B0 = arg_10
  loc_11DC67E:   var_D0 = vbNullString
  loc_11DC695:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11DC6B6:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DC6CB:     Me.ImgSign.Picture = var_8C
  loc_11DC6E4:     Me.ImgSign.Tag = vbNullString
  loc_11DC6EF:   Else
  loc_11DC6F2:     var_A0 = arg_10
  loc_11DC702:     var_D0 = arg_10
  loc_11DC72D:     var_B0 = "DAT"
  loc_11DC755:     var_F0 = "AVI"
  loc_11DC774:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11DC783:       Me.ImgSign.Visible = False
  loc_11DC78E:     Else
  loc_11DC795:       Set var_8C = Me.ImgSign
  loc_11DC79B:       var_8C.Tag = arg_10
  loc_11DC7AF:       Call 0.Method_Proc_285_25_11DC8684 (arg_10, var_17A, var_8C)
  loc_11DC7B7:       If var_17A Then
  loc_11DC7D4:         Set var_8C = Me.ImgSign
  loc_11DC7EC:         Me.Global.LoadPicture CVar(Me.ImgSign.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11DC801:         Me.ImgSign.Picture = var_114
  loc_11DC816:         Set var_8C = Me.ImgSign
  loc_11DC81C:         var_8C.Refresh
  loc_11DC827:       Else
  loc_11DC845:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DC85A:         Me.ImgSign.Picture = var_8C
  loc_11DC866:       End If
  loc_11DC866:     End If
  loc_11DC866:   End If
  loc_11DC866: End If
  loc_11DC866: Exit Sub
End Sub

Public Sub Proc_285_26_EF778C
  'Data Table: 458EAC
  Dim var_88 As String
  Dim var_9C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim unk_458EB8 As Connection15
  loc_EF76DF: var_88 = "SELECT SCL.DocId As Searchcode,SCL.Code,SCL.VType,SCL.VNo,Convert(Varchar(11),SCL.VDate,103) VDate,SCL.Narration,SCL.U_Name,SCL.U_EntDt,SCL.CashAmt,SCL.SecurityAmt,SCR.IssDate,SCR.CardType,SCR.Name,SCR.CardNo,SCR.Addr,SCR.Phone,SCR.ValidUpto,SCR.BlockedYN,SCR.SerialNo,SCR.MemberCode,MF.PicPath,MF.SigPath,S.Name MemberName From (Select DocId,Max(Code)Code,Max(VType)Vtype,Max(VNo)VNo,Max(VDate)VDate,Max(Narration)Narration,Max(U_Name)U_Name,Max(U_EntDt)U_EntDt,IsNull(Sum(CashAmt),0)CashAmt,IsNull(Sum(SecurityAmt),0)SecurityAmt From " & "(Select DocId,Code,Vtype,VNo,VDate,Narration,U_Name,U_EntDt,CashAmt = CASE WHEN Type='RCARDC' THEN AmtDr ELSE 0 END ,SecurityAmt = CASE WHEN Type='RCARDS' THEN AmtDr ELSE 0 END From SmartCardLedger Where VType='RCARD' And AmtDr>0 And Code='"
  loc_EF76F0: var_9C = CVar(var_88 & global_56 & "' And VDate='") 'String
  loc_EF7729: var_15C = var_9C & CDate(MemVar_1F950EC) & "' And Site_Code='" & CVar(MemVar_1F95070) & "' And LOGSITE_CODE='" & CVar(MemVar_1F95078) & "')Q Group By Q.DocId) SCL Inner Join SmartCardRegistration SCR On SCL.Code=SCR.Code " 
  loc_EF7732: var_17C = var_15C & "Left Join MemberFamily MF On SCR.Code=MF.CardRegId Left Join Subgroup S On SCR.MemberCode=S.SubCode Order By SCL.VNo Desc" 
  loc_EF776B: unk_458EB8.Execute CStr(var_17C), var_9C, -1
  loc_EF777C: Set global_52 = var_180
  loc_EF778A: Exit Sub
End Sub
