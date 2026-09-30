VERSION 5.00
Begin VB.Form frmFdLeaderRev
  Caption = "Leader Revenue Allocation"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10035
  ClientHeight = 5640
  StartUpPosition = 3 'Windows Default
  Begin Frame Frame2
    Caption = "Frame2"
    BackColor = &HF8D1B1&
    ForeColor = &H80000008&
    Left = -30
    Top = -225
    Width = 10110
    Height = 5865
    Visible = 0   'False
    TabIndex = 1
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 3
      BackColor = &HFFFFFF&
      Left = 1815
      Top = 1590
      Width = 1335
      Height = 270
      TabIndex = 13
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 2
      BackColor = &HFFFFFF&
      Left = 1815
      Top = 1305
      Width = 1320
      Height = 270
      TabIndex = 12
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 1
      BackColor = &HFFFFFF&
      Left = 1815
      Top = 1020
      Width = 870
      Height = 270
      TabIndex = 11
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 0
      BackColor = &HFFFFFF&
      Left = 1815
      Top = 735
      Width = 870
      Height = 270
      TabIndex = 10
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin CommandButton Command5
      Caption = "&Ok"
      Left = 7080
      Top = 3870
      Width = 1140
      Height = 870
      TabIndex = 9
      BeginProperty Font
        Name = "Verdana"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HE0E0E0&
      ForeColor = &H80000012&
      Left = 855
      Top = 3690
      Width = 810
      Height = 240
      Visible = 0   'False
      TabIndex = 4
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin TextBox TxtGrid
      Index = 1
      BackColor = &HE0E0E0&
      ForeColor = &H80000012&
      Left = 5190
      Top = 630
      Width = 690
      Height = 195
      Visible = 0   'False
      TabIndex = 3
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin DataGrid DGRevenue
      Left = 6135
      Top = 1995
      Width = 3150
      Height = 1395
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 2
    End
    Begin MSHFlexGrid FGrid1
      Left = 90
      Top = 2895
      Width = 9915
      Height = 2910
      TabIndex = 5
    End
    Begin MSHFlexGrid FGrid2
      Left = 4695
      Top = 585
      Width = 5325
      Height = 2100
      TabIndex = 6
    End
    Begin Label Lbl
      Caption = "Leader Information"
      Index = 3
      BackColor = &HC00000&
      ForeColor = &H80000005&
      Left = 15
      Top = 360
      Width = 4680
      Height = 240
      TabIndex = 18
      Alignment = 2 'Center
      AutoSize = -1  'True
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
    Begin Label Lbl
      Caption = "Check Out Date"
      Index = 2
      ForeColor = &H0&
      Left = 105
      Top = 1590
      Width = 1395
      Height = 240
      Visible = 0   'False
      TabIndex = 17
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
    Begin Label Lbl
      Caption = "Check In Date"
      Index = 1
      ForeColor = &H0&
      Left = 105
      Top = 1305
      Width = 1245
      Height = 240
      Visible = 0   'False
      TabIndex = 16
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
    Begin Label Lbl
      Caption = "Leader FolioNo"
      Index = 0
      ForeColor = &H0&
      Left = 105
      Top = 1035
      Width = 1410
      Height = 240
      Visible = 0   'False
      TabIndex = 15
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
    Begin Label Lbl
      Caption = "Leader Room No."
      Index = 49
      ForeColor = &H0&
      Left = 105
      Top = 765
      Width = 1605
      Height = 240
      Visible = 0   'False
      TabIndex = 14
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
    Begin Label Lbl
      Caption = "Leader Revenue Allocation"
      Index = 57
      BackColor = &HC00000&
      ForeColor = &H80000005&
      Left = 4695
      Top = 360
      Width = 5325
      Height = 225
      TabIndex = 8
      Alignment = 2 'Center
      AutoSize = -1  'True
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
    Begin Label Lbl
      Caption = "Rooms/Leader Allocation"
      Index = 58
      BackColor = &HC00000&
      ForeColor = &H80000005&
      Left = 90
      Top = 2685
      Width = 9915
      Height = 225
      TabIndex = 7
      Alignment = 2 'Center
      AutoSize = -1  'True
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
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 5265
    Width = 10035
    Height = 375
    Visible = 0   'False
    TabIndex = 0
  End
End

Attribute VB_Name = "frmFdLeaderRev"

Private global_52 As Integer
Private global_54 As Integer

