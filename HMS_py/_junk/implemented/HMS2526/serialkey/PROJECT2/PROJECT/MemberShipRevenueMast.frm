VERSION 5.00
Begin VB.Form MemberShipRevenueMast
  Caption = "MemberShip Revenue Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 4455
    Width = 795
    Height = 285
    Text = "Active"
    TabIndex = 29
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 26
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 4140
    Width = 3630
    Height = 285
    TabIndex = 7
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
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 3825
    Width = 1410
    Height = 285
    TabIndex = 6
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
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 3510
    Width = 3630
    Height = 285
    TabIndex = 5
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 3195
    Width = 630
    Height = 285
    TabIndex = 4
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 2880
    Width = 630
    Height = 285
    TabIndex = 3
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 2250
    Width = 2670
    Height = 285
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 2565
    Width = 630
    Height = 285
    TabIndex = 2
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
    Left = 4275
    Top = 1935
    Width = 5295
    Height = 285
    TabIndex = 0
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
  Begin Frame FrmList
    Left = 14925
    Top = 5640
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 165
      Top = 195
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin DataGrid DGHelp
    Left = 13755
    Top = 2295
    Width = 5505
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin MSFlexGrid FGPoint
    Left = 13200
    Top = 6300
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 11
  End
  Begin DataGrid DGLedgerAc
    Left = 13620
    Top = 1485
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 23
  End
  Begin DataGrid DGTaxStru
    Left = 13515
    Top = 765
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin Label LbStatus
    Caption = "Status"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2325
    Top = 4440
    Width = 585
    Height = 240
    TabIndex = 30
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 645
    Top = 8415
    Width = 2520
    Height = 255
    TabIndex = 28
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
    Left = 630
    Top = 8745
    Width = 2430
    Height = 285
    TabIndex = 27
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
  Begin Label LblYN
    Caption = "(Detailed/Summerised)"
    Index = 3
    ForeColor = &HC0&
    Left = 5685
    Top = 3825
    Width = 2175
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
    Caption = "Tax Structure"
    Index = 6
    ForeColor = &HFF0000&
    Left = 2325
    Top = 4155
    Width = 1290
    Height = 240
    TabIndex = 22
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
    Caption = "Account Posting"
    Index = 5
    ForeColor = &HFF0000&
    Left = 2325
    Top = 3840
    Width = 1530
    Height = 240
    TabIndex = 21
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
    Index = 4
    ForeColor = &HFF0000&
    Left = 2325
    Top = 3525
    Width = 1380
    Height = 240
    TabIndex = 20
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
  Begin Label LblYN
    Caption = "Yes/No"
    Index = 2
    ForeColor = &HC0&
    Left = 4980
    Top = 3210
    Width = 645
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
    Caption = "Acount (A/C)"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2325
    Top = 3210
    Width = 1170
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
  Begin Label LblYN
    Caption = "Yes/No"
    Index = 1
    ForeColor = &HC0&
    Left = 4965
    Top = 2895
    Width = 645
    Height = 240
    TabIndex = 17
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
    Caption = "Subscription Charge"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2325
    Top = 2895
    Width = 1935
    Height = 240
    TabIndex = 16
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
    Caption = "Subscription Details"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2325
    Top = 2250
    Width = 1890
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
    Caption = "Refundable"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2325
    Top = 2565
    Width = 1095
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
  Begin Label LblName
    Caption = "Description"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2325
    Top = 1935
    Width = 1065
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
  Begin Label LblYN
    Caption = "Yes/No"
    Index = 0
    ForeColor = &HC0&
    Left = 4965
    Top = 2580
    Width = 645
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
End

Attribute VB_Name = "MemberShipRevenueMast"


