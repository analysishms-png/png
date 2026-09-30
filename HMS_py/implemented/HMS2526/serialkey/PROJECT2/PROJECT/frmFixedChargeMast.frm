VERSION 5.00
Begin VB.Form frmFixedChargeMast
  Caption = "Fixed Charge Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 11355
  ClientHeight = 7980
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11355
    Height = 450
    TabIndex = 42
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 2040
    Width = 2505
    Height = 285
    TabIndex = 2
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
  Begin Frame FrmList1
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 11610
    Top = 4980
    Width = 1875
    Height = 1725
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
    Begin ListView ListView1
      Left = 0
      Top = 0
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 37
    End
  End
  Begin DataGrid DGRevenue
    Left = 7755
    Top = 2340
    Width = 5655
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 5505
    Width = 1380
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
    ForeColor = &HC00000&
    Left = 4185
    Top = 5190
    Width = 1380
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 4875
    Width = 1380
    Height = 285
    TabIndex = 11
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
    ForeColor = &HC00000&
    Left = 4185
    Top = 3930
    Width = 2505
    Height = 285
    TabIndex = 8
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
  Begin PictureBox Picture2
    Picture = "frmFixedChargeMast.frx":0
    Left = 12690
    Top = 1500
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 31
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 9615
    Top = 5700
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 28
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
    Begin ListView ListView
      Left = 0
      Top = -15
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 29
    End
  End
  Begin DataGrid DGHelp
    Left = 7935
    Top = 1560
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 3300
    Width = 2505
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 2985
    Width = 1380
    Height = 285
    TabIndex = 5
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
    ForeColor = &HC00000&
    Left = 4185
    Top = 1410
    Width = 3990
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 25
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
    ForeColor = &HC00000&
    Left = 4185
    Top = 4245
    Width = 1380
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
    ForeColor = &HC00000&
    Left = 4185
    Top = 3615
    Width = 2505
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 4560
    Width = 1380
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
    ForeColor = &HC00000&
    Left = 4185
    Top = 2670
    Width = 3990
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 35
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 2355
    Width = 3990
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 25
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
    ForeColor = &HC00000&
    Left = 4185
    Top = 1725
    Width = 1380
    Height = 285
    TabIndex = 1
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
  Begin MSFlexGrid FGPoint
    Left = 7500
    Top = 5640
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 24
  End
  Begin DataGrid DGTaxStru
    Left = 8250
    Top = 855
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5925
    Top = 6375
    Width = 2790
    Height = 285
    TabIndex = 41
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
    Left = 2550
    Top = 6375
    Width = 2880
    Height = 255
    TabIndex = 40
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
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 39
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
  Begin Label LblName
    Caption = "Charge Category"
    Index = 3
    ForeColor = &HC00000&
    Left = 2535
    Top = 2040
    Width = 1605
    Height = 240
    TabIndex = 38
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
    Caption = "Extra Child"
    Index = 7
    ForeColor = &HC00000&
    Left = 2535
    Top = 5490
    Width = 1050
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
  Begin Label LblLedgerAc
    Caption = "Extra Adult"
    Index = 6
    ForeColor = &HC00000&
    Left = 2535
    Top = 5175
    Width = 1050
    Height = 240
    TabIndex = 34
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
    Caption = "Child"
    Index = 5
    ForeColor = &HC00000&
    Left = 2535
    Top = 4860
    Width = 495
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
    Caption = "Charge Type"
    Index = 1
    ForeColor = &HC00000&
    Left = 2535
    Top = 3930
    Width = 1215
    Height = 240
    TabIndex = 32
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
    Caption = "Yes/No"
    ForeColor = &H80&
    Left = 5580
    Top = 3015
    Width = 645
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
  Begin Label LblLedgerAc
    Caption = "Print Option"
    Index = 4
    ForeColor = &HC00000&
    Left = 2535
    Top = 3300
    Width = 1140
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
  Begin Label LblLedgerAc
    Caption = "Tax Inclusive"
    Index = 3
    ForeColor = &HC00000&
    Left = 2535
    Top = 2985
    Width = 1260
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
  Begin Label LblSysYN
    Caption = "SysYN"
    ForeColor = &H80&
    Left = 5580
    Top = 1740
    Width = 585
    Height = 240
    Visible = 0   'False
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
    Caption = "Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2535
    Top = 1410
    Width = 555
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
  Begin Label LblName
    Caption = "Flat Rate"
    Index = 4
    ForeColor = &HC00000&
    Left = 2535
    Top = 4245
    Width = 855
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
  Begin Label LblLedgerAc
    Caption = "Tax Structure"
    Index = 0
    ForeColor = &HC00000&
    Left = 2535
    Top = 2670
    Width = 1290
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
    Caption = "Posting Method"
    Index = 6
    ForeColor = &HC00000&
    Left = 2535
    Top = 3615
    Width = 1470
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
  Begin Label LblLedgerAc
    Caption = "Adult"
    Index = 1
    ForeColor = &HC00000&
    Left = 2535
    Top = 4545
    Width = 495
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
  Begin Label LblName
    Caption = "Revenue Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 2535
    Top = 2355
    Width = 1455
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
  Begin Label LblLedgerAc
    Caption = "Short Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 2535
    Top = 1725
    Width = 1125
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
End

Attribute VB_Name = "frmFixedChargeMast"


Private Sub DGRevenue_UnknownEvent_9 'F48494
  'Data Table: 4C6A58
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4838B: Me.DGRevenue.Visible = False
  loc_F483AA: If (Me.RecordCount > 0) Then
  loc_F483E9:   Set var_B4 = Me.Txt
  loc_F483EF:   Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(2), var_B8)
  loc_F483F7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4842A:   var_B0 = Me.Fields.Item("Name")
  loc_F48449:   Set var_B4 = Me.Txt
  loc_F4844F:   Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(2), var_B8)
  loc_F48457:   var_B8.Text = CStr(var_B0.Value)
  loc_F4846D: End If
  loc_F48478: Set var_A8 = Me.Txt
  loc_F4847E: Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(2))
  loc_F48486: var_B0.SetFocus
  loc_F48492: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_1F 'EA8D90
  'Data Table: 4C6A58
  Dim var_A8 As Variant
  loc_EA8D10: Set var_88 = Me.DGRevenue
  loc_EA8D3A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA8D42: Set var_BC = Me.DGRevenue
  loc_EA8D7E: Proc_6_138_106E830(Me.DGRevenue, global_60, CInt(2), Me.FGPoint)
  loc_EA8D8C: Exit Sub
  loc_EA8D8D: DGRevenue.DispID_1B = var_A8
End Sub