Private Sub FGrid2_UnknownEvent_0 'E61044
  'Data Table: 4421D8
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6100F: Me.FGrid2.BackColorSel = CVar(CLng("14737632"))
  loc_E61022: Set var_A8 = Me.TxtGrid
  loc_E61028: Call 0.Method_FGrid2_UnknownEvent_00 (1, var_AC)
  loc_E61030: var_AC.Visible = False
  loc_E6103C: Call Proc_122_25_FA7D28()
  loc_E61041: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_1 'DFBD98
  'Data Table: 4421D8
  loc_DFBD94: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_8 'E1FFE0
  'Data Table: 4421D8
  loc_E1FFD7: Me.FGrid2.CellBackColor = CVar(CLng("16777215"))
  loc_E1FFDF: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 'E0058C
  'Data Table: 4421D8
  loc_E00584: Call Proc_122_21_E394E0()
  loc_E00589: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_A '1034D1C
  'Data Table: 4421D8
  Dim var_98 As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_BC As String
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1034AE0: Set var_88 = Me.TopCtrl1
  loc_1034AE6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1034AFB: If ( = "Browse") Then
  loc_1034AFE:   Exit Sub
  loc_1034AFF: End If
  loc_1034B73: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid2.Tag))) = CDbl((CLng(Me.FGrid2.Rows) - (CLng(Me.FGrid2.Rows) - 1))))) Then
  loc_1034B89:   Me.FGrid2.CellBackColor = CVar(CLng("16777215"))
  loc_1034B99:   var_BC = "+{Tab}"
  loc_1034B9F:   Proc_303_0_FBACC8(CStr(Me.FGrid2.Tag), 0)
  loc_1034BA9:   KeyCode = 0
  loc_1034BAF: Else
  loc_1034C06:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid2.Tag))) = CDbl((CLng(Me.FGrid2.Rows) - 1)))) Then
  loc_1034C1C:     Me.FGrid2.CellBackColor = CVar(CLng("16777215"))
  loc_1034C26:     KeyCode = 0
  loc_1034C29:   End If
  loc_1034C29: End If
  loc_1034C2F: global_52 = KeyCode
  loc_1034C55: Me.FGrid2.Tag = CVar(CStr(CLng(Me.FGrid2.Row)))
  loc_1034C79: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_1034C8F:   var_EC = CLng(Me.FGrid2.Col)
  loc_1034C9F:   If Not (var_EC = CLng(1)) Then
  loc_1034CA9:     If (var_EC = CLng(3)) Then
  loc_1034CAC:     End If
  loc_1034CBF:     var_98 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1034CD7:     var_FC = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_1034CDC:     var_11C = vbNullString
  loc_1034CE6:     Set var_C4 = Me.FGrid2
  loc_1034CEC:     LateIdCallSt
  loc_1034D04:   End If
  loc_1034D04: End If
  loc_1034D0A: If (KeyCode = &HD) Then
  loc_1034D12:   global_54 = 0
  loc_1034D15: End If
  loc_1034D17: KeyCode = 0
  loc_1034D1A: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_B 'E0E710
  'Data Table: 4421D8
  loc_E0E701: Call FGrid2_UnknownEvent_C()
  loc_E0E70B: global_54 = 0
  loc_E0E70E: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_C '10E4A04
  'Data Table: 4421D8
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_C0 As String
  Dim var_DA As Integer
  Dim var_C4 As TextBox
  Dim var_D4 As TextBox
  loc_10E46F8: Set var_88 = Me.TopCtrl1
  loc_10E46FE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_10E4713: If ( = "Browse") Then
  loc_10E4716:   Exit Sub
  loc_10E4717: End If
  loc_10E472A: var_BC = CLng(Me.FGrid2.Col)
  loc_10E473A: If (var_BC = CLng(1)) Then
  loc_10E4741:   Set var_D4 = Me.FGrid2
  loc_10E4765:   var_C0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_10E4792:   Set var_C4 = var_D4
  loc_10E47A4:   Proc_6_63_110B734(Me, var_C4, Me.TxtGrid, 1, 0)
  loc_10E47CC:   Set var_88 = Me.TxtGrid
  loc_10E47D2:   Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_C4, var_C0, Asc(var_C0))
  loc_10E47DA:   0 = var_C4.Text
  loc_10E47F3:   If (Len(var_C0) <= 1) Then
  loc_10E4802:     Set var_88 = Me.TxtGrid
  loc_10E4808:     Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_C4, var_C0)
  loc_10E4810:     var_DA = var_C4.Text
  loc_10E4821:     Set var_C8 = Me.TxtGrid
  loc_10E4827:     Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_D4)
  loc_10E482F:     var_D4.Text = var_C0
  loc_10E4842:   End If
  loc_10E484E:   Set var_88 = Me.TxtGrid
  loc_10E4854:   Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_C4)
  loc_10E486E:   Set var_C8 = Me.TxtGrid
  loc_10E4874:   Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_D4)
  loc_10E487C:   var_D4.SelStart = Len(var_C4.Text)
  loc_10E4892: Else
  loc_10E4899:   If (var_BC = CLng(3)) Then
  loc_10E48A0:     Set var_D4 = Me.FGrid2
  loc_10E48C4:     var_C0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_10E48F1:     Set var_C4 = var_D4
  loc_10E4903:     Proc_6_63_110B734(Me, var_C4, Me.TxtGrid, 1, &HFF)
  loc_10E492B:     Set var_88 = Me.TxtGrid
  loc_10E4931:     Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_C4, var_C0, Asc(var_C0))
  loc_10E4939:     0 = var_C4.Text
  loc_10E4952:     If (Len(var_C0) <= 1) Then
  loc_10E4961:       Set var_88 = Me.TxtGrid
  loc_10E4967:       Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_C4, var_C0)
  loc_10E496F:       var_DA = var_C4.Text
  loc_10E4980:       Set var_C8 = Me.TxtGrid
  loc_10E4986:       Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_D4)
  loc_10E498E:       var_D4.Text = var_C0
  loc_10E49A1:     End If
  loc_10E49AD:     Set var_88 = Me.TxtGrid
  loc_10E49B3:     Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_C4)
  loc_10E49CD:     Set var_C8 = Me.TxtGrid
  loc_10E49D3:     Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_D4)
  loc_10E49DB:     var_D4.SelStart = Len(var_C4.Text)
  loc_10E49EE:   End If
  loc_10E49EE: End If
  loc_10E49F8: If (CLng(KeyCode) <> &HD) Then
  loc_10E4A00:   global_54 = &HFF
  loc_10E4A03: End If
  loc_10E4A03: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_D '102AB30
  'Data Table: 4421D8
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  loc_102A900: Set var_90 = Me.TopCtrl1
  loc_102A906: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_102A91B: If ( = "Browse") Then
  loc_102A91E:   Exit Sub
  loc_102A91F: End If
  loc_102A93C: If (CLng(Me.FGrid2.ColSel) = CLng(0)) Then
  loc_102A93F:   Exit Sub
  loc_102A940: End If
  loc_102A951: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_102A973:   If (CLng(Me.FGrid2.Row) >= 1) Then
  loc_102A9AD:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_102A9CF:       If (CLng(Me.FGrid2.Rows) > 2) Then
  loc_102A9E5:         var_A0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_102A9EE:         Set var_114 = Me.FGrid2
  loc_102AA09:       Else
  loc_102AA1C:         Me.FGrid2.Rows = 1
  loc_102AA39:         var_C0 = CVar(CStr(CLng(Me.FGrid2.Rows))) 'String
  loc_102AA41:         Set var_114 = Me.FGrid2
  loc_102AA70:         Me.FGrid2.FixedRows = 1
  loc_102AA78:       End If
  loc_102AA9D:       For var_118 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_118 'Integer
  loc_102AAA7:         var_A0 = CVar(CLng(var_86)) 'Long
  loc_102AAAF:         var_E0 = CVar(CLng(0)) 'Long
  loc_102AAB9:         var_B0 = CVar(CStr(var_86)) 'String
  loc_102AAC1:         Set var_90 = Me.FGrid2
  loc_102AAC7:         LateIdCallSt
  loc_102AAD8:       Next var_118 'Integer
  loc_102AADD:     End If
  loc_102AAE0:   Else
  loc_102AB01:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_102AB11:   End If
  loc_102AB15:   Set var_90 = Me.FGrid2
  loc_102AB26: End If
  loc_102AB2B: Set var_8C = Nothing
  loc_102AB2E: Exit Sub
  loc_102AB2F: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_13 'E1FEA0
  'Data Table: 4421D8
  loc_E1FE97: Me.FGrid2.CellBackColor = CVar(CLng("14737632"))
  loc_E1FE9F: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_14 'E1FF40
  'Data Table: 4421D8
  loc_E1FF37: Me.FGrid2.CellBackColor = CVar(CLng("16777215"))
  loc_E1FF3F: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_15 'E45350
  'Data Table: 4421D8
  Dim var_8C As TextBox
  loc_E45324: Call Proc_122_25_FA7D28()
  loc_E45334: Set var_88 = Me.TxtGrid
  loc_E4533A: Call 0.Method_FGrid2_UnknownEvent_150 (1, var_8C)
  loc_E45342: var_8C.Visible = False
  loc_E4534E: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10DF928
  'Data Table: 4421D8
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_10E As Integer
  Dim var_114 As Long
  Dim var_118 As Long
  loc_10DF628: Call Proc_122_25_FA7D28()
  loc_10DF640: Me.FGrid1.CellBackColor = CVar(CLng("16777215"))
  loc_10DF65B: var_94 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DF664: Set var_BC = Me.FGrid1
  loc_10DF69A: Set var_104 = Me.TxtGrid
  loc_10DF6A0: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid1.TextMatrix)))
  loc_10DF6A8: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_10DF6C9: var_10E = Index
  loc_10DF6D2: If (var_10E = 0) Then
  loc_10DF6E8:   var_114 = CLng(Me.FGrid1.Col)
  loc_10DF6F8:   If Not (var_114 = CLng(3)) Then
  loc_10DF702:     If Not (var_114 = CLng(4)) Then
  loc_10DF70C:       If Not (var_114 = CLng(5)) Then
  loc_10DF716:         If (var_114 = CLng(6)) Then
  loc_10DF719:         End If
  loc_10DF719:       End If
  loc_10DF719:     End If
  loc_10DF728:     Set var_A8 = Me.TxtGrid
  loc_10DF72E:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_10DF736:     var_BC.MaxLength = var_114
  loc_10DF742:   End If
  loc_10DF745: Else
  loc_10DF74B:   If (var_10E = 1) Then
  loc_10DF761:     var_118 = CLng(Me.FGrid2.Col)
  loc_10DF771:     If (var_118 = CLng(1)) Then
  loc_10DF783:       Set var_A8 = Me.TxtGrid
  loc_10DF789:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H32)
  loc_10DF791:       var_BC.MaxLength = var_118
  loc_10DF7E7:       If ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Then
  loc_10DF7EA:         Exit Sub
  loc_10DF7EB:       End If
  loc_10DF7FE:       var_94 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_10DF806:       var_DC = CVar(CLng(1)) 'Long
  loc_10DF815:       var_CC = Me.FGrid2.TextMatrix)
  loc_10DF839:       If (CStr(var_CC) <> vbNullString) Then
  loc_10DF845:         Me.var_CC.MoveFirst
  loc_10DF85D:         var_94 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_10DF865:         var_DC = CVar(CLng(2)) 'Long
  loc_10DF86E:         Set var_BC = Me.FGrid2
  loc_10DF874:         var_CC = var_BC.TextMatrix)
  loc_10DF8AC:         Me.var_CC.Find "Code ='" & CStr(var_CC) & "'", 0, 1
  loc_10DF8DF:         If (Me.Recordset15.EOF = &HFF) Then
  loc_10DF8EB:           Me.Recordset15.MoveFirst
  loc_10DF8F0:         End If
  loc_10DF8F0:       End If
  loc_10DF8F3:     Else
  loc_10DF8FA:       If (var_118 = CLng(3)) Then
  loc_10DF90C:         Set var_A8 = Me.TxtGrid
  loc_10DF912:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HA, var_138, var_CC, var_DC)
  loc_10DF91A:         var_BC.MaxLength = var_94
  loc_10DF926:       End If
  loc_10DF926:     End If
  loc_10DF926:   End If
  loc_10DF926: End If
  loc_10DF926: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '119B158
  'Data Table: 4421D8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_9A As Integer
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_BC As Long
  Dim var_D0 As Variant
  Dim var_94 As DataGrid
  loc_119AD50: On Error Goto loc_119B14F
  loc_119AD5D: If (CLng(Shift) = &H1B) Then
  loc_119AD6D:   Set var_88 = Me.TxtGrid
  loc_119AD73:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_119AD8D:   Set var_94 = Me.TxtGrid
  loc_119AD93:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_119AD9B:   var_98.Text = var_8C.Tag
  loc_119ADB7:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_119ADBC:   Call Proc_122_25_FA7D28(arg_14)
  loc_119ADC5:   Set var_88 = Me.FGrid1
  loc_119ADE2:   Set var_88 = Me.TxtGrid
  loc_119ADE8:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_119ADF0:   var_8C.Visible = False
  loc_119ADFC:   Exit Sub
  loc_119ADFD: End If
  loc_119AE00: var_9A = KeyCode
  loc_119AE09: If (var_9A = 0) Then
  loc_119AE1F:   var_B0 = CLng(Me.FGrid1.Col)
  loc_119AE2F:   If Not (var_B0 = CLng(3)) Then
  loc_119AE39:     If Not (var_B0 = CLng(4)) Then
  loc_119AE43:       If Not (var_B0 = CLng(5)) Then
  loc_119AE4D:         If (var_B0 = CLng(6)) Then
  loc_119AE50:         End If
  loc_119AE50:       End If
  loc_119AE50:     End If
  loc_119AE5F:     Set var_88 = Me.TxtGrid
  loc_119AE65:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &H23)
  loc_119AE6D:     var_8C.MaxLength = var_B0
  loc_119AE83:     If (CLng(Shift) = &HD) Then
  loc_119AE8C:       Call Proc_122_23_1187DA8(KeyCode, var_B2)
  loc_119AE97:       If (var_B2 = &HFF) Then
  loc_119AEA5:         Set var_98 = Me.TxtGrid
  loc_119AED0:         Set var_8C = var_98
  loc_119AEDF:         Proc_6_62_1254E68(Me.FGrid1, var_8C, KeyCode, Shift, global_54, CByte(7))
  loc_119AEEF:       End If
  loc_119AEEF:     End If
  loc_119AEEF:   End If
  loc_119AEF2: Else
  loc_119AEF8:   If (var_9A = 1) Then
  loc_119AF0E:     var_BC = CLng(Me.FGrid2.Col)
  loc_119AF1E:     If (var_BC = CLng(1)) Then
  loc_119AF2D:       Set var_88 = Me.TxtGrid
  loc_119AF33:       Call 0.Method_TxtGrid_KeyDown0 (1, var_8C, var_C0, var_BC, 0)
  loc_119AF3B:       0 = var_8C.Left
  loc_119AF52:       Me.DGRevenue.Left = CVar(var_C0)
  loc_119AF6C:       Set var_94 = Me.TxtGrid
  loc_119AF72:       Call 0.Method_TxtGrid_KeyDown0 (1, var_98, var_E4)
  loc_119AF7A:       0 = var_98.Height
  loc_119AF8B:       Set var_88 = Me.TxtGrid
  loc_119AF91:       Call 0.Method_TxtGrid_KeyDown0 (1, var_8C, var_C0)
  loc_119AF99:       var_9A = var_8C.Top
  loc_119AFA5:       var_D0 = CVar((var_C0 + var_E4)) 'Single
  loc_119AFB4:       Me.DGRevenue.Top = CVar(var_C0)
  loc_119AFDE:       Set var_98 = Nothing
  loc_119B01B:       Proc_6_69_134A630(Me.DGRevenue, Me.TxtGrid, KeyCode, global_96, Shift, &HFF)
  loc_119B039:       If (CLng(Shift) = &HD) Then
  loc_119B042:         Call Proc_122_23_1187DA8(KeyCode, var_B2, 1, Nothing)
  loc_119B04D:         If (var_B2 = &HFF) Then
  loc_119B05B:           Set var_98 = Me.TxtGrid
  loc_119B086:           Set var_8C = var_98
  loc_119B095:           Proc_6_62_1254E68(Me.FGrid2, var_8C, KeyCode, Shift, global_54, CByte(6))
  loc_119B0A5:         End If
  loc_119B0A5:       End If
  loc_119B0A8:     Else
  loc_119B0AF:       If (var_BC = CLng(3)) Then
  loc_119B0C1:         Set var_88 = Me.TxtGrid
  loc_119B0C7:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &HA, 0, 0)
  loc_119B0CF:         var_8C.MaxLength = 0
  loc_119B0E5:         If (CLng(Shift) = &HD) Then
  loc_119B0EE:           Call Proc_122_23_1187DA8(KeyCode, var_B2, var_98)
  loc_119B0F9:           If (var_B2 = &HFF) Then
  loc_119B13F:             Proc_6_62_1254E68(Me.FGrid2, Me.TxtGrid, KeyCode, Shift, global_54, 3)
  loc_119B14F:           End If
  loc_119B14F:         End If
  loc_119B14F:         ' Referenced from: 119AD50
  loc_119B14F:       End If
  loc_119B14F:     End If
  loc_119B14F:   End If
  loc_119B14F: End If
  loc_119B14F: Proc_6_60_E63754(0, 0, 0)
  loc_119B154: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EFF858
  'Data Table: 4421D8
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_EFF78C: If (KeyAscii = 1) Then
  loc_EFF7A2:   var_A0 = CLng(Me.FGrid2.Col)
  loc_EFF7B2:   If (var_A0 = CLng(1)) Then
  loc_EFF7D1:     If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_EFF7D8:       Set var_AC = Me.TxtGrid
  loc_EFF7E3:       var_A4 = "Name"
  loc_EFF802:       Proc_6_89_1470B00(var_AC, KeyAscii, global_96, arg_10)
  loc_EFF811:     End If
  loc_EFF814:   Else
  loc_EFF81B:     If (var_A0 = CLng(3)) Then
  loc_EFF828:       Set var_8C = Me.TxtGrid
  loc_EFF82E:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_EFF849:       Proc_6_42_129B55C(var_AC, arg_10, 7, 2)
  loc_EFF855:     End If
  loc_EFF855:   End If
  loc_EFF855: End If
  loc_EFF855: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDB9D8
  'Data Table: 4421D8
  loc_EDB924: On Error Goto loc_EDB9D0
  loc_EDB933: If (KeyCode = 1) Then
  loc_EDB959:   If (CLng(Me.FGrid2.Col) = CLng(1)) Then
  loc_EDB97F:     If ((Shift <> &HD) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_EDB98D:       Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_EDB9C0:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_96, Shift, "Name")
  loc_EDB9CF:     End If
  loc_EDB9CF:   End If
  loc_EDB9CF: End If
  loc_EDB9CF: Exit Sub
  loc_EDB9D0: ' Referenced from: EDB924
  loc_EDB9D0: Proc_6_60_E63754(&HFF, 0)
  loc_EDB9D5: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E55C14
  'Data Table: 4421D8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E55BD7: var_86 = Cancel
  loc_E55BE0: If (var_86 = 0) Then
  loc_E55BE9:   Call Proc_122_23_1187DA8(Cancel, var_88)
  loc_E55BF2:   arg_10 = Not(var_88)
  loc_E55BF8: Else
  loc_E55BFE:   If (var_86 = 1) Then
  loc_E55C07:     Call Proc_122_23_1187DA8(Cancel, var_88)
  loc_E55C10:     arg_10 = Not(var_88)
  loc_E55C13:   End If
  loc_E55C13: End If
  loc_E55C13: Exit Sub
