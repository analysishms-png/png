VERSION 5.00
Begin VB.Form rRepHousePreview
  Caption = "ReprtForm"
  ForeColor = &HE0E0E0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form3"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 345
  ClientWidth = 11580
  ClientHeight = 7710
  Begin Frame Frame2
    Caption = "Frame1"
    BackColor = &H0&
    Left = 0
    Top = 0
    Width = 5865
    Height = 375
    TabIndex = 4
    BorderStyle = 0 'None
    Begin CommandButton BtnPrint
      Caption = "&WinPrint"
      Index = 2
      Left = 2355
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 9
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BtnPrint
      Caption = "P&review"
      Index = 0
      Left = 1185
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 8
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BTNEXIT
      Caption = "E&xit"
      Index = 0
      Left = 4695
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 7
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Exit"
      Style = 1
    End
    Begin CommandButton BTNRefresh
      Caption = "Para&meters"
      Left = 15
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 6
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Parameters"
      Style = 1
    End
    Begin CommandButton BtnPrint
      Caption = "&DosPrint"
      Index = 1
      Left = 3525
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 5
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin TextBox Text2
    BackColor = &H8000000F&
    ForeColor = &H0&
    Left = 0
    Top = 660
    Width = 10935
    Height = 270
    TabIndex = 3
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    BackColor = &H8000000F&
    ForeColor = &H0&
    Left = 0
    Top = 390
    Width = 10935
    Height = 270
    TabIndex = 2
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Text3
    BackColor = &H8000000F&
    ForeColor = &H0&
    Left = 0
    Top = 930
    Width = 10935
    Height = 270
    TabIndex = 1
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Text4
    BackColor = &H8000000F&
    ForeColor = &H0&
    Left = 0
    Top = 1200
    Width = 10935
    Height = 270
    TabIndex = 0
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid1
    Left = 15
    Top = 1470
    Width = 14970
    Height = 9255
    TabIndex = 10
  End
End

Attribute VB_Name = "rRepHousePreview"

Private global_60 As Integer
Private global_64 As Integer

Private Sub BTNRefresh_Click() 'F195FC
  'Data Table: 44CC18
  Dim var_90 As TextBox
  Dim var_88 As Label
  loc_F19506: MemVar_1F95124 = Me
  loc_F19514: Set global_68 = New rRepHouse
  loc_F19527: Call rRepHouse.global_52Put(global_52)
  loc_F19535: Call rRepHouse.global_88Put(MemVar_1F95078)
  loc_F19543: Call rRepHouse.global_92Put(MemVar_1F953D8)
  loc_F1954E: Call 0.Method_arg_50 (var_8C)
  loc_F1955C: Call 0.Method_arg_54 (var_8C)
  loc_F19575: Set var_88 = Me.txtSite
  loc_F1957B: Call 0.Method_BTNRefresh_Click0 (0, var_90)
  loc_F19583: rRepHouse.txtSite.Tag = MemVar_1F95078
  loc_F195A0: Set var_88 = Me.Text3
  loc_F195A6: Call 0.Method_BTNRefresh_Click0 (0, var_90)
  loc_F195AE: var_90.Text = MemVar_1F953D8
  loc_F195C0: Call 0.Method_arg_50 (var_8C)
  loc_F195D7: (var_8C).Caption = 
  loc_F195F5: Call 0.Method_arg_2B0 (1)
  loc_F195FA: Exit Sub
End Sub

Private Sub btnExit_Click() 'E197CC
  'Data Table: 44CC18
  loc_E197C1: Me.Global.Unload Me
  loc_E197C9: Exit Sub
End Sub

Private Sub Form_Load() '11AD0E8
  'Data Table: 44CC18
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_8C As Variant
  loc_11ACCB0: On Error Goto loc_11AD0E0
  loc_11ACCBA: Call 0.Method_arg_7C (CDbl(0))
  loc_11ACCC6: Call 0.Method_arg_74 (CDbl(0))
  loc_11ACCD3: Call 0.Method_MeC (CDbl(7550))
  loc_11ACCE0: Call 0.Method_Me4 (CDbl(11850))
  loc_11ACCEE: Call 0.Method_arg_160 (var_88)
  loc_11ACCFC: Call 0.Method_arg_164 (var_88)
  loc_11ACD0C: Set var_88 = Me.ImgLogo
  loc_11ACD12: MDIForm1.ImgLogo.Left = CDbl(0)
  loc_11ACD28: Me.Text2.Left = CDbl(0)
  loc_11ACD3E: Me.Text3.Left = CDbl(0)
  loc_11ACD54: Me.Text4.Left = CDbl(0)
  loc_11ACD6E: Me.FGrid1.Left = CVar(CDbl(0))
  loc_11ACDAC: Me.Text1.Top = (Me.Frame2.Top + Me.Frame2.Height)
  loc_11ACDF0: Me.Text2.Top = (Me.Text1.Top + Me.Text1.Height)
  loc_11ACE34: Me.Text3.Top = (Me.Text2.Top + Me.Text2.Height)
  loc_11ACE78: Me.Text4.Top = (Me.Text3.Top + Me.Text3.Height)
  loc_11ACE8D: Set var_8C = Me.Text4
  loc_11ACEA5: var_B0 = Me.Text4.Top
  loc_11ACEB1: var_9C = CVar((var_B0 + var_8C.Height)) 'Single
  loc_11ACEC0: Me.FGrid1.Top = CVar(CDbl(0))
  loc_11ACED4: Call 0.Method_Me0 (var_B0)
  loc_11ACEEB: Me.Text1.Width = (var_B0 - CDbl(&H32))
  loc_11ACEF9: Call 0.Method_Me0 (var_B0)
  loc_11ACF10: Me.Text2.Width = (var_B0 - CDbl(&H32))
  loc_11ACF1E: Call 0.Method_Me0 (var_B0)
  loc_11ACF35: Me.Text3.Width = (var_B0 - CDbl(&H32))
  loc_11ACF43: Call 0.Method_Me0 (var_B0)
  loc_11ACF5A: Me.Text4.Width = (var_B0 - CDbl(&H32))
  loc_11ACF68: MemVar_1F95124 = Me
  loc_11ACF76: Set global_68 = New rRepHouse
  loc_11ACF89: Call rRepHouse.global_52Put(global_52)
  loc_11ACF94: var_BC = global_52
  loc_11ACF9F: If (var_BC = "RoomStatus") Then
  loc_11ACFA8:   Call 0.Method_arg_54 ("Room Status")
  loc_11ACFB0: Else
  loc_11ACFB8:   If (var_BC = "ComplaintList") Then
  loc_11ACFC1:     Call 0.Method_arg_54 ("Complaint Detail")
  loc_11ACFC9:   Else
  loc_11ACFD1:     If (var_BC = "IssueRegister") Then
  loc_11ACFDA:       Call 0.Method_arg_54 ("Issue Register")
  loc_11ACFE2:     Else
  loc_11ACFEA:       If (var_BC = "StockRegister") Then
  loc_11ACFF3:         Call 0.Method_arg_54 ("Stock Register")
  loc_11ACFFB:       Else
  loc_11AD003:         If (var_BC = "StockSumm") Then
  loc_11AD00C:           Call 0.Method_arg_54 ("Stock Summary")
  loc_11AD011:         End If
  loc_11AD011:       End If
  loc_11AD011:     End If
  loc_11AD011:   End If
  loc_11AD011: End If
  loc_11AD01A: Call rRepHouse.global_88Put(MemVar_1F95078)
  loc_11AD028: Call rRepHouse.global_92Put(MemVar_1F953D8)
  loc_11AD033: Call 0.Method_arg_50 (var_C0)
  loc_11AD041: Call 0.Method_arg_54 (var_C0)
  loc_11AD05A: Set var_88 = Me.Text3
  loc_11AD060: Call 0.Method_Form_Load0 (0, var_8C)
  loc_11AD068: var_8C.Tag = MemVar_1F95078
  loc_11AD085: Set var_88 = Me.Text3
  loc_11AD08B: Call 0.Method_Form_Load0 (0, var_8C)
  loc_11AD093: var_8C.Text = MemVar_1F953D8
  loc_11AD0A5: Call 0.Method_arg_50 (var_C0)
  loc_11AD0BC: (var_C0).Caption = 
  loc_11AD0DA: Call 0.Method_arg_2B0 (1)
  loc_11AD0DF: Exit Sub
  loc_11AD0E0: ' Referenced from: 11ACCB0
  loc_11AD0E0: Proc_6_60_E63754(var_AC)
  loc_11AD0E5: Exit Sub
End Sub

