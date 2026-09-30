VERSION 5.00
Begin VB.Form RsStoreRecEntry
  Caption = "Finish Material Receive Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11610
  ClientHeight = 7710
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
    ForeColor = &HC00000&
    Left = 2235
    Top = 1410
    Width = 4605
    Height = 240
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
  Begin TextBox TxtBarCode
    ForeColor = &HC00000&
    Left = 7965
    Top = 1140
    Width = 2850
    Height = 330
    Visible = 0   'False
    TabIndex = 17
    MaxLength = 30
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
  Begin DataGrid DGItem
    Left = 2880
    Top = 5790
    Width = 6735
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGDepart
    Left = 4770
    Top = 4470
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 2235
    Top = 1665
    Width = 4605
    Height = 240
    Visible = 0   'False
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
    Index = 0
    Left = 4530
    Top = 5355
    Width = 1995
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 25
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 120
    Top = 2850
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 2235
    Top = 1155
    Width = 4605
    Height = 240
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
    Left = 2235
    Top = 900
    Width = 1725
    Height = 240
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 5100
    Top = 900
    Width = 1740
    Height = 240
    TabIndex = 0
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
  Begin MSHFlexGrid FGrid
    Left = 75
    Top = 1980
    Width = 10710
    Height = 3405
    TabIndex = 5
  End
  Begin DataGrid DGToDepart
    Left = 8805
    Top = 5385
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 16
  End
  Begin DataGrid DGShift
    Left = 10860
    Top = 2070
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11610
    Height = 450
    TabIndex = 22
  End
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 0
    Top = 5460
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3885
    Top = 6975
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 510
    Top = 6975
    Width = 2880
    Height = 255
    TabIndex = 24
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
  Begin Label Label2
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 7935
    Top = 7005
    Width = 1230
    Height = 285
    Visible = 0   'False
    TabIndex = 23
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
  Begin Label LblCaption
    Caption = "#"
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 9270
    Top = 810
    Width = 255
    Height = 345
    TabIndex = 21
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
  Begin Label Label1
    Caption = "For Shift"
    Index = 3
    ForeColor = &HC00000&
    Left = 375
    Top = 1425
    Width = 705
    Height = 240
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
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
    ForeColor = &HC00000&
    Left = 7155
    Top = 1200
    Width = 735
    Height = 240
    Visible = 0   'False
    TabIndex = 18
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "To Location"
    Index = 0
    ForeColor = &HC00000&
    Left = 375
    Top = 1680
    Width = 945
    Height = 240
    Visible = 0   'False
    TabIndex = 15
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
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
    ForeColor = &HFF&
    Left = 1545
    Top = 915
    Width = 690
    Height = 240
    TabIndex = 13
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
    Top = 5370
    Width = 540
    Height = 210
    Visible = 0   'False
    TabIndex = 12
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
    Caption = "For Location"
    Index = 4
    ForeColor = &HC00000&
    Left = 375
    Top = 1170
    Width = 1020
    Height = 240
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Vr. No."
    Index = 1
    ForeColor = &HC00000&
    Left = 375
    Top = 915
    Width = 525
    Height = 240
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 4605
    Top = 915
    Width = 360
    Height = 240
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "RsStoreRecEntry"

Private global_90 As Integer
Private global_88 As Integer

Private Sub FGrid_UnknownEvent_0 'E62744
  'Data Table: 4D1014
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6270F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E62722: Set var_A8 = Me.TxtGrid
  loc_E62728: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E62730: var_AC.Visible = False
  loc_E6273C: Call Proc_213_48_EBB1AC()
  loc_E62741: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67100
  'Data Table: 4D1014
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E670BC: Set var_88 = Me.TxtGrid
  loc_E670C2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E670DC: If (var_8C.Visible = 0) Then
  loc_E670F5:   Me.FGrid.BackColorSel = CVar(CLng(global_108))
  loc_E670FD: End If
  loc_E670FD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E20120
  'Data Table: 4D1014
  loc_E20117: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E2011F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E2CBE4
  'Data Table: 4D1014
  Dim var_8C As TextBox
  loc_E2CBC7: Set var_88 = Me.TxtGrid
  loc_E2CBCD: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E2CBD5: var_8C.Visible = False
  loc_E2CBE1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '116F7B4
  'Data Table: 4D1014
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  Dim arg_61FF As Double
  loc_116F3E8: On Error Goto loc_116F7AB
  loc_116F3EF: Set var_88 = Me.TopCtrl1
  loc_116F3F5: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_116F40E: If (CStr() = "Browse") Then
  loc_116F411:   Exit Sub
  loc_116F412: End If
  loc_116F486: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_116F49F:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_116F4AF:   var_9C = "+{Tab}"
  loc_116F4B5:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_116F4BF:   KeyCode = 0
  loc_116F4C5: Else
  loc_116F4CF:   var_B0 = Me.FGrid.Rows
  loc_116F51C:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_116F535:     Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_116F542:     Call Proc_213_52_ED7C60(0, var_B0, KeyCode)
  loc_116F547:   End If
  loc_116F547: End If
  loc_116F54D: global_90 = KeyCode
  loc_116F573: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_116F597: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_116F5AD:   var_EC = CLng(Me.FGrid.Col)
  loc_116F5BD:   If (var_EC = CLng(1)) Then
  loc_116F5D3:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116F5EB:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116F5F0:     var_11C = vbNullString
  loc_116F5FA:     Set var_B4 = Me.FGrid
  loc_116F600:     LateIdCallSt
  loc_116F62B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116F633:     var_FC = CVar(CLng(9)) 'Long
  loc_116F638:     var_11C = vbNullString
  loc_116F642:     Set var_A0 = Me.FGrid
  loc_116F648:     LateIdCallSt
  loc_116F66D:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116F675:     var_FC = CVar(CLng(&HA)) 'Long
  loc_116F67A:     var_11C = vbNullString
  loc_116F684:     Set var_A0 = Me.FGrid
  loc_116F68A:     LateIdCallSt
  loc_116F6AF:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116F6B7:     var_FC = CVar(CLng(2)) 'Long
  loc_116F6BC:     var_11C = vbNullString
  loc_116F6C6:     Set var_A0 = Me.FGrid
  loc_116F6CC:     LateIdCallSt
  loc_116F6F1:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116F6F9:     var_FC = CVar(CLng(7)) 'Long
  loc_116F6FE:     var_11C = vbNullString
  loc_116F708:     Set var_A0 = Me.FGrid
  loc_116F70E:     LateIdCallSt
  loc_116F723:   Else
  loc_116F72A:     If Not (var_EC = CLng(7)) Then
  loc_116F734:       If (var_EC = CLng(3)) Then
  loc_116F737:       End If
  loc_116F74A:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116F753:       Set var_A0 = Me.FGrid
  loc_116F762:       var_FC = CVar(CLng(var_A0.Col)) 'Long
  loc_116F767:       var_11C = vbNullString
  loc_116F777:       LateIdCallSt
  loc_116F78F:       Call Proc_213_51_F71790(Me.FGrid, var_11C, var_FC, var_D4, var_A0, var_11C, var_FC, var_D4)
  loc_116F794:     End If
  loc_116F794:   End If
  loc_116F794: End If
  loc_116F79A: If (KeyCode = &HD) Then
  loc_116F7A2:   global_88 = 0
  loc_116F7A5: End If
  loc_116F7A7: KeyCode = 0
  loc_116F7AA: Exit Sub
  loc_116F7AB: ' Referenced from: 116F3E8
  loc_116F7AB: Proc_6_60_E63754(KeyCode, global_88, var_A0, var_11C, var_FC)
  loc_116F7B0: Exit Sub
  loc_116F7B1: arg_61FF = var_D4
End Sub

Private Sub FGrid_UnknownEvent_B 'E159D0
  'Data Table: 4D1014
  loc_E159C1: Call FGrid_UnknownEvent_C()
  loc_E159CB: global_88 = 0
  loc_E159CE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '102C940
  'Data Table: 4D1014
  Dim var_AC As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_102C72B: var_88 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_102C735: On Error Goto loc_102C937
  loc_102C74B: var_B0 = CLng(Me.FGrid.Col)
  loc_102C75B: If (var_B0 = CLng(1)) Then
  loc_102C762:   Set var_C8 = Me.FGrid
  loc_102C786:   var_B4 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_102C7B3:   Set var_B8 = var_C8
  loc_102C7C5:   Proc_6_63_110B734(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_102C7ED:   Set var_AC = Me.TxtGrid
  loc_102C7F3:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4, Asc(var_B4))
  loc_102C7FB:   0 = var_B8.Text
  loc_102C814:   If (Len(var_B4) <= 1) Then
  loc_102C823:     Set var_AC = Me.TxtGrid
  loc_102C829:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4)
  loc_102C831:     var_CE = var_B8.Text
  loc_102C842:     Set var_BC = Me.TxtGrid
  loc_102C848:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_102C850:     var_C8.Text = var_B4
  loc_102C863:   End If
  loc_102C86F:   Set var_AC = Me.TxtGrid
  loc_102C875:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_102C88F:   Set var_BC = Me.TxtGrid
  loc_102C895:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_102C89D:   var_C8.SelStart = Len(var_B8.Text)
  loc_102C8B3: Else
  loc_102C8BA:   If Not (var_B0 = CLng(7)) Then
  loc_102C8C4:     If Not (var_B0 = CLng(3)) Then
  loc_102C8CE:       If (var_B0 = CLng(4)) Then
  loc_102C8D1:       End If
  loc_102C8D1:     End If
  loc_102C90F:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_102C921:   End If
  loc_102C921: End If
  loc_102C92B: If (CLng(KeyCode) <> &HD) Then
  loc_102C933:   global_88 = &HFF
  loc_102C936: End If
  loc_102C936: Exit Sub
  loc_102C937: ' Referenced from: 102C735
  loc_102C937: Proc_6_60_E63754(global_88, &HFF, KeyCode)
  loc_102C93C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '10575D4
  'Data Table: 4D1014
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  loc_1057368: On Error Goto loc_10575CC
  loc_105736F: Set var_8C = Me.TopCtrl1
  loc_1057375: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_105738E: If (CStr() = "Browse") Then
  loc_1057391:   Exit Sub
  loc_1057392: End If
  loc_10573AF: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_10573B2:   Exit Sub
  loc_10573B3: End If
  loc_10573C4: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_10573E6:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1057420:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_1057442:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1057458:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1057461:         Set var_114 = Me.FGrid
  loc_105747C:       Else
  loc_105748F:         Me.FGrid.Rows = 1
  loc_10574B5:         var_9C = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_10574BD:         Set var_114 = Me.FGrid
  loc_10574D7:         var_B0 = 1
  loc_10574EA:         Me.FGrid.FixedRows = var_B0
  loc_10574F2:       End If
  loc_10574F2:       Call Proc_213_51_F71790(FGrid.DispID_10000, var_9C)
  loc_10574FB:       Set var_8C = Me.TopCtrl1
  loc_1057501:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(FGrid.DispID_10000)
  loc_105751A:       If (CStr(var_B0) = "Add") Then
  loc_1057542:         For var_120 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_120 'Integer
  loc_105754C:           var_B0 = CVar(CLng(var_86)) 'Long
  loc_1057554:           var_E0 = CVar(CLng(0)) 'Long
  loc_105755E:           var_9C = CVar(CStr(var_86)) 'String
  loc_1057566:           Set var_8C = Me.FGrid
  loc_105756C:           LateIdCallSt
  loc_105757D:         Next var_120 'Integer
  loc_1057582:       End If
  loc_1057582:     End If
  loc_1057585:   Else
  loc_10575A6:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_10575B6:   End If
  loc_10575BA:   Set var_8C = Me.FGrid
  loc_10575CB: End If
  loc_10575CB: Exit Sub
  loc_10575CC: ' Referenced from: 1057368
  loc_10575CC: Proc_6_60_E63754(FGrid.DispID_8001)
  loc_10575D1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9D7D0
  'Data Table: 4D1014
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9D773: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9D78B: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9D7B3: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9D7CE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43FC8
  'Data Table: 4D1014
  Dim var_8C As TextBox
  loc_E43FA7: Set var_88 = Me.TxtGrid
  loc_E43FAD: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43FB5: var_8C.Visible = False
  loc_E43FC1: Call Proc_213_48_EBB1AC()
  loc_E43FC6: Exit Sub
End Sub

