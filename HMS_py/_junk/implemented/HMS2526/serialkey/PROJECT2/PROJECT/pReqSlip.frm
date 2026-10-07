VERSION 5.00
Begin VB.Form pReqSlip
  Caption = "Requistion Slip Entry"
  ForeColor = &H404040&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "pReqSlip.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 9060
  ClientHeight = 6060
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
  Begin Frame FrBanq
    Caption = "Frame1"
    Left = 750
    Top = 1950
    Width = 5160
    Height = 285
    Visible = 0   'False
    TabIndex = 33
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 11
      ForeColor = &HC00000&
      Left = 2505
      Top = 0
      Width = 2655
      Height = 285
      TabIndex = 6
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
      Index = 10
      ForeColor = &HC00000&
      Left = 1740
      Top = 0
      Width = 735
      Height = 285
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
    Begin Label Label1
      Caption = "Banq. Party"
      Index = 8
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 1110
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
  End
  Begin DataGrid DGBookNo
    Left = 8055
    Top = 2400
    Width = 6300
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 32
  End
  Begin TextBox Txt
    Index = 8
    ForeColor = &HC00000&
    Left = 12315
    Top = 1320
    Width = 1260
    Height = 285
    TabIndex = 30
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 6915
    Top = 1320
    Width = 3420
    Height = 285
    TabIndex = 3
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
  Begin DataGrid DGGodown
    Left = 10770
    Top = 5085
    Width = 3915
    Height = 3810
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 28
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9060
    Height = 450
    TabIndex = 27
  End
  Begin DataGrid DGItem
    Left = 11355
    Top = 2760
    Width = 4245
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin DataGrid DGDepart
    Left = 6930
    Top = 3765
    Width = 3915
    Height = 3810
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGCompany
    Left = 11235
    Top = 1830
    Width = 4245
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 23
  End
  Begin TextBox Txt
    Index = 7
    ForeColor = &HC00000&
    Left = 6915
    Top = 1635
    Width = 3420
    Height = 285
    TabIndex = 7
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
    Index = 6
    ForeColor = &HC00000&
    Left = 5355
    Top = 1005
    Width = 555
    Height = 285
    TabIndex = 21
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
    Index = 5
    ForeColor = &HC00000&
    Left = 2490
    Top = 1635
    Width = 3420
    Height = 285
    TabIndex = 4
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
    Index = 0
    Left = 10935
    Top = 8745
    Width = 1590
    Height = 240
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 8
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
    Index = 3
    Left = 12600
    Top = 8760
    Width = 2340
    Height = 240
    Visible = 0   'False
    TabIndex = 10
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
    Index = 4
    ForeColor = &HC00000&
    Left = 2490
    Top = 1320
    Width = 3420
    Height = 285
    TabIndex = 2
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HF8DEE0&
    ForeColor = &H80000012&
    Left = 1980
    Top = 3555
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
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
    Index = 2
    ForeColor = &HC00000&
    Left = 4095
    Top = 1005
    Width = 1230
    Height = 285
    TabIndex = 0
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
    Index = 1
    ForeColor = &HC00000&
    Left = 2490
    Top = 1005
    Width = 780
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
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
    Left = 765
    Top = 2265
    Width = 10895
    Height = 6000
    TabIndex = 8
  End
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 450
    Top = 8490
    Width = 2745
    Height = 345
    TabIndex = 35
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Total"
    Index = 6
    ForeColor = &HC00000&
    Left = 11370
    Top = 1320
    Width = 480
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
  Begin Label Label1
    Caption = "Godown"
    Index = 5
    ForeColor = &HC00000&
    Left = 5955
    Top = 1335
    Width = 795
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1665
    Top = 8040
    Width = 2880
    Height = 255
    TabIndex = 26
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
    Left = 5070
    Top = 8085
    Width = 2790
    Height = 285
    TabIndex = 25
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 24
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
    Caption = "Company "
    Index = 4
    ForeColor = &HC00000&
    Left = 5955
    Top = 1635
    Width = 960
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
  Begin Label Label1
    Caption = "Remark"
    Index = 2
    ForeColor = &HC00000&
    Left = 750
    Top = 1650
    Width = 735
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
  Begin Label Label1
    Caption = "Vr Type"
    Index = 0
    ForeColor = &H0&
    Left = 4425
    Top = 5205
    Width = 660
    Height = 210
    Visible = 0   'False
    TabIndex = 19
    AutoSize = -1  'True
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
  Begin Label Label1
    Caption = "DocID"
    Index = 29
    ForeColor = &H0&
    Left = 14565
    Top = 7695
    Width = 555
    Height = 210
    Visible = 0   'False
    TabIndex = 17
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
  Begin Label Label1
    Caption = "Department"
    Index = 10
    ForeColor = &HC00000&
    Left = 750
    Top = 1335
    Width = 1110
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 14325
    Top = 8220
    Width = 645
    Height = 210
    Visible = 0   'False
    TabIndex = 15
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
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 3525
    Top = 1005
    Width = 435
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
  Begin Label Label1
    Caption = "Requestion No."
    Index = 3
    ForeColor = &HC00000&
    Left = 750
    Top = 1005
    Width = 1440
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
End

Attribute VB_Name = "pReqSlip"

Private global_108 As Integer
Private global_110 As Integer
Private global_164 As Double
Private global_112 As Integer
Private global_52 As Integer
Private global_96 As Integer