Private Sub Form_Resize() 'EB0EF0
  'Data Table: 44CC18
  Dim var_98 As Variant
  loc_EB0E60: On Error Resume Next
  loc_EB0E6B: Call 0.Method_arg_100 (var_88)
  loc_EB0E78: var_98 = CVar((var_88 - CDbl(150))) 'Single
  loc_EB0E87: Me.FGrid1.Width = var_98
  loc_EB0EBB: Call 0.Method_arg_108 (var_88)
  loc_EB0ED0: var_98 = CVar(((var_88 - (Me.Text4.Top + Me.Text4.Height)) - CDbl(250))) 'Single
  loc_EB0EDF: Me.FGrid1.Height = var_98
  loc_EB0EEF: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0193C
  'Data Table: 44CC18
  loc_E01935: MemVar_1F951E8 = Nothing
  loc_E01939: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_14 'E1DFB0
  'Data Table: 44CC18
  loc_E1DFA7: Me.FGrid1.CellBackColor = &HF7F1F0
  loc_E1DFAF: Exit Sub
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '166B3B8
  'Data Table: 44CC18
  Dim unk_44CC3F As Connection15
  Dim var_A4 As Variant
  Dim var_94 As Recordset15
  Dim var_B8 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As String
  Dim var_C4 As Fields15
  Dim var_128 As Variant
  Dim var_108 As String
  Dim var_C0 As String
  Dim MemVar_1F953C4 As String
  Dim MemVar_1F953C8 As String
  Dim MemVar_1F953D0 As String
  Dim var_13C As String
  Dim var_118 As Variant
  loc_1669C88: On Error Goto loc_166B3B0
  loc_1669C90: global_60 = &HFF
  loc_1669CA9: unk_44CC3F.Execute "Select * From FAEnviro", var_B4, -1
  loc_1669CB4: Set var_94 = var_B8
  loc_1669CCC: var_B8 = var_94.Fields
  loc_1669D30: var_138 = IIf((Proc_6_38_E69628(CVar(var_B8.Item("daterfill")), var_B8) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("daterfill")))))
  loc_1669D39: MemVar_1F953C4 = CStr(var_138)
  loc_1669DCD: var_138 = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F953C4) = vbNullString), "Y", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("pagenofill")))))
  loc_1669DD6: MemVar_1F953C8 = CStr(var_138)
  loc_1669E6A: var_138 = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F953C8) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("titlerfill")))))
  loc_1669E97: var_A4 = "linefiller"
  loc_1669EAB: var_BC = var_94.Fields.Item(var_A4)
  loc_1669EC2: var_D4 = "linefiller"
  loc_1669EEA: var_108 = "-"
  loc_1669F07: var_138 = IIf((Proc_6_38_E69628(CVar(var_BC), CStr(var_138)) = vbNullString), "M", CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item(var_D4)))))
  loc_1669F10: MemVar_1F953D0 = CStr(var_138)
  loc_1669F43: var_140 = CStr(Me.FGrid1.Tag)
  loc_1669F54: If (var_140 = "IssueRegister") Then
  loc_1669F5A:   var_88 = "IssueRegister"
  loc_1669F63:   global_56 = "Issue/Receive Register"
  loc_1669F6A: Else
  loc_1669F72:   If (var_140 = "StockRegister") Then
  loc_1669F78:     var_88 = "StockRegister"
  loc_1669F81:     global_56 = "Stock Register"
  loc_1669F88:   Else
  loc_1669F90:     If (var_140 = "StockSummary") Then
  loc_1669F96:       var_88 = "StockSumm"
  loc_1669F9F:       global_56 = "Stock Summary"
  loc_1669FA6:     Else
  loc_1669FAE:       If (var_140 = "RoomStatus") Then
  loc_1669FB4:         var_88 = "RoomStatus"
  loc_1669FBD:         global_56 = "Room Summary"
  loc_1669FC4:       Else
  loc_1669FCC:         If (var_140 = "ComplaintList") Then
  loc_1669FD2:           var_88 = "ComplaintDetail"
  loc_1669FDB:           global_56 = "Complaint Detail"
  loc_1669FDF:         End If
  loc_1669FDF:       End If
  loc_1669FDF:     End If
  loc_1669FDF:   End If
  loc_1669FDF: End If
  loc_1669FE8: If (global_60 = 0) Then
  loc_1669FEB:   Exit Sub
  loc_1669FEC: End If
  loc_1669FF0: Set var_B8 = Me.FGrid1
  loc_166A02D: Set var_C4 = var_B8.DataSource
  loc_166A033: CreateFieldDefFile(var_C4, MemVar_1F950B4 & "\" & var_88 & ".ttx", &HFF)
  loc_166A061: var_C0 = "\" & var_88
  loc_166A075: Call 0.Method_arg_1C (MemVar_1F950B4 & var_C0 & ".RPT", var_A4, var_B8)
  loc_166A080: MemVar_1F951E8 = var_B8
  loc_166A09C: Set var_B8 = Me.FGrid1
  loc_166A0A2: var_B4 = var_B8.DataSource
  loc_166A0AD: CVarUnk
  loc_166A0BB: Call 0.Method_arg_64 (var_BC, var_B4, var_A4, var_D4)
  loc_166A0C3: Call 0.Method_arg_2C (var_B4, MemVar_1F953D0)
  loc_166A0DC: Call 0.Method_arg_150 (global_60)
  loc_166A0F2: Call 0.Method_arg_90 (var_B8, var_14C)
  loc_166A0FA: Call 0.Method_arg_24 (var_8A)
  loc_166A106: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_166A11F:   Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_166A127:   Call 0.Method_arg_20 (var_BC)
  loc_166A12F:   Call 0.Method_arg_30 (var_C0)
  loc_166A145:   var_160 = Ucase(CVar(var_C0)) 'Variant
  loc_166A175:   If (var_160 = Ucase("Title")) Then
  loc_166A181:     Call 0.Method_arg_50 (var_C0)
  loc_166A1A4:     Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_166A1AC:     Call 0.Method_arg_20 (var_BC)
  loc_166A1B4:     Call 0.Method_arg_38 ("'" & var_C0 & "'")
  loc_166A1CC:   Else
  loc_166A1EE:     If (var_160 = Ucase("BetweenDate")) Then
  loc_166A1FB:       Set var_B8 = Me.Text1
  loc_166A224:       Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166A22C:       Call 0.Method_arg_20 (var_C4)
  loc_166A234:       Call 0.Method_arg_38 ("'" & var_B8.Text & "'")
  loc_166A24E:     Else
  loc_166A270:       If (var_160 = Ucase("Dater")) Then
  loc_166A294:         Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_166A29C:         Call 0.Method_arg_20 (var_BC)
  loc_166A2A4:         Call 0.Method_arg_38 ("'" & MemVar_1F953C4 & "'")
  loc_166A2BA:       Else
  loc_166A2DC:         If (var_160 = Ucase("Pager")) Then
  loc_166A2E6:           var_C0 = "'" & MemVar_1F953C8
  loc_166A300:           Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_166A308:           Call 0.Method_arg_20 (var_BC)
  loc_166A310:           Call 0.Method_arg_38 (var_C0 & "'")
  loc_166A323:         End If
  loc_166A323:       End If
  loc_166A323:     End If
  loc_166A323:   End If
  loc_166A326: Next var_150 'Integer
  loc_166A32F: Set var_B8 = Me.FGrid1
  loc_166A33D: var_168 = CStr(var_B8.Tag)
  loc_166A34E: If (var_168 = "RoomStatus") Then
  loc_166A362:   Call 0.Method_arg_90 (var_B8, var_14C)
  loc_166A36A:   Call 0.Method_arg_24 (var_8A)
  loc_166A376:   For var_16C =  To CInt(var_14C): 1 = var_16C 'Integer
  loc_166A38F:     Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_166A397:     Call 0.Method_arg_20 (var_BC)
  loc_166A39F:     Call 0.Method_arg_30 (var_C0)
  loc_166A3E5:     If (Ucase(CVar(var_C0)) = Ucase("ForDate")) Then
  loc_166A436:       Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166A43E:       Call 0.Method_arg_20 (var_C4)
  loc_166A446:       Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text1.Text), &H96) & "'"))
  loc_166A462:     End If
  loc_166A465:   Next var_16C 'Integer
  loc_166A470:   If (Index = 1) Then
  loc_166A480:     ReDim Preserve var_90(0 To 2)
  loc_166A4B5:     var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_166A4ED:     var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_166A504:     Set var_B8 = Me.Text3
  loc_166A50A:     var_C0 = var_B8.Text
  loc_166A525:     var_90(2) = vbNullString & var_C0 & vbNullString
  loc_166A532:   End If
  loc_166A535: Else
  loc_166A53D:   If (var_168 = "ComplaintList") Then
  loc_166A551:     Call 0.Method_arg_90 (var_B8, var_14C)
  loc_166A559:     Call 0.Method_arg_24 (var_8A)
  loc_166A565:     For var_180 =  To CInt(var_14C):   1 = var_180 'Integer
  loc_166A57E:       Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_166A586:       Call 0.Method_arg_20 (var_BC)
  loc_166A58E:       Call 0.Method_arg_30 (var_C0)
  loc_166A5A4:       var_190 = Ucase(CVar(var_C0)) 'Variant
  loc_166A5D4:       If (var_190 = Ucase("ForDate")) Then
  loc_166A625:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166A62D:         Call 0.Method_arg_20 (var_C4)
  loc_166A635:         Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text1.Text), &H96) & "'"))
  loc_166A654:       Else
  loc_166A676:         If (var_190 = Ucase("ForStatus")) Then
  loc_166A6C7:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166A6CF:           Call 0.Method_arg_20 (var_C4)
  loc_166A6D7:           Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_166A6F3:         End If
  loc_166A6F3:       End If
  loc_166A6F6:     Next var_180 'Integer
  loc_166A701:     If (Index = 1) Then
  loc_166A711:       ReDim Preserve var_90(0 To 2)
  loc_166A746:       var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_166A77E:       var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_166A795:       Set var_B8 = Me.Text3
  loc_166A79B:       var_C0 = var_B8.Text
  loc_166A7B6:       var_90(2) = vbNullString & var_C0 & vbNullString
  loc_166A7C3:     End If
  loc_166A7C6:   Else
  loc_166A7CE:     If (var_168 = "IssueRegister") Then
  loc_166A7E2:       Call 0.Method_arg_90 (var_B8, var_14C)
  loc_166A7EA:       Call 0.Method_arg_24 (var_8A)
  loc_166A7F6:       For var_194 =  To CInt(var_14C):     1 = var_194 'Integer
  loc_166A80F:         Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_166A817:         Call 0.Method_arg_20 (var_BC)
  loc_166A81F:         Call 0.Method_arg_30 (var_C0)
  loc_166A835:         var_1A4 = Ucase(CVar(var_C0)) 'Variant
  loc_166A865:         If (var_1A4 = Ucase("RoomNo")) Then
  loc_166A8B6:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166A8BE:           Call 0.Method_arg_20 (var_C4)
  loc_166A8C6:           Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_166A8E5:         Else
  loc_166A907:           If (var_1A4 = Ucase("Type")) Then
  loc_166A958:             Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166A960:             Call 0.Method_arg_20 (var_C4)
  loc_166A968:             Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_166A984:           End If
  loc_166A984:         End If
  loc_166A987:       Next var_194 'Integer
  loc_166A992:       If (Index = 1) Then
  loc_166A9A2:         ReDim Preserve var_90(0 To 2)
  loc_166A9D7:         var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_166AA0F:         var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_166AA26:         Set var_B8 = Me.Text3
  loc_166AA2C:         var_C0 = var_B8.Text
  loc_166AA47:         var_90(2) = vbNullString & var_C0 & vbNullString
  loc_166AA54:       End If
  loc_166AA57:     Else
  loc_166AA5F:       If (var_168 = "StockRegister") Then
  loc_166AA73:         Call 0.Method_arg_90 (var_B8, var_14C)
  loc_166AA7B:         Call 0.Method_arg_24 (var_8A)
  loc_166AA87:         For var_1A8 =  To CInt(var_14C):       1 = var_1A8 'Integer
  loc_166AAA0:           Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_166AAA8:           Call 0.Method_arg_20 (var_BC)
  loc_166AAB0:           Call 0.Method_arg_30 (var_C0)
  loc_166AAC6:           var_1B8 = Ucase(CVar(var_C0)) 'Variant
  loc_166AAF6:           If (var_1B8 = Ucase("ItemName")) Then
  loc_166AB47:             Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166AB4F:             Call 0.Method_arg_20 (var_C4)
  loc_166AB57:             Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_166AB76:           Else
  loc_166AB98:             If (var_1B8 = Ucase("ForType")) Then
  loc_166ABE9:               Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166ABF1:               Call 0.Method_arg_20 (var_C4)
  loc_166ABF9:               Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_166AC18:             Else
  loc_166AC3A:               If (var_1B8 = Ucase("RoomNo")) Then
  loc_166AC8B:                 Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166AC93:                 Call 0.Method_arg_20 (var_C4)
  loc_166AC9B:                 Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text4.Text), &H96) & "'"))
  loc_166ACBA:               Else
  loc_166ACDC:                 If (var_1B8 = Ucase("Department")) Then
  loc_166AD2D:                   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166AD35:                   Call 0.Method_arg_20 (var_C4)
  loc_166AD3D:                   Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text4.Text), &H96) & "'"))
  loc_166AD59:                 End If
  loc_166AD59:               End If
  loc_166AD59:             End If
  loc_166AD59:           End If
  loc_166AD5C:         Next var_1A8 'Integer
  loc_166AD67:         If (Index = 1) Then
  loc_166AD77:           ReDim Preserve var_90(0 To 3)
  loc_166ADAC:           var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_166ADE4:           var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_166AE1C:           var_90(2) = vbNullString & Me.Text3.Text & vbNullString
  loc_166AE33:           Set var_B8 = Me.Text4
  loc_166AE39:           var_C0 = var_B8.Text
  loc_166AE54:           var_90(3) = vbNullString & var_C0 & vbNullString
  loc_166AE61:         End If
  loc_166AE64:       Else
  loc_166AE6C:         If (var_168 = "StockSummary") Then
  loc_166AE80:           Call 0.Method_arg_90 (var_B8, var_14C)
  loc_166AE88:           Call 0.Method_arg_24 (var_8A)
  loc_166AE94:           For var_1BC =  To CInt(var_14C):         1 = var_1BC 'Integer
  loc_166AEAD:             Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_166AEB5:             Call 0.Method_arg_20 (var_BC)
  loc_166AEBD:             Call 0.Method_arg_30 (var_C0)
  loc_166AED3:             var_1CC = Ucase(CVar(var_C0)) 'Variant
  loc_166AF03:             If (var_1CC = Ucase("ItemName")) Then
  loc_166AF54:               Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166AF5C:               Call 0.Method_arg_20 (var_C4)
  loc_166AF64:               Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_166AF83:             Else
  loc_166AFA5:               If (var_1CC = Ucase("ForType")) Then
  loc_166AFF6:                 Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166AFFE:                 Call 0.Method_arg_20 (var_C4)
  loc_166B006:                 Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_166B025:               Else
  loc_166B047:                 If (var_1CC = Ucase("RoomNo")) Then
  loc_166B098:                   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166B0A0:                   Call 0.Method_arg_20 (var_C4)
  loc_166B0A8:                   Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text4.Text), &H96) & "'"))
  loc_166B0C7:                 Else
  loc_166B0E9:                   If (var_1CC = Ucase("Department")) Then
  loc_166B119:                     var_118 = "'" & Left(CVar(Me.Text4.Text), &H96) 
  loc_166B122:                     var_128 = var_118 & "'" 
  loc_166B13A:                     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166B142:                     Call 0.Method_arg_20 (var_C4)
  loc_166B14A:                     Call 0.Method_arg_38 (CStr(var_128))
  loc_166B166:                   End If
  loc_166B166:                 End If
  loc_166B166:               End If
  loc_166B166:             End If
  loc_166B169:           Next var_1BC 'Integer
  loc_166B174:           If (Index = 1) Then
  loc_166B184:             ReDim Preserve var_90(0 To 3)
  loc_166B1B9:             var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_166B1F1:             var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_166B229:             var_90(2) = vbNullString & Me.Text3.Text & vbNullString
  loc_166B261:             var_90(3) = vbNullString & Me.Text4.Text & vbNullString
  loc_166B26E:           End If
  loc_166B26E:         End If
  loc_166B26E:       End If
  loc_166B26E:     End If
  loc_166B26E:   End If
  loc_166B26E: End If
  loc_166B274: If (Index = 1) Then
  loc_166B298:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", var_118, var_128)
  loc_166B2B2:   var_B4 = Me.FGrid1.Tag
  loc_166B2CB:   If (CStr(var_B4) = "IssueRegister") Then
  loc_166B2DA:     var_13C = 0
  loc_166B2E3:     var_C0 = "C"
  loc_166B2FE:     Proc_34_0_14D9290(var_B4, Me.FGrid1, global_56)
  loc_166B317:   Else
  loc_166B323:     var_13C = 0
  loc_166B347:     Proc_34_0_14D9290(var_B4, Me.FGrid1, global_56, var_90, "N")
  loc_166B35D:   End If
  loc_166B360: Else
  loc_166B37C:   Set var_B8 = MemVar_1F951E8 
  loc_166B388:   Proc_6_99_1484404(var_B8, Index, global_56, &HFF, Nothing)
  loc_166B393:   MemVar_1F951E8 = var_B8
  loc_166B39E: End If
  loc_166B3A3: global_64 = 0
  loc_166B3AB: MemVar_1F951E8 = Nothing
  loc_166B3AF: Exit Sub
  loc_166B3B0: ' Referenced from: 1669C88
  loc_166B3B0: Proc_6_60_E63754(global_64, var_13C, var_90)
  loc_166B3B5: Exit Sub
End Sub

Public Function global_52Get() '44D6A4
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '44D6B3
  global_52 = Value
End Sub

Public Sub RetBack(mParamForm) 'F30D3C
  'Data Table: 44CC18
  loc_F30C2B: On Error Goto loc_F30D34
  loc_F30C34: var_8C = global_52
  loc_F30C3F: If (var_8C = "RoomStatus") Then
  loc_F30C4F:   Set var_90 = mParamForm 
  loc_F30C56:   Call RoomStatus(var_90, 0, 0)
  loc_F30C61:   Set var_88 = var_90
  loc_F30C6A: Else
  loc_F30C72:   If (var_8C = "ComplaintList") Then
  loc_F30C82:     Set var_90 = var_88 
  loc_F30C89:     Call ComplaintList(var_90, 0, 0)
  loc_F30C94:     Set var_88 = var_90
  loc_F30C9D:   Else
  loc_F30CA5:     If (var_8C = "IssueRegister") Then
  loc_F30CB5:       Set var_90 = var_88 
  loc_F30CBC:       Call IssueRegister(var_90, 0, 0)
  loc_F30CC7:       Set var_88 = var_90
  loc_F30CD0:     Else
  loc_F30CD8:       If (var_8C = "StockRegister") Then
  loc_F30CE8:         Set var_90 = var_88 
  loc_F30CEF:         Call StockRegister(var_90, 0, 0)
  loc_F30CFA:         Set var_88 = var_90
  loc_F30D03:       Else
  loc_F30D0B:         If (var_8C = "StockSumm") Then
  loc_F30D1B:           Set var_90 = var_88 
  loc_F30D22:           Call StockSumm(var_90, 0, 0)
  loc_F30D2D:           Set var_88 = var_90
  loc_F30D33:         End If
  loc_F30D33:       End If
  loc_F30D33:     End If
  loc_F30D33:   End If
  loc_F30D33: End If
  loc_F30D33: Exit Sub
  loc_F30D34: ' Referenced from: F30C2B
  loc_F30D34: Proc_6_60_E63754()
  loc_F30D39: Exit Sub
End Sub

