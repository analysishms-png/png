VERSION 5.00
Begin VB.Form FaChqClear
  Caption = "Cheque/DD Clearing Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaChqClear.frx":0
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11580
  ClientHeight = 7320
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11580
    Height = 450
    TabIndex = 22
  End
  Begin DataGrid DGParty
    Left = 990
    Top = 4995
    Width = 5640
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 16
  End
  Begin DataGrid DGBank
    Left = 6780
    Top = 4965
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC00000&
    Left = 3420
    Top = 2520
    Width = 1395
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
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
  Begin Frame FrmList
    Left = 6135
    Top = 7350
    Width = 2505
    Height = 1830
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = -15
      Width = 2325
      Height = 1830
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 3420
    Top = 1575
    Width = 4935
    Height = 285
    TabIndex = 2
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
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 3420
    Top = 1260
    Width = 4935
    Height = 285
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 270
    Top = 4110
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
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
    Index = 3
    ForeColor = &HC00000&
    Left = 3420
    Top = 2205
    Width = 1395
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 3420
    Top = 1890
    Width = 1395
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
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
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 3420
    Top = 945
    Width = 1395
    Height = 285
    TabIndex = 0
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
  Begin MSHFlexGrid FGrid
    Left = 345
    Top = 2850
    Width = 11775
    Height = 5505
    TabIndex = 6
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 21
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "System"
      Size = 19.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "(Not Applicable in case of multiple Debit && Credit Vouchers)"
    Index = 5
    ForeColor = &H80&
    Left = 8385
    Top = 1590
    Width = 3780
    Height = 480
    TabIndex = 20
    AutoSize = -1  'True
    WordWrap = -1  'True
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
  Begin Label Label1
    Caption = "Status(Clear./UnClea/All)"
    Index = 2
    ForeColor = &HC00000&
    Left = 1035
    Top = 2535
    Width = 2340
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
  Begin Label Label1
    Caption = "Party Account"
    Index = 0
    ForeColor = &HC00000&
    Left = 1035
    Top = 1590
    Width = 1320
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
  Begin Label LblType
    Caption = " "
    Index = 1
    ForeColor = &H80&
    Left = 6270
    Top = 2220
    Width = 420
    Height = 225
    TabIndex = 14
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblType
    Caption = " "
    Index = 0
    ForeColor = &H80&
    Left = 6270
    Top = 1875
    Width = 435
    Height = 225
    TabIndex = 13
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Bank Account"
    Index = 28
    ForeColor = &HC00000&
    Left = 1035
    Top = 1275
    Width = 1305
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
  Begin Label Label1
    Caption = "Balance As Per Book"
    Index = 1
    ForeColor = &HC00000&
    Left = 1035
    Top = 2235
    Width = 1995
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
  Begin Label Label1
    Caption = "Balance As Per Bank"
    Index = 4
    ForeColor = &HC00000&
    Left = 1035
    Top = 1905
    Width = 1995
    Height = 240
    TabIndex = 9
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
    Caption = "UpTo Date"
    Index = 3
    ForeColor = &HC00000&
    Left = 1035
    Top = 960
    Width = 990
    Height = 240
    TabIndex = 8
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

Attribute VB_Name = "FaChqClear"

Private global_64 As Integer
Private global_66 As Integer

Private Sub TopCtrl1_UnknownEvent_A 'EE0114
  'Data Table: 48ED04
  Dim var_88 As String
  Dim var_94 As TextBox
  loc_EE0060: On Error Goto loc_EE00EC
  loc_EE0086: Call Proc_194_41_F77C48(Proc_5_1_100EC1C("ADD", Me))
  loc_EE0091: Call Proc_194_40_F99BA0(global_60)
  loc_EE009B: var_88 = CStr(MemVar_1F950EC)
  loc_EE00A9: Set var_8C = Me.Txt
  loc_EE00AF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EE00B7: var_94.Text = var_88
  loc_EE00D1: Set var_8C = Me.Txt
  loc_EE00D7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EE00DF: var_94.SetFocus
  loc_EE00EB: Exit Sub
  loc_EE00EC: ' Referenced from: EE0060
  loc_EE00F2: Call 0.Method_arg_50 (var_88)
  loc_EE0107: Proc_183_57_104B0BC(var_88, "TopCtrl1_eAdd")
  loc_EE0113: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F313D4
  'Data Table: 48ED04
  Dim var_C4 As Variant
  loc_F312D0: On Error Goto loc_F313AB
  loc_F3130A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F31322:   var_108 = "INI"
  loc_F31330:   Call Proc_194_41_F77C48(Proc_5_1_100EC1C(var_108, Me))
  loc_F3134E:   Me.FGrid.Rows = 1
  loc_F3136B:   var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F31373:   Set var_114 = Me.FGrid
  loc_F313A2:   Me.FGrid.FixedRows = 1
  loc_F313AA: End If
  loc_F313AA: Exit Sub
  loc_F313AB: ' Referenced from: F312D0
  loc_F313B1: Call 0.Method_arg_50 (var_108, FGrid.DispID_10000)
  loc_F313C6: Proc_183_57_104B0BC(var_108, "TopCtrl1_eCancel")
  loc_F313D2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19780
  'Data Table: 48ED04
  loc_E19775: Me.Global.Unload Me
  loc_E1977D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '12E8824
  'Data Table: 48ED04
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_124 As String
  Dim var_136 As Integer
  Dim var_C0 As Variant
  loc_12E8170: On Error Goto loc_12E87FC
  loc_12E817C: var_A0 = Me.RecordCount
  loc_12E818A: If (var_A0 = 0) Then
  loc_12E81A6:   MsgBox("No Record Present For Printing", 0, var_E0, var_100, var_120)
  loc_12E81B6:   Exit Sub
  loc_12E81B7: End If
  loc_12E81BA: var_9C = "BankReconciliation"
  loc_12E81E4: Set var_12C = global_84 
  loc_12E81F0: var_136 = CreateFieldDefFile(var_12C, MemVar_1F953B4 & "\" & var_9C & ".ttx")
  loc_12E81FD: global_84 = var_12C
  loc_12E8204: var_B0 = CVar(var_136) 'Integer
  loc_12E8207: var_94 = var_B0 'Variant
  loc_12E8227: var_124 = MemVar_1F953B4 & "\"
  loc_12E823E: Call 0.Method_arg_1C (var_124 & var_9C & ".RPT", var_B0, var_12C)
  loc_12E8249: MemVar_1F951E8 = var_12C
  loc_12E826A: Call 0.Method_arg_90 (var_12C, var_A0, var_96)
  loc_12E8272: Call 0.Method_arg_24 (1, var_136)
  loc_12E827E: For var_13A =  To CInt(var_A0): &HFF = var_13A 'Integer
  loc_12E8297:   Call 0.Method_arg_90 (var_12C, CLng(var_96))
  loc_12E829F:   Call 0.Method_arg_20 (var_140)
  loc_12E82A7:   Call 0.Method_arg_30 (var_124)
  loc_12E82BD:   var_150 = Ucase(CVar(var_124)) 'Variant
  loc_12E82D3:   var_C0 = "Title"
  loc_12E82ED:   If (var_150 = Ucase(var_C0)) Then
  loc_12E82FB:     Proc_6_17_EAAE40(var_C0)
  loc_12E8317:     Call 0.Method_arg_90 (var_12C, CLng(var_96), var_140)
  loc_12E831F:     Call 0.Method_arg_20 (CStr(var_C0))
  loc_12E8327:     Call 0.Method_arg_38 (var_9C)
  loc_12E833C:   Else
  loc_12E834D:     var_E0 = Ucase("UpToDate")
  loc_12E835E:     If (var_150 = var_E0) Then
  loc_12E836C:       Set var_12C = Me.Txt
  loc_12E8372:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0))
  loc_12E8381:       Proc_6_17_EAAE40(var_E0, CVar(var_140))
  loc_12E839D:       Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E83A5:       Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E83AD:       Call 0.Method_arg_38 (var_140)
  loc_12E83C8:     Else
  loc_12E83D9:       var_E0 = Ucase("BankAc")
  loc_12E83EA:       If (var_150 = var_E0) Then
  loc_12E83F8:         Set var_12C = Me.Txt
  loc_12E83FE:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1))
  loc_12E840D:         Proc_6_17_EAAE40(var_E0, CVar(var_140))
  loc_12E8429:         Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E8431:         Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E8439:         Call 0.Method_arg_38 (var_140)
  loc_12E8454:       Else
  loc_12E8465:         var_E0 = Ucase("PartyAc")
  loc_12E8476:         If (var_150 = var_E0) Then
  loc_12E8484:           Set var_12C = Me.Txt
  loc_12E848A:           Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(4))
  loc_12E8499:           Proc_6_17_EAAE40(var_E0, CVar(var_140))
  loc_12E84B5:           Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E84BD:           Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E84C5:           Call 0.Method_arg_38 (var_140)
  loc_12E84E0:         Else
  loc_12E84F1:           var_E0 = Ucase("BankBal")
  loc_12E8502:           If (var_150 = var_E0) Then
  loc_12E8510:             Set var_12C = Me.Txt
  loc_12E8516:             Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2))
  loc_12E8525:             Proc_6_17_EAAE40(var_E0, CVar(var_140))
  loc_12E8541:             Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E8549:             Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E8551:             Call 0.Method_arg_38 (var_140)
  loc_12E856C:           Else
  loc_12E857D:             var_E0 = Ucase("BankBalType")
  loc_12E858E:             If (var_150 = var_E0) Then
  loc_12E859A:               Set var_12C = Me.LblType
  loc_12E85A0:               Call 0.Method_TopCtrl1_UnknownEvent_140 (0)
  loc_12E85AF:               Proc_6_17_EAAE40(var_E0, CVar(var_140))
  loc_12E85CB:               Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E85D3:               Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E85DB:               Call 0.Method_arg_38 (var_140)
  loc_12E85F6:             Else
  loc_12E8607:               var_E0 = Ucase("BookBal")
  loc_12E8618:               If (var_150 = var_E0) Then
  loc_12E8626:                 Set var_12C = Me.Txt
  loc_12E862C:                 Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(3))
  loc_12E863B:                 Proc_6_17_EAAE40(var_E0, CVar(var_140))
  loc_12E8657:                 Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E865F:                 Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E8667:                 Call 0.Method_arg_38 (var_140)
  loc_12E8682:               Else
  loc_12E8693:                 var_E0 = Ucase("BookBalType")
  loc_12E86A4:                 If (var_150 = var_E0) Then
  loc_12E86B0:                   Set var_12C = Me.LblType
  loc_12E86B6:                   Call 0.Method_TopCtrl1_UnknownEvent_140 (1)
  loc_12E86C5:                   Proc_6_17_EAAE40(var_E0, CVar(var_140))
  loc_12E86E1:                   Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E86E9:                   Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E86F1:                   Call 0.Method_arg_38 (var_140)
  loc_12E870C:                 Else
  loc_12E871D:                   var_E0 = Ucase("Status")
  loc_12E872E:                   If (var_150 = var_E0) Then
  loc_12E873C:                     Set var_12C = Me.Txt
  loc_12E8742:                     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(5))
  loc_12E8751:                     Proc_6_17_EAAE40(var_E0, CVar(var_140))
  loc_12E8759:                     var_124 = CStr(var_E0)
  loc_12E876D:                     Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E8775:                     Call 0.Method_arg_20 (var_124)
  loc_12E877D:                     Call 0.Method_arg_38 (var_140)
  loc_12E8795:                   End If
  loc_12E8795:                 End If
  loc_12E8795:               End If
  loc_12E8795:             End If
  loc_12E8795:           End If
  loc_12E8795:         End If
  loc_12E8795:       End If
  loc_12E8795:     End If
  loc_12E8795:   End If
  loc_12E8798: Next var_13A 'Integer
  loc_12E87B9: Call 0.Method_arg_64 (var_12C, CVar(global_84))
  loc_12E87C1: Call 0.Method_arg_2C (var_D0)
  loc_12E87CF: Call 0.Method_arg_150 (var_F0)
  loc_12E87DA: Call 0.Method_arg_50 (var_124)
  loc_12E87F3: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_12E87FB: Exit Sub
  loc_12E87FC: ' Referenced from: 12E8170
  loc_12E8802: Call 0.Method_arg_50 (var_124, var_124)
  loc_12E8817: Proc_183_57_104B0BC(var_124, "TopCtrl1_ePrn")
  loc_12E8823: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0BC04
  'Data Table: 48ED04
  Dim Me As Recordset15
  loc_E0BBFB: Me.Requery -1
  loc_E0BC00: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '130CAD4
  'Data Table: 48ED04
  Dim var_8A As Integer
  Dim unk_48ED2C As Connection15
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_2AC As Variant
  Dim var_2CC As Variant
  Dim var_340 As Variant
  Dim var_360 As Variant
  Dim var_384 As Variant
  Dim var_388 As String
  Dim var_3D8 As Double
  Dim var_27C As Variant
  Dim var_398 As Variant
  Dim var_3E8 As Variant
  Dim var_408 As Variant
  Dim var_3D0 As MSHFlexGrid
  Dim var_478 As Variant
  Dim var_498 As Variant
  Dim var_4BC As Variant
  Dim var_3CC As Variant
  loc_130C418: On Error Goto loc_130CA95
  loc_130C41E: Call Proc_194_39_E00A5C(var_96)
  loc_130C429: If (var_96 = &HFF) Then
  loc_130C42C:   Exit Sub
  loc_130C42D: End If
  loc_130C42F: var_8A = &HFF
  loc_130C43B: unk_48ED2C.BeginTrans var_9C
  loc_130C465: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_B4 'Integer
  loc_130C46F:   var_C4 = CVar(CLng(var_92)) 'Long
  loc_130C477:   var_E4 = CVar(CLng(1)) 'Long
  loc_130C4B3:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_130C4BA:     var_C4 = CVar(CLng(var_92)) 'Long
  loc_130C4C2:     var_E4 = CVar(CLng(3)) 'Long
  loc_130C4FE:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "HPOST") Then
  loc_130C50D:       var_E4 = CVar(CLng(&HB)) 'Long
  loc_130C55E:       Proc_183_7_EB17D4(var_1C8, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_92)), var_E4, CVar(CLng(var_92)))
  loc_130C58F:       Proc_183_7_EB17D4(var_26C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_92)), var_E4)
  loc_130C598:       var_2AC = CVar(CLng(var_92)) 'Long
  loc_130C5A0:       var_2CC = CVar(CLng(1)) 'Long
  loc_130C5E9:       var_3D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_130C621:       var_27C = "Update Ledger Set Chq_No='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "',Chq_Date=" & var_1C8 & ",Clg_Date=" & var_26C 
  loc_130C657:       unk_48ED2C.Execute CStr(var_27C & " Where DocID='" & CVar(CStr(Me.FGrid.TextMatrix))) & "' AND V_SNO=" & CVar(var_3D8)), var_3CC, -1
  loc_130C6FE:       Proc_183_7_EB17D4(var_1C8, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_92)), CVar(CLng(&HB)), CVar(CLng(var_92)), var_3D0, var_3D8)
  loc_130C72F:       Proc_183_7_EB17D4(var_26C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_92)), CVar(CLng(2)), CVar(CLng(var_92)))
  loc_130C738:       var_2AC = CVar(CLng(var_92)) 'Long
  loc_130C740:       var_2CC = CVar(CLng(1)) 'Long
  loc_130C75F:       var_340 = CVar(CLng(var_92)) 'Long
  loc_130C767:       var_360 = CVar(CLng(2)) 'Long
  loc_130C776:       var_384 = Me.FGrid.TextMatrix)
  loc_130C790:       var_3E8 = CVar(CLng(var_92)) 'Long
  loc_130C798:       var_408 = CVar(CLng(9)) 'Long
  loc_130C7C1:       var_478 = CVar(CLng(var_92)) 'Long
  loc_130C7C9:       var_498 = CVar(CLng(7)) 'Long
  loc_130C7D8:       var_4BC = Me.FGrid.TextMatrix)
  loc_130C819:       var_27C = "Update Ledger Set Chq_No='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "',Chq_Date=" & var_1C8 & ",Clg_Date=" & var_26C 
  loc_130C841:       var_398 = CVar((Val(CStr(var_384)) - CDbl(1))) 'Double
  loc_130C84E:       var_3CC = var_27C & " Where DocID='" & CVar(CStr(Me.FGrid.TextMatrix))) & "' AND V_SNO=" & CVar(Val(CStr(var_384))) & " AND AmtCr=" 
  loc_130C884:       unk_48ED2C.Execute CStr(var_3CC & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & " AND ContraSub='" & CVar(CStr(var_4BC)) & "'"), var_520, -1
  loc_130C8E7:     Else
  loc_130C944:       Proc_183_7_EB17D4(var_1C8, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_92)), CVar(CLng(&HB)), CVar(CLng(var_92)), var_524, var_4BC)
  loc_130C975:       Proc_183_7_EB17D4(var_26C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_92)), var_498, var_478)
  loc_130C97E:       var_2AC = CVar(CLng(var_92)) 'Long
  loc_130C986:       var_2CC = CVar(CLng(1)) 'Long
  loc_130C9D6:       var_27C = "Update Ledger Set Chq_No='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "',Chq_Date=" & var_1C8 & ",Clg_Date=" & var_26C 
  loc_130CA01:       unk_48ED2C.Execute CStr(var_27C & " Where DocID='" & CVar(CStr(Me.FGrid.TextMatrix))) & "'"), var_384, -1
  loc_130CA41:     End If
  loc_130CA41:   End If
  loc_130CA44: Next var_B4 'Integer
  loc_130CA4F: unk_48ED2C.CommitTrans
  loc_130CA54: Call Proc_194_38_16DA2AC()
  loc_130CA5B: var_8A = 0
  loc_130CA73: var_388 = "INI"
  loc_130CA81: Call Proc_194_41_F77C48(Proc_5_1_100EC1C(var_388, Me), global_60)
  loc_130CA91: Set var_88 = Nothing
  loc_130CA94: Exit Sub
  loc_130CA95: ' Referenced from: 130C418
  loc_130CA9B: If (var_8A = &HFF) Then
  loc_130CAA4:   unk_48ED2C.RollbackTrans
  loc_130CAA9: End If
  loc_130CAAF: Call 0.Method_arg_50 (var_388)
  loc_130CAC4: Proc_183_57_104B0BC(var_388, "TopCtrl1_eSave")
  loc_130CAD0: Exit Sub
  loc_130CAD1: Exit Sub
