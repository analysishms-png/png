VERSION 5.00
Begin VB.Form PrLoan
  Caption = "Advance/Loan"
  BackColor = &HD0C7BB&
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 105
  ClientTop = 600
  ClientWidth = 9480
  ClientHeight = 5475
  WhatsThisHelp = -1  'True
  PaletteMode = 1
  Begin DataGrid DGEmployee
    Left = 9885
    Top = 4050
    Width = 11250
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 34
  End
  Begin DataGrid DBGrid1
    Left = 330
    Top = 3705
    Width = 9315
    Height = 2745
    TabIndex = 16
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9480
    Height = 450
    TabIndex = 30
  End
  Begin PictureBox Picture1
    Picture = "PrLoan.frx":0
    Left = 14940
    Top = 2040
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 29
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture3
    Picture = "PrLoan.frx":34E
    Left = 14985
    Top = 2505
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 28
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &H80000004&
    Left = 6375
    Top = 30
    Width = 2235
    Height = 255
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 5265
    Top = 1110
    Width = 1035
    Height = 285
    Visible = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    MaxLength = 10
    Locked = -1  'True
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
    Left = 7845
    Top = 1110
    Width = 1020
    Height = 285
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 20
    Locked = -1  'True
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
    Left = 9915
    Top = 6855
    Width = 2520
    Height = 1875
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 2415
      Height = 1800
      TabIndex = 19
    End
  End
  Begin DataGrid DGAcName
    Left = 13590
    Top = 3300
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin TextBox Txt
    Index = 8
    ForeColor = &HC00000&
    Left = 5265
    Top = 1425
    Width = 3600
    Height = 285
    TabIndex = 3
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
    ForeColor = &HC00000&
    Left = 1170
    Top = 2055
    Width = 2880
    Height = 285
    TabIndex = 2
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
    Index = 2
    ForeColor = &HC00000&
    Left = 1170
    Top = 1425
    Width = 1410
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
    Index = 1
    ForeColor = &HC00000&
    Left = 1170
    Top = 1110
    Width = 1410
    Height = 285
    TabIndex = 0
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
    Index = 9
    ForeColor = &HC00000&
    Left = 5265
    Top = 1740
    Width = 3600
    Height = 780
    TabIndex = 6
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
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
    Left = 3120
    Top = 2370
    Width = 930
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 10
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
    Left = 1170
    Top = 2370
    Width = 825
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 10
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
    Left = 1170
    Top = 1740
    Width = 1410
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 8
    Locked = -1  'True
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
  Begin MSFlexGrid FGPoint
    Left = 12705
    Top = 7125
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 27
  End
  Begin Label LblEmpRef
    Caption = "."
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 1215
    Top = 2700
    Width = 105
    Height = 270
    TabIndex = 35
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3375
    Top = 6885
    Width = 2790
    Height = 285
    TabIndex = 33
    Alignment = 2 'Center
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 0
    Top = 6885
    Width = 2880
    Height = 255
    TabIndex = 32
    Alignment = 2 'Center
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 31
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
  Begin Label Bal
    Caption = "Previous Balance -->"
    ForeColor = &HC00000&
    Left = 3165
    Top = 2400
    Width = 1965
    Height = 240
    Visible = 0   'False
    TabIndex = 26
    Alignment = 1 'Right Justify
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HC0&
    Left = 2595
    Top = 1695
    Width = 705
    Height = 240
    TabIndex = 25
    Alignment = 1 'Right Justify
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
    Caption = "Prev.Loan"
    Index = 3
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 4170
    Top = 1110
    Width = 975
    Height = 240
    Visible = 0   'False
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Prev.Inst."
    Index = 4
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 6660
    Top = 1110
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 22
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Post in A/c"
    Index = 8
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 4170
    Top = 1425
    Width = 1005
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Type"
    Index = 2
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 165
    Top = 1425
    Width = 465
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Employee"
    Index = 9
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 165
    Top = 2055
    Width = 945
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Remark"
    Index = 7
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 4170
    Top = 1740
    Width = 735
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Installment"
    Index = 6
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 2040
    Top = 2400
    Width = 1050
    Height = 240
    TabIndex = 11
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Amount"
    Index = 5
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 165
    Top = 2370
    Width = 735
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Serial No."
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 165
    Top = 1740
    Width = 945
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Date"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 165
    Top = 1110
    Width = 435
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
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "PrLoan"

Private global_54 As Integer
Private global_56 As Recordset15

