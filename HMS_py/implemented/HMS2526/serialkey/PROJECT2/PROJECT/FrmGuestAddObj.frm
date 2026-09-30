VERSION 5.00
Begin VB.Form FrmGuestAddObj
  Caption = "Guest Address & Observation"
  BackColor = &HC0C0FF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11595
  ClientHeight = 7545
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 1830
    Width = 1350
    Height = 255
    TabIndex = 14
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 7890
    Top = 2100
    Width = 1350
    Height = 255
    TabIndex = 15
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 7890
    Top = 2640
    Width = 1350
    Height = 255
    TabIndex = 17
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Index = 18
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 2910
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 10
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Index = 16
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 2370
    Width = 1350
    Height = 255
    TabIndex = 16
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 7890
    Top = 1560
    Width = 1350
    Height = 255
    TabIndex = 13
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1845
    Top = 2040
    Width = 4185
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1845
    Top = 1230
    Width = 4185
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 900
    Top = 750
    Width = 1425
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 4050
    Top = 750
    Width = 1500
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 6840
    Top = 750
    Width = 2310
    Height = 255
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 21
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1845
    Top = 3285
    Width = 4185
    Height = 255
    TabIndex = 11
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1845
    Top = 2580
    Width = 4185
    Height = 255
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1845
    Top = 2310
    Width = 4185
    Height = 255
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 7890
    Top = 1290
    Width = 1350
    Height = 255
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 5
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 4485
    Top = 2850
    Width = 1530
    Height = 255
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1845
    Top = 2850
    Width = 1380
    Height = 255
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1845
    Top = 1770
    Width = 4185
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1845
    Top = 1500
    Width = 4185
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGWaiter
    Left = 6495
    Top = 4170
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin Frame FrmList
    Left = 4065
    Top = 4845
    Width = 2055
    Height = 1725
    Visible = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 60
      Top = 75
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 23
    End
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11595
    Height = 375
    TabIndex = 0
  End
  Begin Shape Shape4
    BorderColor = &H400040&
    Left = 195
    Top = 3225
    Width = 5955
    Height = 405
    Shape = 4
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Label LblName
    Caption = "Quality Of Food"
    Index = 14
    ForeColor = &H0&
    Left = 6300
    Top = 1837
    Width = 1380
    Height = 240
    TabIndex = 42
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Service Of Food"
    Index = 15
    ForeColor = &H0&
    Left = 6300
    Top = 2107
    Width = 1455
    Height = 240
    TabIndex = 41
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Entertainment"
    Index = 17
    ForeColor = &H0&
    Left = 6300
    Top = 2647
    Width = 1215
    Height = 240
    TabIndex = 40
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "User"
    Index = 18
    ForeColor = &H0&
    Left = 6300
    Top = 2917
    Width = 435
    Height = 240
    TabIndex = 39
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Service Of Drinks"
    Index = 16
    ForeColor = &H0&
    Left = 6300
    Top = 2377
    Width = 1545
    Height = 240
    TabIndex = 38
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Reception"
    Index = 13
    ForeColor = &H0&
    Left = 6300
    Top = 1567
    Width = 930
    Height = 240
    TabIndex = 37
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Shape Shape2
    BorderColor = &H400040&
    Left = 195
    Top = 1155
    Width = 5955
    Height = 2040
    Shape = 4
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Shape Shape3
    BorderColor = &H400040&
    Left = 6210
    Top = 1155
    Width = 3210
    Height = 2130
    Shape = 4
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Shape Shape1
    BorderColor = &H400040&
    Left = 195
    Top = 645
    Width = 9195
    Height = 450
    Shape = 4
    BorderWidth = 2
  End
  Begin Label LblName
    Caption = "Address1"
    Index = 6
    ForeColor = &H0&
    Left = 405
    Top = 2047
    Width = 870
    Height = 240
    TabIndex = 36
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Waiter"
    Index = 12
    ForeColor = &H0&
    Left = 315
    Top = 3292
    Width = 585
    Height = 240
    TabIndex = 35
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Date"
    Index = 2
    ForeColor = &H0&
    Left = 3465
    Top = 757
    Width = 435
    Height = 240
    TabIndex = 34
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 2490
    Top = 772
    Width = 645
    Height = 210
    TabIndex = 33
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Sr.No"
    Index = 1
    ForeColor = &H0&
    Left = 285
    Top = 757
    Width = 510
    Height = 240
    TabIndex = 32
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 6075
    Top = 765
    Width = 585
    Height = 225
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
  Begin Label LblName
    Caption = "Phone"
    Index = 8
    ForeColor = &H0&
    Left = 405
    Top = 2587
    Width = 585
    Height = 240
    TabIndex = 30
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Address2"
    Index = 7
    ForeColor = &H0&
    Left = 405
    Top = 2317
    Width = 870
    Height = 240
    TabIndex = 29
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Table No"
    Index = 11
    ForeColor = &H0&
    Left = 6300
    Top = 1297
    Width = 855
    Height = 240
    TabIndex = 28
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Date Of Anv."
    Index = 10
    ForeColor = &H0&
    Left = 3285
    Top = 2857
    Width = 1110
    Height = 240
    TabIndex = 27
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Date Of Birth"
    Index = 9
    ForeColor = &H0&
    Left = 405
    Top = 2857
    Width = 1110
    Height = 240
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Designation"
    Index = 5
    ForeColor = &H0&
    Left = 405
    Top = 1777
    Width = 1080
    Height = 240
    TabIndex = 25
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Company"
    Index = 4
    ForeColor = &H0&
    Left = 405
    Top = 1507
    Width = 900
    Height = 240
    TabIndex = 24
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Name"
    Index = 3
    ForeColor = &H0&
    Left = 405
    Top = 1237
    Width = 555
    Height = 240
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmGuestAddObj"

Private MasterFormExit As Integer