End Sub

Private Sub DGBank_UnknownEvent_9 'F4CD74
  'Data Table: 48ED04
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4CC6B: Me.DGBank.Visible = False
  loc_F4CC8A: If (Me.RecordCount > 0) Then
  loc_F4CCC9:   Set var_B4 = Me.Txt
  loc_F4CCCF:   Call 0.Method_DGBank_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4CCD7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4CD0A:   var_B0 = Me.Fields.Item("Name")
  loc_F4CD29:   Set var_B4 = Me.Txt
  loc_F4CD2F:   Call 0.Method_DGBank_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4CD37:   var_B8.Text = CStr(var_B0.Value)
  loc_F4CD4D: End If
  loc_F4CD58: Set var_A8 = Me.Txt
  loc_F4CD5E: Call 0.Method_DGBank_UnknownEvent_90 (CInt(1))
  loc_F4CD66: var_B0.SetFocus
  loc_F4CD72: Exit Sub
End Sub

Private Sub Form_Load() '122B580
  'Data Table: 48ED04
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_C0 As TextBox
  Dim var_C8 As DataGrid
  Dim var_CC As TextBox
  Dim var_D4 As DataGrid
  Dim var_AC As String
  Dim Me As Recordset15
  loc_122B074: On Error Goto loc_122B558
  loc_122B081: Set var_A8 = Me.TopCtrl1
  loc_122B087: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AEDP")
  loc_122B095: Call 0.Method_arg_50 (var_AC)
  loc_122B09D: var_BC = CVar(var_AC) 'String
  loc_122B0A5: Set var_A8 = Me.TopCtrl1
  loc_122B0AB: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030007(var_BC)
  loc_122B0BD: Call 0.Method_arg_74 (CDbl(0))
  loc_122B0C9: Call 0.Method_arg_7C (CDbl(0))
  loc_122B0D6: Call 0.Method_Me4 (CDbl(11900))
  loc_122B0E3: Call 0.Method_MeC (CDbl(7725))
  loc_122B0FB: Me.FGrid.Height = CVar(CDbl(5000))
  loc_122B111: Set var_A8 = Me.Txt
  loc_122B117: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_122B136: Me.DGBank.Left = CVar(var_C0.Left)
  loc_122B152: Set var_C8 = Me.Txt
  loc_122B158: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_122B173: Set var_A8 = Me.Txt
  loc_122B179: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_122B191: var_94 = CVar(((var_C0.Top + var_CC.Height) + CDbl(&H1E))) 'Single
  loc_122B1A0: Me.DGBank.Top = CVar(var_C0.Left)
  loc_122B1C0: Set var_A8 = Me.Txt
  loc_122B1C6: Call 0.Method_Form_Load0 (CInt(4), var_C0)
  loc_122B1E5: Me.DGParty.Left = CVar(var_C0.Left)
  loc_122B201: Set var_C8 = Me.Txt
  loc_122B207: Call 0.Method_Form_Load0 (CInt(4), var_CC)
  loc_122B222: Set var_A8 = Me.Txt
  loc_122B228: Call 0.Method_Form_Load0 (CInt(4), var_C0)
  loc_122B240: var_94 = CVar(((var_C0.Top + var_CC.Height) + CDbl(&H1E))) 'Single
  loc_122B249: Set var_D4 = Me.DGParty
  loc_122B24F: var_D4.Top = CVar(var_C0.Left)
  loc_122B26D: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_122B27E: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_122B28F: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_122B2A0: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_122B2B1: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_122B2C2: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_122B2D3: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_122B2E4: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_122B2F5: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_122B306: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_122B320: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_122B32E: Set var_A8 = MemVar_1F95044
  loc_122B33D: Call 0.Method_Form_Load8 (var_A8)
  loc_122B353: Me.var_D4.Clone
  loc_122B36D: Call 0.Method_arg_50 (var_A8, -1)
  loc_122B39D: Me.Connection15.Execute "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_BC, -1
  loc_122B3AE: Set global_72 = var_A8
  loc_122B3DF: Me.Recordset15.CursorLocation = 3
  loc_122B409: var_BC = CVar("Select SubCode As Code,Name From SubGroup Where Nature in ('Bank') AND (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_122B413: Me.Open var_BC, CVar(MemVar_1F951E0), 2
  loc_122B427: CVarUnk
  loc_122B42C: VerifyVarObj
  loc_122B432: Set var_A8 = Me.DGBank
  loc_122B438: LateIdStAd
  loc_122B462: Me.DGBank.CursorLocation = 3
  loc_122B48C: var_BC = CVar("Select SubCode As Code,Name From SubGroup Where Nature <>'Bank' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_122B4AA: CVarUnk
  loc_122B4AF: VerifyVarObj
  loc_122B4B5: Set var_A8 = Me.DGParty
  loc_122B4BB: LateIdStAd
  loc_122B4E5: Me.DGParty.CursorLocation = 3
  loc_122B50F: var_BC = CVar("Select SubCode As Code,Name From SubGroup Where Nature in('Bank') AND LOGSITE_CODE='" & MemVar_1F95078 & "' Order by Name") 'String
  loc_122B519: r_BC, CVar(MemVar_1F951E0), 2 var_BC, CVar(MemVar_1F951E0), 2
  loc_122B530: Set var_A8 = Me
  loc_122B539: var_AC = "INI"
  loc_122B547: Call Proc_194_41_F77C48(Proc_5_1_100EC1C(var_AC, var_A8, New, 3, -1, var_A8, New, 3), -1, var_A8, New)
  loc_122B552: Call Proc_194_34_129CEF0(3, -1)
  loc_122B557: Exit Sub
  loc_122B558: ' Referenced from: 122B074
  loc_122B55E: Call 0.Method_arg_50 (var_AC, var_A8)
  loc_122B573: Proc_183_57_104B0BC(var_AC, "Form_Load")
  loc_122B57F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E836AC
  'Data Table: 48ED04
  loc_E83647: Set global_60 = Nothing
  loc_E83659: Set global_52 = Nothing
  loc_E8366B: Set global_56 = Nothing
  loc_E8367D: Set global_80 = Nothing
  loc_E8368F: Set global_72 = Nothing
  loc_E836A1: Set global_84 = Nothing
  loc_E836A8: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E01720
  'Data Table: 48ED04
  loc_E01719: Call Form_Unload(&HFF)
  loc_E0171E: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E66D40
  'Data Table: 48ED04
  loc_E66CF8: On Error Goto loc_E66D16
  loc_E66D0D: Proc_183_40_F3169C(Me, KeyCode)
  loc_E66D15: Exit Sub
  loc_E66D16: ' Referenced from: E66CF8
  loc_E66D1C: Call 0.Method_arg_50 (var_8C)
  loc_E66D31: Proc_183_57_104B0BC(var_8C, "Form_KeyDown")
  loc_E66D3D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1195EF4
  'Data Table: 48ED04
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_100 As String
  Dim var_88 As ListView
  loc_1195B10: On Error Goto loc_1195ECA
  loc_1195B1D: Set var_88 = Me.Txt
  loc_1195B23: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1195B31: Proc_183_28_E216B0(var_8C)
  loc_1195B3D: Call Proc_194_42_E84CC0(var_8C)
  loc_1195B45: var_92 = Index
  loc_1195B50: If (var_92 = CInt(1)) Then
  loc_1195BA1:   Set var_88 = Me.Txt
  loc_1195BA7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1195BAF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1195BC7:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_1195BCA:     Exit Sub
  loc_1195BCB:   End If
  loc_1195BD8:   Set var_88 = Me.Txt
  loc_1195BDE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1195BE6:   var_A0 = var_8C.Text
  loc_1195BF8:   var_B0 = "Name"
  loc_1195C33:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1195C3C:     Me.MoveFirst
  loc_1195C5F:     Set var_88 = Me.Txt
  loc_1195C65:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1195C6D:     0 = var_8C.Text
  loc_1195C86:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1195C9B:   End If
  loc_1195C9E: Else
  loc_1195CA6:   If (var_92 = CInt(4)) Then
  loc_1195CF7:     Set var_88 = Me.Txt
  loc_1195CFD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1195D1D:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1195D20:       Exit Sub
  loc_1195D21:     End If
  loc_1195D2E:     Set var_88 = Me.Txt
  loc_1195D34:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1195D3C:     var_A0 = var_8C.Text
  loc_1195D4E:     var_B0 = "Name"
  loc_1195D89:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1195D92:       Me.MoveFirst
  loc_1195DB5:       Set var_88 = Me.Txt
  loc_1195DBB:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1195DC3:       0 = var_8C.Text
  loc_1195DDC:       Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1195DF1:     End If
  loc_1195DF4:   Else
  loc_1195DFC:     If (var_92 = CInt(5)) Then
  loc_1195E0C:       ReDim var_F0(0 To 2)
  loc_1195E23:       var_F0(0) = "Cleared"
  loc_1195E25:       var_100 = "Un-Cleared"
  loc_1195E32:       var_F0(1) = var_100
  loc_1195E41:       var_F0(2) = "All"
  loc_1195E58:       global_88 = Array(var_F0)
  loc_1195E9A:       Set global_104 = Proc_183_37_EFEF78(Me.ListView, Me.Txt, 1)
  loc_1195EBE:       Me.ListView.Tag = CVar(CStr(Index))
  loc_1195EC9:     End If
  loc_1195EC9:   End If
  loc_1195EC9: End If
  loc_1195EC9: Exit Sub
  loc_1195ECA: ' Referenced from: 1195B10
  loc_1195ED0: Call 0.Method_arg_50 (var_A0, global_88)
  loc_1195EE5: Proc_183_57_104B0BC(var_A0, "Txt_GotFocus")
  loc_1195EF1: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10BB6EC
  'Data Table: 48ED04
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_AC As TextBox
  Dim var_B8 As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As Frame
  loc_10BB440: On Error Goto loc_10BB6C3
  loc_10BB44D: If (CLng(Shift) = &H1B) Then
  loc_10BB450:   Call Proc_194_42_E84CC0()
  loc_10BB455:   Exit Sub
  loc_10BB456: End If
  loc_10BB459: var_86 = KeyCode
  loc_10BB464: If (var_86 = CInt(1)) Then
  loc_10BB49D:   Proc_183_34_1307118(Me.DGBank, Me.Txt, KeyCode, global_52)
  loc_10BB4B0: Else
  loc_10BB4B8:   If (var_86 = CInt(4)) Then
  loc_10BB4C6:     Set var_9C = Me.Txt
  loc_10BB4E2:     Set var_90 = var_9C
  loc_10BB4F1:     Proc_183_34_1307118(Me.DGParty, var_90, KeyCode, global_56, Shift, 0)
  loc_10BB504:   Else
  loc_10BB50C:     If (var_86 = CInt(5)) Then
  loc_10BB519:       If (CLng(Shift) <> &H1B) Then
  loc_10BB53E:         Set var_8C = Me.Txt
  loc_10BB544:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_A0, 1)
  loc_10BB54C:         Shift = var_90.Left
  loc_10BB55E:         Set var_98 = Me.Txt
  loc_10BB564:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A4)
  loc_10BB56C:         0 = var_9C.Top
  loc_10BB57E:         Set var_A8 = Me.Txt
  loc_10BB584:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B0)
  loc_10BB58C:         1 = var_AC.Height
  loc_10BB59E:         Set var_B4 = Me.Txt
  loc_10BB5A4:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B8)
  loc_10BB5AC:         var_BC = var_B8.Width
  loc_10BB5F4:         Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10BB618:       End If
  loc_10BB618:     End If
  loc_10BB618:   End If
  loc_10BB618: End If
  loc_10BB66E: If (((CBool(Me.DGBank.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_10BB686:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10BB68F:     Proc_183_29_E53794(Shift, arg_14, CInt(var_A0), CInt((var_A4 + var_B0)))
  loc_10BB694:   End If
  loc_10BB69C:   If (KeyCode <> CInt(0)) Then
  loc_10BB6B4:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10BB6BD:       Proc_183_30_E53D10(Shift, arg_14, CInt(var_BC))
  loc_10BB6C2:     End If
  loc_10BB6C2:   End If
  loc_10BB6C2: End If
  loc_10BB6C2: Exit Sub
  loc_10BB6C3: ' Referenced from: 10BB440
  loc_10BB6C9: Call 0.Method_arg_50 (var_FC, 750)
  loc_10BB6DE: Proc_183_57_104B0BC(var_FC, "Txt_KeyDown")
  loc_10BB6EA: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFCC60
  'Data Table: 48ED04
  Dim var_86 As Integer
  loc_EFCB8B: Proc_183_46_E07C50(arg_10)
  loc_EFCB93: var_86 = KeyAscii
  loc_EFCB9E: If (var_86 = CInt(1)) Then
  loc_EFCBBD:   If (CBool(Me.DGBank.Visible) = &HFF) Then
  loc_EFCBCF:     var_A0 = "Name"
  loc_EFCBEA:     Proc_183_41_145A968(Me.Txt, KeyAscii, global_52, arg_10)
  loc_EFCBF9:   End If
  loc_EFCBFC: Else
  loc_EFCC04:   If (var_86 = CInt(4)) Then
  loc_EFCC23:     If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_EFCC50:       Proc_183_41_145A968(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_EFCC5F:     End If
  loc_EFCC5F:   End If
  loc_EFCC5F: End If
  loc_EFCC5F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E6DA6C
  'Data Table: 48ED04
  loc_E6DA2A: If (KeyCode = CInt(5)) Then
  loc_E6DA59:   Proc_183_35_F2A594(Me.ListView, Me.Txt, KeyCode)
  loc_E6DA69: End If
  loc_E6DA69: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EB8C
  'Data Table: 48ED04
  loc_E4EB6A: Set var_88 = Me.Txt
  loc_E4EB70: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EB7E: Proc_183_27_E23198(var_8C)
  loc_E4EB8A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1228A84
  'Data Table: 48ED04
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_94 As Variant
  Dim var_B0 As TextBox
  Dim Me As Recordset15
  Dim var_98 As String
  loc_1228580: On Error Goto loc_1228A59
  loc_1228586: var_86 = Cancel
  loc_1228591: If (var_86 = CInt(5)) Then
  loc_12285AF:   If (Me.FrmList.Visible = &HFF) Then
  loc_12285BF:     Set var_8C = Me.Txt
  loc_12285C5:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_12285E4:     If (var_94.Text <> vbNullString) Then
  loc_12285FF:       Set var_94 = Me.ListView.SelectedItem
  loc_1228617:       Set var_AC = Me.Txt
  loc_122861D:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_1228625:       var_B0.Text = var_94.Text
  loc_122863B:     End If
  loc_122863B:   End If
  loc_1228649:   Set var_8C = Me.Txt
  loc_122864F:   Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_1228657:   var_98 = var_94.Tag
  loc_122866E:   If (var_98 <> vbNullString) Then
  loc_1228671:     Call Proc_194_38_16DA2AC(var_86)
  loc_1228689:     Me.FGrid.Row = 1
  loc_1228695:     Set var_8C = Me.FGrid
  loc_12286B8:     Me.FGrid.Col = CVar(CLng(&HD))
  loc_12286C0:   End If
  loc_12286C3: Else
  loc_12286CB:   If (var_86 = CInt(1)) Then
  loc_122871C:     Set var_8C = Me.Txt
  loc_1228722:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_122872A:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_1228742:     If (FGrid.DispID_8001 Or (var_98 = vbNullString)) Then
  loc_1228752:       Set var_8C = Me.Txt
  loc_1228758:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1228760:       var_94.Text = vbNullString
  loc_1228779:       Set var_8C = Me.Txt
  loc_122877F:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1228787:       var_94.Tag = vbNullString
  loc_1228796:     Else
  loc_12287D1:       Set var_AC = Me.Txt
  loc_12287D7:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12287DF:       var_B0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1228812:       var_94 = Me.Fields.Item("Code")
  loc_1228830:       Set var_AC = Me.Txt
  loc_1228836:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_122883E:       var_B0.Tag = CStr(var_94.Value)
  loc_1228854:     End If
  loc_1228857:   Else
  loc_122885F:     If (var_86 = CInt(4)) Then
  loc_12288B0:       Set var_8C = Me.Txt
  loc_12288B6:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_12288D6:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_12288E6:         Set var_8C = Me.Txt
  loc_12288EC:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_12288F4:         var_94.Text = vbNullString
  loc_122890D:         Set var_8C = Me.Txt
  loc_1228913:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_122891B:         var_94.Tag = vbNullString
  loc_122892A:       Else
  loc_1228965:         Set var_AC = Me.Txt
  loc_122896B:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_1228973:         var_B0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12289A6:         var_94 = Me.Fields.Item("Code")
  loc_12289B7:         var_98 = CStr(var_94.Value)
  loc_12289C4:         Set var_AC = Me.Txt
  loc_12289CA:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12289D2:         var_B0.Tag = var_98
  loc_12289E8:       End If
  loc_12289EB:     Else
  loc_12289F3:       If (var_86 = CInt(0)) Then
  loc_1228A03:         Set var_8C = Me.Txt
  loc_1228A09:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1228A20:         Call 0.Method_arg_184 (var_94)
  loc_1228A32:         Set var_B0 = Me.Txt
  loc_1228A38:         Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_1228A40:         Me.Txt.Text = var_98
  loc_1228A53:         Call Proc_194_38_16DA2AC(var_98)
  loc_1228A58:       End If
  loc_1228A58:     End If
  loc_1228A58:   End If
  loc_1228A58: End If
  loc_1228A58: Exit Sub
  loc_1228A59: ' Referenced from: 1228580
  loc_1228A5F: Call 0.Method_arg_50 (var_98)
  loc_1228A67: var_E4 = "Txt_Validate"
  loc_1228A74: Proc_183_57_104B0BC(var_98)
  loc_1228A80: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F4AC74
  'Data Table: 48ED04
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4AB6B: Me.DGParty.Visible = False
  loc_F4AB8A: If (Me.RecordCount > 0) Then
  loc_F4ABC9:   Set var_B4 = Me.Txt
  loc_F4ABCF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4ABD7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4AC0A:   var_B0 = Me.Fields.Item("Name")
  loc_F4AC29:   Set var_B4 = Me.Txt
  loc_F4AC2F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4AC37:   var_B8.Text = CStr(var_B0.Value)
  loc_F4AC4D: End If
  loc_F4AC58: Set var_A8 = Me.Txt
  loc_F4AC5E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(4))
  loc_F4AC66: var_B0.SetFocus
  loc_F4AC72: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F40B88
  'Data Table: 48ED04
  Dim var_98 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F40A7C: Call Proc_194_42_E84CC0()
  loc_F40A8D: If (Index = 0) Then
  loc_F40AA3:   Me.FGrid.CellBackColor = CVar(CLng("12648447"))
  loc_F40ABE:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F40AFD:   Set var_108 = Me.TxtGrid
  loc_F40B03:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_F40B0B:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_F40B3C:   var_114 = CLng(Me.FGrid.Col)
  loc_F40B4C:   If Not (var_114 = CLng(&HB)) Then
  loc_F40B56:     If Not (var_114 = CLng(&HC)) Then
  loc_F40B60:       If (var_114 = CLng(&HD)) Then
  loc_F40B63:       End If
  loc_F40B63:     End If
  loc_F40B6C:     If (global_66 = 0) Then
  loc_F40B77:       var_110 = "{Home}+{End}"
  loc_F40B7D:       Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0, var_114)
  loc_F40B85:     End If
  loc_F40B85:   End If
  loc_F40B85: End If
  loc_F40B85: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10A1244
  'Data Table: 48ED04
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_DC As Variant
  loc_10A0F94: If (KeyCode = 0) Then
  loc_10A0FA1:   If (CLng(Shift) = &H1B) Then
  loc_10A0FB1:     Set var_8C = Me.TxtGrid
  loc_10A0FB7:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_10A0FD1:     Set var_98 = Me.TxtGrid
  loc_10A0FD7:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_10A0FDF:     var_9C.Text = var_90.Tag
  loc_10A0FFB:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10A1000:     Call Proc_194_42_E84CC0(arg_14)
  loc_10A1009:     Set var_8C = Me.FGrid
  loc_10A1026:     Set var_8C = Me.TxtGrid
  loc_10A102C:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_10A1034:     var_90.Visible = FGrid.DispID_8001
  loc_10A1040:     Exit Sub
  loc_10A1041:   End If
  loc_10A1054:   var_B0 = CLng(Me.FGrid.Col)
  loc_10A1064:   If Not (var_B0 = CLng(&HB)) Then
  loc_10A106E:     If (var_B0 = CLng(&HC)) Then
  loc_10A1071:     End If
  loc_10A10B1:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_66 = &HFF))) Then
  loc_10A10BA:       Call Proc_194_36_12BA74C(KeyCode, var_B2)
  loc_10A10C5:       If (var_B2 = &HFF) Then
  loc_10A10E0:         var_AC = Me.FGrid.Col
  loc_10A1125:         Proc_183_25_11BCFD4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HE))
  loc_10A113A:       End If
  loc_10A113A:     End If
  loc_10A113D:   Else
  loc_10A1144:     If (var_B0 = CLng(&HD)) Then
  loc_10A1187:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_66 = &HFF))) Then
  loc_10A1190:         Call Proc_194_36_12BA74C(KeyCode, var_B2, 0, CByte(CLng(var_AC)))
  loc_10A119B:         If (var_B2 = &HFF) Then
  loc_10A11D9:           If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_10A11F5:             var_DC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_10A1204:             Me.FGrid.Row = var_DC
  loc_10A1217:             Set var_8C = Me.FGrid
  loc_10A122B:           Else
  loc_10A122F:             Set var_8C = Me.FGrid
  loc_10A1240:           End If
  loc_10A1240:         End If
  loc_10A1240:       End If
  loc_10A1240:     End If
  loc_10A1240:   End If
  loc_10A1240: End If
  loc_10A1240: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E530D0
  'Data Table: 48ED04
  Dim var_A0 As Long
  loc_E5309F: Proc_183_46_E07C50(arg_10)
  loc_E530B0: If (KeyAscii = 0) Then
  loc_E530C6:   var_A0 = CLng(Me.FGrid.Col)
  loc_E530CF: End If
  loc_E530CF: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E900F4
  'Data Table: 48ED04
  loc_E90088: On Error Goto loc_E9008C
  loc_E9008B: Exit Sub
  loc_E9008C: ' Referenced from: E90088
  loc_E90094: Set var_88 = Err()
  loc_E9009A: Call 0.Method_arg_1C (var_8C)
  loc_E900AB: If (var_8C <> 0) Then
  loc_E900B6:   Set var_88 = Err()
  loc_E900BC:   Call 0.Method_arg_2C (var_90)
  loc_E900DD:   MsgBox(CVar(var_90), &H40, "Validation", var_E0, var_100)
  loc_E900F0: End If
  loc_E900F0: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22328
  'Data Table: 48ED04
  Dim arg_10 As Integer
  loc_E22310: If (Cancel = 0) Then
  loc_E22319:   Call Proc_194_36_12BA74C(Cancel, var_88)
  loc_E22322:   arg_10 = Not(var_88)
  loc_E22325: End If
  loc_E22325: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E61744
  'Data Table: 48ED04
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6170F: Me.FGrid.BackColorSel = CVar(CLng("16308221"))
  loc_E61722: Set var_A8 = Me.TxtGrid
  loc_E61728: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61730: var_AC.Visible = False
  loc_E6173C: Call Proc_194_42_E84CC0()
  loc_E61741: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68420
  'Data Table: 48ED04
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E683DC: Set var_88 = Me.TxtGrid
  loc_E683E2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E683FC: If (var_8C.Visible = 0) Then
  loc_E68415:   Me.FGrid.BackColorSel = CVar(CLng(global_76))
  loc_E6841D: End If
  loc_E6841D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E000
  'Data Table: 48ED04
  loc_E1DFF7: Me.FGrid.CellBackColor = CVar(CLng("12648447"))
  loc_E1DFFF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E00A24
  'Data Table: 48ED04
  loc_E00A1C: Call Proc_194_35_E40978()
  loc_E00A21: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10729C8
  'Data Table: 48ED04
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_E8 As Long
  Dim var_F8 As Variant
  Dim var_118 As String
  loc_107273C: Set var_88 = Me.TopCtrl1
  loc_1072742: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1072787: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1072790:   Call Form_KeyDown(Cancel, arg_10)
  loc_1072795: End If
  loc_1072799: Set var_88 = Me.TopCtrl1
  loc_107279F: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_10727B8: If (CStr() = "Browse") Then
  loc_10727BB:   Exit Sub
  loc_10727BC: End If
  loc_1072830: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1072846:   Me.FGrid.CellBackColor = CVar(CLng("12648447"))
  loc_1072850:   Cancel = 0
  loc_1072856: Else
  loc_10728B8:   If (((CLng(Cancel) = &H28) Or (CLng(Cancel) = &HD)) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10728CE:     Me.FGrid.CellBackColor = CVar(CLng("12648447"))
  loc_10728D8:     Cancel = 0
  loc_10728DB:   End If
  loc_10728DB: End If
  loc_10728E1: global_64 = Cancel
  loc_1072907: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_107292B: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1072941:   var_E8 = CLng(Me.FGrid.Col)
  loc_1072951:   If Not (var_E8 = CLng(&HB)) Then
  loc_107295B:     If Not (var_E8 = CLng(&HC)) Then
  loc_1072965:       If (var_E8 = CLng(&HD)) Then
  loc_1072968:       End If
  loc_1072968:     End If
  loc_107297B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1072993:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1072998:     var_118 = vbNullString
  loc_10729A2:     Set var_B4 = Me.FGrid
  loc_10729A8:     LateIdCallSt
  loc_10729C0:   End If
  loc_10729C0: End If
  loc_10729C2: Cancel = 0
  loc_10729C5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E11770
  'Data Table: 48ED04
  loc_E11761: Call FGrid_UnknownEvent_C()
  loc_E1176B: global_66 = 0
  loc_E1176E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'EF2E24
  'Data Table: 48ED04
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_EF2D64: Set var_88 = Me.TopCtrl1
  loc_EF2D6A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_EF2D83: If (CStr() = "Browse") Then
  loc_EF2D86:   Exit Sub
  loc_EF2D87: End If
  loc_EF2D9A: var_A0 = CLng(Me.FGrid.Col)
  loc_EF2DAA: If Not (var_A0 = CLng(&HB)) Then
  loc_EF2DB4:   If Not (var_A0 = CLng(&HC)) Then
  loc_EF2DBE:     If (var_A0 = CLng(&HD)) Then
  loc_EF2DC1:     End If
  loc_EF2DC1:   End If
  loc_EF2DFA:   Proc_183_26_11578C8(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_EF2E0C: End If
  loc_EF2E16: If (CLng(Cancel) <> &HD) Then
  loc_EF2E1E:   global_66 = &HFF
  loc_EF2E21: End If
  loc_EF2E21: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1CED0
  'Data Table: 48ED04
  loc_E1CEC7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1CECF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1E0A0
  'Data Table: 48ED04
  loc_E1E097: Me.FGrid.CellBackColor = CVar(CLng("12648447"))
  loc_E1E09F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41C3C
  'Data Table: 48ED04
  Dim var_8C As TextBox
  loc_E41C10: Call Proc_194_42_E84CC0()
  loc_E41C20: Set var_88 = Me.TxtGrid
  loc_E41C26: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E41C2E: var_8C.Visible = False
  loc_E41C3A: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E0153C
  'Data Table: 48ED04
  loc_E01537: var_88 = MyValue
  loc_E0153A: Exit Sub
End Sub

Public Sub Proc_194_34_129CEF0
  'Data Table: 48ED04
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_129C8EB: Me.FGrid.Left = CVar(CDbl(400))
  loc_129C906: Me.FGrid.Top = CVar(CDbl(2875))
  loc_129C921: Me.FGrid.Width = CVar(CDbl(16000))
  loc_129C92D: Set var_AC = Me.FGrid
  loc_129C944: global_76 = CStr(CLng(var_AC.BackColor))
  loc_129C95A: var_AC.Cols = &HF
  loc_129C962: var_94 = CVar(CLng(0)) 'Long
  loc_129C967: var_D0 = &HFA
  loc_129C973: LateIdCallSt
  loc_129C97B: var_94 = 0
  loc_129C987: var_D0 = CVar(CLng(1)) 'Long
  loc_129C98C: var_F0 = "DocID"
  loc_129C995: LateIdCallSt
  loc_129C9A0: var_94 = CVar(CLng(1)) 'Long
  loc_129C9AB: var_D0 = CVar(CInt(1)) 'Integer
  loc_129C9B2: LateIdCallSt
  loc_129C9BD: var_94 = CVar(CLng(1)) 'Long
  loc_129C9C2: var_D0 = 0
  loc_129C9CE: LateIdCallSt
  loc_129C9D6: var_94 = 0
  loc_129C9E2: var_D0 = CVar(CLng(2)) 'Long
  loc_129C9E7: var_F0 = "V.SNo"
  loc_129C9F0: LateIdCallSt
  loc_129C9FB: var_94 = CVar(CLng(2)) 'Long
  loc_129CA06: var_D0 = CVar(CInt(1)) 'Integer
  loc_129CA0D: LateIdCallSt
  loc_129CA18: var_94 = CVar(CLng(2)) 'Long
  loc_129CA1D: var_D0 = 0
  loc_129CA29: LateIdCallSt
  loc_129CA31: var_94 = 0
  loc_129CA3D: var_D0 = CVar(CLng(3)) 'Long
  loc_129CA42: var_F0 = "V.Type"
  loc_129CA4B: LateIdCallSt
  loc_129CA56: var_94 = CVar(CLng(3)) 'Long
  loc_129CA61: var_D0 = CVar(CInt(1)) 'Integer
  loc_129CA68: LateIdCallSt
  loc_129CA73: var_94 = CVar(CLng(3)) 'Long
  loc_129CA78: var_D0 = &H2BC
  loc_129CA84: LateIdCallSt
  loc_129CA8C: var_94 = 0
  loc_129CA98: var_D0 = CVar(CLng(4)) 'Long
  loc_129CA9D: var_F0 = "V.Prefix"
  loc_129CAA6: LateIdCallSt
  loc_129CAB1: var_94 = CVar(CLng(4)) 'Long
  loc_129CABC: var_D0 = CVar(CInt(1)) 'Integer
  loc_129CAC3: LateIdCallSt
  loc_129CACE: var_94 = CVar(CLng(4)) 'Long
  loc_129CAD3: var_D0 = &H2BC
  loc_129CADF: LateIdCallSt
  loc_129CAE7: var_94 = 0
  loc_129CAF3: var_D0 = CVar(CLng(5)) 'Long
  loc_129CAF8: var_F0 = "V.No"
  loc_129CB01: LateIdCallSt
  loc_129CB0C: var_94 = CVar(CLng(5)) 'Long
  loc_129CB17: var_D0 = CVar(CInt(7)) 'Integer
  loc_129CB1E: LateIdCallSt
  loc_129CB29: var_94 = CVar(CLng(5)) 'Long
  loc_129CB34: var_D0 = CVar(CInt(7)) 'Integer
  loc_129CB3B: LateIdCallSt
  loc_129CB46: var_94 = CVar(CLng(5)) 'Long
  loc_129CB4B: var_D0 = &H320
  loc_129CB57: LateIdCallSt
  loc_129CB5F: var_94 = 0
  loc_129CB6B: var_D0 = CVar(CLng(6)) 'Long
  loc_129CB70: var_F0 = "V.Date"
  loc_129CB79: LateIdCallSt
  loc_129CB84: var_94 = CVar(CLng(6)) 'Long
  loc_129CB8F: var_D0 = CVar(CInt(1)) 'Integer
  loc_129CB96: LateIdCallSt
  loc_129CBA1: var_94 = CVar(CLng(6)) 'Long
  loc_129CBA6: var_D0 = &H384
  loc_129CBB2: LateIdCallSt
  loc_129CBBA: var_94 = 0
  loc_129CBC6: var_D0 = CVar(CLng(7)) 'Long
  loc_129CBCB: var_F0 = "Party Code"
  loc_129CBD4: LateIdCallSt
  loc_129CBDF: var_94 = CVar(CLng(7)) 'Long
  loc_129CBEA: var_D0 = CVar(CInt(1)) 'Integer
  loc_129CBF1: LateIdCallSt
  loc_129CBFC: var_94 = CVar(CLng(7)) 'Long
  loc_129CC01: var_D0 = 0
  loc_129CC0D: LateIdCallSt
  loc_129CC15: var_94 = 0
  loc_129CC21: var_D0 = CVar(CLng(8)) 'Long
  loc_129CC26: var_F0 = "Ledger A/c"
  loc_129CC2F: LateIdCallSt
  loc_129CC3A: var_94 = CVar(CLng(8)) 'Long
  loc_129CC45: var_D0 = CVar(CInt(1)) 'Integer
  loc_129CC4C: LateIdCallSt
  loc_129CC57: var_94 = CVar(CLng(8)) 'Long
  loc_129CC5C: var_D0 = &H9C4
  loc_129CC68: LateIdCallSt
  loc_129CC70: var_94 = 0
  loc_129CC7C: var_D0 = CVar(CLng(9)) 'Long
  loc_129CC81: var_F0 = "Debit"
  loc_129CC8A: LateIdCallSt
  loc_129CC95: var_94 = CVar(CLng(9)) 'Long
  loc_129CCA0: var_D0 = CVar(CInt(7)) 'Integer
  loc_129CCA7: LateIdCallSt
  loc_129CCB2: var_94 = CVar(CLng(9)) 'Long
  loc_129CCBD: var_D0 = CVar(CInt(7)) 'Integer
  loc_129CCC4: LateIdCallSt
  loc_129CCCF: var_94 = CVar(CLng(9)) 'Long
  loc_129CCD4: var_D0 = &H3E8
  loc_129CCE0: LateIdCallSt
  loc_129CCE8: var_94 = 0
  loc_129CCF4: var_D0 = CVar(CLng(&HA)) 'Long
  loc_129CCF9: var_F0 = "Credit"
  loc_129CD02: LateIdCallSt
  loc_129CD0D: var_94 = CVar(CLng(&HA)) 'Long
  loc_129CD18: var_D0 = CVar(CInt(7)) 'Integer
  loc_129CD1F: LateIdCallSt
  loc_129CD2A: var_94 = CVar(CLng(&HA)) 'Long
  loc_129CD35: var_D0 = CVar(CInt(7)) 'Integer
  loc_129CD3C: LateIdCallSt
  loc_129CD47: var_94 = CVar(CLng(&HA)) 'Long
  loc_129CD4C: var_D0 = &H3E8
  loc_129CD58: LateIdCallSt
  loc_129CD60: var_94 = 0
  loc_129CD6C: var_D0 = CVar(CLng(&HB)) 'Long
  loc_129CD71: var_F0 = "Cheque No"
  loc_129CD7A: LateIdCallSt
  loc_129CD85: var_94 = CVar(CLng(&HB)) 'Long
  loc_129CD90: var_D0 = CVar(CInt(1)) 'Integer
  loc_129CD97: LateIdCallSt
  loc_129CDA2: var_94 = CVar(CLng(&HB)) 'Long
  loc_129CDAD: var_D0 = CVar(CInt(1)) 'Integer
  loc_129CDB4: LateIdCallSt
  loc_129CDBF: var_94 = CVar(CLng(&HB)) 'Long
  loc_129CDC4: var_D0 = &H44C
  loc_129CDD0: LateIdCallSt
  loc_129CDD8: var_94 = 0
  loc_129CDE4: var_D0 = CVar(CLng(&HC)) 'Long
  loc_129CDE9: var_F0 = "Cheque Date"
  loc_129CDF2: LateIdCallSt
  loc_129CDFD: var_94 = CVar(CLng(&HC)) 'Long
  loc_129CE08: var_D0 = CVar(CInt(1)) 'Integer
  loc_129CE0F: LateIdCallSt
  loc_129CE1A: var_94 = CVar(CLng(&HC)) 'Long
  loc_129CE1F: var_D0 = &H4B0
  loc_129CE2B: LateIdCallSt
  loc_129CE33: var_94 = 0
  loc_129CE3F: var_D0 = CVar(CLng(&HD)) 'Long
  loc_129CE44: var_F0 = "Clearing Date"
  loc_129CE4D: LateIdCallSt
  loc_129CE58: var_94 = CVar(CLng(&HD)) 'Long
  loc_129CE63: var_D0 = CVar(CInt(1)) 'Integer
  loc_129CE6A: LateIdCallSt
  loc_129CE75: var_94 = CVar(CLng(&HD)) 'Long
  loc_129CE7A: var_D0 = &H514
  loc_129CE86: LateIdCallSt
  loc_129CE8E: var_94 = 0
  loc_129CE9A: var_D0 = CVar(CLng(&HE)) 'Long
  loc_129CE9F: var_F0 = "Narration"
  loc_129CEA8: LateIdCallSt
  loc_129CEB3: var_94 = CVar(CLng(&HE)) 'Long
  loc_129CEBE: var_D0 = CVar(CInt(1)) 'Integer
  loc_129CEC5: LateIdCallSt
  loc_129CED0: var_94 = CVar(CLng(&HE)) 'Long
  loc_129CED5: var_D0 = &H2AF8
  loc_129CEE1: LateIdCallSt
  loc_129CEEB: Set var_AC = Nothing 
  loc_129CEEF: Exit Sub
End Sub

Public Sub Proc_194_35_E40978
  'Data Table: 48ED04
  loc_E40954: Set var_88 = Me.TopCtrl1
  loc_E4095A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_E40973: If (CStr() = "Browse") Then
  loc_E40976:   Exit Sub
  loc_E40977: End If
  loc_E40977: Exit Sub
End Sub

Public Sub Proc_194_36_12BA74C(arg_C) '12BA74C
  'Data Table: 48ED04
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_A8 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_A4 As Variant
  Dim var_110 As Variant
  Dim var_124 As MSHFlexGrid
  Dim var_120 As Variant
  Dim var_168 As Variant
  Dim var_138 As Variant
  Dim var_100 As String
  Dim var_17C As String
  loc_12BA124: If (arg_C = 0) Then
  loc_12BA13A:   var_A0 = CLng(Me.FGrid.Col)
  loc_12BA14A:   If (var_A0 = CLng(&HB)) Then
  loc_12BA160:     var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BA18A:     Set var_8C = Me.TxtGrid
  loc_12BA190:     Call 0.Method_Proc_194_36_12BA74C0 (arg_C, var_A4, var_100, CVar(CLng(Me.FGrid.Col)))
  loc_12BA198:     var_CC = var_A4.Text
  loc_12BA1A0:     var_110 = CVar(var_100) 'String
  loc_12BA1A8:     Set var_124 = Me.FGrid
  loc_12BA1AE:     LateIdCallSt
  loc_12BA1CF:   Else
  loc_12BA1D6:     If (var_A0 = CLng(&HC)) Then
  loc_12BA1E3:       Set var_8C = Me.TxtGrid
  loc_12BA1E9:       Call 0.Method_Proc_194_36_12BA74C0 (arg_C, var_A4, var_124)
  loc_12BA233:       Call 0.Method_arg_184 (var_A4, var_100, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_12BA23B:       var_110 = CVar(var_100) 'String
  loc_12BA243:       Set var_128 = Me.FGrid
  loc_12BA249:       LateIdCallSt
  loc_12BA2A6:       If (Me.FGrid.Fields.Item("PDCDt").Value = "No") Then
  loc_12BA2BC:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BA2C4:         var_EC = CVar(CLng(&HC)) 'Long
  loc_12BA306:         If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_12BA313:           var_110 = Me.FGrid.Row
  loc_12BA31C:           var_120 = CVar(CLng(var_110)) 'Long
  loc_12BA324:           var_168 = CVar(CLng(6)) 'Long
  loc_12BA333:           var_138 = Me.FGrid.TextMatrix)
  loc_12BA352:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BA35A:           var_EC = CVar(CLng(&HC)) 'Long
  loc_12BA369:           var_BC = Me.FGrid.TextMatrix)
  loc_12BA374:           var_100 = CStr(var_BC)
  loc_12BA37D:           var_17C = CStr(var_138)
  loc_12BA3A0:           If (CDate(var_100) > CDate(var_17C)) Then
  loc_12BA3BC:             MsgBox("Cheque Date Should be Less than Voucher Date", 0, var_BC, var_110, var_138)
  loc_12BA3DF:             var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BA3E7:             var_EC = CVar(CLng(&HC)) 'Long
  loc_12BA3EC:             var_120 = vbNullString
  loc_12BA3F6:             Set var_A4 = Me.FGrid
  loc_12BA3FC:             LateIdCallSt
  loc_12BA41B:             Set var_8C = Me.TxtGrid
  loc_12BA421:             Call 0.Method_Proc_194_36_12BA74C0 (arg_C, var_A4, vbNullString, var_A4, var_120, var_EC, var_CC)
  loc_12BA429:             var_A4.Text = var_EC
  loc_12BA43A:             Proc_194_36_12BA74C = 0
  loc_12BA440:           End If
  loc_12BA440:         End If
  loc_12BA440:       End If
  loc_12BA443:     Else
  loc_12BA44A:       If (var_A0 = CLng(&HD)) Then
  loc_12BA457:         Set var_8C = Me.TxtGrid
  loc_12BA45D:         Call 0.Method_Proc_194_36_12BA74C0 (arg_C, var_A4, var_CC, var_138)
  loc_12BA466:         Set var_AC = Me.FGrid
  loc_12BA4A7:         Call 0.Method_arg_184 (var_A4, var_100, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_AC.Row)))
  loc_12BA4BD:         LateIdCallSt
  loc_12BA4F8:         var_A4 = Me.FGrid.Fields.Item("PDCDt")
  loc_12BA51A:         If (var_A4.Value = "No") Then
  loc_12BA52A:           Set var_8C = Me.TxtGrid
  loc_12BA530:           Call 0.Method_Proc_194_36_12BA74C0 (arg_C, var_A4, var_100, Me.FGrid, CVar(var_100))
  loc_12BA547:           Call 0.Method_arg_184 (var_A4, var_168, var_120)
  loc_12BA573:           If CBool(Trim(CVar(var_100)) <> vbNullString) Then
  loc_12BA57A:             Set var_8C = Me.FGrid
  loc_12BA59A:             Set var_A4 = Me.FGrid
  loc_12BA5AB:             var_110 = CVar(CStr(var_A4.TextMatrix))) 'String
  loc_12BA5B1:             var_138 = Trim(var_110)
  loc_12BA5D3:             If (var_138 = vbNullString) Then
  loc_12BA5E3:               Set var_8C = Me.TxtGrid
  loc_12BA5E9:               Call 0.Method_Proc_194_36_12BA74C0 (arg_C, var_A4, vbNullString, CVar(CLng(&HC)))
  loc_12BA5F1:               var_A4.Text = CVar(CLng(Me.FGrid.Row))
  loc_12BA600:             Else
  loc_12BA60A:               Set var_A8 = Me.TxtGrid
  loc_12BA610:               Call 0.Method_Proc_194_36_12BA74C0 (arg_C, var_AC)
  loc_12BA62A:               Call 0.Method_arg_184 (var_AC, var_17C)
  loc_12BA633:               Set var_8C = Me.FGrid
  loc_12BA642:               var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BA64A:               var_EC = CVar(CLng(&HC)) 'Long
  loc_12BA659:               var_BC = Me.FGrid.TextMatrix)
  loc_12BA688:               If (CDate(CStr(var_BC)) > CDate(var_17C)) Then
  loc_12BA6A4:                 MsgBox("Clg.Date Must be Greater Than Cheque Date", 0, var_BC, var_110, var_138)
  loc_12BA6D0:                 Set var_A4 = Me.FGrid
  loc_12BA6F4:                 LateIdCallSt
  loc_12BA719:                 Set var_8C = Me.TxtGrid
  loc_12BA71F:                 Call 0.Method_Proc_194_36_12BA74C0 (arg_C, var_A4, vbNullString, Me.FGrid, vbNullString, CVar(CLng(var_A4.Col)))
  loc_12BA727:                 var_A4.Text = CVar(CLng(Me.FGrid.Row))
  loc_12BA738:                 Proc_194_36_12BA74C = 0
  loc_12BA73E:               End If
  loc_12BA73E:             End If
  loc_12BA73E:           End If
  loc_12BA73E:         End If
  loc_12BA73E:       End If
  loc_12BA73E:     End If
  loc_12BA73E:   End If
  loc_12BA73E: End If
  loc_12BA743: Proc_194_36_12BA74C = &HFF
  loc_12BA749: DOC