Private Sub DGShift_UnknownEvent_9 'F3D754
  'Data Table: 4D1014
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3D64B: Me.DGShift.Visible = False
  loc_F3D66A: If (Me.RecordCount > 0) Then
  loc_F3D6A9:   Set var_B4 = Me.Txt
  loc_F3D6AF:   Call 0.Method_DGShift_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3D6B7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3D6EA:   var_B0 = Me.Fields.Item("Name")
  loc_F3D709:   Set var_B4 = Me.Txt
  loc_F3D70F:   Call 0.Method_DGShift_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3D717:   var_B8.Text = CStr(var_B0.Value)
  loc_F3D72D: End If
  loc_F3D738: Set var_A8 = Me.Txt
  loc_F3D73E: Call 0.Method_DGShift_UnknownEvent_90 (CInt(5))
  loc_F3D746: var_B0.SetFocus
  loc_F3D752: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FA2ACC
  'Data Table: 4D1014
  Dim var_8C As Variant
  Dim var_D0 As Variant
  Dim var_D4 As TextBox
  loc_FA2948: On Error Goto loc_FA2AC3
  loc_FA296E: Call Proc_213_47_EFF2D8(Proc_5_1_100EC1C("ADD", Me))
  loc_FA2979: Call Proc_213_45_F73794(global_56)
  loc_FA298B: Me.LblVPrefix.Caption = vbNullString
  loc_FA29A0: Me.LblUser.Caption = vbNullString
  loc_FA29B5: Me.LblLDt.Caption = vbNullString
  loc_FA29D0: Me.FGrid.Rows = 1
  loc_FA29ED: var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FA29F5: Set var_D4 = Me.FGrid
  loc_FA2A24: Me.FGrid.FixedRows = 1
  loc_FA2A3F: Set var_8C = Me.Txt
  loc_FA2A45: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, CStr(MemVar_1F950EC))
  loc_FA2A4D: var_D4.Text = FGrid.DispID_10000
  loc_FA2A67: Set var_8C = Me.Txt
  loc_FA2A6D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4)
  loc_FA2A75: var_D4.SetFocus
  loc_FA2A94: Set var_8C = Me.Txt
  loc_FA2A9A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4)
  loc_FA2AA2: var_D4.Text = CStr(MemVar_1F950EC)
  loc_FA2ABD: Call Txt_Validate(CInt(2))
  loc_FA2AC2: Exit Sub
  loc_FA2AC3: ' Referenced from: FA2948
  loc_FA2AC3: Proc_6_60_E63754(&HFF)
  loc_FA2AC8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBAB98
  'Data Table: 4D1014
  loc_EBAB04: On Error Goto loc_EBAB8F
  loc_EBAB3E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBAB4D:   Set var_10C = Me
  loc_EBAB64:   Call Proc_213_47_EFF2D8(Proc_5_1_100EC1C("INI", var_10C))
  loc_EBAB6F:   Call Proc_213_46_1456DAC(global_56)
  loc_EBAB77: Else
  loc_EBAB7D:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBAB85:   Call var_10C.SetFocus
  loc_EBAB8E: End If
  loc_EBAB8E: Exit Sub
  loc_EBAB8F: ' Referenced from: EBAB04
  loc_EBAB8F: Proc_6_60_E63754()
  loc_EBAB94: Exit Sub
  loc_EBAB95: Exit Sub
  loc_EBAB96: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FD733C
  'Data Table: 4D1014
  Dim unk_4D102C As Connection15
  Dim Me As Recordset15
  Dim var_120 As TextBox
  Dim var_128 As String
  Dim var_B4 As Variant
  loc_FD7184: On Error Goto loc_FD72EC
  loc_FD7195: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_FD7198:   Exit Sub
  loc_FD7199: End If
  loc_FD71D0: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FD71DC:   unk_4D102C.BeginTrans var_118
  loc_FD71F2:   var_94 = Me.Bookmark 'Variant
  loc_FD7214:   Set var_11C = Me.Txt
  loc_FD721A:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_124, "Delete From Stock Where DocID='")
  loc_FD7222:   var_B4 = var_120.Text
  loc_FD722B:   var_128 = -1 & var_124
  loc_FD723B:   unk_4D102C.Execute var_128 & "'", var_130, 
  loc_FD725B:   unk_4D102C.CommitTrans
  loc_FD726B:   Me.Requery -1
  loc_FD728B:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_FD7298:     Me.Bookmark = var_94
  loc_FD72A0:   Else
  loc_FD72B4:     If (Me.EOF = 0) Then
  loc_FD72BD:       Me.MoveLast
  loc_FD72C2:     End If
  loc_FD72C2:   End If
  loc_FD72C2:   Call Proc_213_46_1456DAC()
  loc_FD72E3:   Proc_5_0_1107AD0(&HFF, Me)
  loc_FD72EB: End If
  loc_FD72EB: Exit Sub
  loc_FD72EC: ' Referenced from: FD7184
  loc_FD72F2: unk_4D102C.RollbackTrans
  loc_FD72FF: Set var_11C = Err()
  loc_FD7305: Call 0.Method_arg_2C (var_124, global_56)
  loc_FD7326: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_FD7339: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FCDD74
  'Data Table: 4D1014
  Dim Me As Recordset15
  Dim var_90 As Label
  Dim var_98 As TextBox
  loc_FCDBC0: On Error Goto loc_FCDD6E
  loc_FCDBD1: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_FCDBD4:   Exit Sub
  loc_FCDBD5: End If
  loc_FCDBEC: If (Me.RecordCount > 0) Then
  loc_FCDC12:   Call Proc_213_47_EFF2D8(Proc_5_1_100EC1C("EDIT", Me))
  loc_FCDC2A:   Me.LblUser.Caption = vbNullString
  loc_FCDC3F:   Me.LblLDt.Caption = vbNullString
  loc_FCDC54:   Set var_90 = Me.Txt
  loc_FCDC5A:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FCDC62:   var_98.Enabled = False
  loc_FCDC72:   Set var_90 = Me.TopCtrl1
  loc_FCDC78:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(global_56)
  loc_FCDC91:   If (CStr() = "Add") Then
  loc_FCDC9F:     Set var_90 = Me.Txt
  loc_FCDCA5:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2))
  loc_FCDCAD:     var_98.SetFocus
  loc_FCDCB9:   End If
  loc_FCDCBD:   Set var_90 = Me.TopCtrl1
  loc_FCDCC3:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_FCDCDC:   If (CStr() = "Edit") Then
  loc_FCDCEA:     Set var_90 = Me.Txt
  loc_FCDCF0:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3))
  loc_FCDCF8:     var_98.SetFocus
  loc_FCDD04:   End If
  loc_FCDD12:   Set var_90 = Me.Txt
  loc_FCDD18:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FCDD2B:   global_76 = var_98.Text
  loc_FCDD3C: Else
  loc_FCDD5D:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FCDD6D: End If
  loc_FCDD6D: Exit Sub
  loc_FCDD6E: ' Referenced from: FCDBC0
  loc_FCDD6E: Proc_6_60_E63754(var_98)
  loc_FCDD73: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1612C
  'Data Table: 4D1014
  loc_E16121: Me.Global.Unload Me
  loc_E16129: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB40E4
  'Data Table: 4D1014
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB4054: On Error Goto loc_EB40DE
  loc_EB406E: If (Me.RecordCount <= 0) Then
  loc_EB4077:   var_B8 = "Information"
  loc_EB4092:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB40A2:   Exit Sub
  loc_EB40A3: End If
  loc_EB40A6: MemVar_1F950E4 = "Select Distinct S.Docid,CONVERT(VARCHAR(8),S.Vno) as VNo,S.Vdate,S.VPrefix,D.NAME AS ToLocation From (Stock S left Join GodownMast D on S.GodownCode=D.Code) Left Join ItemMast I ON S.Item=I.Code And I.ItemType='Store' WHERE VTYPE='BKREC'"
  loc_EB40B3: Proc_6_126_F1C850("1500,1500,1500,4500")
  loc_EB40C1: MemVar_1F95120 = Me
  loc_EB40D8: Call 0.Method_arg_2B0 (1)
  loc_EB40DD: Exit Sub
  loc_EB40DE: ' Referenced from: EB4054
  loc_EB40DE: Proc_6_60_E63754(var_B8)
  loc_EB40E3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2F468
  'Data Table: 4D1014
  Dim var_6301 As Double
  loc_E2F458: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2F460: Call Proc_213_46_1456DAC(global_56)
  loc_E2F465: Exit Sub
  loc_E2F466: var_6301 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2D1E8
  'Data Table: 4D1014
  Dim var_6301 As Double
  loc_E2D1D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D1E0: Call Proc_213_46_1456DAC(global_56)
  loc_E2D1E5: Exit Sub
  loc_E2D1E6: var_6301 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2D128
  'Data Table: 4D1014
  Dim var_6301 As Double
  loc_E2D118: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D120: Call Proc_213_46_1456DAC(global_56)
  loc_E2D125: Exit Sub
  loc_E2D126: var_6301 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2CE28
  'Data Table: 4D1014
  Dim var_6301 As Double
  loc_E2CE18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2CE20: Call Proc_213_46_1456DAC(global_56)
  loc_E2CE25: Exit Sub
  loc_E2CE26: var_6301 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '11200A4
  'Data Table: 4D1014
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim var_B0 As String
  Dim var_B8 As Variant
  Dim unk_4D102C As Connection15
  Dim var_9C As Recordset15
  Dim var_D4 As Variant
  Dim var_136 As Integer
  Dim var_104 As String
  Dim var_B4 As Fields15
  Dim var_124 As String
  Dim var_114 As Variant
  loc_111FD70: On Error Goto loc_112009E
  loc_111FD8A: If (Me.RecordCount <= 0) Then
  loc_111FD8D:   Exit Sub
  loc_111FD8E: End If
  loc_111FD95: var_A8 = "Select S.Docid,S.VNo,S.VDate,S.RecdQty as Qty,S.RecdUnit As Unit,S.Rate,S.Amount,S.GodownCode," & " I.Name as ItemName,G.Name as GodName,SM.Name As Shift"
  loc_111FDA3: var_B0 = var_A8 & " From ((Stock as S Left Join ItemMast as I on S.Item=I.Code And I.ItemType='Store')" & " Left Join GodownMast as G on S.GodownCode=G.Code) Left Join ShiftMast as SM on S.ShiftCode=SM.Code"
  loc_111FDBB: Set var_B4 = Me.Txt
  loc_111FDC1: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B8)
  loc_111FDD9: var_88 = var_B0 & " Where S.DocID='" & var_B8.Text & "' Order By S.Sno"
  loc_111FDFA: If (var_88 = vbNullString) Then
  loc_111FDFD:   Exit Sub
  loc_111FDFE: End If
  loc_111FE14: unk_4D102C.Execute var_88, var_E4, -1
  loc_111FE1F: Set var_9C = var_B4
  loc_111FE2E: var_A4 = var_9C.RecordCount
  loc_111FE3C: If (var_A4 <= 0) Then
  loc_111FE45:   Call 0.Method_arg_50 (var_A8)
  loc_111FE66:   MsgBox("** No Records Found to Print **", &H40, CVar(var_A8), var_114, var_134)
  loc_111FE76:   Exit Sub
  loc_111FE77: End If
  loc_111FE8D: Set var_B4 = var_9C 
  loc_111FE99: var_136 = CreateFieldDefFile(var_B4, MemVar_1F950B4 & "\FinishMaterialReceived.ttx")
  loc_111FEA3: Set var_9C = var_B4
  loc_111FEA9: var_D4 = CVar(var_136) 'Integer
  loc_111FEAC: var_98 = var_D4 'Variant
  loc_111FEC8: var_A8 = MemVar_1F950B4 & "\FinishMaterialReceived.RPT"
  loc_111FED1: Call 0.Method_arg_1C (var_A8, var_D4, var_B4)
  loc_111FEDC: MemVar_1F951E8 = var_B4
  loc_111FEF7: Call 0.Method_arg_90 (var_B4, var_A4, var_9E, 1)
  loc_111FEFF: Call 0.Method_arg_24 (var_136, &HFF)
  loc_111FF0B: For var_13A =  To CInt(var_A4): var_B4 = var_13A 'Integer
  loc_111FF24:   Call 0.Method_arg_90 (var_B4, CLng(var_9E))
  loc_111FF2C:   Call 0.Method_arg_20 (var_B8)
  loc_111FF34:   Call 0.Method_arg_30 (var_A8)
  loc_111FF3C:   var_140 = var_A8
  loc_111FF4E:   If (var_140 = "Title") Then
  loc_111FF64:     Call 0.Method_arg_90 (var_B4, CLng(var_9E))
  loc_111FF6C:     Call 0.Method_arg_20 (var_B8)
  loc_111FF74:     Call 0.Method_arg_38 ("'Finish Material Received'")
  loc_111FF83:   Else
  loc_111FF8B:     If (var_140 = "ForShift") Then
  loc_111FF8E:       var_104 = "'"
  loc_111FFA5:       var_B4 = var_9C.Fields
  loc_111FFC1:       var_124 = "'"
  loc_111FFCA:       var_A8 = CStr(var_104 & var_B4.Item("Shift").Value & var_124)
  loc_111FFDE:       Call 0.Method_arg_90 (var_144, CLng(var_9E))
  loc_111FFE6:       Call 0.Method_arg_20 (var_148)
  loc_111FFEE:       Call 0.Method_arg_38 (var_A8)
  loc_112000A:     End If
  loc_112000A:   End If
  loc_112000D: Next var_13A 'Integer
  loc_112002B: Call 0.Method_arg_64 (var_B4, CVar(var_9C))
  loc_1120033: Call 0.Method_arg_2C (var_104)
  loc_1120041: Call 0.Method_arg_150 (var_124)
  loc_112004C: Call 0.Method_arg_50 (var_A8)
  loc_1120056: Set var_B8 = Nothing
  loc_1120070: Set var_B4 = MemVar_1F951E8 
  loc_112007C: Proc_6_99_1484404(var_B4, 0, var_A8)
  loc_1120087: MemVar_1F951E8 = var_B4
  loc_112009A: Set var_9C = Nothing
  loc_112009D: Exit Sub
  loc_112009E: ' Referenced from: 111FD70
  loc_112009E: Proc_6_60_E63754(&HFF)
  loc_11200A3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2387C
  'Data Table: 4D1014
  Dim Me As Recordset15
  loc_E23863: Me.Requery -1
  loc_E23873: Me.Requery -1
  loc_E23878: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14CE888
  'Data Table: 4D1014
  Dim var_96 As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_A8 As String
  Dim var_108 As Variant
  Dim var_8E As Integer
  Dim unk_4D102C As Connection15
  Dim var_144 As Variant
  Dim var_A0 As Variant
  Dim var_7B0 As Double
  Dim var_1A8 As Variant
  Dim var_7B8 As Double
  Dim var_1C0 As TextBox
  Dim var_1D0 As MSHFlexGrid
  Dim var_1E4 As TextBox
  Dim var_1F8 As TextBox
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_118 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_128 As Variant
  Dim var_2BC As Variant
  Dim var_2DC As Variant
  Dim var_320 As Variant
  Dim var_364 As Variant
  Dim var_7D8 As Double
  Dim var_428 As Variant
  Dim var_544 As Variant
  Dim var_564 As Variant
  Dim var_5DC As Variant
  Dim var_5FC As Variant
  Dim var_620 As Variant
  Dim var_6F4 As Variant
  Dim var_73C As TextBox
  Dim var_188 As String
  Dim var_1B0 As String
  Dim var_258 As String
  Dim var_3D4 As String
  Dim var_514 As Variant
  Dim var_6A0 As Variant
  Dim var_88 As Recordset15
  Dim var_A4 As Fields15
  Dim var_1BC As Fields15
  Dim Me As Recordset15
  loc_14CDCB8: On Error Goto loc_14CE86D
  loc_14CDCBD: var_96 = 0
  loc_14CDCCB: Set var_9C = Me.Txt
  loc_14CDCD1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_14CDCFA: If (Proc_6_27_EA61EC(var_A0, "Voucher Number") = 0) Then
  loc_14CDCFD:   Exit Sub
  loc_14CDCFE: End If
  loc_14CDD09: Set var_9C = Me.Txt
  loc_14CDD0F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A0)
  loc_14CDD38: If (Proc_6_27_EA61EC(var_A0, "Voucher Date") = 0) Then
  loc_14CDD3B:   Exit Sub
  loc_14CDD3C: End If
  loc_14CDD47: Set var_9C = Me.Txt
  loc_14CDD4D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A0)
  loc_14CDD76: If (Proc_6_27_EA61EC(var_A0, "From Location") = 0) Then
  loc_14CDD79:   Exit Sub
  loc_14CDD7A: End If
  loc_14CDD7A: var_B8 = 1
  loc_14CDDA0: var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_14CDDB1: If (var_A8 = vbNullString) Then
  loc_14CDDBA:   Call 0.Method_arg_50 (var_A8, CVar(CLng(1)))
  loc_14CDDD5:   var_F8 = "Please Fill Item Detail"
  loc_14CDDDB:   MsgBox(var_F8, &H40, CVar(var_A8), var_118, var_128)
  loc_14CDDFE:   Me.FGrid.Row = 1
  loc_14CDE0A:   Set var_9C = Me.FGrid
  loc_14CDE1B:   Exit Sub
  loc_14CDE1C: End If
  loc_14CDE1E: var_8E = &HFF
  loc_14CDE2A: unk_4D102C.BeginTrans var_12C
  loc_14CDE56: unk_4D102C.Execute "Delete From Stock Where DocID='" & global_76 & "'", var_F8, -1
  loc_14CDE8D: For var_134 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_134 'Integer
  loc_14CDE97:   var_B8 = CVar(CLng(var_98)) 'Long
  loc_14CDE9F:   var_D8 = CVar(CLng(0)) 'Long
  loc_14CDEA9:   var_F8 = CVar(CStr(var_98)) 'String
  loc_14CDEB1:   Set var_9C = Me.FGrid
  loc_14CDEB7:   LateIdCallSt
  loc_14CDEC8: Next var_134 'Integer
  loc_14CDEF2: For var_148 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_148 'Integer
  loc_14CDEFC:   var_B8 = CVar(CLng(var_98)) 'Long
  loc_14CDF04:   var_D8 = CVar(CLng(3)) 'Long
  loc_14CDF2F:   var_144 = CVar(CLng(var_98)) 'Long
  loc_14CDF6F:   If (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_14CDFA0:     var_7B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14CDFAA:     Set var_A0 = Me.LblVPrefix
  loc_14CDFC3:     Set var_A4 = Me.Txt
  loc_14CDFC9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A8, var_1AC, var_7B0, CVar(CLng(0)), CVar(CLng(var_98)))
  loc_14CDFD1:     var_144 = var_1A8.Text
  loc_14CDFDE:     var_7B8 = Val(var_1AC)
  loc_14CDFEF:     Set var_1BC = Me.Txt
  loc_14CDFF5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1C0, var_1C4, var_7B8)
  loc_14CDFFD:     (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) = var_1C0.Text
  loc_14CE006:     var_144 = CVar(CLng(var_98)) 'Long
  loc_14CE01D:     var_108 = Me.FGrid.TextMatrix)
  loc_14CE037:     Set var_1E0 = Me.Txt
  loc_14CE03D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1E4, var_1E8, var_108, CVar(CLng(9)))
  loc_14CE045:     var_144 = var_1E4.Tag
  loc_14CE058:     Set var_1F4 = Me.Txt
  loc_14CE05E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1F8, var_1FC)
  loc_14CE066:     var_D8 = var_1F8.Tag
  loc_14CE06F:     var_214 = CVar(CLng(var_98)) 'Long
  loc_14CE077:     var_234 = CVar(CLng(7)) 'Long
  loc_14CE086:     var_118 = Me.FGrid.TextMatrix)
  loc_14CE0A0:     var_268 = CVar(CLng(var_98)) 'Long
  loc_14CE0A8:     var_288 = CVar(CLng(3)) 'Long
  loc_14CE0B7:     var_128 = Me.FGrid.TextMatrix)
  loc_14CE0D1:     var_2BC = CVar(CLng(var_98)) 'Long
  loc_14CE0D9:     var_2DC = CVar(CLng(3)) 'Long
  loc_14CE102:     var_320 = CVar(CLng(var_98)) 'Long
  loc_14CE119:     var_364 = Me.FGrid.TextMatrix)
  loc_14CE153:     var_7D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14CE171:     var_428 = Me.FGrid.TextMatrix)
  loc_14CE180:     Proc_6_104_ED68A8(var_44C, var_428, CVar(CLng(4)), CVar(CLng(var_98)), var_7D8, CVar(CLng(8)), CVar(CLng(var_98)), var_364)
  loc_14CE189:     Set var_490 = Me.TopCtrl1
  loc_14CE18F:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(CLng(2)))
  loc_14CE1CA:     var_544 = CVar(CLng(var_98)) 'Long
  loc_14CE1D2:     var_564 = CVar(CLng(5)) 'Long
  loc_14CE1FB:     var_5DC = CVar(CLng(var_98)) 'Long
  loc_14CE203:     var_5FC = CVar(CLng(6)) 'Long
  loc_14CE212:     var_620 = Me.FGrid.TextMatrix)
  loc_14CE239:     var_6F4 = Me.FGrid.TextMatrix)
  loc_14CE253:     Set var_738 = Me.Txt
  loc_14CE259:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_73C, var_740, var_6F4, CVar(CLng(&HA)), CVar(CLng(var_98)), var_620)
  loc_14CE261:     var_5FC = var_73C.Tag
  loc_14CE27A:     var_A8 = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,COntraDocId,ContraSno,DepartCode,GodownCode,Rate,RecdQty,AccQty,RecdUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyRec,Unit,LogSite_Code,ItemRestCode,ShiftCode)" & " VALUES ('"
  loc_14CE2C8:     var_1B0 = var_A8 & global_76 & "'," & CStr(var_7B0) & ",'" & var_A0.Caption & "','" & MemVar_1F95070 & "'," & "'BKREC'" & ","
  loc_14CE323:     var_258 = var_1B0 & CStr(var_7B8) & ",'" & var_1C4 & "','" & CStr(var_108) & "','',0,'" & var_1E8 & "','" & var_1FC & "'," & CStr(Val(CStr(var_118)))
  loc_14CE36E:     var_3D4 = var_258 & "," & CStr(Val(CStr(var_128))) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CStr(var_364) & "'," & CStr(var_7D8)
  loc_14CE3AB:     var_514 = CVar(var_3D4 & ",'" & CStr(var_428) & "','" & MemVar_1F950C8 & "',") & var_44C & ",'" & IIf((CStr(var_4A0) = "Add"), "A", "E") 
  loc_14CE3EF:     var_6A0 = var_514 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_620)) & "','" & CVar(MemVar_1F95078) & "','" 
  loc_14CE424:     unk_4D102C.Execute CStr(var_6A0 & CVar(CStr(var_6F4)) & "','" & CVar(var_740) & "')"), var_7A4, -1
  loc_14CE51C:     var_96 = &HFF
  loc_14CE51F:   End If
  loc_14CE522: Next var_148 'Integer
  loc_14CE52D: If (var_96 = 0) Then
  loc_14CE549:   MsgBox("Nil Details Can't Be Saved", &H40, var_108, var_118, var_128)
  loc_14CE55F:   unk_4D102C.RollbackTrans
  loc_14CE564:   Exit Sub
  loc_14CE565: End If
  loc_14CE569: Set var_9C = Me.TopCtrl1
  loc_14CE56F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_14CE588: If (CStr() = "Add") Then
  loc_14CE58F:   Set var_88 = New 
  loc_14CE59A:   Me.Recordset15.CursorLocation = 3
  loc_14CE5AD:   Set var_9C = Me.Txt
  loc_14CE5B3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A0)
  loc_14CE5C3:   var_F8 = CVar(var_A0.Text) 'String
  loc_14CE5C9:   Proc_6_7_F26918(var_108)
  loc_14CE5EC:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_14CE612:   var_118 = CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_68 & "' And VP.Date_From<=") 'String
  loc_14CE629:   var_88.Open var_118 & var_108 & " Order By VP.Date_From DESC", CVar(MemVar_1F95044), 2
  loc_14CE663:   If (var_88.RecordCount > 0) Then
  loc_14CE674:     Set var_9C = Me.Txt
  loc_14CE67A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0, var_A8)
  loc_14CE682:     3 = var_A0.Text
  loc_14CE68F:     var_7B0 = Val(var_A8)
  loc_14CE698:     var_B8 = "V_Type"
  loc_14CE6B4:     var_F8 = var_88.Fields.Item(var_B8).Value
  loc_14CE6DF:     Proc_6_7_F26918(var_364, CVar(var_88.Fields.Item("Date_From")), var_7B0)
  loc_14CE712:     var_188 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_7B0) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_14CE744:     unk_4D102C.Execute CStr(CVar(var_188 & MemVar_1F95078 & "') and V_Type='") & var_F8 & "' and Date_From=" & var_364), var_428, -1
  loc_14CE77E:   End If
  loc_14CE77E: End If
  loc_14CE784: unk_4D102C.CommitTrans
  loc_14CE78B: var_8E = 0
  loc_14CE79C: Set var_9C = Me.Txt
  loc_14CE7A2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A8, var_8E)
  loc_14CE7AA: var_1D0 = var_A0.Text
  loc_14CE7C7: Me.Requery -1
  loc_14CE7F1: Me.Find "SearchCode ='" & "SearchCode ='" & var_A8 & "'", 0, 1
  loc_14CE7FD: Call Proc_213_46_1456DAC(var_B8, -1)
  loc_14CE806: Set var_9C = Me.TopCtrl1
  loc_14CE80C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_F8)
  loc_14CE825: If (CStr() = "Add") Then
  loc_14CE828:   Call TopCtrl1_UnknownEvent_A()
  loc_14CE82D:   Exit Sub
  loc_14CE82E: End If
  loc_14CE851: Call Proc_213_47_EFF2D8(Proc_5_1_100EC1C("INI", Me))
  loc_14CE861: Set var_88 = Nothing
  loc_14CE869: Set var_8C = Nothing
  loc_14CE86C: Exit Sub
  loc_14CE86D: ' Referenced from: 14CDCB8
  loc_14CE873: If (var_8E = &HFF) Then
  loc_14CE87C:   unk_4D102C.RollbackTrans
  loc_14CE881: End If
  loc_14CE881: Proc_6_60_E63754(global_56)
  loc_14CE886: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10D3178
  'Data Table: 4D1014
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_148 As Variant
  loc_10D2E8F: Me.DGItem.Visible = False
  loc_10D2EAE: If (Me.RecordCount > 0) Then
  loc_10D2EC4:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D2ECC:   var_E4 = CVar(CLng(1)) 'Long
  loc_10D2EFF:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10D2F07:   Set var_128 = Me.FGrid
  loc_10D2F0D:   LateIdCallSt
  loc_10D2F3C:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D2F44:   var_E4 = CVar(CLng(9)) 'Long
  loc_10D2F77:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10D2F7F:   Set var_128 = Me.FGrid
  loc_10D2F85:   LateIdCallSt
  loc_10D2FB4:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D2FBC:   var_E4 = CVar(CLng(&HA)) 'Long
  loc_10D2FEF:   var_114 = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_10D2FF7:   Set var_128 = Me.FGrid
  loc_10D2FFD:   LateIdCallSt
  loc_10D302C:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D3034:   var_E4 = CVar(CLng(2)) 'Long
  loc_10D3067:   var_114 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_10D306F:   Set var_128 = Me.FGrid
  loc_10D3075:   LateIdCallSt
  loc_10D30AB:   var_B0 = Me.Fields.Item("Rate")
  loc_10D30C3:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D30CB:   var_F4 = CVar(CLng(7)) 'Long
  loc_10D30F8:   var_148 = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_10D3100:   Set var_128 = Me.FGrid
  loc_10D3106:   LateIdCallSt
  loc_10D3124: End If
  loc_10D3130: Set var_A8 = Me.TxtGrid
  loc_10D3136: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15A, var_128, var_148, 1, 1)
  loc_10D313E: var_F4 = var_B0.Visible
  loc_10D3150: If (var_15A = &HFF) Then
  loc_10D315C:   Set var_A8 = Me.TxtGrid
  loc_10D3162:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_D4, var_128)
  loc_10D316A:   var_B0.SetFocus
  loc_10D3176: End If
  loc_10D3176: Exit Sub