Private Sub DGAcName_UnknownEvent_9 'F459F4
  'Data Table: 4C1968
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F458EB: Me.DGAcName.Visible = False
  loc_F4590A: If (Me.RecordCount > 0) Then
  loc_F45949:   Set var_B4 = Me.Txt
  loc_F4594F:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(8), var_B8)
  loc_F45957:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4598A:   var_B0 = Me.Fields.Item("Name")
  loc_F459A9:   Set var_B4 = Me.Txt
  loc_F459AF:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(8), var_B8)
  loc_F459B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F459CD: End If
  loc_F459D8: Set var_A8 = Me.Txt
  loc_F459DE: Call 0.Method_DGAcName_UnknownEvent_90 (CInt(8))
  loc_F459E6: var_B0.SetFocus
  loc_F459F2: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_1F 'E77258
  'Data Table: 4C1968
  loc_E77216: Proc_6_153_E91D24(Me.DGAcName, arg_14)
  loc_E7722D: Set var_8C = Me.FGPoint
  loc_E77249: Proc_6_138_106E830(Me.DGAcName, global_60, CInt(8))
  loc_E77257: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1247D88
  'Data Table: 4C1968
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_EC As Variant
  Dim var_90 As Fields15
  Dim var_C8 As String
  loc_1247862: Set var_88 = Me.Txt
  loc_1247868: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1247876: Proc_6_74_E23240(var_8C)
  loc_1247882: Call Proc_308_39_EF4488(var_8C)
  loc_124788A: var_92 = Index
  loc_1247895: If (var_92 = CInt(7)) Then
  loc_12478AF:   If (Me.RecordCount > 0) Then
  loc_12478BD:     Set var_8C = Me.FGPoint
  loc_12478D5:     Proc_6_137_1192FDC(Me.DGEmployee, global_64, Index)
  loc_12478E3:   End If
  loc_1247931:   Set var_88 = Me.Txt
  loc_1247937:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_124793F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1247957:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_124795A:     Exit Sub
  loc_124795B:   End If
  loc_1247969:   Set var_90 = Me.Txt
  loc_124796F:   Call 0.Method_Txt_GotFocus0 (CInt(7), var_A4)
  loc_124798A:   Set var_88 = Me.Txt
  loc_1247990:   Call 0.Method_Txt_GotFocus0 (CInt(7), var_8C)
  loc_12479A4:   var_B8 = CVar((var_8C.Top + var_A4.Height)) 'Single
  loc_12479B3:   Me.DGEmployee.Top = var_B8
  loc_12479D2:   Set var_88 = Me.Txt
  loc_12479D8:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12479E0:   var_A0 = var_8C.Text
  loc_12479E8:   var_EC = CVar(var_A0) 'String
  loc_1247A09:   var_A4 = Me.Fields.Item("Name")
  loc_1247A2D:   If CBool(var_EC <> var_A4.Value) Then
  loc_1247A36:     Me.MoveFirst
  loc_1247A5B:     Set var_88 = Me.Txt
  loc_1247A61:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1247A69:     0 = var_8C.Text
  loc_1247A77:     Proc_6_17_EAAE40(var_EC, CVar(var_A0), 1)
  loc_1247A8D:     Me.Find CStr(var_C8 & var_EC), var_92, 
  loc_1247AA5:   End If
  loc_1247AA8: Else
  loc_1247AB0:   If (var_92 = CInt(8)) Then
  loc_1247ACA:     If (Me.RecordCount > 0) Then
  loc_1247AD8:       Set var_8C = Me.FGPoint
  loc_1247AF0:       Proc_6_137_1192FDC(Me.DGAcName, global_60)
  loc_1247AFE:     End If
  loc_1247B4C:     Set var_88 = Me.Txt
  loc_1247B52:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1247B5A:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1247B72:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1247B75:       Exit Sub
  loc_1247B76:     End If
  loc_1247B84:     Set var_90 = Me.Txt
  loc_1247B8A:     Call 0.Method_Txt_GotFocus0 (CInt(8), var_A4)
  loc_1247BA5:     Set var_88 = Me.Txt
  loc_1247BAB:     Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_1247BBF:     var_B8 = CVar((var_8C.Top + var_A4.Height)) 'Single
  loc_1247BCE:     Me.DGAcName.Top = "Name ="
  loc_1247BED:     Set var_88 = Me.Txt
  loc_1247BF3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1247BFB:     var_A0 = var_8C.Text
  loc_1247C03:     var_EC = CVar(var_A0) 'String
  loc_1247C48:     If CBool(var_EC <> Me.Fields.Item("Name").Value) Then
  loc_1247C51:       Me.MoveFirst
  loc_1247C76:       Set var_88 = Me.Txt
  loc_1247C7C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1247C84:       0 = var_8C.Text
  loc_1247C92:       Proc_6_17_EAAE40(var_EC, CVar(var_A0), 1)
  loc_1247CA8:       Me.Find CStr(var_C8 & var_EC), var_8C, 
  loc_1247CC0:     End If
  loc_1247CC3:   Else
  loc_1247CCB:     If (var_92 = CInt(2)) Then
  loc_1247CDB:       ReDim var_104(0 To 3)
  loc_1247CF2:       var_104(0) = "Advance"
  loc_1247D01:       var_104(1) = "Loan"
  loc_1247D10:       var_104(2) = "Advance Return"
  loc_1247D1F:       var_104(3) = "Loan Return"
  loc_1247D36:       global_68 = Array(var_104)
  loc_1247D76:       Set global_84 = Proc_6_66_F0048C(Me.ListView, Me.Txt, Index)
  loc_1247D87:     End If
  loc_1247D87:   End If
  loc_1247D87: End If
  loc_1247D87: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1216934
  'Data Table: 4C1968
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim var_A4 As TextBox
  Dim var_B0 As TextBox
  Dim var_BC As TextBox
  Dim Me As Recordset15
  Dim var_90 As DataGrid
  Dim var_98 As Frame
  loc_121647F: var_88 = Shift
  loc_121648C: If (CLng(Shift) = &H1B) Then
  loc_121648F:   Call Proc_308_39_EF4488(var_88)
  loc_1216494:   Exit Sub
  loc_1216495: End If
  loc_1216498: var_8A = KeyCode
  loc_12164A1: If Not (var_8A = 3) Then
  loc_12164AA:   If (var_8A = 4) Then
  loc_12164AD:   End If
  loc_12164B7:   Set var_90 = Me.Txt
  loc_12164BD:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_12164D8:   Proc_6_41_FA1734(var_94, Shift, 8)
  loc_12164E7: Else
  loc_12164ED:   If Not (var_8A = 5) Then
  loc_12164F6:     If (var_8A = 6) Then
  loc_12164F9:     End If
  loc_1216503:     Set var_90 = Me.Txt
  loc_1216509:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_1216524:     Proc_6_41_FA1734(var_94, Shift, 7)
  loc_1216533:   Else
  loc_121653B:     If (var_8A = CInt(2)) Then
  loc_1216560:       Set var_90 = Me.Txt
  loc_1216566:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_A0)
  loc_121656E:       2 = var_94.Left
  loc_1216580:       Set var_98 = Me.Txt
  loc_1216586:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_A8)
  loc_121658E:       0 = var_A4.Top
  loc_12165A0:       Set var_AC = Me.Txt
  loc_12165A6:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0)
  loc_12165AE:       var_B4 = var_B0.Height
  loc_12165C0:       Set var_B8 = Me.Txt
  loc_12165C6:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_12165CE:       var_C0 = var_BC.Width
  loc_121661A:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1216641:     Else
  loc_1216649:       If (var_8A = CInt(7)) Then
  loc_12166A6:         Proc_6_69_134A630(Me.DGEmployee, Me.Txt, CInt(7), global_64, Shift, 0, 1, Nothing)
  loc_1216715:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_121673B:           Proc_6_138_106E830(Me.DGEmployee, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1216749:         End If
  loc_121674C:       Else
  loc_1216754:         If (var_8A = CInt(8)) Then
  loc_12167B1:           Proc_6_69_134A630(Me.DGAcName, Me.Txt, CInt(8), global_60, Shift, 0, 1, Nothing)
  loc_12167D0:           var_A0 = Me.RecordCount
  loc_1216820:           If ((var_A0 > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1216846:             Proc_6_138_106E830(Me.DGAcName, global_60, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1216854:           End If
  loc_1216854:         End If
  loc_1216854:       End If
  loc_1216854:     End If
  loc_1216854:   End If
  loc_1216854: End If
  loc_12168AA: If (((CBool(Me.DGEmployee.Visible) = 0) And (CBool(Me.DGAcName.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_12168CB:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_12168D4:     Call Txt_Validate(KeyCode)
  loc_12168DF:     If (var_86 = &HFF) Then
  loc_12168E2:       Exit Sub
  loc_12168E3:     End If
  loc_12168E6:     Call Proc_308_37_E7FC44(KeyCode, var_86, CInt(var_A0), CInt(((var_A8 + var_B4) + CDbl(&H19))))
  loc_12168EB:     Exit Sub
  loc_12168EC:   End If
  loc_1216901:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_121690A:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_C0))
  loc_121690F:   End If
  loc_1216917:   If (KeyCode <> CInt(0)) Then
  loc_1216924:     If (CLng(Shift) = &H26) Then
  loc_121692D:       Proc_6_76_E533C8(Shift, arg_14)
  loc_1216932:     End If
  loc_1216932:   End If
  loc_1216932: End If
  loc_1216932: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FE5E10
  'Data Table: 4C1968
  Dim arg_10 As Integer
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FE5C36: If (arg_10 = &HD) Then
  loc_FE5C3B:   arg_10 = 0
  loc_FE5C3E: End If
  loc_FE5C41: Proc_6_58_E06050(arg_10)
  loc_FE5C49: var_86 = KeyAscii
  loc_FE5C52: If Not (var_86 = 3) Then
  loc_FE5C5B:   If (var_86 = 4) Then
  loc_FE5C5E:   End If
  loc_FE5C68:   Set var_8C = Me.Txt
  loc_FE5C6E:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FE5C89:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_FE5C98: Else
  loc_FE5C9E:   If Not (var_86 = 5) Then
  loc_FE5CA7:     If (var_86 = 6) Then
  loc_FE5CAA:     End If
  loc_FE5CB4:     Set var_8C = Me.Txt
  loc_FE5CBA:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, 0)
  loc_FE5CD5:     Proc_6_42_129B55C(var_90, arg_10, 7)
  loc_FE5CE4:   Else
  loc_FE5CEC:     If (var_86 = CInt(7)) Then
  loc_FE5D0B:       If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_FE5D38:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_FE5D6A:         Proc_6_138_106E830(Me.DGEmployee, global_64, KeyAscii, Me.FGPoint)
  loc_FE5D78:       End If
  loc_FE5D7B:     Else
  loc_FE5D83:       If (var_86 = CInt(8)) Then
  loc_FE5DA2:         If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_FE5DCF:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_FE5E01:           Proc_6_138_106E830(Me.DGAcName, global_60, KeyAscii, Me.FGPoint, 0)
  loc_FE5E0F:         End If
  loc_FE5E0F:       End If
  loc_FE5E0F:     End If
  loc_FE5E0F:   End If
  loc_FE5E0F: End If
  loc_FE5E0F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F89AE0
  'Data Table: 4C1968
  Dim var_86 As Integer
  loc_F8998B: var_86 = KeyCode
  loc_F89996: If (var_86 = CInt(7)) Then
  loc_F899B5:   If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_F899C9:     var_A4 = "Name"
  loc_F899ED:     Proc_6_68_12A2818(Me.DGEmployee, Me.Txt, KeyCode, global_64)
  loc_F89A00:   End If
  loc_F89A03: Else
  loc_F89A0B:   If (var_86 = CInt(8)) Then
  loc_F89A2A:     If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F89A3E:       var_A4 = "Name"
  loc_F89A62:       Proc_6_68_12A2818(Me.DGAcName, Me.Txt, KeyCode, global_60, Shift)
  loc_F89A75:     End If
  loc_F89A78:   Else
  loc_F89A80:     If (var_86 = CInt(2)) Then
  loc_F89A9E:       If (Me.FrmList.Visible = &HFF) Then
  loc_F89ACD:         Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift, global_84)
  loc_F89ADD:       End If
  loc_F89ADD:     End If
  loc_F89ADD:   End If
  loc_F89ADD: End If
  loc_F89ADD: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46C64
  'Data Table: 4C1968
  loc_E46C42: Set var_88 = Me.Txt
  loc_E46C48: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46C56: Proc_6_73_E23294(var_8C)
  loc_E46C62: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '18A7A20
  'Data Table: 4C1968
  Dim var_8E As Integer
  Dim var_A8 As Variant
  Dim var_E4 As String
  Dim var_E0 As Variant
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_FC As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_120 As Variant
  Dim var_13C As TextBox
  Dim var_124 As String
  Dim unk_4C1970 As Connection15
  Dim var_130 As Variant
  Dim var_D8 As Variant
  Dim var_170 As Variant
  Dim var_144 As String
  Dim var_148 As String
  Dim var_15C As Recordset15
  Dim var_160 As Fields15
  Dim var_174 As Variant
  Dim var_17C As Variant
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim arg_10 As Integer
  Dim var_158 As Integer
  Dim var_140 As String
  Dim var_190 As Variant
  Dim var_1E0 As Variant
  Dim var_134 As String
  Dim var_180 As String
  Dim var_270 As Double
  Dim var_208 As String
  Dim var_224 As String
  Dim var_238 As Recordset15
  Dim var_23C As Fields15
  Dim var_240 As Variant
  Dim var_278 As Double
  Dim var_258 As Variant
  Dim var_260 As String
  Dim var_268 As Variant
  Dim var_1D0 As Variant
  Dim var_12C As Variant
  Dim var_178 As Fields15
  Dim var_204 As String
  Dim var_210 As TextBox
  Dim var_25C As String
  Dim var_284 As Double
  loc_18A5294: On Error Goto loc_18A79DA
  loc_18A529A: var_8E = Cancel
  loc_18A52A3: If Not (var_8E = 3) Then
  loc_18A52AC:   If Not (var_8E = 5) Then
  loc_18A52B5:     If (var_8E = 6) Then
  loc_18A52B8:     End If
  loc_18A52B8:   End If
  loc_18A52C2:   Set var_94 = Me.Txt
  loc_18A52C8:   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_18A52F4:   var_E4 = CStr(Format(CVar(var_98), "0.00"))
  loc_18A5302:   Set var_DC = Me.Txt
  loc_18A5308:   Call 0.Method_Txt_Validate0 (Cancel, var_E0, var_E4)
  loc_18A5310:   var_E0.Text = 1
  loc_18A532D: Else
  loc_18A5335:   If (var_8E = CInt(8)) Then
  loc_18A5387:     Set var_94 = Me.Txt
  loc_18A538D:     Call 0.Method_Txt_Validate0 (CInt(8), var_98, var_E4)
  loc_18A5395:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_18A53AD:     If (1 Or (var_E4 = vbNullString)) Then
  loc_18A53B0:       Exit Sub
  loc_18A53B1:     End If
  loc_18A53ED:     Set var_DC = Me.Txt
  loc_18A53F3:     Call 0.Method_Txt_Validate0 (CInt(8), var_E0)
  loc_18A53FB:     var_E0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18A542E:     var_98 = Me.Fields.Item("Code")
  loc_18A543F:     var_E4 = CStr(var_98.Value)
  loc_18A544D:     Set var_DC = Me.Txt
  loc_18A5453:     Call 0.Method_Txt_Validate0 (CInt(8), var_E0)
  loc_18A545B:     var_E0.Tag = var_E4
  loc_18A5474:   Else
  loc_18A547C:     If (var_8E = CInt(7)) Then
  loc_18A54B3:       var_EC = Me.BOF
  loc_18A54CE:       Set var_94 = Me.Txt
  loc_18A54D4:       Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4)
  loc_18A54DC:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (var_EC = &HFF))) = var_98.Text
  loc_18A54F4:       If (var_8E Or (var_E4 = vbNullString)) Then
  loc_18A54F7:         Exit Sub
  loc_18A54F8:       End If
  loc_18A5534:       Set var_DC = Me.Txt
  loc_18A553A:       Call 0.Method_Txt_Validate0 (CInt(7), var_E0)
  loc_18A5542:       var_E0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18A5594:       Set var_DC = Me.Txt
  loc_18A559A:       Call 0.Method_Txt_Validate0 (CInt(7), var_E0)
  loc_18A55A2:       var_E0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_18A55D5:       var_98 = Me.Fields.Item("Department")
  loc_18A55DD:       var_A8 = var_98.Value
  loc_18A55E5:       var_FC = " - "
  loc_18A55EA:       var_C8 = (var_A8 + var_FC)
  loc_18A560B:       var_E0 = Me.Fields.Item("Designation")
  loc_18A561B:       var_11C = ("0.00" + var_E0.Value)
  loc_18A562D:       Me.LblEmpRef.Caption = CStr(var_11C)
  loc_18A565B:       Set var_94 = Me.Txt
  loc_18A5661:       Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_18A567C:       Set var_138 = Me.Txt
  loc_18A5682:       Call 0.Method_Txt_Validate0 (CInt(7), var_13C)
  loc_18A5695:       var_FC = 0
  loc_18A56C2:       unk_4C1970.Execute "Select Joining_date from employee where code='" & var_98.Tag & "'", var_A8, -1
  loc_18A56CA:       var_DC = var_DC.Fields
  loc_18A56D2:       var_FC = var_E0.Item(var_E0)
  loc_18A56DA:       var_120 = var_120.Value
  loc_18A56F0:       Set var_12C = Me.Txt
  loc_18A56F6:       Call 0.Method_Txt_Validate0 (CInt(1), var_130, var_134)
  loc_18A56FE:       var_C8 = var_130.Text
  loc_18A570D:       var_D8 = (var_C8 > CDate(CDate(var_134)))
  loc_18A5717:       var_170 = 0
  loc_18A5744:       unk_4C1970.Execute "Select Resign_date from employee where code='" & var_13C.Tag & "'", var_11C, -1
  loc_18A574C:       var_15C = var_15C.Fields
  loc_18A5754:       var_170 = var_160.Item(var_160)
  loc_18A575C:       var_174 = var_174.Value
  loc_18A5772:       Set var_178 = Me.Txt
  loc_18A5778:       Call 0.Method_Txt_Validate0 (CInt(1), var_17C, var_180)
  loc_18A578F:       var_1B0 = (var_17C.Text < CDate(CDate(var_180)))
  loc_18A5793:       var_1C0 = var_D8 Or var_1B0
  loc_18A57D6:       If CBool(var_1C0) Then
  loc_18A57EC:         var_A8 = "Invalid Date For This Employee"
  loc_18A57F2:         MsgBox(var_A8, &H40, var_C8, var_D8, var_11C)
  loc_18A5804:         arg_10 = &HFF
  loc_18A5807:       End If
  loc_18A580F:       If (MemVar_1F953B0 = "A") Then
  loc_18A5820:         Set var_94 = Me.Txt
  loc_18A5826:         Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_18A582E:         var_E4 = var_98.Tag
  loc_18A5839:         var_FC = 0
  loc_18A5866:         unk_4C1970.Execute "SELECT IIF(ISNULL(OP_Loan),0,OP_Loan) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A586E:         var_DC = var_DC.Fields
  loc_18A5876:         var_FC = var_E0.Item(var_E0)
  loc_18A587E:         var_120 = var_120.Value
  loc_18A5891:         Set var_12C = Me.Txt
  loc_18A5897:         Call 0.Method_Txt_Validate0 (CInt(7), var_130, var_134)
  loc_18A58AF:         Set var_138 = Me.Txt
  loc_18A58B5:         Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_18A58C4:         Proc_6_7_F26918(var_D8, CVar(var_13C))
  loc_18A58CF:         var_158 = 0
  loc_18A58F3:         var_11C = CVar("SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_134 & "' and v_date<= ") 'String
  loc_18A5907:         unk_4C1970.Execute CStr(var_11C & var_D8), var_1B0, -1
  loc_18A590F:         var_15C = var_15C.Fields
  loc_18A5917:         var_158 = var_160.Item(var_160)
  loc_18A591F:         var_174 = var_174.Value
  loc_18A593F:         var_1E0 = (var_130.Tag + var_1C0)
  loc_18A595D:         Set var_178 = Me.Txt
  loc_18A5963:         Call 0.Method_Txt_Validate0 (CInt(3), var_17C, CStr(Format(var_1E0, "0.00")), 1)
  loc_18A596B:         var_17C.Text = 1
  loc_18A59BA:       Else
  loc_18A59C2:         If (MemVar_1F953B0 = "S") Then
  loc_18A59D3:           Set var_94 = Me.Txt
  loc_18A59D9:           Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4)
  loc_18A59EC:           var_FC = 0
  loc_18A5A19:           unk_4C1970.Execute "SELECT ISNULL(OP_Loan,0) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A5A21:           var_DC = var_DC.Fields
  loc_18A5A29:           var_FC = var_E0.Item(var_E0)
  loc_18A5A31:           var_120 = var_120.Value
  loc_18A5A44:           Set var_12C = Me.Txt
  loc_18A5A4A:           Call 0.Method_Txt_Validate0 (CInt(7), var_130, var_134)
  loc_18A5A52:           var_1D0 = var_130.Tag
  loc_18A5A62:           Set var_138 = Me.Txt
  loc_18A5A68:           Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_18A5A77:           Proc_6_7_F26918(var_D8, CVar(var_13C))
  loc_18A5A82:           var_158 = 0
  loc_18A5AA6:           var_11C = CVar("SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_134 & "' and v_date<= ") 'String
  loc_18A5ABA:           unk_4C1970.Execute CStr(var_11C & var_D8), var_1B0, -1
  loc_18A5AC2:           var_15C = var_15C.Fields
  loc_18A5ACA:           var_158 = var_160.Item(var_160)
  loc_18A5AD2:           var_174 = var_174.Value
  loc_18A5AE6:           var_1F0 = "0.00"
  loc_18A5AF2:           var_1E0 = (var_1D0 + var_98.Tag)
  loc_18A5B10:           Set var_178 = Me.Txt
  loc_18A5B16:           Call 0.Method_Txt_Validate0 (CInt(3), var_17C, CStr(Format(var_1E0, var_1F0)), 1)
  loc_18A5B1E:           var_17C.Text = 1
  loc_18A5B6A:         End If
  loc_18A5B6A:       End If
  loc_18A5B72:       If (MemVar_1F953B0 = "A") Then
  loc_18A5B83:         Set var_94 = Me.Txt
  loc_18A5B89:         Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4)
  loc_18A5B91:         var_1C0 = var_98.Tag
  loc_18A5B99:         var_FC = 0
  loc_18A5BC6:         unk_4C1970.Execute "SELECT IIF(ISNULL(OP_Inst),0,OP_Inst) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A5BCE:         var_DC = var_DC.Fields
  loc_18A5BD6:         var_FC = var_E0.Item(var_E0)
  loc_18A5C11:         Set var_12C = Me.Txt
  loc_18A5C17:         Call 0.Method_Txt_Validate0 (CInt(5), var_130, CStr(Format(CVar(var_120), "0.00")), 1)
  loc_18A5C1F:         var_130.Text = 1
  loc_18A5C4C:       Else
  loc_18A5C54:         If (MemVar_1F953B0 = "S") Then
  loc_18A5C65:           Set var_94 = Me.Txt
  loc_18A5C6B:           Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4)
  loc_18A5C7B:           var_FC = 0
  loc_18A5CA8:           unk_4C1970.Execute "SELECT ISNULL(OP_Inst,0) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A5CB0:           var_DC = var_DC.Fields
  loc_18A5CB8:           var_FC = var_E0.Item(var_E0)
  loc_18A5CD5:           var_C8 = CVar(var_98.Tag) 'Address
  loc_18A5CDC:           var_11C = Format(var_C8, "0.00")
  loc_18A5CF3:           Set var_12C = Me.Txt
  loc_18A5CF9:           Call 0.Method_Txt_Validate0 (CInt(5), var_130, CStr(var_11C), 1)
  loc_18A5D01:           var_130.Text = 1
  loc_18A5D2B:         End If
  loc_18A5D2B:       End If
  loc_18A5D38:       Me.Bal.Caption = "Previous Balance -->"
  loc_18A5D4E:       Set var_94 = Me.Txt
  loc_18A5D54:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_E4)
  loc_18A5D5C:       var_120 = var_98.Text
  loc_18A5D73:       If (var_E4 = "Loan Return") Then
  loc_18A5D91:         If (Me.Bal.Visible = 0) Then
  loc_18A5DA0:           Me.Bal.Visible = True
  loc_18A5DA8:         End If
  loc_18A5DB0:         If (MemVar_1F953B0 = "A") Then
  loc_18A5DC1:           Set var_94 = Me.Txt
  loc_18A5DC7:           Call 0.Method_Txt_Validate0 (CInt(7), var_98)
  loc_18A5DCF:           var_E4 = var_98.Tag
  loc_18A5DE2:           Set var_12C = Me.Txt
  loc_18A5DE8:           Call 0.Method_Txt_Validate0 (CInt(7), var_130)
  loc_18A5DF0:           var_140 = var_130.Tag
  loc_18A5E00:           Set var_138 = Me.Txt
  loc_18A5E06:           Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_18A5E15:           Proc_6_7_F26918(var_11C, CVar(var_13C))
  loc_18A5E20:           var_158 = 0
  loc_18A5E44:           var_190 = CVar("SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_140 & "' and v_date<= ") 'String
  loc_18A5E58:           unk_4C1970.Execute CStr(var_190 & var_11C), var_1C0, -1
  loc_18A5E60:           var_15C = var_15C.Fields
  loc_18A5E68:           var_158 = var_160.Item(var_160)
  loc_18A5E70:           var_174 = var_174.Value
  loc_18A5E81:           var_270 = Val(CStr(var_1D0))
  loc_18A5E92:           Set var_178 = Me.Txt
  loc_18A5E98:           Call 0.Method_Txt_Validate0 (CInt(7), var_17C, var_204)
  loc_18A5EB0:           Set var_20C = Me.Txt
  loc_18A5EB6:           Call 0.Method_Txt_Validate0 (CInt(1), var_210)
  loc_18A5EC5:           Proc_6_7_F26918(var_1F0, CVar(var_210))
  loc_18A5ED0:           var_1A0 = 0
  loc_18A5EED:           var_208 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='LR') AND EMP_CODE='" & var_204
  loc_18A5F08:           unk_4C1970.Execute CStr(CVar(var_208 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A5F10:           var_238 = var_238.Fields
  loc_18A5F18:           var_1A0 = var_23C.Item(var_23C)
  loc_18A5F20:           var_240 = var_240.Value
  loc_18A5F41:           var_25C = Me.Bal.Caption
  loc_18A5F4F:           var_FC = 0
  loc_18A5F7C:           unk_4C1970.Execute "SELECT IIF(ISNULL(OP_Loan),0,OP_Loan) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A5F84:           var_DC = var_DC.Fields
  loc_18A5F8C:           var_FC = var_E0.Item(var_E0)
  loc_18A5F94:           var_120 = var_120.Value
  loc_18A5FAF:           var_260 = CStr(((Val(CStr(var_C8)) + var_17C.Tag) - Val(CStr(var_250))))
  loc_18A5FC0:           Me.Bal.Caption = var_C8 & var_260
  loc_18A6031:         Else
  loc_18A6039:           If (MemVar_1F953B0 = "S") Then
  loc_18A604A:             Set var_94 = Me.Txt
  loc_18A6050:             Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4, var_25C)
  loc_18A6058:             var_278 = var_98.Tag
  loc_18A606B:             Set var_12C = Me.Txt
  loc_18A6071:             Call 0.Method_Txt_Validate0 (CInt(7), var_130, var_140)
  loc_18A6089:             Set var_138 = Me.Txt
  loc_18A608F:             Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_18A609E:             Proc_6_7_F26918(var_11C, CVar(var_13C))
  loc_18A60A9:             var_158 = 0
  loc_18A60CD:             var_190 = CVar("SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_140 & "' and v_date<= ") 'String
  loc_18A60E1:             unk_4C1970.Execute CStr(var_190 & var_11C), var_1C0, -1
  loc_18A60E9:             var_15C = var_15C.Fields
  loc_18A60F1:             var_158 = var_160.Item(var_160)
  loc_18A60F9:             var_174 = var_174.Value
  loc_18A610A:             var_270 = Val(CStr(var_1D0))
  loc_18A611B:             Set var_178 = Me.Txt
  loc_18A6121:             Call 0.Method_Txt_Validate0 (CInt(7), var_17C, var_204, var_270)
  loc_18A6129:             var_1D0 = var_17C.Tag
  loc_18A6139:             Set var_20C = Me.Txt
  loc_18A613F:             Call 0.Method_Txt_Validate0 (CInt(1), var_210)
  loc_18A614E:             Proc_6_7_F26918(var_1F0, CVar(var_210))
  loc_18A6159:             var_1A0 = 0
  loc_18A6176:             var_208 = "SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='LR') AND EMP_CODE='" & var_204
  loc_18A6191:             unk_4C1970.Execute CStr(CVar(var_208 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A6199:             var_238 = var_238.Fields
  loc_18A61A1:             var_1A0 = var_23C.Item(var_23C)
  loc_18A61A9:             var_240 = var_240.Value
  loc_18A61CA:             var_25C = Me.Bal.Caption
  loc_18A61D8:             var_FC = 0
  loc_18A6205:             unk_4C1970.Execute "SELECT ISNULL(OP_Loan,0) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A620D:             var_DC = var_DC.Fields
  loc_18A6215:             var_FC = var_E0.Item(var_E0)
  loc_18A621D:             var_120 = var_120.Value
  loc_18A6238:             var_260 = CStr(((Val(CStr(var_C8)) + var_270) - Val(CStr(var_130.Tag))))
  loc_18A6249:             Me.Bal.Caption = var_C8 & var_260
  loc_18A62B7:           End If
  loc_18A62B7:         End If
  loc_18A62BA:       Else
  loc_18A62C8:         Set var_94 = Me.Txt
  loc_18A62CE:         Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_E4, var_25C)
  loc_18A62D6:         var_278 = var_98.Text
  loc_18A62ED:         If (var_E4 = "Advance Return") Then
  loc_18A630B:           If (Me.Bal.Visible = 0) Then
  loc_18A631A:             Me.Bal.Visible = True
  loc_18A6322:           End If
  loc_18A632A:           If (MemVar_1F953B0 = "A") Then
  loc_18A633B:             Set var_94 = Me.Txt
  loc_18A6341:             Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4)
  loc_18A635C:             Set var_12C = Me.Txt
  loc_18A6362:             Call 0.Method_Txt_Validate0 (CInt(7), var_130, var_140)
  loc_18A636A:             var_1D0 = var_130.Tag
  loc_18A637A:             Set var_138 = Me.Txt
  loc_18A6380:             Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_18A638F:             Proc_6_7_F26918(var_11C, CVar(var_13C))
  loc_18A639A:             var_158 = 0
  loc_18A63BE:             var_190 = CVar("SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE='AD' AND EMP_CODE='" & var_140 & "' and v_date<= ") 'String
  loc_18A63D2:             unk_4C1970.Execute CStr(var_190 & var_11C), var_1C0, -1
  loc_18A63DA:             var_15C = var_15C.Fields
  loc_18A63E2:             var_158 = var_160.Item(var_160)
  loc_18A63EA:             var_174 = var_174.Value
  loc_18A63FB:             var_270 = Val(CStr(var_1D0))
  loc_18A640C:             Set var_178 = Me.Txt
  loc_18A6412:             Call 0.Method_Txt_Validate0 (CInt(7), var_17C, var_204)
  loc_18A642A:             Set var_20C = Me.Txt
  loc_18A6430:             Call 0.Method_Txt_Validate0 (CInt(1), var_210)
  loc_18A643F:             Proc_6_7_F26918(var_1F0, CVar(var_210))
  loc_18A644A:             var_1A0 = 0
  loc_18A6467:             var_208 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='AR') AND EMP_CODE='" & var_204
  loc_18A6482:             unk_4C1970.Execute CStr(CVar(var_208 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A648A:             var_238 = var_238.Fields
  loc_18A6492:             var_1A0 = var_23C.Item(var_23C)
  loc_18A649A:             var_240 = var_240.Value
  loc_18A64BB:             var_25C = Me.Bal.Caption
  loc_18A64C9:             var_FC = 0
  loc_18A64F6:             unk_4C1970.Execute "SELECT IIF(ISNULL(OP_ADVANCE),0,OP_aDVANCE) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A64FE:             var_DC = var_DC.Fields
  loc_18A6506:             var_FC = var_E0.Item(var_E0)
  loc_18A650E:             var_120 = var_120.Value
  loc_18A6529:             var_260 = CStr(((Val(CStr(var_C8)) + var_17C.Tag) - Val(CStr(var_98.Tag))))
  loc_18A653A:             Me.Bal.Caption = var_C8 & var_260
  loc_18A65AB:           Else
  loc_18A65B3:             If (MemVar_1F953B0 = "S") Then
  loc_18A65C4:               Set var_94 = Me.Txt
  loc_18A65CA:               Call 0.Method_Txt_Validate0 (CInt(7), var_98, var_E4, var_25C)
  loc_18A65D2:               var_278 = var_98.Tag
  loc_18A65E5:               Set var_12C = Me.Txt
  loc_18A65EB:               Call 0.Method_Txt_Validate0 (CInt(7), var_130, var_140)
  loc_18A65F3:               var_250 = var_130.Tag
  loc_18A6603:               Set var_138 = Me.Txt
  loc_18A6609:               Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_18A6618:               Proc_6_7_F26918(var_11C, CVar(var_13C))
  loc_18A6623:               var_158 = 0
  loc_18A6640:               var_144 = "SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE='AD' AND EMP_CODE='" & var_140
  loc_18A665B:               unk_4C1970.Execute CStr(CVar(var_144 & "' and v_date<= ") & var_11C), var_1C0, -1
  loc_18A6663:               var_15C = var_15C.Fields
  loc_18A666B:               var_158 = var_160.Item(var_160)
  loc_18A6673:               var_174 = var_174.Value
  loc_18A6684:               var_270 = Val(CStr(var_1D0))
  loc_18A6695:               Set var_178 = Me.Txt
  loc_18A669B:               Call 0.Method_Txt_Validate0 (CInt(7), var_17C, var_204, var_270)
  loc_18A66A3:               var_1D0 = var_17C.Tag
  loc_18A66B3:               Set var_20C = Me.Txt
  loc_18A66B9:               Call 0.Method_Txt_Validate0 (CInt(1), var_210)
  loc_18A66C8:               Proc_6_7_F26918(var_1F0, CVar(var_210))
  loc_18A66D3:               var_1A0 = 0
  loc_18A66F0:               var_208 = "SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='AR') AND EMP_CODE='" & var_204
  loc_18A670B:               unk_4C1970.Execute CStr(CVar(var_208 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A6713:               var_238 = var_238.Fields
  loc_18A671B:               var_1A0 = var_23C.Item(var_23C)
  loc_18A6723:               var_240 = var_240.Value
  loc_18A673E:               Set var_258 = Me.Bal
  loc_18A6744:               var_25C = var_258.Caption
  loc_18A6752:               var_FC = 0
  loc_18A677F:               unk_4C1970.Execute "SELECT ISNULL(OP_ADVANCE,0) FROM EMPLOYEE WHERE CODE='" & var_E4 & "'", var_A8, -1
  loc_18A6787:               var_DC = var_DC.Fields
  loc_18A678F:               var_FC = var_E0.Item(var_E0)
  loc_18A6797:               var_120 = var_120.Value
  loc_18A67B2:               var_260 = CStr(((Val(CStr(var_C8)) + var_270) - Val(CStr(var_250))))
  loc_18A67C3:               Me.Bal.Caption = var_C8 & var_260
  loc_18A6831:             End If
  loc_18A6831:           End If
  loc_18A6831:         End If
  loc_18A6831:       End If
  loc_18A6834:     Else
  loc_18A683C:       If (var_8E = CInt(2)) Then
  loc_18A684C:         Set var_94 = Me.Txt
  loc_18A6852:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_E4, var_25C)
  loc_18A685A:         var_278 = var_98.Text
  loc_18A6871:         If (var_E4 <> vbNullString) Then
  loc_18A688C:           Set var_98 = Me.ListView.SelectedItem
  loc_18A6892:           var_E4 = var_98.Text
  loc_18A68A4:           Set var_DC = Me.Txt
  loc_18A68AA:           Call 0.Method_Txt_Validate0 (Cancel, var_E0, var_E4)
  loc_18A68B2:           var_E0.Text = var_250
  loc_18A68C8:         End If
  loc_18A68D2:         Set var_94 = Me.Txt
  loc_18A68D8:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_18A6903:         Set var_DC = Me.Txt
  loc_18A6909:         Call 0.Method_Txt_Validate0 (Cancel, var_E0, (Trim(CVar(var_98)) = "Advance"))
  loc_18A6911:         var_11C = CVar(var_E0) 'Address
  loc_18A692A:         var_1C0 = var_1D0 Or (Trim(var_11C) = "Advance Return")
  loc_18A6939:         Set var_120 = Me.Txt
  loc_18A693F:         Call 0.Method_Txt_Validate0 (CInt(2), var_12C)
  loc_18A6947:         var_1D0 = CVar(var_12C) 'Address
  loc_18A697E:         If CBool(var_1C0 Or (Trim(var_1D0) = "Loan Return")) Then
  loc_18A698F:           Set var_94 = Me.Txt
  loc_18A6995:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_18A69B6:           Set var_DC = Me.Txt
  loc_18A69BC:           Call 0.Method_Txt_Validate0 (CInt(5), var_E0, var_EC)
  loc_18A69C4:           (var_98.Visible = &HFF) = var_E0.Visible
  loc_18A69DE:           Set var_120 = Me.Txt
  loc_18A69E4:           Call 0.Method_Txt_Validate0 (CInt(6), var_12C)
  loc_18A6A07:           If ((arg_10 Or (var_EC = &HFF)) Or (var_12C.Visible = &HFF)) Then
  loc_18A6A17:             Set var_94 = Me.Txt
  loc_18A6A1D:             Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_18A6A25:             var_98.Visible = False
  loc_18A6A3E:             Set var_94 = Me.Txt
  loc_18A6A44:             Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_18A6A4C:             var_98.Visible = False
  loc_18A6A65:             Set var_94 = Me.Txt
  loc_18A6A6B:             Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_18A6A73:             var_98.Visible = False
  loc_18A6A8A:             Set var_94 = Me.Label1
  loc_18A6A90:             Call 0.Method_Txt_Validate0 (3, var_98)
  loc_18A6A98:             var_98.Visible = False
  loc_18A6AAF:             Set var_94 = Me.Label1
  loc_18A6AB5:             Call 0.Method_Txt_Validate0 (4, var_98)
  loc_18A6ABD:             var_98.Visible = False
  loc_18A6AD4:             Set var_94 = Me.Label1
  loc_18A6ADA:             Call 0.Method_Txt_Validate0 (6, var_98)
  loc_18A6AE2:             var_98.Visible = False
  loc_18A6AEE:           End If
  loc_18A6AF1:         Else
  loc_18A6AFB:           Set var_94 = Me.Txt
  loc_18A6B01:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_18A6B2A:           If (Trim(CVar(var_98)) = "Loan") Then
  loc_18A6B3B:             Set var_94 = Me.Txt
  loc_18A6B41:             Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_18A6B5B:             If (var_98.Visible = 0) Then
  loc_18A6B6B:               Set var_94 = Me.Txt
  loc_18A6B71:               Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_18A6B79:               var_98.Visible = True
  loc_18A6B92:               Set var_94 = Me.Txt
  loc_18A6B98:               Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_18A6BA0:               var_98.Visible = True
  loc_18A6BB9:               Set var_94 = Me.Txt
  loc_18A6BBF:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_18A6BC7:               var_98.Visible = True
  loc_18A6BDE:               Set var_94 = Me.Label1
  loc_18A6BE4:               Call 0.Method_Txt_Validate0 (3, var_98)
  loc_18A6BEC:               var_98.Visible = True
  loc_18A6C03:               Set var_94 = Me.Label1
  loc_18A6C09:               Call 0.Method_Txt_Validate0 (4, var_98)
  loc_18A6C11:               var_98.Visible = True
  loc_18A6C28:               Set var_94 = Me.Label1
  loc_18A6C2E:               Call 0.Method_Txt_Validate0 (6, var_98)
  loc_18A6C36:               var_98.Visible = True
  loc_18A6C42:             End If
  loc_18A6C45:           Else
  loc_18A6C47:             arg_10 = &HFF
  loc_18A6C4A:           End If
  loc_18A6C4A:         End If
  loc_18A6C50:         Call Proc_308_40_11AE700(MemVar_1F95044, var_E4)
  loc_18A6C5B:       Else
  loc_18A6C63:         If (var_8E = CInt(1)) Then
  loc_18A6C73:           Set var_94 = Me.Txt
  loc_18A6C79:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_E4)
  loc_18A6C81:           arg_10 = var_98.Text
  loc_18A6C98:           If (var_E4 = vbNullString) Then
  loc_18A6CAD:             Set var_94 = Me.Txt
  loc_18A6CB3:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_18A6CBB:             var_98.Text = CStr(MemVar_1F950EC)
  loc_18A6CCD:           Else
  loc_18A6CD8:             Set var_94 = Me.Txt
  loc_18A6CDE:             Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_18A6CFF:             Set var_E0 = Me.Txt
  loc_18A6D05:             Call 0.Method_Txt_Validate0 (CInt(1), var_120)
  loc_18A6D0D:             var_120.Text = Proc_6_33_15125B8(var_98)
  loc_18A6D20:           End If
  loc_18A6D2E:           Set var_94 = Me.Txt
  loc_18A6D34:           Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_18A6D3C:           var_E4 = var_98.Text
  loc_18A6D69:           If (Proc_6_95_EF59C0(CDate(var_E4), "Date") = 0) Then
  loc_18A6D6E:             arg_10 = &HFF
  loc_18A6D71:           End If
  loc_18A6D77:           Call Proc_308_40_11AE700(MemVar_1F95044, var_E4)
  loc_18A6D82:         Else
  loc_18A6D8A:           If (var_8E = CInt(4)) Then
  loc_18A6D97:             Set var_94 = Me.Txt
  loc_18A6D9D:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_18A6DB1:             var_C8 = "0.00"
  loc_18A6DBA:             var_A8 = CVar(var_98) 'Address
  loc_18A6DC9:             var_E4 = CStr(Format(var_A8, var_C8))
  loc_18A6DD7:             Set var_DC = Me.Txt
  loc_18A6DDD:             Call 0.Method_Txt_Validate0 (Cancel, var_E0, var_E4, 1)
  loc_18A6DE5:             var_E0.Text = 1
  loc_18A6E0D:             Set var_94 = Me.Txt
  loc_18A6E13:             Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_E4)
  loc_18A6E1B:             arg_10 = var_98.Text
  loc_18A6E32:             If (var_E4 = "Loan Return") Then
  loc_18A6E3D:               If (MemVar_1F953B0 = "A") Then
  loc_18A6E4E:                 Set var_DC = Me.Txt
  loc_18A6E54:                 Call 0.Method_Txt_Validate0 (CInt(7), var_E0)
  loc_18A6E5C:                 var_124 = var_E0.Tag
  loc_18A6E67:                 var_FC = 0
  loc_18A6E94:                 unk_4C1970.Execute "SELECT IIF(ISNULL(OP_Loan),0,OP_Loan) FROM EMPLOYEE WHERE CODE='" & var_124 & "'", var_A8, -1
  loc_18A6E9C:                 var_120 = var_120.Fields
  loc_18A6EA4:                 var_FC = var_12C.Item(var_12C)
  loc_18A6EAC:                 var_130 = var_130.Value
  loc_18A6EBD:                 var_270 = Val(CStr(var_C8))
  loc_18A6ECE:                 Set var_138 = Me.Txt
  loc_18A6ED4:                 Call 0.Method_Txt_Validate0 (CInt(7), var_13C, var_144)
  loc_18A6EEC:                 Set var_15C = Me.Txt
  loc_18A6EF2:                 Call 0.Method_Txt_Validate0 (CInt(1), var_160)
  loc_18A6EFA:                 var_D8 = CVar(var_160) 'Address
  loc_18A6F01:                 Proc_6_7_F26918(var_11C, var_D8)
  loc_18A6F0C:                 var_158 = 0
  loc_18A6F30:                 var_190 = CVar("SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_144 & "' and v_date<= ") 'String
  loc_18A6F44:                 unk_4C1970.Execute CStr(var_190 & var_11C), var_1C0, -1
  loc_18A6F4C:                 var_174 = var_174.Fields
  loc_18A6F54:                 var_158 = var_178.Item(var_178)
  loc_18A6F5C:                 var_17C = var_17C.Value
  loc_18A6F6D:                 var_278 = Val(CStr(var_1D0))
  loc_18A6F7E:                 Set var_20C = Me.Txt
  loc_18A6F84:                 Call 0.Method_Txt_Validate0 (CInt(7), var_210, var_208, var_278)
  loc_18A6F8C:                 var_1D0 = var_210.Tag
  loc_18A6F9C:                 Set var_238 = Me.Txt
  loc_18A6FA2:                 Call 0.Method_Txt_Validate0 (CInt(1), var_23C)
  loc_18A6FB1:                 Proc_6_7_F26918(var_1F0, CVar(var_23C))
  loc_18A6FBC:                 var_1A0 = 0
  loc_18A6FD9:                 var_224 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='LR') AND EMP_CODE='" & var_208
  loc_18A6FF4:                 unk_4C1970.Execute CStr(CVar(var_224 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A6FFC:                 var_240 = var_240.Fields
  loc_18A7004:                 var_1A0 = var_258.Item(var_258)
  loc_18A700C:                 var_268 = var_268.Value
  loc_18A701D:                 var_284 = Val(CStr(var_250))
  loc_18A702E:                 Set var_94 = Me.Txt
  loc_18A7034:                 Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_E4, var_284)
  loc_18A703C:                 var_250 = var_98.Text
  loc_18A70BC:                 If (CDbl(Val(var_E4)) > CDbl(((var_13C.Tag + var_278) - var_284))) Then
  loc_18A70D2:                   var_A8 = "Loan Return Amount is Greater than Actual Return Amount "
  loc_18A70D8:                   MsgBox(var_A8, &H40, var_C8, var_D8, var_11C)
  loc_18A70EA:                   arg_10 = &HFF
  loc_18A70ED:                 End If
  loc_18A70F0:               Else
  loc_18A70F8:                 If (MemVar_1F953B0 = "S") Then
  loc_18A7109:                   Set var_DC = Me.Txt
  loc_18A710F:                   Call 0.Method_Txt_Validate0 (CInt(7), var_E0, var_124)
  loc_18A7117:                   arg_10 = var_E0.Tag
  loc_18A7122:                   var_FC = 0
  loc_18A714F:                   unk_4C1970.Execute "SELECT ISNULL(OP_Loan,0) FROM EMPLOYEE WHERE CODE='" & var_124 & "'", var_A8, -1
  loc_18A7157:                   var_120 = var_120.Fields
  loc_18A715F:                   var_FC = var_12C.Item(var_12C)
  loc_18A7167:                   var_130 = var_130.Value
  loc_18A7178:                   var_270 = Val(CStr(var_C8))
  loc_18A7189:                   Set var_138 = Me.Txt
  loc_18A718F:                   Call 0.Method_Txt_Validate0 (CInt(7), var_13C, var_144, var_270)
  loc_18A7197:                   var_C8 = var_13C.Tag
  loc_18A71A7:                   Set var_15C = Me.Txt
  loc_18A71AD:                   Call 0.Method_Txt_Validate0 (CInt(1), var_160)
  loc_18A71B5:                   var_D8 = CVar(var_160) 'Address
  loc_18A71BC:                   Proc_6_7_F26918(var_11C, var_D8)
  loc_18A71C7:                   var_158 = 0
  loc_18A71EB:                   var_190 = CVar("SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_144 & "' and v_date<= ") 'String
  loc_18A71FF:                   unk_4C1970.Execute CStr(var_190 & var_11C), var_1C0, -1
  loc_18A7207:                   var_174 = var_174.Fields
  loc_18A720F:                   var_158 = var_178.Item(var_178)
  loc_18A7217:                   var_17C = var_17C.Value
  loc_18A7228:                   var_278 = Val(CStr(var_1D0))
  loc_18A7239:                   Set var_20C = Me.Txt
  loc_18A723F:                   Call 0.Method_Txt_Validate0 (CInt(7), var_210, var_208, var_278)
  loc_18A7247:                   var_1D0 = var_210.Tag
  loc_18A7257:                   Set var_238 = Me.Txt
  loc_18A725D:                   Call 0.Method_Txt_Validate0 (CInt(1), var_23C)
  loc_18A726C:                   Proc_6_7_F26918(var_1F0, CVar(var_23C))
  loc_18A7277:                   var_1A0 = 0
  loc_18A7294:                   var_224 = "SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='LR') AND EMP_CODE='" & var_208
  loc_18A72AF:                   unk_4C1970.Execute CStr(CVar(var_224 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A72B7:                   var_240 = var_240.Fields
  loc_18A72BF:                   var_1A0 = var_258.Item(var_258)
  loc_18A72C7:                   var_268 = var_268.Value
  loc_18A72D8:                   var_284 = Val(CStr(var_250))
  loc_18A72E9:                   Set var_94 = Me.Txt
  loc_18A72EF:                   Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_E4, var_284)
  loc_18A72F7:                   var_250 = var_98.Text
  loc_18A7377:                   If (CDbl(Val(var_E4)) > CDbl(((var_270 + var_278) - var_284))) Then
  loc_18A7392:                     var_A8 = "Loan Return Amount is Greater than Actual Return Amount "
  loc_18A7398:                     MsgBox(var_A8, &H40, &H40, var_D8, var_11C)
  loc_18A73AA:                     arg_10 = &HFF
  loc_18A73AD:                   End If
  loc_18A73AD:                 End If
  loc_18A73AD:               End If
  loc_18A73B0:             Else
  loc_18A73BE:               Set var_94 = Me.Txt
  loc_18A73C4:               Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_E4)
  loc_18A73CC:               arg_10 = var_98.Text
  loc_18A73E3:               If (var_E4 = "Advance Return") Then
  loc_18A73EE:                 If (MemVar_1F953B0 = "A") Then
  loc_18A73FF:                   Set var_DC = Me.Txt
  loc_18A7405:                   Call 0.Method_Txt_Validate0 (CInt(7), var_E0, var_124)
  loc_18A740D:                   var_C8 = var_E0.Tag
  loc_18A7418:                   var_FC = 0
  loc_18A7445:                   unk_4C1970.Execute "SELECT IIF(ISNULL(OP_ADVANCE),0,OP_aDVANCE) FROM EMPLOYEE WHERE CODE='" & var_124 & "'", var_A8, -1
  loc_18A744D:                   var_120 = var_120.Fields
  loc_18A7455:                   var_FC = var_12C.Item(var_12C)
  loc_18A745D:                   var_130 = var_130.Value
  loc_18A746E:                   var_270 = Val(CStr(var_C8))
  loc_18A747F:                   Set var_138 = Me.Txt
  loc_18A7485:                   Call 0.Method_Txt_Validate0 (CInt(7), var_13C, var_144)
  loc_18A749D:                   Set var_15C = Me.Txt
  loc_18A74A3:                   Call 0.Method_Txt_Validate0 (CInt(1), var_160)
  loc_18A74AB:                   var_D8 = CVar(var_160) 'Address
  loc_18A74B2:                   Proc_6_7_F26918(var_11C, var_D8)
  loc_18A74BD:                   var_158 = 0
  loc_18A74DA:                   var_148 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE='AD' AND EMP_CODE='" & var_144
  loc_18A74F5:                   unk_4C1970.Execute CStr(CVar(var_148 & "' and v_date<= ") & var_11C), var_1C0, -1
  loc_18A74FD:                   var_174 = var_174.Fields
  loc_18A7505:                   var_158 = var_178.Item(var_178)
  loc_18A750D:                   var_17C = var_17C.Value
  loc_18A751E:                   var_278 = Val(CStr(var_1D0))
  loc_18A752F:                   Set var_20C = Me.Txt
  loc_18A7535:                   Call 0.Method_Txt_Validate0 (CInt(7), var_210, var_208, var_278)
  loc_18A753D:                   var_1D0 = var_210.Tag
  loc_18A754D:                   Set var_238 = Me.Txt
  loc_18A7553:                   Call 0.Method_Txt_Validate0 (CInt(1), var_23C)
  loc_18A7562:                   Proc_6_7_F26918(var_1F0, CVar(var_23C))
  loc_18A756D:                   var_1A0 = 0
  loc_18A758A:                   var_224 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='AR') AND EMP_CODE='" & var_208
  loc_18A75A5:                   unk_4C1970.Execute CStr(CVar(var_224 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A75AD:                   var_240 = var_240.Fields
  loc_18A75B5:                   var_1A0 = var_258.Item(var_258)
  loc_18A75BD:                   var_268 = var_268.Value
  loc_18A75CE:                   var_284 = Val(CStr(var_250))
  loc_18A75DF:                   Set var_94 = Me.Txt
  loc_18A75E5:                   Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_E4, var_284)
  loc_18A75ED:                   var_250 = var_98.Text
  loc_18A766D:                   If (CDbl(Val(var_E4)) > CDbl(((var_13C.Tag + var_278) - var_284))) Then
  loc_18A7683:                     var_A8 = "Advance Return Amount is Greater than Actual Return Amount"
  loc_18A7689:                     MsgBox(var_A8, &H40, var_C8, var_D8, var_11C)
  loc_18A769B:                     arg_10 = &HFF
  loc_18A769E:                   End If
  loc_18A76A1:                 Else
  loc_18A76A9:                   If (MemVar_1F953B0 = "S") Then
  loc_18A76BA:                     Set var_DC = Me.Txt
  loc_18A76C0:                     Call 0.Method_Txt_Validate0 (CInt(7), var_E0, var_124)
  loc_18A76C8:                     arg_10 = var_E0.Tag
  loc_18A76D3:                     var_FC = 0
  loc_18A7700:                     unk_4C1970.Execute "SELECT ISNULL(OP_ADVANCE,0) FROM EMPLOYEE WHERE CODE='" & var_124 & "'", var_A8, -1
  loc_18A7708:                     var_120 = var_120.Fields
  loc_18A7710:                     var_FC = var_12C.Item(var_12C)
  loc_18A7718:                     var_130 = var_130.Value
  loc_18A7729:                     var_270 = Val(CStr(var_C8))
  loc_18A773A:                     Set var_138 = Me.Txt
  loc_18A7740:                     Call 0.Method_Txt_Validate0 (CInt(7), var_13C, var_144, var_270)
  loc_18A7758:                     Set var_15C = Me.Txt
  loc_18A775E:                     Call 0.Method_Txt_Validate0 (CInt(1), var_160)
  loc_18A7766:                     var_D8 = CVar(var_160) 'Address
  loc_18A776D:                     Proc_6_7_F26918(var_11C, var_D8)
  loc_18A7778:                     var_158 = 0
  loc_18A779C:                     var_190 = CVar("SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE='AD' AND EMP_CODE='" & var_144 & "' and v_date<= ") 'String
  loc_18A77B0:                     unk_4C1970.Execute CStr(var_190 & var_11C), var_1C0, -1
  loc_18A77B8:                     var_174 = var_174.Fields
  loc_18A77C0:                     var_158 = var_178.Item(var_178)
  loc_18A77C8:                     var_17C = var_17C.Value
  loc_18A77D9:                     var_278 = Val(CStr(var_1D0))
  loc_18A77EA:                     Set var_20C = Me.Txt
  loc_18A77F0:                     Call 0.Method_Txt_Validate0 (CInt(7), var_210, var_208, var_278)
  loc_18A77F8:                     var_1D0 = var_210.Tag
  loc_18A7808:                     Set var_238 = Me.Txt
  loc_18A780E:                     Call 0.Method_Txt_Validate0 (CInt(1), var_23C)
  loc_18A781D:                     Proc_6_7_F26918(var_1F0, CVar(var_23C))
  loc_18A7828:                     var_1A0 = 0
  loc_18A7845:                     var_224 = "SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='AR') AND EMP_CODE='" & var_208
  loc_18A7860:                     unk_4C1970.Execute CStr(CVar(var_224 & "' and v_date<= ") & var_1F0), var_234, -1
  loc_18A7868:                     var_240 = var_240.Fields
  loc_18A7870:                     var_1A0 = var_258.Item(var_258)
  loc_18A7878:                     var_268 = var_268.Value
  loc_18A7889:                     var_284 = Val(CStr(var_250))
  loc_18A789A:                     Set var_94 = Me.Txt
  loc_18A78A0:                     Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_E4, var_284)
  loc_18A78A8:                     var_250 = var_98.Text
  loc_18A7928:                     If (CDbl(Val(var_E4)) > CDbl(((var_270 + var_278) - var_284))) Then
  loc_18A7944:                       MsgBox("Advance Return Amount is Greater than Actual Return Amount", &H40, var_13C.Tag, var_D8, var_11C)
  loc_18A7956:                       arg_10 = &HFF
  loc_18A7959:                     End If
  loc_18A7959:                   End If
  loc_18A7959:                 End If
  loc_18A7959:               End If
  loc_18A7959:             End If
  loc_18A795C:           Else
  loc_18A7964:             If (var_8E = CInt(6)) Then
  loc_18A7971:               Set var_94 = Me.Txt
  loc_18A7977:               Call 0.Method_Txt_Validate0 (Cancel, var_98, arg_10)
  loc_18A798B:               var_C8 = "0.00"
  loc_18A799B:               var_D8 = Format(CVar(var_98), var_C8)
  loc_18A79A3:               var_E4 = CStr(var_D8)
  loc_18A79B1:               Set var_DC = Me.Txt
  loc_18A79B7:               Call 0.Method_Txt_Validate0 (Cancel, var_E0, var_E4, 1)
  loc_18A79BF:               var_E0.Text = 1
  loc_18A79D9:             End If
  loc_18A79D9:           End If
  loc_18A79D9:         End If
  loc_18A79D9:       End If
  loc_18A79D9:     End If
  loc_18A79D9:   End If
  loc_18A79D9: End If
  loc_18A79D9: Exit Sub
  loc_18A79DA: ' Referenced from: 18A5294
  loc_18A79E2: Set var_94 = Err()
  loc_18A79E8: Call 0.Method_arg_2C (var_E4, var_C8)
  loc_18A7A09: MsgBox(CVar(var_E4), &H10, "Information", var_D8, var_11C)
  loc_18A7A1C: Exit Sub
  loc_18A7A1D: Exit Sub
End Sub

Private Sub Form_Load() '10483CC
  'Data Table: 4C1968
  Dim var_98 As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim unk_4C1970 As Connection15
  Dim var_AC As Label
  loc_1048168: On Error Goto loc_10483C5
  loc_1048175: Set var_AC = Me.TopCtrl1
  loc_104817B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_1048189: Call 0.Method_arg_50 (var_B0)
  loc_1048199: Set var_AC = Me.TopCtrl1
  loc_104819F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(CVar(var_B0))
  loc_10481B4: Set global_56 = New 
  loc_10481C9: Me.TopCtrl1.CursorLocation = 3
  loc_10481EC: var_B0 = "SELECT LOAN.SR_NO AS SEARCHCODE,LOAN.*,Employee.Name as EmpName,SG.Name as AcName,IsNull(Depart.Name,'') As Department,Desig.Name As Designation FROM ((LOAN Left join Employee on Employee.Code=Loan.Emp_Code) Left Join SubGroup SG on SG.SubCode=Loan.AC_Code) Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation WHERE Loan.site_code='" & MemVar_1F95070
  loc_10481F3: var_C0 = CVar(var_B0 & "' and MTH_YEAR IS NULL OR MTH_YEAR=' ' ORDER BY SR_NO") 'String
  loc_1048200: Me.Recordset15.Open var_C0, CVar(MemVar_1F95044), 2
  loc_1048217: CVarUnk
  loc_104821C: VerifyVarObj
  loc_1048228: LateIdStAd
  loc_104824C: unk_4C1970.Execute "SELECT SUBCODE as Code, NAME FROM SUBGROUP WHERE NATURE IN ('Cash','Bank') ORDER BY NAME", var_C0, -1
  loc_1048274: CVarUnk
  loc_1048279: VerifyVarObj
  loc_1048285: LateIdStAd
  loc_10482A7: var_B0 = "Select Employee.Code,Employee.Name,IsNull(Depart.Name,'') As Department,Desig.Name As Designation From Employee Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation Where Employee.Site_Code='" & MemVar_1F95078
  loc_10482B7: unk_4C1970.Execute var_B0 & "' Order by Employee.Name", var_C0, -1
  loc_10482E6: CVarUnk
  loc_10482EB: VerifyVarObj
  loc_10482F1: Set var_AC = Me.DGEmployee
  loc_10482F7: LateIdStAd
  loc_104832C: Call Proc_308_36_EC8494(Proc_5_1_100EC1C("INI", Me, global_56, Me, Me.DGAcName, Me, Me), Me.DBGrid1, Me, Me)
  loc_1048337: Call Proc_308_38_F8CBE4(global_56, 3)
  loc_104833C: Call Proc_308_35_15DE748(-1)
  loc_1048350: Me.LblUser.Left = CDbl(13500)
  loc_1048367: Me.LblUser.Top = CDbl(7800)
  loc_104837E: Me.LblLDt.Top = CDbl(8160)
  loc_1048395: Me.LblLDt.Left = CDbl(13500)
  loc_10483A4: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10483AD: var_98 = CVar(CLng(MemVar_1F951B4)) 'Long
  loc_10483B6: Set var_AC = Me.DBGrid1
  loc_10483C4: Exit Sub
  loc_10483C5: ' Referenced from: 1048168
  loc_10483C5: Proc_6_60_E63754(DBGrid1.DispID_FFFFFE0B)
  loc_10483CA: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3708
  'Data Table: 4C1968
  Dim var_8C As Label
  loc_ED3666: Call 0.Method_arg_50 (var_88)
  loc_ED3678: Me.LblFormCaption.Caption = var_88
  loc_ED3691: Me.LblFormCaption.Left = CDbl(0)
  loc_ED369D: Set var_A0 = Me.TopCtrl1
  loc_ED36A3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED36B0: Set var_8C = Me.TopCtrl1
  loc_ED36B6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED36D0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED36EB: Call 0.Method_arg_100 (var_B8)
  loc_ED36FD: Me.LblFormCaption.Width = var_B8
  loc_ED3705: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E53AF4
  'Data Table: 4C1968
  loc_E53AC7: Set global_56 = Nothing
  loc_E53AD9: Set global_60 = Nothing
  loc_E53AEB: Set global_64 = Nothing
  loc_E53AF2: Exit Sub
End Sub

Private Sub Form_Activate() 'E0FE20
  'Data Table: 4C1968
  loc_E0FE11: If (global_54 = &HFF) Then
  loc_E0FE19:   global_54 = 0
  loc_E0FE1C: End If
  loc_E0FE1C: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E01270
  'Data Table: 4C1968
  loc_E0126C: Exit Sub
  loc_E0126D: Set var_A8 = &HFF
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29C94
  'Data Table: 4C1968
  loc_E29C6C: On Error Goto loc_E29C8C
  loc_E29C83: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E29C8B: Exit Sub
  loc_E29C8C: ' Referenced from: E29C6C
  loc_E29C8C: Proc_6_60_E63754(Shift)
  loc_E29C91: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_1A 'F685BC
  'Data Table: 4C1968
  Dim var_8C As String
  Dim unk_4C1970 As Connection15
  loc_F684A8: On Error Goto loc_F68575
  loc_F684C5: If (Me.Recordset15.RecordCount > 0) Then
  loc_F684DC:   var_8C = "SELECT LOAN.SR_NO AS SEARCHCODE,LOAN.*,Employee.Name as EmpName,SG.Name as AcName,IsNull(Depart.Name,'') As Department,Desig.Name As Designation FROM ((LOAN Left join Employee on Employee.Code=Loan.Emp_Code) Left Join SubGroup SG on SG.SubCode=Loan.AC_Code) Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation WHERE Loan.site_code='" & MemVar_1F95070
  loc_F684F7:   Set var_90 = Me.DBGrid1
  loc_F68528:   unk_4C1970.Execute var_8C & "' and MTH_YEAR IS NULL OR MTH_YEAR=' ' ORDER BY " & DBGrid1.DispID_69.Item(CVar(KeyCode)).DataField, var_E4, -1
  loc_F68539:   Set global_56 = var_E8
  loc_F6856A:   Me.Recordset15.Requery -1
  loc_F6856F:   Call Proc_308_35_15DE748(var_E8)
  loc_F68574: End If
  loc_F68574: Exit Sub
  loc_F68575: ' Referenced from: F684A8
  loc_F6857D: Set var_90 = Err()
  loc_F68583: Call 0.Method_arg_2C (var_8C)
  loc_F685A4: MsgBox(CVar(var_8C), &H10, "Information", var_FC, var_11C)
  loc_F685B7: Exit Sub
  loc_F685B8: Exit Sub
  loc_F685B9: StAryRecCopy
End Sub

Private Sub DBGrid1_UnknownEvent_1D 'E0D7E0
  'Data Table: 4C1968
  loc_E0D7D5: If ((KeyCode = &H26) Or (KeyCode = &H28)) Then
  loc_E0D7D8:   Call Proc_308_35_15DE748()
  loc_E0D7DD: End If
  loc_E0D7DD: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F89C6C
  'Data Table: 4C1968
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F89B28: On Error Goto loc_F89C06
  loc_F89B2F: Set var_A4 = Me.ListView
  loc_F89B79: Set var_BC = Me.Txt
  loc_F89B7F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F89B87: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F89BB3: Me.FrmList.Visible = False
  loc_F89BCD: var_A0 = CStr(Me.ListView.Tag)
  loc_F89BD5: var_C8 = Val(var_A0)
  loc_F89BE3: Set var_9C = Me.Txt
  loc_F89BE9: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F89BF1: var_A4.SetFocus
  loc_F89C05: Exit Sub
  loc_F89C06: ' Referenced from: F89B28
  loc_F89C0E: Set var_88 = Err()
  loc_F89C14: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F89C25: If (var_CC <> 0) Then
  loc_F89C30:   Set var_88 = Err()
  loc_F89C36:   Call 0.Method_arg_2C (var_A0)
  loc_F89C57:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F89C6A: End If
  loc_F89C6A: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_9 'F451B4
  'Data Table: 4C1968
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F450AB: Me.DGEmployee.Visible = False
  loc_F450CA: If (Me.RecordCount > 0) Then
  loc_F45109:   Set var_B4 = Me.Txt
  loc_F4510F:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(7), var_B8)
  loc_F45117:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4514A:   var_B0 = Me.Fields.Item("Name")
  loc_F45169:   Set var_B4 = Me.Txt
  loc_F4516F:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(7), var_B8)
  loc_F45177:   var_B8.Text = CStr(var_B0.Value)
  loc_F4518D: End If
  loc_F45198: Set var_A8 = Me.Txt
  loc_F4519E: Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(7))
  loc_F451A6: var_B0.SetFocus
  loc_F451B2: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_1F 'E74134
  'Data Table: 4C1968
  loc_E740F2: Proc_6_153_E91D24(Me.DGEmployee, arg_14)
  loc_E74109: Set var_8C = Me.FGPoint
  loc_E74125: Proc_6_138_106E830(Me.DGEmployee, global_64, CInt(7))
  loc_E74133: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EE305C
  'Data Table: 4C1968
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_EE2F9C: On Error Goto loc_EE3056
  loc_EE2FC6: Call Proc_308_36_EC8494(Proc_5_1_100EC1C("ADD", Me))
  loc_EE2FDE: Me.LblUser.Caption = vbNullString
  loc_EE2FF3: Me.LblLDt.Caption = vbNullString
  loc_EE2FFB: Call Proc_308_34_ED0A50(global_56)
  loc_EE3013: Set var_8C = Me.Txt
  loc_EE3019: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_EE3021: var_94.Text = CStr(MemVar_1F950EC)
  loc_EE303B: Set var_8C = Me.Txt
  loc_EE3041: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EE3049: var_94.SetFocus
  loc_EE3055: Exit Sub
  loc_EE3056: ' Referenced from: EE2F9C
  loc_EE3056: Proc_6_60_E63754(var_94)
  loc_EE305B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EAB160
  'Data Table: 4C1968
  loc_EAB0E0: On Error Goto loc_EAB15A
  loc_EAB11A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EAB11D:   Call Proc_308_39_EF4488()
  loc_EAB149:   Call Proc_308_36_EC8494(Proc_5_1_100EC1C("INI", Me))
  loc_EAB154:   Call Proc_308_35_15DE748(global_56)
  loc_EAB159: End If
  loc_EAB159: Exit Sub
  loc_EAB15A: ' Referenced from: EAB0E0
  loc_EAB15A: Proc_6_60_E63754()
  loc_EAB15F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1087E18
  'Data Table: 4C1968
  Dim unk_4C1970 As Connection15
  Dim var_12C As TextBox
  Dim var_134 As String
  Dim var_130 As String
  Dim var_140 As String
  Dim var_13C As Fields15
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_C0 As Variant
  loc_1087B9C: On Error Goto loc_1087DC8
  loc_1087BD6: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_100, var_120) = 6) Then
  loc_1087BE2:   unk_4C1970.BeginTrans var_124
  loc_1087BFB:   var_94 = Me.Recordset15.Bookmark 'Variant
  loc_1087C1D:   Set var_128 = Me.Txt
  loc_1087C23:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_12C, var_130, "DELETE FROM LEDGER WHERE DOCID='")
  loc_1087C2B:   var_C0 = var_12C.Text
  loc_1087C34:   var_134 = -1 & var_130
  loc_1087C44:   unk_4C1970.Execute var_134 & "'", var_13C, 
  loc_1087C72:   var_130 = "DELETE FROM LOAN WHERE site_code='" & MemVar_1F95070
  loc_1087C8A:   Set var_128 = Me.Txt
  loc_1087C90:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_12C, var_134, var_130 & "' and Sr_No=")
  loc_1087C98:   var_158 = var_12C.Text
  loc_1087CA1:   var_140 = -1 & var_134
  loc_1087CDB:   var_100 = CVar(var_140 & " AND V_Type='") & Me.Recordset15.Fields.Item("V_Type").Value 
  loc_1087CE4:   var_120 = var_100 & "'" 
  loc_1087CF2:   unk_4C1970.Execute CStr(var_120), var_15C, 
  loc_1087D24:   unk_4C1970.CommitTrans
  loc_1087D37:   Me.Recordset15.Requery -1
  loc_1087D5A:   If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_1087D6A:     Me.Recordset15.Bookmark = var_94
  loc_1087D72:   Else
  loc_1087D89:     If (global_56.EOF = 0) Then
  loc_1087D95:       Me.Recordset15.MoveLast
  loc_1087D9A:     End If
  loc_1087D9A:   End If
  loc_1087D9A:   Call Proc_308_35_15DE748()
  loc_1087DBF:   Proc_5_0_1107AD0(&HFF, Me)
  loc_1087DC7: End If
  loc_1087DC7: Exit Sub
  loc_1087DC8: ' Referenced from: 1087B9C
  loc_1087DCE: unk_4C1970.RollbackTrans
  loc_1087DDB: Set var_128 = Err()
  loc_1087DE1: Call 0.Method_arg_2C (var_130, global_56)
  loc_1087E02: MsgBox(CVar(var_130), &H10, " Deletion Message", var_100, var_120)
  loc_1087E15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F2F400
  'Data Table: 4C1968
  Dim var_8C As Variant
  Dim var_B4 As TextBox
  loc_F2F2E8: On Error Goto loc_F2F3F9
  loc_F2F312: Call Proc_308_36_EC8494(Proc_5_1_100EC1C("EDIT", Me))
  loc_F2F32C: Me.DBGrid1.Enabled = False
  loc_F2F341: Set var_8C = Me.Txt
  loc_F2F347: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B4)
  loc_F2F34F: var_B4.Enabled = False
  loc_F2F368: Set var_8C = Me.Txt
  loc_F2F36E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_B4)
  loc_F2F376: var_B4.Enabled = False
  loc_F2F38F: Set var_8C = Me.Txt
  loc_F2F395: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_B4)
  loc_F2F39D: var_B4.Enabled = False
  loc_F2F3B4: Set var_8C = Me.Txt
  loc_F2F3BA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_B4)
  loc_F2F3C2: var_B4.SetFocus
  loc_F2F3DB: Me.LblUser.Caption = vbNullString
  loc_F2F3F0: Me.LblLDt.Caption = vbNullString
  loc_F2F3F8: Exit Sub
  loc_F2F3F9: ' Referenced from: F2F2E8
  loc_F2F3F9: Proc_6_60_E63754(global_56)
  loc_F2F3FE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C8C8
  'Data Table: 4C1968
  loc_E1C8BD: Me.Global.Unload Me
  loc_E1C8C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F045B8
  'Data Table: 4C1968
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F044E0: On Error Goto loc_F0457B
  loc_F044FD: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F04506:   var_B8 = "Information"
  loc_F0450B:   var_C8 = var_B8
  loc_F04521:   MsgBox("No Records To Search.", &H40, var_C8, var_E8, var_108)
  loc_F04531:   Exit Sub
  loc_F04532: End If
  loc_F04539: var_10C = "SELECT LOAN.SR_NO AS SEARCHCODE,LOAN.SR_NO AS SRNO,LOAN.V_TYPE AS VTYPE,cast(LOAN.V_DATE as VarChar(11)) as V_Date ,EMPLOYEE.NAME AS ENAME,cast(LOAN.AMOUNT as VarChar(11)) AS AMOUNT,cast(LOAN.INSTALLMENT as Varchar(11)) as Installment ,LOAN.REMARK FROM LOAN LEFT JOIN EMPLOYEE ON LOAN.EMP_CODE=EMPLOYEE.CODE WHERE Loan.site_code='" & MemVar_1F95070
  loc_F04540: MemVar_1F950E4 = var_10C & "' and MTH_YEAR IS NULL OR MTH_YEAR=' '"
  loc_F0454D: MemVar_1F95120 = Me
  loc_F04554: var_10C = "2000,2000,2000,2000"
  loc_F0455A: Proc_6_126_F1C850(var_10C)
  loc_F04575: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F0457A: Exit Sub
  loc_F0457B: ' Referenced from: F044E0
  loc_F04583: Set var_110 = Err()
  loc_F04589: Call 0.Method_arg_2C (var_10C)
  loc_F045A2: MsgBox(CVar(var_10C), &H10, var_C8, var_E8, var_108)
  loc_F045B5: Exit Sub
  loc_F045B6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E44738
  'Data Table: 4C1968
  loc_E44728: Proc_5_0_1107AD0(&HFF, Me)
  loc_E44730: Call Proc_308_35_15DE748(global_56)
  loc_E44735: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E446D4
  'Data Table: 4C1968
  loc_E446C4: Proc_5_0_1107AD0(&HFF, Me)
  loc_E446CC: Call Proc_308_35_15DE748(global_56)
  loc_E446D1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E44670
  'Data Table: 4C1968
  loc_E44660: Proc_5_0_1107AD0(&HFF, Me)
  loc_E44668: Call Proc_308_35_15DE748(global_56)
  loc_E4466D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E4460C
  'Data Table: 4C1968
  loc_E445FC: Proc_5_0_1107AD0(&HFF, Me)
  loc_E44604: Call Proc_308_35_15DE748(global_56)
  loc_E44609: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E73354
  'Data Table: 4C1968
  loc_E73313: Call 0.Method_arg_1C (MemVar_1F953B4 & "\HRLoanRect.RPT", var_98)
  loc_E7332B: Set var_A0 = var_9C 
  loc_E7333C: Call Proc_308_33_10490E4(Me, var_A0)
  loc_E73347: MemVar_1F951E8 = var_A0
  loc_E73352: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1996F50
  'Data Table: 4C1968
  Dim var_B4 As Variant
  Dim var_AC As Variant
  Dim var_D0 As Variant
  Dim var_8C As Integer
  Dim unk_4C1970 As Connection15
  Dim var_B8 As String
  Dim var_A8 As Fields15
  Dim var_C0 As String
  Dim var_158 As String
  Dim var_238 As Double
  Dim var_168 As TextBox
  Dim var_174 As Variant
  Dim var_15C As String
  Dim var_208 As Variant
  Dim var_164 As String
  Dim var_100 As Variant
  Dim var_E0 As Variant
  Dim var_140 As Variant
  Dim var_1D8 As Variant
  Dim var_BC As Label
  Dim var_258 As Variant
  Dim var_230 As TextBox
  Dim var_298 As Variant
  Dim var_2D0 As TextBox
  Dim var_314 As Variant
  Dim var_380 As TextBox
  Dim var_3A8 As String
  Dim var_438 As Variant
  Dim var_88 As Recordset15
  Dim var_47C As Fields15
  Dim var_490 As Field20
  Dim var_120 As Variant
  Dim var_198 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_22C As Variant
  Dim var_2F0 As Variant
  Dim var_3C8 As Variant
  Dim var_4B0 As Variant
  Dim var_528 As Variant
  Dim var_328 As TextBox
  Dim var_4D4 As TextBox
  Dim var_178 As String
  Dim var_570 As TextBox
  Dim var_56C As Variant
  Dim var_268 As Variant
  Dim var_2A8 As Variant
  Dim var_348 As Variant
  Dim var_5A8 As Variant
  Dim var_16C As String
  Dim var_B0 As Label
  Dim var_574 As String
  loc_1994144: On Error Goto loc_1996F35
  loc_1994152: Set var_A8 = Me.Txt
  loc_1994158: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_199416B: Set var_B0 = Me.Label1
  loc_1994171: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_19941A4: If (Proc_6_27_EA61EC(var_AC, var_B4.Caption) = 0) Then
  loc_19941A7:   Exit Sub
  loc_19941A8: End If
  loc_19941B3: Set var_A8 = Me.Txt
  loc_19941B9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_19941CC: Set var_B0 = Me.Label1
  loc_19941D2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B4)
  loc_1994205: If (Proc_6_27_EA61EC(var_AC, var_B4.Caption) = 0) Then
  loc_1994208:   Exit Sub
  loc_1994209: End If
  loc_1994214: Set var_A8 = Me.Txt
  loc_199421A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_199422D: Set var_B0 = Me.Label1
  loc_1994233: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B4)
  loc_1994266: If (Proc_6_27_EA61EC(var_AC, var_B4.Caption) = 0) Then
  loc_1994269:   Exit Sub
  loc_199426A: End If
  loc_1994275: Set var_A8 = Me.Txt
  loc_199427B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_199428E: Set var_B0 = Me.Label1
  loc_1994294: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_B4)
  loc_19942C7: If (Proc_6_27_EA61EC(var_AC, var_B4.Caption) = 0) Then
  loc_19942CA:   Exit Sub
  loc_19942CB: End If
  loc_19942D6: Set var_A8 = Me.Txt
  loc_19942DC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_AC)
  loc_19942EF: Set var_B0 = Me.Label1
  loc_19942F5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B4)
  loc_1994328: If (Proc_6_27_EA61EC(var_AC, var_B4.Caption) = 0) Then
  loc_199432B:   Exit Sub
  loc_199432C: End If
  loc_199433A: Set var_A8 = Me.Txt
  loc_1994340: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1994364: If (CDbl(Val(var_AC.Text)) <= CDbl(0)) Then
  loc_1994380:   MsgBox("Nil Details Can't Be Saved", &H40, var_100, var_120, var_140)
  loc_1994390:   Exit Sub
  loc_1994391: End If
  loc_199439F: unk_4C1970.BeginTrans var_144
  loc_19943A8: Set var_A8 = Me.TopCtrl1
  loc_19943AE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C(&HFF)
  loc_19943B6: var_B8 = CStr(var_AC)
  loc_19943C7: If (var_B8 <> "Add") Then
  loc_19943EA:   var_AC = Me.TopCtrl1.Fields.Item("V_Type")
  loc_19943FA:   var_154 = var_AC.Value 'Variant
  loc_1994410:   If (var_154 = "ADE") Then
  loc_1994416:     var_98 = "ADE"
  loc_199441C:   Else
  loc_1994427:     If (var_154 = "LO") Then
  loc_199442D:       var_98 = "LO"
  loc_1994433:     Else
  loc_199443E:       If (var_154 = "AR1") Then
  loc_1994444:         var_98 = "AR1"
  loc_199444A:       Else
  loc_1994455:         If (var_154 = "LR") Then
  loc_199445B:           var_98 = "LR"
  loc_199445E:         End If
  loc_199445E:       End If
  loc_199445E:     End If
  loc_199445E:   End If
  loc_199447C:   Set var_A8 = Me.Txt
  loc_1994482:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, "DELETE FROM LEDGER WHERE dOCID= '")
  loc_199448A:   var_E0 = var_AC.Text
  loc_1994493:   var_C0 = -1 & var_B8
  loc_19944A3:   unk_4C1970.Execute var_C0 & "'", var_B0, 
  loc_19944CB:   Set var_A8 = Me.Txt
  loc_19944D1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_19944E6:   var_238 = Val(var_AC.Text)
  loc_19944F7:   Set var_B0 = Me.Txt
  loc_19944FD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B4)
  loc_1994518:   Set var_BC = Me.Txt
  loc_199451E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168)
  loc_1994539:   Set var_170 = Me.Txt
  loc_199453F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174)
  loc_1994547:   var_178 = var_174.Text
  loc_1994571:   var_120 = IIf((var_178 = "Advance Return"), "AR1", "LR")
  loc_199457E:   var_140 = "LO"
  loc_19945C0:   Proc_6_17_EAAE40(var_1E8, IIf((var_B4.Text = "Advance"), "ADE", IIf((var_168.Text = "Loan"), var_140, var_120)))
  loc_19945D9:   var_B8 = "DELETE FROM LOAN WHERE site_code='" & MemVar_1F95070
  loc_19945E0:   var_158 = var_B8 & "' and Sr_No="
  loc_1994607:   unk_4C1970.Execute CStr(CVar(var_158 & CStr(var_238) & " AND V_Type=") & var_1E8), var_22C, -1
  loc_1994655: End If
  loc_1994663: Set var_A8 = Me.Txt
  loc_1994669: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_AC, var_B8)
  loc_1994671: var_230 = var_AC.Text
  loc_199468D: If (CDbl(Val(var_B8)) > CDbl(0)) Then
  loc_19946AE:   Set var_A8 = Me.Txt
  loc_19946B4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_AC, var_B8, "UPDATE EMPLOYEE SET OP_Inst=")
  loc_19946BC:   var_E0 = var_AC.Text
  loc_19946C5:   var_C0 = -1 & var_B8
  loc_19946CC:   var_15C = var_AC.Text & " WHERE CODE='"
  loc_19946DD:   Set var_B0 = Me.Txt
  loc_19946E3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B4, var_158)
  loc_19946EB:   var_15C = var_B4.Tag
  loc_1994704:   unk_4C1970.Execute var_BC & var_158 & "'", var_238, 
  loc_1994728: End If
  loc_1994745: Proc_6_17_EAAE40(var_E0, MemVar_1F95078, "Select AdvanceAc,Loan_Ac from Enviro WHERE LOGSITE_CODE=")
  loc_199474D: var_100 = var_120 & var_E0 
  loc_199475B: unk_4C1970.Execute CStr(var_100), -1, var_A8
  loc_1994766: Set var_A4 = var_A8
  loc_1994792: var_AC = Me.Recordset15.Fields.Item("AdvanceAc")
  loc_19947A3: var_B8 = Proc_6_38_E69628(CVar(var_AC))
  loc_19947B4: If (var_B8 = vbNullString) Then
  loc_19947D0:   MsgBox("Set Advance A/C in Enviro", &H40, var_100, var_120, var_140)
  loc_19947E0:   Exit Sub
  loc_19947E1: End If
  loc_19947FF: Set var_A8 = Me.Txt
  loc_1994805: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC, var_B8, "SELECT CODE,AC_CODE,LoanAc FROM EMPLOYEE WHERE CODE='")
  loc_199480D: var_E0 = var_AC.Tag
  loc_1994816: var_C0 = -1 & var_B8
  loc_1994826: unk_4C1970.Execute var_AC.Text & "'", var_B0, 
  loc_1994831: Set var_88 = var_B0
  loc_1994857: Set var_A8 = Me.Txt
  loc_199485D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_1994878: Set var_B0 = Me.Txt
  loc_199487E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B4)
  loc_1994899: Set var_BC = Me.Txt
  loc_199489F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168)
  loc_1994915: var_1D8 = IIf((var_AC.Text = "Advance"), "ADE", IIf((var_B4.Text = "Loan"), "LO", IIf((var_168.Text = "Advance Return"), "AR1", "LR")))
  loc_199491E: var_98 = CStr(var_1D8)
  loc_199495B: Set var_A8 = Me.Txt
  loc_1994961: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1994970: var_100 = Trim(CVar(var_AC))
  loc_199498D: Set var_B0 = Me.Txt
  loc_1994993: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B4)
  loc_19949CC: If CBool((var_100 = "Advance") Or (Trim(CVar(var_B4)) = "Loan")) Then
  loc_19949DD:   Set var_A8 = Me.Txt
  loc_19949E3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_1994A02:   If (var_AC.Text = "Loan") Then
  loc_1994A13:     Set var_A8 = Me.Txt
  loc_1994A19:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC)
  loc_1994A21:     var_B8 = var_AC.Text
  loc_1994A31:     Set var_B0 = Me.Txt
  loc_1994A37:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1994A46:     Proc_6_39_E7D3A0(var_100, CVar(var_B4))
  loc_1994A68:     Set var_168 = Me.Txt
  loc_1994A6E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_1994A7D:     Proc_6_7_F26918(var_268, CVar(var_170))
  loc_1994A90:     Set var_174 = Me.Txt
  loc_1994A96:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_230)
  loc_1994A9E:     var_164 = var_230.Tag
  loc_1994AAC:     Proc_6_17_EAAE40(var_2A8, CVar(var_164))
  loc_1994ABF:     Set var_2CC = Me.Txt
  loc_1994AC5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0)
  loc_1994ACD:     var_16C = var_2D0.Text
  loc_1994ADA:     var_238 = Val(var_16C)
  loc_1994AF7:     var_328 = Me.Recordset15.Fields.Item("Loan_AC")
  loc_1994B06:     Proc_6_17_EAAE40(var_348, CVar(var_328))
  loc_1994B19:     Set var_37C = Me.Txt
  loc_1994B1F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380, var_178)
  loc_1994B5A:     var_574 = Replace(var_178, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_1994B8E:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_1994B96:     var_438 = CVar(Proc_6_14_EF402C(var_AC)) 'String
  loc_1994B9C:     Proc_183_8_EB1634(var_448)
  loc_1994BD3:     Set var_4D4 = Me.Txt
  loc_1994BD9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_1994C16:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_1994C60:     var_208 = CVar(var_C0 & "',1,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) & "','" 
  loc_1994CC1:     var_3C8 = var_208 & CVar(MemVar_1F95078) & "'," & var_268 & "," & var_2A8 & "," & CVar(var_380.Text) & ",0," & var_348 & ",'" & CVar(var_578) 
  loc_1994D04:     var_528 = var_3C8 & "','" & CVar(MemVar_1F950C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_1994D1B:     unk_4C1970.Execute CStr(var_528 & "')"), var_56C, -1
  loc_1994DCB:     Set var_A8 = Me.Txt
  loc_1994DD1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, var_570)
  loc_1994DD9:     1 = var_AC.Text
  loc_1994DE9:     Set var_B0 = Me.Txt
  loc_1994DEF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1994DFE:     Proc_6_39_E7D3A0(var_100, CVar(var_B4))
  loc_1994E20:     Set var_168 = Me.Txt
  loc_1994E26:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_1994E35:     Proc_6_7_F26918(var_268, CVar(var_170))
  loc_1994E54:     var_230 = Me.Txt.Fields.Item("Loan_AC")
  loc_1994E63:     Proc_6_17_EAAE40(var_2A8, CVar(var_230))
  loc_1994E76:     Set var_2CC = Me.Txt
  loc_1994E7C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0, var_164)
  loc_1994E84:     1 = var_2D0.Text
  loc_1994E91:     var_238 = Val(var_164)
  loc_1994EA2:     Set var_314 = Me.Txt
  loc_1994EA8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_328, var_16C)
  loc_1994EBE:     Proc_6_17_EAAE40(var_348, CVar(var_16C))
  loc_1994ED1:     Set var_37C = Me.Txt
  loc_1994ED7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380)
  loc_1994EDF:     var_178 = var_380.Text
  loc_1994F12:     var_574 = Replace(var_178, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_1994F46:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_1994F4E:     var_438 = CVar(Proc_6_14_EF402C(var_438)) 'String
  loc_1994F54:     Proc_183_8_EB1634(var_448)
  loc_1994F8B:     Set var_4D4 = Me.Txt
  loc_1994F91:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_1994FCE:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_1995018:     var_208 = CVar(var_C0 & "',2,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) & "','" 
  loc_1995079:     var_3C8 = var_208 & CVar(MemVar_1F95078) & "'," & var_268 & "," & var_2A8 & ",0," & CVar(var_328.Tag) & "," & var_348 & ",'" & CVar(var_578) 
  loc_19950BC:     var_528 = var_3C8 & "','" & CVar(MemVar_1F950C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_19950D3:     unk_4C1970.Execute CStr(var_528 & "')"), var_56C, -1
  loc_1995178:   Else
  loc_1995186:     Set var_A8 = Me.Txt
  loc_199518C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, var_570)
  loc_1995194:     1 = var_AC.Text
  loc_19951A4:     Set var_B0 = Me.Txt
  loc_19951AA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_19951B9:     Proc_6_39_E7D3A0(var_100, CVar(var_B4))
  loc_19951DB:     Set var_168 = Me.Txt
  loc_19951E1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_19951F0:     Proc_6_7_F26918(var_268, CVar(var_170))
  loc_1995203:     Set var_174 = Me.Txt
  loc_1995209:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_230, var_164)
  loc_1995211:     1 = var_230.Tag
  loc_199521F:     Proc_6_17_EAAE40(var_2A8, CVar(var_164))
  loc_1995232:     Set var_2CC = Me.Txt
  loc_1995238:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0)
  loc_1995240:     var_16C = var_2D0.Text
  loc_199524D:     var_238 = Val(var_16C)
  loc_199526A:     var_328 = Me.Recordset15.Fields.Item("AdvanceAc")
  loc_1995279:     Proc_6_17_EAAE40(var_348, CVar(var_328))
  loc_199528C:     Set var_37C = Me.Txt
  loc_1995292:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380, var_178)
  loc_19952CD:     var_574 = Replace(var_178, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_1995301:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_1995309:     var_438 = CVar(Proc_6_14_EF402C(var_438)) 'String
  loc_199530F:     Proc_183_8_EB1634(var_448)
  loc_1995346:     Set var_4D4 = Me.Txt
  loc_199534C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_1995389:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_19953D3:     var_208 = CVar(var_C0 & "',1,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) & "','" 
  loc_1995434:     var_3C8 = var_208 & CVar(MemVar_1F95078) & "'," & var_268 & "," & var_2A8 & "," & CVar(var_380.Text) & ",0," & var_348 & ",'" & CVar(var_578) 
  loc_1995477:     var_528 = var_3C8 & "','" & CVar(MemVar_1F950C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_199548E:     unk_4C1970.Execute CStr(var_528 & "')"), var_56C, -1
  loc_199553E:     Set var_A8 = Me.Txt
  loc_1995544:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, var_570)
  loc_199554C:     1 = var_AC.Text
  loc_199555C:     Set var_B0 = Me.Txt
  loc_1995562:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1995571:     Proc_6_39_E7D3A0(var_100, CVar(var_B4))
  loc_1995593:     Set var_168 = Me.Txt
  loc_1995599:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_19955A8:     Proc_6_7_F26918(var_268, CVar(var_170))
  loc_19955D6:     Proc_6_17_EAAE40(var_2A8, CVar(Me.Txt.Fields.Item("AdvanceAc")))
  loc_19955E9:     Set var_2CC = Me.Txt
  loc_19955EF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0, var_164)
  loc_19955F7:     1 = var_2D0.Text
  loc_1995604:     var_238 = Val(var_164)
  loc_1995615:     Set var_314 = Me.Txt
  loc_199561B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_328, var_16C)
  loc_1995631:     Proc_6_17_EAAE40(var_348, CVar(var_16C))
  loc_1995644:     Set var_37C = Me.Txt
  loc_199564A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380)
  loc_1995685:     var_574 = Replace(var_380.Text, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_19956B9:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_19956C1:     var_438 = CVar(Proc_6_14_EF402C(var_438)) 'String
  loc_19956C7:     Proc_183_8_EB1634(var_448)
  loc_19956FE:     Set var_4D4 = Me.Txt
  loc_1995704:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_1995741:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_199578B:     var_208 = CVar(var_C0 & "',2,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) & "','" 
  loc_19957EC:     var_3C8 = var_208 & CVar(MemVar_1F95078) & "'," & var_268 & "," & var_2A8 & ",0," & CVar(var_328.Tag) & "," & var_348 & ",'" & CVar(var_578) 
  loc_199582F:     var_528 = var_3C8 & "','" & CVar(MemVar_1F950C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_1995846:     unk_4C1970.Execute CStr(var_528 & "')"), var_56C, -1
  loc_19958E8:   End If
  loc_19958EB: Else
  loc_19958F9:   Set var_A8 = Me.Txt
  loc_19958FF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC, var_B8, var_570)
  loc_1995907:   1 = var_AC.Text
  loc_199591E:   If (var_B8 = "Loan Return") Then
  loc_199592F:     Set var_A8 = Me.Txt
  loc_1995935:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8)
  loc_199593D:     1 = var_AC.Text
  loc_199594D:     Set var_B0 = Me.Txt
  loc_1995953:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1995962:     Proc_6_39_E7D3A0(var_100, CVar(var_B4))
  loc_1995984:     Set var_168 = Me.Txt
  loc_199598A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_1995999:     Proc_6_7_F26918(var_268, CVar(var_170))
  loc_19959B8:     var_230 = Me.Txt.Fields.Item("Loan_AC")
  loc_19959C7:     Proc_6_17_EAAE40(var_2A8, CVar(var_230))
  loc_19959DA:     Set var_2CC = Me.Txt
  loc_19959E0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0)
  loc_19959E8:     var_164 = var_2D0.Text
  loc_19959F5:     var_238 = Val(var_164)
  loc_1995A06:     Set var_314 = Me.Txt
  loc_1995A0C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_328, var_16C)
  loc_1995A22:     Proc_6_17_EAAE40(var_348, CVar(var_16C))
  loc_1995A35:     Set var_37C = Me.Txt
  loc_1995A3B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380)
  loc_1995A43:     var_178 = var_380.Text
  loc_1995A76:     var_574 = Replace(var_178, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_1995AAA:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_1995AB2:     var_438 = CVar(Proc_6_14_EF402C(var_438)) 'String
  loc_1995AB8:     Proc_183_8_EB1634(var_448)
  loc_1995AEF:     Set var_4D4 = Me.Txt
  loc_1995AF5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_1995B32:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_1995B7C:     var_208 = CVar(var_C0 & "',1,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) & "','" 
  loc_1995BDD:     var_3C8 = var_208 & CVar(MemVar_1F95078) & "'," & var_268 & "," & var_2A8 & "," & CVar(var_328.Tag) & ",0," & var_348 & ",'" & CVar(var_578) 
  loc_1995C20:     var_528 = var_3C8 & "','" & CVar(MemVar_1F950C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_1995C37:     unk_4C1970.Execute CStr(var_528 & "')"), var_56C, -1
  loc_1995CE7:     Set var_A8 = Me.Txt
  loc_1995CED:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, var_570)
  loc_1995CF5:     1 = var_AC.Text
  loc_1995D05:     Set var_B0 = Me.Txt
  loc_1995D0B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_1995D1A:     Proc_6_39_E7D3A0(var_100, CVar(var_B4))
  loc_1995D3C:     Set var_168 = Me.Txt
  loc_1995D42:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_1995D51:     Proc_6_7_F26918(var_268, CVar(var_170))
  loc_1995D64:     Set var_174 = Me.Txt
  loc_1995D6A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_230, var_164)
  loc_1995D72:     1 = var_230.Tag
  loc_1995D80:     Proc_6_17_EAAE40(var_2A8, CVar(var_164))
  loc_1995D93:     Set var_2CC = Me.Txt
  loc_1995D99:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0)
  loc_1995DA1:     var_16C = var_2D0.Text
  loc_1995DAE:     var_238 = Val(var_16C)
  loc_1995DCB:     var_328 = Me.Recordset15.Fields.Item("Loan_AC")
  loc_1995DDA:     Proc_6_17_EAAE40(var_348, CVar(var_328))
  loc_1995DED:     Set var_37C = Me.Txt
  loc_1995DF3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380, var_178)
  loc_1995E2E:     var_574 = Replace(var_178, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_1995E62:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_1995E6A:     var_438 = CVar(Proc_6_14_EF402C(var_438)) 'String
  loc_1995E70:     Proc_183_8_EB1634(var_448)
  loc_1995EA7:     Set var_4D4 = Me.Txt
  loc_1995EAD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_1995EEA:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_1995F34:     var_208 = CVar(var_C0 & "',2,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) & "','" 
  loc_1995F95:     var_3C8 = var_208 & CVar(MemVar_1F95078) & "'," & var_268 & "," & var_2A8 & ",0," & CVar(var_380.Text) & "," & var_348 & ",'" & CVar(var_578) 
  loc_1995FD8:     var_528 = var_3C8 & "','" & CVar(MemVar_1F950C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_1995FEF:     unk_4C1970.Execute CStr(var_528 & "')"), var_56C, -1
  loc_1996094:   Else
  loc_19960A2:     Set var_A8 = Me.Txt
  loc_19960A8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, var_570)
  loc_19960B0:     1 = var_AC.Text
  loc_19960C0:     Set var_B0 = Me.Txt
  loc_19960C6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_19960D5:     Proc_6_39_E7D3A0(var_100, CVar(var_B4))
  loc_19960F7:     Set var_168 = Me.Txt
  loc_19960FD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_199610C:     Proc_6_7_F26918(var_268, CVar(var_170))
  loc_199612B:     var_230 = Me.Txt.Fields.Item("AdvanceAc")
  loc_199613A:     Proc_6_17_EAAE40(var_2A8, CVar(var_230))
  loc_199614D:     Set var_2CC = Me.Txt
  loc_1996153:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0, var_164)
  loc_199615B:     1 = var_2D0.Text
  loc_1996168:     var_238 = Val(var_164)
  loc_1996179:     Set var_314 = Me.Txt
  loc_199617F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_328, var_16C)
  loc_1996195:     Proc_6_17_EAAE40(var_348, CVar(var_16C))
  loc_19961A8:     Set var_37C = Me.Txt
  loc_19961AE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380)
  loc_19961B6:     var_178 = var_380.Text
  loc_19961E9:     var_574 = Replace(var_178, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_199621D:     var_578 = Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)
  loc_1996225:     var_438 = CVar(Proc_6_14_EF402C(var_438)) 'String
  loc_199622B:     Proc_183_8_EB1634(var_448)
  loc_1996262:     Set var_4D4 = Me.Txt
  loc_1996268:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_19962A5:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_19962EF:     var_208 = CVar(var_C0 & "',1,'" & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F95070) & "','" 
  loc_1996350:     var_3C8 = var_208 & CVar(MemVar_1F95078) & "'," & var_268 & "," & var_2A8 & "," & CVar(var_328.Tag) & ",0," & var_348 & ",'" & CVar(var_578) 
  loc_1996393:     var_528 = var_3C8 & "','" & CVar(MemVar_1F950C8) & "'," & var_448 & ",'A','" & var_88.Fields.Item("Code").Value & "','" & Format(CVar(var_4D8), "MMMyyyy") 
  loc_19963AA:     unk_4C1970.Execute CStr(var_528 & "')"), var_56C, -1
  loc_199645A:     Set var_A8 = Me.Txt
  loc_1996460:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B8, var_570)
  loc_1996468:     1 = var_AC.Text
  loc_1996478:     Set var_B0 = Me.Txt
  loc_199647E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B4)
  loc_199648D:     Proc_6_39_E7D3A0(var_100, CVar(var_B4))
  loc_19964AF:     Set var_168 = Me.Txt
  loc_19964B5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170)
  loc_19964BD:     var_258 = CVar(var_170) 'Address
  loc_19964C4:     Proc_6_7_F26918(var_268, var_258)
  loc_19964D7:     Set var_174 = Me.Txt
  loc_19964DD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_230, var_164)
  loc_19964E5:     1 = var_230.Tag
  loc_19964ED:     var_298 = CVar(var_164) 'String
  loc_19964F3:     Proc_6_17_EAAE40(var_2A8, var_298)
  loc_1996506:     Set var_2CC = Me.Txt
  loc_199650C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0)
  loc_1996514:     var_16C = var_2D0.Text
  loc_1996521:     var_238 = Val(var_16C)
  loc_1996536:     var_314 = Me.Recordset15.Fields
  loc_199654D:     Proc_6_17_EAAE40(var_348, CVar(var_314.Item("AdvanceAc")))
  loc_1996560:     Set var_37C = Me.Txt
  loc_1996566:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_380, var_178)
  loc_199657B:     var_390 = Chr(&HA)
  loc_19965A1:     var_574 = Replace(var_178, CStr(var_390), vbNullString, 1, -1, 0)
  loc_19965C6:     var_3A8 = CStr(Chr(&HD))
  loc_19965D5:     var_578 = Replace(var_574, var_3A8, vbNullString, 1, -1, 0)
  loc_19965DD:     var_438 = CVar(Proc_6_14_EF402C(var_438)) 'String
  loc_19965E3:     Proc_183_8_EB1634(var_448)
  loc_19965FA:     var_47C = var_88.Fields
  loc_199661A:     Set var_4D4 = Me.Txt
  loc_1996620:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4D8)
  loc_199665D:     var_C0 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,LogSite_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,EMP_CODE,Mth_Year) VALUES ('" & var_B8
  loc_1996664:     var_158 = var_C0 & "',2,'"
  loc_1996694:     var_1E8 = CVar(var_158 & var_98 & "',") & var_100 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_19966E5:     var_2F0 = var_1E8 & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "'," & var_268 & "," & var_2A8 & ",0," & CVar(var_380.Text) 
  loc_199673B:     var_4B0 = var_2F0 & "," & var_348 & ",'" & CVar(var_578) & "','" & CVar(MemVar_1F950C8) & "'," & var_448 & ",'A','" & var_47C.Item("Code").Value 
  loc_1996762:     unk_4C1970.Execute CStr(var_4B0 & "','" & Format(CVar(var_4D8), "MMMyyyy") & "')"), var_56C, -1
  loc_1996804:   End If
  loc_1996804: End If
  loc_1996812: Set var_A8 = Me.Txt
  loc_1996818: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B8, var_570)
  loc_1996820: 1 = var_AC.Text
  loc_1996833: Set var_B0 = Me.Txt
  loc_1996839: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B4, var_158)
  loc_1996841: 1 = var_B4.Text
  loc_1996854: Set var_BC = Me.Txt
  loc_199685A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168)
  loc_1996875: Set var_170 = Me.Txt
  loc_199687B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174)
  loc_199688D: var_100 = "LR"
  loc_19968F1: var_1D8 = IIf((var_158 = "Advance"), "ADE", IIf((var_168.Text = "Loan"), "LO", IIf((var_174.Text = "Advance Return"), "AR1", var_100)))
  loc_19968FC: Proc_6_17_EAAE40(var_1E8, var_1D8)
  loc_199690C: Set var_230 = Me.Txt
  loc_1996912: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_2CC)
  loc_1996921: Proc_6_7_F26918(var_258, CVar(var_2CC))
  loc_1996934: Set var_2D0 = Me.Txt
  loc_199693A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_314)
  loc_1996942: var_164 = var_314.Tag
  loc_1996950: Proc_6_17_EAAE40(var_298, CVar(var_164))
  loc_1996960: Set var_328 = Me.Txt
  loc_1996966: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_37C)
  loc_1996975: Proc_6_39_E7D3A0(var_2F0, CVar(var_37C))
  loc_19969A5: Set var_380 = Me.Txt
  loc_19969AB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_47C, 1)
  loc_19969BA: Proc_6_39_E7D3A0(var_390, CVar(var_47C))
  loc_19969ED: Set var_490 = Me.Txt
  loc_19969F3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_4D4, var_16C, 1)
  loc_19969FB: 1 = var_4D4.Text
  loc_1996A2E: var_574 = Replace(var_16C, CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_1996A62: var_438 = CVar(Replace(var_574, CStr(Chr(&HD)), vbNullString, 1, -1, 0)) 'String
  loc_1996A68: Proc_6_17_EAAE40(var_448, var_438)
  loc_1996A7B: Set var_4D8 = Me.Txt
  loc_1996A81: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_570, var_3A8)
  loc_1996A89: 1 = var_570.Tag
  loc_1996A97: Proc_6_17_EAAE40(var_4B0, CVar(var_3A8))
  loc_1996AA7: Proc_183_8_EB1634(var_588)
  loc_1996AC0: var_C0 = "INSERT INTO LOAN (Sr_No,V_Type,V_Date,Emp_Code,Amount,Installment,Remark,AC_Code,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES (" & var_B8
  loc_1996B0D: var_3C8 = CVar(var_C0 & ",") & var_1E8 & "," & var_258 & "," & var_298 & "," & Format(var_2F0, "0.00") & "," & Format(var_390, "0.00") 
  loc_1996B6C: var_5A8 = var_3C8 & "," & var_448 & "," & var_4B0 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_588 & ",'A','" 
  loc_1996B8D: unk_4C1970.Execute CStr(var_5A8 & CVar(MemVar_1F95078) & "')"), var_608, -1
  loc_1996C47: Set var_A8 = Me.TopCtrl1
  loc_1996C4D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C(var_60C)
  loc_1996C66: If (CStr(CVar(Proc_6_14_EF402C(var_438))) = "Add") Then
  loc_1996C7D:   var_B8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1996CB1:   Set var_A8 = Me.Txt
  loc_1996CB7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_164, CVar(var_B8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & var_98 & "' And VP.Date_From<="))
  loc_1996CBF:   var_1C8 = var_AC.Text
  loc_1996CCD:   Proc_6_7_F26918(var_100, CVar(var_164))
  loc_1996CD5:   var_140 = -1 & var_100 
  loc_1996CDE:   var_198 = "LO" & " Order By VP.Date_From DESC" 
  loc_1996CEC:   unk_4C1970.Execute CStr(var_198), var_B0, 
  loc_1996CF7:   Set var_88 = var_B0
  loc_1996D35:   If (var_88.RecordCount > 0) Then
  loc_1996D46:     Set var_A8 = Me.Txt
  loc_1996D4C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1996D54:     var_B8 = var_AC.Text
  loc_1996D61:     var_238 = Val(var_B8)
  loc_1996D79:     var_D0 = "Date_From"
  loc_1996D9C:     Proc_6_7_F26918(var_100, CVar(var_88.Fields.Item(var_D0)))
  loc_1996DCF:     var_164 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_238) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1996DF9:     var_120 = CVar(var_164 & MemVar_1F95078 & "') and PREFIX='" & Me.LblVPrefix.Caption & "' AND V_Type='" & var_98 & "' and Date_From=") 'String
  loc_1996E0D:     unk_4C1970.Execute CStr(var_120 & var_100), var_198, -1
  loc_1996E49:   End If
  loc_1996E49: End If
  loc_1996E4F: unk_4C1970.CommitTrans
  loc_1996E62: Set var_A8 = Me.Txt
  loc_1996E68: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B8)
  loc_1996E70: var_168 = var_AC.Text
  loc_1996E84: var_8C = 0
  loc_1996E95: Me.Recordset15.Requery -1
  loc_1996EC2: Me.Recordset15.Find "SearchCode ='" & "SearchCode ='" & var_B8 & "'", 0, 1
  loc_1996ED2: Set var_A8 = Me.TopCtrl1
  loc_1996ED8: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C(var_D0)
  loc_1996EF1: If (CStr(var_8C) = "Add") Then
  loc_1996EF4:   Call TopCtrl1_UnknownEvent_A()
  loc_1996EF9:   Exit Sub
  loc_1996EFA: End If
  loc_1996F21: Call Proc_308_36_EC8494(Proc_5_1_100EC1C("INI", Me), global_56)
  loc_1996F31: Set var_88 = Nothing
  loc_1996F34: Exit Sub
  loc_1996F35: ' Referenced from: 1994144
  loc_1996F3B: If (var_8C = &HFF) Then
  loc_1996F44:   unk_4C1970.RollbackTrans
  loc_1996F49: End If
  loc_1996F49: Proc_6_60_E63754(var_238)
  loc_1996F4E: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E657D4
  'Data Table: 4C1968
  loc_E657A4: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_E657A7:   Call DGEmployee_UnknownEvent_9()
  loc_E657AC: End If
  loc_E657C8: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_E657CB:   Call DGAcName_UnknownEvent_9()
  loc_E657D0: End If
  loc_E657D0: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E9A8A0
  'Data Table: 4C1968
  loc_E9A826: On Error Goto loc_E9A899
  loc_E9A832: Me.Recordset15.MoveFirst
  loc_E9A85F: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9A88B: Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_E9A893: Call Proc_308_35_15DE748(0)
  loc_E9A898: Exit Sub
  loc_E9A899: ' Referenced from: E9A826
  loc_E9A899: Proc_6_60_E63754(var_A0)
  loc_E9A89E: Exit Sub
  loc_E9A89F: Exit Sub