End Sub

Public Sub Proc_194_37_10B4F04(arg_C) '10B4F04
  'Data Table: 48ED04
  Dim var_90 As Recordset15
  loc_10B4C1D: Set var_90 = arg_C 
  loc_10B4C45: var_90.Fields.Append "SNo", 3, 0
  loc_10B4C71: var_90.Fields.Append "DocID", &HC8, &H15
  loc_10B4C9D: var_90.Fields.Append "VSNo", 3, 0
  loc_10B4CC9: var_90.Fields.Append "VType", &HC8, 5
  loc_10B4CF5: var_90.Fields.Append "VPrefix", &HC8, 5
  loc_10B4D21: var_90.Fields.Append "VNo", 3, 0
  loc_10B4D4D: var_90.Fields.Append "VDate", 7, 0
  loc_10B4D79: var_90.Fields.Append "PartyCode", &HC8, 8
  loc_10B4DA5: var_90.Fields.Append "PartyName", &HC8, &H4B
  loc_10B4DD1: var_90.Fields.Append "DrAmt", 5, 0
  loc_10B4DFD: var_90.Fields.Append "CrAmt", 5, 0
  loc_10B4E29: var_90.Fields.Append "ChqNo", &HC8, &H14
  loc_10B4E55: var_90.Fields.Append "ChqDate", 7, 0
  loc_10B4E81: var_90.Fields.Append "ClgDate", 7, 0
  loc_10B4EAD: var_90.Fields.Append "Narration", &HC8, &HFF
  loc_10B4EBD: var_90.CursorType = 3
  loc_10B4ECA: var_90.LockType = 3
  loc_10B4EE9: var_90.Open var_A4, var_B4, -1
  loc_10B4EF0: Set var_90 = Nothing 
  loc_10B4EF7: Set var_88 = arg_C 
  loc_10B4EFB: Proc_194_37_10B4F04 = -1