End Sub

Private Sub Form_Load() '11B7840
  'Data Table: 4D1014
  Dim var_8C As Variant
  Dim var_BC As String
  Dim var_F0 As String
  Dim unk_4D102C As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_118 As Label
  loc_11B7407: Set var_8C = Me.LblCaption
  loc_11B740D: var_8C.Caption = "Finish Material Received"
  loc_11B7422: var_BC = "Select E.PurChaseGodown,G.Name PurChaseGodownName,E.BarCodeFeatureInPurchase,E.DateEditableOnRequisitionYN From Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE="
  loc_11B7432: Proc_6_17_EAAE40(var_AC, MemVar_1F95078, var_BC)
  loc_11B7451: unk_4D102C.Execute CStr(var_110 & var_AC & vbNullString), -1, var_8C
  loc_11B745C: Set var_88 = var_8C
  loc_11B7484: If (var_88.RecordCount > 0) Then
  loc_11B74B5:   global_92 = Proc_6_38_E69628(CVar(var_88.Fields.Item("BarCodeFeatureInPurchase")))
  loc_11B74D9:   var_118 = var_88.Fields.Item("DateEditableOnRequisitionYN")
  loc_11B74F0:   global_96 = Proc_6_38_E69628(CVar(var_118))
  loc_11B74FD: End If
  loc_11B7507: Set global_60 = New 
  loc_11B7519: Me.CursorLocation = 3
  loc_11B7529: If (global_92 = "Yes") Then
  loc_11B754A:   var_F0 = "Select I.Code,I.BarCode,I.Name,I.Unit,I.IssueUnit,I.PurchRate as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_11B755B:   Me.Open CVar(var_F0 & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.BarCode"), CVar(MemVar_1F95044), 3
  loc_11B7569: Else
  loc_11B7587:   var_F0 = "Select I.Code,I.BarCode,I.Name,I.Unit,I.IssueUnit,I.PurchRate as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_11B7598:   Me.Open CVar(var_F0 & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_11B75A3: End If
  loc_11B75AC: CVarUnk
  loc_11B75B1: VerifyVarObj
  loc_11B75B7: Set var_8C = Me.DGItem
  loc_11B75BD: LateIdStAd
  loc_11B75D5: Set global_52 = New 
  loc_11B75E7: Me.DGItem.CursorLocation = 3
  loc_11B7611: var_AC = CVar("Select G.Code,G.Name From GodownMast G iNNER join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078 & "')  Order by G.Name") 'String
  loc_11B761B: Me.Open var_AC, CVar(MemVar_1F95044), 2
  loc_11B762F: CVarUnk
  loc_11B7634: VerifyVarObj
  loc_11B763A: Set var_8C = Me.DGDepart
  loc_11B7640: LateIdStAd
  loc_11B766A: Me.DGDepart.CursorLocation = 3
  loc_11B769E: Me.Open CVar("Select Code,Name From ShiftMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "') Order by Name"), CVar(MemVar_1F95044), 2
  loc_11B76B2: CVarUnk
  loc_11B76B7: VerifyVarObj
  loc_11B76BD: Set var_8C = Me.DGShift
  loc_11B76C3: LateIdStAd
  loc_11B76DC: If (global_92 = "Yes") Then
  loc_11B76EB:   Me.TxtBarCode.Visible = True
  loc_11B76FE:   Set var_8C = Me.Label1
  loc_11B7704:   Call 0.Method_Form_Load0 (6, var_118, &HFF, var_8C, New, 3, -1)
  loc_11B770C:   var_118.Visible = var_8C
  loc_11B7718: End If
  loc_11B7734: Me.CursorLocation = 3
  loc_11B775E: var_AC = CVar("Select Distinct DocID as SearchCode,Site_Code,LogSite_Code From Stock WHERE   LOGSITE_CODE='" & MemVar_1F95078 & "' and VTYPE='BKREC' order by  DocID") 'String
  loc_11B7768: Me.Open var_AC, CVar(MemVar_1F95044), 2
  loc_11B7779: global_68 = "BKREC"
  loc_11B777D: Call Proc_213_50_124DCE4(3, -1, global_52, 3)
  loc_11B77A5: Call Proc_213_47_EFF2D8(Proc_5_1_100EC1C("INI", Me, New, -1), Me)
  loc_11B77B0: Call Proc_213_46_1456DAC(global_60)
  loc_11B77C4: Me.LblUser.Left = CDbl(13500)
  loc_11B77DB: Me.LblUser.Top = CDbl(7800)
  loc_11B77F2: Me.LblLDt.Top = CDbl(8160)
  loc_11B7809: Me.LblLDt.Left = CDbl(13500)
  loc_11B7829: Proc_6_23_DFC5B8(Me, 5445)
  loc_11B7836: Set var_88 = Nothing
  loc_11B7839: Exit Sub
  loc_11B783A: Proc_6_60_E63754(10695)
  loc_11B783F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E63248
  'Data Table: 4D1014
  loc_E63207: Set global_56 = Nothing
  loc_E63219: Set global_52 = Nothing
  loc_E6322B: Set global_60 = Nothing
  loc_E6323D: Set global_64 = Nothing
  loc_E63244: Exit Sub
End Sub

Private Sub Form_Activate() 'E2BDA4
  'Data Table: 4D1014
  loc_E2BD80: Set var_88 = Me.TopCtrl1
  loc_E2BD86: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000()
  loc_E2BD9B: If (CLng(CInt()) = &H2D) Then
  loc_E2BD9E:   Call TopCtrl1_UnknownEvent_15()
  loc_E2BDA3: End If
  loc_E2BDA3: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E80154
  'Data Table: 4D1014
  loc_E800E8: On Error Goto loc_E8014B
  loc_E80119: If (((global_92 = "Yes") And (Shift = 1)) And (Me.TxtBarCode.Visible = &HFF)) Then
  loc_E80126:   Me.TxtBarCode.SetFocus
  loc_E8012E: End If
  loc_E80142: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8014A: Exit Sub
  loc_E8014B: ' Referenced from: E800E8
  loc_E8014B: Proc_6_60_E63754(Shift)
  loc_E80150: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '117312C
  'Data Table: 4D1014
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_98 As String
  Dim Me As Recordset15
  loc_1172D72: Set var_88 = Me.Txt
  loc_1172D78: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1172D86: Proc_6_74_E23240(var_8C)
  loc_1172D92: Call Proc_213_48_EBB1AC(var_8C)
  loc_1172D9A: var_92 = Index
  loc_1172DA5: If (var_92 = CInt(3)) Then
  loc_1172DB2:   Set global_52 = New 
  loc_1172DC4:   Me.Txt.CursorLocation = 3
  loc_1172DD7:   Set var_88 = Me.Txt
  loc_1172DDD:   Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_1172E08:   var_98 = "Select distinct G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_1172E27:   Me.Open CVar(var_98 & "') and G.CODE<>'" & var_8C.Tag & "'  Order by G.Name"), CVar(MemVar_1F95044), 2
  loc_1172E4A:   CVarUnk
  loc_1172E4F:   VerifyVarObj
  loc_1172E55:   Set var_88 = Me.DGDepart
  loc_1172E5B:   LateIdStAd
  loc_1172EBD:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), Me.Txt)
  loc_1172EC5:   global_52 = var_8C.Text
  loc_1172EDD:   If (3 Or (var_98 = vbNullString)) Then
  loc_1172EE0:     Exit Sub
  loc_1172EE1:   End If
  loc_1172EEE:   Set var_88 = Me.Txt
  loc_1172EF4:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1172EFC:   -1 = var_8C.Text
  loc_1172F0E:   var_C4 = "Name"
  loc_1172F49:   If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_1172F52:     Me.MoveFirst
  loc_1172F75:     Set var_88 = Me.Txt
  loc_1172F7B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1172F83:     0 = var_8C.Text
  loc_1172F9C:     Me.Find 1 & var_98 & "'", var_C4, var_92
  loc_1172FB1:   End If
  loc_1172FB4: Else
  loc_1172FBC:   If (var_92 = CInt(5)) Then
  loc_117300D:     Set var_88 = Me.Txt
  loc_1173013:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1173033:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1173036:       Exit Sub
  loc_1173037:     End If
  loc_1173044:     Set var_88 = Me.Txt
  loc_117304A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1173052:     var_98 = var_8C.Text
  loc_1173064:     var_C4 = "Name"
  loc_117309F:     If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_11730A8:       Me.MoveFirst
  loc_11730CB:       Set var_88 = Me.Txt
  loc_11730D1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_11730D9:       0 = var_8C.Text
  loc_11730F2:       Me.Find 1 & var_98 & "'", var_C4, 
  loc_1173107:     End If
  loc_117310A:   Else
  loc_1173112:     If (var_92 = CInt(2)) Then
  loc_117311D:       var_98 = "{Home}+{End}"
  loc_1173123:       Proc_303_0_FBACC8(var_98)
  loc_117312B:     End If
  loc_117312B:   End If
  loc_117312B: End If
  loc_117312B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11554EC
  'Data Table: 4D1014
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_98 As DataGrid
  Dim var_8C As DataGrid
  loc_115515A: If (CLng(Shift) = &H1B) Then
  loc_115515D:   Call Proc_213_48_EBB1AC()
  loc_1155162:   Exit Sub
  loc_1155163: End If
  loc_1155166: var_86 = KeyCode
  loc_1155171: If (var_86 = CInt(3)) Then
  loc_1155181:   Set var_98 = Me.Txt
  loc_1155187:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_115518F:   var_A0 = var_9C.Height
  loc_11551A1:   Set var_8C = Me.Txt
  loc_11551A7:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11551BF:   var_B0 = CVar(((var_90.Top + var_A0) + CDbl(&H19))) 'Single
  loc_11551CE:   Me.DGDepart.Top = var_B0
  loc_11551ED:   Set var_8C = Me.Txt
  loc_11551F3:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11551FB:   var_94 = var_90.Left
  loc_1155212:   Me.DGDepart.Left = CVar(var_94)
  loc_1155238:   Set var_9C = Nothing
  loc_1155243:   Set var_98 = Nothing
  loc_1155262:   Set var_90 = Me.Txt
  loc_1155271:   Proc_6_69_134A630(Me.DGDepart, var_90, KeyCode, global_52, Shift, &HFF)
  loc_1155288: Else
  loc_1155290:   If (var_86 = CInt(5)) Then
  loc_11552A0:     Set var_98 = Me.Txt
  loc_11552A6:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A0, 1)
  loc_11552AE:     var_98 = var_9C.Height
  loc_11552C0:     Set var_8C = Me.Txt
  loc_11552C6:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_11552CE:     var_9C = var_90.Top
  loc_11552DE:     var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_11552ED:     Me.DGShift.Top = CVar(var_94)
  loc_115530C:     Set var_8C = Me.Txt
  loc_1155312:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_115531A:     0 = var_90.Left
  loc_1155331:     Me.DGShift.Left = CVar(var_94)
  loc_1155357:     Set var_9C = Nothing
  loc_1155362:     Set var_98 = Nothing
  loc_1155390:     Proc_6_69_134A630(Me.DGShift, Me.Txt, KeyCode, global_64, Shift, &HFF)
  loc_11553A4:   End If
  loc_11553A4: End If
  loc_11553D5: Set var_98 = Me.DGItem
  loc_11553EC: Set var_9C = Me.DGShift
  loc_1155415: If ((((CBool(Me.DGDepart.Visible) = 0) And (CBool(Me.DGToDepart.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_115542D:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1155436:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_115543B:   End If
  loc_115543F:   Set var_8C = Me.TopCtrl1
  loc_1155445:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_9C)
  loc_1155470:   If (((CStr(0) = "Add") And (KeyCode <> CInt(1))) And (KeyCode <> CInt(2))) Then
  loc_1155488:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1155491:       Proc_6_76_E533C8(Shift, arg_14)
  loc_1155496:     End If
  loc_1155496:   End If
  loc_115549A:   Set var_8C = Me.TopCtrl1
  loc_11554A0:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_86)
  loc_11554C2:   If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_11554DA:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11554E3:       Proc_6_76_E533C8(Shift)
  loc_11554E8:     End If
  loc_11554E8:   End If
  loc_11554E8: End If
  loc_11554E8: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F69ED4
  'Data Table: 4D1014
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F69DA3: Proc_6_58_E06050(arg_10)
  loc_F69DAE: Proc_6_133_E7FB08(var_94)
  loc_F69DB7: arg_10 = CInt(var_94)
  loc_F69DC0: var_96 = KeyAscii
  loc_F69DCB: If (var_96 = CInt(3)) Then
  loc_F69DEA:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F69E17:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_52, arg_10, "Name")
  loc_F69E26:   End If
  loc_F69E29: Else
  loc_F69E31:   If (var_96 = CInt(5)) Then
  loc_F69E50:     If (CBool(Me.DGShift.Visible) = &HFF) Then
  loc_F69E57:       Set var_A8 = Me.Txt
  loc_F69E7D:       Proc_6_89_1470B00(var_A8, KeyAscii, global_64, arg_10, "Name")
  loc_F69E8C:     End If
  loc_F69E8F:   Else
  loc_F69E97:     If (var_96 = CInt(1)) Then
  loc_F69EA4:       Set var_9C = Me.Txt
  loc_F69EAA:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0, 0)
  loc_F69EC5:       Proc_6_42_129B55C(var_A8, arg_10, 8, 0)
  loc_F69ED1:     End If
  loc_F69ED1:   End If
  loc_F69ED1: End If
  loc_F69ED1: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFE9FC
  'Data Table: 4D1014
  Dim var_86 As Integer
  loc_DFE9F7: var_86 = KeyCode
  loc_DFE9FA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CA3C
  'Data Table: 4D1014
  loc_E4CA1A: Set var_88 = Me.Txt
  loc_E4CA20: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CA2E: Proc_6_73_E23294(var_8C)
  loc_E4CA3A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '134F16C
  'Data Table: 4D1014
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim var_C8 As Integer
  Dim unk_4D102C As Connection15
  Dim var_8C As Variant
  Dim var_94 As Field20
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_124 As TextBox
  Dim Me As Recordset15
  Dim var_120 As TextBox
  loc_134E967: var_86 = Cancel
  loc_134E972: If (var_86 = CInt(1)) Then
  loc_134E980:   Set var_8C = Me.Txt
  loc_134E986:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_134E98E:   var_98 = "Vr No"
  loc_134E9AF:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_134E9BC:     Set var_8C = Me.Txt
  loc_134E9C2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134E9CA:     var_90.SetFocus
  loc_134E9D8:     arg_10 = &HFF
  loc_134E9DB:     Exit Sub
  loc_134E9DC:   End If
  loc_134E9EA:   Set var_8C = Me.Txt
  loc_134E9F0:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_134E9F8:   arg_10 = var_90.Text
  loc_134EA10:   If (CDbl(var_98) = CDbl(0)) Then
  loc_134EA26:     var_B8 = "Vr No Can Not Be 0"
  loc_134EA2C:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_134EA46:     Set var_8C = Me.Txt
  loc_134EA4C:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134EA54:     var_90.SetFocus
  loc_134EA62:     arg_10 = &HFF
  loc_134EA65:     Exit Sub
  loc_134EA66:   End If
  loc_134EA6A:   Set var_8C = Me.TopCtrl1
  loc_134EA70:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_134EA78:   var_98 = CStr(var_86)
  loc_134EA89:   If (var_98 = "Add") Then
  loc_134EA92:     Call Proc_213_49_115C848(MemVar_1F95044)
  loc_134EAA5:     Set var_8C = Me.Txt
  loc_134EAAB:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_134EAB3:     var_90.Text = var_98
  loc_134EAC8:     Call Proc_213_49_115C848(MemVar_1F95044, var_98)
  loc_134EAD3:     global_76 = var_98
  loc_134EADA:   End If
  loc_134EADE:   Set var_8C = Me.TopCtrl1
  loc_134EAE4:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_134EAFD:   If (CStr() = "Add") Then
  loc_134EB06:     var_C8 = 0
  loc_134EB26:     var_98 = "Select Count(*) From Stock Where DocID='" & global_76
  loc_134EB36:     unk_4D102C.Execute var_98 & "'", var_B8, -1
  loc_134EB3E:     var_8C = var_8C.Fields
  loc_134EB46:     var_C8 = var_90.Item(var_90)
  loc_134EB4E:     var_94 = var_94.Value
  loc_134EB75:     If (var_D8 > 0) Then
  loc_134EB7E:       Call 0.Method_arg_50 (var_98)
  loc_134EB9F:       MsgBox("Duplicate Vr No.", &H40, CVar(var_98), var_F8, var_118)
  loc_134EBB5:       Call Proc_213_49_115C848(MemVar_1F95044, var_98)
  loc_134EBC5:       If (var_98 = vbNullString) Then
  loc_134EBD2:         Set var_8C = Me.Txt
  loc_134EBD8:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134EBE0:         var_90.SetFocus
  loc_134EBEE:         arg_10 = &HFF
  loc_134EBF1:         Exit Sub
  loc_134EBF2:       End If
  loc_134EBF8:       Call Proc_213_49_115C848(MemVar_1F95044, var_98)
  loc_134EC0B:       Set var_8C = Me.Txt
  loc_134EC11:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_134EC19:       var_90.Text = arg_10
  loc_134EC2E:       Call Proc_213_49_115C848(MemVar_1F95044, var_98)
  loc_134EC39:       global_76 = var_98
  loc_134EC42:       arg_10 = &HFF
  loc_134EC45:       Exit Sub
  loc_134EC46:     End If
  loc_134EC46:   End If
  loc_134EC49: Else
  loc_134EC51:   If (var_86 = CInt(2)) Then
  loc_134EC61:     Set var_8C = Me.Txt
  loc_134EC67:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_134EC6F:     arg_10 = var_90.Text
  loc_134EC7D:     var_D8 = Trim(CVar(var_98))
  loc_134EC9F:     If (Len(var_D8) = 0) Then
  loc_134ECB4:       Set var_8C = Me.Txt
  loc_134ECBA:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134ECC2:       var_90.Text = CStr(MemVar_1F950EC)
  loc_134ECD4:     Else
  loc_134ECDE:       Set var_8C = Me.Txt
  loc_134ECE4:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134ED04:       Set var_120 = Me.Txt
  loc_134ED0A:       Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_134ED12:       var_124.Text = Proc_6_33_15125B8(var_90)
  loc_134ED25:     End If
  loc_134ED29:     Set var_8C = Me.TopCtrl1
  loc_134ED2F:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_D8)
  loc_134ED37:     var_98 = CStr()
  loc_134ED48:     If (var_98 = "Add") Then
  loc_134ED51:       Call Proc_213_49_115C848(MemVar_1F95044)
  loc_134ED61:       If (var_98 = vbNullString) Then
  loc_134ED6E:         Set var_8C = Me.Txt
  loc_134ED74:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134ED7C:         var_90.SetFocus
  loc_134ED8A:         arg_10 = &HFF
  loc_134ED8D:         Exit Sub
  loc_134ED8E:       End If
  loc_134ED94:       Call Proc_213_49_115C848(MemVar_1F95044, var_98)
  loc_134EDA7:       Set var_8C = Me.Txt
  loc_134EDAD:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_134EDB5:       var_90.Text = arg_10
  loc_134EDCA:       Call Proc_213_49_115C848(MemVar_1F95044, var_98)
  loc_134EDD5:       global_76 = var_98
  loc_134EDDC:     End If
  loc_134EDEA:     Set var_8C = Me.Txt
  loc_134EDF0:     Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_134EDF8:     var_98 = var_90.Text
  loc_134EE18:     If (Proc_6_91_EF38D0(CDate(var_98)) = 0) Then
  loc_134EE26:       Set var_8C = Me.Txt
  loc_134EE2C:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_134EE34:       var_90.SetFocus
  loc_134EE40:       Exit Sub
  loc_134EE41:     End If
  loc_134EE44:   Else
  loc_134EE4C:     If (var_86 = CInt(3)) Then
  loc_134EE9D:       Set var_8C = Me.Txt
  loc_134EEA3:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_134EEAB:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_134EEC3:       If (var_98 Or (var_98 = vbNullString)) Then
  loc_134EED3:         Set var_8C = Me.Txt
  loc_134EED9:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134EEE1:         var_90.Text = vbNullString
  loc_134EEFA:         Set var_8C = Me.Txt
  loc_134EF00:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134EF08:         var_90.Tag = vbNullString
  loc_134EF17:       Else
  loc_134EF52:         Set var_94 = Me.Txt
  loc_134EF58:         Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_134EF60:         var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_134EF93:         var_90 = Me.Fields.Item("Code")
  loc_134EFB1:         Set var_94 = Me.Txt
  loc_134EFB7:         Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_134EFBF:         var_120.Tag = CStr(var_90.Value)
  loc_134EFD5:       End If
  loc_134EFD8:     Else
  loc_134EFE0:       If (var_86 = CInt(5)) Then
  loc_134F031:         Set var_8C = Me.Txt
  loc_134F037:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134F057:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_134F067:           Set var_8C = Me.Txt
  loc_134F06D:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134F075:           var_90.Text = vbNullString
  loc_134F08E:           Set var_8C = Me.Txt
  loc_134F094:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134F09C:           var_90.Tag = vbNullString
  loc_134F0AB:         Else
  loc_134F0E6:           Set var_94 = Me.Txt
  loc_134F0EC:           Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_134F0F4:           var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_134F145:           Set var_94 = Me.Txt
  loc_134F14B:           Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_134F153:           var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_134F169:         End If
  loc_134F169:       End If
  loc_134F169:     End If
  loc_134F169:   End If
  loc_134F169: End If
  loc_134F169: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F3D8B4
  'Data Table: 4D1014
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3D7AB: Me.DGDepart.Visible = False
  loc_F3D7CA: If (Me.RecordCount > 0) Then
  loc_F3D809:   Set var_B4 = Me.Txt
  loc_F3D80F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3D817:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3D84A:   var_B0 = Me.Fields.Item("Name")
  loc_F3D869:   Set var_B4 = Me.Txt
  loc_F3D86F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3D877:   var_B8.Text = CStr(var_B0.Value)
  loc_F3D88D: End If
  loc_F3D898: Set var_A8 = Me.Txt
  loc_F3D89E: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3))
  loc_F3D8A6: var_B0.SetFocus
  loc_F3D8B2: Exit Sub