End Sub

Private Sub Form_Load() '144271C
  'Data Table: 4421D8
  Dim var_B8 As Variant
  Dim var_11C As TextBox
  Dim Me As Recordset15
  Dim var_18C As Variant
  Dim var_1AC As Long
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  loc_1441C74: On Error Goto loc_1442714
  loc_1441C8F: Proc_6_23_DFC5B8(Me, 6400)
  loc_1441CA0: var_A8.top = 1890
  loc_1441CAD: var_A8.left = 2470
  loc_1441CBA: var_D8.top = 2745
  loc_1441CC7: var_D8.left = 2520
  loc_1441CD4: var_E8.top = 2520
  loc_1441CE1: var_E8.left = 2700
  loc_1441CEA: var_F8 = 0 'Variant
  loc_1441D05: Set var_94 = var_11C(CInt(var_118))
  loc_1441D0B: Call 0.Method_Form_Load0 (var_120)
  loc_1441D13: 11400 = var_E8.TextBox.Left
  loc_1441D23: var_130.left = CVar(var_120)
  loc_1441D3C: Set var_134 = var_138(CInt(var_118))
  loc_1441D42: Call 0.Method_Form_Load0 (var_13C)
  loc_1441D4A:  = var_130.TextBox.Height
  loc_1441D5D: Set var_94 = Me.Txt
  loc_1441D63: Call 0.Method_Form_Load0 (CInt(var_118), var_11C)
  loc_1441D6B: var_120 = var_11C.Top
  loc_1441D77: var_B8 = CVar((var_120 + var_13C)) 'Single
  loc_1441D7F: var_130.top = CVar(var_120)
  loc_1441DAA: Me.Recordset15.CursorLocation = 3
  loc_1441DD2: Me.Open "Select CODE ,NAME  From MarketSeg Order by Name", CVar(MemVar_1F95044), 2
  loc_1441DDD: var_B8 = CVar(New) 'Address
  loc_1441DE5: VarLateMemStAd
  loc_1441DF9: Set var_94 = Me.Txt
  loc_1441DFF: Call 0.Method_Form_Load0 (CInt(var_14C), var_11C, var_120, var_130)
  loc_1441E07: var_B8 = var_11C.Left
  loc_1441E17: var_15C.left = CVar(var_120)
  loc_1441E30: Set var_134 = var_138(CInt(var_14C))
  loc_1441E36: Call 0.Method_Form_Load0 (var_13C, 3)
  loc_1441E3E: -1 = var_15C.TextBox.Height
  loc_1441E51: Set var_94 = Me.Txt
  loc_1441E57: Call 0.Method_Form_Load0 (CInt(var_14C), var_11C)
  loc_1441E5F: var_120 = var_11C.Top
  loc_1441E6B: var_B8 = CVar((var_120 + var_13C)) 'Single
  loc_1441E73: var_15C.top = CVar(var_120)
  loc_1441E9E: Me.Recordset15.CursorLocation = 3
  loc_1441EC6: Me.Open "Select CODE ,NAME  From BussSource Order by Name", CVar(MemVar_1F95044), 2
  loc_1441ED1: var_B8 = CVar(New) 'Address
  loc_1441ED9: VarLateMemStAd
  loc_1441EE3: var_16C = New  'Address Function
  loc_1441EF3: var_16C.CursorLocation = 3
  loc_1441EF7: var_B8 = "Select Code, Name,total   From PlanMast Order by Name"
  loc_1441F22: Call var_16C.Open
  loc_1441F2E: MemVar_1F95044 = MemVar_1F95044
  loc_1441F3C: VarLateMemStAd
  loc_1441F56: Call 0.Method_Form_Load0 (var_120, var_1CC, var_16C, 3, 2, var_11C(CInt(var_1DC)))
  loc_1441F5E: var_B8 = var_16C.TextBox.Left
  loc_1441F66: var_B8 = CVar(var_120) 'Single
  loc_1441F6E: var_1EC.left = var_B8
  loc_1441F87: Set var_94 = var_11C(CInt(var_1DC))
  loc_1441F8D: Call 0.Method_Form_Load0 (var_120, var_15C, var_B8)
  loc_1441F95: 3 = var_1EC.TextBox.Top
  loc_1441FA4: var_1FC = var_1EC.height
  loc_1441FAA: var_20C = (CVar(var_120) - var_1FC)
  loc_1441FB2: var_1EC.top = var_20C
  loc_1441FDC: Me.Recordset15.CursorLocation = 3
  loc_1442004: Me.Open "Select Code ,Name,Paytype From RevMast where FieldType='P' Order by Name", CVar(MemVar_1F95044), 2
  loc_144200F: var_B8 = CVar(New) 'Address
  loc_1442017: VarLateMemStAd
  loc_144203C: Me.Recordset15.CursorLocation = 3
  loc_1442067: Me.Recordset15.Open "Select Code ,Name,Paytype From RevMast where FieldType='C' Order by Name", CVar(MemVar_1F95044), 2
  loc_1442078: CVarUnk
  loc_144207D: VerifyVarObj
  loc_1442083: Set var_94 = Me.DGRevenue
  loc_1442089: LateIdStAd
  loc_14420AB: Call 0.Method_Form_Load0 (CInt(var_21C), var_11C, var_120, Me.Txt, New, 3)
  loc_14420B3: -1 = var_11C.Left
  loc_14420BB: var_B8 = CVar(var_120) 'Single
  loc_14420C3: var_22C.left = var_B8
  loc_14420DC: Set var_134 = var_138(CInt(var_21C))
  loc_14420E2: Call 0.Method_Form_Load0 (var_13C, var_1EC, var_B8)
  loc_14420EA: 3 = var_22C.TextBox.Height
  loc_14420FD: Set var_94 = Me.Txt
  loc_1442103: Call 0.Method_Form_Load0 (CInt(var_21C), var_11C, var_120)
  loc_144210B: -1 = var_11C.Top
  loc_144211B: var_B8 = CVar(((var_120 + var_13C) + CDbl(&H1E))) 'Single
  loc_1442123: var_22C.top = var_B8
  loc_1442136: var_23C = New  'Address Function
  loc_1442146: var_23C.CursorLocation = 3
  loc_144214A: var_B8 = "Select SubCode ,Name,DiscountType,Discount From Subgroup where CompanyType like ('Corporate') Order by Name"
  loc_144215E: var_18C = 2
  loc_1442175: Call var_23C.Open
  loc_1442181: MemVar_1F95044 = MemVar_1F95044
  loc_144218F: VarLateMemStAd
  loc_14421A9: Call 0.Method_Form_Load0 (var_120, var_22C, var_23C, 3)
  loc_14421B1: var_18C = var_23C.TextBox.Left
  loc_14421C1: var_25C.left = CVar(var_120)
  loc_14421DA: Set var_134 = var_138(CInt(var_24C))
  loc_14421E0: Call 0.Method_Form_Load0 (var_13C, var_11C(CInt(var_24C)))
  loc_14421E8: var_B8 = var_25C.TextBox.Height
  loc_14421FB: Set var_94 = Me.Txt
  loc_1442201: Call 0.Method_Form_Load0 (CInt(var_24C), var_11C)
  loc_1442209: var_120 = var_11C.Top
  loc_1442219: var_B8 = CVar(((var_120 + var_13C) + CDbl(&H1E))) 'Single
  loc_1442221: var_25C.top = var_B8
  loc_144224C: Me.Recordset15.CursorLocation = 3
  loc_1442274: Me.Open "Select SubCode ,Name From Subgroup where CompanyType like ('Travel Agency') Order by Name", CVar(MemVar_1F95044), 2
  loc_144227F: var_B8 = CVar(New) 'Address
  loc_1442287: VarLateMemStAd
  loc_144229B: Set var_94 = Me.Txt
  loc_14422A1: Call 0.Method_Form_Load0 (CInt(var_26C), var_11C, var_120, var_25C)
  loc_14422A9: var_B8 = var_11C.Left
  loc_14422B9: var_27C.left = CVar(var_120)
  loc_14422D2: Set var_134 = var_138(CInt(var_26C))
  loc_14422D8: Call 0.Method_Form_Load0 (var_13C, 3)
  loc_14422E0: -1 = var_27C.TextBox.Height
  loc_14422F3: Set var_94 = Me.Txt
  loc_14422F9: Call 0.Method_Form_Load0 (CInt(var_26C), var_11C)
  loc_1442301: var_120 = var_11C.Top
  loc_1442311: var_B8 = CVar(((var_120 + var_13C) + CDbl(&H1E))) 'Single
  loc_1442319: var_27C.top = CVar(var_120)
  loc_1442344: Me.Recordset15.CursorLocation = 3
  loc_144236C: Me.Open "Select Code as SearchCode,Code as RoomNo, Name as Quot From RoomMast where type='RO' Order by Code", CVar(MemVar_1F95044), 2
  loc_1442377: var_B8 = CVar(New) 'Address
  loc_144237F: VarLateMemStAd
  loc_1442393: Set var_94 = Me.Txt
  loc_1442399: Call 0.Method_Form_Load0 (CInt(var_28C), var_11C, var_120, var_27C)
  loc_14423A1: var_B8 = var_11C.Left
  loc_14423B1: var_29C.left = CVar(var_120)
  loc_14423CA: Set var_134 = var_138(CInt(var_28C))
  loc_14423D0: Call 0.Method_Form_Load0 (var_13C, 3)
  loc_14423D8: -1 = var_29C.TextBox.Height
  loc_14423EB: Set var_94 = Me.Txt
  loc_14423F1: Call 0.Method_Form_Load0 (CInt(var_28C), var_11C)
  loc_14423F9: var_120 = var_11C.Top
  loc_1442409: var_B8 = CVar(((var_120 + var_13C) + CDbl(&H1E))) 'Single
  loc_1442411: var_29C.top = CVar(var_120)
  loc_144243C: Me.Recordset15.CursorLocation = 3
  loc_144246F: var_B8 = CVar(New) 'Address
  loc_1442477: VarLateMemStAd
  loc_144247D: var_B8 = 1
  loc_1442488: Call var_D8.ZOrder
  loc_1442499: Call var_A8.ZOrder
  loc_14424AD: Set var_94 = var_11C(CInt(var_2AC))
  loc_14424B3: Call 0.Method_Form_Load0 (var_120, 1, 1, var_29C)
  loc_14424BB: var_B8 = var_A8.TextBox.Left
  loc_14424CB: var_2BC.left = CVar(var_120)
  loc_14424E4: Set var_134 = var_138(CInt(var_2AC))
  loc_14424EA: Call 0.Method_Form_Load0 (var_13C, 3)
  loc_14424F2: -1 = var_2BC.TextBox.Height
  loc_1442505: Set var_94 = Me.Txt
  loc_144250B: Call 0.Method_Form_Load0 (CInt(var_2AC), var_11C)
  loc_1442523: var_B8 = CVar(((var_11C.Top + var_13C) + CDbl(&H1E))) 'Single
  loc_144252B: var_2BC.top = CVar(var_11C.Top)
  loc_144253E: var_2CC = New  'Address Function
  loc_144254E: var_2CC.CursorLocation = 3
  loc_1442552: var_B8 = "Select Code ,Name From GuestProf Order by Name"
  loc_144255B: Set var_94 = MemVar_1F95044 
  loc_1442566: var_18C = 2
  loc_144256F: var_1AC = 3
  loc_144257D: Call var_2CC.Open
  loc_1442597: VarLateMemStAd
  loc_14425C1: var_2CC.Connection15.Execute "Select NCUR from enviro WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_1FC, -1
  loc_14425E6: Set global_68 = New 
  loc_14425F8: Me.Recordset15.CursorLocation = 3
  loc_144260C: var_94 = var_94.Fields
  loc_1442623: Proc_6_7_F26918(var_2F4, CVar(var_94.Item("Ncur")), var_94, var_2BC, var_2CC)
  loc_144265B: var_18C = "  AND SNO=1"
  loc_144266B: elect Code,Name From RoomCat Order by Name", CVar(var_94), 2 "SELECT Distinct DocId AS SearchCode FROM RoomOcc where VType='" & "CHK" & "' AND ChkInDate=" & var_2F4 & var_18C, CVar(var_94), 2
  loc_1442682: var_B8 = 1
  loc_144268D: Call var_D8.ZOrder
  loc_1442693: var_B8 = 1
  loc_144269E: Call var_A8.ZOrder
  loc_14426B6: If (var_D8.Visible = True) Then
  loc_14426C1:   var_D8.Visible = False
  loc_14426C5:   var_B8 = True
  loc_14426CC:   var_324.Enabled = var_B8
  loc_14426D0: End If
  loc_14426DC: Set var_94 = Me
  loc_14426F3: Call Proc_122_26_E8EED0(Proc_5_1_100EC1C("INI", var_94, global_68, var_B8, var_B8, 3), -1, var_1AC, var_18C)
  loc_14426FE: Call Proc_122_25_FA7D28(var_94, var_B8)
  loc_1442708: Set var_8C = Nothing
  loc_1442710: Set var_90 = Nothing
  loc_1442713: Exit Sub
  loc_1442714: ' Referenced from: 1441C74
  loc_1442714: Proc_6_60_E63754(-1)
  loc_1442719: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F580A4
  'Data Table: 4421D8
  Dim var_A4 As Variant
  Dim var_128 As TextBox
  Dim var_10C As TextBox
  loc_F57FA0: On Error Goto loc_F5809B
  loc_F57FCF: If CBool((var_94.Visible = True) And (CLng(KeyCode) = &H1B)) Then
  loc_F57FD2:   var_A4 = 1
  loc_F57FDD:   Call var_94.ZOrder
  loc_F57FEB:   var_94.Visible = False
  loc_F57FF6:   var_F4.Enabled = True
  loc_F58008:   Set var_108 = var_10C(CInt(var_104))
  loc_F5800E:   Call 0.Method_Form_KeyDown0 (var_110)
  loc_F58016:   var_A4 = var_F4.TextBox.Text
  loc_F58033:   Set var_124 = Me.Txt
  loc_F58039:   Call 0.Method_Form_KeyDown0 (CInt(var_120), var_128)
  loc_F58041:   var_128.Text = CStr(Val(var_110))
  loc_F58063:   Set var_108 = Me.Txt
  loc_F58069:   Call 0.Method_Form_KeyDown0 (CInt(var_120))
  loc_F58071:   var_10C.SetFocus
  loc_F5807D:   Exit Sub
  loc_F5807E: End If
  loc_F58092: Proc_6_88_FE8F6C(Me, KeyCode, Shift)
  loc_F5809A: Exit Sub
  loc_F5809B: ' Referenced from: F57FA0
  loc_F5809B: Proc_6_60_E63754(0)
  loc_F580A0: Exit Sub
  loc_F580A1: ThisVCallR8