Private Sub FGrid_UnknownEvent_0 'EA3EB8
  'Data Table: 4DA730
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA3E53: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_80)) Then
  loc_EA3E68:   Me.FGrid.Col = CVar(CLng(1))
  loc_EA3E70: End If
  loc_EA3E83: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA3E96: Set var_88 = Me.TxtGrid
  loc_EA3E9C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA3EA4: var_BC.Visible = False
  loc_EA3EB0: Call Proc_262_52_F32818()
  loc_EA3EB5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6AC80
  'Data Table: 4DA730
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6AC3C: Set var_88 = Me.TxtGrid
  loc_E6AC42: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6AC5C: If (var_8C.Visible = 0) Then
  loc_E6AC75:   Me.FGrid.BackColorSel = CVar(CLng(global_80))
  loc_E6AC7D: End If
  loc_E6AC7D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF4B4
  'Data Table: 4DA730
  loc_DFF4AC: Call Proc_262_46_E4133C()
  loc_DFF4B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11BC68C
  'Data Table: 4DA730
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11BC240: Set var_88 = Me.TopCtrl1
  loc_11BC246: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11BC28B: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11BC294:   Call Form_KeyDown(Cancel, arg_10)
  loc_11BC299: End If
  loc_11BC29D: Set var_88 = Me.TopCtrl1
  loc_11BC2A3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11BC2BC: If (CStr() = "Browse") Then
  loc_11BC2BF:   Exit Sub
  loc_11BC2C0: End If
  loc_11BC334: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11BC34D:   Me.FGrid.CellBackColor = CVar(CLng(global_80))
  loc_11BC35D:   var_9C = "+{Tab}"
  loc_11BC363:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_11BC36D:   Cancel = 0
  loc_11BC373: Else
  loc_11BC37D:   var_B0 = Me.FGrid.Rows
  loc_11BC3CA:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11BC3E3:     Me.FGrid.CellBackColor = CVar(CLng(global_80))
  loc_11BC3F0:     Call Proc_262_53_F0D5D4(0, var_B0, Cancel)
  loc_11BC3F5:   End If
  loc_11BC3F5: End If
  loc_11BC3FB: global_108 = Cancel
  loc_11BC421: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11BC445: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11BC45B:   var_EC = CLng(Me.FGrid.Col)
  loc_11BC46B:   If (var_EC = CLng(1)) Then
  loc_11BC481:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BC499:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11BC49E:     var_11C = vbNullString
  loc_11BC4A8:     Set var_B4 = Me.FGrid
  loc_11BC4AE:     LateIdCallSt
  loc_11BC4D9:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BC4E1:     var_FC = CVar(CLng(7)) 'Long
  loc_11BC4E6:     var_11C = vbNullString
  loc_11BC4F0:     Set var_A0 = Me.FGrid
  loc_11BC4F6:     LateIdCallSt
  loc_11BC51B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BC523:     var_FC = CVar(CLng(2)) 'Long
  loc_11BC528:     var_11C = vbNullString
  loc_11BC532:     Set var_A0 = Me.FGrid
  loc_11BC538:     LateIdCallSt
  loc_11BC55D:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BC565:     var_FC = CVar(CLng(3)) 'Long
  loc_11BC56A:     var_11C = vbNullString
  loc_11BC574:     Set var_A0 = Me.FGrid
  loc_11BC57A:     LateIdCallSt
  loc_11BC59F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BC5A7:     var_FC = CVar(CLng(8)) 'Long
  loc_11BC5AC:     var_11C = vbNullString
  loc_11BC5B6:     Set var_A0 = Me.FGrid
  loc_11BC5BC:     LateIdCallSt
  loc_11BC5E1:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BC5E9:     var_FC = CVar(CLng(9)) 'Long
  loc_11BC5EE:     var_11C = vbNullString
  loc_11BC5F8:     Set var_A0 = Me.FGrid
  loc_11BC5FE:     LateIdCallSt
  loc_11BC613:   Else
  loc_11BC61A:     If (var_EC = CLng(3)) Then
  loc_11BC630:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BC648:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11BC64D:       var_11C = vbNullString
  loc_11BC657:       Set var_B4 = Me.FGrid
  loc_11BC65D:       LateIdCallSt
  loc_11BC675:     End If
  loc_11BC675:   End If
  loc_11BC675: End If
  loc_11BC67B: If (Cancel = &HD) Then
  loc_11BC683:   global_110 = 0
  loc_11BC686: End If
  loc_11BC688: Cancel = 0
  loc_11BC68B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E102E8
  'Data Table: 4DA730
  loc_E102D9: Call FGrid_UnknownEvent_C()
  loc_E102E3: global_110 = 0
  loc_E102E6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1077CCC
  'Data Table: 4DA730
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As Variant
  Dim var_C4 As TextBox
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_1077A40: Set var_88 = Me.TopCtrl1
  loc_1077A46: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1077A5F: If (CStr() = "Browse") Then
  loc_1077A62:   Exit Sub
  loc_1077A63: End If
  loc_1077A76: var_A0 = CLng(Me.FGrid.Col)
  loc_1077A86: If (var_A0 = CLng(1)) Then
  loc_1077A8D:   Set var_C4 = Me.FGrid
  loc_1077AB1:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1077ADE:   Set var_B4 = var_C4
  loc_1077AF0:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1077B18:   Set var_88 = Me.TxtGrid
  loc_1077B1E:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1077B26:   0 = var_B4.Text
  loc_1077B3F:   If (Len(var_9C) <= 1) Then
  loc_1077B4E:     Set var_88 = Me.TxtGrid
  loc_1077B54:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1077B5C:     var_CA = var_B4.Text
  loc_1077B6D:     Set var_B8 = Me.TxtGrid
  loc_1077B73:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1077B7B:     var_C4.Text = var_9C
  loc_1077B8E:   End If
  loc_1077B9A:   Set var_88 = Me.TxtGrid
  loc_1077BA0:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1077BBA:   Set var_B8 = Me.TxtGrid
  loc_1077BC0:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1077BC8:   var_C4.SelStart = Len(var_B4.Text)
  loc_1077BDE: Else
  loc_1077BE5:   If Not (var_A0 = CLng(3)) Then
  loc_1077BEF:     If (var_A0 = CLng(4)) Then
  loc_1077BF2:     End If
  loc_1077C0F:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_1077C25:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1077C2D:       var_FC = CVar(CLng(4)) 'Long
  loc_1077C52:       global_164 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1077C66:     End If
  loc_1077CA4:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel)
  loc_1077CB6:   End If
  loc_1077CB6: End If
  loc_1077CC0: If (CLng(Cancel) <> &HD) Then
  loc_1077CC8:   global_110 = &HFF
  loc_1077CCB: End If
  loc_1077CCB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '105996C
  'Data Table: 4DA730
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  loc_1059704: Set var_90 = Me.TopCtrl1
  loc_105970A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1059723: If (CStr() = "Browse") Then
  loc_1059726:   Exit Sub
  loc_1059727: End If
  loc_1059744: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1059747:   Exit Sub
  loc_1059748: End If
  loc_1059759: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_105977B:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10597B5:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_10597D7:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10597ED:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10597F6:         Set var_118 = Me.FGrid
  loc_1059811:       Else
  loc_1059824:         Me.FGrid.Rows = 1
  loc_105984A:         var_A0 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_1059852:         Set var_118 = Me.FGrid
  loc_105987F:         Me.FGrid.FixedRows = 1
  loc_1059887:       End If
  loc_105988B:       Set var_90 = Me.TopCtrl1
  loc_1059891:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(FGrid.DispID_10000)
  loc_10598AA:       If (CStr(var_A0) = "Add") Then
  loc_10598D2:         For var_124 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_124 'Integer
  loc_10598DC:           var_B4 = CVar(CLng(var_86)) 'Long
  loc_10598E4:           var_E4 = CVar(CLng(0)) 'Long
  loc_10598EE:           var_A0 = CVar(CStr(var_86)) 'String
  loc_10598F6:           Set var_90 = Me.FGrid
  loc_10598FC:           LateIdCallSt
  loc_105990D:         Next var_124 'Integer
  loc_1059912:       End If
  loc_1059912:     End If
  loc_1059912:     Call Proc_262_57_FD1A70()
  loc_105991A:   Else
  loc_105993B:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_105994B:   End If
  loc_105994F:   Set var_90 = Me.FGrid
  loc_1059960: End If
  loc_1059965: Set var_8C = Nothing
  loc_1059968: Exit Sub
  loc_1059969: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40B70
  'Data Table: 4DA730
  Dim var_8C As TextBox
  loc_E40B44: Call Proc_262_52_F32818()
  loc_E40B54: Set var_88 = Me.TxtGrid
  loc_E40B5A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E40B62: var_8C.Visible = False
  loc_E40B6E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '110F3F4
  'Data Table: 4DA730
  Dim var_8C As String
  Dim var_98 As Variant
  Dim unk_4DA74E As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_C4 As TextBox
  Dim var_B8 As Variant
  loc_110F0B4: On Error Goto loc_110F3EB
  loc_110F0DA: Call Proc_262_51_F7B5B0(Proc_5_1_100EC1C("ADD", Me))
  loc_110F0E5: Call Proc_262_50_F6AD90(global_72)
  loc_110F103: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_110F10B: var_98.Text = CStr(MemVar_1F950EC)
  loc_110F130: unk_4DA74E.Execute "Select Description,V_Type From Voucher_Type Where NCat='RQS'", var_B8, -1
  loc_110F13B: Set var_88 = Me.Txt
  loc_110F158: If (var_88.RecordCount > 0) Then
  loc_110F194:   Set var_C0 = Me.Txt
  loc_110F19A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C4)
  loc_110F1A2:   var_C4.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_110F1CA:   var_90 = var_88.Fields
  loc_110F1DA:   var_B8 = var_90.Item("V_Type").Value
  loc_110F1F1:   Set var_C0 = Me.Txt
  loc_110F1F7:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C4)
  loc_110F1FF:   var_C4.Tag = CStr(var_B8)
  loc_110F215: End If
  loc_110F229: var_8C = "Select E.PurchaseGodown,G.Name as GodownName From Enviro E Left Join GodownMast G on E.PurchaseGodown=G.Code Where E.Logsite_code='" & MemVar_1F95078
  loc_110F239: unk_4DA74E.Execute var_8C & "'", var_B8, -1
  loc_110F244: Set var_88 = var_90
  loc_110F268: If (var_88.RecordCount > 0) Then
  loc_110F27A:   var_90 = var_88.Fields
  loc_110F2A1:   Set var_C0 = Me.Txt
  loc_110F2A7:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_C4)
  loc_110F2AF:   var_C4.Text = Proc_6_38_E69628(CVar(var_90.Item("GodownName")), var_90)
  loc_110F2DA:   var_98 = var_88.Fields.Item("PurchaseGodown")
  loc_110F2EB:   var_8C = Proc_6_38_E69628(CVar(var_98))
  loc_110F2F9:   Set var_C0 = Me.Txt
  loc_110F2FF:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_C4)
  loc_110F307:   var_C4.Tag = var_8C
  loc_110F31B: End If
  loc_110F321: Call Proc_262_54_114E9EC(MemVar_1F95044, var_8C)
  loc_110F32C: global_84 = var_8C
  loc_110F36D: Set var_90 = Me.Txt
  loc_110F373: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_98, CStr(Format(Time, "HH:nn")))
  loc_110F37B: var_98.Text = 1
  loc_110F39E: Set var_90 = Me.Txt
  loc_110F3A4: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_98)
  loc_110F3AC: var_98.SetFocus
  loc_110F3BD: Set var_88 = Nothing
  loc_110F3CD: Me.LblUser.Caption = vbNullString
  loc_110F3E2: Me.LblLDt.Caption = vbNullString
  loc_110F3EA: Exit Sub
  loc_110F3EB: ' Referenced from: 110F0B4
  loc_110F3EB: Proc_6_60_E63754(1)
  loc_110F3F0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB3A40
  'Data Table: 4DA730
  loc_EB39B4: On Error Goto loc_EB3A37
  loc_EB39EE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EB3A14:   Call Proc_262_51_F7B5B0(Proc_5_1_100EC1C("INI", Me))
  loc_EB3A1F:   Call Proc_262_48_159A4CC(global_72)
  loc_EB3A2A:   global_124 = vbNullString
  loc_EB3A33:   global_112 = 0
  loc_EB3A36: End If
  loc_EB3A36: Exit Sub
  loc_EB3A37: ' Referenced from: EB39B4
  loc_EB3A37: Proc_6_60_E63754(global_112)
  loc_EB3A3C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10EC0E4
  'Data Table: 4DA730
  Dim var_9C As Variant
  Dim unk_4DA74E As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A0 As String
  Dim var_C8 As Variant
  loc_10EBDE0: On Error Goto loc_10EC093
  loc_10EBDF1: If (Proc_183_56_FE8B08(global_72) = &HFF) Then
  loc_10EBDF4:   Exit Sub
  loc_10EBDF5: End If
  loc_10EBE22: Set var_98 = Me.Txt
  loc_10EBE28: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_9C, var_A0, "Select count(*) from Stock where ContraDocid='", var_C8, -1)
  loc_10EBE30: var_CC = var_9C.Text
  loc_10EBE49: unk_4DA74E.Execute var_D0 & var_A0 & "'", 0, var_E4
  loc_10EBE51: var_F4 = var_CC.Fields
  loc_10EBE59:  = var_D0.Item()
  loc_10EBE61:  = var_E4.Value
  loc_10EBE8E: If (var_F4 > 0) Then
  loc_10EBEAA:   MsgBox("Related Record Exist in Stock Issue Entry", &H40, var_F4, var_114, var_134)
  loc_10EBEBA:   Exit Sub
  loc_10EBEBB: End If
  loc_10EBEF2: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_114, var_134) = 6) Then
  loc_10EBEFE:   unk_4DA74E.BeginTrans var_138
  loc_10EBF14:   var_94 = Me.Bookmark 'Variant
  loc_10EBF6E:   unk_4DA74E.Execute CStr("Delete From Indent Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_10EBFD2:   var_114 = "Delete From Indent1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10EBFD6:   var_A0 = CStr(var_114)
  loc_10EBFE0:   unk_4DA74E.Execute var_A0, var_134, -1
  loc_10EC002:   unk_4DA74E.CommitTrans
  loc_10EC012:   Me.Requery -1
  loc_10EC032:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10EC03F:     Me.Bookmark = var_94
  loc_10EC047:   Else
  loc_10EC05B:     If (Me.EOF = 0) Then
  loc_10EC064:       Me.MoveLast
  loc_10EC069:     End If
  loc_10EC069:   End If
  loc_10EC069:   Call Proc_262_48_159A4CC(var_CC)
  loc_10EC08A:   Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_10EC092: End If
  loc_10EC092: Exit Sub
  loc_10EC093: ' Referenced from: 10EBDE0
  loc_10EC099: unk_4DA74E.RollbackTrans
  loc_10EC0A6: Set var_98 = Err()
  loc_10EC0AC: Call 0.Method_arg_2C (var_A0, 0)
  loc_10EC0CD: MsgBox(CVar(var_A0), &H10, " Deletion Message", var_114, var_134)
  loc_10EC0E0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA1C88
  'Data Table: 4DA730
  Dim var_8C As TextBox
  Dim unk_4DA74E As Connection15
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  Dim var_88 As Label
  loc_FA1B24: On Error Goto loc_FA1C82
  loc_FA1B35: If (Proc_183_55_FE8490(global_72) = &HFF) Then
  loc_FA1B38:   Exit Sub
  loc_FA1B39: End If
  loc_FA1B66: Set var_88 = Me.Txt
  loc_FA1B6C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_8C, var_90, "Select count(*) from Stock where ContraDocid='", var_B8, -1)
  loc_FA1B8D: unk_4DA74E.Execute var_C0 & var_90 & "'", 0, var_D4
  loc_FA1B95: var_E4 = var_8C.Text.Fields
  loc_FA1B9D:  = var_C0.Item()
  loc_FA1BA5:  = var_D4.Value
  loc_FA1BD2: If (var_E4 > 0) Then
  loc_FA1BEE:   MsgBox("Related Record Exist in Stock Issue Entry", &H40, var_E4, var_104, var_124)
  loc_FA1BFE:   Exit Sub
  loc_FA1BFF: End If
  loc_FA1C22: Call Proc_262_51_F7B5B0(Proc_5_1_100EC1C("EDIT", Me))
  loc_FA1C38: Set var_88 = Me.Txt
  loc_FA1C3E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_8C)
  loc_FA1C46: var_8C.SetFocus
  loc_FA1C52: Call Proc_262_56_E8A83C(global_72)
  loc_FA1C57: Exit Sub
  loc_FA1C65: Me.LblUser.Caption = vbNullString
  loc_FA1C7A: Me.LblLDt.Caption = vbNullString
  loc_FA1C82: ' Referenced from: FA1B24
  loc_FA1C82: Proc_6_60_E63754()
  loc_FA1C87: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E165A0
  'Data Table: 4DA730
  Dim var_4701 As Double
  loc_E16595: Me.Global.Unload Me
  loc_E1659D: Exit Sub
  loc_E1659E: var_4701 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC7F30
  'Data Table: 4DA730
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EC7E90: On Error Goto loc_EC7F28
  loc_EC7EAA: If (Me.RecordCount <= 0) Then
  loc_EC7EB3:   var_B8 = "Information"
  loc_EC7ECE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC7EDE:   Exit Sub
  loc_EC7EDF: End If
  loc_EC7EE6: var_10C = "SELECT I.DocId AS SearchCode, Convert(Varchar(10),I.VNo) as SlipNo, Convert(Varchar(12),I.VDate,103) as SlipDate, I.VTime, GodownMast.Name as Department, G1.Name as Godown, I.Remarks FROM Indent AS I INNER JOIN GodownMast ON I.Department = GodownMast.Code LEFT JOIN GodownMast G1 ON I.Godown = G1.Code Where I.Logsite_Code='" & MemVar_1F95078
  loc_EC7EED: MemVar_1F950E4 = var_10C & "' and VType in (Select V_Type from Voucher_Type Where NCAT='RQS' ) Order By I.Vno"
  loc_EC7EFD: Proc_6_126_F1C850("800,1100,800,2500,2500,2500")
  loc_EC7F0B: MemVar_1F95120 = Me
  loc_EC7F22: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC7F27: Exit Sub
  loc_EC7F28: ' Referenced from: EC7E90
  loc_EC7F28: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC7F2D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2E328
  'Data Table: 4DA730
  loc_E2E318: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E320: Call Proc_262_48_159A4CC(global_72)
  loc_E2E325: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2E2C8
  'Data Table: 4DA730
  loc_E2E2B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E2C0: Call Proc_262_48_159A4CC(global_72)
  loc_E2E2C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2E268
  'Data Table: 4DA730
  loc_E2E258: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E260: Call Proc_262_48_159A4CC(global_72)
  loc_E2E265: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2E208
  'Data Table: 4DA730
  loc_E2E1F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E200: Call Proc_262_48_159A4CC(global_72)
  loc_E2E205: Exit Sub
  loc_E2E206: Set var_4800 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1079F58
  'Data Table: 4DA730
  Dim var_DC As String
  Dim var_B8 As Variant
  Dim Me As Recordset15
  Dim var_A8 As Fields15
  Dim var_BC As Field20
  Dim var_FC As String
  Dim var_10C As Variant
  Dim unk_4DA74E As Connection15
  Dim var_9C As Recordset15
  Dim var_114 As String
  Dim var_12A As Integer
  loc_1079CD8: On Error Goto loc_1079F4F
  loc_1079CDB: var_DC = "SELECT DISTINCT I1.VTime, I1.DocId, I1.VDate, I1.Remarks, G.Name AS Location, G.Code AS LocationCode, I1.VNo, I1.Vtype, I1.Vprefix, ItemMast.Name, Indent1.Qty, Indent1.Unit, Indent1.Sno, G1.Name AS Godown, G1.Code AS GodownCode,Indent1.Rate,Indent1.Amount FROM Indent AS I1 LEFT JOIN Indent1 ON I1.DocId = Indent1.DocId Left Join GodownMast G ON G.Code = I1.Department Left Join GodownMast G1 ON G1.Code = I1.Godown LEFT JOIN ItemMast ON Indent1.Item = ItemMast.Code And ItemMast.ItemType='Store' Where I1.DocID='"
  loc_1079CF5: var_A8 = Me.Fields
  loc_1079CFD: var_BC = var_A8.Item("DocID")
  loc_1079D05: var_CC = var_BC.Value
  loc_1079D11: var_FC = "' Order By Indent1.Sno"
  loc_1079D16: var_10C = var_DC & var_CC & var_FC 
  loc_1079D1B: var_88 = CStr(var_10C)
  loc_1079D36: If (var_88 = vbNullString) Then
  loc_1079D39:   Exit Sub
  loc_1079D3A: End If
  loc_1079D50: unk_4DA74E.Execute var_88, var_CC, -1
  loc_1079D5B: Set var_9C = var_A8
  loc_1079D6A: var_110 = var_9C.RecordCount
  loc_1079D78: If (var_110 <= 0) Then
  loc_1079D81:   Call 0.Method_arg_50 (var_114)
  loc_1079DA2:   MsgBox("** No Records Found to Print **", &H40, CVar(var_114), var_10C, var_124)
  loc_1079DB2:   Exit Sub
  loc_1079DB3: End If
  loc_1079DC9: Set var_A8 = var_9C 
  loc_1079DD5: var_12A = CreateFieldDefFile(var_A8, MemVar_1F950B4 & "\Requisition.ttx")
  loc_1079DDF: Set var_9C = var_A8
  loc_1079DE5: var_B8 = CVar(var_12A) 'Integer
  loc_1079DE8: var_98 = var_B8 'Variant
  loc_1079E04: var_114 = MemVar_1F950B4 & "\Requisition.RPT"
  loc_1079E0D: Call 0.Method_arg_1C (var_114, var_B8, var_A8)
  loc_1079E18: MemVar_1F951E8 = var_A8
  loc_1079E33: Call 0.Method_arg_90 (var_A8, var_110, var_9E, 1)
  loc_1079E3B: Call 0.Method_arg_24 (var_12A, &HFF)
  loc_1079E47: For var_12E =  To CInt(var_110): var_A8 = var_12E 'Integer
  loc_1079E60:   Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_1079E68:   Call 0.Method_arg_20 (var_BC)
  loc_1079E70:   Call 0.Method_arg_30 (var_114)
  loc_1079E8A:   If (var_114 = "Title") Then
  loc_1079EA0:     Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_1079EA8:     Call 0.Method_arg_20 (var_BC)
  loc_1079EB0:     Call 0.Method_arg_38 ("'Requisition Slip'")
  loc_1079EBC:   End If
  loc_1079EBF: Next var_12E 'Integer
  loc_1079EDD: Call 0.Method_arg_64 (var_A8, CVar(var_9C))
  loc_1079EE5: Call 0.Method_arg_2C (var_DC)
  loc_1079EF3: Call 0.Method_arg_150 (var_FC)
  loc_1079EFE: Call 0.Method_arg_50 (var_114)
  loc_1079F08: Set var_BC = Nothing
  loc_1079F22: Set var_A8 = MemVar_1F951E8 
  loc_1079F2E: Proc_6_99_1484404(var_A8, 0, var_114)
  loc_1079F39: MemVar_1F951E8 = var_A8
  loc_1079F4C: Set var_9C = Nothing
  loc_1079F4F: ' Referenced from: 1079CD8
  loc_1079F4F: Proc_6_60_E63754(&HFF)
  loc_1079F54: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E56A04
  'Data Table: 4DA730
  Dim Me As Recordset15
  loc_E569CB: Me.Requery -1
  loc_E569DB: Me.Requery -1
  loc_E569EB: Me.Requery -1
  loc_E569FB: Me.Requery -1
  loc_E56A00: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15AB7EC
  'Data Table: 4DA730
  Dim var_BC As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_B8 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_C4 As String
  Dim var_15C As String
  Dim unk_4DA74E As Connection15
  Dim var_C0 As Variant
  Dim var_164 As Variant
  Dim var_168 As Variant
  Dim Me As Variant
  Dim var_8E As Integer
  Dim var_5C4 As Double
  Dim var_198 As TextBox
  Dim var_1D0 As Label
  Dim var_24C As Variant
  Dim var_298 As Variant
  Dim var_2E4 As TextBox
  Dim var_330 As Variant
  Dim var_37C As TextBox
  Dim var_3D8 As TextBox
  Dim var_178 As String
  Dim var_17C As String
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_204 As Variant
  Dim var_244 As Variant
  Dim var_270 As Variant
  Dim var_2CC As Variant
  Dim var_354 As Variant
  Dim var_374 As Variant
  Dim var_3B0 As Variant
  Dim var_40C As Variant
  Dim var_534 As Variant
  Dim var_194 As TextBox
  Dim var_248 As MSHFlexGrid
  Dim var_840 As Double
  Dim var_294 As MSHFlexGrid
  Dim var_848 As Double
  Dim var_2E0 As MSHFlexGrid
  Dim var_850 As Double
  Dim var_32C As MSHFlexGrid
  Dim var_4C0 As Variant
  Dim var_794 As Variant
  Dim var_7B4 As Variant
  Dim var_378 As MSHFlexGrid
  Dim var_170 As String
  Dim var_19C As String
  Dim var_5DC As String
  Dim var_5B8 As Variant
  Dim var_814 As Variant
  Dim var_88 As Recordset15
  loc_15AA730: On Error Goto loc_15AB7D1
  loc_15AA73E: Set var_B8 = Me.Txt
  loc_15AA744: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_15AA76D: If (Proc_6_27_EA61EC(var_BC, "Invoice Date") = 0) Then
  loc_15AA770:   Exit Sub
  loc_15AA771: End If
  loc_15AA77C: Set var_B8 = Me.Txt
  loc_15AA782: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_BC)
  loc_15AA7AB: If (Proc_6_27_EA61EC(var_BC, "Invoice No") = 0) Then
  loc_15AA7AE:   Exit Sub
  loc_15AA7AF: End If
  loc_15AA7B2: Call Proc_262_49_108FA58(var_C6)
  loc_15AA7BD: If (var_C6 = 0) Then
  loc_15AA7C0:   Exit Sub
  loc_15AA7C1: End If
  loc_15AA7CC: Set var_B8 = Me.TxtGrid
  loc_15AA7D2: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_BC)
  loc_15AA7DA: var_BC.Visible = False
  loc_15AA7E6: Call Proc_262_52_F32818(var_BC)
  loc_15AA7EB: var_D8 = 1
  loc_15AA7F4: var_F8 = 1
  loc_15AA812: var_128 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15AA818: var_138 = Trim(var_128)
  loc_15AA834: If (var_138 = vbNullString) Then
  loc_15AA84A:   var_118 = "Item Detail Required "
  loc_15AA850:   MsgBox(var_118, 0, var_128, var_138, var_158)
  loc_15AA873:   Me.FGrid.Row = 1
  loc_15AA87F:   Set var_B8 = Me.FGrid
  loc_15AA894:   var_D8 = CVar(CLng("14737632")) 'Long
  loc_15AA8A3:   Me.FGrid.CellBackColor = var_D8
  loc_15AA8AB:   Exit Sub
  loc_15AA8AC: End If
  loc_15AA8AF: Call Proc_262_55_1011DD4(var_C6, FGrid.DispID_8001)
  loc_15AA8BA: If (var_C6 = 0) Then
  loc_15AA8C8:   Set var_B8 = Me.Txt
  loc_15AA8CE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC)
  loc_15AA8D6:   var_BC.SetFocus
  loc_15AA8E2:   Exit Sub
  loc_15AA8E3: End If
  loc_15AA8E7: Set var_B8 = Me.TopCtrl1
  loc_15AA8ED: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F8)
  loc_15AA8F5: var_C4 = CStr(var_D8)
  loc_15AA906: If (var_C4 = "Add") Then
  loc_15AA936:   Set var_B8 = Me.Txt
  loc_15AA93C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC, var_C4, "Select Count(*) From INDENT1 Where DocID='", var_118, -1)
  loc_15AA944:   var_C0 = var_BC.Text
  loc_15AA95D:   unk_4DA74E.Execute var_164 & var_C4 & "'", 0, var_168
  loc_15AA96D:    = var_164.Item()
  loc_15AA975:    = var_168.Value
  loc_15AA9A2:   If (var_C0.Fields > 0) Then
  loc_15AA9AB:     Call Proc_262_54_114E9EC(MemVar_1F95044)
  loc_15AA9BE:     Set var_B8 = Me.Txt
  loc_15AA9C4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC)
  loc_15AA9CC:     var_BC.Text = var_C4
  loc_15AA9FA:     Set var_B8 = Me.Txt
  loc_15AAA00:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_BC, var_C4, "Requisition Slip No has Changed to :", 0)
  loc_15AAA08:     var_128 = var_BC.Text
  loc_15AAA14:     MsgBox(CVar(var_138 & var_C4), var_158, var_C4, , )
  loc_15AAA2E:   End If
  loc_15AAA31: Else
  loc_15AAA4E:   var_BC = Me.Fields.Item("DocID")
  loc_15AAA5F:   var_C4 = CStr(var_BC.Value)
  loc_15AAA65:   global_84 = var_C4
  loc_15AAA76: End If
  loc_15AAA84: unk_4DA74E.BeginTrans var_16C
  loc_15AAAA7: Set var_B8 = Me.Txt
  loc_15AAAAD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC, var_C4, "Delete From INDENT Where DocID='")
  loc_15AAAB5: var_118 = var_BC.Text
  loc_15AAABE: var_15C = -1 & var_C4
  loc_15AAACE: unk_4DA74E.Execute var_164 & var_C4 & "'", var_C0, &HFF
  loc_15AAB06: Set var_B8 = Me.Txt
  loc_15AAB0C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC, var_C4, "Delete From INDENT1 Where DocID='")
  loc_15AAB14: var_118 = var_BC.Text
  loc_15AAB1D: var_15C = -1 & var_C4
  loc_15AAB2D: unk_4DA74E.Execute var_164 & var_C4 & "'", var_C0, 
  loc_15AAB55: Set var_B8 = Me.Txt
  loc_15AAB5B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC)
  loc_15AAB76: Set var_C0 = Me.Txt
  loc_15AAB7C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_164)
  loc_15AAB91: var_5C4 = Val(var_164.Text)
  loc_15AAB9F: Set var_168 = Me.Txt
  loc_15AABA5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_180)
  loc_15AABB4: Proc_6_7_F26918(var_128, CVar(var_180))
  loc_15AABC7: Set var_194 = Me.Txt
  loc_15AABCD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_198)
  loc_15AABE1: Set var_1D0 = Me.LblVPrefix
  loc_15AABFA: Set var_248 = Me.Txt
  loc_15AAC00: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_24C)
  loc_15AAC1B: Set var_294 = Me.Txt
  loc_15AAC21: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_298)
  loc_15AAC3C: Set var_2E0 = Me.Txt
  loc_15AAC42: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2E4)
  loc_15AAC4A: var_2E8 = var_2E4.Text
  loc_15AAC5D: Set var_32C = Me.Txt
  loc_15AAC63: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_330)
  loc_15AAC7E: Set var_378 = Me.Txt
  loc_15AAC84: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_37C)
  loc_15AACAD: Set var_3D4 = Me.Txt
  loc_15AACB3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_3D8)
  loc_15AACD1: Proc_6_104_ED68A8(var_47C)
  loc_15AACDA: Set var_4B0 = Me.TopCtrl1
  loc_15AACE0: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_5C4)
  loc_15AACEE: var_514 = "E"
  loc_15AAD2B: var_15C = "Insert Into INDENT(Docid,VNo,VDate,VType,VPrefix,Site_Code,Department,Godown,vtime,Remarks,Company,RefDocId,U_Name,U_EntDt,U_AE,LogSite_Code) Values (" & "'"
  loc_15AAD41: var_178 = CStr(var_5C4)
  loc_15AAD81: var_204 = CVar(var_15C & var_BC.Text & "'," & var_178 & ",") & var_128 & ",'" & CVar(var_198.Tag) & "','" & CVar(var_1D0.Caption) & "','" 
  loc_15AADE0: var_354 = var_204 & CVar(MemVar_1F95070) & "'," & "'" & CVar(var_24C.Tag) & "','" & CVar(var_298.Tag) & "','" & CVar(var_2E8) & "','" & CVar(var_330.Text) 
  loc_15AADE9: var_374 = var_354 & "','" 
  loc_15AADF3: var_3B0 = var_374 & CVar(Proc_6_38_E69628(CVar(var_37C.Tag))) 
  loc_15AAE39: var_534 = var_3B0 & "','" & CVar(Proc_6_38_E69628(CVar(var_3D8.Tag))) & "','" & CVar(MemVar_1F950C8) & "'," & var_47C & ",'" & IIf((CStr(var_4C0) = "Add"), "A", var_514) 
  loc_15AAE63: unk_4DA74E.Execute CStr(var_534 & "','" & CVar(MemVar_1F95078) & "')"), var_5B8, -1
  loc_15AAF3A: For var_5D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_5D0 'Integer
  loc_15AAF44:   var_D8 = CVar(CLng(var_98)) 'Long
  loc_15AAF4C:   var_F8 = CVar(CLng(1)) 'Long
  loc_15AAF66:   var_128 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15AAF93:   Set var_BC = Me.FGrid
  loc_15AAFD2:   If CBool(CVar(CLng(3)) And (CDbl(Val(CStr(var_BC.TextMatrix)))) <> CDbl(0))) Then
  loc_15AAFE3:     Set var_B8 = Me.Txt
  loc_15AAFE9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC, var_178, CVar(CLng(var_98)), (Trim(var_128) <> vbNullString))
  loc_15AAFF1:     var_F8 = var_BC.Text
  loc_15AB004:     Set var_C0 = Me.Txt
  loc_15AB00A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_164, var_2E8)
  loc_15AB012:     var_D8 = var_164.Tag
  loc_15AB01E:     Set var_168 = Me.LblVPrefix
  loc_15AB037:     Set var_180 = Me.Txt
  loc_15AB03D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_194, var_5D8)
  loc_15AB045:     1 = var_194.Text
  loc_15AB060:     Set var_198 = Me.Txt
  loc_15AB066:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1D0)
  loc_15AB075:     Proc_6_7_F26918(var_128, CVar(var_1D0))
  loc_15AB07E:     var_F8 = CVar(CLng(var_98)) 'Long
  loc_15AB086:     var_148 = CVar(CLng(7)) 'Long
  loc_15AB0A5:     var_2CC = CVar(CLng(var_98)) 'Long
  loc_15AB0CF:     var_840 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15AB0ED:     var_244 = Me.FGrid.TextMatrix)
  loc_15AB127:     var_848 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15AB158:     var_850 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15AB15E:     Proc_6_104_ED68A8(var_374, var_850, CVar(CLng(9)), CVar(CLng(var_98)), var_848, CVar(CLng(8)), CVar(CLng(var_98)), var_244)
  loc_15AB167:     Set var_2E4 = Me.TopCtrl1
  loc_15AB16D:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(2)))
  loc_15AB1D0:     Proc_6_39_E7D3A0(var_47C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_98)), CVar(CLng(var_98)), var_840)
  loc_15AB201:     Proc_6_39_E7D3A0(var_514, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_98)), CVar(CLng(3)))
  loc_15AB20A:     var_794 = CVar(CLng(var_98)) 'Long
  loc_15AB212:     var_7B4 = CVar(CLng(6)) 'Long
  loc_15AB256:     var_170 = "Insert Into INDENT1(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate," & "Item,Qty,Unit,Rate,Amount," & "U_Name,U_EntDt,U_AE,ConvFactor,WtQty,WtUnit,LogSite_Code) "
  loc_15AB264:     var_17C = var_170 & "Values(" & "'"
  loc_15AB2B6:     var_5DC = var_17C & var_178 & "'," & CStr(var_98) & ",'" & var_2E8 & "','" & var_168.Caption & "','" & MemVar_1F95070 & "'," & vbNullString
  loc_15AB2E9:     var_1CC = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15AB314:     var_270 = CVar(var_5DC & CStr(Val(var_5D8)) & ",") & var_128 & "," & "'" & var_1CC & "'," & CVar(var_840) & ",'" & CVar(CStr(var_244)) 
  loc_15AB36F:     var_40C = var_270 & "'," & CVar(var_848) & "," & CVar(var_850) & ",'" & CVar(MemVar_1F950C8) & "'," & var_374 & ",'" & IIf((CStr(var_3B0) = "Add"), "A", "E") 
  loc_15AB3BF:     var_814 = var_40C & "'," & var_47C & "," & var_514 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_15AB3CD:     unk_4DA74E.Execute CStr(var_814), var_838, -1
  loc_15AB4A1:   End If
  loc_15AB4A4: Next var_5D0 'Integer
  loc_15AB4AD: Set var_B8 = Me.TopCtrl1
  loc_15AB4B3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15AB4CC: If (CStr() = "Add") Then
  loc_15AB4E3:   var_C4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_15AB509:   Set var_B8 = Me.Txt
  loc_15AB50F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_BC, var_170, var_C4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='")
  loc_15AB517:   var_1AC = var_BC.Tag
  loc_15AB520:   var_178 = -1 & var_170
  loc_15AB527:   var_138 = CVar(var_178 & "' And VP.Date_From<=") 'String
  loc_15AB538:   Set var_C0 = Me.Txt
  loc_15AB53E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_164, var_17C)
  loc_15AB546:   var_138 = var_164.Text
  loc_15AB554:   Proc_6_7_F26918(var_128, CVar(var_17C))
  loc_15AB573:   unk_4DA74E.Execute CStr(var_168 & var_128 & " Order By VP.Date_From DESC"), , 
  loc_15AB57E:   Set var_88 = var_168
  loc_15AB5C2:   If (var_88.RecordCount > 0) Then
  loc_15AB5D3:     Set var_B8 = Me.Txt
  loc_15AB5D9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_BC)
  loc_15AB5E1:     var_C4 = var_BC.Text
  loc_15AB5EE:     var_5C4 = Val(var_C4)
  loc_15AB5F7:     var_D8 = "V_Type"
  loc_15AB63E:     Proc_6_7_F26918(var_1AC, CVar(var_88.Fields.Item("Date_From")))
  loc_15AB671:     var_178 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_5C4) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_15AB699:     var_19C = CStr(CVar(var_178 & MemVar_1F95078 & "') and V_Type='") & var_88.Fields.Item(var_D8).Value & "' and Date_From=" & var_1AC)
  loc_15AB6A3:     unk_4DA74E.Execute var_19C, var_1CC, -1
  loc_15AB6DD:   End If
  loc_15AB6DD: End If
  loc_15AB6E3: unk_4DA74E.CommitTrans
  loc_15AB6EA: var_8E = 0
  loc_15AB6FB: Set var_B8 = Me.Txt
  loc_15AB701: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC, var_C4)
  loc_15AB709: var_8E = var_BC.Text
  loc_15AB71D: var_8E = 0
  loc_15AB72B: Me.Requery -1
  loc_15AB755: Me.Find "SearchCode ='" & "SearchCode ='" & var_C4 & "'", 0, 1
  loc_15AB765: Set var_B8 = Me.TopCtrl1
  loc_15AB76B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D8)
  loc_15AB784: If (CStr(var_8E) = "Add") Then
  loc_15AB787:   Call TopCtrl1_UnknownEvent_A()
  loc_15AB78C:   Exit Sub
  loc_15AB78D: End If
  loc_15AB7B0: Call Proc_262_51_F7B5B0(Proc_5_1_100EC1C("INI", Me, global_72), var_194)
  loc_15AB7BB: Call Proc_262_48_159A4CC(var_5C4)
  loc_15AB7C5: global_112 = 0
  loc_15AB7CD: Set var_88 = Nothing
  loc_15AB7D0: Exit Sub
  loc_15AB7D1: ' Referenced from: 15AA730
  loc_15AB7D7: If (var_8E = &HFF) Then
  loc_15AB7E0:   unk_4DA74E.RollbackTrans
  loc_15AB7E5: End If
  loc_15AB7E5: Proc_6_60_E63754(global_112)
  loc_15AB7EA: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A4348
  'Data Table: 4DA730
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_10A4093: Me.DGItem.Visible = False
  loc_10A40B2: If (Me.RecordCount > 0) Then
  loc_10A40EF:   Set var_B4 = Me.TxtGrid
  loc_10A40F5:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A40FD:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10A4126:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A412E:   var_EC = CVar(CLng(1)) 'Long
  loc_10A4161:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A4169:   Set var_B8 = Me.FGrid
  loc_10A416F:   LateIdCallSt
  loc_10A419E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A41A6:   var_EC = CVar(CLng(7)) 'Long
  loc_10A41D9:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A41E1:   Set var_B8 = Me.FGrid
  loc_10A41E7:   LateIdCallSt
  loc_10A4216:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A421E:   var_EC = CVar(CLng(2)) 'Long
  loc_10A4251:   var_11C = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_10A4259:   Set var_B8 = Me.FGrid
  loc_10A425F:   LateIdCallSt
  loc_10A428E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A4296:   var_EC = CVar(CLng(6)) 'Long
  loc_10A42B8:   var_B0 = Me.Fields.Item("IssueUnit")
  loc_10A42C9:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_10A42D1:   Set var_B8 = Me.FGrid
  loc_10A42D7:   LateIdCallSt
  loc_10A42F3: End If
  loc_10A42FF: Set var_A8 = Me.TxtGrid
  loc_10A4305: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_10A430D: var_B8 = var_B0.Visible
  loc_10A431F: If (var_12E = &HFF) Then
  loc_10A432B:   Set var_A8 = Me.TxtGrid
  loc_10A4331:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_11C, var_EC)
  loc_10A4339:   var_B0.SetFocus
  loc_10A4345: End If
  loc_10A4345: Exit Sub