End Sub

Private Sub TxtBarCode_KeyDown(KeyCode As Integer, Shift As Integer) 'E158F8
  'Data Table: 4D1014
  loc_E158EA: If (CLng(KeyCode) = &HD) Then
  loc_E158F2:   Call TxtBarCode_Validate(&HFF)
  loc_E158F7: End If
  loc_E158F7: Exit Sub
End Sub

Private Sub TxtBarCode_Validate(Cancel As Boolean) '12FE424
  'Data Table: 4D1014
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_106 As Integer
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_1BC As Variant
  Dim var_1F4 As Variant
  loc_12FDD30: Set var_88 = Me.TopCtrl1
  loc_12FDD36: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_12FDD3E: var_9C = CStr()
  loc_12FDD72: If ((var_9C = "Browse") And (Me.TxtBarCode.Text <> vbNullString)) Then
  loc_12FDD82:   Me.TxtBarCode.Text = vbNullString
  loc_12FDD90:   Call 0.Method_arg_50 (var_9C)
  loc_12FDDB1:   MsgBox("Not Applicable In Browse Mode !", &H10, CVar(var_9C), var_E4, var_104)
  loc_12FDDC1:   Exit Sub
  loc_12FDDC2: End If
  loc_12FDDE4: If (Trim(CVar(Me.TxtBarCode)) = vbNullString) Then
  loc_12FDDE7:   Exit Sub
  loc_12FDDE8: End If
  loc_12FDDF3: var_C4 = Trim(CVar(Me.TxtBarCode))
  loc_12FDDFC: var_110 = CStr(var_C4)
  loc_12FDE13: Me.TxtBarCode.Text = vbNullString
  loc_12FDE32: If (Me.RecordCount = 0) Then
  loc_12FDE35:   Exit Sub
  loc_12FDE36: End If
  loc_12FDE3C: Me.MoveFirst
  loc_12FDE66: Me.Find "BarCode='" & var_110 & "'", 0, 1
  loc_12FDE86: If (Me.EOF = &HFF) Then
  loc_12FDEA2:   MsgBox("Item Not Found!", &H10, var_C4, var_E4, var_104)
  loc_12FDEB5: Else
  loc_12FDECF:   var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_12FDEDC:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_12FDEE4:   var_F4 = CVar(CLng(9)) 'Long
  loc_12FDF0F:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12FDF12:     var_B4 = vbNullString
  loc_12FDF1C:     Set var_88 = Me.FGrid
  loc_12FDF47:     var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_12FDF50:   End If
  loc_12FDF63:   Me.FGrid.TopRow = CVar(CLng(var_106))
  loc_12FDF6F:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_12FDF77:   var_F4 = CVar(CLng(0)) 'Long
  loc_12FDF81:   var_98 = CVar(CStr(var_106)) 'String
  loc_12FDF89:   Set var_88 = Me.FGrid
  loc_12FDF8F:   LateIdCallSt
  loc_12FDFA1:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_12FDFA9:   var_128 = CVar(CLng(1)) 'Long
  loc_12FDFDC:   var_C4 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12FDFE4:   Set var_14C = Me.FGrid
  loc_12FDFEA:   LateIdCallSt
  loc_12FE006:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_12FE00E:   var_128 = CVar(CLng(9)) 'Long
  loc_12FE041:   var_C4 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_12FE049:   Set var_14C = Me.FGrid
  loc_12FE04F:   LateIdCallSt
  loc_12FE06B:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_12FE073:   var_128 = CVar(CLng(&HA)) 'Long
  loc_12FE0A6:   var_C4 = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_12FE0AE:   Set var_14C = Me.FGrid
  loc_12FE0B4:   LateIdCallSt
  loc_12FE0D0:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_12FE0D8:   var_128 = CVar(CLng(2)) 'Long
  loc_12FE10B:   var_C4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_12FE113:   Set var_14C = Me.FGrid
  loc_12FE119:   LateIdCallSt
  loc_12FE135:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_12FE13D:   var_F4 = CVar(CLng(3)) 'Long
  loc_12FE142:   var_138 = "1.000"
  loc_12FE14C:   Set var_88 = Me.FGrid
  loc_12FE152:   LateIdCallSt
  loc_12FE161:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_12FE169:   var_128 = CVar(CLng(4)) 'Long
  loc_12FE19C:   var_C4 = CVar(CStr(Me.Fields.Item("ConvRatio").Value)) 'String
  loc_12FE1A4:   Set var_14C = Me.FGrid
  loc_12FE1AA:   LateIdCallSt
  loc_12FE1C6:   var_138 = CVar(CLng(var_106)) 'Long
  loc_12FE1CE:   var_15C = CVar(CLng(4)) 'Long
  loc_12FE1F7:   var_17C = CVar(CLng(var_106)) 'Long
  loc_12FE1FF:   var_19C = CVar(CLng(5)) 'Long
  loc_12FE208:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_12FE210:   var_F4 = CVar(CLng(3)) 'Long
  loc_12FE238:   var_E4 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_12FE240:   Set var_14C = Me.FGrid
  loc_12FE246:   LateIdCallSt
  loc_12FE28A:   var_F4 = CVar(CLng(var_106)) 'Long
  loc_12FE292:   var_138 = CVar(CLng(7)) 'Long
  loc_12FE2BF:   var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_12FE2C7:   Set var_14C = Me.FGrid
  loc_12FE2CD:   LateIdCallSt
  loc_12FE2EB:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_12FE2F3:   var_128 = CVar(CLng(6)) 'Long
  loc_12FE326:   var_C4 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_12FE32E:   Set var_14C = Me.FGrid
  loc_12FE334:   LateIdCallSt
  loc_12FE350:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_12FE358:   var_F4 = CVar(CLng(7)) 'Long
  loc_12FE381:   var_138 = CVar(CLng(var_106)) 'Long
  loc_12FE389:   var_15C = CVar(CLng(3)) 'Long
  loc_12FE3B2:   var_19C = CVar(CLng(var_106)) 'Long
  loc_12FE3BA:   var_1BC = CVar(CLng(8)) 'Long
  loc_12FE3EB:   var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_12FE3F3:   Set var_14C = Me.FGrid
  loc_12FE3F9:   LateIdCallSt
  loc_12FE420: End If
  loc_12FE420: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1179C6C
  'Data Table: 4D1014
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
  loc_11798A8: On Error Goto loc_1179C63
  loc_11798AB: Call Proc_213_48_EBB1AC()
  loc_11798C6: Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_11798E1: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11798EA: Set var_BC = Me.FGrid
  loc_117991F: Set var_104 = Me.TxtGrid
  loc_1179925: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_117992D: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_117995A: Set var_A8 = Me.TxtGrid
  loc_1179960: Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_1179968: var_BC.MaxLength = 0
  loc_1179997: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_11799A6:   Set var_A8 = Me.TxtGrid
  loc_11799AC:   Call 0.Method_TxtGrid_GotFocus0 (0, var_BC, var_114)
  loc_11799B4:   var_110 = var_BC.Left
  loc_11799CB:   Me.DGItem.Left = CVar(var_114)
  loc_11799E5:   Set var_F0 = Me.TxtGrid
  loc_11799EB:   Call 0.Method_TxtGrid_GotFocus0 (0, var_104)
  loc_1179A04:   Set var_A8 = Me.TxtGrid
  loc_1179A0A:   Call 0.Method_TxtGrid_GotFocus0 (0, var_BC)
  loc_1179A1E:   var_94 = CVar((var_BC.Top + var_104.Height)) 'Single
  loc_1179A2D:   Me.DGItem.Top = CVar(var_BC.Top)
  loc_1179A80:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1179A83:     Exit Sub
  loc_1179A84:   End If
  loc_1179A97:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1179A9F:   var_DC = CVar(CLng(1)) 'Long
  loc_1179AD2:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1179ADB:     Me.MoveFirst
  loc_1179AFB:     var_DC = CVar(CLng(9)) 'Long
  loc_1179B04:     Set var_BC = Me.FGrid
  loc_1179B1B:     Proc_6_17_EAAE40(var_12C, CVar(CStr(var_BC.TextMatrix))), var_DC, CVar(CLng(Me.FGrid.Row)))
  loc_1179B3A:     var_10C = CStr("Code =" & var_12C)
  loc_1179B44:     Me.Find var_10C, 0, 1
  loc_1179B74:     If (Me.EOF = &HFF) Then
  loc_1179B7D:       Me.MoveFirst
  loc_1179B82:     End If
  loc_1179B82:   End If
  loc_1179B85: Else
  loc_1179B8C:   If Not (var_110 = CLng(7)) Then
  loc_1179B96:     If (var_110 = CLng(3)) Then
  loc_1179B99:     End If
  loc_1179BA2:     If (global_88 = 0) Then
  loc_1179BB4:       Set var_A8 = Me.TxtGrid
  loc_1179BBA:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 0, var_15C)
  loc_1179BC2:       var_BC.SelStart = var_DC
  loc_1179BDB:       Set var_A8 = Me.TxtGrid
  loc_1179BE1:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_1179BE9:       var_94 = var_BC.Text
  loc_1179BFC:       Set var_F0 = Me.TxtGrid
  loc_1179C02:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_104)
  loc_1179C0A:       var_104.SelLength = Len(var_10C)
  loc_1179C1D:     End If
  loc_1179C20:   Else
  loc_1179C27:     If (var_110 = CLng(4)) Then
  loc_1179C37:       Set var_A8 = Me.TxtGrid
  loc_1179C3D:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_1179C55:       global_100 = Val(var_BC.Text)
  loc_1179C62:     End If
  loc_1179C62:   End If
  loc_1179C62: End If
  loc_1179C62: Exit Sub
  loc_1179C63: ' Referenced from: 11798A8
  loc_1179C63: Proc_6_60_E63754(global_100)
  loc_1179C68: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11CDF4C
  'Data Table: 4D1014
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_11CDAE0: On Error Goto loc_11CDF43
  loc_11CDAED: If (CLng(Shift) = &H1B) Then
  loc_11CDAFC:   Set var_88 = Me.TxtGrid
  loc_11CDB02:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_11CDB1B:   Set var_94 = Me.TxtGrid
  loc_11CDB21:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_11CDB29:   var_98.Text = var_8C.Tag
  loc_11CDB45:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11CDB4E:   Set var_88 = Me.FGrid
  loc_11CDB6A:   Set var_88 = Me.TxtGrid
  loc_11CDB70:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0)
  loc_11CDB78:   var_8C.Visible = FGrid.DispID_8001
  loc_11CDB84:   Exit Sub
  loc_11CDB85: End If
  loc_11CDB98: var_AC = CLng(Me.FGrid.Col)
  loc_11CDBA8: If (var_AC = CLng(1)) Then
  loc_11CDBB6:   If (global_92 = "Yes") Then
  loc_11CDBD1:     Set var_98 = Nothing
  loc_11CDBDC:     Set var_94 = Nothing
  loc_11CDC0A:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_11CDC21:   Else
  loc_11CDC39:     Set var_98 = Nothing
  loc_11CDC72:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 2, Nothing)
  loc_11CDC86:   End If
  loc_11CDC90:   If (CLng(Shift) = &HD) Then
  loc_11CDC9E:     Call Proc_213_44_148379C(KeyCode, 0, var_B0, var_98, 0, 1)
  loc_11CDCA9:     If (var_B0 = &HFF) Then
  loc_11CDCEF:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_88, 9, 2)
  loc_11CDCFF:     End If
  loc_11CDCFF:   End If
  loc_11CDD02: Else
  loc_11CDD09:   If (var_AC = CLng(3)) Then
  loc_11CDD4C:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_88 = &HFF))) Then
  loc_11CDD5C:       Call Proc_213_44_148379C(0, 0, var_B2, 3, 0)
  loc_11CDD67:       If (var_B2 = &HFF) Then
  loc_11CDDAD:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_88, 9, 0)
  loc_11CDDBD:       End If
  loc_11CDDBD:     End If
  loc_11CDDC0:   Else
  loc_11CDDC7:     If (var_AC = CLng(7)) Then
  loc_11CDE0A:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_88 = &HFF))) Then
  loc_11CDE1A:         Call Proc_213_44_148379C(0, 0, var_B2, 7, 0)
  loc_11CDE25:         If (var_B2 = &HFF) Then
  loc_11CDE6D:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_88, 9, CByte(2))
  loc_11CDE7D:         End If
  loc_11CDE7D:       End If
  loc_11CDE80:     Else
  loc_11CDE87:       If (var_AC = CLng(4)) Then
  loc_11CDECA:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_88 = &HFF))) Then
  loc_11CDEDA:           Call Proc_213_44_148379C(0, 0, var_B2, 0, 0)
  loc_11CDEE5:           If (var_B2 = &HFF) Then
  loc_11CDEEC:             Set var_94 = Me.FGrid
  loc_11CDEF3:             Set var_98 = Me.TxtGrid
  loc_11CDF32:             Proc_6_62_1254E68(var_94, var_98, KeyCode, Shift, global_88, CByte((CInt(7) + 1)), 0)
  loc_11CDF42:           End If
  loc_11CDF42:         End If
  loc_11CDF42:       End If
  loc_11CDF42:     End If
  loc_11CDF42:   End If
  loc_11CDF42: End If
  loc_11CDF42: Exit Sub
  loc_11CDF43: ' Referenced from: 11CDAE0
  loc_11CDF43: Proc_6_60_E63754(7, 0, var_94, var_98)
  loc_11CDF48: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '109F9F0
  'Data Table: 4D1014
  Dim arg_10 As Integer
  Dim var_A0 As Variant
  Dim var_9C As Variant
  Dim var_A4 As Long
  Dim var_A8 As TextBox
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Long
  loc_109F728: On Error Goto loc_109F9E9
  loc_109F72E: Proc_6_58_E06050(arg_10)
  loc_109F739: Proc_6_133_E7FB08(var_9C)
  loc_109F742: arg_10 = CInt(var_9C)
  loc_109F76B: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_109F78A:   If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_109F798:     If (global_92 = "Yes") Then
  loc_109F7A7:       Set var_A0 = Me.TxtGrid
  loc_109F7AD:       Call 0.Method_TxtGrid_KeyPress0 (0, var_A8, var_AC)
  loc_109F7B5:       var_A4 = var_A8.Text
  loc_109F7BF:       var_86 = CInt(Len(var_AC))
  loc_109F7CF:       var_88 = arg_10
  loc_109F7D6:       Set var_A8 = Me.TxtGrid
  loc_109F7E1:       var_AC = "BarCode"
  loc_109F7FC:       Proc_6_89_1470B00(var_A8, KeyAscii, global_60, arg_10, var_AC)
  loc_109F817:       Set var_A0 = Me.TxtGrid
  loc_109F81D:       Call 0.Method_TxtGrid_KeyPress0 (0, var_A8, var_AC, 0)
  loc_109F825:       var_88 = var_A8.Text
  loc_109F83D:       If (Len(var_AC) = CLng(var_86)) Then
  loc_109F857:         If (Me.AbsolutePosition > 0) Then
  loc_109F86B:           var_8C = Me.AbsolutePosition
  loc_109F871:         Else
  loc_109F876:           var_8C = 1
  loc_109F879:         End If
  loc_109F87C:         arg_10 = var_88
  loc_109F8A9:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name", 0)
  loc_109F8CF:         If (Me.AbsolutePosition <= 0) Then
  loc_109F8DB:           Me.AbsolutePosition = var_8C
  loc_109F8E0:         End If
  loc_109F8E0:       End If
  loc_109F8E3:     Else
  loc_109F8E7:       Set var_A8 = Me.TxtGrid
  loc_109F90D:       Proc_6_89_1470B00(var_A8, KeyAscii, global_60, arg_10, "Name", 0)
  loc_109F91C:     End If
  loc_109F91C:   End If
  loc_109F91F: Else
  loc_109F926:   If (var_A4 = CLng(3)) Then
  loc_109F933:     Set var_A0 = Me.TxtGrid
  loc_109F939:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, arg_10, var_8C)
  loc_109F954:     Proc_6_42_129B55C(var_A8, arg_10, 8, 3)
  loc_109F963:   Else
  loc_109F96A:     If (var_A4 = CLng(7)) Then
  loc_109F977:       Set var_A0 = Me.TxtGrid
  loc_109F97D:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_8C)
  loc_109F998:       Proc_6_42_129B55C(var_A8, arg_10, 8, 2)
  loc_109F9A7:     Else
  loc_109F9AE:       If (var_A4 = CLng(4)) Then
  loc_109F9BB:         Set var_A0 = Me.TxtGrid
  loc_109F9C1:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_86)
  loc_109F9DC:         Proc_6_42_129B55C(var_A8, arg_10, 6)
  loc_109F9E8:       End If
  loc_109F9E8:     End If
  loc_109F9E8:   End If
  loc_109F9E8: End If
  loc_109F9E8: Exit Sub
  loc_109F9E9: ' Referenced from: 109F728
  loc_109F9E9: Proc_6_60_E63754(2, arg_10)
  loc_109F9EE: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10A936C
  'Data Table: 4D1014
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As Variant
  Dim var_180 As Double
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_A8 As String
  loc_10A90BC: On Error Goto loc_10A9363
  loc_10A90CB: If (KeyCode = 0) Then
  loc_10A90E1:   var_A0 = CLng(Me.FGrid.Col)
  loc_10A90F1:   If (var_A0 = CLng(1)) Then
  loc_10A9117:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_10A9128:       Call TxtGrid_KeyDown(KeyCode, global_90)
  loc_10A9138:       If (global_92 = "Yes") Then
  loc_10A9165:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_60, Shift, "BarCode")
  loc_10A9177:       Else
  loc_10A917B:         Set var_AC = Me.TxtGrid
  loc_10A9186:         var_A8 = "Name"
  loc_10A91A1:         Proc_6_89_1470B00(var_AC, KeyCode, global_60, Shift, var_A8)
  loc_10A91B0:       End If
  loc_10A91B0:     End If
  loc_10A91B3:   Else
  loc_10A91BA:     If Not (var_A0 = CLng(3)) Then
  loc_10A91C4:       If (var_A0 = CLng(4)) Then
  loc_10A91C7:       End If
  loc_10A91D4:       Set var_8C = Me.TxtGrid
  loc_10A91DA:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_10A91E2:       &HFF = var_AC.Text
  loc_10A9205:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A921D:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10A924A:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_10A9252:       Set var_178 = Me.FGrid
  loc_10A9258:       LateIdCallSt
  loc_10A9292:       var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A92BC:       var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10A92C3:       Set var_178 = Me.FGrid
  loc_10A92FA:       var_124 = CVar(CLng(3)) 'Long
  loc_10A9322:       var_164 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_180))) 'String
  loc_10A9330:       LateIdCallSt
  loc_10A935D:       Call Proc_213_51_F71790(Me.FGrid, var_164, var_124, CVar(CLng(Me.FGrid.Row)), CVar(CLng(5)), CVar(CLng(var_178.Row)), var_180, CVar(CLng(4)))
  loc_10A9362:     End If
  loc_10A9362:   End If
  loc_10A9362: End If
  loc_10A9362: Exit Sub
  loc_10A9363: ' Referenced from: 10A90BC
  loc_10A9363: Proc_6_60_E63754(var_144, var_178, var_164, 1)
  loc_10A9368: Exit Sub
  loc_10A9369: Put var_124, var_144, 1
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E226C4
  'Data Table: 4D1014
  Dim arg_10 As Integer
  loc_E226A0: On Error Goto loc_E226BB
  loc_E226AE: Call Proc_213_44_148379C(Cancel, &HFF)
  loc_E226B7: arg_10 = Not(var_88)
  loc_E226BA: Exit Sub
  loc_E226BB: ' Referenced from: E226A0
  loc_E226BB: Proc_6_60_E63754(arg_10)
  loc_E226C0: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E983F0
  'Data Table: 4D1014
  Dim Me As Recordset15
  loc_E9837E: On Error Goto loc_E983E7
  loc_E98387: Me.MoveFirst
  loc_E983B1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E983D9: Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_E983E1: Call Proc_213_46_1456DAC(0)
  loc_E983E6: Exit Sub
  loc_E983E7: ' Referenced from: E9837E
  loc_E983E7: Proc_6_60_E63754(var_A0)
  loc_E983EC: Exit Sub