Private Sub DGHelp_UnknownEvent_9 'F49D54
  'Data Table: 4C6A58
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F49C4B: Me.DGHelp.Visible = False
  loc_F49C6A: If (Me.RecordCount > 0) Then
  loc_F49CA9:   Set var_B4 = Me.Txt
  loc_F49CAF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F49CB7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F49CEA:   var_B0 = Me.Fields.Item("Name")
  loc_F49D09:   Set var_B4 = Me.Txt
  loc_F49D0F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F49D17:   var_B8.Text = CStr(var_B0.Value)
  loc_F49D2D: End If
  loc_F49D38: Set var_A8 = Me.Txt
  loc_F49D3E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F49D46: var_B0.SetFocus
  loc_F49D52: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA8B44
  'Data Table: 4C6A58
  Dim var_A8 As Variant
  loc_EA8AC4: Set var_88 = Me.DGHelp
  loc_EA8AEE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA8AF6: Set var_BC = Me.DGHelp
  loc_EA8B32: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA8B40: Exit Sub
  loc_EA8B41: DGHelp.DispID_1B = var_A8
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1379400
  'Data Table: 4C6A58
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_AC As String
  Dim var_88 As ListView
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  loc_1378B96: Set var_88 = Me.Txt
  loc_1378B9C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1378BAA: Proc_6_74_E23240(var_8C)
  loc_1378BB6: Call Proc_140_38_F1F41C(var_8C)
  loc_1378BBB: On Error Goto loc_13793BB
  loc_1378BC1: var_92 = Index
  loc_1378BCC: If (var_92 = CInt(0)) Then
  loc_1378BE6:   If (Me.RecordCount > 0) Then
  loc_1378BF4:     Set var_8C = Me.FGPoint
  loc_1378C0C:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_1378C1A:   End If
  loc_1378C1D: Else
  loc_1378C25:   If (var_92 = CInt(&HD)) Then
  loc_1378C35:     ReDim var_9C(0 To 1)
  loc_1378C4C:     var_9C(0) = "Meal Charges"
  loc_1378C5B:     var_9C(1) = "Other Charges"
  loc_1378C8B:     Me.ListView1.Tag = CVar(CStr(&HD))
  loc_1378C9A:     Set var_D4 = Me.ListView1
  loc_1378CB5:     Set var_8C = Me.Txt
  loc_1378CCF:     Set global_112 = Proc_6_66_F0048C(var_D4, var_8C, Index, Array(var_9C))
  loc_1378CED:     Set var_88 = Me.Txt
  loc_1378CF3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, 2)
  loc_1378CFB:     global_96 = var_8C.Text
  loc_1378D0D:     Set var_90 = Me.Txt
  loc_1378D13:     Call 0.Method_Txt_GotFocus0 (Index, var_D4, var_DC)
  loc_1378D1B:     var_D4.Tag = var_8C
  loc_1378D31:   Else
  loc_1378D39:     If (var_92 = CInt(2)) Then
  loc_1378D53:       If (Me.RecordCount > 0) Then
  loc_1378D61:         Set var_8C = Me.FGPoint
  loc_1378D79:         Proc_6_137_1192FDC(Me.DGRevenue, global_60, Index)
  loc_1378D87:       End If
  loc_1378DD5:       Set var_88 = Me.Txt
  loc_1378DDB:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_1378DE3:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1378DFB:       If (var_8C Or (var_DC = vbNullString)) Then
  loc_1378DFE:         Exit Sub
  loc_1378DFF:       End If
  loc_1378E0C:       Set var_88 = Me.Txt
  loc_1378E12:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1378E1A:       var_DC = var_8C.Text
  loc_1378E2C:       var_AC = "Name"
  loc_1378E67:       If CBool(CVar(var_DC) <> Me.Fields.Item(var_AC).Value) Then
  loc_1378E70:         Me.MoveFirst
  loc_1378E93:         Set var_88 = Me.Txt
  loc_1378E99:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, "Name ='")
  loc_1378EA1:         0 = var_8C.Text
  loc_1378EBA:         Me.Find 1 & var_DC & "'", var_AC, var_92
  loc_1378ECF:       End If
  loc_1378ED2:     Else
  loc_1378EDA:       If (var_92 = CInt(3)) Then
  loc_1378EF4:         If (Me.RecordCount > 0) Then
  loc_1378F02:           Set var_8C = Me.FGPoint
  loc_1378F1A:           Proc_6_137_1192FDC(Me.DGTaxStru, global_64)
  loc_1378F28:         End If
  loc_1378F76:         Set var_88 = Me.Txt
  loc_1378F7C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_1378F84:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1378F9C:         If (Index Or (var_DC = vbNullString)) Then
  loc_1378F9F:           Exit Sub
  loc_1378FA0:         End If
  loc_1378FAD:         Set var_88 = Me.Txt
  loc_1378FB3:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1378FBB:         var_DC = var_8C.Text
  loc_1378FCD:         var_AC = "Name"
  loc_1379008:         If CBool(CVar(var_DC) <> Me.Fields.Item(var_AC).Value) Then
  loc_1379011:           Me.MoveFirst
  loc_1379034:           Set var_88 = Me.Txt
  loc_137903A:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, "Name ='")
  loc_1379042:           0 = var_8C.Text
  loc_137905B:           Me.Find 1 & var_DC & "'", var_AC, var_8C
  loc_1379070:         End If
  loc_1379073:       Else
  loc_137907B:         If (var_92 = CInt(8)) Then
  loc_137908B:           ReDim var_9C(0 To 1)
  loc_13790A2:           var_9C(0) = "Print Seperately"
  loc_13790B1:           var_9C(1) = "Add to Rate"
  loc_13790C8:           global_76 = Array(var_9C)
  loc_13790E1:           Me.ListView.Tag = CVar(CStr(8))
  loc_13790F0:           Set var_D4 = Me.ListView
  loc_137910B:           Set var_8C = Me.Txt
  loc_1379125:           Set global_92 = Proc_6_66_F0048C(var_D4, var_8C, Index)
  loc_1379143:           Set var_88 = Me.Txt
  loc_1379149:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_1379151:           global_76 = var_8C.Text
  loc_1379163:           Set var_90 = Me.Txt
  loc_1379169:           Call 0.Method_Txt_GotFocus0 (Index, var_D4, var_DC)
  loc_1379171:           var_D4.Tag = 2
  loc_1379187:         Else
  loc_137918F:           If (var_92 = CInt(9)) Then
  loc_137919F:             ReDim var_9C(0 To 1)
  loc_13791B6:             var_9C(0) = "Per Person Amount"
  loc_13791C5:             var_9C(1) = "Flat Rate"
  loc_13791DC:             global_76 = Array(var_9C)
  loc_13791F5:             Me.ListView.Tag = CVar(CStr(9))
  loc_1379204:             Set var_D4 = Me.ListView
  loc_137921F:             Set var_8C = Me.Txt
  loc_1379239:             Set global_92 = Proc_6_66_F0048C(var_D4, var_8C, Index, global_76)
  loc_1379257:             Set var_88 = Me.Txt
  loc_137925D:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_1379265:             2 = var_8C.Text
  loc_1379277:             Set var_90 = Me.Txt
  loc_137927D:             Call 0.Method_Txt_GotFocus0 (Index, var_D4, var_DC)
  loc_1379285:             var_D4.Tag = global_76
  loc_137929B:           Else
  loc_13792A3:             If (var_92 = CInt(6)) Then
  loc_13792B3:               ReDim var_9C(0 To 1)
  loc_13792CA:               var_9C(0) = "Post Daily"
  loc_13792D9:               var_9C(1) = "Post Once"
  loc_13792F0:               global_96 = Array(var_9C)
  loc_1379309:               Me.ListView1.Tag = CVar(CStr(6))
  loc_1379318:               Set var_D4 = Me.ListView1
  loc_1379333:               Set var_8C = Me.Txt
  loc_137934D:               Set global_112 = Proc_6_66_F0048C(var_D4, var_8C, Index, global_96)
  loc_137936B:               Set var_88 = Me.Txt
  loc_1379371:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_1379379:               2 = var_8C.Text
  loc_137938B:               Set var_90 = Me.Txt
  loc_1379391:               Call 0.Method_Txt_GotFocus0 (Index, var_D4, var_DC)
  loc_1379399:               var_D4.Tag = global_96
  loc_13793AF:             Else
  loc_13793B7:               If (var_92 = CInt(4)) Then
  loc_13793BA:               End If
  loc_13793BA:             End If
  loc_13793BA:           End If
  loc_13793BA:         End If
  loc_13793BA:       End If
  loc_13793BA:     End If
  loc_13793BA:   End If
  loc_13793BA: End If
  loc_13793BA: Exit Sub
  loc_13793BB: ' Referenced from: 1378BBB
  loc_13793C3: Set var_88 = Err()
  loc_13793C9: Call 0.Method_arg_2C (var_DC)
  loc_13793EA: MsgBox(CVar(var_DC), &H40, "Information", var_100, var_128)
  loc_13793FD: Exit Sub
  loc_13793FE: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13BFEC4
  'Data Table: 4C6A58
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_110 As Variant
  Dim var_A4 As Frame
  loc_13BF576: If (CLng(Shift) = &H1B) Then
  loc_13BF579:   Call Proc_140_38_F1F41C()
  loc_13BF57E:   Exit Sub
  loc_13BF57F: End If
  loc_13BF582: var_86 = KeyCode
  loc_13BF58D: If (var_86 = CInt(0)) Then
  loc_13BF594:   Set var_A0 = Me.DGHelp
  loc_13BF5A2:   Set var_A8 = Me.FGPoint
  loc_13BF5AD:   Set var_98 = var_A8
  loc_13BF5DB:   Proc_6_79_11AD564(var_A0, Me.Txt, KeyCode, global_56, Shift)
  loc_13BF5F8:   var_AC = Me.RecordCount
  loc_13BF648:   If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13BF656:     Set var_90 = Me.FGPoint
  loc_13BF66E:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, var_90, 0)
  loc_13BF67C:   End If
  loc_13BF67F: Else
  loc_13BF687:   If (var_86 = CInt(&HD)) Then
  loc_13BF6AC:     Set var_8C = Me.Txt
  loc_13BF6B2:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 1)
  loc_13BF6BA:     var_98 = var_90.Left
  loc_13BF6CC:     Set var_98 = Me.Txt
  loc_13BF6D2:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B0)
  loc_13BF6DA:     0 = var_A0.Top
  loc_13BF6EC:     Set var_A4 = Me.Txt
  loc_13BF6F2:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_13BF6FA:     var_B4 = var_A8.Height
  loc_13BF70C:     Set var_B8 = Me.Txt
  loc_13BF712:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13BF71A:     var_C0 = var_BC.Width
  loc_13BF762:     Proc_6_65_1194DE4(Me.FrmList1, Me.ListView1, Me.Txt, KeyCode, Shift, arg_14)
  loc_13BF789:   Else
  loc_13BF791:     If (var_86 = CInt(2)) Then
  loc_13BF7EE:       Proc_6_69_134A630(Me.DGRevenue, Me.Txt, CInt(2), global_60, Shift, 0, 1, Nothing)
  loc_13BF85D:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13BF883:         Proc_6_138_106E830(Me.DGRevenue, global_60, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13BF891:       End If
  loc_13BF894:     Else
  loc_13BF89C:       If (var_86 = CInt(3)) Then
  loc_13BF8AA:         Set var_A8 = Me.Txt
  loc_13BF8BC:         Set var_A0 = Me.FGPoint
  loc_13BF8F9:         Proc_6_69_134A630(Me.DGTaxStru, var_A8, CInt(3), global_64, Shift, 0, 1, Nothing)
  loc_13BF918:         var_AC = Me.RecordCount
  loc_13BF968:         If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13BF976:           Set var_90 = Me.FGPoint
  loc_13BF98E:           Proc_6_138_106E830(Me.DGTaxStru, global_64, KeyCode, var_90, var_A0, 0)
  loc_13BF99C:         End If
  loc_13BF99F:       Else
  loc_13BF9A7:         If Not (var_86 = CInt(8)) Then
  loc_13BF9B2:           If (var_86 = CInt(9)) Then
  loc_13BF9B5:           End If
  loc_13BF9D7:           Set var_8C = Me.Txt
  loc_13BF9DD:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_13BF9E5:           CInt((var_B0 + var_B4)) = var_90.Left
  loc_13BF9F7:           Set var_98 = Me.Txt
  loc_13BF9FD:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B0)
  loc_13BFA05:           CInt(var_C0) = var_A0.Top
  loc_13BFA17:           Set var_A4 = Me.Txt
  loc_13BFA1D:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B4)
  loc_13BFA25:           520 = var_A8.Height
  loc_13BFA37:           Set var_B8 = Me.Txt
  loc_13BFA3D:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13BFA8D:           Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13BFAB9:           If (KeyCode = CInt(9)) Then
  loc_13BFAC9:             Set var_8C = Me.Txt
  loc_13BFACF:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E0, CInt(var_AC))
  loc_13BFAD7:             CInt((var_B0 + var_B4)) = var_90.Text
  loc_13BFAEE:             If (var_E0 = "Flat Rate") Then
  loc_13BFAFE:               Set var_8C = Me.Txt
  loc_13BFB04:               Call 0.Method_Txt_KeyDown0 (CInt(4), var_90, &HFF)
  loc_13BFB0C:               var_90.Enabled = CInt(var_BC.Width)
  loc_13BFB25:               Set var_8C = Me.Txt
  loc_13BFB2B:               Call 0.Method_Txt_KeyDown0 (CInt(5), var_90, 0)
  loc_13BFB33:               var_90.Enabled = True
  loc_13BFB4C:               Set var_8C = Me.Txt
  loc_13BFB52:               Call 0.Method_Txt_KeyDown0 (CInt(&HA), var_90)
  loc_13BFB5A:               var_90.Enabled = False
  loc_13BFB73:               Set var_8C = Me.Txt
  loc_13BFB79:               Call 0.Method_Txt_KeyDown0 (CInt(&HB), var_90)
  loc_13BFB81:               var_90.Enabled = False
  loc_13BFB9A:               Set var_8C = Me.Txt
  loc_13BFBA0:               Call 0.Method_Txt_KeyDown0 (CInt(&HC), var_90)
  loc_13BFBA8:               var_90.Enabled = False
  loc_13BFBB7:             Else
  loc_13BFBC4:               Set var_8C = Me.Txt
  loc_13BFBCA:               Call 0.Method_Txt_KeyDown0 (CInt(4), var_90)
  loc_13BFBD2:               var_90.Enabled = False
  loc_13BFBEB:               Set var_8C = Me.Txt
  loc_13BFBF1:               Call 0.Method_Txt_KeyDown0 (CInt(5), var_90)
  loc_13BFBF9:               var_90.Enabled = True
  loc_13BFC12:               Set var_8C = Me.Txt
  loc_13BFC18:               Call 0.Method_Txt_KeyDown0 (CInt(&HA), var_90)
  loc_13BFC20:               var_90.Enabled = True
  loc_13BFC39:               Set var_8C = Me.Txt
  loc_13BFC3F:               Call 0.Method_Txt_KeyDown0 (CInt(&HB), var_90)
  loc_13BFC47:               var_90.Enabled = True
  loc_13BFC60:               Set var_8C = Me.Txt
  loc_13BFC66:               Call 0.Method_Txt_KeyDown0 (CInt(&HC), var_90)
  loc_13BFC6E:               var_90.Enabled = True
  loc_13BFC7A:             End If
  loc_13BFC7A:           End If
  loc_13BFC7D:         Else
  loc_13BFC85:           If (var_86 = CInt(6)) Then
  loc_13BFCAA:             Set var_8C = Me.Txt
  loc_13BFCB0:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_13BFCB8:             var_AC = var_90.Left
  loc_13BFCCA:             Set var_98 = Me.Txt
  loc_13BFCD0:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0)
  loc_13BFCD8:             var_B0 = var_A0.Top
  loc_13BFCEA:             Set var_A4 = Me.Txt
  loc_13BFCF0:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_13BFCF8:             var_B4 = var_A8.Height
  loc_13BFD0A:             Set var_B8 = Me.Txt
  loc_13BFD10:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13BFD18:             var_C0 = var_BC.Width
  loc_13BFD60:             Proc_6_65_1194DE4(Me.FrmList1, Me.ListView1, Me.Txt, KeyCode, Shift, arg_14)
  loc_13BFD84:           End If
  loc_13BFD84:         End If
  loc_13BFD84:       End If
  loc_13BFD84:     End If
  loc_13BFD84:   End If
  loc_13BFD84: End If
  loc_13BFDBB: var_110 = Me.DGTaxStru.Visible
  loc_13BFE10: If (((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGRevenue.Visible) = 0)) And (CBool(var_110) = 0)) And (Me.FrmList.Visible = 0)) And (Me.FrmList1.Visible = 0)) Then
  loc_13BFE3A:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(&HC)) Or (KeyCode = CInt(4)))) Then
  loc_13BFE74:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_160) = 6) Then
  loc_13BFE77:       Call TopCtrl1_UnknownEvent_16()
  loc_13BFE7C:     End If
  loc_13BFE7C:     Exit Sub
  loc_13BFE7D:   End If
  loc_13BFE92:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13BFE9B:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_AC), CInt((var_B0 + var_B4)))
  loc_13BFEA0:   End If
  loc_13BFEB3:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_13BFEBC:     Proc_6_76_E533C8(Shift, arg_14, CInt(var_C0))
  loc_13BFEC1:   End If
  loc_13BFEC1: End If
  loc_13BFEC1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10D94EC
  'Data Table: 4C6A58
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_10D91EA: Proc_6_133_E7FB08(var_94)
  loc_10D91F3: arg_10 = CInt(var_94)
  loc_10D91FC: Proc_6_58_E06050(arg_10, arg_10)
  loc_10D9204: var_96 = KeyAscii
  loc_10D920F: If (var_96 = CInt(2)) Then
  loc_10D922E:   If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_10D9240:     var_A0 = "Name"
  loc_10D925B:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10)
  loc_10D928D:     Proc_6_138_106E830(Me.DGRevenue, global_60, KeyAscii, Me.FGPoint)
  loc_10D929B:   End If
  loc_10D929E: Else
  loc_10D92A6:   If (var_96 = CInt(3)) Then
  loc_10D92C5:     If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_10D92D7:       var_A0 = "Name"
  loc_10D92F2:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, var_A0)
  loc_10D930C:       Set var_A8 = Me.FGPoint
  loc_10D9324:       Proc_6_138_106E830(Me.DGTaxStru, global_64, KeyAscii, var_A8, 0)
  loc_10D9332:     End If
  loc_10D9335:   Else
  loc_10D933D:     If (var_96 = CInt(4)) Then
  loc_10D934A:       Set var_9C = Me.Txt
  loc_10D9350:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_10D936B:       Proc_6_42_129B55C(var_A8, arg_10, 6, 2)
  loc_10D937A:     Else
  loc_10D9382:       If Not (var_96 = CInt(5)) Then
  loc_10D938D:         If Not (var_96 = CInt(&HA)) Then
  loc_10D9398:           If Not (var_96 = CInt(&HB)) Then
  loc_10D93A3:             If (var_96 = CInt(&HC)) Then
  loc_10D93A6:             End If
  loc_10D93A6:           End If
  loc_10D93A6:         End If
  loc_10D93B0:         Set var_9C = Me.Txt
  loc_10D93B6:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_10D93D1:         Proc_6_42_129B55C(var_A8, arg_10, 6)
  loc_10D93E0:       Else
  loc_10D93E8:         If Not (var_96 = CInt(6)) Then
  loc_10D93F3:           If (var_96 = CInt(&HD)) Then
  loc_10D93F6:           End If
  loc_10D9400:           Set var_9C = Me.Txt
  loc_10D9406:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_10D9421:           Proc_6_42_129B55C(var_A8, arg_10, 6)
  loc_10D9430:         Else
  loc_10D9438:           If (var_96 = CInt(7)) Then
  loc_10D9464:             If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_10D9474:               Set var_9C = Me.Txt
  loc_10D947A:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_10D9482:               var_A8.Text = 2
  loc_10D9491:             Else
  loc_10D94BA:               If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_10D94CA:                 Set var_9C = Me.Txt
  loc_10D94D0:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_10D94D8:                 var_A8.Text = var_96
  loc_10D94E4:               End If
  loc_10D94E4:             End If
  loc_10D94E6:             arg_10 = 0
  loc_10D94E9:           End If
  loc_10D94E9:         End If
  loc_10D94E9:       End If
  loc_10D94E9:     End If
  loc_10D94E9:   End If
  loc_10D94E9: End If
  loc_10D94E9: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F26028
  'Data Table: 4C6A58
  Dim var_86 As Integer
  loc_F25F2B: var_86 = KeyCode
  loc_F25F36: If (var_86 = CInt(0)) Then
  loc_F25F55:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F25F62:     var_A0 = "Name"
  loc_F25F7D:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_56)
  loc_F25FAF:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F25FBD:   End If
  loc_F25FC0: Else
  loc_F25FC8:   If (var_86 = CInt(8)) Then
  loc_F25FE6:     If (Me.FrmList.Visible = &HFF) Then
  loc_F26015:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F26025:     End If
  loc_F26025:   End If
  loc_F26025: End If
  loc_F26025: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CD7C
  'Data Table: 4C6A58
  loc_E4CD5A: Set var_88 = Me.Txt
  loc_E4CD60: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CD6E: Proc_6_73_E23294(var_8C)
  loc_E4CD7A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1368BDC
  'Data Table: 4C6A58
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_DC As TextBox
  Dim Me As Recordset15
  Dim var_A4 As Variant
  loc_1368378: On Error Goto loc_1368B95
  loc_136837E: var_86 = Cancel
  loc_1368389: If (var_86 = CInt(0)) Then
  loc_136838F:   Call Proc_140_36_1088408(var_88)
  loc_136839A:   If (var_88 = &HFF) Then
  loc_136839F:     arg_10 = &HFF
  loc_13683A2:     Exit Sub
  loc_13683A3:   End If
  loc_13683A7:   Set var_8C = Me.TopCtrl1
  loc_13683AD:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_13683C6:   If (CStr(var_86) = "Add") Then
  loc_13683D6:     Me.LblSysYN.Caption = "User Defined"
  loc_13683DE:   End If
  loc_13683E1: Else
  loc_13683E9:   If (var_86 = CInt(1)) Then
  loc_13683EF:     Call Proc_140_37_10B4230(var_88)
  loc_13683FA:     If (var_88 = &HFF) Then
  loc_13683FF:       arg_10 = &HFF
  loc_1368402:       Exit Sub
  loc_1368403:     End If
  loc_1368406:   Else
  loc_136840E:     If (var_86 = CInt(&HD)) Then
  loc_136841C:       Set var_8C = Me.Txt
  loc_1368422:       Call 0.Method_Txt_Validate0 (CInt(&HD), var_A4)
  loc_136844E:       var_A0 = CStr(Format(CVar(var_A4), "0.00"))
  loc_136845D:       Set var_D8 = Me.Txt
  loc_1368463:       Call 0.Method_Txt_Validate0 (CInt(&HD), var_DC, var_A0)
  loc_136846B:       var_DC.Text = 1
  loc_1368488:     Else
  loc_1368490:       If (var_86 = CInt(2)) Then
  loc_13684E1:         Set var_8C = Me.Txt
  loc_13684E7:         Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A0)
  loc_13684EF:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A4.Text
  loc_1368507:         If (1 Or (var_A0 = vbNullString)) Then
  loc_136850A:           Exit Sub
  loc_136850B:         End If
  loc_1368546:         Set var_D8 = Me.Txt
  loc_136854C:         Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_1368554:         var_DC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13685A5:         Set var_D8 = Me.Txt
  loc_13685AB:         Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_13685B3:         var_DC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1368605:         Set var_D8 = Me.Txt
  loc_136860B:         Call 0.Method_Txt_Validate0 (CInt(3), var_DC)
  loc_1368613:         var_DC.Text = CStr(Me.Fields.Item("TaxName").Value)
  loc_1368646:         var_A4 = Me.Fields.Item("TaxCode")
  loc_1368657:         var_A0 = CStr(var_A4.Value)
  loc_1368665:         Set var_D8 = Me.Txt
  loc_136866B:         Call 0.Method_Txt_Validate0 (CInt(3), var_DC)
  loc_1368673:         var_DC.Tag = var_A0
  loc_136868C:       Else
  loc_1368694:         If (var_86 = CInt(3)) Then
  loc_13686E5:           Set var_8C = Me.Txt
  loc_13686EB:           Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A0)
  loc_13686F3:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A4.Text
  loc_136870B:           If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_136871B:             Set var_8C = Me.Txt
  loc_1368721:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1368729:             var_A4.Tag = vbNullString
  loc_1368735:             Exit Sub
  loc_1368736:           End If
  loc_1368771:           Set var_D8 = Me.Txt
  loc_1368777:           Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_136877F:           var_DC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13687B2:           var_A4 = Me.Fields.Item("Code")
  loc_13687D0:           Set var_D8 = Me.Txt
  loc_13687D6:           Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_13687DE:           var_DC.Tag = CStr(var_A4.Value)
  loc_13687F7:         Else
  loc_13687FF:           If (var_86 = CInt(4)) Then
  loc_136880D:             Set var_8C = Me.Txt
  loc_1368813:             Call 0.Method_Txt_Validate0 (CInt(4))
  loc_136884E:             Set var_D8 = Me.Txt
  loc_1368854:             Call 0.Method_Txt_Validate0 (CInt(4), var_DC, CStr(Format(CVar(var_A4), "0.00")))
  loc_136885C:             var_DC.Text = 1
  loc_1368879:           Else
  loc_1368881:             If Not (var_86 = CInt(5)) Then
  loc_136888C:               If Not (var_86 = CInt(&HA)) Then
  loc_1368897:                 If Not (var_86 = CInt(&HB)) Then
  loc_13688A2:                   If Not (var_86 = CInt(&HC)) Then
  loc_13688AD:                     If (var_86 = CInt(4)) Then
  loc_13688B0:                     End If
  loc_13688B0:                   End If
  loc_13688B0:                 End If
  loc_13688B0:               End If
  loc_13688BA:               Set var_8C = Me.Txt
  loc_13688C0:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_13688EC:               var_A0 = CStr(Format(CVar(var_A4), "0.00"))
  loc_13688FA:               Set var_D8 = Me.Txt
  loc_1368900:               Call 0.Method_Txt_Validate0 (Cancel, var_DC, var_A0, 1)
  loc_1368908:               var_DC.Text = 1
  loc_1368925:             Else
  loc_136892D:               If (var_86 = CInt(6)) Then
  loc_136893D:                 Set var_8C = Me.Txt
  loc_1368943:                 Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A0)
  loc_136894B:                 1 = var_A4.Text
  loc_1368962:                 If (var_A0 <> vbNullString) Then
  loc_136897D:                   Set var_A4 = Me.ListView1.SelectedItem
  loc_1368995:                   Set var_D8 = Me.Txt
  loc_136899B:                   Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_13689A3:                   var_DC.Text = var_A4.Text
  loc_13689B9:                 End If
  loc_13689BC:               Else
  loc_13689C4:                 If (var_86 = CInt(8)) Then
  loc_13689D4:                   Set var_8C = Me.Txt
  loc_13689DA:                   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_13689F9:                   If (var_A4.Text <> vbNullString) Then
  loc_1368A14:                     Set var_A4 = Me.ListView.SelectedItem
  loc_1368A2C:                     Set var_D8 = Me.Txt
  loc_1368A32:                     Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_1368A3A:                     var_DC.Text = var_A4.Text
  loc_1368A50:                   End If
  loc_1368A53:                 Else
  loc_1368A5B:                   If (var_86 = CInt(9)) Then
  loc_1368A6B:                     Set var_8C = Me.Txt
  loc_1368A71:                     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1368A90:                     If (var_A4.Text <> vbNullString) Then
  loc_1368AAB:                       Set var_A4 = Me.ListView.SelectedItem
  loc_1368AB1:                       var_A0 = var_A4.Text
  loc_1368AC3:                       Set var_D8 = Me.Txt
  loc_1368AC9:                       Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_1368AD1:                       var_DC.Text = var_A0
  loc_1368AE7:                     End If
  loc_1368AEA:                   Else
  loc_1368AF2:                     If (var_86 = CInt(7)) Then
  loc_1368AFF:                       Set var_8C = Me.Txt
  loc_1368B05:                       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1368B24:                       var_D4 = Ucase(Left(CVar(var_A4), 1))
  loc_1368B40:                       If (var_D4 = "Y") Then
  loc_1368B50:                         Set var_8C = Me.Txt
  loc_1368B56:                         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1368B5E:                         var_A4.Text = "Yes"
  loc_1368B6D:                       Else
  loc_1368B7A:                         Set var_8C = Me.Txt
  loc_1368B80:                         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1368B88:                         var_A4.Text = "No"
  loc_1368B94:                       End If
  loc_1368B94:                     End If
  loc_1368B94:                   End If
  loc_1368B94:                 End If
  loc_1368B94:               End If
  loc_1368B94:             End If
  loc_1368B94:           End If
  loc_1368B94:         End If
  loc_1368B94:       End If
  loc_1368B94:     End If
  loc_1368B94:   End If
  loc_1368B94: End If
  loc_1368B94: Exit Sub
  loc_1368B95: ' Referenced from: 1368378
  loc_1368B9D: Set var_8C = Err()
  loc_1368BA3: Call 0.Method_arg_2C (var_A0)
  loc_1368BC4: MsgBox(CVar(var_A0), &H40, "Information", var_D4, var_F4)
  loc_1368BD7: Exit Sub
  loc_1368BD8: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_13 'F56E6C
  'Data Table: 4C6A58
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F56D8E: If (Me.ListView1.ListItems.Count > 0) Then
  loc_F56D95:   Set var_A8 = Me.ListView1
  loc_F56DDF:   Set var_C0 = Me.Txt
  loc_F56DE5:   Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F56DED:   var_C4.Text = Me.ListView1.SelectedItem.Text
  loc_F56E0D: End If
  loc_F56E19: Me.FrmList1.Visible = False
  loc_F56E49: Set var_9C = Me.Txt
  loc_F56E4F: Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(Me.ListView1.Tag))), var_A8)
  loc_F56E57: var_A8.SetFocus
  loc_F56E6B: Exit Sub