Public Sub RoomStatus(formName, FRow, Fcol) '173AB90
  'Data Table: 44CC18
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As String
  Dim var_8C As Recordset15
  Dim var_10C As Variant
  Dim var_112 As Integer
  Dim var_154 As Variant
  Dim var_C0 As Variant
  Dim var_120 As Variant
  Dim var_134 As Variant
  Dim var_9A As Integer
  Dim var_118 As Recordset15
  Dim var_11C As Variant
  Dim var_124 As Variant
  Dim var_168 As Variant
  Dim var_16C As Field20
  Dim var_144 As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_21C As Variant
  Dim var_26C As Variant
  Dim var_2BC As Variant
  Dim var_30C As Variant
  Dim var_35C As Variant
  Dim var_3AC As Variant
  Dim var_3DC As Variant
  Dim unk_44CC3F As Connection15
  Dim var_470 As Variant
  Dim var_474 As Variant
  Dim var_488 As Field20
  Dim var_A0 As Recordset15
  Dim var_4BC As Recordset15
  Dim var_4C0 As Recordset15
  Dim var_19C As Variant
  Dim var_23C As Variant
  Dim var_2DC As Variant
  Dim var_4C4 As Recordset15
  Dim var_32C As Variant
  Dim var_88 As Recordset15
  Dim var_4D0 As MSHFlexGrid
  loc_1738F5E: Call 0.Method_arg_54 ("Room Status")
  loc_1738F76: var_F0 = Me.FGrid
  loc_1738F90: Set var_10C = 0(1 & CStr(var_F0.TextMatrix))
  loc_1738F96: var_F0.TextBox.Text = "For Date : "
  loc_1738FBF: var_F0 = Me.FGrid
  loc_1738FD9: Set var_10C = 3(1 & CStr(var_F0.TextMatrix))
  loc_1738FDF: var_F0.TextBox.Text = "Occupancy Status :"
  loc_1739002: Call Proc_46_15_FBE38C(New)
  loc_173900A: Set var_88 = var_10C
  loc_1739023: Me.Connection15.Execute "SELECT RoomMast.Code AS RoomNo,RoomMast.RoomStat AS Status, Depart.Name AS MaidStation FROM RoomMast LEFT JOIN Depart ON RoomMast.MaidStation = Depart.Code WHERE RoomMast.Type='RO' ORDER By Depart.Name,RoomMast.Code", var_F0, -1
  loc_173902E: Set var_8C = var_10C
  loc_173904B: If (var_8C.RecordCount > 0) Then
  loc_1739051:   var_8C.MoveFirst
  loc_1739056:   ' Referenced from: 173A0F6
  loc_1739065:   If Not(var_8C.EOF) Then
  loc_173906B:     Set var_118 = var_88 
  loc_1739072:     var_B0 = "MaidStation"
  loc_17390A4:     var_C0 = "MaidStation"
  loc_17390F7:     If CBool(CVar(var_98) <> IIf(IsNull(CVar(var_8C.Fields.Item(var_B0))), "None", CVar(var_8C.Fields.Item(var_C0)))) Then
  loc_17390FC:       var_9A = 0
  loc_173910A:       var_118.AddNew var_B0, var_C0
  loc_1739134:       var_118.Fields.Item("MLine").Value = "GF"
  loc_1739165:       var_118.Fields.Item("SNo").Value = vbNullString
  loc_1739196:       var_118.Fields.Item("Status").Value = "Maid Station:"
  loc_17391E5:       var_118.Fields.Item("OccStatus").Value = CVar(var_8C.Fields.Item("MaidStation"))
  loc_1739281:       var_118.Fields.Item("MaidStation").Value = IIf(IsNull(CVar(var_8C.Fields.Item("MaidStation"))), "None", CVar(var_8C.Fields.Item("MaidStation")))
  loc_173929E:       var_C0 = "*"
  loc_17392A7:       var_B0 = "Mark"
  loc_17392C3:       var_118.Fields.Item(var_B0).Value = var_C0
  loc_17392DA:       var_118.Update var_B0, var_C0
  loc_17392EA:       var_118.AddNew var_B0, var_C0
  loc_1739314:       var_118.Fields.Item("MLine").Value = vbNullString
  loc_173934F:       var_118.Fields.Item("SNo").Value = CVar(CStr(var_9A) & ".")
  loc_17393A4:       var_118.Fields.Item("RoomNo").Value = CVar(var_8C.Fields.Item("RoomNo"))
  loc_17393DD:       var_112 = IsNull(CVar(var_8C.Fields.Item("MaidStation")))
  loc_17393FF:       var_134 = CVar(var_8C.Fields.Item("MaidStation")) 'Address
  loc_1739440:       var_118.Fields.Item("MaidStation").Value = IIf(var_112, "None", var_134)
  loc_173949D:       If (Trim(CVar(var_8C.Fields.Item("Status"))) = "D") Then
  loc_17394C5:         var_118.Fields.Item("Status").Value = "Dirty"
  loc_17394D4:       Else
  loc_17394F9:         var_118.Fields.Item("Status").Value = "Clean"
  loc_1739505:       End If
  loc_173953B:       VarLateMemCallLdRfVar
  loc_1739546:       Proc_6_7_F26918(var_134, Me.FGrid, 1, 0, "SELECT Count(*) FROM RoomOcc WHERE Type Not IN ('O','C')  AND (CHKINDATE<", var_46C, -1, var_470)
  loc_173957D:       var_19C = Me.Recordset15.Fields.Item("RoomNo").Value
  loc_17395A2:       var_21C = Me.FGrid
  loc_17395A7:       VarLateMemCallLdRfVar
  loc_17395B2:       Proc_6_7_F26918(var_23C, var_21C, 1, 0, var_474 & var_134 & " and  ChkOutDate IS NULL) AND RoomNo='" & var_19C & "' OR (CHKINDATE<=", 0)
  loc_17395DC:       VarLateMemCallLdRfVar
  loc_17395E7:       Proc_6_7_F26918(var_2DC, Me.FGrid, 1, 0, var_488 & var_23C & " and  ChkOutDate >")
  loc_173960E:       var_120 = Me.Recordset15.Fields
  loc_1739648:       VarLateMemCallLdRfVar
  loc_1739653:       Proc_6_7_F26918(var_3CC, Me.FGrid, 1, 0, var_498 & var_2DC & ") AND RoomNo='" & var_120.Item("RoomNo").Value & "' OR (CHKINDATE=")
  loc_17396A9:       unk_44CC3F.Execute CStr(var_112 & var_3CC & " and  ChkOutDate is null) AND RoomNo='" & Me.Recordset15.Fields.Item("RoomNo").Value & "'"), var_112, var_9A
  loc_17396B1:       var_112 = var_470.Fields
  loc_17396B9:        = var_474.Item()
  loc_17396C1:        = var_488.Value
  loc_173972A:       If (var_498 > 0) Then
  loc_1739752:         var_118.Fields.Item("OccStatus").Value = "Occupied"
  loc_1739761:       Else
  loc_1739786:         var_118.Fields.Item("OccStatus").Value = "Vacant"
  loc_1739792:       End If
  loc_17397F0:       VarLateMemCallLdRfVar
  loc_17397FB:       Proc_6_7_F26918(var_19C, Me.FGrid, 1, 0)
  loc_1739803:       var_1AC = "SELECT RoomCode,Reasons FROM RoomBlockOut WHERE  RoomCode='" & var_8C.Fields.Item("RoomNo").Value & "' AND " & var_19C 
  loc_173981A:       Me.Connection15.Execute CStr(var_1AC & " BETWEEN FromDate AND ToDate"), var_21C, -1
  loc_1739825:       Set var_A0 = var_120
  loc_173985D:       If (var_A0.RecordCount > 0) Then
  loc_1739885:         var_118.Fields.Item("OccStatus").Value = "Vacant"
  loc_17398B6:         var_118.Fields.Item("Status").Value = "Out of Order"
  loc_173991A:         var_118.Fields.Item("Remark").Value = StrConv(CVar(var_A0.Fields.Item("Reasons")), 3, 0)
  loc_1739932:       Else
  loc_1739957:         var_118.Fields.Item("Remark").Value = vbNullString
  loc_1739963:       End If
  loc_1739963:       var_C0 = "*"
  loc_173996C:       var_B0 = "Mark"
  loc_1739988:       var_118.Fields.Item(var_B0).Value = var_C0
  loc_1739997:     Else
  loc_173999D:       var_9A = (var_9A + 1)
  loc_17399AB:       var_118.AddNew var_B0, var_C0
  loc_17399D5:       var_118.Fields.Item("MLine").Value = vbNullString
  loc_1739A10:       var_118.Fields.Item("SNo").Value = CVar(CStr(var_9A) & ".")
  loc_1739A65:       var_118.Fields.Item("RoomNo").Value = CVar(var_8C.Fields.Item("RoomNo"))
  loc_1739A9E:       var_112 = IsNull(CVar(var_8C.Fields.Item("MaidStation")))
  loc_1739AC0:       var_134 = CVar(var_8C.Fields.Item("MaidStation")) 'Address
  loc_1739B01:       var_118.Fields.Item("MaidStation").Value = IIf(var_112, "None", var_134)
  loc_1739B5E:       If (Trim(CVar(var_8C.Fields.Item("Status"))) = "D") Then
  loc_1739B86:         var_118.Fields.Item("Status").Value = "Dirty"
  loc_1739B95:       Else
  loc_1739BBA:         var_118.Fields.Item("Status").Value = "Clean"
  loc_1739BC6:       End If
  loc_1739BFC:       VarLateMemCallLdRfVar
  loc_1739C07:       Proc_6_7_F26918(var_134, Me.FGrid, 1, 0, "SELECT Count(*) FROM RoomOcc WHERE Type Not IN ('O','C')  AND (CHKINDATE<", var_46C, -1, var_470)
  loc_1739C3E:       var_19C = Me.Recordset15.Fields.Item("RoomNo").Value
  loc_1739C63:       var_21C = Me.FGrid
  loc_1739C68:       VarLateMemCallLdRfVar
  loc_1739C73:       Proc_6_7_F26918(var_23C, var_21C, 1, 0, var_474 & var_134 & " and  ChkOutDate IS NULL) AND RoomNo='" & var_19C & "' OR (CHKINDATE<=", 0)
  loc_1739C84:       var_26C = var_488 & var_23C & " and  ChkOutDate >" 
  loc_1739C98:       var_2BC = Me.FGrid
  loc_1739C9D:       VarLateMemCallLdRfVar
  loc_1739CA8:       Proc_6_7_F26918(var_2DC, var_2BC, 1, 0, var_26C)
  loc_1739CB9:       var_30C = var_498 & var_2DC & ") AND RoomNo='" 
  loc_1739CDF:       var_32C = Me.Recordset15.Fields.Item("RoomNo").Value
  loc_1739D04:       var_3AC = Me.FGrid
  loc_1739D09:       VarLateMemCallLdRfVar
  loc_1739D14:       Proc_6_7_F26918(var_3CC, var_3AC, 1, 0)
  loc_1739D3B:       var_168 = Me.Recordset15.Fields
  loc_1739D43:       var_16C = var_168.Item("RoomNo")
  loc_1739D60:       var_104 = CStr(var_30C & var_32C & "' OR (CHKINDATE=" & var_3CC & " and  ChkOutDate is null) AND RoomNo='" & var_16C.Value & "'")
  loc_1739D6A:       unk_44CC3F.Execute var_104, var_112, var_9A
  loc_1739D72:       var_120 = var_470.Fields
  loc_1739D7A:        = var_474.Item()
  loc_1739D82:        = var_488.Value
  loc_1739DEB:       If (var_498 > 0) Then
  loc_1739E13:         var_118.Fields.Item("OccStatus").Value = "Occupied"
  loc_1739E22:       Else
  loc_1739E47:         var_118.Fields.Item("OccStatus").Value = "Vacant"
  loc_1739E53:       End If
  loc_1739EB1:       VarLateMemCallLdRfVar
  loc_1739EBC:       Proc_6_7_F26918(var_19C, Me.FGrid, 1, 0)
  loc_1739EC4:       var_1AC = "SELECT RoomCode,Reasons FROM RoomBlockOut WHERE  RoomCode='" & var_8C.Fields.Item("RoomNo").Value & "' AND " & var_19C 
  loc_1739ECD:       var_1CC = var_1AC & " BETWEEN FromDate AND ToDate" 
  loc_1739EDB:       Me.Connection15.Execute CStr(var_1CC), var_21C, -1
  loc_1739EE6:       Set var_A0 = var_120
  loc_1739F1E:       If (var_A0.RecordCount > 0) Then
  loc_1739F46:         var_118.Fields.Item("OccStatus").Value = "Vacant"
  loc_1739F77:         var_118.Fields.Item("Status").Value = "Out of Order"
  loc_1739FDB:         var_118.Fields.Item("Remark").Value = StrConv(CVar(var_A0.Fields.Item("Reasons")), 3, 0)
  loc_1739FF3:       Else
  loc_173A018:         var_118.Fields.Item("Remark").Value = vbNullString
  loc_173A024:       End If
  loc_173A024:       var_C0 = "*"
  loc_173A02D:       var_B0 = "Mark"
  loc_173A049:       var_118.Fields.Item(var_B0).Value = var_C0
  loc_173A055:     End If
  loc_173A060:     var_118.Update var_B0, var_C0
  loc_173A067:     Set var_118 = Nothing 
  loc_173A099:     var_C0 = "MaidStation"
  loc_173A0AD:     var_124 = var_8C.Fields.Item(var_C0)
  loc_173A0D7:     var_98 = CStr(IIf(IsNull(CVar(var_8C.Fields.Item("MaidStation"))), "None", CVar(var_124)))
  loc_173A0F1:     var_8C.MoveNext
  loc_173A0F6:     GoTo loc_1739056
  loc_173A0F9:   End If
  loc_173A0F9: End If
  loc_173A0F9: var_B0 = 3
  loc_173A100: var_D0 = 1
  loc_173A125: If CBool(Me.FGrid.TextMatrix <> "ALL") Then
  loc_173A128:   var_154 = "OccStatus= '"
  loc_173A12D:   var_B0 = 3
  loc_173A13D:   var_F0 = Me.FGrid
  loc_173A14A:   var_134 = 1 & var_F0.TextMatrix 
  loc_173A153:   var_144 = var_134 & "' or MLine = 'GF' " 
  loc_173A15B:   var_F0.Recordset15.Filter = var_144
  loc_173A16B: End If
  loc_173A16E: Set var_4BC = var_88 
  loc_173A17D: var_4BC.AddNew var_B0, var_C0
  loc_173A18D: var_4BC.Update var_B0, var_C0
  loc_173A194: Set var_4BC = Nothing 
  loc_173A19B: Set var_4C0 = var_88 
  loc_173A1AA: var_4C0.AddNew var_B0, var_C0
  loc_173A1D4: var_4C0.Fields.Item("mLine").Value = "GF"
  loc_173A1E9: var_B0 = "RoomNo"
  loc_173A1FD: var_11C = var_4C0.Fields.Item(var_B0)
  loc_173A205: var_11C.Value = "Vacant"
  loc_173A217: var_C0 = 0
  loc_173A236: unk_44CC3F.Execute "Select Count(*) from roommast where Type='RO' and InclCount='Y'", var_F0, -1
  loc_173A23E: var_10C = var_10C.Fields
  loc_173A246: var_C0 = var_11C.Item(var_11C)
  loc_173A24E: var_120 = var_120.Value
  loc_173A28C: VarLateMemCallLdRfVar
  loc_173A297: Proc_6_7_F26918(var_144, Me.FGrid, 1, 0, "SELECT Count(*) FROM RoomOcc WHERE Type Not IN ('O','C')  AND (CHKINDATE<", var_3AC, -1, var_124)
  loc_173A2C1: VarLateMemCallLdRfVar
  loc_173A2CC: Proc_6_7_F26918(var_21C, Me.FGrid, 1, 0, var_168 & var_144 & " and  ChkOutDate IS NULL) OR (CHKINDATE<=", 0)
  loc_173A2F6: VarLateMemCallLdRfVar
  loc_173A301: Proc_6_7_F26918(var_2BC, Me.FGrid, 1, 0, var_16C & var_21C & " and  ChkOutDate >")
  loc_173A32B: VarLateMemCallLdRfVar
  loc_173A336: Proc_6_7_F26918(var_32C, Me.FGrid, 1, 0, var_3BC & var_2BC & ") OR (CHKINDATE=")
  loc_173A347: var_35C = var_3CC & var_32C & " and  ChkOutDate is null) " 
  loc_173A355: Me.Connection15.Execute CStr(var_35C), var_3CC, var_B0
  loc_173A35D: var_154 = var_124.Fields
  loc_173A365:  = var_168.Item()
  loc_173A36D:  = var_16C.Value
  loc_173A375: var_3DC = ( - var_3BC)
  loc_173A399: var_4C0.Fields.Item("Status").Value = var_30C & var_32C & "' OR (CHKINDATE=" & var_3CC
  loc_173A3E7: var_C0 = "*"
  loc_173A3F0: var_B0 = "Mark"
  loc_173A40C: var_4C0.Fields.Item(var_B0).Value = var_C0
  loc_173A423: var_4C0.Update var_B0, var_C0
  loc_173A42A: Set var_4C0 = Nothing 
  loc_173A431: Set var_4C4 = var_88 
  loc_173A440: var_4C4.AddNew var_B0, var_C0
  loc_173A46A: var_4C4.Fields.Item("mLine").Value = "GF"
  loc_173A48B: var_10C = var_4C4.Fields
  loc_173A493: var_11C = var_10C.Item("RoomNo")
  loc_173A49B: var_11C.Value = "Occupied"
  loc_173A4DA: VarLateMemCallLdRfVar
  loc_173A4E5: Proc_6_7_F26918(var_134, Me.FGrid, 1, 0, "SELECT Count(*) FROM RoomOcc WHERE Type Not IN ('O','C')  AND (CHKINDATE<", var_35C)
  loc_173A4ED: var_144 = -1 & var_134 
  loc_173A50F: VarLateMemCallLdRfVar
  loc_173A51A: Proc_6_7_F26918(var_1CC, Me.FGrid, 1, 0, var_144 & " and  ChkOutDate IS NULL)  OR (CHKINDATE<=")
  loc_173A544: VarLateMemCallLdRfVar
  loc_173A54F: Proc_6_7_F26918(var_26C, Me.FGrid, 1, 0)
  loc_173A579: VarLateMemCallLdRfVar
  loc_173A584: Proc_6_7_F26918(var_30C, Me.FGrid, 1, 0)
  loc_173A5A3: Me.Connection15.Execute CStr(var_10C & var_1CC & " and  ChkOutDate >" & var_26C & ") OR (CHKINDATE=" & var_30C & " and  ChkOutDate is null) "), var_11C, 0
  loc_173A5B3:  = var_11C.Item()
  loc_173A5DF: var_4C4.Fields.Item("Status").Value = CVar(var_10C.Fields)
  loc_173A621: var_C0 = "*"
  loc_173A62A: var_B0 = "Mark"
  loc_173A646: var_4C4.Fields.Item(var_B0).Value = var_C0
  loc_173A65D: var_4C4.Update var_B0, var_C0
  loc_173A664: Set var_4C4 = Nothing 
  loc_173A67C: If (var_88.RecordCount > 0) Then
  loc_173A685:   CVarUnk
  loc_173A68A:   VerifyVarObj
  loc_173A690:   Set var_10C = Me.FGrid1
  loc_173A696:   LateIdStAd
  loc_173A6C6:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0)
  loc_173A6D1: End If
  loc_173A6D5: Set var_4D0 = Me.FGrid1
  loc_173A6E1: var_4D0.Tag = "RoomStatus"
  loc_173A6F2: var_4D0.Cols = 8
  loc_173A6F7: var_B0 = 0
  loc_173A700: var_D0 = 0
  loc_173A709: var_154 = "mLine"
  loc_173A712: LateIdCallSt
  loc_173A71A: var_B0 = 0
  loc_173A723: var_D0 = 0
  loc_173A72F: LateIdCallSt
  loc_173A737: var_B0 = 0
  loc_173A740: var_D0 = 1
  loc_173A749: var_154 = "SNo."
  loc_173A752: LateIdCallSt
  loc_173A75A: var_B0 = 1
  loc_173A763: var_D0 = 0
  loc_173A76F: LateIdCallSt
  loc_173A777: var_B0 = 0
  loc_173A780: var_D0 = 2
  loc_173A789: var_154 = "Room No"
  loc_173A792: LateIdCallSt
  loc_173A79A: var_B0 = 2
  loc_173A7A9: var_D0 = CVar(CInt(1)) 'Integer
  loc_173A7B0: LateIdCallSt
  loc_173A7B8: var_B0 = 2
  loc_173A7C7: var_D0 = CVar(CInt(1)) 'Integer
  loc_173A7CE: LateIdCallSt
  loc_173A7D6: var_B0 = 2
  loc_173A7DF: var_D0 = &H578
  loc_173A7EB: LateIdCallSt
  loc_173A7F3: var_B0 = 0
  loc_173A7FC: var_D0 = 3
  loc_173A805: var_154 = "Status"
  loc_173A80E: LateIdCallSt
  loc_173A816: var_B0 = 3
  loc_173A825: var_D0 = CVar(CInt(1)) 'Integer
  loc_173A82C: LateIdCallSt
  loc_173A834: var_B0 = 3
  loc_173A843: var_D0 = CVar(CInt(1)) 'Integer
  loc_173A84A: LateIdCallSt
  loc_173A852: var_B0 = 3
  loc_173A85B: var_D0 = &H708
  loc_173A867: LateIdCallSt
  loc_173A86F: var_B0 = 0
  loc_173A878: var_D0 = 4
  loc_173A881: var_154 = "Occupancy Status"
  loc_173A88A: LateIdCallSt
  loc_173A892: var_B0 = 4
  loc_173A8A1: var_D0 = CVar(CInt(1)) 'Integer
  loc_173A8A8: LateIdCallSt
  loc_173A8B0: var_B0 = 4
  loc_173A8BF: var_D0 = CVar(CInt(1)) 'Integer
  loc_173A8C6: LateIdCallSt
  loc_173A8CE: var_B0 = 4
  loc_173A8D7: var_D0 = &H9C4
  loc_173A8E3: LateIdCallSt
  loc_173A8EB: var_B0 = 0
  loc_173A8F4: var_D0 = 5
  loc_173A8FD: var_154 = "Remark"
  loc_173A906: LateIdCallSt
  loc_173A90E: var_B0 = 5
  loc_173A91D: var_D0 = CVar(CInt(1)) 'Integer
  loc_173A924: LateIdCallSt
  loc_173A92C: var_B0 = 5
  loc_173A93B: var_D0 = CVar(CInt(1)) 'Integer
  loc_173A942: LateIdCallSt
  loc_173A94A: var_B0 = 5
  loc_173A953: var_D0 = &HC80
  loc_173A95F: LateIdCallSt
  loc_173A967: var_B0 = 0
  loc_173A970: var_D0 = 6
  loc_173A979: var_154 = "MaidStation"
  loc_173A982: LateIdCallSt
  loc_173A98A: var_B0 = 6
  loc_173A999: var_D0 = CVar(CInt(1)) 'Integer
  loc_173A9A0: LateIdCallSt
  loc_173A9AE: var_B0 = CVar(CInt(1)) 'Integer
  loc_173A9B5: LateIdCallSt
  loc_173A9BD: var_B0 = 6
  loc_173A9C6: var_D0 = 0
  loc_173A9D2: LateIdCallSt
  loc_173A9DA: var_B0 = 0
  loc_173A9E3: var_D0 = 7
  loc_173A9EC: var_154 = "MARK"
  loc_173A9F5: LateIdCallSt
  loc_173A9FD: var_B0 = 7
  loc_173AA06: var_D0 = 0
  loc_173AA12: LateIdCallSt
  loc_173AA1C: Set var_4D0 = Nothing 
  loc_173AA34: If (var_8C.RecordCount <= 0) Then
  loc_173AA3C:   global_60 = 0
  loc_173AA3F: End If
  loc_173AA43: Set var_10C = Me.FGrid1
  loc_173AA73: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_173AA76:   var_B0 = vbNullString
  loc_173AA80:   Set var_10C = Me.FGrid1
  loc_173AA91: End If
  loc_173AAC8: var_B0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_173AAE8: Me.FGrid1.Row = CVar(CLng(IIf(var_B0, FRow, 1)))
  loc_173AB36: var_B0 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_173AB56: Me.FGrid1.Col = CVar(CLng(IIf(var_B0, Fcol, 1)))
  loc_173AB72: Set var_88 = Nothing
  loc_173AB7A: Set var_8C = Nothing
  loc_173AB82: Set var_94 = Nothing
  loc_173AB8A: Set var_A0 = Nothing
  loc_173AB8D: Exit Sub
