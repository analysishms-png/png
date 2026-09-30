VERSION 5.00
Begin VB.Form FrmItemGroupMastRaw
  Caption = "Item Group"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmItemGroupMastRaw.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 8880
  ClientHeight = 5190
  Begin MainCtrl TOpCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 18
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 9105
    Top = 6765
    Width = 2790
    Height = 255
    Visible = 0   'False
    TabIndex = 2
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
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 2430
    Top = 2550
    Width = 1560
    Height = 285
    TabIndex = 4
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 9030
    Top = 1035
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 11
    End
  End
  Begin DataGrid DGHelp
    Left = 9105
    Top = 3045
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGRest
    Left = 7890
    Top = 4035
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 2430
    Top = 2235
    Width = 1560
    Height = 285
    TabIndex = 3
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2430
    Top = 1605
    Width = 4215
    Height = 285
    Visible = 0   'False
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2430
    Top = 1920
    Width = 4215
    Height = 285
    TabIndex = 1
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
  Begin MSFlexGrid FGPoint
    Left = 11160
    Top = 1470
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 12
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4320
    Top = 5685
    Width = 2790
    Height = 285
    TabIndex = 17
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
    Left = 945
    Top = 5685
    Width = 2880
    Height = 255
    TabIndex = 16
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
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 15
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
    Caption = "Commodity Code"
    Index = 2
    ForeColor = &HC00000&
    Left = 7590
    Top = 6765
    Width = 1605
    Height = 240
    Visible = 0   'False
    TabIndex = 14
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
    Caption = "Category Type"
    Index = 0
    ForeColor = &HC00000&
    Left = 1005
    Top = 2550
    Width = 1380
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
  Begin Label Label1
    Caption = "Type"
    Index = 1
    ForeColor = &HC00000&
    Left = 1005
    Top = 2220
    Width = 465
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
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 1005
    Top = 1605
    Width = 1185
    Height = 240
    Visible = 0   'False
    TabIndex = 7
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
    Caption = "Item Group"
    Index = 0
    ForeColor = &HC00000&
    Left = 1005
    Top = 1920
    Width = 1065
    Height = 240
    TabIndex = 5
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

Attribute VB_Name = "FrmItemGroupMastRaw"


