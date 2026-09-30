VERSION 5.00
Begin VB.Form frmComboMast
  Caption = "Combo Item Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 12735
  ClientHeight = 7620
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12735
    Height = 450
    TabIndex = 55
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    Left = 6945
    Top = 5985
    Width = 3855
    Height = 255
    Visible = 0   'False
    TabIndex = 51
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    Left = 6930
    Top = 5715
    Width = 3855
    Height = 255
    Visible = 0   'False
    TabIndex = 50
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    Left = 6945
    Top = 5445
    Width = 3855
    Height = 255
    Visible = 0   'False
    TabIndex = 49
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin DataGrid DGItem
    Left = 6585
    Top = 2805
    Width = 3810
    Height = 4380
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 48
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 2280
    Width = 1275
    Height = 275
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 6
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
    Left = 3150
    Top = 1380
    Width = 3420
    Height = 275
    TabIndex = 1
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 1980
    Width = 3420
    Height = 275
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 4680
    Width = 3420
    Height = 275
    TabIndex = 12
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 3180
    Width = 1275
    Height = 275
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 2880
    Width = 1275
    Height = 275
    TabIndex = 6
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 2580
    Width = 3420
    Height = 275
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
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 1080
    Width = 3420
    Height = 275
    TabIndex = 0
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
    ForeColor = &HC00000&
    Left = 3150
    Top = 3780
    Width = 1275
    Height = 275
    TabIndex = 9
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 4380
    Width = 1275
    Height = 275
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 12
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
    Left = 3150
    Top = 1680
    Width = 1275
    Height = 275
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 6
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
  Begin CheckBox Check1
    Caption = "Carry Last Information"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1500
    Top = 5280
    Width = 2610
    Height = 210
    TabIndex = 27
    Value = 1
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 3480
    Width = 1275
    Height = 275
    TabIndex = 8
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
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 4080
    Width = 1275
    Height = 275
    TabIndex = 10
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
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 4980
    Width = 1275
    Height = 275
    TabIndex = 14
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
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7305
    Top = 8460
    Width = 3855
    Height = 255
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 9285
    Top = 480
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 17
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
      Left = 45
      Top = 60
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2700
    Top = 5790
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 16
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
  Begin MSFlexGrid FGrid
    Left = 1500
    Top = 5505
    Width = 6900
    Height = 2070
    TabIndex = 15
  End
  Begin DataGrid DGAppDate
    Left = 7065
    Top = 2685
    Width = 2100
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin DataGrid DGDispCode
    Left = 9240
    Top = 2340
    Width = 1605
    Height = 2820
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin MSFlexGrid FGPoint
    Left = 7125
    Top = 975
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 21
  End
  Begin DataGrid DGUnit
    Left = 7845
    Top = 7140
    Width = 2100
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGRest
    Left = 10725
    Top = 900
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 23
  End
End
Begin DataGrid DGItemGroup
  Left = 10425
  Top = 5865
  Width = 4665
  Height = 2295
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 24
End
Begin DataGrid DGItemCat
  Left = 10785
  Top = 3345
  Width = 4410
  Height = 2460
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 25
End
Begin DataGrid DGHelp
  Left = 8880
  Top = 6420
  Width = 4230
  Height = 2355
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 26
End
Begin Label LblLDt
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 5295
  Top = 7740
  Width = 2790
  Height = 285
  TabIndex = 54
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
  Left = 1920
  Top = 7740
  Width = 2880
  Height = 255
  TabIndex = 53
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
  Top = 375
  Width = 180
  Height = 540
  TabIndex = 52
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
Begin Label LblLedgerAc
  Caption = "Item Unit"
  Index = 2
  ForeColor = &HC00000&
  Left = 1500
  Top = 2280
  Width = 855
  Height = 240
  TabIndex = 47
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblLedgerAc
  Caption = "Item Group"
  Index = 0
  ForeColor = &HC00000&
  Left = 1500
  Top = 1380
  Width = 1065
  Height = 240
  TabIndex = 46
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Item Name"
  Index = 0
  ForeColor = &HC00000&
  Left = 1500
  Top = 1980
  Width = 1035
  Height = 240
  TabIndex = 45
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Kitchen"
  Index = 3
  ForeColor = &HC00000&
  Left = 1500
  Top = 4680
  Width = 720
  Height = 240
  TabIndex = 44
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Disc Applicable"
  Index = 5
  ForeColor = &HC00000&
  Left = 1500
  Top = 3180
  Width = 1470
  Height = 240
  TabIndex = 43
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblLedgerAc
  Caption = "Rate Edit"
  Index = 6
  ForeColor = &HC00000&
  Left = 1500
  Top = 2880
  Width = 855
  Height = 240
  TabIndex = 42
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Item Category"
  Index = 12
  ForeColor = &HC00000&
  Left = 1500
  Top = 2580
  Width = 1335
  Height = 240
  TabIndex = 41
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 16
  ForeColor = &HC0&
  Left = 4440
  Top = 2895
  Width = 885
  Height = 240
  TabIndex = 40
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 0
  ForeColor = &HC0&
  Left = 4440
  Top = 3195
  Width = 885
  Height = 240
  TabIndex = 39
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Restaurant"
  Index = 1
  ForeColor = &HC00000&
  Left = 1500
  Top = 1080
  Width = 1020
  Height = 240
  TabIndex = 38
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblLedgerAc
  Caption = "Sale Rate"
  Index = 1
  ForeColor = &HC00000&
  Left = 1500
  Top = 3780
  Width = 930
  Height = 240
  TabIndex = 37
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Applicable Date"
  Index = 2
  ForeColor = &HC00000&
  Left = 1500
  Top = 4380
  Width = 1515
  Height = 240
  TabIndex = 36
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblLedgerAc
  Caption = "Disp. Code"
  Index = 3
  ForeColor = &HC00000&
  Left = 1500
  Top = 1680
  Width = 1020
  Height = 240
  TabIndex = 35
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 1
  ForeColor = &HC0&
  Left = 4440
  Top = 3495
  Width = 885
  Height = 240
  TabIndex = 34
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Service Charge"
  Index = 6
  ForeColor = &HC00000&
  Left = 1500
  Top = 3480
  Width = 1470
  Height = 240
  TabIndex = 33
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Rate Inc. Tax"
  Index = 7
  ForeColor = &HC00000&
  Left = 1500
  Top = 4080
  Width = 1260
  Height = 240
  TabIndex = 32
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 2
  ForeColor = &HC0&
  Left = 4440
  Top = 4095
  Width = 885
  Height = 240
  TabIndex = 31
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 3
  ForeColor = &HC0&
  Left = 4440
  Top = 4995
  Width = 885
  Height = 240
  TabIndex = 30
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblLedgerAc
  Caption = "Active"
  Index = 4
  ForeColor = &HC00000&
  Left = 1500
  Top = 4980
  Width = 585
  Height = 240
  TabIndex = 29
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Type"
  Index = 10
  ForeColor = &HC00000&
  Left = 5655
  Top = 8460
  Width = 465
  Height = 240
  Visible = 0   'False
  TabIndex = 28
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
End

Attribute VB_Name = "frmComboMast"

Private global_100 As Integer
Private global_136 As Integer

Private Sub FGrid_UnknownEvent_0 'E61BC4
  'Data Table: 5082E4
  Dim var_A8 As MSFlexGrid
  Dim var_AC As TextBox
  loc_E61B8F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E61BA2: Set var_A8 = Me.TxtGrid
  loc_E61BA8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61BB0: var_AC.Visible = False
  loc_E61BBC: Call Proc_188_57_1009A24()
  loc_E61BC1: Exit Sub
  loc_E61BC2: If  Then Exit Sub
  loc_E61BC2: End If
End Sub

Private Sub FGrid_UnknownEvent_1 'E67FE0
  'Data Table: 5082E4
  Dim var_8C As TextBox
  Dim var_88 As MSFlexGrid
  loc_E67F9C: Set var_88 = Me.TxtGrid
  loc_E67FA2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E67FBC: If (var_8C.Visible = 0) Then
  loc_E67FD5:   Me.FGrid.BackColorSel = CVar(CLng(global_128))
  loc_E67FDD: End If
  loc_E67FDD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E50044
  'Data Table: 5082E4
  loc_E5001C: Set var_88 = Me.TopCtrl1
  loc_E50022: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5003B: If (CStr() <> "Browse") Then
  loc_E5003E:   Call Proc_188_60_E44410()
  loc_E50043: End If
  loc_E50043: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10D48A0
  'Data Table: 5082E4
  Dim var_9C As String
  Dim var_B4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10D45A0: Set var_88 = Me.TopCtrl1
  loc_10D45A6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10D45EB: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_10D45F4:   Call Form_KeyDown(KeyCode, Shift)
  loc_10D45F9: End If
  loc_10D45FD: Set var_88 = Me.TopCtrl1
  loc_10D4603: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10D461C: If (CStr() = "Browse") Then
  loc_10D461F:   Exit Sub
  loc_10D4620: End If
  loc_10D4694: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10D46AD:   Me.FGrid.CellBackColor = CVar(CLng(global_128))
  loc_10D46BD:   var_9C = "+{Tab}"
  loc_10D46C3:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10D46CD:   KeyCode = 0
  loc_10D46D3: Else
  loc_10D472A:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10D4743:     Me.FGrid.CellBackColor = CVar(CLng(global_128))
  loc_10D474D:     KeyCode = 0
  loc_10D4750:   End If
  loc_10D4750: End If
  loc_10D4756: global_100 = KeyCode
  loc_10D477C: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10D47A0: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10D47B6:   var_EC = CLng(Me.FGrid.Col)
  loc_10D47C6:   If (var_EC = CLng(2)) Then
  loc_10D47DC:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D47F4:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10D47F9:     var_11C = vbNullString
  loc_10D4803:     Set var_B4 = Me.FGrid
  loc_10D4809:     LateIdCallSt
  loc_10D4824:   Else
  loc_10D482B:     If (var_EC = CLng(3)) Then
  loc_10D4841:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D4859:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10D485E:       var_11C = vbNullString
  loc_10D4868:       Set var_B4 = Me.FGrid
  loc_10D486E:       LateIdCallSt
  loc_10D4886:     End If
  loc_10D4886:   End If
  loc_10D4886: End If
  loc_10D488C: If (KeyCode = &HD) Then
  loc_10D4894:   global_136 = 0
  loc_10D4897: End If
  loc_10D4899: KeyCode = 0
  loc_10D489C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E5E3DC
  'Data Table: 5082E4
  loc_E5E3A0: Set var_88 = Me.TopCtrl1
  loc_E5E3A6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5E3BF: If (CStr() = "Browse") Then
  loc_E5E3C2:   Exit Sub
  loc_E5E3C3: End If
  loc_E5E3CC: Call FGrid_UnknownEvent_C()
  loc_E5E3D9: Exit Sub
  loc_E5E3DA: Set arg_6C00 = 0
End Sub