End Sub

Private Sub Form_Load() '1090948
  'Data Table: 4C6A58
  Dim var_8C As Label
  Dim var_90 As String
  Dim unk_4C6A6B As Connection15
  Dim var_B4 As Variant
  loc_10906A0: On Error Goto loc_1090903
  loc_10906B2: Me.LblUser.Left = CDbl(13500)
  loc_10906C9: Me.LblUser.Top = CDbl(7800)
  loc_10906E0: Me.LblLDt.Top = CDbl(8160)
  loc_10906F1: Set var_8C = Me.LblLDt
  loc_10906F7: var_8C.Left = CDbl(13500)
  loc_1090706: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_109070B: Call Proc_140_39_1008E74()
  loc_1090734: unk_4C6A6B.Execute "SELECT Code,Name FROM FixedCharge WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_1090763: CVarUnk
  loc_1090768: VerifyVarObj
  loc_1090774: LateIdStAd
  loc_1090796: var_90 = "SELECT  distinct Revmast.Code as Code,RevMast.Name as Name,RevMast.taxstru as TaxCode,TaxStru.name as Taxname FROM RevMast left join TaxStru on  Taxstru.Code=Revmast.Taxstru where (Revmast.LOGSITE_CODE='" & MemVar_1F95078
  loc_10907A6: unk_4C6A6B.Execute var_90 & "' or RevMast.LOGSITE_CODE='HO') AND FlagType='FOM' AND FlagAMR='Detail' ORDER BY Revmast.Name", var_B4, -1
  loc_10907D5: CVarUnk
  loc_10907DA: VerifyVarObj
  loc_10907E6: LateIdStAd
  loc_1090818: unk_4C6A6B.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_1090847: CVarUnk
  loc_109084C: VerifyVarObj
  loc_1090858: LateIdStAd
  loc_109087A: var_90 = "SELECT distinct R.*,R.Code as SearchCode,S.Code as RevCode ,S.Name as RevName,T.Code as TaxCode,T.Name as TaxName FROM ((FixedCharge R Left Join TaxStru T on T.Code=R.TaxStru) Left join RevMast S on S.Code=R.RevCode) WHERE (R.LOGSITE_CODE='" & MemVar_1F95078
  loc_109088A: unk_4C6A6B.Execute var_90 & "' or R.LOGSITE_CODE='HO')", var_B4, -1
  loc_10908BC: Set var_8C = Me
  loc_10908C5: var_90 = "INI"
  loc_10908D3: Call Proc_140_33_F6F528(Proc_5_1_100EC1C(var_90, var_8C, Me.DGTaxStru, var_8C, var_8C, Me.DGRevenue, var_8C), var_8C, Me.DGHelp, var_8C)
  loc_10908E7: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_10908F5: Call 0.Method_arg_164 (var_8C, var_8C)
  loc_10908FD: Call Proc_140_35_140FCD0(var_8C)
  loc_1090902: Exit Sub
  loc_1090903: ' Referenced from: 10906A0
  loc_109090B: Set var_8C = Err()
  loc_1090911: Call 0.Method_arg_2C (var_90)
  loc_1090932: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_1090945: Exit Sub
  loc_1090946: Exit Sub