End Sub

Public Sub Proc_308_33_10490E4
  'Data Table: 4C1968
  Dim var_E0 As String
  Dim var_AC As Fields15
  Dim var_C0 As Field20
  Dim var_F0 As Variant
  Dim var_100 As String
  Dim var_110 As Variant
  Dim var_16C As String
  Dim unk_4C19B9 As Connection15
  Dim var_94 As Recordset15
  Dim var_19A As Integer
  loc_1048EB0: On Error Goto loc_104909F
  loc_1048EC0: var_E0 = "SELECT VOUCHER_TYPE.DESCRIPTION,NAME,LEDGER.V_Type,LEDGER.V_No,LEDGER.v_Prefix,LEDGER.V_Date,LEDGER.V_SNo,LEDGER.AmtCr,LEDGER.AmtDr,LEDGER.Chq_No,LEDGER.Chq_Date,LEDGER.Narration,LEDGERM.Narration AS NARRMAIN,LEDGERM.DocId,LEDGERM.v_Prefix,LEDGER.U_NAME UserName FROM ((LEDGER LEFT JOIN LEDGERM ON LEDGERM.DOCID=LEDGER.DOCID)LEFT JOIN SUBGROUP ON  SUBGROUP.SUBCODE = LEDGER.SUBCODE ) INNER JOIN VOUCHER_TYPE ON (VOUCHER_TYPE.V_tYPE=LEDGER.V_tYPE AND VOUCHER_TYPE.LOGSITE_CODE=LEDGER.LOGSITE_CODE)  WHERE LEDGER.V_TYPE='"
  loc_1048EF9: var_100 = "' AND LEDGER.V_NO="
  loc_1048EFE: var_110 = var_E0 & Me.Recordset15.Fields.Item("V_Type").Value & var_100 
  loc_1048F2A: var_138 = Me.Recordset15.Fields.Item("SearchCode").Value
  loc_1048F49: unk_4C19B9.Execute CStr(var_110 & var_138 & " order by ledger.v_no,LEDGER.V_SNo"), var_18C, -1
  loc_1048F54: Set var_94 = var_190
  loc_1048F8C: If (var_94.RecordCount = 0) Then
  loc_1048F92:   var_F0 = .CAPTION
  loc_1048FB2:   MsgBox("No record found to Print", &H40, var_F0, var_110, var_138)
  loc_1048FC2:   Exit Sub
  loc_1048FC3: End If
  loc_1048FCC: var_16C = MemVar_1F953B4 & "\HRLoanRect.TTX"
  loc_1048FD9: Set var_AC = var_94 
  loc_1048FE5: var_19A = CreateFieldDefFile(var_AC, var_16C, &HFF)
  loc_1048FF8: var_A8 = CVar(var_19A) 'Variant
  loc_1049029: Call 0.Method_arg_64 (var_AC, CVar(var_AC), var_E0, var_100)
  loc_1049031: Call 0.Method_arg_2C (var_19A, var_F0)
  loc_104903F: Call 0.Method_arg_150 (var_190)
  loc_1049053: Set var_C0 = Nothing
  loc_104906E: Set var_AC = arg_10 
  loc_104907A: Proc_6_99_1484404(var_AC, 0, CStr(.CAPTION))
  loc_1049085: MemVar_1F951E8 = var_AC
  loc_104909B: Set var_94 = Nothing
  loc_104909E: Exit Sub
  loc_104909F: ' Referenced from: 1048EB0
  loc_10490A7: Set var_AC = Err()
  loc_10490AD: Call 0.Method_arg_2C (var_16C, &HFF)
  loc_10490D0: MsgBox(CVar(var_16C), &H10, .CAPTION, var_110, var_138)
  loc_10490E3: Exit Sub