Private Sub FGrid_UnknownEvent_C '101381C
  'Data Table: 5082E4
  Dim var_9C As String
  Dim var_88 As MSFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_101360C: Set var_88 = Me.TopCtrl1
  loc_1013612: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_101362B: If (CStr() = "Browse") Then
  loc_101362E:   Exit Sub
  loc_101362F: End If
  loc_1013642: var_A0 = CLng(Me.FGrid.Col)
  loc_1013652: If (var_A0 = CLng(2)) Then
  loc_1013659:   Set var_C4 = Me.FGrid
  loc_101367D:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_10136AA:   Set var_B4 = var_C4
  loc_10136BC:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_10136E4:   Set var_88 = Me.TxtGrid
  loc_10136EA:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_10136F2:   0 = var_B4.Text
  loc_101370B:   If (Len(var_9C) <= 1) Then
  loc_101371A:     Set var_88 = Me.TxtGrid
  loc_1013720:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1013728:     var_CA = var_B4.Text
  loc_1013739:     Set var_B8 = Me.TxtGrid
  loc_101373F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1013747:     var_C4.Text = var_9C
  loc_101375A:   End If
  loc_1013766:   Set var_88 = Me.TxtGrid
  loc_101376C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1013786:   Set var_B8 = Me.TxtGrid
  loc_101378C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1013794:   var_C4.SelStart = Len(var_B4.Text)
  loc_10137AA: Else
  loc_10137B1:   If (var_A0 = CLng(3)) Then
  loc_10137F2:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1013804:   End If
  loc_1013804: End If
  loc_101380E: If (CLng(KeyCode) <> &HD) Then
  loc_1013816:   global_136 = &HFF
  loc_1013819: End If
  loc_1013819: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '10021E0
  'Data Table: 5082E4
  Dim var_88 As MSFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_1001FE8: Set var_88 = Me.TopCtrl1
  loc_1001FEE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1002007: If (CStr() = "Browse") Then
  loc_100200A:   Exit Sub
  loc_100200B: End If
  loc_100200F: Set var_88 = Me.TopCtrl1
  loc_1002015: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_100202E: If (CStr() = "Edit") Then
  loc_1002031:   Exit Sub
  loc_1002032: End If
  loc_100204F: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1002052:   Exit Sub
  loc_1002053: End If
  loc_1002064: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_1002086:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10020C0:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_10020E2:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10020F8:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1002101:         Set var_110 = Me.FGrid
  loc_100211C:       Else
  loc_100212F:         Me.FGrid.Rows = 1
  loc_1002155:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_100215D:         Set var_110 = Me.FGrid
  loc_100218A:         Me.FGrid.FixedRows = 1
  loc_1002192:       End If
  loc_1002192:     End If
  loc_1002195:   Else
  loc_10021B6:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_10021C6:   End If
  loc_10021CA:   Set var_88 = Me.FGrid
  loc_10021DB: End If
  loc_10021DB: Exit Sub
  loc_10021DC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43A50
  'Data Table: 5082E4
  Dim var_8C As TextBox
  loc_E43A24: Call Proc_188_57_1009A24()
  loc_E43A34: Set var_88 = Me.TxtGrid
  loc_E43A3A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43A42: var_8C.Visible = False
  loc_E43A4E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '11C51E8
  'Data Table: 5082E4
  Dim var_88 As Variant
  Dim var_90 As String
  Dim var_94 As TextBox
  Dim unk_5082FA As Connection15
  Dim var_CC As Fields15
  Dim var_E0 As Field20
  Dim var_120 As Variant
  Dim var_128 As TextBox
  Dim var_C4 As Variant
  loc_11C4DB0: On Error Goto loc_11C51A5
  loc_11C4DB3: Call Proc_188_54_FB6B5C()
  loc_11C4DD3: If (Me.Check1.Value = 1) Then
  loc_11C4DD6:   Call Proc_188_55_154842C()
  loc_11C4DDB: End If
  loc_11C4E16: Set var_88 = Me.Txt
  loc_11C4E1C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_94, var_98, "Select Max(DispCode) From ItemMast Where ItemType='Combo' And LogSite_Code='" & MemVar_1F95078 & "' And RestCode='", var_C4, -1)
  loc_11C4E3D: unk_5082FA.Execute var_CC & var_98 & "'", 0, var_E0
  loc_11C4E45: var_F0 = var_94.Tag.Fields
  loc_11C4E4D:  = var_CC.Item()
  loc_11C4E55:  = var_E0.Value
  loc_11C4E60: Proc_6_39_E7D3A0(var_100)
  loc_11C4E6D: var_120 = (var_100 + 1)
  loc_11C4E81: Set var_124 = Me.Txt
  loc_11C4E87: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_128)
  loc_11C4E8F: var_128.Text = CStr(var_120)
  loc_11C4ECF: Set var_88 = Me.Txt
  loc_11C4ED5: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_11C4EDD: var_94.Tag = vbNullString
  loc_11C4EF7: Set var_88 = Me.Txt
  loc_11C4EFD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_11C4F05: var_94.Text = vbNullString
  loc_11C4F1F: Set var_88 = Me.Txt
  loc_11C4F25: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H11), var_94)
  loc_11C4F2D: var_94.Text = "Other"
  loc_11C4F47: Set var_88 = Me.Txt
  loc_11C4F4D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HE), var_94)
  loc_11C4F55: var_94.Text = "Yes"
  loc_11C4F74: Me.FGrid.Rows = 1
  loc_11C4F9A: var_C4 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_11C4FA2: Set var_94 = Me.FGrid
  loc_11C4FCF: Me.FGrid.FixedRows = 1
  loc_11C4FEC: var_90 = "ADD"
  loc_11C4FFA: Call Proc_188_53_E7C8F4(Proc_5_1_100EC1C(var_90, Me, global_64), FGrid.DispID_10000)
  loc_11C5013: Set var_88 = Me.Txt
  loc_11C5019: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_94, var_90)
  loc_11C5021: var_C4 = var_94.Text
  loc_11C5038: If (var_90 = vbNullString) Then
  loc_11C5046:   Set var_88 = Me.Txt
  loc_11C504C:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_94)
  loc_11C5054:   var_94.SetFocus
  loc_11C5063: Else
  loc_11C5071:   Set var_88 = Me.Txt
  loc_11C5077:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_11C5096:   If (var_94.Text = vbNullString) Then
  loc_11C50A4:     Set var_88 = Me.Txt
  loc_11C50AA:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_11C50B2:     var_94.SetFocus
  loc_11C50C1:   Else
  loc_11C50CF:     Set var_88 = Me.Txt
  loc_11C50D5:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_94)
  loc_11C50F4:     If (var_94.Text = vbNullString) Then
  loc_11C5102:       Set var_88 = Me.Txt
  loc_11C5108:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_94)
  loc_11C5110:       var_94.SetFocus
  loc_11C511F:     Else
  loc_11C512D:       Set var_88 = Me.Txt
  loc_11C5133:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_11C513B:       var_90 = var_94.Text
  loc_11C5152:       If (var_90 = vbNullString) Then
  loc_11C5160:         Set var_88 = Me.Txt
  loc_11C5166:         Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_11C516E:         var_94.SetFocus
  loc_11C517A:       End If
  loc_11C517A:     End If
  loc_11C517A:   End If
  loc_11C517A: End If
  loc_11C5187: Me.LblUser.Caption = vbNullString
  loc_11C519C: Me.LblLDt.Caption = vbNullString
  loc_11C51A4: Exit Sub
  loc_11C51A5: ' Referenced from: 11C4DB0
  loc_11C51AD: Set var_88 = Err()
  loc_11C51B3: Call 0.Method_arg_2C (var_90)
  loc_11C51D4: MsgBox(CVar(var_90), &H40, "Information", var_100, var_120)
  loc_11C51E7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBCED4
  'Data Table: 5082E4
  loc_EBCE40: On Error Goto loc_EBCECB
  loc_EBCE7A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBCE89:   Set var_110 = Me
  loc_EBCEA0:   Call Proc_188_53_E7C8F4(Proc_5_1_100EC1C("INI", var_110))
  loc_EBCEAB:   Call Proc_188_55_154842C(global_64)
  loc_EBCEB3: Else
  loc_EBCEB9:   Call 0.Method_arg_1E8 (var_110)
  loc_EBCEC1:   Call var_110.SetFocus
  loc_EBCECA: End If
  loc_EBCECA: Exit Sub
  loc_EBCECB: ' Referenced from: EBCE40
  loc_EBCECB: Proc_6_60_E63754()
  loc_EBCED0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11D2FD0
  'Data Table: 5082E4
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_5082FA As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_11D2B70: On Error Goto loc_11D2F78
  loc_11D2B81: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_11D2B84:   Exit Sub
  loc_11D2B85: End If
  loc_11D2BB7: var_D4 = "KOT"
  loc_11D2BFF: If (Proc_6_108_101061C(MemVar_1F95044, "KOT", "ITEM", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_11D2C02:   Exit Sub
  loc_11D2C03: End If
  loc_11D2C35: var_D4 = "STOCK"
  loc_11D2C7D: If (Proc_6_108_101061C(MemVar_1F95044, "STOCK", "ITEM", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_11D2C80:   Exit Sub
  loc_11D2C81: End If
  loc_11D2CFB: If (Proc_6_108_101061C(MemVar_1F95044, "BOM", "FinItem", CStr(Me.Fields.Item("Code").Value), 0, "Consumption") = 0) Then
  loc_11D2CFE:   Exit Sub
  loc_11D2CFF: End If
  loc_11D2D36: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_11D2D3B:   var_96 = 0
  loc_11D2D47:   unk_5082FA.BeginTrans var_D0
  loc_11D2D4E:   var_96 = &HFF
  loc_11D2D62:   var_94 = Me.Bookmark 'Variant
  loc_11D2DBC:   unk_5082FA.Execute CStr("Delete From ItemMast Where Code='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_11D2E2E:   unk_5082FA.Execute CStr("Delete From ItemRate Where ItemCode='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_11D2E92:   var_118 = "Delete From ComboPackDetail Where ComboCode='" & Me.Fields.Item("Code").Value & "'" 
  loc_11D2E96:   var_B4 = CStr(var_118)
  loc_11D2EA0:   unk_5082FA.Execute var_B4, var_138, -1
  loc_11D2EC2:   unk_5082FA.CommitTrans
  loc_11D2EC9:   var_96 = 0
  loc_11D2ED7:   Me.Requery -1
  loc_11D2EE7:   Me.Requery -1
  loc_11D2EF7:   Me.Requery -1
  loc_11D2F17:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11D2F24:     Me.Bookmark = var_94
  loc_11D2F2C:   Else
  loc_11D2F40:     If (Me.EOF = 0) Then
  loc_11D2F49:       Me.MoveLast
  loc_11D2F4E:     End If
  loc_11D2F4E:   End If
  loc_11D2F4E:   Call Proc_188_55_154842C(var_96, var_13C, var_13C, var_13C, var_96)
  loc_11D2F6F:   Proc_5_0_1107AD0(&HFF, Me, global_64, 0)
  loc_11D2F77: End If
  loc_11D2F77: Exit Sub
  loc_11D2F78: ' Referenced from: 11D2B70
  loc_11D2F7E: If (var_96 = &HFF) Then
  loc_11D2F87:   unk_5082FA.RollbackTrans
  loc_11D2F8C: End If
  loc_11D2F94: Set var_9C = Err()
  loc_11D2F9A: Call 0.Method_arg_2C (var_B4, var_96, 0)
  loc_11D2FBB: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_11D2FCE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FBDF94
  'Data Table: 5082E4
  Dim Me As Variant
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_FBDDEC: On Error Goto loc_FBDF51
  loc_FBDDFD: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_FBDE00:   Exit Sub
  loc_FBDE01: End If
  loc_FBDE18: If (Me.RecordCount > 0) Then
  loc_FBDE3E:   Call Proc_188_53_E7C8F4(Proc_5_1_100EC1C("EDIT", Me))
  loc_FBDE57:   Set var_90 = Me.Txt
  loc_FBDE5D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HA), var_98)
  loc_FBDE65:   var_8C = var_98.Text
  loc_FBDE8C:   Set var_90 = Me.Txt
  loc_FBDE92:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(8), var_98, 0)
  loc_FBDE9A:   var_98.Enabled = CInt(var_8C)
  loc_FBDEB3:   Set var_90 = Me.Txt
  loc_FBDEB9:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(9), var_98)
  loc_FBDEC1:   var_98.Enabled = False
  loc_FBDED8:   Set var_90 = Me.Txt
  loc_FBDEDE:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FBDEE6:   var_98.SetFocus
  loc_FBDEF5: Else
  loc_FBDF16:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FBDF26: End If
  loc_FBDF33: Me.LblUser.Caption = vbNullString
  loc_FBDF48: Me.LblLDt.Caption = vbNullString
  loc_FBDF50: Exit Sub
  loc_FBDF51: ' Referenced from: FBDDEC
  loc_FBDF59: Set var_90 = Err()
  loc_FBDF5F: Call 0.Method_arg_2C (var_8C)
  loc_FBDF80: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FBDF93: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17510
  'Data Table: 5082E4
  loc_E17505: Me.Global.Unload Me
  loc_E1750D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F9D4AC
  'Data Table: 5082E4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  Dim var_D8 As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_134 As Variant
  Dim var_A8 As Variant
  loc_F9D340: On Error Goto loc_F9D447
  loc_F9D34C: var_88 = Me.RecordCount
  loc_F9D35A: If (var_88 <= 0) Then
  loc_F9D378:   var_A8 = "Records Not Present For Searching."
  loc_F9D37E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F9D38E:   Exit Sub
  loc_F9D38F: End If
  loc_F9D39A: If (global_52 = "Banquet") Then
  loc_F9D3A4:   var_10C = "SELECT I.Code as SearchCode,I.Name,I.Unit,convert(varchar(8),I.Dispcode,103),convert(varchar(50),I.SaleRate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Where I.LOGSITE_CODE IN ('HO','" & MemVar_1F95078
  loc_F9D3B9:   MemVar_1F950E4 = var_10C & "') AND I.RestCode='" & MemVar_1F95078 & "BANQ' and IG.Type IN ('Finish')  And I.DispCode<>9999 Order by I.Name"
  loc_F9D3C9: Else
  loc_F9D3C9:   var_B8 = "SELECT I.Code as SearchCode,I.Name,I.Unit,IG.Name as ItemGrpName,IC.Name As ItemCategory,convert(varchar(8),I.Dispcode,103) as DispCode,Depart.Name as Restaurant,SaleRate=convert(varchar(50),R.Rate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,Active=I.ActiveYN,Kitchen=D.Name,Type=I.NType FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code)  left join depart on I.restcode=depart.code left join depart D on I.Kitchen=D.code left join (Select itemcode,Rate from itemrate inner join (Select Max(ItemCode) as Itemcode1,Max(Appdate) as Appdate1 From ItemRate Where AppDate<="
  loc_F9D3D9:   Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_F9D3E5:   var_D8 = " Group By ItemCode) Q On Appdate=Q.Appdate1 And itemcode=Q.itemcode1)R on I.code=R.Itemcode Where I.LOGSITE_CODE IN ('HO','"
  loc_F9D3EA:   var_E8 = var_B8 & var_A8 & var_D8 
  loc_F9D3F4:   var_108 = var_E8 & CVar(MemVar_1F95078) 
  loc_F9D3FD:   var_134 = var_108 & "') AND Depart.RestType<>'Banquet' and IG.Type IN ('Finish')  And I.DispCode<>9999 And ItemType='Combo' Order by I.Name" 
  loc_F9D402:   MemVar_1F950E4 = CStr(var_134)
  loc_F9D413: End If
  loc_F9D416: var_10C = "3000,1500,2000,1000,1000,2000,900,600,600,500,1800,1800"
  loc_F9D41C: Proc_6_126_F1C850(var_10C, MemVar_1F950E4)
  loc_F9D42A: MemVar_1F95120 = Me
  loc_F9D441: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F9D446: Exit Sub
  loc_F9D447: ' Referenced from: F9D340
  loc_F9D44F: Set var_138 = Err()
  loc_F9D455: Call 0.Method_arg_1C (var_88)
  loc_F9D466: If (var_88 <> 0) Then
  loc_F9D471:   Set var_138 = Err()
  loc_F9D477:   Call 0.Method_arg_2C (var_10C)
  loc_F9D498:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F9D4AB: End If
  loc_F9D4AB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35348
  'Data Table: 5082E4
  loc_E35338: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35340: Call Proc_188_55_154842C(global_64)
  loc_E35345: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E35648
  'Data Table: 5082E4
  loc_E35638: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35640: Call Proc_188_55_154842C(global_64)
  loc_E35645: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E35588
  'Data Table: 5082E4
  loc_E35578: Proc_5_0_1107AD0(&HFF, Me)
  loc_E35580: Call Proc_188_55_154842C(global_64)
  loc_E35585: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E354C8
  'Data Table: 5082E4
  loc_E354B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E354C0: Call Proc_188_55_154842C(global_64)
  loc_E354C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E643C0
  'Data Table: 5082E4
  Dim Me As Recordset15
  loc_E64377: Me.Requery -1
  loc_E64387: Me.Requery -1
  loc_E64397: Me.Requery -1
  loc_E643A7: Me.Requery -1
  loc_E643B7: Me.Requery -1
  loc_E643BC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1666B70
  'Data Table: 5082E4
  Dim var_A8 As String
  Dim var_E0 As Variant
  Dim var_C0 As String
  Dim unk_5082FA As Connection15
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_D0 As Variant
  Dim var_114 As Variant
  Dim Me As Recordset15
  Dim var_F0 As Variant
  Dim var_128 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_198 As Variant
  Dim var_8C As Recordset15
  Dim var_BC As Variant
  Dim var_94 As Double
  Dim var_1C4 As Variant
  Dim var_1D8 As TextBox
  Dim var_1EC As TextBox
  Dim var_200 As TextBox
  Dim var_214 As TextBox
  Dim var_2F8 As TextBox
  Dim var_394 As Variant
  Dim var_474 As TextBox
  Dim var_4C0 As TextBox
  Dim var_1BC As String
  Dim var_1CC As String
  Dim var_1D0 As String
  Dim var_20C As String
  Dim var_1B8 As Variant
  Dim var_240 As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_2A0 As Variant
  Dim var_3B4 As Variant
  Dim var_488 As Variant
  Dim var_4E4 As Variant
  Dim var_534 As Double
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_548 As TextBox
  Dim var_528 As Variant
  Dim var_568 As Variant
  Dim var_1D4 As Field20
  loc_16655A0: On Error Goto loc_1666B1D
  loc_16655A7: var_86 = CByte(0) 'Byte
  loc_16655B6: Set var_9C = Me.Txt
  loc_16655BC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_16655E5: If (Proc_183_19_E8E68C(var_A0, "Name") = 0) Then
  loc_16655EF:   Call Txt_GotFocus()
  loc_16655F4:   Exit Sub
  loc_16655F5: End If
  loc_1665600: Set var_9C = Me.Txt
  loc_1665606: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_166562F: If (Proc_183_19_E8E68C(var_A0, "Unit") = 0) Then
  loc_1665639:   Call Txt_GotFocus()
  loc_166563E:   Exit Sub
  loc_166563F: End If
  loc_166564A: Set var_9C = Me.Txt
  loc_1665650: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A0, CInt(1))
  loc_1665679: If (Proc_183_19_E8E68C(var_A0, "Item Group Name") = 0) Then
  loc_1665683:   Call Txt_GotFocus()
  loc_1665688:   Exit Sub
  loc_1665689: End If
  loc_1665694: Set var_9C = Me.Txt
  loc_166569A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_A0, CInt(2))
  loc_16656C3: If (Proc_183_19_E8E68C(var_A0, "Item Category") = 0) Then
  loc_16656CD:   Call Txt_GotFocus()
  loc_16656D2:   Exit Sub
  loc_16656D3: End If
  loc_16656DE: Set var_9C = Me.Txt
  loc_16656E4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A0, CInt(6))
  loc_166570D: If (Proc_183_19_E8E68C(var_A0, "Restaurant") = 0) Then
  loc_1665717:   Call Txt_GotFocus()
  loc_166571C:   Exit Sub
  loc_166571D: End If
  loc_1665728: Set var_9C = Me.Txt
  loc_166572E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A0, CInt(8))
  loc_1665757: If (Proc_183_19_E8E68C(var_A0, "Kitchen") = 0) Then
  loc_1665761:   Call Txt_GotFocus()
  loc_1665766:   Exit Sub
  loc_1665767: End If
  loc_1665772: Set var_9C = Me.Txt
  loc_1665778: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_A0, CInt(3))
  loc_16657A1: If (Proc_183_19_E8E68C(var_A0, "Service Charge") = 0) Then
  loc_16657AB:   Call Txt_GotFocus()
  loc_16657B0:   Exit Sub
  loc_16657B1: End If
  loc_16657B4: Call Proc_188_56_12F25EC(var_AA, CInt(&HC))
  loc_16657BF: If (var_AA = &HFF) Then
  loc_16657C2:   Exit Sub
  loc_16657C3: End If
  loc_16657C7: Set var_9C = Me.TopCtrl1
  loc_16657CD: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(0))
  loc_16657E6: If (CStr(var_A0) = "Add") Then
  loc_16657EF:   var_E0 = 0
  loc_166580C:   var_A8 = "Select IsNull(Max(CAST(SUBSTRING(Q.Code,3,6) AS INT)),1)+1 AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F95070
  loc_166581C:   unk_5082FA.Execute CStr(var_A0) & "'", var_BC, -1
  loc_1665824:   var_9C = var_9C.Fields
  loc_166582C:   var_E0 = var_A0.Item(var_A0)
  loc_1665834:   var_A4 = var_A4.Value
  loc_166586D:   var_104 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_166589B:   var_114 = (1 + Format(CStr(var_F0), "000000"))
  loc_16658A6:   global_132 = CStr(var_114)
  loc_16658BB: Else
  loc_16658D8:   var_A0 = Me.Fields.Item("Code")
  loc_16658E0:   var_BC = var_A0.Value
  loc_16658E9:   var_A8 = CStr(var_BC)
  loc_16658EF:   global_132 = var_A8
  loc_1665900: End If
  loc_1665909: unk_5082FA.BeginTrans var_118
  loc_1665912: var_86 = CByte(1) 'Byte
  loc_1665933: Proc_6_7_F26918(var_BC, MemVar_1F950EC, "Select Rate,Appdate From ItemRate Where AppDate<=", var_1B8, -1)
  loc_166593B: var_F0 = var_A4 & var_BC 
  loc_1665944: var_104 = var_F0 & " And ItemCode='" 
  loc_166596C: Set var_9C = Me.Txt
  loc_1665972: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A0, var_A8, var_104 & CVar(global_132) & "' And RestCode='")
  loc_166597A: 1 = var_A0.Tag
  loc_166599C: unk_5082FA.Execute CStr(var_104 & CVar(var_A8) & "' Order By AppDate Desc "), var_F0, 
  loc_16659A7: Set var_8C = var_A4
  loc_16659DF: If (var_8C.RecordCount > 0) Then
  loc_16659F9:   var_A0 = var_8C.Fields.Item("Rate")
  loc_1665A26:   var_94 = CSng(Format(CVar(var_A0), "0.00"))
  loc_1665A38: Else
  loc_1665A46:   Set var_9C = Me.Txt
  loc_1665A4C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A0, var_A8)
  loc_1665A54:   var_94 = var_A0.Text
  loc_1665A61:   var_94 = Val(var_A8)
  loc_1665A6E: End If
  loc_1665A72: Set var_9C = Me.TopCtrl1
  loc_1665A78: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_1665A91: If (CStr(1) = "Add") Then
  loc_1665AA2:   Set var_9C = Me.Txt
  loc_1665AA8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0)
  loc_1665AC3:   Set var_A4 = Me.Txt
  loc_1665AC9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1C4)
  loc_1665AE4:   Set var_1D4 = Me.Txt
  loc_1665AEA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1D8)
  loc_1665B05:   Set var_1E8 = Me.Txt
  loc_1665B0B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1EC)
  loc_1665B26:   Set var_1FC = Me.Txt
  loc_1665B2C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_1665B47:   Set var_210 = Me.Txt
  loc_1665B4D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_214)
  loc_1665B65:   Set var_224 = Me.Txt
  loc_1665B6B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_228)
  loc_1665B7F:   var_F0 = Left(CVar(var_228), 1)
  loc_1665B8F:   Set var_22C = Me.Txt
  loc_1665B95:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_230)
  loc_1665BBC:   Proc_6_7_F26918(var_290, Date)
  loc_1665BCF:   Set var_2F4 = Me.Txt
  loc_1665BD5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2F8)
  loc_1665BED:   Set var_380 = Me.Txt
  loc_1665BF3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_384)
  loc_1665C17:   Set var_3D8 = Me.Txt
  loc_1665C1D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_3DC)
  loc_1665C44:   Set var_470 = Me.Txt
  loc_1665C4A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_474)
  loc_1665C65:   Set var_4BC = Me.Txt
  loc_1665C6B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_4C0)
  loc_1665C8C:   var_A8 = "Insert Into ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,SChrgApp,RateIncTax,LOGSITE_CODE,ActiveYN,NType,ItemType) " & " Values ('"
  loc_1665CDC:   var_20C = var_A8 & global_132 & "','" & var_A0.Text & "','" & var_1C4.Tag & "'," & var_1D8.Text & ",'" & var_1EC.Text & "','" & var_200.Tag
  loc_1665D23:   var_250 = CVar(var_20C & "','" & var_214.Tag & "','") & var_F0 & "','" & Left(CVar(var_230), 1) & "', '" & CVar(MemVar_1F95070) & "','" 
  loc_1665D3D:   var_2A0 = var_250 & CVar(MemVar_1F950C8) & "'," & var_290 
  loc_1665D8A:   var_3B4 = var_2A0 & ",'A','" & CVar(global_56) & "','" & CVar(var_2F8.Tag) & "'," & CVar(var_94) & ",'" & Left(CVar(var_384), 1) 
  loc_1665DD3:   var_4E4 = var_3B4 & "','" & Left(CVar(var_3DC), 1) & "','" & CVar(MemVar_1F95078) & "','" & CVar(var_474.Text) & "','" & CVar(var_4C0.Text) 
  loc_1665DEA:   unk_5082FA.Execute CStr(var_4E4 & "','Combo')"), var_528, -1
  loc_1665EB0:   Set var_9C = Me.Txt
  loc_1665EB6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A0, var_A8)
  loc_1665EBE:   var_52C = var_A0.Text
  loc_1665ED5:   If (var_A8 <> vbNullString) Then
  loc_1665EE6:     Set var_9C = Me.Txt
  loc_1665EEC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A0)
  loc_1665EF4:     var_F4 = var_A0.Tag
  loc_1665F07:     Set var_A4 = Me.Txt
  loc_1665F0D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C4)
  loc_1665F30:     Set var_1D4 = Me.Txt
  loc_1665F36:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1D8)
  loc_1665F45:     Proc_6_7_F26918(var_F0, CVar(var_1D8))
  loc_1665F58:     Proc_6_7_F26918(var_250, Date)
  loc_1665F71:     var_A8 = "Insert Into Itemrate(ItemCode,RestCode,Rate,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('"
  loc_1665FBC:     var_168 = CVar(var_A8 & global_132 & "','" & var_F4 & "'," & CStr(Val(var_1C4.Text)) & ",") & var_F0 & ",'" & CVar(MemVar_1F95070) 
  loc_1665FFB:     var_290 = var_168 & "','" & CVar(MemVar_1F950C8) & "'," & var_250 & ",'A','" & CVar(MemVar_1F95078) & "')" 
  loc_1666009:     unk_5082FA.Execute CStr(var_290), var_2A0, -1
  loc_1666057:   End If
  loc_166605A: Else
  loc_1666068:   Set var_9C = Me.Txt
  loc_166606E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A8)
  loc_1666076:   var_1E8 = var_A0.Text
  loc_1666089:   Set var_A4 = Me.Txt
  loc_166608F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1C4, var_F4)
  loc_1666097:   var_534 = var_1C4.Tag
  loc_16660AA:   Set var_1D4 = Me.Txt
  loc_16660B0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1D8)
  loc_16660CB:   Set var_1E8 = Me.Txt
  loc_16660D1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1EC)
  loc_16660EC:   Set var_1FC = Me.Txt
  loc_16660F2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_166610D:   Set var_210 = Me.Txt
  loc_1666113:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_214)
  loc_166612B:   Set var_224 = Me.Txt
  loc_1666131:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_228)
  loc_1666145:   var_F0 = Left(CVar(var_228), 1)
  loc_1666155:   Set var_22C = Me.Txt
  loc_166615B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_230)
  loc_1666177:   var_280 = Date
  loc_1666182:   Proc_6_7_F26918(var_290, var_280)
  loc_1666195:   Set var_2F4 = Me.Txt
  loc_166619B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2F8)
  loc_16661B3:   Set var_380 = Me.Txt
  loc_16661B9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_384)
  loc_16661D8:   Set var_3D8 = Me.Txt
  loc_16661DE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_3DC)
  loc_16661FD:   Set var_470 = Me.Txt
  loc_1666203:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_474)
  loc_1666227:   Set var_4BC = Me.Txt
  loc_166622D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_4C0)
  loc_1666254:   Set var_52C = Me.Txt
  loc_166625A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_548)
  loc_1666297:   var_1D0 = "UPDATE ItemMast SET Name='" & var_A8 & "',RestCode='" & var_F4 & "',DispCode=" & var_1D8.Text
  loc_16662C8:   var_104 = CVar(var_1D0 & ",Unit='" & var_1EC.Text & "',ItemGroup='" & var_200.Tag & "',ItemCatCode='" & var_214.Tag & "',DiscApp='") 'String
  loc_1666304:   var_260 = var_104 & var_F0 & "',RateEdit='" & Left(CVar(var_230), 1) & "',SITE_CODE='" & CVar(MemVar_1F95070) & "',U_name='" & CVar(MemVar_1F950C8) 
  loc_1666314:   var_2A0 = var_260 & "',U_EntDt=" & var_290 
  loc_1666350:   var_394 = var_2A0 & " ,U_AE='E',TYPE='" & CVar(global_56) & "',Kitchen='" & CVar(var_2F8.Tag) & "',ActiveYN='" & CVar(Proc_6_38_E69628(CVar(var_384))) 
  loc_1666387:   var_488 = var_394 & "',NType='" & CVar(Proc_6_38_E69628(CVar(var_3DC))) & "',SaleRate=" & CVar(var_94) & ",SChrgApp='" & Left(CVar(var_474), 1) 
  loc_16663C0:   var_568 = var_488 & "',RateIncTax='" & Left(CVar(var_4C0), 1) & "' WHERE Code='" & CVar(global_132) & "' And RestCode='" & CVar(var_548.Tag) 
  loc_16663D7:   unk_5082FA.Execute CStr(var_568 & "'"), var_598, -1
  loc_16664A5:   Set var_9C = Me.Txt
  loc_16664AB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A0, var_A8)
  loc_16664B3:   var_59C = var_A0.Text
  loc_16664C0:   var_534 = Val(var_A8)
  loc_16664C6:   var_BC = Date
  loc_16664D1:   Proc_6_7_F26918(var_F0, var_BC)
  loc_16664E4:   Set var_A4 = Me.Txt
  loc_16664EA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1C4, var_1D0)
  loc_1666502:   Set var_1D4 = Me.Txt
  loc_1666508:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1D8)
  loc_1666510:   var_250 = CVar(var_1D8) 'Address
  loc_1666517:   Proc_6_7_F26918(var_260, var_250)
  loc_1666558:   var_104 = CVar("Update ItemRate Set Rate=" & CStr(var_1C4.Tag) & ",Site_Code='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_1666590:   var_240 = var_104 & var_F0 & ",U_AE='E' Where ItemCode='" & CVar(global_132) & "' And RestCode='" & CVar(var_1D0) & "' And AppDate=" 
  loc_16665A5:   unk_5082FA.Execute CStr(var_240 & var_260), var_280, -1
  loc_16665EB: End If
  loc_1666618: Set var_9C = Me.Txt
  loc_166661E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0, var_A8, "Select Count(*) From UnitMast Where Name='", var_BC, -1, var_A4)
  loc_166662F: var_C0 = 0 & var_A8
  loc_166663F: unk_5082FA.Execute var_C0 & "'", var_1D4, var_F0
  loc_1666647: var_1E8 = var_A4.Fields
  loc_166664F:  = var_A0.Text.Item(1)
  loc_1666657:  = var_1D4.Value
  loc_1666684: If (var_F0 <= 0) Then
  loc_16666A9:   Set var_9C = Me.Txt
  loc_16666AF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0, CVar("Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,lOGSITE_CODE)" & " Values('"))
  loc_16666C6:   var_114 = var_2A0 & Trim(CVar(var_A0)) 
  loc_16666EC:   var_198 = var_114 & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_1666707:   Proc_6_7_F26918(var_250, Date, var_198 & "',")
  loc_166670F:   var_260 = -1 & var_250 
  loc_1666739:   unk_5082FA.Execute CStr(var_260 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_A4, 
  loc_166676B: End If
  loc_166679A: Set var_9C = Me.Txt
  loc_16667A0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A0, var_C0, "Delete from ComboPackDetail WHERE comboCode ='" & global_132 & "' AND restcode='")
  loc_16667A8: var_BC = var_A0.Tag
  loc_16667B1: var_1BC = -1 & var_C0
  loc_16667C6: var_1CC = "Update ItemRate Set Rate=" & CStr(var_A0.Text.Tag) & ",Site_Code='" & "' AND  (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') "
  loc_16667CF: unk_5082FA.Execute var_1CC, var_A4, 
  loc_1666816: For var_5A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_5A0 'Integer
  loc_1666820:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_1666828:   var_128 = CVar(CLng(2)) 'Long
  loc_1666853:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1666864:     Set var_9C = Me.Txt
  loc_166686A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A0, var_C0)
  loc_1666872:     var_128 = var_A0.Tag
  loc_166687B:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_1666883:     var_128 = CVar(CLng(1)) 'Long
  loc_1666892:     var_BC = Me.FGrid.TextMatrix)
  loc_16668B9:     var_F0 = Me.FGrid.TextMatrix)
  loc_16668CC:     var_534 = Val(CStr(var_F0))
  loc_16668D2:     var_104 = Date
  loc_16668DD:     Proc_6_7_F26918(var_114, var_104, var_534, CVar(CLng(3)), CVar(CLng(var_96)))
  loc_16668E6:     Set var_1D4 = Me.TopCtrl1
  loc_16668EC:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_BC)
  loc_166693A:     var_A8 = "Insert Into ComboPackDetail (ComboCode,restcode,itemcode,qty,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_132
  loc_1666990:     var_158 = CVar(var_A8 & "','" & var_C0 & "','" & CStr(var_BC) & "'," & CStr(var_534) & ",'" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") 'String
  loc_16669D0:     unk_5082FA.Execute CStr(var_158 & var_114 & ",'" & IIf((CStr(var_198) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_2A0, -1
  loc_1666A2E:   End If
  loc_1666A31: Next var_5A0 'Integer
  loc_1666A3C: unk_5082FA.CommitTrans
  loc_1666A45: var_86 = CByte(0) 'Byte
  loc_1666A54: Me.Requery -1
  loc_1666A64: Me.Requery -1
  loc_1666A74: Me.Requery -1
  loc_1666A84: Me.Requery -1
  loc_1666AB1: Me.Find "Code='" & global_132 & "'", 0, 1
  loc_1666AC1: Set var_9C = Me.TopCtrl1
  loc_1666AC7: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D0)
  loc_1666AE0: If (CStr() = "Add") Then
  loc_1666AE3:   Call TopCtrl1_UnknownEvent_A()
  loc_1666AE8:   Exit Sub
  loc_1666AE9: End If
  loc_1666AFE: var_A8 = "INI"
  loc_1666B0C: Call Proc_188_53_E7C8F4(Proc_5_1_100EC1C(var_A8, Me))
  loc_1666B17: Call Proc_188_55_154842C(global_64)
  loc_1666B1C: Exit Sub
  loc_1666B1D: ' Referenced from: 16655A0
  loc_1666B26: If (CInt(var_86) = 1) Then
  loc_1666B2F:   unk_5082FA.RollbackTrans
  loc_1666B34: End If
  loc_1666B3C: Set var_9C = Err()
  loc_1666B42: Call 0.Method_arg_2C (var_A8)
  loc_1666B5B: MsgBox(CVar(var_A8), &H10, var_F0, var_104, var_114)
  loc_1666B6E: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11D80B0
  'Data Table: 5082E4
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As MSFlexGrid
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim var_11C As String
  Dim Me As Recordset15
  Dim var_118 As String
  loc_11D7C5A: Set var_88 = Me.TxtGrid
  loc_11D7C60: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_11D7C6E: Proc_6_74_E23240(var_8C)
  loc_11D7C7A: Call Proc_188_57_1009A24(var_8C)
  loc_11D7C8D: Set var_88 = Me.TxtGrid
  loc_11D7C93: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_11D7C9B: var_8C.MaxLength = 0
  loc_11D7CB3: If (Index = 0) Then
  loc_11D7CCC:   Me.FGrid.CellBackColor = CVar(CLng(global_128))
  loc_11D7CE7:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D7CF0:   Set var_8C = Me.FGrid
  loc_11D7D26:   Set var_108 = Me.TxtGrid
  loc_11D7D2C:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_11D7D34:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_11D7D65:   var_114 = CLng(Me.FGrid.Col)
  loc_11D7D75:   If (var_114 = CLng(2)) Then
  loc_11D7D86:     Set var_88 = Me.TxtGrid
  loc_11D7D8C:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &H32)
  loc_11D7D94:     var_8C.MaxLength = var_114
  loc_11D7DBC:     Me.Recordset15.CursorLocation = 3
  loc_11D7DCF:     Set var_88 = Me.Txt
  loc_11D7DD5:     Call 0.Method_TxtGrid_GotFocus0 (CInt(8), var_8C, var_118)
  loc_11D7DDD:     var_A4 = var_8C.Tag
  loc_11D7E00:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_11D7E07:     var_11C = var_110 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.ItemType<>'Store' And I.DispCode<>9999 AND D.Code='"
  loc_11D7E1F:     Me.Open CVar(var_11C & var_118 & "' And IsNull(ItemType,'')<>'Combo' Order by I.Name  "), CVar(MemVar_1F95044), 3
  loc_11D7E42:     CVarUnk
  loc_11D7E47:     VerifyVarObj
  loc_11D7E4D:     Set var_88 = Me.DGItem
  loc_11D7E53:     LateIdStAd
  loc_11D7E6C:     Set var_8C = Me.FGPoint
  loc_11D7E84:     Proc_6_137_1192FDC(Me.DGItem, New, Index, var_8C, Me.DGItem)
  loc_11D7EA3:     Set var_88 = Me.Txt
  loc_11D7EA9:     Call 0.Method_TxtGrid_GotFocus0 (CInt(8), var_8C, var_110, "OutletCode='")
  loc_11D7EB1:     global_140 = var_8C.Tag
  loc_11D7ECB:     Me.Filter = CVar(1 & var_110 & "'")
  loc_11D7EF4:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D7EFC:     var_E4 = CVar(CLng(1)) 'Long
  loc_11D7F40:     Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_11D7F86:     var_D4 = Me.FGrid.TextMatrix)
  loc_11D7FA6:     global_96 = CStr(Trim(CVar(CStr(var_D4))))
  loc_11D7FD6:     If (Me.RecordCount > 0) Then
  loc_11D7FE4:       Set var_8C = Me.FGPoint
  loc_11D7FFC:       Proc_6_137_1192FDC(Me.DGItem, global_140, Index, var_8C, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)))
  loc_11D800A:     End If
  loc_11D804B:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11D804E:       Exit Sub
  loc_11D804F:     End If
  loc_11D8058:     CVarUnk
  loc_11D805D:     VerifyVarObj
  loc_11D8063:     Set var_88 = Me.DGItem
  loc_11D8069:     LateIdStAd
  loc_11D807A:   Else
  loc_11D8081:     If (var_114 = CLng(3)) Then
  loc_11D8098:       Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 8, Me.TxtGrid, global_140, var_130)
  loc_11D80A0:       var_8C.MaxLength = var_D4
  loc_11D80AC:     End If
  loc_11D80AC:   End If
  loc_11D80AC: End If
  loc_11D80AC: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10E2F00
  'Data Table: 5082E4
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  loc_10E2BF7: var_86 = Shift
  loc_10E2C06: If (KeyCode = 0) Then
  loc_10E2C13:   If (CLng(Shift) = &H1B) Then
  loc_10E2C23:     Set var_8C = Me.TxtGrid
  loc_10E2C29:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_10E2C31:     var_88 = var_90.Tag
  loc_10E2C43:     Set var_98 = Me.TxtGrid
  loc_10E2C49:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_10E2C51:     var_9C.Text = var_94
  loc_10E2C6D:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10E2C72:     Call Proc_188_57_1009A24(arg_14)
  loc_10E2C7B:     Set var_8C = Me.FGrid
  loc_10E2C98:     Set var_8C = Me.TxtGrid
  loc_10E2C9E:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_10E2CA6:     var_90.Visible = FGrid.DispID_8001
  loc_10E2CB2:     Exit Sub
  loc_10E2CB3:   End If
  loc_10E2CC6:   var_B0 = CLng(Me.FGrid.Col)
  loc_10E2CD6:   If (var_B0 = CLng(2)) Then
  loc_10E2CF6:     Set var_9C = Me.FGPoint
  loc_10E2D01:     Set var_98 = Nothing
  loc_10E2D2F:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_140, Shift, &HFF)
  loc_10E2D9E:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10E2DA5:       Set var_98 = Me.DGItem
  loc_10E2DC4:       Proc_6_138_106E830(var_98, global_140, KeyCode, Me.FGPoint, 1)
  loc_10E2DD2:     End If
  loc_10E2DDC:     If (CLng(Shift) = &HD) Then
  loc_10E2DE5:       Call Proc_188_61_1227A60(KeyCode, var_B2, var_98, var_9C)
  loc_10E2DF0:       If (var_B2 = &HFF) Then
  loc_10E2E36:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_136, 4)
  loc_10E2E46:       End If
  loc_10E2E46:     End If
  loc_10E2E49:   Else
  loc_10E2E50:     If (var_B0 = CLng(3)) Then
  loc_10E2E93:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_136 = &HFF))) Then
  loc_10E2E9C:         Call Proc_188_61_1227A60(KeyCode, var_B2, 0, 0)
  loc_10E2EA7:         If (var_B2 = &HFF) Then
  loc_10E2EED:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_136, 4, 0)
  loc_10E2EFD:         End If
  loc_10E2EFD:       End If
  loc_10E2EFD:     End If
  loc_10E2EFD:   End If
  loc_10E2EFD: End If
  loc_10E2EFD: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F2D858
  'Data Table: 5082E4
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F2D74F: Proc_6_58_E06050(arg_10)
  loc_F2D760: If (KeyAscii = 0) Then
  loc_F2D776:   var_A0 = CLng(Me.FGrid.Col)
  loc_F2D786:   If (var_A0 = CLng(2)) Then
  loc_F2D7A5:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F2D7B7:       var_A4 = "Name"
  loc_F2D7D2:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_140, arg_10)
  loc_F2D7EC:       Set var_AC = Me.FGPoint
  loc_F2D804:       Proc_6_138_106E830(Me.DGItem, global_140, KeyAscii, var_AC)
  loc_F2D812:     End If
  loc_F2D815:   Else
  loc_F2D81C:     If (var_A0 = CLng(3)) Then
  loc_F2D829:       Set var_8C = Me.TxtGrid
  loc_F2D82F:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F2D84A:       Proc_6_42_129B55C(var_AC, arg_10, 4, 3)
  loc_F2D856:     End If
  loc_F2D856:   End If
  loc_F2D856: End If
  loc_F2D856: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FAD140
  'Data Table: 5082E4
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  loc_FACFC8: On Error Goto loc_FAD138
  loc_FACFD7: If (KeyCode = 0) Then
  loc_FACFED:   var_A0 = CLng(Me.FGrid.Col)
  loc_FACFFD:   If (var_A0 = CLng(2)) Then
  loc_FAD023:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_FAD034:       Call TxtGrid_KeyDown(KeyCode, global_100)
  loc_FAD03D:       Set var_AC = Me.TxtGrid
  loc_FAD048:       var_A8 = "Name"
  loc_FAD063:       Proc_6_89_1470B00(var_AC, KeyCode, global_140, Shift, var_A8)
  loc_FAD072:     End If
  loc_FAD075:   Else
  loc_FAD07C:     If (var_A0 = CLng(3)) Then
  loc_FAD08C:       Set var_8C = Me.TxtGrid
  loc_FAD092:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_FAD09A:       0 = var_AC.Text
  loc_FAD0BD:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FAD0D5:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FAD102:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_FAD10A:       Set var_178 = Me.FGrid
  loc_FAD110:       LateIdCallSt
  loc_FAD137:     End If
  loc_FAD137:   End If
  loc_FAD137: End If
  loc_FAD137: Exit Sub
  loc_FAD138: ' Referenced from: FACFC8
  loc_FAD138: Proc_6_60_E63754(var_178, var_164, 1, 1, var_144)
  loc_FAD13D: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E24698
  'Data Table: 5082E4
  Dim arg_10 As Integer
  loc_E24680: If (Cancel = 0) Then
  loc_E24689:   Call Proc_188_61_1227A60(Cancel, var_88)
  loc_E24692:   arg_10 = Not(var_88)
  loc_E24695: End If
  loc_E24695: Exit Sub