End Sub

Private Sub Fgrid1_UnknownEvent_9 '1440514
  'Data Table: 4421D8
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_B8 As Variant
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_104 As String
  Dim var_144 As String
  loc_143FA18: Set var_88 = Me.TopCtrl1
  loc_143FA1E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_143FA33: If ( = "Browse") Then
  loc_143FA36:   Exit Sub
  loc_143FA37: End If
  loc_143FA54: If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_143FA6A:   var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143FA79:   var_B8 = Me.FGrid1.Col
  loc_143FA82:   var_DC = CVar(CLng(var_B8)) 'Long
  loc_143FA91:   var_100 = Me.FGrid1.TextMatrix)
  loc_143FAB9:   If (CStr(var_100) = vbNullString) Then
  loc_143FADE:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_143FAFD:     Me.FGrid1.CellFontName = "wingdings"
  loc_143FB17:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_143FB3E:     If (CLng(Me.FGrid1.Col) = 6) Then
  loc_143FB54:       Me.FGrid1.CellForeColor = &HFF
  loc_143FB5F:     Else
  loc_143FB72:       Me.FGrid1.CellForeColor = &HFF0000
  loc_143FB7A:     End If
  loc_143FB82:     If (var_114 < var_124) Then
  loc_143FB8D:       var_A8 = (var_114 + 1)
  loc_143FB91:       var_114 = Me.FGrid1.Col 'Variant
  loc_143FB98:     Else
  loc_143FBAD:       var_104 = "Guest Count Exceeded" & vbCrLf
  loc_143FBD0:       If (MsgBox(CVar(var_104 & "Want to Proceed with Exceeded guest ?"), 4, var_B8, var_100, var_134) = 7) Then
  loc_143FBD3:         Exit Sub
  loc_143FBD4:       End If
  loc_143FBD4:     End If
  loc_143FBE7:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143FBF0:     Set var_BC = Me.FGrid1
  loc_143FBFF:     var_DC = CVar(CLng(var_BC.Col)) 'Long
  loc_143FC04:     var_144 = "ü"
  loc_143FC0E:     Set var_F0 = Me.FGrid1
  loc_143FC14:     LateIdCallSt
  loc_143FC30:     Set var_F0 = Me.FGrid1
  loc_143FC5A:     Set var_88 = Me.Txt
  loc_143FC60:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(var_164), var_BC, var_104, CVar(CLng(3)), CVar(CLng(var_F0.Row)), var_F0)
  loc_143FC68:     var_144 = var_BC.Text
  loc_143FC70:     var_B8 = CVar(var_104) 'String
  loc_143FC7E:     LateIdCallSt
  loc_143FCC6:     Set var_88 = Me.Txt
  loc_143FCCC:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(var_178), var_BC, var_104, CVar(CLng(4)), CVar(CLng(Me.FGrid1.Row)), Me.FGrid1)
  loc_143FCD4:     var_B8 = var_BC.Text
  loc_143FCDC:     var_B8 = CVar(var_104) 'String
  loc_143FCEA:     LateIdCallSt
  loc_143FD32:     Set var_88 = Me.Txt
  loc_143FD38:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(var_188), var_BC, var_104, CVar(CLng(5)), CVar(CLng(Me.FGrid1.Row)), Me.FGrid1)
  loc_143FD40:     var_B8 = var_BC.Text
  loc_143FD48:     var_B8 = CVar(var_104) 'String
  loc_143FD56:     LateIdCallSt
  loc_143FD9E:     Set var_88 = Me.Txt
  loc_143FDA4:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(var_198), var_BC, var_104, CVar(CLng(6)), CVar(CLng(Me.FGrid1.Row)), Me.FGrid1)
  loc_143FDAC:     var_B8 = var_BC.Text
  loc_143FDB4:     var_B8 = CVar(var_104) 'String
  loc_143FDBC:     Set var_168 = Me.FGrid1
  loc_143FDC2:     LateIdCallSt
  loc_143FDDF:   Else
  loc_143FDEA:     If (var_114 > 0) Then
  loc_143FDF5:       var_A8 = (var_114 - 1)
  loc_143FDF9:       var_114 = Me.FGrid1.Row 'Variant
  loc_143FDFD:     End If
  loc_143FE10:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143FE28:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_143FE2D:     var_144 = vbNullString
  loc_143FE37:     Set var_F0 = Me.FGrid1
  loc_143FE3D:     LateIdCallSt
  loc_143FE68:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143FE70:     var_DC = CVar(CLng(3)) 'Long
  loc_143FE75:     var_144 = vbNullString
  loc_143FE7F:     Set var_BC = Me.FGrid1
  loc_143FE85:     LateIdCallSt
  loc_143FEAA:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143FEB2:     var_DC = CVar(CLng(4)) 'Long
  loc_143FEB7:     var_144 = vbNullString
  loc_143FEC1:     Set var_BC = Me.FGrid1
  loc_143FEC7:     LateIdCallSt
  loc_143FEEC:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143FEF4:     var_DC = CVar(CLng(5)) 'Long
  loc_143FEF9:     var_144 = vbNullString
  loc_143FF03:     Set var_BC = Me.FGrid1
  loc_143FF09:     LateIdCallSt
  loc_143FF2E:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143FF36:     var_DC = CVar(CLng(6)) 'Long
  loc_143FF3B:     var_144 = vbNullString
  loc_143FF45:     Set var_BC = Me.FGrid1
  loc_143FF4B:     LateIdCallSt
  loc_143FF7C:     If (CLng(Me.FGrid1.Col) = 6) Then
  loc_143FF92:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143FF97:       var_DC = 7
  loc_143FFA0:       var_144 = vbNullString
  loc_143FFAA:       Set var_BC = Me.FGrid1
  loc_143FFB0:       LateIdCallSt
  loc_143FFD5:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143FFDA:       var_DC = 8
  loc_143FFE3:       var_144 = vbNullString
  loc_143FFED:       Set var_BC = Me.FGrid1
  loc_143FFF3:       LateIdCallSt
  loc_1440018:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_144001D:       var_DC = 9
  loc_1440026:       var_144 = vbNullString
  loc_1440030:       Set var_BC = Me.FGrid1
  loc_1440036:       LateIdCallSt
  loc_1440048:     End If
  loc_1440048:   End If
  loc_1440048: End If
  loc_1440065: If (CLng(Me.FGrid1.Col) = CLng(&HC)) Then
  loc_144007B:   var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1440093:   var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_14400CA:   If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_14400EF:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_144010E:     Me.FGrid1.CellFontName = "wingdings"
  loc_1440128:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_1440143:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_144015B:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1440160:     var_144 = "ü"
  loc_144016A:     Set var_F0 = Me.FGrid1
  loc_1440170:     LateIdCallSt
  loc_144018B:   Else
  loc_144019E:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14401B6:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_14401BB:     var_144 = vbNullString
  loc_14401C5:     Set var_F0 = Me.FGrid1
  loc_14401CB:     LateIdCallSt
  loc_14401E3:   End If
  loc_14401E3: End If
  loc_1440200: If (CLng(Me.FGrid1.Col) = CLng(7)) Then
  loc_1440216:   var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1440225:   var_B8 = Me.FGrid1.Col
  loc_144022E:   var_DC = CVar(CLng(var_B8)) 'Long
  loc_144023D:   var_100 = Me.FGrid1.TextMatrix)
  loc_1440265:   If (CStr(var_100) = vbNullString) Then
  loc_144028A:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_14402A9:     Me.FGrid1.CellFontName = "wingdings"
  loc_14402C3:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_14402EA:     If (CLng(Me.FGrid1.Col) = 6) Then
  loc_1440300:       Me.FGrid1.CellForeColor = &HFF
  loc_144030B:     Else
  loc_144031E:       Me.FGrid1.CellForeColor = &HFF0000
  loc_1440326:     End If
  loc_1440331:     If (var_1A8 = 0) Then
  loc_1440339:       var_1A8 = 1 'Variant
  loc_1440340:     Else
  loc_1440359:       MsgBox("Only One guest Leader Can be Selected", &H40, var_B8, var_100, var_134)
  loc_1440369:       Exit Sub
  loc_144036A:     End If
  loc_144037D:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1440395:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_144039A:     var_144 = "ü"
  loc_14403A4:     Set var_F0 = Me.FGrid1
  loc_14403AA:     LateIdCallSt
  loc_14403C5:   Else
  loc_14403CA:     var_1A8 = 0 'Variant
  loc_14403E1:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14403F9:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_14403FE:     var_144 = vbNullString
  loc_1440408:     Set var_F0 = Me.FGrid1
  loc_144040E:     LateIdCallSt
  loc_1440445:     If (CLng(Me.FGrid1.Col) = 6) Then
  loc_144045B:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1440460:       var_DC = 7
  loc_1440469:       var_144 = vbNullString
  loc_1440473:       Set var_BC = Me.FGrid1
  loc_1440479:       LateIdCallSt
  loc_144049E:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14404A3:       var_DC = 8
  loc_14404AC:       var_144 = vbNullString
  loc_14404B6:       Set var_BC = Me.FGrid1
  loc_14404BC:       LateIdCallSt
  loc_14404E1:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14404E6:       var_DC = 9
  loc_14404EF:       var_144 = vbNullString
  loc_14404F9:       Set var_BC = Me.FGrid1
  loc_14404FF:       LateIdCallSt
  loc_1440511:     End If
  loc_1440511:   End If
  loc_1440511: End If
  loc_1440511: Exit Sub