Private Sub DGHelp_UnknownEvent_9 'F3E254
  'Data Table: 483B14
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3E14B: Me.DGHelp.Visible = False
  loc_F3E16A: If (Me.RecordCount > 0) Then
  loc_F3E1A9:   Set var_B4 = Me.Txt
  loc_F3E1AF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3E1B7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3E1EA:   var_B0 = Me.Fields.Item("Code")
  loc_F3E209:   Set var_B4 = Me.Txt
  loc_F3E20F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3E217:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3E22D: End If
  loc_F3E238: Set var_A8 = Me.Txt
  loc_F3E23E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2))
  loc_F3E246: var_B0.SetFocus
  loc_F3E252: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA465C
  'Data Table: 483B14
  Dim var_A8 As Variant
  loc_EA45DC: Set var_88 = Me.DGHelp
  loc_EA4606: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA460E: Set var_BC = Me.DGHelp
  loc_EA464A: Proc_6_138_106E830(Me.DGHelp, global_60, CInt(2), Me.FGPoint)
  loc_EA4658: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F59CD4
  'Data Table: 483B14
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F59BF6: If (Me.ListView.ListItems.Count > 0) Then
  loc_F59BFD:   Set var_A8 = Me.ListView
  loc_F59C47:   Set var_C0 = Me.Txt
  loc_F59C4D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F59C55:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F59C75: End If
  loc_F59C81: Me.FrmList.Visible = False
  loc_F59CB1: Set var_9C = Me.Txt
  loc_F59CB7: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F59CBF: var_A8.SetFocus
  loc_F59CD3: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '130BC20
  'Data Table: 483B14
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_130B502: Set var_88 = Me.Txt
  loc_130B508: Call 0.Method_Txt_GotFocus0 (Index)
  loc_130B516: Proc_6_74_E23240(var_8C)
  loc_130B522: Call Proc_114_36_EF57A8(var_8C)
  loc_130B52A: var_92 = Index
  loc_130B535: If (var_92 = CInt(1)) Then
  loc_130B54F:   If (Me.RecordCount > 0) Then
  loc_130B55D:     Set var_8C = Me.FGPoint
  loc_130B575:     Proc_6_137_1192FDC(Me.DGRest, global_64, Index)
  loc_130B583:   End If
  loc_130B5D1:   Set var_88 = Me.Txt
  loc_130B5D7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_130B5DF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_130B5F7:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_130B607:     Set var_88 = Me.Txt
  loc_130B60D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130B615:     var_8C.Tag = vbNullString
  loc_130B621:     Exit Sub
  loc_130B622:   End If
  loc_130B62F:   Set var_88 = Me.Txt
  loc_130B635:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130B63D:   var_A0 = var_8C.Text
  loc_130B64F:   var_B0 = "Name"
  loc_130B68A:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_130B693:     Me.MoveFirst
  loc_130B6B6:     Set var_88 = Me.Txt
  loc_130B6BC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_130B6C4:     0 = var_8C.Text
  loc_130B6DD:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_130B6F2:   End If
  loc_130B6F5: Else
  loc_130B6FD:   If (var_92 = CInt(2)) Then
  loc_130B717:     If (Me.RecordCount > 0) Then
  loc_130B725:       Set var_8C = Me.FGPoint
  loc_130B73D:       Proc_6_137_1192FDC(Me.DGHelp, global_60)
  loc_130B74B:     End If
  loc_130B799:     Set var_88 = Me.Txt
  loc_130B79F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_130B7A7:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_130B7BF:     If (Index Or (var_A0 = vbNullString)) Then
  loc_130B7CF:       Set var_88 = Me.Txt
  loc_130B7D5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130B7DD:       var_8C.Tag = vbNullString
  loc_130B7E9:       Exit Sub
  loc_130B7EA:     End If
  loc_130B7F7:     Set var_88 = Me.Txt
  loc_130B7FD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130B805:     var_A0 = var_8C.Text
  loc_130B817:     var_B0 = "Name"
  loc_130B82E:     var_B4 = Me.Fields.Item(var_B0)
  loc_130B852:     If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_130B85B:       Me.MoveFirst
  loc_130B87E:       Set var_88 = Me.Txt
  loc_130B884:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_130B88C:       0 = var_8C.Text
  loc_130B8A5:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_130B8BA:     End If
  loc_130B8BD:   Else
  loc_130B8C5:     If (var_92 = CInt(4)) Then
  loc_130B8D7:       Set var_88 = Me.Txt
  loc_130B8DD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130B8E5:       var_8C.SelStart = 0
  loc_130B8FE:       Set var_88 = Me.Txt
  loc_130B904:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130B90C:       var_A0 = var_8C.Text
  loc_130B91F:       Set var_90 = Me.Txt
  loc_130B925:       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_130B92D:       var_B4.SelLength = Len(var_A0)
  loc_130B94D:       ReDim var_F0(0 To 7)
  loc_130B964:       var_F0(0) = "Food"
  loc_130B973:       var_F0(1) = "Liquor"
  loc_130B982:       var_F0(2) = "Confectionary"
  loc_130B991:       var_F0(3) = "Beverage"
  loc_130B9A0:       var_F0(4) = "Miscellaneous"
  loc_130B9AF:       var_F0(5) = "Tobacco"
  loc_130B9BE:       var_F0(6) = "Hall Rent"
  loc_130B9CD:       var_F0(7) = "Butchery"
  loc_130B9E4:       global_76 = Array(var_F0)
  loc_130B9EF:       Set var_B4 = Me.ListView
  loc_130BA0A:       Set var_8C = Me.Txt
  loc_130BA24:       Set global_92 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_130BA42:       Set var_88 = Me.Txt
  loc_130BA48:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_130BA50:       global_76 = var_8C.Text
  loc_130BA62:       Set var_90 = Me.Txt
  loc_130BA68:       Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_130BA70:       var_B4.Tag = 8
  loc_130BA86:     Else
  loc_130BA8E:       If (var_92 = CInt(3)) Then
  loc_130BAA0:         Set var_88 = Me.Txt
  loc_130BAA6:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130BAAE:         var_8C.SelStart = 0
  loc_130BAC7:         Set var_88 = Me.Txt
  loc_130BACD:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130BAD5:         var_A0 = var_8C.Text
  loc_130BAE8:         Set var_90 = Me.Txt
  loc_130BAEE:         Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_130BAF6:         var_B4.SelLength = Len(var_A0)
  loc_130BB16:         ReDim var_F0(0 To 4)
  loc_130BB2D:         var_F0(0) = "Finish"
  loc_130BB3C:         var_F0(1) = "Semi Finish"
  loc_130BB4B:         var_F0(2) = "Consumables"
  loc_130BB5A:         var_F0(3) = "Raw Material"
  loc_130BB69:         var_F0(4) = "Store Item"
  loc_130BB80:         global_76 = Array(var_F0)
  loc_130BB8B:         Set var_B4 = Me.ListView
  loc_130BBA6:         Set var_8C = Me.Txt
  loc_130BBC0:         Set global_92 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_76)
  loc_130BBDE:         Set var_88 = Me.Txt
  loc_130BBE4:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_130BBEC:         5 = var_8C.Text
  loc_130BBFE:         Set var_90 = Me.Txt
  loc_130BC04:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_130BC0C:         var_B4.Tag = global_76
  loc_130BC1F:       End If
  loc_130BC1F:     End If
  loc_130BC1F:   End If
  loc_130BC1F: End If
  loc_130BC1F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '123F81C
  'Data Table: 483B14
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  Dim var_B0 As TextBox
  Dim var_C0 As TextBox
  Dim var_90 As DataGrid
  Dim var_A0 As Frame
  loc_123F30E: If (CLng(Shift) = &H1B) Then
  loc_123F311:   Call Proc_114_36_EF57A8()
  loc_123F316:   Exit Sub
  loc_123F317: End If
  loc_123F31A: var_88 = KeyCode
  loc_123F325: If (var_88 = CInt(2)) Then
  loc_123F34A:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_123F36A:     Set var_A0 = Me.FGPoint
  loc_123F39C:     Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(2), global_60, Shift)
  loc_123F3B0:   End If
  loc_123F409:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_123F42F:     Proc_6_138_106E830(Me.DGHelp, global_60, KeyCode, Me.FGPoint, 0)
  loc_123F43D:   End If
  loc_123F440: Else
  loc_123F448:   If (var_88 = CInt(1)) Then
  loc_123F456:     Set var_B0 = Me.Txt
  loc_123F468:     Set var_A8 = Me.FGPoint
  loc_123F473:     Set var_A0 = Nothing
  loc_123F4A1:     Proc_6_69_134A630(Me.DGRest, var_B0, KeyCode, global_64, Shift, 0, 1)
  loc_123F4C0:     var_8C = Me.RecordCount
  loc_123F510:     If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_123F517:       Set var_A0 = Me.DGRest
  loc_123F51E:       Set var_94 = Me.FGPoint
  loc_123F536:       Proc_6_138_106E830(var_A0, global_64, KeyCode, var_94, var_A0, var_A8)
  loc_123F544:     End If
  loc_123F547:   Else
  loc_123F54F:     If (var_88 = CInt(4)) Then
  loc_123F574:       Set var_90 = Me.Txt
  loc_123F57A:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, 0)
  loc_123F582:       1 = var_94.Left
  loc_123F594:       Set var_A0 = Me.Txt
  loc_123F59A:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_123F5A2:       var_A0 = var_A8.Top
  loc_123F5B4:       Set var_AC = Me.Txt
  loc_123F5BA:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_BC)
  loc_123F5C2:       0 = var_B0.Height
  loc_123F5D4:       Set var_B4 = Me.Txt
  loc_123F5DA:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_123F5E2:       var_C4 = var_C0.Width
  loc_123F62A:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_123F651:     Else
  loc_123F659:       If (var_88 = CInt(3)) Then
  loc_123F67E:         Set var_90 = Me.Txt
  loc_123F684:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, CInt(var_8C))
  loc_123F68C:         CInt((var_B8 + var_BC)) = var_94.Left
  loc_123F69E:         Set var_A0 = Me.Txt
  loc_123F6A4:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_123F6AC:         CInt(var_C4) = var_A8.Top
  loc_123F6BE:         Set var_AC = Me.Txt
  loc_123F6C4:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_BC)
  loc_123F6CC:         2720 = var_B0.Height
  loc_123F6DE:         Set var_B4 = Me.Txt
  loc_123F6E4:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_123F6EC:         var_C4 = var_C0.Width
  loc_123F734:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_123F758:       End If
  loc_123F758:     End If
  loc_123F758:   End If
  loc_123F758: End If
  loc_123F7AE: If (((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGRest.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_123F7C4:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_123F7CD:     Proc_6_76_E533C8(Shift, arg_14, CInt(var_8C), CInt((var_B8 + var_BC)))
  loc_123F7D2:   End If
  loc_123F7E7:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_123F7F2:     If (KeyCode = CInt(4)) Then
  loc_123F7FD:       Call Txt_Validate(KeyCode)
  loc_123F805:       Call Proc_114_37_E91DC8(KeyCode, 0, CInt(var_C4))
  loc_123F80D:     Else
  loc_123F813:       Proc_6_75_E5335C(Shift, arg_14)
  loc_123F818:     End If
  loc_123F818:   End If
  loc_123F818: End If
  loc_123F818: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EEF278
  'Data Table: 483B14
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EEF1B6: Proc_6_133_E7FB08(var_94)
  loc_EEF1CB: If (CInt(var_94) = &HD) Then
  loc_EEF1D0:   arg_10 = 0
  loc_EEF1D3: End If
  loc_EEF1D6: Proc_6_58_E06050(arg_10, arg_10)
  loc_EEF1E9: If (KeyAscii = CInt(1)) Then
  loc_EEF208:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EEF235:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_EEF267:     Proc_6_138_106E830(Me.DGRest, global_64, KeyAscii, Me.FGPoint)
  loc_EEF275:   End If
  loc_EEF275: End If
  loc_EEF275: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F33018
  'Data Table: 483B14
  Dim var_86 As Integer
  loc_F32F0B: var_86 = KeyCode
  loc_F32F16: If (var_86 = CInt(2)) Then
  loc_F32F35:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F32F42:     var_A4 = "Name"
  loc_F32F61:     Proc_6_80_FF1F20(Me.Txt, CInt(2), global_60)
  loc_F32F93:     Proc_6_138_106E830(Me.DGHelp, global_60, KeyCode, Me.FGPoint)
  loc_F32FA1:   End If
  loc_F32FA4: Else
  loc_F32FAC:   If Not (var_86 = CInt(3)) Then
  loc_F32FB7:     If (var_86 = CInt(4)) Then
  loc_F32FBA:     End If
  loc_F32FD5:     If (Me.FrmList.Visible = &HFF) Then
  loc_F33004:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F33014:     End If
  loc_F33014:   End If
  loc_F33014: End If
  loc_F33014: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49C54
  'Data Table: 483B14
  loc_E49C32: Set var_88 = Me.Txt
  loc_E49C38: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49C46: Proc_6_73_E23294(var_8C)
  loc_E49C52: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1034A94
  'Data Table: 483B14
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_1034853: var_86 = Cancel
  loc_103485E: If (var_86 = CInt(2)) Then
  loc_1034864:   Call Proc_114_35_10F7E04(var_88)
  loc_103486F:   If (var_88 = &HFF) Then
  loc_1034874:     arg_10 = &HFF
  loc_1034877:     Exit Sub
  loc_1034878:   End If
  loc_103487B: Else
  loc_1034883:   If (var_86 = CInt(1)) Then
  loc_10348A6:     var_88 = Me.EOF
  loc_10348D4:     Set var_94 = Me.Txt
  loc_10348DA:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_10348E2:     ((Me.RecordCount = 0) Or ((var_88 = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_10348FA:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_103490A:       Set var_94 = Me.Txt
  loc_1034910:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1034918:       var_98.Tag = vbNullString
  loc_1034924:       Exit Sub
  loc_1034925:     End If
  loc_1034960:     Set var_B0 = Me.Txt
  loc_1034966:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_103496E:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10349A1:     var_98 = Me.Fields.Item("Code")
  loc_10349B2:     var_9C = CStr(var_98.Value)
  loc_10349BF:     Set var_B0 = Me.Txt
  loc_10349C5:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10349CD:     var_B4.Tag = var_9C
  loc_10349E6:   Else
  loc_10349EE:     If (var_86 = CInt(3)) Then
  loc_10349F4:       Call Proc_114_35_10F7E04(var_88)
  loc_10349FF:       If (var_88 = &HFF) Then
  loc_1034A04:         arg_10 = &HFF
  loc_1034A07:         Exit Sub
  loc_1034A08:       End If
  loc_1034A15:       Set var_94 = Me.Txt
  loc_1034A1B:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1034A23:       arg_10 = var_98.Text
  loc_1034A3A:       If (var_9C <> vbNullString) Then
  loc_1034A6D:         Set var_B0 = Me.Txt
  loc_1034A73:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1034A7B:         var_B4.Text = Me.ListView.SelectedItem.Text
  loc_1034A91:       End If
  loc_1034A91:     End If
  loc_1034A91:   End If
  loc_1034A91: End If
  loc_1034A91: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F3CF14
  'Data Table: 483B14
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3CE0B: Me.DGRest.Visible = False
  loc_F3CE2A: If (Me.RecordCount > 0) Then
  loc_F3CE69:   Set var_B4 = Me.Txt
  loc_F3CE6F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3CE77:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3CEAA:   var_B0 = Me.Fields.Item("Code")
  loc_F3CEC9:   Set var_B4 = Me.Txt
  loc_F3CECF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3CED7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3CEED: End If
  loc_F3CEF8: Set var_A8 = Me.Txt
  loc_F3CEFE: Call 0.Method_DGRest_UnknownEvent_90 (CInt(1))
  loc_F3CF06: var_B0.SetFocus
  loc_F3CF12: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'EA4BB8
  'Data Table: 483B14
  Dim var_A8 As Variant
  loc_EA4B38: Set var_88 = Me.DGRest
  loc_EA4B62: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA4B6A: Set var_BC = Me.DGRest
  loc_EA4BA6: Proc_6_138_106E830(Me.DGRest, global_64, CInt(1), Me.FGPoint)
  loc_EA4BB4: Exit Sub
  loc_EA4BB5: DGRest.DispID_1B = var_A8
End Sub

Private Sub Form_Load() '11BF96C
  'Data Table: 483B14
  Dim var_88 As Label
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim var_E0 As String
  Dim unk_483B2C As Connection15
  loc_11BF52C: On Error Goto loc_11BF925
  loc_11BF53E: Me.LblUser.Left = CDbl(13500)
  loc_11BF555: Me.LblUser.Top = CDbl(7800)
  loc_11BF56C: Me.LblLDt.Top = CDbl(8160)
  loc_11BF583: Me.LblLDt.Left = CDbl(13500)
  loc_11BF592: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11BF59B: var_98 = CVar(CLng(MemVar_1F951B4)) 'Long
  loc_11BF5A4: Set var_88 = Me.DGHelp
  loc_11BF5C0: Set var_88 = Me.Txt
  loc_11BF5C6: Call 0.Method_Form_Load0 (CInt(2), var_AC, var_B0)
  loc_11BF5CE: DGHelp.DispID_FFFFFE0B = var_AC.Left
  loc_11BF5E5: Me.DGHelp.Left = CVar(var_B0)
  loc_11BF601: Set var_B4 = Me.Txt
  loc_11BF607: Call 0.Method_Form_Load0 (CInt(2), var_B8)
  loc_11BF622: Set var_88 = Me.Txt
  loc_11BF628: Call 0.Method_Form_Load0 (CInt(2), var_AC)
  loc_11BF640: var_98 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_11BF64F: Me.DGHelp.Top = CVar(var_AC.Top)
  loc_11BF66F: Set var_88 = Me.Txt
  loc_11BF675: Call 0.Method_Form_Load0 (CInt(1), var_AC)
  loc_11BF694: Me.DGRest.Left = CVar(var_AC.Left)
  loc_11BF6B0: Set var_B4 = Me.Txt
  loc_11BF6B6: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_11BF6D1: Set var_88 = Me.Txt
  loc_11BF6D7: Call 0.Method_Form_Load0 (CInt(1), var_AC)
  loc_11BF6EF: var_98 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_11BF6FE: Me.DGRest.Top = CVar(var_AC.Left)
  loc_11BF710: var_98 = "AEDP"
  loc_11BF71A: Set var_88 = Me.TOpCtrl1
  loc_11BF720: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_98)
  loc_11BF72E: Call 0.Method_arg_50 (var_C4)
  loc_11BF736: var_D4 = CVar(var_C4) 'String
  loc_11BF744: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_11BF763: var_C4 = "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE (ItemGrp.LOGSITE_CODE='" & MemVar_1F95078
  loc_11BF778: var_E0 = var_C4 & "' or ItemGrp.LOGSITE_CODE='HO') and Depart.code='" & MemVar_1F95078 & "PURC' AND ItemGrp.Code<>'MISC'  AND ItemGrp.Type='Finish' and Depart.RestType not in ('Banquet','Outlet','Room Service')  ORDER BY ItemGrp.Name"
  loc_11BF781: unk_483B2C.Execute var_E0, var_D4, -1
  loc_11BF7B4: CVarUnk
  loc_11BF7B9: VerifyVarObj
  loc_11BF7C5: LateIdStAd
  loc_11BF7E7: var_C4 = "SELECT IG.Code,IG.Name As ItemGroup,IG.Type,D.Name As RestName,IG.Site_Code,IG.LogSite_Code,IG.CatType,IG.CommodityCode FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F95078
  loc_11BF7FC: var_E0 = var_C4 & "' or IG.LOGSITE_CODE='HO') and d.code='" & MemVar_1F95078 & "PURC' And IG.Code <>'MISC' and Resttype not in ('Banquet','Outlet','Room Service')  ORDER BY IG.Name"
  loc_11BF805: unk_483B2C.Execute var_E0, var_D4, -1
  loc_11BF83B: Set var_88 = Me.LblName
  loc_11BF841: Call 0.Method_Form_Load0 (1, var_AC, "Depart Name", var_88)
  loc_11BF849: var_AC.Caption = var_88
  loc_11BF85B: Call 0.Method_arg_54 ("Item Group Master", Me.TOpCtrl1)
  loc_11BF87B: var_D8 = "Select Code,Name From Depart Where (Depart.LOGSITE_CODE='" & MemVar_1F95078 & "' or Depart.LOGSITE_CODE='HO') and OutletYN='N' Order by Name"
  loc_11BF884: unk_483B2C.Execute var_D8, var_D4, -1
  loc_11BF8B3: CVarUnk
  loc_11BF8B8: VerifyVarObj
  loc_11BF8BE: Set var_88 = Me.DGRest
  loc_11BF8C4: LateIdStAd
  loc_11BF8DE: Set var_88 = Me
  loc_11BF8E7: var_C4 = "INI"
  loc_11BF8F5: Call Proc_114_32_E6EDF8(Proc_5_1_100EC1C(var_C4, var_88, Me.DGHelp, var_88), var_88, var_88)
  loc_11BF909: Call 0.Method_arg_160 (var_88, var_88)
  loc_11BF917: Call 0.Method_arg_164 (var_88)
  loc_11BF91F: Call Proc_114_34_128E70C(var_98)
  loc_11BF924: Exit Sub
  loc_11BF925: ' Referenced from: 11BF52C
  loc_11BF92D: Set var_88 = Err()
  loc_11BF933: Call 0.Method_arg_2C (var_C4)
  loc_11BF954: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_11BF967: Exit Sub
  loc_11BF968: Exit Sub
End Sub

Private Sub Form_Resize() 'EE6A4C
  'Data Table: 483B14
  Dim var_8C As Label
  loc_EE699A: Call 0.Method_arg_50 (var_88)
  loc_EE69AC: Me.LblFormCaption.Caption = var_88
  loc_EE69C5: Me.LblFormCaption.Left = CDbl(0)
  loc_EE69D1: Set var_A0 = Me.TOpCtrl1
  loc_EE69D7: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_EE69E4: Set var_8C = Me.TOpCtrl1
  loc_EE69EA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_EE6A04: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_EE6A1F: Call 0.Method_arg_100 (var_B8)
  loc_EE6A31: Me.LblFormCaption.Width = var_B8
  loc_EE6A44: If (global_52 = "Banquet") Then
  loc_EE6A47:   Exit Sub
  loc_EE6A48: End If
  loc_EE6A48: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E51718
  'Data Table: 483B14
  loc_E516EB: Set global_56 = Nothing
  loc_E516FD: Set global_60 = Nothing
  loc_E5170F: Set global_64 = Nothing
  loc_E51716: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E88EA8
  'Data Table: 483B14
  loc_E88E44: On Error Goto loc_E88E64
  loc_E88E5B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E88E63: Exit Sub
  loc_E88E64: ' Referenced from: E88E44
  loc_E88E6C: Set var_88 = Err()
  loc_E88E72: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E88E93: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E88EA6: Exit Sub
  loc_E88EA7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F8C064
  'Data Table: 483B14
  Dim var_94 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_C0 As TextBox
  loc_F8BF08: On Error Goto loc_F8C05E
  loc_F8BF2E: Call Proc_114_32_E6EDF8(Proc_5_1_100EC1C("ADD", Me))
  loc_F8BF39: Call Proc_114_33_EA9488(global_56)
  loc_F8BF49: Set var_8C = Me.Txt
  loc_F8BF4F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2))
  loc_F8BF57: var_94.SetFocus
  loc_F8BF7A: If (Me.RecordCount > 0) Then
  loc_F8BFB6:   Set var_BC = Me.Txt
  loc_F8BFBC:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C0)
  loc_F8BFC4:   var_C0.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_F8BFF2:   var_94 = Me.Fields.Item("Code")
  loc_F8C011:   Set var_BC = Me.Txt
  loc_F8C017:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C0)
  loc_F8C01F:   var_C0.Tag = Proc_6_38_E69628(CVar(var_94))
  loc_F8C033: End If
  loc_F8C040: Me.LblUser.Caption = vbNullString
  loc_F8C055: Me.LblLDt.Caption = vbNullString
  loc_F8C05D: Exit Sub
  loc_F8C05E: ' Referenced from: F8BF08
  loc_F8C05E: Proc_6_60_E63754(var_94)
  loc_F8C063: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC1F9C
  'Data Table: 483B14
  loc_EC1F04: On Error Goto loc_EC1F94
  loc_EC1F3E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC1F4D:   Set var_10C = Me
  loc_EC1F64:   Call Proc_114_32_E6EDF8(Proc_5_1_100EC1C("INI", var_10C))
  loc_EC1F6F:   Call Proc_114_36_EF57A8(global_56)
  loc_EC1F74:   Call Proc_114_34_128E70C()
  loc_EC1F7C: Else
  loc_EC1F82:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC1F8A:   Call var_10C.SetFocus
  loc_EC1F93: End If
  loc_EC1F93: Exit Sub
  loc_EC1F94: ' Referenced from: EC1F04
  loc_EC1F94: Proc_6_60_E63754()
  loc_EC1F99: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '112E374
  'Data Table: 483B14
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_483B2C As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_112E02C: On Error Goto loc_112E324
  loc_112E03D: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_112E040:   Exit Sub
  loc_112E041: End If
  loc_112E073: var_D0 = "Item Master"
  loc_112E0BB: If (Proc_6_108_101061C(MemVar_1F95044, "ItemMast", "ItemGroup", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_112E0BE:   Exit Sub
  loc_112E0BF: End If
  loc_112E0F6: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_112E102:   unk_483B2C.BeginTrans var_CC
  loc_112E118:   var_94 = Me.Bookmark 'Variant
  loc_112E164:   var_114 = "Delete From ItemGrp Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_112E172:   unk_483B2C.Execute CStr(var_114), var_134, -1
  loc_112E1BD:   var_164 = 0
  loc_112E1D0:   var_15C = 0
  loc_112E1DB:   var_158 = 0
  loc_112E1EE:   var_150 = 0
  loc_112E1F9:   var_14C = 0
  loc_112E20C:   var_144 = 0
  loc_112E24C:   var_B0 = "ItemGrp"
  loc_112E255:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B0, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_112E283:   unk_483B2C.CommitTrans
  loc_112E293:   Me.Requery -1
  loc_112E2A3:   Me.Requery -1
  loc_112E2C3:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_112E2D0:     Me.Bookmark = var_94
  loc_112E2D8:   Else
  loc_112E2EC:     If (Me.EOF = 0) Then
  loc_112E2F5:       Me.MoveLast
  loc_112E2FA:     End If
  loc_112E2FA:   End If
  loc_112E2FA:   Call Proc_114_34_128E70C(var_144, 0, var_14C, var_150)
  loc_112E31B:   Proc_5_0_1107AD0(&HFF, Me, global_56, 0)
  loc_112E323: End If
  loc_112E323: Exit Sub
  loc_112E324: ' Referenced from: 112E02C
  loc_112E32A: unk_483B2C.RollbackTrans
  loc_112E337: Set var_98 = Err()
  loc_112E33D: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_112E35E: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_112E371: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F13E94
  'Data Table: 483B14
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F13D9C: On Error Goto loc_F13E8B
  loc_F13DAD: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_F13DB0:   Exit Sub
  loc_F13DB1: End If
  loc_F13DD4: Call Proc_114_32_E6EDF8(Proc_5_1_100EC1C("EDIT", Me))
  loc_F13DED: Set var_8C = Me.Txt
  loc_F13DF3: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F13E06: global_72 = var_94.Text
  loc_F13E21: Set var_8C = Me.Txt
  loc_F13E27: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F13E2F: var_94.Enabled = False
  loc_F13E46: Set var_8C = Me.Txt
  loc_F13E4C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F13E54: var_94.SetFocus
  loc_F13E6D: Me.LblUser.Caption = vbNullString
  loc_F13E82: Me.LblLDt.Caption = vbNullString
  loc_F13E8A: Exit Sub
  loc_F13E8B: ' Referenced from: F13D9C
  loc_F13E8B: Proc_6_60_E63754(global_56)
  loc_F13E90: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C15C
  'Data Table: 483B14
  loc_E1C151: Me.Global.Unload Me
  loc_E1C159: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F76538
  'Data Table: 483B14
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F76400: On Error Goto loc_F764D2
  loc_F7640C: var_88 = Me.RecordCount
  loc_F7641A: If (var_88 <= 0) Then
  loc_F76423:   var_B8 = "Information"
  loc_F7643E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F7644E:   Exit Sub
  loc_F7644F: End If
  loc_F7645A: If (global_52 = "Banquet") Then
  loc_F76464:   var_10C = "Select IG.Code As SearchCode,IG.Name,IG.CommodityCode,D.Name As DepartName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F95078
  loc_F7646B:   MemVar_1F950E4 = var_10C & "' or IG.LOGSITE_CODE='HO') And IG.Code <>'MISC' and Resttype in ('Banquet')  ORDER BY D.Name,IG.Name"
  loc_F76475: Else
  loc_F7647C:   var_10C = "Select IG.Code As SearchCode,IG.Name,IG.Type,IG.CatType FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F95078
  loc_F76491:   MemVar_1F950E4 = var_10C & "' or IG.LOGSITE_CODE='HO') And D.code='" & MemVar_1F95078 & "PURC' And IG.Code <>'MISC' And Resttype Not In ('Banquet','Outlet','Room Service') ORDER BY D.Name,IG.Name"
  loc_F7649E: End If
  loc_F764A4: MemVar_1F95120 = Me
  loc_F764AB: var_10C = "3500,1500,1500"
  loc_F764B1: Proc_6_126_F1C850(var_10C, MemVar_1F950E4)
  loc_F764CC: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F764D1: Exit Sub
  loc_F764D2: ' Referenced from: F76400
  loc_F764DA: Set var_118 = Err()
  loc_F764E0: Call 0.Method_arg_1C (var_88)
  loc_F764F1: If (var_88 <> 0) Then
  loc_F764FC:   Set var_118 = Err()
  loc_F76502:   Call 0.Method_arg_2C (var_10C)
  loc_F76523:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F76536: End If
  loc_F76536: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E33188
  'Data Table: 483B14
  loc_E33178: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33180: Call Proc_114_34_128E70C(global_56)
  loc_E33185: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3A568
  'Data Table: 483B14
  loc_E3A558: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A560: Call Proc_114_34_128E70C(global_56)
  loc_E3A565: Exit Sub
  loc_E3A566: Assert
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3A4A8
  'Data Table: 483B14
  loc_E3A498: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A4A0: Call Proc_114_34_128E70C(global_56)
  loc_E3A4A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3A0E8
  'Data Table: 483B14
  loc_E3A0D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3A0E0: Call Proc_114_34_128E70C(global_56)
  loc_E3A0E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1088FEC
  'Data Table: 483B14
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_483B2C As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1088D54: On Error Goto loc_1088FA0
  loc_1088D72: var_A4 = "select IG.Code,IG.Name As ItemGroup,IG.Type,IG.CommodityCode FROM ItemGrp as IG WHERE (IG.LOGSITE_CODE='" & MemVar_1F95078 & "' or IG.LOGSITE_CODE='HO') and IG.TYPE <>'Finish'  ORDER BY IG.Name"
  loc_1088D7B: unk_483B2C.Execute var_A4, var_C4, -1
  loc_1088D86: Set var_88 = var_C8
  loc_1088D9C: var_CC = var_88.RecordCount
  loc_1088DAA: If (var_CC = 0) Then
  loc_1088DC6:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1088DD6:   Exit Sub
  loc_1088DD7: End If
  loc_1088DE6: var_A4 = MemVar_1F950B4 & "\ItemGrp.ttx"
  loc_1088DED: Set var_C8 = var_88 
  loc_1088DF9: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1088E03: Set var_88 = var_C8
  loc_1088E09: var_B4 = CVar(var_12E) 'Integer
  loc_1088E0C: var_98 = var_B4 'Variant
  loc_1088E28: var_A0 = MemVar_1F950B4 & "\ItemGrp.RPT"
  loc_1088E31: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1088E3C: MemVar_1F951E8 = var_C8
  loc_1088E57: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1088E5F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1088E6B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1088E84:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1088E8C:   Call 0.Method_arg_20 (var_138)
  loc_1088E94:   Call 0.Method_arg_30 (var_A0)
  loc_1088EDA:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1088EF0:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1088EF8:     Call 0.Method_arg_20 (var_138)
  loc_1088F00:     Call 0.Method_arg_38 ("'Item Group Master'")
  loc_1088F0C:   End If
  loc_1088F0F: Next var_132 'Integer
  loc_1088F2D: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1088F35: Call 0.Method_arg_2C (var_DC)
  loc_1088F43: Call 0.Method_arg_150 (var_FC)
  loc_1088F4E: Call 0.Method_arg_50 (var_A0)
  loc_1088F58: Set var_138 = Nothing
  loc_1088F72: Set var_C8 = MemVar_1F951E8 
  loc_1088F7E: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_1088F89: MemVar_1F951E8 = var_C8
  loc_1088F9C: Set var_88 = Nothing
  loc_1088F9F: Exit Sub
  loc_1088FA0: ' Referenced from: 1088D54
  loc_1088FA8: Set var_C8 = Err()
  loc_1088FAE: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1088FB9: Call 0.Method_arg_50 (var_A4)
  loc_1088FD5: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1088FE8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22034
  'Data Table: 483B14
  Dim Me As Recordset15
  loc_E2201B: Me.Requery -1
  loc_E2202B: Me.Requery -1
  loc_E22030: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12FEB08
  'Data Table: 483B14
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_483B2C As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_11C As String
  Dim var_114 As TextBox
  Dim var_B0 As Variant
  Dim var_148 As String
  Dim var_1F8 As Variant
  Dim var_118 As String
  Dim var_21C As Variant
  Dim var_230 As Variant
  loc_12FE488: On Error Goto loc_12FEAB4
  loc_12FE48F: var_86 = CByte(0) 'Byte
  loc_12FE49E: Set var_90 = Me.Txt
  loc_12FE4A4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_12FE4CD: If (Proc_6_27_EA61EC(var_94, "Item Group") = 0) Then
  loc_12FE4D7:   Call Txt_GotFocus(CInt(2))
  loc_12FE4DC:   Exit Sub
  loc_12FE4DD: End If
  loc_12FE4E8: Set var_90 = Me.Txt
  loc_12FE4EE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94)
  loc_12FE517: If (Proc_6_27_EA61EC(var_94, "Type") = 0) Then
  loc_12FE521:   Call Txt_GotFocus(CInt(3))
  loc_12FE526:   Exit Sub
  loc_12FE527: End If
  loc_12FE52A: Call Proc_114_35_10F7E04(var_9E)
  loc_12FE535: If (var_9E = &HFF) Then
  loc_12FE538:   Exit Sub
  loc_12FE539: End If
  loc_12FE53D: Set var_90 = Me.TOpCtrl1
  loc_12FE543: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12FE55C: If (CStr() = "Add") Then
  loc_12FE565:   var_D4 = 0
  loc_12FE582:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemGrp Where Site_Code='" & MemVar_1F95070
  loc_12FE589:   var_B4 = CStr() & "' and isnumeric(SUBSTRING(Code,3,4))=1 and Code <>'MISC'"
  loc_12FE592:   unk_483B2C.Execute var_B4, var_B0, -1
  loc_12FE59A:   var_90 = var_90.Fields
  loc_12FE5A2:   var_D4 = var_94.Item(var_94)
  loc_12FE5AA:   var_98 = var_98.Value
  loc_12FE5E3:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_12FE609:   var_E4 = Format(CStr(var_E4), "0000")
  loc_12FE611:   var_108 = (1 + var_E4)
  loc_12FE61C:   global_68 = CStr(var_108)
  loc_12FE631: Else
  loc_12FE64E:   var_94 = Me.Fields.Item("Code")
  loc_12FE665:   global_68 = CStr(var_94.Value)
  loc_12FE676: End If
  loc_12FE67F: unk_483B2C.BeginTrans var_10C
  loc_12FE688: var_86 = CByte(1) 'Byte
  loc_12FE690: Set var_90 = Me.TOpCtrl1
  loc_12FE696: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_12FE6AF: If (CStr(var_F8) = "Add") Then
  loc_12FE6C9:   var_9C = "Insert Into ItemGrp(Code,Name,Type,RestCode,CatType,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,CommodityCode) Values('" & global_68
  loc_12FE6D0:   var_E8 = var_9C & "','"
  loc_12FE6E1:   Set var_90 = Me.Txt
  loc_12FE6E7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, var_B4, var_E8)
  loc_12FE6EF:   var_21C = var_94.Text
  loc_12FE6F8:   var_110 = -1 & var_B4
  loc_12FE6FF:   var_11C = var_110 & "','"
  loc_12FE710:   Set var_98 = Me.Txt
  loc_12FE716:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_114, var_118)
  loc_12FE71E:   var_11C = var_114.Text
  loc_12FE751:   Set var_130 = Me.Txt
  loc_12FE757:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_134)
  loc_12FE77A:   var_148 = var_E4 & Proc_6_38_E69628(CVar(var_134), var_220 & var_118 & "','" & MemVar_1F95078 & "PURC" & "','") & "','" & MemVar_1F95070
  loc_12FE795:   var_E4 = Date
  loc_12FE7A0:   Proc_6_7_F26918(var_F8, var_E4)
  loc_12FE7D3:   Set var_1A4 = Me.Txt
  loc_12FE7D9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1A8)
  loc_12FE7F9:   var_1F8 = CVar(var_148 & "','" & MemVar_1F950C8 & "',") & var_F8 & ",'A','" & CVar(MemVar_1F95078) & "','" & Trim(CVar(var_1A8)) & "')" 
  loc_12FE807:   unk_483B2C.Execute CStr(var_1F8), , 
  loc_12FE864: Else
  loc_12FE882:   Set var_90 = Me.Txt
  loc_12FE888:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, var_9C, "UPDATE ItemGrp SET Name='")
  loc_12FE890:   var_260 = var_94.Text
  loc_12FE899:   var_B4 = -1 & var_9C
  loc_12FE8A0:   var_110 = var_B4 & "',Type='"
  loc_12FE8B1:   Set var_98 = Me.Txt
  loc_12FE8B7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_114, var_E8)
  loc_12FE8BF:   var_110 = var_114.Text
  loc_12FE8EB:   var_F8 = CVar(var_220 & var_E8 & "',SITE_CODE='" & MemVar_1F95070 & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_12FE8FC:   Proc_6_7_F26918(var_E4, Date)
  loc_12FE904:   var_108 = var_F8 & var_E4 
  loc_12FE908:   var_C4 = " ,U_AE='E',CatType='"
  loc_12FE91C:   Set var_130 = Me.Txt
  loc_12FE922:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_134)
  loc_12FE94E:   Set var_1A4 = Me.Txt
  loc_12FE954:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1A8)
  loc_12FE981:   var_230 = var_108 & var_C4 & CVar(Proc_6_38_E69628(CVar(var_134))) & "',CommodityCode='" & Trim(CVar(var_1A8)) & "' WHERE Code='" & CVar(global_68) 
  loc_12FE998:   unk_483B2C.Execute CStr(var_230 & "'"), , 
  loc_12FE9E8: End If
  loc_12FE9EE: unk_483B2C.CommitTrans
  loc_12FE9F7: var_86 = CByte(0) 'Byte
  loc_12FEA06: Me.Requery -1
  loc_12FEA16: Me.Requery -1
  loc_12FEA43: Me.Find "Code='" & global_68 & "'", 0, 1
  loc_12FEA53: Set var_90 = Me.TOpCtrl1
  loc_12FEA59: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_12FEA72: If (CStr() = "Add") Then
  loc_12FEA75:   Call TopCtrl1_UnknownEvent_A()
  loc_12FEA7A:   Exit Sub
  loc_12FEA7B: End If
  loc_12FEA90: var_9C = "INI"
  loc_12FEA9E: Call Proc_114_32_E6EDF8(Proc_5_1_100EC1C(var_9C, Me))
  loc_12FEAA9: Call Proc_114_36_EF57A8(global_56)
  loc_12FEAAE: Call Proc_114_34_128E70C()
  loc_12FEAB3: Exit Sub
  loc_12FEAB4: ' Referenced from: 12FE488
  loc_12FEABD: If (CInt(var_86) = 1) Then
  loc_12FEAC6:   unk_483B2C.RollbackTrans
  loc_12FEACB: End If
  loc_12FEAD3: Set var_90 = Err()
  loc_12FEAD9: Call 0.Method_arg_2C (var_9C)
  loc_12FEAF2: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12FEB05: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E65C78
  'Data Table: 483B14
  loc_E65C48: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E65C4B:   Call DGHelp_UnknownEvent_9()
  loc_E65C50: End If
  loc_E65C6C: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E65C6F:   Call DGRest_UnknownEvent_9()
  loc_E65C74: End If
  loc_E65C74: Exit Sub
