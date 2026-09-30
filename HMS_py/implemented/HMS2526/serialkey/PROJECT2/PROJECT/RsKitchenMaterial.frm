VERSION 5.00
Begin VB.Form RsKitchenMaterial
  Caption = "Excise Invoice Cum Gate Pass"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11310
  ClientHeight = 8760
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    Left = 1905
    Top = 7560
    Width = 5190
    Height = 255
    TabIndex = 30
    BorderStyle = 0 'None
    MaxLength = 75
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
    Index = 6
    BackColor = &HFFFFFF&
    Left = 1905
    Top = 7830
    Width = 1425
    Height = 255
    TabIndex = 29
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11310
    Height = 450
    TabIndex = 28
  End
  Begin TextBox TxtBarCode
    Left = 7965
    Top = 675
    Width = 2850
    Height = 330
    Visible = 0   'False
    TabIndex = 24
    MaxLength = 30
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
  Begin TextBox TxtTaxAmt
    Left = 4620
    Top = 5550
    Width = 1380
    Height = 240
    Visible = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
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
  Begin TextBox TxtPer
    Index = 1
    Left = 8640
    Top = 5280
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGt
    Index = 1
    Left = 9225
    Top = 5280
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdLastEntry
    Caption = "Fill With Last Entry"
    Left = 9000
    Top = 1050
    Width = 1875
    Height = 390
    TabIndex = 15
    TabStop = 0   'False
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGDepart
    Left = 16890
    Top = 1995
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin TextBox Txt
    Index = 4
    Left = 2235
    Top = 945
    Width = 4605
    Height = 240
    TabIndex = 3
    BorderStyle = 0 'None
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
    Index = 0
    Left = 4530
    Top = 5265
    Width = 1995
    Height = 240
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 25
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 120
    Top = 2385
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    Left = 2235
    Top = 690
    Width = 4605
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
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
    Index = 1
    Left = 2235
    Top = 435
    Width = 1725
    Height = 240
    TabIndex = 1
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
    Index = 2
    Left = 5100
    Top = 435
    Width = 1740
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin DataGrid DGToDepart
    Left = 16905
    Top = 1380
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin MSHFlexGrid FGCat
    Left = 90
    Top = 2805
    Width = 10680
    Height = 2355
    Visible = 0   'False
    TabIndex = 17
  End
  Begin MSHFlexGrid FGrid
    Left = 75
    Top = 1515
    Width = 10710
    Height = 3405
    TabIndex = 4
  End
  Begin DataGrid DGItem
    Left = 16905
    Top = 660
    Width = 6735
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
  Begin DataGrid DGMemName
    Left = 12165
    Top = 615
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin Label LblName
    Caption = "Member Name"
    Index = 0
    ForeColor = &H0&
    Left = 435
    Top = 7560
    Width = 1260
    Height = 240
    TabIndex = 32
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblName
    Caption = "Card No"
    Index = 1
    ForeColor = &H0&
    Left = 420
    Top = 7830
    Width = 690
    Height = 240
    TabIndex = 31
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblCaption
    Caption = "#"
    BackColor = &H404040&
    ForeColor = &HFFFFFF&
    Left = 9275
    Top = 345
    Width = 255
    Height = 345
    TabIndex = 16
    Alignment = 2 'Center
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
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 350
    Top = 6420
    Width = 2745
    Height = 345
    TabIndex = 26
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
    Caption = "Bar Code"
    Index = 6
    ForeColor = &H0&
    Left = 7155
    Top = 735
    Width = 735
    Height = 210
    Visible = 0   'False
    TabIndex = 25
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &H0&
    Left = 6690
    Top = 5280
    Width = 465
    Height = 240
    TabIndex = 22
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 9030
    Top = 5280
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 21
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
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    Left = 6660
    Top = 5595
    Width = 750
    Height = 210
    Visible = 0   'False
    TabIndex = 20
  End
  Begin Label Label1
    Caption = "To Location"
    Index = 0
    ForeColor = &H0&
    Left = 375
    Top = 960
    Width = 990
    Height = 240
    TabIndex = 13
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 1545
    Top = 450
    Width = 690
    Height = 240
    TabIndex = 12
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
  Begin Label Label1
    Caption = "DOC ID"
    Index = 5
    ForeColor = &HFF&
    Left = 3915
    Top = 4905
    Width = 540
    Height = 210
    Visible = 0   'False
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "From Location"
    Index = 4
    ForeColor = &H0&
    Left = 375
    Top = 705
    Width = 1215
    Height = 240
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Vr. No."
    Index = 1
    ForeColor = &H0&
    Left = 375
    Top = 450
    Width = 600
    Height = 240
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Date"
    Index = 2
    ForeColor = &H0&
    Left = 4605
    Top = 450
    Width = 390
    Height = 240
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
End

Attribute VB_Name = "RsKitchenMaterial"

Private global_90 As Integer
Private global_88 As Integer