End Sub

Public Sub Proc_213_44_148379C(arg_C, arg_10) '148379C
  'Data Table: 4D1014
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
  Dim unk_4D102C As Connection15
  Dim var_8C As Recordset15
  Dim var_1AC As Double
  Dim var_19C As TextBox
  Dim var_1A4 As Double
  loc_1482B7F: var_A8 = CLng(Me.FGrid.Col)
  loc_1482B8F: If (var_A8 = CLng(1)) Then
  loc_1482BE0:   Set var_94 = Me.TxtGrid
  loc_1482BE6:   Call 0.Method_Proc_213_44_148379C0 (arg_C, var_B4, var_B8)
  loc_1482BEE:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_1482C06:   If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_1482C1C:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482C24:     var_E8 = CVar(CLng(1)) 'Long
  loc_1482C29:     var_108 = vbNullString
  loc_1482C33:     Set var_B4 = Me.FGrid
  loc_1482C39:     LateIdCallSt
  loc_1482C5E:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482C66:     var_E8 = CVar(CLng(9)) 'Long
  loc_1482C6B:     var_108 = vbNullString
  loc_1482C75:     Set var_B4 = Me.FGrid
  loc_1482C7B:     LateIdCallSt
  loc_1482CA0:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482CA8:     var_E8 = CVar(CLng(&HA)) 'Long
  loc_1482CAD:     var_108 = vbNullString
  loc_1482CB7:     Set var_B4 = Me.FGrid
  loc_1482CBD:     LateIdCallSt
  loc_1482CE2:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482CEA:     var_E8 = CVar(CLng(2)) 'Long
  loc_1482CEF:     var_108 = vbNullString
  loc_1482CF9:     Set var_B4 = Me.FGrid
  loc_1482CFF:     LateIdCallSt
  loc_1482D24:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482D2C:     var_E8 = CVar(CLng(7)) 'Long
  loc_1482D31:     var_108 = vbNullString
  loc_1482D3B:     Set var_B4 = Me.FGrid
  loc_1482D41:     LateIdCallSt
  loc_1482D66:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482D6E:     var_E8 = CVar(CLng(6)) 'Long
  loc_1482D73:     var_108 = vbNullString
  loc_1482D7D:     Set var_B4 = Me.FGrid
  loc_1482D83:     LateIdCallSt
  loc_1482DA8:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482DB0:     var_E8 = CVar(CLng(5)) 'Long
  loc_1482DB5:     var_108 = vbNullString
  loc_1482DBF:     Set var_B4 = Me.FGrid
  loc_1482DC5:     LateIdCallSt
  loc_1482DEA:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482DF2:     var_E8 = CVar(CLng(3)) 'Long
  loc_1482DF7:     var_108 = vbNullString
  loc_1482E01:     Set var_B4 = Me.FGrid
  loc_1482E07:     LateIdCallSt
  loc_1482E2C:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482E34:     var_E8 = CVar(CLng(4)) 'Long
  loc_1482E39:     var_108 = vbNullString
  loc_1482E43:     Set var_B4 = Me.FGrid
  loc_1482E49:     LateIdCallSt
  loc_1482E5E:   Else
  loc_1482E71:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482E79:     var_F8 = CVar(CLng(1)) 'Long
  loc_1482EAC:     var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1482EB4:     Set var_140 = Me.FGrid
  loc_1482EBA:     LateIdCallSt
  loc_1482EE9:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482EF1:     var_F8 = CVar(CLng(9)) 'Long
  loc_1482F24:     var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1482F2C:     Set var_140 = Me.FGrid
  loc_1482F32:     LateIdCallSt
  loc_1482F61:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482F69:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_1482F9C:     var_13C = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_1482FA4:     Set var_140 = Me.FGrid
  loc_1482FAA:     LateIdCallSt
  loc_1482FD9:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482FE1:     var_F8 = CVar(CLng(2)) 'Long
  loc_1483014:     var_13C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_148301C:     Set var_140 = Me.FGrid
  loc_1483022:     LateIdCallSt
  loc_1483070:     var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1483078:     var_108 = CVar(CLng(7)) 'Long
  loc_14830A5:     var_160 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_14830AD:     Set var_140 = Me.FGrid
  loc_14830B3:     LateIdCallSt
  loc_14830E4:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14830EC:     var_F8 = CVar(CLng(4)) 'Long
  loc_148311F:     var_13C = CVar(CStr(Me.Fields.Item("ConvRatio").Value)) 'String
  loc_1483127:     Set var_140 = Me.FGrid
  loc_148312D:     LateIdCallSt
  loc_148315C:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1483164:     var_F8 = CVar(CLng(6)) 'Long
  loc_1483197:     var_13C = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_148319F:     Set var_140 = Me.FGrid
  loc_14831A5:     LateIdCallSt
  loc_14831C1:   End If
  loc_14831EB:   var_12C = Me.FGrid.TextMatrix)
  loc_1483205:   Set var_11C = Me.Txt
  loc_148320B:   Call 0.Method_Proc_213_44_148379C0 (CInt(3), var_140, var_178, var_12C, CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_140)
  loc_1483230:   var_174 = "SELECT RATE FROM ITEMRATE WHERE ITEMCODE='" & CStr(var_12C)
  loc_148324E:   unk_4D102C.Execute var_174 & "' AND RestCode='" & var_178 & "'", var_140.Tag, -1
  loc_1483259:   Set var_8C = var_188
  loc_1483295:   If (var_8C.RecordCount > 0) Then
  loc_14832DE:     Proc_6_47_EF6560(var_12C, CVar(var_8C.Fields.Item("Rate")), CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), var_188, CVar(CLng(7)))
  loc_14832E7:     var_150 = CVar(CStr(var_12C)) 'String
  loc_14832EF:     Set var_140 = Me.FGrid
  loc_14832F5:     LateIdCallSt
  loc_1483311:   End If
  loc_148332C:   var_E8 = CVar(CLng(9)) 'Long
  loc_1483335:   Set var_B4 = Me.FGrid
  loc_148333B:   var_12C = var_B4.TextMatrix)
  loc_148336B:   Set var_140 = Me.FGrid
  loc_1483371:   var_150 = var_140.TextMatrix)
  loc_148337C:   var_B8 = CStr(var_150)
  loc_1483384:   var_1AC = Val(var_B8)
  loc_1483395:   Set var_188 = Me.Txt
  loc_148339B:   Call 0.Method_Proc_213_44_148379C0 (CInt(3), var_19C, var_174, var_1AC, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_14833A3:   var_E8 = var_19C.Tag
  loc_1483402:   Me.LblCurStockStr.Caption = global_84
  loc_148340A:   Call Proc_213_51_F71790(Proc_96_27_11F256C(CStr(var_12C), var_1AC, MemVar_1F95070, var_174, global_84, CVar(CLng(Me.FGrid.Row))), var_140, var_150)
  loc_1483412: Else
  loc_1483419:   If (var_A8 = CLng(7)) Then
  loc_1483428:     Set var_94 = Me.TxtGrid
  loc_148342E:     Call 0.Method_Proc_213_44_148379C0 (0, var_B4, var_B8)
  loc_1483436:     var_D8 = var_B4.Text
  loc_1483450:     var_150 = Me.FGrid.Row
  loc_1483459:     var_E8 = CVar(CLng(var_150)) 'Long
  loc_1483485:     var_12C = "0.00"
  loc_1483495:     var_13C = Format(CVar(Val(var_B8)), var_12C)
  loc_14834AC:     LateIdCallSt
  loc_14834D3:     Call Proc_213_51_F71790(Me.FGrid, CVar(CStr(var_13C)), 1, 1, CVar(CLng(Me.FGrid.Col)))
  loc_14834DB:   Else
  loc_14834E2:     If Not (var_A8 = CLng(3)) Then
  loc_14834EC:       If (var_A8 = CLng(4)) Then
  loc_14834EF:       End If
  loc_148350C:       If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_148351B:         Set var_94 = Me.TxtGrid
  loc_1483521:         Call 0.Method_Proc_213_44_148379C0 (0, var_B4, var_B8, var_E8)
  loc_1483529:         var_1A4 = var_B4.Text
  loc_148354E:         If (global_100 <> CDbl(Val(var_B8))) Then
  loc_1483580:           If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_12C, var_13C, var_150) = 7) Then
  loc_1483588:             Proc_213_44_148379C = 0
  loc_148358E:           End If
  loc_148358E:         End If
  loc_148358E:       End If
  loc_148359A:       Set var_94 = Me.TxtGrid
  loc_14835A0:       Call 0.Method_Proc_213_44_148379C0 (0, var_B4, var_B8)
  loc_14835A8:       var_1A4 = var_B4.Text
  loc_14835CB:       var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14835E3:       var_108 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1483618:       Set var_188 = Me.FGrid
  loc_148361E:       LateIdCallSt
  loc_1483660:       var_E8 = CVar(CLng(9)) 'Long
  loc_1483669:       Set var_B4 = Me.FGrid
  loc_148366F:       var_12C = var_B4.TextMatrix)
  loc_14836B8:       var_1AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14836CF:       Call 0.Method_Proc_213_44_148379C0 (CInt(3), var_19C, var_174, var_1AC, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_14836D7:       var_E8 = var_19C.Tag
  loc_1483736:       Me.LblCurStockStr.Caption = global_84
  loc_148373E:       Call Proc_213_51_F71790(Proc_96_27_11F256C(CStr(var_12C), var_1AC, MemVar_1F95070, var_174, global_84, CVar(CLng(Me.FGrid.Row))), Me.Txt, CVar(CStr(Format(CVar(Val(CStr(Me.FGrid.TextMatrix)))), "0.000"))))
  loc_1483743:     End If
  loc_1483743:   End If
  loc_1483743: End If
  loc_148374E: If (arg_10 = 0) Then
  loc_1483755:   Set var_94 = Me.FGrid
  loc_1483771:   Set var_94 = Me.TxtGrid
  loc_1483777:   Call 0.Method_Proc_213_44_148379C0 (0, var_B4, 0, FGrid.DispID_8001)
  loc_148377F:   var_B4.Visible = &HFF
  loc_148378B: End If
  loc_1483790: Set var_8C = Nothing
  loc_1483793: Proc_213_44_148379C = 1