End Sub

Public Sub Proc_308_34_ED0A50
  'Data Table: 4C1968
  Dim var_98 As TextBox
  Dim var_8C As Label
  loc_ED09AA: Set var_8C = Me.Txt
  loc_ED09B0: Call 0.Method_Proc_308_34_ED0A50C (var_8E, var_86)
  loc_ED09C0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ED09D6:   Set var_8C = Me.Txt
  loc_ED09DC:   Call 0.Method_Proc_308_34_ED0A500 (CInt(var_86), var_98)
  loc_ED09E4:   var_98.Text = vbNullString
  loc_ED0A00:   Set var_8C = Me.Txt
  loc_ED0A06:   Call 0.Method_Proc_308_34_ED0A500 (CInt(var_86), var_98)
  loc_ED0A0E:   var_98.Tag = vbNullString
  loc_ED0A1D: Next var_92 'Byte
  loc_ED0A30: Me.LblVPrefix.Caption = vbNullString
  loc_ED0A45: Me.LblEmpRef.Caption = vbNullString
  loc_ED0A4D: Exit Sub
End Sub

Public Sub Proc_308_35_15DE748
  'Data Table: 4C1968
  Dim var_90 As Variant
  Dim var_BC As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_E8 As Variant
  Dim var_10C As Variant
  Dim var_EC As String
  Dim var_C0 As String
  Dim var_190 As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1DC As Variant
  Dim var_AC As Variant
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_1E0 As String
  Dim var_1E4 As String
  Dim var_14C As Variant
  Dim var_11C As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim unk_4C1970 As Connection15
  Dim var_8C As Recordset15
  Dim var_1A4 As Variant
  Dim var_1F8 As Variant
  Dim var_220 As Variant
  Dim var_224 As Variant
  Dim var_244 As Variant
  Dim var_24C As TextBox
  Dim var_20C As Variant
  Dim var_210 As Fields15
  loc_15DD42C: On Error Goto loc_15DE740
  loc_15DD44A: If (Me.Bal.Visible = &HFF) Then
  loc_15DD459:   Me.Bal.Visible = False
  loc_15DD461: End If
  loc_15DD47B: If (global_56.RecordCount > 0) Then
  loc_15DD52D:   var_18C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_15DD578:   Me.LblUser.Caption = CStr(var_18C & CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_Name")))))
  loc_15DD5FE:   var_D8 = Me.Recordset15.Fields.Item("U_AE")
  loc_15DD65F:   var_18C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_D8)) = "E"), "Last Update : ", "entdt : "))
  loc_15DD695:   var_1C4 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_EntDt")))) 'String
  loc_15DD6AA:   Me.LblLDt.Caption = CStr(var_18C & var_1C4)
  loc_15DD712:   var_1F4 = Me.Recordset15.Fields.Item("V_Type").Value 'Variant
  loc_15DD728:   If (var_1F4 = "ADE") Then
  loc_15DD72E:     var_88 = "Advance"
  loc_15DD734:   Else
  loc_15DD73F:     If (var_1F4 = "LO") Then
  loc_15DD745:       var_88 = "Loan"
  loc_15DD74B:     Else
  loc_15DD756:       If (var_1F4 = "AR1") Then
  loc_15DD75C:         var_88 = "Advance Return"
  loc_15DD762:       Else
  loc_15DD76D:         If (var_1F4 = "LR") Then
  loc_15DD773:           var_88 = "Loan Return"
  loc_15DD776:         End If
  loc_15DD776:       End If
  loc_15DD776:     End If
  loc_15DD776:   End If
  loc_15DD7B5:   Set var_C4 = Me.Txt
  loc_15DD7BB:   Call 0.Method_Proc_308_35_15DE7480 (CInt(0), var_D8)
  loc_15DD7C3:   var_D8.Text = CStr(Me.Recordset15.Fields.Item("SR_no").Value)
  loc_15DD7F9:   var_AC = Me.Recordset15.Fields.Item("V_DATE")
  loc_15DD818:   Set var_C4 = Me.Txt
  loc_15DD81E:   Call 0.Method_Proc_308_35_15DE7480 (CInt(1), var_D8)
  loc_15DD826:   var_D8.Text = CStr(var_AC.Value)
  loc_15DD84A:   Set var_90 = Me.Txt
  loc_15DD850:   Call 0.Method_Proc_308_35_15DE7480 (CInt(2), var_AC)
  loc_15DD858:   var_AC.Text = var_88
  loc_15DD894:   var_D4 = " - "
  loc_15DD899:   var_E8 = (Me.Recordset15.Fields.Item("Department").Value + "U_AE")
  loc_15DD8CD:   var_13C = (CVar(Me.Recordset15.Fields.Item("Designation")) + Me.Recordset15.Fields.Item("Designation").Value)
  loc_15DD8DF:   Me.LblEmpRef.Caption = CStr("entdt : ")
  loc_15DD93D:   var_C0 = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Site_Code")), "SELECT DOCID,V_PREFIX FROM LEDGER WHERE site_code='", var_20C)
  loc_15DD941:   var_EC = -1 & var_C0
  loc_15DD968:   var_D8 = Me.Recordset15.Fields.Item("V_Type")
  loc_15DD97D:   var_1E4 = var_210 & Proc_6_38_E69628(CVar(var_D8), Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Designation"))) & "' And V_Type='")
  loc_15DD99C:   var_190 = Me.Recordset15.Fields
  loc_15DD9B3:   Proc_6_7_F26918("entdt : ", CVar(var_190.Item("V_DATE")))
  loc_15DD9BB:   var_17C = CVar(var_1E4 & "' and V_DATE=") & "entdt : " 
  loc_15DD9E5:   var_1F8 = Me.Recordset15.Fields.Item("SR_no")
  loc_15DD9F4:   Proc_6_39_E7D3A0(var_1C4, CVar(var_1F8))
  loc_15DDA0A:   unk_4C1970.Execute CStr(var_17C & " AND V_NO=" & var_1C4), , 
  loc_15DDA15:   Set var_8C = var_210
  loc_15DDA61:   If (var_8C.RecordCount >= 1) Then
  loc_15DDA99:     Me.LblVPrefix.Caption = Proc_6_38_E69628(CVar(var_8C.Fields.Item("v_Prefix")))
  loc_15DDAE1:     Set var_C4 = Me.Txt
  loc_15DDAE7:     Call 0.Method_Proc_308_35_15DE7480 (CInt(&HA), var_D8)
  loc_15DDAEF:     var_D8.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("DocID")))
  loc_15DDB06:   Else
  loc_15DDB1A:     var_C0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_15DDB62:     var_11C = CVar(var_C0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='") & Me.Recordset15.Fields.Item("V_Type").Value 
  loc_15DDB9B:     Proc_6_7_F26918(var_17C, CVar(Me.Recordset15.Fields.Item("V_DATE")), var_11C & "' And VP.Date_From<=")
  loc_15DDBBA:     unk_4C1970.Execute CStr(var_1C4 & var_17C & " Order By VP.Date_From DESC"), -1, var_190
  loc_15DDBC5:     Set var_8C = var_190
  loc_15DDC07:     If (var_8C.RecordCount > 0) Then
  loc_15DDC3F:       Me.LblVPrefix.Caption = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Prefix")))
  loc_15DDC88:       var_AC = Me.Recordset15.Fields.Item("V_Type")
  loc_15DDC98:       var_11C = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2)) + var_AC.Value)
  loc_15DDCC1:       var_D8 = Me.Recordset15.Fields.Item("V_Type")
  loc_15DDCDB:       var_14C = Space((5 - Len(CStr(var_D8.Value))))
  loc_15DDCE3:       var_17C = (var_11C + CVar(Me.Recordset15.Fields.Item("V_DATE")))
  loc_15DDD06:       var_18C = Space((5 - Len(Me.LblVPrefix.Caption)))
  loc_15DDD0E:       var_1B4 = (var_17C + var_1C4 & var_17C)
  loc_15DDD19:       Set var_1A4 = Me.LblVPrefix
  loc_15DDD1F:       var_1E0 = var_1A4.Caption
  loc_15DDD2A:       var_1D4 = (CVar(var_1E0) & var_17C & " Order By VP.Date_From DESC" + CVar(var_1E0))
  loc_15DDD41:       Set var_1DC = Me.Txt
  loc_15DDD47:       Call 0.Method_Proc_308_35_15DE7480 (CInt(0), var_1F8, var_1E4)
  loc_15DDD4F:       8 = var_1F8.Text
  loc_15DDD5C:       var_20C = Space((var_17C & " AND V_NO=" & CVar(var_1E0) - Len(var_1E4)))
  loc_15DDD64:       var_220 = ( + var_20C)
  loc_15DDD76:       Set var_210 = Me.Txt
  loc_15DDD7C:       Call 0.Method_Proc_308_35_15DE7480 (CInt(0), var_224)
  loc_15DDD8F:       var_244 = (var_220 + CVar(var_224.Text))
  loc_15DDDA2:       Set var_248 = Me.Txt
  loc_15DDDA8:       Call 0.Method_Proc_308_35_15DE7480 (CInt(&HA), var_24C)
  loc_15DDDB0:       var_24C.Text = CStr(var_244)
  loc_15DDDFC:     End If
  loc_15DDDFC:   End If
  loc_15DDE07:   Set var_90 = Me.Txt
  loc_15DDE0D:   Call 0.Method_Proc_308_35_15DE7480 (CInt(2))
  loc_15DDE1C:   var_E8 = Trim(CVar(var_AC))
  loc_15DDE39:   Set var_C4 = Me.Txt
  loc_15DDE3F:   Call 0.Method_Proc_308_35_15DE7480 (CInt(2), var_D8)
  loc_15DDE60:   var_18C = (var_E8 = "Advance") Or (Trim(CVar(var_D8)) = "Advance Return")
  loc_15DDE6F:   Set var_190 = Me.Txt
  loc_15DDE75:   Call 0.Method_Proc_308_35_15DE7480 (CInt(2), var_1A4)
  loc_15DDEB4:   If CBool(var_18C Or (Trim(CVar(var_1A4)) = "Loan Return")) Then
  loc_15DDEC5:     Set var_90 = Me.Txt
  loc_15DDECB:     Call 0.Method_Proc_308_35_15DE7480 (CInt(3), var_AC)
  loc_15DDEEC:     Set var_C4 = Me.Txt
  loc_15DDEF2:     Call 0.Method_Proc_308_35_15DE7480 (CInt(5), var_D8, var_252)
  loc_15DDEFA:     (var_AC.Visible = &HFF) = var_D8.Visible
  loc_15DDF14:     Set var_190 = Me.Txt
  loc_15DDF1A:     Call 0.Method_Proc_308_35_15DE7480 (CInt(6), var_1A4)
  loc_15DDF3D:     If ((var_AC Or (var_252 = &HFF)) Or (var_1A4.Visible = &HFF)) Then
  loc_15DDF4D:       Set var_90 = Me.Txt
  loc_15DDF53:       Call 0.Method_Proc_308_35_15DE7480 (CInt(5), var_AC)
  loc_15DDF5B:       var_AC.Visible = False
  loc_15DDF74:       Set var_90 = Me.Txt
  loc_15DDF7A:       Call 0.Method_Proc_308_35_15DE7480 (CInt(3), var_AC)
  loc_15DDF82:       var_AC.Visible = False
  loc_15DDF9B:       Set var_90 = Me.Txt
  loc_15DDFA1:       Call 0.Method_Proc_308_35_15DE7480 (CInt(6), var_AC)
  loc_15DDFA9:       var_AC.Visible = False
  loc_15DDFC0:       Set var_90 = Me.Label1
  loc_15DDFC6:       Call 0.Method_Proc_308_35_15DE7480 (3, var_AC)
  loc_15DDFCE:       var_AC.Visible = False
  loc_15DDFE5:       Set var_90 = Me.Label1
  loc_15DDFEB:       Call 0.Method_Proc_308_35_15DE7480 (4, var_AC)
  loc_15DDFF3:       var_AC.Visible = False
  loc_15DE00A:       Set var_90 = Me.Label1
  loc_15DE010:       Call 0.Method_Proc_308_35_15DE7480 (6, var_AC)
  loc_15DE018:       var_AC.Visible = False
  loc_15DE024:     End If
  loc_15DE027:   Else
  loc_15DE035:     Set var_90 = Me.Txt
  loc_15DE03B:     Call 0.Method_Proc_308_35_15DE7480 (CInt(2), var_AC)
  loc_15DE05A:     If (var_AC.Text = "Loan") Then
  loc_15DE06B:       Set var_90 = Me.Txt
  loc_15DE071:       Call 0.Method_Proc_308_35_15DE7480 (CInt(3), var_AC)
  loc_15DE08B:       If (var_AC.Visible = 0) Then
  loc_15DE09B:         Set var_90 = Me.Txt
  loc_15DE0A1:         Call 0.Method_Proc_308_35_15DE7480 (CInt(5), var_AC)
  loc_15DE0A9:         var_AC.Visible = True
  loc_15DE0C2:         Set var_90 = Me.Txt
  loc_15DE0C8:         Call 0.Method_Proc_308_35_15DE7480 (CInt(3), var_AC)
  loc_15DE0D0:         var_AC.Visible = True
  loc_15DE0E9:         Set var_90 = Me.Txt
  loc_15DE0EF:         Call 0.Method_Proc_308_35_15DE7480 (CInt(6), var_AC)
  loc_15DE0F7:         var_AC.Visible = True
  loc_15DE10E:         Set var_90 = Me.Label1
  loc_15DE114:         Call 0.Method_Proc_308_35_15DE7480 (3, var_AC)
  loc_15DE11C:         var_AC.Visible = True
  loc_15DE133:         Set var_90 = Me.Label1
  loc_15DE139:         Call 0.Method_Proc_308_35_15DE7480 (4, var_AC)
  loc_15DE141:         var_AC.Visible = True
  loc_15DE158:         Set var_90 = Me.Label1
  loc_15DE15E:         Call 0.Method_Proc_308_35_15DE7480 (6, var_AC)
  loc_15DE166:         var_AC.Visible = True
  loc_15DE172:       End If
  loc_15DE172:     End If
  loc_15DE172:   End If
  loc_15DE1B1:   Set var_C4 = Me.Txt
  loc_15DE1B7:   Call 0.Method_Proc_308_35_15DE7480 (CInt(7), var_D8)
  loc_15DE1BF:   var_D8.Text = CStr(Me.Recordset15.Fields.Item("EmpName").Value)
  loc_15DE214:   Set var_C4 = Me.Txt
  loc_15DE21A:   Call 0.Method_Proc_308_35_15DE7480 (CInt(7), var_D8)
  loc_15DE222:   var_D8.Tag = CStr(Me.Recordset15.Fields.Item("Emp_Code").Value)
  loc_15DE277:   Set var_C4 = Me.Txt
  loc_15DE27D:   Call 0.Method_Proc_308_35_15DE7480 (CInt(8), var_D8)
  loc_15DE285:   var_D8.Text = CStr(Me.Recordset15.Fields.Item("AcName").Value)
  loc_15DE2DA:   Set var_C4 = Me.Txt
  loc_15DE2E0:   Call 0.Method_Proc_308_35_15DE7480 (CInt(8), var_D8)
  loc_15DE2E8:   var_D8.Tag = CStr(Me.Recordset15.Fields.Item("Ac_Code").Value)
  loc_15DE323:   var_BC = CVar(Me.Recordset15.Fields.Item("Amount")) 'Address
  loc_15DE32A:   Proc_6_39_E7D3A0(var_E8)
  loc_15DE361:   Set var_C4 = Me.Txt
  loc_15DE367:   Call 0.Method_Proc_308_35_15DE7480 (CInt(4), var_D8, CStr(Format(var_E8, "0.00")))
  loc_15DE36F:   var_D8.Text = 1
  loc_15DE3B7:   Proc_6_39_E7D3A0(var_E8, CVar(Me.Recordset15.Fields.Item("Installment")))
  loc_15DE3CB:   var_11C = "0.00"
  loc_15DE3EE:   Set var_C4 = Me.Txt
  loc_15DE3F4:   Call 0.Method_Proc_308_35_15DE7480 (CInt(6), var_D8, CStr(Format(var_E8, var_11C)), 1)
  loc_15DE3FC:   var_D8.Text = 1
  loc_15DE435:   var_AC = Me.Recordset15.Fields.Item("Remark")
  loc_15DE43D:   var_BC = CVar(var_AC) 'Address
  loc_15DE45F:   Set var_C4 = Me.Txt
  loc_15DE465:   Call 0.Method_Proc_308_35_15DE7480 (CInt(9), var_D8)
  loc_15DE46D:   var_D8.Text = Proc_6_38_E69628(Trim(var_BC), 1)
  loc_15DE493:   Set var_90 = Me.Txt
  loc_15DE499:   Call 0.Method_Proc_308_35_15DE7480 (CInt(7), var_AC)
  loc_15DE4A1:   var_C0 = var_AC.Tag
  loc_15DE4AC:   var_D4 = 0
  loc_15DE4D9:   unk_4C1970.Execute "SELECT ISNULL(OP_Loan,0) FROM EMPLOYEE WHERE CODE='" & var_C0 & "'", var_BC, -1
  loc_15DE4E1:   var_C4 = var_C4.Fields
  loc_15DE4E9:   var_D4 = var_D8.Item(var_D8)
  loc_15DE4F1:   var_190 = var_190.Value
  loc_15DE504:   Set var_1A4 = Me.Txt
  loc_15DE50A:   Call 0.Method_Proc_308_35_15DE7480 (CInt(7), var_1DC, var_1E0)
  loc_15DE525:   Proc_6_7_F26918(var_11C, Now)
  loc_15DE530:   var_10C = 0
  loc_15DE554:   var_13C = CVar("SELECT isnull(sum(amount),0) as amt FROM LOAN WHERE v_TYPE='LO' AND EMP_CODE='" & var_1E0 & "' and v_date<= ") 'String
  loc_15DE568:   unk_4C1970.Execute CStr(var_13C & var_11C), var_17C, -1
  loc_15DE570:   var_1F8 = var_1F8.Fields
  loc_15DE578:   var_10C = var_210.Item(var_210)
  loc_15DE580:   var_224 = var_224.Value
  loc_15DE5A0:   var_1C4 = (var_1DC.Tag + var_18C)
  loc_15DE5BE:   Set var_248 = Me.Txt
  loc_15DE5C4:   Call 0.Method_Proc_308_35_15DE7480 (CInt(3), var_24C, CStr(Format(Trim(CVar(var_1A4)), "0.00")), 1)
  loc_15DE5CC:   var_24C.Text = 1
  loc_15DE624:   Set var_90 = Me.Txt
  loc_15DE62A:   Call 0.Method_Proc_308_35_15DE7480 (CInt(7), var_AC, var_C0)
  loc_15DE632:   var_18C = var_AC.Tag
  loc_15DE63A:   var_D4 = 0
  loc_15DE667:   unk_4C1970.Execute "SELECT ISNULL(OP_Inst,0) FROM EMPLOYEE WHERE CODE='" & var_C0 & "'", var_BC, -1
  loc_15DE66F:   var_C4 = var_C4.Fields
  loc_15DE677:   var_D4 = var_D8.Item(var_D8)
  loc_15DE6B2:   Set var_1A4 = Me.Txt
  loc_15DE6B8:   Call 0.Method_Proc_308_35_15DE7480 (CInt(5), var_1DC, CStr(Format(CVar(var_190), "0.00")), 1)
  loc_15DE6C0:   var_1DC.Text = 1
  loc_15DE712:   var_BC = Me.Recordset15.Fields.Item("V_Type").Value
  loc_15DE72C:   If (var_BC = "LO") Then
  loc_15DE72F:   End If
  loc_15DE732: Else
  loc_15DE732:   Call Proc_308_34_ED0A50(var_190)
  loc_15DE737: End If
  loc_15DE73C: Set var_8C = Nothing
  loc_15DE73F: Exit Sub
  loc_15DE740: ' Referenced from: 15DD42C
  loc_15DE740: Proc_6_60_E63754(var_BC)
  loc_15DE745: Exit Sub