End Sub

Private Sub Form_Resize() 'ED7A88
  'Data Table: 4C6A58
  Dim var_8C As Label
  loc_ED79E6: Call 0.Method_arg_50 (var_88)
  loc_ED79F8: Me.LblFormCaption.Caption = var_88
  loc_ED7A11: Me.LblFormCaption.Left = CDbl(0)
  loc_ED7A1D: Set var_A0 = Me.TopCtrl1
  loc_ED7A23: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED7A30: Set var_8C = Me.TopCtrl1
  loc_ED7A36: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED7A50: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED7A6B: Call 0.Method_arg_100 (var_B8)
  loc_ED7A7D: Me.LblFormCaption.Width = var_B8
  loc_ED7A85: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5F048
  'Data Table: 4C6A58
  loc_E5F007: Set global_52 = Nothing
  loc_E5F019: Set global_56 = Nothing
  loc_E5F02B: Set global_60 = Nothing
  loc_E5F03D: Set global_64 = Nothing
  loc_E5F044: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29844
  'Data Table: 4C6A58
  loc_E2981C: On Error Goto loc_E2983B
  loc_E29833: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2983B: ' Referenced from: E2981C
  loc_E2983B: Proc_6_60_E63754(Shift)
  loc_E29840: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFC27C
  'Data Table: 4C6A58
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFC1B0: On Error Goto loc_EFC236
  loc_EFC1C0: Me.LblUser.Caption = vbNullString
  loc_EFC1D5: Me.LblLDt.Caption = vbNullString
  loc_EFC1DD: Call Proc_140_34_E78084()
  loc_EFC1F7: var_8C = "ADD"
  loc_EFC205: Call Proc_140_33_F6F528(Proc_5_1_100EC1C(var_8C, Me))
  loc_EFC21B: Set var_88 = Me.Txt
  loc_EFC221: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFC229: var_94.SetFocus
  loc_EFC235: Exit Sub
  loc_EFC236: ' Referenced from: EFC1B0
  loc_EFC23E: Set var_88 = Err()
  loc_EFC244: Call 0.Method_arg_2C (var_8C)
  loc_EFC265: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFC278: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBD3FC
  'Data Table: 4C6A58
  loc_EBD368: On Error Goto loc_EBD3F3
  loc_EBD3A2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBD3B1:   Set var_110 = Me
  loc_EBD3C8:   Call Proc_140_33_F6F528(Proc_5_1_100EC1C("INI", var_110))
  loc_EBD3D3:   Call Proc_140_35_140FCD0(global_52)
  loc_EBD3DB: Else
  loc_EBD3E1:   Call 0.Method_arg_1E8 (var_110)
  loc_EBD3E9:   Call var_110.SetFocus
  loc_EBD3F2: End If
  loc_EBD3F2: Exit Sub
  loc_EBD3F3: ' Referenced from: EBD368
  loc_EBD3F3: Proc_6_60_E63754()
  loc_EBD3F8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10E9B50
  'Data Table: 4C6A58
  Dim var_96 As Integer
  Dim unk_4C6A6B As Connection15
  Dim Me As Recordset15
  Dim var_124 As Fields15
  Dim var_FC As Variant
  Dim var_12C As String
  loc_10E9868: On Error Goto loc_10E9AF9
  loc_10E9879: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_10E987C:   Exit Sub
  loc_10E987D: End If
  loc_10E98B4: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_10E98B9:   var_96 = 0
  loc_10E98C5:   unk_4C6A6B.BeginTrans var_120
  loc_10E98CC:   var_96 = &HFF
  loc_10E98E0:   var_94 = Me.Bookmark 'Variant
  loc_10E992C:   var_FC = "Delete From FixedCharge Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10E993A:   unk_4C6A6B.Execute CStr(var_FC), var_11C, -1
  loc_10E9985:   var_168 = 0
  loc_10E9998:   var_160 = 0
  loc_10E99A3:   var_15C = 0
  loc_10E99B6:   var_154 = 0
  loc_10E99C1:   var_150 = 0
  loc_10E99D4:   var_148 = 0
  loc_10E9A14:   var_12C = "FixedCharge"
  loc_10E9A1D:   Proc_154_5_10E3BD4(MemVar_1F95044, var_12C, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10E9A4B:   unk_4C6A6B.CommitTrans
  loc_10E9A52:   var_96 = 0
  loc_10E9A60:   Me.Requery -1
  loc_10E9A70:   Me.Requery -1
  loc_10E9A90:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10E9A9D:     Me.Bookmark = var_94
  loc_10E9AA5:   Else
  loc_10E9AB9:     If (Me.EOF = 0) Then
  loc_10E9AC2:       Me.MoveLast
  loc_10E9AC7:     End If
  loc_10E9AC7:   End If
  loc_10E9AC7:   Call Proc_140_35_140FCD0(var_96, var_148, 0, var_150, var_154)
  loc_10E9AE8:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_10E9AF0: End If
  loc_10E9AF5: Set var_9C = Nothing
  loc_10E9AF8: Exit Sub
  loc_10E9AF9: ' Referenced from: 10E9868
  loc_10E9AFF: If (var_96 = &HFF) Then
  loc_10E9B08:   unk_4C6A6B.RollbackTrans
  loc_10E9B0D: End If
  loc_10E9B15: Set var_124 = Err()
  loc_10E9B1B: Call 0.Method_arg_2C (var_12C, 0, var_15C)
  loc_10E9B3C: MsgBox(CVar(var_12C), &H30, " Deletion Error ", var_FC, var_11C)
  loc_10E9B4F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F60F2C
  'Data Table: 4C6A58
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F60E08: On Error Goto loc_F60EE9
  loc_F60E18: Me.LblUser.Caption = vbNullString
  loc_F60E2D: Me.LblLDt.Caption = vbNullString
  loc_F60E43: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F60E46:   Exit Sub
  loc_F60E47: End If
  loc_F60E5E: If (Me.RecordCount > 0) Then
  loc_F60E76:   var_90 = "EDIT"
  loc_F60E84:   Call Proc_140_33_F6F528(Proc_5_1_100EC1C(var_90, Me))
  loc_F60E9A:   Set var_88 = Me.Txt
  loc_F60EA0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F60EA8:   var_98.SetFocus
  loc_F60EB7: Else
  loc_F60ED8:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F60EE8: End If
  loc_F60EE8: Exit Sub
  loc_F60EE9: ' Referenced from: F60E08
  loc_F60EF1: Set var_88 = Err()
  loc_F60EF7: Call 0.Method_arg_2C (var_90)
  loc_F60F18: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_F60F2B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16E88
  'Data Table: 4C6A58
  loc_E16E7D: Me.Global.Unload Me
  loc_E16E85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F25D98
  'Data Table: 4C6A58
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F25C98: On Error Goto loc_F25D30
  loc_F25CA4: var_88 = Me.RecordCount
  loc_F25CB2: If (var_88 <= 0) Then
  loc_F25CBB:   var_B8 = "Information"
  loc_F25CD6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F25CE6:   Exit Sub
  loc_F25CE7: End If
  loc_F25CF5: MemVar_1F950E4 = "Select FixedCharge.Code As SearchCode,FixedCharge.Name FROM FixedCharge where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by FixedCharge.Name"
  loc_F25CFF: var_10C = "3000"
  loc_F25D05: Proc_6_126_F1C850(var_10C)
  loc_F25D13: MemVar_1F95120 = Me
  loc_F25D2A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F25D2F: Exit Sub
  loc_F25D30: ' Referenced from: F25C98
  loc_F25D38: Set var_110 = Err()
  loc_F25D3E: Call 0.Method_arg_1C (var_88)
  loc_F25D4F: If (var_88 <> 0) Then
  loc_F25D5A:   Set var_110 = Err()
  loc_F25D60:   Call 0.Method_arg_2C (var_10C)
  loc_F25D81:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F25D94: End If
  loc_F25D94: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E30308
  'Data Table: 4C6A58
  loc_E302F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30300: Call Proc_140_35_140FCD0(global_52)
  loc_E30305: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E301E8
  'Data Table: 4C6A58
  loc_E301D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E301E0: Call Proc_140_35_140FCD0(global_52)
  loc_E301E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E30248
  'Data Table: 4C6A58
  loc_E30238: Proc_5_0_1107AD0(&HFF, Me)
  loc_E30240: Call Proc_140_35_140FCD0(global_52)
  loc_E30245: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E302A8
  'Data Table: 4C6A58
  loc_E30298: Proc_5_0_1107AD0(&HFF, Me)
  loc_E302A0: Call Proc_140_35_140FCD0(global_52)
  loc_E302A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1097DD0
  'Data Table: 4C6A58
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4C6A6B As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_132 As Integer
  Dim var_C8 As Variant
  Dim var_F0 As Variant
  loc_1097B30: On Error Goto loc_1097D85
  loc_1097B47: var_A0 = "SELECT FixedCharge.Name, FixedCharge.SName, FixedCharge.Adult, FixedCharge.FlatRate, S.Name AS AccName FROM (FixedCharge INNER JOIN RevMast ON FixedCharge.Revcode = RevMast.Code) INNER JOIN SubGroup AS S ON RevMast.ACCode = S.SubCode" & " where (FixedCharge.LOGSITE_CODE='"
  loc_1097B5E: unk_4C6A6B.Execute var_A0 & MemVar_1F95078 & "' or FixedCharge.LOGSITE_CODE='HO')  Order by FixedCharge.Name", var_C8, -1
  loc_1097B69: Set var_88 = var_CC
  loc_1097B81: var_D0 = var_88.RecordCount
  loc_1097B8F: If (var_D0 = 0) Then
  loc_1097BAB:   MsgBox("No Record Present For Printing", 0, var_F0, var_110, var_130)
  loc_1097BBB:   Exit Sub
  loc_1097BBC: End If
  loc_1097BCB: var_A4 = MemVar_1F950B4 & "\FixedCharge.ttx"
  loc_1097BD2: Set var_CC = var_88 
  loc_1097BDE: var_132 = CreateFieldDefFile(var_CC, var_A4)
  loc_1097BE8: Set var_88 = var_CC
  loc_1097BEE: var_B8 = CVar(var_132) 'Integer
  loc_1097BF1: var_98 = var_B8 'Variant
  loc_1097C0D: var_A0 = MemVar_1F950B4 & "\FixedCharge.RPT"
  loc_1097C16: Call 0.Method_arg_1C (var_A0, var_B8, var_CC)
  loc_1097C21: MemVar_1F951E8 = var_CC
  loc_1097C3C: Call 0.Method_arg_90 (var_CC, var_D0, var_9A, 1)
  loc_1097C44: Call 0.Method_arg_24 (var_132, &HFF)
  loc_1097C50: For var_136 =  To CInt(var_D0): var_CC = var_136 'Integer
  loc_1097C69:   Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_1097C71:   Call 0.Method_arg_20 (var_13C)
  loc_1097C79:   Call 0.Method_arg_30 (var_A0)
  loc_1097CBF:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1097CD5:     Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_1097CDD:     Call 0.Method_arg_20 (var_13C)
  loc_1097CE5:     Call 0.Method_arg_38 ("'Fixed Charge Master'")
  loc_1097CF1:   End If
  loc_1097CF4: Next var_136 'Integer
  loc_1097D12: Call 0.Method_arg_64 (var_CC, CVar(var_88))
  loc_1097D1A: Call 0.Method_arg_2C (var_E0)
  loc_1097D28: Call 0.Method_arg_150 (var_100)
  loc_1097D33: Call 0.Method_arg_50 (var_A0)
  loc_1097D3D: Set var_13C = Nothing
  loc_1097D57: Set var_CC = MemVar_1F951E8 
  loc_1097D63: Proc_6_99_1484404(var_CC, 0, var_A0)
  loc_1097D6E: MemVar_1F951E8 = var_CC
  loc_1097D81: Set var_88 = Nothing
  loc_1097D84: Exit Sub
  loc_1097D85: ' Referenced from: 1097B30
  loc_1097D8D: Set var_CC = Err()
  loc_1097D93: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1097D9E: Call 0.Method_arg_50 (var_A4)
  loc_1097DBA: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_110, var_130)
  loc_1097DCD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E41BE0
  'Data Table: 4C6A58
  Dim Me As Recordset15
  loc_E41BB7: Me.Requery -1
  loc_E41BC7: Me.Requery -1
  loc_E41BD7: Me.Requery -1
  loc_E41BDC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15D8338
  'Data Table: 4C6A58
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_D4 As Variant
  Dim unk_4C6A6B As Connection15
  Dim var_94 As Variant
  Dim var_9C As Field20
  Dim var_F4 As Variant
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim Me As Recordset15
  Dim var_118 As TextBox
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_154 As TextBox
  Dim var_168 As TextBox
  Dim var_B4 As Variant
  Dim var_1DC As TextBox
  Dim var_4E8 As Double
  Dim var_228 As TextBox
  Dim var_4F0 As Double
  Dim var_274 As TextBox
  Dim var_4F8 As Double
  Dim var_2C0 As TextBox
  Dim var_500 As Double
  Dim var_30C As TextBox
  Dim var_508 As Double
  Dim var_110 As String
  Dim var_174 As String
  Dim var_220 As Variant
  Dim var_26C As Variant
  Dim var_2B8 As Variant
  Dim var_350 As Variant
  Dim var_428 As Variant
  Dim var_498 As Variant
  Dim var_17C As TextBox
  Dim var_194 As TextBox
  Dim var_398 As TextBox
  Dim var_144 As String
  Dim var_3B8 As Variant
  Dim var_448 As Variant
  Dim var_4DC As Variant
  Dim var_548 As Variant
  Dim var_578 As Variant
  Dim var_310 As String
  loc_15D7134: On Error Goto loc_15D82E4
  loc_15D713B: var_86 = CByte(0) 'Byte
  loc_15D714A: Set var_94 = Me.Txt
  loc_15D7150: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15D7179: If (Proc_183_19_E8E68C(var_98, "Name") = 0) Then
  loc_15D7183:   Call Txt_GotFocus(CInt(0))
  loc_15D7188:   Exit Sub
  loc_15D7189: End If
  loc_15D7194: Set var_94 = Me.Txt
  loc_15D719A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_15D71C3: If (Proc_183_19_E8E68C(var_98, "Short Name") = 0) Then
  loc_15D71CD:   Call Txt_GotFocus(CInt(1))
  loc_15D71D2:   Exit Sub
  loc_15D71D3: End If
  loc_15D71DE: Set var_94 = Me.Txt
  loc_15D71E4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_98)
  loc_15D720D: If (Proc_183_19_E8E68C(var_98, "Charge Category") = 0) Then
  loc_15D7217:   Call Txt_GotFocus(CInt(&HD))
  loc_15D721C:   Exit Sub
  loc_15D721D: End If
  loc_15D7228: Set var_94 = Me.Txt
  loc_15D722E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_15D7257: If (Proc_183_19_E8E68C(var_98, "Ledger A/C") = 0) Then
  loc_15D7261:   Call Txt_GotFocus(CInt(2))
  loc_15D7266:   Exit Sub
  loc_15D7267: End If
  loc_15D7275: Set var_94 = Me.Txt
  loc_15D727B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_98)
  loc_15D729A: If (var_98.Text = "Flat Rate") Then
  loc_15D72AB:   Set var_94 = Me.Txt
  loc_15D72B1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_15D72B9:   var_98.Text = "0.00"
  loc_15D72D3:   Set var_94 = Me.Txt
  loc_15D72D9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98)
  loc_15D72E1:   var_98.Text = "0.00"
  loc_15D72FB:   Set var_94 = Me.Txt
  loc_15D7301:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_98)
  loc_15D7309:   var_98.Text = "0.00"
  loc_15D7323:   Set var_94 = Me.Txt
  loc_15D7329:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_98)
  loc_15D7331:   var_98.Text = "0.00"
  loc_15D7348:   Set var_94 = Me.Txt
  loc_15D734E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_15D7377:   If (Proc_183_19_E8E68C(var_98, "Flat Rat0e") = 0) Then
  loc_15D7381:     Call Txt_GotFocus(CInt(4))
  loc_15D7386:     Exit Sub
  loc_15D7387:   End If
  loc_15D7387: End If
  loc_15D7395: Set var_94 = Me.Txt
  loc_15D739B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_98)
  loc_15D73BA: If (var_98.Text <> "Flat Rate") Then
  loc_15D73CB:   Set var_94 = Me.Txt
  loc_15D73D1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_15D73D9:   var_98.Text = "0.00"
  loc_15D73F0:   Set var_94 = Me.Txt
  loc_15D73F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_15D741F:   If (Proc_183_19_E8E68C(var_98, "Adult") = 0) Then
  loc_15D7429:     Call Txt_GotFocus(CInt(5))
  loc_15D742E:     Exit Sub
  loc_15D742F:   End If
  loc_15D742F: End If
  loc_15D743A: Set var_94 = Me.Txt
  loc_15D7440: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_98)
  loc_15D7469: If (Proc_183_19_E8E68C(var_98, "Posting Method") = 0) Then
  loc_15D7473:   Call Txt_GotFocus(CInt(6))
  loc_15D7478:   Exit Sub
  loc_15D7479: End If
  loc_15D747D: Set var_94 = Me.TopCtrl1
  loc_15D7483: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_15D749C: If (CStr() = "Add") Then
  loc_15D74A5:   var_D4 = 0
  loc_15D74C4:   unk_4C6A6B.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From FixedCharge ", var_B4, -1
  loc_15D74CC:   var_94 = var_94.Fields
  loc_15D74D4:   var_D4 = var_98.Item(var_98)
  loc_15D74DC:   var_9C = var_9C.Value
  loc_15D750F:   var_F4 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_15D753D:   var_104 = (1 + Format(CStr(var_E4), "000"))
  loc_15D7548:   global_72 = CStr(var_104)
  loc_15D755D: Else
  loc_15D757A:   var_98 = Me.Fields.Item("Code")
  loc_15D7591:   global_72 = CStr(var_98.Value)
  loc_15D75A2: End If
  loc_15D75AB: unk_4C6A6B.BeginTrans var_108
  loc_15D75B4: var_86 = CByte(1) 'Byte
  loc_15D75BC: Set var_94 = Me.TopCtrl1
  loc_15D75C2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_15D75DB: If (CStr(var_F4) = "Add") Then
  loc_15D75EC:   Set var_94 = Me.Txt
  loc_15D75F2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_15D760D:   Set var_9C = Me.Txt
  loc_15D7613:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118)
  loc_15D762E:   Set var_128 = Me.Txt
  loc_15D7634:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_12C)
  loc_15D764F:   Set var_13C = Me.Txt
  loc_15D7655:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_140)
  loc_15D7670:   Set var_150 = Me.Txt
  loc_15D7676:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_154)
  loc_15D7691:   Set var_164 = Me.Txt
  loc_15D7697:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_168)
  loc_15D76AF:   Set var_178 = Me.Txt
  loc_15D76B5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_17C)
  loc_15D76C4:   var_E4 = Trim(CVar(var_17C))
  loc_15D76D4:   Set var_190 = Me.Txt
  loc_15D76DA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_194)
  loc_15D76E9:   var_1B4 = Trim(CVar(var_194))
  loc_15D76FC:   Set var_1D8 = Me.Txt
  loc_15D7702:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1DC)
  loc_15D7717:   var_4E8 = Val(var_1DC.Text)
  loc_15D7728:   Set var_224 = Me.Txt
  loc_15D772E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_228, var_22C)
  loc_15D7743:   var_4F0 = Val(var_22C)
  loc_15D7754:   Set var_270 = Me.Txt
  loc_15D775A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_274, var_278)
  loc_15D776F:   var_4F8 = Val(var_278)
  loc_15D7780:   Set var_2BC = Me.Txt
  loc_15D7786:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_2C0, var_2C4)
  loc_15D779B:   var_500 = Val(var_2C4)
  loc_15D77AC:   Set var_308 = Me.Txt
  loc_15D77B2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_30C, var_310)
  loc_15D77D5:   Set var_394 = Me.Txt
  loc_15D77DB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_398)
  loc_15D77FD:   Proc_6_7_F26918(var_448, Date)
  loc_15D7819:   var_A0 = "Insert Into FixedCharge(Code,Name,SName,ChgCategory,RevCode,TaxInc,TaxStru,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild,Site_Code,PrintOption,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_72
  loc_15D7820:   var_110 = var_A0 & "','"
  loc_15D786D:   var_174 = var_110 & var_98.Text & "','" & var_118.Text & "','" & var_12C.Text & "','" & var_140.Tag & "','" & var_154.Text & "','" & var_168.Tag
  loc_15D787E:   var_C4 = "','"
  loc_15D78A7:   var_220 = CVar(var_174 & "','") & var_E4 & var_C4 & var_1B4 & "'," & CVar(var_228.Text) & "," 
  loc_15D78CF:   var_2B8 = var_220 & CVar(var_274.Text) & "," & CVar(var_2C0.Text) & "," 
  loc_15D78F7:   var_350 = var_2B8 & CVar(var_30C.Text) & "," & CVar(Val(var_310)) & ",'" 
  loc_15D7947:   var_498 = var_350 & CVar(MemVar_1F95070) & "','" & Trim(CVar(var_398)) & "','" & CVar(MemVar_1F950C8) & "'," & var_448 & ",'A','" & CVar(MemVar_1F95078) 
  loc_15D795E:   unk_4C6A6B.Execute CStr(var_498 & "')"), var_4DC, -1
  loc_15D7A19: Else
  loc_15D7A27:   Set var_94 = Me.Txt
  loc_15D7A2D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_15D7A35:   var_4E0 = var_98.Text
  loc_15D7A48:   Set var_9C = Me.Txt
  loc_15D7A4E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118, var_110)
  loc_15D7A56:   var_508 = var_118.Text
  loc_15D7A69:   Set var_128 = Me.Txt
  loc_15D7A6F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_12C)
  loc_15D7A8A:   Set var_13C = Me.Txt
  loc_15D7A90:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_140)
  loc_15D7AAB:   Set var_150 = Me.Txt
  loc_15D7AB1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_154)
  loc_15D7ACC:   Set var_164 = Me.Txt
  loc_15D7AD2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_168)
  loc_15D7AEE:   Proc_6_39_E7D3A0(var_E4, CVar(Val(var_168.Text)))
  loc_15D7B01:   Set var_178 = Me.Txt
  loc_15D7B07:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_17C)
  loc_15D7B23:   Proc_6_39_E7D3A0(var_1B4, CVar(Val(var_17C.Text)))
  loc_15D7B36:   Set var_190 = Me.Txt
  loc_15D7B3C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_194)
  loc_15D7B58:   Proc_6_39_E7D3A0(var_220, CVar(Val(var_194.Text)))
  loc_15D7B6B:   Set var_1D8 = Me.Txt
  loc_15D7B71:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1DC)
  loc_15D7B8D:   Proc_6_39_E7D3A0(var_2B8, CVar(Val(var_1DC.Text)))
  loc_15D7BA0:   Set var_224 = Me.Txt
  loc_15D7BA6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_228)
  loc_15D7BC2:   Proc_6_39_E7D3A0(var_350, CVar(Val(var_228.Text)))
  loc_15D7BD5:   Set var_270 = Me.Txt
  loc_15D7BDB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_274)
  loc_15D7BF6:   Set var_2BC = Me.Txt
  loc_15D7BFC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2C0)
  loc_15D7C17:   Set var_308 = Me.Txt
  loc_15D7C1D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_30C)
  loc_15D7C38:   Set var_394 = Me.Txt
  loc_15D7C3E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_398)
  loc_15D7C59:   Proc_6_7_F26918(var_538, Date)
  loc_15D7C9C:   var_144 = "UPDATE FixedCharge SET Name='" & var_A0 & "',Sname='" & var_110 & "',ChgCategory='" & var_12C.Text & "',RevCode='" & var_140.Tag
  loc_15D7CE0:   var_26C = CVar(var_144 & "',TaxStru='" & var_154.Tag & "',FlatRate=") & var_E4 & ",Adult=" & var_1B4 & ",ExtraAdult=" & var_220 & ",Child=" 
  loc_15D7D26:   var_428 = var_26C & var_2B8 & ",ExtraChild=" & var_350 & ",TaxInc='" & CVar(var_274.Text) & "',PrintOption='" & CVar(var_2C0.Text) & "',PostingMethod='" 
  loc_15D7D66:   var_548 = var_428 & CVar(var_30C.Text) & "',ChargeType='" & CVar(var_398.Text) & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_538 
  loc_15D7DA6:   unk_4C6A6B.Execute CStr(var_548 & ",U_AE='E',Site_Code='" & CVar(MemVar_1F95070) & "' WHERE Code='" & CVar(global_72) & "'"), var_5B8, -1
  loc_15D7E7C:   Set var_94 = Me.Txt
  loc_15D7E82:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_A0)
  loc_15D7E8A:   var_4E0 = var_98.Tag
  loc_15D7E9D:   Set var_9C = Me.Txt
  loc_15D7EA3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_118)
  loc_15D7EBE:   Set var_128 = Me.Txt
  loc_15D7EC4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_12C)
  loc_15D7EE0:   Proc_6_39_E7D3A0(var_E4, CVar(Val(var_12C.Text)))
  loc_15D7EF3:   Set var_13C = Me.Txt
  loc_15D7EF9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_140)
  loc_15D7F15:   Proc_6_39_E7D3A0(var_1B4, CVar(Val(var_140.Text)))
  loc_15D7F28:   Set var_150 = Me.Txt
  loc_15D7F2E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_154)
  loc_15D7F4A:   Proc_6_39_E7D3A0(var_220, CVar(Val(var_154.Text)))
  loc_15D7F5D:   Set var_164 = Me.Txt
  loc_15D7F63:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_168)
  loc_15D7F7F:   Proc_6_39_E7D3A0(var_2B8, CVar(Val(var_168.Text)))
  loc_15D7F92:   Set var_178 = Me.Txt
  loc_15D7F98:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_17C)
  loc_15D7FB4:   Proc_6_39_E7D3A0(var_350, CVar(Val(var_17C.Text)))
  loc_15D7FC7:   Set var_190 = Me.Txt
  loc_15D7FCD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_194)
  loc_15D7FE8:   Set var_1D8 = Me.Txt
  loc_15D7FEE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1DC)
  loc_15D8009:   Set var_224 = Me.Txt
  loc_15D800F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_228)
  loc_15D802A:   Set var_270 = Me.Txt
  loc_15D8030:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_274)
  loc_15D804B:   Proc_6_7_F26918(var_538, Date)
  loc_15D8079:   var_F4 = CVar("UPDATE PLAN1 SET RevCode='" & var_A0 & "',TaxStru='" & var_118.Tag & "',FlatRate=") 'String
  loc_15D807F:   var_104 = var_F4 & var_E4 
  loc_15D80D2:   var_3B8 = var_104 & ",Adult=" & var_1B4 & ",ExtraAdult=" & var_220 & ",Child=" & var_2B8 & ",ExtraChild=" & var_350 & ",TaxInc='" & CVar(var_194.Text) 
  loc_15D810B:   var_498 = var_3B8 & "',PrintOption='" & CVar(var_1DC.Text) & "',PostingMethod='" & CVar(var_228.Text) & "',ChargeType='" & CVar(var_274.Text) 
  loc_15D814A:   var_578 = var_498 & "',U_name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_538 & ",U_AE='E',Site_Code='" & CVar(MemVar_1F95070) & "' WHERE ChrgCode='" 
  loc_15D816E:   unk_4C6A6B.Execute CStr(var_578 & CVar(global_72) & "'"), var_5B8, -1
  loc_15D8218: End If
  loc_15D821E: unk_4C6A6B.CommitTrans
  loc_15D8227: var_86 = CByte(0) 'Byte
  loc_15D822B: Call Proc_140_38_F1F41C(var_2BC)
  loc_15D823B: Me.Requery -1
  loc_15D824B: Me.Requery -1
  loc_15D8278: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_15D8288: Set var_94 = Me.TopCtrl1
  loc_15D828E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C4)
  loc_15D82A7: If (CStr(var_E4) = "Add") Then
  loc_15D82AA:   Call TopCtrl1_UnknownEvent_A()
  loc_15D82AF:   Exit Sub
  loc_15D82B0: End If
  loc_15D82C5: var_A0 = "INI"
  loc_15D82D3: Call Proc_140_33_F6F528(Proc_5_1_100EC1C(var_A0, Me))
  loc_15D82DE: Call Proc_140_35_140FCD0(global_52)
  loc_15D82E3: Exit Sub
  loc_15D82E4: ' Referenced from: 15D7134
  loc_15D82ED: If (CInt(var_86) = 1) Then
  loc_15D82F6:   unk_4C6A6B.RollbackTrans
  loc_15D82FB: End If
  loc_15D8303: Set var_94 = Err()
  loc_15D8309: Call 0.Method_arg_2C (var_A0)
  loc_15D8322: MsgBox(CVar(var_A0), &H10, var_E4, var_F4, var_104)
  loc_15D8335: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 '10F8524
  'Data Table: 4C6A58
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_BC As String
  Dim var_CC As Double
  Dim var_C4 As TextBox
  loc_10F8236: If (Me.ListView.ListItems.Count > 0) Then
  loc_10F823D:   Set var_A8 = Me.ListView
  loc_10F824B:   var_BC = CStr(var_A8.Tag)
  loc_10F8287:   Set var_C0 = Me.Txt
  loc_10F828D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(var_BC)), var_C4)
  loc_10F8295:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_10F82B5: End If
  loc_10F82C1: Me.FrmList.Visible = False
  loc_10F82F1: If (CDbl(Val(CStr(Me.ListView.Tag))) = CDbl(9)) Then
  loc_10F831F:   Set var_9C = Me.Txt
  loc_10F8325:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8, var_BC)
  loc_10F832D:   var_CC = var_A8.Text
  loc_10F834D:   If (var_BC = "Flat Rate") Then
  loc_10F835D:     Set var_88 = Me.Txt
  loc_10F8363:     Call 0.Method_ListView_UnknownEvent_130 (CInt(4), var_9C)
  loc_10F836B:     var_9C.Enabled = True
  loc_10F8384:     Set var_88 = Me.Txt
  loc_10F838A:     Call 0.Method_ListView_UnknownEvent_130 (CInt(5), var_9C)
  loc_10F8392:     var_9C.Enabled = False
  loc_10F83AB:     Set var_88 = Me.Txt
  loc_10F83B1:     Call 0.Method_ListView_UnknownEvent_130 (CInt(&HA), var_9C)
  loc_10F83B9:     var_9C.Enabled = False
  loc_10F83D2:     Set var_88 = Me.Txt
  loc_10F83D8:     Call 0.Method_ListView_UnknownEvent_130 (CInt(&HB), var_9C)
  loc_10F83E0:     var_9C.Enabled = False
  loc_10F83F9:     Set var_88 = Me.Txt
  loc_10F83FF:     Call 0.Method_ListView_UnknownEvent_130 (CInt(&HC), var_9C)
  loc_10F8407:     var_9C.Enabled = False
  loc_10F8416:   Else
  loc_10F8423:     Set var_88 = Me.Txt
  loc_10F8429:     Call 0.Method_ListView_UnknownEvent_130 (CInt(4), var_9C)
  loc_10F8431:     var_9C.Enabled = False
  loc_10F844A:     Set var_88 = Me.Txt
  loc_10F8450:     Call 0.Method_ListView_UnknownEvent_130 (CInt(5), var_9C)
  loc_10F8458:     var_9C.Enabled = True
  loc_10F8471:     Set var_88 = Me.Txt
  loc_10F8477:     Call 0.Method_ListView_UnknownEvent_130 (CInt(&HA), var_9C)
  loc_10F847F:     var_9C.Enabled = True
  loc_10F8498:     Set var_88 = Me.Txt
  loc_10F849E:     Call 0.Method_ListView_UnknownEvent_130 (CInt(&HB), var_9C)
  loc_10F84A6:     var_9C.Enabled = True
  loc_10F84BF:     Set var_88 = Me.Txt
  loc_10F84C5:     Call 0.Method_ListView_UnknownEvent_130 (CInt(&HC), var_9C)
  loc_10F84CD:     var_9C.Enabled = True
  loc_10F84D9:   End If
  loc_10F84D9: End If
  loc_10F8501: Set var_9C = Me.Txt
  loc_10F8507: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_10F850F: var_A8.SetFocus
  loc_10F8523: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F49254
  'Data Table: 4C6A58
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4914B: Me.DGTaxStru.Visible = False
  loc_F4916A: If (Me.RecordCount > 0) Then
  loc_F491A9:   Set var_B4 = Me.Txt
  loc_F491AF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3), var_B8)
  loc_F491B7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F491EA:   var_B0 = Me.Fields.Item("Name")
  loc_F49209:   Set var_B4 = Me.Txt
  loc_F4920F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3), var_B8)
  loc_F49217:   var_B8.Text = CStr(var_B0.Value)
  loc_F4922D: End If
  loc_F49238: Set var_A8 = Me.Txt
  loc_F4923E: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3))
  loc_F49246: var_B0.SetFocus
  loc_F49252: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EA8E54
  'Data Table: 4C6A58
  Dim var_A8 As Variant
  loc_EA8DD4: Set var_88 = Me.DGTaxStru
  loc_EA8DFE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA8E06: Set var_BC = Me.DGTaxStru
  loc_EA8E42: Proc_6_138_106E830(Me.DGTaxStru, global_64, CInt(3), Me.FGPoint)
  loc_EA8E50: Exit Sub
  loc_EA8E51: DGTaxStru.DispID_1B = var_A8