End Sub

Private Sub Form_Load() '1327E20
  'Data Table: 4DA730
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As Variant
  Dim var_88 As Variant
  Dim var_CC As String
  Dim var_D0 As String
  Dim unk_4DA74E As Connection15
  Dim Me As Recordset15
  Dim var_E0 As Variant
  loc_1327684: On Error Goto loc_1327E18
  loc_1327695: Set var_88 = Me.Txt
  loc_132769B: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_13276BA: Me.DGDepart.Left = CVar(var_8C.Left)
  loc_13276D6: Set var_B4 = Me.Txt
  loc_13276DC: Call 0.Method_Form_Load0 (CInt(4), var_B8)
  loc_13276F7: Set var_88 = Me.Txt
  loc_13276FD: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1327715: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1327724: Me.DGDepart.Top = CVar(var_8C.Left)
  loc_1327744: Set var_88 = Me.Txt
  loc_132774A: Call 0.Method_Form_Load0 (CInt(9), var_8C)
  loc_1327769: Me.DGGodown.Left = CVar(var_8C.Left)
  loc_1327785: Set var_B4 = Me.Txt
  loc_132778B: Call 0.Method_Form_Load0 (CInt(9), var_B8)
  loc_13277A6: Set var_88 = Me.Txt
  loc_13277AC: Call 0.Method_Form_Load0 (CInt(9), var_8C)
  loc_13277C4: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13277CD: Set var_C0 = Me.DGGodown
  loc_13277D3: var_C0.Top = CVar(var_8C.Left)
  loc_13277F3: Set var_8C = Me.Txt
  loc_13277F9: Call 0.Method_Form_Load0 (CInt(&HA), var_B4)
  loc_132781F: var_A0 = CVar((Me.FrBanq.Left + var_B4.Left)) 'Single
  loc_132782E: Me.DGBookNo.Left = CVar(var_8C.Left)
  loc_132784C: Set var_8C = Me.Txt
  loc_1327852: Call 0.Method_Form_Load0 (CInt(&HA), var_B4)
  loc_132786D: Set var_B8 = Me.Txt
  loc_1327873: Call 0.Method_Form_Load0 (CInt(&HA), var_C0)
  loc_13278A1: var_A0 = CVar((((Me.FrBanq.Top + var_B4.Top) + var_C0.Height) + CDbl(&H1E))) 'Single
  loc_13278B0: Me.DGBookNo.Top = CVar(var_8C.Left)
  loc_13278D2: Set var_88 = Me.Txt
  loc_13278D8: Call 0.Method_Form_Load0 (CInt(7), var_8C)
  loc_13278F7: Me.DGCompany.Left = CVar(var_8C.Left)
  loc_1327913: Set var_B4 = Me.Txt
  loc_1327919: Call 0.Method_Form_Load0 (CInt(7), var_B8)
  loc_132793A: Call 0.Method_Form_Load0 (CInt(7), var_8C)
  loc_1327952: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1327961: Me.DGCompany.Top = CVar(var_8C.Left)
  loc_132798E: var_D0 = "Select ReqCompWise,BanquetKitchen,DateEditableOnRequisitionYN from Enviro Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')"
  loc_1327997: unk_4DA74E.Execute var_D0, var_E0, -1
  loc_13279A8: Set global_172 = Me.Txt
  loc_13279EE: global_176 = Proc_6_38_E69628(CVar(Me.Fields.Item("ReqCompWise")))
  loc_1327A2C: global_116 = Proc_6_38_E69628(CVar(Me.Fields.Item("BanquetKitchen")))
  loc_1327A53: var_8C = Me.Fields.Item("DateEditableOnRequisitionYN")
  loc_1327A6A: global_120 = Proc_6_38_E69628(CVar(var_8C))
  loc_1327A82: If (global_176 <> "Yes") Then
  loc_1327A92:   Set var_88 = Me.Txt
  loc_1327A98:   Call 0.Method_Form_Load0 (CInt(7), var_8C)
  loc_1327AA0:   var_8C.Visible = False
  loc_1327AB7:   Set var_88 = Me.Label1
  loc_1327ABD:   Call 0.Method_Form_Load0 (4, var_8C)
  loc_1327AC5:   var_8C.Visible = False
  loc_1327AD1: End If
  loc_1327ADB: Set global_56 = New 
  loc_1327AED: Me.CursorLocation = 3
  loc_1327B10: var_CC = "Select Code,I.Name as Name ,I.IssueUnit,I.Convratio,I.Unit,Case When I.LPurRate=0 Then I.PurchRate Else I.LPurRate End as Rate From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1327B21: Me.Open CVar(var_CC & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by Name"), CVar(MemVar_1F95044), 3
  loc_1327B35: CVarUnk
  loc_1327B3A: VerifyVarObj
  loc_1327B40: Set var_88 = Me.DGItem
  loc_1327B46: LateIdStAd
  loc_1327B5E: Set global_60 = New 
  loc_1327B70: Me.DGItem.CursorLocation = 3
  loc_1327B9A: var_E0 = CVar("Select Code,D.Name as Name From GodownMast D Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1327BA4: Me.Open var_E0, CVar(MemVar_1F95044), 3
  loc_1327BB8: CVarUnk
  loc_1327BBD: VerifyVarObj
  loc_1327BC3: Set var_88 = Me.DGDepart
  loc_1327BC9: LateIdStAd
  loc_1327BE1: Set global_64 = New 
  loc_1327BF3: Me.DGDepart.CursorLocation = 3
  loc_1327C1D: var_E0 = CVar("Select Code,D.Name as Name From GodownMast D Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1327C27: Me.Open var_E0, CVar(MemVar_1F95044), 3
  loc_1327C3B: CVarUnk
  loc_1327C40: VerifyVarObj
  loc_1327C46: Set var_88 = Me.DGGodown
  loc_1327C4C: LateIdStAd
  loc_1327C65: If (global_176 = "Yes") Then
  loc_1327C72:   Set global_68 = New 
  loc_1327C84:   Me.DGGodown.CursorLocation = 3
  loc_1327CA7:   var_CC = "Select Sub.Subcode as Code, Sub.Name from Subgroup Sub Inner Join Acgroup AcG On Sub.Groupcode=AcG.Groupcode where AcG.GroupName='SUNDRY DEBTORS' and Sub.CompanyType='Corporate' and (Sub.LOGSITE_CODE='" & MemVar_1F95078
  loc_1327CB8:   Me.Open CVar(var_CC & "' or Sub.LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F95044), 3
  loc_1327CCC:   CVarUnk
  loc_1327CD1:   VerifyVarObj
  loc_1327CD7:   Set var_88 = Me.DGCompany
  loc_1327CDD:   LateIdStAd
  loc_1327CEB: End If
  loc_1327D07: Me.CursorLocation = 3
  loc_1327D31: var_E0 = CVar("Select Distinct I.Docid as SearchCode,I.DocID,LogSite_Code,Site_Code From Indent I Where I.LOGSITE_CODE='" & MemVar_1F95078 & "' AND  VType in (Select V_Type from Voucher_Type Where NCAT='RQS' ) Order by Docid") 'String
  loc_1327D3B: Me.Open var_E0, CVar(MemVar_1F95044), 3
  loc_1327D69: Call Proc_262_51_F7B5B0(Proc_5_1_100EC1C("INI", Me, New, 1, -1, Me, global_68, 1), -1, Me, global_64)
  loc_1327D83: Me.LblUser.Left = CDbl(13500)
  loc_1327D9A: Me.LblUser.Top = CDbl(7800)
  loc_1327DB1: Me.LblLDt.Top = CDbl(8160)
  loc_1327DC8: Me.LblLDt.Left = CDbl(13500)
  loc_1327DD7: Call 0.Method_arg_64 (CLng(MemVar_1F951B4), 1, -1)
  loc_1327DEA: Me.FrBanq.BackColor = CLng(MemVar_1F951B4)
  loc_1327DFF: Set var_88 = Me.FGrid
  loc_1327E05: var_88.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1327E0D: Call Proc_262_45_11FEBDC(var_88)
  loc_1327E12: Call Proc_262_48_159A4CC(global_60)
  loc_1327E17: Exit Sub
  loc_1327E18: ' Referenced from: 1327684
  loc_1327E18: Proc_6_60_E63754()
  loc_1327E1D: Exit Sub
End Sub

Private Sub Form_Resize() 'ED5418
  'Data Table: 4DA730
  Dim var_8C As Label
  loc_ED5376: Call 0.Method_arg_50 (var_88)
  loc_ED5388: Me.LblFormCaption.Caption = var_88
  loc_ED53A1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED53AD: Set var_A0 = Me.TopCtrl1
  loc_ED53B3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED53C0: Set var_8C = Me.TopCtrl1
  loc_ED53C6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED53E0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED53FB: Call 0.Method_arg_100 (var_B8)
  loc_ED540D: Me.LblFormCaption.Width = var_B8
  loc_ED5415: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E99644
  'Data Table: 4DA730
  loc_E995C7: Set global_56 = Nothing
  loc_E995D9: Set global_76 = Nothing
  loc_E995EB: Set global_68 = Nothing
  loc_E995FD: Set global_60 = Nothing
  loc_E9960F: Set global_64 = Nothing
  loc_E99621: Set global_72 = Nothing
  loc_E9962D: global_52 = 0
  loc_E9963B: Set global_172 = Nothing
  loc_E99642: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25C04
  'Data Table: 4DA730
  loc_E25BE9: If (global_52 = &HFF) Then
  loc_E25BF9:   Me.Global.Unload Me
  loc_E25C01: End If
  loc_E25C01: Exit Sub
  loc_E25C02: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2E8C8
  'Data Table: 4DA730
  loc_E2E89C: On Error Goto loc_E2E8C0
  loc_E2E8B7: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2E8BF: Exit Sub
  loc_E2E8C0: ' Referenced from: E2E89C
  loc_E2E8C0: Proc_6_60_E63754(Shift)
  loc_E2E8C5: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1268668
  'Data Table: 4DA730
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_B0 As String
  Dim var_F8 As Variant
  loc_12680EE: Set var_88 = Me.Txt
  loc_12680F4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1268102: Proc_6_74_E23240(var_8C)
  loc_126810E: Call Proc_262_52_F32818(var_8C)
  loc_1268116: var_92 = Index
  loc_1268121: If (var_92 = CInt(4)) Then
  loc_1268172:   Set var_88 = Me.Txt
  loc_1268178:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1268180:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1268198:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_126819B:     Exit Sub
  loc_126819C:   End If
  loc_12681A9:   Set var_88 = Me.Txt
  loc_12681AF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12681C2:   global_128 = var_8C.Text
  loc_12681DD:   Set var_88 = Me.Txt
  loc_12681E3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12681EB:   var_A0 = var_8C.Text
  loc_12681F3:   var_D4 = CVar(var_A0) 'String
  loc_1268238:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1268241:     Me.MoveFirst
  loc_1268266:     Set var_88 = Me.Txt
  loc_126826C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1268274:     0 = var_8C.Text
  loc_1268282:     Proc_6_17_EAAE40(var_D4, CVar(var_A0))
  loc_1268298:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_12682B0:   End If
  loc_12682B3: Else
  loc_12682BB:   If (var_92 = CInt(9)) Then
  loc_126830C:     Set var_88 = Me.Txt
  loc_1268312:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1268332:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1268335:       Exit Sub
  loc_1268336:     End If
  loc_1268343:     Set var_88 = Me.Txt
  loc_1268349:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_126835C:     global_128 = var_8C.Text
  loc_1268377:     Set var_88 = Me.Txt
  loc_126837D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1268385:     var_A0 = var_8C.Text
  loc_126838D:     var_D4 = CVar(var_A0) 'String
  loc_12683D2:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_12683DB:       Me.MoveFirst
  loc_1268400:       Set var_88 = Me.Txt
  loc_1268406:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_126840E:       0 = var_8C.Text
  loc_126841C:       Proc_6_17_EAAE40(var_D4, CVar(var_A0))
  loc_1268432:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_126844A:     End If
  loc_126844D:   Else
  loc_1268455:     If (var_92 = CInt(&HA)) Then
  loc_1268474:       Me.Recordset15.CursorLocation = 3
  loc_126848B:       var_F8 = CVar(MemVar_1F95044) 'Address
  loc_1268490:       var_B0 = "Select DocId As Code, Cast(VNo as varchar) Name,PartyName Party,Vdate From HallBook Where Docid not in (Select BookDocId from HallSale1) Order by VNo"
  loc_126849C:       Me.Open var_B0, var_F8, 3
  loc_12684AA:       CVarUnk
  loc_12684AF:       VerifyVarObj
  loc_12684B5:       Set var_88 = Me.DGBookNo
  loc_12684BB:       LateIdStAd
  loc_1268517:       Set var_88 = Me.Txt
  loc_126851D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1268525:       var_88 = var_8C.Text
  loc_126853D:       If (New Or (var_A0 = vbNullString)) Then
  loc_1268540:         Exit Sub
  loc_1268541:       End If
  loc_126854E:       Set var_88 = Me.Txt
  loc_1268554:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_126855C:       1 = var_8C.Text
  loc_1268564:       var_D4 = CVar(var_A0) 'String
  loc_12685A9:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_12685B2:         Me.MoveFirst
  loc_12685D7:         Set var_88 = Me.Txt
  loc_12685DD:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_12685E5:         0 = var_8C.Text
  loc_12685F3:         Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_1268609:         Me.Find CStr(var_F8 & var_D4), -1, 
  loc_1268621:       End If
  loc_1268624:     Else
  loc_126862C:       If (var_92 = CInt(4)) Then
  loc_126863C:         Set var_88 = Me.TxtGrid
  loc_1268642:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_126865A:         global_164 = Val(var_8C.Text)
  loc_1268667:       End If
  loc_1268667:     End If
  loc_1268667:   End If
  loc_1268667: End If
  loc_1268667: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1117D30
  'Data Table: 4DA730
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_11179F6: If (CLng(Shift) = &H1B) Then
  loc_11179F9:   Call Proc_262_52_F32818()
  loc_11179FE:   Exit Sub
  loc_11179FF: End If
  loc_1117A02: var_86 = KeyCode
  loc_1117A0D: If (var_86 = CInt(4)) Then
  loc_1117A28:   Set var_9C = Nothing
  loc_1117A33:   Set var_98 = Nothing
  loc_1117A61:   Proc_6_69_134A630(Me.DGDepart, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_1117A78: Else
  loc_1117A80:   If (var_86 = CInt(9)) Then
  loc_1117A9B:     Set var_9C = Nothing
  loc_1117AD4:     Proc_6_69_134A630(Me.DGGodown, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_1117AEB:   Else
  loc_1117AF3:     If (var_86 = CInt(&HA)) Then
  loc_1117B0E:       Set var_9C = Nothing
  loc_1117B47:       Proc_6_69_134A630(Me.DGBookNo, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_1117B5E:     Else
  loc_1117B66:       If (var_86 = CInt(7)) Then
  loc_1117B74:         If (global_176 = "Yes") Then
  loc_1117B8F:           Set var_9C = Nothing
  loc_1117BC8:           Proc_6_69_134A630(Me.DGCompany, Me.Txt, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_1117BDC:         End If
  loc_1117BDC:       End If
  loc_1117BDC:     End If
  loc_1117BDC:   End If
  loc_1117BDC: End If
  loc_1117C0D: Set var_98 = Me.DGCompany
  loc_1117C24: Set var_9C = Me.DGBookNo
  loc_1117C4D: If ((((CBool(Me.DGDepart.Visible) = 0) And (CBool(Me.DGGodown.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_1117C65:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1117C6E:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, var_9C)
  loc_1117C73:   End If
  loc_1117C77:   Set var_8C = Me.TopCtrl1
  loc_1117C7D:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_1117C96:   If (CStr(var_9C) = "Add") Then
  loc_1117CAE:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1117CB7:       Proc_6_76_E533C8(Shift, arg_14, 0)
  loc_1117CBC:     End If
  loc_1117CBF:   Else
  loc_1117CC3:     Set var_8C = Me.TopCtrl1
  loc_1117CC9:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1117CE2:     If (CStr(var_98) = "Edit") Then
  loc_1117CFA:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1117D03:         Proc_6_76_E533C8(Shift)
  loc_1117D08:       End If
  loc_1117D08:     End If
  loc_1117D08:   End If
  loc_1117D1D:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1117D28:     Call Txt_Validate(KeyCode)
  loc_1117D2D:   End If
  loc_1117D2D: End If
  loc_1117D2D: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FFDD58
  'Data Table: 4DA730
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FFDB58: On Error Goto loc_FFDD52
  loc_FFDB5E: Proc_6_58_E06050(arg_10)
  loc_FFDB66: var_86 = KeyAscii
  loc_FFDB71: If (var_86 = CInt(1)) Then
  loc_FFDB7E:   Set var_8C = Me.Txt
  loc_FFDB84:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FFDB9F:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_FFDBAE: Else
  loc_FFDBB6:   If (var_86 = CInt(4)) Then
  loc_FFDBD5:     If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_FFDBE7:       var_AC = "Name"
  loc_FFDC02:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10)
  loc_FFDC11:     End If
  loc_FFDC14:   Else
  loc_FFDC1C:     If (var_86 = CInt(9)) Then
  loc_FFDC3B:       If (CBool(Me.DGGodown.Visible) = &HFF) Then
  loc_FFDC68:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_FFDC77:       End If
  loc_FFDC7A:     Else
  loc_FFDC82:       If (var_86 = CInt(&HA)) Then
  loc_FFDCA1:         If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_FFDCCE:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name", 0)
  loc_FFDCDD:         End If
  loc_FFDCE0:       Else
  loc_FFDCE8:         If (var_86 = CInt(7)) Then
  loc_FFDCF6:           If (global_176 = "Yes") Then
  loc_FFDD15:             If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_FFDD27:               var_AC = "Name"
  loc_FFDD42:               Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, var_AC, 0)
  loc_FFDD51:             End If
  loc_FFDD51:           End If
  loc_FFDD51:         End If
  loc_FFDD51:       End If
  loc_FFDD51:     End If
  loc_FFDD51:   End If
  loc_FFDD51: End If
  loc_FFDD51: Exit Sub
  loc_FFDD52: ' Referenced from: FFDB58
  loc_FFDD52: Proc_6_60_E63754(0, var_AC, 0)
  loc_FFDD57: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EE64
  'Data Table: 4DA730
  loc_E4EE42: Set var_88 = Me.Txt
  loc_E4EE48: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EE56: Proc_6_73_E23294(var_8C)
  loc_E4EE62: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14D1404
  'Data Table: 4DA730
  Dim var_94 As Integer
  Dim var_AC As String
  Dim var_B0 As Variant
  Dim var_98 As Variant
  Dim var_B4 As String
  Dim unk_4DA74E As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim arg_10 As Integer
  Dim var_A8 As Variant
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_14D0674: On Error Goto loc_14D13FC
  loc_14D067A: var_94 = Cancel
  loc_14D0685: If (var_94 = CInt(1)) Then
  loc_14D068C:   Set var_98 = Me.TopCtrl1
  loc_14D0692:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_14D069A:   var_AC = CStr()
  loc_14D06AB:   If (var_AC = "Add") Then
  loc_14D06B4:     Call Proc_262_54_114E9EC(MemVar_1F95044)
  loc_14D06D7:     Set var_98 = Me.Txt
  loc_14D06DD:     Call 0.Method_Txt_Validate0 (CInt(3), var_B0)
  loc_14D06E5:     var_B0.Text = var_AC
  loc_14D0701:     Me.LblVPrefix.Caption = global_92
  loc_14D0709:   End If
  loc_14D070D:   Set var_98 = Me.TopCtrl1
  loc_14D0713:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_14D071B:   var_AC = CStr()
  loc_14D072C:   If (var_AC = "Add") Then
  loc_14D075C:     Set var_98 = Me.Txt
  loc_14D0762:     Call 0.Method_Txt_Validate0 (CInt(3), var_B0, var_AC, "Select Count(*) From Purch1 Where DocID='", var_A8, -1)
  loc_14D0773:     var_B4 = var_D0 & var_AC
  loc_14D0783:     unk_4DA74E.Execute var_B4 & "'", 0, var_E4
  loc_14D0793:      = var_D0.Item()
  loc_14D079B:      = var_E4.Value
  loc_14D07C8:     If (var_B0.Text.Fields > 0) Then
  loc_14D07D1:       Call 0.Method_arg_50 (var_AC)
  loc_14D07F2:       MsgBox("Duplicate Invoice No.", &H40, CVar(var_AC), var_114, var_124)
  loc_14D0808:       Call Proc_262_54_114E9EC(MemVar_1F95044)
  loc_14D0818:       If (var_AC = vbNullString) Then
  loc_14D0825:         Set var_98 = Me.Txt
  loc_14D082B:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0833:         var_B0.SetFocus
  loc_14D0841:         arg_10 = &HFF
  loc_14D0844:         Exit Sub
  loc_14D0845:       End If
  loc_14D084B:       Call Proc_262_54_114E9EC(MemVar_1F95044, var_AC)
  loc_14D085E:       Set var_98 = Me.Txt
  loc_14D0864:       Call 0.Method_Txt_Validate0 (CInt(3), var_B0, var_AC)
  loc_14D086C:       var_B0.Text = arg_10
  loc_14D087D:       arg_10 = &HFF
  loc_14D0880:       Exit Sub
  loc_14D0881:     End If
  loc_14D0881:   End If
  loc_14D0884: Else
  loc_14D088C:   If (var_94 = CInt(2)) Then
  loc_14D089D:     Set var_98 = Me.Txt
  loc_14D08A3:     Call 0.Method_Txt_Validate0 (CInt(2), var_B0, var_AC)
  loc_14D08AB:     arg_10 = var_B0.Text
  loc_14D08C1:     var_114 = Len(Trim(CVar(var_AC)))
  loc_14D08DB:     If (var_114 = 0) Then
  loc_14D08F1:       Set var_98 = Me.Txt
  loc_14D08F7:       Call 0.Method_Txt_Validate0 (CInt(2), var_B0)
  loc_14D08FF:       var_B0.Text = CStr(MemVar_1F950EC)
  loc_14D0911:     Else
  loc_14D091B:       Set var_98 = Me.Txt
  loc_14D0921:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0941:       Set var_D0 = Me.Txt
  loc_14D0947:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_14D094F:       var_E4.Text = Proc_6_33_15125B8(var_B0)
  loc_14D0962:     End If
  loc_14D096F:     Set var_98 = Me.Txt
  loc_14D0975:     Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D097D:     var_AC = var_B0.Text
  loc_14D0998:     Set var_CC = Me.Txt
  loc_14D099E:     Call 0.Method_Txt_Validate0 (Cancel, var_D0, var_B4)
  loc_14D09A6:     (CDate(var_AC) >= MemVar_1F950F4) = var_D0.Text
  loc_14D09C8:     If Not((var_AC And (CDate(var_B4) <= MemVar_1F950FC))) Then
  loc_14D09D6:       var_F4 = "Date Validate"
  loc_14D09EC:       MsgBox("Invoice Date Not Between Current Fin. Year", 0, var_F4, var_114, var_124)
  loc_14D0A06:       Set var_98 = Me.Txt
  loc_14D0A0C:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_14D0A14:       var_B0.SetFocus
  loc_14D0A22:       arg_10 = &HFF
  loc_14D0A25:       Exit Sub
  loc_14D0A26:     End If
  loc_14D0A2A:     Set var_98 = Me.TopCtrl1
  loc_14D0A30:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_14D0A38:     var_AC = CStr(var_B0)
  loc_14D0A49:     If (var_AC = "Add") Then
  loc_14D0A52:       Call Proc_262_54_114E9EC(MemVar_1F95044)
  loc_14D0A65:       Set var_98 = Me.Txt
  loc_14D0A6B:       Call 0.Method_Txt_Validate0 (CInt(3), var_B0)
  loc_14D0A73:       var_B0.Text = var_AC
  loc_14D0A82:     End If
  loc_14D0A85:   Else
  loc_14D0A8D:     If (var_94 = CInt(4)) Then
  loc_14D0A9B:       Set var_98 = Me.Txt
  loc_14D0AA1:       Call 0.Method_Txt_Validate0 (CInt(4), var_B0)
  loc_14D0AA9:       var_AC = "Department Name"
  loc_14D0ACA:       If (Proc_6_27_EA61EC(var_B0, var_AC) = 0) Then
  loc_14D0AD8:         Set var_98 = Me.Txt
  loc_14D0ADE:         Call 0.Method_Txt_Validate0 (CInt(4), var_B0)
  loc_14D0AE6:         var_B0.SetFocus
  loc_14D0AF4:         arg_10 = &HFF
  loc_14D0AF7:         Exit Sub
  loc_14D0AF8:       End If
  loc_14D0B46:       Set var_98 = Me.Txt
  loc_14D0B4C:       Call 0.Method_Txt_Validate0 (Cancel, var_B0, var_AC)
  loc_14D0B54:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_14D0B6C:       If (arg_10 Or (var_AC = vbNullString)) Then
  loc_14D0B7C:         Set var_98 = Me.Txt
  loc_14D0B82:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0B8A:         var_B0.Text = vbNullString
  loc_14D0BA3:         Set var_98 = Me.Txt
  loc_14D0BA9:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0BB1:         var_B0.Tag = vbNullString
  loc_14D0BC0:       Else
  loc_14D0BFB:         Set var_CC = Me.Txt
  loc_14D0C01:         Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D0C09:         var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D0C3C:         var_B0 = Me.Fields.Item("Code")
  loc_14D0C5A:         Set var_CC = Me.Txt
  loc_14D0C60:         Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D0C68:         var_D0.Tag = CStr(var_B0.Value)
  loc_14D0C7E:       End If
  loc_14D0C8C:       Set var_98 = Me.Txt
  loc_14D0C92:       Call 0.Method_Txt_Validate0 (CInt(4), var_B0)
  loc_14D0CB4:       If (var_B0.Tag = global_116) Then
  loc_14D0CC3:         Me.FrBanq.Visible = True
  loc_14D0CCE:       Else
  loc_14D0CDA:         Me.FrBanq.Visible = False
  loc_14D0CE2:       End If
  loc_14D0CE5:     Else
  loc_14D0CED:       If (var_94 = CInt(9)) Then
  loc_14D0CFB:         Set var_98 = Me.Txt
  loc_14D0D01:         Call 0.Method_Txt_Validate0 (CInt(9), var_B0)
  loc_14D0D09:         var_AC = "Godown Name"
  loc_14D0D2A:         If (Proc_6_27_EA61EC(var_B0, var_AC) = 0) Then
  loc_14D0D38:           Set var_98 = Me.Txt
  loc_14D0D3E:           Call 0.Method_Txt_Validate0 (CInt(9), var_B0)
  loc_14D0D46:           var_B0.SetFocus
  loc_14D0D54:           arg_10 = &HFF
  loc_14D0D57:           Exit Sub
  loc_14D0D58:         End If
  loc_14D0DA6:         Set var_98 = Me.Txt
  loc_14D0DAC:         Call 0.Method_Txt_Validate0 (Cancel, var_B0, var_AC)
  loc_14D0DB4:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_14D0DCC:         If (arg_10 Or (var_AC = vbNullString)) Then
  loc_14D0DDC:           Set var_98 = Me.Txt
  loc_14D0DE2:           Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0DEA:           var_B0.Text = vbNullString
  loc_14D0E03:           Set var_98 = Me.Txt
  loc_14D0E09:           Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0E11:           var_B0.Tag = vbNullString
  loc_14D0E20:         Else
  loc_14D0E5B:           Set var_CC = Me.Txt
  loc_14D0E61:           Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D0E69:           var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D0E9C:           var_B0 = Me.Fields.Item("Code")
  loc_14D0EAD:           var_AC = CStr(var_B0.Value)
  loc_14D0EBA:           Set var_CC = Me.Txt
  loc_14D0EC0:           Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D0EC8:           var_D0.Tag = var_AC
  loc_14D0EDE:         End If
  loc_14D0EE1:       Else
  loc_14D0EE9:         If (var_94 = CInt(7)) Then
  loc_14D0F3A:           Set var_98 = Me.Txt
  loc_14D0F40:           Call 0.Method_Txt_Validate0 (Cancel, var_B0, var_AC)
  loc_14D0F48:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_14D0F60:           If (var_AC Or (var_AC = vbNullString)) Then
  loc_14D0F70:             Set var_98 = Me.Txt
  loc_14D0F76:             Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0F7E:             var_B0.Text = vbNullString
  loc_14D0F97:             Set var_98 = Me.Txt
  loc_14D0F9D:             Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0FA5:             var_B0.Tag = vbNullString
  loc_14D0FB4:           Else
  loc_14D0FC2:             Set var_98 = Me.Txt
  loc_14D0FC8:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_B0)
  loc_14D0FD0:             var_B0.Text = vbNullString
  loc_14D0FEA:             Set var_98 = Me.Txt
  loc_14D0FF0:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_B0)
  loc_14D0FF8:             var_B0.Tag = vbNullString
  loc_14D1012:             Set var_98 = Me.Txt
  loc_14D1018:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_B0)
  loc_14D1020:             var_B0.Text = vbNullString
  loc_14D1067:             Set var_CC = Me.Txt
  loc_14D106D:             Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D1075:             var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D10A8:             var_B0 = Me.Fields.Item("Code")
  loc_14D10C6:             Set var_CC = Me.Txt
  loc_14D10CC:             Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D10D4:             var_D0.Tag = CStr(var_B0.Value)
  loc_14D10EA:           End If
  loc_14D10ED:         Else
  loc_14D10F5:           If (var_94 = CInt(&HA)) Then
  loc_14D1146:             Set var_98 = Me.Txt
  loc_14D114C:             Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D116C:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_B0.Text = vbNullString)) Then
  loc_14D117C:               Set var_98 = Me.Txt
  loc_14D1182:               Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D118A:               var_B0.Text = vbNullString
  loc_14D11A3:               Set var_98 = Me.Txt
  loc_14D11A9:               Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D11B1:               var_B0.Tag = vbNullString
  loc_14D11CB:               Set var_98 = Me.Txt
  loc_14D11D1:               Call 0.Method_Txt_Validate0 (CInt(&HB), var_B0)
  loc_14D11D9:               var_B0.Text = vbNullString
  loc_14D11E8:             Else
  loc_14D11F6:               Set var_98 = Me.Txt
  loc_14D11FC:               Call 0.Method_Txt_Validate0 (CInt(7), var_B0)
  loc_14D1204:               var_B0.Text = vbNullString
  loc_14D121E:               Set var_98 = Me.Txt
  loc_14D1224:               Call 0.Method_Txt_Validate0 (CInt(7), var_B0)
  loc_14D122C:               var_B0.Tag = vbNullString
  loc_14D1273:               Set var_CC = Me.Txt
  loc_14D1279:               Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D1281:               var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D12D2:               Set var_CC = Me.Txt
  loc_14D12D8:               Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D12E0:               var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14D1332:               Set var_CC = Me.Txt
  loc_14D1338:               Call 0.Method_Txt_Validate0 (CInt(&HB), var_D0)
  loc_14D1391:               Set var_CC = Me.Txt
  loc_14D1397:               Call 0.Method_Txt_Validate0 (CInt(2), var_D0)
  loc_14D13C1:               If (Me.Fields.Item("VDate").Value > CDate(CDate(CStr(Me.Fields.Item("Party").Value)))) Then
  loc_14D13DD:                 MsgBox("Bill Date can't be before Booking Date", 0, var_F4, var_114, var_124)
  loc_14D13EF:                 arg_10 = &HFF
  loc_14D13F2:                 Exit Sub
  loc_14D13F3:               End If
  loc_14D13F3:             End If
  loc_14D13F3:           End If
  loc_14D13F3:         End If
  loc_14D13F3:       End If
  loc_14D13F3:     End If
  loc_14D13F3:   End If
  loc_14D13F3: End If
  loc_14D13F8: Set var_88 = Nothing
  loc_14D13FB: Exit Sub
  loc_14D13FC: ' Referenced from: 14D0674
  loc_14D13FC: Proc_6_60_E63754(arg_10)
  loc_14D1401: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F4BFB4
  'Data Table: 4DA730
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4BEAB: Me.DGDepart.Visible = False
  loc_F4BECA: If (Me.RecordCount > 0) Then
  loc_F4BF09:   Set var_B4 = Me.Txt
  loc_F4BF0F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4BF17:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4BF4A:   var_B0 = Me.Fields.Item("Code")
  loc_F4BF69:   Set var_B4 = Me.Txt
  loc_F4BF6F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4BF77:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4BF8D: End If
  loc_F4BF98: Set var_A8 = Me.Txt
  loc_F4BF9E: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(4))
  loc_F4BFA6: var_B0.SetFocus
  loc_F4BFB2: Exit Sub
  loc_F4BFB3: Result var_B0 End Sub 'Currency
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1149000
  'Data Table: 4DA730
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim var_108 As TextBox
  loc_1148C74: Call Proc_262_52_F32818()
  loc_1148C85: If (Index = 0) Then
  loc_1148C9E:   Me.FGrid.CellBackColor = CVar(CLng(global_80))
  loc_1148CB9:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1148CF8:   Set var_108 = Me.TxtGrid
  loc_1148CFE:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1148D06:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1148D47:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1148D5D:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1148D65:     var_E0 = CVar(CLng(7)) 'Long
  loc_1148D85:     global_136 = CStr(Me.FGrid.TextMatrix))
  loc_1148DA3:     var_118 = Me.RecordCount
  loc_1148DDB:     If ((var_118 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1148DDE:       Exit Sub
  loc_1148DDF:     End If
  loc_1148DF2:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1148DFA:     var_E0 = CVar(CLng(1)) 'Long
  loc_1148E2D:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1148E36:       Me.MoveFirst
  loc_1148E56:       var_E0 = CVar(CLng(7)) 'Long
  loc_1148E5F:       Set var_C0 = Me.FGrid
  loc_1148E76:       Proc_6_17_EAAE40(var_12C, CVar(CStr(var_C0.TextMatrix))), var_E0, CVar(CLng(Me.FGrid.Row)), var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1148E9F:       Me.Find CStr("Code =" & var_12C), 0, 1
  loc_1148ECF:       If (Me.EOF = &HFF) Then
  loc_1148ED8:         Me.MoveFirst
  loc_1148EDD:       End If
  loc_1148EDD:     End If
  loc_1148EEA:     Set var_F4 = Me.TxtGrid
  loc_1148EF0:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_160, var_15C, var_E0)
  loc_1148EF8:     var_98 = var_108.Width
  loc_1148F0A:     Set var_AC = Me.TxtGrid
  loc_1148F10:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_118)
  loc_1148F18:     var_114 = var_C0.Left
  loc_1148F24:     var_98 = CVar((var_118 + var_160)) 'Single
  loc_1148F33:     Me.DGItem.Left = var_98
  loc_1148F67:     Me.DGItem.Top = CVar(CDbl(Me.FGrid.Top))
  loc_1148F89:     var_98 = CVar(CDbl(Me.FGrid.Height)) 'Single
  loc_1148F92:     Set var_C0 = Me.DGItem
  loc_1148F98:     var_C0.Height = var_98
  loc_1148FAA:   Else
  loc_1148FB1:     If (var_114 = CLng(3)) Then
  loc_1148FC3:       Set var_AC = Me.TxtGrid
  loc_1148FC9:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, 0)
  loc_1148FD1:       var_C0.MaxLength = var_98
  loc_1148FE6:       If (global_110 = 0) Then
  loc_1148FF1:         var_110 = "{Home}+{End}"
  loc_1148FF7:         Proc_303_0_FBACC8(CStr("Code =" & var_12C), 0)
  loc_1148FFF:       End If
  loc_1148FFF:     End If
  loc_1148FFF:   End If
  loc_1148FFF: End If
  loc_1148FFF: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10F81B0
  'Data Table: 4DA730
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_10F7E94: If (KeyCode = 0) Then
  loc_10F7EA1:   If (CLng(Shift) = &H1B) Then
  loc_10F7EB1:     Set var_8C = Me.TxtGrid
  loc_10F7EB7:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_10F7ED1:     Set var_98 = Me.TxtGrid
  loc_10F7ED7:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_10F7EDF:     var_9C.Text = var_90.Tag
  loc_10F7EFB:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10F7F00:     Call Proc_262_52_F32818(arg_14)
  loc_10F7F09:     Set var_8C = Me.FGrid
  loc_10F7F26:     Set var_8C = Me.TxtGrid
  loc_10F7F2C:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_10F7F34:     var_90.Visible = FGrid.DispID_8001
  loc_10F7F40:     Exit Sub
  loc_10F7F41:   End If
  loc_10F7F54:   var_B0 = CLng(Me.FGrid.Col)
  loc_10F7F64:   If (var_B0 = CLng(1)) Then
  loc_10F7F7F:     Set var_9C = Nothing
  loc_10F7FB8:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_56, Shift, &HFF)
  loc_10F7FD6:     If (CLng(Shift) = &HD) Then
  loc_10F7FDF:       Call Proc_262_47_1491D94(KeyCode, var_B2, 1, Nothing)
  loc_10F7FEA:       If (var_B2 = &HFF) Then
  loc_10F8030:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_110, 3, 2)
  loc_10F8040:       End If
  loc_10F8040:     End If
  loc_10F8043:   Else
  loc_10F804A:     If (var_B0 = CLng(3)) Then
  loc_10F808D:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_110 = &HFF))) Then
  loc_10F8096:         Call Proc_262_47_1491D94(KeyCode, var_B2, 3, 0)
  loc_10F80A1:         If (var_B2 = &HFF) Then
  loc_10F80E7:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_110, 4, 0)
  loc_10F80F7:         End If
  loc_10F80F7:       End If
  loc_10F80FA:     Else
  loc_10F8101:       If (var_B0 = CLng(4)) Then
  loc_10F8144:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_110 = &HFF))) Then
  loc_10F814D:           Call Proc_262_47_1491D94(KeyCode, var_B2, 0, 0)
  loc_10F8158:           If (var_B2 = &HFF) Then
  loc_10F819E:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_110, 4, 0)
  loc_10F81AE:           End If
  loc_10F81AE:         End If
  loc_10F81AE:       End If
  loc_10F81AE:     End If
  loc_10F81AE:   End If
  loc_10F81AE: End If
  loc_10F81AE: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F52020
  'Data Table: 4DA730
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F51F03: Proc_6_58_E06050(arg_10)
  loc_F51F14: If (KeyAscii = 0) Then
  loc_F51F2A:   var_A0 = CLng(Me.FGrid.Col)
  loc_F51F3A:   If (var_A0 = CLng(1)) Then
  loc_F51F59:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F51F60:       Set var_AC = Me.TxtGrid
  loc_F51F6B:       var_A4 = "Name"
  loc_F51F86:       Proc_6_89_1470B00(var_AC, KeyAscii, global_56, arg_10)
  loc_F51F95:     End If
  loc_F51F98:   Else
  loc_F51F9F:     If (var_A0 = CLng(3)) Then
  loc_F51FAC:       Set var_8C = Me.TxtGrid
  loc_F51FB2:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F51FCD:       Proc_6_42_129B55C(var_AC, arg_10, 8, 3)
  loc_F51FDC:     Else
  loc_F51FE3:       If (var_A0 = CLng(4)) Then
  loc_F51FF0:         Set var_8C = Me.TxtGrid
  loc_F51FF6:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F52011:         Proc_6_42_129B55C(var_AC, arg_10, 6)
  loc_F5201D:       End If
  loc_F5201D:     End If
  loc_F5201D:   End If
  loc_F5201D: End If
  loc_F5201D: Exit Sub
  loc_F5201E: DOC
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10612F4
  'Data Table: 4DA730
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As Variant
  Dim var_180 As Double
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_BC As Variant
  Dim var_A8 As String
  loc_1061094: On Error Goto loc_10612EC
  loc_10610A3: If (KeyCode = 0) Then
  loc_10610B9:   var_A0 = CLng(Me.FGrid.Col)
  loc_10610C9:   If (var_A0 = CLng(1)) Then
  loc_10610EF:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_1061100:       Call TxtGrid_KeyDown(KeyCode, global_108)
  loc_1061109:       Set var_AC = Me.TxtGrid
  loc_1061114:       var_A8 = "Name"
  loc_106112F:       Proc_6_89_1470B00(var_AC, KeyCode, global_56, Shift, var_A8)
  loc_106113E:     End If
  loc_1061141:   Else
  loc_1061148:     If Not (var_A0 = CLng(3)) Then
  loc_1061152:       If (var_A0 = CLng(4)) Then
  loc_1061155:       End If
  loc_1061162:       Set var_8C = Me.TxtGrid
  loc_1061168:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_1061170:       0 = var_AC.Text
  loc_1061193:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10611AB:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10611D8:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_10611E0:       Set var_178 = Me.FGrid
  loc_10611E6:       LateIdCallSt
  loc_1061220:       var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1061228:       var_174 = CVar(CLng(4)) 'Long
  loc_106124A:       var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1061260:       var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1061268:       var_1C4 = CVar(CLng(5)) 'Long
  loc_1061280:       var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1061288:       var_124 = CVar(CLng(3)) 'Long
  loc_10612B0:       var_164 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_180))) 'String
  loc_10612B8:       Set var_1E8 = Me.FGrid
  loc_10612BE:       LateIdCallSt
  loc_10612EB:     End If
  loc_10612EB:   End If
  loc_10612EB: End If
  loc_10612EB: Exit Sub
  loc_10612EC: ' Referenced from: 1061094
  loc_10612EC: Proc_6_60_E63754(var_1E8, var_164, var_124, var_BC, var_1C4, var_1A4, var_180, var_174)
  loc_10612F1: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E24008
  'Data Table: 4DA730
  Dim arg_10 As Integer
  loc_E23FF0: If (Cancel = 0) Then
  loc_E23FF9:   Call Proc_262_47_1491D94(Cancel, var_88)
  loc_E24002:   arg_10 = Not(var_88)
  loc_E24005: End If
  loc_E24005: Exit Sub