Private Sub FGrid_UnknownEvent_0 'E61644
  'Data Table: 4FE240
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6160F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E61622: Set var_A8 = Me.TxtGrid
  loc_E61628: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61630: var_AC.Visible = False
  loc_E6163C: Call Proc_224_52_EF713C()
  loc_E61641: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E691F0
  'Data Table: 4FE240
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E691AC: Set var_88 = Me.TxtGrid
  loc_E691B2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E691CC: If (var_8C.Visible = 0) Then
  loc_E691E5:   Me.FGrid.BackColorSel = CVar(CLng(global_108))
  loc_E691ED: End If
  loc_E691ED: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E203F0
  'Data Table: 4FE240
  loc_E203E7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E203EF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E2EF84
  'Data Table: 4FE240
  Dim var_8C As TextBox
  loc_E2EF67: Set var_88 = Me.TxtGrid
  loc_E2EF6D: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E2EF75: var_8C.Visible = False
  loc_E2EF81: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '116C694
  'Data Table: 4FE240
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
  loc_116C2C8: On Error Goto loc_116C68B
  loc_116C2CF: Set var_88 = Me.TopCtrl1
  loc_116C2D5: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_116C2EE: If (CStr() = "Browse") Then
  loc_116C2F1:   Exit Sub
  loc_116C2F2: End If
  loc_116C366: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_116C37F:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_116C38F:   var_9C = "+{Tab}"
  loc_116C395:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_116C39F:   Cancel = 0
  loc_116C3A5: Else
  loc_116C3AF:   var_B0 = Me.FGrid.Rows
  loc_116C3FC:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_116C415:     Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_116C422:     Call Proc_224_57_ED85C0(0, var_B0, Cancel)
  loc_116C427:   End If
  loc_116C427: End If
  loc_116C42D: global_90 = Cancel
  loc_116C453: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_116C477: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_116C48D:   var_EC = CLng(Me.FGrid.Col)
  loc_116C49D:   If (var_EC = CLng(1)) Then
  loc_116C4B3:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116C4CB:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116C4D0:     var_11C = vbNullString
  loc_116C4DA:     Set var_B4 = Me.FGrid
  loc_116C4E0:     LateIdCallSt
  loc_116C50B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116C513:     var_FC = CVar(CLng(9)) 'Long
  loc_116C518:     var_11C = vbNullString
  loc_116C522:     Set var_A0 = Me.FGrid
  loc_116C528:     LateIdCallSt
  loc_116C54D:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116C555:     var_FC = CVar(CLng(&HA)) 'Long
  loc_116C55A:     var_11C = vbNullString
  loc_116C564:     Set var_A0 = Me.FGrid
  loc_116C56A:     LateIdCallSt
  loc_116C58F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116C597:     var_FC = CVar(CLng(2)) 'Long
  loc_116C59C:     var_11C = vbNullString
  loc_116C5A6:     Set var_A0 = Me.FGrid
  loc_116C5AC:     LateIdCallSt
  loc_116C5D1:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116C5D9:     var_FC = CVar(CLng(7)) 'Long
  loc_116C5DE:     var_11C = vbNullString
  loc_116C5E8:     Set var_A0 = Me.FGrid
  loc_116C5EE:     LateIdCallSt
  loc_116C603:   Else
  loc_116C60A:     If Not (var_EC = CLng(7)) Then
  loc_116C614:       If (var_EC = CLng(3)) Then
  loc_116C617:       End If
  loc_116C633:       Set var_A0 = Me.FGrid
  loc_116C642:       var_FC = CVar(CLng(var_A0.Col)) 'Long
  loc_116C647:       var_11C = vbNullString
  loc_116C657:       LateIdCallSt
  loc_116C66F:       Call Proc_224_56_F73BF0(Me.FGrid, var_11C, var_FC, CVar(CLng(Me.FGrid.Row)), var_A0, var_11C, var_FC, CVar(CLng(Me.FGrid.Row)))
  loc_116C674:     End If
  loc_116C674:   End If
  loc_116C674: End If
  loc_116C67A: If (Cancel = &HD) Then
  loc_116C682:   global_88 = 0
  loc_116C685: End If
  loc_116C687: Cancel = 0
  loc_116C68A: Exit Sub
  loc_116C68B: ' Referenced from: 116C2C8
  loc_116C68B: Proc_6_60_E63754(Cancel, global_88, var_A0, var_11C, var_FC)
  loc_116C690: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E15550
  'Data Table: 4FE240
  loc_E15541: Call FGrid_UnknownEvent_C()
  loc_E1554B: global_88 = 0
  loc_E1554E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '102D0CC
  'Data Table: 4FE240
  Dim var_AC As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_102CEB7: var_88 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102CEC1: On Error Goto loc_102D0C3
  loc_102CED7: var_B0 = CLng(Me.FGrid.Col)
  loc_102CEE7: If (var_B0 = CLng(1)) Then
  loc_102CEEE:   Set var_C8 = Me.FGrid
  loc_102CF12:   var_B4 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102CF3F:   Set var_B8 = var_C8
  loc_102CF51:   Proc_6_63_110B734(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_102CF79:   Set var_AC = Me.TxtGrid
  loc_102CF7F:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4, Asc(var_B4))
  loc_102CF87:   0 = var_B8.Text
  loc_102CFA0:   If (Len(var_B4) <= 1) Then
  loc_102CFAF:     Set var_AC = Me.TxtGrid
  loc_102CFB5:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4)
  loc_102CFBD:     var_CE = var_B8.Text
  loc_102CFCE:     Set var_BC = Me.TxtGrid
  loc_102CFD4:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_102CFDC:     var_C8.Text = var_B4
  loc_102CFEF:   End If
  loc_102CFFB:   Set var_AC = Me.TxtGrid
  loc_102D001:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_102D01B:   Set var_BC = Me.TxtGrid
  loc_102D021:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_102D029:   var_C8.SelStart = Len(var_B8.Text)
  loc_102D03F: Else
  loc_102D046:   If Not (var_B0 = CLng(7)) Then
  loc_102D050:     If Not (var_B0 = CLng(3)) Then
  loc_102D05A:       If (var_B0 = CLng(4)) Then
  loc_102D05D:       End If
  loc_102D05D:     End If
  loc_102D09B:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_102D0AD:   End If
  loc_102D0AD: End If
  loc_102D0B7: If (CLng(Cancel) <> &HD) Then
  loc_102D0BF:   global_88 = &HFF
  loc_102D0C2: End If
  loc_102D0C2: Exit Sub
  loc_102D0C3: ' Referenced from: 102CEC1
  loc_102D0C3: Proc_6_60_E63754(global_88, &HFF, Cancel)
  loc_102D0C8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '105BD30
  'Data Table: 4FE240
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  loc_105BAC0: On Error Goto loc_105BD29
  loc_105BAC7: Set var_8C = Me.TopCtrl1
  loc_105BACD: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_105BAE6: If (CStr() = "Browse") Then
  loc_105BAE9:   Exit Sub
  loc_105BAEA: End If
  loc_105BB07: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_105BB0A:   Exit Sub
  loc_105BB0B: End If
  loc_105BB1C: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_105BB3E:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_105BB78:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_105BB9A:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_105BBB0:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105BBB9:         Set var_114 = Me.FGrid
  loc_105BBD4:       Else
  loc_105BBE7:         Me.FGrid.Rows = 1
  loc_105BC0D:         var_9C = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_105BC15:         Set var_114 = Me.FGrid
  loc_105BC2F:         var_B0 = 1
  loc_105BC42:         Me.FGrid.FixedRows = var_B0
  loc_105BC4A:       End If
  loc_105BC4A:       Call Proc_224_56_F73BF0(FGrid.DispID_10000, var_9C)
  loc_105BC53:       Set var_8C = Me.TopCtrl1
  loc_105BC59:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(FGrid.DispID_10000)
  loc_105BC72:       If (CStr(var_B0) = "Add") Then
  loc_105BC9A:         For var_120 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_120 'Integer
  loc_105BCA4:           var_B0 = CVar(CLng(var_86)) 'Long
  loc_105BCAC:           var_E0 = CVar(CLng(0)) 'Long
  loc_105BCB6:           var_9C = CVar(CStr(var_86)) 'String
  loc_105BCBE:           Set var_8C = Me.FGrid
  loc_105BCC4:           LateIdCallSt
  loc_105BCD5:         Next var_120 'Integer
  loc_105BCDA:       End If
  loc_105BCDA:     End If
  loc_105BCDA:     Call Proc_224_46_1463A30()
  loc_105BCE2:   Else
  loc_105BD03:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_105BD13:   End If
  loc_105BD17:   Set var_8C = Me.FGrid
  loc_105BD28: End If
  loc_105BD28: Exit Sub
  loc_105BD29: ' Referenced from: 105BAC0
  loc_105BD29: Proc_6_60_E63754(FGrid.DispID_8001)
  loc_105BD2E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9D290
  'Data Table: 4FE240
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9D233: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9D24B: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9D273: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9D28E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E441BC
  'Data Table: 4FE240
  Dim var_8C As TextBox
  loc_E4419B: Set var_88 = Me.TxtGrid
  loc_E441A1: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E441A9: var_8C.Visible = False
  loc_E441B5: Call Proc_224_52_EF713C()
  loc_E441BA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F85084
  'Data Table: 4FE240
  Dim var_8C As Variant
  Dim var_D0 As Variant
  Dim var_D4 As TextBox
  loc_F84F2C: On Error Goto loc_F8507D
  loc_F84F52: Call Proc_224_51_EC865C(Proc_5_1_100EC1C("ADD", Me))
  loc_F84F5D: Call Proc_224_49_1016F34(global_56)
  loc_F84F6F: Me.LblVPrefix.Caption = vbNullString
  loc_F84F8A: Me.FGrid.Rows = 1
  loc_F84FA7: var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F84FAF: Set var_D4 = Me.FGrid
  loc_F84FDE: Me.FGrid.FixedRows = 1
  loc_F84FF9: Set var_8C = Me.Txt
  loc_F84FFF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, CStr(MemVar_1F950EC))
  loc_F85007: var_D4.Text = FGrid.DispID_10000
  loc_F85021: Set var_8C = Me.Txt
  loc_F85027: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4)
  loc_F8502F: var_D4.SetFocus
  loc_F8504E: Set var_8C = Me.Txt
  loc_F85054: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4)
  loc_F8505C: var_D4.Text = CStr(MemVar_1F950EC)
  loc_F85077: Call Txt_Validate(CInt(2))
  loc_F8507C: Exit Sub
  loc_F8507D: ' Referenced from: F84F2C
  loc_F8507D: Proc_6_60_E63754(&HFF)
  loc_F85082: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBB278
  'Data Table: 4FE240
  loc_EBB1E4: On Error Goto loc_EBB26F
  loc_EBB21E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBB22D:   Set var_10C = Me
  loc_EBB244:   Call Proc_224_51_EC865C(Proc_5_1_100EC1C("INI", var_10C))
  loc_EBB24F:   Call Proc_224_50_1672B2C(global_56)
  loc_EBB257: Else
  loc_EBB25D:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBB265:   Call var_10C.SetFocus
  loc_EBB26E: End If
  loc_EBB26E: Exit Sub
  loc_EBB26F: ' Referenced from: EBB1E4
  loc_EBB26F: Proc_6_60_E63754()
  loc_EBB274: Exit Sub
  loc_EBB275: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11AF48C
  'Data Table: 4FE240
  Dim var_11C As String
  Dim var_120 As String
  Dim var_F4 As Variant
  Dim var_124 As Label
  Dim var_114 As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_160 As Variant
  Dim var_168 As TextBox
  Dim var_190 As Variant
  Dim var_198 As TextBox
  Dim var_1BC As Variant
  Dim unk_4FE244 As Connection15
  Dim Me As Recordset15
  Dim var_B4 As Variant
  loc_11AF0A4: On Error Goto loc_11AF43B
  loc_11AF0B5: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_11AF0B8:   Exit Sub
  loc_11AF0B9: End If
  loc_11AF0F0: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_11AF103:   var_11C = Proc_6_45_EADFB8(MemVar_1F95070, 2)
  loc_11AF11E:   var_B4 = Space((5 - Len("KMISS")))
  loc_11AF126:   var_F4 = (CVar(MemVar_1F9506C & var_11C & "KMISS") + "Are You Sure To Delete This ? ")
  loc_11AF13F:   var_114 = CVar(Me.LblVPrefix.Caption) 'String
  loc_11AF142:   var_138 = (var_F4 + var_114)
  loc_11AF152:   Set var_13C = Me.LblVPrefix
  loc_11AF165:   var_150 = Space((5 - Len(var_13C.Caption)))
  loc_11AF16D:   var_160 = (var_138 + var_150)
  loc_11AF184:   Set var_164 = Me.Txt
  loc_11AF18A:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_168, var_16C)
  loc_11AF192:   8 = var_168.Text
  loc_11AF1A9:   var_180 = Space((var_160 - Len(CStr(Val(var_16C)))))
  loc_11AF1B1:   var_190 = ( + var_180)
  loc_11AF1C3:   Set var_194 = Me.Txt
  loc_11AF1C9:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_198)
  loc_11AF1E3:   var_1BC = (var_190 + CVar(CStr(Val(var_198.Text))))
  loc_11AF234:   unk_4FE244.BeginTrans var_1C4
  loc_11AF24A:   var_94 = Me.Bookmark 'Variant
  loc_11AF26C:   Set var_124 = Me.Txt
  loc_11AF272:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_13C, var_11C, "Delete From Stock Where DocID='")
  loc_11AF283:   var_120 = -1 & var_11C
  loc_11AF293:   unk_4FE244.Execute MemVar_1F9506C & var_11C & "'", var_164, 
  loc_11AF2C4:   var_11C = "Delete From Stock Where DocID='" & CStr(var_1BC)
  loc_11AF2D4:   unk_4FE244.Execute var_11C & "'", var_13C.Text, -1
  loc_11AF30A:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_13C, var_11C, "Delete From TranTaxDetail Where DocID='")
  loc_11AF312:   var_B4 = var_13C.Text
  loc_11AF31B:   var_120 = -1 & var_11C
  loc_11AF32B:   unk_4FE244.Execute var_11C & "'" & "'", var_164, Me.Txt
  loc_11AF363:   Set var_124 = Me.Txt
  loc_11AF369:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_13C, var_11C, "Delete From TranSunDetail Where DocID='")
  loc_11AF371:   var_B4 = var_13C.Text
  loc_11AF37A:   var_120 = -1 & var_11C
  loc_11AF38A:   unk_4FE244.Execute var_11C & "'" & "'", var_164, 
  loc_11AF3AA:   unk_4FE244.CommitTrans
  loc_11AF3BA:   Me.Requery -1
  loc_11AF3DA:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11AF3E7:     Me.Bookmark = var_94
  loc_11AF3EF:   Else
  loc_11AF403:     If (Me.EOF = 0) Then
  loc_11AF40C:       Me.MoveLast
  loc_11AF411:     End If
  loc_11AF411:   End If
  loc_11AF411:   Call Proc_224_50_1672B2C()
  loc_11AF432:   Proc_5_0_1107AD0(&HFF, Me)
  loc_11AF43A: End If
  loc_11AF43A: Exit Sub
  loc_11AF43B: ' Referenced from: 11AF0A4
  loc_11AF441: unk_4FE244.RollbackTrans
  loc_11AF44E: Set var_124 = Err()
  loc_11AF454: Call 0.Method_arg_2C (var_11C, global_56)
  loc_11AF475: MsgBox(CVar(var_11C), &H10, " Deletion Message", var_F4, var_114)
  loc_11AF488: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '10DE170
  'Data Table: 4FE240
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_CC As Variant
  Dim var_90 As Label
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_114 As Variant
  Dim var_11C As TextBox
  Dim var_144 As Variant
  Dim var_14C As TextBox
  Dim var_170 As Variant
  loc_10DDEAC: On Error Goto loc_10DE168
  loc_10DDEBD: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_10DDEC0:   Exit Sub
  loc_10DDEC1: End If
  loc_10DDED8: If (Me.RecordCount > 0) Then
  loc_10DDEFE:   Call Proc_224_51_EC865C(Proc_5_1_100EC1C("EDIT", Me))
  loc_10DDF16:   Set var_90 = Me.Txt
  loc_10DDF1C:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_10DDF24:   var_98.Enabled = False
  loc_10DDF34:   Set var_90 = Me.TopCtrl1
  loc_10DDF3A:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(global_56)
  loc_10DDF53:   If (CStr() = "Add") Then
  loc_10DDF61:     Set var_90 = Me.Txt
  loc_10DDF67:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2))
  loc_10DDF6F:     var_98.SetFocus
  loc_10DDF7B:   End If
  loc_10DDF7F:   Set var_90 = Me.TopCtrl1
  loc_10DDF85:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_98)
  loc_10DDF9E:   If (CStr() = "Edit") Then
  loc_10DDFAC:     Set var_90 = Me.Txt
  loc_10DDFB2:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3))
  loc_10DDFBA:     var_98.SetFocus
  loc_10DDFC6:   End If
  loc_10DDFD4:   Set var_90 = Me.Txt
  loc_10DDFDA:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_10DDFED:   global_76 = var_98.Text
  loc_10DE026:   var_A8 = Space((5 - Len("KMISS")))
  loc_10DE02E:   var_CC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & "KMISS") + var_A8)
  loc_10DE047:   var_E0 = CVar(Me.LblVPrefix.Caption) 'String
  loc_10DE04A:   var_F0 = (var_CC + var_E0)
  loc_10DE05A:   Set var_98 = Me.LblVPrefix
  loc_10DE06D:   var_104 = Space((5 - Len(var_98.Caption)))
  loc_10DE075:   var_114 = (var_F0 + var_104)
  loc_10DE08C:   Set var_118 = Me.Txt
  loc_10DE092:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_11C, var_120)
  loc_10DE09A:   8 = var_11C.Text
  loc_10DE0B1:   var_134 = Space((var_114 - Len(CStr(Val(var_120)))))
  loc_10DE0B9:   var_144 = (var_98 + var_134)
  loc_10DE0CB:   Set var_148 = Me.Txt
  loc_10DE0D1:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_14C)
  loc_10DE0EB:   var_170 = (var_144 + CVar(CStr(Val(var_14C.Text))))
  loc_10DE0F6:   global_80 = CStr(var_170)
  loc_10DE136: Else
  loc_10DE157:   MsgBox("No Record To Edit.", &H40, "Information", var_CC, var_E0)
  loc_10DE167: End If
  loc_10DE167: Exit Sub
  loc_10DE168: ' Referenced from: 10DDEAC
  loc_10DE168: Proc_6_60_E63754()
  loc_10DE16D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A60C
  'Data Table: 4FE240
  loc_E1A601: Me.Global.Unload Me
  loc_E1A609: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB389C
  'Data Table: 4FE240
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB380C: On Error Goto loc_EB3896
  loc_EB3826: If (Me.RecordCount <= 0) Then
  loc_EB382F:   var_B8 = "Information"
  loc_EB384A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB385A:   Exit Sub
  loc_EB385B: End If
  loc_EB385E: MemVar_1F950E4 = "Select Distinct S.Docid,S.Vno as VNo,CONVERT(VARCHAR(11),S.VDate) as [Date],S.VPrefix,D.NAME AS ToLocation From (Stock S left Join GodownMast D on S.GodownCode=D.Code) Left Join ItemMast I ON S.Item=I.Code And I.ItemType='Store' WHERE VTYPE='KMREC'"
  loc_EB386B: Proc_6_126_F1C850("1500,1500,1500,4500")
  loc_EB3879: MemVar_1F95120 = Me
  loc_EB3890: Call 0.Method_arg_2B0 (1)
  loc_EB3895: Exit Sub
  loc_EB3896: ' Referenced from: EB380C
  loc_EB3896: Proc_6_60_E63754(var_B8)
  loc_EB389B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2FE28
  'Data Table: 4FE240
  loc_E2FE18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2FE20: Call Proc_224_50_1672B2C(global_56)
  loc_E2FE25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2FDC8
  'Data Table: 4FE240
  loc_E2FDB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2FDC0: Call Proc_224_50_1672B2C(global_56)
  loc_E2FDC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2F3A8
  'Data Table: 4FE240
  loc_E2F398: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F3A0: Call Proc_224_50_1672B2C(global_56)
  loc_E2F3A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2F228
  'Data Table: 4FE240
  Dim var_3701 As Double
  loc_E2F218: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F220: Call Proc_224_50_1672B2C(global_56)
  loc_E2F225: Exit Sub
  loc_E2F226: var_3701 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '145F120
  'Data Table: 4FE240
  Dim Me As Recordset15
  Dim var_E4 As String
  Dim var_E8 As String
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_150 As Integer
  Dim var_130 As Variant
  Dim var_170 As Variant
  Dim var_1BC As String
  Dim var_1DC As Variant
  Dim var_238 As Variant
  Dim var_290 As Variant
  Dim var_120 As Variant
  Dim unk_4FE244 As Connection15
  Dim var_29C As String
  Dim var_A0 As Recordset15
  Dim var_140 As Variant
  Dim var_DE As Integer
  Dim var_B6 As Integer
  Dim var_B0 As Recordset15
  Dim var_11C As Fields15
  Dim var_F8 As Variant
  Dim var_198 As Variant
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_B4 As Recordset15
  Dim var_2AC As String
  loc_145E604: On Error Goto loc_145F11A
  loc_145E61E: If (Me.RecordCount <= 0) Then
  loc_145E621:   Exit Sub
  loc_145E622: End If
  loc_145E62D: Set var_11C = Me.Txt
  loc_145E633: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0))
  loc_145E643: Set var_174 = Me.Txt
  loc_145E649: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_178)
  loc_145E659: Set var_1E0 = Me.Txt
  loc_145E65F: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_1E4)
  loc_145E66F: Set var_23C = Me.Txt
  loc_145E675: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_240)
  loc_145E6AB: var_F8 = Space((5 - Len(global_72)))
  loc_145E6B3: var_118 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & global_72) + var_F8)
  loc_145E6B7: var_150 = 5
  loc_145E6C4: var_130 = CVar(var_120) 'Address
  loc_145E6D3: var_170 = (var_118 + Mid(var_130, 9, var_150))
  loc_145E702: var_1CC = Space((5 - Len(CStr(Mid(CVar(var_178), 9, 5)))))
  loc_145E70A: var_1DC = (var_170 + var_1CC)
  loc_145E73F: var_228 = Space((8 - Len(CStr(Trim(Right(CVar(var_1E4), 8))))))
  loc_145E747: var_238 = (var_1DC + var_228)
  loc_145E772: var_290 = (var_238 + CVar(CStr(Trim(Right(CVar(var_240), 8)))))
  loc_145E7CC: var_E4 = "Select S.Docid,S.VNo,S.VDate,S.IssQty as Qty,S.IssueUnit As Unit,S.Rate,S.Amount,S.GodownCode," & " I.Name as ItemName,G.Name as GodName,S.Remarks"
  loc_145E7D3: var_E8 = var_E4 & " From ((Stock as S Left Join ItemMast as I on S.Item=I.Code And I.ItemType='Store')"
  loc_145E7EF: var_88 = var_E8 & " Left Join GodownMast as G on S.GodownCode=G.Code)" & " Where S.DocID='" & CStr(var_290) & "' Order By S.Sno"
  loc_145E806: var_E4 = "Select S.GodownCode,G.Name as GodName" & " From Stock as S Left Join GodownMast as G on S.GodownCode=G.Code"
  loc_145E80D: var_1BC = var_E4 & " Where S.DocID='"
  loc_145E824: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_120, var_E8)
  loc_145E82C: var_1BC = var_120.Text
  loc_145E867: unk_4FE244.Execute var_120 & var_E8 & "'", var_F8, -1
  loc_145E872: Set var_B4 = Me.Txt
  loc_145E899: Set var_11C = Me.Txt
  loc_145E89F: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_120, var_E4, "Select R.Name As SunName,TS.* From TranSunDetail TS Left Join RevMast R On TS.SunCode=R.Code Where TS.DocId='")
  loc_145E8A7: var_F8 = var_120.Text
  loc_145E8B0: var_E8 = -1 & var_E4
  loc_145E8D3: var_29C = var_E8 & "' And TS.Site_Code='" & MemVar_1F95070 & "' And (TS.LogSite_Code='" & MemVar_1F95078 & "' Or TS.LogSite_Code='HO') Order By Sno"
  loc_145E8DC: unk_4FE244.Execute var_29C, var_174, var_11C
  loc_145E8E7: Set var_B0 = var_174
  loc_145E90F: If (var_88 = vbNullString) Then
  loc_145E912:   Exit Sub
  loc_145E913: End If
  loc_145E929: unk_4FE244.Execute var_88, var_F8, -1
  loc_145E934: Set var_A0 = var_11C
  loc_145E943: var_DC = var_A0.RecordCount
  loc_145E951: If (var_DC <= 0) Then
  loc_145E95A:   Call 0.Method_arg_50 (var_E4)
  loc_145E968:   var_108 = CVar(var_E4) 'String
  loc_145E97B:   MsgBox("** No Records Found to Print **", &H40, var_108, var_118, var_130)
  loc_145E98B:   Exit Sub
  loc_145E98C: End If
  loc_145E9A2: Set var_11C = var_A0 
  loc_145E9B8: Set var_A0 = var_11C
  loc_145E9BE: var_140 = CVar(CreateFieldDefFile(var_11C, MemVar_1F950B4 & "\ExciseInvoiceCumGatePass.ttx")) 'Integer
  loc_145E9C1: var_9C = var_140 'Variant
  loc_145E9DD: var_E4 = MemVar_1F950B4 & "\ExciseInvoiceCumGatePass.RPT"
  loc_145E9E6: Call 0.Method_arg_1C (var_E4, var_140, var_11C)
  loc_145E9F1: MemVar_1F951E8 = var_11C
  loc_145E9FD: var_B6 = 0
  loc_145EA03: var_B0.MoveFirst
  loc_145EA08: ' Referenced from: 145EDE3
  loc_145EA0E: var_DE = var_B0.EOF
  loc_145EA17: If Not(var_DE) Then
  loc_145EA44:   var_2BC = var_B0.Fields.Item("SunCode").Value 'Variant
  loc_145EA62:   If (var_2BC = CVar(MemVar_1F95078 & "TOT")) Then
  loc_145EA8B:     Proc_6_39_E7D3A0(var_108, CVar(var_B0.Fields.Item("SunAmt")), var_B6)
  loc_145EAB4:     var_C0 = CSng(Format(var_108, "0.00"))
  loc_145EAC8:   Else
  loc_145EADB:     If (var_2BC = CVar(MemVar_1F95078 & "NET")) Then
  loc_145EB0B:       Proc_6_39_E7D3A0(var_108, CVar(var_B0.Fields.Item("SunAmt")), CVar(var_C8), var_C0, 1)
  loc_145EB13:       var_118 = (1 + var_108)
  loc_145EB4D:       Proc_6_39_E7D3A0(var_108, CVar(var_B0.Fields.Item("SunAmt")), CSng("0.00"))
  loc_145EB67:       If (var_108 > 0) Then
  loc_145EB79:         var_11C = var_B0.Fields
  loc_145EB81:         var_120 = var_11C.Item("SunAmt")
  loc_145EB90:         Proc_6_39_E7D3A0(var_108, CVar(var_120), var_DE)
  loc_145EBB0:         var_130 = Format(var_108, "0.00")
  loc_145EBB9:         var_D0 = CSng(var_130)
  loc_145EBCA:       End If
  loc_145EBCD:     Else
  loc_145EBD3:       var_B6 = (var_B6 + 1)
  loc_145EBE7:       Call 0.Method_arg_90 (var_11C, var_DC, var_AA, 1, var_B6)
  loc_145EBEF:       Call 0.Method_arg_24 (var_D0, 1, 1)
  loc_145EBFB:       For var_2C0 = var_11C To CInt(var_DC):     &HFF = var_2C0 'Integer
  loc_145EC14:         Call 0.Method_arg_90 (var_11C, CLng(var_AA), var_120)
  loc_145EC1C:         Call 0.Method_arg_20 (var_E4)
  loc_145EC24:         Call 0.Method_arg_30 (var_11C)
  loc_145EC3A:         var_2D0 = Ucase(CVar(var_E4)) 'Variant
  loc_145EC71:         If (var_2D0 = Ucase(CVar("lblTaxName" & CStr(var_B6)))) Then
  loc_145ECBD:           Proc_6_17_EAAE40(var_130)
  loc_145ECD9:           Call 0.Method_arg_90 (var_174, CLng(var_AA), var_178)
  loc_145ECE1:           Call 0.Method_arg_20 (CStr(var_130))
  loc_145ECE9:           Call 0.Method_arg_38 (StrConv(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("SunName")))), 3, 0))
  loc_145ED0C:         Else
  loc_145ED21:           var_108 = Ucase(CVar("TaxAmt" & CStr(var_B6)))
  loc_145ED35:           If (var_2D0 = var_108) Then
  loc_145ED47:             var_11C = var_B0.Fields
  loc_145ED4F:             var_120 = var_11C.Item("SunAmt")
  loc_145ED5E:             Proc_6_39_E7D3A0(var_108)
  loc_145ED89:             Proc_6_17_EAAE40(var_150, Format(var_108, "0.00"), 1)
  loc_145ED91:             var_E4 = CStr(var_150)
  loc_145EDA5:             Call 0.Method_arg_90 (var_174, CLng(var_AA), var_178)
  loc_145EDAD:             Call 0.Method_arg_20 (var_E4, 1)
  loc_145EDB5:             Call 0.Method_arg_38 (CVar(var_120))
  loc_145EDD3:           End If
  loc_145EDD3:         End If
  loc_145EDD6:       Next var_2C0 'Integer
  loc_145EDDB:     End If
  loc_145EDDB:   End If
  loc_145EDDE:   var_B0.MoveNext
  loc_145EDE3:   GoTo loc_145EA08
  loc_145EDE6: End If
  loc_145EDF7: Call 0.Method_arg_90 (var_11C, var_DC)
  loc_145EDFF: Call 0.Method_arg_24 (var_AA)
  loc_145EE0B: For var_2D4 =  To CInt(var_DC): 1 = var_2D4 'Integer
  loc_145EE24:   Call 0.Method_arg_90 (var_11C, CLng(var_AA))
  loc_145EE2C:   Call 0.Method_arg_20 (var_120)
  loc_145EE34:   Call 0.Method_arg_30 (var_E4)
  loc_145EE4A:   var_2E4 = Ucase(CVar(var_E4)) 'Variant
  loc_145EE7A:   If (var_2E4 = Ucase("Title")) Then
  loc_145EE90:     Call 0.Method_arg_90 (var_11C, CLng(var_AA))
  loc_145EE98:     Call 0.Method_arg_20 (var_120)
  loc_145EEA0:     Call 0.Method_arg_38 ("'Excise Invoice Cum Gate Pass'")
  loc_145EEAF:   Else
  loc_145EED1:     If (var_2E4 = Ucase("ToDepartment")) Then
  loc_145EEEB:       var_11C = var_B4.Fields
  loc_145EEF3:       var_120 = var_11C.Item("GodName")
  loc_145EF07:       var_2AC = "'"
  loc_145EF0C:       var_118 = "'" & var_120.Value & var_2AC 
  loc_145EF24:       Call 0.Method_arg_90 (var_174, CLng(var_AA))
  loc_145EF2C:       Call 0.Method_arg_20 (var_178)
  loc_145EF34:       Call 0.Method_arg_38 (CStr(var_118))
  loc_145EF53:     Else
  loc_145EF75:       If (var_2E4 = Ucase("Total")) Then
  loc_145EFA3:         Proc_6_17_EAAE40(var_118, Format(var_C0, "0.00"))
  loc_145EFBF:         Call 0.Method_arg_90 (var_11C, CLng(var_AA), var_120)
  loc_145EFC7:         Call 0.Method_arg_20 (CStr(var_118), 1)
  loc_145EFCF:         Call 0.Method_arg_38 (1)
  loc_145EFEA:       Else
  loc_145F00C:         If (var_2E4 = Ucase("NetTotal")) Then
  loc_145F019:           var_198 = "0.00"
  loc_145F03A:           Proc_6_17_EAAE40(var_118, Format(var_D0, var_198))
  loc_145F042:           var_E4 = CStr(var_118)
  loc_145F056:           Call 0.Method_arg_90 (var_11C, CLng(var_AA), var_120)
  loc_145F05E:           Call 0.Method_arg_20 (var_E4, 1)
  loc_145F066:           Call 0.Method_arg_38 (1)
  loc_145F07E:         End If
  loc_145F07E:       End If
  loc_145F07E:     End If
  loc_145F07E:   End If
  loc_145F081: Next var_2D4 'Integer
  loc_145F09F: Call 0.Method_arg_64 (var_11C, CVar(var_A0))
  loc_145F0A7: Call 0.Method_arg_2C (var_198)
  loc_145F0B5: Call 0.Method_arg_150 (var_2AC)
  loc_145F0C0: Call 0.Method_arg_50 (var_E4)
  loc_145F0CA: Set var_120 = Nothing
  loc_145F0E4: Set var_11C = MemVar_1F951E8 
  loc_145F0F0: Proc_6_99_1484404(var_11C, 0, var_E4)
  loc_145F0FB: MemVar_1F951E8 = var_11C
  loc_145F10E: Set var_A0 = Nothing
  loc_145F116: Set var_B4 = Nothing
  loc_145F119: Exit Sub
  loc_145F11A: ' Referenced from: 145E604
  loc_145F11A: Proc_6_60_E63754(&HFF)
  loc_145F11F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E41D70
  'Data Table: 4FE240
  Dim Me As Recordset15
  loc_E41D47: Me.Requery -1
  loc_E41D57: Me.Requery -1
  loc_E41D67: Me.Requery -1
  loc_E41D6C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1770F00
  'Data Table: 4FE240
  Dim var_96 As Integer
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A0 As MSHFlexGrid
  Dim var_FC As Variant
  Dim var_AC As String
  Dim var_10C As Variant
  Dim var_8E As Integer
  Dim unk_4FE244 As Connection15
  Dim var_12C As Variant
  Dim var_11C As Variant
  Dim var_168 As Variant
  Dim var_18C As Variant
  Dim var_A4 As Variant
  Dim var_7D4 As Double
  Dim var_1CC As Variant
  Dim var_7DC As Double
  Dim var_1E4 As TextBox
  Dim var_1F4 As Variant
  Dim var_238 As Variant
  Dim var_24C As MSHFlexGrid
  Dim var_7E4 As Double
  Dim var_264 As Variant
  Dim var_278 As Variant
  Dim var_294 As Variant
  Dim var_2B4 As Variant
  Dim var_7EC As Double
  Dim var_2E8 As Variant
  Dim var_308 As Variant
  Dim var_31C As MSHFlexGrid
  Dim var_140 As Variant
  Dim var_7F4 As Double
  Dim var_33C As Variant
  Dim var_35C As Variant
  Dim var_150 As Variant
  Dim var_7FC As Double
  Dim var_390 As Variant
  Dim var_3D4 As Variant
  Dim var_434 As Variant
  Dim var_804 As Double
  Dim var_488 As MSHFlexGrid
  Dim var_498 As Variant
  Dim var_554 As Variant
  Dim var_524 As Variant
  Dim var_5B4 As Variant
  Dim var_5D4 As Variant
  Dim var_64C As Variant
  Dim var_66C As Variant
  Dim var_690 As Variant
  Dim var_720 As Variant
  Dim var_764 As Variant
  Dim var_1AC As String
  Dim var_1C8 As String
  Dim var_1D8 As String
  Dim var_1FC As String
  Dim var_25C As String
  Dim var_270 As String
  Dim var_32C As String
  Dim var_37C As String
  Dim var_4A4 As String
  Dim var_4FC As Variant
  Dim var_5A4 As Variant
  Dim var_60C As Variant
  Dim var_6B0 As Variant
  Dim var_6D0 As Variant
  Dim var_6E0 As Variant
  Dim var_710 As Variant
  Dim var_7A4 As Variant
  Dim var_500 As MSHFlexGrid
  Dim var_67C As Variant
  Dim var_4BC As Variant
  Dim var_574 As Variant
  Dim var_A8 As Variant
  Dim var_1E0 As Variant
  Dim var_260 As TextBox
  Dim var_2C4 As Variant
  Dim var_2F8 As Variant
  Dim var_274 As MSHFlexGrid
  Dim var_1D0 As String
  Dim var_510 As Variant
  Dim var_7C8 As Variant
  Dim var_820 As Variant
  Dim var_830 As Variant
  Dim var_88 As Recordset15
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_176F284: On Error Goto loc_1770EE4
  loc_176F289: var_96 = 0
  loc_176F297: Set var_A0 = Me.Txt
  loc_176F29D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_176F2C6: If (Proc_6_27_EA61EC(var_A4, "Voucher Number") = 0) Then
  loc_176F2C9:   Exit Sub
  loc_176F2CA: End If
  loc_176F2D5: Set var_A0 = Me.Txt
  loc_176F2DB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_176F304: If (Proc_6_27_EA61EC(var_A4, "Voucher Date") = 0) Then
  loc_176F307:   Exit Sub
  loc_176F308: End If
  loc_176F313: Set var_A0 = Me.Txt
  loc_176F319: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_176F342: If (Proc_6_27_EA61EC(var_A4, "From Location") = 0) Then
  loc_176F345:   Exit Sub
  loc_176F346: End If
  loc_176F351: Set var_A0 = Me.Txt
  loc_176F357: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_176F380: If (Proc_6_27_EA61EC(var_A4, "To Location") = 0) Then
  loc_176F383:   Exit Sub
  loc_176F384: End If
  loc_176F384: var_BC = 1
  loc_176F3AA: var_AC = CStr(Me.FGrid.TextMatrix))
  loc_176F3BB: If (var_AC = vbNullString) Then
  loc_176F3C4:   Call 0.Method_arg_50 (var_AC, CVar(CLng(1)))
  loc_176F3E5:   MsgBox("Please Fill Item Detail", &H40, CVar(var_AC), var_11C, var_12C)
  loc_176F408:   Me.FGrid.Row = 1
  loc_176F414:   Set var_A0 = Me.FGrid
  loc_176F425:   Exit Sub
  loc_176F426: End If
  loc_176F434: unk_4FE244.BeginTrans var_130
  loc_176F43D: Set var_A0 = Me.TopCtrl1
  loc_176F443: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(&HFF)
  loc_176F44B: var_AC = CStr(FGrid.DispID_8001)
  loc_176F45C: If (var_AC = "Add") Then
  loc_176F46E:   Call Proc_224_53_115D848(MemVar_1F95044, var_AC)
  loc_176F479:   global_76 = var_AC
  loc_176F486:   Call Proc_224_54_110DA9C(MemVar_1F95044, var_AC)
  loc_176F491:   global_80 = var_AC
  loc_176F4A3:   If (global_76 <> global_76) Then
  loc_176F4B1:     var_BC = global_76
  loc_176F4B9:     var_FC = Right(var_BC, 8)
  loc_176F4CF:     Call 0.Method_arg_50 (var_AC, var_BC)
  loc_176F4F1:     MsgBox("Entry will be saved with New Voucher No. " & Trim(var_FC), 0, CVar(var_AC), var_140, var_150)
  loc_176F505:   End If
  loc_176F508: Else
  loc_176F52F:   unk_4FE244.Execute "Delete From Stock Where DocID='" & global_76 & "'", var_FC, -1
  loc_176F568:   unk_4FE244.Execute "Delete From Stock Where DocID='" & global_80 & "'", var_FC, -1
  loc_176F5A1:   unk_4FE244.Execute "Delete From TranTaxDetail Where DocID='" & global_76 & "'", var_FC, -1
  loc_176F5DA:   unk_4FE244.Execute "Delete From TranSunDetail Where DocID='" & global_76 & "'", var_FC, -1
  loc_176F5EC: End If
  loc_176F611: For var_158 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_158 'Integer
  loc_176F61B:   var_BC = CVar(CLng(var_98)) 'Long
  loc_176F623:   var_DC = CVar(CLng(0)) 'Long
  loc_176F62D:   var_FC = CVar(CStr(var_98)) 'String
  loc_176F635:   Set var_A0 = Me.FGrid
  loc_176F63B:   LateIdCallSt
  loc_176F64C: Next var_158 'Integer
  loc_176F676: For var_16C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_16C 'Integer
  loc_176F680:   var_BC = CVar(CLng(var_98)) 'Long
  loc_176F688:   var_DC = CVar(CLng(3)) 'Long
  loc_176F6B3:   var_168 = CVar(CLng(var_98)) 'Long
  loc_176F6F3:   If (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_176F724:     var_7D4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_176F747:     Set var_A8 = Me.Txt
  loc_176F74D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1CC, var_1D0, var_7D4, CVar(CLng(0)), CVar(CLng(var_98)))
  loc_176F755:     var_168 = var_1CC.Text
  loc_176F762:     var_7DC = Val(var_1D0)
  loc_176F773:     Set var_1E0 = Me.Txt
  loc_176F779:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E4, var_1E8, var_7DC)
  loc_176F781:     (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) = var_1E4.Text
  loc_176F78A:     var_168 = CVar(CLng(var_98)) 'Long
  loc_176F7A1:     var_10C = Me.FGrid.TextMatrix)
  loc_176F7DB:     var_7E4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_176F7EC:     Set var_260 = Me.Txt
  loc_176F7F2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_264, var_268, var_7E4, CVar(CLng(0)), CVar(CLng(var_98)))
  loc_176F80D:     Set var_274 = Me.Txt
  loc_176F813:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_278, var_27C, CVar(CLng(9)))
  loc_176F81B:     var_168 = var_278.Tag
  loc_176F824:     var_294 = CVar(CLng(var_98)) 'Long
  loc_176F82C:     var_2B4 = CVar(CLng(7)) 'Long
  loc_176F855:     var_2E8 = CVar(CLng(var_98)) 'Long
  loc_176F85D:     var_308 = CVar(CLng(3)) 'Long
  loc_176F886:     var_33C = CVar(CLng(var_98)) 'Long
  loc_176F88E:     var_35C = CVar(CLng(3)) 'Long
  loc_176F8B7:     var_390 = CVar(CLng(var_98)) 'Long
  loc_176F8CE:     var_3D4 = Me.FGrid.TextMatrix)
  loc_176F908:     var_804 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_176F926:     var_498 = Me.FGrid.TextMatrix)
  loc_176F935:     Proc_6_104_ED68A8(var_4BC, var_498, CVar(CLng(4)), CVar(CLng(var_98)), var_804, CVar(CLng(8)), CVar(CLng(var_98)), var_3D4)
  loc_176F93E:     Set var_500 = Me.TopCtrl1
  loc_176F944:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(CVar(CLng(2)))
  loc_176F97F:     var_5B4 = CVar(CLng(var_98)) 'Long
  loc_176F987:     var_5D4 = CVar(CLng(5)) 'Long
  loc_176F9B0:     var_64C = CVar(CLng(var_98)) 'Long
  loc_176F9B8:     var_66C = CVar(CLng(6)) 'Long
  loc_176F9D7:     var_720 = CVar(CLng(var_98)) 'Long
  loc_176FA0E:     var_AC = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,COntraDocId,ContraSno,DepartCode,GodownCode,Rate,RecdQty,AccQty,RecdUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyRec,Unit,LogSite_Code,ItemRestCode)" & " VALUES ('"
  loc_176FA55:     var_1C8 = var_AC & global_76 & "'," & CStr(var_7D4) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "'," & "'KMREC'"
  loc_176FAAC:     var_25C = var_1C8 & "," & CStr(var_7DC) & ",'" & var_1E8 & "','" & CStr(var_264.Tag) & "','" & global_80 & "'," & CStr(var_7E4)
  loc_176FAEE:     var_32C = var_25C & ",'" & var_268 & "','" & var_27C & "'," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_176FB38:     var_4A4 = var_32C & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CStr(var_3D4) & "'," & CStr(var_804) & ",'" & CStr(var_498)
  loc_176FB5C:     var_4FC = CVar(var_4A4 & "','" & MemVar_1F950C8 & "',") & var_4BC & ",'" 
  loc_176FB8B:     var_6B0 = var_4FC & IIf((CStr(var_510) = "Add"), "A", "E") & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_176FBBB:     var_7A4 = var_6B0 & "','" & CVar(MemVar_1F95078) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')" 
  loc_176FBC9:     unk_4FE244.Execute CStr(var_7A4), var_7C8, -1
  loc_176FCF3:     var_7D4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_176FD16:     Set var_A8 = Me.Txt
  loc_176FD1C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1CC, var_1D0, var_7D4, CVar(CLng(0)), CVar(CLng(var_98)), var_7CC)
  loc_176FD24:     var_764 = var_1CC.Text
  loc_176FD31:     var_7DC = Val(var_1D0)
  loc_176FD42:     Set var_1E0 = Me.Txt
  loc_176FD48:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E4, var_1E8, var_7DC, CVar(CLng(&HA)))
  loc_176FD50:     var_720 = var_1E4.Text
  loc_176FD61:     var_18C = CVar(CLng(9)) 'Long
  loc_176FD6A:     Set var_1F4 = Me.FGrid
  loc_176FD70:     var_10C = var_1F4.TextMatrix)
  loc_176FD97:     var_11C = Me.FGrid.TextMatrix)
  loc_176FDAA:     var_7E4 = Val(CStr(var_11C))
  loc_176FDBB:     Set var_260 = Me.Txt
  loc_176FDC1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_264, var_268, var_7E4, CVar(CLng(0)), CVar(CLng(var_98)), var_10C)
  loc_176FDC9:     var_18C = var_264.Tag
  loc_176FDDC:     Set var_274 = Me.Txt
  loc_176FDE2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_278, var_27C, CVar(CLng(var_98)))
  loc_176FDEA:     var_690 = var_278.Tag
  loc_176FDF3:     var_294 = CVar(CLng(var_98)) 'Long
  loc_176FDFB:     var_2B4 = CVar(CLng(7)) 'Long
  loc_176FE0A:     var_12C = Me.FGrid.TextMatrix)
  loc_176FE24:     var_2E8 = CVar(CLng(var_98)) 'Long
  loc_176FE2C:     var_308 = CVar(CLng(3)) 'Long
  loc_176FE55:     var_33C = CVar(CLng(var_98)) 'Long
  loc_176FE6C:     var_150 = Me.FGrid.TextMatrix)
  loc_176FEA6:     var_7FC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_176FEC4:     var_434 = Me.FGrid.TextMatrix)
  loc_176FED3:     Proc_6_104_ED68A8(var_498, var_434, CVar(CLng(4)), CVar(CLng(var_98)), var_7FC, CVar(CLng(8)), CVar(CLng(var_98)), var_150)
  loc_176FEDC:     Set var_488 = Me.TopCtrl1
  loc_176FEE2:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(CVar(CLng(2)))
  loc_176FF1D:     var_524 = CVar(CLng(var_98)) 'Long
  loc_176FF25:     var_554 = CVar(CLng(5)) 'Long
  loc_176FF4E:     var_5D4 = CVar(CLng(var_98)) 'Long
  loc_176FF56:     var_60C = CVar(CLng(6)) 'Long
  loc_176FF75:     var_67C = CVar(CLng(var_98)) 'Long
  loc_176FF7D:     var_6E0 = CVar(CLng(&HA)) 'Long
  loc_176FFAC:     var_AC = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,ContraDocId,ContraSno,DepartCode,GodownCode,Rate,IssQty,IssueUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyIss,Unit,LogSite_Code,ItemRestCode) " & " VALUES ('"
  loc_176FFF3:     var_1C8 = var_AC & global_80 & "'," & CStr(var_7D4) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "'," & "'KMISS'"
  loc_1770022:     var_1FC = CStr(var_10C)
  loc_1770058:     var_270 = var_1C8 & "," & CStr(var_7DC) & ",'" & var_1E8 & "','" & var_1FC & "','" & global_76 & "'," & CStr(var_7E4) & ",'" & var_268
  loc_177009E:     var_37C = var_270 & "','" & var_27C & "'," & CStr(Val(CStr(var_12C))) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CStr(var_150)
  loc_17700EE:     var_574 = CVar(var_37C & "'," & CStr(var_7FC) & ",'" & CStr(var_434) & "','" & MemVar_1F950C8 & "',") & var_498 & ",'" & IIf((CStr(var_4FC) = "Add"), "A", "E") 
  loc_1770129:     var_6D0 = var_574 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(MemVar_1F95078) 
  loc_177013A:     var_764 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1770154:     unk_4FE244.Execute CStr(var_6D0 & "','" & var_764 & "')"), var_7A4, -1
  loc_1770246:     var_96 = &HFF
  loc_1770249:   End If
  loc_177024C: Next var_16C 'Integer
  loc_1770257: If (var_96 = 0) Then
  loc_1770273:   MsgBox("Nil Details Can't Be Saved", &H40, var_10C, var_11C, var_12C)
  loc_1770289:   unk_4FE244.RollbackTrans
  loc_177028E:   Exit Sub
  loc_177028F: End If
  loc_17702B4: For var_810 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_98 = var_810 'Integer
  loc_17702BE:   var_BC = CVar(CLng(var_98)) 'Long
  loc_17702C6:   var_DC = CVar(CLng(2)) 'Long
  loc_17702E6:   var_11C = Trim(CVar(CStr(Me.FGCat.TextMatrix))))
  loc_17702EE:   var_168 = vbNullString
  loc_177034C:   If CBool(CVar(CLng(6)) And (CDbl(Val(CStr(Me.FGCat.TextMatrix)))) <> CDbl(0))) Then
  loc_177035B:     var_DC = CVar(CLng(0)) 'Long
  loc_177037D:     var_7D4 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1770384:     var_168 = CVar(CLng(var_98)) 'Long
  loc_1770395:     Set var_A4 = Me.FGCat
  loc_177039B:     var_10C = var_A4.TextMatrix)
  loc_17703AE:     var_7DC = Val(CStr(var_10C))
  loc_17703D1:     Set var_1CC = Me.Txt
  loc_17703D7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1E0, var_1E8, var_7DC, CVar(CLng(1)), var_168, var_7D4)
  loc_17703DF:     var_DC = var_1E0.Text
  loc_17703EC:     var_7E4 = Val(var_1E8)
  loc_17703FA:     Set var_1E4 = Me.Txt
  loc_1770400:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1F4, var_7E4, CVar(CLng(var_98)), CVar(CLng(var_98)))
  loc_177040F:     Proc_6_7_F26918(var_12C, CVar(var_1F4), (CVar(var_1F4) <> var_168))
  loc_1770422:     Set var_24C = Me.Txt
  loc_1770428:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_260, var_1FC)
  loc_1770430:     var_DC = var_260.Tag
  loc_1770439:     var_238 = CVar(CLng(var_98)) 'Long
  loc_1770441:     var_294 = CVar(CLng(2)) 'Long
  loc_1770460:     var_2C4 = CVar(CLng(var_98)) 'Long
  loc_1770468:     var_2F8 = CVar(CLng(4)) 'Long
  loc_177048A:     var_7EC = Val(CStr(Me.FGCat.TextMatrix)))
  loc_17704BB:     var_7F4 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_17704EC:     var_7FC = Val(CStr(Me.FGCat.TextMatrix)))
  loc_17704FA:     Proc_6_7_F26918(var_6D0, MemVar_1F950EC, var_7FC, CVar(CLng(6)), CVar(CLng(var_98)), var_7F4, CVar(CLng(5)), CVar(CLng(var_98)))
  loc_1770503:     Set var_31C = Me.TopCtrl1
  loc_1770509:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_7EC)
  loc_1770554:     var_AC = "Insert Into TranTaxDetail(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,DepartCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_17705A7:     var_1D8 = var_AC & global_76 & "'," & CStr(var_7D4) & "," & CStr(var_7DC) & "," & "'KMREC'" & ",'" & Me.LblVPrefix.Caption & "','"
  loc_17705F5:     var_4FC = CVar(var_1D8 & MemVar_1F95070 & "'," & CStr(var_7E4) & ",") & var_12C & ",'" & CVar(var_1FC) & "','" & CVar(CStr(Me.FGCat.TextMatrix))) 
  loc_177061D:     var_5A4 = var_4FC & "'," & CVar(var_7EC) & "," & CVar(var_7F4) 
  loc_177065D:     var_710 = var_5A4 & "," & CVar(var_7FC) & ",'" & CVar(MemVar_1F950C8) & "'," & var_6D0 & ",'" 
  loc_1770677:     var_830 = var_710 & IIf((CStr(var_764) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F95078) 
  loc_177068E:     unk_4FE244.Execute CStr(var_830 & "')"), var_850, -1
  loc_1770738:   End If
  loc_177073B: Next var_810 'Integer
  loc_177074C: Set var_A0 = Me.LblCap
  loc_1770752: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_852, var_98)
  loc_177075D: For var_856 =  To var_852: 1 = var_856 'Integer
  loc_177076E:   Set var_A0 = Me.Txt
  loc_1770774:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1770783:   Proc_6_7_F26918(var_10C, CVar(var_A4))
  loc_1770796:   Set var_A8 = Me.Txt
  loc_177079C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1CC)
  loc_17707C8:   Set var_1E4 = Me.LblCap
  loc_17707CE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_1F4)
  loc_17707E8:   Set var_24C = Me.TxtGt
  loc_17707EE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_260)
  loc_1770803:   var_7D4 = Val(var_260.Text)
  loc_177080A:   Set var_264 = Me.TopCtrl1
  loc_1770810:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_7D4)
  loc_1770855:   Proc_6_7_F26918(var_710, Date)
  loc_177086E:   var_AC = "Insert Into TranSunDetail (DocId,Sno,vDate,Vno,Vprefix,VType,SunCode,SunAmt,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_17708A8:   var_150 = CVar(var_1CC.Text) 'String
  loc_17708B4:   var_434 = CVar(var_AC & global_76 & "'," & CStr(var_98) & ",") & var_10C & "," & var_150 & ",'" 
  loc_1770907:   var_690 = var_434 & CVar(Me.LblVPrefix.Caption) & "'," & "'KMREC'" & ",'" & CVar(var_1F4.Tag) & "'," & CVar(var_7D4) & ",'" & IIf((CStr(var_5A4) = "Add"), "A", "E") 
  loc_1770959:   var_820 = var_690 & "','" & CVar(MemVar_1F950C8) & "'," & var_710 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_1770967:   unk_4FE244.Execute CStr(var_820), var_830, -1
  loc_17709E4: Next var_856 'Integer
  loc_17709ED: Set var_A0 = Me.TopCtrl1
  loc_17709F3: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1770A0C: If (CStr() = "Add") Then
  loc_1770A13:   Set var_88 = New 
  loc_1770A1E:   Me.TopCtrl1.CursorLocation = 3
  loc_1770A31:   Set var_A0 = Me.Txt
  loc_1770A37:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_1770A47:   var_FC = CVar(var_A4.Text) 'String
  loc_1770A4D:   Proc_6_7_F26918(var_10C)
  loc_1770A70:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1770A96:   var_11C = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_68 & "' And VP.Date_From<=") 'String
  loc_1770AAD:   var_88.Open var_11C & var_10C & " Order By VP.Date_From DESC", CVar(MemVar_1F95044), 2
  loc_1770AE7:   If (var_88.RecordCount > 0) Then
  loc_1770AF8:     Set var_A0 = Me.Txt
  loc_1770AFE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC)
  loc_1770B06:     3 = var_A4.Text
  loc_1770B13:     var_7D4 = Val(var_AC)
  loc_1770B63:     Proc_6_7_F26918(var_150, CVar(var_88.Fields.Item("Date_From")), var_7D4)
  loc_1770B96:     var_1AC = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_7D4) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1770BA4:     var_10C = CVar(var_1AC & MemVar_1F95078 & "') and V_Type='") 'String
  loc_1770BC8:     unk_4FE244.Execute CStr(var_10C & var_88.Fields.Item("V_Type").Value & "' and Date_From=" & var_150), var_434, -1
  loc_1770C02:   End If
  loc_1770C06:   Set var_8C = New 
  loc_1770C11:   var_8C.CursorLocation = 3
  loc_1770C24:   Set var_A0 = Me.Txt
  loc_1770C2A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4, var_1AC)
  loc_1770C32:   var_1F4 = var_A4.Text
  loc_1770C40:   Proc_6_7_F26918(var_10C, CVar(var_1AC))
  loc_1770C63:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1770C89:   var_11C = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_72 & "' And VP.Date_From<=") 'String
  loc_1770CA0:   var_8C.Open var_11C & var_10C & " Order By VP.Date_From DESC", CVar(MemVar_1F95044), 2
  loc_1770CDA:   If (var_8C.RecordCount > 0) Then
  loc_1770CEB:     Set var_A0 = Me.Txt
  loc_1770CF1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC, 3)
  loc_1770CF9:     -1 = var_A4.Text
  loc_1770D06:     var_7D4 = Val(var_AC)
  loc_1770D0F:     var_BC = "V_Type"
  loc_1770D2B:     var_FC = var_8C.Fields.Item(var_BC).Value
  loc_1770D56:     Proc_6_7_F26918(var_150, CVar(var_8C.Fields.Item("Date_From")), var_7D4)
  loc_1770D89:     var_1AC = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_7D4) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1770DBB:     unk_4FE244.Execute CStr(CVar(var_1AC & MemVar_1F95078 & "') and V_Type='") & var_FC & "' and Date_From=" & var_150), var_434, -1
  loc_1770DF5:   End If
  loc_1770DF5: End If
  loc_1770DFB: unk_4FE244.CommitTrans
  loc_1770E02: var_8E = 0
  loc_1770E13: Set var_A0 = Me.Txt
  loc_1770E19: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, var_8E)
  loc_1770E21: var_1F4 = var_A4.Text
  loc_1770E3E: Me.Requery -1
  loc_1770E68: Me.Find "SearchCode ='" & "SearchCode ='" & var_AC & "'", 0, 1
  loc_1770E74: Call Proc_224_50_1672B2C(var_BC, -1)
  loc_1770E7D: Set var_A0 = Me.TopCtrl1
  loc_1770E83: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_FC)
  loc_1770E9C: If (CStr() = "Add") Then
  loc_1770E9F:   Call TopCtrl1_UnknownEvent_A()
  loc_1770EA4:   Exit Sub
  loc_1770EA5: End If
  loc_1770EC8: Call Proc_224_51_EC865C(Proc_5_1_100EC1C("INI", Me))
  loc_1770ED8: Set var_88 = Nothing
  loc_1770EE0: Set var_8C = Nothing
  loc_1770EE3: Exit Sub
  loc_1770EE4: ' Referenced from: 176F284
  loc_1770EEA: If (var_8E = &HFF) Then
  loc_1770EF3:   unk_4FE244.RollbackTrans
  loc_1770EF8: End If
  loc_1770EF8: Proc_6_60_E63754(global_56)
  loc_1770EFD: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '117942C
  'Data Table: 4FE240
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_10C As String
  Dim var_108 As Variant
  Dim var_110 As Long
  Dim var_104 As TextBox
  Dim Me As Variant
  loc_1179068: On Error Goto loc_1179423
  loc_117906B: Call Proc_224_52_EF713C()
  loc_1179086: Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_11790A1: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11790AA: Set var_BC = Me.FGrid
  loc_11790DF: Set var_104 = Me.TxtGrid
  loc_11790E5: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11790ED: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_117911A: Set var_A8 = Me.TxtGrid
  loc_1179120: Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_1179128: var_BC.MaxLength = 0
  loc_1179157: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1179166:   Set var_A8 = Me.TxtGrid
  loc_117916C:   Call 0.Method_TxtGrid_GotFocus0 (0, var_BC, var_114)
  loc_1179174:   var_110 = var_BC.Left
  loc_117918B:   Me.DGItem.Left = CVar(var_114)
  loc_11791A5:   Set var_F0 = Me.TxtGrid
  loc_11791AB:   Call 0.Method_TxtGrid_GotFocus0 (0, var_104)
  loc_11791C4:   Set var_A8 = Me.TxtGrid
  loc_11791CA:   Call 0.Method_TxtGrid_GotFocus0 (0, var_BC)
  loc_11791DE:   var_94 = CVar((var_BC.Top + var_104.Height)) 'Single
  loc_11791ED:   Me.DGItem.Top = CVar(var_BC.Top)
  loc_1179240:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1179243:     Exit Sub
  loc_1179244:   End If
  loc_1179257:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_117925F:   var_DC = CVar(CLng(1)) 'Long
  loc_1179292:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_117929B:     Me.MoveFirst
  loc_11792BB:     var_DC = CVar(CLng(9)) 'Long
  loc_11792C4:     Set var_BC = Me.FGrid
  loc_11792DB:     Proc_6_17_EAAE40(var_12C, CVar(CStr(var_BC.TextMatrix))), var_DC, CVar(CLng(Me.FGrid.Row)))
  loc_11792FA:     var_10C = CStr("Code =" & var_12C)
  loc_1179304:     Me.Find var_10C, 0, 1
  loc_1179334:     If (Me.EOF = &HFF) Then
  loc_117933D:       Me.MoveFirst
  loc_1179342:     End If
  loc_1179342:   End If
  loc_1179345: Else
  loc_117934C:   If Not (var_110 = CLng(7)) Then
  loc_1179356:     If (var_110 = CLng(3)) Then
  loc_1179359:     End If
  loc_1179362:     If (global_88 = 0) Then
  loc_1179374:       Set var_A8 = Me.TxtGrid
  loc_117937A:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 0, var_15C)
  loc_1179382:       var_BC.SelStart = var_DC
  loc_117939B:       Set var_A8 = Me.TxtGrid
  loc_11793A1:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_11793A9:       var_94 = var_BC.Text
  loc_11793BC:       Set var_F0 = Me.TxtGrid
  loc_11793C2:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_104)
  loc_11793CA:       var_104.SelLength = Len(var_10C)
  loc_11793DD:     End If
  loc_11793E0:   Else
  loc_11793E7:     If (var_110 = CLng(4)) Then
  loc_11793F7:       Set var_A8 = Me.TxtGrid
  loc_11793FD:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_1179415:       global_100 = Val(var_BC.Text)
  loc_1179422:     End If
  loc_1179422:   End If
  loc_1179422: End If
  loc_1179422: Exit Sub
  loc_1179423: ' Referenced from: 1179068
  loc_1179423: Proc_6_60_E63754(global_100)
  loc_1179428: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11CC2E8
  'Data Table: 4FE240
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_11CBE80: On Error Goto loc_11CC2E1
  loc_11CBE8D: If (CLng(Shift) = &H1B) Then
  loc_11CBE9C:   Set var_88 = Me.TxtGrid
  loc_11CBEA2:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_11CBEBB:   Set var_94 = Me.TxtGrid
  loc_11CBEC1:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_11CBEC9:   var_98.Text = var_8C.Tag
  loc_11CBEE5:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11CBEEE:   Set var_88 = Me.FGrid
  loc_11CBF0A:   Set var_88 = Me.TxtGrid
  loc_11CBF10:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0)
  loc_11CBF18:   var_8C.Visible = FGrid.DispID_8001
  loc_11CBF24:   Exit Sub
  loc_11CBF25: End If
  loc_11CBF38: var_AC = CLng(Me.FGrid.Col)
  loc_11CBF48: If (var_AC = CLng(1)) Then
  loc_11CBF56:   If (global_92 = "Yes") Then
  loc_11CBF71:     Set var_98 = Nothing
  loc_11CBF7C:     Set var_94 = Nothing
  loc_11CBFAA:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_11CBFC1:   Else
  loc_11CBFD9:     Set var_98 = Nothing
  loc_11CC012:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 2, Nothing)
  loc_11CC026:   End If
  loc_11CC030:   If (CLng(Shift) = &HD) Then
  loc_11CC03E:     Call Proc_224_48_14A8A34(KeyCode, 0, var_B0, var_98, 0, 1)
  loc_11CC049:     If (var_B0 = &HFF) Then
  loc_11CC08F:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_88, 9, 2)
  loc_11CC09F:     End If
  loc_11CC09F:   End If
  loc_11CC0A2: Else
  loc_11CC0A9:   If (var_AC = CLng(3)) Then
  loc_11CC0EC:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_88 = &HFF))) Then
  loc_11CC0FC:       Call Proc_224_48_14A8A34(0, 0, var_B2, 3, 0)
  loc_11CC107:       If (var_B2 = &HFF) Then
  loc_11CC14D:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_88, 9, 0)
  loc_11CC15D:       End If
  loc_11CC15D:     End If
  loc_11CC160:   Else
  loc_11CC167:     If (var_AC = CLng(7)) Then
  loc_11CC1AA:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_88 = &HFF))) Then
  loc_11CC1BA:         Call Proc_224_48_14A8A34(0, 0, var_B2, 7, 0)
  loc_11CC1C5:         If (var_B2 = &HFF) Then
  loc_11CC20B:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_88, 9, 9)
  loc_11CC21B:         End If
  loc_11CC21B:       End If
  loc_11CC21E:     Else
  loc_11CC225:       If (var_AC = CLng(4)) Then
  loc_11CC268:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_88 = &HFF))) Then
  loc_11CC278:           Call Proc_224_48_14A8A34(0, 0, var_B2, 0, 0)
  loc_11CC283:           If (var_B2 = &HFF) Then
  loc_11CC28A:             Set var_94 = Me.FGrid
  loc_11CC291:             Set var_98 = Me.TxtGrid
  loc_11CC2D0:             Proc_6_62_1254E68(var_94, var_98, KeyCode, Shift, global_88, CByte((CInt(7) + 1)), 0)
  loc_11CC2E0:           End If
  loc_11CC2E0:         End If
  loc_11CC2E0:       End If
  loc_11CC2E0:     End If
  loc_11CC2E0:   End If
  loc_11CC2E0: End If
  loc_11CC2E0: Exit Sub
  loc_11CC2E1: ' Referenced from: 11CBE80
  loc_11CC2E1: Proc_6_60_E63754(7, 0, var_94, var_98)
  loc_11CC2E6: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '109EDC0
  'Data Table: 4FE240
  Dim arg_10 As Integer
  Dim var_A0 As Variant
  Dim var_9C As Variant
  Dim var_A4 As Long
  Dim var_A8 As TextBox
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Long
  loc_109EAF8: On Error Goto loc_109EDB9
  loc_109EAFE: Proc_6_58_E06050(arg_10)
  loc_109EB09: Proc_6_133_E7FB08(var_9C)
  loc_109EB12: arg_10 = CInt(var_9C)
  loc_109EB3B: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_109EB5A:   If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_109EB68:     If (global_92 = "Yes") Then
  loc_109EB77:       Set var_A0 = Me.TxtGrid
  loc_109EB7D:       Call 0.Method_TxtGrid_KeyPress0 (0, var_A8, var_AC)
  loc_109EB85:       var_A4 = var_A8.Text
  loc_109EB8F:       var_86 = CInt(Len(var_AC))
  loc_109EB9F:       var_88 = arg_10
  loc_109EBA6:       Set var_A8 = Me.TxtGrid
  loc_109EBB1:       var_AC = "BarCode"
  loc_109EBCC:       Proc_6_89_1470B00(var_A8, KeyAscii, global_60, arg_10, var_AC)
  loc_109EBE7:       Set var_A0 = Me.TxtGrid
  loc_109EBED:       Call 0.Method_TxtGrid_KeyPress0 (0, var_A8, var_AC, 0)
  loc_109EBF5:       var_88 = var_A8.Text
  loc_109EC0D:       If (Len(var_AC) = CLng(var_86)) Then
  loc_109EC27:         If (Me.AbsolutePosition > 0) Then
  loc_109EC3B:           var_8C = Me.AbsolutePosition
  loc_109EC41:         Else
  loc_109EC46:           var_8C = 1
  loc_109EC49:         End If
  loc_109EC4C:         arg_10 = var_88
  loc_109EC79:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name", 0)
  loc_109EC9F:         If (Me.AbsolutePosition <= 0) Then
  loc_109ECAB:           Me.AbsolutePosition = var_8C
  loc_109ECB0:         End If
  loc_109ECB0:       End If
  loc_109ECB3:     Else
  loc_109ECB7:       Set var_A8 = Me.TxtGrid
  loc_109ECDD:       Proc_6_89_1470B00(var_A8, KeyAscii, global_60, arg_10, "Name", 0)
  loc_109ECEC:     End If
  loc_109ECEC:   End If
  loc_109ECEF: Else
  loc_109ECF6:   If (var_A4 = CLng(3)) Then
  loc_109ED03:     Set var_A0 = Me.TxtGrid
  loc_109ED09:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, arg_10, var_8C)
  loc_109ED24:     Proc_6_42_129B55C(var_A8, arg_10, 8, 3)
  loc_109ED33:   Else
  loc_109ED3A:     If (var_A4 = CLng(7)) Then
  loc_109ED47:       Set var_A0 = Me.TxtGrid
  loc_109ED4D:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_8C)
  loc_109ED68:       Proc_6_42_129B55C(var_A8, arg_10, 8, 2)
  loc_109ED77:     Else
  loc_109ED7E:       If (var_A4 = CLng(4)) Then
  loc_109ED8B:         Set var_A0 = Me.TxtGrid
  loc_109ED91:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_86)
  loc_109EDAC:         Proc_6_42_129B55C(var_A8, arg_10, 6)
  loc_109EDB8:       End If
  loc_109EDB8:     End If
  loc_109EDB8:   End If
  loc_109EDB8: End If
  loc_109EDB8: Exit Sub
  loc_109EDB9: ' Referenced from: 109EAF8
  loc_109EDB9: Proc_6_60_E63754(2, arg_10)
  loc_109EDBE: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10AD180
  'Data Table: 4FE240
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As Variant
  Dim var_180 As Double
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_A8 As String
  loc_10ACECC: On Error Goto loc_10AD178
  loc_10ACEDB: If (KeyCode = 0) Then
  loc_10ACEF1:   var_A0 = CLng(Me.FGrid.Col)
  loc_10ACF01:   If (var_A0 = CLng(1)) Then
  loc_10ACF27:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_10ACF38:       Call TxtGrid_KeyDown(KeyCode, global_90)
  loc_10ACF48:       If (global_92 = "Yes") Then
  loc_10ACF75:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_60, Shift, "BarCode")
  loc_10ACF87:       Else
  loc_10ACF8B:         Set var_AC = Me.TxtGrid
  loc_10ACF96:         var_A8 = "Name"
  loc_10ACFB1:         Proc_6_89_1470B00(var_AC, KeyCode, global_60, Shift, var_A8)
  loc_10ACFC0:       End If
  loc_10ACFC0:     End If
  loc_10ACFC3:   Else
  loc_10ACFCA:     If Not (var_A0 = CLng(3)) Then
  loc_10ACFD4:       If (var_A0 = CLng(4)) Then
  loc_10ACFD7:       End If
  loc_10ACFE4:       Set var_8C = Me.TxtGrid
  loc_10ACFEA:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_10ACFF2:       &HFF = var_AC.Text
  loc_10AD015:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10AD02D:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10AD05A:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_10AD062:       Set var_178 = Me.FGrid
  loc_10AD068:       LateIdCallSt
  loc_10AD0A2:       var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10AD0CC:       var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10AD0D3:       Set var_178 = Me.FGrid
  loc_10AD132:       var_164 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_180))) 'String
  loc_10AD140:       LateIdCallSt
  loc_10AD16D:       Call Proc_224_56_F73BF0(Me.FGrid, var_164, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(5)), CVar(CLng(var_178.Row)), var_180, CVar(CLng(4)))
  loc_10AD172:       Call Proc_224_46_1463A30(var_144, var_178, var_164, 1)
  loc_10AD177:     End If
  loc_10AD177:   End If
  loc_10AD177: End If
  loc_10AD177: Exit Sub
  loc_10AD178: ' Referenced from: 10ACECC
  loc_10AD178: Proc_6_60_E63754(1, var_144)
  loc_10AD17D: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20E28
  'Data Table: 4FE240
  Dim arg_10 As Integer
  loc_E20E04: On Error Goto loc_E20E1F
  loc_E20E12: Call Proc_224_48_14A8A34(Cancel, &HFF)
  loc_E20E1B: arg_10 = Not(var_88)
  loc_E20E1E: Exit Sub
  loc_E20E1F: ' Referenced from: E20E04
  loc_E20E1F: Proc_6_60_E63754(arg_10)
  loc_E20E24: Exit Sub