Private Sub ListView_UnknownEvent_13 'F545A4
  'Data Table: 44BFA4
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F544C6: If (Me.ListView.ListItems.Count > 0) Then
  loc_F544CD:   Set var_A8 = Me.ListView
  loc_F54517:   Set var_C0 = Me.Txt
  loc_F5451D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F54525:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F54545: End If
  loc_F54551: Me.FrmList.Visible = False
  loc_F54581: Set var_9C = Me.Txt
  loc_F54587: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5458F: var_A8.SetFocus
  loc_F545A3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'EDFA54
  'Data Table: 44BFA4
  Dim var_94 As TextBox
  loc_EDF998: On Error Goto loc_EDFA4C
  loc_EDF9BE: Call Proc_27_31_EF1C64(Proc_5_1_100EC1C("ADD", Me))
  loc_EDF9C9: Call Proc_27_29_EB83A4(global_64)
  loc_EDF9E1: Set var_8C = Me.Txt
  loc_EDF9E7: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_94)
  loc_EDF9EF: var_94.Text = CStr(MemVar_1F950EC)
  loc_EDFA09: Set var_8C = Me.Txt
  loc_EDFA0F: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2))
  loc_EDFA17: var_94.SetFocus
  loc_EDFA31: Set var_8C = Me.Txt
  loc_EDFA37: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(&H12), var_94)
  loc_EDFA3F: var_94.Text = MemVar_1F950C8
  loc_EDFA4B: Exit Sub
  loc_EDFA4C: ' Referenced from: EDF998
  loc_EDFA4C: Proc_6_60_E63754(var_94)
  loc_EDFA51: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F33AE4
  'Data Table: 44BFA4
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F339D4: On Error Goto loc_F33AA0
  loc_F339EE: If (Me.RecordCount > 0) Then
  loc_F33A06:   var_8C = "EDIT"
  loc_F33A14:   Call Proc_27_31_EF1C64(Proc_5_1_100EC1C(var_8C, Me))
  loc_F33A2C:   Set var_90 = Me.Txt
  loc_F33A32:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_98)
  loc_F33A3A:   var_98.Enabled = False
  loc_F33A51:   Set var_90 = Me.Txt
  loc_F33A57:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(2), var_98)
  loc_F33A5F:   var_98.SetFocus
  loc_F33A6E: Else
  loc_F33A8F:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F33A9F: End If
  loc_F33A9F: Exit Sub
  loc_F33AA0: ' Referenced from: F339D4
  loc_F33AA8: Set var_90 = Err()
  loc_F33AAE: Call 0.Method_arg_2C (var_8C)
  loc_F33ACF: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F33AE2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '10BC9E4
  'Data Table: 44BFA4
  Dim var_96 As Integer
  Dim unk_44BFB4 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_10BC738: On Error Goto loc_10BC98A
  loc_10BC772: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10BC783:   unk_44BFB4.BeginTrans var_11C
  loc_10BC799:   var_94 = Me.Bookmark 'Variant
  loc_10BC7BB:   Set var_120 = Me.Txt
  loc_10BC7C1:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_128, "Delete From Member Where DocID='")
  loc_10BC7C9:   var_B8 = var_124.Text
  loc_10BC7D2:   var_12C = -1 & var_128
  loc_10BC7E2:   unk_44BFB4.Execute var_12C & "'", var_134, &HFF
  loc_10BC80A:   Set var_120 = Me.Txt
  loc_10BC810:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124)
  loc_10BC822:   var_168 = 0
  loc_10BC835:   var_160 = 0
  loc_10BC840:   var_15C = 0
  loc_10BC853:   var_154 = 0
  loc_10BC85E:   var_150 = 0
  loc_10BC871:   var_148 = 0
  loc_10BC8B0:   var_128 = "Member"
  loc_10BC8B9:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_10BC8E4:   unk_44BFB4.CommitTrans
  loc_10BC8EB:   var_96 = 0
  loc_10BC8F9:   Me.Requery -1
  loc_10BC909:   Me.Requery -1
  loc_10BC929:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10BC936:     Me.Bookmark = var_94
  loc_10BC93E:   Else
  loc_10BC952:     If (Me.EOF = 0) Then
  loc_10BC95B:       Me.MoveLast
  loc_10BC960:     End If
  loc_10BC960:   End If
  loc_10BC960:   Call Proc_27_30_149DFD4(var_96, var_148, 0, var_150, var_154)
  loc_10BC981:   Proc_5_0_1107AD0(&HFF, Me, global_64, 0)
  loc_10BC989: End If
  loc_10BC989: Exit Sub
  loc_10BC98A: ' Referenced from: 10BC738
  loc_10BC990: If (var_96 = &HFF) Then
  loc_10BC999:   unk_44BFB4.RollbackTrans
  loc_10BC99E: End If
  loc_10BC9A6: Set var_120 = Err()
  loc_10BC9AC: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_10BC9CD: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10BC9E0: Exit Sub
  loc_10BC9E1: var_160 = 0
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E1B6F8
  'Data Table: 44BFA4
  loc_E1B6ED: Me.Global.Unload Me
  loc_E1B6F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3D508
  'Data Table: 44BFA4
  loc_E3D4F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D500: Call Proc_27_30_149DFD4(global_64)
  loc_E3D505: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E3DE08
  'Data Table: 44BFA4
  loc_E3DDF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3DE00: Call Proc_27_30_149DFD4(global_64)
  loc_E3DE05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E3D868
  'Data Table: 44BFA4
  loc_E3D858: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D860: Call Proc_27_30_149DFD4(global_64)
  loc_E3D865: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E3D688
  'Data Table: 44BFA4
  loc_E3D678: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D680: Call Proc_27_30_149DFD4(global_64)
  loc_E3D685: Exit Sub
  loc_E3D686: Set arg_2C00 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '149691C
  'Data Table: 44BFA4
  Dim var_9C As TextBox
  Dim var_86 As Integer
  Dim unk_44BFB4 As Connection15
  Dim var_B8 As String
  Dim var_A0 As Variant
  Dim var_FC As TextBox
  Dim var_B0 As Double
  Dim var_DC As Variant
  Dim var_16C As Variant
  Dim var_474 As TextBox
  Dim var_E8 As String
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_CC As String
  Dim var_154 As Variant
  Dim var_1E4 As Variant
  Dim var_46C As Variant
  Dim var_6F0 As Variant
  Dim var_A4 As String
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_1495E98: On Error Goto loc_14968FF
  loc_1495EA6: Set var_98 = Me.Txt
  loc_1495EAC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2))
  loc_1495ED5: If (Proc_6_27_EA61EC(var_9C, "Date") = 0) Then
  loc_1495ED8:   Exit Sub
  loc_1495ED9: End If
  loc_1495EE4: Set var_98 = Me.Txt
  loc_1495EEA: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_9C)
  loc_1495F13: If (Proc_6_27_EA61EC(var_9C, "Sr No") = 0) Then
  loc_1495F16:   Exit Sub
  loc_1495F17: End If
  loc_1495F1A: Call Proc_27_28_F9ACAC(var_A6)
  loc_1495F25: If (var_A6 = 0) Then
  loc_1495F28:   Exit Sub
  loc_1495F29: End If
  loc_1495F34: Set var_98 = Me.Txt
  loc_1495F3A: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_9C)
  loc_1495F4B: Set var_A0 = var_9C
  loc_1495F63: If (Proc_6_27_EA61EC(var_A0, "Guest Name") = 0) Then
  loc_1495F66:   Exit Sub
  loc_1495F67: End If
  loc_1495F75: Set var_98 = Me.Txt
  loc_1495F7B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_9C)
  loc_1495F83: var_A4 = var_9C.Text
  loc_1495FA3: If (Proc_6_91_EF38D0(CDate(var_A4)) = 0) Then
  loc_1495FB1:   Set var_98 = Me.Txt
  loc_1495FB7:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_9C)
  loc_1495FBF:   var_9C.SetFocus
  loc_1495FCB:   Exit Sub
  loc_1495FCC: End If
  loc_1495FDA: unk_44BFB4.BeginTrans var_B4
  loc_1495FFD: Set var_98 = Me.Txt
  loc_1496003: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_9C, var_A4, "Delete From Member Where DocID='", var_DC)
  loc_149600B: -1 = var_9C.Text
  loc_1496024: unk_44BFB4.Execute var_A0 & var_A4 & "'", &HFF, var_9C
  loc_149604C: Set var_98 = Me.Txt
  loc_1496052: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_9C)
  loc_1496066: Set var_A0 = Me.LblVPrefix
  loc_149607F: Set var_F8 = Me.Txt
  loc_1496085: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_FC)
  loc_149609A: var_B0 = Val(var_FC.Text)
  loc_14960A8: Set var_110 = Me.Txt
  loc_14960AE: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_114)
  loc_14960BD: Proc_6_7_F26918(var_124, CVar(var_114))
  loc_14960CD: Set var_158 = Me.Txt
  loc_14960D3: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_15C)
  loc_14960E2: Proc_6_17_EAAE40(var_17C, CVar(var_15C))
  loc_14960F2: Set var_1B0 = Me.Txt
  loc_14960F8: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_1B4)
  loc_1496107: Proc_6_17_EAAE40(var_1D4, CVar(var_1B4))
  loc_1496117: Set var_208 = Me.Txt
  loc_149611D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_20C)
  loc_149612C: Proc_6_17_EAAE40(var_22C, CVar(var_20C))
  loc_149613C: Set var_260 = Me.Txt
  loc_1496142: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_264)
  loc_1496151: Proc_6_17_EAAE40(var_284, CVar(var_264))
  loc_1496161: Set var_2B8 = Me.Txt
  loc_1496167: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_2BC)
  loc_1496176: Proc_6_17_EAAE40(var_2DC, CVar(var_2BC))
  loc_1496186: Set var_310 = Me.Txt
  loc_149618C: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(8), var_314)
  loc_149619B: Proc_6_17_EAAE40(var_334, CVar(var_314))
  loc_14961AB: Set var_368 = Me.Txt
  loc_14961B1: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(9), var_36C)
  loc_14961C0: Proc_6_7_F26918(var_38C, CVar(var_36C))
  loc_14961D0: Set var_3C0 = Me.Txt
  loc_14961D6: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_3C4)
  loc_14961E5: Proc_6_7_F26918(var_3E4, CVar(var_3C4))
  loc_14961F5: Set var_418 = Me.Txt
  loc_14961FB: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB), var_41C)
  loc_149620A: Proc_6_17_EAAE40(var_43C, CVar(var_41C))
  loc_149621D: Set var_470 = Me.Txt
  loc_1496223: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HC), var_474)
  loc_1496239: Proc_6_17_EAAE40(var_498, CVar(var_474.Tag))
  loc_1496249: Set var_4CC = Me.Txt
  loc_149624F: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HD), var_4D0)
  loc_149626E: Proc_6_17_EAAE40(var_500, Left(CVar(var_4D0), 1))
  loc_149627E: Set var_534 = Me.Txt
  loc_1496284: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HE), var_538)
  loc_14962A3: Proc_6_17_EAAE40(var_568, Left(CVar(var_538), 1))
  loc_14962B3: Set var_59C = Me.Txt
  loc_14962B9: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HF), var_5A0)
  loc_14962D8: Proc_6_17_EAAE40(var_5D0, Left(CVar(var_5A0), 1))
  loc_14962E8: Set var_604 = Me.Txt
  loc_14962EE: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H10), var_608)
  loc_149630D: Proc_6_17_EAAE40(var_638, Left(CVar(var_608), 1))
  loc_149631D: Set var_66C = Me.Txt
  loc_1496323: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H11), var_670)
  loc_1496342: Proc_6_17_EAAE40(var_6A0, Left(CVar(var_670), 1))
  loc_1496355: Proc_6_7_F26918(var_730, Date)
  loc_149635E: Set var_764 = Me.TopCtrl1
  loc_1496364: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_B0)
  loc_14963B3: var_B8 = "Insert Into Member(DocID,VType,VPrefix,Site_Code,VNo,VDate,Name,Company,Design,Add1,Add2,Phone,DOB,DOA,TableNo,Waiter,RECP,QOF,SOF,SOD,Entert,U_Name,U_EntDt,U_AE) Values ('" & var_9C.Text
  loc_14963CB: var_E8 = var_B8 & "','" & global_60 & "','"
  loc_1496420: var_1E4 = CVar(var_E8 & var_A0.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_B0) & ",") & var_124 & "," & var_17C & "," & var_1D4 
  loc_1496499: var_46C = var_1E4 & "," & var_22C & "," & var_284 & "," & var_2DC & "," & var_334 & "," & var_38C & "," & var_3E4 & "," & var_43C & "," 
  loc_1496503: var_6F0 = var_46C & var_498 & "," & var_500 & "," & var_568 & "," & var_5D0 & "," & var_638 & "," & var_6A0 & ",'" & CVar(MemVar_1F950C8) 
  loc_149653A: unk_44BFB4.Execute CStr(var_6F0 & "'," & var_730 & ",'" & IIf((var_784 = "Add"), "A", "E") & "')"), var_848, -1
  loc_1496640: Set var_98 = Me.TopCtrl1
  loc_1496646: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_84C)
  loc_149665B: If ( = "Add") Then
  loc_1496672:   var_A4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1496698:   var_134 = CVar(var_A4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_14966A9:   Set var_98 = Me.Txt
  loc_14966AF:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_9C, var_E8, var_134)
  loc_14966B7:   var_16C = var_9C.Text
  loc_14966C5:   Proc_6_7_F26918(var_124, CVar(var_E8))
  loc_14966CD:   var_144 = -1 & var_124 
  loc_14966D6:   var_154 = CVar(var_E8 & var_A0.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_B0) & ",") & var_124 & " Order By VP.Date_From DESC" 
  loc_14966E4:   unk_44BFB4.Execute CStr(var_154), var_A0, 
  loc_14966EF:   Set var_8C = var_A0
  loc_149672D:   If (var_8C.RecordCount > 0) Then
  loc_149673E:     Set var_98 = Me.Txt
  loc_1496744:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_9C)
  loc_149674C:     var_A4 = var_9C.Text
  loc_1496759:     var_B0 = Val(var_A4)
  loc_149675F:     var_CC = "Date_From"
  loc_1496782:     Proc_6_7_F26918(var_124, CVar(var_8C.Fields.Item(var_CC)))
  loc_14967B5:     var_E8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_B0) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_14967E8:     unk_44BFB4.Execute CStr(CVar(var_E8 & MemVar_1F95078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_124), var_154, -1
  loc_149681C:   End If
  loc_149681C: End If
  loc_1496822: unk_44BFB4.CommitTrans
  loc_1496835: Set var_98 = Me.Txt
  loc_149683B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_9C, var_A4)
  loc_1496843: var_FC = var_9C.Text
  loc_1496857: var_86 = 0
  loc_1496865: Me.Requery -1
  loc_149688F: Me.Find "SearchCode ='" & "SearchCode ='" & var_A4 & "'", 0, 1
  loc_149689F: Set var_98 = Me.TopCtrl1
  loc_14968A5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_CC)
  loc_14968BA: If (var_86 = "Add") Then
  loc_14968BD:   Call TopCtrl1_UnknownEvent_11()
  loc_14968C2:   Exit Sub
  loc_14968C3: End If
  loc_14968E6: Call Proc_27_31_EF1C64(Proc_5_1_100EC1C("INI", Me), global_64)
  loc_14968F1: Call Proc_27_30_149DFD4(var_B0)
  loc_14968FB: Set var_8C = Nothing
  loc_14968FE: Exit Sub
  loc_14968FF: ' Referenced from: 1495E98
  loc_1496905: If (var_86 = &HFF) Then
  loc_149690E:   unk_44BFB4.RollbackTrans
  loc_1496913: End If
  loc_1496913: Proc_6_60_E63754()
  loc_1496918: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'E9B018
  'Data Table: 44BFA4
  loc_E9AFA0: On Error Goto loc_E9B011
  loc_E9AFDA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9B000:   Call Proc_27_31_EF1C64(Proc_5_1_100EC1C("INI", Me))
  loc_E9B00B:   Call Proc_27_30_149DFD4(global_64)
  loc_E9B010: End If
  loc_E9B010: Exit Sub
  loc_E9B011: ' Referenced from: E9AFA0
  loc_E9B011: Proc_6_60_E63754()
  loc_E9B016: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB5174
  'Data Table: 44BFA4
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB50E4: On Error Goto loc_EB516E
  loc_EB50FE: If (Me.RecordCount <= 0) Then
  loc_EB5107:   var_B8 = "Information"
  loc_EB5122:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB5132:   Exit Sub
  loc_EB5133: End If
  loc_EB5136: MemVar_1F950E4 = "Select M.DocID as SearchCode,CAST(VNo AS VARCHAR) AS VNO,VDate,M.Name As GuestName,Company,Design,Add1 As Address1,Add2 As Address2 From Member M Order by M.DocID,M.VNo"
  loc_EB5143: Proc_6_126_F1C850("1000,1200,2500,1500,1500,1500,1500")
  loc_EB5151: MemVar_1F95120 = Me
  loc_EB5168: Call 0.Method_arg_2B0 (1)
  loc_EB516D: Exit Sub
  loc_EB516E: ' Referenced from: EB50E4
  loc_EB516E: Proc_6_60_E63754(var_B8)
  loc_EB5173: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E0BF34
  'Data Table: 44BFA4
  Dim Me As Recordset15
  loc_E0BF2B: Me.Requery -1
  loc_E0BF30: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11251B0
  'Data Table: 44BFA4
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_88 As DataGrid
  Dim Me As Variant
  Dim var_C8 As Variant
  loc_1124E6E: Set var_88 = Me.Txt
  loc_1124E74: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1124E82: Proc_6_74_E23240(var_8C)
  loc_1124E8E: Call Proc_27_32_E82934(var_8C)
  loc_1124E96: var_92 = Index
  loc_1124EA1: If Not (var_92 = CInt(1)) Then
  loc_1124EAC:   If (var_92 = CInt(2)) Then
  loc_1124EAF:   End If
  loc_1124EB7:   var_98 = "{Home}+{End}"
  loc_1124EBD:   Proc_303_0_FBACC8(var_98, 0)
  loc_1124EC8: Else
  loc_1124ED0:   If (var_92 = CInt(&HC)) Then
  loc_1124EE1:     Set var_88 = Me.Txt
  loc_1124EE7:     Call 0.Method_Txt_GotFocus0 (CInt(&HC), var_8C)
  loc_1124EFC:     var_B0 = CVar((var_8C.Left + CDbl(2000))) 'Single
  loc_1124F0B:     Me.DGWaiter.Left = var_B0
  loc_1124F2C:     Me.DGWaiter.Top = CVar(CDbl(1000))
  loc_1124F82:     Set var_88 = Me.Txt
  loc_1124F88:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1124F90:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1124FA8:     If (var_92 Or (var_98 = vbNullString)) Then
  loc_1124FAB:       Exit Sub
  loc_1124FAC:     End If
  loc_1124FB9:     Set var_88 = Me.Txt
  loc_1124FBF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1124FC7:     var_98 = var_8C.Text
  loc_1124FD9:     var_B0 = "Name"
  loc_1125014:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_112501D:       Me.MoveFirst
  loc_1125040:       Set var_88 = Me.Txt
  loc_1125046:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_112504E:       0 = var_8C.Text
  loc_1125067:       Me.Find 1 & var_98 & "'", var_B0, 
  loc_112507C:     End If
  loc_112507F:   Else
  loc_1125087:     If Not (var_92 = CInt(&HD)) Then
  loc_1125092:       If Not (var_92 = CInt(&HE)) Then
  loc_112509D:         If Not (var_92 = CInt(&HF)) Then
  loc_11250A8:           If Not (var_92 = CInt(&H10)) Then
  loc_11250B3:             If (var_92 = CInt(&H11)) Then
  loc_11250B6:             End If
  loc_11250B6:           End If
  loc_11250B6:         End If
  loc_11250B6:       End If
  loc_11250C3:       ReDim var_104(0 To 2)
  loc_11250DA:       var_104(0) = "Excellent"
  loc_11250E9:       var_104(1) = "Good"
  loc_11250F8:       var_104(2) = "Poor"
  loc_112510F:       global_72 = Array(var_104)
  loc_112511A:       Set var_C8 = Me.ListView
  loc_1125135:       Set var_8C = Me.Txt
  loc_112514F:       Set global_88 = Proc_6_66_F0048C(var_C8, var_8C, Index)
  loc_112516D:       Set var_88 = Me.Txt
  loc_1125173:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_112517B:       global_72 = var_8C.Text
  loc_112518D:       Set var_90 = Me.Txt
  loc_1125193:       Call 0.Method_Txt_GotFocus0 (Index, var_C8, var_98)
  loc_112519B:       var_C8.Tag = 3
  loc_11251AE:     End If
  loc_11251AE:   End If
  loc_11251AE: End If
  loc_11251AE: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '111EA9C
  'Data Table: 44BFA4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_A0 As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  loc_111E772: If (CLng(Shift) = &H1B) Then
  loc_111E775:   Call Proc_27_32_E82934()
  loc_111E77A:   Exit Sub
  loc_111E77B: End If
  loc_111E77E: var_86 = KeyCode
  loc_111E789: If (var_86 = CInt(&HC)) Then
  loc_111E797:   Set var_AC = Me.Txt
  loc_111E7A4:   Set var_A0 = Nothing
  loc_111E7AF:   Set var_9C = Nothing
  loc_111E7D2:   Set var_90 = var_AC
  loc_111E7E1:   Proc_6_69_134A630(Me.DGWaiter, var_90, CInt(&HC), global_68, Shift, 0)
  loc_111E7F8: Else
  loc_111E800:   If Not (var_86 = CInt(&HD)) Then
  loc_111E80B:     If Not (var_86 = CInt(&HE)) Then
  loc_111E816:       If Not (var_86 = CInt(&HF)) Then
  loc_111E821:         If Not (var_86 = CInt(&H10)) Then
  loc_111E82C:           If (var_86 = CInt(&H11)) Then
  loc_111E82F:           End If
  loc_111E82F:         End If
  loc_111E82F:       End If
  loc_111E82F:     End If
  loc_111E851:     Set var_8C = Me.Txt
  loc_111E857:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 1)
  loc_111E85F:     var_9C = var_90.Left
  loc_111E871:     Set var_9C = Me.Txt
  loc_111E877:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_111E87F:     var_A0 = var_A0.Top
  loc_111E891:     Set var_A8 = Me.Txt
  loc_111E897:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B8)
  loc_111E89F:     0 = var_AC.Height
  loc_111E8B1:     Set var_BC = Me.Txt
  loc_111E8B7:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_111E8BF:     var_C4 = var_C0.Width
  loc_111E907:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_111E92B:   End If
  loc_111E92B: End If
  loc_111E964: If ((CBool(Me.DGWaiter.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_111E985:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&H11))) Then
  loc_111E98E:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_B0), CInt((var_B4 + var_B8)))
  loc_111E993:   End If
  loc_111E997:   Set var_8C = Me.TopCtrl1
  loc_111E99D:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(CInt(var_C4))
  loc_111E9DC:   If CBool((780 = "Add") And (KeyCode <> CInt(1)) And (KeyCode <> CInt(2))) Then
  loc_111E9F4:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_111E9FD:       Proc_6_76_E533C8(Shift, arg_14)
  loc_111EA02:     End If
  loc_111EA05:   Else
  loc_111EA09:     Set var_8C = Me.TopCtrl1
  loc_111EA0F:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_86)
  loc_111EA3C:     If CBool(( = "Edit") And (KeyCode <> CInt(2))) Then
  loc_111EA54:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_111EA5D:         Proc_6_76_E533C8(Shift)
  loc_111EA62:       End If
  loc_111EA62:     End If
  loc_111EA62:   End If
  loc_111EA80:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H11))) Then
  loc_111EA8B:     Call Txt_Validate(KeyCode)
  loc_111EA93:     Call Proc_27_33_EE10C8(KeyCode, 0)
  loc_111EA98:   End If
  loc_111EA98: End If
  loc_111EA98: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EEA1FC
  'Data Table: 44BFA4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_EEA13C: On Error Goto loc_EEA1F6
  loc_EEA142: Proc_6_58_E06050(arg_10)
  loc_EEA14A: var_86 = KeyAscii
  loc_EEA155: If (var_86 = CInt(1)) Then
  loc_EEA162:   Set var_8C = Me.Txt
  loc_EEA168:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_EEA183:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_EEA192: Else
  loc_EEA19A:   If (var_86 = CInt(&HC)) Then
  loc_EEA1B9:     If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_EEA1CB:       var_AC = "Name"
  loc_EEA1E6:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10)
  loc_EEA1F5:     End If
  loc_EEA1F5:   End If
  loc_EEA1F5: End If
  loc_EEA1F5: Exit Sub
  loc_EEA1F6: ' Referenced from: EEA13C
  loc_EEA1F6: Proc_6_60_E63754(var_AC, 0)
  loc_EEA1FB: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EB82C4
  'Data Table: 44BFA4
  Dim var_86 As Integer
  loc_EB822F: var_86 = KeyCode
  loc_EB823A: If Not (var_86 = CInt(&HD)) Then
  loc_EB8245:   If Not (var_86 = CInt(&HE)) Then
  loc_EB8250:     If Not (var_86 = CInt(&HF)) Then
  loc_EB825B:       If Not (var_86 = CInt(&H10)) Then
  loc_EB8266:         If (var_86 = CInt(&H11)) Then
  loc_EB8269:         End If
  loc_EB8269:       End If
  loc_EB8269:     End If
  loc_EB8269:   End If
  loc_EB8284:   If (Me.FrmList.Visible = &HFF) Then
  loc_EB82B3:     Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode)
  loc_EB82C3:   End If
  loc_EB82C3: End If
  loc_EB82C3: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48664
  'Data Table: 44BFA4
  loc_E48642: Set var_88 = Me.Txt
  loc_E48648: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48656: Proc_6_73_E23294(var_8C)
  loc_E48662: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '134530C
  'Data Table: 44BFA4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim unk_44BFB4 As Connection15
  Dim var_94 As Variant
  Dim var_124 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_98 As String
  Dim Me As Recordset15
  Dim var_8C As Variant
  loc_1344B2F: var_86 = Cancel
  loc_1344B3A: If (var_86 = CInt(1)) Then
  loc_1344B48:   Set var_8C = Me.Txt
  loc_1344B4E:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1344B56:   var_98 = "Sr No"
  loc_1344B77:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_1344B85:     Set var_8C = Me.Txt
  loc_1344B8B:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1344B93:     var_90.SetFocus
  loc_1344BA1:     arg_10 = &HFF
  loc_1344BA4:     Exit Sub
  loc_1344BA5:   End If
  loc_1344BB3:   Set var_8C = Me.Txt
  loc_1344BB9:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_1344BC1:   arg_10 = var_90.Text
  loc_1344BD9:   If (CDbl(var_98) = CDbl(0)) Then
  loc_1344BEF:     var_B8 = "Sr No Can Not Be 0"
  loc_1344BF5:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_1344C0F:     Set var_8C = Me.Txt
  loc_1344C15:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1344C1D:     var_90.SetFocus
  loc_1344C2B:     arg_10 = &HFF
  loc_1344C2E:     Exit Sub
  loc_1344C2F:   End If
  loc_1344C33:   Set var_8C = Me.TopCtrl1
  loc_1344C39:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(arg_10)
  loc_1344C4E:   If (var_86 = "Add") Then
  loc_1344C57:     Call Proc_27_34_115BC48(MemVar_1F95044)
  loc_1344C6A:     Set var_8C = Me.Txt
  loc_1344C70:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1344C78:     var_90.Text = var_98
  loc_1344C87:   End If
  loc_1344C8B:   Set var_8C = Me.TopCtrl1
  loc_1344C91:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_98)
  loc_1344CA6:   If ( = "Add") Then
  loc_1344CD6:     Set var_8C = Me.Txt
  loc_1344CDC:     Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98, "Select Count(*) From Member Where DocID='", var_B8, -1)
  loc_1344CFD:     unk_44BFB4.Execute var_124 & var_98 & "'", 0, var_128
  loc_1344D0D:      = var_124.Item()
  loc_1344D15:      = var_128.Value
  loc_1344D42:     If (var_90.Text.Fields > 0) Then
  loc_1344D4B:       Call 0.Method_arg_50 (var_98)
  loc_1344D6C:       MsgBox("Duplicate Sr No.", &H40, CVar(var_98), var_F8, var_118)
  loc_1344D82:       Call Proc_27_34_115BC48(MemVar_1F95044)
  loc_1344D92:       If (var_98 = vbNullString) Then
  loc_1344D9F:         Set var_8C = Me.Txt
  loc_1344DA5:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1344DAD:         var_90.SetFocus
  loc_1344DBB:         arg_10 = &HFF
  loc_1344DBE:         Exit Sub
  loc_1344DBF:       End If
  loc_1344DC5:       Call Proc_27_34_115BC48(MemVar_1F95044, var_98)
  loc_1344DD8:       Set var_8C = Me.Txt
  loc_1344DDE:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1344DE6:       var_90.Text = arg_10
  loc_1344DF7:       arg_10 = &HFF
  loc_1344DFA:       Exit Sub
  loc_1344DFB:     End If
  loc_1344DFB:   End If
  loc_1344DFE: Else
  loc_1344E06:   If (var_86 = CInt(2)) Then
  loc_1344E17:     Set var_8C = Me.Txt
  loc_1344E1D:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, var_98)
  loc_1344E25:     arg_10 = var_90.Text
  loc_1344E55:     If (Len(Trim(CVar(var_98))) = 0) Then
  loc_1344E6B:       Set var_8C = Me.Txt
  loc_1344E71:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1344E79:       var_90.Text = CStr(MemVar_1F950EC)
  loc_1344E8B:     Else
  loc_1344E95:       Set var_8C = Me.Txt
  loc_1344E9B:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1344EAE:       var_98 = Proc_6_33_15125B8(var_90)
  loc_1344EBB:       Set var_124 = Me.Txt
  loc_1344EC1:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1344EC9:       var_128.Text = var_98
  loc_1344EDC:     End If
  loc_1344EE0:     Set var_8C = Me.TopCtrl1
  loc_1344EE6:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_98)
  loc_1344EFB:     If ( = "Add") Then
  loc_1344F04:       Call Proc_27_34_115BC48(MemVar_1F95044)
  loc_1344F14:       If (var_98 = vbNullString) Then
  loc_1344F21:         Set var_8C = Me.Txt
  loc_1344F27:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1344F2F:         var_90.SetFocus
  loc_1344F3D:         arg_10 = &HFF
  loc_1344F40:         Exit Sub
  loc_1344F41:       End If
  loc_1344F47:       Call Proc_27_34_115BC48(MemVar_1F95044, var_98)
  loc_1344F5A:       Set var_8C = Me.Txt
  loc_1344F60:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1344F68:       var_90.Text = arg_10
  loc_1344F77:     End If
  loc_1344F85:     Set var_8C = Me.Txt
  loc_1344F8B:     Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1344F93:     var_98 = var_90.Text
  loc_1344FB3:     If (Proc_6_91_EF38D0(CDate(var_98)) = 0) Then
  loc_1344FC1:       Set var_8C = Me.Txt
  loc_1344FC7:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1344FCF:       var_90.SetFocus
  loc_1344FDB:       Exit Sub
  loc_1344FDC:     End If
  loc_1344FDF:   Else
  loc_1344FE7:     If (var_86 = CInt(&HC)) Then
  loc_1345038:       Set var_8C = Me.Txt
  loc_134503E:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1345046:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_134505E:       If (var_98 Or (var_98 = vbNullString)) Then
  loc_134506E:         Set var_8C = Me.Txt
  loc_1345074:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134507C:         var_90.Text = vbNullString
  loc_1345095:         Set var_8C = Me.Txt
  loc_134509B:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13450A3:         var_90.Tag = vbNullString
  loc_13450B2:       Else
  loc_13450ED:         Set var_94 = Me.Txt
  loc_13450F3:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_13450FB:         var_124.Text = CStr(Me.Fields.Item("Name").Value)
  loc_134512E:         var_90 = Me.Fields.Item("Code")
  loc_134514C:         Set var_94 = Me.Txt
  loc_1345152:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_134515A:         var_124.Tag = CStr(var_90.Value)
  loc_1345170:       End If
  loc_1345173:     Else
  loc_134517B:       If Not (var_86 = CInt(9)) Then
  loc_1345186:         If (var_86 = CInt(&HA)) Then
  loc_1345189:         End If
  loc_1345193:         Set var_8C = Me.Txt
  loc_1345199:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_13451B9:         Set var_124 = Me.Txt
  loc_13451BF:         Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_13451C7:         var_128.Text = Proc_6_33_15125B8(var_90)
  loc_13451DD:       Else
  loc_13451E5:         If Not (var_86 = CInt(&HD)) Then
  loc_13451F0:           If Not (var_86 = CInt(&HE)) Then
  loc_13451FB:             If Not (var_86 = CInt(&HF)) Then
  loc_1345206:               If Not (var_86 = CInt(&H10)) Then
  loc_1345211:                 If (var_86 = CInt(&H11)) Then
  loc_1345214:                 End If
  loc_1345214:               End If
  loc_1345214:             End If
  loc_1345214:           End If
  loc_1345221:           Set var_8C = Me.Txt
  loc_1345227:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1345246:           If (var_90.Text <> vbNullString) Then
  loc_1345279:             Set var_94 = Me.Txt
  loc_134527F:             Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_1345287:             var_124.Text = Me.ListView.SelectedItem.Text
  loc_13452A0:           Else
  loc_13452E0:             Set var_124 = Me.Txt
  loc_13452E6:             Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_13452EE:             var_128.Text = Me.ListView.ListItems.Item(1).Text
  loc_134530A:           End If
  loc_134530A:         End If
  loc_134530A:       End If
  loc_134530A:     End If
  loc_134530A:   End If
  loc_134530A: End If
  loc_134530A: Exit Sub