End Sub

Public Function global_52Get() '48477C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '48478B
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC2154
  'Data Table: 483B14
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC20CA: On Error Goto loc_EC210F
  loc_EC20D3: Me.MoveFirst
  loc_EC20ED: var_8C = "code='" & MyValue
  loc_EC20FD: Me.Find var_8C & "'", 0, 1
  loc_EC2109: Call Proc_114_34_128E70C(var_A0)
  loc_EC210E: Exit Sub
  loc_EC210F: ' Referenced from: EC20CA
  loc_EC2117: Set var_A4 = Err()
  loc_EC211D: Call 0.Method_arg_2C (var_8C)
  loc_EC213E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC2151: Exit Sub
  loc_EC2152: Exit Sub
End Sub

Public Sub Proc_114_32_E6EDF8(arg_C) 'E6EDF8
  'Data Table: 483B14
  Dim var_98 As TextBox
  loc_E6EDAA: Set var_8C = Me.Txt
  loc_E6EDB0: Call 0.Method_Proc_114_32_E6EDF8C (var_8E, var_86)
  loc_E6EDBD: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_E6EDD3:   Set var_8C = Me.Txt
  loc_E6EDD9:   Call 0.Method_Proc_114_32_E6EDF80 (CInt(var_86), var_98)
  loc_E6EDE1:   var_98.Enabled = arg_C
  loc_E6EDF0: Next var_92 'Byte
  loc_E6EDF6: Exit Sub