End Sub

Private Sub DGBookNo_UnknownEvent_9 'FD9B0C
  'Data Table: 4DA730
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_FD993C: On Error Goto loc_FD9B06
  loc_FD994E: Me.DGBookNo.Visible = False
  loc_FD996D: If (Me.RecordCount > 0) Then
  loc_FD997E:   Set var_A8 = Me.Txt
  loc_FD9984:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B0)
  loc_FD998C:   var_B0.Text = vbNullString
  loc_FD99A6:   Set var_A8 = Me.Txt
  loc_FD99AC:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B0)
  loc_FD99B4:   var_B0.Tag = vbNullString
  loc_FD99FC:   Set var_B4 = Me.Txt
  loc_FD9A02:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_FD9A0A:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD9A5C:   Set var_B4 = Me.Txt
  loc_FD9A62:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_FD9A6A:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD9A9D:   var_B0 = Me.Fields.Item("Party")
  loc_FD9ABC:   Set var_B4 = Me.Txt
  loc_FD9AC2:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_FD9ACA:   var_B8.Text = CStr(var_B0.Value)
  loc_FD9AE0: End If
  loc_FD9AEB: Set var_A8 = Me.Txt
  loc_FD9AF1: Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HA))
  loc_FD9AF9: var_B0.SetFocus
  loc_FD9B05: Exit Sub
  loc_FD9B06: ' Referenced from: FD993C
  loc_FD9B06: Proc_6_60_E63754(var_B0)
  loc_FD9B0B: Exit Sub