End Sub

Public Sub ComplaintList(formName, FRow, Fcol) '150D8A4
  'Data Table: 44CC18
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim var_BC As Variant
  Dim var_108 As Variant
  Dim var_138 As String
  Dim unk_44CC3F As Connection15
  Dim var_8C As Recordset15
  Dim var_9A As Integer
  Dim var_154 As Recordset15
  Dim var_164 As Recordset15
  Dim var_170 As MSHFlexGrid
  loc_150C9BE: Call 0.Method_arg_54 ("Complaint Detail")
  loc_150C9D6: var_EC = Me.FGrid
  loc_150C9F0: Set var_108 = 0(1 & CStr(var_EC.TextMatrix))
  loc_150C9F6: var_EC.TextBox.Text = "Up To Date : "
  loc_150CA1F: var_EC = Me.FGrid
  loc_150CA3F: var_EC.TextBox.Text = "For Status : "
  loc_150CA62: Call Proc_46_16_FBE580(New)
  loc_150CA6A: Set var_88 = 2(1 & CStr(var_EC.TextMatrix))
  loc_150CA6D: var_AC = 1
  loc_150CA96: If (Me.Check1.Value = 0) Then
  loc_150CABF:   var_BC = vbNullString
  loc_150CAD0:   Set var_108 = Me.Text3
  loc_150CAD6:   Me.Text3.Text = CStr("Category : " & Left(Me.FormulaString1, &H73) & var_BC)
  loc_150CB0C:   var_90 = CStr(CVar(var_90 & " Where CC.Code In (") & Me.GridString1 & ") ")
  loc_150CB1D: Else
  loc_150CB24:   Set var_108 = Me.Text3
  loc_150CB2A:   var_108.Text = "Category :   All"
  loc_150CB32: End If
  loc_150CB32: var_AC = 2
  loc_150CB39: var_CC = 1
  loc_150CB5E: If CBool(Me.FGrid.TextMatrix <> "ALL") Then
  loc_150CB68:   var_FC = CVar(var_90 & " And C.Status='") 'String
  loc_150CB6B:   var_AC = 2
  loc_150CB72:   var_CC = 1
  loc_150CB7B:   var_EC = Me.FGrid
  loc_150CB96:   var_90 = CStr(var_CC & var_EC.TextMatrix & "'")
  loc_150CBBA:   var_100 = "SELECT C.Code AS Scode,C.CDate AS CDate,C.CTime AS CTime,CC.Category AS Category,C.Description AS Description,Depart.Name AS Depart,C.UName AS UName,C.Status AS Status FROM (ComplaintDetail AS C Inner JOIN  Depart ON C.Depart=Depart.Code) Inner JOIN ComplaintCategory CC ON C.Category=CC.Code " & var_90
  loc_150CBCA:   var_EC.Connection15.Execute var_100 & " ORDER BY CC.Category,C.Description", var_EC, -1
  loc_150CBD5:   Set var_8C = var_108
  loc_150CBE8: Else
  loc_150CBFC:   var_100 = "SELECT C.Code AS Scode,C.CDate AS CDate,C.CTime AS CTime,CC.Category AS Category,C.Description AS Description,Depart.Name AS Depart,C.UName AS UName,C.Status AS Status FROM (ComplaintDetail AS C Inner JOIN  Depart ON C.Depart=Depart.Code) Inner JOIN ComplaintCategory CC ON C.Category=CC.Code " & var_90
  loc_150CC0C:   unk_44CC3F.Execute var_100 & " ORDER BY CC.Category,C.Description", var_EC, -1
  loc_150CC17:   Set var_8C = var_108
  loc_150CC27: End If
  loc_150CC3B: If (var_8C.RecordCount > 0) Then
  loc_150CC41:   var_8C.MoveFirst
  loc_150CC46:   ' Referenced from: 150D308
  loc_150CC55:   If Not(var_8C.EOF) Then
  loc_150CC5B:     Set var_154 = var_88 
  loc_150CC65:     var_AC = "Category"
  loc_150CC71:     var_108 = var_8C.Fields
  loc_150CC98:     If (var_CC <> Proc_6_38_E69628(CVar(var_108.Item(var_AC)), var_98, var_108, var_108, var_AC, var_FC)) Then
  loc_150CC9D:       var_9A = 0
  loc_150CCAB:       var_154.AddNew var_AC, var_BC
  loc_150CCD5:       var_154.Fields.Item("mLine").Value = "B"
  loc_150CD06:       var_154.Fields.Item("SNo").Value = vbNullString
  loc_150CD12:       var_BC = "Category: "
  loc_150CD1D:       var_AC = "Category"
  loc_150CD65:       var_154.Fields.Item("Description").Value = var_BC & var_8C.Fields.Item(var_AC).Value
  loc_150CD87:       var_154.Update var_AC, var_BC
  loc_150CD92:       var_9A = (var_9A + 1)
  loc_150CDA0:       var_154.AddNew var_AC, var_BC
  loc_150CDCA:       var_154.Fields.Item("MLine").Value = vbNullString
  loc_150CE05:       var_154.Fields.Item("SNo").Value = CVar(CStr(var_9A) & ".")
  loc_150CE7A:       var_154.Fields.Item("CDate").Value = Format(CVar(var_8C.Fields.Item("CDate")), "DD/MM/YY")
  loc_150CEDF:       var_154.Fields.Item("CTime").Value = Trim(CVar(var_8C.Fields.Item("CTime")))
  loc_150CF37:       var_154.Fields.Item("Description").Value = CVar(var_8C.Fields.Item("Description"))
  loc_150CF8B:       var_154.Fields.Item("Depart").Value = CVar(var_8C.Fields.Item("Depart"))
  loc_150CFDF:       var_154.Fields.Item("UName").Value = CVar(var_8C.Fields.Item("UName"))
  loc_150CFF0:       var_BC = "*"
  loc_150CFF9:       var_AC = "Mark"
  loc_150D015:       var_154.Fields.Item(var_AC).Value = var_BC
  loc_150D024:     Else
  loc_150D02A:       var_9A = (var_9A + 1)
  loc_150D038:       var_154.AddNew var_AC, var_BC
  loc_150D062:       var_154.Fields.Item("MLine").Value = vbNullString
  loc_150D09D:       var_154.Fields.Item("SNo").Value = CVar(CStr(var_9A) & ".")
  loc_150D112:       var_154.Fields.Item("CDate").Value = Format(CVar(var_8C.Fields.Item("CDate")), "DD/MM/YY")
  loc_150D177:       var_154.Fields.Item("CTime").Value = Trim(CVar(var_8C.Fields.Item("CTime")))
  loc_150D1CF:       var_154.Fields.Item("Description").Value = CVar(var_8C.Fields.Item("Description"))
  loc_150D223:       var_154.Fields.Item("Depart").Value = CVar(var_8C.Fields.Item("Depart"))
  loc_150D277:       var_154.Fields.Item("UName").Value = CVar(var_8C.Fields.Item("UName"))
  loc_150D288:       var_BC = "*"
  loc_150D291:       var_AC = "Mark"
  loc_150D2AD:       var_154.Fields.Item(var_AC).Value = var_BC
  loc_150D2B9:     End If
  loc_150D2C4:     var_154.Update var_AC, var_BC
  loc_150D2CB:     Set var_154 = Nothing 
  loc_150D2D2:     var_AC = "Category"
  loc_150D2F7:     var_98 = Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_AC)), 1, 1, var_9A, 1, 1)
  loc_150D303:     var_8C.MoveNext
  loc_150D308:     GoTo loc_150CC46
  loc_150D30B:   End If
  loc_150D30E:   Set var_164 = var_88 
  loc_150D31D:   var_164.AddNew var_AC, var_BC
  loc_150D347:   var_164.Fields.Item("mLine").Value = vbNullString
  loc_150D353:   var_BC = vbNullString
  loc_150D35C:   var_AC = "Mark"
  loc_150D378:   var_164.Fields.Item(var_AC).Value = var_BC
  loc_150D38F:   var_164.Update var_AC, var_BC
  loc_150D396:   Set var_164 = Nothing 
  loc_150D39A: End If
  loc_150D3A0: CVarUnk
  loc_150D3A5: VerifyVarObj
  loc_150D3AB: Set var_108 = Me.FGrid1
  loc_150D3B1: LateIdStAd
  loc_150D3E1: Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1, var_88, var_9A)
  loc_150D3F0: Set var_170 = Me.FGrid1
  loc_150D3FC: var_170.Tag = "ComplaintList"
  loc_150D40D: var_170.Cols = 8
  loc_150D412: var_AC = 0
  loc_150D41B: var_CC = 0
  loc_150D424: var_138 = "mLine"
  loc_150D42D: LateIdCallSt
  loc_150D435: var_AC = 0
  loc_150D43E: var_CC = 0
  loc_150D44A: LateIdCallSt
  loc_150D452: var_AC = 0
  loc_150D45B: var_CC = 1
  loc_150D464: var_138 = "SNo."
  loc_150D46D: LateIdCallSt
  loc_150D475: var_AC = 1
  loc_150D47E: var_CC = &H1F4
  loc_150D48A: LateIdCallSt
  loc_150D492: var_AC = 0
  loc_150D49B: var_CC = 2
  loc_150D4A4: var_138 = "Date"
  loc_150D4AD: LateIdCallSt
  loc_150D4B5: var_AC = 2
  loc_150D4C4: var_CC = CVar(CInt(1)) 'Integer
  loc_150D4CB: LateIdCallSt
  loc_150D4D3: var_AC = 2
  loc_150D4E2: var_CC = CVar(CInt(1)) 'Integer
  loc_150D4E9: LateIdCallSt
  loc_150D4F1: var_AC = 2
  loc_150D4FA: var_CC = &H3E8
  loc_150D506: LateIdCallSt
  loc_150D50E: var_AC = 0
  loc_150D517: var_CC = 3
  loc_150D520: var_138 = "Time"
  loc_150D529: LateIdCallSt
  loc_150D531: var_AC = 3
  loc_150D540: var_CC = CVar(CInt(1)) 'Integer
  loc_150D547: LateIdCallSt
  loc_150D54F: var_AC = 3
  loc_150D55E: var_CC = CVar(CInt(1)) 'Integer
  loc_150D565: LateIdCallSt
  loc_150D56D: var_AC = 3
  loc_150D576: var_CC = &H320
  loc_150D582: LateIdCallSt
  loc_150D58A: var_AC = 0
  loc_150D593: var_CC = 4
  loc_150D59C: var_138 = "Complaint Description"
  loc_150D5A5: LateIdCallSt
  loc_150D5AD: var_AC = 4
  loc_150D5BC: var_CC = CVar(CInt(1)) 'Integer
  loc_150D5C3: LateIdCallSt
  loc_150D5CB: var_AC = 4
  loc_150D5DA: var_CC = CVar(CInt(1)) 'Integer
  loc_150D5E1: LateIdCallSt
  loc_150D5E9: var_AC = 4
  loc_150D5F2: var_CC = &HE10
  loc_150D5FE: LateIdCallSt
  loc_150D606: var_AC = 0
  loc_150D60F: var_CC = 5
  loc_150D618: var_138 = "Department/Room"
  loc_150D621: LateIdCallSt
  loc_150D629: var_AC = 5
  loc_150D638: var_CC = CVar(CInt(7)) 'Integer
  loc_150D63F: LateIdCallSt
  loc_150D647: var_AC = 5
  loc_150D656: var_CC = CVar(CInt(7)) 'Integer
  loc_150D65D: LateIdCallSt
  loc_150D665: var_AC = 5
  loc_150D66E: var_CC = &H960
  loc_150D67A: LateIdCallSt
  loc_150D682: var_AC = 0
  loc_150D68B: var_CC = 6
  loc_150D694: var_138 = "Complaint By"
  loc_150D69D: LateIdCallSt
  loc_150D6A5: var_AC = 6
  loc_150D6B4: var_CC = CVar(CInt(7)) 'Integer
  loc_150D6BB: LateIdCallSt
  loc_150D6C3: var_AC = 6
  loc_150D6D2: var_CC = CVar(CInt(7)) 'Integer
  loc_150D6D9: LateIdCallSt
  loc_150D6E1: var_AC = 6
  loc_150D6EA: var_CC = &H7D0
  loc_150D6F6: LateIdCallSt
  loc_150D6FE: var_AC = 0
  loc_150D707: var_CC = 7
  loc_150D710: var_138 = "MARK"
  loc_150D719: LateIdCallSt
  loc_150D721: var_AC = 7
  loc_150D72A: var_CC = 0
  loc_150D736: LateIdCallSt
  loc_150D740: Set var_170 = Nothing 
  loc_150D758: If (var_8C.RecordCount <= 0) Then
  loc_150D760:   global_60 = 0
  loc_150D763: End If
  loc_150D767: Set var_108 = Me.FGrid1
  loc_150D797: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_150D79A:   var_AC = vbNullString
  loc_150D7A4:   Set var_108 = Me.FGrid1
  loc_150D7B5: End If
  loc_150D7EC: var_AC = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_150D80C: Me.FGrid1.Row = CVar(CLng(IIf(var_AC, FRow, 1)))
  loc_150D85A: var_AC = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_150D87A: Me.FGrid1.Col = CVar(CLng(IIf(var_AC, Fcol, 1)))
  loc_150D896: Set var_88 = Nothing
  loc_150D89E: Set var_8C = Nothing
  loc_150D8A1: Exit Sub