End Sub

Public Sub Proc_194_38_16DA2AC
  'Data Table: 48ED04
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_A8 As Variant
  Dim var_92 As Integer
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_D0 As Variant
  Dim var_110 As Variant
  Dim var_118 As Variant
  Dim var_160 As Variant
  Dim var_16C As TextBox
  Dim var_1A4 As Variant
  Dim var_184 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_204 As Variant
  Dim var_254 As Variant
  Dim unk_48ED2C As Connection15
  Dim var_8C As Recordset15
  Dim var_F0 As Variant
  Dim var_282 As Integer
  Dim var_114 As Fields15
  Dim var_B0 As String
  Dim var_28C As Recordset15
  Dim var_15C As Fields15
  Dim var_90 As Recordset15
  Dim var_9C As Double
  Dim var_A4 As Double
  loc_16D8880: On Error Goto loc_16DA281
  loc_16D8891: Set var_A8 = Me.Txt
  loc_16D8897: Call 0.Method_Proc_194_38_16DA2AC0 (CInt(1), var_AC)
  loc_16D889F: var_B0 = var_AC.Tag
  loc_16D88B6: If (var_B0 = vbNullString) Then
  loc_16D88B9:   Exit Sub
  loc_16D88BA: End If
  loc_16D88C9: Me.FGrid.Redraw = False
  loc_16D88DE: Set var_A8 = Me.FGrid
  loc_16D88E4: var_A8.Rows = 1
  loc_16D8906: Call Proc_194_37_10B4F04(New)
  loc_16D8911: Set global_84 = var_A8
  loc_16D891A: var_92 = 1
  loc_16D892B: Set var_A8 = Me.Txt
  loc_16D8931: Call 0.Method_Proc_194_38_16DA2AC0 (CInt(5), var_AC, var_B0)
  loc_16D8939: var_92 = Me.Txt.Text
  loc_16D8950: If (var_B0 = "Cleared") Then
  loc_16D8963:   Set var_A8 = Me.Txt
  loc_16D8969:   Call 0.Method_Proc_194_38_16DA2AC0 (CInt(0), var_AC)
  loc_16D8978:   Proc_183_7_EB17D4(var_F0, CVar(var_AC))
  loc_16D898E:   var_88 = CStr(" and (Clg_Date is not null AND Clg_Date<=" & var_F0 & ") ")
  loc_16D89A2: Else
  loc_16D89B0:   Set var_A8 = Me.Txt
  loc_16D89B6:   Call 0.Method_Proc_194_38_16DA2AC0 (CInt(5), var_AC)
  loc_16D89D5:   If (var_AC.Text = "Un-Cleared") Then
  loc_16D89E8:     Set var_A8 = Me.Txt
  loc_16D89EE:     Call 0.Method_Proc_194_38_16DA2AC0 (CInt(0), var_AC)
  loc_16D89FD:     Proc_183_7_EB17D4(var_F0, CVar(var_AC))
  loc_16D8A13:     var_88 = CStr(" AND (Clg_Date is null OR Clg_Date>" & var_F0 & ") ")
  loc_16D8A24:   End If
  loc_16D8A24: End If
  loc_16D8A2F: Set var_A8 = Me.Txt
  loc_16D8A35: Call 0.Method_Proc_194_38_16DA2AC0 (CInt(0), var_AC)
  loc_16D8A44: Proc_183_7_EB17D4(var_F0, CVar(var_AC))
  loc_16D8A57: Set var_114 = Me.Txt
  loc_16D8A5D: Call 0.Method_Proc_194_38_16DA2AC0 (CInt(1), var_118)
  loc_16D8A78: Set var_15C = Me.Txt
  loc_16D8A7E: Call 0.Method_Proc_194_38_16DA2AC0 (CInt(4), var_160)
  loc_16D8A99: Set var_168 = Me.Txt
  loc_16D8A9F: Call 0.Method_Proc_194_38_16DA2AC0 (CInt(4), var_16C)
  loc_16D8AD7: var_1C4 = IIf((var_160.Tag <> vbNullString), CVar(" And L.Party1='" & var_16C.Tag & "'"), vbNullString)
  loc_16D8AFA: var_110 = "Select L.*,SG.Name As PartyName From VIEWLedger L Left Join SubGroup SG on L.PARTY1=SG.SubCode Where L.V_Date<=" & var_F0 & " And L.PARTY='" 
  loc_16D8B3A: var_254 = var_110 & CVar(var_118.Tag) & "'" & var_1C4 & CVar(var_88) & " AND L.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' ORDER BY L.V_Date,L.V_TYPE,L.V_NO" 
  loc_16D8B48: unk_48ED2C.Execute CStr(var_254), var_278, -1
  loc_16D8B53: Set var_8C = var_27C
  loc_16D8BAD: If (var_8C.RecordCount > 0) Then
  loc_16D8BB0:   ' Referenced from: 16D9815
  loc_16D8BBF:   If Not(var_8C.EOF) Then
  loc_16D8BC2:     var_C0 = vbNullString
  loc_16D8BCC:     Set var_A8 = Me.FGrid
  loc_16D8BE1:     Set var_288 = Me.FGrid
  loc_16D8BE8:     var_C0 = CVar(CLng(var_92)) 'Long
  loc_16D8BF0:     var_148 = CVar(CLng(0)) 'Long
  loc_16D8BFA:     var_E0 = CVar(CStr(var_92)) 'String
  loc_16D8C01:     LateIdCallSt
  loc_16D8C10:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_16D8C18:     var_184 = CVar(CLng(1)) 'Long
  loc_16D8C48:     var_F0 = CVar(CStr(var_8C.Fields.Item("DocID").Value)) 'String
  loc_16D8C4F:     LateIdCallSt
  loc_16D8C69:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_16D8C71:     var_184 = CVar(CLng(2)) 'Long
  loc_16D8CA1:     var_F0 = CVar(CStr(var_8C.Fields.Item("V_SNo").Value)) 'String
  loc_16D8CA8:     LateIdCallSt
  loc_16D8CC2:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_16D8CCA:     var_184 = CVar(CLng(3)) 'Long
  loc_16D8CFA:     var_F0 = CVar(CStr(var_8C.Fields.Item("V_Type").Value)) 'String
  loc_16D8D01:     LateIdCallSt
  loc_16D8D1B:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_16D8D23:     var_184 = CVar(CLng(4)) 'Long
  loc_16D8D53:     var_F0 = CVar(CStr(var_8C.Fields.Item("V_ADD").Value)) 'String
  loc_16D8D5A:     LateIdCallSt
  loc_16D8D74:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_16D8D7C:     var_184 = CVar(CLng(5)) 'Long
  loc_16D8DAC:     var_F0 = CVar(CStr(var_8C.Fields.Item("V_NO").Value)) 'String
  loc_16D8DB3:     LateIdCallSt
  loc_16D8DE9:     var_148 = CVar(CLng(var_92)) 'Long
  loc_16D8DF1:     var_1A4 = CVar(CLng(6)) 'Long
  loc_16D8E1E:     var_110 = CVar(CStr(Format(CVar(var_8C.Fields.Item("V_DATE")), "dd/MMM/yyyy"))) 'String
  loc_16D8E25:     LateIdCallSt
  loc_16D8E3F:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_16D8E47:     var_184 = CVar(CLng(7)) 'Long
  loc_16D8E77:     var_F0 = CVar(CStr(var_8C.Fields.Item("Party").Value)) 'String
  loc_16D8E7E:     LateIdCallSt
  loc_16D8ECD:     var_F0 = CVar(Proc_183_2_E5AE94(CVar(var_8C.Fields.Item("PartyName")), CVar(CLng(8)), CVar(CLng(var_92)), var_288, var_F0, CVar(CLng(8)), CVar(CLng(var_92)))) 'String
  loc_16D8ED4:     LateIdCallSt
  loc_16D8F06:     var_148 = CVar(CLng(var_92)) 'Long
  loc_16D8F0E:     var_1A4 = CVar(CLng(9)) 'Long
  loc_16D8F3B:     var_110 = CVar(CStr(Format(CVar(var_8C.Fields.Item("Debit")), "0.00"))) 'String
  loc_16D8F42:     LateIdCallSt
  loc_16D8F78:     var_148 = CVar(CLng(var_92)) 'Long
  loc_16D8F80:     var_1A4 = CVar(CLng(&HA)) 'Long
  loc_16D8FAD:     var_110 = CVar(CStr(Format(CVar(var_8C.Fields.Item("Credit")), "0.00"))) 'String
  loc_16D8FB4:     LateIdCallSt
  loc_16D8FF9:     var_1A4 = CVar(CLng(var_92)) 'Long
  loc_16D9001:     var_204 = CVar(CLng(&HB)) 'Long
  loc_16D9047:     var_128 = CVar(CStr(IIf(IsNull(CVar(var_8C.Fields.Item("Chq_No"))), vbNullString, CVar(var_8C.Fields.Item("Chq_No"))))) 'String
  loc_16D904E:     LateIdCallSt
  loc_16D908C:     var_148 = CVar(CLng(var_92)) 'Long
  loc_16D9094:     var_1A4 = CVar(CLng(&HC)) 'Long
  loc_16D90C1:     var_110 = CVar(CStr(Format(CVar(var_8C.Fields.Item("Chq_Date")), "dd/MMM/yyyy"))) 'String
  loc_16D90C8:     LateIdCallSt
  loc_16D90FE:     var_148 = CVar(CLng(var_92)) 'Long
  loc_16D9106:     var_1A4 = CVar(CLng(&HD)) 'Long
  loc_16D913A:     LateIdCallSt
  loc_16D9154:     var_148 = CVar(CLng(var_92)) 'Long
  loc_16D915C:     var_1A4 = CVar(CLng(&HE)) 'Long
  loc_16D9164:     var_C0 = "mNarr"
  loc_16D9189:     var_B0 = Proc_183_2_E5AE94(CVar(var_8C.Fields.Item(var_C0)), var_1A4, var_148, var_288, CVar(CStr(Format(CVar(var_8C.Fields.Item("clg_date")), "dd/MMM/yyyy"))), 1, 1)
  loc_16D9196:     var_D0 = "NARR"
  loc_16D91C6:     LateIdCallSt
  loc_16D91F3:     Set var_28C = global_84 
  loc_16D9202:     var_28C.AddNew var_C0, var_D0
  loc_16D922D:     var_28C.Fields.Item("SNo").Value = CVar(var_92)
  loc_16D927C:     var_28C.Fields.Item("DocID").Value = CVar(var_8C.Fields.Item("DocID"))
  loc_16D92D0:     var_28C.Fields.Item("VSNo").Value = CVar(var_8C.Fields.Item("V_SNo"))
  loc_16D9324:     var_28C.Fields.Item("VType").Value = CVar(var_8C.Fields.Item("V_Type"))
  loc_16D9378:     var_28C.Fields.Item("VPrefix").Value = CVar(var_8C.Fields.Item("V_ADD"))
  loc_16D93CC:     var_28C.Fields.Item("VNo").Value = CVar(var_8C.Fields.Item("V_NO"))
  loc_16D9420:     var_28C.Fields.Item("VDate").Value = CVar(var_8C.Fields.Item("V_DATE"))
  loc_16D9474:     var_28C.Fields.Item("PartyCode").Value = CVar(var_8C.Fields.Item("Party"))
  loc_16D94AD:     var_F0 = CVar(Proc_183_2_E5AE94(CVar(var_8C.Fields.Item("PartyName")), Nothing, CVar(Nothing & Proc_183_2_E5AE94(CVar(var_8C.Fields.Item("PartyCode")), var_B0 & " ", var_1A4, var_148)))) 'String
  loc_16D94D0:     var_28C.Fields.Item("PartyName").Value = var_F0
  loc_16D9548:     var_28C.Fields.Item("DrAmt").Value = Format(CVar(var_8C.Fields.Item("Debit")), "0.00")
  loc_16D95C2:     var_28C.Fields.Item("CrAmt").Value = Format(CVar(var_8C.Fields.Item("Credit")), "0.00")
  loc_16D9601:     var_282 = IsNull(CVar(var_8C.Fields.Item("Chq_No")))
  loc_16D963C:     var_110 = IIf(var_282, vbNullString, CVar(var_8C.Fields.Item("Chq_No")))
  loc_16D9664:     var_28C.Fields.Item("ChqNo").Value = var_110
  loc_16D96C4:     var_28C.Fields.Item("ChqDate").Value = CVar(var_8C.Fields.Item("Chq_Date"))
  loc_16D9718:     var_28C.Fields.Item("ClgDate").Value = CVar(var_8C.Fields.Item("clg_date"))
  loc_16D972C:     var_C0 = "mNarr"
  loc_16D9740:     var_AC = var_8C.Fields.Item(var_C0)
  loc_16D9757:     var_D0 = "NARR"
  loc_16D976B:     var_118 = var_8C.Fields.Item(var_D0)
  loc_16D9773:     var_F0 = CVar(var_118) 'Address
  loc_16D9787:     var_B0 = Proc_183_2_E5AE94(CVar(var_AC), var_282, 1, 1, 1)
  loc_16D97B6:     var_15C = var_28C.Fields
  loc_16D97C6:     var_15C.Item("Narration").Value = Left(CVar(var_B0 & " " & Proc_183_2_E5AE94(var_F0, 1, var_110)), &HFF)
  loc_16D97F9:     var_28C.Update var_C0, var_D0
  loc_16D9800:     Set var_28C = Nothing 
  loc_16D980A:     var_92 = (var_92 + 1)
  loc_16D9810:     var_8C.MoveNext
  loc_16D9815:     GoTo loc_16D8BB0
  loc_16D9818:   End If
  loc_16D9820:   If (MemVar_1F953B0 = "S") Then
  loc_16D9840:     Set var_A8 = Me.Txt
  loc_16D9846:     Call 0.Method_Proc_194_38_16DA2AC0 (CInt(0), var_AC, "Select IsNull(Sum(L.AmtDr),0) As AmtDr From Ledger L Where L.Clg_Date<=", var_1C4, -1)
  loc_16D9855:     Proc_183_7_EB17D4(var_F0, CVar(var_AC), var_15C)
  loc_16D9866:     var_110 = var_92 & var_F0 & " And L.SubCode='" 
  loc_16D9878:     Set var_114 = Me.Txt
  loc_16D987E:     Call 0.Method_Proc_194_38_16DA2AC0 (CInt(1), var_118, var_B0)
  loc_16D9886:     var_110 = var_118.Tag
  loc_16D98BB:     unk_48ED2C.Execute CStr(1 & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), 1, 
  loc_16D98C6:     Set var_90 = var_15C
  loc_16D98F1:   Else
  loc_16D98F9:     If (MemVar_1F953B0 = "A") Then
  loc_16D9919:       Set var_A8 = Me.Txt
  loc_16D991F:       Call 0.Method_Proc_194_38_16DA2AC0 (CInt(0), var_AC, "Select IIF(IsNull(Sum(L.AmtDr)),0,Sum(L.AmtDr)) As AmtDr From Ledger L Where L.Clg_Date<=")
  loc_16D992E:       Proc_183_7_EB17D4(var_F0, CVar(var_AC), var_1C4)
  loc_16D9936:       var_100 = -1 & var_F0 
  loc_16D993F:       var_110 = var_92 & var_F0 & " And L.SubCode='" 
  loc_16D9951:       Set var_114 = Me.Txt
  loc_16D9957:       Call 0.Method_Proc_194_38_16DA2AC0 (CInt(1), var_118, var_B0)
  loc_16D995F:       var_110 = var_118.Tag
  loc_16D9994:       unk_48ED2C.Execute CStr(var_15C & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), , 
  loc_16D999F:       Set var_90 = var_15C
  loc_16D99C7:     End If
  loc_16D99C7:   End If
  loc_16D99DB:   If (var_90.RecordCount > 0) Then
  loc_16D99F8:     var_AC = var_90.Fields.Item("AmtDr")
  loc_16D9A09:     var_9C = CSng(var_AC.Value)
  loc_16D9A19:   Else
  loc_16D9A1C:     var_9C = CDbl(0)
  loc_16D9A1F:   End If
  loc_16D9A27:   If (MemVar_1F953B0 = "S") Then
  loc_16D9A47:     Set var_A8 = Me.Txt
  loc_16D9A4D:     Call 0.Method_Proc_194_38_16DA2AC0 (CInt(0), var_AC, "Select IsNull(Sum(L.AmtCr),0) As AmtCr From Ledger L Where L.Clg_Date<=", var_1C4)
  loc_16D9A5C:     Proc_183_7_EB17D4(var_F0, CVar(var_AC), -1)
  loc_16D9A6D:     var_110 = var_15C & var_F0 & " And L.SubCode='" 
  loc_16D9A7F:     Set var_114 = Me.Txt
  loc_16D9A85:     Call 0.Method_Proc_194_38_16DA2AC0 (CInt(1), var_118, var_B0)
  loc_16D9A8D:     var_110 = var_118.Tag
  loc_16D9AC2:     unk_48ED2C.Execute CStr(var_9C & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_9C, 
  loc_16D9ACD:     Set var_90 = var_15C
  loc_16D9AF8:   Else
  loc_16D9B00:     If (MemVar_1F953B0 = "A") Then
  loc_16D9B20:       Set var_A8 = Me.Txt
  loc_16D9B26:       Call 0.Method_Proc_194_38_16DA2AC0 (CInt(0), var_AC, "Select IIF(IsNull(Sum(L.AmtCr)),0,Sum(L.AmtCr)) As AmtCr From Ledger L Where L.Clg_Date<=")
  loc_16D9B35:       Proc_183_7_EB17D4(var_F0, CVar(var_AC), var_1C4)
  loc_16D9B3D:       var_100 = -1 & var_F0 
  loc_16D9B46:       var_110 = var_15C & var_F0 & " And L.SubCode='" 
  loc_16D9B58:       Set var_114 = Me.Txt
  loc_16D9B5E:       Call 0.Method_Proc_194_38_16DA2AC0 (CInt(1), var_118, var_B0)
  loc_16D9B66:       var_110 = var_118.Tag
  loc_16D9B9B:       unk_48ED2C.Execute CStr(var_15C & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), , 
  loc_16D9BA6:       Set var_90 = var_15C
  loc_16D9BCE:     End If
  loc_16D9BCE:   End If
  loc_16D9BE2:   If (var_90.RecordCount > 0) Then
  loc_16D9BFF:     var_AC = var_90.Fields.Item("AmtCr")
  loc_16D9C10:     var_A4 = CSng(var_AC.Value)
  loc_16D9C20:   Else
  loc_16D9C23:     var_A4 = CDbl(0)
  loc_16D9C26:   End If
  loc_16D9C43:   var_E0 = CVar(Abs((var_9C - var_A4))) 'Double
  loc_16D9C61:   Set var_A8 = Me.Txt
  loc_16D9C67:   Call 0.Method_Proc_194_38_16DA2AC0 (CInt(2), var_AC, CStr(Format(var_AC.Value, "0.00")), 1)
  loc_16D9C6F:   var_AC.Text = 1
  loc_16D9C8C:   var_F0 = "Cr"
  loc_16D9CA9:   var_C0 = (CDbl((var_9C - var_A4)) > CDbl(0))
  loc_16D9CB8:   var_B0 = CStr(IIf("AmtCr", "Dr", var_F0))
  loc_16D9CC5:   Set var_A8 = Me.LblType
  loc_16D9CCB:   Call 0.Method_Proc_194_38_16DA2AC0 (0, var_AC, var_B0)
  loc_16D9CD3:   var_AC.Caption = var_A4
  loc_16D9CF5:   If (MemVar_1F953B0 = "S") Then
  loc_16D9D15:     Set var_A8 = Me.Txt
  loc_16D9D1B:     Call 0.Method_Proc_194_38_16DA2AC0 (CInt(0), var_AC, "Select IsNull(Sum(L.AmtDr),0) As AmtDr From Ledger L Where L.V_Date<=", var_1C4)
  loc_16D9D2A:     Proc_183_7_EB17D4(var_F0, CVar(var_AC), -1)
  loc_16D9D3B:     var_110 = var_15C & var_F0 & " And L.SubCode='" 
  loc_16D9D4D:     Set var_114 = Me.Txt
  loc_16D9D53:     Call 0.Method_Proc_194_38_16DA2AC0 (CInt(1), var_118, var_B0)
  loc_16D9D5B:     var_110 = var_118.Tag
  loc_16D9D90:     unk_48ED2C.Execute CStr(var_A4 & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), , 
  loc_16D9D9B:     Set var_90 = var_15C
  loc_16D9DC6:   Else
  loc_16D9DCE:     If (MemVar_1F953B0 = "A") Then
  loc_16D9DEE:       Set var_A8 = Me.Txt
  loc_16D9DF4:       Call 0.Method_Proc_194_38_16DA2AC0 (CInt(0), var_AC, "Select IIF(IsNull(Sum(L.AmtDr)),0,Sum(L.AmtDr)) As AmtDr From Ledger L Where L.V_Date<=")
  loc_16D9E03:       Proc_183_7_EB17D4(var_F0, CVar(var_AC), var_1C4)
  loc_16D9E0B:       var_100 = -1 & var_F0 
  loc_16D9E14:       var_110 = var_15C & var_F0 & " And L.SubCode='" 
  loc_16D9E26:       Set var_114 = Me.Txt
  loc_16D9E2C:       Call 0.Method_Proc_194_38_16DA2AC0 (CInt(1), var_118, var_B0)
  loc_16D9E34:       var_110 = var_118.Tag
  loc_16D9E69:       unk_48ED2C.Execute CStr(var_15C & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), , 
  loc_16D9E74:       Set var_90 = var_15C
  loc_16D9E9C:     End If
  loc_16D9E9C:   End If
  loc_16D9EB0:   If (var_90.RecordCount > 0) Then
  loc_16D9ECD:     var_AC = var_90.Fields.Item("AmtDr")
  loc_16D9EDE:     var_9C = CSng(var_AC.Value)
  loc_16D9EEE:   Else
  loc_16D9EF1:     var_9C = CDbl(0)
  loc_16D9EF4:   End If
  loc_16D9EFC:   If (MemVar_1F953B0 = "S") Then
  loc_16D9F1C:     Set var_A8 = Me.Txt
  loc_16D9F22:     Call 0.Method_Proc_194_38_16DA2AC0 (CInt(0), var_AC, "Select IsNull(Sum(L.AmtCr),0) As AmtCr From Ledger L Where L.V_Date<=", var_1C4)
  loc_16D9F31:     Proc_183_7_EB17D4(var_F0, CVar(var_AC), -1)
  loc_16D9F42:     var_110 = var_15C & var_F0 & " And L.SubCode='" 
  loc_16D9F54:     Set var_114 = Me.Txt
  loc_16D9F5A:     Call 0.Method_Proc_194_38_16DA2AC0 (CInt(1), var_118, var_B0)
  loc_16D9F62:     var_110 = var_118.Tag
  loc_16D9F97:     unk_48ED2C.Execute CStr(var_9C & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), var_9C, 
  loc_16D9FA2:     Set var_90 = var_15C
  loc_16D9FCD:   Else
  loc_16D9FD5:     If (MemVar_1F953B0 = "A") Then
  loc_16D9FF5:       Set var_A8 = Me.Txt
  loc_16D9FFB:       Call 0.Method_Proc_194_38_16DA2AC0 (CInt(0), var_AC, "Select IIF(IsNull(Sum(L.AmtCr)),0,Sum(L.AmtCr)) As AmtCr From Ledger L Where L.V_Date<=")
  loc_16DA00A:       Proc_183_7_EB17D4(var_F0, CVar(var_AC), var_1C4)
  loc_16DA012:       var_100 = -1 & var_F0 
  loc_16DA01B:       var_110 = var_15C & var_F0 & " And L.SubCode='" 
  loc_16DA02D:       Set var_114 = Me.Txt
  loc_16DA033:       Call 0.Method_Proc_194_38_16DA2AC0 (CInt(1), var_118, var_B0)
  loc_16DA03B:       var_110 = var_118.Tag
  loc_16DA070:       unk_48ED2C.Execute CStr(var_15C & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "'"), , 
  loc_16DA07B:       Set var_90 = var_15C
  loc_16DA0A3:     End If
  loc_16DA0A3:   End If
  loc_16DA0B7:   If (var_90.RecordCount > 0) Then
  loc_16DA0D4:     var_AC = var_90.Fields.Item("AmtCr")
  loc_16DA0E5:     var_A4 = CSng(var_AC.Value)
  loc_16DA0F5:   Else
  loc_16DA0F8:     var_A4 = CDbl(0)
  loc_16DA0FB:   End If
  loc_16DA118:   var_E0 = CVar(Abs((var_9C - var_A4))) 'Double
  loc_16DA136:   Set var_A8 = Me.Txt
  loc_16DA13C:   Call 0.Method_Proc_194_38_16DA2AC0 (CInt(3), var_AC, CStr(Format(var_AC.Value, "0.00")), 1)
  loc_16DA144:   var_AC.Text = 1
  loc_16DA17E:   var_C0 = (CDbl((var_9C - var_A4)) > CDbl(0))
  loc_16DA18D:   var_B0 = CStr(IIf("AmtCr", "Dr", "Cr"))
  loc_16DA19A:   Set var_A8 = Me.LblType
  loc_16DA1A0:   Call 0.Method_Proc_194_38_16DA2AC0 (1, var_AC, var_B0)
  loc_16DA1A8:   var_AC.Caption = var_A4
  loc_16DA1D5:   Me.FGrid.FixedRows = 1
  loc_16DA1DD: End If
  loc_16DA1EB: Me.FGrid.Redraw = True
  loc_16DA1F9: If (var_92 = 1) Then
  loc_16DA20F:   Me.FGrid.Rows = 1
  loc_16DA22C:   var_F0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_16DA234:   Set var_AC = Me.FGrid
  loc_16DA263:   Me.FGrid.FixedRows = 1
  loc_16DA26B: End If
  loc_16DA26B: Call Proc_194_42_E84CC0(FGrid.DispID_10000, var_F0)
  loc_16DA275: Set var_8C = Nothing
  loc_16DA27D: Set var_90 = Nothing
  loc_16DA280: Exit Sub
  loc_16DA281: ' Referenced from: 16D8880
  loc_16DA287: Call 0.Method_arg_50 (var_B0)
  loc_16DA29C: Proc_183_57_104B0BC(var_B0, "MoveRec")
  loc_16DA2A8: Exit Sub
End Sub

Public Sub Proc_194_39_E00A5C
  'Data Table: 48ED04
  loc_E00A54: Proc_194_39_E00A5C = 
End Sub

Public Sub Proc_194_40_F99BA0
  'Data Table: 48ED04
  Dim var_98 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F99A2E: global_68 = vbNullString
  loc_F99A40: Set var_8C = Me.Txt
  loc_F99A46: Call 0.Method_Proc_194_40_F99BA0C (var_8E, var_86)
  loc_F99A56: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F99A6C:   Set var_8C = Me.Txt
  loc_F99A72:   Call 0.Method_Proc_194_40_F99BA00 (CInt(var_86), var_98)
  loc_F99A7A:   var_98.Text = vbNullString
  loc_F99A96:   Set var_8C = Me.Txt
  loc_F99A9C:   Call 0.Method_Proc_194_40_F99BA00 (CInt(var_86), var_98)
  loc_F99AA4:   var_98.Tag = vbNullString
  loc_F99AB3: Next var_92 'Byte
  loc_F99AC5: Set var_8C = Me.LblType
  loc_F99ACB: Call 0.Method_Proc_194_40_F99BA00 (0, var_98)
  loc_F99AD3: var_98.Caption = vbNullString
  loc_F99AEB: Set var_8C = Me.LblType
  loc_F99AF1: Call 0.Method_Proc_194_40_F99BA00 (1, var_98)
  loc_F99AF9: var_98.Caption = vbNullString
  loc_F99B18: Me.FGrid.Rows = 1
  loc_F99B35: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F99B3D: Set var_98 = Me.FGrid
  loc_F99B6C: Me.FGrid.FixedRows = 1
  loc_F99B82: Set var_8C = Me.Txt
  loc_F99B88: Call 0.Method_Proc_194_40_F99BA00 (CInt(5), var_98, "Un-Cleared")
  loc_F99B90: var_98.Text = FGrid.DispID_10000
  loc_F99B9C: Exit Sub
End Sub

Public Sub Proc_194_41_F77C48(arg_C) 'F77C48
  'Data Table: 48ED04
  Dim var_98 As TextBox
  loc_F77B06: Set var_8C = Me.Txt
  loc_F77B0C: Call 0.Method_Proc_194_41_F77C48C (var_8E, var_86)
  loc_F77B1C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F77B32:   Set var_8C = Me.Txt
  loc_F77B38:   Call 0.Method_Proc_194_41_F77C480 (CInt(var_86), var_98)
  loc_F77B40:   var_98.Enabled = arg_C
  loc_F77B4F: Next var_92 'Byte
  loc_F77B62: Set var_8C = Me.Txt
  loc_F77B68: Call 0.Method_Proc_194_41_F77C480 (CInt(2), var_98)
  loc_F77B70: var_98.Enabled = False
  loc_F77B89: Set var_8C = Me.Txt
  loc_F77B8F: Call 0.Method_Proc_194_41_F77C480 (CInt(3), var_98)
  loc_F77B97: var_98.Enabled = False
  loc_F77BAC: Set var_8C = Me.TopCtrl1
  loc_F77BB2: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030016(False)
  loc_F77BC3: Set var_8C = Me.TopCtrl1
  loc_F77BC9: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030017(False)
  loc_F77BDA: Set var_8C = Me.TopCtrl1
  loc_F77BE0: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030013(False)
  loc_F77BF1: Set var_8C = Me.TopCtrl1
  loc_F77BF7: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030011(False)
  loc_F77C08: Set var_8C = Me.TopCtrl1
  loc_F77C0E: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030010(False)
  loc_F77C1F: Set var_8C = Me.TopCtrl1
  loc_F77C25: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030012(False)
  loc_F77C36: Set var_8C = Me.TopCtrl1
  loc_F77C3C: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030014(False)
  loc_F77C44: Exit Sub
  loc_F77C45: StAryRecMove
End Sub

Public Sub Proc_194_42_E84CC0
  'Data Table: 48ED04
  Dim arg_58FF As Double
  loc_E84C6C: If (CBool(Me.DGBank.Visible) = &HFF) Then
  loc_E84C7E:   Me.DGBank.Visible = False
  loc_E84C86: End If
  loc_E84CA2: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_E84CB4:   Me.DGParty.Visible = False
  loc_E84CBC: End If
  loc_E84CBC: Exit Sub
  loc_E84CBD: arg_58FF = 
End Sub

Public Sub Proc_194_43_E83DA8
  'Data Table: 48ED04
  loc_E83D48: Call Proc_194_42_E84CC0()
  loc_E83D84: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E83D87:   Call TopCtrl1_UnknownEvent_16()
  loc_E83D8F: Else
  loc_E83D95:   Call 0.Method_arg_1E8 (var_108)
  loc_E83D9D:   Call var_108.SetFocus
  loc_E83DA6: End If
  loc_E83DA6: Exit Sub
End Sub