End Sub

Public Sub Proc_213_45_F73794
  'Data Table: 4D1014
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_DC As Variant
  loc_F73662: Set var_8C = Me.Txt
  loc_F73668: Call 0.Method_Proc_213_45_F73794C (var_8E, var_86)
  loc_F73678: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F7368E:   Set var_8C = Me.Txt
  loc_F73694:   Call 0.Method_Proc_213_45_F737940 (CInt(var_86), var_98)
  loc_F7369C:   var_98.Text = vbNullString
  loc_F736B8:   Set var_8C = Me.Txt
  loc_F736BE:   Call 0.Method_Proc_213_45_F737940 (CInt(var_86), var_98)
  loc_F736C6:   var_98.Tag = vbNullString
  loc_F736D5: Next var_92 'Byte
  loc_F736E8: Me.LblCurStockStr.Caption = vbNullString
  loc_F73704: Me.LblUser.Caption = "User : " & MemVar_1F950C8
  loc_F7371C: Me.LblVPrefix.Caption = vbNullString
  loc_F73737: Me.FGrid.Rows = 1
  loc_F73754: var_DC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F7375C: Set var_98 = Me.FGrid
  loc_F7378B: Me.FGrid.FixedRows = 1
  loc_F73793: Exit Sub
End Sub

Public Sub Proc_213_46_1456DAC
  'Data Table: 4D1014
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As String
  Dim unk_4D102C As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_12C As TextBox
  Dim var_128 As Variant
  Dim var_130 As String
  Dim var_90 As Recordset15
  Dim var_8A As Integer
  loc_1456268: On Error Goto loc_1456DA3
  loc_1456282: If (Me.RecordCount > 0) Then
  loc_1456292:   Me.LblCurStockStr.Caption = vbNullString
  loc_14562A7:   var_D0 = "Select Distinct SH.Docid,SH.SNo,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,SH.Rate,SH.Amount,SH.GodownCode,SH.Item,SH.QtyRec,SH.Unit,SH.RECDQty,SH.RECDUnit,SH.ConvRatio,SH.ItemRestCode,SH.U_Name,SH.U_entdt,SH.U_AE,I.Name As ItemName,SH.ShiftCode,SM.Name As ShiftName From Stock SH Left Join ItemMast I On I.Code=SH.Item And I.ItemType='Store' Left Join ShiftMast SM On SH.ShiftCode=SM.Code where DocID='"
  loc_14562F0:   unk_4D102C.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "' Order By SH.SNo"), var_124, -1
  loc_14562FB:   Set var_88 = var_128
  loc_145634B:   Set var_128 = Me.Txt
  loc_1456351:   Call 0.Method_Proc_213_46_1456DAC0 (CInt(0), var_12C)
  loc_1456359:   var_12C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")))
  loc_14563A2:   Me.LblVPrefix.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("vPrefix")))
  loc_14563EA:   Set var_128 = Me.Txt
  loc_14563F0:   Call 0.Method_Proc_213_46_1456DAC0 (CInt(1), var_12C)
  loc_14563F8:   var_12C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("VNo")))
  loc_1456442:   Set var_128 = Me.Txt
  loc_1456448:   Call 0.Method_Proc_213_46_1456DAC0 (CInt(2), var_12C)
  loc_1456450:   var_12C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")))
  loc_14564A0:   If (var_88.Fields.Item("vType").Value = "BKREC") Then
  loc_14564BA:     var_B0 = var_88.Fields.Item("Godowncode")
  loc_14564CB:     var_104 = Proc_6_38_E69628(CVar(var_B0))
  loc_14564D9:     Set var_128 = Me.Txt
  loc_14564DF:     Call 0.Method_Proc_213_46_1456DAC0 (CInt(3), var_12C)
  loc_14564E7:     var_12C.Tag = var_104
  loc_1456519:     Set var_9C = Me.Txt
  loc_145651F:     Call 0.Method_Proc_213_46_1456DAC0 (CInt(3), var_B0, var_104, "Select Name From GodownMast Where Code='")
  loc_1456527:     var_C0 = var_B0.Tag
  loc_1456530:     var_130 = -1 & var_104
  loc_1456540:     unk_4D102C.Execute var_130 & "'", var_128, var_128
  loc_145654B:     Set var_90 = var_128
  loc_1456577:     If (var_90.RecordCount > 0) Then
  loc_14565B0:       Set var_128 = Me.Txt
  loc_14565B6:       Call 0.Method_Proc_213_46_1456DAC0 (CInt(3), var_12C)
  loc_14565BE:       var_12C.Text = Proc_6_38_E69628(CVar(var_90.Fields.Item("Name")))
  loc_14565D2:     End If
  loc_14565D2:   End If
  loc_1456675:   var_194 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14566BA:   Me.LblUser.Caption = CStr(var_194 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")))))
  loc_1456734:   var_12C = var_88.Fields.Item("U_AE")
  loc_1456795:   var_194 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_12C)) = "E"), "Last Update : ", "entdt : "))
  loc_14567DA:   Me.LblLDt.Caption = CStr(var_194 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1456848:   Set var_128 = Me.Txt
  loc_145684E:   Call 0.Method_Proc_213_46_1456DAC0 (CInt(5), var_12C)
  loc_1456856:   var_12C.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ShiftName")))
  loc_14568A0:   Set var_128 = Me.Txt
  loc_14568A6:   Call 0.Method_Proc_213_46_1456DAC0 (CInt(5), var_12C)
  loc_14568AE:   var_12C.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("ShiftCode")))
  loc_14568D5:   Me.FGrid.Rows = 1
  loc_14568DF:   var_8A = 1
  loc_14568E2:   ' Referenced from: 1456D67
  loc_14568F1:   If Not(var_88.EOF) Then
  loc_14568F4:     var_AC = vbNullString
  loc_14568FE:     Set var_9C = Me.FGrid
  loc_1456913:     Set var_1F0 = Me.FGrid
  loc_145694F:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_8A)))) 'String
  loc_1456956:     LateIdCallSt
  loc_14569A1:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1F0)) 'String
  loc_14569A8:     LateIdCallSt
  loc_14569F3:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RecdUnit")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1F0, var_E0)) 'String
  loc_14569FA:     LateIdCallSt
  loc_1456A32:     Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("RecdQty")), var_1F0, var_E0)
  loc_1456A3B:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1456A73:     LateIdCallSt
  loc_1456AC4:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8A)), var_1F0, CVar(CStr(Format(var_E0, "0.000"))), 1, 1)) 'String
  loc_1456ACB:     LateIdCallSt
  loc_1456B03:     Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("QtyRec")), var_1F0, var_E0, CVar(CLng(3)))
  loc_1456B0C:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1456B44:     LateIdCallSt
  loc_1456B82:     Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("Rate")), var_1F0, CVar(CStr(Format(var_E0, "0.000"))), 1, 1, CVar(CLng(5)))
  loc_1456B8B:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1456BC3:     LateIdCallSt
  loc_1456C01:     Proc_6_39_E7D3A0(var_E0, CVar(var_88.Fields.Item("Amount")), var_1F0, CVar(CStr(Format(var_E0, "0.00"))), 1, 1, CVar(CLng(7)))
  loc_1456C0A:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1456C42:     LateIdCallSt
  loc_1456C93:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_8A)), var_1F0, CVar(CStr(Format(var_E0, "0.00"))), 1, 1)) 'String
  loc_1456C9A:     LateIdCallSt
  loc_1456CE5:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemRestcode")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_1F0, var_E0, CVar(CLng(8)))) 'String
  loc_1456CEC:     LateIdCallSt
  loc_1456D37:     var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ConvRatio")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1F0, var_E0)) 'String
  loc_1456D3E:     LateIdCallSt
  loc_1456D52:     Set var_1F0 = Nothing 
  loc_1456D5C:     var_8A = (var_8A + 1)
  loc_1456D62:     var_88.MoveNext
  loc_1456D67:     GoTo loc_14568E2
  loc_1456D6A:   End If
  loc_1456D7D:   Me.FGrid.FixedRows = 1
  loc_1456D88: Else
  loc_1456D88:   Call Proc_213_45_F73794(var_8A, var_1F0, var_E0, var_F0)
  loc_1456D8D: End If
  loc_1456D8D: Call Proc_213_48_EBB1AC(var_F0, var_F0)
  loc_1456D92: Exit Sub
  loc_1456D98: Set var_90 = Nothing
  loc_1456DA0: Set var_94 = Nothing
  loc_1456DA3: ' Referenced from: 1456268
  loc_1456DA3: Proc_6_60_E63754(var_F0)
  loc_1456DA8: Exit Sub