End Sub

Public Sub Proc_122_19_13694A8
  'Data Table: 4421D8
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As String
  Dim var_104 As MSHFlexGrid
  loc_1368C43: Me.FGrid1.Row = 0
  loc_1368C5E: Me.FGrid1.Col = 0
  loc_1368C66: var_98 = 0
  loc_1368C75: var_BC = CVar(CInt(3)) 'Integer
  loc_1368C7D: Set var_AC = Me.FGrid1
  loc_1368C83: LateIdCallSt
  loc_1368CA1: Me.FGrid1.Row = 1
  loc_1368CBC: Me.FGrid1.Cols = &HE
  loc_1368CC1: var_98 = 0
  loc_1368CCA: var_BC = 0
  loc_1368CD3: var_E0 = "Folio No"
  loc_1368CDC: LateIdCallSt
  loc_1368CE4: var_98 = 0
  loc_1368CF3: var_BC = CVar(CInt(3)) 'Integer
  loc_1368CFA: LateIdCallSt
  loc_1368D02: var_98 = 0
  loc_1368D0B: var_BC = 0
  loc_1368D17: LateIdCallSt
  loc_1368D1F: var_98 = 0
  loc_1368D28: var_BC = 1
  loc_1368D31: var_E0 = vbNullString
  loc_1368D3A: LateIdCallSt
  loc_1368D42: var_98 = 1
  loc_1368D4B: var_BC = &H1F4
  loc_1368D57: LateIdCallSt
  loc_1368D5F: var_98 = 0
  loc_1368D68: var_BC = 2
  loc_1368D71: var_E0 = "Room No"
  loc_1368D7A: LateIdCallSt
  loc_1368D82: var_98 = 2
  loc_1368D8B: var_BC = &H384
  loc_1368D97: LateIdCallSt
  loc_1368D9F: var_98 = 0
  loc_1368DA8: var_BC = 3
  loc_1368DB1: var_E0 = "Guest Name"
  loc_1368DBA: LateIdCallSt
  loc_1368DC2: var_98 = 3
  loc_1368DD1: var_BC = CVar(CInt(1)) 'Integer
  loc_1368DD8: LateIdCallSt
  loc_1368DE0: var_98 = 3
  loc_1368DEF: var_BC = CVar(CInt(1)) 'Integer
  loc_1368DF6: LateIdCallSt
  loc_1368DFE: var_98 = 3
  loc_1368E07: var_BC = &H7D0
  loc_1368E13: LateIdCallSt
  loc_1368E1B: var_98 = 0
  loc_1368E24: var_BC = 4
  loc_1368E2D: var_E0 = "Address1"
  loc_1368E36: LateIdCallSt
  loc_1368E3E: var_98 = 4
  loc_1368E4D: var_BC = CVar(CInt(1)) 'Integer
  loc_1368E54: LateIdCallSt
  loc_1368E5C: var_98 = 4
  loc_1368E6B: var_BC = CVar(CInt(1)) 'Integer
  loc_1368E72: LateIdCallSt
  loc_1368E7A: var_98 = 4
  loc_1368E83: var_BC = &H7D0
  loc_1368E8F: LateIdCallSt
  loc_1368E97: var_98 = 0
  loc_1368EA0: var_BC = 5
  loc_1368EA9: var_E0 = "Address2"
  loc_1368EB2: LateIdCallSt
  loc_1368EBA: var_98 = 5
  loc_1368EC9: var_BC = CVar(CInt(1)) 'Integer
  loc_1368ED0: LateIdCallSt
  loc_1368ED8: var_98 = 5
  loc_1368EE7: var_BC = CVar(CInt(1)) 'Integer
  loc_1368EEE: LateIdCallSt
  loc_1368EF6: var_98 = 5
  loc_1368EFF: var_BC = &H7D0
  loc_1368F0B: LateIdCallSt
  loc_1368F13: var_98 = 0
  loc_1368F1C: var_BC = 6
  loc_1368F25: var_E0 = "City"
  loc_1368F2E: LateIdCallSt
  loc_1368F36: var_98 = 6
  loc_1368F45: var_BC = CVar(CInt(1)) 'Integer
  loc_1368F4C: LateIdCallSt
  loc_1368F54: var_98 = 6
  loc_1368F63: var_BC = CVar(CInt(1)) 'Integer
  loc_1368F6A: LateIdCallSt
  loc_1368F72: var_98 = 6
  loc_1368F7B: var_BC = &H3E8
  loc_1368F87: LateIdCallSt
  loc_1368F8F: var_98 = 0
  loc_1368F98: var_BC = 7
  loc_1368FA1: var_E0 = "Leader"
  loc_1368FAA: LateIdCallSt
  loc_1368FB2: var_98 = 7
  loc_1368FC1: var_BC = CVar(CInt(1)) 'Integer
  loc_1368FC8: LateIdCallSt
  loc_1368FD0: var_98 = 7
  loc_1368FDF: var_BC = CVar(CInt(1)) 'Integer
  loc_1368FE6: LateIdCallSt
  loc_1368FEE: var_98 = 7
  loc_1368FF7: var_BC = &H384
  loc_1369003: LateIdCallSt
  loc_136900B: var_98 = 0
  loc_1369014: var_BC = 8
  loc_136901D: var_E0 = "MasterFolio"
  loc_1369026: LateIdCallSt
  loc_136902E: var_98 = 8
  loc_136903D: var_BC = CVar(CInt(3)) 'Integer
  loc_1369044: LateIdCallSt
  loc_136904C: var_98 = 8
  loc_1369055: var_BC = 0
  loc_1369061: LateIdCallSt
  loc_1369069: var_98 = 0
  loc_1369072: var_BC = 9
  loc_136907B: var_E0 = "VPrefix"
  loc_1369084: LateIdCallSt
  loc_136908C: var_98 = 9
  loc_136909B: var_BC = CVar(CInt(3)) 'Integer
  loc_13690A2: LateIdCallSt
  loc_13690AA: var_98 = 9
  loc_13690B3: var_BC = 0
  loc_13690BF: LateIdCallSt
  loc_13690C7: var_98 = 0
  loc_13690D0: var_BC = &HA
  loc_13690D9: var_E0 = "FDOCID"
  loc_13690E2: LateIdCallSt
  loc_13690EA: var_98 = &HA
  loc_13690F9: var_BC = CVar(CInt(3)) 'Integer
  loc_1369100: LateIdCallSt
  loc_1369108: var_98 = &HA
  loc_1369111: var_BC = 0
  loc_136911D: LateIdCallSt
  loc_1369125: var_98 = 0
  loc_136912E: var_BC = &HB
  loc_1369137: var_E0 = "Room type"
  loc_1369140: LateIdCallSt
  loc_1369148: var_98 = &HB
  loc_1369151: var_BC = 0
  loc_136915D: LateIdCallSt
  loc_1369165: var_98 = 0
  loc_136916E: var_BC = &HC
  loc_1369177: var_E0 = "Complementary"
  loc_1369180: LateIdCallSt
  loc_1369188: var_98 = &HC
  loc_1369191: var_BC = &H384
  loc_136919D: LateIdCallSt
  loc_13691A5: var_98 = 0
  loc_13691AE: var_BC = &HD
  loc_13691B7: var_E0 = "Guest Code"
  loc_13691C0: LateIdCallSt
  loc_13691C8: var_98 = &HD
  loc_13691D1: var_BC = 0
  loc_13691DD: LateIdCallSt
  loc_13691E7: Set var_D0 = Nothing 
  loc_136920A: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_136920D:   var_98 = vbNullString
  loc_1369217:   Set var_AC = Me.FGrid1
  loc_1369228: End If
  loc_1369228: Call Proc_122_20_1208284(FGrid1.DispID_10000, var_98, var_D0, var_BC, var_98, var_D0, var_E0, var_BC)
  loc_1369240: Me.FGrid2.Row = 0
  loc_136925B: Me.FGrid2.Col = 0
  loc_1369263: var_98 = 0
  loc_1369272: var_BC = CVar(CInt(3)) 'Integer
  loc_136927A: Set var_AC = Me.FGrid2
  loc_1369280: LateIdCallSt
  loc_136929E: Me.FGrid2.Row = 1
  loc_13692B9: Me.FGrid2.Cols = 4
  loc_13692BE: var_98 = 0
  loc_13692C7: var_BC = 0
  loc_13692D0: var_E0 = "S.No"
  loc_13692D9: LateIdCallSt
  loc_13692E1: var_98 = 0
  loc_13692F0: var_BC = CVar(CInt(3)) 'Integer
  loc_13692F7: LateIdCallSt
  loc_13692FF: var_98 = 0
  loc_1369308: var_BC = &H1F4
  loc_1369314: LateIdCallSt
  loc_136931C: var_98 = 0
  loc_1369325: var_BC = 1
  loc_136932E: var_E0 = "Revenue"
  loc_1369337: LateIdCallSt
  loc_136933F: var_98 = 1
  loc_1369348: var_BC = &H9C4
  loc_1369354: LateIdCallSt
  loc_136935C: var_98 = 0
  loc_1369365: var_BC = 2
  loc_136936E: var_E0 = "RevCode"
  loc_1369377: LateIdCallSt
  loc_136937F: var_98 = 2
  loc_136938E: var_BC = CVar(CInt(7)) 'Integer
  loc_1369395: LateIdCallSt
  loc_136939D: var_98 = 2
  loc_13693A6: var_BC = 0
  loc_13693B2: LateIdCallSt
  loc_13693BA: var_98 = 0
  loc_13693C3: var_BC = 3
  loc_13693CC: var_E0 = "Limit"
  loc_13693D5: LateIdCallSt
  loc_13693DD: var_98 = 3
  loc_13693EC: var_BC = CVar(CInt(7)) 'Integer
  loc_13693F3: LateIdCallSt
  loc_13693FB: var_98 = 3
  loc_136940A: var_BC = CVar(CInt(7)) 'Integer
  loc_1369411: LateIdCallSt
  loc_1369419: var_98 = 3
  loc_1369422: var_BC = &H3E8
  loc_136942E: LateIdCallSt
  loc_1369438: Set var_104 = Nothing 
  loc_136945B: If (CLng(Me.FGrid2.Rows) = 1) Then
  loc_136945E:   var_98 = vbNullString
  loc_1369468:   Set var_AC = Me.FGrid2
  loc_1369479: End If
  loc_1369479: var_98 = 1
  loc_1369482: var_BC = 0
  loc_136948B: var_E0 = "1"
  loc_1369495: Set var_AC = Me.FGrid2
  loc_136949B: LateIdCallSt
  loc_13694A6: Exit Sub