End Sub

Private Sub Form_Load() 'F4EA60
  'Data Table: 44BFA4
  Dim Me As Recordset15
  loc_F4E93C: On Error Goto loc_F4EA57
  loc_F4E95B: Me.Recordset15.CursorLocation = 3
  loc_F4E991: CVarUnk
  loc_F4E996: VerifyVarObj
  loc_F4E99C: Set var_88 = Me.DGWaiter
  loc_F4E9A2: LateIdStAd
  loc_F4E9CC: Me.DGWaiter.CursorLocation = 3
  loc_F4E9F4: elect Code,Name From Waiter Order by Name", CVar(MemVar_1F95044), 2 "Select M.DocID as SearchCode,M.DocID From Member M Order by DocID", CVar(MemVar_1F95044), 2
  loc_F4E9FF: global_60 = "GSTAO"
  loc_F4EA26: Call Proc_27_31_EF1C64(Proc_5_1_100EC1C("INI", Me, New, 3, -1), Me, New)
  loc_F4EA49: Proc_6_23_DFC5B8(Me, 4500, 10000)
  loc_F4EA51: Call Proc_27_30_149DFD4(3)
  loc_F4EA56: Exit Sub
  loc_F4EA57: ' Referenced from: F4E93C
  loc_F4EA57: Proc_6_60_E63754(-1)
  loc_F4EA5C: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E3FB0C
  'Data Table: 44BFA4
  loc_E3FAE7: Set global_68 = Nothing
  loc_E3FAF9: Set global_64 = Nothing
  loc_E3FB05: MasterFormExit = 0
  loc_E3FB08: Exit Sub
  loc_E3FB0B: Exit Sub