End Sub

Private Sub DGToDepart_UnknownEvent_9 'F375B4
  'Data Table: 4FE240
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F374AB: Me.DGToDepart.Visible = False
  loc_F374CA: If (Me.RecordCount > 0) Then
  loc_F37509:   Set var_B4 = Me.Txt
  loc_F3750F:   Call 0.Method_DGToDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F37517:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3754A:   var_B0 = Me.Fields.Item("Name")
  loc_F37569:   Set var_B4 = Me.Txt
  loc_F3756F:   Call 0.Method_DGToDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F37577:   var_B8.Text = CStr(var_B0.Value)
  loc_F3758D: End If
  loc_F37598: Set var_A8 = Me.Txt
  loc_F3759E: Call 0.Method_DGToDepart_UnknownEvent_90 (CInt(4))
  loc_F375A6: var_B0.SetFocus
  loc_F375B2: Exit Sub
End Sub

Private Sub Form_Load() '1242480
  'Data Table: 4FE240
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_8C As String
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_C0 As String
  Dim unk_4FE244 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Variant
  Dim var_120 As DataGrid
  Dim var_124 As TextBox
  loc_1241F56: Call 0.Method_arg_50 (var_8C)
  loc_1241F68: Me.LblCaption.Caption = var_8C
  loc_1241F8F: Me.Recordset15.CursorLocation = 3
  loc_1241FB2: var_8C = "SELECT SubCode,subgroup.Name,CardNo,CompanyType FROM SUBGROUP INNER JOIN MEMCATMAST ON SUBGROUP.COMPANYTYPE=MEMCATMAST.CODE WHERE ActiveYN=1 And IsNull(FBilling,'')<>'N' And (COMPANYTYPE IS NOT NULL AND COMPANYTYPE<>'') and (SUBGROUP.LOGSITE_CODE='" & MemVar_1F95078
  loc_1241FB9: var_A0 = CVar(var_8C & "' or SUBGROUP.LOGSITE_CODE='HO') Order by subgroup.Name") 'String
  loc_1241FC3: Me.Open var_A0, CVar(MemVar_1F95044), 3
  loc_1241FD7: CVarUnk
  loc_1241FDC: VerifyVarObj
  loc_1241FE2: Set var_90 = Me.DGMemName
  loc_1241FE8: LateIdStAd
  loc_1242003: var_C0 = "Select E.ExciseInvoiceTaxStru,E.BarCodeFeatureInPurchase From Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE="
  loc_1242013: Proc_6_17_EAAE40(var_A0, MemVar_1F95078, var_C0, var_110, -1)
  loc_1242032: unk_4FE244.Execute CStr(var_90 & var_A0 & vbNullString), var_90, New
  loc_124203D: Set var_88 = var_90
  loc_1242065: If (var_88.RecordCount > 0) Then
  loc_1242096:   global_92 = Proc_6_38_E69628(CVar(var_88.Fields.Item("BarCodeFeatureInPurchase")), 1)
  loc_12420BA:   var_118 = var_88.Fields.Item("ExciseInvoiceTaxStru")
  loc_12420D1:   global_84 = Proc_6_38_E69628(CVar(var_118))
  loc_12420DE: End If
  loc_12420E8: Set global_60 = New 
  loc_12420FA: Me.CursorLocation = 3
  loc_124210A: If (global_92 = "Yes") Then
  loc_124212B:   var_8C = "Select I.Code,I.BarCode,I.Name,I.Unit,I.IssueUnit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_124213C:   Me.Open CVar(var_8C & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.BarCode"), CVar(MemVar_1F95044), 3
  loc_124214A: Else
  loc_1242168:   var_8C = "Select I.Code,I.BarCode,I.Name,I.Unit,I.IssueUnit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1242179:   Me.Open CVar(var_8C & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_1242184: End If
  loc_124218D: CVarUnk
  loc_1242192: VerifyVarObj
  loc_1242198: Set var_90 = Me.DGItem
  loc_124219E: LateIdStAd
  loc_12421B6: Set global_52 = New 
  loc_12421C8: Me.DGItem.CursorLocation = 3
  loc_12421F2: var_A0 = CVar("Select G.Code,G.Name From GodownMast G iNNER join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078 & "')  Order by G.Name") 'String
  loc_12421FC: Me.Open var_A0, CVar(MemVar_1F95044), 2
  loc_1242210: CVarUnk
  loc_1242215: VerifyVarObj
  loc_124221B: Set var_90 = Me.DGDepart
  loc_1242221: LateIdStAd
  loc_124224B: Me.DGDepart.CursorLocation = 3
  loc_1242275: var_A0 = CVar("Select G.Code,G.Name From GodownMast G INNER join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078 & "')  Order by G.Name") 'String
  loc_124227F: Me.Open var_A0, CVar(MemVar_1F95044), 2
  loc_1242293: CVarUnk
  loc_1242298: VerifyVarObj
  loc_124229E: Set var_90 = Me.DGToDepart
  loc_12422A4: LateIdStAd
  loc_12422BD: If (global_92 = "Yes") Then
  loc_12422CC:   Me.TxtBarCode.Visible = True
  loc_12422DF:   Set var_90 = Me.Label1
  loc_12422E5:   Call 0.Method_Form_Load0 (6, var_118, &HFF, var_90, New, 3, -1)
  loc_12422ED:   var_118.Visible = var_90
  loc_12422F9: End If
  loc_1242315: Me.CursorLocation = 3
  loc_124233F: var_A0 = CVar("Select Distinct DocID as SearchCode,Site_Code,LogSite_Code From Stock WHERE   LOGSITE_CODE='" & MemVar_1F95078 & "' and VTYPE='KMREC' order by  DocID") 'String
  loc_1242349: Me.Open var_A0, CVar(MemVar_1F95044), 2
  loc_124235A: global_68 = "KMREC"
  loc_1242364: global_72 = "KMISS"
  loc_1242368: Call Proc_224_55_12767D8(3, -1, global_52, 3)
  loc_1242390: Call Proc_224_51_EC865C(Proc_5_1_100EC1C("INI", Me, New, -1), Me)
  loc_124239B: Call Proc_224_50_1672B2C(global_60)
  loc_12423AE: Set var_90 = Me.Txt
  loc_12423B4: Call 0.Method_Form_Load0 (CInt(5), var_118)
  loc_12423D3: Me.DGMemName.Left = CVar(var_118.Left)
  loc_12423EF: Set var_120 = Me.Txt
  loc_12423F5: Call 0.Method_Form_Load0 (CInt(5), var_124)
  loc_1242410: Set var_90 = Me.Txt
  loc_1242416: Call 0.Method_Form_Load0 (CInt(5), var_118)
  loc_124242E: var_B0 = CVar(((var_118.Top + var_124.Height) + CDbl(&H19))) 'Single
  loc_124243D: Me.DGMemName.Top = CVar(var_118.Left)
  loc_1242467: Proc_6_23_DFC5B8(Me, 5445)
  loc_1242474: Set var_88 = Nothing
  loc_1242477: Exit Sub
  loc_1242478: Proc_6_60_E63754(10695)
  loc_124247D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E613C8
  'Data Table: 4FE240
  loc_E61387: Set global_56 = Nothing
  loc_E61399: Set global_52 = Nothing
  loc_E613AB: Set global_64 = Nothing
  loc_E613BD: Set global_60 = Nothing
  loc_E613C4: Exit Sub
End Sub

Private Sub Form_Activate() 'E30424
  'Data Table: 4FE240
  loc_E30400: Set var_88 = Me.TopCtrl1
  loc_E30406: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030000()
  loc_E3041B: If (CLng(CInt()) = &H2D) Then
  loc_E3041E:   Call TopCtrl1_UnknownEvent_15()
  loc_E30423: End If
  loc_E30423: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E808D4
  'Data Table: 4FE240
  loc_E80868: On Error Goto loc_E808CB
  loc_E80899: If (((global_92 = "Yes") And (Shift = 1)) And (Me.TxtBarCode.Visible = &HFF)) Then
  loc_E808A6:   Me.TxtBarCode.SetFocus
  loc_E808AE: End If
  loc_E808C2: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E808CA: Exit Sub
  loc_E808CB: ' Referenced from: E80868
  loc_E808CB: Proc_6_60_E63754(Shift)
  loc_E808D0: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F396B4
  'Data Table: 4FE240
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F395AB: Me.DGDepart.Visible = False
  loc_F395CA: If (Me.RecordCount > 0) Then
  loc_F39609:   Set var_B4 = Me.Txt
  loc_F3960F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3), var_B8)
  loc_F39617:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3964A:   var_B0 = Me.Fields.Item("Name")
  loc_F39669:   Set var_B4 = Me.Txt
  loc_F3966F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3), var_B8)
  loc_F39677:   var_B8.Text = CStr(var_B0.Value)
  loc_F3968D: End If
  loc_F39698: Set var_A8 = Me.Txt
  loc_F3969E: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3))
  loc_F396A6: var_B0.SetFocus
  loc_F396B2: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10D0D34
  'Data Table: 4FE240
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_148 As Variant
  loc_10D0A4B: Me.DGItem.Visible = False
  loc_10D0A6A: If (Me.RecordCount > 0) Then
  loc_10D0A80:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D0A88:   var_E4 = CVar(CLng(1)) 'Long
  loc_10D0ABB:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10D0AC3:   Set var_128 = Me.FGrid
  loc_10D0AC9:   LateIdCallSt
  loc_10D0AF8:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D0B00:   var_E4 = CVar(CLng(9)) 'Long
  loc_10D0B33:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10D0B3B:   Set var_128 = Me.FGrid
  loc_10D0B41:   LateIdCallSt
  loc_10D0B70:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D0B78:   var_E4 = CVar(CLng(&HA)) 'Long
  loc_10D0BAB:   var_114 = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_10D0BB3:   Set var_128 = Me.FGrid
  loc_10D0BB9:   LateIdCallSt
  loc_10D0BE8:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D0BF0:   var_E4 = CVar(CLng(2)) 'Long
  loc_10D0C23:   var_114 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_10D0C2B:   Set var_128 = Me.FGrid
  loc_10D0C31:   LateIdCallSt
  loc_10D0C67:   var_B0 = Me.Fields.Item("Rate")
  loc_10D0C7F:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D0C87:   var_F4 = CVar(CLng(7)) 'Long
  loc_10D0CB4:   var_148 = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_10D0CBC:   Set var_128 = Me.FGrid
  loc_10D0CC2:   LateIdCallSt
  loc_10D0CE0: End If
  loc_10D0CEC: Set var_A8 = Me.TxtGrid
  loc_10D0CF2: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15A, var_128, var_148, 1, 1)
  loc_10D0CFA: var_F4 = var_B0.Visible
  loc_10D0D0C: If (var_15A = &HFF) Then
  loc_10D0D18:   Set var_A8 = Me.TxtGrid
  loc_10D0D1E:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_D4, var_128)
  loc_10D0D26:   var_B0.SetFocus
  loc_10D0D32: End If
  loc_10D0D32: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11F0348
  'Data Table: 4FE240
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_98 As String
  Dim Me As Recordset15
  loc_11EFECA: Set var_88 = Me.Txt
  loc_11EFED0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11EFEDE: Proc_6_74_E23240(var_8C)
  loc_11EFEEA: Call Proc_224_52_EF713C(var_8C)
  loc_11EFEF2: var_92 = Index
  loc_11EFEFD: If (var_92 = CInt(3)) Then
  loc_11EFF0A:   Set global_52 = New 
  loc_11EFF1C:   Me.Txt.CursorLocation = 3
  loc_11EFF2F:   Set var_88 = Me.Txt
  loc_11EFF35:   Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_11EFF60:   var_98 = "Select distinct G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_11EFF7F:   Me.Open CVar(var_98 & "') and G.CODE<>'" & var_8C.Tag & "'  Order by G.Name"), CVar(MemVar_1F95044), 2
  loc_11EFFA2:   CVarUnk
  loc_11EFFA7:   VerifyVarObj
  loc_11EFFAD:   Set var_88 = Me.DGDepart
  loc_11EFFB3:   LateIdStAd
  loc_11F0015:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), Me.Txt)
  loc_11F001D:   global_52 = var_8C.Text
  loc_11F0035:   If (3 Or (var_98 = vbNullString)) Then
  loc_11F0038:     Exit Sub
  loc_11F0039:   End If
  loc_11F0046:   Set var_88 = Me.Txt
  loc_11F004C:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_11F0054:   -1 = var_8C.Text
  loc_11F0066:   var_C4 = "Name"
  loc_11F00A1:   If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_11F00AA:     Me.MoveFirst
  loc_11F00CD:     Set var_88 = Me.Txt
  loc_11F00D3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_11F00DB:     0 = var_8C.Text
  loc_11F00F4:     Me.Find 1 & var_98 & "'", var_C4, var_92
  loc_11F0109:   End If
  loc_11F010C: Else
  loc_11F0114:   If (var_92 = CInt(4)) Then
  loc_11F0133:     Me.Recordset15.CursorLocation = 3
  loc_11F0146:     Set var_88 = Me.Txt
  loc_11F014C:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_11F0177:     var_98 = "Select distinct G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_11F0196:     Me.Open CVar(var_98 & "') and G.CODE<>'" & var_8C.Tag & "' Order by G.Name"), CVar(MemVar_1F95044), 2
  loc_11F01B9:     CVarUnk
  loc_11F01BE:     VerifyVarObj
  loc_11F01C4:     Set var_88 = Me.DGToDepart
  loc_11F01CA:     LateIdStAd
  loc_11F0226:     Set var_88 = Me.Txt
  loc_11F022C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11F0234:     var_88 = var_8C.Text
  loc_11F024C:     If (New Or (var_98 = vbNullString)) Then
  loc_11F024F:       Exit Sub
  loc_11F0250:     End If
  loc_11F025D:     Set var_88 = Me.Txt
  loc_11F0263:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_11F026B:     3 = var_8C.Text
  loc_11F027D:     var_C4 = "Name"
  loc_11F02B8:     If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_11F02C1:       Me.MoveFirst
  loc_11F02E4:       Set var_88 = Me.Txt
  loc_11F02EA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_11F02F2:       0 = var_8C.Text
  loc_11F030B:       Me.Find 1 & var_98 & "'", var_C4, -1
  loc_11F0320:     End If
  loc_11F0323:   Else
  loc_11F032B:     If (var_92 = CInt(2)) Then
  loc_11F0336:       var_98 = "{Home}+{End}"
  loc_11F033C:       Proc_303_0_FBACC8(var_98)
  loc_11F0344:     End If
  loc_11F0344:   End If
  loc_11F0344: End If
  loc_11F0344: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11C5B60
  'Data Table: 4FE240
  Dim var_86 As Integer
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_98 As DataGrid
  Dim var_8C As DataGrid
  loc_11C5712: If (CLng(Shift) = &H1B) Then
  loc_11C5715:   Call Proc_224_52_EF713C()
  loc_11C571A:   Exit Sub
  loc_11C571B: End If
  loc_11C571E: var_86 = KeyCode
  loc_11C5729: If (var_86 = CInt(3)) Then
  loc_11C5739:   Set var_98 = Me.Txt
  loc_11C573F:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11C5747:   var_A0 = var_9C.Height
  loc_11C5759:   Set var_8C = Me.Txt
  loc_11C575F:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11C5777:   var_B0 = CVar(((var_90.Top + var_A0) + CDbl(&H19))) 'Single
  loc_11C5786:   Me.DGDepart.Top = var_B0
  loc_11C57A5:   Set var_8C = Me.Txt
  loc_11C57AB:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11C57B3:   var_94 = var_90.Left
  loc_11C57CA:   Me.DGDepart.Left = CVar(var_94)
  loc_11C57F0:   Set var_9C = Nothing
  loc_11C57FB:   Set var_98 = Nothing
  loc_11C581A:   Set var_90 = Me.Txt
  loc_11C5829:   Proc_6_69_134A630(Me.DGDepart, var_90, KeyCode, global_52, Shift, &HFF)
  loc_11C5840: Else
  loc_11C5848:   If (var_86 = CInt(4)) Then
  loc_11C5858:     Set var_98 = Me.Txt
  loc_11C585E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A0, 1)
  loc_11C5866:     var_98 = var_9C.Height
  loc_11C5878:     Set var_8C = Me.Txt
  loc_11C587E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_11C5886:     var_9C = var_90.Top
  loc_11C5896:     var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_11C58A5:     Me.DGToDepart.Top = CVar(var_94)
  loc_11C58C4:     Set var_8C = Me.Txt
  loc_11C58CA:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_11C58D2:     0 = var_90.Left
  loc_11C58E9:     Me.DGToDepart.Left = CVar(var_94)
  loc_11C590F:     Set var_9C = Nothing
  loc_11C591A:     Set var_98 = Nothing
  loc_11C5948:     Proc_6_69_134A630(Me.DGToDepart, Me.Txt, KeyCode, global_64, Shift, &HFF)
  loc_11C595F:   Else
  loc_11C5967:     If (var_86 = CInt(5)) Then
  loc_11C5982:       Set var_9C = Nothing
  loc_11C598D:       Set var_98 = Nothing
  loc_11C59BB:       Proc_6_69_134A630(Me.DGMemName, Me.Txt, KeyCode, global_112, Shift, 0, 1, var_98)
  loc_11C59CF:     End If
  loc_11C59CF:   End If
  loc_11C59CF: End If
  loc_11C59EB: If (CBool(Me.DGMemName.Visible) = 0) Then
  loc_11C5A03:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11C5A0C:     Proc_6_75_E5335C(Shift, arg_14, var_9C, 0, 1)
  loc_11C5A11:   End If
  loc_11C5A26:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11C5A2F:     Proc_6_76_E533C8(Shift, arg_14, var_98)
  loc_11C5A34:   End If
  loc_11C5A34: End If
  loc_11C5A8A: If (((CBool(Me.DGDepart.Visible) = 0) And (CBool(Me.DGToDepart.Visible) = 0)) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_11C5AA2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11C5AAB:     Proc_6_75_E5335C(Shift, arg_14, var_9C)
  loc_11C5AB0:   End If
  loc_11C5AB4:   Set var_8C = Me.TopCtrl1
  loc_11C5ABA:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(0)
  loc_11C5AE5:   If (((CStr(var_86) = "Add") And (KeyCode <> CInt(1))) And (KeyCode <> CInt(2))) Then
  loc_11C5AFD:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11C5B06:       Proc_6_76_E533C8(Shift)
  loc_11C5B0B:     End If
  loc_11C5B0B:   End If
  loc_11C5B0F:   Set var_8C = Me.TopCtrl1
  loc_11C5B15:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_14)
  loc_11C5B37:   If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_11C5B4F:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11C5B58:       Proc_6_76_E533C8(Shift)
  loc_11C5B5D:     End If
  loc_11C5B5D:   End If
  loc_11C5B5D: End If
  loc_11C5B5D: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F69BE4
  'Data Table: 4FE240
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F69AB3: Proc_6_58_E06050(arg_10)
  loc_F69ABE: Proc_6_133_E7FB08(var_94)
  loc_F69AC7: arg_10 = CInt(var_94)
  loc_F69AD0: var_96 = KeyAscii
  loc_F69ADB: If (var_96 = CInt(3)) Then
  loc_F69AFA:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F69B27:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_52, arg_10, "Name")
  loc_F69B36:   End If
  loc_F69B39: Else
  loc_F69B41:   If (var_96 = CInt(4)) Then
  loc_F69B60:     If (CBool(Me.DGToDepart.Visible) = &HFF) Then
  loc_F69B67:       Set var_A8 = Me.Txt
  loc_F69B8D:       Proc_6_89_1470B00(var_A8, KeyAscii, global_64, arg_10, "Name")
  loc_F69B9C:     End If
  loc_F69B9F:   Else
  loc_F69BA7:     If (var_96 = CInt(1)) Then
  loc_F69BB4:       Set var_9C = Me.Txt
  loc_F69BBA:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0, 0)
  loc_F69BD5:       Proc_6_42_129B55C(var_A8, arg_10, 8, 0)
  loc_F69BE1:     End If
  loc_F69BE1:   End If
  loc_F69BE1: End If
  loc_F69BE1: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA5978
  'Data Table: 4FE240
  loc_EA590A: If (KeyCode = CInt(5)) Then
  loc_EA5929:   If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_EA593D:     var_A4 = "Name"
  loc_EA5961:     Proc_6_68_12A2818(Me.DGMemName, Me.Txt, KeyCode, global_112)
  loc_EA5974:   End If
  loc_EA5974: End If
  loc_EA5974: Exit Sub
  loc_EA5976: CExtInstUnk
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E512F4
  'Data Table: 4FE240
  loc_E512D2: Set var_88 = Me.Txt
  loc_E512D8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E512E6: Proc_6_73_E23294(var_8C)
  loc_E512F2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '154325C
  'Data Table: 4FE240
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_A8 As Variant
  Dim var_98 As String
  Dim var_C8 As Integer
  Dim unk_4FE244 As Connection15
  Dim var_8C As Variant
  Dim var_94 As Field20
  Dim var_D8 As Variant
  Dim Me As Recordset15
  Dim var_128 As TextBox
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_130 As TextBox
  loc_154226F: var_86 = Cancel
  loc_154227A: If (var_86 = CInt(1)) Then
  loc_1542288:   Set var_8C = Me.Txt
  loc_154228E:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1542296:   var_98 = "Vr No"
  loc_15422B7:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_15422C4:     Set var_8C = Me.Txt
  loc_15422CA:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15422D2:     var_90.SetFocus
  loc_15422E0:     arg_10 = &HFF
  loc_15422E3:     Exit Sub
  loc_15422E4:   End If
  loc_15422F2:   Set var_8C = Me.Txt
  loc_15422F8:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_1542300:   arg_10 = var_90.Text
  loc_1542318:   If (CDbl(var_98) = CDbl(0)) Then
  loc_154232E:     var_B8 = "Vr No Can Not Be 0"
  loc_1542334:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_154234E:     Set var_8C = Me.Txt
  loc_1542354:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_154235C:     var_90.SetFocus
  loc_154236A:     arg_10 = &HFF
  loc_154236D:     Exit Sub
  loc_154236E:   End If
  loc_1542372:   Set var_8C = Me.TopCtrl1
  loc_1542378:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_10)
  loc_1542380:   var_98 = CStr(var_86)
  loc_1542391:   If (var_98 = "Add") Then
  loc_154239A:     Call Proc_224_53_115D848(MemVar_1F95044)
  loc_15423AD:     Set var_8C = Me.Txt
  loc_15423B3:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_15423BB:     var_90.Text = var_98
  loc_15423D0:     Call Proc_224_53_115D848(MemVar_1F95044, var_98)
  loc_15423DB:     global_76 = var_98
  loc_15423E8:     Call Proc_224_54_110DA9C(MemVar_1F95044, var_98)
  loc_15423F3:     global_80 = var_98
  loc_15423FA:   End If
  loc_15423FE:   Set var_8C = Me.TopCtrl1
  loc_1542404:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_98)
  loc_154241D:   If (CStr() = "Add") Then
  loc_1542426:     var_C8 = 0
  loc_1542446:     var_98 = "Select Count(*) From Stock Where DocID='" & global_76
  loc_1542456:     unk_4FE244.Execute var_98 & "'", var_B8, -1
  loc_154245E:     var_8C = var_8C.Fields
  loc_1542466:     var_C8 = var_90.Item(var_90)
  loc_154246E:     var_94 = var_94.Value
  loc_1542495:     If (var_D8 > 0) Then
  loc_154249E:       Call 0.Method_arg_50 (var_98)
  loc_15424AC:       var_D8 = CVar(var_98) 'String
  loc_15424B9:       var_B8 = "Duplicate Vr No."
  loc_15424BF:       MsgBox(var_B8, &H40, var_D8, var_F8, var_118)
  loc_15424D5:       Call Proc_224_53_115D848(MemVar_1F95044, var_98)
  loc_15424E5:       If (var_98 = vbNullString) Then
  loc_15424F2:         Set var_8C = Me.Txt
  loc_15424F8:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542500:         var_90.SetFocus
  loc_154250E:         arg_10 = &HFF
  loc_1542511:         Exit Sub
  loc_1542512:       End If
  loc_1542518:       Call Proc_224_53_115D848(MemVar_1F95044, var_98)
  loc_154252B:       Set var_8C = Me.Txt
  loc_1542531:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1542539:       var_90.Text = arg_10
  loc_154254E:       Call Proc_224_53_115D848(MemVar_1F95044, var_98)
  loc_1542559:       global_76 = var_98
  loc_1542562:       arg_10 = &HFF
  loc_1542565:       Exit Sub
  loc_1542566:     End If
  loc_154256C:     var_C8 = 0
  loc_154258C:     var_98 = "Select Count(*) From Stock Where DocID='" & global_80
  loc_154259C:     unk_4FE244.Execute var_98 & "'", var_B8, -1
  loc_15425A4:     var_8C = var_8C.Fields
  loc_15425AC:     var_C8 = var_90.Item(var_90)
  loc_15425B4:     var_94 = var_94.Value
  loc_15425DB:     If (var_D8 > 0) Then
  loc_15425E4:       Call 0.Method_arg_50 (var_98, var_D8)
  loc_1542605:       MsgBox("Duplicate Vr No.", &H40, CVar(var_98), var_F8, var_118)
  loc_154261B:       Call Proc_224_54_110DA9C(MemVar_1F95044, var_98)
  loc_154262B:       If (var_98 = vbNullString) Then
  loc_1542638:         Set var_8C = Me.Txt
  loc_154263E:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542646:         var_90.SetFocus
  loc_1542654:         arg_10 = &HFF
  loc_1542657:         Exit Sub
  loc_1542658:       End If
  loc_154265E:       Call Proc_224_54_110DA9C(MemVar_1F95044, var_98, arg_10)
  loc_1542669:       global_80 = var_98
  loc_1542672:       arg_10 = &HFF
  loc_1542675:       Exit Sub
  loc_1542676:     End If
  loc_1542676:   End If
  loc_1542679: Else
  loc_1542681:   If (var_86 = CInt(5)) Then
  loc_15426D2:     Set var_8C = Me.Txt
  loc_15426D8:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_15426F8:     If (var_90.Text Or (var_98 = vbNullString)) Then
  loc_1542708:       Set var_8C = Me.Txt
  loc_154270E:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542716:       var_90.Text = vbNullString
  loc_154272F:       Set var_8C = Me.Txt
  loc_1542735:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_154273D:       var_90.Tag = vbNullString
  loc_1542757:       Set var_8C = Me.Txt
  loc_154275D:       Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_1542765:       var_90.Text = vbNullString
  loc_154277F:       Set var_8C = Me.Txt
  loc_1542785:       Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_154278D:       var_90.Tag = vbNullString
  loc_154279C:     Else
  loc_15427D7:       Set var_94 = Me.Txt
  loc_15427DD:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_15427E5:       var_128.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1542836:       Set var_94 = Me.Txt
  loc_154283C:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1542844:       var_128.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_1542896:       Set var_94 = Me.Txt
  loc_154289C:       Call 0.Method_Txt_Validate0 (CInt(6), var_128)
  loc_15428A4:       var_128.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_15428C0:       var_A8 = "CompanyType"
  loc_15428D7:       var_90 = Me.Fields.Item(var_A8)
  loc_15428F6:       Set var_94 = Me.Txt
  loc_15428FC:       Call 0.Method_Txt_Validate0 (CInt(6), var_128)
  loc_1542904:       var_128.Tag = CStr(var_90.Value)
  loc_154291A:     End If
  loc_154291D:   Else
  loc_1542925:     If (var_86 = CInt(6)) Then
  loc_1542932:       Set var_8C = Me.Txt
  loc_1542938:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542947:       var_D8 = Trim(CVar(var_90))
  loc_154294F:       var_98 = CStr(var_D8)
  loc_154295D:       Set var_94 = Me.Txt
  loc_1542963:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_154296B:       var_128.Text = var_98
  loc_154299A:       If (Me.RecordCount > 0) Then
  loc_15429A3:         Me.MoveFirst
  loc_15429C6:         Set var_8C = Me.Txt
  loc_15429CC:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, "CardNo='")
  loc_15429D4:         0 = var_90.Text
  loc_15429ED:         Me.Find 1 & var_98 & "'", var_A8, var_D8
  loc_1542A2B:         If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_1542A47:           MsgBox("InValid Card no", &H40, var_D8, var_F8, var_118)
  loc_1542A65:           Set var_8C = Me.Txt
  loc_1542A6B:           Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_1542A73:           var_90.Text = vbNullString
  loc_1542A8D:           Set var_8C = Me.Txt
  loc_1542A93:           Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_1542A9B:           var_90.Tag = vbNullString
  loc_1542AB4:           Set var_8C = Me.Txt
  loc_1542ABA:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542AC2:           var_90.Text = vbNullString
  loc_1542ADB:           Set var_8C = Me.Txt
  loc_1542AE1:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542AE9:           var_90.Tag = vbNullString
  loc_1542AF8:         Else
  loc_1542B34:           Set var_94 = Me.Txt
  loc_1542B3A:           Call 0.Method_Txt_Validate0 (CInt(5), var_128)
  loc_1542B42:           var_128.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1542B94:           Set var_94 = Me.Txt
  loc_1542B9A:           Call 0.Method_Txt_Validate0 (CInt(5), var_128)
  loc_1542BA2:           var_128.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_1542BF3:           Set var_94 = Me.Txt
  loc_1542BF9:           Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1542C01:           var_128.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_1542C34:           var_90 = Me.Fields.Item("CompanyType")
  loc_1542C52:           Set var_94 = Me.Txt
  loc_1542C58:           Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1542C60:           var_128.Tag = CStr(var_90.Value)
  loc_1542C76:         End If
  loc_1542C76:       End If
  loc_1542C79:     Else
  loc_1542C81:       If (var_86 = CInt(2)) Then
  loc_1542C91:         Set var_8C = Me.Txt
  loc_1542C97:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542CCF:         If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_1542CE4:           Set var_8C = Me.Txt
  loc_1542CEA:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542CF2:           var_90.Text = CStr(MemVar_1F950EC)
  loc_1542D04:         Else
  loc_1542D0E:           Set var_8C = Me.Txt
  loc_1542D14:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_1542D34:           Set var_128 = Me.Txt
  loc_1542D3A:           Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_1542D42:           var_130.Text = Proc_6_33_15125B8(var_90)
  loc_1542D55:         End If
  loc_1542D59:         Set var_8C = Me.TopCtrl1
  loc_1542D5F:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_90)
  loc_1542D67:         var_98 = CStr()
  loc_1542D78:         If (var_98 = "Add") Then
  loc_1542D81:           Call Proc_224_53_115D848(MemVar_1F95044)
  loc_1542D91:           If (var_98 = vbNullString) Then
  loc_1542D9E:             Set var_8C = Me.Txt
  loc_1542DA4:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542DAC:             var_90.SetFocus
  loc_1542DBA:             arg_10 = &HFF
  loc_1542DBD:             Exit Sub
  loc_1542DBE:           End If
  loc_1542DC4:           Call Proc_224_54_110DA9C(MemVar_1F95044, var_98)
  loc_1542DD4:           If (var_98 = vbNullString) Then
  loc_1542DE1:             Set var_8C = Me.Txt
  loc_1542DE7:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542DEF:             var_90.SetFocus
  loc_1542DFD:             arg_10 = &HFF
  loc_1542E00:             Exit Sub
  loc_1542E01:           End If
  loc_1542E07:           Call Proc_224_53_115D848(MemVar_1F95044, var_98, arg_10)
  loc_1542E1A:           Set var_8C = Me.Txt
  loc_1542E20:           Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1542E28:           var_90.Text = arg_10
  loc_1542E3D:           Call Proc_224_53_115D848(MemVar_1F95044, var_98)
  loc_1542E48:           global_76 = var_98
  loc_1542E55:           Call Proc_224_54_110DA9C(MemVar_1F95044, var_98)
  loc_1542E60:           global_80 = var_98
  loc_1542E67:         End If
  loc_1542E75:         Set var_8C = Me.Txt
  loc_1542E7B:         Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1542E83:         var_98 = var_90.Text
  loc_1542EA3:         If (Proc_6_91_EF38D0(CDate(var_98)) = 0) Then
  loc_1542EB1:           Set var_8C = Me.Txt
  loc_1542EB7:           Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1542EBF:           var_90.SetFocus
  loc_1542ECB:           Exit Sub
  loc_1542ECC:         End If
  loc_1542ECF:       Else
  loc_1542ED7:         If (var_86 = CInt(3)) Then
  loc_1542F28:           Set var_8C = Me.Txt
  loc_1542F2E:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1542F36:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1542F4E:           If (var_98 Or (var_98 = vbNullString)) Then
  loc_1542F5E:             Set var_8C = Me.Txt
  loc_1542F64:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542F6C:             var_90.Text = vbNullString
  loc_1542F85:             Set var_8C = Me.Txt
  loc_1542F8B:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542F93:             var_90.Tag = vbNullString
  loc_1542FA2:           Else
  loc_1542FDD:             Set var_94 = Me.Txt
  loc_1542FE3:             Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1542FEB:             var_128.Text = CStr(Me.Fields.Item("Name").Value)
  loc_154301E:             var_90 = Me.Fields.Item("Code")
  loc_154303C:             Set var_94 = Me.Txt
  loc_1543042:             Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_154304A:             var_128.Tag = CStr(var_90.Value)
  loc_1543060:           End If
  loc_154306B:           Set var_8C = Me.Txt
  loc_1543071:           Call 0.Method_Txt_Validate0 (CInt(3))
  loc_1543079:           var_98 = "From Location"
  loc_154309A:           If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_15430A7:             Set var_8C = Me.Txt
  loc_15430AD:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15430B5:             var_90.SetFocus
  loc_15430C3:             arg_10 = &HFF
  loc_15430C6:             Exit Sub
  loc_15430C7:           End If
  loc_15430CA:         Else
  loc_15430D2:           If (var_86 = CInt(4)) Then
  loc_1543123:             Set var_8C = Me.Txt
  loc_1543129:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1543131:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1543149:             If (arg_10 Or (var_98 = vbNullString)) Then
  loc_1543159:               Set var_8C = Me.Txt
  loc_154315F:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1543167:               var_90.Text = vbNullString
  loc_1543180:               Set var_8C = Me.Txt
  loc_1543186:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_154318E:               var_90.Tag = vbNullString
  loc_154319D:             Else
  loc_15431D8:               Set var_94 = Me.Txt
  loc_15431DE:               Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_15431E6:               var_128.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1543237:               Set var_94 = Me.Txt
  loc_154323D:               Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1543245:               var_128.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_154325B:             End If
  loc_154325B:           End If
  loc_154325B:         End If
  loc_154325B:       End If
  loc_154325B:     End If
  loc_154325B:   End If
  loc_154325B: End If
  loc_154325B: Exit Sub