End Sub

Private Sub FGPoint_UnknownEvent_9 'E86E38
  'Data Table: 4C6A58
  loc_E86DE4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E86DE7:   Call DGHelp_UnknownEvent_9()
  loc_E86DEC: End If
  loc_E86E08: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_E86E0B:   Call DGTaxStru_UnknownEvent_9()
  loc_E86E10: End If
  loc_E86E2C: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_E86E2F:   Call DGRevenue_UnknownEvent_9()
  loc_E86E34: End If
  loc_E86E34: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC16D4
  'Data Table: 4C6A58
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC164A: On Error Goto loc_EC168F
  loc_EC1653: Me.MoveFirst
  loc_EC166D: var_8C = "code='" & MyValue
  loc_EC167D: Me.Find var_8C & "'", 0, 1
  loc_EC1689: Call Proc_140_35_140FCD0(var_A0)
  loc_EC168E: Exit Sub
  loc_EC168F: ' Referenced from: EC164A
  loc_EC1697: Set var_A4 = Err()
  loc_EC169D: Call 0.Method_arg_2C (var_8C)
  loc_EC16BE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC16D1: Exit Sub
  loc_EC16D2: Exit Sub
End Sub

Public Sub Proc_140_33_F6F528(arg_C) 'F6F528
  'Data Table: 4C6A58
  Dim var_98 As TextBox
  loc_F6F3F2: Set var_8C = Me.Txt
  loc_F6F3F8: Call 0.Method_Proc_140_33_F6F528C (var_8E, var_86)
  loc_F6F408: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F6F41E:   Set var_8C = Me.Txt
  loc_F6F424:   Call 0.Method_Proc_140_33_F6F5280 (CInt(var_86), var_98)
  loc_F6F42C:   var_98.Enabled = arg_C
  loc_F6F43B: Next var_92 'Byte
  loc_F6F44E: Set var_8C = Me.Txt
  loc_F6F454: Call 0.Method_Proc_140_33_F6F5280 (CInt(3), var_98)
  loc_F6F45C: var_98.Enabled = False
  loc_F6F476: Set var_8C = Me.Txt
  loc_F6F47C: Call 0.Method_Proc_140_33_F6F5280 (CInt(8), var_98)
  loc_F6F49B: If (var_98.Text = vbNullString) Then
  loc_F6F4AC:   Set var_8C = Me.Txt
  loc_F6F4B2:   Call 0.Method_Proc_140_33_F6F5280 (CInt(8), var_98)
  loc_F6F4BA:   var_98.Text = "Add to Rate"
  loc_F6F4C6: End If
  loc_F6F4D4: Set var_8C = Me.Txt
  loc_F6F4DA: Call 0.Method_Proc_140_33_F6F5280 (CInt(7), var_98)
  loc_F6F4F9: If (var_98.Text = vbNullString) Then
  loc_F6F50A:   Set var_8C = Me.Txt
  loc_F6F510:   Call 0.Method_Proc_140_33_F6F5280 (CInt(7), var_98)
  loc_F6F518:   var_98.Text = "Yes"
  loc_F6F524: End If
  loc_F6F524: Exit Sub