Private Sub DGTaxStru_UnknownEvent_9 'F37874
  'Data Table: 49D8FC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3776B: Me.DGTaxStru.Visible = False
  loc_F3778A: If (Me.RecordCount > 0) Then
  loc_F377C9:   Set var_B4 = Me.Txt
  loc_F377CF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(7), var_B8)
  loc_F377D7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3780A:   var_B0 = Me.Fields.Item("Name")
  loc_F37829:   Set var_B4 = Me.Txt
  loc_F3782F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(7), var_B8)
  loc_F37837:   var_B8.Text = CStr(var_B0.Value)
  loc_F3784D: End If
  loc_F37858: Set var_A8 = Me.Txt
  loc_F3785E: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(7))
  loc_F37866: var_B0.SetFocus
  loc_F37872: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'E735A4
  'Data Table: 49D8FC
  loc_E73562: Proc_6_153_E91D24(Me.DGTaxStru, arg_14)
  loc_E73579: Set var_8C = Me.FGPoint
  loc_E73595: Proc_6_138_106E830(Me.DGTaxStru, global_68, CInt(7))
  loc_E735A3: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F11338
  'Data Table: 49D8FC
  Dim var_A4 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F11260: Set var_A4 = Me.ListView
  loc_F112AA: Set var_BC = Me.Txt
  loc_F112B0: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F112B8: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F112E4: Me.FrmList.Visible = False
  loc_F11314: Set var_9C = Me.Txt
  loc_F1131A: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A4)
  loc_F11322: var_A4.SetFocus
  loc_F11336: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1233D04
  'Data Table: 49D8FC
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_AC As String
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  loc_1233802: Set var_88 = Me.Txt
  loc_1233808: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1233816: Proc_6_74_E23240(var_8C)
  loc_1233822: Call Proc_266_35_F22800(var_8C)
  loc_1233827: On Error Goto loc_1233CC0
  loc_123382D: var_92 = Index
  loc_1233838: If (var_92 = CInt(0)) Then
  loc_1233852:   If (Me.RecordCount > 0) Then
  loc_1233860:     Set var_8C = Me.FGPoint
  loc_1233878:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_1233886:   End If
  loc_1233889: Else
  loc_1233891:   If (var_92 = CInt(1)) Then
  loc_12338A1:     ReDim var_9C(0 To 1)
  loc_12338B8:     var_9C(0) = "Once"
  loc_12338C7:     var_9C(1) = "Recurring"
  loc_12338E9:     Set var_D4 = Me.ListView
  loc_1233904:     Set var_8C = Me.Txt
  loc_123391E:     Set global_92 = Proc_6_66_F0048C(var_D4, var_8C, Index, Array(var_9C))
  loc_123393C:     Set var_88 = Me.Txt
  loc_1233942:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, 2)
  loc_123394A:     global_76 = var_8C.Text
  loc_123395C:     Set var_90 = Me.Txt
  loc_1233962:     Call 0.Method_Txt_GotFocus0 (Index, var_D4, var_DC)
  loc_123396A:     var_D4.Tag = var_8C
  loc_1233980:   Else
  loc_1233988:     If (var_92 = CInt(5)) Then
  loc_12339A2:       If (Me.RecordCount > 0) Then
  loc_12339B0:         Set var_8C = Me.FGPoint
  loc_12339C8:         Proc_6_137_1192FDC(Me.DGLedgerAc, global_64, Index)
  loc_12339D6:       End If
  loc_1233A24:       Set var_88 = Me.Txt
  loc_1233A2A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_1233A32:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1233A4A:       If (var_8C Or (var_DC = vbNullString)) Then
  loc_1233A4D:         Exit Sub
  loc_1233A4E:       End If
  loc_1233A5B:       Set var_88 = Me.Txt
  loc_1233A61:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1233A69:       var_DC = var_8C.Text
  loc_1233A7B:       var_AC = "Name"
  loc_1233AB6:       If CBool(CVar(var_DC) <> Me.Fields.Item(var_AC).Value) Then
  loc_1233ABF:         Me.MoveFirst
  loc_1233AE2:         Set var_88 = Me.Txt
  loc_1233AE8:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, "Name ='")
  loc_1233AF0:         0 = var_8C.Text
  loc_1233B09:         Me.Find 1 & var_DC & "'", var_AC, var_92
  loc_1233B1E:       End If
  loc_1233B21:     Else
  loc_1233B29:       If (var_92 = CInt(7)) Then
  loc_1233B43:         If (Me.RecordCount > 0) Then
  loc_1233B51:           Set var_8C = Me.FGPoint
  loc_1233B69:           Proc_6_137_1192FDC(Me.DGTaxStru, global_68)
  loc_1233B77:         End If
  loc_1233BC5:         Set var_88 = Me.Txt
  loc_1233BCB:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_1233BD3:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1233BEB:         If (Index Or (var_DC = vbNullString)) Then
  loc_1233BEE:           Exit Sub
  loc_1233BEF:         End If
  loc_1233BFC:         Set var_88 = Me.Txt
  loc_1233C02:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1233C0A:         var_DC = var_8C.Text
  loc_1233C1C:         var_AC = "Name"
  loc_1233C57:         If CBool(CVar(var_DC) <> Me.Fields.Item(var_AC).Value) Then
  loc_1233C60:           Me.MoveFirst
  loc_1233C83:           Set var_88 = Me.Txt
  loc_1233C89:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, "Name ='")
  loc_1233C91:           0 = var_8C.Text
  loc_1233CAA:           Me.Find 1 & var_DC & "'", var_AC, var_8C
  loc_1233CBF:         End If
  loc_1233CBF:       End If
  loc_1233CBF:     End If
  loc_1233CBF:   End If
  loc_1233CBF: End If
  loc_1233CBF: Exit Sub
  loc_1233CC0: ' Referenced from: 1233827
  loc_1233CC8: Set var_88 = Err()
  loc_1233CCE: Call 0.Method_arg_2C (var_DC)
  loc_1233CEF: MsgBox(CVar(var_DC), &H40, "Information", var_100, var_128)
  loc_1233D02: Exit Sub
  loc_1233D03: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12C7D64
  'Data Table: 49D8FC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim var_BC As TextBox
  Dim var_90 As DataGrid
  Dim var_9C As DataGrid
  Dim var_110 As Variant
  loc_12C7726: If (CLng(Shift) = &H1B) Then
  loc_12C7729:   Call Proc_266_35_F22800()
  loc_12C772E:   Exit Sub
  loc_12C772F: End If
  loc_12C7732: var_86 = KeyCode
  loc_12C773D: If (var_86 = CInt(0)) Then
  loc_12C7757:   If (Me.RecordCount > 0) Then
  loc_12C775E:     Set var_A4 = Me.DGHelp
  loc_12C776C:     Set var_AC = Me.FGPoint
  loc_12C7777:     Set var_9C = var_AC
  loc_12C77A5:     Proc_6_79_11AD564(var_A4, Me.Txt, KeyCode, global_56, Shift)
  loc_12C77B9:   End If
  loc_12C77C2:   var_8C = Me.RecordCount
  loc_12C7812:   If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12C7820:     Set var_94 = Me.FGPoint
  loc_12C7838:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, var_94, 0)
  loc_12C7846:   End If
  loc_12C7849: Else
  loc_12C7851:   If (var_86 = CInt(1)) Then
  loc_12C7876:     Set var_90 = Me.Txt
  loc_12C787C:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, 1)
  loc_12C7884:     var_9C = var_94.Left
  loc_12C7896:     Set var_9C = Me.Txt
  loc_12C789C:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_12C78A4:     0 = var_A4.Top
  loc_12C78B6:     Set var_A8 = Me.Txt
  loc_12C78BC:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_12C78C4:     var_B4 = var_AC.Height
  loc_12C78D6:     Set var_B8 = Me.Txt
  loc_12C78DC:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_12C78E4:     var_C0 = var_BC.Width
  loc_12C792C:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12C7953:   Else
  loc_12C795B:     If (var_86 = CInt(4)) Then
  loc_12C796B:       Set var_90 = Me.Txt
  loc_12C7971:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_E0, CInt(var_8C))
  loc_12C7979:       CInt((var_B0 + var_B4)) = var_94.Text
  loc_12C7990:       If (var_E0 = "Yes") Then
  loc_12C79A0:         Set var_90 = Me.Txt
  loc_12C79A6:         Call 0.Method_Txt_KeyDown0 (CInt(5), var_94, &HFF)
  loc_12C79AE:         var_94.Enabled = CInt(var_C0)
  loc_12C79C7:         Set var_90 = Me.Txt
  loc_12C79CD:         Call 0.Method_Txt_KeyDown0 (CInt(6), var_94, &HFF)
  loc_12C79D5:         var_94.Enabled = True
  loc_12C79E4:       Else
  loc_12C79F1:         Set var_90 = Me.Txt
  loc_12C79F7:         Call 0.Method_Txt_KeyDown0 (CInt(5), var_94)
  loc_12C79FF:         var_94.Enabled = False
  loc_12C7A18:         Set var_90 = Me.Txt
  loc_12C7A1E:         Call 0.Method_Txt_KeyDown0 (CInt(6), var_94)
  loc_12C7A26:         var_94.Enabled = False
  loc_12C7A32:       End If
  loc_12C7A35:     Else
  loc_12C7A3D:       If (var_86 = CInt(5)) Then
  loc_12C7A5D:         Set var_A4 = Me.FGPoint
  loc_12C7A68:         Set var_9C = Nothing
  loc_12C7A9A:         Proc_6_69_134A630(Me.DGLedgerAc, Me.Txt, CInt(5), global_64, Shift, 0)
  loc_12C7B09:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12C7B2F:           Proc_6_138_106E830(Me.DGLedgerAc, global_64, KeyCode, Me.FGPoint, 1)
  loc_12C7B3D:         End If
  loc_12C7B40:       Else
  loc_12C7B48:         If (var_86 = CInt(7)) Then
  loc_12C7B73:           Set var_9C = Nothing
  loc_12C7BA5:           Proc_6_69_134A630(Me.DGTaxStru, Me.Txt, CInt(7), global_68, Shift, 0, 1)
  loc_12C7C14:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12C7C1B:             Set var_9C = Me.DGTaxStru
  loc_12C7C3A:             Proc_6_138_106E830(var_9C, global_68, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_12C7C48:           End If
  loc_12C7C48:         End If
  loc_12C7C48:       End If
  loc_12C7C48:     End If
  loc_12C7C48:   End If
  loc_12C7C48: End If
  loc_12C7C79: Set var_9C = Me.DGTaxStru
  loc_12C7C7F: var_110 = var_9C.Visible
  loc_12C7C93: Set var_A4 = Me.FrmList
  loc_12C7CB9: If ((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGLedgerAc.Visible) = 0)) And (CBool(var_110) = 0)) And (var_A4.Visible = 0)) Then
  loc_12C7CDA:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_12C7D14:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_160) = 6) Then
  loc_12C7D17:       Call TopCtrl1_UnknownEvent_16()
  loc_12C7D1C:     End If
  loc_12C7D1C:     Exit Sub
  loc_12C7D1D:   End If
  loc_12C7D32:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12C7D3B:     Proc_6_75_E5335C(Shift, arg_14, 0, var_9C)
  loc_12C7D40:   End If
  loc_12C7D53:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_12C7D5C:     Proc_6_76_E533C8(Shift, arg_14, var_A4)
  loc_12C7D61:   End If
  loc_12C7D61: End If
  loc_12C7D61: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '105A9FC
  'Data Table: 49D8FC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  loc_105A786: Proc_6_133_E7FB08(var_94)
  loc_105A78F: arg_10 = CInt(var_94)
  loc_105A798: Proc_6_58_E06050(arg_10, arg_10)
  loc_105A7A0: var_96 = KeyAscii
  loc_105A7AB: If Not (var_96 = CInt(2)) Then
  loc_105A7B6:   If Not (var_96 = CInt(3)) Then
  loc_105A7C1:     If (var_96 = CInt(4)) Then
  loc_105A7C4:     End If
  loc_105A7C4:   End If
  loc_105A7ED:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_105A7FD:     Set var_CC = Me.Txt
  loc_105A803:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_105A80B:     var_D0.Text = var_96
  loc_105A81A:   Else
  loc_105A843:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_105A853:       Set var_CC = Me.Txt
  loc_105A859:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_105A861:       var_D0.Text = "No"
  loc_105A86D:     End If
  loc_105A86D:   End If
  loc_105A86F:   arg_10 = 0
  loc_105A875: Else
  loc_105A87D:   If (var_96 = CInt(1)) Then
  loc_105A882:     arg_10 = 0
  loc_105A888:   Else
  loc_105A890:     If (var_96 = CInt(6)) Then
  loc_105A8BC:       If (Ucase(Chr(CLng(arg_10))) = "D") Then
  loc_105A8CC:         Set var_CC = Me.Txt
  loc_105A8D2:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Detailed")
  loc_105A8DA:         var_D0.Text = arg_10
  loc_105A8E9:       Else
  loc_105A912:         If (Ucase(Chr(CLng(arg_10))) = "S") Then
  loc_105A922:           Set var_CC = Me.Txt
  loc_105A928:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Summerised")
  loc_105A930:           var_D0.Text = arg_10
  loc_105A93C:         End If
  loc_105A93C:       End If
  loc_105A93F:     Else
  loc_105A947:       If (var_96 = CInt(8)) Then
  loc_105A973:         If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_105A983:           Set var_CC = Me.Txt
  loc_105A989:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_105A991:           var_D0.Text = "Active"
  loc_105A9A0:         Else
  loc_105A9C9:           If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_105A9D9:             Set var_CC = Me.Txt
  loc_105A9DF:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_105A9E7:             var_D0.Text = "Non Active"
  loc_105A9F3:           End If
  loc_105A9F3:         End If
  loc_105A9F5:         arg_10 = 0
  loc_105A9F8:       End If
  loc_105A9F8:     End If
  loc_105A9F8:   End If
  loc_105A9F8: End If
  loc_105A9F8: Exit Sub
  loc_105A9F9: arg_10 = arg_10
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1021DF0
  'Data Table: 49D8FC
  Dim var_86 As Integer
  loc_1021BC7: var_86 = KeyCode
  loc_1021BD2: If (var_86 = CInt(0)) Then
  loc_1021BF1:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_1021BFE:     var_A0 = "Name"
  loc_1021C19:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_56)
  loc_1021C4B:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_1021C59:   End If
  loc_1021C5C: Else
  loc_1021C64:   If (var_86 = CInt(1)) Then
  loc_1021C82:     If (Me.FrmList.Visible = &HFF) Then
  loc_1021CB1:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_1021CC1:     End If
  loc_1021CC4:   Else
  loc_1021CCC:     If (var_86 = CInt(5)) Then
  loc_1021CEB:       If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_1021D18:         Proc_6_89_1470B00(Me.Txt, KeyCode, global_64, Shift, "Name")
  loc_1021D4A:         Proc_6_138_106E830(Me.DGLedgerAc, global_64, KeyCode, Me.FGPoint, 0)
  loc_1021D58:       End If
  loc_1021D5B:     Else
  loc_1021D63:       If (var_86 = CInt(7)) Then
  loc_1021D82:         If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_1021DAF:           Proc_6_89_1470B00(Me.Txt, KeyCode, global_68, Shift, "Name")
  loc_1021DE1:           Proc_6_138_106E830(Me.DGTaxStru, global_68, KeyCode, Me.FGPoint, 0)
  loc_1021DEF:         End If
  loc_1021DEF:       End If
  loc_1021DEF:     End If
  loc_1021DEF:   End If
  loc_1021DEF: End If
  loc_1021DEF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C6FC
  'Data Table: 49D8FC
  loc_E4C6DA: Set var_88 = Me.Txt
  loc_E4C6E0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C6EE: Proc_6_73_E23294(var_8C)
  loc_E4C6FA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11CA1DC
  'Data Table: 49D8FC
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_AC As TextBox
  Dim Me As Recordset15
  Dim var_94 As String
  loc_11C9D78: On Error Goto loc_11CA197
  loc_11C9D7E: var_86 = Cancel
  loc_11C9D89: If (var_86 = CInt(0)) Then
  loc_11C9D8F:   Call Proc_266_34_108BF18(var_88)
  loc_11C9D9A:   If (var_88 = &HFF) Then
  loc_11C9D9F:     arg_10 = &HFF
  loc_11C9DA2:     Exit Sub
  loc_11C9DA3:   End If
  loc_11C9DA6: Else
  loc_11C9DAE:   If (var_86 = CInt(1)) Then
  loc_11C9DBE:     Set var_8C = Me.Txt
  loc_11C9DC4:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_11C9DCC:     arg_10 = var_90.Text
  loc_11C9DE3:     If (var_94 <> vbNullString) Then
  loc_11C9DFE:       Set var_90 = Me.ListView.SelectedItem
  loc_11C9E04:       var_94 = var_90.Text
  loc_11C9E16:       Set var_A8 = Me.Txt
  loc_11C9E1C:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_11C9E24:       var_AC.Text = var_94
  loc_11C9E3A:     End If
  loc_11C9E3D:   Else
  loc_11C9E45:     If (var_86 = CInt(5)) Then
  loc_11C9E96:       Set var_8C = Me.Txt
  loc_11C9E9C:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_11C9EA4:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_11C9EBC:       If (var_86 Or (var_94 = vbNullString)) Then
  loc_11C9EBF:         Exit Sub
  loc_11C9EC0:       End If
  loc_11C9EFB:       Set var_A8 = Me.Txt
  loc_11C9F01:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_11C9F09:       var_AC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11C9F3C:       var_90 = Me.Fields.Item("Code")
  loc_11C9F5A:       Set var_A8 = Me.Txt
  loc_11C9F60:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_11C9F68:       var_AC.Tag = CStr(var_90.Value)
  loc_11C9F81:     Else
  loc_11C9F89:       If (var_86 = CInt(7)) Then
  loc_11C9FDA:         Set var_8C = Me.Txt
  loc_11C9FE0:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11CA000:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_11CA010:           Set var_8C = Me.Txt
  loc_11CA016:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11CA01E:           var_90.Tag = vbNullString
  loc_11CA02A:           Exit Sub
  loc_11CA02B:         End If
  loc_11CA066:         Set var_A8 = Me.Txt
  loc_11CA06C:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_11CA074:         var_AC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11CA0A7:         var_90 = Me.Fields.Item("Code")
  loc_11CA0B8:         var_94 = CStr(var_90.Value)
  loc_11CA0C5:         Set var_A8 = Me.Txt
  loc_11CA0CB:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_11CA0D3:         var_AC.Tag = var_94
  loc_11CA0EC:       Else
  loc_11CA0F4:         If (var_86 = CInt(8)) Then
  loc_11CA101:           Set var_8C = Me.Txt
  loc_11CA107:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_11CA126:           var_E4 = Ucase(Left(CVar(var_90), 0))
  loc_11CA142:           If (var_E4 = "Active") Then
  loc_11CA152:             Set var_8C = Me.Txt
  loc_11CA158:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11CA160:             var_90.Text = "Active"
  loc_11CA16F:           Else
  loc_11CA17C:             Set var_8C = Me.Txt
  loc_11CA182:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11CA18A:             var_90.Text = "Non Active"
  loc_11CA196:           End If
  loc_11CA196:         End If
  loc_11CA196:       End If
  loc_11CA196:     End If
  loc_11CA196:   End If
  loc_11CA196: End If
  loc_11CA196: Exit Sub
  loc_11CA197: ' Referenced from: 11C9D78
  loc_11CA19F: Set var_8C = Err()
  loc_11CA1A5: Call 0.Method_arg_2C (var_94)
  loc_11CA1C6: MsgBox(CVar(var_94), &H40, "Information", var_E4, var_F4)
  loc_11CA1D9: Exit Sub
  loc_11CA1DA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F36114
  'Data Table: 49D8FC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3600B: Me.DGHelp.Visible = False
  loc_F3602A: If (Me.RecordCount > 0) Then
  loc_F36069:   Set var_B4 = Me.Txt
  loc_F3606F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F36077:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F360AA:   var_B0 = Me.Fields.Item("Name")
  loc_F360C9:   Set var_B4 = Me.Txt
  loc_F360CF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F360D7:   var_B8.Text = CStr(var_B0.Value)
  loc_F360ED: End If
  loc_F360F8: Set var_A8 = Me.Txt
  loc_F360FE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F36106: var_B0.SetFocus
  loc_F36112: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E739B0
  'Data Table: 49D8FC
  loc_E7396E: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E73985: Set var_8C = Me.FGPoint
  loc_E739A1: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E739AF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFE694
  'Data Table: 49D8FC
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFE5C8: On Error Goto loc_EFE64E
  loc_EFE5CB: Call Proc_266_32_E9C3A8()
  loc_EFE5DD: Me.LblUser.Caption = vbNullString
  loc_EFE5F2: Me.LblLDt.Caption = vbNullString
  loc_EFE60F: var_8C = "ADD"
  loc_EFE61D: Call Proc_266_31_E7954C(Proc_5_1_100EC1C(var_8C, Me))
  loc_EFE633: Set var_88 = Me.Txt
  loc_EFE639: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFE641: var_94.SetFocus
  loc_EFE64D: Exit Sub
  loc_EFE64E: ' Referenced from: EFE5C8
  loc_EFE656: Set var_88 = Err()
  loc_EFE65C: Call 0.Method_arg_2C (var_8C)
  loc_EFE67D: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFE690: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBE608
  'Data Table: 49D8FC
  loc_EBE574: On Error Goto loc_EBE5FF
  loc_EBE5AE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBE5BD:   Set var_110 = Me
  loc_EBE5D4:   Call Proc_266_31_E7954C(Proc_5_1_100EC1C("INI", var_110))
  loc_EBE5DF:   Call Proc_266_33_134AE54(global_52)
  loc_EBE5E7: Else
  loc_EBE5ED:   Call 0.Method_arg_1E8 (var_110)
  loc_EBE5F5:   Call var_110.SetFocus
  loc_EBE5FE: End If
  loc_EBE5FE: Exit Sub
  loc_EBE5FF: ' Referenced from: EBE574
  loc_EBE5FF: Proc_6_60_E63754()
  loc_EBE604: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10EA220
  'Data Table: 49D8FC
  Dim var_96 As Integer
  Dim unk_49D910 As Connection15
  Dim Me As Recordset15
  Dim var_124 As Fields15
  Dim var_FC As Variant
  Dim var_12C As String
  loc_10E9F38: On Error Goto loc_10EA1C9
  loc_10E9F49: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_10E9F4C:   Exit Sub
  loc_10E9F4D: End If
  loc_10E9F84: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_10E9F89:   var_96 = 0
  loc_10E9F95:   unk_49D910.BeginTrans var_120
  loc_10E9F9C:   var_96 = &HFF
  loc_10E9FB0:   var_94 = Me.Bookmark 'Variant
  loc_10E9FFC:   var_FC = "Delete From MembershipRevMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10EA00A:   unk_49D910.Execute CStr(var_FC), var_11C, -1
  loc_10EA055:   var_168 = 0
  loc_10EA068:   var_160 = 0
  loc_10EA073:   var_15C = 0
  loc_10EA086:   var_154 = 0
  loc_10EA091:   var_150 = 0
  loc_10EA0A4:   var_148 = 0
  loc_10EA0E4:   var_12C = "MembershipRevMast"
  loc_10EA0ED:   Proc_154_5_10E3BD4(MemVar_1F95044, var_12C, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10EA11B:   unk_49D910.CommitTrans
  loc_10EA122:   var_96 = 0
  loc_10EA130:   Me.Requery -1
  loc_10EA140:   Me.Requery -1
  loc_10EA160:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10EA16D:     Me.Bookmark = var_94
  loc_10EA175:   Else
  loc_10EA189:     If (Me.EOF = 0) Then
  loc_10EA192:       Me.MoveLast
  loc_10EA197:     End If
  loc_10EA197:   End If
  loc_10EA197:   Call Proc_266_33_134AE54(var_96, var_148, 0, var_150, var_154)
  loc_10EA1B8:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_10EA1C0: End If
  loc_10EA1C5: Set var_9C = Nothing
  loc_10EA1C8: Exit Sub
  loc_10EA1C9: ' Referenced from: 10E9F38
  loc_10EA1CF: If (var_96 = &HFF) Then
  loc_10EA1D8:   unk_49D910.RollbackTrans
  loc_10EA1DD: End If
  loc_10EA1E5: Set var_124 = Err()
  loc_10EA1EB: Call 0.Method_arg_2C (var_12C, 0, var_15C)
  loc_10EA20C: MsgBox(CVar(var_12C), &H30, " Deletion Error ", var_FC, var_11C)
  loc_10EA21F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F621DC
  'Data Table: 49D8FC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F620B8: On Error Goto loc_F62199
  loc_F620C9: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F620CC:   Exit Sub
  loc_F620CD: End If
  loc_F620E4: If (Me.RecordCount > 0) Then
  loc_F620FC:   var_8C = "EDIT"
  loc_F6210A:   Call Proc_266_31_E7954C(Proc_5_1_100EC1C(var_8C, Me))
  loc_F62120:   Set var_90 = Me.Txt
  loc_F62126:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F6212E:   var_98.SetFocus
  loc_F6213D: Else
  loc_F6215E:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F6216E: End If
  loc_F6217B: Me.LblUser.Caption = vbNullString
  loc_F62190: Me.LblLDt.Caption = vbNullString
  loc_F62198: Exit Sub
  loc_F62199: ' Referenced from: F620B8
  loc_F621A1: Set var_90 = Err()
  loc_F621A7: Call 0.Method_arg_2C (var_8C)
  loc_F621C8: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F621DB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BE64
  'Data Table: 49D8FC
  loc_E1BE59: Me.Global.Unload Me
  loc_E1BE61: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F290D8
  'Data Table: 49D8FC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F28FD8: On Error Goto loc_F29070
  loc_F28FE4: var_88 = Me.RecordCount
  loc_F28FF2: If (var_88 <= 0) Then
  loc_F28FFB:   var_B8 = "Information"
  loc_F29016:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F29026:   Exit Sub
  loc_F29027: End If
  loc_F29035: MemVar_1F950E4 = "SELECT Code as SearchCode,Description FROM MembershipRevMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Description"
  loc_F2903F: var_10C = "3000"
  loc_F29045: Proc_6_126_F1C850(var_10C)
  loc_F29053: MemVar_1F95120 = Me
  loc_F2906A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2906F: Exit Sub
  loc_F29070: ' Referenced from: F28FD8
  loc_F29078: Set var_110 = Err()
  loc_F2907E: Call 0.Method_arg_1C (var_88)
  loc_F2908F: If (var_88 <> 0) Then
  loc_F2909A:   Set var_110 = Err()
  loc_F290A0:   Call 0.Method_arg_2C (var_10C)
  loc_F290C1:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F290D4: End If
  loc_F290D4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2C228
  'Data Table: 49D8FC
  loc_E2C218: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C220: Call Proc_266_33_134AE54(global_52)
  loc_E2C225: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2D5A8
  'Data Table: 49D8FC
  loc_E2D598: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D5A0: Call Proc_266_33_134AE54(global_52)
  loc_E2D5A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2D308
  'Data Table: 49D8FC
  loc_E2D2F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D300: Call Proc_266_33_134AE54(global_52)
  loc_E2D305: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2CB28
  'Data Table: 49D8FC
  loc_E2CB18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2CB20: Call Proc_266_33_134AE54(global_52)
  loc_E2CB25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108CAFC
  'Data Table: 49D8FC
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_49D910 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_108C864: On Error Goto loc_108CAB0
  loc_108C882: var_A4 = "SELECT Description,SubsDetails,RefundableYN,SubsChargeYN FROM MembershipRevMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Description"
  loc_108C88B: unk_49D910.Execute var_A4, var_C4, -1
  loc_108C896: Set var_88 = var_C8
  loc_108C8AC: var_CC = var_88.RecordCount
  loc_108C8BA: If (var_CC = 0) Then
  loc_108C8D6:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108C8E6:   Exit Sub
  loc_108C8E7: End If
  loc_108C8F6: var_A4 = MemVar_1F950B4 & "\MembershipRevMast.ttx"
  loc_108C8FD: Set var_C8 = var_88 
  loc_108C909: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108C913: Set var_88 = var_C8
  loc_108C919: var_B4 = CVar(var_12E) 'Integer
  loc_108C91C: var_98 = var_B4 'Variant
  loc_108C938: var_A0 = MemVar_1F950B4 & "\MembershipRevMast.RPT"
  loc_108C941: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108C94C: MemVar_1F951E8 = var_C8
  loc_108C967: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108C96F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108C97B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108C994:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108C99C:   Call 0.Method_arg_20 (var_138)
  loc_108C9A4:   Call 0.Method_arg_30 (var_A0)
  loc_108C9EA:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108CA00:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108CA08:     Call 0.Method_arg_20 (var_138)
  loc_108CA10:     Call 0.Method_arg_38 ("'Membership Revenue Master'")
  loc_108CA1C:   End If
  loc_108CA1F: Next var_132 'Integer
  loc_108CA3D: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108CA45: Call 0.Method_arg_2C (var_DC)
  loc_108CA53: Call 0.Method_arg_150 (var_FC)
  loc_108CA5E: Call 0.Method_arg_50 (var_A0)
  loc_108CA68: Set var_138 = Nothing
  loc_108CA82: Set var_C8 = MemVar_1F951E8 
  loc_108CA8E: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_108CA99: MemVar_1F951E8 = var_C8
  loc_108CAAC: Set var_88 = Nothing
  loc_108CAAF: Exit Sub
  loc_108CAB0: ' Referenced from: 108C864
  loc_108CAB8: Set var_C8 = Err()
  loc_108CABE: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108CAC9: Call 0.Method_arg_50 (var_A4)
  loc_108CAE5: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108CAF8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E43F08
  'Data Table: 49D8FC
  Dim Me As Recordset15
  loc_E43EDF: Me.Requery -1
  loc_E43EEF: Me.Requery -1
  loc_E43EFF: Me.Requery -1
  loc_E43F04: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14D8364
  'Data Table: 49D8FC
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_D8 As Variant
  Dim unk_49D910 As Connection15
  Dim var_94 As Variant
  Dim var_9C As Field20
  Dim var_FC As Variant
  Dim var_C8 As Variant
  Dim var_10C As Variant
  Dim Me As Recordset15
  Dim var_118 As TextBox
  Dim var_B4 As Variant
  Dim var_364 As TextBox
  Dim var_3B0 As TextBox
  Dim var_3FC As TextBox
  Dim var_4D0 As Variant
  Dim var_558 As TextBox
  Dim var_17C As Variant
  Dim var_264 As Variant
  Dim var_33C As Variant
  Dim var_3F4 As Variant
  Dim var_440 As Variant
  Dim var_530 As Variant
  Dim var_550 As Variant
  loc_14D76C4: On Error Goto loc_14D8310
  loc_14D76CB: var_86 = CByte(0) 'Byte
  loc_14D76DA: Set var_94 = Me.Txt
  loc_14D76E0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_14D7709: If (Proc_183_19_E8E68C(var_98, "Description") = 0) Then
  loc_14D7713:   Call Txt_GotFocus(CInt(0))
  loc_14D7718:   Exit Sub
  loc_14D7719: End If
  loc_14D7724: Set var_94 = Me.Txt
  loc_14D772A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_14D7753: If (Proc_183_19_E8E68C(var_98, "Subscription Details") = 0) Then
  loc_14D775D:   Call Txt_GotFocus(CInt(1))
  loc_14D7762:   Exit Sub
  loc_14D7763: End If
  loc_14D776E: Set var_94 = Me.Txt
  loc_14D7774: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_14D779D: If (Proc_183_19_E8E68C(var_98, "Refundable") = 0) Then
  loc_14D77A7:   Call Txt_GotFocus(CInt(2))
  loc_14D77AC:   Exit Sub
  loc_14D77AD: End If
  loc_14D77B8: Set var_94 = Me.Txt
  loc_14D77BE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98)
  loc_14D77E7: If (Proc_183_19_E8E68C(var_98, "Subscription Charge") = 0) Then
  loc_14D77F1:   Call Txt_GotFocus(CInt(3))
  loc_14D77F6:   Exit Sub
  loc_14D77F7: End If
  loc_14D7802: Set var_94 = Me.Txt
  loc_14D7808: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_14D7831: If (Proc_183_19_E8E68C(var_98, "Acount (A/C)") = 0) Then
  loc_14D783B:   Call Txt_GotFocus(CInt(3))
  loc_14D7840:   Exit Sub
  loc_14D7841: End If
  loc_14D784F: Set var_94 = Me.Txt
  loc_14D7855: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_14D7874: If (var_98.Text = "Yes") Then
  loc_14D7882:   Set var_94 = Me.Txt
  loc_14D7888:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_14D78B1:   If (Proc_183_19_E8E68C(var_98, "(A/C) Name") = 0) Then
  loc_14D78BB:     Call Txt_GotFocus(CInt(3))
  loc_14D78C0:     Exit Sub
  loc_14D78C1:   End If
  loc_14D78CC:   Set var_94 = Me.Txt
  loc_14D78D2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_98)
  loc_14D78FB:   If (Proc_183_19_E8E68C(var_98, "(A/C) Posting") = 0) Then
  loc_14D7905:     Call Txt_GotFocus(CInt(3))
  loc_14D790A:     Exit Sub
  loc_14D790B:   End If
  loc_14D790E: Else
  loc_14D791C:   Set var_94 = Me.Txt
  loc_14D7922:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_14D792A:   var_98.Text = vbNullString
  loc_14D7944:   Set var_94 = Me.Txt
  loc_14D794A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_14D7952:   var_98.Tag = vbNullString
  loc_14D796C:   Set var_94 = Me.Txt
  loc_14D7972:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_98)
  loc_14D797A:   var_98.Text = vbNullString
  loc_14D7986: End If
  loc_14D7991: Set var_94 = Me.Txt
  loc_14D7997: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_98)
  loc_14D79C0: If (Proc_183_19_E8E68C(var_98, "Tax Structure") = 0) Then
  loc_14D79CA:   Call Txt_GotFocus(CInt(3))
  loc_14D79CF:   Exit Sub
  loc_14D79D0: End If
  loc_14D79D4: Set var_94 = Me.TopCtrl1
  loc_14D79DA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_14D79F3: If (CStr() = "Add") Then
  loc_14D79FC:   var_D8 = 0
  loc_14D7A19:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1 AS MyCode From MembershipRevMast Where SITE_CODE='" & MemVar_1F95070
  loc_14D7A29:   unk_49D910.Execute CStr() & "'", var_B4, -1
  loc_14D7A31:   var_94 = var_94.Fields
  loc_14D7A39:   var_D8 = var_98.Item(var_98)
  loc_14D7A41:   var_9C = var_9C.Value
  loc_14D7A7A:   var_FC = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_14D7AA8:   var_10C = (1 + Format(CStr(var_E8), "0000"))
  loc_14D7AB3:   global_72 = CStr(var_10C)
  loc_14D7AC8: Else
  loc_14D7AE5:   var_98 = Me.Fields.Item("Code")
  loc_14D7AFC:   global_72 = CStr(var_98.Value)
  loc_14D7B0D: End If
  loc_14D7B16: unk_49D910.BeginTrans var_110
  loc_14D7B1F: var_86 = CByte(1) 'Byte
  loc_14D7B27: Set var_94 = Me.TopCtrl1
  loc_14D7B2D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_14D7B46: If (CStr(var_FC) = "Add") Then
  loc_14D7B57:   Set var_94 = Me.Txt
  loc_14D7B5D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_14D7B78:   Set var_9C = Me.Txt
  loc_14D7B7E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118)
  loc_14D7B96:   Set var_128 = Me.Txt
  loc_14D7B9C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_14D7BAB:   var_E8 = Trim(CVar(var_12C))
  loc_14D7BED:   Set var_1B0 = Me.Txt
  loc_14D7BF3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B4)
  loc_14D7C44:   Set var_288 = Me.Txt
  loc_14D7C4A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_28C)
  loc_14D7C9E:   Set var_360 = Me.Txt
  loc_14D7CA4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_364)
  loc_14D7CBF:   Set var_3AC = Me.Txt
  loc_14D7CC5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_3B0)
  loc_14D7CE0:   Set var_3F8 = Me.Txt
  loc_14D7CE6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_3FC)
  loc_14D7CF8:   var_4D0 = CVar(Proc_6_15_EF37AC(var_E8)) 'String
  loc_14D7CFE:   Proc_6_7_F26918(var_4E0)
  loc_14D7D11:   Set var_554 = Me.Txt
  loc_14D7D17:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_558)
  loc_14D7D3B:   var_A0 = "Insert Into MembershipRevMast(Code,Description,SubsDetails,RefundableYN,SubsChargeYN,AcountYN,AcCode,ACPosting,TaxStru,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code,Status) Values('" & global_72
  loc_14D7D74:   var_264 = CVar(var_A0 & "','" & var_98.Text & "','" & var_118.Text & "','") & IIf((var_E8 = "Yes"), "Y", "N") & "','" & IIf((Trim(CVar(var_1B4)) = "Yes"), "Y", "N") 
  loc_14D7DB3:   var_3F4 = var_264 & "','" & IIf((Trim(CVar(var_28C)) = "Yes"), "Y", "N") & "','" & CVar(var_364.Tag) & "','" & CVar(var_3B0.Text) & "','" 
  loc_14D7E06:   var_530 = var_3F4 & CVar(var_3FC.Tag) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_4E0 & ",'A','" & CVar(MemVar_1F95078) 
  loc_14D7E30:   unk_49D910.Execute CStr(var_530 & "','" & CVar(var_558.Text) & "')"), var_5C0, -1
  loc_14D7ED1: Else
  loc_14D7EDF:   Set var_94 = Me.Txt
  loc_14D7EE5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_14D7EED:   var_5C4 = var_98.Text
  loc_14D7F00:   Set var_9C = Me.Txt
  loc_14D7F06:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118)
  loc_14D7F1E:   Set var_128 = Me.Txt
  loc_14D7F24:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_14D7F33:   var_E8 = Trim(CVar(var_12C))
  loc_14D7F51:   var_C8 = "Yes"
  loc_14D7F5B:   var_10C = (var_E8 = var_C8) 'Variant
  loc_14D7F75:   Set var_1B0 = Me.Txt
  loc_14D7F7B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B4)
  loc_14D7FCC:   Set var_288 = Me.Txt
  loc_14D7FD2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_28C)
  loc_14D8026:   Set var_360 = Me.Txt
  loc_14D802C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_364)
  loc_14D8047:   Set var_3AC = Me.Txt
  loc_14D804D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_3B0)
  loc_14D8068:   Set var_3F8 = Me.Txt
  loc_14D806E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_3FC)
  loc_14D8080:   var_4D0 = CVar(Proc_6_15_EF37AC(var_4D0)) 'String
  loc_14D8086:   Proc_183_7_EB17D4(var_4E0)
  loc_14D8099:   Set var_554 = Me.Txt
  loc_14D809F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_558)
  loc_14D80D5:   var_17C = CVar("UPDATE MembershipRevMast SET Description='" & var_A0 & "',SubsDetails='" & var_118.Text & "',RefundableYN='") 'String
  loc_14D80FB:   var_33C = var_17C & IIf(var_10C, "Y", "N") & "',SubsChargeYN='" & IIf((Trim(CVar(var_1B4)) = "Yes"), "Y", "N") & "',AcountYN='" & IIf((Trim(CVar(var_28C)) = "Yes"), "Y", "N") 
  loc_14D813D:   var_440 = var_33C & "',AcCode='" & CVar(var_364.Tag) & "',ACPosting='" & CVar(var_3B0.Text) & "',TaxStru='" & CVar(var_3FC.Tag) & "',SITE_CODE='" 
  loc_14D817D:   var_550 = var_440 & CVar(MemVar_1F95070) & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_4E0 & ",U_AE='E',Status='" & CVar(var_558.Text) 
  loc_14D81AA:   unk_49D910.Execute CStr(var_550 & "' WHERE Code='" & CVar(global_72) & "'"), var_5C0, -1
  loc_14D8244: End If
  loc_14D824A: unk_49D910.CommitTrans
  loc_14D8253: var_86 = CByte(0) 'Byte
  loc_14D8257: Call Proc_266_35_F22800(var_5C4)
  loc_14D8267: Me.Requery -1
  loc_14D8277: Me.Requery -1
  loc_14D82A4: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_14D82B4: Set var_94 = Me.TopCtrl1
  loc_14D82BA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C8)
  loc_14D82D3: If (CStr(var_4D0) = "Add") Then
  loc_14D82D6:   Call TopCtrl1_UnknownEvent_A()
  loc_14D82DB:   Exit Sub
  loc_14D82DC: End If
  loc_14D82F1: var_A0 = "INI"
  loc_14D82FF: Call Proc_266_31_E7954C(Proc_5_1_100EC1C(var_A0, Me))
  loc_14D830A: Call Proc_266_33_134AE54(global_52)
  loc_14D830F: Exit Sub
  loc_14D8310: ' Referenced from: 14D76C4
  loc_14D8319: If (CInt(var_86) = 1) Then
  loc_14D8322:   unk_49D910.RollbackTrans
  loc_14D8327: End If
  loc_14D832F: Set var_94 = Err()
  loc_14D8335: Call 0.Method_arg_2C (var_A0)
  loc_14D834E: MsgBox(CVar(var_A0), &H10, var_E8, var_FC, var_10C)
  loc_14D8361: Exit Sub