End Sub

Public Sub Proc_114_33_EA9488
  'Data Table: 483B14
  Dim var_98 As TextBox
  loc_EA93FE: global_72 = vbNullString
  loc_EA9410: Set var_8C = Me.Txt
  loc_EA9416: Call 0.Method_Proc_114_33_EA9488C (var_8E, var_86)
  loc_EA9423: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_EA9439:   Set var_8C = Me.Txt
  loc_EA943F:   Call 0.Method_Proc_114_33_EA94880 (CInt(var_86), var_98)
  loc_EA9447:   var_98.Text = vbNullString
  loc_EA9463:   Set var_8C = Me.Txt
  loc_EA9469:   Call 0.Method_Proc_114_33_EA94880 (CInt(var_86), var_98)
  loc_EA9471:   var_98.Tag = vbNullString
  loc_EA9480: Next var_92 'Byte
  loc_EA9486: Exit Sub
End Sub

Public Sub Proc_114_34_128E70C
  'Data Table: 483B14
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_483B2C As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As TextBox
  loc_128E164: On Error Goto loc_128E6C6
  loc_128E16D: Proc_183_45_E5CCA8(global_56)
  loc_128E1C8: unk_483B2C.Execute CStr("Select U_Name,U_AE,U_EntDt From ItemGrp where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_128E1D3: Set var_88 = var_118
  loc_128E227: var_118 = var_88.Fields
  loc_128E290: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_128E2D5: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_128E34F: var_11C = var_88.Fields.Item("U_AE")
  loc_128E368: var_114 = "entdt : "
  loc_128E373: var_F0 = "Last Update : "
  loc_128E3B0: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), var_F0, var_114))
  loc_128E3F5: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_128E444: If (Me.RecordCount <= 0) Then
  loc_128E447:   Call Proc_114_33_EA9488()
  loc_128E44F: Else
  loc_128E483:   global_68 = CStr(Me.Fields.Item("ItemGroup").Value)
  loc_128E4D0:   Set var_118 = Me.Txt
  loc_128E4D6:   Call 0.Method_Proc_114_34_128E70C0 (CInt(2), var_11C)
  loc_128E4DE:   var_11C.Text = CStr(Me.Fields.Item("ItemGroup").Value)
  loc_128E530:   Set var_118 = Me.Txt
  loc_128E536:   Call 0.Method_Proc_114_34_128E70C0 (CInt(2), var_11C)
  loc_128E53E:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_128E58D:   Set var_118 = Me.Txt
  loc_128E593:   Call 0.Method_Proc_114_34_128E70C0 (CInt(5), var_11C)
  loc_128E59B:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CommodityCode")))
  loc_128E5E8:   Set var_118 = Me.Txt
  loc_128E5EE:   Call 0.Method_Proc_114_34_128E70C0 (CInt(1), var_11C)
  loc_128E5F6:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RestName")))
  loc_128E646:   Set var_118 = Me.Txt
  loc_128E64C:   Call 0.Method_Proc_114_34_128E70C0 (CInt(3), var_11C)
  loc_128E654:   var_11C.Text = CStr(Me.Fields.Item("Type").Value)
  loc_128E695:   var_F4 = Proc_6_38_E69628(CVar(Me.Fields.Item("CatType")))
  loc_128E6A3:   Set var_118 = Me.Txt
  loc_128E6A9:   Call 0.Method_Proc_114_34_128E70C0 (CInt(4), var_11C)
  loc_128E6B1:   var_11C.Text = var_F4
  loc_128E6C5: End If
  loc_128E6C5: Exit Sub
  loc_128E6C6: ' Referenced from: 128E164
  loc_128E6CE: Set var_8C = Err()
  loc_128E6D4: Call 0.Method_arg_2C (var_F4)
  loc_128E6F5: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_128E708: Exit Sub