End Sub

Private Sub DGMemName_UnknownEvent_9 'F372F4
  'Data Table: 4FE240
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F371EB: Me.DGMemName.Visible = False
  loc_F3720A: If (Me.RecordCount > 0) Then
  loc_F37249:   Set var_B4 = Me.Txt
  loc_F3724F:   Call 0.Method_DGMemName_UnknownEvent_90 (CInt(5), var_B8)
  loc_F37257:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3728A:   var_B0 = Me.Fields.Item("Code")
  loc_F372A9:   Set var_B4 = Me.Txt
  loc_F372AF:   Call 0.Method_DGMemName_UnknownEvent_90 (CInt(5), var_B8)
  loc_F372B7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F372CD: End If
  loc_F372D8: Set var_A8 = Me.Txt
  loc_F372DE: Call 0.Method_DGMemName_UnknownEvent_90 (CInt(5))
  loc_F372E6: var_B0.SetFocus
  loc_F372F2: Exit Sub
End Sub

Private Sub CmdLastEntry_Click() '1279D90
  'Data Table: 4FE240
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_110 As TextBox
  Dim var_120 As String
  Dim var_12C As String
  Dim var_124 As TextBox
  Dim var_140 As String
  Dim var_138 As TextBox
  Dim unk_4FE244 As Connection15
  Dim var_118 As Recordset15
  Dim var_88 As Variant
  Dim var_11A As Integer
  Dim var_98 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  loc_1279818: On Error Goto loc_1279D87
  loc_127981F: Set var_88 = Me.TopCtrl1
  loc_1279825: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_127983E: If (CStr() <> "Add") Then
  loc_1279862:   MsgBox("Only In Add Mode.", &H40, "Fill With Last Entry", var_EC, var_10C)
  loc_1279872:   Exit Sub
  loc_1279873: End If
  loc_127987E: Set var_88 = Me.Txt
  loc_1279884: Call 0.Method_CmdLastEntry_Click0 (CInt(1))
  loc_12798AD: If (Proc_6_27_EA61EC(var_110, "Voucher Number") = 0) Then
  loc_12798B0:   Exit Sub
  loc_12798B1: End If
  loc_12798BC: Set var_88 = Me.Txt
  loc_12798C2: Call 0.Method_CmdLastEntry_Click0 (CInt(2), var_110)
  loc_12798EB: If (Proc_6_27_EA61EC(var_110, "Voucher Date") = 0) Then
  loc_12798EE:   Exit Sub
  loc_12798EF: End If
  loc_12798FA: Set var_88 = Me.Txt
  loc_1279900: Call 0.Method_CmdLastEntry_Click0 (CInt(3), var_110)
  loc_1279929: If (Proc_6_27_EA61EC(var_110, "From Location") = 0) Then
  loc_127992C:   Exit Sub
  loc_127992D: End If
  loc_1279938: Set var_88 = Me.Txt
  loc_127993E: Call 0.Method_CmdLastEntry_Click0 (CInt(4), var_110)
  loc_1279946: var_9C = "To Location"
  loc_1279967: If (Proc_6_27_EA61EC(var_110, var_9C) = 0) Then
  loc_127996A:   Exit Sub
  loc_127996B: End If
  loc_1279989: Set var_88 = Me.Txt
  loc_127998F: Call 0.Method_CmdLastEntry_Click0 (CInt(4), var_110, var_9C, "Select Distinct SH.Docid,SH.SNo,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,I.Name,I.Code,I.Unit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as Rate,I.ConvRatio,I.IssueUnit,I.RestCode From Stock SH Left Join ItemMast I On I.Code=SH.Item And I.ItemType='Store' where SH.VType='KMREC' And GoDownCode='")
  loc_1279997: var_98 = var_110.Tag
  loc_12799A0: var_120 = -1 & var_9C
  loc_12799A7: var_12C = var_120 & "' And Vno In (Select Max(S.Vno) From Stock S Inner Join Stock S1 On S.ContraDocId=S1.DocId And S.ContraSNo=S1.SNo Where S.VType='KMREC' And S.GoDownCode='"
  loc_12799B8: Set var_114 = Me.Txt
  loc_12799BE: Call 0.Method_CmdLastEntry_Click0 (CInt(4), var_124, var_128)
  loc_12799C6: var_12C = var_124.Tag
  loc_12799D6: var_140 = var_14C & var_128 & "' And S1.GoDownCode='"
  loc_12799E7: Set var_134 = Me.Txt
  loc_12799ED: Call 0.Method_CmdLastEntry_Click0 (CInt(3), var_138, var_13C)
  loc_12799F5: var_140 = var_138.Tag
  loc_1279A0E: unk_4FE244.Execute var_110 & var_13C & "') Order By SH.SNo", , 
  loc_1279A19: Set var_118 = var_14C
  loc_1279A59: If (var_118.RecordCount > 0) Then
  loc_1279A6F:   Me.FGrid.Rows = 1
  loc_1279A79:   var_11A = 1
  loc_1279A7C:   ' Referenced from: 1279D60
  loc_1279A8B:   If Not(var_118.EOF) Then
  loc_1279A8E:     var_AC = vbNullString
  loc_1279A98:     Set var_88 = Me.FGrid
  loc_1279AAD:     Set var_158 = Me.FGrid
  loc_1279AE9:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_11A)))) 'String
  loc_1279AF0:     LateIdCallSt
  loc_1279B3B:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("Name")), CVar(CLng(1)), CVar(CLng(var_11A)), var_158)) 'String
  loc_1279B42:     LateIdCallSt
  loc_1279B8D:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("Code")), CVar(CLng(9)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_1279B94:     LateIdCallSt
  loc_1279BDF:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("RestCode")), CVar(CLng(&HA)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_1279BE6:     LateIdCallSt
  loc_1279C31:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_1279C38:     LateIdCallSt
  loc_1279C81:     Proc_6_47_EF6560(var_CC, CVar(var_118.Fields.Item("Rate")), CVar(CLng(7)), CVar(CLng(var_11A)), var_158)
  loc_1279C91:     LateIdCallSt
  loc_1279CDE:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("ConvRatio")), CVar(CLng(4)), CVar(CLng(var_11A)), var_158, CVar(CStr(var_CC)))) 'String
  loc_1279CE5:     LateIdCallSt
  loc_1279D30:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("IssueUnit")), CVar(CLng(6)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_1279D37:     LateIdCallSt
  loc_1279D4B:     Set var_158 = Nothing 
  loc_1279D55:     var_11A = (var_11A + 1)
  loc_1279D5B:     var_118.MoveNext
  loc_1279D60:     GoTo loc_1279A7C
  loc_1279D63:   End If
  loc_1279D76:   Me.FGrid.FixedRows = 1
  loc_1279D7E: End If
  loc_1279D83: Set var_118 = Nothing
  loc_1279D86: Exit Sub
  loc_1279D87: ' Referenced from: 1279818
  loc_1279D87: Proc_6_60_E63754(var_11A, var_158, var_CC, var_CC)
  loc_1279D8C: Exit Sub
End Sub

Private Sub TxtBarCode_KeyDown(KeyCode As Integer, Shift As Integer) 'E15700
  'Data Table: 4FE240
  loc_E156F2: If (CLng(KeyCode) = &HD) Then
  loc_E156FA:   Call TxtBarCode_Validate(&HFF)
  loc_E156FF: End If
  loc_E156FF: Exit Sub
End Sub

Private Sub TxtBarCode_Validate(Cancel As Boolean) '1361B08
  'Data Table: 4FE240
  Dim var_9C As String
  Dim var_A0 As Variant
  Dim var_88 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_106 As Integer
  Dim var_F4 As Variant
  Dim var_118 As TextBox
  Dim Cancel As Integer
  Dim var_D4 As Variant
  Dim var_130 As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_1CC As Variant
  Dim var_1FC As Variant
  loc_13612D8: Set var_88 = Me.TopCtrl1
  loc_13612DE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_13612E6: var_9C = CStr()
  loc_13612F5: Set var_A0 = Me.TxtBarCode
  loc_136131A: If ((var_9C = "Browse") And (var_A0.Text <> vbNullString)) Then
  loc_136132A:   Me.TxtBarCode.Text = vbNullString
  loc_1361338:   Call 0.Method_arg_50 (var_9C)
  loc_1361359:   MsgBox("Not Applicable In Browse Mode !", &H10, CVar(var_9C), var_E4, var_104)
  loc_1361369:   Exit Sub
  loc_136136A: End If
  loc_136138C: If (Trim(CVar(Me.TxtBarCode)) = vbNullString) Then
  loc_136138F:   Exit Sub
  loc_1361390: End If
  loc_136139B: var_C4 = Trim(CVar(Me.TxtBarCode))
  loc_13613A4: var_110 = CStr(var_C4)
  loc_13613BB: Me.TxtBarCode.Text = vbNullString
  loc_13613CE: Set var_88 = Me.Txt
  loc_13613D4: Call 0.Method_TxtBarCode_Validate0 (CInt(3))
  loc_13613E5: Set var_118 = var_A0
  loc_13613FD: If (Proc_6_27_EA61EC(var_118, "From Location") = 0) Then
  loc_136140B:   Set var_88 = Me.Txt
  loc_1361411:   Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_A0)
  loc_1361419:   var_A0.SetFocus
  loc_1361425:   Exit Sub
  loc_1361426: End If
  loc_136143D: If (Me.RecordCount = 0) Then
  loc_1361440:   Exit Sub
  loc_1361441: End If
  loc_1361447: Me.MoveFirst
  loc_1361471: Me.Find "BarCode='" & var_110 & "'", 0, 1
  loc_1361491: If (Me.EOF = &HFF) Then
  loc_13614AD:   MsgBox("Item Not Found!", &H10, var_C4, var_E4, var_104)
  loc_13614C0: Else
  loc_13614DA:   var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_13614E7:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_13614EF:   var_F4 = CVar(CLng(9)) 'Long
  loc_1361509:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_136151A:   If (var_9C <> vbNullString) Then
  loc_1361538:     var_98 = Me.FGrid.TextMatrix)
  loc_1361552:     Set var_A0 = Me.Txt
  loc_1361558:     Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_118, var_9C, var_98, CVar(CLng(9)), CVar(CLng(var_106)))
  loc_1361560:     var_F4 = var_118.Tag
  loc_13615AF:     Me.LblCurStockStr.Caption = global_96
  loc_13615BD:     If (Proc_96_27_11F256C(CStr(var_98), CDbl(1), MemVar_1F95070, var_9C, global_96) = 0) Then
  loc_13615EF:       If (MsgBox("Do you Want to Proceed with Negative Stock ?", &H114, var_C4, var_E4, var_104) = 7) Then
  loc_13615F4:         Cancel = 0
  loc_13615F7:         Exit Sub
  loc_13615F8:       End If
  loc_13615F8:     End If
  loc_13615F8:     var_B4 = vbNullString
  loc_1361602:     Set var_88 = Me.FGrid
  loc_136162D:     var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1361636:   End If
  loc_1361649:   Me.FGrid.TopRow = CVar(CLng(var_106))
  loc_1361655:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_136165D:   var_F4 = CVar(CLng(0)) 'Long
  loc_1361667:   var_98 = CVar(CStr(var_106)) 'String
  loc_136166F:   Set var_88 = Me.FGrid
  loc_1361675:   LateIdCallSt
  loc_1361687:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_136168F:   var_130 = CVar(CLng(1)) 'Long
  loc_13616C2:   var_C4 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_13616CA:   Set var_118 = Me.FGrid
  loc_13616D0:   LateIdCallSt
  loc_13616EC:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13616F4:   var_130 = CVar(CLng(9)) 'Long
  loc_1361727:   var_C4 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_136172F:   Set var_118 = Me.FGrid
  loc_1361735:   LateIdCallSt
  loc_1361751:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1361759:   var_130 = CVar(CLng(&HA)) 'Long
  loc_136178C:   var_C4 = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_1361794:   Set var_118 = Me.FGrid
  loc_136179A:   LateIdCallSt
  loc_13617B6:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13617BE:   var_130 = CVar(CLng(2)) 'Long
  loc_13617F1:   var_C4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_13617F9:   Set var_118 = Me.FGrid
  loc_13617FF:   LateIdCallSt
  loc_136181B:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1361823:   var_F4 = CVar(CLng(3)) 'Long
  loc_1361828:   var_14C = "1.000"
  loc_1361832:   Set var_88 = Me.FGrid
  loc_1361838:   LateIdCallSt
  loc_1361847:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_136184F:   var_130 = CVar(CLng(4)) 'Long
  loc_1361882:   var_C4 = CVar(CStr(Me.Fields.Item("ConvRatio").Value)) 'String
  loc_136188A:   Set var_118 = Me.FGrid
  loc_1361890:   LateIdCallSt
  loc_13618AC:   var_14C = CVar(CLng(var_106)) 'Long
  loc_13618B4:   var_16C = CVar(CLng(4)) 'Long
  loc_13618DD:   var_18C = CVar(CLng(var_106)) 'Long
  loc_13618E5:   var_1AC = CVar(CLng(5)) 'Long
  loc_13618EE:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_13618F6:   var_F4 = CVar(CLng(3)) 'Long
  loc_136191E:   var_E4 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_1361926:   Set var_118 = Me.FGrid
  loc_136192C:   LateIdCallSt
  loc_1361970:   var_F4 = CVar(CLng(var_106)) 'Long
  loc_1361978:   var_14C = CVar(CLng(7)) 'Long
  loc_13619A5:   var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_13619AD:   Set var_118 = Me.FGrid
  loc_13619B3:   LateIdCallSt
  loc_13619D1:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13619D9:   var_130 = CVar(CLng(6)) 'Long
  loc_1361A0C:   var_C4 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1361A14:   Set var_118 = Me.FGrid
  loc_1361A1A:   LateIdCallSt
  loc_1361A36:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1361A3E:   var_F4 = CVar(CLng(7)) 'Long
  loc_1361A67:   var_14C = CVar(CLng(var_106)) 'Long
  loc_1361A6F:   var_16C = CVar(CLng(3)) 'Long
  loc_1361A98:   var_1AC = CVar(CLng(var_106)) 'Long
  loc_1361AA0:   var_1CC = CVar(CLng(8)) 'Long
  loc_1361AD1:   var_1FC = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_1361AD9:   Set var_118 = Me.FGrid
  loc_1361ADF:   LateIdCallSt
  loc_1361B06: End If
  loc_1361B06: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E97368
  'Data Table: 4FE240
  Dim Me As Recordset15
  Dim var_15C As String
  loc_E972F6: On Error Goto loc_E9735F
  loc_E972FF: Me.MoveFirst
  loc_E97329: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97351: Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_E97359: Call Proc_224_50_1672B2C(0)
  loc_E9735E: Exit Sub
  loc_E9735F: ' Referenced from: E972F6
  loc_E9735F: Proc_6_60_E63754(var_A0)
  loc_E97364: Exit Sub
  loc_E97365: var_15C = 