End Sub

Public Sub Proc_308_36_EC8494(arg_C) 'EC8494
  'Data Table: 4C1968
  Dim var_98 As TextBox
  loc_EC83F6: Set var_8C = Me.Txt
  loc_EC83FC: Call 0.Method_Proc_308_36_EC8494C (var_8E, var_86)
  loc_EC840C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EC8422:   Set var_8C = Me.Txt
  loc_EC8428:   Call 0.Method_Proc_308_36_EC84940 (CInt(var_86), var_98)
  loc_EC8430:   var_98.Enabled = arg_C
  loc_EC843F: Next var_92 'Byte
  loc_EC8451: Set var_8C = Me.Txt
  loc_EC8457: Call 0.Method_Proc_308_36_EC84940 (1, var_98)
  loc_EC845F: var_98.Enabled = arg_C
  loc_EC8477: Set var_8C = Me.Txt
  loc_EC847D: Call 0.Method_Proc_308_36_EC84940 (2, var_98)
  loc_EC8485: var_98.Enabled = arg_C
  loc_EC8491: Exit Sub
End Sub

Public Sub Proc_308_37_E7FC44
  'Data Table: 4C1968
  loc_E7FC1F: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E7FC22:   Call TopCtrl1_UnknownEvent_16()
  loc_E7FC2A: Else
  loc_E7FC30:   Call 0.Method_arg_1E8 (var_108)
  loc_E7FC38:   Call var_108.SetFocus
  loc_E7FC41: End If
  loc_E7FC41: Exit Sub