End Sub

Private Sub DGGodown_UnknownEvent_9 'F4F6B4
  'Data Table: 4DA730
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F5AB: Me.DGGodown.Visible = False
  loc_F4F5CA: If (Me.RecordCount > 0) Then
  loc_F4F609:   Set var_B4 = Me.Txt
  loc_F4F60F:   Call 0.Method_DGGodown_UnknownEvent_90 (CInt(9), var_B8)
  loc_F4F617:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4F64A:   var_B0 = Me.Fields.Item("Code")
  loc_F4F669:   Set var_B4 = Me.Txt
  loc_F4F66F:   Call 0.Method_DGGodown_UnknownEvent_90 (CInt(9), var_B8)
  loc_F4F677:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4F68D: End If
  loc_F4F698: Set var_A8 = Me.Txt
  loc_F4F69E: Call 0.Method_DGGodown_UnknownEvent_90 (CInt(9))
  loc_F4F6A6: var_B0.SetFocus
  loc_F4F6B2: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'FADA90
  'Data Table: 4DA730
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_FAD90F: Me.DGCompany.Visible = False
  loc_FAD92E: If (Me.RecordCount > 0) Then
  loc_FAD93F:   Set var_A8 = Me.Txt
  loc_FAD945:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA), var_B0)
  loc_FAD94D:   var_B0.Text = vbNullString
  loc_FAD967:   Set var_A8 = Me.Txt
  loc_FAD96D:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA), var_B0)
  loc_FAD975:   var_B0.Tag = vbNullString
  loc_FAD98F:   Set var_A8 = Me.Txt
  loc_FAD995:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HB), var_B0)
  loc_FAD99D:   var_B0.Text = vbNullString
  loc_FAD9E5:   Set var_B4 = Me.Txt
  loc_FAD9EB:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(7), var_B8)
  loc_FAD9F3:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FADA26:   var_B0 = Me.Fields.Item("Code")
  loc_FADA45:   Set var_B4 = Me.Txt
  loc_FADA4B:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(7), var_B8)
  loc_FADA53:   var_B8.Tag = CStr(var_B0.Value)
  loc_FADA69: End If
  loc_FADA74: Set var_A8 = Me.Txt
  loc_FADA7A: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(7))
  loc_FADA82: var_B0.SetFocus
  loc_FADA8E: Exit Sub