End Sub

Public Sub Proc_122_20_1208284
  'Data Table: 4421D8
  Dim var_9C As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_E4 As TextBox
  Dim var_EC As String
  Dim var_FC As String
  Dim var_F4 As TextBox
  Dim var_118 As String
  Dim var_110 As TextBox
  Dim var_124 As TextBox
  Dim unk_4421FF As Connection15
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_148 As TextBox
  loc_1207E28: On Error Goto loc_120827B
  loc_1207E34: var_8A = CByte(1) 'Byte
  loc_1207E4B: Me.FGrid1.Rows = 1
  loc_1207E53: var_9C = vbNullString
  loc_1207E5D: Set var_B0 = Me.FGrid1
  loc_1207E81: Me.FGrid1.FixedRows = 1
  loc_1207E8D: Set var_B0 = Me.TopCtrl1
  loc_1207E93: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E(FGrid1.DispID_10000)
  loc_1207EA8: If ("Add" = "Add") Then
  loc_1207EC9:   Set var_B0 = Me.Txt
  loc_1207ECF:   Call 0.Method_Proc_122_20_12082840 (CInt(var_E0), var_E4, var_E8, "SELECT RoomMast.Code,rOOMcAT.NAME,RoomCAt.Code as RoomCatCode  FROM RoomMast LEFT JOIN ROOMCAT ON ROOMMAST.ROOMCAT=ROOMCAT.CODE WHERE ROOMMAST.CODE NOT IN (Select RoomNo from RoomOcc where ChkOutDate is  Null) AND ROOMMAST.TYPE='RO' AND ROOMCAT.TYPE='RO' AND ROOMCAT.CODE='")
  loc_1207ED7:   var_C0 = var_E4.Tag
  loc_1207EE0:   var_EC = -1 & var_E8
  loc_1207EE7:   var_FC = var_EC & "' AND ROOMMAST.ROOMCAT='"
  loc_1207EF8:   Set var_F0 = Me.Txt
  loc_1207EFE:   Call 0.Method_Proc_122_20_12082840 (CInt(var_E0), var_F4, var_F8)
  loc_1207F06:   var_FC = var_F4.Tag
  loc_1207F24:   var_118 = var_138 & var_F8 & "' ORDER BY rOOMMAST.CODE" & " Union All" & " SELECT RoomMast.Code,rOOMcAT.NAME,RoomCAt.Code as RoomCatCode  FROM RoomMast LEFT JOIN ROOMCAT ON ROOMMAST.ROOMCAT=ROOMCAT.CODE WHERE ROOMMAST.CODE NOT IN (Select RoomNo from RoomOcc where ChkOutDate is  Null) AND ROOMMAST.TYPE='RO' AND ROOMCAT.TYPE='RO' AND ROOMCAT.CODE<>'"
  loc_1207F35:   Set var_10C = Me.Txt
  loc_1207F3B:   Call 0.Method_Proc_122_20_12082840 (CInt(var_E0), var_110, var_114)
  loc_1207F43:   var_118 = var_110.Tag
  loc_1207F64:   Set var_120 = Me.Txt
  loc_1207F6A:   Call 0.Method_Proc_122_20_12082840 (CInt(var_E0), var_124)
  loc_1207F8B:   unk_4421FF.Execute 1 & var_114 & "' AND ROOMMAST.ROOMCAT<>'" & var_124.Tag & "' ", , 
  loc_1207F93:   var_148 = var_138 'Address Function
  loc_1207FCF: Else
  loc_1207FED:   Set var_B0 = Me.Txt
  loc_1207FF3:   Call 0.Method_Proc_122_20_12082840 (CInt(var_E0), var_E4, var_E8, "SELECT RoomMast.Code,rOOMcAT.NAME,RoomCAt.Code as RoomCatCode  FROM RoomMast LEFT JOIN ROOMCAT ON ROOMMAST.ROOMCAT=ROOMCAT.CODE WHERE ROOMMAST.CODE NOT IN (Select RoomNo from RoomOcc where ChkOutDate is  Null) AND ROOMMAST.TYPE='RO' AND ROOMCAT.TYPE='RO' AND ROOMCAT.CODE='")
  loc_1207FFB:   var_180 = var_E4.Tag
  loc_1208004:   var_EC = -1 & var_E8
  loc_120800B:   var_FC = var_EC & "' AND ROOMMAST.ROOMCAT='"
  loc_120801C:   Set var_F0 = Me.Txt
  loc_1208022:   Call 0.Method_Proc_122_20_12082840 (CInt(var_E0), var_F4, var_F8)
  loc_120802A:   var_FC = var_F4.Tag
  loc_1208048:   var_118 = var_138 & var_F8 & "' ORDER BY rOOMMAST.CODE" & " Union All" & " SELECT RoomMast.Code,rOOMcAT.NAME,RoomCAt.Code as RoomCatCode  FROM RoomMast LEFT JOIN ROOMCAT ON ROOMMAST.ROOMCAT=ROOMCAT.CODE WHERE ROOMMAST.CODE NOT IN (Select RoomNo from RoomOcc where ChkOutDate is  Null) AND ROOMMAST.TYPE='RO' AND ROOMCAT.TYPE='RO' AND ROOMCAT.CODE<>'"
  loc_1208059:   Set var_10C = Me.Txt
  loc_120805F:   Call 0.Method_Proc_122_20_12082840 (CInt(var_E0), var_110)
  loc_1208088:   Set var_120 = Me.Txt
  loc_120808E:   Call 0.Method_Proc_122_20_12082840 (CInt(var_E0), var_124)
  loc_12080B4:   var_C0 = CVar(var_118 & var_110.Tag & "' AND ROOMMAST.ROOMCAT<>'" & var_124.Tag & "'" & " Union All" & " SELECT RoomMast.Code,rOOMcAT.NAME,RoomCAt.Code as RoomCatCode  FROM RoomMast LEFT JOIN ROOMCAT ON ROOMMAST.ROOMCAT=ROOMCAT.CODE WHERE ROOMMAST.CODE  IN (Select RoomNo from RoomOcc LEFT JOIN GuestFolio ON (RoomOcc.FolioNo = GuestFolio.FolioNo) AND (RoomOcc.GuestProf = GuestFolio.GuestProf)  where MFolioNO=") 'String
  loc_12080D1:   unk_4421FF.Execute CStr(var_C0 & var_15C & ") AND ROOMMAST.TYPE='RO'"), , 
  loc_12080D9:   var_148 = var_138 'Address Function
  loc_120811E: End If
  loc_1208132: If (var_148.RecordCount > 0) Then
  loc_1208139:   Set var_B0 = ()
  loc_1208154:   If (Txt.DispID_6803000E = "Add") Then
  loc_120816C:     For var_184 = CByte(1) To CByte(var_148.RecordCount): var_8A = var_184 'Byte
  loc_1208176:       Set var_188 = (CByte(1))
  loc_120817E:       var_9C = CVar(CLng(var_8A)) 'Long
  loc_1208186:       var_198 = CVar(CLng(0)) 'Long
  loc_1208191:       var_C0 = CVar(CStr(var_8A)) 'String
  loc_1208198:       LateIdCallSt
  loc_12081A8:       var_9C = CVar(CLng(var_8A)) 'Long
  loc_12081B0:       var_198 = CVar(CLng(1)) 'Long
  loc_12081B5:       var_1B8 = vbNullString
  loc_12081BE:       LateIdCallSt
  loc_12081CB:       var_198 = CVar(CLng(var_8A)) 'Long
  loc_12081D3:       var_1B8 = CVar(CLng(2)) 'Long
  loc_12081D8:       var_9C = "Code"
  loc_12081EE:       var_D0 = CVar(CStr())) 'String
  loc_12081F5:       LateIdCallSt
  loc_1208209:       var_198 = CVar(CLng(var_8A)) 'Long
  loc_1208211:       var_1B8 = CVar(CLng(&HB)) 'Long
  loc_1208216:       var_9C = "RoomCatCode"
  loc_120822C:       var_D0 = CVar(CStr())) 'String
  loc_1208233:       LateIdCallSt
  loc_1208244:       Set var_188 = Nothing 
  loc_120824D:       Call var_148.MoveNext
  loc_1208253:       var_9C = vbNullString
  loc_120825D:       Set var_B0 = Me.FGrid1
  loc_1208271:     Next var_184 'Byte
  loc_1208277:     GoTo loc_120827A
  loc_120827A:     ' Referenced from: 1208277
  loc_120827A:   End If
  loc_120827A: End If
  loc_120827A: Exit Sub
  loc_120827B: ' Referenced from: 1207E28
  loc_120827B: Proc_6_60_E63754()
  loc_1208280: Exit Sub