End Sub

Private Sub Form_Activate() 'E476F8
  'Data Table: 44BFA4
  loc_E476C8: On Error Goto loc_E476F2
  loc_E476CF: Set var_88 = Me.TopCtrl1
  loc_E476D5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010()
  loc_E476EA: If (CLng(CInt()) = &H2D) Then
  loc_E476ED:   Call TopCtrl1_UnknownEvent_1D()
  loc_E476F2:   ' Referenced from: E476C8
  loc_E476F2: End If
  loc_E476F2: Proc_6_60_E63754()
  loc_E476F7: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E27414
  'Data Table: 44BFA4
  loc_E273F9: If (MasterFormExit = &HFF) Then
  loc_E27409:   Me.Global.Unload Me
  loc_E27411: End If
  loc_E27411: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2BB20
  'Data Table: 44BFA4
  loc_E2BAF8: On Error Goto loc_E2BB18
  loc_E2BB0F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2BB17: Exit Sub
  loc_E2BB18: ' Referenced from: E2BAF8
  loc_E2BB18: Proc_6_60_E63754(Shift)
  loc_E2BB1D: Exit Sub
End Sub

Private Sub DGWaiter_UnknownEvent_9 'F4F134
  'Data Table: 44BFA4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F02B: Me.DGWaiter.Visible = False
  loc_F4F04A: If (Me.RecordCount > 0) Then
  loc_F4F089:   Set var_B4 = Me.Txt
  loc_F4F08F:   Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F4F097:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4F0CA:   var_B0 = Me.Fields.Item("Name")
  loc_F4F0E9:   Set var_B4 = Me.Txt
  loc_F4F0EF:   Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F4F0F7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4F10D: End If
  loc_F4F118: Set var_A8 = Me.Txt
  loc_F4F11E: Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(&HC))
  loc_F4F126: var_B0.SetFocus
  loc_F4F132: Exit Sub