End Sub

Private Sub Form_Load() '1090C40
  'Data Table: 49D8FC
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_49D910 As Connection15
  Dim var_B4 As Variant
  loc_1090998: On Error Goto loc_1090BFB
  loc_109099B: Call Proc_266_36_10090C8()
  loc_10909A7: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10909BB: Me.LblUser.Left = CDbl(13500)
  loc_10909D2: Me.LblUser.Top = CDbl(7800)
  loc_10909E9: Me.LblLDt.Top = CDbl(8160)
  loc_10909FA: Set var_8C = Me.LblLDt
  loc_1090A00: var_8C.Left = CDbl(13500)
  loc_1090A23: var_94 = "SELECT Code,Description as Name FROM MembershipRevMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_1090A2C: unk_49D910.Execute var_94, var_B4, -1
  loc_1090A5B: CVarUnk
  loc_1090A60: VerifyVarObj
  loc_1090A6C: LateIdStAd
  loc_1090A95: var_94 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_1090A9E: unk_49D910.Execute var_94, var_B4, -1
  loc_1090ACD: CVarUnk
  loc_1090AD2: VerifyVarObj
  loc_1090ADE: LateIdStAd
  loc_1090B10: unk_49D910.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_1090B3F: CVarUnk
  loc_1090B44: VerifyVarObj
  loc_1090B50: LateIdStAd
  loc_1090B72: var_90 = "SELECT Distinct M.Code as SearchCode,M.*,S.Name As LedgerName,T.Name As TaxStruName FROM (MembershipRevMast M Left Join SubGroup S on M.AcCode=S.SubCode) Left Join TaxStru T on T.Code=M.TaxStru WHERE (M.LOGSITE_CODE='" & MemVar_1F95078
  loc_1090B82: unk_49D910.Execute var_90 & "' or M.LOGSITE_CODE='HO') ORDER BY M.Code", var_B4, -1
  loc_1090BB4: Set var_8C = Me
  loc_1090BBD: var_90 = "INI"
  loc_1090BCB: Call Proc_266_31_E7954C(Proc_5_1_100EC1C(var_90, var_8C, Me.DGTaxStru, var_8C, var_8C, Me.DGLedgerAc, var_8C), var_8C, Me.DGHelp, var_8C)
  loc_1090BDF: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_1090BED: Call 0.Method_arg_164 (var_8C, var_8C)
  loc_1090BF5: Call Proc_266_33_134AE54(var_8C)
  loc_1090BFA: Exit Sub
  loc_1090BFB: ' Referenced from: 1090998
  loc_1090C03: Set var_8C = Err()
  loc_1090C09: Call 0.Method_arg_2C (var_90)
  loc_1090C2A: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_1090C3D: Exit Sub
  loc_1090C3E: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E61EC8
  'Data Table: 49D8FC
  loc_E61E87: Set global_52 = Nothing
  loc_E61E99: Set global_56 = Nothing
  loc_E61EAB: Set global_64 = Nothing
  loc_E61EBD: Set global_68 = Nothing
  loc_E61EC4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27A14
  'Data Table: 49D8FC
  loc_E279EC: On Error Goto loc_E27A0B
  loc_E27A03: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E27A0B: ' Referenced from: E279EC
  loc_E27A0B: Proc_6_60_E63754(Shift)
  loc_E27A10: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_9 'F3B234
  'Data Table: 49D8FC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3B12B: Me.DGLedgerAc.Visible = False
  loc_F3B14A: If (Me.RecordCount > 0) Then
  loc_F3B189:   Set var_B4 = Me.Txt
  loc_F3B18F:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3B197:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3B1CA:   var_B0 = Me.Fields.Item("Name")
  loc_F3B1E9:   Set var_B4 = Me.Txt
  loc_F3B1EF:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3B1F7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3B20D: End If
  loc_F3B218: Set var_A8 = Me.Txt
  loc_F3B21E: Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(5))
  loc_F3B226: var_B0.SetFocus
  loc_F3B232: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_1F 'E73638
  'Data Table: 49D8FC
  loc_E735F6: Proc_6_153_E91D24(Me.DGLedgerAc, arg_14)
  loc_E7360D: Set var_8C = Me.FGPoint
  loc_E73629: Proc_6_138_106E830(Me.DGLedgerAc, global_64, CInt(5))
  loc_E73637: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E86B98
  'Data Table: 49D8FC
  loc_E86B44: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E86B47:   Call DGHelp_UnknownEvent_9()
  loc_E86B4C: End If
  loc_E86B68: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_E86B6B:   Call DGTaxStru_UnknownEvent_9()
  loc_E86B70: End If
  loc_E86B8C: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_E86B8F:   Call DGLedgerAc_UnknownEvent_9()
  loc_E86B94: End If
  loc_E86B94: Exit Sub
  loc_E86B95: Set var_B4 = 