End Sub

Public Sub IssueRegister(formName, FRow, Fcol) '145B53C
  'Data Table: 44CC18
  Dim var_110 As Variant
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_140 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_1C4 As String
  Dim var_B0 As Variant
  Dim var_1D8 As Variant
  Dim unk_44CC3F As Connection15
  Dim var_8C As Recordset15
  Dim var_1E4 As Recordset15
  Dim var_1F4 As Recordset15
  Dim var_88 As Recordset15
  Dim var_200 As MSHFlexGrid
  loc_145A9CC: var_110 = "WHERE S.VDate Between "
  loc_145A9E6: VarLateMemCallLdRfVar
  loc_145A9F1: Proc_6_7_F26918(var_100, Me.FGrid, 1)
  loc_145AA02: var_140 = 0 & var_100 & " And " 
  loc_145AA1B: VarLateMemCallLdRfVar
  loc_145AA26: Proc_6_7_F26918(var_1B0, Me.FGrid, 1)
  loc_145AA33: var_90 = CStr(1 & var_1B0)
  loc_145AA4B: var_A0 = 2
  loc_145AA52: var_C0 = 1
  loc_145AA77: If (Me.FGrid.TextMatrix = "Issue") Then
  loc_145AA81:   var_90 = var_90 & "and V.NCat in('HKISS') AND R.TYPE IN('RO')"
  loc_145AA87: Else
  loc_145AA8E:   var_90 = var_90 & "and V.NCat in('HKIR') AND R.TYPE IN('RO')"
  loc_145AA91: End If
  loc_145AA91: var_A0 = 1
  loc_145AAA8: var_C0 = 0
  loc_145AABA: If (Me.Check1.Value = var_C0) Then
  loc_145AAD3:   var_A0 = ") "
  loc_145AADD:   var_90 = CStr(CVar(var_90 & " And S.RoomNo In (") & Me.GridString1 & var_A0)
  loc_145AAEB: End If
  loc_145AAF1: Call 0.Method_arg_54 ("Issue/Receive Register", var_A0, var_C0)
  loc_145AAF9: var_A0 = 0
  loc_145AB36: var_100 = Me.FGrid
  loc_145AB50: Set var_1D8 = 1(1 & CStr(var_100.TextMatrix))
  loc_145AB56: var_100.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_145AB76: var_A0 = 1
  loc_145AB9F: If (Me.Check1.Value = 0) Then
  loc_145ABC8:   var_B0 = vbNullString
  loc_145ABD9:   Set var_1D8 = Me.Text2
  loc_145ABDF:   Me.Text2.Text = CStr("RoomNo : " & Left(Me.FormulaString1, &H73) & var_B0)
  loc_145ABF8: Else
  loc_145AC05:   Me.Text2.Text = "RoomNo :   All"
  loc_145AC0D: End If
  loc_145AC10: var_A0 = 2
  loc_145AC20: var_E0 = Me.FGrid
  loc_145AC3A: Set var_1D8 = var_A0(1 & CStr(var_E0.TextMatrix))
  loc_145AC40: var_E0.TextBox.Text = "Type :"
  loc_145AC63: Call Proc_46_17_FA302C(New, var_1D8, var_E0, var_A0, var_A0)
  loc_145AC6B: Set var_88 = var_1D8
  loc_145AC6E: var_A0 = 2
  loc_145AC75: var_C0 = 1
  loc_145AC7E: var_E0 = Me.FGrid
  loc_145AC9A: If (var_E0.TextMatrix = "Issue") Then
  loc_145ACB1:   var_1C4 = "SELECT S.DocId,S.Vdate,s.Sno,S.VNO,s.RoomNo,I.Name as Item,s.qtyISS as Qty FROM (((STOCK S  Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store')Left Join ROOMMAST R On S.RoomNo=R.Code)left join Voucher_Type V On V.V_Type=S.Vtype)" & var_90
  loc_145ACC1:   var_E0.Connection15.Execute var_1C4 & " Order By s.vdate,s.DocId,S.SNo,I.Name", var_E0, -1
  loc_145ACCC:   Set var_8C = var_1D8
  loc_145ACDF: Else
  loc_145ACF3:   var_1C4 = "SELECT S.DocId,S.Vdate,s.Sno,S.VNo,s.RoomNo,I.Name as Item,s.qtyREC as Qty FROM (((STOCK S  Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store')Left Join ROOMMAST R On S.RoomNo=R.Code)left join Voucher_Type V On V.V_Type=S.Vtype)" & var_90
  loc_145AD03:   unk_44CC3F.Execute var_1C4 & " Order By s.vdate,s.DocId,S.SNo,I.Name", var_E0, -1
  loc_145AD0E:   Set var_8C = var_1D8
  loc_145AD1E: End If
  loc_145AD32: If (var_8C.RecordCount > 0) Then
  loc_145AD38:   var_8C.MoveFirst
  loc_145AD3D:   ' Referenced from: 145AFFE
  loc_145AD4C:   If Not(var_8C.EOF) Then
  loc_145AD52:     Set var_1E4 = var_88 
  loc_145AD61:     var_1E4.AddNew var_A0, var_B0
  loc_145AD8B:     var_1E4.Fields.Item("MLine").Value = vbNullString
  loc_145ADC2:     var_F0 = "DD/MM/YY"
  loc_145ADFA:     var_1E4.Fields.Item("DATE").Value = Format(CVar(var_8C.Fields.Item("VDate")), var_F0)
  loc_145AE5B:     var_1E4.Fields.Item("VrNo").Value = var_8C.Fields.Item("VNo").Value
  loc_145AEB8:     var_1E4.Fields.Item("ROOMNO").Value = var_8C.Fields.Item("RoomNo").Value
  loc_145AF15:     var_1E4.Fields.Item("ITEMNAME").Value = var_8C.Fields.Item("Item").Value
  loc_145AF37:     var_1D8 = var_8C.Fields
  loc_145AF4E:     Proc_6_51_EF4580(var_F0, CVar(var_1D8.Item("qty")), 1, 1, var_1D8, var_1D8)
  loc_145AF96:     var_1E4.Fields.Item("QTY").Value = Format(var_F0, "0.000")
  loc_145AFAF:     var_B0 = "*"
  loc_145AFB8:     var_A0 = "Mark"
  loc_145AFD4:     var_1E4.Fields.Item(var_A0).Value = var_B0
  loc_145AFEB:     var_1E4.Update var_A0, var_B0
  loc_145AFF2:     Set var_1E4 = Nothing 
  loc_145AFF9:     var_8C.MoveNext
  loc_145AFFE:     GoTo loc_145AD3D
  loc_145B001:   End If
  loc_145B004:   Set var_1F4 = var_88 
  loc_145B013:   var_1F4.AddNew var_A0, var_B0
  loc_145B03D:   var_1F4.Fields.Item("mLine").Value = "RF"
  loc_145B049:   var_B0 = vbNullString
  loc_145B052:   var_A0 = "Mark"
  loc_145B06E:   var_1F4.Fields.Item(var_A0).Value = var_B0
  loc_145B085:   var_1F4.Update var_A0, var_B0
  loc_145B08C:   Set var_1F4 = Nothing 
  loc_145B090: End If
  loc_145B0A4: If (var_88.RecordCount > 0) Then
  loc_145B0AD:   CVarUnk
  loc_145B0B2:   VerifyVarObj
  loc_145B0B8:   Set var_1D8 = Me.FGrid1
  loc_145B0BE:   LateIdStAd
  loc_145B0EE:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1, var_88, 1, 1)
  loc_145B0F9: End If
  loc_145B0FD: Set var_200 = Me.FGrid1
  loc_145B109: var_200.Tag = "IssueRegister"
  loc_145B11A: var_200.Cols = 7
  loc_145B11F: var_A0 = 0
  loc_145B128: var_C0 = 0
  loc_145B131: var_110 = "mLine"
  loc_145B13A: LateIdCallSt
  loc_145B142: var_A0 = 0
  loc_145B14B: var_C0 = 0
  loc_145B157: LateIdCallSt
  loc_145B15F: var_A0 = 0
  loc_145B168: var_C0 = 1
  loc_145B171: var_110 = "DATE"
  loc_145B17A: LateIdCallSt
  loc_145B182: var_A0 = 1
  loc_145B18B: var_C0 = &H3E8
  loc_145B197: LateIdCallSt
  loc_145B19F: var_A0 = 0
  loc_145B1A8: var_C0 = 2
  loc_145B1B1: var_110 = "Vr. NO."
  loc_145B1BA: LateIdCallSt
  loc_145B1C2: var_A0 = 2
  loc_145B1D1: var_C0 = CVar(CInt(1)) 'Integer
  loc_145B1D8: LateIdCallSt
  loc_145B1E0: var_A0 = 2
  loc_145B1EF: var_C0 = CVar(CInt(1)) 'Integer
  loc_145B1F6: LateIdCallSt
  loc_145B1FE: var_A0 = 2
  loc_145B207: var_C0 = &H3E8
  loc_145B213: LateIdCallSt
  loc_145B21B: var_A0 = 0
  loc_145B224: var_C0 = 3
  loc_145B22D: var_110 = "ROOM No"
  loc_145B236: LateIdCallSt
  loc_145B23E: var_A0 = 3
  loc_145B24D: var_C0 = CVar(CInt(1)) 'Integer
  loc_145B254: LateIdCallSt
  loc_145B25C: var_A0 = 3
  loc_145B26B: var_C0 = CVar(CInt(1)) 'Integer
  loc_145B272: LateIdCallSt
  loc_145B27A: var_A0 = 3
  loc_145B283: var_C0 = &H4B0
  loc_145B28F: LateIdCallSt
  loc_145B297: var_A0 = 0
  loc_145B2A0: var_C0 = 4
  loc_145B2A9: var_110 = "ITEM NAME"
  loc_145B2B2: LateIdCallSt
  loc_145B2BA: var_A0 = 4
  loc_145B2C9: var_C0 = CVar(CInt(1)) 'Integer
  loc_145B2D0: LateIdCallSt
  loc_145B2D8: var_A0 = 4
  loc_145B2E7: var_C0 = CVar(CInt(1)) 'Integer
  loc_145B2EE: LateIdCallSt
  loc_145B2F6: var_A0 = 4
  loc_145B2FF: var_C0 = &HBB8
  loc_145B30B: LateIdCallSt
  loc_145B313: var_A0 = 0
  loc_145B31C: var_C0 = 5
  loc_145B325: var_110 = "QUANTITY"
  loc_145B32E: LateIdCallSt
  loc_145B336: var_A0 = 5
  loc_145B345: var_C0 = CVar(CInt(7)) 'Integer
  loc_145B34C: LateIdCallSt
  loc_145B354: var_A0 = 5
  loc_145B363: var_C0 = CVar(CInt(7)) 'Integer
  loc_145B36A: LateIdCallSt
  loc_145B372: var_A0 = 5
  loc_145B37B: var_C0 = &H4B0
  loc_145B387: LateIdCallSt
  loc_145B38F: var_A0 = 0
  loc_145B398: var_C0 = 6
  loc_145B3A1: var_110 = "MARK"
  loc_145B3AA: LateIdCallSt
  loc_145B3B2: var_A0 = 6
  loc_145B3BB: var_C0 = 0
  loc_145B3C7: LateIdCallSt
  loc_145B3D1: Set var_200 = Nothing 
  loc_145B3E9: If (var_8C.RecordCount <= 0) Then
  loc_145B3F1:   global_60 = 0
  loc_145B3F4: End If
  loc_145B3F8: Set var_1D8 = Me.FGrid1
  loc_145B428: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_145B42B:   var_A0 = vbNullString
  loc_145B435:   Set var_1D8 = Me.FGrid1
  loc_145B446: End If
  loc_145B47D: var_A0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_145B49D: Me.FGrid1.Row = CVar(CLng(IIf(var_A0, FRow, 1)))
  loc_145B4EB: var_A0 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_145B50B: Me.FGrid1.Col = CVar(CLng(IIf(var_A0, Fcol, 1)))
  loc_145B527: Set var_88 = Nothing
  loc_145B52F: Set var_8C = Nothing
  loc_145B534: IStAd
  loc_145B538: Exit Sub
End Sub