End Sub

Public Function MasterFormExitGet() '44C8EC
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '44C8FB
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E949B8
  'Data Table: 44BFA4
  Dim Me As Recordset15
  loc_E94946: On Error Goto loc_E949AF
  loc_E9494F: Me.MoveFirst
  loc_E94979: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E949A1: Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_E949A9: Call Proc_27_30_149DFD4(0)
  loc_E949AE: Exit Sub
  loc_E949AF: ' Referenced from: E94946
  loc_E949AF: Proc_6_60_E63754(var_A0)
  loc_E949B4: Exit Sub
End Sub

Public Sub Proc_27_28_F9ACAC
  'Data Table: 44BFA4
  Dim var_C0 As String
  Dim var_C4 As TextBox
  Dim unk_44BFB4 As Connection15
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  loc_F9AB61: Set var_8C = Me.TopCtrl1
  loc_F9AB67: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(&HFF)
  loc_F9AB7C: If ( = "Add") Then
  loc_F9ABA2:   var_C0 = "Select Count(*) From Member Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_F9ABBA:   Set var_8C = Me.Txt
  loc_F9ABC0:   Call 0.Method_Proc_27_28_F9ACAC0 (CInt(0), var_C4, var_C8, var_C0 & "' or LOGSITE_CODE='HO') and DocID='", var_AC, -1)
  loc_F9ABE1:   unk_44BFB4.Execute var_DC & var_C8 & "'", 0, var_F0
  loc_F9ABF1:    = var_DC.Item()
  loc_F9ABF9:    = var_F0.Value
  loc_F9AC2A:   If (var_C4.Text.Fields > 0) Then
  loc_F9AC33:     Call 0.Method_arg_50 (var_C0)
  loc_F9AC54:     MsgBox("Duplicate Serial No.", &H40, CVar(var_C0), var_110, var_120)
  loc_F9AC6A:     Call Proc_27_34_115BC48(MemVar_1F95044)
  loc_F9AC7D:     Set var_8C = Me.Txt
  loc_F9AC83:     Call 0.Method_Proc_27_28_F9ACAC0 (CInt(0), var_C4)
  loc_F9AC8B:     var_C4.Text = var_C0
  loc_F9AC9F:     Proc_27_28_F9ACAC = 0
  loc_F9ACA5:   End If
  loc_F9ACA5: End If
  loc_F9ACA5: Proc_27_28_F9ACAC = var_C0