End Sub

Private Sub Form_Load() '12352F8
  'Data Table: 5082E4
  Dim var_88 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim unk_5082FA As Connection15
  Dim var_CC As String
  Dim var_C0 As Variant
  loc_1234DD8: On Error Goto loc_12352B2
  loc_1234DE2: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1234DF6: Me.LblUser.Left = CDbl(13500)
  loc_1234E0D: Me.LblUser.Top = CDbl(7800)
  loc_1234E24: Me.LblLDt.Top = CDbl(8160)
  loc_1234E3B: Me.LblLDt.Left = CDbl(13500)
  loc_1234E56: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1234E66: Set var_88 = Me.Check1
  loc_1234E6C: var_88.BackColor = CLng(MemVar_1F951B4)
  loc_1234E74: Call Proc_188_58_121CBE8()
  loc_1234E94: var_B0 = "SELECT Code,Name,ItemGroup,RestCode FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND ItemType<>'Store' And DispCode<>9999 ORDER BY Name"
  loc_1234E9D: unk_5082FA.Execute var_B0, var_C0, -1
  loc_1234EAE: Set global_68 = var_88
  loc_1234ECC: CVarUnk
  loc_1234ED1: VerifyVarObj
  loc_1234EDD: LateIdStAd
  loc_1234EF6: If (global_52 = "Banquet") Then
  loc_1234F14:   var_B0 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  AND ((OutletYN='Y' and RestType='Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_1234F1D:   unk_5082FA.Execute var_B0, var_C0, -1
  loc_1234F2E:   Set global_76 = Me.DGHelp
  loc_1234F4C:   CVarUnk
  loc_1234F51:   VerifyVarObj
  loc_1234F57:   Set var_88 = Me.DGRest
  loc_1234F5D:   LateIdStAd
  loc_1234F6E: Else
  loc_1234F89:   var_B0 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_1234F92:   unk_5082FA.Execute var_B0, var_C0, -1
  loc_1234FA3:   Set global_76 = var_88
  loc_1234FC1:   CVarUnk
  loc_1234FC6:   VerifyVarObj
  loc_1234FCC:   Set var_88 = Me.DGRest
  loc_1234FD2:   LateIdStAd
  loc_1234FE0: End If
  loc_1235004: unk_5082FA.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_C0, -1
  loc_1235015: Set global_84 = var_88
  loc_1235033: CVarUnk
  loc_1235038: VerifyVarObj
  loc_1235044: LateIdStAd
  loc_1235066: var_AC = "SELECT Distinct Convert(Varchar(11),AppDate,104) as Code,Convert(Varchar(11),AppDate,104) As Name,RestCode,AppDate FROM ItemRate WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_1235076: unk_5082FA.Execute var_AC & "' or LOGSITE_CODE='HO') ORDER BY AppDate", var_C0, -1
  loc_1235087: Set global_88 = Me.DGUnit
  loc_12350A5: CVarUnk
  loc_12350AA: VerifyVarObj
  loc_12350B6: LateIdStAd
  loc_12350DF: var_B0 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Type IN ('Finish') ORDER BY Name"
  loc_12350E8: unk_5082FA.Execute var_B0, var_C0, -1
  loc_12350F9: Set global_72 = Me.DGAppDate
  loc_1235117: CVarUnk
  loc_123511C: VerifyVarObj
  loc_1235128: LateIdStAd
  loc_1235151: var_B0 = "SELECT Code,Name,RestCode FROM ItemCatMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  AND (cattype is not NULL and cattype<>'') ORDER BY Name"
  loc_123515A: unk_5082FA.Execute var_B0, var_C0, -1
  loc_123516B: Set global_80 = Me.DGItemGroup
  loc_1235189: CVarUnk
  loc_123518E: VerifyVarObj
  loc_1235194: Set var_88 = Me.DGItemCat
  loc_123519A: LateIdStAd
  loc_12351B3: If (global_52 = "Banquet") Then
  loc_12351CA:   var_AC = "SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SchrgApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,I.RestCode,I.kitchen,K.Name as KitchenName,I.DiscApp,I.SITE_CODE,I.LOGSITE_CODE FROM ((((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code))Left Join Depart K on K.Code=I.Kitchen) Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_12351DF:   var_CC = var_AC & "' or I.LOGSITE_CODE='HO') AND I.RestCode='" & MemVar_1F95078 & "BANQ' and IG.Type IN ('Finish') aND DispCode<>9999 And ItemType='Combo' ORDER BY I.Name"
  loc_12351E8:   unk_5082FA.Execute var_CC, var_C0, -1
  loc_12351F9:   Set global_64 = var_88
  loc_1235215: Else
  loc_1235229:   var_AC = "SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,R.Name as RestName,I.RestCode,I.kitchen,K.Name as KitchenName,R.DiscApp,I.RateIncTax,I.SITE_CODE,I.LOGSITE_CODE,I.ActiveYN,I.NType FROM ((((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code))Left Join Depart R on R.Code=I.RestCode)Left Join Depart K on K.Code=I.Kitchen Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_1235230:   var_B0 = var_AC & "' or I.LOGSITE_CODE='HO') AND r.RestType IN ('Room Service','Outlet','Production') aND DispCode<>9999 And ItemType='Combo' ORDER BY R.Name,I.Name"
  loc_1235239:   unk_5082FA.Execute var_B0, var_C0, -1
  loc_123524A:   Set global_64 = var_88
  loc_123525F: End If
  loc_123526B: Set var_88 = Me
  loc_1235274: var_AC = "INI"
  loc_1235282: Call Proc_188_53_E7C8F4(Proc_5_1_100EC1C(var_AC, var_88, global_64, var_88, var_88, var_88, global_80, var_88), var_88, global_72, var_88)
  loc_1235296: Call 0.Method_arg_160 (var_88, var_88, global_88)
  loc_12352A4: Call 0.Method_arg_164 (var_88, var_88)
  loc_12352AC: Call Proc_188_55_154842C(var_88)
  loc_12352B1: Exit Sub
  loc_12352B2: ' Referenced from: 1234DD8
  loc_12352BA: Set var_88 = Err()
  loc_12352C0: Call 0.Method_arg_2C (var_AC)
  loc_12352E1: MsgBox(CVar(var_AC), &H40, "Information", var_F0, var_110)
  loc_12352F4: Exit Sub
  loc_12352F5: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4518
  'Data Table: 5082E4
  Dim var_8C As Label
  loc_ED4476: Call 0.Method_arg_50 (var_88)
  loc_ED4488: Me.LblFormCaption.Caption = var_88
  loc_ED44A1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED44AD: Set var_A0 = Me.TopCtrl1
  loc_ED44B3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED44C0: Set var_8C = Me.TopCtrl1
  loc_ED44C6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED44E0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED44FB: Call 0.Method_arg_100 (var_B8)
  loc_ED450D: Me.LblFormCaption.Width = var_B8
  loc_ED4515: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6DE68
  'Data Table: 5082E4
  loc_E6DE17: Set global_64 = Nothing
  loc_E6DE29: Set global_68 = Nothing
  loc_E6DE3B: Set global_76 = Nothing
  loc_E6DE4D: Set global_72 = Nothing
  loc_E6DE5F: Set global_80 = Nothing
  loc_E6DE66: Exit Sub
End Sub

Private Sub Form_Activate() 'E50528
  'Data Table: 5082E4
  loc_E504F8: On Error Goto loc_E50522
  loc_E504FF: Set var_88 = Me.TopCtrl1
  loc_E50505: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E5051A: If (CLng(CInt()) = &H2D) Then
  loc_E5051D:   Call TopCtrl1_UnknownEvent_15()
  loc_E50522:   ' Referenced from: E504F8
  loc_E50522: End If
  loc_E50522: Proc_6_60_E63754()
  loc_E50527: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28FA4
  'Data Table: 5082E4
  loc_E28F7C: On Error Goto loc_E28F9B
  loc_E28F93: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E28F9B: ' Referenced from: E28F7C
  loc_E28F9B: Proc_6_60_E63754(Shift)
  loc_E28FA0: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F9E46C
  'Data Table: 5082E4
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_F9E30F: Me.DGRest.Visible = False
  loc_F9E32E: If (Me.RecordCount > 0) Then
  loc_F9E380:   Set var_CC = Me.Txt
  loc_F9E386:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)), var_D0)
  loc_F9E38E:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F9E3E6:   Set var_B4 = Me.DGRest
  loc_F9E3FD:   Set var_CC = Me.Txt
  loc_F9E403:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_F9E40B:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F9E42B: End If
  loc_F9E449: Set var_B0 = Me.Txt
  loc_F9E44F: Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)))
  loc_F9E457: var_B4.SetFocus
  loc_F9E46B: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9D898
  'Data Table: 5082E4
  loc_E9D836: Proc_6_153_E91D24(Me.DGRest, arg_14)
  loc_E9D860: Set var_A8 = Me.FGPoint
  loc_E9D881: Proc_6_138_106E830(Me.DGRest, global_76, CInt(CStr(Me.DGRest.Tag)))
  loc_E9D897: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F425B4
  'Data Table: 5082E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F424AB: Me.DGHelp.Visible = False
  loc_F424CA: If (Me.RecordCount > 0) Then
  loc_F42509:   Set var_B4 = Me.Txt
  loc_F4250F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F42517:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4254A:   var_B0 = Me.Fields.Item("Name")
  loc_F42569:   Set var_B4 = Me.Txt
  loc_F4256F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F42577:   var_B8.Text = CStr(var_B0.Value)
  loc_F4258D: End If
  loc_F42598: Set var_A8 = Me.Txt
  loc_F4259E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F425A6: var_B0.SetFocus
  loc_F425B2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E7063C
  'Data Table: 5082E4
  loc_E705FA: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E70611: Set var_8C = Me.FGPoint
  loc_E7062D: Proc_6_138_106E830(Me.DGHelp, global_68, CInt(0))
  loc_E7063B: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_9 'F47574
  'Data Table: 5082E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4746B: Me.DGUnit.Visible = False
  loc_F4748A: If (Me.RecordCount > 0) Then
  loc_F474C9:   Set var_B4 = Me.Txt
  loc_F474CF:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F474D7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4750A:   var_B0 = Me.Fields.Item("Name")
  loc_F47529:   Set var_B4 = Me.Txt
  loc_F4752F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F47537:   var_B8.Text = CStr(var_B0.Value)
  loc_F4754D: End If
  loc_F47558: Set var_A8 = Me.Txt
  loc_F4755E: Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1))
  loc_F47566: var_B0.SetFocus
  loc_F47572: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_1F 'E70230
  'Data Table: 5082E4
  loc_E701EE: Proc_6_153_E91D24(Me.DGUnit, arg_14)
  loc_E70205: Set var_8C = Me.FGPoint
  loc_E70221: Proc_6_138_106E830(Me.DGUnit, global_84, CInt(1))
  loc_E7022F: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F44AD4
  'Data Table: 5082E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F449CB: Me.DGItemCat.Visible = False
  loc_F449EA: If (Me.RecordCount > 0) Then
  loc_F44A29:   Set var_B4 = Me.Txt
  loc_F44A2F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F44A37:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F44A6A:   var_B0 = Me.Fields.Item("Name")
  loc_F44A89:   Set var_B4 = Me.Txt
  loc_F44A8F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F44A97:   var_B8.Text = CStr(var_B0.Value)
  loc_F44AAD: End If
  loc_F44AB8: Set var_A8 = Me.Txt
  loc_F44ABE: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6))
  loc_F44AC6: var_B0.SetFocus
  loc_F44AD2: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'E70514
  'Data Table: 5082E4
  loc_E704D2: Proc_6_153_E91D24(Me.DGItemCat, arg_14)
  loc_E704E9: Set var_8C = Me.FGPoint
  loc_E70505: Proc_6_138_106E830(Me.DGItemCat, global_80, CInt(6))
  loc_E70513: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_9 'F488B4
  'Data Table: 5082E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F487AB: Me.DGItemGroup.Visible = False
  loc_F487CA: If (Me.RecordCount > 0) Then
  loc_F48809:   Set var_B4 = Me.Txt
  loc_F4880F:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F48817:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4884A:   var_B0 = Me.Fields.Item("Name")
  loc_F48869:   Set var_B4 = Me.Txt
  loc_F4886F:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F48877:   var_B8.Text = CStr(var_B0.Value)
  loc_F4888D: End If
  loc_F48898: Set var_A8 = Me.Txt
  loc_F4889E: Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2))
  loc_F488A6: var_B0.SetFocus
  loc_F488B2: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_1F 'E70358
  'Data Table: 5082E4
  loc_E70316: Proc_6_153_E91D24(Me.DGItemGroup, arg_14)
  loc_E7032D: Set var_8C = Me.FGPoint
  loc_E70349: Proc_6_138_106E830(Me.DGItemGroup, global_72, CInt(2))
  loc_E70357: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 'FE4CE4
  'Data Table: 5082E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE4B1F: Me.DGItem.Visible = False
  loc_FE4B3E: If (Me.RecordCount > 0) Then
  loc_FE4B7B:   Set var_B4 = Me.TxtGrid
  loc_FE4B81:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_FE4B89:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FE4BB2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE4BBA:   var_EC = CVar(CLng(2)) 'Long
  loc_FE4BED:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE4BF5:   Set var_B8 = Me.FGrid
  loc_FE4BFB:   LateIdCallSt
  loc_FE4C2A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE4C32:   var_EC = CVar(CLng(1)) 'Long
  loc_FE4C54:   var_B0 = Me.Fields.Item("Code")
  loc_FE4C65:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE4C6D:   Set var_B8 = Me.FGrid
  loc_FE4C73:   LateIdCallSt
  loc_FE4C8F: End If
  loc_FE4C9B: Set var_A8 = Me.TxtGrid
  loc_FE4CA1: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE4CA9: var_A4 = var_B0.Visible
  loc_FE4CBB: If (var_12E = &HFF) Then
  loc_FE4CC7:   Set var_A8 = Me.TxtGrid
  loc_FE4CCD:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE4CD5:   var_B0.SetFocus
  loc_FE4CE1: End If
  loc_FE4CE1: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E703EC
  'Data Table: 5082E4
  loc_E703AA: Proc_6_153_E91D24(Me.DGItem, arg_14)
  loc_E703C1: Set var_8C = Me.FGPoint
  loc_E703DB: Proc_6_138_106E830(Me.DGItem, global_140, 0)
  loc_E703E9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '15992C8
  'Data Table: 5082E4
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_AC As String
  Dim var_B0 As Variant
  Dim var_CC As Variant
  Dim var_90 As Variant
  Dim var_88 As DataGrid
  Dim unk_5082FA As Connection15
  loc_1598118: On Error Goto loc_1599282
  loc_1598125: Set var_88 = Me.Txt
  loc_159812B: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1598139: Proc_6_74_E23240(var_8C)
  loc_1598145: Call Proc_188_57_1009A24(var_8C)
  loc_159814D: var_92 = Index
  loc_1598158: If (var_92 = CInt(0)) Then
  loc_159816A:   Me.Filter = 0
  loc_1598180:   Set var_88 = Me.Txt
  loc_1598186:   Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C, var_A8)
  loc_159818E:   "ItemGroup='" = var_8C.Tag
  loc_15981AF:   Set var_90 = Me.Txt
  loc_15981B5:   Call 0.Method_Txt_GotFocus0 (CInt(8), var_B0)
  loc_15981D7:   Me.Filter = CVar(var_92 & var_A8 & "' And RestCode='" & var_B0.Tag & "'")
  loc_159820E:   If (Me.RecordCount > 0) Then
  loc_159821C:     Set var_8C = Me.FGPoint
  loc_1598234:     Proc_6_137_1192FDC(Me.DGHelp, global_68)
  loc_1598242:   End If
  loc_1598245: Else
  loc_159824D:   If (var_92 = CInt(2)) Then
  loc_159825F:     Me.Filter = 0
  loc_1598275:     Set var_88 = Me.Txt
  loc_159827B:     Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, var_A8)
  loc_1598283:     "RestCode='" = var_8C.Tag
  loc_159829D:     Me.Filter = CVar(Index & var_A8 & "'")
  loc_15982CA:     If (Me.RecordCount > 0) Then
  loc_15982D8:       Set var_8C = Me.FGPoint
  loc_15982F0:       Proc_6_137_1192FDC(Me.DGItemGroup, global_72, Index)
  loc_15982FE:     End If
  loc_159834C:     Set var_88 = Me.Txt
  loc_1598352:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_159835A:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1598372:     If (var_8C Or (var_A8 = vbNullString)) Then
  loc_1598375:       Exit Sub
  loc_1598376:     End If
  loc_1598383:     Set var_88 = Me.Txt
  loc_1598389:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1598391:     var_A8 = var_8C.Text
  loc_15983A3:     var_A4 = "Name"
  loc_15983DE:     If CBool(CVar(var_A8) <> Me.Fields.Item(var_A4).Value) Then
  loc_15983E7:       Me.MoveFirst
  loc_159840A:       Set var_88 = Me.Txt
  loc_1598410:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1598418:       0 = var_8C.Text
  loc_1598431:       Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_1598446:     End If
  loc_1598449:   Else
  loc_1598451:     If (var_92 = CInt(6)) Then
  loc_1598463:       Me.Filter = 0
  loc_1598479:       Set var_88 = Me.Txt
  loc_159847F:       Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_1598487:       var_A8 = var_8C.Tag
  loc_15984A1:       Me.Filter = CVar("RestCode='" & var_A8 & "'")
  loc_15984CE:       If (Me.RecordCount > 0) Then
  loc_15984DC:         Set var_8C = Me.FGPoint
  loc_15984F4:         Proc_6_137_1192FDC(Me.DGItemCat, global_80)
  loc_1598502:       End If
  loc_1598550:       Set var_88 = Me.Txt
  loc_1598556:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_159855E:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1598576:       If (Index Or (var_A8 = vbNullString)) Then
  loc_1598579:         Exit Sub
  loc_159857A:       End If
  loc_1598587:       Set var_88 = Me.Txt
  loc_159858D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1598595:       var_A8 = var_8C.Text
  loc_15985A7:       var_A4 = "Name"
  loc_15985E2:       If CBool(CVar(var_A8) <> Me.Fields.Item(var_A4).Value) Then
  loc_15985EB:         Me.MoveFirst
  loc_159860E:         Set var_88 = Me.Txt
  loc_1598614:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_159861C:         0 = var_8C.Text
  loc_1598635:         Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_159864A:       End If
  loc_159864D:     Else
  loc_1598655:       If (var_92 = CInt(1)) Then
  loc_159866F:         If (Me.RecordCount > 0) Then
  loc_159867D:           Set var_8C = Me.FGPoint
  loc_1598695:           Proc_6_137_1192FDC(Me.DGUnit, global_84)
  loc_15986A3:         End If
  loc_15986F1:         Set var_88 = Me.Txt
  loc_15986F7:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_15986FF:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1598717:         If (Index Or (var_A8 = vbNullString)) Then
  loc_159871A:           Exit Sub
  loc_159871B:         End If
  loc_1598728:         Set var_88 = Me.Txt
  loc_159872E:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1598736:         var_A8 = var_8C.Text
  loc_1598748:         var_A4 = "Name"
  loc_159875F:         var_B0 = Me.Fields.Item(var_A4)
  loc_1598783:         If CBool(CVar(var_A8) <> var_B0.Value) Then
  loc_159878C:           Me.MoveFirst
  loc_15987AF:           Set var_88 = Me.Txt
  loc_15987B5:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_15987BD:           0 = var_8C.Text
  loc_15987D6:           Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_15987EB:         End If
  loc_15987EE:       Else
  loc_15987F6:         If Not (var_92 = CInt(4)) Then
  loc_1598801:           If Not (var_92 = CInt(5)) Then
  loc_159880C:             If (var_92 = CInt(&HC)) Then
  loc_159880F:             End If
  loc_159880F:           End If
  loc_159881E:           Set var_88 = Me.Txt
  loc_1598824:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_159882C:           var_8C.SelStart = 0
  loc_1598845:           Set var_88 = Me.Txt
  loc_159884B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1598866:           Set var_90 = Me.Txt
  loc_159886C:           Call 0.Method_Txt_GotFocus0 (Index, var_B0)
  loc_1598874:           var_B0.SelLength = Len(var_8C.Text)
  loc_1598894:           Set var_88 = Me.Txt
  loc_159889A:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15988B4:           Set var_90 = Me.Txt
  loc_15988BA:           Call 0.Method_Txt_GotFocus0 (Index, var_B0)
  loc_15988C2:           var_B0.Tag = var_8C.Text
  loc_15988D8:         Else
  loc_15988E0:           If (var_92 = CInt(7)) Then
  loc_15988F0:             Set var_88 = Me.Txt
  loc_15988F6:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1598911:             Set var_90 = Me.Txt
  loc_1598917:             Call 0.Method_Txt_GotFocus0 (Index, var_B0)
  loc_159891F:             var_B0.SelLength = Len(var_8C.Text)
  loc_159893F:             Set var_88 = Me.Txt
  loc_1598945:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_159894D:             var_A8 = var_8C.Text
  loc_159895F:             Set var_90 = Me.Txt
  loc_1598965:             Call 0.Method_Txt_GotFocus0 (Index, var_B0)
  loc_159896D:             var_B0.Tag = var_A8
  loc_1598983:           Else
  loc_159898B:             If (var_92 = CInt(3)) Then
  loc_159899C:               Set var_88 = Me.Txt
  loc_15989A2:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_15989C1:               Me.DGRest.Left = CVar(var_8C.Left)
  loc_15989DD:               Set var_90 = Me.Txt
  loc_15989E3:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_B0)
  loc_15989FE:               Set var_88 = Me.Txt
  loc_1598A04:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_1598A1C:               var_A4 = CVar(((var_8C.Top + var_B0.Height) + CDbl(&H1E))) 'Single
  loc_1598A2B:               Me.DGRest.Top = CVar(var_8C.Left)
  loc_1598A4C:               Me.Filter = 0
  loc_1598A5D:               Me.Filter = "RestType='Kitchen'"
  loc_1598A79:               If (Me.RecordCount > 0) Then
  loc_1598A87:                 Set var_8C = Me.FGPoint
  loc_1598A9F:                 Proc_6_137_1192FDC(Me.DGRest, global_76)
  loc_1598AAD:               End If
  loc_1598AFB:               Set var_88 = Me.Txt
  loc_1598B01:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_1598B09:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1598B21:               If (Index Or (var_A8 = vbNullString)) Then
  loc_1598B24:                 Exit Sub
  loc_1598B25:               End If
  loc_1598B32:               Set var_88 = Me.Txt
  loc_1598B38:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1598B40:               var_A8 = var_8C.Text
  loc_1598B52:               var_A4 = "Name"
  loc_1598B69:               var_B0 = Me.Fields.Item(var_A4)
  loc_1598B8D:               If CBool(CVar(var_A8) <> var_B0.Value) Then
  loc_1598B96:                 Me.MoveFirst
  loc_1598BB9:                 Set var_88 = Me.Txt
  loc_1598BBF:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1598BC7:                 0 = var_8C.Text
  loc_1598BE0:                 Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_1598BF5:               End If
  loc_1598C08:               Me.DGRest.Tag = CVar(CStr(Index))
  loc_1598C16:             Else
  loc_1598C1E:               If (var_92 = CInt(8)) Then
  loc_1598C2F:                 Set var_88 = Me.Txt
  loc_1598C35:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_1598C54:                 Me.DGRest.Left = CVar(var_8C.Left)
  loc_1598C70:                 Set var_90 = Me.Txt
  loc_1598C76:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_B0)
  loc_1598C91:                 Set var_88 = Me.Txt
  loc_1598C97:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_1598CAF:                 var_A4 = CVar(((var_8C.Top + var_B0.Height) + CDbl(&H1E))) 'Single
  loc_1598CBE:                 Me.DGRest.Top = CVar(var_8C.Left)
  loc_1598CDF:                 Me.Filter = 0
  loc_1598CF0:                 Me.Filter = "RestType<>'Kitchen'"
  loc_1598D0C:                 If (Me.RecordCount > 0) Then
  loc_1598D1A:                   Set var_8C = Me.FGPoint
  loc_1598D32:                   Proc_6_137_1192FDC(Me.DGRest, global_76)
  loc_1598D40:                 End If
  loc_1598D8E:                 Set var_88 = Me.Txt
  loc_1598D94:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_1598D9C:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1598DB4:                 If (Index Or (var_A8 = vbNullString)) Then
  loc_1598DB7:                   Exit Sub
  loc_1598DB8:                 End If
  loc_1598DC5:                 Set var_88 = Me.Txt
  loc_1598DCB:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1598DD3:                 var_A8 = var_8C.Text
  loc_1598DE5:                 var_A4 = "Name"
  loc_1598DFC:                 var_B0 = Me.Fields.Item(var_A4)
  loc_1598E20:                 If CBool(CVar(var_A8) <> var_B0.Value) Then
  loc_1598E29:                   Me.MoveFirst
  loc_1598E4C:                   Set var_88 = Me.Txt
  loc_1598E52:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1598E5A:                   0 = var_8C.Text
  loc_1598E73:                   Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_1598E88:                 End If
  loc_1598E9B:                 Me.DGRest.Tag = CVar(CStr(Index))
  loc_1598EB9:                 Me.DGRest.Tag = CVar(CStr(Index))
  loc_1598EC7:               Else
  loc_1598ECF:                 If (var_92 = CInt(9)) Then
  loc_1598EDF:                   Set var_88 = Me.Txt
  loc_1598EE5:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1598F00:                   Set var_90 = Me.Txt
  loc_1598F06:                   Call 0.Method_Txt_GotFocus0 (Index, var_B0)
  loc_1598F0E:                   var_B0.SelLength = Len(var_8C.Text)
  loc_1598F2E:                   Set var_88 = Me.Txt
  loc_1598F34:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1598F4E:                   Set var_90 = Me.Txt
  loc_1598F54:                   Call 0.Method_Txt_GotFocus0 (Index, var_B0)
  loc_1598F5C:                   var_B0.Tag = var_8C.Text
  loc_1598F72:                 Else
  loc_1598F7A:                   If (var_92 = CInt(&HA)) Then
  loc_1598F8B:                     Set var_88 = Me.Txt
  loc_1598F91:                     Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_1598FB0:                     Me.DGDispCode.Left = CVar(var_8C.Left)
  loc_1598FCC:                     Set var_90 = Me.Txt
  loc_1598FD2:                     Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_B0)
  loc_1598FED:                     Set var_88 = Me.Txt
  loc_1598FF3:                     Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_159900B:                     var_A4 = CVar(((var_8C.Top + var_B0.Height) + CDbl(&H1E))) 'Single
  loc_159901A:                     Me.DGDispCode.Top = CVar(var_8C.Left)
  loc_159903A:                     Set var_88 = Me.Txt
  loc_1599040:                     Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_1599048:                     var_A8 = var_8C.Text
  loc_159905F:                     If (var_A8 = vbNullString) Then
  loc_159906D:                       Set var_88 = Me.Txt
  loc_1599073:                       Call 0.Method_Txt_GotFocus0 (CInt(8))
  loc_159907B:                       var_8C.SetFocus
  loc_1599087:                       Exit Sub
  loc_1599088:                     End If
  loc_15990A6:                     Set var_88 = Me.Txt
  loc_15990AC:                     Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, var_A8, "SELECT DispCode as COde,DispCode FROM ItemMast Where ItemType<>'Store' And DispCode<>9999 and RestCode ='")
  loc_15990B4:                     var_CC = var_8C.Tag
  loc_15990BD:                     var_AC = -1 & var_A8
  loc_15990CD:                     unk_5082FA.Execute 1 & var_A8 & "' ORDER BY DispCode", var_90, var_8C
  loc_1599102:                     CVarUnk
  loc_1599107:                     VerifyVarObj
  loc_159910D:                     Set var_88 = Me.DGDispCode
  loc_1599113:                     LateIdStAd
  loc_1599138:                     If (Me.RecordCount > 0) Then
  loc_1599146:                       Set var_8C = Me.FGPoint
  loc_159915E:                       Proc_6_137_1192FDC(Me.DGDispCode, Me.DGDispCode, Index)
  loc_159916C:                     End If
  loc_159916F:                   Else
  loc_1599177:                     If (var_92 = CInt(&H11)) Then
  loc_1599187:                       ReDim var_110(0 To 3)
  loc_159919E:                       var_110(0) = "Manufactured Item"
  loc_15991AD:                       var_110(1) = "Trade Item"
  loc_15991BC:                       var_110(2) = "Proprietary Item"
  loc_15991CB:                       var_110(3) = "Other"
  loc_15991E2:                       global_104 = Array(var_110)
  loc_15991ED:                       Set var_B0 = Me.ListView
  loc_1599208:                       Set var_8C = Me.Txt
  loc_1599222:                       Set global_120 = Proc_6_66_F0048C(var_B0, var_8C, Index, global_104, 4)
  loc_1599246:                       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, global_104)
  loc_159924E:                       var_8C = var_8C.Text
  loc_1599260:                       Set var_90 = Me.Txt
  loc_1599266:                       Call 0.Method_Txt_GotFocus0 (Index, var_B0, var_A8)
  loc_159926E:                       var_B0.Tag = Me.Txt
  loc_1599281:                     End If
  loc_1599281:                   End If
  loc_1599281:                 End If
  loc_1599281:               End If
  loc_1599281:             End If
  loc_1599281:           End If
  loc_1599281:         End If
  loc_1599281:       End If
  loc_1599281:     End If
  loc_1599281:   End If
  loc_1599281: End If
  loc_1599281: Exit Sub
  loc_1599282: ' Referenced from: 1598118
  loc_159928A: Set var_88 = Err()
  loc_1599290: Call 0.Method_arg_2C (var_A8)
  loc_15992B1: MsgBox(CVar(var_A8), &H40, "Information", var_F4, var_140)
  loc_15992C4: Exit Sub
  loc_15992C5: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13C2FFC
  'Data Table: 5082E4
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_90 As DataGrid
  Dim var_9C As DataGrid
  Dim var_A8 As DataGrid
  Dim var_B4 As DataGrid
  loc_13C26B2: If (CLng(Shift) = &H1B) Then
  loc_13C26B5:   Call Proc_188_57_1009A24()
  loc_13C26BA:   Exit Sub
  loc_13C26BB: End If
  loc_13C26BE: var_88 = KeyCode
  loc_13C26C9: If (var_88 = CInt(0)) Then
  loc_13C26EE:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_13C270E:     Set var_9C = Me.FGPoint
  loc_13C273C:     Proc_6_79_11AD564(Me.DGHelp, Me.Txt, KeyCode, global_68, Shift)
  loc_13C2750:   End If
  loc_13C27A9:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13C27CF:     Proc_6_138_106E830(Me.DGHelp, global_68, KeyCode, Me.FGPoint, 0)
  loc_13C27DD:   End If
  loc_13C27E0: Else
  loc_13C27E8:   If (var_88 = CInt(2)) Then
  loc_13C2813:     Set var_9C = Nothing
  loc_13C2845:     Proc_6_69_134A630(Me.DGItemGroup, Me.Txt, CInt(2), global_72, Shift, 0, 1)
  loc_13C28B4:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13C28BB:       Set var_9C = Me.DGItemGroup
  loc_13C28DA:       Proc_6_138_106E830(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_13C28E8:     End If
  loc_13C28EB:   Else
  loc_13C28F3:     If (var_88 = CInt(6)) Then
  loc_13C294C:       Proc_6_69_134A630(Me.DGItemCat, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_13C29BB:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13C29E1:         Proc_6_138_106E830(Me.DGItemCat, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C29EF:       End If
  loc_13C29F2:     Else
  loc_13C29FA:       If Not (var_88 = CInt(8)) Then
  loc_13C2A05:         If (var_88 = CInt(3)) Then
  loc_13C2A08:         End If
  loc_13C2A5E:         Proc_6_69_134A630(Me.DGRest, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_13C2ACD:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13C2ADB:           Set var_94 = Me.FGPoint
  loc_13C2AF3:           Proc_6_138_106E830(Me.DGRest, global_76, KeyCode, var_94, Me.FGPoint, 0)
  loc_13C2B01:         End If
  loc_13C2B04:       Else
  loc_13C2B0C:         If (var_88 = CInt(&HA)) Then
  loc_13C2B19:           Set var_90 = Me.Txt
  loc_13C2B1F:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 0, 1)
  loc_13C2B3A:           Proc_6_41_FA1734(var_94, Shift, 4, 0)
  loc_13C2B68:           If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_13C2B88:             Set var_9C = Me.FGPoint
  loc_13C2BB6:             Proc_6_79_11AD564(Me.DGDispCode, Me.Txt, KeyCode, global_92, Shift, 0)
  loc_13C2BCA:           End If
  loc_13C2C23:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13C2C49:             Proc_6_138_106E830(Me.DGDispCode, global_92, KeyCode, Me.FGPoint, 1)
  loc_13C2C57:           End If
  loc_13C2C5A:         Else
  loc_13C2C62:           If (var_88 = CInt(1)) Then
  loc_13C2C69:             Set var_A4 = Me.DGUnit
  loc_13C2C77:             Set var_AC = Me.FGPoint
  loc_13C2C82:             Set var_9C = var_AC
  loc_13C2CB0:             Proc_6_79_11AD564(var_A4, Me.Txt, KeyCode, global_84, Shift, 0, 1)
  loc_13C2CCD:             var_8C = Me.RecordCount
  loc_13C2D1D:             If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13C2D24:               Set var_9C = Me.DGUnit
  loc_13C2D2B:               Set var_94 = Me.FGPoint
  loc_13C2D43:               Proc_6_138_106E830(var_9C, global_84, KeyCode, var_94, var_9C, 0)
  loc_13C2D51:             End If
  loc_13C2D54:           Else
  loc_13C2D5C:             If (var_88 = CInt(&H11)) Then
  loc_13C2D81:               Set var_90 = Me.Txt
  loc_13C2D87:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, var_9C)
  loc_13C2D8F:               0 = var_94.Left
  loc_13C2DA1:               Set var_9C = Me.Txt
  loc_13C2DA7:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_13C2DAF:               var_9C = var_A4.Top
  loc_13C2DC1:               Set var_A8 = Me.Txt
  loc_13C2DC7:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_13C2DCF:               0 = var_AC.Height
  loc_13C2DE1:               Set var_B4 = Me.Txt
  loc_13C2DE7:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_13C2DEF:               var_C4 = var_C0.Width
  loc_13C2E37:               Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13C2E5B:             End If
  loc_13C2E5B:           End If
  loc_13C2E5B:         End If
  loc_13C2E5B:       End If
  loc_13C2E5B:     End If
  loc_13C2E5B:   End If
  loc_13C2E5B: End If
  loc_13C2F38: If ((((((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGDispCode.Visible) = 0)) And (CBool(Me.DGRest.Visible) = 0)) And (CBool(Me.DGItemGroup.Visible) = 0)) And (CBool(Me.DGItemCat.Visible) = 0)) And (CBool(Me.DGUnit.Visible) = 0)) And (CBool(Me.DGAppDate.Visible) = 0)) And (CBool(Me.ListView.Visible) = 0)) Then
  loc_13C2F59:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HE))) Then
  loc_13C2F66:     Call Txt_Validate(CInt(3))
  loc_13C2F6E:   Else
  loc_13C2F8C:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_13C2F95:       Call Txt_Validate(KeyCode)
  loc_13C2FA0:       If (var_86 = &HFF) Then
  loc_13C2FA3:         Exit Sub
  loc_13C2FA4:       End If
  loc_13C2FAA:       Proc_6_75_E5335C(Shift, arg_14, var_86, var_86, CInt(var_8C))
  loc_13C2FB2:     Else
  loc_13C2FC7:       If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13C2FD0:         Proc_6_75_E5335C(Shift, arg_14, CInt((var_B8 + var_BC)))
  loc_13C2FD8:       Else
  loc_13C2FEB:         If ((CLng(Shift) = &H26) And (KeyCode <> CInt(8))) Then
  loc_13C2FF4:           Proc_6_76_E533C8(Shift, arg_14, CInt(var_C4))
  loc_13C2FF9:         End If
  loc_13C2FF9:       End If
  loc_13C2FF9:     End If
  loc_13C2FF9:   End If
  loc_13C2FF9: End If
  loc_13C2FF9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '112343C
  'Data Table: 5082E4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_11230DB: Proc_6_58_E06050(arg_10)
  loc_11230E6: Proc_6_133_E7FB08(var_94)
  loc_11230EF: arg_10 = CInt(var_94)
  loc_11230F8: var_96 = KeyAscii
  loc_1123103: If (var_96 = CInt(&HA)) Then
  loc_1123110:   Set var_9C = Me.Txt
  loc_1123116:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_1123131:   Proc_6_42_129B55C(var_A0, arg_10, 4)
  loc_1123140: Else
  loc_1123148:   If (var_96 = CInt(2)) Then
  loc_1123167:     If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_1123194:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_72, arg_10, "Name")
  loc_11231C6:       Proc_6_138_106E830(Me.DGItemGroup, global_72, KeyAscii, Me.FGPoint)
  loc_11231D4:     End If
  loc_11231D7:   Else
  loc_11231DF:     If Not (var_96 = CInt(8)) Then
  loc_11231EA:       If (var_96 = CInt(3)) Then
  loc_11231ED:       End If
  loc_1123209:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_1123236:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_1123268:         Proc_6_138_106E830(Me.DGRest, global_76, KeyAscii, Me.FGPoint, 0)
  loc_1123276:       End If
  loc_1123279:     Else
  loc_1123281:       If (var_96 = CInt(6)) Then
  loc_11232A0:         If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_11232CD:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_11232E7:           Set var_A0 = Me.FGPoint
  loc_11232FF:           Proc_6_138_106E830(Me.DGItemCat, global_80, KeyAscii, var_A0, 0)
  loc_112330D:         End If
  loc_1123310:       Else
  loc_1123318:         If (var_96 = CInt(7)) Then
  loc_1123325:           Set var_9C = Me.Txt
  loc_112332B:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_1123346:           Proc_6_42_129B55C(var_A0, arg_10, 8, 2)
  loc_1123355:         Else
  loc_112335D:           If Not (var_96 = CInt(4)) Then
  loc_1123368:             If Not (var_96 = CInt(5)) Then
  loc_1123373:               If Not (var_96 = CInt(&HC)) Then
  loc_112337E:                 If Not (var_96 = CInt(&HD)) Then
  loc_1123389:                   If (var_96 = CInt(&HE)) Then
  loc_112338C:                   End If
  loc_112338C:                 End If
  loc_112338C:               End If
  loc_112338C:             End If
  loc_11233B5:             If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11233C5:               Set var_9C = Me.Txt
  loc_11233CB:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_11233D3:               var_A0.Text = 0
  loc_11233E2:             Else
  loc_112340B:               If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_112341B:                 Set var_9C = Me.Txt
  loc_1123421:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_1123429:                 var_A0.Text = arg_10
  loc_1123435:               End If
  loc_1123435:             End If
  loc_1123437:             arg_10 = 0
  loc_112343A:           End If
  loc_112343A:         End If
  loc_112343A:       End If
  loc_112343A:     End If
  loc_112343A:   End If
  loc_112343A: End If
  loc_112343A: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '10693AC
  'Data Table: 5082E4
  Dim var_86 As Integer
  Dim var_A4 As TextBox
  loc_1069127: var_86 = KeyCode
  loc_1069132: If (var_86 = CInt(0)) Then
  loc_1069158:   Set var_A0 = Me.Txt
  loc_106915E:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_1069166:   (CBool(Me.DGHelp.Visible) = &HFF) = var_A4.Text
  loc_1069183:   If (var_86 And (var_A8 <> vbNullString)) Then
  loc_1069190:     var_A8 = "Name"
  loc_10691AB:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_68)
  loc_10691BE:     Set var_A4 = Me.DGHelp
  loc_10691C5:     Set var_A0 = Me.FGPoint
  loc_10691DD:     Proc_6_138_106E830(var_A4, global_68, KeyCode)
  loc_10691EB:   End If
  loc_10691EE: Else
  loc_10691F6:   If (var_86 = CInt(&HA)) Then
  loc_106921C:     Set var_A0 = Me.Txt
  loc_1069222:     Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8, (CBool(Me.DGDispCode.Visible) = &HFF))
  loc_106922A:     var_A0 = var_A4.Text
  loc_1069247:     If (Shift And (var_A8 <> vbNullString)) Then
  loc_1069254:       var_A8 = "DispCode"
  loc_106926F:       Proc_6_80_FF1F20(Me.Txt, KeyCode, global_92)
  loc_10692A1:       Proc_6_138_106E830(Me.DGDispCode, global_92, KeyCode, Me.FGPoint)
  loc_10692AF:     End If
  loc_10692B2:   Else
  loc_10692BA:     If (var_86 = CInt(1)) Then
  loc_10692D9:       If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_10692E6:         var_A8 = "Name"
  loc_1069301:         Proc_6_80_FF1F20(Me.Txt, KeyCode, global_84, Shift)
  loc_1069333:         Proc_6_138_106E830(Me.DGUnit, global_84, KeyCode, Me.FGPoint)
  loc_1069341:       End If
  loc_1069344:     Else
  loc_106934C:       If (var_86 = CInt(&H11)) Then
  loc_106936A:         If (Me.FrmList.Visible = &HFF) Then
  loc_1069399:           Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift, global_120)
  loc_10693A9:         End If
  loc_10693A9:       End If
  loc_10693A9:     End If
  loc_10693A9:   End If
  loc_10693A9: End If
  loc_10693A9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E5099C
  'Data Table: 5082E4
  loc_E5097A: Set var_88 = Me.Txt
  loc_E50980: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E5098E: Proc_6_73_E23294(var_8C)
  loc_E5099A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1510700
  'Data Table: 5082E4
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim var_B0 As String
  Dim arg_10 As Integer
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim unk_5082FA As Connection15
  Dim var_124 As String
  loc_150F7F4: On Error Goto loc_15106B9
  loc_150F7FA: var_86 = Cancel
  loc_150F805: If (var_86 = CInt(9)) Then
  loc_150F812:   Set var_8C = Me.Txt
  loc_150F818:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150F838:   Set var_98 = Me.Txt
  loc_150F83E:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_150F846:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_150F867:   Set var_8C = Me.Txt
  loc_150F86D:   Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_150F875:   var_A0 = var_90.Text
  loc_150F88C:   If (var_A0 = vbNullString) Then
  loc_150F8B0:     MsgBox("First Enter Sale Rate", &H40, "Validation", var_100, var_120)
  loc_150F8C2:     arg_10 = &HFF
  loc_150F8D0:     Set var_8C = Me.Txt
  loc_150F8D6:     Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_150F8DE:     var_90.SetFocus
  loc_150F8EA:     Exit Sub
  loc_150F8EB:   End If
  loc_150F8F9:   Set var_8C = Me.Txt
  loc_150F8FF:   Call 0.Method_Txt_Validate0 (CInt(7), var_90, var_A0)
  loc_150F907:   arg_10 = var_90.Text
  loc_150F922:   Set var_94 = Me.Txt
  loc_150F928:   Call 0.Method_Txt_Validate0 (CInt(9), var_98, var_124)
  loc_150F930:   (var_A0 <> vbNullString) = var_98.Text
  loc_150F950:   If (var_86 And (var_124 = vbNullString)) Then
  loc_150F974:     MsgBox("First Enter App. Date", &H40, "Validation", var_100, var_120)
  loc_150F986:     arg_10 = &HFF
  loc_150F989:     Exit Sub
  loc_150F98A:   End If
  loc_150F98D: Else
  loc_150F995:   If (var_86 = CInt(&HA)) Then
  loc_150F99B:     Call Proc_188_56_12F25EC(var_126)
  loc_150F9A6:     If (var_126 = &HFF) Then
  loc_150F9AB:       arg_10 = &HFF
  loc_150F9AE:       Exit Sub
  loc_150F9AF:     End If
  loc_150F9B2:   Else
  loc_150F9BA:     If (var_86 = CInt(7)) Then
  loc_150F9C7:       Set var_8C = Me.Txt
  loc_150F9CD:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150FA07:       Set var_94 = Me.Txt
  loc_150FA0D:       Call 0.Method_Txt_Validate0 (Cancel, var_98, CStr(Format(CVar(var_90), "0.00")), 1)
  loc_150FA15:       var_98.Text = 1
  loc_150FA32:     Else
  loc_150FA3A:       If (var_86 = CInt(0)) Then
  loc_150FA40:         Call Proc_188_56_12F25EC(var_126, arg_10)
  loc_150FA4B:         If (var_126 = &HFF) Then
  loc_150FA50:           arg_10 = &HFF
  loc_150FA53:           Exit Sub
  loc_150FA54:         End If
  loc_150FA5F:         Set var_8C = Me.Txt
  loc_150FA65:         Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_150FA6D:         var_A0 = "Item Name"
  loc_150FA8E:         If (Proc_6_27_EA61EC(var_90, var_A0) = 0) Then
  loc_150FA9C:           Set var_8C = Me.Txt
  loc_150FAA2:           Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_150FAAA:           var_90.SetFocus
  loc_150FAB8:           arg_10 = &HFF
  loc_150FABB:           Exit Sub
  loc_150FABC:         End If
  loc_150FABF:       Else
  loc_150FAC7:         If (var_86 = CInt(2)) Then
  loc_150FB18:           Set var_8C = Me.Txt
  loc_150FB1E:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_150FB26:           arg_10 = var_90.Text
  loc_150FB3E:           If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_150FB41:             Exit Sub
  loc_150FB42:           End If
  loc_150FB7D:           Set var_94 = Me.Txt
  loc_150FB83:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150FB8B:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_150FBDC:           Set var_94 = Me.Txt
  loc_150FBE2:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150FBEA:           var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_150FC1A:           var_90 = Me.Fields.Item("Type")
  loc_150FC2B:           var_A0 = Proc_6_38_E69628(CVar(var_90))
  loc_150FC31:           global_56 = var_A0
  loc_150FC41:         Else
  loc_150FC49:           If (var_86 = CInt(6)) Then
  loc_150FC9A:             Set var_8C = Me.Txt
  loc_150FCA0:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0)
  loc_150FCA8:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_150FCC0:             If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_150FCC3:               Exit Sub
  loc_150FCC4:             End If
  loc_150FCFF:             Set var_94 = Me.Txt
  loc_150FD05:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150FD0D:             var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_150FD40:             var_90 = Me.Fields.Item("Code")
  loc_150FD5E:             Set var_94 = Me.Txt
  loc_150FD64:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150FD6C:             var_98.Tag = CStr(var_90.Value)
  loc_150FD85:           Else
  loc_150FD8D:             If (var_86 = CInt(3)) Then
  loc_150FDDE:               Set var_8C = Me.Txt
  loc_150FDE4:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150FE04:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_150FE14:                 Set var_8C = Me.Txt
  loc_150FE1A:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150FE22:                 var_90.Text = vbNullString
  loc_150FE3B:                 Set var_8C = Me.Txt
  loc_150FE41:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150FE49:                 var_90.Tag = vbNullString
  loc_150FE55:                 Exit Sub
  loc_150FE56:               End If
  loc_150FE91:               Set var_94 = Me.Txt
  loc_150FE97:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150FE9F:               var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_150FED2:               var_90 = Me.Fields.Item("Code")
  loc_150FEF0:               Set var_94 = Me.Txt
  loc_150FEF6:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150FEFE:               var_98.Tag = CStr(var_90.Value)
  loc_150FF17:             Else
  loc_150FF1F:               If (var_86 = CInt(8)) Then
  loc_150FF70:                 Set var_8C = Me.Txt
  loc_150FF76:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150FF96:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_150FF9B:                   arg_10 = &HFF
  loc_150FF9E:                   Exit Sub
  loc_150FF9F:                 End If
  loc_150FFDA:                 Set var_94 = Me.Txt
  loc_150FFE0:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150FFE8:                 var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1510039:                 Set var_94 = Me.Txt
  loc_151003F:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1510047:                 var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_151009C:                 var_E0 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where Type IN ('Finish','Semi Finish') AND RESTCODE='" & Me.Fields.Item("Code").Value 
  loc_15100B3:                 unk_5082FA.Execute CStr(var_E0 & "' ORDER BY Name"), var_120, -1
  loc_15100EA:                 CVarUnk
  loc_15100EF:                 VerifyVarObj
  loc_15100F5:                 Set var_8C = Me.DGItemGroup
  loc_15100FB:                 LateIdStAd
  loc_1510148:                 var_E0 = "SELECT Code,Name,RestCode FROM ItemCatMast where (cattype is not NULL and cattype<>'')  AND RESTCODE='" & Me.Fields.Item("Code").Value 
  loc_151015F:                 unk_5082FA.Execute CStr(var_E0 & "' ORDER BY Name"), var_120, -1
  loc_1510196:                 CVarUnk
  loc_151019B:                 VerifyVarObj
  loc_15101A1:                 Set var_8C = Me.DGItemCat
  loc_15101A7:                 LateIdStAd
  loc_15101C7:                 var_8C = Me.Fields
  loc_15101CF:                 var_90 = var_8C.Item("DiscApp")
  loc_15101FE:                 If (Proc_6_38_E69628(CVar(var_90), var_8C, var_94, var_94) = "Y") Then
  loc_1510214:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90, &HFF, Me.Txt)
  loc_151021C:                   var_90.Enabled = var_94
  loc_1510236:                   Set var_8C = Me.Txt
  loc_151023C:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90, "Yes")
  loc_1510244:                   var_90.Text = var_94
  loc_1510253:                 Else
  loc_1510260:                   Set var_8C = Me.Txt
  loc_1510266:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_151026E:                   var_90.Enabled = False
  loc_1510288:                   Set var_8C = Me.Txt
  loc_151028E:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_1510296:                   var_90.Text = "No"
  loc_15102A2:                 End If
  loc_15102A5:                 var_B0 = "RateInclTax"
  loc_15102BC:                 var_90 = Me.Fields.Item(var_B0)
  loc_15102CD:                 var_A0 = Proc_6_38_E69628(CVar(var_90))
  loc_15102DE:                 If (var_A0 = "Y") Then
  loc_15102EE:                   Set var_8C = Me.Txt
  loc_15102F4:                   Call 0.Method_Txt_Validate0 (CInt(&HD), var_90)
  loc_15102FC:                   var_90.Enabled = False
  loc_1510316:                   Set var_8C = Me.Txt
  loc_151031C:                   Call 0.Method_Txt_Validate0 (CInt(&HD), var_90)
  loc_1510324:                   var_90.Text = "Yes"
  loc_1510333:                 Else
  loc_1510340:                   Set var_8C = Me.Txt
  loc_1510346:                   Call 0.Method_Txt_Validate0 (CInt(&HD), var_90)
  loc_151034E:                   var_90.Enabled = False
  loc_1510368:                   Set var_8C = Me.Txt
  loc_151036E:                   Call 0.Method_Txt_Validate0 (CInt(&HD), var_90)
  loc_1510376:                   var_90.Text = "No"
  loc_1510382:                 End If
  loc_1510385:               Else
  loc_151038D:                 If (var_86 = CInt(1)) Then
  loc_15103AE:                   Set var_8C = Me.Txt
  loc_15103B4:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, "Name like '")
  loc_15103BC:                   0 = var_90.Text
  loc_15103D5:                   Me.Find 1 & var_A0 & "*'", var_B0, arg_10
  loc_1510438:                   Set var_8C = Me.Txt
  loc_151043E:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_151045E:                   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_151046E:                     Set var_8C = Me.Txt
  loc_1510474:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_151047C:                     var_90.Text = vbNullString
  loc_1510495:                     Set var_8C = Me.Txt
  loc_151049B:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15104A3:                     var_90.Tag = vbNullString
  loc_15104AF:                     Exit Sub
  loc_15104B0:                   End If
  loc_15104C7:                   If (Me.AbsolutePosition > 0) Then
  loc_1510505:                     Set var_94 = Me.Txt
  loc_151050B:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1510513:                     var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1510546:                     var_90 = Me.Fields.Item("Code")
  loc_1510564:                     Set var_94 = Me.Txt
  loc_151056A:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1510572:                     var_98.Tag = CStr(var_90.Value)
  loc_1510588:                   End If
  loc_151058B:                 Else
  loc_1510593:                   If Not (var_86 = CInt(4)) Then
  loc_151059E:                     If Not (var_86 = CInt(5)) Then
  loc_15105A9:                       If Not (var_86 = CInt(&HC)) Then
  loc_15105B4:                         If (var_86 = CInt(&HE)) Then
  loc_15105B7:                         End If
  loc_15105B7:                       End If
  loc_15105B7:                     End If
  loc_15105C1:                     Set var_8C = Me.Txt
  loc_15105C7:                     Call 0.Method_Txt_Validate0 (Cancel)
  loc_15105E6:                     var_100 = Ucase(Left(CVar(var_90), 1))
  loc_1510602:                     If (var_100 = "Y") Then
  loc_1510612:                       Set var_8C = Me.Txt
  loc_1510618:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1510620:                       var_90.Text = "Yes"
  loc_151062F:                     Else
  loc_151063C:                       Set var_8C = Me.Txt
  loc_1510642:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_151064A:                       var_90.Text = "No"
  loc_1510656:                     End If
  loc_1510659:                   Else
  loc_1510661:                     If (var_86 = CInt(&H11)) Then
  loc_1510682:                       var_A0 = Me.ListView.SelectedItem.Text
  loc_1510694:                       Set var_94 = Me.Txt
  loc_151069A:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15106A2:                       var_98.Text = var_A0
  loc_15106B8:                     End If
  loc_15106B8:                   End If
  loc_15106B8:                 End If
  loc_15106B8:               End If
  loc_15106B8:             End If
  loc_15106B8:           End If
  loc_15106B8:         End If
  loc_15106B8:       End If
  loc_15106B8:     End If
  loc_15106B8:   End If
  loc_15106B8: End If
  loc_15106B8: Exit Sub
  loc_15106B9: ' Referenced from: 150F7F4
  loc_15106C1: Set var_8C = Err()
  loc_15106C7: Call 0.Method_arg_2C (var_A0)
  loc_15106E8: MsgBox(CVar(var_A0), &H40, "Information", var_100, var_120)
  loc_15106FB: Exit Sub
  loc_15106FC: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5B8F4
  'Data Table: 5082E4
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5B816: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5B81D:   Set var_A8 = Me.ListView
  loc_F5B867:   Set var_C0 = Me.Txt
  loc_F5B86D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5B875:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5B895: End If
  loc_F5B8A1: Me.FrmList.Visible = False
  loc_F5B8D1: Set var_9C = Me.Txt
  loc_F5B8D7: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5B8DF: var_A8.SetFocus
  loc_F5B8F3: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF85B8
  'Data Table: 5082E4
  loc_EF84F8: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_EF84FB:   Call DGUnit_UnknownEvent_9()
  loc_EF8500: End If
  loc_EF851C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF851F:   Call DGHelp_UnknownEvent_9()
  loc_EF8524: End If
  loc_EF8540: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF8543:   Call DGRest_UnknownEvent_9()
  loc_EF8548: End If
  loc_EF8564: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_EF8567:   Call DGItemCat_UnknownEvent_9()
  loc_EF856C: End If
  loc_EF8588: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_EF858B:   Call DGItemGroup_UnknownEvent_9()
  loc_EF8590: End If
  loc_EF85AC: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF85AF:   Call DGItem_UnknownEvent_9()
  loc_EF85B4: End If
  loc_EF85B4: Exit Sub