End Sub

Public Function global_52Get() '4DB870
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4DB87F
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E95310
  'Data Table: 4DA730
  Dim Me As Recordset15
  loc_E9529E: On Error Goto loc_E95307
  loc_E952A7: Me.MoveFirst
  loc_E952D1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E952F9: Proc_5_0_1107AD0(&HFF, Me, global_72)
  loc_E95301: Call Proc_262_48_159A4CC(0)
  loc_E95306: Exit Sub
  loc_E95307: ' Referenced from: E9529E
  loc_E95307: Proc_6_60_E63754(var_A0)
  loc_E9530C: Exit Sub
End Sub

Public Sub FindMove(mDocId) 'E75730
  'Data Table: 4DA730
  Dim Me As Recordset15
  loc_E756DA: Me.MoveFirst
  loc_E75704: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E75724: If (Me.EOF = 0) Then
  loc_E75727:   Call Proc_262_48_159A4CC(var_9C)
  loc_E7572C: End If
  loc_E7572C: Exit Sub
End Sub

Public Sub Proc_262_45_11FEBDC
  'Data Table: 4DA730
  Dim var_94 As Variant
  Dim var_D4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_11FE73B: Me.FGrid.Left = CVar(CDbl(675))
  loc_11FE756: Me.FGrid.Top = CVar(CDbl(2265))
  loc_11FE795: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_11FE7BC: Me.DGItem.Left = CVar(CDbl(&HF))
  loc_11FE7D7: Me.DGItem.Top = CVar(CDbl(5335))
  loc_11FE7E3: Set var_D4 = Me.FGrid
  loc_11FE7FA: global_80 = CStr(CLng(var_D4.BackColor))
  loc_11FE810: var_D4.Cols = &HA
  loc_11FE818: var_94 = CVar(CLng(0)) 'Long
  loc_11FE81D: var_E8 = &H15E
  loc_11FE829: LateIdCallSt
  loc_11FE831: var_94 = 0
  loc_11FE83D: var_E8 = CVar(CLng(1)) 'Long
  loc_11FE842: var_108 = "Item Name"
  loc_11FE84B: LateIdCallSt
  loc_11FE856: var_94 = CVar(CLng(1)) 'Long
  loc_11FE861: var_E8 = CVar(CInt(1)) 'Integer
  loc_11FE868: LateIdCallSt
  loc_11FE873: var_94 = CVar(CLng(1)) 'Long
  loc_11FE878: var_E8 = &HDAC
  loc_11FE884: LateIdCallSt
  loc_11FE88C: var_94 = 0
  loc_11FE898: var_E8 = CVar(CLng(2)) 'Long
  loc_11FE89D: var_108 = "Unit"
  loc_11FE8A6: LateIdCallSt
  loc_11FE8B1: var_94 = CVar(CLng(2)) 'Long
  loc_11FE8BC: var_E8 = CVar(CInt(1)) 'Integer
  loc_11FE8C3: LateIdCallSt
  loc_11FE8CE: var_94 = CVar(CLng(2)) 'Long
  loc_11FE8D3: var_E8 = &H3B6
  loc_11FE8DF: LateIdCallSt
  loc_11FE8E7: var_94 = 0
  loc_11FE8F3: var_E8 = CVar(CLng(3)) 'Long
  loc_11FE8F8: var_108 = "Quantity"
  loc_11FE901: LateIdCallSt
  loc_11FE90C: var_94 = CVar(CLng(3)) 'Long
  loc_11FE917: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FE91E: LateIdCallSt
  loc_11FE929: var_94 = CVar(CLng(3)) 'Long
  loc_11FE934: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FE93B: LateIdCallSt
  loc_11FE946: var_94 = CVar(CLng(3)) 'Long
  loc_11FE94B: var_E8 = &H4B0
  loc_11FE957: LateIdCallSt
  loc_11FE95F: var_94 = 0
  loc_11FE96B: var_E8 = CVar(CLng(4)) 'Long
  loc_11FE970: var_108 = "Conversion"
  loc_11FE979: LateIdCallSt
  loc_11FE984: var_94 = CVar(CLng(4)) 'Long
  loc_11FE98F: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FE996: LateIdCallSt
  loc_11FE9A1: var_94 = CVar(CLng(4)) 'Long
  loc_11FE9AC: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FE9B3: LateIdCallSt
  loc_11FE9BE: var_94 = CVar(CLng(4)) 'Long
  loc_11FE9C3: var_E8 = 0
  loc_11FE9CF: LateIdCallSt
  loc_11FE9D7: var_94 = 0
  loc_11FE9E3: var_E8 = CVar(CLng(5)) 'Long
  loc_11FE9E8: var_108 = "Wt.Qty"
  loc_11FE9F1: LateIdCallSt
  loc_11FE9FC: var_94 = CVar(CLng(5)) 'Long
  loc_11FEA07: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEA0E: LateIdCallSt
  loc_11FEA19: var_94 = CVar(CLng(5)) 'Long
  loc_11FEA24: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEA2B: LateIdCallSt
  loc_11FEA36: var_94 = CVar(CLng(5)) 'Long
  loc_11FEA3B: var_E8 = &H3E8
  loc_11FEA47: LateIdCallSt
  loc_11FEA4F: var_94 = 0
  loc_11FEA5B: var_E8 = CVar(CLng(6)) 'Long
  loc_11FEA60: var_108 = "Wt.Unit"
  loc_11FEA69: LateIdCallSt
  loc_11FEA74: var_94 = CVar(CLng(6)) 'Long
  loc_11FEA7F: var_E8 = CVar(CInt(1)) 'Integer
  loc_11FEA86: LateIdCallSt
  loc_11FEA91: var_94 = CVar(CLng(6)) 'Long
  loc_11FEA9C: var_E8 = CVar(CInt(1)) 'Integer
  loc_11FEAA3: LateIdCallSt
  loc_11FEAAE: var_94 = CVar(CLng(6)) 'Long
  loc_11FEAB3: var_E8 = &H3E8
  loc_11FEABF: LateIdCallSt
  loc_11FEACA: var_94 = CVar(CLng(7)) 'Long
  loc_11FEACF: var_E8 = 0
  loc_11FEADB: LateIdCallSt
  loc_11FEAE3: var_94 = 0
  loc_11FEAEF: var_E8 = CVar(CLng(8)) 'Long
  loc_11FEAF4: var_108 = "Rate"
  loc_11FEAFD: LateIdCallSt
  loc_11FEB08: var_94 = CVar(CLng(8)) 'Long
  loc_11FEB13: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEB1A: LateIdCallSt
  loc_11FEB25: var_94 = CVar(CLng(8)) 'Long
  loc_11FEB30: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEB37: LateIdCallSt
  loc_11FEB42: var_94 = CVar(CLng(8)) 'Long
  loc_11FEB47: var_E8 = &H320
  loc_11FEB53: LateIdCallSt
  loc_11FEB5B: var_94 = 0
  loc_11FEB67: var_E8 = CVar(CLng(9)) 'Long
  loc_11FEB6C: var_108 = "Goods Amt."
  loc_11FEB75: LateIdCallSt
  loc_11FEB80: var_94 = CVar(CLng(9)) 'Long
  loc_11FEB8B: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEB92: LateIdCallSt
  loc_11FEB9D: var_94 = CVar(CLng(9)) 'Long
  loc_11FEBA8: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEBAF: LateIdCallSt
  loc_11FEBBA: var_94 = CVar(CLng(9)) 'Long
  loc_11FEBBF: var_E8 = &H4B0
  loc_11FEBCB: LateIdCallSt
  loc_11FEBD5: Set var_D4 = Nothing 
  loc_11FEBD9: Exit Sub
End Sub

Public Sub Proc_262_46_E4133C
  'Data Table: 4DA730
  loc_E41318: Set var_88 = Me.TopCtrl1
  loc_E4131E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E41337: If (CStr() = "Browse") Then
  loc_E4133A:   Exit Sub
  loc_E4133B: End If
  loc_E4133B: Exit Sub
End Sub