End Sub

Public Sub Proc_308_38_F8CBE4
  'Data Table: 4C1968
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_F8CA92: Set var_88 = Me.Txt
  loc_F8CA98: Call 0.Method_Proc_308_38_F8CBE40 (CInt(8), var_8C)
  loc_F8CAB7: Me.DGAcName.Left = CVar(var_8C.Left)
  loc_F8CAD3: Set var_B4 = Me.Txt
  loc_F8CAD9: Call 0.Method_Proc_308_38_F8CBE40 (CInt(8), var_B8)
  loc_F8CAF4: Set var_88 = Me.Txt
  loc_F8CAFA: Call 0.Method_Proc_308_38_F8CBE40 (CInt(8), var_8C)
  loc_F8CB12: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_F8CB21: Me.DGAcName.Top = CVar(var_8C.Left)
  loc_F8CB41: Set var_88 = Me.Txt
  loc_F8CB47: Call 0.Method_Proc_308_38_F8CBE40 (CInt(7), var_8C)
  loc_F8CB66: Me.DGEmployee.Left = CVar(var_8C.Left)
  loc_F8CB82: Set var_B4 = Me.Txt
  loc_F8CB88: Call 0.Method_Proc_308_38_F8CBE40 (CInt(7), var_B8)
  loc_F8CBA3: Set var_88 = Me.Txt
  loc_F8CBA9: Call 0.Method_Proc_308_38_F8CBE40 (CInt(7), var_8C)
  loc_F8CBC1: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_F8CBD0: Me.DGEmployee.Top = CVar(var_8C.Left)
  loc_F8CBE2: Exit Sub