End Sub

Public Sub Proc_114_35_10F7E04
  'Data Table: 483B14
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_483B2C As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_C0 As String
  loc_10F7B27: If (Me.RecordCount = 0) Then
  loc_10F7B2A:   Proc_114_35_10F7E04 = 
  loc_10F7B30: End If
  loc_10F7B34: Set var_90 = Me.TOpCtrl1
  loc_10F7B3A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F7B53: If (CStr() = "Add") Then
  loc_10F7B5C:   var_F4 = 0
  loc_10F7B91:   Set var_90 = Me.Txt
  loc_10F7B97:   Call 0.Method_Proc_114_35_10F7E040 (CInt(2), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10F7BC0:   Set var_B8 = Me.Txt
  loc_10F7BC6:   Call 0.Method_Proc_114_35_10F7E040 (CInt(1), var_BC, var_C0, var_E4 & var_AC & "' And RestCode='")
  loc_10F7BCE:   var_F4 = var_BC.Tag
  loc_10F7BD7:   var_C8 = var_F8 & var_C0
  loc_10F7BE7:   unk_483B2C.Execute var_C8 & "'", var_108, 
  loc_10F7BEF:    = var_A8.Text.Fields
  loc_10F7BF7:    = var_E4.Item()
  loc_10F7BFF:    = var_F8.Value
  loc_10F7C3A:   If (var_108 > 0) Then
  loc_10F7C48:     var_108 = "Information"
  loc_10F7C58:     var_A0 = "Duplicate Name"
  loc_10F7C5E:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_10F7C79:     Set var_90 = Me.Txt
  loc_10F7C7F:     Call 0.Method_Proc_114_35_10F7E040 (CInt(2))
  loc_10F7C87:     var_A8.SetFocus
  loc_10F7C98:     Proc_114_35_10F7E04 = &HFF
  loc_10F7C9E:   End If
  loc_10F7CA1: Else
  loc_10F7CA7:   var_F4 = 0
  loc_10F7CDC:   Set var_90 = Me.Txt
  loc_10F7CE2:   Call 0.Method_Proc_114_35_10F7E040 (CInt(2), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (Name='", var_A0, -1)
  loc_10F7D1C:   Set var_B8 = Me.Txt
  loc_10F7D22:   Call 0.Method_Proc_114_35_10F7E040 (CInt(1), var_BC, var_C8, var_E4 & var_AC & "' And Name<>'" & global_72 & "') And RestCode='")
  loc_10F7D2A:   var_F4 = var_BC.Tag
  loc_10F7D43:   unk_483B2C.Execute var_F8 & var_C8 & "'", var_108, var_A8
  loc_10F7D4B:    = var_A8.Text.Fields
  loc_10F7D53:    = var_E4.Item()
  loc_10F7D5B:    = var_F8.Value
  loc_10F7D9A:   If (var_108 > 0) Then
  loc_10F7DBE:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_10F7DD9:     Set var_90 = Me.Txt
  loc_10F7DDF:     Call 0.Method_Proc_114_35_10F7E040 (CInt(2))
  loc_10F7DE7:     var_A8.SetFocus
  loc_10F7DF8:     Proc_114_35_10F7E04 = &HFF
  loc_10F7DFE:   End If
  loc_10F7DFE: End If
  loc_10F7DFE: Proc_114_35_10F7E04 = var_A8
End Sub

Public Sub Proc_114_36_EF57A8
  'Data Table: 483B14
  loc_EF56EC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF56FE:   Me.DGHelp.Visible = False
  loc_EF5706: End If
  loc_EF5722: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF5734:   Me.DGRest.Visible = False
  loc_EF573C: End If
  loc_EF5757: If (Me.FrmList.Visible = &HFF) Then
  loc_EF5766:   Me.FrmList.Visible = False
  loc_EF576E: End If
  loc_EF578A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF579C:   Me.FGPoint.Visible = False
  loc_EF57A4: End If
  loc_EF57A4: Exit Sub
End Sub

Public Sub Proc_114_37_E91DC8(arg_C) 'E91DC8
  'Data Table: 483B14
  Dim var_10C As TextBox
  loc_E91D5C: Call Proc_114_36_EF57A8()
  loc_E91D98: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E91D9B:   Call TopCtrl1_UnknownEvent_16()
  loc_E91DA3: Else
  loc_E91DAD:   Set var_108 = Me.Txt
  loc_E91DB3:   Call 0.Method_Proc_114_37_E91DC80 (arg_C)
  loc_E91DBB:   var_10C.SetFocus
  loc_E91DC7: End If
  loc_E91DC7: Exit Sub
End Sub