End Sub

Public Sub Proc_140_34_E78084
  'Data Table: 4C6A58
  Dim var_98 As TextBox
  loc_E78032: Set var_8C = Me.Txt
  loc_E78038: Call 0.Method_Proc_140_34_E78084C (var_8E, var_86)
  loc_E78048: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7805E:   Set var_8C = Me.Txt
  loc_E78064:   Call 0.Method_Proc_140_34_E780840 (CInt(var_86), var_98)
  loc_E7806C:   var_98.Text = vbNullString
  loc_E7807B: Next var_92 'Byte
  loc_E78081: Exit Sub
End Sub

Public Sub Proc_140_35_140FCD0
  'Data Table: 4C6A58
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_4C6A6B As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As TextBox
  loc_140F298: On Error Goto loc_140FC8D
  loc_140F2A1: Proc_183_45_E5CCA8(global_52)
  loc_140F2FC: unk_4C6A6B.Execute CStr("Select U_Name,U_AE,U_EntDt From FixedCharge where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_140F307: Set var_88 = var_118
  loc_140F35B: var_118 = var_88.Fields
  loc_140F3C4: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_140F409: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_140F483: var_11C = var_88.Fields.Item("U_AE")
  loc_140F49C: var_114 = "entdt : "
  loc_140F4E4: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), "Last Update : ", var_114))
  loc_140F529: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_140F578: If (Me.RecordCount <= 0) Then
  loc_140F57B:   Call Proc_140_34_E78084()
  loc_140F583: Else
  loc_140F5B7:   global_72 = CStr(Me.Fields.Item("Name").Value)
  loc_140F604:   Set var_118 = Me.Txt
  loc_140F60A:   Call 0.Method_Proc_140_35_140FCD00 (CInt(0), var_11C)
  loc_140F612:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_140F664:   Set var_118 = Me.Txt
  loc_140F66A:   Call 0.Method_Proc_140_35_140FCD00 (CInt(0), var_11C)
  loc_140F672:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_140F6C4:   Set var_118 = Me.Txt
  loc_140F6CA:   Call 0.Method_Proc_140_35_140FCD00 (CInt(1), var_11C)
  loc_140F6D2:   var_11C.Text = CStr(Me.Fields.Item("SName").Value)
  loc_140F721:   Set var_118 = Me.Txt
  loc_140F727:   Call 0.Method_Proc_140_35_140FCD00 (CInt(&HD), var_11C)
  loc_140F72F:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ChgCategory")))
  loc_140F77C:   Set var_118 = Me.Txt
  loc_140F782:   Call 0.Method_Proc_140_35_140FCD00 (CInt(2), var_11C)
  loc_140F78A:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RevName")))
  loc_140F7D7:   Set var_118 = Me.Txt
  loc_140F7DD:   Call 0.Method_Proc_140_35_140FCD00 (CInt(2), var_11C)
  loc_140F7E5:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RevCode")))
  loc_140F832:   Set var_118 = Me.Txt
  loc_140F838:   Call 0.Method_Proc_140_35_140FCD00 (CInt(3), var_11C)
  loc_140F840:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxName")))
  loc_140F88D:   Set var_118 = Me.Txt
  loc_140F893:   Call 0.Method_Proc_140_35_140FCD00 (CInt(3), var_11C)
  loc_140F89B:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxCode")))
  loc_140F904:   Set var_118 = Me.Txt
  loc_140F90A:   Call 0.Method_Proc_140_35_140FCD00 (CInt(4), var_11C, CStr(Format(CVar(Me.Fields.Item("FlatRate")), "0.00")))
  loc_140F912:   var_11C.Text = 1
  loc_140F981:   Set var_118 = Me.Txt
  loc_140F987:   Call 0.Method_Proc_140_35_140FCD00 (CInt(5), var_11C, CStr(Format(CVar(Me.Fields.Item("Adult")), "0.00")))
  loc_140F98F:   var_11C.Text = 1
  loc_140F9FE:   Set var_118 = Me.Txt
  loc_140FA04:   Call 0.Method_Proc_140_35_140FCD00 (CInt(&HA), var_11C, CStr(Format(CVar(Me.Fields.Item("Child")), "0.00")), 1)
  loc_140FA0C:   var_11C.Text = 1
  loc_140FA7B:   Set var_118 = Me.Txt
  loc_140FA81:   Call 0.Method_Proc_140_35_140FCD00 (CInt(&HB), var_11C, CStr(Format(CVar(Me.Fields.Item("ExtraAdult")), "0.00")), 1)
  loc_140FA89:   var_11C.Text = 1
  loc_140FAE1:   var_F0 = Format(CVar(Me.Fields.Item("ExtraChild")), "0.00")
  loc_140FAF8:   Set var_118 = Me.Txt
  loc_140FAFE:   Call 0.Method_Proc_140_35_140FCD00 (CInt(&HC), var_11C, CStr(var_F0), 1)
  loc_140FB06:   var_11C.Text = 1
  loc_140FB59:   Set var_118 = Me.Txt
  loc_140FB5F:   Call 0.Method_Proc_140_35_140FCD00 (CInt(7), var_11C)
  loc_140FB67:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("TaxInc")), 1)
  loc_140FBB4:   Set var_118 = Me.Txt
  loc_140FBBA:   Call 0.Method_Proc_140_35_140FCD00 (CInt(6), var_11C)
  loc_140FBC2:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PostingMethod")))
  loc_140FC0F:   Set var_118 = Me.Txt
  loc_140FC15:   Call 0.Method_Proc_140_35_140FCD00 (CInt(9), var_11C)
  loc_140FC1D:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ChargeType")))
  loc_140FC5C:   var_F4 = Proc_6_38_E69628(CVar(Me.Fields.Item("PrintOption")))
  loc_140FC6A:   Set var_118 = Me.Txt
  loc_140FC70:   Call 0.Method_Proc_140_35_140FCD00 (CInt(8), var_11C)
  loc_140FC78:   var_11C.Text = var_F4
  loc_140FC8C: End If
  loc_140FC8C: Exit Sub
  loc_140FC8D: ' Referenced from: 140F298
  loc_140FC95: Set var_8C = Err()
  loc_140FC9B: Call 0.Method_arg_2C (var_F4)
  loc_140FCBC: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_140FCCF: Exit Sub