End Sub

Public Sub Proc_122_21_E394E0
  'Data Table: 4421D8
  loc_E394C0: Set var_88 = Me.TopCtrl1
  loc_E394C6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E394DB: If ( = "Browse") Then
  loc_E394DE:   Exit Sub
  loc_E394DF: End If
  loc_E394DF: Exit Sub
End Sub

Public Sub Proc_122_22_E30F00
  'Data Table: 4421D8
  loc_E30EE0: Set var_88 = Me.TopCtrl1
  loc_E30EE6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E30EFB: If ( = "Browse") Then
  loc_E30EFE:   Exit Sub
  loc_E30EFF: End If
  loc_E30EFF: Exit Sub
End Sub

Public Sub Proc_122_23_1187DA8(arg_C) '1187DA8
  'Data Table: 4421D8
  Dim var_88 As Integer
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As Long
  Dim var_D0 As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_A4 As Variant
  Dim var_110 As Variant
  Dim var_128 As Long
  Dim var_120 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_160 As Variant
  loc_11879D3: var_88 = arg_C
  loc_11879DC: If (var_88 = 0) Then
  loc_11879F2:   var_A0 = CLng(Me.FGrid1.Col)
  loc_1187A02:   If Not (var_A0 = CLng(3)) Then
  loc_1187A0C:     If Not (var_A0 = CLng(4)) Then
  loc_1187A16:       If Not (var_A0 = CLng(5)) Then
  loc_1187A20:         If (var_A0 = CLng(6)) Then
  loc_1187A23:         End If
  loc_1187A23:       End If
  loc_1187A23:     End If
  loc_1187A36:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1187A5F:     Set var_8C = Me.TxtGrid
  loc_1187A65:     Call 0.Method_Proc_122_23_1187DA80 (0, var_A4, var_A8, CVar(CLng(Me.FGrid1.Col)))
  loc_1187A6D:     var_D0 = var_A4.Text
  loc_1187A75:     var_110 = CVar(var_A8) 'String
  loc_1187A7D:     Set var_124 = Me.FGrid1
  loc_1187A83:     LateIdCallSt
  loc_1187AA1:   End If
  loc_1187AA4: Else
  loc_1187AAA:   If (var_88 = 1) Then
  loc_1187AB7:     var_9C = Me.FGrid2.Col
  loc_1187AC0:     var_128 = CLng(var_9C)
  loc_1187AD0:     If (var_128 = CLng(1)) Then
  loc_1187AF9:       var_12E = Me.Recordset15.EOF
  loc_1187B2A:       Set var_8C = Me.TxtGrid
  loc_1187B30:       Call 0.Method_Proc_122_23_1187DA80 (arg_C, var_A4, var_A8, ((Me.var_9C.RecordCount = 0) Or ((var_12E = &HFF) Or (Me.Recordset15.BOF = &HFF))), var_128)
  loc_1187B38:       var_124 = var_A4.Text
  loc_1187B50:       If (var_110 Or (var_A8 = vbNullString)) Then
  loc_1187B66:         var_D0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1187B6E:         var_F0 = CVar(CLng(1)) 'Long
  loc_1187B73:         var_120 = vbNullString
  loc_1187B7D:         Set var_A4 = Me.FGrid2
  loc_1187B83:         LateIdCallSt
  loc_1187BA8:         var_D0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1187BB0:         var_F0 = CVar(CLng(2)) 'Long
  loc_1187BB5:         var_120 = vbNullString
  loc_1187BBF:         Set var_A4 = Me.FGrid2
  loc_1187BC5:         LateIdCallSt
  loc_1187BDA:       Else
  loc_1187BDD:         Call Proc_122_24_FBE950(var_12E, var_A4, var_120, var_F0, var_D0, var_A4)
  loc_1187BE8:         If (var_12E = 0) Then
  loc_1187BF0:           Proc_122_23_1187DA8 = 0
  loc_1187BF6:         End If
  loc_1187C00:         var_9C = Me.FGrid2.Row
  loc_1187C09:         var_E0 = CVar(CLng(var_9C)) 'Long
  loc_1187C11:         var_100 = CVar(CLng(1)) 'Long
  loc_1187C47:         var_110 = CVar(CStr(Me.var_9C.Fields.Item("Name").Value)) 'String
  loc_1187C4F:         Set var_B0 = Me.FGrid2
  loc_1187C55:         LateIdCallSt
  loc_1187C7B:         var_9C = Me.FGrid2.Row
  loc_1187C84:         var_E0 = CVar(CLng(var_9C)) 'Long
  loc_1187C8C:         var_100 = CVar(CLng(2)) 'Long
  loc_1187CB1:         var_A4 = Me.var_9C.Fields.Item("Code")
  loc_1187CC2:         var_110 = CVar(CStr(var_A4.Value)) 'String
  loc_1187CCA:         Set var_B0 = Me.FGrid2
  loc_1187CD0:         LateIdCallSt
  loc_1187CEC:       End If
  loc_1187CEF:     Else
  loc_1187CF6:       If (var_128 = CLng(3)) Then
  loc_1187D05:         Set var_8C = Me.TxtGrid
  loc_1187D0B:         Call 0.Method_Proc_122_23_1187DA80 (1, var_A4, var_A8, var_B0, var_110, var_100, var_E0)
  loc_1187D13:         var_B0 = var_A4.Text
  loc_1187D36:         var_F0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1187D3E:         var_120 = CVar(CLng(3)) 'Long
  loc_1187D6B:         var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_1187D73:         Set var_B0 = Me.FGrid2
  loc_1187D79:         LateIdCallSt
  loc_1187D9C:       End If
  loc_1187D9C:     End If
  loc_1187D9C:   End If
  loc_1187D9C: End If
  loc_1187DA1: Proc_122_23_1187DA8 = &HFF