Public Sub Proc_262_47_1491D94(arg_C) '1491D94
  'Data Table: 4DA730
  Dim var_9C As Variant
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_144 As Variant
  Dim var_134 As Variant
  Dim var_C0 As String
  Dim var_158 As Variant
  Dim var_148 As MSHFlexGrid
  Dim var_178 As Variant
  Dim var_17C As String
  Dim var_180 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_1FC As Double
  Dim var_94 As Integer
  Dim var_1F0 As Double
  loc_149113C: If (arg_C = 0) Then
  loc_1491152:   var_B0 = CLng(Me.FGrid.Col)
  loc_1491162:   If (var_B0 = CLng(1)) Then
  loc_14911B3:     Set var_9C = Me.TxtGrid
  loc_14911B9:     Call 0.Method_Proc_262_47_1491D940 (arg_C, var_BC, var_C0)
  loc_14911C1:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_BC.Text
  loc_14911D9:     If (var_B0 Or (var_C0 = vbNullString)) Then
  loc_14911EF:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14911F7:       var_F0 = CVar(CLng(1)) 'Long
  loc_14911FC:       var_110 = vbNullString
  loc_1491206:       Set var_BC = Me.FGrid
  loc_149120C:       LateIdCallSt
  loc_1491231:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1491239:       var_F0 = CVar(CLng(7)) 'Long
  loc_149123E:       var_110 = vbNullString
  loc_1491248:       Set var_BC = Me.FGrid
  loc_149124E:       LateIdCallSt
  loc_1491273:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149127B:       var_F0 = CVar(CLng(2)) 'Long
  loc_1491280:       var_110 = vbNullString
  loc_149128A:       Set var_BC = Me.FGrid
  loc_1491290:       LateIdCallSt
  loc_14912B5:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14912BD:       var_F0 = CVar(CLng(4)) 'Long
  loc_14912C2:       var_110 = vbNullString
  loc_14912CC:       Set var_BC = Me.FGrid
  loc_14912D2:       LateIdCallSt
  loc_14912F7:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14912FF:       var_F0 = CVar(CLng(5)) 'Long
  loc_1491304:       var_110 = vbNullString
  loc_149130E:       Set var_BC = Me.FGrid
  loc_1491314:       LateIdCallSt
  loc_1491339:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1491341:       var_F0 = CVar(CLng(6)) 'Long
  loc_1491346:       var_110 = vbNullString
  loc_1491350:       Set var_BC = Me.FGrid
  loc_1491356:       LateIdCallSt
  loc_149137B:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1491383:       var_F0 = CVar(CLng(8)) 'Long
  loc_1491388:       var_110 = vbNullString
  loc_1491392:       Set var_BC = Me.FGrid
  loc_1491398:       LateIdCallSt
  loc_14913BD:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14913C5:       var_F0 = CVar(CLng(9)) 'Long
  loc_14913CA:       var_110 = vbNullString
  loc_14913D4:       Set var_BC = Me.FGrid
  loc_14913DA:       LateIdCallSt
  loc_14913EF:     Else
  loc_1491402:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149140A:       var_100 = CVar(CLng(1)) 'Long
  loc_149143D:       var_144 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1491445:       Set var_148 = Me.FGrid
  loc_149144B:       LateIdCallSt
  loc_149147A:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1491482:       var_100 = CVar(CLng(7)) 'Long
  loc_14914B5:       var_144 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_14914BD:       Set var_148 = Me.FGrid
  loc_14914C3:       LateIdCallSt
  loc_14914F8:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1491500:       var_F0 = CVar(CLng(7)) 'Long
  loc_149151A:       var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1491538:       var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1491540:       var_158 = CVar(CLng(7)) 'Long
  loc_149155A:       var_17C = CStr(Me.FGrid.TextMatrix))
  loc_1491583:       Set var_1D4 = Me.FGrid
  loc_14915C5:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(7)) And (CStr(var_1D4.TextMatrix)) = vbNullString))) Then
  loc_14915DB:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14915E3:         var_100 = CVar(CLng(1)) 'Long
  loc_1491616:         var_144 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_149161E:         Set var_148 = Me.FGrid
  loc_1491624:         LateIdCallSt
  loc_1491653:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149165B:         var_100 = CVar(CLng(7)) 'Long
  loc_149168E:         var_144 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1491696:         Set var_148 = Me.FGrid
  loc_149169C:         LateIdCallSt
  loc_14916CB:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14916D3:         var_100 = CVar(CLng(2)) 'Long
  loc_1491706:         var_144 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_149170E:         Set var_148 = Me.FGrid
  loc_1491714:         LateIdCallSt
  loc_1491743:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149174B:         var_100 = CVar(CLng(6)) 'Long
  loc_149177E:         var_144 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1491786:         Set var_148 = Me.FGrid
  loc_149178C:         LateIdCallSt
  loc_14917DA:         var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14917E2:         var_110 = CVar(CLng(4)) 'Long
  loc_149180F:         var_190 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00"))) 'String
  loc_1491817:         Set var_148 = Me.FGrid
  loc_149181D:         LateIdCallSt
  loc_14918B0:         LateIdCallSt
  loc_14918CE:         Call Proc_262_57_FD1A70(Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))), 1, 1, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))))
  loc_14918D3:       End If
  loc_14918D3:     End If
  loc_14918EE:     var_F0 = CVar(CLng(7)) 'Long
  loc_14918F7:     Set var_BC = Me.FGrid
  loc_14918FD:     var_134 = var_BC.TextMatrix)
  loc_1491913:     var_144 = Me.FGrid.Row
  loc_149191C:     var_110 = CVar(CLng(var_144)) 'Long
  loc_1491933:     var_178 = Me.FGrid.TextMatrix)
  loc_149193E:     var_C0 = CStr(var_178)
  loc_1491946:     var_1FC = Val(var_C0)
  loc_1491957:     Set var_180 = Me.Txt
  loc_149195D:     Call 0.Method_Proc_262_47_1491D940 (CInt(9), var_1D4, var_17C, var_1FC, CVar(CLng(3)), var_110, var_134)
  loc_1491965:     var_F0 = var_1D4.Tag
  loc_149198E:     var_94 = Proc_96_27_11F256C(CStr(var_134), var_1FC, MemVar_1F95070, var_17C, global_140, CVar(CLng(Me.FGrid.Row)))
  loc_14919C4:     Me.LblCurStockStr.Caption = global_140
  loc_14919CF:   Else
  loc_14919D6:     If Not (var_B0 = CLng(3)) Then
  loc_14919E0:       If (var_B0 = CLng(4)) Then
  loc_14919E3:       End If
  loc_1491A00:       If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_1491A0F:         Set var_9C = Me.TxtGrid
  loc_1491A15:         Call 0.Method_Proc_262_47_1491D940 (0, var_BC, var_C0, var_94, 1)
  loc_1491A1D:         1 = var_BC.Text
  loc_1491A2A:         var_1F0 = Val(var_C0)
  loc_1491A42:         If (global_164 <> CDbl(var_1F0)) Then
  loc_1491A74:           If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_134, var_144, var_178) = 7) Then
  loc_1491A8B:             Set var_9C = Me.TxtGrid
  loc_1491A91:             Call 0.Method_Proc_262_47_1491D940 (0, var_BC, CStr(global_164), var_1F0)
  loc_1491A99:             var_BC.Text = var_110
  loc_1491AA8:           End If
  loc_1491AA8:         End If
  loc_1491AA8:       End If
  loc_1491AB2:       Set var_9C = Me.TxtGrid
  loc_1491AB8:       Call 0.Method_Proc_262_47_1491D940 (arg_C, var_BC)
  loc_1491AD0:       If Not(IsNumeric(CVar(var_BC))) Then
  loc_1491AE4:         Set var_9C = Me.TxtGrid
  loc_1491AEA:         Call 0.Method_Proc_262_47_1491D940 (arg_C, var_BC, CStr(0))
  loc_1491AF2:         var_BC.Text = var_F0
  loc_1491B01:       End If
  loc_1491B0E:       Set var_9C = Me.TxtGrid
  loc_1491B14:       Call 0.Method_Proc_262_47_1491D940 (arg_C, var_BC)
  loc_1491B34:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1491B4C:       var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1491B78:       var_1E4 = CVar(CStr(Format(CVar(var_BC.Text), "0.000"))) 'String
  loc_1491B80:       Set var_180 = Me.FGrid
  loc_1491B86:       LateIdCallSt
  loc_1491BBD:       var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1491BC5:       var_158 = CVar(CLng(4)) 'Long
  loc_1491BDF:       var_17C = CStr(Me.FGrid.TextMatrix))
  loc_1491BFD:       var_1A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1491C05:       var_1C0 = CVar(CLng(5)) 'Long
  loc_1491C1D:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1491C25:       var_F0 = CVar(CLng(3)) 'Long
  loc_1491C55:       Set var_1D4 = Me.FGrid
  loc_1491C5B:       LateIdCallSt
  loc_1491CA3:       var_F0 = CVar(CLng(7)) 'Long
  loc_1491CB2:       var_134 = Me.FGrid.TextMatrix)
  loc_1491CFB:       var_1FC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1491D0C:       Set var_180 = Me.Txt
  loc_1491D12:       Call 0.Method_Proc_262_47_1491D940 (CInt(9), var_1D4, var_17C, var_1FC, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_134)
  loc_1491D1A:       var_F0 = var_1D4.Tag
  loc_1491D79:       Me.LblCurStockStr.Caption = global_140
  loc_1491D81:       Call Proc_262_57_FD1A70(Proc_96_27_11F256C(CStr(var_134), var_1FC, MemVar_1F95070, var_17C, global_140, CVar(CLng(Me.FGrid.Row))), var_1D4, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(var_17C)))))
  loc_1491D86:     End If
  loc_1491D86:   End If
  loc_1491D86: End If
  loc_1491D8B: Proc_262_47_1491D94 = &HFF
End Sub

Public Sub Proc_262_48_159A4CC
  'Data Table: 4DA730
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As String
  Dim unk_4DA74E As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Variant
  Dim var_12C As Variant
  Dim var_140 As Variant
  Dim var_14C As Variant
  Dim var_C4 As Variant
  Dim var_88 As Recordset15
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  Dim var_15C As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_16C As Variant
  Dim var_1F8 As MSHFlexGrid
  Dim var_200 As Double
  Dim var_98 As Double
  loc_159933C: On Error Goto loc_159A4C3
  loc_159933F: Call Proc_262_50_F6AD90()
  loc_159935B: If (Me.RecordCount > 0) Then
  loc_159936B:   Me.LblCurStockStr.Caption = vbNullString
  loc_1599380:   var_D4 = "Select DISTINCT I1.vtime,I1.DOCID,I1.VDATE,I1.Remarks, G.Name as DepartName,G.Code as DepartCode, G1.Name as Godown,G1.Code as GodownCode,I1.Vno,I1.Vtype,I1.VPrefix,I1.Company,Sub.Name as Compname,I1.RefDocId From Indent I1  left join GodownMast G on G.Code=I1.Department left join GodownMast G1 on G1.Code=I1.Godown left join Subgroup Sub on I1.Company=Sub.SubCode Where DocID='"
  loc_15993C9:   unk_4DA74E.Execute CStr(var_D4 & Me.Fields.Item("DocID").Value & "'"), var_128, -1
  loc_15993D4:   Set var_88 = var_12C
  loc_15993F1:   Set var_130 = var_88 
  loc_159942E:   Set var_12C = Me.Txt
  loc_1599434:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(3), var_134)
  loc_159943C:   var_134.Text = CStr(var_130.Fields.Item("DocID").Value)
  loc_159946C:   var_B4 = var_130.Fields.Item("vType")
  loc_1599474:   var_C4 = var_B4.Value
  loc_159947D:   var_108 = CStr(var_C4)
  loc_159948B:   Set var_12C = Me.Txt
  loc_1599491:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(0), var_134)
  loc_1599499:   var_134.Tag = var_108
  loc_15994DC:   Set var_A0 = Me.Txt
  loc_15994E2:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(0), var_B4, var_108, "Select NCAT From Voucher_Type Where V_Type='", var_C4, -1)
  loc_15994EA:   var_12C = var_B4.Tag
  loc_1599503:   unk_4DA74E.Execute var_134 & var_108 & "'", 0, var_140
  loc_1599513:    = var_134.Item(var_12C)
  loc_159951B:    = var_140.Value
  loc_159952A:   global_100 = CStr(var_12C.Fields)
  loc_159957A:   Set var_A0 = Me.Txt
  loc_1599580:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(0), var_B4, var_108, "Select Description From Voucher_type Where V_Type='", var_C4, -1)
  loc_15995A1:   unk_4DA74E.Execute var_134 & var_108 & "'", 0, var_140
  loc_15995B1:    = var_134.Item()
  loc_15995B9:    = var_140.Value
  loc_15995D0:   Set var_148 = Me.Txt
  loc_15995D6:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(0), var_14C)
  loc_15995DE:   var_14C.Text = CStr(var_B4.Tag.Fields)
  loc_159963F:   Set var_12C = Me.Txt
  loc_1599645:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(1), var_134)
  loc_159964D:   var_134.Text = CStr(var_130.Fields.Item("VNo").Value)
  loc_15996B5:   Set var_12C = Me.Txt
  loc_15996BB:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(2), var_134, CStr(Format(CVar(var_130.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_15996C3:   var_134.Text = 1
  loc_1599715:   Me.LblVPrefix.Caption = CStr(var_130.Fields.Item("vPrefix").Value)
  loc_1599772:   var_128 = Format(CVar(Proc_6_38_E69628(CVar(var_130.Fields.Item("VTIME")))), "hh:nn")
  loc_1599789:   Set var_12C = Me.Txt
  loc_159978F:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(6), var_134, CStr(var_128))
  loc_1599797:   var_134.Text = 1
  loc_15997ED:   Set var_12C = Me.Txt
  loc_15997F3:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(5), var_134)
  loc_15997FB:   var_134.Text = Proc_6_38_E69628(CVar(var_130.Fields.Item("Remarks")), 1)
  loc_1599845:   Set var_12C = Me.Txt
  loc_159984B:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(4), var_134)
  loc_1599853:   var_134.Tag = Proc_6_38_E69628(CVar(var_130.Fields.Item("DepartCode")))
  loc_159989D:   Set var_12C = Me.Txt
  loc_15998A3:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(4), var_134)
  loc_15998AB:   var_134.Text = Proc_6_38_E69628(CVar(var_130.Fields.Item("DEPARTNAME")))
  loc_15998F5:   Set var_12C = Me.Txt
  loc_15998FB:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(9), var_134)
  loc_1599903:   var_134.Tag = Proc_6_38_E69628(CVar(var_130.Fields.Item("Godowncode")))
  loc_159994D:   Set var_12C = Me.Txt
  loc_1599953:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(9), var_134)
  loc_159995B:   var_134.Text = Proc_6_38_E69628(CVar(var_130.Fields.Item("Godown")))
  loc_15999A5:   Set var_12C = Me.Txt
  loc_15999AB:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(7), var_134)
  loc_15999B3:   var_134.Tag = Proc_6_38_E69628(CVar(var_130.Fields.Item("Company")))
  loc_15999FD:   Set var_12C = Me.Txt
  loc_1599A03:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(7), var_134)
  loc_1599A0B:   var_134.Text = Proc_6_38_E69628(CVar(var_130.Fields.Item("CompName")))
  loc_1599A21:   Set var_130 = Nothing 
  loc_1599A61:   var_E4 = "Select DocId As Code, Cast(VNo as varchar) Name,PartyName Party,Vdate From HallBook Where Docid='" & var_88.Fields.Item("RefDocId").Value 
  loc_1599A78:   unk_4DA74E.Execute CStr(var_E4 & "'"), var_128, -1
  loc_1599A83:   Set var_8C = var_12C
  loc_1599AB1:   If (var_8C.RecordCount > 0) Then
  loc_1599AEA:     Set var_12C = Me.Txt
  loc_1599AF0:     Call 0.Method_Proc_262_48_159A4CC0 (CInt(&HA), var_134)
  loc_1599AF8:     var_134.Text = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")), var_12C)
  loc_1599B42:     Set var_12C = Me.Txt
  loc_1599B48:     Call 0.Method_Proc_262_48_159A4CC0 (CInt(&HA), var_134)
  loc_1599B50:     var_134.Tag = Proc_6_38_E69628(CVar(var_8C.Fields.Item("Code")))
  loc_1599B7B:     var_B4 = var_8C.Fields.Item("Party")
  loc_1599B9A:     Set var_12C = Me.Txt
  loc_1599BA0:     Call 0.Method_Proc_262_48_159A4CC0 (CInt(&HB), var_134)
  loc_1599BA8:     var_134.Text = Proc_6_38_E69628(CVar(var_B4))
  loc_1599BBC:   End If
  loc_1599BCA:   Set var_A0 = Me.Txt
  loc_1599BD0:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(4), var_B4)
  loc_1599BF2:   If (var_B4.Tag = global_116) Then
  loc_1599C01:     Me.FrBanq.Visible = True
  loc_1599C0C:   Else
  loc_1599C18:     Me.FrBanq.Visible = False
  loc_1599C20:   End If
  loc_1599C2F:   Me.FGrid.Redraw = False
  loc_1599C4A:   Me.FGrid.Rows = 1
  loc_1599C54:   var_8E = 1
  loc_1599C64:   var_D4 = "Select I1.*,I.Name as ItemName From Indent1 I1 Left Join ItemMast I On I1.Item=I.Code And I.ItemType='Store' Where I1.Docid='"
  loc_1599CAD:   unk_4DA74E.Execute CStr(var_D4 & Me.Fields.Item("DocID").Value & "'"), var_128, -1
  loc_1599CB8:   Set var_88 = var_12C
  loc_1599D75:   var_1AC = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_88.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_8E) = "E"), "Modified By : ", "User : "))
  loc_1599DBA:   Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_1AC)))
  loc_1599E95:   var_1AC = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_1599EDA:   Me.LblLDt.Caption = CStr(var_1AC & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1599F26:   If (var_88.RecordCount > 0) Then
  loc_1599F29:     ' Referenced from: 159A39F
  loc_1599F38:     If Not(var_88.EOF) Then
  loc_1599F3B:       var_B0 = vbNullString
  loc_1599F45:       Set var_A0 = Me.FGrid
  loc_1599F5A:       Set var_1F8 = Me.FGrid
  loc_1599F61:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_1599F69:       var_118 = CVar(CLng(0)) 'Long
  loc_1599F99:       var_E4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1599FA0:       LateIdCallSt
  loc_1599FBA:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_1599FC2:       var_118 = CVar(CLng(7)) 'Long
  loc_1599FF2:       var_E4 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1599FF9:       LateIdCallSt
  loc_159A048:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_1F8, var_E4, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_159A04F:       LateIdCallSt
  loc_159A065:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_159A06D:       var_118 = CVar(CLng(2)) 'Long
  loc_159A09D:       var_E4 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_159A0A4:       LateIdCallSt
  loc_159A0DA:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_159A0E2:       var_15C = CVar(CLng(3)) 'Long
  loc_159A10F:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.000"))) 'String
  loc_159A116:       LateIdCallSt
  loc_159A130:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_159A138:       var_118 = CVar(CLng(4)) 'Long
  loc_159A168:       var_E4 = CVar(CStr(var_88.Fields.Item("COnvFactor").Value)) 'String
  loc_159A16F:       LateIdCallSt
  loc_159A1A5:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_159A1AD:       var_15C = CVar(CLng(5)) 'Long
  loc_159A1DA:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("WTQty")), "0.000"))) 'String
  loc_159A1E1:       LateIdCallSt
  loc_159A233:       var_E4 = CVar(CStr(var_88.Fields.Item("WtUnit").Value)) 'String
  loc_159A23A:       LateIdCallSt
  loc_159A276:       Proc_6_39_E7D3A0(var_E4, CVar(var_88.Fields.Item("Rate")), var_1F8, var_E4, CVar(CLng(6)), CVar(CLng(var_8E)), var_1F8)
  loc_159A27F:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_159A2B7:       LateIdCallSt
  loc_159A2E6:       var_B4 = var_88.Fields.Item("Amount")
  loc_159A2F5:       Proc_6_39_E7D3A0(var_E4, CVar(var_B4), var_1F8, CVar(CStr(Format(var_E4, "0.00"))), 1, 1, CVar(CLng(8)))
  loc_159A2FE:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_159A306:       var_15C = CVar(CLng(9)) 'Long
  loc_159A32F:       var_16C = CVar(CStr(Format(var_E4, "0.00"))) 'String
  loc_159A336:       LateIdCallSt
  loc_159A352:       var_B0 = CVar(CLng(var_8E)) 'Long
  loc_159A35A:       var_F4 = CVar(CLng(9)) 'Long
  loc_159A375:       var_200 = Val(CStr(var_1F8.TextMatrix)))
  loc_159A37F:       var_98 = (var_98 + var_200)
  loc_159A38A:       Set var_1F8 = Nothing 
  loc_159A394:       var_8E = (var_8E + 1)
  loc_159A39A:       var_88.MoveNext
  loc_159A39F:       GoTo loc_1599F29
  loc_159A3A2:     End If
  loc_159A3B5:     Me.FGrid.FixedRows = 1
  loc_159A3BD:   End If
  loc_159A3F4:   Set var_A0 = Me.Txt
  loc_159A3FA:   Call 0.Method_Proc_262_48_159A4CC0 (CInt(8), var_B4, CStr(Format(var_98, "0.00")), 1, 1, var_8E, var_98)
  loc_159A402:   var_B4.Text = var_200
  loc_159A426:   Me.FGrid.Redraw = True
  loc_159A434:   If (var_8E = 1) Then
  loc_159A437:     var_B0 = 1
  loc_159A44A:     Me.FGrid.Rows = var_B0
  loc_159A470:     var_C4 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_F4, var_B0))) 'String
  loc_159A478:     Set var_B4 = Me.FGrid
  loc_159A4A5:     Me.FGrid.FixedRows = 1
  loc_159A4AD:   End If
  loc_159A4AD: End If
  loc_159A4AD: Call Proc_262_52_F32818(FGrid.DispID_10000, var_C4, var_1F8)
  loc_159A4B7: Set var_88 = Nothing
  loc_159A4BF: Set var_8C = Nothing
  loc_159A4C2: Exit Sub
  loc_159A4C3: ' Referenced from: 159933C
  loc_159A4C3: Proc_6_60_E63754(var_16C, 1)
  loc_159A4C8: Exit Sub