End Sub

Public Sub Proc_140_36_1088408
  'Data Table: 4C6A58
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4C6A6B As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108819B: If (Me.RecordCount = 0) Then
  loc_108819E:   Proc_140_36_1088408 = 
  loc_10881A4: End If
  loc_10881A8: Set var_90 = Me.TopCtrl1
  loc_10881AE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10881C7: If (CStr() = "Add") Then
  loc_1088205:   Set var_90 = Me.Txt
  loc_108820B:   Call 0.Method_Proc_140_36_10884080 (CInt(0), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108822C:   unk_4C6A6B.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108823C:    = var_D0.Item()
  loc_1088244:    = var_E4.Value
  loc_1088275:   If (var_A8.Text.Fields > 0) Then
  loc_1088293:     var_A0 = "Duplicate Name"
  loc_1088299:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_10882B4:     Set var_90 = Me.Txt
  loc_10882BA:     Call 0.Method_Proc_140_36_10884080 (CInt(0))
  loc_10882C2:     var_A8.SetFocus
  loc_10882D3:     Proc_140_36_1088408 = &HFF
  loc_10882D9:   End If
  loc_10882DC: Else
  loc_1088317:   Set var_90 = Me.Txt
  loc_108831D:   Call 0.Method_Proc_140_36_10884080 (CInt(0), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108834F:   unk_4C6A6B.Execute var_D0 & var_AC & "' And Name<>'" & global_72 & "'", 0, var_E4
  loc_108835F:    = var_D0.Item(var_A8)
  loc_1088367:    = var_E4.Value
  loc_108839C:   If (var_A8.Text.Fields > 0) Then
  loc_10883C0:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_10883DB:     Set var_90 = Me.Txt
  loc_10883E1:     Call 0.Method_Proc_140_36_10884080 (CInt(0))
  loc_10883E9:     var_A8.SetFocus
  loc_10883FA:     Proc_140_36_1088408 = &HFF
  loc_1088400:   End If
  loc_1088400: End If
  loc_1088400: Proc_140_36_1088408 = var_A8
End Sub

Public Sub Proc_140_37_10B4230
  'Data Table: 4C6A58
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_A8 As TextBox
  Dim var_B8 As String
  Dim unk_4C6A6B As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_144 As Fields15
  Dim var_148 As Field20
  loc_10B3F9F: If (Me.RecordCount = 0) Then
  loc_10B3FA2:   Proc_140_37_10B4230 = 
  loc_10B3FA8: End If
  loc_10B3FAC: Set var_90 = Me.TopCtrl1
  loc_10B3FB2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10B3FCB: If (CStr() = "Add") Then
  loc_10B4009:   Set var_90 = Me.Txt
  loc_10B400F:   Call 0.Method_Proc_140_37_10B42300 (CInt(1), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and SName='", var_A0, -1)
  loc_10B4027:   var_B8 = var_D0 & var_AC & "'"
  loc_10B4030:   unk_4C6A6B.Execute var_B8, 0, var_E4
  loc_10B4040:    = var_D0.Item()
  loc_10B4048:    = var_E4.Value
  loc_10B4079:   If (var_A8.Text.Fields > 0) Then
  loc_10B4087:     var_F4 = "Information"
  loc_10B4097:     var_A0 = "Duplicate Short Name"
  loc_10B409D:     MsgBox(var_A0, &H40, var_F4, var_114, var_134)
  loc_10B40B8:     Set var_90 = Me.Txt
  loc_10B40BE:     Call 0.Method_Proc_140_37_10B42300 (CInt(1))
  loc_10B40C6:     var_A8.SetFocus
  loc_10B40D7:     Proc_140_37_10B4230 = &HFF
  loc_10B40DD:   End If
  loc_10B40E0: Else
  loc_10B40E6:   var_E0 = 0
  loc_10B411B:   Set var_90 = Me.Txt
  loc_10B4121:   Call 0.Method_Proc_140_37_10B42300 (CInt(1), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and SName='", var_A0, -1)
  loc_10B414A:   Set var_CC = Me.Txt
  loc_10B4150:   Call 0.Method_Proc_140_37_10B42300 (CInt(0), var_D0, var_B8, var_144 & var_AC & "' And Code<>'")
  loc_10B4158:   var_E0 = var_D0.Tag
  loc_10B4171:   unk_4C6A6B.Execute var_148 & var_B8 & "'", var_F4, var_A8
  loc_10B4179:    = var_A8.Text.Fields
  loc_10B4181:    = var_144.Item()
  loc_10B4189:    = var_148.Value
  loc_10B41C4:   If (var_F4 > 0) Then
  loc_10B41E8:     MsgBox("Duplicate Short Name", &H40, "Information", var_114, var_134)
  loc_10B4203:     Set var_90 = Me.Txt
  loc_10B4209:     Call 0.Method_Proc_140_37_10B42300 (CInt(1))
  loc_10B4211:     var_A8.SetFocus
  loc_10B4222:     Proc_140_37_10B4230 = &HFF
  loc_10B4228:   End If
  loc_10B4228: End If
  loc_10B4228: Proc_140_37_10B4230 = var_A8
End Sub

Public Sub Proc_140_38_F1F41C
  'Data Table: 4C6A58
  loc_F1F32C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F1F33E:   Me.DGHelp.Visible = False
  loc_F1F346: End If
  loc_F1F362: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_F1F374:   Me.DGRevenue.Visible = False
  loc_F1F37C: End If
  loc_F1F398: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F1F3AA:   Me.DGTaxStru.Visible = False
  loc_F1F3B2: End If
  loc_F1F3CD: If (Me.FrmList.Visible = &HFF) Then
  loc_F1F3DC:   Me.FrmList.Visible = False
  loc_F1F3E4: End If
  loc_F1F400: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F1F412:   Me.FGPoint.Visible = False
  loc_F1F41A: End If
  loc_F1F41A: Exit Sub
End Sub

Public Sub Proc_140_39_1008E74
  'Data Table: 4C6A58
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_1008C72: Set var_88 = Me.Txt
  loc_1008C78: Call 0.Method_Proc_140_39_1008E740 (CInt(0), var_8C)
  loc_1008C97: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_1008CB3: Set var_B4 = Me.Txt
  loc_1008CB9: Call 0.Method_Proc_140_39_1008E740 (CInt(0), var_B8)
  loc_1008CD4: Set var_88 = Me.Txt
  loc_1008CDA: Call 0.Method_Proc_140_39_1008E740 (CInt(0), var_8C)
  loc_1008CF2: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1008D01: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1008D21: Set var_88 = Me.Txt
  loc_1008D27: Call 0.Method_Proc_140_39_1008E740 (CInt(2), var_8C)
  loc_1008D46: Me.DGRevenue.Left = CVar(var_8C.Left)
  loc_1008D62: Set var_B4 = Me.Txt
  loc_1008D68: Call 0.Method_Proc_140_39_1008E740 (CInt(2), var_B8)
  loc_1008D83: Set var_88 = Me.Txt
  loc_1008D89: Call 0.Method_Proc_140_39_1008E740 (CInt(2), var_8C)
  loc_1008DA1: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1008DB0: Me.DGRevenue.Top = CVar(var_8C.Left)
  loc_1008DD0: Set var_88 = Me.Txt
  loc_1008DD6: Call 0.Method_Proc_140_39_1008E740 (CInt(3), var_8C)
  loc_1008DF5: Me.DGTaxStru.Left = CVar(var_8C.Left)
  loc_1008E11: Set var_B4 = Me.Txt
  loc_1008E17: Call 0.Method_Proc_140_39_1008E740 (CInt(3), var_B8)
  loc_1008E32: Set var_88 = Me.Txt
  loc_1008E38: Call 0.Method_Proc_140_39_1008E740 (CInt(3), var_8C)
  loc_1008E50: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1008E5F: Me.DGTaxStru.Top = CVar(var_8C.Left)
  loc_1008E71: Exit Sub
End Sub

Public Sub Proc_140_40_10953C0
  'Data Table: 4C6A58
  Dim var_F4 As String
  Dim unk_4C6A6B As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_150 As Variant
  Dim var_90 As Recordset15
  Dim var_188 As Integer
  Dim var_114 As Variant
  Dim var_174 As Recordset15
  Dim var_178 As Fields15
  Dim var_18C As Field20
  loc_109516C: unk_4C6A6B.Execute CStr("Select taxcode from taxstru where code='" & Trim(arg_14) & "'"), var_114, -1
  loc_1095177: Set var_88 = var_118
  loc_109518B: ' Referenced from: 10953B9
  loc_109519A: If Not(var_88.EOF) Then
  loc_1095202:   var_150 = "Select Code from taxstru where taxcode='" & var_88.Fields.Item("TaxCode").Value & "' and Code not in ('" & Trim(arg_14) & "')" 
  loc_1095210:   unk_4C6A6B.Execute CStr(var_150), var_170, -1
  loc_109521B:   Set var_90 = var_174
  loc_109523B:   ' Referenced from: 1095319
  loc_109524A:   If Not(var_90.EOF) Then
  loc_1095253:     var_188 = 0
  loc_10952AB:     var_114 = "Select Count(*) from FixedCharge where TaxStru='" & var_90.Fields.Item("Code").Value & "' and DeskCode='" & CVar(arg_10) 
  loc_10952C2:     unk_4C6A6B.Execute CStr(var_114 & "'"), var_150, -1
  loc_10952CA:     var_174 = var_174.Fields
  loc_10952D2:     var_188 = var_178.Item(var_178)
  loc_10952DA:     var_18C = var_18C.Value
  loc_109530B:     If (var_170 > 0) Then
  loc_109530E:       GoTo loc_10953B1
  loc_1095311:     End If
  loc_1095314:     var_90.MoveNext
  loc_1095319:     GoTo loc_109523B
  loc_109531C:   End If
  loc_1095385:   var_F4 = CStr("Delete From FixedCharge Where TaxCode='" & var_88.Fields.Item("TaxCode").Value & "' and DeskCode='" & Trim(arg_10) & "'")
  loc_109538F:   unk_4C6A6B.Execute var_F4, var_170, -1
  loc_10953B1:   ' Referenced from: 109530E
  loc_10953B4:   var_88.MoveNext
  loc_10953B9:   GoTo loc_109518B
  loc_10953BC: End If
  loc_10953BC: Exit Sub
End Sub