End Sub

Public Function global_52Get() '509958
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '509967
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4994
  'Data Table: 5082E4
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC490A: On Error Goto loc_EC494F
  loc_EC4913: Me.MoveFirst
  loc_EC492D: var_8C = "code='" & MyValue
  loc_EC493D: Me.Find var_8C & "'", 0, 1
  loc_EC4949: Call Proc_188_55_154842C(var_A0)
  loc_EC494E: Exit Sub
  loc_EC494F: ' Referenced from: EC490A
  loc_EC4957: Set var_A4 = Err()
  loc_EC495D: Call 0.Method_arg_2C (var_8C)
  loc_EC497E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4991: Exit Sub
  loc_EC4992: Exit Sub
End Sub

Public Sub Proc_188_53_E7C8F4(arg_C) 'E7C8F4
  'Data Table: 5082E4
  Dim var_98 As TextBox
  loc_E7C8A2: Set var_8C = Me.Txt
  loc_E7C8A8: Call 0.Method_Proc_188_53_E7C8F4C (var_8E, var_86)
  loc_E7C8B8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C8CE:   Set var_8C = Me.Txt
  loc_E7C8D4:   Call 0.Method_Proc_188_53_E7C8F40 (CInt(var_86), var_98)
  loc_E7C8DC:   var_98.Enabled = arg_C
  loc_E7C8EB: Next var_92 'Byte
  loc_E7C8F1: Exit Sub