End Sub

Public Sub Proc_27_29_EB83A4
  'Data Table: 44BFA4
  Dim var_98 As TextBox
  Dim var_8C As Label
  loc_EB8312: Set var_8C = Me.Txt
  loc_EB8318: Call 0.Method_Proc_27_29_EB83A4C (var_8E, var_86)
  loc_EB8328: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB833E:   Set var_8C = Me.Txt
  loc_EB8344:   Call 0.Method_Proc_27_29_EB83A40 (CInt(var_86), var_98)
  loc_EB834C:   var_98.Text = vbNullString
  loc_EB8368:   Set var_8C = Me.Txt
  loc_EB836E:   Call 0.Method_Proc_27_29_EB83A40 (CInt(var_86), var_98)
  loc_EB8376:   var_98.Tag = vbNullString
  loc_EB8385: Next var_92 'Byte
  loc_EB8398: Me.LblVPrefix.Caption = vbNullString
  loc_EB83A0: Exit Sub
End Sub

Public Sub Proc_27_30_149DFD4
  'Data Table: 44BFA4
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim var_FC As String
  Dim unk_44BFB4 As Connection15
  Dim var_124 As Recordset15
  Dim var_128 As Variant
  Dim var_120 As Variant
  Dim var_132 As Integer
  Dim var_130 As TextBox
  Dim var_8C As Recordset15
  loc_149D354: On Error Goto loc_149DFCB
  loc_149D36E: If (Me.RecordCount > 0) Then
  loc_149D3C7:   unk_44BFB4.Execute CStr("Select * From Member Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_149D3EF:   Set var_124 = var_120 
  loc_149D42C:   Set var_120 = Me.Txt
  loc_149D432:   Call 0.Method_Proc_27_30_149DFD40 (CInt(0), var_128)
  loc_149D43A:   var_128.Text = CStr(var_124.Fields.Item("DocID").Value)
  loc_149D488:   Me.LblVPrefix.Caption = CStr(var_124.Fields.Item("vPrefix").Value)
  loc_149D4EE:   Set var_120 = Me.Txt
  loc_149D4F4:   Call 0.Method_Proc_27_30_149DFD40 (CInt(2), var_128, CStr(Format(CVar(var_124.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_149D4FC:   var_128.Text = 1
  loc_149D54F:   Set var_120 = Me.Txt
  loc_149D555:   Call 0.Method_Proc_27_30_149DFD40 (CInt(1), var_128, CStr(var_124.Fields.Item("VNo").Value))
  loc_149D55D:   var_128.Text = 1
  loc_149D5A9:   Set var_120 = Me.Txt
  loc_149D5AF:   Call 0.Method_Proc_27_30_149DFD40 (CInt(3), var_128)
  loc_149D5B7:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("Name")))
  loc_149D601:   Set var_120 = Me.Txt
  loc_149D607:   Call 0.Method_Proc_27_30_149DFD40 (CInt(4), var_128)
  loc_149D60F:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("Company")))
  loc_149D659:   Set var_120 = Me.Txt
  loc_149D65F:   Call 0.Method_Proc_27_30_149DFD40 (CInt(5), var_128)
  loc_149D667:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("Design")))
  loc_149D6B1:   Set var_120 = Me.Txt
  loc_149D6B7:   Call 0.Method_Proc_27_30_149DFD40 (CInt(6), var_128)
  loc_149D6BF:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("Add1")))
  loc_149D709:   Set var_120 = Me.Txt
  loc_149D70F:   Call 0.Method_Proc_27_30_149DFD40 (CInt(7), var_128)
  loc_149D717:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("Add2")))
  loc_149D761:   Set var_120 = Me.Txt
  loc_149D767:   Call 0.Method_Proc_27_30_149DFD40 (CInt(8), var_128)
  loc_149D76F:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("Phone")))
  loc_149D7D5:   Set var_120 = Me.Txt
  loc_149D7DB:   Call 0.Method_Proc_27_30_149DFD40 (CInt(9), var_128, CStr(Format(CVar(var_124.Fields.Item("DOB")), "dd/MMM/yyyy")))
  loc_149D7E3:   var_128.Text = 1
  loc_149D84F:   Set var_120 = Me.Txt
  loc_149D855:   Call 0.Method_Proc_27_30_149DFD40 (CInt(&HA), var_128, CStr(Format(CVar(var_124.Fields.Item("DOA")), "dd/MMM/yyyy")), 1)
  loc_149D85D:   var_128.Text = 1
  loc_149D8AD:   Set var_120 = Me.Txt
  loc_149D8B3:   Call 0.Method_Proc_27_30_149DFD40 (CInt(&HB), var_128)
  loc_149D8BB:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("TableNo")), 1)
  loc_149D8F7:   var_132 = IsNull(CVar(var_124.Fields.Item("Waiter")))
  loc_149D909:   var_120 = var_124.Fields
  loc_149D911:   var_128 = var_120.Item("Waiter")
  loc_149D932:   var_11C = IIf(var_132, vbNullString, CVar(var_128))
  loc_149D949:   Set var_12C = Me.Txt
  loc_149D94F:   Call 0.Method_Proc_27_30_149DFD40 (CInt(&HC), var_130, CStr(var_11C))
  loc_149D957:   var_130.Tag = var_132
  loc_149D9CA:   unk_44BFB4.Execute CStr("Select Name From Waiter Where Code='" & var_124.Fields.Item("Waiter").Value & "'"), var_11C, -1
  loc_149D9D5:   Set var_8C = var_120
  loc_149DA03:   If (var_8C.RecordCount > 0) Then
  loc_149DA1D:     var_A8 = var_8C.Fields.Item("Name")
  loc_149DA3C:     Set var_120 = Me.Txt
  loc_149DA42:     Call 0.Method_Proc_27_30_149DFD40 (CInt(&HC), var_128)
  loc_149DA4A:     var_128.Text = Proc_6_38_E69628(CVar(var_A8), var_120)
  loc_149DA61:   Else
  loc_149DA6F:     Set var_94 = Me.Txt
  loc_149DA75:     Call 0.Method_Proc_27_30_149DFD40 (CInt(&HC), var_A8)
  loc_149DA7D:     var_A8.Text = vbNullString
  loc_149DA89:   End If
  loc_149DB2E:   var_1D4 = IIf((var_124.Fields.Item("RECP").Value = "E"), "Excellent", IIf((var_124.Fields.Item("RECP").Value = "G"), "Good", "Poor"))
  loc_149DB45:   Set var_12C = Me.Txt
  loc_149DB4B:   Call 0.Method_Proc_27_30_149DFD40 (CInt(&HD), var_130)
  loc_149DB53:   var_130.Text = CStr(var_1D4)
  loc_149DC2C:   var_FC = CStr(IIf((var_124.Fields.Item("QOF").Value = "E"), "Excellent", IIf((var_124.Fields.Item("QOF").Value = "G"), "Good", "Poor")))
  loc_149DC3B:   Set var_12C = Me.Txt
  loc_149DC41:   Call 0.Method_Proc_27_30_149DFD40 (CInt(&HE), var_130)
  loc_149DC49:   var_130.Text = var_FC
  loc_149DD22:   var_FC = CStr(IIf((var_124.Fields.Item("SOF").Value = "E"), "Excellent", IIf((var_124.Fields.Item("SOF").Value = "G"), "Good", "Poor")))
  loc_149DD31:   Set var_12C = Me.Txt
  loc_149DD37:   Call 0.Method_Proc_27_30_149DFD40 (CInt(&HF), var_130)
  loc_149DD3F:   var_130.Text = var_FC
  loc_149DE18:   var_FC = CStr(IIf((var_124.Fields.Item("SOD").Value = "E"), "Excellent", IIf((var_124.Fields.Item("SOD").Value = "G"), "Good", "Poor")))
  loc_149DE27:   Set var_12C = Me.Txt
  loc_149DE2D:   Call 0.Method_Proc_27_30_149DFD40 (CInt(&H10), var_130)
  loc_149DE35:   var_130.Text = var_FC
  loc_149DEA2:   var_128 = var_124.Fields.Item("Entert")
  loc_149DF1D:   Set var_12C = Me.Txt
  loc_149DF23:   Call 0.Method_Proc_27_30_149DFD40 (CInt(&H11), var_130)
  loc_149DF2B:   var_130.Text = CStr(IIf((var_124.Fields.Item("Entert").Value = "E"), "Excellent", IIf((var_128.Value = "G"), "Good", "Poor")))
  loc_149DF8D:   Set var_120 = Me.Txt
  loc_149DF93:   Call 0.Method_Proc_27_30_149DFD40 (CInt(&H12), var_128)
  loc_149DF9B:   var_128.Text = Proc_6_38_E69628(CVar(var_124.Fields.Item("U_Name")))
  loc_149DFB1:   Set var_124 = Nothing 
  loc_149DFB8: Else
  loc_149DFB8:   Call Proc_27_29_EB83A4(var_120)
  loc_149DFBD: End If
  loc_149DFBD: Call Proc_27_32_E82934()
  loc_149DFC7: Set var_88 = Nothing
  loc_149DFCA: Exit Sub
  loc_149DFCB: ' Referenced from: 149D354
  loc_149DFCB: Proc_6_60_E63754()
  loc_149DFD0: Exit Sub