End Sub

Public Sub Proc_224_46_1463A30
  'Data Table: 4FE240
  Dim unk_4FE244 As Connection15
  Dim var_E0 As Variant
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim var_104 As Variant
  Dim var_11C As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_120 As Variant
  Dim var_86 As Integer
  Dim var_9C As Recordset15
  Dim var_168 As Variant
  Dim var_144 As Field20
  Dim var_188 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_1FC As Variant
  Dim var_130 As Variant
  loc_1462EB0: unk_4FE244.Execute "Select Code,RoundOff from RevMast Where (LogSite_Code='" & MemVar_1F95078 & "' Or LogSite_Code='HO') Order By Name", var_DC, -1
  loc_1462EBB: Set var_9C = var_E0
  loc_1462EF0: For var_E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_E4 'Integer
  loc_1462EFA:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_1462F02:   var_104 = CVar(CLng(8)) 'Long
  loc_1462F2E:   var_AC = (var_AC + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1462F3E:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_1462F46:   var_104 = CVar(CLng(8)) 'Long
  loc_1462F72:   var_B4 = (var_B4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1462F81: Next var_E4 'Integer
  loc_1462F99: Set var_E0 = Me.LblCap
  loc_1462F9F: Call 0.Method_Proc_224_46_1463A300 (1, var_120)
  loc_1462FA7: var_120.Tag = MemVar_1F95070 & "TOT"
  loc_1462FC2: Set var_E0 = Me.LblCap
  loc_1462FC8: Call 0.Method_Proc_224_46_1463A300 (1, var_120)
  loc_1462FD0: var_120.Caption = "Total"
  loc_1463011: Set var_E0 = Me.TxtGt
  loc_1463017: Call 0.Method_Proc_224_46_1463A300 (1, var_120, CStr(Format(var_AC, "0.00")))
  loc_146301F: var_120.Text = 1
  loc_1463048: Me.FGCat.Rows = 1
  loc_146309E: Call Proc_224_47_16DF3B0(global_84, 1, CSng(Format(var_AC, "0.00")), vbNullString)
  loc_14630B9: Set var_E0 = Me.LblCap
  loc_14630BF: Call 0.Method_Proc_224_46_1463A308 (var_132, var_86, 2, 0)
  loc_14630CA: For var_140 = 1 To var_132: 1 = var_140 'Integer
  loc_14630DA:   Set var_E0 = Me.LblCap
  loc_14630E0:   Call 0.Method_Proc_224_46_1463A300 (var_86, var_120)
  loc_14630F1:   Me.LblCap.Unload var_120
  loc_1463107:   Set var_E0 = Me.LblDummy
  loc_146310D:   Call 0.Method_Proc_224_46_1463A300 (var_86, var_120)
  loc_146311E:   Me.LblDummy.Unload var_120
  loc_1463134:   Set var_E0 = Me.TxtGt
  loc_146313A:   Call 0.Method_Proc_224_46_1463A300 (var_86, var_120)
  loc_146314B:   Me.TxtGt.Unload var_120
  loc_146315A: Next var_140 'Integer
  loc_1463161: var_86 = 2
  loc_1463164: ' Referenced from: 1463707
  loc_146316A: var_132 = var_9C.EOF
  loc_1463173: If Not(var_132) Then
  loc_1463179:   var_A4 = vbNullString
  loc_146317F:   var_AC = CDbl(0)
  loc_14631A7:   For var_148 = 1 To CInt((CLng(Me.FGCat.Rows) - 1)): var_8A = var_148 'Integer
  loc_14631B1:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_14631B9:     var_104 = CVar(CLng(2)) 'Long
  loc_14631D3:     var_168 = CVar(CStr(Me.FGCat.TextMatrix))) 'String
  loc_14631E9:     var_120 = var_9C.Fields
  loc_14631F9:     var_130 = var_120.Item("Code").Value
  loc_1463209:     var_188 = CVar(CLng(var_8A)) 'Long
  loc_146321A:     Set var_1BC = Me.FGCat
  loc_146325D:     If CBool(CVar(CLng(6)) And (CDbl(Val(CStr(var_1BC.TextMatrix)))) <> CDbl(0))) Then
  loc_1463264:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_146326C:       var_104 = CVar(CLng(6)) 'Long
  loc_1463294:       var_AC = (var_AC + CDbl(CStr(Me.FGCat.TextMatrix))))
  loc_14632A4:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_14632AC:       var_104 = CVar(CLng(2)) 'Long
  loc_14632C6:       var_98 = CStr(Me.FGCat.TextMatrix))
  loc_14632D3:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_14632DB:       var_104 = CVar(CLng(3)) 'Long
  loc_14632F5:       var_A4 = CStr(Me.FGCat.TextMatrix))
  loc_14632FE:     End If
  loc_1463301:   Next var_148 'Integer
  loc_146330E:   If (var_A4 <> vbNullString) Then
  loc_146331B:     Set var_E0 = Me.LblDummy
  loc_1463321:     Call 0.Method_Proc_224_46_1463A308 (var_132)
  loc_146332D:     If (var_86 > var_132) Then
  loc_146333A:       Set var_E0 = Me.LblDummy
  loc_1463340:       Call 0.Method_Proc_224_46_1463A300 (var_86)
  loc_1463351:       Me.LblDummy.Load var_120
  loc_1463369:       Set var_E0 = Me.LblDummy
  loc_146336F:       Call 0.Method_Proc_224_46_1463A300 (var_86, var_120)
  loc_1463377:       var_120.Visible = False
  loc_1463383:     End If
  loc_146338D:     Set var_E0 = Me.LblCap
  loc_1463393:     Call 0.Method_Proc_224_46_1463A308 (var_132, var_86)
  loc_146339F:     If (var_120 > var_132) Then
  loc_14633AC:       Set var_E0 = Me.LblCap
  loc_14633B2:       Call 0.Method_Proc_224_46_1463A300 (var_86)
  loc_14633C3:       Me.LblCap.Load var_120
  loc_14633DC:       Set var_144 = Me.LblCap
  loc_14633E2:       Call 0.Method_Proc_224_46_1463A300 (var_86, var_1BC)
  loc_14633FF:       Set var_E0 = Me.LblCap
  loc_1463405:       Call 0.Method_Proc_224_46_1463A300 ((var_86 - 1), var_120)
  loc_1463428:       Set var_1F8 = Me.LblCap
  loc_146342E:       Call 0.Method_Proc_224_46_1463A300 (var_86, var_1FC)
  loc_1463436:       var_1FC.Top = ((var_120.Top + var_1BC.Height) + CDbl(&HF))
  loc_146344A:     End If
  loc_1463454:     Set var_E0 = Me.TxtGt
  loc_146345A:     Call 0.Method_Proc_224_46_1463A308 (var_132, var_86)
  loc_1463466:     If (var_120 > var_132) Then
  loc_1463473:       Set var_E0 = Me.TxtGt
  loc_1463479:       Call 0.Method_Proc_224_46_1463A300 (var_86)
  loc_146348A:       Me.TxtGt.Load var_120
  loc_14634A3:       Set var_144 = Me.TxtGt
  loc_14634A9:       Call 0.Method_Proc_224_46_1463A300 (var_86, var_1BC)
  loc_14634C6:       Set var_E0 = Me.TxtGt
  loc_14634CC:       Call 0.Method_Proc_224_46_1463A300 ((var_86 - 1), var_120)
  loc_14634EF:       Set var_1F8 = Me.TxtGt
  loc_14634F5:       Call 0.Method_Proc_224_46_1463A300 (var_86, var_1FC)
  loc_14634FD:       var_1FC.Top = ((var_120.Top + var_1BC.Height) + CDbl(&HF))
  loc_1463511:     End If
  loc_146351E:     Set var_E0 = Me.LblCap
  loc_1463524:     Call 0.Method_Proc_224_46_1463A300 (var_86, var_120)
  loc_146352C:     var_120.Tag = var_98
  loc_1463563:     Set var_E0 = Me.LblCap
  loc_1463569:     Call 0.Method_Proc_224_46_1463A300 (var_86, var_120)
  loc_1463571:     var_120.Caption = CStr(StrConv(var_A4, 3, 0))
  loc_146359A:     var_120 = var_9C.Fields.Item("RoundOff")
  loc_14635C8:     Proc_6_142_14A62A0(var_AC, CByte(0), "S")
  loc_14635CD:     var_11C = 2
  loc_14635FD:     var_1CC = (CVar(var_AC) + IIf((Proc_6_38_E69628(CVar(var_120)) = "Yes"), CVar(var_11C), 0))
  loc_1463602:     var_AC = CSng(var_1BC.TextMatrix))
  loc_1463627:     var_B4 = (var_B4 + var_AC)
  loc_1463660:     Set var_E0 = Me.TxtGt
  loc_1463666:     Call 0.Method_Proc_224_46_1463A300 (var_86, var_120, CStr(Format(var_AC, "0.00")), 1, 1)
  loc_146366E:     var_120.Text = var_B4
  loc_1463690:     Set var_E0 = Me.LblDummy
  loc_1463696:     Call 0.Method_Proc_224_46_1463A300 (var_86, var_120, 0)
  loc_146369E:     var_120.Visible = var_AC
  loc_14636B6:     Set var_E0 = Me.LblCap
  loc_14636BC:     Call 0.Method_Proc_224_46_1463A300 (var_86, var_120, &HFF)
  loc_14636C4:     var_120.Visible = var_11C
  loc_14636DC:     Set var_E0 = Me.TxtGt
  loc_14636E2:     Call 0.Method_Proc_224_46_1463A300 (var_86, var_120)
  loc_14636EA:     var_120.Visible = True
  loc_14636FC:     var_86 = (var_86 + 1)
  loc_14636FF:   End If
  loc_1463702:   var_9C.MoveNext
  loc_1463707:   GoTo loc_1463164
  loc_146370A: End If
  loc_1463714: Set var_E0 = Me.LblDummy
  loc_146371A: Call 0.Method_Proc_224_46_1463A308 (var_132, var_86)
  loc_1463726: If (var_86 > var_132) Then
  loc_1463733:   Set var_E0 = Me.LblDummy
  loc_1463739:   Call 0.Method_Proc_224_46_1463A300 (var_86, var_120)
  loc_146374A:   Me.LblDummy.Load var_120
  loc_1463762:   Set var_E0 = Me.LblDummy
  loc_1463768:   Call 0.Method_Proc_224_46_1463A300 (var_86, var_120)
  loc_1463770:   var_120.Visible = False
  loc_146377C: End If
  loc_1463786: Set var_E0 = Me.LblCap
  loc_146378C: Call 0.Method_Proc_224_46_1463A308 (var_132, var_86)
  loc_1463798: If (var_120 > var_132) Then
  loc_14637A5:   Set var_E0 = Me.LblCap
  loc_14637AB:   Call 0.Method_Proc_224_46_1463A300 (var_86)
  loc_14637BC:   Me.LblCap.Load var_120
  loc_14637D5:   Set var_144 = Me.LblCap
  loc_14637DB:   Call 0.Method_Proc_224_46_1463A300 (var_86, var_1BC)
  loc_14637F8:   Set var_E0 = Me.LblCap
  loc_14637FE:   Call 0.Method_Proc_224_46_1463A300 ((var_86 - 1), var_120)
  loc_1463821:   Set var_1F8 = Me.LblCap
  loc_1463827:   Call 0.Method_Proc_224_46_1463A300 (var_86, var_1FC)
  loc_146382F:   var_1FC.Top = ((var_120.Top + var_1BC.Height) + CDbl(&HF))
  loc_1463843: End If
  loc_146384D: Set var_E0 = Me.TxtGt
  loc_1463853: Call 0.Method_Proc_224_46_1463A308 (var_132, var_86)
  loc_146385F: If (var_120 > var_132) Then
  loc_146386C:   Set var_E0 = Me.TxtGt
  loc_1463872:   Call 0.Method_Proc_224_46_1463A300 (var_86)
  loc_1463883:   Me.TxtGt.Load var_120
  loc_146389C:   Set var_144 = Me.TxtGt
  loc_14638A2:   Call 0.Method_Proc_224_46_1463A300 (var_86, var_1BC)
  loc_14638BF:   Set var_E0 = Me.TxtGt
  loc_14638C5:   Call 0.Method_Proc_224_46_1463A300 ((var_86 - 1), var_120)
  loc_14638E8:   Set var_1F8 = Me.TxtGt
  loc_14638EE:   Call 0.Method_Proc_224_46_1463A300 (var_86, var_1FC)
  loc_14638F6:   var_1FC.Top = ((var_120.Top + var_1BC.Height) + CDbl(&HF))
  loc_146390A: End If
  loc_146391E: Set var_E0 = Me.LblCap
  loc_1463924: Call 0.Method_Proc_224_46_1463A300 (var_86, var_120)
  loc_146392C: var_120.Tag = MemVar_1F95070 & "NET"
  loc_1463948: Set var_E0 = Me.LblCap
  loc_146394E: Call 0.Method_Proc_224_46_1463A300 (var_86, var_120)
  loc_1463956: var_120.Caption = "Net Amount"
  loc_1463998: Set var_E0 = Me.TxtGt
  loc_146399E: Call 0.Method_Proc_224_46_1463A300 (var_86, var_120, CStr(Format(var_B4, "0.00")))
  loc_14639A6: var_120.Text = 1
  loc_14639C8: Set var_E0 = Me.LblDummy
  loc_14639CE: Call 0.Method_Proc_224_46_1463A300 (var_86, var_120, 0)
  loc_14639D6: var_120.Visible = True
  loc_14639EE: Set var_E0 = Me.LblCap
  loc_14639F4: Call 0.Method_Proc_224_46_1463A300 (var_86, var_120)
  loc_14639FC: var_120.Visible = True
  loc_1463A14: Set var_E0 = Me.TxtGt
  loc_1463A1A: Call 0.Method_Proc_224_46_1463A300 (var_86, var_120)
  loc_1463A22: var_120.Visible = True
  loc_1463A2E: Exit Sub