End Sub

Public Sub Proc_213_47_EFF2D8(arg_C) 'EFF2D8
  'Data Table: 4D1014
  Dim var_98 As TextBox
  loc_EFF202: Set var_8C = Me.Txt
  loc_EFF208: Call 0.Method_Proc_213_47_EFF2D8C (var_8E, var_86)
  loc_EFF218: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EFF22E:   Set var_8C = Me.Txt
  loc_EFF234:   Call 0.Method_Proc_213_47_EFF2D80 (CInt(var_86), var_98)
  loc_EFF23C:   var_98.Enabled = arg_C
  loc_EFF24B: Next var_92 'Byte
  loc_EFF25E: Set var_8C = Me.Txt
  loc_EFF264: Call 0.Method_Proc_213_47_EFF2D80 (CInt(0), var_98)
  loc_EFF26C: var_98.Enabled = False
  loc_EFF285: Set var_8C = Me.Txt
  loc_EFF28B: Call 0.Method_Proc_213_47_EFF2D80 (CInt(1), var_98)
  loc_EFF293: var_98.Enabled = False
  loc_EFF2AA: If (global_96 = "No") Then
  loc_EFF2BA:   Set var_8C = Me.Txt
  loc_EFF2C0:   Call 0.Method_Proc_213_47_EFF2D80 (CInt(2), var_98)
  loc_EFF2C8:   var_98.Enabled = False
  loc_EFF2D4: End If
  loc_EFF2D4: Exit Sub