End Sub

Public Sub SEARCHBACK(MyValue) 'EC5E94
  'Data Table: 49D8FC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC5E0A: On Error Goto loc_EC5E4F
  loc_EC5E13: Me.MoveFirst
  loc_EC5E2D: var_8C = "code='" & MyValue
  loc_EC5E3D: Me.Find var_8C & "'", 0, 1
  loc_EC5E49: Call Proc_266_33_134AE54(var_A0)
  loc_EC5E4E: Exit Sub
  loc_EC5E4F: ' Referenced from: EC5E0A
  loc_EC5E57: Set var_A4 = Err()
  loc_EC5E5D: Call 0.Method_arg_2C (var_8C)
  loc_EC5E7E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC5E91: Exit Sub
  loc_EC5E92: Exit Sub
End Sub

Public Sub Proc_266_31_E7954C(arg_C) 'E7954C
  'Data Table: 49D8FC
  Dim var_98 As TextBox
  loc_E794FA: Set var_8C = Me.Txt
  loc_E79500: Call 0.Method_Proc_266_31_E7954CC (var_8E, var_86)
  loc_E79510: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79526:   Set var_8C = Me.Txt
  loc_E7952C:   Call 0.Method_Proc_266_31_E7954C0 (CInt(var_86), var_98)
  loc_E79534:   var_98.Enabled = arg_C
  loc_E79543: Next var_92 'Byte
  loc_E79549: Exit Sub
  loc_E7954A: Set var_7C00 = 