End Sub

Public Sub Proc_27_31_EF1C64(arg_C) 'EF1C64
  'Data Table: 44BFA4
  Dim var_98 As TextBox
  loc_EF1B9E: Set var_8C = Me.Txt
  loc_EF1BA4: Call 0.Method_Proc_27_31_EF1C64C (var_8E, var_86)
  loc_EF1BB4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EF1BCA:   Set var_8C = Me.Txt
  loc_EF1BD0:   Call 0.Method_Proc_27_31_EF1C640 (CInt(var_86), var_98)
  loc_EF1BD8:   var_98.Enabled = arg_C
  loc_EF1BE7: Next var_92 'Byte
  loc_EF1BFA: Set var_8C = Me.Txt
  loc_EF1C00: Call 0.Method_Proc_27_31_EF1C640 (CInt(0), var_98)
  loc_EF1C08: var_98.Enabled = False
  loc_EF1C21: Set var_8C = Me.Txt
  loc_EF1C27: Call 0.Method_Proc_27_31_EF1C640 (CInt(&H12), var_98)
  loc_EF1C2F: var_98.Enabled = False
  loc_EF1C49: Set var_8C = Me.Txt
  loc_EF1C4F: Call 0.Method_Proc_27_31_EF1C640 (CInt(&H12), var_98)
  loc_EF1C57: var_98.Text = MemVar_1F950C8
  loc_EF1C63: Exit Sub
