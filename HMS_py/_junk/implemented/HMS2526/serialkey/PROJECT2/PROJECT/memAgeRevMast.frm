VERSION 5.00
Begin VB.Form memAgeRevMast
  Caption = "Member Category Wise Revenue"
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
  ClientWidth = 11130
  ClientHeight = 5145
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11130
    Height = 450
    TabIndex = 12
  End
  Begin CheckBox Check1
    Caption = "Carry Last Information"
    ForeColor = &HC0&
    Left = 735
    Top = 5925
    Width = 2655
    Height = 285
    TabIndex = 11
    Value = 1
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1515
    Top = 2580
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 975
    Top = 4035
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2085
    Top = 900
    Width = 1410
    Height = 285
    TabIndex = 1
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
    Index = 0
    ForeColor = &HFF0000&
    Left = 2085
    Top = 600
    Width = 3930
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
  Begin DataGrid DGCat
    Left = 10200
    Top = 2415
    Width = 4230
    Height = 2685
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 12225
    Top = 4935
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGRev
    Left = 9555
    Top = 1680
    Width = 3930
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin MSHFlexGrid FGrid
    Left = 705
    Top = 1560
    Width = 8535
    Height = 4275
    TabIndex = 10
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3885
    Top = 6600
    Width = 2790
    Height = 285
    TabIndex = 14
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
    Top = 6600
    Width = 2880
    Height = 255
    TabIndex = 13
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
    Caption = "Applicable Date:"
    ForeColor = &HFF0000&
    Left = 450
    Top = 915
    Width = 1515
    Height = 270
    TabIndex = 6
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
    Caption = "Member Category :"
    ForeColor = &HFF0000&
    Left = 450
    Top = 600
    Width = 1515
    Height = 270
    TabIndex = 5
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

Attribute VB_Name = "memAgeRevMast"