End Sub

Public Sub Proc_224_47_16DF3B0(arg_C, arg_10, arg_14) '16DF3B0
  'Data Table: 4FE240
  Dim var_E4 As String
  Dim unk_4FE244 As Connection15
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_12C As Variant
  Dim var_15C As Variant
  Dim var_11C As Variant
  Dim var_D0 As Double
  Dim var_184 As Double
  Dim var_13C As Variant
  Dim var_194 As Variant
  Dim var_1C4 As Variant
  Dim var_204 As Variant
  Dim var_1B4 As Integer
  Dim var_118 As MSHFlexGrid
  Dim var_16C As Double
  Dim var_9C As Double
  loc_16DD960: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_16DD970: unk_4FE244.Execute var_E4 & "'", var_108, -1
  loc_16DD97B: Set var_8C = var_10C
  loc_16DD98D: var_DA = 0
  loc_16DD993: var_94 = arg_14
  loc_16DD998: var_86 = 1
  loc_16DD99E: var_A8 = var_94
  loc_16DD9A4: var_B0 = var_94
  loc_16DD9AA: var_B8 = CDbl(0)
  loc_16DD9C1: If (var_8C.RecordCount > 0) Then
  loc_16DD9C4:   ' Referenced from: 16DF381
  loc_16DD9D3:   If Not(var_8C.EOF) Then
  loc_16DD9DA:     Set var_118 = Me.FGCat
  loc_16DD9F1:     If (var_8C.RecordCount > 0) Then
  loc_16DD9FA:       var_D2 = (var_D2 + 1)
  loc_16DDA33:       var_14C = Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Nature")), var_D2, var_B8, var_B0, var_A8))) 'Variant
  loc_16DDA4C:       If (var_14C = "On Base Amt") Then
  loc_16DDA8F:         If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_16DDAD1:           var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64))
  loc_16DDAE4:         Else
  loc_16DDB06:           var_12C = var_8C.Fields.Item("Rate").Value
  loc_16DDB44:           Proc_6_142_14A62A0(((Val(CStr(var_12C)) * (var_A8 + arg_1C)) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_12C)))
  loc_16DDB49:           var_184 = var_D0
  loc_16DDB77:           var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_16DDB8F:           var_D0 = (((Val(var_E4) * (var_A8 + arg_1C)) / CDbl(&H64)) + var_184)
  loc_16DDBAD:         End If
  loc_16DDBD3:         Proc_6_39_E7D3A0(var_12C, CVar(var_8C.Fields.Item("Limit")), var_D0, var_184)
  loc_16DDC0D:         Proc_6_39_E7D3A0(var_1B4, CVar(var_8C.Fields.Item("Rate")), (var_12C <= CVar(var_94)), var_86)
  loc_16DDC37:         If CBool(var_94 And (var_1B4 > 0)) Then
  loc_16DDC41:           If (var_D0 > CDbl(0)) Then
  loc_16DDC44:             var_F8 = vbNullString
  loc_16DDC6E:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDC76:             var_194 = CVar(CLng(0)) 'Long
  loc_16DDC80:             var_12C = CVar(CStr(arg_10)) 'String
  loc_16DDC87:             LateIdCallSt
  loc_16DDCB2:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDCBA:             var_194 = CVar(CLng(1)) 'Long
  loc_16DDCC4:             var_12C = CVar(CStr(var_86)) 'String
  loc_16DDCCB:             LateIdCallSt
  loc_16DDCF6:             var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDCFE:             var_1C4 = CVar(CLng(2)) 'Long
  loc_16DDD2E:             var_13C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_16DDD35:             LateIdCallSt
  loc_16DDD68:             var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDD70:             var_1C4 = CVar(CLng(3)) 'Long
  loc_16DDDA0:             var_13C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_16DDDA7:             LateIdCallSt
  loc_16DDDDA:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDDE2:             var_194 = CVar(CLng(4)) 'Long
  loc_16DDDF0:             var_12C = CVar(CStr((var_A8 + arg_1C))) 'String
  loc_16DDDF7:             LateIdCallSt
  loc_16DDE22:             var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDE2A:             var_1C4 = CVar(CLng(5)) 'Long
  loc_16DDE5A:             var_13C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_16DDE61:             LateIdCallSt
  loc_16DDEBF:             var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDF12:             LateIdCallSt
  loc_16DDF4F:             var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDF73:             var_11C = var_8C.Fields.Item("Sundry")
  loc_16DDF84:             var_13C = CVar(Proc_6_38_E69628(CVar(var_11C), CVar(CLng(7)), "Yes", var_118, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))), CVar(CLng(6)), var_204)) 'String
  loc_16DDF8B:             LateIdCallSt
  loc_16DDFBC:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDFD7:             Set var_10C = Me.Txt
  loc_16DDFDD:             Call 0.Method_Proc_224_47_16DF3B00 (CInt(4), var_11C, var_E4, CVar(CLng(8)), "Sundry", var_118, var_13C)
  loc_16DDFE5:             var_118 = var_11C.Tag
  loc_16DDFED:             var_12C = CVar(var_E4) 'String
  loc_16DDFF4:             LateIdCallSt
  loc_16DE00C:           End If
  loc_16DE025:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE02D:           var_194 = CVar(CLng(6)) 'Long
  loc_16DE052:           var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_16DE07B:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE083:           var_194 = CVar(CLng(6)) 'Long
  loc_16DE09E:           var_16C = Val(CStr(var_118.TextMatrix)))
  loc_16DE0A8:           var_94 = (var_94 + var_16C)
  loc_16DE0BF:           var_B0 = (var_B0 + var_D0)
  loc_16DE0C5:           var_B8 = var_D0
  loc_16DE0C8:         End If
  loc_16DE0CB:       Else
  loc_16DE0D6:         If (var_14C = "On Running Total") Then
  loc_16DE119:           If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_16DE157:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_16DE16A:           Else
  loc_16DE18C:             var_12C = var_8C.Fields.Item("Rate").Value
  loc_16DE1C6:             Proc_6_142_14A62A0(((Val(CStr(var_12C)) * var_B0) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_12C)), var_D0, var_B8, var_B0)
  loc_16DE1CB:             var_184 = var_94
  loc_16DE1F9:             var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_16DE20D:             var_D0 = (((Val(var_E4) * var_B0) / CDbl(&H64)) + var_184)
  loc_16DE22B:           End If
  loc_16DE251:           Proc_6_39_E7D3A0(var_12C, CVar(var_8C.Fields.Item("Rate")), var_D0, var_184, var_16C)
  loc_16DE26B:           If (var_12C > 0) Then
  loc_16DE275:             If (var_D0 > CDbl(0)) Then
  loc_16DE278:               var_F8 = vbNullString
  loc_16DE2A2:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE2AA:               var_194 = CVar(CLng(0)) 'Long
  loc_16DE2B4:               var_12C = CVar(CStr(arg_10)) 'String
  loc_16DE2BB:               LateIdCallSt
  loc_16DE2E6:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE2EE:               var_194 = CVar(CLng(1)) 'Long
  loc_16DE2F8:               var_12C = CVar(CStr(var_86)) 'String
  loc_16DE2FF:               LateIdCallSt
  loc_16DE32A:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE332:               var_1C4 = CVar(CLng(2)) 'Long
  loc_16DE362:               var_13C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_16DE369:               LateIdCallSt
  loc_16DE39C:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE3A4:               var_1C4 = CVar(CLng(3)) 'Long
  loc_16DE3D4:               var_13C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_16DE3DB:               LateIdCallSt
  loc_16DE40E:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE416:               var_194 = CVar(CLng(4)) 'Long
  loc_16DE420:               var_12C = CVar(CStr(var_B0)) 'String
  loc_16DE427:               LateIdCallSt
  loc_16DE452:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE45A:               var_1C4 = CVar(CLng(5)) 'Long
  loc_16DE48A:               var_13C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_16DE491:               LateIdCallSt
  loc_16DE4EF:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE542:               LateIdCallSt
  loc_16DE57F:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE5A3:               var_11C = var_8C.Fields.Item("Sundry")
  loc_16DE5B4:               var_13C = CVar(Proc_6_38_E69628(CVar(var_11C), CVar(CLng(7)), "Yes", var_118, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))), CVar(CLng(6)), var_204)) 'String
  loc_16DE5BB:               LateIdCallSt
  loc_16DE5EC:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE607:               Set var_10C = Me.Txt
  loc_16DE60D:               Call 0.Method_Proc_224_47_16DF3B00 (CInt(4), var_11C, var_E4, CVar(CLng(8)), "Sundry", var_118, var_13C)
  loc_16DE615:               var_118 = var_11C.Tag
  loc_16DE61D:               var_12C = CVar(var_E4) 'String
  loc_16DE624:               LateIdCallSt
  loc_16DE63C:             End If
  loc_16DE655:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE65D:             var_194 = CVar(CLng(6)) 'Long
  loc_16DE682:             var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_16DE6AB:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE6B3:             var_194 = CVar(CLng(6)) 'Long
  loc_16DE6D8:             var_94 = (var_94 + Val(CStr(var_118.TextMatrix))))
  loc_16DE6EF:             var_B0 = (var_B0 + var_D0)
  loc_16DE6F5:             var_B8 = var_D0
  loc_16DE6F8:           End If
  loc_16DE6FB:         Else
  loc_16DE706:           If (var_14C = "On Prev. Tax Amt") Then
  loc_16DE749:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_16DE787:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_16DE79A:             Else
  loc_16DE7F6:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_16DE829:               var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_16DE83D:               var_D0 = (((Val(var_E4) * var_B8) / CDbl(&H64)) + var_94)
  loc_16DE85B:             End If
  loc_16DE862:             If (var_D0 > CDbl(0)) Then
  loc_16DE865:               var_F8 = vbNullString
  loc_16DE88F:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE897:               var_194 = CVar(CLng(0)) 'Long
  loc_16DE8A1:               var_12C = CVar(CStr(arg_10)) 'String
  loc_16DE8A8:               LateIdCallSt
  loc_16DE8D3:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE8DB:               var_194 = CVar(CLng(1)) 'Long
  loc_16DE8E5:               var_12C = CVar(CStr(var_86)) 'String
  loc_16DE8EC:               LateIdCallSt
  loc_16DE917:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE91F:               var_1C4 = CVar(CLng(2)) 'Long
  loc_16DE94F:               var_13C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_16DE956:               LateIdCallSt
  loc_16DE989:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE991:               var_1C4 = CVar(CLng(3)) 'Long
  loc_16DE9C1:               var_13C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_16DE9C8:               LateIdCallSt
  loc_16DE9FB:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DEA03:               var_194 = CVar(CLng(4)) 'Long
  loc_16DEA0D:               var_12C = CVar(CStr(var_B8)) 'String
  loc_16DEA14:               LateIdCallSt
  loc_16DEA3F:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DEA47:               var_1C4 = CVar(CLng(5)) 'Long
  loc_16DEA77:               var_13C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_16DEA7E:               LateIdCallSt
  loc_16DEAD8:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DEAE5:               var_1B4 = 2
  loc_16DEB2B:               LateIdCallSt
  loc_16DEB68:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DEB8C:               var_11C = var_8C.Fields.Item("Sundry")
  loc_16DEB9D:               var_13C = CVar(Proc_6_38_E69628(CVar(var_11C), CVar(CLng(7)), "Yes", var_118, CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_1B4))))), CVar(CLng(6)), var_204)) 'String
  loc_16DEBA4:               LateIdCallSt
  loc_16DEBD5:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DEBF0:               Set var_10C = Me.Txt
  loc_16DEBF6:               Call 0.Method_Proc_224_47_16DF3B00 (CInt(4), var_11C, var_E4, CVar(CLng(8)), "Sundry", var_118, var_13C)
  loc_16DEBFE:               var_118 = var_11C.Tag
  loc_16DEC06:               var_12C = CVar(var_E4) 'String
  loc_16DEC0D:               LateIdCallSt
  loc_16DEC25:             End If
  loc_16DEC3E:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DEC46:             var_194 = CVar(CLng(6)) 'Long
  loc_16DEC6B:             var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_16DEC94:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DEC9C:             var_194 = CVar(CLng(6)) 'Long
  loc_16DECB7:             var_16C = Val(CStr(var_118.TextMatrix)))
  loc_16DECC1:             var_94 = (var_94 + var_16C)
  loc_16DECD8:             var_B0 = (var_B0 + var_D0)
  loc_16DECDE:             var_B8 = var_D0
  loc_16DECE4:           Else
  loc_16DED24:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_16DED62:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_16DED75:             Else
  loc_16DED97:               var_12C = var_8C.Fields.Item("Rate").Value
  loc_16DEDD1:               Proc_6_142_14A62A0(((Val(CStr(var_12C)) * var_A8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_12C)), var_D0, var_B8, var_B0)
  loc_16DEDD6:               var_184 = var_94
  loc_16DEE04:               var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_16DEE18:               var_D0 = (((Val(var_E4) * var_A8) / CDbl(&H64)) + var_184)
  loc_16DEE36:             End If
  loc_16DEE39:             var_F8 = "Limit"
  loc_16DEE5C:             Proc_6_39_E7D3A0(var_12C, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_184, var_16C)
  loc_16DEE73:             var_194 = "Rate"
  loc_16DEE96:             Proc_6_39_E7D3A0(var_1B4, CVar(var_8C.Fields.Item(var_194)), (var_12C <= CVar(var_94)), var_194)
  loc_16DEEC0:             If CBool(var_F8 And (var_1B4 > 0)) Then
  loc_16DEECA:               If (var_D0 > CDbl(0)) Then
  loc_16DEECD:                 var_F8 = vbNullString
  loc_16DEEF7:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DEEFF:                 var_194 = CVar(CLng(0)) 'Long
  loc_16DEF09:                 var_12C = CVar(CStr(arg_10)) 'String
  loc_16DEF10:                 LateIdCallSt
  loc_16DEF3B:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DEF43:                 var_194 = CVar(CLng(1)) 'Long
  loc_16DEF4D:                 var_12C = CVar(CStr(var_86)) 'String
  loc_16DEF54:                 LateIdCallSt
  loc_16DEF7F:                 var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DEF87:                 var_1C4 = CVar(CLng(2)) 'Long
  loc_16DEFB7:                 var_13C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_16DEFBE:                 LateIdCallSt
  loc_16DEFF1:                 var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DEFF9:                 var_1C4 = CVar(CLng(3)) 'Long
  loc_16DF029:                 var_13C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_16DF030:                 LateIdCallSt
  loc_16DF063:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DF06B:                 var_194 = CVar(CLng(4)) 'Long
  loc_16DF075:                 var_12C = CVar(CStr(var_A8)) 'String
  loc_16DF07C:                 LateIdCallSt
  loc_16DF0A7:                 var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DF0AF:                 var_1C4 = CVar(CLng(5)) 'Long
  loc_16DF0DF:                 var_13C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_16DF0E6:                 LateIdCallSt
  loc_16DF144:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DF197:                 LateIdCallSt
  loc_16DF1D4:                 var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DF1F8:                 var_11C = var_8C.Fields.Item("Sundry")
  loc_16DF209:                 var_13C = CVar(Proc_6_38_E69628(CVar(var_11C), CVar(CLng(7)), "Yes", var_118, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))), CVar(CLng(6)), var_204)) 'String
  loc_16DF210:                 LateIdCallSt
  loc_16DF241:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DF25C:                 Set var_10C = Me.Txt
  loc_16DF262:                 Call 0.Method_Proc_224_47_16DF3B00 (CInt(4), var_11C, var_E4, CVar(CLng(8)), "Sundry", var_118, var_13C)
  loc_16DF26A:                 var_118 = var_11C.Tag
  loc_16DF272:                 var_12C = CVar(var_E4) 'String
  loc_16DF279:                 LateIdCallSt
  loc_16DF291:               End If
  loc_16DF2AA:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DF2B2:               var_194 = CVar(CLng(6)) 'Long
  loc_16DF2D7:               var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_16DF300:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DF308:               var_194 = CVar(CLng(6)) 'Long
  loc_16DF32D:               var_94 = (var_94 + Val(CStr(var_118.TextMatrix))))
  loc_16DF344:               var_B0 = (var_B0 + var_D0)
  loc_16DF34A:               var_B8 = var_D0
  loc_16DF34D:             End If
  loc_16DF34D:           End If
  loc_16DF34D:         End If
  loc_16DF34D:       End If
  loc_16DF34D:     End If
  loc_16DF353:     var_86 = (var_86 + 1)
  loc_16DF358:     Set var_118 = Nothing 
  loc_16DF36E:     Me.TxtTaxAmt.Text = CStr(var_9C)
  loc_16DF37C:     var_8C.MoveNext
  loc_16DF381:     GoTo loc_16DD9C4
  loc_16DF384:   End If
  loc_16DF389:   Set var_8C = Nothing
  loc_16DF391:   Set var_C4 = Nothing
  loc_16DF399:   Set var_C0 = Nothing
  loc_16DF3A1:   Set var_D8 = Nothing
  loc_16DF3A9:   Set var_E0 = Nothing
  loc_16DF3AC: End If
  loc_16DF3AC: Exit Sub