End Sub

Public Sub Proc_188_54_FB6B5C
  'Data Table: 5082E4
  Dim var_94 As TextBox
  Dim var_90 As MSFlexGrid
  loc_FB69C6: Set var_90 = Me.Txt
  loc_FB69CC: Call 0.Method_Proc_188_54_FB6B5C0 (CInt(1), var_94)
  loc_FB69DC: var_8C = var_94.Text
  loc_FB69F4: Set var_90 = Me.Txt
  loc_FB69FA: Call 0.Method_Proc_188_54_FB6B5CC (var_9A, var_86)
  loc_FB6A0A: For var_9E =  To CByte((var_9A - 1)): CByte(0) = var_9E 'Byte
  loc_FB6A20:   Set var_90 = Me.Txt
  loc_FB6A26:   Call 0.Method_Proc_188_54_FB6B5C0 (CInt(var_86), var_94)
  loc_FB6A2E:   var_94.Text = vbNullString
  loc_FB6A3D: Next var_9E 'Byte
  loc_FB6A56: Me.FGrid.Rows = 1
  loc_FB6A84: Set var_94 = Me.FGrid
  loc_FB6AB1: Me.FGrid.FixedRows = 1
  loc_FB6AC7: Set var_90 = Me.Txt
  loc_FB6ACD: Call 0.Method_Proc_188_54_FB6B5C0 (CInt(4), var_94, "No")
  loc_FB6AD5: var_94.Text = FGrid.DispID_10000
  loc_FB6AEF: Set var_90 = Me.Txt
  loc_FB6AF5: Call 0.Method_Proc_188_54_FB6B5C0 (CInt(5), var_94, "No")
  loc_FB6AFD: var_94.Text = CVar(CStr(Proc_6_127_F25B10(Me.FGrid)))
  loc_FB6B17: Set var_90 = Me.Txt
  loc_FB6B1D: Call 0.Method_Proc_188_54_FB6B5C0 (CInt(1), var_94)
  loc_FB6B25: var_94.Text = var_8C
  loc_FB6B3F: Set var_90 = Me.Txt
  loc_FB6B45: Call 0.Method_Proc_188_54_FB6B5C0 (CInt(&HE), var_94)
  loc_FB6B4D: var_94.Text = "Yes"
  loc_FB6B59: Exit Sub