Public Sub StockRegister(formName, FRow, Fcol) '16582D8
  'Data Table: 44CC18
  Dim var_130 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_140 As Variant
  Dim var_150 As String
  Dim var_160 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_D0 As Variant
  Dim var_1F8 As Variant
  Dim var_248 As String
  Dim var_288 As String
  Dim var_298 As Variant
  Dim var_2B8 As Variant
  Dim var_2C8 As String
  Dim var_308 As String
  Dim var_AC As Recordset15
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_348 As Recordset15
  Dim var_354 As Recordset15
  Dim var_A8 As Recordset15
  Dim var_35C As Double
  Dim var_364 As Double
  Dim var_368 As Recordset15
  Dim var_36C As Recordset15
  Dim var_370 As MSHFlexGrid
  loc_1656C84: var_130 = "WHERE S.VDate Between "
  loc_1656C9E: VarLateMemCallLdRfVar
  loc_1656CA9: Proc_6_7_F26918(var_120, Me.FGrid, 1)
  loc_1656CBA: var_160 = 0 & var_120 & " And " 
  loc_1656CD3: VarLateMemCallLdRfVar
  loc_1656CDE: Proc_6_7_F26918(var_1D0, Me.FGrid, 1)
  loc_1656D03: var_C0 = 1
  loc_1656D2C: If (Me.Check1.Value = 0) Then
  loc_1656D4F:   var_B0 = CStr(CVar(CStr(1 & var_1D0) & " And S.Item In (") & Me.GridString1 & ") ")
  loc_1656D5D: End If
  loc_1656D5D: var_C0 = 2
  loc_1656D64: var_E0 = 1
  loc_1656D89: If (Me.FGrid.TextMatrix = "Room") Then
  loc_1656D8C:   var_C0 = 2
  loc_1656DB5:   If (Me.Check1.Value = 0) Then
  loc_1656DDF:     var_B0 = CStr(CVar(var_B0 & " AND R.TYPE IN('RO')" & " And S.RoomNo In (") & Me.GridString2 & ") ")
  loc_1656DF0:   End If
  loc_1656DF3: Else
  loc_1656DF3:   var_C0 = 2
  loc_1656E0A:   var_E0 = 0
  loc_1656E1C:   If (Me.Check1.Value = var_E0) Then
  loc_1656E35:     var_C0 = ") "
  loc_1656E3F:     var_B0 = CStr(CVar(var_B0 & " And S.RestCode In (") & Me.GridString2 & var_C0)
  loc_1656E4D:   End If
  loc_1656E4D: End If
  loc_1656E53: Call 0.Method_arg_54 ("Stock Register", var_C0, var_C0, var_E0)
  loc_1656E5B: var_C0 = 0
  loc_1656E98: var_120 = Me.FGrid
  loc_1656EB2: Set var_1F8 = 1(1 & CStr(var_120.TextMatrix))
  loc_1656EB8: var_120.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_1656ED8: var_C0 = 1
  loc_1656F01: If (Me.Check1.Value = 0) Then
  loc_1656F3B:   Set var_1F8 = Me.Text2
  loc_1656F41:   Me.Text2.Text = CStr("ItemName : " & Left(Me.FormulaString1, &H73) & vbNullString)
  loc_1656F5A: Else
  loc_1656F67:   Me.Text2.Text = "ItemName :   All"
  loc_1656F6F: End If
  loc_1656F82: var_100 = Me.FGrid
  loc_1656F9C: Set var_1F8 = 2(1 & CStr(var_100.TextMatrix))
  loc_1656FA2: var_100.TextBox.Text = "For Type :"
  loc_1656FB8: var_C0 = 2
  loc_1656FBF: var_E0 = 1
  loc_1656FE4: If (Me.FGrid.TextMatrix = "Room") Then
  loc_1656FE7:   var_C0 = 2
  loc_1657010:   If (Me.Check1.Value = 0) Then
  loc_165704A:     Set var_1F8 = Me.Text4
  loc_1657050:     Me.Text4.Text = CStr("RoomNo : " & Left(Me.FormulaString2, &H73) & vbNullString)
  loc_1657069:   Else
  loc_1657076:     Me.Text4.Text = "RoomNo :   All"
  loc_165707E:   End If
  loc_1657081: Else
  loc_1657081:   var_C0 = 2
  loc_1657098:   var_E0 = 0
  loc_16570AA:   If (Me.Check1.Value = var_E0) Then
  loc_16570B0:     var_100 = Me.FormulaString2
  loc_16570B7:     var_C0 = "Department :   "
  loc_16570CF:     var_120 = var_C0 & Left(var_100, &H73) 
  loc_16570E4:     Set var_1F8 = Me.Text4
  loc_16570EA:     Me.Text4.Text = CStr(var_120 & vbNullString)
  loc_1657103:   Else
  loc_165710A:     Set var_1F8 = Me.Text4
  loc_1657110:     var_1F8.Text = "Department :     All"
  loc_1657118:   End If
  loc_1657118: End If
  loc_1657125: Call Proc_46_18_FE08D0(New, var_1F8, var_100, var_C0, var_100, var_C0, var_E0)
  loc_165712D: Set var_A8 = var_1F8
  loc_1657130: var_C0 = 2
  loc_1657137: var_E0 = 1
  loc_165715C: If (Me.FGrid.TextMatrix = "Room") Then
  loc_1657171:   var_C0 = 0
  loc_1657178:   var_E0 = 1
  loc_1657181:   var_100 = Me.FGrid
  loc_1657186:   VarLateMemCallLdRfVar
  loc_1657191:   Proc_6_7_F26918(var_120, var_100, var_E0, var_C0, "SELECT DOCID,", var_2B8, -1, var_1F8)
  loc_165719D:   var_150 = " AS DATE1,(S.VNo) as VrNo,MAX(S.RoomNo) AS Room,MAX(I.NAME) AS ItemName,'OPENING BALANCE' AS Description,(SUM(S.QTYRec)-SUM(S.QTYIss)) AS RECDQTY,0 AS ISSQTY FROM ((STOCK S LEFT JOIN Itemmast I ON I.CODE=S.Item And I.ItemType='Store')Left Join ROOMMAST R On S.RoomNo=R.Code) LEFT JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE where V.NCAT in ('HKISS','HKIR','HKROP') and S.VDATE <"
  loc_16571BB:   VarLateMemCallLdRfVar
  loc_16571C6:   Proc_6_7_F26918(var_1D0, Me.FGrid, 1, 0, var_E0 & var_120 & " And ", var_C0)
  loc_16571E4:   var_248 = "SELECT DOCID,(S.VDATE) AS DATE1,(S.VNo) as VrNo,MAX(S.RoomNo) AS Room,max(I.NAME) AS ItemName,max(R.Name) as Description,RECDQTY=CASE MAX(NCAT) WHEN 'HKISS' THEN Sum(S.QTYIss) ELSE 0 END,ISSQTY=CASE MAX(NCAT) WHEN 'HKIR' THEN Sum(S.QTYRec) ELSE 0 END  FROM (((STOCK S LEFT JOIN ItemMast I on I.Code=S.Item And I.ItemType='Store')LEFT JOIN RoomMast R ON R.Code=S.RoomNo)LEFT JOIN VOUCHER_TYPE V ON V.V_TYPE=S.VTYPE)"
  loc_16571F7:   var_288 = " AND S.VTYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT IN('HKISS','HKIR','HKROP')) GROUP BY S.Item,S.VDate,S.dOCiD ,s.VNO Order By ITEMNAME,Date1,DOCID,VrNo"
  loc_165720A:   Me.Connection15.Execute CStr(var_C0 & var_1D0 & " GROUP BY S.Item,S.VDate,S.dOCiD,s.VNO " & "Union " & var_248 & CVar(var_B0) & var_288), var_100, var_C0
  loc_1657215:   Set var_AC = var_1F8
  loc_1657242: Else
  loc_1657254:   var_C0 = 0
  loc_1657269:   VarLateMemCallLdRfVar
  loc_1657274:   Proc_6_7_F26918(var_120, Me.FGrid, 1, var_C0, "SELECT DOCID,", var_338)
  loc_165727C:   var_140 = -1 & var_120 
  loc_1657280:   var_150 = " AS DATE1,(S.VNo) as VrNo,MAX(S.RoomNo) AS Room,MAX(I.NAME) AS ItemName,'OPENING BALANCE' AS Description,(SUM(S.QTYRec)-SUM(S.QTYIss)) AS RECDQTY,0 AS ISSQTY FROM ((STOCK S LEFT JOIN Itemmast I ON I.CODE=S.Item And I.ItemType='Store')LEFT JOIN Depart D ON D.Code=S.RestCode) LEFT JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE where V.NCAT in ('HKISS','HKIR','HKOP','RQI') and S.VDATE <"
  loc_165729E:   VarLateMemCallLdRfVar
  loc_16572A9:   Proc_6_7_F26918(var_1D0, Me.FGrid, 1, 0, 1 & var_120 & " And ")
  loc_16572C7:   var_248 = "SELECT DOCID,(S.VDATE) AS DATE1,(S.VNo) as VrNo,MAX(S.RoomNo) AS Room,max(I.NAME) AS ItemName,max(D.Name) as Description,RECDQTY = CASE MAX(NCAT) WHEN 'HKIR' THEN Sum(S.QTYRec) ELSE 0 END,ISSQTY=CASE MAX(NCAT) WHEN 'HKISS' THEN Sum(S.QTYIss) ELSE 0 END FROM (((STOCK S LEFT JOIN ItemMast I on I.Code=S.Item And I.ItemType='Store')LEFT JOIN Depart D ON D.Code=S.RestCode) LEFT JOIN VOUCHER_TYPE V ON V.V_TYPE=S.VTYPE)"
  loc_16572DF:   var_298 = var_1F8 & var_1D0 & " GROUP BY  S.Item,S.VDate,S.dOCiD,s.VNO " & "Union " & var_248 & CVar(var_B0) & " AND S.VTYPE IN(SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT IN('HKISS','HKIR')) GROUP BY S.Item,S.VDate,S.dOCiD ,s.VNO " 
  loc_16572EC:   var_2C8 = "SELECT DOCID,(S.VDATE) AS DATE1,(S.VNo) as VrNo,MAX(S.RoomNo) AS Room,max(I.NAME) AS ItemName,max(D.Name) as Description,RECDQTY = CASE MAX(NCAT) WHEN 'RQI' THEN Sum(S.QTYIss) ELSE 0 END,0 AS ISSQTY FROM (((STOCK S LEFT JOIN ItemMast I on I.Code=S.Item And I.ItemType='Store')LEFT JOIN Depart D ON D.Code=S.RestCode) LEFT JOIN VOUCHER_TYPE V ON V.V_TYPE=S.VTYPE)"
  loc_16572FF:   var_308 = " AND S.VTYPE IN(SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT IN ('RQI')) GROUP BY S.Item,S.VDate,S.dOCiD,s.VNO Order By iTEMNAME,Date1,DOCID,VrNo"
  loc_1657312:   Me.Connection15.Execute CStr(var_298 & "Union " & var_2C8 & CVar(var_B0) & var_308), var_C0, "From :   "
  loc_165731D:   Set var_AC = var_1F8
  loc_165734F: End If
  loc_1657352: var_88 = vbNullString
  loc_1657358: var_A4 = vbNullString
  loc_165736F: If (var_AC.RecordCount > 0) Then
  loc_1657375:   var_AC.MoveFirst
  loc_165737A:   ' Referenced from: 1657CA2
  loc_1657389:   If Not(var_AC.EOF) Then
  loc_165738F:     var_D0 = CVar(var_A4) 'String
  loc_16573C9:     If CBool(var_D0 <> var_AC.Fields.Item("ItemName").Value) Then
  loc_16573CF:       var_C0 = "ItemName"
  loc_16573F4:       var_A4 = Proc_6_38_E69628(CVar(var_AC.Fields.Item(var_C0)))
  loc_1657400:       var_90 = CDbl(0)
  loc_1657406:       var_98 = CDbl(0)
  loc_165740C:       var_A0 = CDbl(0)
  loc_1657412:       Set var_348 = var_A8 
  loc_1657421:       var_348.AddNew var_C0, var_D0
  loc_165744B:       var_348.Fields.Item("MLine").Value = vbNullString
  loc_165749A:       var_348.Fields.Item("Date").Value = CVar(var_AC.Fields.Item("ItemName"))
  loc_16574AB:       var_D0 = "*"
  loc_16574B4:       var_C0 = "Mark"
  loc_16574D0:       var_348.Fields.Item(var_C0).Value = var_D0
  loc_16574E7:       var_348.Update var_C0, var_D0
  loc_16574EE:       Set var_348 = Nothing 
  loc_16574F2:     End If
  loc_16574F5:     var_D0 = CVar(var_A4) 'String
  loc_16574FF:     var_C0 = "ItemName"
  loc_165752F:     If (var_D0 = var_AC.Fields.Item(var_C0).Value) Then
  loc_1657535:       Set var_354 = var_A8 
  loc_1657544:       var_354.AddNew var_C0, var_D0
  loc_165756E:       var_354.Fields.Item("MLine").Value = vbNullString
  loc_16575DD:       var_354.Fields.Item("DATE").Value = Format(CVar(var_AC.Fields.Item("Date1")), "DD/MM/YY")
  loc_165763E:       var_354.Fields.Item("VRNO").Value = var_AC.Fields.Item("VrNo").Value
  loc_165769B:       var_354.Fields.Item("ROOMNO").Value = var_AC.Fields.Item("Room").Value
  loc_16576F8:       var_354.Fields.Item("DESCRIP").Value = var_AC.Fields.Item("Description").Value
  loc_165776F:       var_140 = (var_AC.Fields.Item("IssQty").Value < 0)
  loc_165778B:       If CBool((var_AC.Fields.Item("RecdQty").Value < 0) Or var_140) Then
  loc_16577C6:         Proc_6_51_EF4580(var_140, Abs(var_AC.Fields.Item("IssQty").Value), 1, 1)
  loc_16577EE:         var_354.Fields.Item("RECDQTY").Value = var_140
  loc_1657831:         var_110 = Abs(var_AC.Fields.Item("RecdQty").Value)
  loc_165783F:         Proc_6_51_EF4580(var_140, var_110, var_A0)
  loc_1657867:         var_354.Fields.Item("ISSQTY").Value = var_140
  loc_1657883:       Else
  loc_16578A9:         Proc_6_51_EF4580(var_110, CVar(var_AC.Fields.Item("RecdQty")), var_98)
  loc_16578D1:         var_354.Fields.Item("RECDQTY").Value = var_110
  loc_165790C:         Proc_6_51_EF4580(var_110, CVar(var_AC.Fields.Item("IssQty")))
  loc_1657934:         var_354.Fields.Item("ISSQTY").Value = var_110
  loc_1657949:       End If
  loc_16579B2:       var_364 = Val(CStr(var_A8.Fields.Item("ISSQTY").Value))
  loc_16579C0:       var_90 = (var_90 + (Val(CStr(var_A8.Fields.Item("RECDQTY").Value)) - var_364))
  loc_1657A19:       var_98 = (var_98 + Val(CStr(var_A8.Fields.Item("RECDQTY").Value)))
  loc_1657A4B:       var_100 = var_A8.Fields.Item("ISSQTY").Value
  loc_1657A5C:       var_35C = Val(CStr(var_100))
  loc_1657A66:       var_A0 = (var_A0 + var_35C)
  loc_1657A81:       Proc_6_51_EF4580(var_100, var_90, var_A0, var_35C, var_98, var_35C)
  loc_1657AA9:       var_354.Fields.Item("BALANCE").Value = var_100
  loc_1657AB8:       var_D0 = "*"
  loc_1657AC1:       var_C0 = "Mark"
  loc_1657ADD:       var_354.Fields.Item(var_C0).Value = var_D0
  loc_1657AF4:       var_354.Update var_C0, var_D0
  loc_1657AFB:       Set var_354 = Nothing 
  loc_1657AFF:     End If
  loc_1657B02:     var_AC.MoveNext
  loc_1657B18:     If (var_AC.EOF = &HFF) Then
  loc_1657B1B:       GoTo loc_1657B5E
  loc_1657B1E:     End If
  loc_1657B21:     var_D0 = CVar(var_A4) 'String
  loc_1657B2B:     var_C0 = "ItemName"
  loc_1657B47:     var_100 = var_AC.Fields.Item(var_C0).Value
  loc_1657B5B:     If CBool(var_D0 <> var_100) Then
  loc_1657B5E:       ' Referenced from: 1657B1B
  loc_1657B61:       Set var_368 = var_A8 
  loc_1657B70:       var_368.AddNew var_C0, var_D0
  loc_1657B9A:       var_368.Fields.Item("DESCRIP").Value = "Total :"
  loc_1657BB1:       Proc_6_51_EF4580(var_100, var_98, var_90, var_364)
  loc_1657BD9:       var_368.Fields.Item("RECDQTY").Value = var_100
  loc_1657BF3:       Proc_6_51_EF4580(var_100, var_A0, var_35C)
  loc_1657C1B:       var_368.Fields.Item("ISSQTY").Value = var_100
  loc_1657C4F:       var_368.Fields.Item("mLine").Value = "GF"
  loc_1657C5B:       var_D0 = "*"
  loc_1657C64:       var_C0 = "Mark"
  loc_1657C80:       var_368.Fields.Item(var_C0).Value = var_D0
  loc_1657C97:       var_368.Update var_C0, var_D0
  loc_1657C9E:       Set var_368 = Nothing 
  loc_1657CA2:     End If
  loc_1657CA2:     GoTo loc_165737A
  loc_1657CA5:   End If
  loc_1657CA8:   Set var_36C = var_A8 
  loc_1657CB7:   var_36C.AddNew var_C0, var_D0
  loc_1657CE1:   var_36C.Fields.Item("mLine").Value = "RF"
  loc_1657CED:   var_D0 = vbNullString
  loc_1657CF6:   var_C0 = "Mark"
  loc_1657D12:   var_36C.Fields.Item(var_C0).Value = var_D0
  loc_1657D29:   var_36C.Update var_C0, var_D0
  loc_1657D30:   Set var_36C = Nothing 
  loc_1657D34: End If
  loc_1657D48: If (var_A8.RecordCount > 0) Then
  loc_1657D51:   CVarUnk
  loc_1657D56:   VerifyVarObj
  loc_1657D5C:   Set var_1F8 = Me.FGrid1
  loc_1657D62:   LateIdStAd
  loc_1657D92:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_1657D9D: End If
  loc_1657DA1: Set var_370 = Me.FGrid1
  loc_1657DAD: var_370.Tag = "StockRegister"
  loc_1657DBE: var_370.Cols = 9
  loc_1657DC3: var_C0 = 0
  loc_1657DCC: var_E0 = 0
  loc_1657DD5: var_130 = "mLine"
  loc_1657DDE: LateIdCallSt
  loc_1657DE6: var_C0 = 0
  loc_1657DEF: var_E0 = 0
  loc_1657DFB: LateIdCallSt
  loc_1657E03: var_C0 = 0
  loc_1657E0C: var_E0 = 1
  loc_1657E15: var_130 = "DATE"
  loc_1657E1E: LateIdCallSt
  loc_1657E26: var_C0 = 1
  loc_1657E2F: var_E0 = &H7D0
  loc_1657E3B: LateIdCallSt
  loc_1657E43: var_C0 = 0
  loc_1657E4C: var_E0 = 2
  loc_1657E55: var_130 = "VR. NO."
  loc_1657E5E: LateIdCallSt
  loc_1657E66: var_C0 = 2
  loc_1657E75: var_E0 = CVar(CInt(1)) 'Integer
  loc_1657E7C: LateIdCallSt
  loc_1657E84: var_C0 = 2
  loc_1657E93: var_E0 = CVar(CInt(1)) 'Integer
  loc_1657E9A: LateIdCallSt
  loc_1657EA2: var_C0 = 2
  loc_1657EAB: var_E0 = &H3E8
  loc_1657EB7: LateIdCallSt
  loc_1657EBF: var_C0 = 0
  loc_1657EC8: var_E0 = 3
  loc_1657ED1: var_130 = "ROOM No"
  loc_1657EDA: LateIdCallSt
  loc_1657EE2: var_C0 = 3
  loc_1657EF1: var_E0 = CVar(CInt(1)) 'Integer
  loc_1657EF8: LateIdCallSt
  loc_1657F00: var_C0 = 3
  loc_1657F0F: var_E0 = CVar(CInt(1)) 'Integer
  loc_1657F16: LateIdCallSt
  loc_1657F1E: var_C0 = 3
  loc_1657F27: var_E0 = &H4B0
  loc_1657F33: LateIdCallSt
  loc_1657F3B: var_C0 = 0
  loc_1657F44: var_E0 = 4
  loc_1657F4D: var_130 = "DESCRIPTION"
  loc_1657F56: LateIdCallSt
  loc_1657F5E: var_C0 = 4
  loc_1657F6D: var_E0 = CVar(CInt(1)) 'Integer
  loc_1657F74: LateIdCallSt
  loc_1657F7C: var_C0 = 4
  loc_1657F8B: var_E0 = CVar(CInt(1)) 'Integer
  loc_1657F92: LateIdCallSt
  loc_1657F9A: var_C0 = 4
  loc_1657FA3: var_E0 = &HAF0
  loc_1657FAF: LateIdCallSt
  loc_1657FB7: var_C0 = 0
  loc_1657FC0: var_E0 = 5
  loc_1657FC9: var_130 = "RECD.QTY"
  loc_1657FD2: LateIdCallSt
  loc_1657FDA: var_C0 = 5
  loc_1657FE9: var_E0 = CVar(CInt(7)) 'Integer
  loc_1657FF0: LateIdCallSt
  loc_1657FF8: var_C0 = 5
  loc_1658007: var_E0 = CVar(CInt(7)) 'Integer
  loc_165800E: LateIdCallSt
  loc_1658016: var_C0 = 5
  loc_165801F: var_E0 = &H5DC
  loc_165802B: LateIdCallSt
  loc_1658033: var_C0 = 0
  loc_165803C: var_E0 = 6
  loc_1658045: var_130 = "ISS.QTY"
  loc_165804E: LateIdCallSt
  loc_1658056: var_C0 = 6
  loc_1658065: var_E0 = CVar(CInt(7)) 'Integer
  loc_165806C: LateIdCallSt
  loc_1658074: var_C0 = 6
  loc_1658083: var_E0 = CVar(CInt(7)) 'Integer
  loc_165808A: LateIdCallSt
  loc_1658092: var_C0 = 6
  loc_165809B: var_E0 = &H5DC
  loc_16580A7: LateIdCallSt
  loc_16580AF: var_C0 = 0
  loc_16580B8: var_E0 = 7
  loc_16580C1: var_130 = "BALANCE"
  loc_16580CA: LateIdCallSt
  loc_16580D2: var_C0 = 7
  loc_16580E1: var_E0 = CVar(CInt(7)) 'Integer
  loc_16580E8: LateIdCallSt
  loc_16580F0: var_C0 = 7
  loc_16580FF: var_E0 = CVar(CInt(7)) 'Integer
  loc_1658106: LateIdCallSt
  loc_165810E: var_C0 = 7
  loc_1658117: var_E0 = &H5DC
  loc_1658123: LateIdCallSt
  loc_165812B: var_C0 = 0
  loc_1658134: var_E0 = 8
  loc_165813D: var_130 = "MARK"
  loc_1658146: LateIdCallSt
  loc_165814E: var_C0 = 8
  loc_1658157: var_E0 = 0
  loc_1658163: LateIdCallSt
  loc_165816D: Set var_370 = Nothing 
  loc_1658185: If (var_AC.RecordCount <= 0) Then
  loc_165818D:   global_60 = 0
  loc_1658190: End If
  loc_1658194: Set var_1F8 = Me.FGrid1
  loc_16581C4: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_16581C7:   var_C0 = vbNullString
  loc_16581D1:   Set var_1F8 = Me.FGrid1
  loc_16581E2: End If
  loc_1658219: var_C0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1658239: Me.FGrid1.Row = CVar(CLng(IIf(var_C0, FRow, 1)))
  loc_1658287: var_C0 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_16582A7: Me.FGrid1.Col = CVar(CLng(IIf(var_C0, Fcol, 1)))
  loc_16582C3: Set var_A8 = Nothing
  loc_16582CB: Set var_AC = Nothing
  loc_16582D0: IStAd
  loc_16582D4: Exit Sub