End Sub

Public Sub Proc_224_48_14A8A34(arg_C, arg_10) '14A8A34
  'Data Table: 4FE240
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_11C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_12C As Variant
  Dim var_140 As Variant
  Dim var_B8 As String
  Dim var_174 As String
  Dim unk_4FE244 As Connection15
  Dim var_8C As Recordset15
  Dim var_188 As MSHFlexGrid
  Dim var_1B0 As Double
  Dim var_1A0 As TextBox
  Dim var_8E As Integer
  Dim var_1A8 As Double
  loc_14A7D9B: var_A8 = CLng(Me.FGrid.Col)
  loc_14A7DAB: If (var_A8 = CLng(1)) Then
  loc_14A7DFC:   Set var_94 = Me.TxtGrid
  loc_14A7E02:   Call 0.Method_Proc_224_48_14A8A340 (arg_C, var_B4, var_B8)
  loc_14A7E0A:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_14A7E22:   If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_14A7E38:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7E40:     var_E8 = CVar(CLng(1)) 'Long
  loc_14A7E45:     var_108 = vbNullString
  loc_14A7E4F:     Set var_B4 = Me.FGrid
  loc_14A7E55:     LateIdCallSt
  loc_14A7E7A:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7E82:     var_E8 = CVar(CLng(9)) 'Long
  loc_14A7E87:     var_108 = vbNullString
  loc_14A7E91:     Set var_B4 = Me.FGrid
  loc_14A7E97:     LateIdCallSt
  loc_14A7EBC:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7EC4:     var_E8 = CVar(CLng(&HA)) 'Long
  loc_14A7EC9:     var_108 = vbNullString
  loc_14A7ED3:     Set var_B4 = Me.FGrid
  loc_14A7ED9:     LateIdCallSt
  loc_14A7EFE:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7F06:     var_E8 = CVar(CLng(2)) 'Long
  loc_14A7F0B:     var_108 = vbNullString
  loc_14A7F15:     Set var_B4 = Me.FGrid
  loc_14A7F1B:     LateIdCallSt
  loc_14A7F40:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7F48:     var_E8 = CVar(CLng(7)) 'Long
  loc_14A7F4D:     var_108 = vbNullString
  loc_14A7F57:     Set var_B4 = Me.FGrid
  loc_14A7F5D:     LateIdCallSt
  loc_14A7F82:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7F8A:     var_E8 = CVar(CLng(6)) 'Long
  loc_14A7F8F:     var_108 = vbNullString
  loc_14A7F99:     Set var_B4 = Me.FGrid
  loc_14A7F9F:     LateIdCallSt
  loc_14A7FC4:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7FCC:     var_E8 = CVar(CLng(5)) 'Long
  loc_14A7FD1:     var_108 = vbNullString
  loc_14A7FDB:     Set var_B4 = Me.FGrid
  loc_14A7FE1:     LateIdCallSt
  loc_14A8006:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A800E:     var_E8 = CVar(CLng(3)) 'Long
  loc_14A8013:     var_108 = vbNullString
  loc_14A801D:     Set var_B4 = Me.FGrid
  loc_14A8023:     LateIdCallSt
  loc_14A8048:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A8050:     var_E8 = CVar(CLng(4)) 'Long
  loc_14A8055:     var_108 = vbNullString
  loc_14A805F:     Set var_B4 = Me.FGrid
  loc_14A8065:     LateIdCallSt
  loc_14A807A:   Else
  loc_14A808D:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A8095:     var_F8 = CVar(CLng(1)) 'Long
  loc_14A80C8:     var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_14A80D0:     Set var_140 = Me.FGrid
  loc_14A80D6:     LateIdCallSt
  loc_14A8105:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A810D:     var_F8 = CVar(CLng(9)) 'Long
  loc_14A8140:     var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_14A8148:     Set var_140 = Me.FGrid
  loc_14A814E:     LateIdCallSt
  loc_14A817D:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A8185:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_14A81B8:     var_13C = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_14A81C0:     Set var_140 = Me.FGrid
  loc_14A81C6:     LateIdCallSt
  loc_14A81F5:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A81FD:     var_F8 = CVar(CLng(2)) 'Long
  loc_14A8230:     var_13C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_14A8238:     Set var_140 = Me.FGrid
  loc_14A823E:     LateIdCallSt
  loc_14A828C:     var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A8294:     var_108 = CVar(CLng(7)) 'Long
  loc_14A82C1:     var_160 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_14A82C9:     Set var_140 = Me.FGrid
  loc_14A82CF:     LateIdCallSt
  loc_14A8300:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A8308:     var_F8 = CVar(CLng(4)) 'Long
  loc_14A833B:     var_13C = CVar(CStr(Me.Fields.Item("ConvRatio").Value)) 'String
  loc_14A8343:     Set var_140 = Me.FGrid
  loc_14A8349:     LateIdCallSt
  loc_14A8378:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A8380:     var_F8 = CVar(CLng(6)) 'Long
  loc_14A83B3:     var_13C = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_14A83BB:     Set var_140 = Me.FGrid
  loc_14A83C1:     LateIdCallSt
  loc_14A83DD:   End If
  loc_14A8407:   var_12C = Me.FGrid.TextMatrix)
  loc_14A8421:   Set var_11C = Me.Txt
  loc_14A8427:   Call 0.Method_Proc_224_48_14A8A340 (CInt(3), var_140, var_178, var_12C, CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_140)
  loc_14A844C:   var_174 = "SELECT RATE FROM ITEMRATE WHERE ITEMCODE='" & CStr(var_12C)
  loc_14A846A:   unk_4FE244.Execute var_174 & "' AND RestCode='" & var_178 & "'", var_140.Tag, -1
  loc_14A8475:   Set var_8C = var_188
  loc_14A84B1:   If (var_8C.RecordCount > 0) Then
  loc_14A84C7:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A84CF:     var_F8 = CVar(CLng(7)) 'Long
  loc_14A84FA:     Proc_6_47_EF6560(var_12C, CVar(var_8C.Fields.Item("Rate")), var_F8, var_D8, var_188, var_F8)
  loc_14A8511:     LateIdCallSt
  loc_14A852D:     Call Proc_224_56_F73BF0(Me.FGrid, CVar(CStr(var_12C)), var_D8, Me.FGrid)
  loc_14A8532:   End If
  loc_14A8556:   Set var_B4 = Me.FGrid
  loc_14A855C:   var_12C = var_B4.TextMatrix)
  loc_14A85AD:   var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_14A85B5:   var_1B0 = Val(var_B8)
  loc_14A85C6:   Set var_19C = Me.Txt
  loc_14A85CC:   Call 0.Method_Proc_224_48_14A8A340 (CInt(3), var_1A0, var_174, var_1B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_14A8637:   Me.LblCurStockStr.Caption = global_96
  loc_14A863F:   Call Proc_224_46_1463A30(Proc_96_27_11F256C(CStr(var_1A0.Tag), var_1B0, MemVar_1F95070, var_174, global_96), CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)))
  loc_14A8647: Else
  loc_14A864E:   If (var_A8 = CLng(7)) Then
  loc_14A865D:     Set var_94 = Me.TxtGrid
  loc_14A8663:     Call 0.Method_Proc_224_48_14A8A340 (0, var_B4, var_B8)
  loc_14A866B:     var_13C = var_B4.Text
  loc_14A8678:     var_1A8 = Val(var_B8)
  loc_14A86E1:     LateIdCallSt
  loc_14A8708:     Call Proc_224_56_F73BF0(Me.FGrid, CVar(CStr(Format(CVar(var_1A8), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)))
  loc_14A870D:     Call Proc_224_46_1463A30(CVar(CLng(Me.FGrid.Row)), var_1A8)
  loc_14A8715:   Else
  loc_14A871C:     If Not (var_A8 = CLng(3)) Then
  loc_14A8726:       If (var_A8 = CLng(4)) Then
  loc_14A8729:       End If
  loc_14A873C:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A8744:       var_E8 = CVar(CLng(9)) 'Long
  loc_14A874D:       Set var_B4 = Me.FGrid
  loc_14A8753:       var_12C = var_B4.TextMatrix)
  loc_14A8769:       var_13C = Me.FGrid.Row
  loc_14A8781:       var_150 = Me.FGrid.Col
  loc_14A87A4:       var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_14A87AC:       var_1B0 = Val(var_B8)
  loc_14A87BD:       Set var_19C = Me.Txt
  loc_14A87C3:       Call 0.Method_Proc_224_48_14A8A340 (CInt(3), var_1A0, var_174, var_1B0, CVar(CLng(var_150)), CVar(CLng(var_13C)))
  loc_14A87CB:       var_12C = var_1A0.Tag
  loc_14A87F4:       var_8E = Proc_96_27_11F256C(CStr(var_12C), var_1B0, MemVar_1F95070, var_174, global_96)
  loc_14A882E:       Me.LblCurStockStr.Caption = global_96
  loc_14A883C:       If (var_8E = 0) Then
  loc_14A886E:         If (MsgBox("Do you Want to Proceed with Negative Stock ?", &H114, var_12C, var_13C, var_150) = 7) Then
  loc_14A8876:           Proc_224_48_14A8A34 = 0
  loc_14A887C:         End If
  loc_14A887C:       End If
  loc_14A8899:       If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_14A88A8:         Set var_94 = Me.TxtGrid
  loc_14A88AE:         Call 0.Method_Proc_224_48_14A8A340 (0, var_B4, var_B8, var_8E)
  loc_14A88B6:         var_E8 = var_B4.Text
  loc_14A88C3:         var_1A8 = Val(var_B8)
  loc_14A88DB:         If (global_100 <> CDbl(var_1A8)) Then
  loc_14A890D:           If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_12C, var_13C, var_150) = 7) Then
  loc_14A8915:             Proc_224_48_14A8A34 = 0
  loc_14A891B:           End If
  loc_14A891B:         End If
  loc_14A891B:       End If
  loc_14A8927:       Set var_94 = Me.TxtGrid
  loc_14A892D:       Call 0.Method_Proc_224_48_14A8A340 (0, var_B4, var_B8, var_1A8)
  loc_14A8935:       var_C8 = var_B4.Text
  loc_14A8942:       var_1A8 = Val(var_B8)
  loc_14A89AB:       LateIdCallSt
  loc_14A89D2:       Call Proc_224_56_F73BF0(Me.FGrid, CVar(CStr(Format(CVar(var_1A8), "0.000"))), 1, 1, CVar(CLng(Me.FGrid.Col)))
  loc_14A89D7:       Call Proc_224_46_1463A30(CVar(CLng(Me.FGrid.Row)), var_1A8)
  loc_14A89DC:     End If
  loc_14A89DC:   End If
  loc_14A89DC: End If
  loc_14A89E7: If (arg_10 = 0) Then
  loc_14A89EE:   Set var_94 = Me.FGrid
  loc_14A8A0A:   Set var_94 = Me.TxtGrid
  loc_14A8A10:   Call 0.Method_Proc_224_48_14A8A340 (0, var_B4, 0, FGrid.DispID_8001)
  loc_14A8A18:   var_B4.Visible = &HFF
  loc_14A8A24: End If
  loc_14A8A29: Set var_8C = Nothing
  loc_14A8A2C: Proc_224_48_14A8A34 = var_F8
End Sub

Public Sub Proc_224_49_1016F34
  'Data Table: 4FE240
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_E0 As Variant
  loc_1016D1E: Set var_8C = Me.Txt
  loc_1016D24: Call 0.Method_Proc_224_49_1016F34C (var_8E, var_86)
  loc_1016D34: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1016D4A:   Set var_8C = Me.Txt
  loc_1016D50:   Call 0.Method_Proc_224_49_1016F340 (CInt(var_86), var_98)
  loc_1016D58:   var_98.Text = vbNullString
  loc_1016D74:   Set var_8C = Me.Txt
  loc_1016D7A:   Call 0.Method_Proc_224_49_1016F340 (CInt(var_86), var_98)
  loc_1016D82:   var_98.Tag = vbNullString
  loc_1016D91: Next var_92 'Byte
  loc_1016DA4: Me.LblCurStockStr.Caption = vbNullString
  loc_1016DB9: Me.LblVPrefix.Caption = vbNullString
  loc_1016DCF: Set var_8C = Me.LblCap
  loc_1016DD5: Call 0.Method_Proc_224_49_1016F348 (var_8E, var_86)
  loc_1016DE2: For var_9C =  To CByte(var_8E): CByte(2) = var_9C 'Byte
  loc_1016DF5:   Set var_8C = Me.LblCap
  loc_1016DFB:   Call 0.Method_Proc_224_49_1016F340 (CInt(var_86))
  loc_1016E0C:   Me.LblCap.Unload var_98
  loc_1016E25:   Set var_8C = Me.LblDummy
  loc_1016E2B:   Call 0.Method_Proc_224_49_1016F340 (CInt(var_86), var_98)
  loc_1016E3C:   Me.LblDummy.Unload var_98
  loc_1016E55:   Set var_8C = Me.TxtGt
  loc_1016E5B:   Call 0.Method_Proc_224_49_1016F340 (CInt(var_86), var_98)
  loc_1016E6C:   Me.TxtGt.Unload var_98
  loc_1016E7B: Next var_9C 'Byte
  loc_1016E8D: Set var_8C = Me.TxtGt
  loc_1016E93: Call 0.Method_Proc_224_49_1016F340 (1, var_98)
  loc_1016E9B: var_98.Text = "0.00"
  loc_1016EBA: Me.FGrid.Rows = 1
  loc_1016ED7: var_E0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1016EDF: Set var_98 = Me.FGrid
  loc_1016F0E: Me.FGrid.FixedRows = 1
  loc_1016F29: Me.FGCat.Rows = 0
  loc_1016F31: Exit Sub
End Sub