End Sub

Public Sub Proc_188_55_154842C
  'Data Table: 5082E4
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_C0 As String
  Dim var_C8 As Variant
  Dim var_BC As Variant
  Dim var_D8 As Variant
  Dim var_C4 As Fields15
  Dim var_E8 As Variant
  Dim var_10C As Variant
  Dim var_FC As Variant
  Dim var_154 As TextBox
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim unk_5082FA As Connection15
  Dim var_1E4 As Recordset15
  Dim var_150 As Fields15
  Dim var_1E0 As Variant
  Dim var_88 As Recordset15
  Dim var_13C As Variant
  Dim var_190 As Variant
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  loc_1547448: On Error Goto loc_1548426
  loc_1547451: Proc_183_45_E5CCA8(global_64)
  loc_154746D: If (Me.RecordCount <= 0) Then
  loc_1547470:   Call Proc_188_54_FB6B5C()
  loc_1547478: Else
  loc_15474AC:   global_56 = CStr(Me.Fields.Item("Type").Value)
  loc_15474F1:   global_132 = CStr(Me.Fields.Item("Name").Value)
  loc_154753E:   Set var_C4 = Me.Txt
  loc_1547544:   Call 0.Method_Proc_188_55_154842C0 (CInt(0), var_C8)
  loc_154754C:   var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_154759E:   Set var_C4 = Me.Txt
  loc_15475A4:   Call 0.Method_Proc_188_55_154842C0 (CInt(&HA), var_C8)
  loc_15475AC:   var_C8.Text = CStr(Me.Fields.Item("DispCode").Value)
  loc_15475FE:   Set var_C4 = Me.Txt
  loc_1547604:   Call 0.Method_Proc_188_55_154842C0 (CInt(0), var_C8)
  loc_154760C:   var_C8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_154765B:   Set var_C4 = Me.Txt
  loc_1547661:   Call 0.Method_Proc_188_55_154842C0 (CInt(1), var_C8)
  loc_1547669:   var_C8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")))
  loc_15476B6:   Set var_C4 = Me.Txt
  loc_15476BC:   Call 0.Method_Proc_188_55_154842C0 (CInt(2), var_C8)
  loc_15476C4:   var_C8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemGrpName")))
  loc_1547711:   Set var_C4 = Me.Txt
  loc_1547717:   Call 0.Method_Proc_188_55_154842C0 (CInt(2), var_C8)
  loc_154771F:   var_C8.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemGroup")))
  loc_154776C:   Set var_C4 = Me.Txt
  loc_1547772:   Call 0.Method_Proc_188_55_154842C0 (CInt(6), var_C8)
  loc_154777A:   var_C8.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCatCode")))
  loc_15477C7:   Set var_C4 = Me.Txt
  loc_15477CD:   Call 0.Method_Proc_188_55_154842C0 (CInt(6), var_C8)
  loc_15477D5:   var_C8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCategory")))
  loc_1547822:   Set var_C4 = Me.Txt
  loc_1547828:   Call 0.Method_Proc_188_55_154842C0 (CInt(4), var_C8)
  loc_1547830:   var_C8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Disc")))
  loc_154787D:   Set var_C4 = Me.Txt
  loc_1547883:   Call 0.Method_Proc_188_55_154842C0 (CInt(&HC), var_C8)
  loc_154788B:   var_C8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("SChrApp")))
  loc_15478E7:   var_C8 = Me.Fields.Item("RateIncTax")
  loc_154792F:   var_14C = IIf(((Proc_6_38_E69628(CVar(Me.Fields.Item("RateIncTax"))) = vbNullString) Or (Proc_6_38_E69628(CVar(var_C8)) = "N")), "No", "Yes")
  loc_1547946:   Set var_150 = Me.Txt
  loc_154794C:   Call 0.Method_Proc_188_55_154842C0 (CInt(&HD), var_154)
  loc_1547954:   var_154.Text = CStr(var_14C)
  loc_15479B9:   Set var_C4 = Me.Txt
  loc_15479BF:   Call 0.Method_Proc_188_55_154842C0 (CInt(5), var_C8)
  loc_15479C7:   var_C8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("REdit")))
  loc_1547A14:   Set var_C4 = Me.Txt
  loc_1547A1A:   Call 0.Method_Proc_188_55_154842C0 (CInt(8), var_C8)
  loc_1547A22:   var_C8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RestName")))
  loc_1547A6F:   Set var_C4 = Me.Txt
  loc_1547A75:   Call 0.Method_Proc_188_55_154842C0 (CInt(8), var_C8)
  loc_1547A7D:   var_C8.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")))
  loc_1547ACA:   Set var_C4 = Me.Txt
  loc_1547AD0:   Call 0.Method_Proc_188_55_154842C0 (CInt(3), var_C8)
  loc_1547AD8:   var_C8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("KitchenName")))
  loc_1547B25:   Set var_C4 = Me.Txt
  loc_1547B2B:   Call 0.Method_Proc_188_55_154842C0 (CInt(3), var_C8)
  loc_1547B33:   var_C8.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")))
  loc_1547B80:   Set var_C4 = Me.Txt
  loc_1547B86:   Call 0.Method_Proc_188_55_154842C0 (CInt(&H11), var_C8)
  loc_1547B8E:   var_C8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("NType")))
  loc_1547BDB:   Set var_C4 = Me.Txt
  loc_1547BE1:   Call 0.Method_Proc_188_55_154842C0 (CInt(&HE), var_C8)
  loc_1547BE9:   var_C8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ActiveYN")))
  loc_1547C1F:   var_BC = CVar(Me.Fields.Item("DiscApp")) 'Address
  loc_1547C2E:   global_124 = Proc_6_38_E69628(var_BC)
  loc_1547C58:   Proc_6_7_F26918(var_BC, MemVar_1F950EC, "Select Rate,Appdate From ItemRate Where AppDate<=")
  loc_1547C92:   var_13C = Me.Fields.Item("Code").Value
  loc_1547CBC:   var_C4 = Me.Fields
  loc_1547CDD:   var_1C0 = var_1E0 & var_BC & " And ItemCode='" & var_13C & "' And RestCode='" & var_C4.Item("RestCode").Value & "' Order By AppDate Desc " 
  loc_1547CEB:   unk_5082FA.Execute CStr(var_1C0), -1, var_150
  loc_1547CF6:   Set var_88 = var_150
  loc_1547D76:   unk_5082FA.Execute CStr("Select U_Name,U_AE,U_EntDt From itemmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_13C, -1
  loc_1547D81:   Set var_8C = var_C4
  loc_1547DD5:   var_C4 = var_1E4.Fields
  loc_1547E3E:   var_190 = IIf((Proc_6_38_E69628(CVar(var_1E4.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_C4.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_1547E83:   Me.LblUser.Caption = CStr(var_C4 & CVar(Proc_6_38_E69628(CVar(var_1E4.Fields.Item("U_Name")), var_190)))
  loc_1547EFD:   var_C8 = var_1E4.Fields.Item("U_AE")
  loc_1547F5E:   var_190 = IIf((Proc_6_38_E69628(CVar(var_1E4.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_C8)) = "E"), "Last Update :   ", "entdt :   "))
  loc_1547F75:   var_150 = var_1E4.Fields
  loc_1547F85:   var_1A0 = CVar(var_150.Item("U_EntDt")) 'Address
  loc_1547FA3:   Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E69628(var_1A0)))
  loc_1547FEF:   If (var_88.RecordCount > 0) Then
  loc_1548044:     Set var_C4 = Me.Txt
  loc_154804A:     Call 0.Method_Proc_188_55_154842C0 (CInt(7), var_C8, CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_1548052:     var_C8.Text = 1
  loc_1548086:     var_AC = var_88.Fields.Item("AppDate")
  loc_15480A5:     Set var_C4 = Me.Txt
  loc_15480AB:     Call 0.Method_Proc_188_55_154842C0 (CInt(9), var_C8)
  loc_15480B3:     var_C8.Text = CStr(var_AC.Value)
  loc_15480CC:   Else
  loc_15480DA:     Set var_98 = Me.Txt
  loc_15480E0:     Call 0.Method_Proc_188_55_154842C0 (CInt(7), var_AC)
  loc_15480E8:     var_AC.Text = vbNullString
  loc_1548102:     Set var_98 = Me.Txt
  loc_1548108:     Call 0.Method_Proc_188_55_154842C0 (CInt(9), var_AC)
  loc_1548110:     var_AC.Text = vbNullString
  loc_154811C:   End If
  loc_1548130:   var_C0 = "Select ComboCode, ItemCode , IM.Name As ItemName , Qty  from ComboPackDetail Inner Join ItemMast IM On  ComboPackDetail.ItemCode = IM.Code And ComboPackDetail.RestCode = IM.RestCode where (ComboPackDetail.LOGSITE_CODE='" & MemVar_1F95078
  loc_1548167:   var_11C = CVar(var_C0 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.restCode='") & Me.Fields.Item("RestCode").Value 
  loc_15481B8:   unk_5082FA.Execute CStr(var_11C & "' AND ComboPackDetail.combocode='" & Me.Fields.Item("Code").Value & "'"), var_1A0, -1
  loc_15481C3:   Set var_8C = var_150
  loc_1548200:   Me.FGrid.FixedRows = 1
  loc_154821C:   If (var_8C.RecordCount > 0) Then
  loc_1548221:     var_8E = 1
  loc_1548238:     var_A8 = CVar((var_8C.RecordCount + 1)) 'Long
  loc_1548247:     Me.FGrid.Rows = 1
  loc_154824F:     ' Referenced from:   154840D
  loc_154825E:     If Not(var_8C.EOF) Then
  loc_154826C:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_1548274:       var_FC = CVar(CLng(0)) 'Long
  loc_154827E:       var_BC = CVar(CStr(var_8E)) 'String
  loc_1548285:       LateIdCallSt
  loc_1548294:       var_D8 = CVar(CLng(var_8E)) 'Long
  loc_154829C:       var_10C = CVar(CLng(2)) 'Long
  loc_15482CC:       var_E8 = CVar(CStr(var_8C.Fields.Item("ItemName").Value)) 'String
  loc_15482D3:       LateIdCallSt
  loc_1548320:       Proc_6_51_EF4580(var_E8, CVar(var_8C.Fields.Item("qty")), CVar(CLng(3)), CVar(CLng(var_8E)), Me.FGrid, var_E8, CVar(CLng(3)))
  loc_1548329:       var_11C = CVar(CStr(var_E8)) 'String
  loc_1548330:       LateIdCallSt
  loc_1548348:       var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1548350:       var_10C = CVar(CLng(1)) 'Long
  loc_1548380:       var_E8 = CVar(CStr(var_8C.Fields.Item("ItemCode").Value)) 'String
  loc_1548387:       LateIdCallSt
  loc_15483A1:       var_D8 = CVar(CLng(var_8E)) 'Long
  loc_15483A9:       var_10C = CVar(CLng(4)) 'Long
  loc_15483D9:       var_E8 = CVar(CStr(var_8C.Fields.Item("ComboCode").Value)) 'String
  loc_15483E0:       LateIdCallSt
  loc_15483F8:       Set var_1F0 = Nothing 
  loc_1548402:       var_8E = (var_8E + 1)
  loc_1548408:       var_8C.MoveNext
  loc_154840D:       GoTo loc_154824F
  loc_1548410:     End If
  loc_1548410:   End If
  loc_1548410: End If
  loc_1548410: Call Proc_188_57_1009A24(var_8E, var_1F0, var_E8, var_10C, var_D8, var_1F0, var_E8)
  loc_154841A: Set var_8C = Nothing
  loc_1548422: Set var_88 = Nothing
  loc_1548425: Exit Sub
  loc_1548426: ' Referenced from: 1547448
  loc_1548426: Proc_6_60_E63754(var_10C, var_D8, var_1F0, var_11C)
  loc_154842B: Exit Sub
End Sub

Public Sub Proc_188_56_12F25EC
  'Data Table: 5082E4
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim unk_5082FA As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_AC As String
  Dim var_A0 As Variant
  loc_12F1F4B: If (Me.RecordCount = 0) Then
  loc_12F1F4E:   Proc_188_56_12F25EC = 
  loc_12F1F54: End If
  loc_12F1F58: Set var_90 = Me.TopCtrl1
  loc_12F1F5E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12F1F77: If (CStr() = "Add") Then
  loc_12F1F80:   var_F4 = 0
  loc_12F1FB5:   Set var_90 = Me.Txt
  loc_12F1FBB:   Call 0.Method_Proc_188_56_12F25EC0 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_12F1FE4:   Set var_B8 = Me.Txt
  loc_12F1FEA:   Call 0.Method_Proc_188_56_12F25EC0 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_12F1FF2:   var_F4 = var_BC.Text
  loc_12F200B:   unk_5082FA.Execute var_F8 & var_C0 & "' And ItemType<>'Store'", var_108, 
  loc_12F2013:    = var_A8.Tag.Fields
  loc_12F201B:    = var_E4.Item()
  loc_12F2023:    = var_F8.Value
  loc_12F205E:   If (var_108 > 0) Then
  loc_12F206C:     var_108 = "Information"
  loc_12F207C:     var_A0 = "Duplicate Name"
  loc_12F2082:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12F209D:     Set var_90 = Me.Txt
  loc_12F20A3:     Call 0.Method_Proc_188_56_12F25EC0 (CInt(0))
  loc_12F20AB:     var_A8.SetFocus
  loc_12F20BC:     Proc_188_56_12F25EC = &HFF
  loc_12F20C2:   End If
  loc_12F20D0:   Set var_90 = Me.Txt
  loc_12F20D6:   Call 0.Method_Proc_188_56_12F25EC0 (CInt(&HA), var_A8)
  loc_12F20F5:   If (var_A8.Text <> vbNullString) Then
  loc_12F20FE:     var_F4 = 0
  loc_12F2133:     Set var_90 = Me.Txt
  loc_12F2139:     Call 0.Method_Proc_188_56_12F25EC0 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_12F2162:     Set var_B8 = Me.Txt
  loc_12F2168:     Call 0.Method_Proc_188_56_12F25EC0 (CInt(&HA), var_BC, var_C0, var_E4 & var_AC & "' and DispCode=")
  loc_12F2170:     var_F4 = var_BC.Text
  loc_12F2189:     unk_5082FA.Execute var_F8 & var_C0 & vbNullString, var_108, var_A8
  loc_12F2191:      = var_A8.Tag.Fields
  loc_12F2199:      = var_E4.Item()
  loc_12F21A1:      = var_F8.Value
  loc_12F21DC:     If (var_108 > 0) Then
  loc_12F21EA:       var_108 = "Information"
  loc_12F21FA:       var_A0 = "Duplicate Disp Code"
  loc_12F2200:       MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12F221B:       Set var_90 = Me.Txt
  loc_12F2221:       Call 0.Method_Proc_188_56_12F25EC0 (CInt(&HA))
  loc_12F2229:       var_A8.SetFocus
  loc_12F223A:       Proc_188_56_12F25EC = &HFF
  loc_12F2240:     End If
  loc_12F2240:   End If
  loc_12F2243: Else
  loc_12F2249:   var_F4 = 0
  loc_12F227E:   Set var_90 = Me.Txt
  loc_12F2284:   Call 0.Method_Proc_188_56_12F25EC0 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_12F22AD:   Set var_B8 = Me.Txt
  loc_12F22B3:   Call 0.Method_Proc_188_56_12F25EC0 (CInt(8), var_BC, var_C0, var_E4 & var_AC & "' And restcode='")
  loc_12F22BB:   var_F4 = var_BC.Tag
  loc_12F22E5:   unk_5082FA.Execute var_F8 & var_C0 & "' and Name<>'" & global_132 & "' And ItemType<>'Store'", var_108, var_A8
  loc_12F22ED:    = var_A8.Text.Fields
  loc_12F22F5:    = var_E4.Item()
  loc_12F22FD:    = var_F8.Value
  loc_12F233C:   If (var_108 > 0) Then
  loc_12F234A:     var_108 = "Information"
  loc_12F235A:     var_A0 = "Duplicate Name"
  loc_12F2360:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12F237B:     Set var_90 = Me.Txt
  loc_12F2381:     Call 0.Method_Proc_188_56_12F25EC0 (CInt(0))
  loc_12F2389:     var_A8.SetFocus
  loc_12F239A:     Proc_188_56_12F25EC = &HFF
  loc_12F23A0:   End If
  loc_12F23AE:   Set var_90 = Me.Txt
  loc_12F23B4:   Call 0.Method_Proc_188_56_12F25EC0 (CInt(&HA), var_A8)
  loc_12F23D3:   If (var_A8.Text <> vbNullString) Then
  loc_12F23DC:     var_F4 = 0
  loc_12F2411:     Set var_90 = Me.Txt
  loc_12F2417:     Call 0.Method_Proc_188_56_12F25EC0 (CInt(&HA), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and DispCode=", var_A0, -1)
  loc_12F2440:     Set var_B8 = Me.Txt
  loc_12F2446:     Call 0.Method_Proc_188_56_12F25EC0 (CInt(8), var_BC, var_C0, var_E4 & var_AC & " And restcode='")
  loc_12F244E:     var_F4 = var_BC.Tag
  loc_12F247D:     unk_5082FA.Execute var_F8 & var_C0 & "' and DispCode<> " & CStr(global_60) & vbNullString, var_108, var_A8
  loc_12F2485:      = var_A8.Text.Fields
  loc_12F248D:      = var_E4.Item()
  loc_12F2495:      = var_F8.Value
  loc_12F24D6:     If (var_108 > 0) Then
  loc_12F24FA:       MsgBox("Duplicate Disp Code", &H40, "Information", var_128, var_148)
  loc_12F2515:       Set var_90 = Me.Txt
  loc_12F251B:       Call 0.Method_Proc_188_56_12F25EC0 (CInt(&HA))
  loc_12F2523:       var_A8.SetFocus
  loc_12F2534:       Proc_188_56_12F25EC = &HFF
  loc_12F253A:     End If
  loc_12F253A:   End If
  loc_12F253A: End If
  loc_12F2548: Set var_90 = Me.Txt
  loc_12F254E: Call 0.Method_Proc_188_56_12F25EC0 (CInt(&HA), var_A8)
  loc_12F256D: If (var_A8.Text = "9999") Then
  loc_12F259E:   MsgBox(CVar("This Code is reserved for special items" & vbCrLf & vbCrLf & "Please choose another code"), &H40, "HMS", var_128, var_148)
  loc_12F25C0:   Set var_90 = Me.Txt
  loc_12F25C6:   Call 0.Method_Proc_188_56_12F25EC0 (CInt(&HA), var_A8)
  loc_12F25CE:   var_A8.SetFocus
  loc_12F25DF:   Proc_188_56_12F25EC = &HFF
  loc_12F25E5: End If
  loc_12F25E5: Proc_188_56_12F25EC = var_A8
End Sub

Public Sub Proc_188_57_1009A24
  'Data Table: 5082E4
  loc_1009824: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_1009836:   Me.DGHelp.Visible = False
  loc_100983E: End If
  loc_100985A: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_100986C:   Me.DGRest.Visible = False
  loc_1009874: End If
  loc_1009890: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_10098A2:   Me.DGItemGroup.Visible = False
  loc_10098AA: End If
  loc_10098C6: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_10098D8:   Me.DGItemCat.Visible = False
  loc_10098E0: End If
  loc_10098FC: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_100990E:   Me.DGUnit.Visible = False
  loc_1009916: End If
  loc_1009932: If (CBool(Me.DGAppDate.Visible) = &HFF) Then
  loc_1009944:   Me.DGAppDate.Visible = False
  loc_100994C: End If
  loc_1009968: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_100997A:   Me.DGItem.Visible = False
  loc_1009982: End If
  loc_100999E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_10099B0:   Me.FGPoint.Visible = False
  loc_10099B8: End If
  loc_10099D4: If (CBool(Me.DGDispCode.Visible) = &HFF) Then
  loc_10099E6:   Me.DGDispCode.Visible = False
  loc_10099EE: End If
  loc_1009A09: If (Me.FrmList.Visible = &HFF) Then
  loc_1009A18:   Me.FrmList.Visible = False
  loc_1009A20: End If
  loc_1009A20: Exit Sub
End Sub

Public Sub Proc_188_58_121CBE8
  'Data Table: 5082E4
  Dim var_88 As MSFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_104 As TextBox
  Dim var_10C As DataGrid
  Dim var_110 As TextBox
  loc_121C6FC: On Error Goto loc_121CBE0
  loc_121C703: Set var_88 = Me.FGrid
  loc_121C71A: global_128 = CStr(CLng(var_88.BackColor))
  loc_121C730: var_88.Cols = 5
  loc_121C738: var_AC = CVar(CLng(0)) 'Long
  loc_121C73D: var_CC = &HFA
  loc_121C749: LateIdCallSt
  loc_121C751: var_AC = 0
  loc_121C75D: var_CC = CVar(CLng(0)) 'Long
  loc_121C762: var_EC = "SNo"
  loc_121C76B: LateIdCallSt
  loc_121C773: var_AC = 1
  loc_121C77F: var_CC = CVar(CLng(0)) 'Long
  loc_121C784: var_EC = "1"
  loc_121C78D: LateIdCallSt
  loc_121C798: var_AC = CVar(CLng(0)) 'Long
  loc_121C79D: var_CC = &H258
  loc_121C7A9: LateIdCallSt
  loc_121C7B1: var_AC = 0
  loc_121C7BD: var_CC = CVar(CLng(1)) 'Long
  loc_121C7C2: var_EC = "Item Code"
  loc_121C7CB: LateIdCallSt
  loc_121C7D6: var_AC = CVar(CLng(1)) 'Long
  loc_121C7E1: var_CC = CVar(CInt(1)) 'Integer
  loc_121C7E8: LateIdCallSt
  loc_121C7F3: var_AC = CVar(CLng(1)) 'Long
  loc_121C7F8: var_CC = 0
  loc_121C804: LateIdCallSt
  loc_121C80C: var_AC = 0
  loc_121C818: var_CC = CVar(CLng(2)) 'Long
  loc_121C81D: var_EC = "Item Name"
  loc_121C826: LateIdCallSt
  loc_121C831: var_AC = CVar(CLng(2)) 'Long
  loc_121C83C: var_CC = CVar(CInt(1)) 'Integer
  loc_121C843: LateIdCallSt
  loc_121C84E: var_AC = CVar(CLng(2)) 'Long
  loc_121C853: var_CC = &HDAC
  loc_121C85F: LateIdCallSt
  loc_121C867: var_AC = 0
  loc_121C873: var_CC = CVar(CLng(3)) 'Long
  loc_121C878: var_EC = "Qty"
  loc_121C881: LateIdCallSt
  loc_121C88C: var_AC = CVar(CLng(3)) 'Long
  loc_121C897: var_CC = CVar(CInt(7)) 'Integer
  loc_121C89E: LateIdCallSt
  loc_121C8A9: var_AC = CVar(CLng(3)) 'Long
  loc_121C8AE: var_CC = &H4B0
  loc_121C8BA: LateIdCallSt
  loc_121C8C2: var_AC = 0
  loc_121C8CE: var_CC = CVar(CLng(4)) 'Long
  loc_121C8D3: var_EC = "ComboCode"
  loc_121C8DC: LateIdCallSt
  loc_121C8E7: var_AC = CVar(CLng(4)) 'Long
  loc_121C8F2: var_CC = CVar(CInt(7)) 'Integer
  loc_121C8F9: LateIdCallSt
  loc_121C915: LateIdCallSt
  loc_121C91F: Set var_88 = Nothing 
  loc_121C931: Set var_100 = Me.Txt
  loc_121C937: Call 0.Method_Proc_188_58_121CBE80 (CInt(0), var_104, var_108, var_88, 0, CVar(CLng(4)), var_88)
  loc_121C93F: var_CC = var_104.Left
  loc_121C947: var_AC = CVar(var_108) 'Single
  loc_121C956: Me.DGHelp.Left = var_AC
  loc_121C972: Set var_10C = Me.Txt
  loc_121C978: Call 0.Method_Proc_188_58_121CBE80 (CInt(0), var_110, var_114, var_AC, var_88)
  loc_121C980: var_EC = var_110.Height
  loc_121C993: Set var_100 = Me.Txt
  loc_121C999: Call 0.Method_Proc_188_58_121CBE80 (CInt(0), var_104, var_108)
  loc_121C9A1: var_CC = var_104.Top
  loc_121C9B1: var_AC = CVar(((var_108 + var_114) + CDbl(&H19))) 'Single
  loc_121C9C0: Me.DGHelp.Top = var_AC
  loc_121C9E0: Set var_100 = Me.Txt
  loc_121C9E6: Call 0.Method_Proc_188_58_121CBE80 (CInt(6), var_104, var_108)
  loc_121C9EE: var_AC = var_104.Left
  loc_121CA05: Me.DGItemCat.Left = CVar(var_108)
  loc_121CA21: Set var_10C = Me.Txt
  loc_121CA27: Call 0.Method_Proc_188_58_121CBE80 (CInt(6), var_110)
  loc_121CA42: Set var_100 = Me.Txt
  loc_121CA48: Call 0.Method_Proc_188_58_121CBE80 (CInt(6), var_104)
  loc_121CA60: var_AC = CVar(((var_104.Top + var_110.Height) + CDbl(&H1E))) 'Single
  loc_121CA6F: Me.DGItemCat.Top = CVar(var_104.Top)
  loc_121CA8F: Set var_100 = Me.Txt
  loc_121CA95: Call 0.Method_Proc_188_58_121CBE80 (CInt(2), var_104)
  loc_121CAB4: Me.DGItemGroup.Left = CVar(var_104.Left)
  loc_121CAD0: Set var_10C = Me.Txt
  loc_121CAD6: Call 0.Method_Proc_188_58_121CBE80 (CInt(2), var_110)
  loc_121CAF1: Set var_100 = Me.Txt
  loc_121CAF7: Call 0.Method_Proc_188_58_121CBE80 (CInt(2), var_104)
  loc_121CB0F: var_AC = CVar(((var_104.Top + var_110.Height) + CDbl(&H19))) 'Single
  loc_121CB1E: Me.DGItemGroup.Top = CVar(var_104.Left)
  loc_121CB3E: Set var_100 = Me.Txt
  loc_121CB44: Call 0.Method_Proc_188_58_121CBE80 (CInt(1), var_104)
  loc_121CB63: Me.DGUnit.Left = CVar(var_104.Left)
  loc_121CB7F: Set var_10C = Me.Txt
  loc_121CB85: Call 0.Method_Proc_188_58_121CBE80 (CInt(1), var_110)
  loc_121CBA0: Set var_100 = Me.Txt
  loc_121CBA6: Call 0.Method_Proc_188_58_121CBE80 (CInt(1), var_104)
  loc_121CBBE: var_AC = CVar(((var_104.Top + var_110.Height) + CDbl(&H19))) 'Single
  loc_121CBCD: Me.DGUnit.Top = CVar(var_104.Left)
  loc_121CBDF: Exit Sub
  loc_121CBE0: ' Referenced from: 121C6FC
  loc_121CBE0: Proc_6_60_E63754(var_88)
  loc_121CBE5: Exit Sub
End Sub

Public Sub Proc_188_59_E827E0
  'Data Table: 5082E4
  loc_E82780: Call Proc_188_57_1009A24()
  loc_E827BC: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E827BF:   Call TopCtrl1_UnknownEvent_16()
  loc_E827C7: Else
  loc_E827CD:   Call 0.Method_arg_1E8 (var_108)
  loc_E827D5:   Call var_108.SetFocus
  loc_E827DE: End If
  loc_E827DE: Exit Sub
End Sub

Public Sub Proc_188_60_E44410
  'Data Table: 5082E4
  loc_E443EC: Set var_88 = Me.TopCtrl1
  loc_E443F2: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4440B: If (CStr() = "Browse") Then
  loc_E4440E:   Exit Sub
  loc_E4440F: End If
  loc_E4440F: Exit Sub
End Sub

Public Sub Proc_188_61_1227A60(arg_C) '1227A60
  'Data Table: 5082E4
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_11C As MSFlexGrid
  Dim var_12C As Variant
  Dim var_B8 As String
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_130 As Variant
  Dim var_174 As String
  Dim var_188 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  loc_1227584: If (arg_C = 0) Then
  loc_122759A:   var_A8 = CLng(Me.FGrid.Col)
  loc_12275AA:   If (var_A8 = CLng(2)) Then
  loc_12275FB:     Set var_94 = Me.TxtGrid
  loc_1227601:     Call 0.Method_Proc_188_61_1227A600 (arg_C, var_B4, var_B8)
  loc_1227609:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_1227621:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_1227637:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122763F:       var_E8 = CVar(CLng(2)) 'Long
  loc_1227644:       var_108 = vbNullString
  loc_122764E:       Set var_B4 = Me.FGrid
  loc_1227654:       LateIdCallSt
  loc_1227679:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1227681:       var_E8 = CVar(CLng(1)) 'Long
  loc_1227686:       var_108 = vbNullString
  loc_1227690:       Set var_B4 = Me.FGrid
  loc_1227696:       LateIdCallSt
  loc_12276AB:     Else
  loc_12276D8:       Set var_94 = Me.TxtGrid
  loc_12276DE:       Call 0.Method_Proc_188_61_1227A600 (arg_C, var_B4, var_B8, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_B4, var_108)
  loc_12276E6:       var_E8 = var_B4.Text
  loc_12276EE:       var_12C = CVar(var_B8) 'String
  loc_12276F6:       Set var_130 = Me.FGrid
  loc_12276FC:       LateIdCallSt
  loc_122772F:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1227737:       var_E8 = CVar(CLng(1)) 'Long
  loc_1227751:       var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_122776F:       var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1227777:       var_150 = CVar(CLng(1)) 'Long
  loc_1227791:       var_174 = CStr(Me.FGrid.TextMatrix))
  loc_12277FC:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1227812:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122781A:         var_F8 = CVar(CLng(2)) 'Long
  loc_122784D:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1227855:         Set var_130 = Me.FGrid
  loc_122785B:         LateIdCallSt
  loc_122788A:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1227892:         var_F8 = CVar(CLng(1)) 'Long
  loc_12278B4:         var_B4 = Me.Fields.Item("Code")
  loc_12278C5:         var_140 = CVar(CStr(var_B4.Value)) 'String
  loc_12278CD:         Set var_130 = Me.FGrid
  loc_12278D3:         LateIdCallSt
  loc_12278EF:       End If
  loc_12278EF:     End If
  loc_12278F2:   Else
  loc_12278F9:     If (var_A8 = CLng(3)) Then
  loc_1227906:       Set var_94 = Me.TxtGrid
  loc_122790C:       Call 0.Method_Proc_188_61_1227A600 (arg_C, var_B4, var_130, var_140, var_F8, var_D8, var_130)
  loc_122792B:       Set var_11C = Me.TxtGrid
  loc_1227931:       Call 0.Method_Proc_188_61_1227A600 (arg_C, var_130, var_B8, Not(IsNumeric(CVar(var_B4))), var_140, var_F8)
  loc_1227939:       var_D8 = var_130.Text
  loc_122795B:       If ((var_150 = var_174) Or (CDbl(Val(var_B8)) <= CDbl(0))) Then
  loc_1227962:         var_B8 = CStr(0)
  loc_122796F:         Set var_94 = Me.TxtGrid
  loc_1227975:         Call 0.Method_Proc_188_61_1227A600 (arg_C, var_B4, var_B8)
  loc_122797D:         var_B4.Text = var_108
  loc_1227991:         Proc_188_61_1227A60 = 0
  loc_1227997:       End If
  loc_12279A4:       Set var_94 = Me.TxtGrid
  loc_12279AA:       Call 0.Method_Proc_188_61_1227A600 (arg_C, var_B4, var_B8)
  loc_12279B2:       global_96 = var_B4.Text
  loc_12279CA:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12279D2:       var_F8 = CVar(CLng(3)) 'Long
  loc_12279FE:       var_188 = CVar(CStr(Format(CVar(var_B8), "0.000"))) 'String
  loc_1227A06:       Set var_130 = Me.FGrid
  loc_1227A0C:       LateIdCallSt
  loc_1227A2C:     End If
  loc_1227A2C:   End If
  loc_1227A2C: End If
  loc_1227A3F: Set var_94 = Me.TxtGrid
  loc_1227A45: Call 0.Method_Proc_188_61_1227A600 (0, var_B4, 0, &HFF, var_130, var_188)
  loc_1227A4D: var_B4.MaxLength = 1
  loc_1227A59: Proc_188_61_1227A60 = 1
End Sub