Private global_72 As Integer
Private global_52 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '1129C44
  'Data Table: 4A5324
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_11298EE: Set var_88 = Me.TxtGrid
  loc_11298F4: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_1129902: Proc_6_74_E23240(var_8C)
  loc_112990E: Call Proc_271_43_E87F48(var_8C)
  loc_1129921: Set var_88 = Me.TxtGrid
  loc_1129927: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_112992F: var_8C.MaxLength = 0
  loc_1129947: If (Index = 0) Then
  loc_1129960:   Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_112997B:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11299BA:   Set var_108 = Me.TxtGrid
  loc_11299C0:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_11299C8:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_11299F9:   var_114 = CLng(Me.FGrid.Col)
  loc_1129A09:   If (var_114 = CLng(1)) Then
  loc_1129A4D:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1129A50:       Exit Sub
  loc_1129A51:     End If
  loc_1129A5C:     Set var_8C = Me.FGPoint
  loc_1129A74:     Proc_6_137_1192FDC(Me.DGRev, global_68, Index, var_8C)
  loc_1129A90:     Set var_88 = Me.TxtGrid
  loc_1129A96:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &H32)
  loc_1129A9E:     var_8C.MaxLength = var_114
  loc_1129ABD:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1129AC5:     var_E4 = CVar(CLng(1)) 'Long
  loc_1129AF8:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1129B01:       Me.MoveFirst
  loc_1129B19:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1129B21:       var_E4 = CVar(CLng(6)) 'Long
  loc_1129B2A:       Set var_8C = Me.FGrid
  loc_1129B41:       Proc_6_17_EAAE40(var_12C, CVar(CStr(var_8C.TextMatrix))), var_E4, var_A4)
  loc_1129B6A:       Me.Find CStr("Code=" & var_12C), 0, 1
  loc_1129B9A:       If (Me.EOF = &HFF) Then
  loc_1129BA3:         Me.MoveFirst
  loc_1129BA8:       End If
  loc_1129BA8:     End If
  loc_1129BAB:   Else
  loc_1129BB2:     If (var_114 = CLng(2)) Then
  loc_1129BC4:       Set var_88 = Me.TxtGrid
  loc_1129BCA:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 8, var_15C)
  loc_1129BD2:       var_8C.MaxLength = var_E4
  loc_1129BE7:       If (global_72 = 0) Then
  loc_1129BF2:         var_110 = "{Home}+{End}"
  loc_1129BF8:         Proc_303_0_FBACC8(CStr("Code=" & var_12C), 0, var_A4)
  loc_1129C00:       End If
  loc_1129C03:     Else
  loc_1129C0A:       If Not (var_114 = CLng(4)) Then
  loc_1129C14:         If (var_114 = CLng(5)) Then
  loc_1129C17:         End If
  loc_1129C26:         Set var_88 = Me.TxtGrid
  loc_1129C2C:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 3)
  loc_1129C34:         var_8C.MaxLength = var_A4
  loc_1129C40:       End If
  loc_1129C40:     End If
  loc_1129C40:   End If
  loc_1129C40: End If
  loc_1129C40: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11BBD4C
  'Data Table: 4A5324
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As Variant
  Dim var_98 As DataGrid
  Dim Me As Recordset15
  loc_11BB910: If (KeyCode = 0) Then
  loc_11BB91D:   If (CLng(Shift) = &H1B) Then
  loc_11BB92D:     Set var_8C = Me.TxtGrid
  loc_11BB933:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_11BB94D:     Set var_98 = Me.TxtGrid
  loc_11BB953:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_11BB95B:     var_9C.Text = var_90.Tag
  loc_11BB972:     Set var_8C = Me.FGrid
  loc_11BB98F:     Set var_8C = Me.TxtGrid
  loc_11BB995:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_11BB99D:     var_90.Visible = FGrid.DispID_8001
  loc_11BB9B7:     Set var_8C = Me.TxtGrid
  loc_11BB9BD:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_11BB9C5:     var_90.MaxLength = 0
  loc_11BB9D1:     Exit Sub
  loc_11BB9D2:   End If
  loc_11BB9F5:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_11BBA04:     Set var_8C = Me.TxtGrid
  loc_11BBA0A:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4)
  loc_11BBA12:     var_B0 = var_90.Left
  loc_11BBA29:     Me.DGRev.Left = CVar(var_B4)
  loc_11BBA43:     Set var_98 = Me.TxtGrid
  loc_11BBA49:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_11BBA62:     Set var_8C = Me.TxtGrid
  loc_11BBA68:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_11BBA7C:     var_C4 = CVar((var_90.Top + var_9C.Height)) 'Single
  loc_11BBA8B:     Me.DGRev.Top = CVar(var_90.Top)
  loc_11BBABA:     Set var_9C = Me.FGPoint
  loc_11BBAC5:     Set var_98 = Nothing
  loc_11BBAF3:     Proc_6_69_134A630(Me.DGRev, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_11BBB20:     If (Me.RecordCount > 0) Then
  loc_11BBB27:       Set var_98 = Me.DGRev
  loc_11BBB46:       Proc_6_138_106E830(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_11BBB54:     End If
  loc_11BBB5E:     If (CLng(Shift) = &HD) Then
  loc_11BBB67:       Call Proc_271_46_12BFDA8(KeyCode, var_DE, var_98)
  loc_11BBB72:       If (var_DE = &HFF) Then
  loc_11BBBB8:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 6)
  loc_11BBBC8:       End If
  loc_11BBBC8:     End If
  loc_11BBBCB:   Else
  loc_11BBBD2:     If (var_B0 = CLng(2)) Then
  loc_11BBC15:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_11BBC1E:         Call Proc_271_46_12BFDA8(KeyCode, var_DE, 0, 2)
  loc_11BBC29:         If (var_DE = &HFF) Then
  loc_11BBC6F:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 6, 0)
  loc_11BBC7F:         End If
  loc_11BBC7F:       End If
  loc_11BBC82:     Else
  loc_11BBC89:       If Not (var_B0 = CLng(3)) Then
  loc_11BBC93:         If Not (var_B0 = CLng(4)) Then
  loc_11BBC9D:           If (var_B0 = CLng(5)) Then
  loc_11BBCA0:           End If
  loc_11BBCA0:         End If
  loc_11BBCE0:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_11BBCE9:           Call Proc_271_46_12BFDA8(KeyCode, var_DE, 3, 0)
  loc_11BBCF4:           If (var_DE = &HFF) Then
  loc_11BBD3A:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 6, 0)
  loc_11BBD4A:           End If
  loc_11BBD4A:         End If
  loc_11BBD4A:       End If
  loc_11BBD4A:     End If
  loc_11BBD4A:   End If
  loc_11BBD4A: End If
  loc_11BBD4A: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '100FF1C
  'Data Table: 4A5324
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim arg_10 As Integer
  loc_100FD0B: Proc_6_58_E06050(arg_10)
  loc_100FD1C: If (KeyAscii = 0) Then
  loc_100FD32:   var_A0 = CLng(Me.FGrid.Col)
  loc_100FD42:   If (var_A0 = CLng(1)) Then
  loc_100FD61:     If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_100FD73:       var_A4 = "Name"
  loc_100FD8E:       Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_68, arg_10)
  loc_100FDA8:       Set var_AC = Me.FGPoint
  loc_100FDC0:       Proc_6_138_106E830(Me.DGRev, global_68, KeyAscii, var_AC)
  loc_100FDCE:     End If
  loc_100FDD1:   Else
  loc_100FDD8:     If (var_A0 = CLng(2)) Then
  loc_100FDE5:       Set var_8C = Me.TxtGrid
  loc_100FDEB:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_100FE06:       Proc_6_42_129B55C(var_AC, arg_10, 5, 2)
  loc_100FE15:     Else
  loc_100FE1C:       If (var_A0 = CLng(3)) Then
  loc_100FE48:         If (Ucase(Chr(CLng(arg_10))) = "P") Then
  loc_100FE57:           Set var_8C = Me.TxtGrid
  loc_100FE5D:           Call 0.Method_TxtGrid_KeyPress0 (0, var_AC, "Per")
  loc_100FE65:           var_AC.Text = 0
  loc_100FE74:         Else
  loc_100FE9D:           If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_100FEAC:             Set var_8C = Me.TxtGrid
  loc_100FEB2:             Call 0.Method_TxtGrid_KeyPress0 (0, var_AC, "Amt")
  loc_100FEBA:             var_AC.Text = var_A0
  loc_100FEC6:           End If
  loc_100FEC6:         End If
  loc_100FEC8:         arg_10 = 0
  loc_100FECE:       Else
  loc_100FED5:         If Not (var_A0 = CLng(4)) Then
  loc_100FEDF:           If (var_A0 = CLng(5)) Then
  loc_100FEE2:           End If
  loc_100FEEC:           Set var_8C = Me.TxtGrid
  loc_100FEF2:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC)
  loc_100FF0D:           Proc_6_42_129B55C(var_AC, arg_10, 3)
  loc_100FF19:         End If
  loc_100FF19:       End If
  loc_100FF19:     End If
  loc_100FF19:   End If
  loc_100FF19: End If
  loc_100FF19: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDAD74
  'Data Table: 4A5324
  Dim var_A0 As Long
  Dim var_5310 As String
  loc_EDACC0: On Error Goto loc_EDAD6B
  loc_EDACCF: If (KeyCode = 0) Then
  loc_EDACE5:   var_A0 = CLng(Me.FGrid.Col)
  loc_EDACF5:   If (var_A0 = CLng(1)) Then
  loc_EDAD1B:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_EDAD2C:       Call TxtGrid_KeyDown(KeyCode, global_74)
  loc_EDAD5B:       Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_68, Shift, "Name")
  loc_EDAD6A:     End If
  loc_EDAD6A:   End If
  loc_EDAD6A: End If
  loc_EDAD6A: Exit Sub
  loc_EDAD6B: ' Referenced from: EDACC0
  loc_EDAD6B: Proc_6_60_E63754(&HFF, 0)
  loc_EDAD70: Exit Sub
  loc_EDAD71: var_5310 = CStr(var_A0)
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23D14
  'Data Table: 4A5324
  Dim arg_10 As Integer
  loc_E23CFC: If (Cancel = 0) Then
  loc_E23D05:   Call Proc_271_46_12BFDA8(Cancel, var_88)
  loc_E23D0E:   arg_10 = Not(var_88)
  loc_E23D11: End If
  loc_E23D11: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FF3308
  'Data Table: 4A5324
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FF312E: Set var_88 = Me.Txt
  loc_FF3134: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FF3142: Proc_6_74_E23240(var_8C)
  loc_FF314E: Call Proc_271_43_E87F48(var_8C)
  loc_FF3156: var_92 = Index
  loc_FF3161: If (var_92 = CInt(0)) Then
  loc_FF317B:   If (Me.RecordCount > 0) Then
  loc_FF3189:     Set var_8C = Me.FGPoint
  loc_FF31A1:     Proc_6_137_1192FDC(Me.DGCat, global_64, Index)
  loc_FF31AF:   End If
  loc_FF31FD:   Set var_88 = Me.Txt
  loc_FF3203:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FF320B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FF3223:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FF3226:     Exit Sub
  loc_FF3227:   End If
  loc_FF3234:   Set var_88 = Me.Txt
  loc_FF323A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FF3242:   var_A0 = var_8C.Text
  loc_FF324A:   var_D4 = CVar(var_A0) 'String
  loc_FF328F:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FF3298:     Me.MoveFirst
  loc_FF32BD:     Set var_88 = Me.Txt
  loc_FF32C3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FF32CB:     0 = var_8C.Text
  loc_FF32D9:     Proc_6_17_EAAE40(var_D4, CVar(var_A0), 1)
  loc_FF32EF:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_FF3307:   End If
  loc_FF3307: End If
  loc_FF3307: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F3BE8C
  'Data Table: 4A5324
  loc_F3BD86: If (CLng(Shift) = &H1B) Then
  loc_F3BD89:   Call Proc_271_43_E87F48()
  loc_F3BD8E:   Exit Sub
  loc_F3BD8F: End If
  loc_F3BD9D: If (KeyCode = CInt(0)) Then
  loc_F3BDB8:   Set var_9C = Nothing
  loc_F3BDC3:   Set var_98 = Nothing
  loc_F3BDF1:   Proc_6_69_134A630(Me.DGCat, Me.Txt, KeyCode, global_64, Shift, 0)
  loc_F3BE05: End If
  loc_F3BE40: If ((CBool(Me.DGCat.Visible) = 0) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F3BE58:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F3BE61:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F3BE66:   End If
  loc_F3BE7B:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F3BE84:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_F3BE89:   End If
  loc_F3BE89: End If
  loc_F3BE89: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E084D0
  'Data Table: 4A5324
  Dim var_86 As Integer
  loc_E084C3: Proc_6_58_E06050(arg_10)
  loc_E084CB: var_86 = KeyAscii
  loc_E084CE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA7818
  'Data Table: 4A5324
  loc_EA77AA: If (KeyCode = CInt(0)) Then
  loc_EA77C9:   If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_EA77DD:     var_A4 = "Name"
  loc_EA7801:     Proc_6_68_12A2818(Me.DGCat, Me.Txt, KeyCode, global_64)
  loc_EA7814:   End If
  loc_EA7814: End If
  loc_EA7814: Exit Sub
  loc_EA7815: StAryRecCopy
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C3BC
  'Data Table: 4A5324
  loc_E4C39A: Set var_88 = Me.Txt
  loc_E4C3A0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C3AE: Proc_6_73_E23294(var_8C)
  loc_E4C3BA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10CF2DC
  'Data Table: 4A5324
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_C8 As TextBox
  loc_10CEFDF: var_86 = Cancel
  loc_10CEFEA: If (var_86 = CInt(0)) Then
  loc_10CEFF8:   Set var_8C = Me.Txt
  loc_10CEFFE:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10CF006:   var_98 = "Category"
  loc_10CF027:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_10CF035:     Set var_8C = Me.Txt
  loc_10CF03B:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10CF043:     var_90.SetFocus
  loc_10CF051:     arg_10 = &HFF
  loc_10CF054:     Exit Sub
  loc_10CF055:   End If
  loc_10CF0A3:   Set var_8C = Me.Txt
  loc_10CF0A9:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_10CF0B1:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10CF0C9:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_10CF0D9:     Set var_8C = Me.Txt
  loc_10CF0DF:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10CF0E7:     var_90.Text = vbNullString
  loc_10CF100:     Set var_8C = Me.Txt
  loc_10CF106:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10CF10E:     var_90.Tag = vbNullString
  loc_10CF11D:   Else
  loc_10CF158:     Set var_94 = Me.Txt
  loc_10CF15E:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10CF166:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10CF199:     var_90 = Me.Fields.Item("Code")
  loc_10CF1B7:     Set var_94 = Me.Txt
  loc_10CF1BD:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10CF1C5:     var_B4.Tag = CStr(var_90.Value)
  loc_10CF1DB:   End If
  loc_10CF1DE: Else
  loc_10CF1E6:   If (var_86 = CInt(1)) Then
  loc_10CF1F4:     Set var_8C = Me.Txt
  loc_10CF1FA:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10CF223:     If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_10CF231:       Set var_8C = Me.Txt
  loc_10CF237:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10CF23F:       var_90.SetFocus
  loc_10CF24D:       arg_10 = &HFF
  loc_10CF250:       Exit Sub
  loc_10CF251:     End If
  loc_10CF25B:     Set var_8C = Me.Txt
  loc_10CF261:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10CF281:     Set var_B4 = Me.Txt
  loc_10CF287:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_10CF28F:     var_C8.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_10CF2B5:     Me.FGrid.Row = 1
  loc_10CF2D0:     Me.FGrid.Col = 1
  loc_10CF2D8:   End If
  loc_10CF2D8: End If
  loc_10CF2D8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5F444
  'Data Table: 4A5324
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5F40F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5F422: Set var_A8 = Me.TxtGrid
  loc_E5F428: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5F430: var_AC.Visible = False
  loc_E5F43C: Call Proc_271_43_E87F48()
  loc_E5F441: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69168
  'Data Table: 4A5324
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69124: Set var_88 = Me.TxtGrid
  loc_E6912A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69144: If (var_8C.Visible = 0) Then
  loc_E6915D:   Me.FGrid.BackColorSel = CVar(CLng(global_96))
  loc_E69165: End If
  loc_E69165: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4C284
  'Data Table: 4A5324
  loc_E4C25C: Set var_88 = Me.TopCtrl1
  loc_E4C262: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_E4C27B: If (CStr() <> "Browse") Then
  loc_E4C27E:   Call Proc_271_45_E420E8()
  loc_E4C283: End If
  loc_E4C283: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10E7610
  'Data Table: 4A5324
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10E72FC: Set var_88 = Me.TopCtrl1
  loc_10E7302: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_10E7347: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10E7350:   Call Form_KeyDown(Cancel, arg_10)
  loc_10E7355: End If
  loc_10E7359: Set var_88 = Me.TopCtrl1
  loc_10E735F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_10E7378: If (CStr() = "Browse") Then
  loc_10E737B:   Exit Sub
  loc_10E737C: End If
  loc_10E73F0: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10E73FB:   var_9C = "+{Tab}"
  loc_10E7401:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10E740B:   Cancel = 0
  loc_10E7411: Else
  loc_10E7468:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10E746D:     Cancel = 0
  loc_10E7470:   End If
  loc_10E7470: End If
  loc_10E749C: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10E74B3: Set var_88 = Me.TopCtrl1
  loc_10E74B9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(Cancel)
  loc_10E74D2: If (CStr(Cancel) = "Edit") Then
  loc_10E74D5:   Exit Sub
  loc_10E74D6: End If
  loc_10E74E7: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10E74FD:   var_DC = CLng(Me.FGrid.Col)
  loc_10E750D:   If (var_DC = CLng(1)) Then
  loc_10E7523:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E752B:     var_FC = CVar(CLng(1)) 'Long
  loc_10E7530:     var_11C = vbNullString
  loc_10E753A:     Set var_A0 = Me.FGrid
  loc_10E7540:     LateIdCallSt
  loc_10E7565:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E756D:     var_FC = CVar(CLng(6)) 'Long
  loc_10E7572:     var_11C = vbNullString
  loc_10E757C:     Set var_A0 = Me.FGrid
  loc_10E7582:     LateIdCallSt
  loc_10E7597:   Else
  loc_10E759E:     If (var_DC = CLng(2)) Then
  loc_10E75B4:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E75CC:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10E75D1:       var_11C = vbNullString
  loc_10E75DB:       Set var_B4 = Me.FGrid
  loc_10E75E1:       LateIdCallSt
  loc_10E75F9:     End If
  loc_10E75F9:   End If
  loc_10E75F9: End If
  loc_10E75FF: If (Cancel = &HD) Then
  loc_10E7607:   global_72 = 0
  loc_10E760A: End If
  loc_10E760C: Cancel = 0
  loc_10E760F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E59AE8
  'Data Table: 4A5324
  loc_E59AB4: Set var_88 = Me.TopCtrl1
  loc_E59ABA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_E59AD3: If (CStr() = "Browse") Then
  loc_E59AD6:   Exit Sub
  loc_E59AD7: End If
  loc_E59AE0: Call FGrid_UnknownEvent_C()
  loc_E59AE5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '11618B0
  'Data Table: 4A5324
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1161504: Set var_88 = Me.TopCtrl1
  loc_116150A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1161523: If (CStr() = "Browse") Then
  loc_1161526:   Exit Sub
  loc_1161527: End If
  loc_116153A: var_A0 = CLng(Me.FGrid.Col)
  loc_116154A: If (var_A0 = CLng(1)) Then
  loc_1161551:   Set var_C4 = Me.FGrid
  loc_1161575:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11615A2:   Set var_B4 = var_C4
  loc_11615B4:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_11615DC:   Set var_88 = Me.TxtGrid
  loc_11615E2:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_11615EA:   0 = var_B4.Text
  loc_1161603:   If (Len(var_9C) <= 1) Then
  loc_1161612:     Set var_88 = Me.TxtGrid
  loc_1161618:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1161620:     var_CA = var_B4.Text
  loc_1161631:     Set var_B8 = Me.TxtGrid
  loc_1161637:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_116163F:     var_C4.Text = var_9C
  loc_1161652:   End If
  loc_116165E:   Set var_88 = Me.TxtGrid
  loc_1161664:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_116167E:   Set var_B8 = Me.TxtGrid
  loc_1161684:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_116168C:   var_C4.SelStart = Len(var_B4.Text)
  loc_11616A2: Else
  loc_11616A9:   If (var_A0 = CLng(2)) Then
  loc_11616EA:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_11616FF:   Else
  loc_1161706:     If (var_A0 = CLng(3)) Then
  loc_116173A:       var_CA = Asc(CStr(Ucase(Chr(CLng(Cancel)))))
  loc_116175E:       Set var_B4 = Me.FGrid
  loc_1161770:       Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0, var_CA)
  loc_11617B5:       If (Ucase(Chr(CLng(Cancel))) = "P") Then
  loc_11617C4:         Set var_88 = Me.TxtGrid
  loc_11617CA:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, "Per", 0, var_CA)
  loc_11617D2:         var_B4.Text = &HFF
  loc_11617E1:       Else
  loc_116180A:         If (Ucase(Chr(CLng(Cancel))) = "A") Then
  loc_1161819:           Set var_88 = Me.TxtGrid
  loc_116181F:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, "Amt")
  loc_1161827:           var_B4.Text = Cancel
  loc_1161833:         End If
  loc_1161833:       End If
  loc_1161836:     Else
  loc_116183D:       If Not (var_A0 = CLng(4)) Then
  loc_1161847:         If (var_A0 = CLng(5)) Then
  loc_116184A:         End If
  loc_1161888:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_116189A:       End If
  loc_116189A:     End If
  loc_116189A:   End If
  loc_116189A: End If
  loc_11618A4: If (CLng(Cancel) <> &HD) Then
  loc_11618AC:   global_72 = &HFF
  loc_11618AF: End If
  loc_11618AF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1003D70
  'Data Table: 4A5324
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_1003B78: Set var_88 = Me.TopCtrl1
  loc_1003B7E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_1003B97: If (CStr() = "Browse") Then
  loc_1003B9A:   Exit Sub
  loc_1003B9B: End If
  loc_1003B9F: Set var_88 = Me.TopCtrl1
  loc_1003BA5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1003BBE: If (CStr() = "Edit") Then
  loc_1003BC1:   Exit Sub
  loc_1003BC2: End If
  loc_1003BDF: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1003BE2:   Exit Sub
  loc_1003BE3: End If
  loc_1003BF4: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1003C16:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1003C50:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_1003C72:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1003C88:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1003C91:         Set var_110 = Me.FGrid
  loc_1003CAC:       Else
  loc_1003CBF:         Me.FGrid.Rows = 1
  loc_1003CE5:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_1003CED:         Set var_110 = Me.FGrid
  loc_1003D1A:         Me.FGrid.FixedRows = 1
  loc_1003D22:       End If
  loc_1003D22:     End If
  loc_1003D25:   Else
  loc_1003D46:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_1003D56:   End If
  loc_1003D5A:   Set var_88 = Me.FGrid
  loc_1003D6B: End If
  loc_1003D6B: Exit Sub
  loc_1003D6C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41EF8
  'Data Table: 4A5324
  Dim var_8C As TextBox
  loc_E41ECC: Call Proc_271_43_E87F48()
  loc_E41EDC: Set var_88 = Me.TxtGrid
  loc_E41EE2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E41EEA: var_8C.Visible = False
  loc_E41EF6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EA72C8
  'Data Table: 4A5324
  Dim var_8C As CheckBox
  Dim var_94 As TextBox
  loc_EA7240: On Error Goto loc_EA72C2
  loc_EA726A: Call Proc_271_42_E77964(Proc_5_1_100EC1C("ADD", Me))
  loc_EA7294: If (CLng(Me.Check1.Value) = 0) Then
  loc_EA7297:   Call Proc_271_40_F18FE0(global_60)
  loc_EA729C: End If
  loc_EA72A7: Set var_8C = Me.Txt
  loc_EA72AD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EA72B5: var_94.SetFocus
  loc_EA72C1: Exit Sub
  loc_EA72C2: ' Referenced from: EA7240
  loc_EA72C2: Proc_6_60_E63754(var_94)
  loc_EA72C7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EEDFA8
  'Data Table: 4A5324
  loc_EEDEE8: On Error Goto loc_EEDFA1
  loc_EEDF22: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EEDF4C:   Call Proc_271_42_E77964(Proc_5_1_100EC1C("INI", Me))
  loc_EEDF5F:   Set var_10C = Me.TopCtrl1
  loc_EEDF65:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EEDF76:   Set var_10C = Me.TopCtrl1
  loc_EEDF7C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_EEDF8D:   Set var_10C = Me.TopCtrl1
  loc_EEDF93:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EEDF9B:   Call Proc_271_41_1329DA8(global_60)
  loc_EEDFA0: End If
  loc_EEDFA0: Exit Sub
  loc_EEDFA1: ' Referenced from: EEDEE8
  loc_EEDFA1: Proc_6_60_E63754()
  loc_EEDFA6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15DE8
  'Data Table: 4A5324
  loc_E15DDD: Me.Global.Unload Me
  loc_E15DE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ECCE64
  'Data Table: 4A5324
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_ECCDC0: On Error Goto loc_ECCE5B
  loc_ECCDDD: If (Me.Recordset15.RecordCount <= 0) Then
  loc_ECCDE6:   var_B8 = "Information"
  loc_ECCE01:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_ECCE11:   Exit Sub
  loc_ECCE12: End If
  loc_ECCE19: var_10C = "Select DISTINCT (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103)) AS Code,MC.Name as Category,Convert(Varchar(11),MR.AppDate,106) As AppDate FROM (MemAgeRevWise MR Left Join MemCatMast MC On MR.MemCat=MC.Code) Where (MR.LOGSITE_CODE='" & MemVar_1F95078
  loc_ECCE20: MemVar_1F950E4 = var_10C & "' or MR.LOGSITE_CODE='HO') Order By (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103))"
  loc_ECCE2D: MemVar_1F95120 = Me
  loc_ECCE3A: Proc_6_126_F1C850("3000,1000")
  loc_ECCE55: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ECCE5A: Exit Sub
  loc_ECCE5B: ' Referenced from: ECCDC0
  loc_ECCE5B: Proc_6_60_E63754(MemVar_1F950E4)
  loc_ECCE60: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E426CC
  'Data Table: 4A5324
  loc_E426BC: Proc_5_0_1107AD0(&HFF, Me)
  loc_E426C4: Call Proc_271_41_1329DA8(global_60)
  loc_E426C9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E425A0
  'Data Table: 4A5324
  loc_E42590: Proc_5_0_1107AD0(&HFF, Me)
  loc_E42598: Call Proc_271_41_1329DA8(global_60)
  loc_E4259D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E4253C
  'Data Table: 4A5324
  loc_E4252C: Proc_5_0_1107AD0(&HFF, Me)
  loc_E42534: Call Proc_271_41_1329DA8(global_60)
  loc_E42539: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E4221C
  'Data Table: 4A5324
  loc_E4220C: Proc_5_0_1107AD0(&HFF, Me)
  loc_E42214: Call Proc_271_41_1329DA8(global_60)
  loc_E42219: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E23C6C
  'Data Table: 4A5324
  Dim Me As Recordset15
  loc_E23C53: Me.Requery -1
  loc_E23C63: Me.Requery -1
  loc_E23C68: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1448E98
  'Data Table: 4A5324
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim var_98 As String
  Dim unk_4A533A As Connection15
  Dim var_90 As TextBox
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_1AC As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_1F0 As MSHFlexGrid
  Dim var_5F0 As Double
  Dim var_298 As Variant
  Dim var_5F8 As Double
  Dim var_600 As Double
  Dim var_458 As Variant
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_1BC As Variant
  Dim var_244 As Variant
  Dim var_478 As Variant
  Dim var_5C0 As Variant
  Dim var_1A8 As TextBox
  Dim var_19C As String
  loc_1448424: On Error Goto loc_1448E43
  loc_144842B: var_86 = CByte(0) 'Byte
  loc_144843A: Set var_8C = Me.Txt
  loc_1448440: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1448469: If (Proc_6_27_EA61EC(var_90, "Category") = 0) Then
  loc_1448473:   Call Txt_GotFocus(CInt(0))
  loc_1448478:   Exit Sub
  loc_1448479: End If
  loc_1448484: Set var_8C = Me.Txt
  loc_144848A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_90)
  loc_14484B3: If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_14484BD:   Call Txt_GotFocus(CInt(1))
  loc_14484C2:   Exit Sub
  loc_14484C3: End If
  loc_14484C6: Call Proc_271_44_FCB750(var_9A)
  loc_14484D1: If (var_9A = &HFF) Then
  loc_14484D4:   Exit Sub
  loc_14484D5: End If
  loc_14484FA: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_144852B:   If ((var_88 > 1) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_1448532:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_144853A:     var_E0 = CVar(CLng(6)) 'Long
  loc_1448554:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_144855A:     var_110 = Trim(var_100)
  loc_1448576:     If (var_110 = vbNullString) Then
  loc_1448592:       MsgBox("Define revenue ", &H40, var_100, var_110, var_130)
  loc_14485A2:       Exit Sub
  loc_14485A3:     End If
  loc_14485A3:   End If
  loc_14485A7:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_14485AF:   var_E0 = CVar(CLng(6)) 'Long
  loc_14485EB:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_14485F2:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_14485FA:     var_E0 = CVar(CLng(2)) 'Long
  loc_1448636:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_144863D:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1448645:       var_E0 = CVar(CLng(1)) 'Long
  loc_144868C:       MsgBox("Fill Value For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_14486A9:       Set var_8C = Me.FGrid
  loc_14486BA:       Exit Sub
  loc_14486BB:     End If
  loc_14486BF:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_14486C7:     var_E0 = CVar(CLng(3)) 'Long
  loc_1448703:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_144870A:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1448712:       var_E0 = CVar(CLng(1)) 'Long
  loc_1448759:       MsgBox("Fill P/A For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_1448776:       Set var_8C = Me.FGrid
  loc_1448787:       Exit Sub
  loc_1448788:     End If
  loc_144878C:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1448794:     var_E0 = CVar(CLng(4)) 'Long
  loc_14487C4:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_14487CB:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_14487D3:       var_E0 = CVar(CLng(1)) 'Long
  loc_144881A:       MsgBox("Fill From Age For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_1448837:       Set var_8C = Me.FGrid
  loc_1448848:       Exit Sub
  loc_1448849:     End If
  loc_144884D:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1448855:     var_E0 = CVar(CLng(5)) 'Long
  loc_1448885:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_144888C:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1448894:       var_E0 = CVar(CLng(1)) 'Long
  loc_14488DB:       MsgBox("Fill To Age For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_14488F8:       Set var_8C = Me.FGrid
  loc_1448909:       Exit Sub
  loc_144890A:     End If
  loc_144890A:   End If
  loc_144890D: Next var_B0 'Integer
  loc_144891B: unk_4A533A.BeginTrans var_194
  loc_1448924: var_86 = CByte(1) 'Byte
  loc_144894D: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_1448957:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_144895F:   var_E0 = CVar(CLng(6)) 'Long
  loc_1448979:   var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_144899B:   If CBool(Trim(var_100) <> vbNullString) Then
  loc_14489AC:     Set var_8C = Me.Txt
  loc_14489B2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90, var_19C)
  loc_14489BA:     var_E0 = var_90.Tag
  loc_14489CA:     Set var_94 = Me.Txt
  loc_14489D0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A8)
  loc_14489DF:     Proc_6_7_F26918(var_100, CVar(var_1A8))
  loc_14489E8:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_14489F0:     var_F0 = CVar(CLng(6)) 'Long
  loc_1448A20:     Set var_1F0 = Me.FGrid
  loc_1448A39:     var_5F0 = Val(CStr(var_1F0.TextMatrix)))
  loc_1448A57:     var_298 = Me.FGrid.TextMatrix)
  loc_1448A91:     var_5F8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1448AC2:     var_600 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1448ACA:     var_458 = CVar(Proc_6_15_EF37AC(var_600, CVar(CLng(5)), CVar(CLng(var_88)), var_5F8, CVar(CLng(4)), CVar(CLng(var_88)), var_298, CVar(CLng(3)))) 'String
  loc_1448AD0:     Proc_6_7_F26918(var_468, var_458, CVar(CLng(var_88)), var_5F0, CVar(CLng(2)))
  loc_1448AD9:     Set var_49C = Me.TopCtrl1
  loc_1448ADF:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(CVar(CLng(var_88)))
  loc_1448B2A:     var_98 = "Insert Into MemAgeRevWise (MemCat,AppDate,RevCode,SValue,PerOrAmt," & "FrAge,ToAge,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_1448B76:     var_244 = CVar(var_98 & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_5F0) & ",'" 
  loc_1448BCC:     var_478 = var_244 & CVar(CStr(var_298)) & "'," & CVar(var_5F8) & "," & CVar(var_600) & ",'" & CVar(MemVar_1F950C8) & "'," & var_468 
  loc_1448C0B:     var_5C0 = var_478 & ",'" & IIf((CStr(var_4AC) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_1448C19:     unk_4A533A.Execute CStr(var_5C0), var_5E4, -1
  loc_1448C9D:   End If
  loc_1448CA0: Next var_198 'Integer
  loc_1448CAB: unk_4A533A.CommitTrans
  loc_1448CB4: var_86 = CByte(0) 'Byte
  loc_1448CC3: Set var_1AC = Me.Txt
  loc_1448CC9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1448CDC: Set var_8C = Me.Txt
  loc_1448CE2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90)
  loc_1448CF2: var_100 = CVar(var_90.Tag) 'String
  loc_1448D08: Set var_94 = Me.Txt
  loc_1448D0E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_19C)
  loc_1448D16: 6 = var_1A8.Tag
  loc_1448D23: var_AC = Space((var_100 - Len(var_19C)))
  loc_1448D2B: var_110 = (var_1F0 + CVar(var_1A8))
  loc_1448D2F: var_C0 = "**"
  loc_1448D34: var_130 = (CVar(var_90.Tag & " Values ('" & var_19C & "',") + var_C0)
  loc_1448D5F: var_1BC = (1 + Format(CVar(var_1F0), "dd/mm/yyyy"))
  loc_1448DA3: Me.Recordset15.Requery -1
  loc_1448DC7: var_19C = "SearchCode ='" & CStr(CVar(var_90.Tag & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'"
  loc_1448DD3: Me.Recordset15.Find var_19C, 0, 1
  loc_1448DE3: Set var_8C = Me.TopCtrl1
  loc_1448DE9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_C0)
  loc_1448E02: If (CStr(1) = "Add") Then
  loc_1448E05:   Call TopCtrl1_UnknownEvent_A()
  loc_1448E0A:   Exit Sub
  loc_1448E0B: End If
  loc_1448E24: var_98 = "INI"
  loc_1448E32: Call Proc_271_42_E77964(Proc_5_1_100EC1C(var_98, Me), global_60)
  loc_1448E3D: Call Proc_271_41_1329DA8(CVar(var_98 & " Values ('" & var_19C & "',") & var_100)
  loc_1448E42: Exit Sub
  loc_1448E43: ' Referenced from: 1448424
  loc_1448E4C: If (CInt(var_86) = 1) Then
  loc_1448E55:   unk_4A533A.RollbackTrans
  loc_1448E5A: End If
  loc_1448E62: Set var_8C = Err()
  loc_1448E68: Call 0.Method_arg_2C (var_98)
  loc_1448E81: MsgBox(CVar(var_98), &H10, var_100, CVar(var_98 & " Values ('" & var_19C & "',"), CVar(var_98 & " Values ('" & var_19C & "',") & var_100)
  loc_1448E94: Exit Sub
End Sub

Private Sub Form_Load() '1142F34
  'Data Table: 4A5324
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_C0 As String
  Dim unk_4A533A As Connection15
  loc_1142BA8: On Error Goto loc_1142EF0
  loc_1142BBA: Me.LblUser.Left = CDbl(13500)
  loc_1142BD1: Me.LblUser.Top = CDbl(7800)
  loc_1142BE8: Me.LblLDt.Top = CDbl(8160)
  loc_1142BFF: Me.LblLDt.Left = CDbl(13500)
  loc_1142C0E: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1142C21: Me.Label1.BackColor = CLng(MemVar_1F951B4)
  loc_1142C37: Me.Label2.BackColor = CLng(MemVar_1F951B4)
  loc_1142C4D: Me.Check1.BackColor = CLng(MemVar_1F951B4)
  loc_1142C68: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_1142C7A: Set var_88 = Me.TopCtrl1
  loc_1142C80: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1142C8E: Call 0.Method_arg_50 (var_AC)
  loc_1142C96: var_BC = CVar(var_AC) 'String
  loc_1142CA4: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_BC)
  loc_1142CCA: var_C0 = "SELECT MemCatMast.Code, MemCatMast.Name FROM MemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY MemCatMast.Name"
  loc_1142CD3: unk_4A533A.Execute var_C0, var_BC, -1
  loc_1142D02: CVarUnk
  loc_1142D07: VerifyVarObj
  loc_1142D13: LateIdStAd
  loc_1142D35: var_AC = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1142D45: unk_4A533A.Execute var_AC & "' or LOGSITE_CODE='HO') ORDER BY MembershipRevMast.Description", var_BC, -1
  loc_1142D74: CVarUnk
  loc_1142D79: VerifyVarObj
  loc_1142D7F: Set var_88 = Me.DGRev
  loc_1142D85: LateIdStAd
  loc_1142DB1: var_AC = "Select DISTINCT (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From MemAgeRevWise MR Where (MR.LOGSITE_CODE='" & MemVar_1F95078
  loc_1142DB8: var_BC = CVar(var_AC & "' or MR.LOGSITE_CODE='HO') Order By (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103))") 'String
  loc_1142DC5: Me.DGRev.Open var_BC, CVar(MemVar_1F95044), 3
  loc_1142DE9: var_AC = "INI"
  loc_1142DF7: Call Proc_271_42_E77964(Proc_5_1_100EC1C(var_AC, Me, global_60, 1, -1, Me), Me.DGCat, Me)
  loc_1142E0A: Set var_88 = Me.TopCtrl1
  loc_1142E10: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_1142E21: Set var_88 = Me.TopCtrl1
  loc_1142E27: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_1142E38: Set var_88 = Me.TopCtrl1
  loc_1142E3E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_1142E46: Call Proc_271_39_11A34D0(var_88, Me.TopCtrl1)
  loc_1142E4B: Call Proc_271_41_1329DA8(var_88)
  loc_1142E63: Me.FGrid.Left = CVar(CDbl(700))
  loc_1142E7E: Me.FGrid.Top = CVar(CDbl(1340))
  loc_1142E8A: Set var_88 = Me.FGrid
  loc_1142E9F: Call 0.Method_Me8 (var_CC)
  loc_1142EB2: var_98 = CVar(((var_CC - CDbl(2400)) - CDbl(var_88.Top))) 'Single
  loc_1142EC1: Me.FGrid.Height = CVar(CDbl(1340))
  loc_1142ED9: Call 0.Method_arg_160 (var_88)
  loc_1142EE7: Call 0.Method_arg_164 (var_88)
  loc_1142EEF: Exit Sub
  loc_1142EF0: ' Referenced from: 1142BA8
  loc_1142EF8: Set var_88 = Err()
  loc_1142EFE: Call 0.Method_arg_2C (var_AC)
  loc_1142F1F: MsgBox(CVar(var_AC), &H40, "Information", var_EC, var_10C)
  loc_1142F32: Exit Sub
  loc_1142F33: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E59498
  'Data Table: 4A5324
  loc_E59463: Set global_64 = Nothing
  loc_E59475: Set global_60 = Nothing
  loc_E59487: Set global_68 = Nothing
  loc_E59493: global_52 = 0
  loc_E59496: Exit Sub
End Sub

Private Sub Form_Activate() 'E4E100
  'Data Table: 4A5324
  loc_E4E0D0: On Error Goto loc_E4E0FA
  loc_E4E0D7: Set var_88 = Me.TopCtrl1
  loc_E4E0DD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4E0F2: If (CLng(CInt()) = &H2D) Then
  loc_E4E0F5:   Call TopCtrl1_UnknownEvent_15()
  loc_E4E0FA:   ' Referenced from: E4E0D0
  loc_E4E0FA: End If
  loc_E4E0FA: Proc_6_60_E63754()
  loc_E4E0FF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24E44
  'Data Table: 4A5324
  loc_E24E29: If (global_52 = &HFF) Then
  loc_E24E39:   Me.Global.Unload Me
  loc_E24E41: End If
  loc_E24E41: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8BFB4
  'Data Table: 4A5324
  loc_E8BF50: On Error Goto loc_E8BF70
  loc_E8BF67: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E8BF6F: Exit Sub
  loc_E8BF70: ' Referenced from: E8BF50
  loc_E8BF78: Set var_88 = Err()
  loc_E8BF7E: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8BF9F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8BFB2: Exit Sub
  loc_E8BFB3: Exit Sub
End Sub

Public Function global_52Get() '4A60D8
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4A60E7
  global_52 = Value
End Sub

Public Function global_56Get() '4A60F6
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4A6105
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E9BF20
  'Data Table: 4A5324
  loc_E9BEA6: On Error Goto loc_E9BF19
  loc_E9BEB2: Me.Recordset15.MoveFirst
  loc_E9BEDF: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9BF0B: Proc_5_0_1107AD0(&HFF, Me, global_60)
  loc_E9BF13: Call Proc_271_41_1329DA8(0)
  loc_E9BF18: Exit Sub
  loc_E9BF19: ' Referenced from: E9BEA6
  loc_E9BF19: Proc_6_60_E63754(var_A0)
  loc_E9BF1E: Exit Sub
End Sub

Public Sub Proc_271_39_11A34D0
  'Data Table: 4A5324
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_104 As TextBox
  Dim var_10C As DataGrid
  Dim var_110 As TextBox
  loc_11A30B8: Set var_88 = Me.FGrid
  loc_11A30C7: var_88.Height = CVar(CDbl(4250))
  loc_11A30D8: var_88.Width = CVar(CDbl(7500))
  loc_11A30E9: var_88.Cols = 7
  loc_11A30FA: var_88.Rows = 2
  loc_11A3113: global_96 = CStr(CLng(var_88.BackColor))
  loc_11A3120: var_98 = CVar(CLng(6)) 'Long
  loc_11A3125: var_CC = 0
  loc_11A3131: LateIdCallSt
  loc_11A313C: var_98 = CVar(CLng(6)) 'Long
  loc_11A3147: var_CC = CVar(CInt(4)) 'Integer
  loc_11A314E: LateIdCallSt
  loc_11A3156: var_98 = 1
  loc_11A3162: var_CC = CVar(CLng(6)) 'Long
  loc_11A3167: var_EC = "1"
  loc_11A3170: LateIdCallSt
  loc_11A3178: var_98 = 0
  loc_11A3184: var_CC = CVar(CLng(1)) 'Long
  loc_11A3189: var_EC = "Revenue"
  loc_11A3192: LateIdCallSt
  loc_11A319D: var_98 = CVar(CLng(1)) 'Long
  loc_11A31A2: var_CC = &HC80
  loc_11A31AE: LateIdCallSt
  loc_11A31B9: var_98 = CVar(CLng(1)) 'Long
  loc_11A31C4: var_CC = CVar(CInt(1)) 'Integer
  loc_11A31CB: LateIdCallSt
  loc_11A31D3: var_98 = 0
  loc_11A31DF: var_CC = CVar(CLng(2)) 'Long
  loc_11A31E4: var_EC = "Value"
  loc_11A31ED: LateIdCallSt
  loc_11A31F8: var_98 = CVar(CLng(2)) 'Long
  loc_11A3203: var_CC = CVar(CInt(7)) 'Integer
  loc_11A320A: LateIdCallSt
  loc_11A3215: var_98 = CVar(CLng(2)) 'Long
  loc_11A3220: var_CC = CVar(CInt(7)) 'Integer
  loc_11A3227: LateIdCallSt
  loc_11A3232: var_98 = CVar(CLng(2)) 'Long
  loc_11A3237: var_CC = &H4B0
  loc_11A3243: LateIdCallSt
  loc_11A324B: var_98 = 0
  loc_11A3257: var_CC = CVar(CLng(3)) 'Long
  loc_11A325C: var_EC = "P/A"
  loc_11A3265: LateIdCallSt
  loc_11A3270: var_98 = CVar(CLng(3)) 'Long
  loc_11A327B: var_CC = CVar(CInt(4)) 'Integer
  loc_11A3282: LateIdCallSt
  loc_11A328D: var_98 = CVar(CLng(3)) 'Long
  loc_11A3298: var_CC = CVar(CInt(4)) 'Integer
  loc_11A329F: LateIdCallSt
  loc_11A32AA: var_98 = CVar(CLng(3)) 'Long
  loc_11A32AF: var_CC = &H258
  loc_11A32BB: LateIdCallSt
  loc_11A32C3: var_98 = 0
  loc_11A32CF: var_CC = CVar(CLng(4)) 'Long
  loc_11A32D4: var_EC = "From Age"
  loc_11A32DD: LateIdCallSt
  loc_11A32E8: var_98 = CVar(CLng(4)) 'Long
  loc_11A32F3: var_CC = CVar(CInt(7)) 'Integer
  loc_11A32FA: LateIdCallSt
  loc_11A3305: var_98 = CVar(CLng(4)) 'Long
  loc_11A3310: var_CC = CVar(CInt(7)) 'Integer
  loc_11A3317: LateIdCallSt
  loc_11A3322: var_98 = CVar(CLng(4)) 'Long
  loc_11A3327: var_CC = &H3E8
  loc_11A3333: LateIdCallSt
  loc_11A333B: var_98 = 0
  loc_11A3347: var_CC = CVar(CLng(5)) 'Long
  loc_11A334C: var_EC = "To Age"
  loc_11A3355: LateIdCallSt
  loc_11A3360: var_98 = CVar(CLng(5)) 'Long
  loc_11A336B: var_CC = CVar(CInt(7)) 'Integer
  loc_11A3372: LateIdCallSt
  loc_11A337D: var_98 = CVar(CLng(5)) 'Long
  loc_11A3388: var_CC = CVar(CInt(7)) 'Integer
  loc_11A338F: LateIdCallSt
  loc_11A339A: var_98 = CVar(CLng(5)) 'Long
  loc_11A339F: var_CC = &H3E8
  loc_11A33AB: LateIdCallSt
  loc_11A33B3: var_98 = 0
  loc_11A33BF: var_CC = CVar(CLng(0)) 'Long
  loc_11A33C4: var_EC = "O"
  loc_11A33CD: LateIdCallSt
  loc_11A33D8: var_98 = CVar(CLng(0)) 'Long
  loc_11A33DD: var_CC = &H64
  loc_11A33E9: LateIdCallSt
  loc_11A33F4: var_98 = CVar(CLng(0)) 'Long
  loc_11A3406: LateIdCallSt
  loc_11A340E: var_98 = True
  loc_11A3415: var_88.Enabled = var_98
  loc_11A3428: Set var_100 = Me.Txt
  loc_11A342E: Call 0.Method_Proc_271_39_11A34D00 (CInt(0), var_104, var_108, var_88, CVar(CInt(4)), var_98, var_88)
  loc_11A3436: var_CC = var_104.Left
  loc_11A343E: var_98 = CVar(var_108) 'Single
  loc_11A344D: Me.DGCat.Left = var_98
  loc_11A3469: Set var_10C = Me.Txt
  loc_11A346F: Call 0.Method_Proc_271_39_11A34D00 (CInt(0), var_110, var_114, var_98, var_88)
  loc_11A3477: var_EC = var_110.Height
  loc_11A348A: Set var_100 = Me.Txt
  loc_11A3490: Call 0.Method_Proc_271_39_11A34D00 (CInt(0), var_104, var_108)
  loc_11A3498: var_CC = var_104.Top
  loc_11A34A8: var_98 = CVar(((var_108 + var_114) + CDbl(&H19))) 'Single
  loc_11A34B7: Me.DGCat.Top = var_98
  loc_11A34CB: Set var_88 = Nothing 
  loc_11A34CF: Exit Sub
End Sub

Public Sub Proc_271_40_F18FE0
  'Data Table: 4A5324
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F18EF6: Set var_8C = Me.Txt
  loc_F18EFC: Call 0.Method_Proc_271_40_F18FE0C (var_8E, var_86)
  loc_F18F0C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F18F22:   Set var_8C = Me.Txt
  loc_F18F28:   Call 0.Method_Proc_271_40_F18FE00 (CInt(var_86), var_98)
  loc_F18F30:   var_98.Text = vbNullString
  loc_F18F4C:   Set var_8C = Me.Txt
  loc_F18F52:   Call 0.Method_Proc_271_40_F18FE00 (CInt(var_86), var_98)
  loc_F18F5A:   var_98.Tag = vbNullString
  loc_F18F69: Next var_92 'Byte
  loc_F18F82: Me.FGrid.Rows = 1
  loc_F18F9F: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F18FA7: Set var_98 = Me.FGrid
  loc_F18FD6: Me.FGrid.FixedRows = 1
  loc_F18FDE: Exit Sub
End Sub

Public Sub Proc_271_41_1329DA8
  'Data Table: 4A5324
  Dim var_94 As String
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_F4 As Variant
  Dim unk_4A533A As Connection15
  Dim var_88 As Recordset15
  Dim var_12C As Fields15
  Dim var_140 As Variant
  Dim var_118 As Variant
  Dim var_130 As TextBox
  Dim var_8A As Integer
  Dim var_128 As Variant
  loc_1329644: On Error Goto loc_1329DA0
  loc_1329661: If (Me.Recordset15.RecordCount > 0) Then
  loc_1329664:   Call Proc_271_40_F18FE0()
  loc_132967D:   var_94 = "Select MemCatMast.Code AS CatCode , MemCatMast.Name AS CatName , MR.U_Name,MR.U_EntDt, MR.U_AE,MembershipRevMast.Code As RevCode, MembershipRevMast.Description, MR.AppDate , MR.SValue , MR.PerOrAmt, MR.FrAge, MR.ToAge From ((MemAgeRevWise MR Left Join MemCatMast On MR.MemCat = MemCatMast.Code) LEFT JOIN MembershipRevMast ON MR.RevCode = MembershipRevMast.Code) Where MR.Site_Code='" & MemVar_1F95070
  loc_1329692:   var_D4 = CVar(var_94 & "' and (MR.LOGSITE_CODE='" & MemVar_1F95078 & "' or MR.LOGSITE_CODE='HO') and (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103))='") 'String
  loc_13296DC:   unk_4A533A.Execute CStr(var_D4 & Me.Recordset15.Fields.Item("SearchCode").Value & "'"), var_128, -1
  loc_13296E7:   Set var_88 = var_12C
  loc_132971F:   If (var_88.RecordCount > 0) Then
  loc_132975C:     var_12C = var_88.Fields
  loc_13297C5:     var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_132980A:     Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_1329884:     var_130 = var_88.Fields.Item("U_AE")
  loc_13298E5:     var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_130)) = "E"), "Last Update : ", "entdt : "))
  loc_132992A:     Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1329998:     Set var_12C = Me.Txt
  loc_132999E:     Call 0.Method_Proc_271_41_1329DA80 (CInt(0), var_130)
  loc_13299A6:     var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CatName")))
  loc_13299F0:     Set var_12C = Me.Txt
  loc_13299F6:     Call 0.Method_Proc_271_41_1329DA80 (CInt(0), var_130)
  loc_13299FE:     var_130.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CatCode")))
  loc_1329A64:     Set var_12C = Me.Txt
  loc_1329A6A:     Call 0.Method_Proc_271_41_1329DA80 (CInt(1), var_130, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mmm/yyyy")))
  loc_1329A72:     var_130.Text = 1
  loc_1329A8E:     var_8A = 1
  loc_1329AA4:     Me.FGrid.Rows = 1
  loc_1329AAC:     ' Referenced from: 1329D17
  loc_1329ABB:     If Not(var_88.EOF) Then
  loc_1329ABE:       var_B0 = vbNullString
  loc_1329AC8:       Set var_A0 = Me.FGrid
  loc_1329ADD:       Set var_1E8 = Me.FGrid
  loc_1329AE4:       var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1329AEC:       var_140 = CVar(CLng(6)) 'Long
  loc_1329B1C:       var_D4 = CVar(CStr(var_88.Fields.Item("RevCode").Value)) 'String
  loc_1329B23:       LateIdCallSt
  loc_1329B3D:       var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1329B72:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Description")), CVar(CLng(1)), var_F4, var_1E8, var_D4, CVar(CLng(1)))) 'String
  loc_1329B79:       LateIdCallSt
  loc_1329BB1:       Proc_6_39_E7D3A0(var_D4, CVar(var_88.Fields.Item("SValue")), var_1E8, var_D4, var_F4)
  loc_1329BBA:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_1329BF2:       LateIdCallSt
  loc_1329C43:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PerOrAmt")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Format(var_D4, "0.00"))), 1, 1)) 'String
  loc_1329C4A:       LateIdCallSt
  loc_1329C95:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FrAge")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1E8, var_D4, CVar(CLng(2)))) 'String
  loc_1329C9C:       LateIdCallSt
  loc_1329CE7:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ToAge")), CVar(CLng(5)), CVar(CLng(var_8A)), var_1E8, var_D4)) 'String
  loc_1329CEE:       LateIdCallSt
  loc_1329D02:       Set var_1E8 = Nothing 
  loc_1329D0C:       var_8A = (var_8A + 1)
  loc_1329D12:       var_88.MoveNext
  loc_1329D17:       GoTo loc_1329AAC
  loc_1329D1A:     End If
  loc_1329D1A:   End If
  loc_1329D1A:   var_B0 = 0
  loc_1329D24:   Set var_A0 = Me.FGrid
  loc_1329D51:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1329D54:     var_B0 = vbNullString
  loc_1329D5E:     Set var_A0 = Me.FGrid
  loc_1329D6F:   End If
  loc_1329D6F:   var_B0 = 1
  loc_1329D82:   Me.FGrid.FixedRows = var_B0
  loc_1329D8D: Else
  loc_1329D8D:   Call Proc_271_40_F18FE0(FGrid.DispID_10000, var_B0, FGrid.DispID_2E, var_B0, var_8A, var_1E8)
  loc_1329D92: End If
  loc_1329D92: Call Proc_271_43_E87F48(var_D4, var_118, FGrid.DispID_10000)
  loc_1329D9C: Set var_88 = Nothing
  loc_1329D9F: Exit Sub
  loc_1329DA0: ' Referenced from: 1329644
  loc_1329DA0: Proc_6_60_E63754(var_B0, var_8A)
  loc_1329DA5: Exit Sub
End Sub

Public Sub Proc_271_42_E77964(arg_C) 'E77964
  'Data Table: 4A5324
  Dim var_98 As TextBox
  loc_E77912: Set var_8C = Me.Txt
  loc_E77918: Call 0.Method_Proc_271_42_E77964C (var_8E, var_86)
  loc_E77928: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7793E:   Set var_8C = Me.Txt
  loc_E77944:   Call 0.Method_Proc_271_42_E779640 (CInt(var_86), var_98)
  loc_E7794C:   var_98.Enabled = arg_C
  loc_E7795B: Next var_92 'Byte
  loc_E77961: Exit Sub
End Sub

Public Sub Proc_271_43_E87F48
  'Data Table: 4A5324
  loc_E87EF4: If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_E87F06:   Me.DGCat.Visible = False
  loc_E87F0E: End If
  loc_E87F2A: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_E87F3C:   Me.DGRev.Visible = False
  loc_E87F44: End If
  loc_E87F44: Exit Sub
End Sub

Public Sub Proc_271_44_FCB750
  'Data Table: 4A5324
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_4A533A As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FCB5EB: If (Me.RecordCount = 0) Then
  loc_FCB5EE:   Proc_271_44_FCB750 = 
  loc_FCB5F4: End If
  loc_FCB62F: Set var_94 = Me.Txt
  loc_FCB635: Call 0.Method_Proc_271_44_FCB7500 (CInt(0), var_98, var_9C, "Select Count(*) From MemAgeRevWise Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (MemCat='", var_130, -1)
  loc_FCB64D: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FCB65B: Set var_A8 = Me.Txt
  loc_FCB661: Call 0.Method_Proc_271_44_FCB7500 (CInt(1), var_AC, var_DC)
  loc_FCB670: Proc_6_7_F26918(var_CC, CVar(var_AC), 0)
  loc_FCB678: var_EC = var_14C & var_CC 
  loc_FCB68F: unk_4A533A.Execute CStr(var_EC & ")"), var_15C, 
  loc_FCB697:  = var_98.Tag.Fields
  loc_FCB69F:  = var_138.Item()
  loc_FCB6A7:  = var_14C.Value
  loc_FCB6E4: If (var_15C > 0) Then
  loc_FCB708:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FCB723:   Set var_94 = Me.Txt
  loc_FCB729:   Call 0.Method_Proc_271_44_FCB7500 (CInt(0))
  loc_FCB731:   var_98.SetFocus
  loc_FCB742:   Proc_271_44_FCB750 = &HFF
  loc_FCB748: End If
  loc_FCB748: Proc_271_44_FCB750 = var_98
End Sub

Public Sub Proc_271_45_E420E8
  'Data Table: 4A5324
  loc_E420C4: Set var_88 = Me.TopCtrl1
  loc_E420CA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_E420E3: If (CStr() = "Browse") Then
  loc_E420E6:   Exit Sub
  loc_E420E7: End If
  loc_E420E7: Exit Sub
End Sub

Public Sub Proc_271_46_12BFDA8(arg_C) '12BFDA8
  'Data Table: 4A5324
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_B8 As String
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  loc_12BF770: If (arg_C = 0) Then
  loc_12BF786:   var_A8 = CLng(Me.FGrid.Col)
  loc_12BF796:   If (var_A8 = CLng(1)) Then
  loc_12BF7B9:     var_AE = Me.EOF
  loc_12BF7E7:     Set var_94 = Me.TxtGrid
  loc_12BF7ED:     Call 0.Method_Proc_271_46_12BFDA80 (arg_C, var_B4, var_B8)
  loc_12BF7F5:     ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_12BF80D:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_12BF823:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF82B:       var_E8 = CVar(CLng(1)) 'Long
  loc_12BF830:       var_108 = vbNullString
  loc_12BF83A:       Set var_B4 = Me.FGrid
  loc_12BF840:       LateIdCallSt
  loc_12BF865:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF86D:       var_E8 = CVar(CLng(6)) 'Long
  loc_12BF872:       var_108 = vbNullString
  loc_12BF87C:       Set var_B4 = Me.FGrid
  loc_12BF882:       LateIdCallSt
  loc_12BF897:     Else
  loc_12BF8AA:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF8B2:       var_F8 = CVar(CLng(1)) 'Long
  loc_12BF8E5:       var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12BF8ED:       Set var_140 = Me.FGrid
  loc_12BF8F3:       LateIdCallSt
  loc_12BF922:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF92A:       var_F8 = CVar(CLng(6)) 'Long
  loc_12BF95D:       var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_12BF965:       Set var_140 = Me.FGrid
  loc_12BF96B:       LateIdCallSt
  loc_12BF987:     End If
  loc_12BF9A0:     var_C8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_12BF9A8:     var_E8 = CVar(CLng(6)) 'Long
  loc_12BF9B1:     Set var_B4 = Me.FGrid
  loc_12BF9DB:     If (CStr(var_B4.TextMatrix)) <> vbNullString) Then
  loc_12BF9DE:       var_C8 = vbNullString
  loc_12BF9E8:       Set var_94 = Me.FGrid
  loc_12BF9F9:     End If
  loc_12BF9FC:   Else
  loc_12BFA03:     If (var_A8 = CLng(2)) Then
  loc_12BFA10:       Set var_94 = Me.TxtGrid
  loc_12BFA16:       Call 0.Method_Proc_271_46_12BFDA80 (arg_C, var_B4, FGrid.DispID_10000, var_C8, var_E8, var_C8, var_140)
  loc_12BFA2E:       If Not(IsNumeric(CVar(var_B4))) Then
  loc_12BFA35:         var_B8 = CStr(0)
  loc_12BFA42:         Set var_94 = Me.TxtGrid
  loc_12BFA48:         Call 0.Method_Proc_271_46_12BFDA80 (arg_C, var_B4, var_B8, var_13C, var_F8)
  loc_12BFA50:         var_B4.Text = var_D8
  loc_12BFA64:         Proc_271_46_12BFDA8 = 0
  loc_12BFA6A:       End If
  loc_12BFA77:       Set var_94 = Me.TxtGrid
  loc_12BFA7D:       Call 0.Method_Proc_271_46_12BFDA80 (arg_C, var_B4, var_B8, var_140)
  loc_12BFA85:       var_13C = var_B4.Text
  loc_12BFA9D:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BFAB5:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BFAE1:       var_170 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_12BFAE9:       Set var_174 = Me.FGrid
  loc_12BFAEF:       LateIdCallSt
  loc_12BFB16:     Else
  loc_12BFB1D:       If (var_A8 = CLng(3)) Then
  loc_12BFB2A:         Set var_94 = Me.TxtGrid
  loc_12BFB30:         Call 0.Method_Proc_271_46_12BFDA80 (arg_C, var_B4, var_174, var_170, 1)
  loc_12BFB59:         If (Trim(CVar(var_B4)) = vbNullString) Then
  loc_12BFB61:           Proc_271_46_12BFDA8 = 0
  loc_12BFB67:         End If
  loc_12BFB83:         Set var_140 = Me.FGrid
  loc_12BFBA1:         Set var_94 = Me.TxtGrid
  loc_12BFBA7:         Call 0.Method_Proc_271_46_12BFDA80 (arg_C, var_B4, CVar(CLng(var_140.Col)), CVar(CLng(Me.FGrid.Row)), 1)
  loc_12BFBBF:         var_160 = CVar(CStr(Trim(CVar(var_B4)))) 'String
  loc_12BFBC7:         Set var_174 = Me.FGrid
  loc_12BFBCD:         LateIdCallSt
  loc_12BFBF0:       Else
  loc_12BFBF7:         If Not (var_A8 = CLng(4)) Then
  loc_12BFC01:           If (var_A8 = CLng(5)) Then
  loc_12BFC04:           End If
  loc_12BFC11:           Set var_94 = Me.TxtGrid
  loc_12BFC17:           Call 0.Method_Proc_271_46_12BFDA80 (arg_C, var_B4, var_B8, var_174, var_160)
  loc_12BFC3E:           Set var_11C = Me.TxtGrid
  loc_12BFC44:           Call 0.Method_Proc_271_46_12BFDA80 (arg_C, var_140, var_178, (CDbl(Val(var_B8)) > CDbl(0)))
  loc_12BFC4C:           var_D8 = var_140.Text
  loc_12BFC72:           If Not((var_B4.Text And (CDbl(Val(var_178)) <= CDbl(&H7D)))) Then
  loc_12BFC86:             Set var_94 = Me.TxtGrid
  loc_12BFC8C:             Call 0.Method_Proc_271_46_12BFDA80 (arg_C, var_B4)
  loc_12BFC94:             var_B4.Text = CStr(0)
  loc_12BFCA8:             Proc_271_46_12BFDA8 = 0
  loc_12BFCAE:           End If
  loc_12BFCB1:           Call Proc_271_47_1162CC8(var_AE)
  loc_12BFCBC:           If (var_AE = 0) Then
  loc_12BFCC4:             Proc_271_46_12BFDA8 = 0
  loc_12BFCCA:           End If
  loc_12BFCD7:           Set var_94 = Me.TxtGrid
  loc_12BFCDD:           Call 0.Method_Proc_271_46_12BFDA80 (arg_C, var_B4)
  loc_12BFCFD:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BFD15:           var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BFD41:           var_170 = CVar(CStr(Format(CVar(var_B4.Text), "0"))) 'String
  loc_12BFD49:           Set var_174 = Me.FGrid
  loc_12BFD4F:           LateIdCallSt
  loc_12BFD73:         End If
  loc_12BFD73:       End If
  loc_12BFD73:     End If
  loc_12BFD73:   End If
  loc_12BFD73: End If
  loc_12BFD86: Set var_94 = Me.TxtGrid
  loc_12BFD8C: Call 0.Method_Proc_271_46_12BFDA80 (0, var_B4, 0, &HFF, var_174, var_170)
  loc_12BFD94: var_B4.MaxLength = 1
  loc_12BFDA0: Proc_271_46_12BFDA8 = 1