End Sub

Public Sub Proc_27_32_E82934
  'Data Table: 44BFA4
  loc_E828E4: If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_E828F6:   Me.DGWaiter.Visible = False
  loc_E828FE: End If
  loc_E82919: If (Me.FrmList.Visible = &HFF) Then
  loc_E82928:   Me.FrmList.Visible = False
  loc_E82930: End If
  loc_E82930: Exit Sub
End Sub

Public Sub Proc_27_33_EE10C8(arg_C) 'EE10C8
  'Data Table: 44BFA4
  Dim var_8C As TextBox
  loc_EE101C: Call Proc_27_32_E82934()
  loc_EE102C: Set var_88 = Me.Txt
  loc_EE1032: Call 0.Method_Proc_27_33_EE10C80 (CInt(3))
  loc_EE105B: If (Proc_6_27_EA61EC(var_8C, "Guest Name") = 0) Then
  loc_EE105E:   Exit Sub
  loc_EE105F: End If
  loc_EE1096: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE1099:   Call TopCtrl1_UnknownEvent_19()
  loc_EE10A1: Else
  loc_EE10AB:   Set var_88 = Me.Txt
  loc_EE10B1:   Call 0.Method_Proc_27_33_EE10C80 (arg_C, var_8C)
  loc_EE10B9:   var_8C.SetFocus
  loc_EE10C5: End If
  loc_EE10C5: Exit Sub
End Sub

Public Sub Proc_27_34_115BC48
  'Data Table: 44BFA4
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115B8E0: var_90 = global_60
  loc_115B8F7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_115B91A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115B928: Set var_B4 = Me.Txt
  loc_115B92E: Call 0.Method_Proc_27_34_115BC480 (CInt(2), var_B8, var_E8)
  loc_115B93D: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_115B945: var_F8 = -1 & var_D8 
  loc_115B959: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115B964: Set var_8C = var_140
  loc_115B9A0: If (var_8C.RecordCount <= 0) Then
  loc_115B9BC:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115B9CF:   var_88 = vbNullString
  loc_115B9D2:   Proc_27_34_115BC48 = 
  loc_115B9D8: End If
  loc_115B9EC: If (var_8C.RecordCount > 0) Then
  loc_115BA2B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115BA48:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115BA59:     var_9C = CStr(var_B8.Value)
  loc_115BA74:     Set var_B4 = Me.Txt
  loc_115BA7A:     Call 0.Method_Proc_27_34_115BC480 (CInt(1), var_B8)
  loc_115BA90:     var_94 = CLng(Val(var_B8.Text))
  loc_115BAA0:   Else
  loc_115BACB:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115BAF2:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115BB07:     var_D8 = (var_B8.Value + 1)
  loc_115BB0D:     var_94 = CLng(var_D8)
  loc_115BB1E:   End If
  loc_115BB1E: End If
  loc_115BB49: var_C8 = Space((5 - Len(var_90)))
  loc_115BB51: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_B8.Value)
  loc_115BB5B: var_F8 = (var_E8 + CVar(var_9C))
  loc_115BB6C: var_118 = Space((5 - Len(var_9C)))
  loc_115BB74: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115BB8A: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115BB92: var_188 = (var_13C + var_178)
  loc_115BB9E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115BBA3: var_98 = CStr(var_1A8)
  loc_115BBD3: Me.LblVPrefix.Caption = var_9C
  loc_115BBE9: Set var_B4 = Me.Txt
  loc_115BBEF: Call 0.Method_Proc_27_34_115BC480 (CInt(0), var_B8)
  loc_115BBF7: var_B8.Text = var_98
  loc_115BC16: Set var_B4 = Me.Txt
  loc_115BC1C: Call 0.Method_Proc_27_34_115BC480 (CInt(1), var_B8)
  loc_115BC24: var_B8.Text = CStr(var_94)
  loc_115BC36: var_88 = var_98
  loc_115BC3E: Set var_8C = Nothing
  loc_115BC41: Proc_27_34_115BC48 = var_94
End Sub