End Sub

Public Sub Proc_266_32_E9C3A8
  'Data Table: 49D8FC
  Dim var_98 As TextBox
  loc_E9C32E: Set var_8C = Me.Txt
  loc_E9C334: Call 0.Method_Proc_266_32_E9C3A8C (var_8E, var_86)
  loc_E9C344: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9C35A:   Set var_8C = Me.Txt
  loc_E9C360:   Call 0.Method_Proc_266_32_E9C3A80 (CInt(var_86), var_98)
  loc_E9C368:   var_98.Text = vbNullString
  loc_E9C377: Next var_92 'Byte
  loc_E9C38B: Set var_8C = Me.Txt
  loc_E9C391: Call 0.Method_Proc_266_32_E9C3A80 (CInt(8), var_98)
  loc_E9C399: var_98.Text = "Active"
  loc_E9C3A5: Exit Sub
End Sub

Public Sub Proc_266_33_134AE54
  'Data Table: 49D8FC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B8 As Fields15
  Dim var_B4 As String
  Dim var_CC As TextBox
  loc_134A684: On Error Goto loc_134AE10
  loc_134A68D: Proc_183_45_E5CCA8(global_52)
  loc_134A6A9: If (Me.RecordCount <= 0) Then
  loc_134A6AC:   Call Proc_266_32_E9C3A8()
  loc_134A6B4: Else
  loc_134A75D:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_134A7A5:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_Name")))))
  loc_134A825:   var_CC = Me.Fields.Item("U_AE")
  loc_134A886:   var_180 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_CC)) = "E"), "Last Update :   ", "entdt :   "))
  loc_134A8CE:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("U_EntDt")))))
  loc_134A93A:   global_72 = CStr(Me.Fields.Item("Code").Value)
  loc_134A987:   Set var_B8 = Me.Txt
  loc_134A98D:   Call 0.Method_Proc_266_33_134AE540 (CInt(0), var_CC)
  loc_134A995:   var_CC.Text = CStr(Me.Fields.Item("Description").Value)
  loc_134A9E7:   Set var_B8 = Me.Txt
  loc_134A9ED:   Call 0.Method_Proc_266_33_134AE540 (CInt(0), var_CC)
  loc_134A9F5:   var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_134AA47:   Set var_B8 = Me.Txt
  loc_134AA4D:   Call 0.Method_Proc_266_33_134AE540 (CInt(1), var_CC)
  loc_134AA55:   var_CC.Text = CStr(Me.Fields.Item("SubsDetails").Value)
  loc_134AAD8:   Set var_B8 = Me.Txt
  loc_134AADE:   Call 0.Method_Proc_266_33_134AE540 (CInt(2), var_CC)
  loc_134AAE6:   var_CC.Text = CStr(IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("RefundableYN"))) = "Y"), "Yes", "No"))
  loc_134AB77:   Set var_B8 = Me.Txt
  loc_134AB7D:   Call 0.Method_Proc_266_33_134AE540 (CInt(3), var_CC)
  loc_134AB85:   var_CC.Text = CStr(IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("SubsChargeYN"))) = "Y"), "Yes", "No"))
  loc_134ABDC:   var_110 = "No"
  loc_134ABFF:   var_130 = IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("AcountYN"))) = "Y"), "Yes", var_110)
  loc_134AC16:   Set var_B8 = Me.Txt
  loc_134AC1C:   Call 0.Method_Proc_266_33_134AE540 (CInt(4), var_CC)
  loc_134AC24:   var_CC.Text = CStr(var_130)
  loc_134AC81:   Set var_B8 = Me.Txt
  loc_134AC87:   Call 0.Method_Proc_266_33_134AE540 (CInt(5), var_CC)
  loc_134AC8F:   var_CC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LedgerName")))
  loc_134ACDC:   Set var_B8 = Me.Txt
  loc_134ACE2:   Call 0.Method_Proc_266_33_134AE540 (CInt(5), var_CC)
  loc_134ACEA:   var_CC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("AcCode")))
  loc_134AD37:   Set var_B8 = Me.Txt
  loc_134AD3D:   Call 0.Method_Proc_266_33_134AE540 (CInt(6), var_CC)
  loc_134AD45:   var_CC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ACPosting")))
  loc_134AD92:   Set var_B8 = Me.Txt
  loc_134AD98:   Call 0.Method_Proc_266_33_134AE540 (CInt(7), var_CC)
  loc_134ADA0:   var_CC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStruName")))
  loc_134ADDF:   var_B4 = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")))
  loc_134ADED:   Set var_B8 = Me.Txt
  loc_134ADF3:   Call 0.Method_Proc_266_33_134AE540 (CInt(7), var_CC)
  loc_134ADFB:   var_CC.Tag = var_B4
  loc_134AE0F: End If
  loc_134AE0F: Exit Sub
  loc_134AE10: ' Referenced from: 134A684
  loc_134AE18: Set var_8C = Err()
  loc_134AE1E: Call 0.Method_arg_2C (var_B4)
  loc_134AE3F: MsgBox(CVar(var_B4), &H40, "Information", var_110, var_130)
  loc_134AE52: Exit Sub