Public Sub Proc_224_50_1672B2C
  'Data Table: 4FE240
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_4FE244 As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_12C As Variant
  Dim var_128 As Variant
  Dim var_130 As String
  Dim var_94 As Recordset15
  Dim var_90 As Recordset15
  Dim var_8A As Integer
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_124 As Variant
  Dim var_1B0 As Variant
  Dim var_1DC As Variant
  loc_16713CC: On Error Goto loc_1672B26
  loc_16713E6: If (Me.RecordCount > 0) Then
  loc_16713F6:   Me.LblCurStockStr.Caption = vbNullString
  loc_167140B:   var_D0 = "Select Distinct SH.Docid,SH.SNo,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,SH.Rate,SH.Amount,SH.GodownCode,SH.Item,SH.QtyRec,SH.Unit,SH.RECDQty,SH.RECDUnit,SH.ConvRatio,SH.ItemRestCode,I.Name As ItemName From Stock SH Left Join ItemMast I On I.Code=SH.Item And I.ItemType='Store' where DocID='"
  loc_1671454:   unk_4FE244.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "' Order By SH.SNo"), var_124, -1
  loc_167145F:   Set var_88 = var_128
  loc_16714AF:   Set var_128 = Me.Txt
  loc_16714B5:   Call 0.Method_Proc_224_50_1672B2C0 (CInt(0), var_12C)
  loc_16714BD:   var_12C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")))
  loc_1671506:   Me.LblVPrefix.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("vPrefix")))
  loc_167154E:   Set var_128 = Me.Txt
  loc_1671554:   Call 0.Method_Proc_224_50_1672B2C0 (CInt(1), var_12C)
  loc_167155C:   var_12C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("VNo")))
  loc_1671587:   var_B0 = var_88.Fields.Item("VDate")
  loc_1671598:   var_104 = Proc_6_38_E69628(CVar(var_B0))
  loc_16715A6:   Set var_128 = Me.Txt
  loc_16715AC:   Call 0.Method_Proc_224_50_1672B2C0 (CInt(2), var_12C)
  loc_16715B4:   var_12C.Text = var_104
  loc_16715E6:   Set var_9C = Me.Txt
  loc_16715EC:   Call 0.Method_Proc_224_50_1672B2C0 (CInt(1), var_B0, var_104, "Select VTYPE,GodownCode From Stock Where VtYpe='KMISS' and VNo=")
  loc_16715F4:   var_C0 = var_B0.Text
  loc_16715FD:   var_130 = -1 & var_104
  loc_167160E:   Set var_128 = Me.LblVPrefix
  loc_167162D:   unk_4FE244.Execute var_130 & " And VPrefix=" & var_128.Caption & vbNullString, var_12C, var_128
  loc_1671638:   Set var_94 = var_12C
  loc_167166C:   If (var_94.RecordCount > 0) Then
  loc_16716AB:     If (var_94.Fields.Item("vType").Value = "KMISS") Then
  loc_16716C5:       var_B0 = var_94.Fields.Item("Godowncode")
  loc_16716D6:       var_104 = Proc_6_38_E69628(CVar(var_B0))
  loc_16716E4:       Set var_128 = Me.Txt
  loc_16716EA:       Call 0.Method_Proc_224_50_1672B2C0 (CInt(3), var_12C)
  loc_16716F2:       var_12C.Tag = var_104
  loc_1671724:       Set var_9C = Me.Txt
  loc_167172A:       Call 0.Method_Proc_224_50_1672B2C0 (CInt(3), var_B0, var_104, "Select Name From GodownMast Where Code='")
  loc_1671732:       var_C0 = var_B0.Tag
  loc_167173B:       var_130 = -1 & var_104
  loc_167174B:       unk_4FE244.Execute var_130 & "'", var_128, 
  loc_1671756:       Set var_90 = var_128
  loc_1671782:       If (var_90.RecordCount > 0) Then
  loc_16717BB:         Set var_128 = Me.Txt
  loc_16717C1:         Call 0.Method_Proc_224_50_1672B2C0 (CInt(3), var_12C)
  loc_16717C9:         var_12C.Text = Proc_6_38_E69628(CVar(var_90.Fields.Item("Name")))
  loc_16717DD:       End If
  loc_16717DD:     End If
  loc_16717DD:   End If
  loc_1671819:   If (var_88.Fields.Item("vType").Value = "KMREC") Then
  loc_1671833:     var_B0 = var_88.Fields.Item("Godowncode")
  loc_1671844:     var_104 = Proc_6_38_E69628(CVar(var_B0))
  loc_1671852:     Set var_128 = Me.Txt
  loc_1671858:     Call 0.Method_Proc_224_50_1672B2C0 (CInt(4), var_12C)
  loc_1671860:     var_12C.Tag = var_104
  loc_1671892:     Set var_9C = Me.Txt
  loc_1671898:     Call 0.Method_Proc_224_50_1672B2C0 (CInt(4), var_B0, var_104, "Select Name From GodownMast Where Code='")
  loc_16718A0:     var_C0 = var_B0.Tag
  loc_16718A9:     var_130 = -1 & var_104
  loc_16718B9:     unk_4FE244.Execute var_130 & "'", var_128, 
  loc_16718C4:     Set var_90 = var_128
  loc_16718F0:     If (var_90.RecordCount > 0) Then
  loc_1671929:       Set var_128 = Me.Txt
  loc_167192F:       Call 0.Method_Proc_224_50_1672B2C0 (CInt(4), var_12C)
  loc_1671937:       var_12C.Text = Proc_6_38_E69628(CVar(var_90.Fields.Item("Name")))
  loc_167194B:     End If
  loc_167194B:   End If
  loc_167195E:   Me.FGrid.Rows = 1
  loc_1671968:   var_8A = 1
  loc_167196B:   ' Referenced from: 1671DF0
  loc_167197A:   If Not(var_88.EOF) Then
  loc_167197D:     var_AC = vbNullString
  loc_1671987:     Set var_9C = Me.FGrid
  loc_167199C:     Set var_148 = Me.FGrid
  loc_16719D8:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_8A)))) 'String
  loc_16719DF:     LateIdCallSt
  loc_1671A2A:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8A)), var_148)) 'String
  loc_1671A31:     LateIdCallSt
  loc_1671A7C:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RecdUnit")), CVar(CLng(2)), CVar(CLng(var_8A)), var_148, var_E0)) 'String
  loc_1671A83:     LateIdCallSt
  loc_1671ABB:     Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("RecdQty")), var_148, var_E0)
  loc_1671AC4:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1671AFC:     LateIdCallSt
  loc_1671B4D:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8A)), var_148, CVar(CStr(Format(var_E0, "0.000"))), 1, 1)) 'String
  loc_1671B54:     LateIdCallSt
  loc_1671B8C:     Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("QtyRec")), var_148, var_E0, CVar(CLng(3)))
  loc_1671B95:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1671BCD:     LateIdCallSt
  loc_1671C0B:     Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("Rate")), var_148, CVar(CStr(Format(var_E0, "0.000"))), 1, 1, CVar(CLng(5)))
  loc_1671C14:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1671C4C:     LateIdCallSt
  loc_1671C8A:     Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("Amount")), var_148, CVar(CStr(Format(var_E0, "0.00"))), 1, 1, CVar(CLng(7)))
  loc_1671C93:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1671CC4:     var_178 = CVar(CStr(Format(var_E0, "0.00"))) 'String
  loc_1671CCB:     LateIdCallSt
  loc_1671D1C:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_8A)), var_148, var_178, 1, 1)) 'String
  loc_1671D23:     LateIdCallSt
  loc_1671D6E:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemRestcode")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_148, var_E0, CVar(CLng(8)))) 'String
  loc_1671D75:     LateIdCallSt
  loc_1671DC0:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ConvRatio")), CVar(CLng(4)), CVar(CLng(var_8A)), var_148, var_E0)) 'String
  loc_1671DC7:     LateIdCallSt
  loc_1671DDB:     Set var_148 = Nothing 
  loc_1671DE5:     var_8A = (var_8A + 1)
  loc_1671DEB:     var_88.MoveNext
  loc_1671DF0:     GoTo loc_167196B
  loc_1671DF3:   End If
  loc_1671E06:   Me.FGrid.FixedRows = 1
  loc_1671E22:   var_E0 = CVar("SELECT S.Sno, S.SNo1, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM TranTaxDetail AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_1671E69:   unk_4FE244.Execute CStr(var_E0 & Me.Fields.Item("SearchCode").Value & "'"), var_178, -1
  loc_1671E74:   Set var_88 = var_128
  loc_1671EA3:   Me.FGCat.Rows = 1
  loc_1671EBF:   If (var_88.RecordCount > 0) Then
  loc_1671EC2:     ' Referenced from: 167228A
  loc_1671EC8:     var_142 = var_88.EOF
  loc_1671ED1:     If Not(var_142) Then
  loc_1671ED8:       Set var_18C = Me.FGCat
  loc_1671EDB:       var_AC = vbNullString
  loc_1671F05:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1671F0D:       var_114 = CVar(CLng(0)) 'Long
  loc_1671F3D:       var_100 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1671F44:       LateIdCallSt
  loc_1671F77:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1671F7F:       var_114 = CVar(CLng(1)) 'Long
  loc_1671FAF:       var_100 = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_1671FB6:       LateIdCallSt
  loc_1671FE9:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1671FF1:       var_114 = CVar(CLng(2)) 'Long
  loc_1672021:       var_100 = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_1672028:       LateIdCallSt
  loc_167205B:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1672063:       var_114 = CVar(CLng(3)) 'Long
  loc_1672093:       var_100 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_167209A:       LateIdCallSt
  loc_16720CD:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16720D5:       var_114 = CVar(CLng(4)) 'Long
  loc_1672105:       var_100 = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_167210C:       LateIdCallSt
  loc_167213F:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1672147:       var_114 = CVar(CLng(5)) 'Long
  loc_1672177:       var_100 = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_167217E:       LateIdCallSt
  loc_16721B1:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16721B9:       var_114 = CVar(CLng(6)) 'Long
  loc_16721E9:       var_100 = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_16721F0:       LateIdCallSt
  loc_167220E:       Set var_128 = Me.FGCat
  loc_1672223:       var_D0 = CVar((CLng(var_128.Rows) - 1)) 'Long
  loc_167222B:       var_114 = CVar(CLng(7)) 'Long
  loc_167224A:       var_B0 = var_88.Fields.Item("Sundry")
  loc_167225B:       var_100 = CVar(CStr(var_B0.Value)) 'String
  loc_1672262:       LateIdCallSt
  loc_167227E:       Set var_18C = Nothing 
  loc_1672285:       var_88.MoveNext
  loc_167228A:       GoTo loc_1671EC2
  loc_167228D:     End If
  loc_167228D:   End If
  loc_1672299:   Set var_9C = Me.LblCap
  loc_167229F:   Call 0.Method_Proc_224_50_1672B2C8 (var_142, var_8A, 2, var_18C, var_100, var_114, "'")
  loc_16722AA:   For var_190 = var_100 To var_142: var_18C = var_190 'Integer
  loc_16722BA:     Set var_9C = Me.LblCap
  loc_16722C0:     Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_B0, var_100, var_114)
  loc_16722D1:     Me.LblCap.Unload var_B0
  loc_16722E7:     Set var_9C = Me.LblDummy
  loc_16722ED:     Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_B0, "'")
  loc_16722FE:     Me.LblDummy.Unload var_B0
  loc_1672314:     Set var_9C = Me.TxtGt
  loc_167231A:     Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_B0, var_18C)
  loc_167232B:     Me.TxtGt.Unload var_B0
  loc_167233A:   Next var_190 'Integer
  loc_167236E:   var_B0 = Me.Fields.Item("SearchCode")
  loc_167237E:   var_E0 = "Select R.Name As SunName,TS.* From TranSunDetail TS Left Join RevMast R On TS.SunCode=R.Code Where TS.DocId='" & var_B0.Value 
  loc_16723AD:   var_1B0 = var_E0 & "' And TS.Site_Code='" & CVar(MemVar_1F95070) & "' And (TS.LogSite_Code='" & CVar(MemVar_1F95078) & "' Or TS.LogSite_Code='HO') Order By Sno" 
  loc_16723BB:   unk_4FE244.Execute CStr(var_1B0), var_1D0, -1
  loc_16723C6:   Set var_88 = var_128
  loc_16723FC:   If (var_88.RecordCount > 0) Then
  loc_1672401:     var_8A = 1
  loc_1672404:     ' Referenced from: 1672AFD
  loc_167240A:     var_142 = var_88.EOF
  loc_1672413:     If Not(var_142) Then
  loc_1672420:       Set var_9C = Me.LblDummy
  loc_1672426:       Call 0.Method_Proc_224_50_1672B2C8 (var_142, var_8A)
  loc_1672432:       If (var_8A > var_142) Then
  loc_167243F:         Set var_9C = Me.LblDummy
  loc_1672445:         Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_B0)
  loc_1672456:         Me.LblDummy.Load var_B0
  loc_167246E:         Set var_9C = Me.LblDummy
  loc_1672474:         Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_B0)
  loc_167247C:         var_B0.Visible = False
  loc_1672488:       End If
  loc_1672492:       Set var_9C = Me.LblCap
  loc_1672498:       Call 0.Method_Proc_224_50_1672B2C8 (var_142, var_8A)
  loc_16724A4:       If (var_128 > var_142) Then
  loc_16724B1:         Set var_9C = Me.LblCap
  loc_16724B7:         Call 0.Method_Proc_224_50_1672B2C0 (var_8A)
  loc_16724C8:         Me.LblCap.Load var_B0
  loc_16724E1:         Set var_128 = Me.LblCap
  loc_16724E7:         Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_12C)
  loc_1672504:         Set var_9C = Me.LblCap
  loc_167250A:         Call 0.Method_Proc_224_50_1672B2C0 ((var_8A - 1), var_B0)
  loc_167252D:         Set var_1D8 = Me.LblCap
  loc_1672533:         Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_1DC)
  loc_167253B:         var_1DC.Top = ((var_B0.Top + var_12C.Height) + CDbl(&HF))
  loc_167254F:       End If
  loc_1672559:       Set var_9C = Me.TxtGt
  loc_167255F:       Call 0.Method_Proc_224_50_1672B2C8 (var_142, var_8A)
  loc_167256B:       If (var_B0 > var_142) Then
  loc_1672578:         Set var_9C = Me.TxtGt
  loc_167257E:         Call 0.Method_Proc_224_50_1672B2C0 (var_8A)
  loc_167258F:         Me.TxtGt.Load var_B0
  loc_16725A8:         Set var_128 = Me.TxtGt
  loc_16725AE:         Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_12C)
  loc_16725CB:         Set var_9C = Me.TxtGt
  loc_16725D1:         Call 0.Method_Proc_224_50_1672B2C0 ((var_8A - 1), var_B0)
  loc_16725F4:         Set var_1D8 = Me.TxtGt
  loc_16725FA:         Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_1DC)
  loc_1672602:         var_1DC.Top = ((var_B0.Top + var_12C.Height) + CDbl(&HF))
  loc_1672616:       End If
  loc_167265A:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("SunCode"))) = MemVar_1F95070 & "TOT") Then
  loc_1672674:         var_B0 = var_88.Fields.Item("SunCode")
  loc_1672692:         Set var_128 = Me.LblCap
  loc_1672698:         Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_12C)
  loc_16726A0:         var_12C.Tag = Proc_6_38_E69628(CVar(var_B0))
  loc_16726E2:         Set var_9C = Me.LblCap
  loc_16726E8:         Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_B0)
  loc_16726F0:         var_B0.Caption = CStr(StrConv("Total", 3, 0))
  loc_1672765:         Set var_128 = Me.TxtGt
  loc_167276B:         Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_12C, CStr(Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SunAmt")))), "0.00")))
  loc_1672773:         var_12C.Text = 1
  loc_1672796:       Else
  loc_16727DA:         If (Proc_6_38_E69628(CVar(var_88.Fields.Item("SunCode")), 1) = MemVar_1F95070 & "NET") Then
  loc_16727F4:           var_B0 = var_88.Fields.Item("SunCode")
  loc_1672812:           Set var_128 = Me.LblCap
  loc_1672818:           Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_12C)
  loc_1672820:           var_12C.Tag = Proc_6_38_E69628(CVar(var_B0))
  loc_1672862:           Set var_9C = Me.LblCap
  loc_1672868:           Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_B0)
  loc_1672870:           var_B0.Caption = CStr(StrConv("Net Amount", 3, 0))
  loc_16728E5:           Set var_128 = Me.TxtGt
  loc_16728EB:           Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_12C, CStr(Format(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SunAmt")))), "0.00")))
  loc_16728F3:           var_12C.Text = 1
  loc_1672916:         Else
  loc_167294B:           Set var_128 = Me.LblCap
  loc_1672951:           Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_12C)
  loc_1672959:           var_12C.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("SunCode")), 1)
  loc_16729C1:           Set var_128 = Me.LblCap
  loc_16729C7:           Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_12C)
  loc_16729CF:           var_12C.Caption = CStr(StrConv(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SunName")))), 3, 0))
  loc_1672A04:           var_B0 = var_88.Fields.Item("SunAmt")
  loc_1672A4C:           Set var_128 = Me.TxtGt
  loc_1672A52:           Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_12C, CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B0))), "0.00")))
  loc_1672A5A:           var_12C.Text = 1
  loc_1672A7A:         End If
  loc_1672A7A:       End If
  loc_1672A86:       Set var_9C = Me.LblDummy
  loc_1672A8C:       Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_B0, 0)
  loc_1672A94:       var_B0.Visible = True
  loc_1672AAC:       Set var_9C = Me.LblCap
  loc_1672AB2:       Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_B0)
  loc_1672ABA:       var_B0.Visible = True
  loc_1672AD2:       Set var_9C = Me.TxtGt
  loc_1672AD8:       Call 0.Method_Proc_224_50_1672B2C0 (var_8A, var_B0)
  loc_1672AE0:       var_B0.Visible = True
  loc_1672AF2:       var_8A = (var_8A + 1)
  loc_1672AF8:       var_88.MoveNext
  loc_1672AFD:       GoTo loc_1672404
  loc_1672B00:     End If
  loc_1672B00:   End If
  loc_1672B03: Else
  loc_1672B03:   Call Proc_224_49_1016F34(var_8A)
  loc_1672B08: End If
  loc_1672B08: Call Proc_224_52_EF713C(var_B0)
  loc_1672B12: Set var_88 = Nothing
  loc_1672B1A: Set var_90 = Nothing
  loc_1672B22: Set var_94 = Nothing
  loc_1672B25: Exit Sub
  loc_1672B26: ' Referenced from: 16713CC
  loc_1672B26: Proc_6_60_E63754()
  loc_1672B2B: Exit Sub
End Sub

Public Sub Proc_224_51_EC865C(arg_C) 'EC865C
  'Data Table: 4FE240
  Dim var_98 As TextBox
  loc_EC85BE: Set var_8C = Me.Txt
  loc_EC85C4: Call 0.Method_Proc_224_51_EC865CC (var_8E, var_86)
  loc_EC85D4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EC85EA:   Set var_8C = Me.Txt
  loc_EC85F0:   Call 0.Method_Proc_224_51_EC865C0 (CInt(var_86), var_98)
  loc_EC85F8:   var_98.Enabled = arg_C
  loc_EC8607: Next var_92 'Byte
  loc_EC861A: Set var_8C = Me.Txt
  loc_EC8620: Call 0.Method_Proc_224_51_EC865C0 (CInt(0), var_98)
  loc_EC8628: var_98.Enabled = False
  loc_EC8641: Set var_8C = Me.Txt
  loc_EC8647: Call 0.Method_Proc_224_51_EC865C0 (CInt(1), var_98)
  loc_EC864F: var_98.Enabled = False
  loc_EC865B: Exit Sub
End Sub

Public Sub Proc_224_52_EF713C
  'Data Table: 4FE240
  loc_EF707C: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EF708E:   Me.DGDepart.Visible = False
  loc_EF7096: End If
  loc_EF70B2: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF70C4:   Me.DGItem.Visible = False
  loc_EF70CC: End If
  loc_EF70E8: If (CBool(Me.DGToDepart.Visible) = &HFF) Then
  loc_EF70FA:   Me.DGToDepart.Visible = False
  loc_EF7102: End If
  loc_EF711E: If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_EF7130:   Me.DGMemName.Visible = False
  loc_EF7138: End If
  loc_EF7138: Exit Sub
  loc_EF7139: CopyBytes 17152
End Sub

Public Sub Proc_224_53_115D848
  'Data Table: 4FE240
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
  loc_115D4E0: var_90 = global_68
  loc_115D4F7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_115D51A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115D528: Set var_B4 = Me.Txt
  loc_115D52E: Call 0.Method_Proc_224_53_115D8480 (CInt(2), var_B8, var_E8)
  loc_115D53D: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_115D545: var_F8 = -1 & var_D8 
  loc_115D559: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115D564: Set var_8C = var_140
  loc_115D5A0: If (var_8C.RecordCount <= 0) Then
  loc_115D5BC:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115D5CF:   var_88 = vbNullString
  loc_115D5D2:   Proc_224_53_115D848 = 
  loc_115D5D8: End If
  loc_115D5EC: If (var_8C.RecordCount > 0) Then
  loc_115D62B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115D648:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115D659:     var_9C = CStr(var_B8.Value)
  loc_115D674:     Set var_B4 = Me.Txt
  loc_115D67A:     Call 0.Method_Proc_224_53_115D8480 (CInt(1), var_B8)
  loc_115D690:     var_94 = CLng(Val(var_B8.Text))
  loc_115D6A0:   Else
  loc_115D6CB:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115D6F2:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115D707:     var_D8 = (var_B8.Value + 1)
  loc_115D70D:     var_94 = CLng(var_D8)
  loc_115D71E:   End If
  loc_115D71E: End If
  loc_115D749: var_C8 = Space((5 - Len(var_90)))
  loc_115D751: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_B8.Value)
  loc_115D75B: var_F8 = (var_E8 + CVar(var_9C))
  loc_115D76C: var_118 = Space((5 - Len(var_9C)))
  loc_115D774: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115D78A: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115D792: var_188 = (var_13C + var_178)
  loc_115D79E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115D7A3: var_98 = CStr(var_1A8)
  loc_115D7D3: Me.LblVPrefix.Caption = var_9C
  loc_115D7E9: Set var_B4 = Me.Txt
  loc_115D7EF: Call 0.Method_Proc_224_53_115D8480 (CInt(0), var_B8)
  loc_115D7F7: var_B8.Text = var_98
  loc_115D816: Set var_B4 = Me.Txt
  loc_115D81C: Call 0.Method_Proc_224_53_115D8480 (CInt(1), var_B8)
  loc_115D824: var_B8.Text = CStr(var_94)
  loc_115D836: var_88 = var_98
  loc_115D83E: Set var_8C = Nothing
  loc_115D841: Proc_224_53_115D848 = var_94
End Sub

Public Sub Proc_224_54_110DA9C
  'Data Table: 4FE240
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Fields15
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_110D7A0: var_90 = global_72
  loc_110D7B7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_110D7DA: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_110D7E8: Set var_B4 = Me.Txt
  loc_110D7EE: Call 0.Method_Proc_224_54_110DA9C0 (CInt(2), var_B8, var_E8)
  loc_110D7FD: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_110D805: var_F8 = -1 & var_D8 
  loc_110D819: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_110D824: Set var_8C = var_140
  loc_110D860: If (var_8C.RecordCount <= 0) Then
  loc_110D87C:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_110D88F:   var_88 = vbNullString
  loc_110D892:   Proc_224_54_110DA9C = 
  loc_110D898: End If
  loc_110D8AC: If (var_8C.RecordCount > 0) Then
  loc_110D8EB:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_110D908:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_110D919:     var_9C = CStr(var_B8.Value)
  loc_110D934:     Set var_B4 = Me.Txt
  loc_110D93A:     Call 0.Method_Proc_224_54_110DA9C0 (CInt(1), var_B8)
  loc_110D950:     var_94 = CLng(Val(var_B8.Text))
  loc_110D960:   Else
  loc_110D98B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_110D9C7:     var_D8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_110D9CD:     var_94 = CLng(var_D8)
  loc_110D9DE:   End If
  loc_110D9DE: End If
  loc_110DA09: var_C8 = Space((5 - Len(var_90)))
  loc_110DA11: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_8C.Fields.Item("start_srl_no").Value)
  loc_110DA1B: var_F8 = (var_E8 + CVar(var_9C))
  loc_110DA2C: var_118 = Space((5 - Len(var_9C)))
  loc_110DA34: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_110DA4A: var_178 = Space((8 - Len(CStr(var_94))))
  loc_110DA52: var_188 = (var_13C + var_178)
  loc_110DA5E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_110DA89: var_88 = CStr(var_1A8)
  loc_110DA91: Set var_8C = Nothing
  loc_110DA94: Proc_224_54_110DA9C = var_94
End Sub

Public Sub Proc_224_55_12767D8
  'Data Table: 4FE240
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_D4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  loc_127623F: Me.FGrid.Width = CVar(CDbl(10800))
  loc_127625A: Me.FGrid.Top = CVar(CDbl(1450))
  loc_1276275: Me.FGrid.Height = CVar(CDbl(3400))
  loc_1276290: Me.DGItem.Left = CVar(CDbl(2800))
  loc_12762AB: Me.DGItem.Top = CVar(CDbl(1200))
  loc_12762EA: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_127630A: If (global_92 <> "Yes") Then
  loc_127631E:   Set var_A8 = Me.DGItem
  loc_127633D:   DGItem.DispID_69.Item(1).Width = CDbl(0)
  loc_1276366:   var_94 = CVar((CDbl(Me.DGItem.Width) - CDbl(2500))) 'Single
  loc_1276375:   Me.DGItem.Width = 1
  loc_1276384: End If
  loc_1276388: Set var_D4 = Me.FGrid
  loc_127639F: global_108 = CStr(CLng(var_D4.BackColor))
  loc_12763B5: var_D4.Cols = &HB
  loc_12763BD: var_94 = CVar(CLng(0)) 'Long
  loc_12763C2: var_E8 = &H1C2
  loc_12763CE: LateIdCallSt
  loc_12763D6: var_94 = 0
  loc_12763E2: var_E8 = CVar(CLng(1)) 'Long
  loc_12763E7: var_108 = "Item Name"
  loc_12763F0: LateIdCallSt
  loc_12763FB: var_94 = CVar(CLng(1)) 'Long
  loc_1276406: var_E8 = CVar(CInt(1)) 'Integer
  loc_127640D: LateIdCallSt
  loc_1276418: var_94 = CVar(CLng(1)) 'Long
  loc_127641D: var_E8 = &H9C4
  loc_1276429: LateIdCallSt
  loc_1276431: var_94 = 0
  loc_127643D: var_E8 = CVar(CLng(2)) 'Long
  loc_1276442: var_108 = "Unit"
  loc_127644B: LateIdCallSt
  loc_1276456: var_94 = CVar(CLng(2)) 'Long
  loc_1276461: var_E8 = CVar(CInt(1)) 'Integer
  loc_1276468: LateIdCallSt
  loc_1276473: var_94 = CVar(CLng(2)) 'Long
  loc_1276478: var_E8 = &H384
  loc_1276484: LateIdCallSt
  loc_127648C: var_94 = 0
  loc_1276498: var_E8 = CVar(CLng(3)) 'Long
  loc_127649D: var_108 = "Iss. Qty"
  loc_12764A6: LateIdCallSt
  loc_12764B1: var_94 = CVar(CLng(3)) 'Long
  loc_12764BC: var_E8 = CVar(CInt(7)) 'Integer
  loc_12764C3: LateIdCallSt
  loc_12764CE: var_94 = CVar(CLng(3)) 'Long
  loc_12764D9: var_E8 = CVar(CInt(7)) 'Integer
  loc_12764E0: LateIdCallSt
  loc_12764EB: var_94 = CVar(CLng(3)) 'Long
  loc_12764F0: var_E8 = &H3E8
  loc_12764FC: LateIdCallSt
  loc_1276504: var_94 = 0
  loc_1276510: var_E8 = CVar(CLng(4)) 'Long
  loc_1276515: var_108 = "Conv. Factor"
  loc_127651E: LateIdCallSt
  loc_1276529: var_94 = CVar(CLng(4)) 'Long
  loc_1276534: var_E8 = CVar(CInt(7)) 'Integer
  loc_127653B: LateIdCallSt
  loc_1276546: var_94 = CVar(CLng(4)) 'Long
  loc_1276551: var_E8 = CVar(CInt(7)) 'Integer
  loc_1276558: LateIdCallSt
  loc_1276563: var_94 = CVar(CLng(4)) 'Long
  loc_1276568: var_E8 = &H4B0
  loc_1276574: LateIdCallSt
  loc_127657C: var_94 = 0
  loc_1276588: var_E8 = CVar(CLng(5)) 'Long
  loc_127658D: var_108 = "Wt. Qty"
  loc_1276596: LateIdCallSt
  loc_12765A1: var_94 = CVar(CLng(5)) 'Long
  loc_12765AC: var_E8 = CVar(CInt(7)) 'Integer
  loc_12765B3: LateIdCallSt
  loc_12765BE: var_94 = CVar(CLng(5)) 'Long
  loc_12765C9: var_E8 = CVar(CInt(7)) 'Integer
  loc_12765D0: LateIdCallSt
  loc_12765DB: var_94 = CVar(CLng(5)) 'Long
  loc_12765E0: var_E8 = &H3E8
  loc_12765EC: LateIdCallSt
  loc_12765F4: var_94 = 0
  loc_1276600: var_E8 = CVar(CLng(6)) 'Long
  loc_1276605: var_108 = "Wt.Unit"
  loc_127660E: LateIdCallSt
  loc_1276619: var_94 = CVar(CLng(6)) 'Long
  loc_1276624: var_E8 = CVar(CInt(1)) 'Integer
  loc_127662B: LateIdCallSt
  loc_1276636: var_94 = CVar(CLng(6)) 'Long
  loc_127663B: var_E8 = &H384
  loc_1276647: LateIdCallSt
  loc_127664F: var_94 = 0
  loc_127665B: var_E8 = CVar(CLng(7)) 'Long
  loc_1276660: var_108 = "Rate"
  loc_1276669: LateIdCallSt
  loc_1276674: var_94 = CVar(CLng(7)) 'Long
  loc_127667F: var_E8 = CVar(CInt(7)) 'Integer
  loc_1276686: LateIdCallSt
  loc_1276691: var_94 = CVar(CLng(7)) 'Long
  loc_127669C: var_E8 = CVar(CInt(7)) 'Integer
  loc_12766A3: LateIdCallSt
  loc_12766AE: var_94 = CVar(CLng(7)) 'Long
  loc_12766B3: var_E8 = &H3E8
  loc_12766BF: LateIdCallSt
  loc_12766C7: var_94 = 0
  loc_12766D3: var_E8 = CVar(CLng(8)) 'Long
  loc_12766D8: var_108 = "Amount"
  loc_12766E1: LateIdCallSt
  loc_12766EC: var_94 = CVar(CLng(8)) 'Long
  loc_12766F7: var_E8 = CVar(CInt(7)) 'Integer
  loc_12766FE: LateIdCallSt
  loc_1276709: var_94 = CVar(CLng(8)) 'Long
  loc_1276714: var_E8 = CVar(CInt(7)) 'Integer
  loc_127671B: LateIdCallSt
  loc_1276726: var_94 = CVar(CLng(8)) 'Long
  loc_127672B: var_E8 = &H5DC
  loc_1276737: LateIdCallSt
  loc_1276742: var_94 = CVar(CLng(9)) 'Long
  loc_1276747: var_E8 = 0
  loc_1276753: LateIdCallSt
  loc_127675E: var_94 = CVar(CLng(&HA)) 'Long
  loc_1276763: var_E8 = 0
  loc_127676F: LateIdCallSt
  loc_1276779: Set var_D4 = Nothing 
  loc_1276781: Set var_11C = Me.FGCat
  loc_1276798: global_108 = CStr(CLng(var_11C.BackColor))
  loc_12767A5: var_94 = CVar(CLng(3)) 'Long
  loc_12767AA: var_E8 = &H7D0
  loc_12767B6: LateIdCallSt
  loc_12767CA: var_11C.Cols = 9
  loc_12767D1: Set var_11C = Nothing 
  loc_12767D5: Exit Sub
  loc_12767D6: Exit Sub
End Sub

Public Sub Proc_224_56_F73BF0
  'Data Table: 4FE240
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  loc_F73AF3: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F73AFB: var_C8 = CVar(CLng(7)) 'Long
  loc_F73B33: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F73B3B: var_134 = CVar(CLng(3)) 'Long
  loc_F73B73: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F73B7B: var_1F0 = CVar(CLng(8)) 'Long
  loc_F73BAC: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_F73BB4: Set var_224 = Me.FGrid
  loc_F73BBA: LateIdCallSt
  loc_F73BED: Exit Sub
  loc_F73BEE: ArrayRebase1Var
End Sub

Public Sub Proc_224_57_ED85C0
  'Data Table: 4FE240
  loc_ED8520: Call Proc_224_52_EF713C()
  loc_ED8530: Set var_88 = Me.Txt
  loc_ED8536: Call 0.Method_Proc_224_57_ED85C00 (CInt(2))
  loc_ED855F: If (Proc_6_27_EA61EC(var_8C, "Date") = 0) Then
  loc_ED8562:   Exit Sub
  loc_ED8563: End If
  loc_ED859A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED859D:   Call TopCtrl1_UnknownEvent_16()
  loc_ED85A5: Else
  loc_ED85AB:   Call 0.Method_arg_1E8 (var_88)
  loc_ED85B3:   Call var_88.SetFocus
  loc_ED85BC: End If
  loc_ED85BC: Exit Sub
End Sub