End Sub

Public Sub StockSumm(formName, FRow, Fcol) '152BE68
  'Data Table: 44CC18
  Dim var_12C As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_15C As Variant
  Dim var_1DC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_CC As Variant
  Dim var_1F4 As Variant
  Dim var_17C As String
  Dim var_1CC As Variant
  Dim var_214 As Variant
  Dim var_224 As String
  Dim var_274 As Variant
  Dim var_A8 As Recordset15
  Dim var_8C As Double
  Dim var_9C As Double
  Dim var_94 As Double
  Dim var_2A4 As Recordset15
  Dim var_2A8 As Recordset15
  Dim var_A4 As Recordset15
  Dim var_2B4 As MSHFlexGrid
  loc_152AF14: var_12C = "WHERE S.VDate Between "
  loc_152AF2E: VarLateMemCallLdRfVar
  loc_152AF39: Proc_6_7_F26918(var_11C, Me.FGrid, 1)
  loc_152AF4A: var_15C = 0 & var_11C & " And " 
  loc_152AF63: VarLateMemCallLdRfVar
  loc_152AF6E: Proc_6_7_F26918(var_1CC, Me.FGrid, 1)
  loc_152AF93: var_BC = 1
  loc_152AFBC: If (Me.Check1.Value = 0) Then
  loc_152AFDF:   var_AC = CStr(CVar(CStr(1 & var_1CC) & " And S.Item In (") & Me.GridString1 & ") ")
  loc_152AFED: End If
  loc_152AFED: var_BC = 2
  loc_152AFF4: var_DC = 1
  loc_152B019: If (Me.FGrid.TextMatrix = "Room") Then
  loc_152B01C:   var_BC = 2
  loc_152B045:   If (Me.Check1.Value = 0) Then
  loc_152B06F:     var_AC = CStr(CVar(var_AC & " AND R.TYPE IN('RO')" & " And S.RoomNo In (") & Me.GridString2 & ") ")
  loc_152B080:   End If
  loc_152B083: Else
  loc_152B083:   var_BC = 2
  loc_152B09A:   var_DC = 0
  loc_152B0AC:   If (Me.Check1.Value = var_DC) Then
  loc_152B0C5:     var_BC = ") "
  loc_152B0CF:     var_AC = CStr(CVar(var_AC & " And S.RestCode In (") & Me.GridString2 & var_BC)
  loc_152B0DD:   End If
  loc_152B0DD: End If
  loc_152B0E3: Call 0.Method_arg_54 ("Stock Summary", var_BC, var_BC, var_DC)
  loc_152B0EB: var_BC = 0
  loc_152B128: var_11C = Me.FGrid
  loc_152B142: Set var_1F4 = 1(1 & CStr(var_11C.TextMatrix))
  loc_152B148: var_11C.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_152B168: var_BC = 1
  loc_152B191: If (Me.Check1.Value = 0) Then
  loc_152B1CB:   Set var_1F4 = Me.Text2
  loc_152B1D1:   Me.Text2.Text = CStr("ItemName : " & Left(Me.FormulaString1, &H73) & vbNullString)
  loc_152B1EA: Else
  loc_152B1F7:   Me.Text2.Text = "ItemName :   All"
  loc_152B1FF: End If
  loc_152B212: var_FC = Me.FGrid
  loc_152B22C: Set var_1F4 = 2(1 & CStr(var_FC.TextMatrix))
  loc_152B232: var_FC.TextBox.Text = "For Type :"
  loc_152B248: var_BC = 2
  loc_152B24F: var_DC = 1
  loc_152B274: If (Me.FGrid.TextMatrix = "Room") Then
  loc_152B277:   var_BC = 2
  loc_152B2A0:   If (Me.Check1.Value = 0) Then
  loc_152B2DA:     Set var_1F4 = Me.Text4
  loc_152B2E0:     Me.Text4.Text = CStr("RoomNo : " & Left(Me.FormulaString2, &H73) & vbNullString)
  loc_152B2F9:   Else
  loc_152B306:     Me.Text4.Text = "RoomNo :   All"
  loc_152B30E:   End If
  loc_152B311: Else
  loc_152B311:   var_BC = 2
  loc_152B328:   var_DC = 0
  loc_152B33A:   If (Me.Check1.Value = var_DC) Then
  loc_152B340:     var_FC = Me.FormulaString2
  loc_152B347:     var_BC = "Department :   "
  loc_152B35F:     var_11C = var_BC & Left(var_FC, &H73) 
  loc_152B374:     Set var_1F4 = Me.Text4
  loc_152B37A:     Me.Text4.Text = CStr(var_11C & vbNullString)
  loc_152B393:   Else
  loc_152B39A:     Set var_1F4 = Me.Text4
  loc_152B3A0:     var_1F4.Text = "Department :     All"
  loc_152B3A8:   End If
  loc_152B3A8: End If
  loc_152B3B5: Call Proc_46_19_FA491C(New, var_1F4, var_FC, var_BC, var_FC, var_BC, var_DC)
  loc_152B3BD: Set var_A4 = var_1F4
  loc_152B3C0: var_BC = 2
  loc_152B3C7: var_DC = 1
  loc_152B3EC: If (Me.FGrid.TextMatrix = "Room") Then
  loc_152B3FC:   var_12C = "SELECT MAX(I.NAME) AS ItemName,(SUM(S.QTYRec)-SUM(S.QTYIss)) as Opbal,0 AS RECDQTY,0 AS ISSQTY FROM ((STOCK S LEFT JOIN Itemmast I ON I.CODE=S.Item And I.ItemType='Store')Left Join ROOMMAST R On S.RoomNo=R.Code)LEFT JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE where V.nCAT in('HKISS','HKIR','HKROP') and S.VDATE <"
  loc_152B401:   var_BC = 0
  loc_152B408:   var_DC = 1
  loc_152B416:   VarLateMemCallLdRfVar
  loc_152B421:   Proc_6_7_F26918(var_11C, Me.FGrid, var_DC, var_BC, "Room", var_214, -1, var_1F4)
  loc_152B43F:   var_17C = "SELECT max(I.NAME) AS ItemName,0 as Opbal,RECDQTY=CASE max(V.nCAT) WHEN 'HKISS' THEN Sum(S.QTYIss) ELSE 0 END,ISSQTY=CASE max(V.NCAT) WHEN 'HKIR' THEN Sum(S.QTYRec) ELSE 0 END FROM (((STOCK S LEFT JOIN ItemMast I on I.Code=S.Item And I.ItemType='Store')LEFT JOIN RoomMast R ON R.Code=S.RoomNo)LEFT JOIN VOUCHER_TYPE V ON V.V_TYPE=S.VTYPE)"
  loc_152B457:   var_1DC = var_DC & var_11C & " GROUP BY S.Item " & "Union " & var_17C & CVar(var_AC) & " AND S.VTYPE IN(SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT IN('HKISS','HKIR')) GROUP BY S.Item Order By ItemName" 
  loc_152B465:   Me.Connection15.Execute CStr(var_1DC), var_BC, var_BC
  loc_152B470:   Set var_A8 = var_1F4
  loc_152B493: Else
  loc_152B4A0:   var_12C = "SELECT max(I.NAME) AS ItemName,(SUM(S.QTYRec)-SUM(S.QTYIss)) as Opbal,0 AS RECDQTY,0 AS ISSQTY FROM ((STOCK S LEFT JOIN Itemmast I ON I.CODE=S.Item And I.ItemType='Store')LEFT JOIN Depart D ON D.Code=S.RestCode)LEFT JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE where V.NCAT in('HKISS','HKIR','HKOP','RQI') and S.VDATE <"
  loc_152B4A5:   var_BC = 0
  loc_152B4B5:   var_FC = Me.FGrid
  loc_152B4BA:   VarLateMemCallLdRfVar
  loc_152B4C5:   Proc_6_7_F26918(var_11C, var_FC, 1, var_BC, "Room", var_294, -1)
  loc_152B4E3:   var_17C = "SELECT max(I.NAME) AS ItemName,0 as Opbal,RECDQTY = CASE max(V.NCAT) WHEN 'HKIR' THEN Sum(S.QTYRec) ELSE 0 END,ISSQTY=CASE MAX(V.NCAT) WHEN 'HKISS' THEN Sum(S.QTYIss) ELSE 0 END FROM (((STOCK S LEFT JOIN ItemMast I on I.Code=S.Item And I.ItemType='Store')LEFT JOIN Depart D ON D.Code=S.RestCode)LEFT JOIN VOUCHER_TYPE V ON V.V_TYPE=S.VTYPE)"
  loc_152B4FB:   var_1DC = var_1F4 & var_11C & " GROUP BY S.Item " & "Union " & var_17C & CVar(var_AC) & " AND S.VTYPE IN(SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT IN('HKISS','HKIR')) GROUP BY S.Item " 
  loc_152B508:   var_224 = "SELECT max(I.NAME) AS ItemName,0 as Opbal,RECDQTY = CASE MAX(V.NCAT) WHEN 'RQI' THEN Sum(S.QTYIss) ELSE 0 END,ISSQTY=0 FROM (((STOCK S LEFT JOIN ItemMast I on I.Code=S.Item And I.ItemType='Store')LEFT JOIN Depart D ON D.Code=S.RestCode)LEFT JOIN VOUCHER_TYPE V ON V.V_TYPE=S.VTYPE)"
  loc_152B520:   var_274 = var_1DC & "Union " & var_224 & CVar(var_AC) & " AND S.VTYPE IN(SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT IN('RQI')) GROUP BY S.Item Order By ItemName" 
  loc_152B52E:   Me.Connection15.Execute CStr(var_274), var_FC, var_BC
  loc_152B539:   Set var_A8 = var_1F4
  loc_152B561: End If
  loc_152B564: var_A0 = vbNullString
  loc_152B57B: If (var_A8.RecordCount > 0) Then
  loc_152B581:   var_A8.MoveFirst
  loc_152B586:   ' Referenced from: 152B92A
  loc_152B595:   If Not(var_A8.EOF) Then
  loc_152B5D5:     If CBool(CVar(var_A0) <> var_A8.Fields.Item("ItemName").Value) Then
  loc_152B603:       var_A0 = CStr(var_A8.Fields.Item("ItemName").Value)
  loc_152B613:       var_8C = CDbl(0)
  loc_152B619:       var_9C = CDbl(0)
  loc_152B61F:       var_94 = CDbl(0)
  loc_152B622:     End If
  loc_152B653:     var_10C = (CVar(var_8C) + var_A8.Fields.Item("OpBal").Value)
  loc_152B658:     var_8C = CSng(Me.FGrid.TextMatrix)
  loc_152B69A:     var_10C = (CVar(var_94) + var_A8.Fields.Item("RecdQty").Value)
  loc_152B69F:     var_94 = CSng(Me.FGrid.TextMatrix)
  loc_152B6E1:     var_10C = (CVar(var_9C) + var_A8.Fields.Item("IssQty").Value)
  loc_152B6E6:     var_9C = CSng(Me.FGrid.TextMatrix)
  loc_152B6FA:     var_A8.MoveNext
  loc_152B710:     If (var_A8.EOF = &HFF) Then
  loc_152B713:       GoTo loc_152B756
  loc_152B716:     End If
  loc_152B719:     var_CC = CVar(var_A0) 'String
  loc_152B723:     var_BC = "ItemName"
  loc_152B73F:     var_FC = var_A8.Fields.Item(var_BC).Value
  loc_152B753:     If CBool(var_CC <> var_FC) Then
  loc_152B756:       ' Referenced from: 152B713
  loc_152B759:       Set var_2A4 = var_A4 
  loc_152B768:       var_2A4.AddNew var_BC, var_CC
  loc_152B792:       var_2A4.Fields.Item("MLine").Value = vbNullString
  loc_152B7C4:       var_2A4.Fields.Item("ITEMNAME").Value = CVar(var_A0)
  loc_152B7DB:       Proc_6_51_EF4580(var_FC, var_8C, var_9C, var_94, var_8C, var_94)
  loc_152B803:       var_2A4.Fields.Item("OpBal").Value = var_FC
  loc_152B81D:       Proc_6_51_EF4580(var_FC, var_94, var_9C, var_8C)
  loc_152B845:       var_2A4.Fields.Item("RECDQTY").Value = var_FC
  loc_152B85F:       Proc_6_51_EF4580(var_FC, var_9C, var_9C)
  loc_152B887:       var_2A4.Fields.Item("ISSQTY").Value = var_FC
  loc_152B8A1:       var_FC = CVar(((var_8C + var_94) - var_9C)) 'Double
  loc_152B8A8:       Proc_6_51_EF4580(Me.FGrid.TextMatrix, var_FC)
  loc_152B8D0:       var_2A4.Fields.Item("BALANCE").Value = Me.FGrid.TextMatrix
  loc_152B8E3:       var_CC = "*"
  loc_152B8EC:       var_BC = "Mark"
  loc_152B908:       var_2A4.Fields.Item(var_BC).Value = var_CC
  loc_152B91F:       var_2A4.Update var_BC, var_CC
  loc_152B926:       Set var_2A4 = Nothing 
  loc_152B92A:     End If
  loc_152B92A:     GoTo loc_152B586
  loc_152B92D:   End If
  loc_152B930:   Set var_2A8 = var_A4 
  loc_152B93F:   var_2A8.AddNew var_BC, var_CC
  loc_152B969:   var_2A8.Fields.Item("mLine").Value = "RF"
  loc_152B975:   var_CC = vbNullString
  loc_152B97E:   var_BC = "Mark"
  loc_152B99A:   var_2A8.Fields.Item(var_BC).Value = var_CC
  loc_152B9B1:   var_2A8.Update var_BC, var_CC
  loc_152B9B8:   Set var_2A8 = Nothing 
  loc_152B9BC: End If
  loc_152B9D0: If (var_A4.RecordCount > 0) Then
  loc_152B9D9:   CVarUnk
  loc_152B9DE:   VerifyVarObj
  loc_152B9E4:   Set var_1F4 = Me.FGrid1
  loc_152B9EA:   LateIdStAd
  loc_152BA1A:   Proc_96_13_FAD8C4(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_152BA25: End If
  loc_152BA29: Set var_2B4 = Me.FGrid1
  loc_152BA35: var_2B4.Tag = "StockSummary"
  loc_152BA46: var_2B4.Cols = 7
  loc_152BA4B: var_BC = 0
  loc_152BA54: var_DC = 0
  loc_152BA5D: var_12C = "mLine"
  loc_152BA66: LateIdCallSt
  loc_152BA6E: var_BC = 0
  loc_152BA77: var_DC = 0
  loc_152BA83: LateIdCallSt
  loc_152BA8B: var_BC = 0
  loc_152BA94: var_DC = 1
  loc_152BA9D: var_12C = "ITEM NAME"
  loc_152BAA6: LateIdCallSt
  loc_152BAAE: var_BC = 1
  loc_152BAB7: var_DC = &H7D0
  loc_152BAC3: LateIdCallSt
  loc_152BACB: var_BC = 0
  loc_152BAD4: var_DC = 2
  loc_152BADD: var_12C = "OP. BALANCE"
  loc_152BAE6: LateIdCallSt
  loc_152BAEE: var_BC = 2
  loc_152BAFD: var_DC = CVar(CInt(7)) 'Integer
  loc_152BB04: LateIdCallSt
  loc_152BB0C: var_BC = 2
  loc_152BB1B: var_DC = CVar(CInt(7)) 'Integer
  loc_152BB22: LateIdCallSt
  loc_152BB2A: var_BC = 2
  loc_152BB33: var_DC = &H5DC
  loc_152BB3F: LateIdCallSt
  loc_152BB47: var_BC = 0
  loc_152BB50: var_DC = 3
  loc_152BB59: var_12C = "RECD.QTY"
  loc_152BB62: LateIdCallSt
  loc_152BB6A: var_BC = 3
  loc_152BB79: var_DC = CVar(CInt(7)) 'Integer
  loc_152BB80: LateIdCallSt
  loc_152BB88: var_BC = 3
  loc_152BB97: var_DC = CVar(CInt(7)) 'Integer
  loc_152BB9E: LateIdCallSt
  loc_152BBA6: var_BC = 3
  loc_152BBAF: var_DC = &H5DC
  loc_152BBBB: LateIdCallSt
  loc_152BBC3: var_BC = 0
  loc_152BBCC: var_DC = 4
  loc_152BBD5: var_12C = "ISS.QTY"
  loc_152BBDE: LateIdCallSt
  loc_152BBE6: var_BC = 4
  loc_152BBF5: var_DC = CVar(CInt(7)) 'Integer
  loc_152BBFC: LateIdCallSt
  loc_152BC04: var_BC = 4
  loc_152BC13: var_DC = CVar(CInt(7)) 'Integer
  loc_152BC1A: LateIdCallSt
  loc_152BC22: var_BC = 4
  loc_152BC2B: var_DC = &H5DC
  loc_152BC37: LateIdCallSt
  loc_152BC3F: var_BC = 0
  loc_152BC48: var_DC = 5
  loc_152BC51: var_12C = "BALANCE"
  loc_152BC5A: LateIdCallSt
  loc_152BC62: var_BC = 5
  loc_152BC71: var_DC = CVar(CInt(7)) 'Integer
  loc_152BC78: LateIdCallSt
  loc_152BC80: var_BC = 5
  loc_152BC8F: var_DC = CVar(CInt(7)) 'Integer
  loc_152BC96: LateIdCallSt
  loc_152BC9E: var_BC = 5
  loc_152BCA7: var_DC = &H5DC
  loc_152BCB3: LateIdCallSt
  loc_152BCBB: var_BC = 0
  loc_152BCC4: var_DC = 6
  loc_152BCCD: var_12C = "MARK"
  loc_152BCD6: LateIdCallSt
  loc_152BCDE: var_BC = 6
  loc_152BCE7: var_DC = 0
  loc_152BCF3: LateIdCallSt
  loc_152BCFD: Set var_2B4 = Nothing 
  loc_152BD15: If (var_A8.RecordCount <= 0) Then
  loc_152BD1D:   global_60 = 0
  loc_152BD20: End If
  loc_152BD24: Set var_1F4 = Me.FGrid1
  loc_152BD54: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_152BD57:   var_BC = vbNullString
  loc_152BD61:   Set var_1F4 = Me.FGrid1
  loc_152BD72: End If
  loc_152BDA9: var_BC = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_152BDC9: Me.FGrid1.Row = CVar(CLng(IIf(var_BC, FRow, 1)))
  loc_152BE17: var_BC = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_152BE37: Me.FGrid1.Col = CVar(CLng(IIf(var_BC, Fcol, 1)))
  loc_152BE53: Set var_A4 = Nothing
  loc_152BE5B: Set var_A8 = Nothing
  loc_152BE60: IStAd
  loc_152BE64: Exit Sub
End Sub

Public Sub Proc_46_15_FBE38C(arg_C) 'FBE38C
  'Data Table: 44CC18
  Dim var_8C As Recordset15
  loc_FBE1D9: Set var_8C = arg_C 
  loc_FBE201: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FBE22D: var_8C.Fields.Append "SNo", &HC8, 8
  loc_FBE259: var_8C.Fields.Append "RoomNo", &HC8, 8
  loc_FBE285: var_8C.Fields.Append "Status", &HC8, &HD
  loc_FBE2B1: var_8C.Fields.Append "OccStatus", &HC8, &H19
  loc_FBE2DD: var_8C.Fields.Append "Remark", &HC8, &H1E
  loc_FBE309: var_8C.Fields.Append "MaidStation", &HC8, &H1E
  loc_FBE335: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FBE345: var_8C.CursorType = 3
  loc_FBE352: var_8C.LockType = 3
  loc_FBE371: var_8C.Open var_A0, var_B0, -1
  loc_FBE378: Set var_8C = Nothing 
  loc_FBE37F: Set var_88 = arg_C 
  loc_FBE383: Proc_46_15_FBE38C = -1
End Sub

Public Sub Proc_46_16_FBE580(arg_C) 'FBE580
  'Data Table: 44CC18
  Dim var_8C As Recordset15
  loc_FBE3CD: Set var_8C = arg_C 
  loc_FBE3F5: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FBE421: var_8C.Fields.Append "SNo", &HC8, 8
  loc_FBE44D: var_8C.Fields.Append "CDate", &HC8, &HB
  loc_FBE479: var_8C.Fields.Append "CTime", &HC8, 5
  loc_FBE4A5: var_8C.Fields.Append "Description", &HC8, &HFF
  loc_FBE4D1: var_8C.Fields.Append "Depart", &HC8, &H23
  loc_FBE4FD: var_8C.Fields.Append "UName", &HC8, &HF
  loc_FBE529: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FBE539: var_8C.CursorType = 3
  loc_FBE546: var_8C.LockType = 3
  loc_FBE565: var_8C.Open var_A0, var_B0, -1
  loc_FBE56C: Set var_8C = Nothing 
  loc_FBE573: Set var_88 = arg_C 
  loc_FBE577: Proc_46_16_FBE580 = -1
End Sub

Public Sub Proc_46_17_FA302C(arg_C) 'FA302C
  'Data Table: 44CC18
  Dim var_8C As Recordset15
  Dim var_6000 As Variant
  loc_FA2EA5: Set var_8C = arg_C 
  loc_FA2ECD: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FA2EF9: var_8C.Fields.Append "Date", &HC8, 8
  loc_FA2F25: var_8C.Fields.Append "VrNo", &HC8, 8
  loc_FA2F51: var_8C.Fields.Append "RoomNo", &HC8, &HA
  loc_FA2F7D: var_8C.Fields.Append "ItemName", &HC8, &H19
  loc_FA2FA9: var_8C.Fields.Append "Qty", &HC8, &HC
  loc_FA2FD5: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FA2FE5: var_8C.CursorType = 3
  loc_FA2FF2: var_8C.LockType = 3
  loc_FA3011: var_8C.Open var_A0, var_B0, -1
  loc_FA3018: Set var_8C = Nothing 
  loc_FA301F: Set var_88 = arg_C 
  loc_FA3023: Proc_46_17_FA302C = -1
  loc_FA3029: var_6000 = StrComp(var_A0, &H20, -1)
End Sub

Public Sub Proc_46_18_FE08D0(arg_C) 'FE08D0
  'Data Table: 44CC18
  Dim var_8C As Recordset15
  loc_FE06F1: Set var_8C = arg_C 
  loc_FE0719: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FE0745: var_8C.Fields.Append "Date", &HC8, &H19
  loc_FE0771: var_8C.Fields.Append "VrNo", &HC8, 8
  loc_FE079D: var_8C.Fields.Append "RoomNo", &HC8, &HA
  loc_FE07C9: var_8C.Fields.Append "Descrip", &HC8, &H23
  loc_FE07F5: var_8C.Fields.Append "RecdQty", &HC8, &HE
  loc_FE0821: var_8C.Fields.Append "IssQty", &HC8, &HE
  loc_FE084D: var_8C.Fields.Append "Balance", &HC8, &HE
  loc_FE0879: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FE0889: var_8C.CursorType = 3
  loc_FE0896: var_8C.LockType = 3
  loc_FE08B5: var_8C.Open var_A0, var_B0, -1
  loc_FE08BC: Set var_8C = Nothing 
  loc_FE08C3: Set var_88 = arg_C 
  loc_FE08C7: Proc_46_18_FE08D0 = -1
  loc_FE08CD: StAryRecMove
End Sub

Public Sub Proc_46_19_FA491C(arg_C) 'FA491C
  'Data Table: 44CC18
  Dim var_8C As Recordset15
  Dim var_6000 As Variant
  loc_FA4795: Set var_8C = arg_C 
  loc_FA47BD: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FA47E9: var_8C.Fields.Append "ItemName", &HC8, &H19
  loc_FA4815: var_8C.Fields.Append "OpBal", &HC8, &HE
  loc_FA4841: var_8C.Fields.Append "RecdQty", &HC8, &HE
  loc_FA486D: var_8C.Fields.Append "IssQty", &HC8, &HE
  loc_FA4899: var_8C.Fields.Append "Balance", &HC8, &HE
  loc_FA48C5: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FA48D5: var_8C.CursorType = 3
  loc_FA48E2: var_8C.LockType = 3
  loc_FA4901: var_8C.Open var_A0, var_B0, -1
  loc_FA4908: Set var_8C = Nothing 
  loc_FA490F: Set var_88 = arg_C 
  loc_FA4913: Proc_46_19_FA491C = -1
  loc_FA4919: var_6000 = StrComp(var_A0, &H20, -1)
End Sub