End Sub

Public Sub Proc_266_34_108BF18
  'Data Table: 49D8FC
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_A8 As TextBox
  Dim unk_49D910 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108BCAB: If (Me.RecordCount = 0) Then
  loc_108BCAE:   Proc_266_34_108BF18 = 
  loc_108BCB4: End If
  loc_108BCB8: Set var_90 = Me.TopCtrl1
  loc_108BCBE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108BCD7: If (CStr() = "Add") Then
  loc_108BD04:   var_B0 = "Select Count(*) From MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Description='"
  loc_108BD15:   Set var_90 = Me.Txt
  loc_108BD1B:   Call 0.Method_Proc_266_34_108BF180 (CInt(0), var_A8, var_AC, var_B0, var_A0, -1)
  loc_108BD3C:   unk_49D910.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108BD4C:    = var_D0.Item()
  loc_108BD54:    = var_E4.Value
  loc_108BD85:   If (var_A8.Text.Fields > 0) Then
  loc_108BDA3:     var_A0 = "Duplicate Name"
  loc_108BDA9:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108BDC4:     Set var_90 = Me.Txt
  loc_108BDCA:     Call 0.Method_Proc_266_34_108BF180 (CInt(0))
  loc_108BDD2:     var_A8.SetFocus
  loc_108BDE3:     Proc_266_34_108BF18 = &HFF
  loc_108BDE9:   End If
  loc_108BDEC: Else
  loc_108BE16:   var_B0 = "Select Count(*) From MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Description='"
  loc_108BE27:   Set var_90 = Me.Txt
  loc_108BE2D:   Call 0.Method_Proc_266_34_108BF180 (CInt(0), var_A8, var_AC, var_B0, var_A0, -1)
  loc_108BE5F:   unk_49D910.Execute var_D0 & var_AC & "' And Code<>'" & global_72 & "'", 0, var_E4
  loc_108BE6F:    = var_D0.Item(var_A8)
  loc_108BE77:    = var_E4.Value
  loc_108BEAC:   If (var_A8.Text.Fields > 0) Then
  loc_108BED0:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108BEEB:     Set var_90 = Me.Txt
  loc_108BEF1:     Call 0.Method_Proc_266_34_108BF180 (CInt(0))
  loc_108BEF9:     var_A8.SetFocus
  loc_108BF0A:     Proc_266_34_108BF18 = &HFF
  loc_108BF10:   End If
  loc_108BF10: End If
  loc_108BF10: Proc_266_34_108BF18 = var_A8