End Sub

Public Sub Proc_271_47_1162CC8
  'Data Table: 4A5324
  Dim var_A0 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_96 As Integer
  Dim var_10C As Long
  Dim var_8E As Integer
  Dim var_108 As String
  Dim var_90 As Integer
  Dim var_8A As Integer
  Dim var_8C As Integer
  Dim var_116 As Integer
  loc_1162927: var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116292F: var_E0 = CVar(CLng(6)) 'Long
  loc_1162938: Set var_F4 = Me.FGrid
  loc_1162949: var_94 = CStr(var_F4.TextMatrix))
  loc_1162966: Set var_A0 = Me.TxtGrid
  loc_116296C: Call 0.Method_Proc_271_47_1162CC80 (0, var_F4, var_108)
  loc_1162974: var_E0 = var_F4.Text
  loc_1162982: var_96 = CInt(Val(var_108))
  loc_11629A2: var_10C = CLng(Me.FGrid.Col)
  loc_11629B2: If (var_10C = CLng(4)) Then
  loc_11629B8:   var_8E = var_96
  loc_11629CE:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11629D6:   var_E0 = CVar(CLng(5)) 'Long
  loc_11629F9:   var_90 = CInt(Val(CStr(Me.FGrid.TextMatrix))))
  loc_1162A10: Else
  loc_1162A17:   If (var_10C = CLng(5)) Then
  loc_1162A2D:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1162A35:     var_E0 = CVar(CLng(4)) 'Long
  loc_1162A58:     var_8E = CInt(Val(CStr(Me.FGrid.TextMatrix))))
  loc_1162A6F:     var_90 = var_96
  loc_1162A72:   End If
  loc_1162A72: End If
  loc_1162A97: For var_110 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_110 'Integer
  loc_1162AA1:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1162AA9:   var_E0 = CVar(CLng(6)) 'Long
  loc_1162AD3:   Set var_F4 = Me.FGrid
  loc_1162AF5:   If ((CStr(Me.FGrid.TextMatrix)) = var_94) And (CLng(var_88) <> CLng(var_F4.Row))) Then
  loc_1162AFC:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1162B04:     var_E0 = CVar(CLng(4)) 'Long
  loc_1162B27:     var_8A = CInt(Val(CStr(Me.FGrid.TextMatrix))))
  loc_1162B37:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1162B3F:     var_E0 = CVar(CLng(5)) 'Long
  loc_1162B62:     var_8C = CInt(Val(CStr(Me.FGrid.TextMatrix))))
  loc_1162B7B:     If ((var_8E <> 0) And (var_90 <> 0)) Then
  loc_1162B85:       If (var_8E > var_90) Then
  loc_1162B8F:         var_8E = (var_8E + var_90)
  loc_1162B99:         var_90 = (var_8E - var_90)
  loc_1162BA3:         var_8E = (var_8E - var_90)
  loc_1162BA6:       End If
  loc_1162BAF:       For var_114 = var_8E To var_90: var_96 = var_114 'Integer
  loc_1162BB8:         var_116 = var_96
  loc_1162BC6:         If Not (var_8C > var_116 > var_8A) Then
  loc_1162BD4:           If (var_8A > var_116 > var_8C) Then
  loc_1162BD7:           End If
  loc_1162BF8:           MsgBox("Given Age Range Not Valid!", &H40, "Validation", var_128, var_138)
  loc_1162C11:           Set var_A0 = Me.TxtGrid
  loc_1162C17:           Call 0.Method_Proc_271_47_1162CC80 (0, var_F4, var_116, var_8E, var_8E, var_90, var_8E)
  loc_1162C1F:           var_F4.SetFocus
  loc_1162C30:           Proc_271_47_1162CC8 = 0
  loc_1162C36:         End If
  loc_1162C39:       Next var_114 'Integer
  loc_1162C41:     Else
  loc_1162C52:       If (var_8C > var_96 > var_8A) Then
  loc_1162C76:         MsgBox("Given Age Not Valid!", &H40, "Validation", var_128, var_138)
  loc_1162C8F:         Set var_A0 = Me.TxtGrid
  loc_1162C95:         Call 0.Method_Proc_271_47_1162CC80 (0, var_F4)
  loc_1162C9D:         var_F4.SetFocus
  loc_1162CAE:         Proc_271_47_1162CC8 = 0
  loc_1162CB4:       End If
  loc_1162CB4:     End If
  loc_1162CB4:   End If
  loc_1162CB7: Next var_110 'Integer
  loc_1162CC1: Proc_271_47_1162CC8 = &HFF
End Sub