End Sub

Public Sub Proc_262_49_108FA58
  'Data Table: 4DA730
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_4DA74E As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_108F7D1: Set var_9C = Me.TopCtrl1
  loc_108F7D7: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_108F7DF: var_B0 = CStr()
  loc_108F7F0: If (var_B0 = "Add") Then
  loc_108F820:   Set var_9C = Me.Txt
  loc_108F826:   Call 0.Method_Proc_262_49_108FA580 (CInt(3), var_B4, var_B0, "Select Count(*) From Purch1 Where DocID='", var_AC, -1)
  loc_108F847:   unk_4DA74E.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_108F857:    = var_D4.Item()
  loc_108F85F:    = var_E8.Value
  loc_108F88C:   If (var_B4.Text.Fields > 0) Then
  loc_108F895:     Call 0.Method_arg_50 (var_B0)
  loc_108F8B6:     MsgBox("Duplicate Purch.Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_108F8CC:     Call Proc_262_54_114E9EC(MemVar_1F95044)
  loc_108F8DF:     Set var_9C = Me.Txt
  loc_108F8E5:     Call 0.Method_Proc_262_49_108FA580 (CInt(3), var_B4)
  loc_108F8ED:     var_B4.Text = var_B0
  loc_108F901:     Proc_262_49_108FA58 = 0
  loc_108F907:   End If
  loc_108F907: End If
  loc_108F92C: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_108F936:   var_CC = CVar(CLng(var_88)) 'Long
  loc_108F93E:   var_108 = CVar(CLng(1)) 'Long
  loc_108F95E:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_108F97A:   If CBool(var_118 <> vbNullString) Then
  loc_108F981:     var_CC = CVar(CLng(var_88)) 'Long
  loc_108F989:     var_108 = CVar(CLng(3)) 'Long
  loc_108F9B9:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_108F9E1:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_108FA07:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_108FA13:       Set var_9C = Me.FGrid
  loc_108FA37:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_108FA44:       Proc_262_49_108FA58 = 0
  loc_108FA4A:     End If
  loc_108FA4A:   End If
  loc_108FA4D: Next var_12C 'Integer
  loc_108FA52: Proc_262_49_108FA58 = 
End Sub

Public Sub Proc_262_50_F6AD90
  'Data Table: 4DA730
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_F6AC61: Me.LblVPrefix.Caption = vbNullString
  loc_F6AC6F: global_124 = vbNullString
  loc_F6AC79: global_128 = vbNullString
  loc_F6AC8A: Me.LblCurStockStr.Caption = vbNullString
  loc_F6ACA0: Set var_8C = Me.Txt
  loc_F6ACA6: Call 0.Method_Proc_262_50_F6AD90C (var_8E, var_86)
  loc_F6ACB6: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F6ACCC:   Set var_8C = Me.Txt
  loc_F6ACD2:   Call 0.Method_Proc_262_50_F6AD900 (CInt(var_86), var_98)
  loc_F6ACDA:   var_98.Text = vbNullString
  loc_F6ACF6:   Set var_8C = Me.Txt
  loc_F6ACFC:   Call 0.Method_Proc_262_50_F6AD900 (CInt(var_86), var_98)
  loc_F6AD04:   var_98.Tag = vbNullString
  loc_F6AD13: Next var_92 'Byte
  loc_F6AD2C: Me.FGrid.Rows = 1
  loc_F6AD52: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_F6AD5A: Set var_98 = Me.FGrid
  loc_F6AD87: Me.FGrid.FixedRows = 1
  loc_F6AD8F: Exit Sub
End Sub

Public Sub Proc_262_51_F7B5B0(arg_C) 'F7B5B0
  'Data Table: 4DA730
  Dim var_98 As TextBox
  loc_F7B466: Set var_8C = Me.Txt
  loc_F7B46C: Call 0.Method_Proc_262_51_F7B5B0C (var_8E, var_86)
  loc_F7B47C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F7B492:   Set var_8C = Me.Txt
  loc_F7B498:   Call 0.Method_Proc_262_51_F7B5B00 (CInt(var_86), var_98)
  loc_F7B4A0:   var_98.Enabled = arg_C
  loc_F7B4AF: Next var_92 'Byte
  loc_F7B4C2: Set var_8C = Me.Txt
  loc_F7B4C8: Call 0.Method_Proc_262_51_F7B5B00 (CInt(3), var_98)
  loc_F7B4D0: var_98.Enabled = False
  loc_F7B4E9: Set var_8C = Me.Txt
  loc_F7B4EF: Call 0.Method_Proc_262_51_F7B5B00 (CInt(8), var_98)
  loc_F7B4F7: var_98.Enabled = False
  loc_F7B510: Set var_8C = Me.Txt
  loc_F7B516: Call 0.Method_Proc_262_51_F7B5B00 (CInt(&HB), var_98)
  loc_F7B51E: var_98.Enabled = False
  loc_F7B537: Set var_8C = Me.Txt
  loc_F7B53D: Call 0.Method_Proc_262_51_F7B5B00 (CInt(1), var_98)
  loc_F7B545: var_98.Enabled = False
  loc_F7B55C: If (global_120 = "No") Then
  loc_F7B56C:   Set var_8C = Me.Txt
  loc_F7B572:   Call 0.Method_Proc_262_51_F7B5B00 (CInt(2), var_98)
  loc_F7B57A:   var_98.Enabled = False
  loc_F7B586: End If
  loc_F7B593: Set var_8C = Me.Txt
  loc_F7B599: Call 0.Method_Proc_262_51_F7B5B00 (CInt(6), var_98)
  loc_F7B5A1: var_98.Enabled = False
  loc_F7B5AD: Exit Sub
End Sub

Public Sub Proc_262_52_F32818
  'Data Table: 4DA730
  loc_F32714: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F32726:   Me.DGItem.Visible = False
  loc_F3272E: End If
  loc_F3274A: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F3275C:   Me.DGDepart.Visible = False
  loc_F32764: End If
  loc_F32780: If (CBool(Me.DGGodown.Visible) = &HFF) Then
  loc_F32792:   Me.DGGodown.Visible = False
  loc_F3279A: End If
  loc_F327B6: If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_F327C8:   Me.DGBookNo.Visible = False
  loc_F327D0: End If
  loc_F327DB: If (global_176 = "Yes") Then
  loc_F327FA:   If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_F3280C:     Me.DGCompany.Visible = False
  loc_F32814:   End If
  loc_F32814: End If
  loc_F32814: Exit Sub
End Sub

Public Sub Proc_262_53_F0D5D4
  'Data Table: 4DA730
  loc_F0D4F8: Call Proc_262_52_F32818()
  loc_F0D508: Set var_88 = Me.Txt
  loc_F0D50E: Call 0.Method_Proc_262_53_F0D5D40 (CInt(2))
  loc_F0D537: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0D53A:   Exit Sub
  loc_F0D53B: End If
  loc_F0D546: Set var_88 = Me.Txt
  loc_F0D54C: Call 0.Method_Proc_262_53_F0D5D40 (CInt(1), var_8C)
  loc_F0D575: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0D578:   Exit Sub
  loc_F0D579: End If
  loc_F0D5B0: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0D5B3:   Call TopCtrl1_UnknownEvent_16()
  loc_F0D5BB: Else
  loc_F0D5C1:   Call 0.Method_arg_1E8 (var_88)
  loc_F0D5C9:   Call var_88.SetFocus
  loc_F0D5D2: End If
  loc_F0D5D2: Exit Sub
End Sub

Public Sub Proc_262_54_114E9EC
  'Data Table: 4DA730
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_180 As TextBox
  loc_114E68D: var_90 = "RQ"
  loc_114E6A4: var_94 = "Select VT.Number_Method,VP.V_Type,Vt.Description,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_114E6D5: Set var_A8 = Me.Txt
  loc_114E6DB: Call 0.Method_Proc_262_54_114E9EC0 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_114E6EA: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_114E6F2: var_EC = -1 & var_CC 
  loc_114E706: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_114E711: Set var_8C = var_134
  loc_114E74D: If (var_8C.RecordCount > 0) Then
  loc_114E78C:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_114E78F:     GoTo loc_114E81C
  loc_114E792:   End If
  loc_114E7C3:   global_92 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_114E7EE:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_114E803:   var_CC = (var_AC.Value + 1)
  loc_114E80B:   global_96 = CInt(var_CC)
  loc_114E81C:   ' Referenced from: 114E78F
  loc_114E81C: End If
  loc_114E847: var_BC = Space((5 - Len(var_90)))
  loc_114E84F: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_114E863: var_EC = Space((5 - Len(global_92)))
  loc_114E86B: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_114E878: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_92))
  loc_114E891: var_14C = Space((8 - Len(CStr(global_96))))
  loc_114E899: var_15C = (var_130 + var_14C)
  loc_114E8A8: var_17C = (var_15C + CVar(CStr(global_96)))
  loc_114E8B3: global_84 = CStr(var_17C)
  loc_114E8E9: Me.LblVPrefix.Caption = global_92
  loc_114E902: Set var_A8 = Me.Txt
  loc_114E908: Call 0.Method_Proc_262_54_114E9EC0 (CInt(3), var_AC)
  loc_114E910: var_AC.Text = global_84
  loc_114E932: Set var_A8 = Me.Txt
  loc_114E938: Call 0.Method_Proc_262_54_114E9EC0 (CInt(1), var_AC)
  loc_114E940: var_AC.Text = CStr(global_96)
  loc_114E95D: Set var_A8 = Me.Txt
  loc_114E963: Call 0.Method_Proc_262_54_114E9EC0 (CInt(0), var_AC)
  loc_114E96B: var_AC.Tag = var_90
  loc_114E9B0: Set var_134 = Me.Txt
  loc_114E9B6: Call 0.Method_Proc_262_54_114E9EC0 (CInt(0), var_180)
  loc_114E9BE: var_180.Text = CStr(var_8C.Fields.Item("Description").Value)
  loc_114E9DA: var_88 = global_84
  loc_114E9E2: Set var_8C = Nothing
  loc_114E9E5: Proc_262_54_114E9EC = global_96
End Sub

Public Sub Proc_262_55_1011DD4
  'Data Table: 4DA730
  Dim unk_4DA74E As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Fields15
  Dim var_B8 As Variant
  Dim var_13C As TextBox
  Dim var_120 As Variant
  loc_1011C03: unk_4DA74E.Execute "Select Name, Srno,IsNull(SDate,'') as SDate,IsNull(EDate,'') as EDate From DateLock Where Name='Purchase Bill Entry' ", var_AC, -1
  loc_1011C0E: Set var_8C = var_B0
  loc_1011C2B: If (var_8C.RecordCount > 0) Then
  loc_1011C48:   var_B8 = var_8C.Fields.Item("SDate")
  loc_1011CAE:   If CBool((var_B8.Value <> vbNullString) And (var_8C.Fields.Item("EDate").Value <> vbNullString)) Then
  loc_1011CBF:     Set var_B0 = Me.Txt
  loc_1011CC5:     Call 0.Method_Proc_262_55_1011DD40 (CInt(2), var_B8, var_134)
  loc_1011CCD:     var_B0 = var_B8.Text
  loc_1011D18:     Set var_138 = Me.Txt
  loc_1011D1E:     Call 0.Method_Proc_262_55_1011DD40 (CInt(2), var_13C, var_140)
  loc_1011D26:     (CDate(CDate(var_134)) >= var_8C.Fields.Item("SDate").Value) = var_13C.Text
  loc_1011D57:     var_100 = var_8C.Fields.Item("EDate").Value
  loc_1011D5F:     var_120 = (CDate(CDate(var_140)) <= var_100)
  loc_1011D8E:     If CBool(Not &HFF And var_120) Then
  loc_1011DB2:       MsgBox("Date Locked!", &H40, "Date Validation", var_100, var_120)
  loc_1011DC7:       Proc_262_55_1011DD4 = 0
  loc_1011DCD:     End If
  loc_1011DCD:   End If
  loc_1011DCD: End If
  loc_1011DCD: Proc_262_55_1011DD4 = 
End Sub

Public Sub Proc_262_56_E8A83C
  'Data Table: 4DA730
  loc_E8A7D6: Set global_60 = New 
  loc_E8A7F3: Me.Connection15.Execute "Select Code,D.Name as Name From Depart D Order by Name", var_A8, -1
  loc_E8A804: Set global_60 = var_88
  loc_E8A81B: CVarUnk
  loc_E8A820: VerifyVarObj
  loc_E8A826: Set var_88 = Me.DGDepart
  loc_E8A82C: LateIdStAd
  loc_E8A83A: Exit Sub
End Sub

Public Sub Proc_262_57_FD1A70
  'Data Table: 4DA730
  Dim var_94 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1E4 As Variant
  Dim var_90 As Double
  loc_FD18C0: On Error Goto loc_FD1A6A
  loc_FD18E8: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_FD18F2:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_FD18FA:   var_D8 = CVar(CLng(3)) 'Long
  loc_FD1923:   var_FC = CVar(CLng(var_86)) 'Long
  loc_FD192B:   var_11C = CVar(CLng(8)) 'Long
  loc_FD1934:   Set var_130 = Me.FGrid
  loc_FD1954:   var_1A4 = CVar(CLng(var_86)) 'Long
  loc_FD195C:   var_1C4 = CVar(CLng(9)) 'Long
  loc_FD198D:   var_1E4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_130.TextMatrix))))), "0.00"))) 'String
  loc_FD1995:   Set var_1F8 = Me.FGrid
  loc_FD199B:   LateIdCallSt
  loc_FD19C6:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_FD19CE:   var_D8 = CVar(CLng(9)) 'Long
  loc_FD19FA:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_FD1A09: Next var_A8 'Integer
  loc_FD1A45: Set var_94 = Me.Txt
  loc_FD1A4B: Call 0.Method_Proc_262_57_FD1A700 (CInt(8), var_130, CStr(Format(var_90, "0.00")))
  loc_FD1A53: var_130.Text = 1
  loc_FD1A69: Exit Sub
  loc_FD1A6A: ' Referenced from: FD18C0
  loc_FD1A6A: Proc_6_60_E63754(1)
  loc_FD1A6F: Exit Sub
End Sub