End Sub

Public Sub Proc_266_35_F22800
  'Data Table: 49D8FC
  loc_F22710: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F22722:   Me.DGHelp.Visible = False
  loc_F2272A: End If
  loc_F22746: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_F22758:   Me.DGLedgerAc.Visible = False
  loc_F22760: End If
  loc_F2277C: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F2278E:   Me.DGTaxStru.Visible = False
  loc_F22796: End If
  loc_F227B1: If (Me.FrmList.Visible = &HFF) Then
  loc_F227C0:   Me.FrmList.Visible = False
  loc_F227C8: End If
  loc_F227E4: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F227F6:   Me.FGPoint.Visible = False
  loc_F227FE: End If
  loc_F227FE: Exit Sub
End Sub

Public Sub Proc_266_36_10090C8
  'Data Table: 49D8FC
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_1008EC6: Set var_88 = Me.Txt
  loc_1008ECC: Call 0.Method_Proc_266_36_10090C80 (CInt(0), var_8C)
  loc_1008EEB: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_1008F07: Set var_B4 = Me.Txt
  loc_1008F0D: Call 0.Method_Proc_266_36_10090C80 (CInt(0), var_B8)
  loc_1008F28: Set var_88 = Me.Txt
  loc_1008F2E: Call 0.Method_Proc_266_36_10090C80 (CInt(0), var_8C)
  loc_1008F46: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1008F55: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1008F75: Set var_88 = Me.Txt
  loc_1008F7B: Call 0.Method_Proc_266_36_10090C80 (CInt(5), var_8C)
  loc_1008F9A: Me.DGLedgerAc.Left = CVar(var_8C.Left)
  loc_1008FB6: Set var_B4 = Me.Txt
  loc_1008FBC: Call 0.Method_Proc_266_36_10090C80 (CInt(5), var_B8)
  loc_1008FD7: Set var_88 = Me.Txt
  loc_1008FDD: Call 0.Method_Proc_266_36_10090C80 (CInt(5), var_8C)
  loc_1008FF5: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1009004: Me.DGLedgerAc.Top = CVar(var_8C.Left)
  loc_1009024: Set var_88 = Me.Txt
  loc_100902A: Call 0.Method_Proc_266_36_10090C80 (CInt(7), var_8C)
  loc_1009049: Me.DGTaxStru.Left = CVar(var_8C.Left)
  loc_1009065: Set var_B4 = Me.Txt
  loc_100906B: Call 0.Method_Proc_266_36_10090C80 (CInt(7), var_B8)
  loc_1009086: Set var_88 = Me.Txt
  loc_100908C: Call 0.Method_Proc_266_36_10090C80 (CInt(7), var_8C)
  loc_10090A4: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_10090B3: Me.DGTaxStru.Top = CVar(var_8C.Left)
  loc_10090C5: Exit Sub
End Sub