End Sub

Public Sub Proc_308_39_EF4488
  'Data Table: 4C1968
  loc_EF43CC: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_EF43DE:   Me.DGEmployee.Visible = False
  loc_EF43E6: End If
  loc_EF4402: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_EF4414:   Me.DGAcName.Visible = False
  loc_EF441C: End If
  loc_EF4437: If (Me.FrmList.Visible = &HFF) Then
  loc_EF4446:   Me.FrmList.Visible = False
  loc_EF444E: End If
  loc_EF446A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF447C:   Me.FGPoint.Visible = False
  loc_EF4484: End If
  loc_EF4484: Exit Sub
End Sub

Public Sub Proc_308_40_11AE700
  'Data Table: 4C1968
  Dim var_A8 As Variant
  Dim var_DC As String
  Dim var_EC As String
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_134 As Label
  Dim var_B8 As Variant
  Dim var_13C As TextBox
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_178 As TextBox
  Dim var_198 As Variant
  Dim var_1A0 As TextBox
  loc_11AE331: Set var_94 = Me.Txt
  loc_11AE337: Call 0.Method_Proc_308_40_11AE7000 (CInt(2))
  loc_11AE360: If (Trim(CVar(var_98)) = "Loan") Then
  loc_11AE366:   var_90 = "LO"
  loc_11AE36C: Else
  loc_11AE377:   Set var_94 = Me.Txt
  loc_11AE37D:   Call 0.Method_Proc_308_40_11AE7000 (CInt(2), var_98)
  loc_11AE3A6:   If (Trim(CVar(var_98)) = "Loan Return") Then
  loc_11AE3AC:     var_90 = "LR"
  loc_11AE3B2:   Else
  loc_11AE3BD:     Set var_94 = Me.Txt
  loc_11AE3C3:     Call 0.Method_Proc_308_40_11AE7000 (CInt(2), var_98)
  loc_11AE3EC:     If (Trim(CVar(var_98)) = "Advance") Then
  loc_11AE3F2:       var_90 = "ADE"
  loc_11AE3F8:     Else
  loc_11AE403:       Set var_94 = Me.Txt
  loc_11AE409:       Call 0.Method_Proc_308_40_11AE7000 (CInt(2), var_98)
  loc_11AE418:       var_B8 = Trim(CVar(var_98))
  loc_11AE432:       If (var_B8 = "Advance Return") Then
  loc_11AE438:         var_90 = "AR1"
  loc_11AE43B:       End If
  loc_11AE43B:     End If
  loc_11AE43B:   End If
  loc_11AE43B: End If
  loc_11AE44F: var_DC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_11AE46B: var_EC = var_DC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90
  loc_11AE480: Set var_94 = Me.Txt
  loc_11AE486: Call 0.Method_Proc_308_40_11AE7000 (CInt(1), var_98, CVar(var_EC & "' And VP.Date_From<="), var_130)
  loc_11AE495: Proc_6_7_F26918(var_B8, CVar(var_98), -1)
  loc_11AE4B1: Me.Execute CStr(var_134 & var_B8 & " Order By VP.Date_From DESC"), var_98, 
  loc_11AE4BC: Set var_8C = var_134
  loc_11AE4F8: If (var_8C.RecordCount > 0) Then
  loc_11AE533:   Me.LblVPrefix.Caption = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11AE576:   var_B8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_11AE589:   Set var_134 = Me.Txt
  loc_11AE58F:   Call 0.Method_Proc_308_40_11AE7000 (CInt(0), var_13C)
  loc_11AE597:   var_13C.Text = CStr(var_B8)
  loc_11AE5B1: End If
  loc_11AE5DC: var_A8 = Space((5 - Len(var_90)))
  loc_11AE5E4: var_D8 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_8C.Fields.Item("start_srl_no").Value)
  loc_11AE607: var_FC = Space((5 - Len(Me.LblVPrefix.Caption)))
  loc_11AE60F: var_10C = (CVar(var_EC & "' And VP.Date_From<=") + var_134 & CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90))
  loc_11AE62B: var_150 = (var_134 & CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) & " Order By VP.Date_From DESC" + CVar(Me.LblVPrefix.Caption))
  loc_11AE642: Set var_134 = Me.Txt
  loc_11AE648: Call 0.Method_Proc_308_40_11AE7000 (CInt(0), var_13C, var_EC)
  loc_11AE650: 8 = var_13C.Text
  loc_11AE65D: var_160 = Space((var_150 - Len(var_EC)))
  loc_11AE665: var_170 = ( + var_160)
  loc_11AE677: Set var_174 = Me.Txt
  loc_11AE67D: Call 0.Method_Proc_308_40_11AE7000 (CInt(0), var_178)
  loc_11AE690: var_198 = (var_170 + CVar(var_178.Text))
  loc_11AE6A3: Set var_19C = Me.Txt
  loc_11AE6A9: Call 0.Method_Proc_308_40_11AE7000 (CInt(&HA), var_1A0)
  loc_11AE6B1: var_1A0.Text = CStr(var_198)
  loc_11AE6F4: Set var_8C = Nothing
  loc_11AE6F7: Proc_308_40_11AE700 = 
End Sub