End Sub

Public Sub Proc_213_48_EBB1AC
  'Data Table: 4D1014
  loc_EBB124: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EBB136:   Me.DGDepart.Visible = False
  loc_EBB13E: End If
  loc_EBB15A: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EBB16C:   Me.DGItem.Visible = False
  loc_EBB174: End If
  loc_EBB190: If (CBool(Me.DGToDepart.Visible) = &HFF) Then
  loc_EBB1A2:   Me.DGToDepart.Visible = False
  loc_EBB1AA: End If
  loc_EBB1AA: Exit Sub
End Sub

Public Sub Proc_213_49_115C848
  'Data Table: 4D1014
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
  loc_115C4E0: var_90 = global_68
  loc_115C4F7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_115C51A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115C528: Set var_B4 = Me.Txt
  loc_115C52E: Call 0.Method_Proc_213_49_115C8480 (CInt(2), var_B8, var_E8)
  loc_115C53D: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_115C545: var_F8 = -1 & var_D8 
  loc_115C559: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115C564: Set var_8C = var_140
  loc_115C5A0: If (var_8C.RecordCount <= 0) Then
  loc_115C5BC:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115C5CF:   var_88 = vbNullString
  loc_115C5D2:   Proc_213_49_115C848 = 
  loc_115C5D8: End If
  loc_115C5EC: If (var_8C.RecordCount > 0) Then
  loc_115C62B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115C648:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115C659:     var_9C = CStr(var_B8.Value)
  loc_115C674:     Set var_B4 = Me.Txt
  loc_115C67A:     Call 0.Method_Proc_213_49_115C8480 (CInt(1), var_B8)
  loc_115C690:     var_94 = CLng(Val(var_B8.Text))
  loc_115C6A0:   Else
  loc_115C6CB:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115C6F2:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115C707:     var_D8 = (var_B8.Value + 1)
  loc_115C70D:     var_94 = CLng(var_D8)
  loc_115C71E:   End If
  loc_115C71E: End If
  loc_115C749: var_C8 = Space((5 - Len(var_90)))
  loc_115C751: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_B8.Value)
  loc_115C75B: var_F8 = (var_E8 + CVar(var_9C))
  loc_115C76C: var_118 = Space((5 - Len(var_9C)))
  loc_115C774: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115C78A: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115C792: var_188 = (var_13C + var_178)
  loc_115C79E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115C7A3: var_98 = CStr(var_1A8)
  loc_115C7D3: Me.LblVPrefix.Caption = var_9C
  loc_115C7E9: Set var_B4 = Me.Txt
  loc_115C7EF: Call 0.Method_Proc_213_49_115C8480 (CInt(0), var_B8)
  loc_115C7F7: var_B8.Text = var_98
  loc_115C816: Set var_B4 = Me.Txt
  loc_115C81C: Call 0.Method_Proc_213_49_115C8480 (CInt(1), var_B8)
  loc_115C824: var_B8.Text = CStr(var_94)
  loc_115C836: var_88 = var_98
  loc_115C83E: Set var_8C = Nothing
  loc_115C841: Proc_213_49_115C848 = var_94
End Sub

Public Sub Proc_213_50_124DCE4
  'Data Table: 4D1014
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_D4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_124D7A3: Me.FGrid.Width = CVar(CDbl(10800))
  loc_124D7BE: Me.FGrid.Top = CVar(CDbl(1980))
  loc_124D7D9: Me.FGrid.Height = CVar(CDbl(3400))
  loc_124D7F4: Me.DGItem.Left = CVar(CDbl(2800))
  loc_124D80F: Me.DGItem.Top = CVar(CDbl(1200))
  loc_124D84E: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_124D86E: If (global_92 <> "Yes") Then
  loc_124D882:   Set var_A8 = Me.DGItem
  loc_124D8A1:   DGItem.DispID_69.Item(1).Width = CDbl(0)
  loc_124D8CA:   var_94 = CVar((CDbl(Me.DGItem.Width) - CDbl(2500))) 'Single
  loc_124D8D9:   Me.DGItem.Width = 1
  loc_124D8E8: End If
  loc_124D8EC: Set var_D4 = Me.FGrid
  loc_124D903: global_108 = CStr(CLng(var_D4.BackColor))
  loc_124D919: var_D4.Cols = &HB
  loc_124D921: var_94 = CVar(CLng(0)) 'Long
  loc_124D926: var_E8 = &H1C2
  loc_124D932: LateIdCallSt
  loc_124D93A: var_94 = 0
  loc_124D946: var_E8 = CVar(CLng(1)) 'Long
  loc_124D94B: var_108 = "Item Name"
  loc_124D954: LateIdCallSt
  loc_124D95F: var_94 = CVar(CLng(1)) 'Long
  loc_124D96A: var_E8 = CVar(CInt(1)) 'Integer
  loc_124D971: LateIdCallSt
  loc_124D97C: var_94 = CVar(CLng(1)) 'Long
  loc_124D981: var_E8 = &H9C4
  loc_124D98D: LateIdCallSt
  loc_124D995: var_94 = 0
  loc_124D9A1: var_E8 = CVar(CLng(2)) 'Long
  loc_124D9A6: var_108 = "Unit"
  loc_124D9AF: LateIdCallSt
  loc_124D9BA: var_94 = CVar(CLng(2)) 'Long
  loc_124D9C5: var_E8 = CVar(CInt(1)) 'Integer
  loc_124D9CC: LateIdCallSt
  loc_124D9D7: var_94 = CVar(CLng(2)) 'Long
  loc_124D9DC: var_E8 = &H384
  loc_124D9E8: LateIdCallSt
  loc_124D9F0: var_94 = 0
  loc_124D9FC: var_E8 = CVar(CLng(3)) 'Long
  loc_124DA01: var_108 = "Rec. Qty"
  loc_124DA0A: LateIdCallSt
  loc_124DA15: var_94 = CVar(CLng(3)) 'Long
  loc_124DA20: var_E8 = CVar(CInt(7)) 'Integer
  loc_124DA27: LateIdCallSt
  loc_124DA32: var_94 = CVar(CLng(3)) 'Long
  loc_124DA3D: var_E8 = CVar(CInt(7)) 'Integer
  loc_124DA44: LateIdCallSt
  loc_124DA4F: var_94 = CVar(CLng(3)) 'Long
  loc_124DA54: var_E8 = &H3E8
  loc_124DA60: LateIdCallSt
  loc_124DA68: var_94 = 0
  loc_124DA74: var_E8 = CVar(CLng(4)) 'Long
  loc_124DA79: var_108 = "Conv. Factor"
  loc_124DA82: LateIdCallSt
  loc_124DA8D: var_94 = CVar(CLng(4)) 'Long
  loc_124DA98: var_E8 = CVar(CInt(7)) 'Integer
  loc_124DA9F: LateIdCallSt
  loc_124DAAA: var_94 = CVar(CLng(4)) 'Long
  loc_124DAB5: var_E8 = CVar(CInt(7)) 'Integer
  loc_124DABC: LateIdCallSt
  loc_124DAC7: var_94 = CVar(CLng(4)) 'Long
  loc_124DACC: var_E8 = &H4B0
  loc_124DAD8: LateIdCallSt
  loc_124DAE0: var_94 = 0
  loc_124DAEC: var_E8 = CVar(CLng(5)) 'Long
  loc_124DAF1: var_108 = "Wt. Qty"
  loc_124DAFA: LateIdCallSt
  loc_124DB05: var_94 = CVar(CLng(5)) 'Long
  loc_124DB10: var_E8 = CVar(CInt(7)) 'Integer
  loc_124DB17: LateIdCallSt
  loc_124DB22: var_94 = CVar(CLng(5)) 'Long
  loc_124DB2D: var_E8 = CVar(CInt(7)) 'Integer
  loc_124DB34: LateIdCallSt
  loc_124DB3F: var_94 = CVar(CLng(5)) 'Long
  loc_124DB44: var_E8 = &H3E8
  loc_124DB50: LateIdCallSt
  loc_124DB58: var_94 = 0
  loc_124DB64: var_E8 = CVar(CLng(6)) 'Long
  loc_124DB69: var_108 = "Wt.Unit"
  loc_124DB72: LateIdCallSt
  loc_124DB7D: var_94 = CVar(CLng(6)) 'Long
  loc_124DB88: var_E8 = CVar(CInt(1)) 'Integer
  loc_124DB8F: LateIdCallSt
  loc_124DB9A: var_94 = CVar(CLng(6)) 'Long
  loc_124DB9F: var_E8 = &H384
  loc_124DBAB: LateIdCallSt
  loc_124DBB3: var_94 = 0
  loc_124DBBF: var_E8 = CVar(CLng(7)) 'Long
  loc_124DBC4: var_108 = "Rate"
  loc_124DBCD: LateIdCallSt
  loc_124DBD8: var_94 = CVar(CLng(7)) 'Long
  loc_124DBE3: var_E8 = CVar(CInt(7)) 'Integer
  loc_124DBEA: LateIdCallSt
  loc_124DBF5: var_94 = CVar(CLng(7)) 'Long
  loc_124DC00: var_E8 = CVar(CInt(7)) 'Integer
  loc_124DC07: LateIdCallSt
  loc_124DC12: var_94 = CVar(CLng(7)) 'Long
  loc_124DC17: var_E8 = &H3E8
  loc_124DC23: LateIdCallSt
  loc_124DC2B: var_94 = 0
  loc_124DC37: var_E8 = CVar(CLng(8)) 'Long
  loc_124DC3C: var_108 = "Amount"
  loc_124DC45: LateIdCallSt
  loc_124DC50: var_94 = CVar(CLng(8)) 'Long
  loc_124DC5B: var_E8 = CVar(CInt(7)) 'Integer
  loc_124DC62: LateIdCallSt
  loc_124DC6D: var_94 = CVar(CLng(8)) 'Long
  loc_124DC78: var_E8 = CVar(CInt(7)) 'Integer
  loc_124DC7F: LateIdCallSt
  loc_124DC8A: var_94 = CVar(CLng(8)) 'Long
  loc_124DC8F: var_E8 = &H5DC
  loc_124DC9B: LateIdCallSt
  loc_124DCA6: var_94 = CVar(CLng(9)) 'Long
  loc_124DCAB: var_E8 = 0
  loc_124DCB7: LateIdCallSt
  loc_124DCC2: var_94 = CVar(CLng(&HA)) 'Long
  loc_124DCC7: var_E8 = 0
  loc_124DCD3: LateIdCallSt
  loc_124DCDD: Set var_D4 = Nothing 
  loc_124DCE1: Exit Sub
End Sub

Public Sub Proc_213_51_F71790
  'Data Table: 4D1014
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  loc_F71693: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F7169B: var_C8 = CVar(CLng(7)) 'Long
  loc_F716D3: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F716DB: var_134 = CVar(CLng(3)) 'Long
  loc_F71713: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F7171B: var_1F0 = CVar(CLng(8)) 'Long
  loc_F7174C: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_F71754: Set var_224 = Me.FGrid
  loc_F7175A: LateIdCallSt
  loc_F7178D: Exit Sub
End Sub

Public Sub Proc_213_52_ED7C60
  'Data Table: 4D1014
  loc_ED7BC0: Call Proc_213_48_EBB1AC()
  loc_ED7BD0: Set var_88 = Me.Txt
  loc_ED7BD6: Call 0.Method_Proc_213_52_ED7C600 (CInt(2))
  loc_ED7BFF: If (Proc_6_27_EA61EC(var_8C, "Date") = 0) Then
  loc_ED7C02:   Exit Sub
  loc_ED7C03: End If
  loc_ED7C3A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED7C3D:   Call TopCtrl1_UnknownEvent_16()
  loc_ED7C45: Else
  loc_ED7C4B:   Call 0.Method_arg_1E8 (var_88)
  loc_ED7C53:   Call var_88.SetFocus
  loc_ED7C5C: End If
  loc_ED7C5C: Exit Sub
End Sub