End Sub

Public Sub Proc_122_24_FBE950
  'Data Table: 4421D8
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBE7D3: If (CLng(Me.FGrid2.Col) = CLng(1)) Then
  loc_FBE7D8:   var_92 = 1 'Byte
  loc_FBE7DC: End If
  loc_FBE7E5: Set var_98 = Me.TxtGrid
  loc_FBE7EB: Call 0.Method_Proc_122_24_FBE9500 (1, var_B0)
  loc_FBE80E: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBE842: For var_D4 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBE866:   If (CLng(var_88) = CLng(Me.FGrid2.Row)) Then
  loc_FBE869:     GoTo loc_FBE93B
  loc_FBE86C:   End If
  loc_FBE870:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBE89A:   var_D0 = Trim(CVar(CStr(Me.FGrid2.TextMatrix))))
  loc_FBE8A4:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBE8D9:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBE8FD:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBE916:     Set var_98 = Me.TxtGrid
  loc_FBE91C:     Call 0.Method_Proc_122_24_FBE9500 (1, var_B0, CVar(CLng(var_92)))
  loc_FBE924:     var_B0.SetFocus
  loc_FBE935:     Proc_122_24_FBE950 = 0
  loc_FBE93B:     ' Referenced from: FBE869
  loc_FBE93B:   End If
  loc_FBE93E: Next var_D4 'Integer
  loc_FBE948: Proc_122_24_FBE950 = &HFF
End Sub

Public Sub Proc_122_25_FA7D28
  'Data Table: 4421D8
  loc_FA7BCE: If (var_94.Visible = True) Then
  loc_FA7BD9:   var_94.Visible = False
  loc_FA7BDD: End If
  loc_FA7BEF: If (var_E4.Visible = True) Then
  loc_FA7BFA:   var_E4.Visible = False
  loc_FA7BFE: End If
  loc_FA7C10: If (var_F4.Visible = True) Then
  loc_FA7C1B:   var_F4.Visible = False
  loc_FA7C1F: End If
  loc_FA7C31: If (var_104.Visible = True) Then
  loc_FA7C3C:   var_104.Visible = False
  loc_FA7C40: End If
  loc_FA7C52: If (var_114.Visible = True) Then
  loc_FA7C5D:   var_114.Visible = False
  loc_FA7C61: End If
  loc_FA7C73: If (var_124.Visible = True) Then
  loc_FA7C7E:   var_124.Visible = False
  loc_FA7C82: End If
  loc_FA7C94: If (var_134.Visible = True) Then
  loc_FA7C9F:   var_134.Visible = False
  loc_FA7CA3: End If
  loc_FA7CB5: If (var_144.Visible = True) Then
  loc_FA7CC0:   var_144.Visible = False
  loc_FA7CC4: End If
  loc_FA7CD6: If (var_154.Visible = True) Then
  loc_FA7CE1:   var_154.Visible = False
  loc_FA7CE5: End If
  loc_FA7CF7: If (var_164.Visible = True) Then
  loc_FA7D02:   var_164.Visible = False
  loc_FA7D06: End If
  loc_FA7D18: If (var_174.Visible = True) Then
  loc_FA7D23:   var_174.Visible = False
  loc_FA7D27: End If
  loc_FA7D27: Exit Sub
End Sub

Public Sub Proc_122_26_E8EED0(arg_C) 'E8EED0
  'Data Table: 4421D8
  Dim var_98 As TextBox
  loc_E8EE6A: Set var_8C = Me.Txt
  loc_E8EE70: Call 0.Method_Proc_122_26_E8EED0C (var_8E, var_86)
  loc_E8EE80: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8EE96:   Set var_8C = Me.Txt
  loc_E8EE9C:   Call 0.Method_Proc_122_26_E8EED00 (CInt(var_86), var_98)
  loc_E8EEA4:   var_98.Enabled = arg_C
  loc_E8EEB3: Next var_92 'Byte
  loc_E8EEC5: var_A8.Enabled = Not(arg_C)
  loc_E8EECC: Exit Sub
End Sub

Public Sub Proc_122_27_FE5554
  'Data Table: 4421D8
  Dim var_A8 As Variant
  Dim var_E8 As TextBox
  loc_FE53A5: var_98 = vbNullString 'Variant
  loc_FE53AE: var_B8 = vbNullString 'Variant
  loc_FE53B7: var_C8 = vbNullString 'Variant
  loc_FE53C0: var_D8 = 0 'Variant
  loc_FE53D2: Set var_DC = Me.Txt
  loc_FE53D8: Call 0.Method_Proc_122_27_FE5554C (var_DE, var_86)
  loc_FE53E8: For var_E2 =  To CByte((var_DE - 1)): CByte(0) = var_E2 'Byte
  loc_FE53FE:   Set var_DC = Me.Txt
  loc_FE5404:   Call 0.Method_Proc_122_27_FE55540 (CInt(var_86), var_E8)
  loc_FE540C:   var_E8.Text = vbNullString
  loc_FE5428:   Set var_DC = Me.Txt
  loc_FE542E:   Call 0.Method_Proc_122_27_FE55540 (CInt(var_86), var_E8)
  loc_FE5436:   var_E8.Tag = vbNullString
  loc_FE5445: Next var_E2 'Byte
  loc_FE5450: var_F8 = vbNullString 'Variant
  loc_FE5459: var_108 = vbNullString 'Variant
  loc_FE5462: var_118 = vbNullString 'Variant
  loc_FE546B: var_128 = vbNullString 'Variant
  loc_FE5474: var_138 = vbNullString 'Variant
  loc_FE547D: var_148 = vbNullString 'Variant
  loc_FE5481: var_A8 = 1
  loc_FE548C: Call var_158.ZOrder
  loc_FE54A4: If (var_158.Visible = True) Then
  loc_FE54AF:   var_158.Visible = False
  loc_FE54BA:   var_198.Enabled = True
  loc_FE54BE: End If
  loc_FE54C3: var_138 = "." 'Variant
  loc_FE54D0: Set var_DC = Me.TopCtrl1
  loc_FE54D6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000B(False)
  loc_FE54E7: Set var_DC = Me.TopCtrl1
  loc_FE54ED: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000A(False)
  loc_FE54FE: Set var_DC = Me.TopCtrl1
  loc_FE5504: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030008(False)
  loc_FE5515: Set var_DC = Me.TopCtrl1
  loc_FE551B: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(False)
  loc_FE552C: Set var_DC = Me.TopCtrl1
  loc_FE5532: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030009(False)
  loc_FE5543: Set var_DC = Me.TopCtrl1
  loc_FE5549: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030006(False)
  loc_FE5551: Exit Sub
End Sub
