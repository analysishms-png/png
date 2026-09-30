VERSION 5.00
Begin VB.Form RsKitchenStk
  Caption = "Stock Transfer"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsKitchenStk.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11310
    Height = 450
    TabIndex = 32
  End
  Begin BtnEnh CmdLastEntry
    Left = 10590
    Top = 1185
    Width = 3060
    Height = 585
    TabIndex = 31
  End
  Begin TextBox Txt
    Index = 7
    ForeColor = &HC00000&
    Left = 9015
    Top = 8100
    Width = 1500
    Height = 285
    TabIndex = 26
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
    Index = 6
    ForeColor = &HC00000&
    Left = 2115
    Top = 1680
    Width = 4605
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 75
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
  Begin DataGrid DGShift
    Left = 12735
    Top = 1635
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 21
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC00000&
    Left = 7935
    Top = 1680
    Width = 2640
    Height = 285
    Visible = 0   'False
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
  Begin TextBox TxtBarCode
    ForeColor = &HC00000&
    Left = 7905
    Top = 1020
    Width = 2670
    Height = 315
    Visible = 0   'False
    TabIndex = 18
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
  Begin DataGrid DGItem
    Left = 2310
    Top = 2850
    Width = 6735
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin DataGrid DGDepart
    Left = 5910
    Top = 2385
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 7935
    Top = 1365
    Width = 2625
    Height = 285
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
  Begin TextBox Txt
    Index = 0
    Left = 4530
    Top = 5235
    Width = 1995
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 25
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 480
    Top = 2880
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 2115
    Top = 1365
    Width = 4605
    Height = 285
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
    Left = 2115
    Top = 1050
    Width = 1725
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 4980
    Top = 1050
    Width = 1740
    Height = 285
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
    Left = 435
    Top = 2010
    Width = 10710
    Height = 5970
    TabIndex = 6
  End
  Begin DataGrid DGToDepart
    Left = 11280
    Top = 5055
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 30
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
  Begin Label Label2
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 7770
    Top = 8580
    Width = 1230
    Height = 285
    Visible = 0   'False
    TabIndex = 29
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
    Left = 345
    Top = 8550
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3720
    Top = 8550
    Width = 2790
    Height = 285
    TabIndex = 28
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
  Begin Label Label1
    Caption = "Total Amount"
    Index = 8
    ForeColor = &HC00000&
    Left = 7665
    Top = 8100
    Width = 1275
    Height = 240
    TabIndex = 27
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
    Caption = "Remarks"
    Index = 7
    ForeColor = &HC00000&
    Left = 690
    Top = 1695
    Width = 825
    Height = 240
    TabIndex = 25
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
  Begin Label LblCaption
    Caption = "#"
    BackColor = &H404040&
    ForeColor = &HFFFFFF&
    Left = 13440
    Top = 8685
    Width = 255
    Height = 345
    Visible = 0   'False
    TabIndex = 23
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
    ForeColor = &HC0&
    Left = 480
    Top = 8040
    Width = 2130
    Height = 285
    TabIndex = 22
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 12
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
    Left = 6765
    Top = 1695
    Width = 810
    Height = 240
    Visible = 0   'False
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
    Caption = "Bar Code"
    Index = 6
    ForeColor = &HC00000&
    Left = 6780
    Top = 1065
    Width = 885
    Height = 240
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "To Location"
    Index = 0
    ForeColor = &HC00000&
    Left = 6750
    Top = 1410
    Width = 1125
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
    Left = 12075
    Top = 8745
    Width = 690
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
    Caption = "DOC ID"
    Index = 5
    ForeColor = &HFF&
    Left = 3915
    Top = 5250
    Width = 540
    Height = 210
    Visible = 0   'False
    TabIndex = 13
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
    ForeColor = &HC00000&
    Left = 690
    Top = 1380
    Width = 1380
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
  End
  Begin Label Label1
    Caption = "Transfer No."
    Index = 1
    ForeColor = &HC00000&
    Left = 690
    Top = 1065
    Width = 1155
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
  End
  Begin Label Label1
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 4485
    Top = 1065
    Width = 435
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

Attribute VB_Name = "RsKitchenStk"

Private global_98 As Integer
Private global_96 As Integer
Private global_108 As Integer

Private Sub DGItem_UnknownEvent_9 '10CFCB8
  'Data Table: 4EA030
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_148 As Variant
  loc_10CF9CF: Me.DGItem.Visible = False
  loc_10CF9EE: If (Me.RecordCount > 0) Then
  loc_10CFA04:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CFA0C:   var_E4 = CVar(CLng(1)) 'Long
  loc_10CFA3F:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10CFA47:   Set var_128 = Me.FGrid
  loc_10CFA4D:   LateIdCallSt
  loc_10CFA7C:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CFA84:   var_E4 = CVar(CLng(9)) 'Long
  loc_10CFAB7:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10CFABF:   Set var_128 = Me.FGrid
  loc_10CFAC5:   LateIdCallSt
  loc_10CFAF4:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CFAFC:   var_E4 = CVar(CLng(&HA)) 'Long
  loc_10CFB2F:   var_114 = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_10CFB37:   Set var_128 = Me.FGrid
  loc_10CFB3D:   LateIdCallSt
  loc_10CFB6C:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CFB74:   var_E4 = CVar(CLng(2)) 'Long
  loc_10CFBA7:   var_114 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_10CFBAF:   Set var_128 = Me.FGrid
  loc_10CFBB5:   LateIdCallSt
  loc_10CFBEB:   var_B0 = Me.Fields.Item("Rate")
  loc_10CFC03:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CFC0B:   var_F4 = CVar(CLng(7)) 'Long
  loc_10CFC38:   var_148 = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_10CFC40:   Set var_128 = Me.FGrid
  loc_10CFC46:   LateIdCallSt
  loc_10CFC64: End If
  loc_10CFC70: Set var_A8 = Me.TxtGrid
  loc_10CFC76: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15A, var_128, var_148, 1, 1)
  loc_10CFC7E: var_F4 = var_B0.Visible
  loc_10CFC90: If (var_15A = &HFF) Then
  loc_10CFC9C:   Set var_A8 = Me.TxtGrid
  loc_10CFCA2:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_D4, var_128)
  loc_10CFCAA:   var_B0.SetFocus
  loc_10CFCB6: End If
  loc_10CFCB6: Exit Sub
End Sub

Private Sub DGToDepart_UnknownEvent_9 'F40FB4
  'Data Table: 4EA030
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F40EAB: Me.DGToDepart.Visible = False
  loc_F40ECA: If (Me.RecordCount > 0) Then
  loc_F40F09:   Set var_B4 = Me.Txt
  loc_F40F0F:   Call 0.Method_DGToDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F40F17:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F40F4A:   var_B0 = Me.Fields.Item("Name")
  loc_F40F69:   Set var_B4 = Me.Txt
  loc_F40F6F:   Call 0.Method_DGToDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F40F77:   var_B8.Text = CStr(var_B0.Value)
  loc_F40F8D: End If
  loc_F40F98: Set var_A8 = Me.Txt
  loc_F40F9E: Call 0.Method_DGToDepart_UnknownEvent_90 (CInt(4))
  loc_F40FA6: var_B0.SetFocus
  loc_F40FB2: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11741AC
  'Data Table: 4EA030
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
  loc_1173DE8: On Error Goto loc_11741A3
  loc_1173DEB: Call Proc_214_51_EF7F40()
  loc_1173E06: Me.FGrid.CellBackColor = CVar(CLng(global_120))
  loc_1173E21: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1173E2A: Set var_BC = Me.FGrid
  loc_1173E5F: Set var_104 = Me.TxtGrid
  loc_1173E65: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_1173E6D: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_1173E9A: Set var_A8 = Me.TxtGrid
  loc_1173EA0: Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_1173EA8: var_BC.MaxLength = 0
  loc_1173ED7: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1173EE6:   Set var_A8 = Me.TxtGrid
  loc_1173EEC:   Call 0.Method_TxtGrid_GotFocus0 (0, var_BC, var_114)
  loc_1173EF4:   var_110 = var_BC.Left
  loc_1173F0B:   Me.DGItem.Left = CVar(var_114)
  loc_1173F25:   Set var_F0 = Me.TxtGrid
  loc_1173F2B:   Call 0.Method_TxtGrid_GotFocus0 (0, var_104)
  loc_1173F44:   Set var_A8 = Me.TxtGrid
  loc_1173F4A:   Call 0.Method_TxtGrid_GotFocus0 (0, var_BC)
  loc_1173F5E:   var_94 = CVar((var_BC.Top + var_104.Height)) 'Single
  loc_1173F6D:   Me.DGItem.Top = CVar(var_BC.Top)
  loc_1173FC0:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1173FC3:     Exit Sub
  loc_1173FC4:   End If
  loc_1173FD7:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1173FDF:   var_DC = CVar(CLng(1)) 'Long
  loc_1174012:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_117401B:     Me.MoveFirst
  loc_117403B:     var_DC = CVar(CLng(9)) 'Long
  loc_1174044:     Set var_BC = Me.FGrid
  loc_117405B:     Proc_6_17_EAAE40(var_12C, CVar(CStr(var_BC.TextMatrix))), var_DC, CVar(CLng(Me.FGrid.Row)))
  loc_117407A:     var_10C = CStr("Code =" & var_12C)
  loc_1174084:     Me.Find var_10C, 0, 1
  loc_11740B4:     If (Me.EOF = &HFF) Then
  loc_11740BD:       Me.MoveFirst
  loc_11740C2:     End If
  loc_11740C2:   End If
  loc_11740C5: Else
  loc_11740CC:   If Not (var_110 = CLng(7)) Then
  loc_11740D6:     If (var_110 = CLng(3)) Then
  loc_11740D9:     End If
  loc_11740E2:     If (global_96 = 0) Then
  loc_11740F4:       Set var_A8 = Me.TxtGrid
  loc_11740FA:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 0, var_15C)
  loc_1174102:       var_BC.SelStart = var_DC
  loc_117411B:       Set var_A8 = Me.TxtGrid
  loc_1174121:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_1174129:       var_94 = var_BC.Text
  loc_117413C:       Set var_F0 = Me.TxtGrid
  loc_1174142:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_104)
  loc_117414A:       var_104.SelLength = Len(var_10C)
  loc_117415D:     End If
  loc_1174160:   Else
  loc_1174167:     If (var_110 = CLng(4)) Then
  loc_1174177:       Set var_A8 = Me.TxtGrid
  loc_117417D:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_1174195:       global_112 = Val(var_BC.Text)
  loc_11741A2:     End If
  loc_11741A2:   End If
  loc_11741A2: End If
  loc_11741A2: Exit Sub
  loc_11741A3: ' Referenced from: 1173DE8
  loc_11741A3: Proc_6_60_E63754(global_112)
  loc_11741A8: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '120C514
  'Data Table: 4EA030
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_120C048: On Error Goto loc_120C50D
  loc_120C055: If (CLng(Shift) = &H1B) Then
  loc_120C064:   Set var_88 = Me.TxtGrid
  loc_120C06A:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_120C083:   Set var_94 = Me.TxtGrid
  loc_120C089:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_120C091:   var_98.Text = var_8C.Tag
  loc_120C0AD:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_120C0B6:   Set var_88 = Me.FGrid
  loc_120C0D2:   Set var_88 = Me.TxtGrid
  loc_120C0D8:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0)
  loc_120C0E0:   var_8C.Visible = FGrid.DispID_8001
  loc_120C0EC:   Exit Sub
  loc_120C0ED: End If
  loc_120C100: var_AC = CLng(Me.FGrid.Col)
  loc_120C110: If (var_AC = CLng(1)) Then
  loc_120C11E:   If (global_100 = "Yes") Then
  loc_120C139:     Set var_98 = Nothing
  loc_120C144:     Set var_94 = Nothing
  loc_120C172:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_120C189:   Else
  loc_120C1A1:     Set var_98 = Nothing
  loc_120C1DA:     Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 2, Nothing)
  loc_120C1EE:   End If
  loc_120C1F8:   If (CLng(Shift) = &HD) Then
  loc_120C206:     Call Proc_214_47_149C5D0(KeyCode, 0, var_B0, var_98, 0, 1)
  loc_120C211:     If (var_B0 = &HFF) Then
  loc_120C257:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_96, 9, 2)
  loc_120C267:     End If
  loc_120C267:   End If
  loc_120C26A: Else
  loc_120C271:   If (var_AC = CLng(3)) Then
  loc_120C2B4:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_96 = &HFF))) Then
  loc_120C2C4:       Call Proc_214_47_149C5D0(0, 0, var_B2, 3, 0)
  loc_120C2CF:       If (var_B2 = &HFF) Then
  loc_120C2DD:         If (global_88 <> "No") Then
  loc_120C323:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_96, 9, 0)
  loc_120C336:         Else
  loc_120C379:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_96, 9, 9, 0)
  loc_120C389:         End If
  loc_120C389:       End If
  loc_120C389:     End If
  loc_120C38C:   Else
  loc_120C393:     If (var_AC = CLng(7)) Then
  loc_120C3D6:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_96 = &HFF))) Then
  loc_120C3E6:         Call Proc_214_47_149C5D0(0, 0, var_B2, 0, 7, 0)
  loc_120C3F1:         If (var_B2 = &HFF) Then
  loc_120C437:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_96, 9, 9)
  loc_120C447:         End If
  loc_120C447:       End If
  loc_120C44A:     Else
  loc_120C451:       If (var_AC = CLng(4)) Then
  loc_120C494:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_96 = &HFF))) Then
  loc_120C4A4:           Call Proc_214_47_149C5D0(0, 0, var_B2, 0, 0)
  loc_120C4AF:           If (var_B2 = &HFF) Then
  loc_120C4B6:             Set var_94 = Me.FGrid
  loc_120C4BD:             Set var_98 = Me.TxtGrid
  loc_120C4FC:             Proc_6_62_1254E68(var_94, var_98, KeyCode, Shift, global_96, CByte((CInt(7) + 1)), 0)
  loc_120C50C:           End If
  loc_120C50C:         End If
  loc_120C50C:       End If
  loc_120C50C:     End If
  loc_120C50C:   End If
  loc_120C50C: End If
  loc_120C50C: Exit Sub
  loc_120C50D: ' Referenced from: 120C048
  loc_120C50D: Proc_6_60_E63754(7, 0, var_94, var_98)
  loc_120C512: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10A092C
  'Data Table: 4EA030
  Dim arg_10 As Integer
  Dim var_A0 As Variant
  Dim var_9C As Variant
  Dim var_A4 As Long
  Dim var_A8 As TextBox
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Long
  loc_10A0664: On Error Goto loc_10A0925
  loc_10A066A: Proc_6_58_E06050(arg_10)
  loc_10A0675: Proc_6_133_E7FB08(var_9C)
  loc_10A067E: arg_10 = CInt(var_9C)
  loc_10A06A7: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_10A06C6:   If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10A06D4:     If (global_100 = "Yes") Then
  loc_10A06E3:       Set var_A0 = Me.TxtGrid
  loc_10A06E9:       Call 0.Method_TxtGrid_KeyPress0 (0, var_A8, var_AC)
  loc_10A06F1:       var_A4 = var_A8.Text
  loc_10A06FB:       var_86 = CInt(Len(var_AC))
  loc_10A070B:       var_88 = arg_10
  loc_10A0712:       Set var_A8 = Me.TxtGrid
  loc_10A071D:       var_AC = "BarCode"
  loc_10A0738:       Proc_6_89_1470B00(var_A8, KeyAscii, global_60, arg_10, var_AC)
  loc_10A0753:       Set var_A0 = Me.TxtGrid
  loc_10A0759:       Call 0.Method_TxtGrid_KeyPress0 (0, var_A8, var_AC, 0)
  loc_10A0761:       var_88 = var_A8.Text
  loc_10A0779:       If (Len(var_AC) = CLng(var_86)) Then
  loc_10A0793:         If (Me.AbsolutePosition > 0) Then
  loc_10A07A7:           var_8C = Me.AbsolutePosition
  loc_10A07AD:         Else
  loc_10A07B2:           var_8C = 1
  loc_10A07B5:         End If
  loc_10A07B8:         arg_10 = var_88
  loc_10A07E5:         Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name", 0)
  loc_10A080B:         If (Me.AbsolutePosition <= 0) Then
  loc_10A0817:           Me.AbsolutePosition = var_8C
  loc_10A081C:         End If
  loc_10A081C:       End If
  loc_10A081F:     Else
  loc_10A0823:       Set var_A8 = Me.TxtGrid
  loc_10A0849:       Proc_6_89_1470B00(var_A8, KeyAscii, global_60, arg_10, "Name", 0)
  loc_10A0858:     End If
  loc_10A0858:   End If
  loc_10A085B: Else
  loc_10A0862:   If (var_A4 = CLng(3)) Then
  loc_10A086F:     Set var_A0 = Me.TxtGrid
  loc_10A0875:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, arg_10, var_8C)
  loc_10A0890:     Proc_6_42_129B55C(var_A8, arg_10, 8, 3)
  loc_10A089F:   Else
  loc_10A08A6:     If (var_A4 = CLng(7)) Then
  loc_10A08B3:       Set var_A0 = Me.TxtGrid
  loc_10A08B9:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_8C)
  loc_10A08D4:       Proc_6_42_129B55C(var_A8, arg_10, 8, 2)
  loc_10A08E3:     Else
  loc_10A08EA:       If (var_A4 = CLng(4)) Then
  loc_10A08F7:         Set var_A0 = Me.TxtGrid
  loc_10A08FD:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_86)
  loc_10A0918:         Proc_6_42_129B55C(var_A8, arg_10, 6)
  loc_10A0924:       End If
  loc_10A0924:     End If
  loc_10A0924:   End If
  loc_10A0924: End If
  loc_10A0924: Exit Sub
  loc_10A0925: ' Referenced from: 10A0664
  loc_10A0925: Proc_6_60_E63754(2, arg_10)
  loc_10A092A: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10D4528
  'Data Table: 4EA030
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As Variant
  Dim var_180 As Double
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_BC As Variant
  Dim var_A8 As String
  Dim var_240 As Double
  Dim var_178 As MSHFlexGrid
  loc_10D424C: On Error Goto loc_10D4522
  loc_10D425B: If (KeyCode = 0) Then
  loc_10D4271:   var_A0 = CLng(Me.FGrid.Col)
  loc_10D4281:   If (var_A0 = CLng(1)) Then
  loc_10D42A7:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_10D42B8:       Call TxtGrid_KeyDown(KeyCode, global_98)
  loc_10D42C8:       If (global_100 = "Yes") Then
  loc_10D42F5:         Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_60, Shift, "BarCode")
  loc_10D4307:       Else
  loc_10D430B:         Set var_AC = Me.TxtGrid
  loc_10D4316:         var_A8 = "Name"
  loc_10D4331:         Proc_6_89_1470B00(var_AC, KeyCode, global_60, Shift, var_A8)
  loc_10D4340:       End If
  loc_10D4340:     End If
  loc_10D4343:   Else
  loc_10D434A:     If Not (var_A0 = CLng(3)) Then
  loc_10D4354:       If (var_A0 = CLng(4)) Then
  loc_10D4357:       End If
  loc_10D4364:       Set var_8C = Me.TxtGrid
  loc_10D436A:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_10D4372:       &HFF = var_AC.Text
  loc_10D4395:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D43AD:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10D43DA:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_10D43E2:       Set var_178 = Me.FGrid
  loc_10D43E8:       LateIdCallSt
  loc_10D4422:       var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D442A:       var_124 = CVar(CLng(3)) 'Long
  loc_10D444C:       var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10D4462:       var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D448C:       var_240 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10D44E9:       LateIdCallSt
  loc_10D451C:       Call Proc_214_55_F75A5C(Me.FGrid, CVar(CStr(Format(CVar((var_180 * var_240)), "0.000"))), 1, 1, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), var_240, CVar(CLng(4)))
  loc_10D4521:     End If
  loc_10D4521:   End If
  loc_10D4521: End If
  loc_10D4521: Exit Sub
  loc_10D4522: ' Referenced from: 10D424C
  loc_10D4522: Proc_6_60_E63754(var_144, var_180, var_124, var_BC)
  loc_10D4527: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E24254
  'Data Table: 4EA030
  Dim arg_10 As Integer
  loc_E24230: On Error Goto loc_E2424B
  loc_E2423E: Call Proc_214_47_149C5D0(Cancel, &HFF)
  loc_E24247: arg_10 = Not(var_88)
  loc_E2424A: Exit Sub
  loc_E2424B: ' Referenced from: E24230
  loc_E2424B: Proc_6_60_E63754(arg_10)
  loc_E24250: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1291F24
  'Data Table: 4EA030
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_98 As String
  Dim Me As Recordset15
  loc_1291952: Set var_88 = Me.Txt
  loc_1291958: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1291966: Proc_6_74_E23240(var_8C)
  loc_1291972: Call Proc_214_51_EF7F40(var_8C)
  loc_129197A: var_92 = Index
  loc_1291985: If (var_92 = CInt(3)) Then
  loc_1291992:   Set global_52 = New 
  loc_12919A4:   Me.Txt.CursorLocation = 3
  loc_12919B7:   Set var_88 = Me.Txt
  loc_12919BD:   Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_12919E8:   var_98 = "Select distinct G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_1291A07:   Me.Open CVar(var_98 & "') and G.CODE<>'" & var_8C.Tag & "'  Order by G.Name"), CVar(MemVar_1F95044), 2
  loc_1291A2A:   CVarUnk
  loc_1291A2F:   VerifyVarObj
  loc_1291A35:   Set var_88 = Me.DGDepart
  loc_1291A3B:   LateIdStAd
  loc_1291A9D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), Me.Txt)
  loc_1291AA5:   global_52 = var_8C.Text
  loc_1291ABD:   If (3 Or (var_98 = vbNullString)) Then
  loc_1291AC0:     Exit Sub
  loc_1291AC1:   End If
  loc_1291ACE:   Set var_88 = Me.Txt
  loc_1291AD4:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1291ADC:   -1 = var_8C.Text
  loc_1291AEE:   var_C4 = "Name"
  loc_1291B29:   If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_1291B32:     Me.MoveFirst
  loc_1291B55:     Set var_88 = Me.Txt
  loc_1291B5B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1291B63:     0 = var_8C.Text
  loc_1291B7C:     Me.Find 1 & var_98 & "'", var_C4, var_92
  loc_1291B91:   End If
  loc_1291B94: Else
  loc_1291B9C:   If (var_92 = CInt(4)) Then
  loc_1291BBB:     Me.Recordset15.CursorLocation = 3
  loc_1291BCE:     Set var_88 = Me.Txt
  loc_1291BD4:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_1291BFF:     var_98 = "Select distinct G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078
  loc_1291C1E:     Me.Open CVar(var_98 & "') and G.CODE<>'" & var_8C.Tag & "' Order by G.Name"), CVar(MemVar_1F95044), 2
  loc_1291C41:     CVarUnk
  loc_1291C46:     VerifyVarObj
  loc_1291C4C:     Set var_88 = Me.DGToDepart
  loc_1291C52:     LateIdStAd
  loc_1291CAE:     Set var_88 = Me.Txt
  loc_1291CB4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1291CBC:     var_88 = var_8C.Text
  loc_1291CD4:     If (New Or (var_98 = vbNullString)) Then
  loc_1291CD7:       Exit Sub
  loc_1291CD8:     End If
  loc_1291CE5:     Set var_88 = Me.Txt
  loc_1291CEB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1291CF3:     3 = var_8C.Text
  loc_1291D05:     var_C4 = "Name"
  loc_1291D40:     If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_1291D49:       Me.MoveFirst
  loc_1291D6C:       Set var_88 = Me.Txt
  loc_1291D72:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1291D7A:       0 = var_8C.Text
  loc_1291D93:       Me.Find 1 & var_98 & "'", var_C4, -1
  loc_1291DA8:     End If
  loc_1291DAB:   Else
  loc_1291DB3:     If (var_92 = CInt(5)) Then
  loc_1291E04:       Set var_88 = Me.Txt
  loc_1291E0A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1291E2A:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1291E2D:         Exit Sub
  loc_1291E2E:       End If
  loc_1291E3B:       Set var_88 = Me.Txt
  loc_1291E41:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1291E49:       var_98 = var_8C.Text
  loc_1291E5B:       var_C4 = "Name"
  loc_1291E96:       If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_1291E9F:         Me.MoveFirst
  loc_1291EC2:         Set var_88 = Me.Txt
  loc_1291EC8:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1291ED0:         0 = var_8C.Text
  loc_1291EE9:         Me.Find 1 & var_98 & "'", var_C4, 
  loc_1291EFE:       End If
  loc_1291F01:     Else
  loc_1291F09:       If (var_92 = CInt(2)) Then
  loc_1291F14:         var_98 = "{Home}+{End}"
  loc_1291F1A:         Proc_303_0_FBACC8(var_98)
  loc_1291F22:       End If
  loc_1291F22:     End If
  loc_1291F22:   End If
  loc_1291F22: End If
  loc_1291F22: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '120A158
  'Data Table: 4EA030
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_98 As DataGrid
  Dim var_8C As DataGrid
  loc_1209CAA: If (CLng(Shift) = &H1B) Then
  loc_1209CAD:   Call Proc_214_51_EF7F40()
  loc_1209CB2:   Exit Sub
  loc_1209CB3: End If
  loc_1209CB6: var_86 = KeyCode
  loc_1209CC1: If (var_86 = CInt(3)) Then
  loc_1209CD1:   Set var_98 = Me.Txt
  loc_1209CD7:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_1209CDF:   var_A0 = var_9C.Height
  loc_1209CF1:   Set var_8C = Me.Txt
  loc_1209CF7:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_1209D0F:   var_B0 = CVar(((var_90.Top + var_A0) + CDbl(&H19))) 'Single
  loc_1209D1E:   Me.DGDepart.Top = var_B0
  loc_1209D3D:   Set var_8C = Me.Txt
  loc_1209D43:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_1209D4B:   var_94 = var_90.Left
  loc_1209D62:   Me.DGDepart.Left = CVar(var_94)
  loc_1209D88:   Set var_9C = Nothing
  loc_1209D93:   Set var_98 = Nothing
  loc_1209DB2:   Set var_90 = Me.Txt
  loc_1209DC1:   Proc_6_69_134A630(Me.DGDepart, var_90, KeyCode, global_52, Shift, &HFF)
  loc_1209DD8: Else
  loc_1209DE0:   If (var_86 = CInt(4)) Then
  loc_1209DF0:     Set var_98 = Me.Txt
  loc_1209DF6:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A0, 1)
  loc_1209DFE:     var_98 = var_9C.Height
  loc_1209E10:     Set var_8C = Me.Txt
  loc_1209E16:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_1209E1E:     var_9C = var_90.Top
  loc_1209E2E:     var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_1209E3D:     Me.DGToDepart.Top = CVar(var_94)
  loc_1209E5C:     Set var_8C = Me.Txt
  loc_1209E62:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_1209E6A:     0 = var_90.Left
  loc_1209E81:     Me.DGToDepart.Left = CVar(var_94)
  loc_1209EA7:     Set var_9C = Nothing
  loc_1209EB2:     Set var_98 = Nothing
  loc_1209ED1:     Set var_90 = Me.Txt
  loc_1209EE0:     Proc_6_69_134A630(Me.DGToDepart, var_90, KeyCode, global_64, Shift, &HFF)
  loc_1209EF7:   Else
  loc_1209EFF:     If (var_86 = CInt(5)) Then
  loc_1209F0F:       Set var_98 = Me.Txt
  loc_1209F15:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A0, 1)
  loc_1209F1D:       var_98 = var_9C.Height
  loc_1209F2F:       Set var_8C = Me.Txt
  loc_1209F35:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_1209F3D:       var_9C = var_90.Top
  loc_1209F4D:       var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_1209F5C:       Me.DGShift.Top = CVar(var_94)
  loc_1209F7B:       Set var_8C = Me.Txt
  loc_1209F81:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_1209F89:       0 = var_90.Left
  loc_1209FA0:       Me.DGShift.Left = CVar(var_94)
  loc_1209FC6:       Set var_9C = Nothing
  loc_1209FD1:       Set var_98 = Nothing
  loc_1209FFF:       Proc_6_69_134A630(Me.DGShift, Me.Txt, KeyCode, global_68, Shift, &HFF)
  loc_120A013:     End If
  loc_120A013:   End If
  loc_120A013: End If
  loc_120A044: Set var_98 = Me.DGItem
  loc_120A05B: Set var_9C = Me.DGShift
  loc_120A084: If ((((CBool(Me.DGDepart.Visible) = 0) And (CBool(Me.DGToDepart.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_120A09C:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_120A0A5:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_120A0AA:   End If
  loc_120A0AE:   Set var_8C = Me.TopCtrl1
  loc_120A0B4:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_9C)
  loc_120A0DF:   If (((CStr(0) = "Add") And (KeyCode <> CInt(1))) And (KeyCode <> CInt(2))) Then
  loc_120A0F7:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_120A100:       Proc_6_76_E533C8(Shift, arg_14)
  loc_120A105:     End If
  loc_120A105:   End If
  loc_120A109:   Set var_8C = Me.TopCtrl1
  loc_120A10F:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_86)
  loc_120A131:   If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_120A149:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_120A152:       Proc_6_76_E533C8(Shift)
  loc_120A157:     End If
  loc_120A157:   End If
  loc_120A157: End If
  loc_120A157: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FAFA10
  'Data Table: 4EA030
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_FAF87B: Proc_6_58_E06050(arg_10)
  loc_FAF886: Proc_6_133_E7FB08(var_94)
  loc_FAF88F: arg_10 = CInt(var_94)
  loc_FAF898: var_96 = KeyAscii
  loc_FAF8A3: If (var_96 = CInt(3)) Then
  loc_FAF8C2:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_FAF8EF:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_52, arg_10, "Name")
  loc_FAF8FE:   End If
  loc_FAF901: Else
  loc_FAF909:   If (var_96 = CInt(4)) Then
  loc_FAF928:     If (CBool(Me.DGToDepart.Visible) = &HFF) Then
  loc_FAF955:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_FAF964:     End If
  loc_FAF967:   Else
  loc_FAF96F:     If (var_96 = CInt(5)) Then
  loc_FAF98E:       If (CBool(Me.DGShift.Visible) = &HFF) Then
  loc_FAF995:         Set var_A8 = Me.Txt
  loc_FAF9BB:         Proc_6_89_1470B00(var_A8, KeyAscii, global_68, arg_10, "Name", 0)
  loc_FAF9CA:       End If
  loc_FAF9CD:     Else
  loc_FAF9D5:       If (var_96 = CInt(1)) Then
  loc_FAF9E2:         Set var_9C = Me.Txt
  loc_FAF9E8:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0, 0)
  loc_FAFA03:         Proc_6_42_129B55C(var_A8, arg_10, 8, 0)
  loc_FAFA0F:       End If
  loc_FAFA0F:     End If
  loc_FAFA0F:   End If
  loc_FAFA0F: End If
  loc_FAFA0F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E00C54
  'Data Table: 4EA030
  Dim var_86 As Integer
  loc_E00C4F: var_86 = KeyCode
  loc_E00C52: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E513C4
  'Data Table: 4EA030
  loc_E513A2: Set var_88 = Me.Txt
  loc_E513A8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E513B6: Proc_6_73_E23294(var_8C)
  loc_E513C2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14579C8
  'Data Table: 4EA030
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim var_C8 As Integer
  Dim unk_4EA040 As Connection15
  Dim var_8C As Variant
  Dim var_94 As Field20
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_124 As TextBox
  Dim Me As Recordset15
  Dim var_120 As TextBox
  loc_1456E47: var_86 = Cancel
  loc_1456E52: If (var_86 = CInt(1)) Then
  loc_1456E60:   Set var_8C = Me.Txt
  loc_1456E66:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1456E6E:   var_98 = "Vr No"
  loc_1456E8F:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_1456E9C:     Set var_8C = Me.Txt
  loc_1456EA2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1456EAA:     var_90.SetFocus
  loc_1456EB8:     arg_10 = &HFF
  loc_1456EBB:     Exit Sub
  loc_1456EBC:   End If
  loc_1456ECA:   Set var_8C = Me.Txt
  loc_1456ED0:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_1456ED8:   arg_10 = var_90.Text
  loc_1456EF0:   If (CDbl(var_98) = CDbl(0)) Then
  loc_1456F06:     var_B8 = "Vr No Can Not Be 0"
  loc_1456F0C:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_1456F26:     Set var_8C = Me.Txt
  loc_1456F2C:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1456F34:     var_90.SetFocus
  loc_1456F42:     arg_10 = &HFF
  loc_1456F45:     Exit Sub
  loc_1456F46:   End If
  loc_1456F4A:   Set var_8C = Me.TopCtrl1
  loc_1456F50:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_1456F58:   var_98 = CStr(var_86)
  loc_1456F69:   If (var_98 = "Add") Then
  loc_1456F72:     Call Proc_214_52_115E848(MemVar_1F95044)
  loc_1456F85:     Set var_8C = Me.Txt
  loc_1456F8B:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1456F93:     var_90.Text = var_98
  loc_1456FA8:     Call Proc_214_52_115E848(MemVar_1F95044, var_98)
  loc_1456FB3:     global_80 = var_98
  loc_1456FC0:     Call Proc_214_53_110CC4C(MemVar_1F95044, var_98)
  loc_1456FCB:     global_84 = var_98
  loc_1456FD2:   End If
  loc_1456FD6:   Set var_8C = Me.TopCtrl1
  loc_1456FDC:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_1456FF5:   If (CStr() = "Add") Then
  loc_1456FFE:     var_C8 = 0
  loc_145701E:     var_98 = "Select Count(*) From Stock Where DocID='" & global_80
  loc_145702E:     unk_4EA040.Execute var_98 & "'", var_B8, -1
  loc_1457036:     var_8C = var_8C.Fields
  loc_145703E:     var_C8 = var_90.Item(var_90)
  loc_1457046:     var_94 = var_94.Value
  loc_145706D:     If (var_D8 > 0) Then
  loc_1457076:       Call 0.Method_arg_50 (var_98)
  loc_1457084:       var_D8 = CVar(var_98) 'String
  loc_1457091:       var_B8 = "Duplicate Vr No."
  loc_1457097:       MsgBox(var_B8, &H40, var_D8, var_F8, var_118)
  loc_14570AD:       Call Proc_214_52_115E848(MemVar_1F95044, var_98)
  loc_14570BD:       If (var_98 = vbNullString) Then
  loc_14570CA:         Set var_8C = Me.Txt
  loc_14570D0:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14570D8:         var_90.SetFocus
  loc_14570E6:         arg_10 = &HFF
  loc_14570E9:         Exit Sub
  loc_14570EA:       End If
  loc_14570F0:       Call Proc_214_52_115E848(MemVar_1F95044, var_98)
  loc_1457103:       Set var_8C = Me.Txt
  loc_1457109:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1457111:       var_90.Text = arg_10
  loc_1457126:       Call Proc_214_52_115E848(MemVar_1F95044, var_98)
  loc_1457131:       global_80 = var_98
  loc_145713A:       arg_10 = &HFF
  loc_145713D:       Exit Sub
  loc_145713E:     End If
  loc_1457144:     var_C8 = 0
  loc_1457164:     var_98 = "Select Count(*) From Stock Where DocID='" & global_84
  loc_1457174:     unk_4EA040.Execute var_98 & "'", var_B8, -1
  loc_145717C:     var_8C = var_8C.Fields
  loc_1457184:     var_C8 = var_90.Item(var_90)
  loc_145718C:     var_94 = var_94.Value
  loc_14571B3:     If (var_D8 > 0) Then
  loc_14571BC:       Call 0.Method_arg_50 (var_98, var_D8)
  loc_14571DD:       MsgBox("Duplicate Vr No.", &H40, CVar(var_98), var_F8, var_118)
  loc_14571F3:       Call Proc_214_53_110CC4C(MemVar_1F95044, var_98)
  loc_1457203:       If (var_98 = vbNullString) Then
  loc_1457210:         Set var_8C = Me.Txt
  loc_1457216:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_145721E:         var_90.SetFocus
  loc_145722C:         arg_10 = &HFF
  loc_145722F:         Exit Sub
  loc_1457230:       End If
  loc_1457236:       Call Proc_214_53_110CC4C(MemVar_1F95044, var_98, arg_10)
  loc_1457241:       global_84 = var_98
  loc_145724A:       arg_10 = &HFF
  loc_145724D:       Exit Sub
  loc_145724E:     End If
  loc_145724E:   End If
  loc_1457251: Else
  loc_1457259:   If (var_86 = CInt(2)) Then
  loc_1457269:     Set var_8C = Me.Txt
  loc_145726F:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1457285:     var_D8 = Trim(CVar(var_98))
  loc_14572A7:     If (Len(var_D8) = 0) Then
  loc_14572BC:       Set var_8C = Me.Txt
  loc_14572C2:       Call 0.Method_Txt_Validate0 (Cancel, var_90, CStr(MemVar_1F950EC))
  loc_14572CA:       var_90.Text = var_90.Text
  loc_14572DC:     Else
  loc_14572E6:       Set var_8C = Me.Txt
  loc_14572EC:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_145730C:       Set var_120 = Me.Txt
  loc_1457312:       Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_145731A:       var_124.Text = Proc_6_33_15125B8(var_90)
  loc_145732D:     End If
  loc_1457331:     Set var_8C = Me.TopCtrl1
  loc_1457337:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_D8)
  loc_145733F:     var_98 = CStr()
  loc_1457350:     If (var_98 = "Add") Then
  loc_1457359:       Call Proc_214_52_115E848(MemVar_1F95044)
  loc_1457369:       If (var_98 = vbNullString) Then
  loc_1457376:         Set var_8C = Me.Txt
  loc_145737C:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1457384:         var_90.SetFocus
  loc_1457392:         arg_10 = &HFF
  loc_1457395:         Exit Sub
  loc_1457396:       End If
  loc_145739C:       Call Proc_214_53_110CC4C(MemVar_1F95044, var_98)
  loc_14573AC:       If (var_98 = vbNullString) Then
  loc_14573B9:         Set var_8C = Me.Txt
  loc_14573BF:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14573C7:         var_90.SetFocus
  loc_14573D5:         arg_10 = &HFF
  loc_14573D8:         Exit Sub
  loc_14573D9:       End If
  loc_14573DF:       Call Proc_214_52_115E848(MemVar_1F95044, var_98, arg_10)
  loc_14573F2:       Set var_8C = Me.Txt
  loc_14573F8:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1457400:       var_90.Text = arg_10
  loc_1457415:       Call Proc_214_52_115E848(MemVar_1F95044, var_98)
  loc_1457420:       global_80 = var_98
  loc_145742D:       Call Proc_214_53_110CC4C(MemVar_1F95044, var_98)
  loc_1457438:       global_84 = var_98
  loc_145743F:     End If
  loc_145744D:     Set var_8C = Me.Txt
  loc_1457453:     Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_145745B:     var_98 = var_90.Text
  loc_145747B:     If (Proc_6_91_EF38D0(CDate(var_98)) = 0) Then
  loc_1457489:       Set var_8C = Me.Txt
  loc_145748F:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1457497:       var_90.SetFocus
  loc_14574A3:       Exit Sub
  loc_14574A4:     End If
  loc_14574A7:   Else
  loc_14574AF:     If (var_86 = CInt(3)) Then
  loc_1457500:       Set var_8C = Me.Txt
  loc_1457506:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_145750E:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1457526:       If (var_98 Or (var_98 = vbNullString)) Then
  loc_1457536:         Set var_8C = Me.Txt
  loc_145753C:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1457544:         var_90.Text = vbNullString
  loc_145755D:         Set var_8C = Me.Txt
  loc_1457563:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_145756B:         var_90.Tag = vbNullString
  loc_145757A:       Else
  loc_14575B5:         Set var_94 = Me.Txt
  loc_14575BB:         Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_14575C3:         var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14575F6:         var_90 = Me.Fields.Item("Code")
  loc_1457614:         Set var_94 = Me.Txt
  loc_145761A:         Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1457622:         var_120.Tag = CStr(var_90.Value)
  loc_1457638:       End If
  loc_1457643:       Set var_8C = Me.Txt
  loc_1457649:       Call 0.Method_Txt_Validate0 (CInt(3))
  loc_1457651:       var_98 = "From Location"
  loc_1457672:       If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_145767F:         Set var_8C = Me.Txt
  loc_1457685:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_145768D:         var_90.SetFocus
  loc_145769B:         arg_10 = &HFF
  loc_145769E:         Exit Sub
  loc_145769F:       End If
  loc_14576A2:     Else
  loc_14576AA:       If (var_86 = CInt(4)) Then
  loc_14576FB:         Set var_8C = Me.Txt
  loc_1457701:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1457709:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1457721:         If (arg_10 Or (var_98 = vbNullString)) Then
  loc_1457731:           Set var_8C = Me.Txt
  loc_1457737:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_145773F:           var_90.Text = vbNullString
  loc_1457758:           Set var_8C = Me.Txt
  loc_145775E:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1457766:           var_90.Tag = vbNullString
  loc_1457775:         Else
  loc_14577B0:           Set var_94 = Me.Txt
  loc_14577B6:           Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_14577BE:           var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14577F1:           var_90 = Me.Fields.Item("Code")
  loc_1457802:           var_98 = CStr(var_90.Value)
  loc_145780F:           Set var_94 = Me.Txt
  loc_1457815:           Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_145781D:           var_120.Tag = var_98
  loc_1457833:         End If
  loc_1457836:       Else
  loc_145783E:         If (var_86 = CInt(5)) Then
  loc_145788F:           Set var_8C = Me.Txt
  loc_1457895:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_145789D:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_14578B5:           If (var_90 Or (var_98 = vbNullString)) Then
  loc_14578C5:             Set var_8C = Me.Txt
  loc_14578CB:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14578D3:             var_90.Text = vbNullString
  loc_14578EC:             Set var_8C = Me.Txt
  loc_14578F2:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14578FA:             var_90.Tag = vbNullString
  loc_1457909:           Else
  loc_1457944:             Set var_94 = Me.Txt
  loc_145794A:             Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1457952:             var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14579A3:             Set var_94 = Me.Txt
  loc_14579A9:             Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_14579B1:             var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14579C7:           End If
  loc_14579C7:         End If
  loc_14579C7:       End If
  loc_14579C7:     End If
  loc_14579C7:   End If
  loc_14579C7: End If
  loc_14579C7: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F41274
  'Data Table: 4EA030
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4116B: Me.DGDepart.Visible = False
  loc_F4118A: If (Me.RecordCount > 0) Then
  loc_F411C9:   Set var_B4 = Me.Txt
  loc_F411CF:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3), var_B8)
  loc_F411D7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4120A:   var_B0 = Me.Fields.Item("Name")
  loc_F41229:   Set var_B4 = Me.Txt
  loc_F4122F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3), var_B8)
  loc_F41237:   var_B8.Text = CStr(var_B0.Value)
  loc_F4124D: End If
  loc_F41258: Set var_A8 = Me.Txt
  loc_F4125E: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3))
  loc_F41266: var_B0.SetFocus
  loc_F41272: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E61CC4
  'Data Table: 4EA030
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E61C8F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E61CA2: Set var_A8 = Me.TxtGrid
  loc_E61CA8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61CB0: var_AC.Visible = False
  loc_E61CBC: Call Proc_214_51_EF7F40()
  loc_E61CC1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68640
  'Data Table: 4EA030
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E685FC: Set var_88 = Me.TxtGrid
  loc_E68602: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6861C: If (var_8C.Visible = 0) Then
  loc_E68635:   Me.FGrid.BackColorSel = CVar(CLng(global_120))
  loc_E6863D: End If
  loc_E6863D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E208F0
  'Data Table: 4EA030
  loc_E208E7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E208EF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E2F404
  'Data Table: 4EA030
  Dim var_8C As TextBox
  loc_E2F3E7: Set var_88 = Me.TxtGrid
  loc_E2F3ED: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E2F3F5: var_8C.Visible = False
  loc_E2F401: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '122EB80
  'Data Table: 4EA030
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As Variant
  loc_122E668: On Error Goto loc_122EB79
  loc_122E66F: Set var_88 = Me.TopCtrl1
  loc_122E675: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_122E68E: If (CStr() = "Browse") Then
  loc_122E691:   Exit Sub
  loc_122E692: End If
  loc_122E706: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_122E71F:   Me.FGrid.CellBackColor = CVar(CLng(global_120))
  loc_122E72F:   var_9C = "+{Tab}"
  loc_122E735:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_122E73F:   Cancel = 0
  loc_122E745: Else
  loc_122E74F:   var_B0 = Me.FGrid.Rows
  loc_122E79C:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_122E7B5:     Me.FGrid.CellBackColor = CVar(CLng(global_120))
  loc_122E7C2:     Call Proc_214_56_ED7120(0, var_B0, Cancel)
  loc_122E7C7:   End If
  loc_122E7C7: End If
  loc_122E7CD: global_98 = Cancel
  loc_122E7F3: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_122E817: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_122E82D:   var_EC = CLng(Me.FGrid.Col)
  loc_122E83D:   If (var_EC = CLng(1)) Then
  loc_122E853:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122E86B:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_122E870:     var_11C = vbNullString
  loc_122E87A:     Set var_B4 = Me.FGrid
  loc_122E880:     LateIdCallSt
  loc_122E8AB:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122E8B3:     var_FC = CVar(CLng(9)) 'Long
  loc_122E8B8:     var_11C = vbNullString
  loc_122E8C2:     Set var_A0 = Me.FGrid
  loc_122E8C8:     LateIdCallSt
  loc_122E8ED:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122E8F5:     var_FC = CVar(CLng(&HA)) 'Long
  loc_122E8FA:     var_11C = vbNullString
  loc_122E904:     Set var_A0 = Me.FGrid
  loc_122E90A:     LateIdCallSt
  loc_122E92F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122E937:     var_FC = CVar(CLng(2)) 'Long
  loc_122E93C:     var_11C = vbNullString
  loc_122E946:     Set var_A0 = Me.FGrid
  loc_122E94C:     LateIdCallSt
  loc_122E971:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122E979:     var_FC = CVar(CLng(7)) 'Long
  loc_122E97E:     var_11C = vbNullString
  loc_122E988:     Set var_A0 = Me.FGrid
  loc_122E98E:     LateIdCallSt
  loc_122E9A3:   Else
  loc_122E9AA:     If (var_EC = CLng(3)) Then
  loc_122E9C0:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122E9D8:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_122E9DD:       var_11C = vbNullString
  loc_122E9ED:       LateIdCallSt
  loc_122EA59:       LateIdCallSt
  loc_122EA75:       Call Proc_214_55_F75A5C(Me.FGrid, CVar(CStr(Format(0, "0.00"))), 1, 1, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CLng(8)))
  loc_122EA7D:     Else
  loc_122EA84:       If (var_EC = CLng(7)) Then
  loc_122EA92:         If (global_88 <> "No") Then
  loc_122EAA8:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122EAC0:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_122EAC5:           var_11C = vbNullString
  loc_122EAD5:           LateIdCallSt
  loc_122EB00:           var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122EB41:           LateIdCallSt
  loc_122EB5D:           Call Proc_214_55_F75A5C(Me.FGrid, CVar(CStr(Format(0, "0.00"))), 1, 1, CVar(CLng(8)), var_FC, Me.FGrid, CVar(CLng(8)))
  loc_122EB62:         End If
  loc_122EB62:       End If
  loc_122EB62:     End If
  loc_122EB62:   End If
  loc_122EB62: End If
  loc_122EB68: If (Cancel = &HD) Then
  loc_122EB70:   global_96 = 0
  loc_122EB73: End If
  loc_122EB75: Cancel = 0
  loc_122EB78: Exit Sub
  loc_122EB79: ' Referenced from: 122E668
  loc_122EB79: Proc_6_60_E63754(Cancel, global_96, var_FC, var_D4, var_FC)
  loc_122EB7E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E15868
  'Data Table: 4EA030
  loc_E15859: Call FGrid_UnknownEvent_C()
  loc_E15863: global_96 = 0
  loc_E15866: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1079C84
  'Data Table: 4EA030
  Dim var_AC As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_1079A0F: var_88 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1079A19: On Error Goto loc_1079C7C
  loc_1079A2F: var_B0 = CLng(Me.FGrid.Col)
  loc_1079A3F: If (var_B0 = CLng(1)) Then
  loc_1079A46:   Set var_C8 = Me.FGrid
  loc_1079A6A:   var_B4 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1079A97:   Set var_B8 = var_C8
  loc_1079AA9:   Proc_6_63_110B734(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_1079AD1:   Set var_AC = Me.TxtGrid
  loc_1079AD7:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4, Asc(var_B4))
  loc_1079ADF:   0 = var_B8.Text
  loc_1079AF8:   If (Len(var_B4) <= 1) Then
  loc_1079B07:     Set var_AC = Me.TxtGrid
  loc_1079B0D:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4)
  loc_1079B15:     var_CE = var_B8.Text
  loc_1079B26:     Set var_BC = Me.TxtGrid
  loc_1079B2C:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_1079B34:     var_C8.Text = var_B4
  loc_1079B47:   End If
  loc_1079B53:   Set var_AC = Me.TxtGrid
  loc_1079B59:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_1079B73:   Set var_BC = Me.TxtGrid
  loc_1079B79:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_1079B81:   var_C8.SelStart = Len(var_B8.Text)
  loc_1079B97: Else
  loc_1079B9E:   If Not (var_B0 = CLng(3)) Then
  loc_1079BA8:     If (var_B0 = CLng(4)) Then
  loc_1079BAB:     End If
  loc_1079BE9:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1079BFE:   Else
  loc_1079C05:     If (var_B0 = CLng(7)) Then
  loc_1079C13:       If (global_88 <> "No") Then
  loc_1079C54:         Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel)
  loc_1079C66:       End If
  loc_1079C66:     End If
  loc_1079C66:   End If
  loc_1079C66: End If
  loc_1079C70: If (CLng(Cancel) <> &HD) Then
  loc_1079C78:   global_96 = &HFF
  loc_1079C7B: End If
  loc_1079C7B: Exit Sub
  loc_1079C7C: ' Referenced from: 1079A19
  loc_1079C7C: Proc_6_60_E63754(global_96, 0, &HFF)
  loc_1079C81: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '10580C4
  'Data Table: 4EA030
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  loc_1057E58: On Error Goto loc_10580BC
  loc_1057E5F: Set var_8C = Me.TopCtrl1
  loc_1057E65: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1057E7E: If (CStr() = "Browse") Then
  loc_1057E81:   Exit Sub
  loc_1057E82: End If
  loc_1057E9F: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1057EA2:   Exit Sub
  loc_1057EA3: End If
  loc_1057EB4: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1057ED6:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1057F10:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_1057F32:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1057F48:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1057F51:         Set var_114 = Me.FGrid
  loc_1057F6C:       Else
  loc_1057F7F:         Me.FGrid.Rows = 1
  loc_1057FA5:         var_9C = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0)))) 'String
  loc_1057FAD:         Set var_114 = Me.FGrid
  loc_1057FC7:         var_B0 = 1
  loc_1057FDA:         Me.FGrid.FixedRows = var_B0
  loc_1057FE2:       End If
  loc_1057FE2:       Call Proc_214_55_F75A5C(FGrid.DispID_10000, var_9C)
  loc_1057FEB:       Set var_8C = Me.TopCtrl1
  loc_1057FF1:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(FGrid.DispID_10000)
  loc_105800A:       If (CStr(var_B0) = "Add") Then
  loc_1058032:         For var_120 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_120 'Integer
  loc_105803C:           var_B0 = CVar(CLng(var_86)) 'Long
  loc_1058044:           var_E0 = CVar(CLng(0)) 'Long
  loc_105804E:           var_9C = CVar(CStr(var_86)) 'String
  loc_1058056:           Set var_8C = Me.FGrid
  loc_105805C:           LateIdCallSt
  loc_105806D:         Next var_120 'Integer
  loc_1058072:       End If
  loc_1058072:     End If
  loc_1058075:   Else
  loc_1058096:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_10580A6:   End If
  loc_10580AA:   Set var_8C = Me.FGrid
  loc_10580BB: End If
  loc_10580BB: Exit Sub
  loc_10580BC: ' Referenced from: 1057E58
  loc_10580BC: Proc_6_60_E63754(FGrid.DispID_8001)
  loc_10580C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9DDD0
  'Data Table: 4EA030
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9DD73: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9DD8B: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9DDB3: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9DDCE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E4547C
  'Data Table: 4EA030
  Dim var_8C As TextBox
  loc_E4545B: Set var_88 = Me.TxtGrid
  loc_E45461: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E45469: var_8C.Visible = False
  loc_E45475: Call Proc_214_51_EF7F40()
  loc_E4547A: Exit Sub
End Sub

Private Sub Form_Load() '12617B4
  'Data Table: 4EA030
  Dim var_90 As Variant
  Dim var_C0 As String
  Dim var_8C As String
  Dim unk_4EA040 As Connection15
  Dim var_88 As Recordset15
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_118 As Label
  loc_1261238: On Error Goto loc_12617AC
  loc_1261241: Call 0.Method_arg_50 (var_8C)
  loc_126124D: Set var_90 = Me.LblCaption
  loc_1261253: var_90.Caption = var_8C
  loc_126126B: var_C0 = "Select E.PurChaseGodown,G.Name PurChaseGodownName,E.RateEditableInStockIssue,E.BarCodeFeatureInPurchase,E.NegativeStockAllowYN,DateEditableOnRequisitionYN From Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE="
  loc_126127B: Proc_6_17_EAAE40(var_B0, MemVar_1F95078, var_C0)
  loc_126129A: unk_4EA040.Execute CStr(var_110 & var_B0 & vbNullString), -1, var_90
  loc_12612A5: Set var_88 = var_90
  loc_12612CD: If (var_88.RecordCount > 0) Then
  loc_12612FE:   global_100 = Proc_6_38_E69628(CVar(var_88.Fields.Item("BarCodeFeatureInPurchase")))
  loc_1261339:   global_88 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RateEditableInStockIssue")))
  loc_126137F:   If (Proc_6_38_E69628(CVar(var_88.Fields.Item("NegativeStockAllowYN"))) <> "No") Then
  loc_1261387:     global_108 = &HFF
  loc_126138A:   End If
  loc_12613A1:   var_118 = var_88.Fields.Item("DateEditableOnRequisitionYN")
  loc_12613B8:   global_92 = Proc_6_38_E69628(CVar(var_118))
  loc_12613C5: End If
  loc_12613CF: Set global_60 = New 
  loc_12613E1: Me.CursorLocation = 3
  loc_12613F1: If (global_100 = "Yes") Then
  loc_1261412:   var_8C = "Select I.Code,I.BarCode,I.Name,I.Unit,I.IssueUnit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1261423:   Me.Open CVar(var_8C & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.BarCode"), CVar(MemVar_1F95044), 3
  loc_1261431: Else
  loc_126144F:   var_8C = "Select I.Code,I.BarCode,I.Name,I.Unit,I.IssueUnit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1261460:   Me.Open CVar(var_8C & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_126146B: End If
  loc_1261474: CVarUnk
  loc_1261479: VerifyVarObj
  loc_126147F: Set var_90 = Me.DGItem
  loc_1261485: LateIdStAd
  loc_126149D: Set global_52 = New 
  loc_12614AF: Me.DGItem.CursorLocation = 3
  loc_12614D9: var_B0 = CVar("Select G.Code,G.Name From GodownMast G iNNER join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078 & "')  Order by G.Name") 'String
  loc_12614E3: Me.Open var_B0, CVar(MemVar_1F95044), 2
  loc_12614F7: CVarUnk
  loc_12614FC: VerifyVarObj
  loc_1261502: Set var_90 = Me.DGDepart
  loc_1261508: LateIdStAd
  loc_1261520: Set global_64 = New 
  loc_1261532: Me.DGDepart.CursorLocation = 3
  loc_126155C: var_B0 = CVar("Select G.Code,G.Name From GodownMast G INNER join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F95078 & "')  Order by G.Name") 'String
  loc_1261566: Me.Open var_B0, CVar(MemVar_1F95044), 2
  loc_126157A: CVarUnk
  loc_126157F: VerifyVarObj
  loc_1261585: Set var_90 = Me.DGToDepart
  loc_126158B: LateIdStAd
  loc_12615B5: Me.DGToDepart.CursorLocation = 3
  loc_12615E9: Me.Open CVar("Select Code,Name From ShiftMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "') Order by Name"), CVar(MemVar_1F95044), 2
  loc_12615FD: CVarUnk
  loc_1261602: VerifyVarObj
  loc_1261608: Set var_90 = Me.DGShift
  loc_126160E: LateIdStAd
  loc_1261627: If (global_100 = "Yes") Then
  loc_1261636:   Me.TxtBarCode.Visible = True
  loc_1261649:   Set var_90 = Me.Label1
  loc_126164F:   Call 0.Method_Form_Load0 (6, var_118, &HFF, var_90, New, 3, -1)
  loc_1261657:   var_118.Visible = var_90
  loc_1261663: End If
  loc_126167F: Me.CursorLocation = 3
  loc_12616A9: var_B0 = CVar("Select Distinct DocID as SearchCode,Site_Code,LogSite_Code From Stock WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' and VTYPE='KSREC' order by  DocID") 'String
  loc_12616B3: Me.Open var_B0, CVar(MemVar_1F95044), 2
  loc_12616C4: global_72 = "KSREC"
  loc_12616CE: global_76 = "KSISS"
  loc_12616D2: Call Proc_214_54_1259308(3, -1, global_64, 3)
  loc_12616FA: Call Proc_214_50_F1E794(Proc_5_1_100EC1C("INI", Me, New, -1), Me)
  loc_1261705: Call Proc_214_49_14FA9F4(global_52)
  loc_1261719: Me.LblUser.Left = CDbl(13500)
  loc_1261730: Me.LblUser.Top = CDbl(7800)
  loc_1261747: Me.LblLDt.Top = CDbl(8160)
  loc_126175E: Me.LblLDt.Left = CDbl(13500)
  loc_126176D: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1261785: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_126179B: Me.LblCurStockStr.BackColor = CLng(MemVar_1F951B4)
  loc_12617A8: Set var_88 = Nothing
  loc_12617AB: Exit Sub
  loc_12617AC: ' Referenced from: 1261238
  loc_12617AC: Proc_6_60_E63754(3)
  loc_12617B1: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6A98
  'Data Table: 4EA030
  Dim var_8C As Label
  loc_ED69F6: Call 0.Method_arg_50 (var_88)
  loc_ED6A08: Me.LblFormCaption.Caption = var_88
  loc_ED6A21: Me.LblFormCaption.Left = CDbl(0)
  loc_ED6A2D: Set var_A0 = Me.TopCtrl1
  loc_ED6A33: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED6A40: Set var_8C = Me.TopCtrl1
  loc_ED6A46: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED6A60: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED6A7B: Call 0.Method_arg_100 (var_B8)
  loc_ED6A8D: Me.LblFormCaption.Width = var_B8
  loc_ED6A95: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6D958
  'Data Table: 4EA030
  loc_E6D907: Set global_56 = Nothing
  loc_E6D919: Set global_52 = Nothing
  loc_E6D92B: Set global_64 = Nothing
  loc_E6D93D: Set global_60 = Nothing
  loc_E6D94F: Set global_68 = Nothing
  loc_E6D956: Exit Sub
End Sub

Private Sub Form_Activate() 'E2D7E4
  'Data Table: 4EA030
  loc_E2D7C0: Set var_88 = Me.TopCtrl1
  loc_E2D7C6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000()
  loc_E2D7DB: If (CLng(CInt()) = &H2D) Then
  loc_E2D7DE:   Call TopCtrl1_UnknownEvent_15()
  loc_E2D7E3: End If
  loc_E2D7E3: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E80BF4
  'Data Table: 4EA030
  loc_E80B88: On Error Goto loc_E80BEB
  loc_E80BB9: If (((global_100 = "Yes") And (Shift = 1)) And (Me.TxtBarCode.Visible = &HFF)) Then
  loc_E80BC6:   Me.TxtBarCode.SetFocus
  loc_E80BCE: End If
  loc_E80BE2: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E80BEA: Exit Sub
  loc_E80BEB: ' Referenced from: E80B88
  loc_E80BEB: Proc_6_60_E63754(Shift)
  loc_E80BF0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FA3744
  'Data Table: 4EA030
  Dim var_8C As Variant
  Dim var_D0 As Variant
  Dim var_D4 As TextBox
  loc_FA35C0: On Error Goto loc_FA373B
  loc_FA35E6: Call Proc_214_50_F1E794(Proc_5_1_100EC1C("ADD", Me))
  loc_FA35F1: Call Proc_214_48_F73308(global_56)
  loc_FA3603: Me.LblVPrefix.Caption = vbNullString
  loc_FA361E: Me.FGrid.Rows = 1
  loc_FA363B: var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FA3643: Set var_D4 = Me.FGrid
  loc_FA3672: Me.FGrid.FixedRows = 1
  loc_FA368D: Set var_8C = Me.Txt
  loc_FA3693: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, CStr(MemVar_1F950EC))
  loc_FA369B: var_D4.Text = FGrid.DispID_10000
  loc_FA36B5: Set var_8C = Me.Txt
  loc_FA36BB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4)
  loc_FA36C3: var_D4.SetFocus
  loc_FA36E2: Set var_8C = Me.Txt
  loc_FA36E8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4)
  loc_FA36F0: var_D4.Text = CStr(MemVar_1F950EC)
  loc_FA370B: Call Txt_Validate(CInt(2))
  loc_FA371D: Me.LblUser.Caption = vbNullString
  loc_FA3732: Me.LblLDt.Caption = vbNullString
  loc_FA373A: Exit Sub
  loc_FA373B: ' Referenced from: FA35C0
  loc_FA373B: Proc_6_60_E63754(&HFF)
  loc_FA3740: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBC038
  'Data Table: 4EA030
  loc_EBBFA4: On Error Goto loc_EBC02F
  loc_EBBFDE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBBFED:   Set var_10C = Me
  loc_EBC004:   Call Proc_214_50_F1E794(Proc_5_1_100EC1C("INI", var_10C))
  loc_EBC00F:   Call Proc_214_49_14FA9F4(global_56)
  loc_EBC017: Else
  loc_EBC01D:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBC025:   Call var_10C.SetFocus
  loc_EBC02E: End If
  loc_EBC02E: Exit Sub
  loc_EBC02F: ' Referenced from: EBBFA4
  loc_EBC02F: Proc_6_60_E63754()
  loc_EBC034: Exit Sub
  loc_EBC035: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '112B274
  'Data Table: 4EA030
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
  Dim unk_4EA040 As Connection15
  Dim Me As Recordset15
  Dim var_B4 As Variant
  loc_112AF4C: On Error Goto loc_112B225
  loc_112AF5D: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_112AF60:   Exit Sub
  loc_112AF61: End If
  loc_112AF98: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_112AFAB:   var_11C = Proc_6_45_EADFB8(MemVar_1F95070, 2)
  loc_112AFC6:   var_B4 = Space((5 - Len("KSISS")))
  loc_112AFCE:   var_F4 = (CVar(MemVar_1F9506C & var_11C & "KSISS") + "Are You Sure To Delete This ? ")
  loc_112AFE7:   var_114 = CVar(Me.LblVPrefix.Caption) 'String
  loc_112AFEA:   var_138 = (var_F4 + var_114)
  loc_112AFFA:   Set var_13C = Me.LblVPrefix
  loc_112B00D:   var_150 = Space((5 - Len(var_13C.Caption)))
  loc_112B015:   var_160 = (var_138 + var_150)
  loc_112B032:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_168, var_16C)
  loc_112B03A:   8 = var_168.Text
  loc_112B051:   var_180 = Space((var_160 - Len(CStr(Val(var_16C)))))
  loc_112B059:   var_190 = ( + var_180)
  loc_112B06B:   Set var_194 = Me.Txt
  loc_112B071:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_198)
  loc_112B08B:   var_1BC = (var_190 + CVar(CStr(Val(var_198.Text))))
  loc_112B0DC:   unk_4EA040.BeginTrans var_1C4
  loc_112B0F2:   var_94 = Me.Bookmark 'Variant
  loc_112B114:   Set var_124 = Me.Txt
  loc_112B11A:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_13C, var_11C, "Delete From Stock Where DocID='")
  loc_112B12B:   var_120 = -1 & var_11C
  loc_112B13B:   unk_4EA040.Execute MemVar_1F9506C & var_11C & "'", Me.Txt, 
  loc_112B16C:   var_11C = "Delete From Stock Where DocID='" & CStr(var_1BC)
  loc_112B17C:   unk_4EA040.Execute var_11C & "'", var_13C.Text, -1
  loc_112B194:   unk_4EA040.CommitTrans
  loc_112B1A4:   Me.Requery -1
  loc_112B1C4:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_112B1D1:     Me.Bookmark = var_94
  loc_112B1D9:   Else
  loc_112B1ED:     If (Me.EOF = 0) Then
  loc_112B1F6:       Me.MoveLast
  loc_112B1FB:     End If
  loc_112B1FB:   End If
  loc_112B1FB:   Call Proc_214_49_14FA9F4(var_124)
  loc_112B21C:   Proc_5_0_1107AD0(&HFF, Me)
  loc_112B224: End If
  loc_112B224: Exit Sub
  loc_112B225: ' Referenced from: 112AF4C
  loc_112B22B: unk_4EA040.RollbackTrans
  loc_112B238: Set var_124 = Err()
  loc_112B23E: Call 0.Method_arg_2C (var_11C, global_56)
  loc_112B25F: MsgBox(CVar(var_11C), &H10, " Deletion Message", var_F4, var_114)
  loc_112B272: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '10FE9EC
  'Data Table: 4EA030
  Dim Me As Recordset15
  Dim var_90 As Label
  Dim var_98 As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_114 As Variant
  Dim var_11C As TextBox
  Dim var_144 As Variant
  Dim var_14C As TextBox
  Dim var_170 As Variant
  loc_10FE700: On Error Goto loc_10FE9E6
  loc_10FE711: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_10FE714:   Exit Sub
  loc_10FE715: End If
  loc_10FE72C: If (Me.RecordCount > 0) Then
  loc_10FE752:   Call Proc_214_50_F1E794(Proc_5_1_100EC1C("EDIT", Me))
  loc_10FE76A:   Me.LblUser.Caption = vbNullString
  loc_10FE77F:   Me.LblLDt.Caption = vbNullString
  loc_10FE794:   Set var_90 = Me.Txt
  loc_10FE79A:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_10FE7A2:   var_98.Enabled = False
  loc_10FE7B2:   Set var_90 = Me.TopCtrl1
  loc_10FE7B8:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(global_56)
  loc_10FE7D1:   If (CStr() = "Add") Then
  loc_10FE7DF:     Set var_90 = Me.Txt
  loc_10FE7E5:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2))
  loc_10FE7ED:     var_98.SetFocus
  loc_10FE7F9:   End If
  loc_10FE7FD:   Set var_90 = Me.TopCtrl1
  loc_10FE803:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_10FE81C:   If (CStr() = "Edit") Then
  loc_10FE82A:     Set var_90 = Me.Txt
  loc_10FE830:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3))
  loc_10FE838:     var_98.SetFocus
  loc_10FE844:   End If
  loc_10FE852:   Set var_90 = Me.Txt
  loc_10FE858:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_10FE86B:   global_80 = var_98.Text
  loc_10FE8A4:   var_A8 = Space((5 - Len("KSISS")))
  loc_10FE8AC:   var_CC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & "KSISS") + var_A8)
  loc_10FE8C5:   var_E0 = CVar(Me.LblVPrefix.Caption) 'String
  loc_10FE8C8:   var_F0 = (var_CC + var_E0)
  loc_10FE8D8:   Set var_98 = Me.LblVPrefix
  loc_10FE8EB:   var_104 = Space((5 - Len(var_98.Caption)))
  loc_10FE8F3:   var_114 = (var_F0 + var_104)
  loc_10FE90A:   Set var_118 = Me.Txt
  loc_10FE910:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_11C, var_120)
  loc_10FE918:   8 = var_11C.Text
  loc_10FE92F:   var_134 = Space((var_114 - Len(CStr(Val(var_120)))))
  loc_10FE937:   var_144 = (var_98 + var_134)
  loc_10FE949:   Set var_148 = Me.Txt
  loc_10FE94F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_14C)
  loc_10FE969:   var_170 = (var_144 + CVar(CStr(Val(var_14C.Text))))
  loc_10FE974:   global_84 = CStr(var_170)
  loc_10FE9B4: Else
  loc_10FE9D5:   MsgBox("No Record To Edit.", &H40, "Information", var_CC, var_E0)
  loc_10FE9E5: End If
  loc_10FE9E5: Exit Sub
  loc_10FE9E6: ' Referenced from: 10FE700
  loc_10FE9E6: Proc_6_60_E63754()
  loc_10FE9EB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1755C
  'Data Table: 4EA030
  loc_E17551: Me.Global.Unload Me
  loc_E17559: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB3054
  'Data Table: 4EA030
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB2FC4: On Error Goto loc_EB304E
  loc_EB2FDE: If (Me.RecordCount <= 0) Then
  loc_EB2FE7:   var_B8 = "Information"
  loc_EB3002:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB3012:   Exit Sub
  loc_EB3013: End If
  loc_EB3016: MemVar_1F950E4 = "Select Distinct S.Docid,S.Vno as VNo,CONVERT(VARCHAR(11),S.VDate) as [Date],D.NAME AS ToLocation From (Stock S left Join GodownMast D on S.GodownCode=D.Code) Left Join ItemMast I ON S.Item=I.Code And I.ItemType='Store' WHERE VTYPE='KSREC'"
  loc_EB3023: Proc_6_126_F1C850("700,1200,4500")
  loc_EB3031: MemVar_1F95120 = Me
  loc_EB3048: Call 0.Method_arg_2B0 (1)
  loc_EB304D: Exit Sub
  loc_EB304E: ' Referenced from: EB2FC4
  loc_EB304E: Proc_6_60_E63754(var_B8)
  loc_EB3053: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2E3E8
  'Data Table: 4EA030
  Dim var_4701 As Double
  loc_E2E3D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E3E0: Call Proc_214_49_14FA9F4(global_56)
  loc_E2E3E5: Exit Sub
  loc_E2E3E6: var_4701 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2E508
  'Data Table: 4EA030
  Dim var_4701 As Double
  loc_E2E4F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E500: Call Proc_214_49_14FA9F4(global_56)
  loc_E2E505: Exit Sub
  loc_E2E506: var_4701 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2E568
  'Data Table: 4EA030
  Dim var_4701 As Double
  loc_E2E558: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E560: Call Proc_214_49_14FA9F4(global_56)
  loc_E2E565: Exit Sub
  loc_E2E566: var_4701 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2E5C8
  'Data Table: 4EA030
  Dim var_4701 As Double
  loc_E2E5B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E5C0: Call Proc_214_49_14FA9F4(global_56)
  loc_E2E5C5: Exit Sub
  loc_E2E5C6: var_4701 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '12D8224
  'Data Table: 4EA030
  Dim Me As Recordset15
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_F8 As Variant
  Dim var_110 As Variant
  Dim var_150 As Variant
  Dim var_19C As String
  Dim var_1BC As Variant
  Dim var_1F8 As String
  Dim var_218 As Variant
  Dim var_270 As Variant
  Dim var_100 As Variant
  Dim unk_4EA040 As Connection15
  Dim var_A0 As Recordset15
  Dim var_120 As Variant
  Dim var_BE As Integer
  Dim var_D8 As Variant
  Dim var_178 As String
  Dim var_B0 As Recordset15
  Dim var_FC As Fields15
  Dim var_284 As String
  loc_12D7C08: On Error Goto loc_12D821D
  loc_12D7C22: If (Me.RecordCount <= 0) Then
  loc_12D7C25:   Exit Sub
  loc_12D7C26: End If
  loc_12D7C31: Set var_FC = Me.Txt
  loc_12D7C37: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0))
  loc_12D7C47: Set var_154 = Me.Txt
  loc_12D7C4D: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_158)
  loc_12D7C5D: Set var_1C0 = Me.Txt
  loc_12D7C63: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_1C4)
  loc_12D7C73: Set var_21C = Me.Txt
  loc_12D7C79: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_220)
  loc_12D7CAF: var_D8 = Space((5 - Len(global_76)))
  loc_12D7CB7: var_F8 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & global_76) + var_D8)
  loc_12D7CC8: var_110 = CVar(var_100) 'Address
  loc_12D7CD7: var_150 = (var_F8 + Mid(var_110, 9, 5))
  loc_12D7D06: var_1AC = Space((5 - Len(CStr(Mid(CVar(var_158), 9, 5)))))
  loc_12D7D0E: var_1BC = (var_150 + var_1AC)
  loc_12D7D43: var_208 = Space((8 - Len(CStr(Trim(Right(CVar(var_1C4), 8))))))
  loc_12D7D4B: var_218 = (var_1BC + var_208)
  loc_12D7D76: var_270 = (var_218 + CVar(CStr(Trim(Right(CVar(var_220), 8)))))
  loc_12D7DD0: var_C4 = "Select S.Docid,S.VNo,S.VDate,S.IssQty as Qty,S.IssueUnit As Unit,S.Rate,S.Amount,S.GodownCode," & " I.Name as ItemName,G.Name as GodName,SM.Name As Shift,S.Remarks,S.U_Name UserName,S.U_EntDt entdt, S.U_AE"
  loc_12D7DD7: var_C8 = var_C4 & " From ((Stock as S Left Join ItemMast as I on S.Item=I.Code And I.ItemType='Store')"
  loc_12D7DE5: var_1F8 = var_C8 & " Left Join GodownMast as G on S.GodownCode=G.Code) Left Join ShiftMast as SM on S.ShiftCode=SM.Code" & " Where S.DocID='"
  loc_12D7DF3: var_88 = var_1F8 & CStr(var_270) & "' Order By S.Sno"
  loc_12D7E0A: var_C4 = "Select S.GodownCode,G.Name as GodName" & " From Stock as S Left Join GodownMast as G on S.GodownCode=G.Code"
  loc_12D7E11: var_19C = var_C4 & " Where S.DocID='"
  loc_12D7E22: Set var_FC = Me.Txt
  loc_12D7E28: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_100, var_C8)
  loc_12D7E30: var_19C = var_100.Text
  loc_12D7E6B: unk_4EA040.Execute var_100 & var_C8 & "'", var_D8, -1
  loc_12D7E76: Set var_B0 = var_FC
  loc_12D7E87: If (var_88 = vbNullString) Then
  loc_12D7E8A:   Exit Sub
  loc_12D7E8B: End If
  loc_12D7EA1: unk_4EA040.Execute var_88, var_D8, -1
  loc_12D7EAC: Set var_A0 = var_FC
  loc_12D7EBB: var_BC = var_A0.RecordCount
  loc_12D7EC9: If (var_BC <= 0) Then
  loc_12D7ED2:   Call 0.Method_arg_50 (var_C4, var_FC)
  loc_12D7EF3:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C4), var_F8, var_110)
  loc_12D7F03:   Exit Sub
  loc_12D7F04: End If
  loc_12D7F1A: Set var_FC = var_A0 
  loc_12D7F26: var_BE = CreateFieldDefFile(var_FC, MemVar_1F950B4 & "\KitchenStockTr.ttx")
  loc_12D7F30: Set var_A0 = var_FC
  loc_12D7F36: var_120 = CVar(var_BE) 'Integer
  loc_12D7F39: var_9C = var_120 'Variant
  loc_12D7F55: var_C4 = MemVar_1F950B4 & "\KitchenStockTr.RPT"
  loc_12D7F5E: Call 0.Method_arg_1C (var_C4, var_120, var_FC)
  loc_12D7F69: MemVar_1F951E8 = var_FC
  loc_12D7F84: Call 0.Method_arg_90 (var_FC, var_BC, var_AA, 1)
  loc_12D7F8C: Call 0.Method_arg_24 (var_BE, &HFF)
  loc_12D7F98: For var_288 =  To CInt(var_BC): var_FC = var_288 'Integer
  loc_12D7FB1:   Call 0.Method_arg_90 (var_FC, CLng(var_AA))
  loc_12D7FB9:   Call 0.Method_arg_20 (var_100)
  loc_12D7FC1:   Call 0.Method_arg_30 (var_C4)
  loc_12D7FD7:   var_298 = Ucase(CVar(var_C4)) 'Variant
  loc_12D8007:   If (var_298 = Ucase("Title")) Then
  loc_12D801D:     Call 0.Method_arg_90 (var_FC, CLng(var_AA))
  loc_12D8025:     Call 0.Method_arg_20 (var_100)
  loc_12D802D:     Call 0.Method_arg_38 ("'Kitchen Stock Transfer'")
  loc_12D803C:   Else
  loc_12D805E:     If (var_298 = Ucase("ToDepartment")) Then
  loc_12D80B1:       Call 0.Method_arg_90 (var_154, CLng(var_AA))
  loc_12D80B9:       Call 0.Method_arg_20 (var_158)
  loc_12D80C1:       Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("GodName").Value & "'"))
  loc_12D80E0:     Else
  loc_12D8102:       If (var_298 = Ucase("ForShift")) Then
  loc_12D8105:         var_178 = "'"
  loc_12D811C:         var_FC = var_A0.Fields
  loc_12D8138:         var_284 = "'"
  loc_12D8141:         var_C4 = CStr(var_178 & var_FC.Item("Shift").Value & var_284)
  loc_12D8155:         Call 0.Method_arg_90 (var_154, CLng(var_AA))
  loc_12D815D:         Call 0.Method_arg_20 (var_158)
  loc_12D8165:         Call 0.Method_arg_38 (var_C4)
  loc_12D8181:       End If
  loc_12D8181:     End If
  loc_12D8181:   End If
  loc_12D8184: Next var_288 'Integer
  loc_12D81A2: Call 0.Method_arg_64 (var_FC, CVar(var_A0))
  loc_12D81AA: Call 0.Method_arg_2C (var_178)
  loc_12D81B8: Call 0.Method_arg_150 (var_284)
  loc_12D81C3: Call 0.Method_arg_50 (var_C4)
  loc_12D81CD: Set var_100 = Nothing
  loc_12D81E7: Set var_FC = MemVar_1F951E8 
  loc_12D81F3: Proc_6_99_1484404(var_FC, 0, var_C4)
  loc_12D81FE: MemVar_1F951E8 = var_FC
  loc_12D8211: Set var_A0 = Nothing
  loc_12D8219: Set var_B0 = Nothing
  loc_12D821C: Exit Sub
  loc_12D821D: ' Referenced from: 12D7C08
  loc_12D821D: Proc_6_60_E63754(&HFF)
  loc_12D8222: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E56CBC
  'Data Table: 4EA030
  Dim Me As Recordset15
  loc_E56C83: Me.Requery -1
  loc_E56C93: Me.Requery -1
  loc_E56CA3: Me.Requery -1
  loc_E56CB3: Me.Requery -1
  loc_E56CB8: Exit Sub
  loc_E56CB9: ThisVCallI2
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1698D58
  'Data Table: 4EA030
  Dim var_96 As Integer
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A0 As MSHFlexGrid
  Dim var_FC As Variant
  Dim var_AC As String
  Dim var_10C As Variant
  Dim var_A4 As Variant
  Dim var_8E As Integer
  Dim unk_4EA040 As Connection15
  Dim var_12C As Variant
  Dim var_11C As Variant
  Dim var_170 As Variant
  Dim var_88C As Double
  Dim var_138 As Variant
  Dim var_894 As Double
  Dim var_1E8 As TextBox
  Dim var_1F8 As MSHFlexGrid
  Dim var_89C As Double
  Dim var_268 As TextBox
  Dim var_27C As TextBox
  Dim var_298 As Variant
  Dim var_2B8 As Variant
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_14C As Variant
  Dim var_340 As Variant
  Dim var_360 As Variant
  Dim var_15C As Variant
  Dim var_8B4 As Double
  Dim var_394 As Variant
  Dim var_3D8 As Variant
  Dim var_438 As Variant
  Dim var_8BC As Double
  Dim var_48C As MSHFlexGrid
  Dim var_49C As Variant
  Dim var_528 As Variant
  Dim var_5B8 As Variant
  Dim var_8C4 As Double
  Dim var_670 As Variant
  Dim var_694 As Variant
  Dim var_758 As MSHFlexGrid
  Dim var_768 As Variant
  Dim var_7B0 As TextBox
  Dim var_1B4 As String
  Dim var_1D0 As String
  Dim var_1D8 As String
  Dim var_260 As String
  Dim var_274 As String
  Dim var_330 As String
  Dim var_380 As String
  Dim var_4A8 As String
  Dim var_4AC As String
  Dim var_500 As Variant
  Dim var_610 As Variant
  Dim var_640 As Variant
  Dim var_6F4 As Variant
  Dim var_714 As Variant
  Dim var_778 As Variant
  Dim var_85C As Variant
  Dim var_504 As MSHFlexGrid
  Dim var_7AC As TextBox
  Dim var_4C0 As Variant
  Dim var_578 As Variant
  Dim var_82C As Variant
  Dim var_88 As Recordset15
  Dim var_A8 As Fields15
  Dim var_1E4 As Fields15
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_16976A4: On Error Goto loc_1698D3B
  loc_16976A9: var_96 = 0
  loc_16976B7: Set var_A0 = Me.Txt
  loc_16976BD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_16976E6: If (Proc_6_27_EA61EC(var_A4, "Voucher Number") = 0) Then
  loc_16976E9:   Exit Sub
  loc_16976EA: End If
  loc_16976F5: Set var_A0 = Me.Txt
  loc_16976FB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_1697724: If (Proc_6_27_EA61EC(var_A4, "Voucher Date") = 0) Then
  loc_1697727:   Exit Sub
  loc_1697728: End If
  loc_1697733: Set var_A0 = Me.Txt
  loc_1697739: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_1697762: If (Proc_6_27_EA61EC(var_A4, "From Location") = 0) Then
  loc_1697765:   Exit Sub
  loc_1697766: End If
  loc_1697771: Set var_A0 = Me.Txt
  loc_1697777: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_16977A0: If (Proc_6_27_EA61EC(var_A4, "To Location") = 0) Then
  loc_16977A3:   Exit Sub
  loc_16977A4: End If
  loc_16977A4: var_BC = 1
  loc_16977CA: var_AC = CStr(Me.FGrid.TextMatrix))
  loc_16977DB: If (var_AC = vbNullString) Then
  loc_16977E4:   Call 0.Method_arg_50 (var_AC, CVar(CLng(1)))
  loc_1697805:   MsgBox("Please Fill Item Detail", &H40, CVar(var_AC), var_11C, var_12C)
  loc_1697828:   Me.FGrid.Row = 1
  loc_1697834:   Set var_A0 = Me.FGrid
  loc_1697845:   Exit Sub
  loc_1697846: End If
  loc_169784F: If (global_108 = 0) Then
  loc_1697856:   Set var_138 = Me.FGrid
  loc_1697867:   Set var_A0 = Me.Txt
  loc_169786D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4, var_AC)
  loc_1697875:   FGrid.DispID_8001 = var_A4.Tag
  loc_16978AF:   If (Proc_96_28_F221A0(var_138, 9, 3, MemVar_1F95070) = &HFF) Then
  loc_16978B8:     Call 0.Method_arg_50 (var_AC, var_AC)
  loc_16978D9:     MsgBox("Can't Proceed With Negative Stock", &H10, CVar(var_AC), var_11C, var_12C)
  loc_16978FC:     Me.FGrid.Row = 1
  loc_1697917:     Me.FGrid.Col = 1
  loc_1697923:     Set var_A0 = Me.FGrid
  loc_1697934:     Exit Sub
  loc_1697935:   End If
  loc_1697935: End If
  loc_1697943: unk_4EA040.BeginTrans var_13C
  loc_169794C: Set var_A0 = Me.TopCtrl1
  loc_1697952: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(&HFF)
  loc_169795A: var_AC = CStr(FGrid.DispID_8001)
  loc_169796B: If (var_AC = "Add") Then
  loc_169797D:   Call Proc_214_52_115E848(MemVar_1F95044, var_AC)
  loc_1697988:   global_80 = var_AC
  loc_1697995:   Call Proc_214_53_110CC4C(MemVar_1F95044, var_AC)
  loc_16979A0:   global_84 = var_AC
  loc_16979B2:   If (global_80 <> global_80) Then
  loc_16979C0:     var_BC = global_80
  loc_16979C8:     var_FC = Right(var_BC, 8)
  loc_16979DE:     Call 0.Method_arg_50 (var_AC, var_BC)
  loc_1697A00:     MsgBox("Entry will be saved with New Voucher No. " & Trim(var_FC), 0, CVar(var_AC), var_14C, var_15C)
  loc_1697A14:   End If
  loc_1697A17: Else
  loc_1697A3E:   unk_4EA040.Execute "Delete From Stock Where DocID='" & global_80 & "'", var_FC, -1
  loc_1697A77:   unk_4EA040.Execute "Delete From Stock Where DocID='" & global_84 & "'", var_FC, -1
  loc_1697A89: End If
  loc_1697AAE: For var_160 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_160 'Integer
  loc_1697AB8:   var_BC = CVar(CLng(var_98)) 'Long
  loc_1697AC0:   var_DC = CVar(CLng(0)) 'Long
  loc_1697ACA:   var_FC = CVar(CStr(var_98)) 'String
  loc_1697AD2:   Set var_A0 = Me.FGrid
  loc_1697AD8:   LateIdCallSt
  loc_1697AE9: Next var_160 'Integer
  loc_1697B13: For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_174 'Integer
  loc_1697B1D:   var_BC = CVar(CLng(var_98)) 'Long
  loc_1697B25:   var_DC = CVar(CLng(3)) 'Long
  loc_1697B50:   var_170 = CVar(CLng(var_98)) 'Long
  loc_1697B90:   If (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_1697BC1:     var_88C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1697BE4:     Set var_A8 = Me.Txt
  loc_1697BEA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_138, var_1D4, var_88C, CVar(CLng(0)), CVar(CLng(var_98)))
  loc_1697BF2:     var_170 = var_138.Text
  loc_1697BFF:     var_894 = Val(var_1D4)
  loc_1697C10:     Set var_1E4 = Me.Txt
  loc_1697C16:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E8, var_1EC, var_894)
  loc_1697C1E:     (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) = var_1E8.Text
  loc_1697C27:     var_170 = CVar(CLng(var_98)) 'Long
  loc_1697C3E:     var_10C = Me.FGrid.TextMatrix)
  loc_1697C78:     var_89C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1697C89:     Set var_264 = Me.Txt
  loc_1697C8F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_268, var_26C, var_89C, CVar(CLng(0)), CVar(CLng(var_98)))
  loc_1697CAA:     Set var_278 = Me.Txt
  loc_1697CB0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_27C, var_280, CVar(CLng(9)))
  loc_1697CB8:     var_170 = var_27C.Tag
  loc_1697CC1:     var_298 = CVar(CLng(var_98)) 'Long
  loc_1697CC9:     var_2B8 = CVar(CLng(7)) 'Long
  loc_1697CF2:     var_2EC = CVar(CLng(var_98)) 'Long
  loc_1697CFA:     var_30C = CVar(CLng(3)) 'Long
  loc_1697D23:     var_340 = CVar(CLng(var_98)) 'Long
  loc_1697D2B:     var_360 = CVar(CLng(3)) 'Long
  loc_1697D54:     var_394 = CVar(CLng(var_98)) 'Long
  loc_1697D6B:     var_3D8 = Me.FGrid.TextMatrix)
  loc_1697DA5:     var_8BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1697DC3:     var_49C = Me.FGrid.TextMatrix)
  loc_1697DD2:     Proc_6_104_ED68A8(var_4C0, var_49C, CVar(CLng(4)), CVar(CLng(var_98)), var_8BC, CVar(CLng(8)), CVar(CLng(var_98)), var_3D8)
  loc_1697DDB:     Set var_504 = Me.TopCtrl1
  loc_1697DE1:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(CLng(2)))
  loc_1697E1C:     var_5B8 = CVar(CLng(var_98)) 'Long
  loc_1697E46:     var_8C4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1697E55:     var_670 = CVar(CLng(6)) 'Long
  loc_1697E64:     var_694 = Me.FGrid.TextMatrix)
  loc_1697E8B:     var_768 = Me.FGrid.TextMatrix)
  loc_1697EA5:     Set var_7AC = Me.Txt
  loc_1697EAB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_7B0, var_7B4, var_768, CVar(CLng(&HA)), CVar(CLng(var_98)), var_694)
  loc_1697EB3:     var_670 = var_7B0.Tag
  loc_1697EC3:     Set var_7F8 = Me.Txt
  loc_1697EC9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_7FC, CVar(CLng(var_98)), var_8C4)
  loc_1697ED8:     var_81C = Trim(CVar(var_7FC))
  loc_1697EE3:     Proc_6_17_EAAE40(var_82C, var_81C, CVar(CLng(5)))
  loc_1697EFC:     var_AC = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,COntraDocId,ContraSno,DepartCode,GodownCode,Rate,RecdQty,AccQty,RecdUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyRec,Unit,LogSite_Code,ItemRestCode,ShiftCode,Remarks)" & " VALUES ('"
  loc_1697F43:     var_1D0 = var_AC & global_80 & "'," & CStr(var_88C) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "'," & "'KSREC'"
  loc_1697F9A:     var_260 = var_1D0 & "," & CStr(var_894) & ",'" & var_1EC & "','" & CStr(var_268.Tag) & "','" & global_84 & "'," & CStr(var_89C)
  loc_1697FDC:     var_330 = var_260 & ",'" & var_26C & "','" & var_280 & "'," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_1698026:     var_4A8 = var_330 & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CStr(var_3D8) & "'," & CStr(var_8BC) & ",'" & CStr(var_49C)
  loc_169802D:     var_4AC = var_4A8 & "','"
  loc_169804A:     var_500 = CVar(var_4AC & MemVar_1F950C8 & "',") & var_4C0 & ",'" 
  loc_169808C:     var_6F4 = var_500 & IIf((CStr(var_514) = "Add"), "A", "E") & "'," & CVar(var_8C4) & ",'" & CVar(CStr(var_694)) & "','" & CVar(MemVar_1F95078) 
  loc_16980CC:     var_85C = var_6F4 & "','" & CVar(CStr(var_768)) & "','" & CVar(var_7B4) & "'," & var_82C & ")" 
  loc_16980DA:     unk_4EA040.Execute CStr(var_85C), var_880, -1
  loc_16981F0:     var_BC = CVar(CLng(var_98)) 'Long
  loc_169821A:     var_88C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1698224:     Set var_A4 = Me.LblVPrefix
  loc_169823D:     Set var_A8 = Me.Txt
  loc_1698243:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_138, var_1D4, var_88C, CVar(CLng(0)))
  loc_169824B:     var_BC = var_138.Text
  loc_1698258:     var_894 = Val(var_1D4)
  loc_1698269:     Set var_1E4 = Me.Txt
  loc_169826F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E8, var_1EC, var_894)
  loc_1698277:     var_884 = var_1E8.Text
  loc_1698280:     var_170 = CVar(CLng(var_98)) 'Long
  loc_1698297:     var_10C = Me.FGrid.TextMatrix)
  loc_16982BE:     var_11C = Me.FGrid.TextMatrix)
  loc_16982D1:     var_89C = Val(CStr(var_11C))
  loc_16982E2:     Set var_264 = Me.Txt
  loc_16982E8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_268, var_26C, var_89C, CVar(CLng(0)), CVar(CLng(var_98)))
  loc_16982F0:     var_10C = var_268.Tag
  loc_1698303:     Set var_278 = Me.Txt
  loc_1698309:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_27C, var_280, CVar(CLng(9)))
  loc_1698311:     var_170 = var_27C.Tag
  loc_169831A:     var_298 = CVar(CLng(var_98)) 'Long
  loc_1698322:     var_2B8 = CVar(CLng(7)) 'Long
  loc_1698331:     var_12C = Me.FGrid.TextMatrix)
  loc_169834B:     var_2EC = CVar(CLng(var_98)) 'Long
  loc_1698353:     var_30C = CVar(CLng(3)) 'Long
  loc_169837C:     var_340 = CVar(CLng(var_98)) 'Long
  loc_1698393:     var_15C = Me.FGrid.TextMatrix)
  loc_16983CD:     var_8B4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16983EB:     var_438 = Me.FGrid.TextMatrix)
  loc_16983FA:     Proc_6_104_ED68A8(var_49C, var_438, CVar(CLng(4)), CVar(CLng(var_98)), var_8B4, CVar(CLng(8)), CVar(CLng(var_98)), var_15C)
  loc_1698403:     Set var_48C = Me.TopCtrl1
  loc_1698409:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(CLng(2)))
  loc_1698444:     var_528 = CVar(CLng(var_98)) 'Long
  loc_169846E:     var_8BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_169847D:     var_610 = CVar(CLng(6)) 'Long
  loc_169848C:     var_640 = Me.FGrid.TextMatrix)
  loc_16984B3:     var_714 = Me.FGrid.TextMatrix)
  loc_16984CD:     Set var_758 = Me.Txt
  loc_16984D3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_7AC, var_4AC, var_714, CVar(CLng(&HA)), CVar(CLng(var_98)), var_640)
  loc_16984DB:     var_610 = var_7AC.Tag
  loc_16984EB:     Set var_7B0 = Me.Txt
  loc_16984F1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_7F8, CVar(CLng(var_98)), var_8BC)
  loc_169850B:     Proc_6_17_EAAE40(var_81C, Trim(CVar(var_7F8)), CVar(CLng(5)))
  loc_1698524:     var_AC = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,ContraDocId,ContraSno,DepartCode,GodownCode,Rate,IssQty,IssueUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyIss,Unit,LogSite_Code,ItemRestCode,ShiftCode,Remarks) " & " VALUES ('"
  loc_1698572:     var_1D8 = var_AC & global_84 & "'," & CStr(var_88C) & ",'" & var_A4.Caption & "','" & MemVar_1F95070 & "'," & "'KSISS'" & ","
  loc_16985D0:     var_274 = var_1D8 & CStr(var_894) & ",'" & var_1EC & "','" & CStr(var_10C) & "','" & global_80 & "'," & CStr(var_89C) & ",'" & var_26C
  loc_1698616:     var_380 = var_274 & "','" & var_280 & "'," & CStr(Val(CStr(var_12C))) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CStr(var_15C)
  loc_1698666:     var_578 = CVar(var_380 & "'," & CStr(var_8B4) & ",'" & CStr(var_438) & "','" & MemVar_1F950C8 & "',") & var_49C & ",'" & IIf((CStr(var_500) = "Add"), "A", "E") 
  loc_16986B5:     var_778 = var_578 & "'," & CVar(var_8BC) & ",'" & CVar(CStr(var_640)) & "','" & CVar(MemVar_1F95078) & "','" & CVar(CStr(var_714)) 
  loc_16986EF:     unk_4EA040.Execute CStr(var_778 & "','" & CVar(var_4AC) & "'," & var_81C & ")"), var_85C, -1
  loc_16987F7:     var_96 = &HFF
  loc_16987FA:   End If
  loc_16987FD: Next var_174 'Integer
  loc_1698808: If (var_96 = 0) Then
  loc_1698824:   MsgBox("Nil Details Can't Be Saved", &H40, var_10C, var_11C, var_12C)
  loc_169883A:   unk_4EA040.RollbackTrans
  loc_169883F:   Exit Sub
  loc_1698840: End If
  loc_1698844: Set var_A0 = Me.TopCtrl1
  loc_169884A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1698863: If (CStr() = "Add") Then
  loc_169886A:   Set var_88 = New 
  loc_1698875:   Me.Recordset15.CursorLocation = 3
  loc_1698888:   Set var_A0 = Me.Txt
  loc_169888E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_169889E:   var_FC = CVar(var_A4.Text) 'String
  loc_16988A4:   Proc_6_7_F26918(var_10C)
  loc_16988C7:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_16988ED:   var_11C = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_72 & "' And VP.Date_From<=") 'String
  loc_1698904:   var_88.Open var_11C & var_10C & " Order By VP.Date_From DESC", CVar(MemVar_1F95044), 2
  loc_169893E:   If (var_88.RecordCount > 0) Then
  loc_169894F:     Set var_A0 = Me.Txt
  loc_1698955:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC)
  loc_169895D:     3 = var_A4.Text
  loc_169896A:     var_88C = Val(var_AC)
  loc_16989BA:     Proc_6_7_F26918(var_15C, CVar(var_88.Fields.Item("Date_From")), var_88C)
  loc_16989ED:     var_1B4 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_88C) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_16989FB:     var_10C = CVar(var_1B4 & MemVar_1F95078 & "') and V_Type='") 'String
  loc_1698A1F:     unk_4EA040.Execute CStr(var_10C & var_88.Fields.Item("V_Type").Value & "' and Date_From=" & var_15C), var_438, -1
  loc_1698A59:   End If
  loc_1698A5D:   Set var_8C = New 
  loc_1698A68:   var_8C.CursorLocation = 3
  loc_1698A7B:   Set var_A0 = Me.Txt
  loc_1698A81:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4, var_1B4)
  loc_1698A89:   var_1F8 = var_A4.Text
  loc_1698A97:   Proc_6_7_F26918(var_10C, CVar(var_1B4))
  loc_1698ABA:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1698AE0:   var_11C = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_76 & "' And VP.Date_From<=") 'String
  loc_1698AF7:   var_8C.Open var_11C & var_10C & " Order By VP.Date_From DESC", CVar(MemVar_1F95044), 2
  loc_1698B31:   If (var_8C.RecordCount > 0) Then
  loc_1698B42:     Set var_A0 = Me.Txt
  loc_1698B48:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC, 3)
  loc_1698B50:     -1 = var_A4.Text
  loc_1698B5D:     var_88C = Val(var_AC)
  loc_1698B66:     var_BC = "V_Type"
  loc_1698B82:     var_FC = var_8C.Fields.Item(var_BC).Value
  loc_1698BAD:     Proc_6_7_F26918(var_15C, CVar(var_8C.Fields.Item("Date_From")), var_88C)
  loc_1698BE0:     var_1B4 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_88C) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1698C12:     unk_4EA040.Execute CStr(CVar(var_1B4 & MemVar_1F95078 & "') and V_Type='") & var_FC & "' and Date_From=" & var_15C), var_438, -1
  loc_1698C4C:   End If
  loc_1698C4C: End If
  loc_1698C52: unk_4EA040.CommitTrans
  loc_1698C59: var_8E = 0
  loc_1698C6A: Set var_A0 = Me.Txt
  loc_1698C70: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, var_8E)
  loc_1698C78: var_1F8 = var_A4.Text
  loc_1698C95: Me.Requery -1
  loc_1698CBF: Me.Find "SearchCode ='" & "SearchCode ='" & var_AC & "'", 0, 1
  loc_1698CCB: Call Proc_214_49_14FA9F4(var_BC, -1)
  loc_1698CD4: Set var_A0 = Me.TopCtrl1
  loc_1698CDA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_FC)
  loc_1698CF3: If (CStr() = "Add") Then
  loc_1698CF6:   Call TopCtrl1_UnknownEvent_A()
  loc_1698CFB:   Exit Sub
  loc_1698CFC: End If
  loc_1698D1F: Call Proc_214_50_F1E794(Proc_5_1_100EC1C("INI", Me))
  loc_1698D2F: Set var_88 = Nothing
  loc_1698D37: Set var_8C = Nothing
  loc_1698D3A: Exit Sub
  loc_1698D3B: ' Referenced from: 16976A4
  loc_1698D41: If (var_8E = &HFF) Then
  loc_1698D4A:   unk_4EA040.RollbackTrans
  loc_1698D4F: End If
  loc_1698D4F: Proc_6_60_E63754(global_56)
  loc_1698D54: Exit Sub
End Sub

Private Sub DGShift_UnknownEvent_9 'F40CF4
  'Data Table: 4EA030
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F40BEB: Me.DGShift.Visible = False
  loc_F40C0A: If (Me.RecordCount > 0) Then
  loc_F40C49:   Set var_B4 = Me.Txt
  loc_F40C4F:   Call 0.Method_DGShift_UnknownEvent_90 (CInt(5), var_B8)
  loc_F40C57:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F40C8A:   var_B0 = Me.Fields.Item("Name")
  loc_F40CA9:   Set var_B4 = Me.Txt
  loc_F40CAF:   Call 0.Method_DGShift_UnknownEvent_90 (CInt(5), var_B8)
  loc_F40CB7:   var_B8.Text = CStr(var_B0.Value)
  loc_F40CCD: End If
  loc_F40CD8: Set var_A8 = Me.Txt
  loc_F40CDE: Call 0.Method_DGShift_UnknownEvent_90 (CInt(5))
  loc_F40CE6: var_B0.SetFocus
  loc_F40CF2: Exit Sub
End Sub

Private Sub CmdLastEntry_UnknownEvent_9 '1278590
  'Data Table: 4EA030
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_110 As TextBox
  Dim var_120 As String
  Dim var_12C As String
  Dim var_124 As TextBox
  Dim var_140 As String
  Dim var_138 As TextBox
  Dim unk_4EA040 As Connection15
  Dim var_118 As Recordset15
  Dim var_88 As Variant
  Dim var_11A As Integer
  Dim var_98 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  loc_1278018: On Error Goto loc_1278587
  loc_127801F: Set var_88 = Me.TopCtrl1
  loc_1278025: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_127803E: If (CStr() <> "Add") Then
  loc_1278062:   MsgBox("Only In Add Mode.", &H40, "Fill With Last Entry", var_EC, var_10C)
  loc_1278072:   Exit Sub
  loc_1278073: End If
  loc_127807E: Set var_88 = Me.Txt
  loc_1278084: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(1))
  loc_12780AD: If (Proc_6_27_EA61EC(var_110, "Voucher Number") = 0) Then
  loc_12780B0:   Exit Sub
  loc_12780B1: End If
  loc_12780BC: Set var_88 = Me.Txt
  loc_12780C2: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(2), var_110)
  loc_12780EB: If (Proc_6_27_EA61EC(var_110, "Voucher Date") = 0) Then
  loc_12780EE:   Exit Sub
  loc_12780EF: End If
  loc_12780FA: Set var_88 = Me.Txt
  loc_1278100: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(3), var_110)
  loc_1278129: If (Proc_6_27_EA61EC(var_110, "From Location") = 0) Then
  loc_127812C:   Exit Sub
  loc_127812D: End If
  loc_1278138: Set var_88 = Me.Txt
  loc_127813E: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(4), var_110)
  loc_1278146: var_9C = "To Location"
  loc_1278167: If (Proc_6_27_EA61EC(var_110, var_9C) = 0) Then
  loc_127816A:   Exit Sub
  loc_127816B: End If
  loc_1278189: Set var_88 = Me.Txt
  loc_127818F: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(4), var_110, var_9C, "Select Distinct SH.Docid,SH.SNo,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,I.Name,I.Code,I.Unit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as Rate,I.ConvRatio,I.IssueUnit,I.RestCode From Stock SH Left Join ItemMast I On I.Code=SH.Item And I.ItemType='Store' where SH.VType='KSREC' And GoDownCode='")
  loc_1278197: var_98 = var_110.Tag
  loc_12781A0: var_120 = -1 & var_9C
  loc_12781A7: var_12C = var_120 & "' And Vno In (Select Max(S.Vno) From Stock S Inner Join Stock S1 On S.ContraDocId=S1.DocId And S.ContraSNo=S1.SNo Where S.VType='KSREC' And S.GoDownCode='"
  loc_12781B8: Set var_114 = Me.Txt
  loc_12781BE: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(4), var_124, var_128)
  loc_12781C6: var_12C = var_124.Tag
  loc_12781D6: var_140 = var_14C & var_128 & "' And S1.GoDownCode='"
  loc_12781E7: Set var_134 = Me.Txt
  loc_12781ED: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(3), var_138, var_13C)
  loc_12781F5: var_140 = var_138.Tag
  loc_127820E: unk_4EA040.Execute var_110 & var_13C & "') Order By SH.SNo", , 
  loc_1278219: Set var_118 = var_14C
  loc_1278259: If (var_118.RecordCount > 0) Then
  loc_127826F:   Me.FGrid.Rows = 1
  loc_1278279:   var_11A = 1
  loc_127827C:   ' Referenced from: 1278560
  loc_127828B:   If Not(var_118.EOF) Then
  loc_127828E:     var_AC = vbNullString
  loc_1278298:     Set var_88 = Me.FGrid
  loc_12782AD:     Set var_158 = Me.FGrid
  loc_12782E9:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_11A)))) 'String
  loc_12782F0:     LateIdCallSt
  loc_127833B:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("Name")), CVar(CLng(1)), CVar(CLng(var_11A)), var_158)) 'String
  loc_1278342:     LateIdCallSt
  loc_127838D:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("Code")), CVar(CLng(9)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_1278394:     LateIdCallSt
  loc_12783DF:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("RestCode")), CVar(CLng(&HA)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_12783E6:     LateIdCallSt
  loc_1278431:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_1278438:     LateIdCallSt
  loc_1278481:     Proc_6_47_EF6560(var_CC, CVar(var_118.Fields.Item("Rate")), CVar(CLng(7)), CVar(CLng(var_11A)), var_158)
  loc_1278491:     LateIdCallSt
  loc_12784DE:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("ConvRatio")), CVar(CLng(4)), CVar(CLng(var_11A)), var_158, CVar(CStr(var_CC)))) 'String
  loc_12784E5:     LateIdCallSt
  loc_1278530:     var_CC = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("IssueUnit")), CVar(CLng(6)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_1278537:     LateIdCallSt
  loc_127854B:     Set var_158 = Nothing 
  loc_1278555:     var_11A = (var_11A + 1)
  loc_127855B:     var_118.MoveNext
  loc_1278560:     GoTo loc_127827C
  loc_1278563:   End If
  loc_1278576:   Me.FGrid.FixedRows = 1
  loc_127857E: End If
  loc_1278583: Set var_118 = Nothing
  loc_1278586: Exit Sub
  loc_1278587: ' Referenced from: 1278018
  loc_1278587: Proc_6_60_E63754(var_11A, var_158, var_CC, var_CC)
  loc_127858C: Exit Sub
  loc_127858D: ThisVCallAd
End Sub

Private Sub TxtBarCode_KeyDown(KeyCode As Integer, Shift As Integer) 'E15A60
  'Data Table: 4EA030
  loc_E15A52: If (CLng(KeyCode) = &HD) Then
  loc_E15A5A:   Call TxtBarCode_Validate(&HFF)
  loc_E15A5F: End If
  loc_E15A5F: Exit Sub
End Sub

Private Sub TxtBarCode_Validate(Cancel As Boolean) '1356760
  'Data Table: 4EA030
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
  Dim var_112 As Integer
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
  loc_1355F50: Set var_88 = Me.TopCtrl1
  loc_1355F56: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1355F5E: var_9C = CStr()
  loc_1355F6D: Set var_A0 = Me.TxtBarCode
  loc_1355F92: If ((var_9C = "Browse") And (var_A0.Text <> vbNullString)) Then
  loc_1355FA2:   Me.TxtBarCode.Text = vbNullString
  loc_1355FB0:   Call 0.Method_arg_50 (var_9C)
  loc_1355FD1:   MsgBox("Not Applicable In Browse Mode !", &H10, CVar(var_9C), var_E4, var_104)
  loc_1355FE1:   Exit Sub
  loc_1355FE2: End If
  loc_1356004: If (Trim(CVar(Me.TxtBarCode)) = vbNullString) Then
  loc_1356007:   Exit Sub
  loc_1356008: End If
  loc_1356013: var_C4 = Trim(CVar(Me.TxtBarCode))
  loc_135601C: var_110 = CStr(var_C4)
  loc_1356033: Me.TxtBarCode.Text = vbNullString
  loc_1356046: Set var_88 = Me.Txt
  loc_135604C: Call 0.Method_TxtBarCode_Validate0 (CInt(3))
  loc_135605D: Set var_118 = var_A0
  loc_1356075: If (Proc_6_27_EA61EC(var_118, "From Location") = 0) Then
  loc_1356083:   Set var_88 = Me.Txt
  loc_1356089:   Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_A0)
  loc_1356091:   var_A0.SetFocus
  loc_135609D:   Exit Sub
  loc_135609E: End If
  loc_13560B5: If (Me.RecordCount = 0) Then
  loc_13560B8:   Exit Sub
  loc_13560B9: End If
  loc_13560BF: Me.MoveFirst
  loc_13560E9: Me.Find "BarCode='" & var_110 & "'", 0, 1
  loc_1356109: If (Me.EOF = &HFF) Then
  loc_1356125:   MsgBox("Item Not Found!", &H10, var_C4, var_E4, var_104)
  loc_1356138: Else
  loc_1356152:   var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_135615F:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1356167:   var_F4 = CVar(CLng(9)) 'Long
  loc_1356181:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_1356192:   If (var_9C <> vbNullString) Then
  loc_1356199:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_13561B0:     var_98 = Me.FGrid.TextMatrix)
  loc_13561CA:     Set var_A0 = Me.Txt
  loc_13561D0:     Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_118, var_9C, var_98, CVar(CLng(9)), var_B4)
  loc_13561D8:     var_F4 = var_118.Tag
  loc_1356201:     var_112 = Proc_96_27_11F256C(CStr(var_98), CDbl(1), MemVar_1F95070, var_9C, global_104)
  loc_1356227:     Me.LblCurStockStr.Caption = global_104
  loc_1356235:     If (var_112 = 0) Then
  loc_1356246:       If (Proc_96_29_E9957C(global_108, var_112, var_B4) = 0) Then
  loc_135624B:         Cancel = 0
  loc_135624E:         Exit Sub
  loc_135624F:       End If
  loc_135624F:     End If
  loc_135624F:     var_B4 = vbNullString
  loc_1356259:     Set var_88 = Me.FGrid
  loc_1356284:     var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_135628D:   End If
  loc_13562A0:   Me.FGrid.TopRow = CVar(CLng(var_106))
  loc_13562AC:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_13562B4:   var_F4 = CVar(CLng(0)) 'Long
  loc_13562BE:   var_98 = CVar(CStr(var_106)) 'String
  loc_13562C6:   Set var_88 = Me.FGrid
  loc_13562CC:   LateIdCallSt
  loc_13562DE:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13562E6:   var_130 = CVar(CLng(1)) 'Long
  loc_1356319:   var_C4 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1356321:   Set var_118 = Me.FGrid
  loc_1356327:   LateIdCallSt
  loc_1356343:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_135634B:   var_130 = CVar(CLng(9)) 'Long
  loc_135637E:   var_C4 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1356386:   Set var_118 = Me.FGrid
  loc_135638C:   LateIdCallSt
  loc_13563A8:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13563B0:   var_130 = CVar(CLng(&HA)) 'Long
  loc_13563E3:   var_C4 = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_13563EB:   Set var_118 = Me.FGrid
  loc_13563F1:   LateIdCallSt
  loc_135640D:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1356415:   var_130 = CVar(CLng(2)) 'Long
  loc_1356448:   var_C4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1356450:   Set var_118 = Me.FGrid
  loc_1356456:   LateIdCallSt
  loc_1356472:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_135647A:   var_F4 = CVar(CLng(3)) 'Long
  loc_135647F:   var_14C = "1.000"
  loc_1356489:   Set var_88 = Me.FGrid
  loc_135648F:   LateIdCallSt
  loc_135649E:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13564A6:   var_130 = CVar(CLng(4)) 'Long
  loc_13564D9:   var_C4 = CVar(CStr(Me.Fields.Item("ConvRatio").Value)) 'String
  loc_13564E1:   Set var_118 = Me.FGrid
  loc_13564E7:   LateIdCallSt
  loc_1356503:   var_14C = CVar(CLng(var_106)) 'Long
  loc_135650B:   var_16C = CVar(CLng(4)) 'Long
  loc_1356534:   var_18C = CVar(CLng(var_106)) 'Long
  loc_135653C:   var_1AC = CVar(CLng(5)) 'Long
  loc_1356545:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_135654D:   var_F4 = CVar(CLng(3)) 'Long
  loc_1356575:   var_E4 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_135657D:   Set var_118 = Me.FGrid
  loc_1356583:   LateIdCallSt
  loc_13565C7:   var_F4 = CVar(CLng(var_106)) 'Long
  loc_13565CF:   var_14C = CVar(CLng(7)) 'Long
  loc_13565FC:   var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_1356604:   Set var_118 = Me.FGrid
  loc_135660A:   LateIdCallSt
  loc_1356628:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1356630:   var_130 = CVar(CLng(6)) 'Long
  loc_1356663:   var_C4 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_135666B:   Set var_118 = Me.FGrid
  loc_1356671:   LateIdCallSt
  loc_135668D:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1356695:   var_F4 = CVar(CLng(7)) 'Long
  loc_13566BE:   var_14C = CVar(CLng(var_106)) 'Long
  loc_13566C6:   var_16C = CVar(CLng(3)) 'Long
  loc_13566EF:   var_1AC = CVar(CLng(var_106)) 'Long
  loc_13566F7:   var_1CC = CVar(CLng(8)) 'Long
  loc_1356728:   var_1FC = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_1356730:   Set var_118 = Me.FGrid
  loc_1356736:   LateIdCallSt
  loc_135675D: End If
  loc_135675D: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E96FD0
  'Data Table: 4EA030
  Dim Me As Recordset15
  loc_E96F5E: On Error Goto loc_E96FC7
  loc_E96F67: Me.MoveFirst
  loc_E96F91: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96FB9: Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_E96FC1: Call Proc_214_49_14FA9F4(0)
  loc_E96FC6: Exit Sub
  loc_E96FC7: ' Referenced from: E96F5E
  loc_E96FC7: Proc_6_60_E63754(var_A0)
  loc_E96FCC: Exit Sub
End Sub

Public Sub Proc_214_47_149C5D0(arg_C, arg_10) '149C5D0
  'Data Table: 4EA030
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
  Dim unk_4EA040 As Connection15
  Dim var_8C As Recordset15
  Dim var_188 As MSHFlexGrid
  Dim var_1B0 As Double
  Dim var_1A0 As TextBox
  Dim var_8E As Integer
  Dim var_1A8 As Double
  Dim var_19C As TextBox
  loc_149B95F: var_A8 = CLng(Me.FGrid.Col)
  loc_149B96F: If (var_A8 = CLng(1)) Then
  loc_149B992:   var_AE = Me.EOF
  loc_149B9C0:   Set var_94 = Me.TxtGrid
  loc_149B9C6:   Call 0.Method_Proc_214_47_149C5D00 (arg_C, var_B4, var_B8)
  loc_149B9CE:   ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_149B9E6:   If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_149B9FC:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BA04:     var_E8 = CVar(CLng(1)) 'Long
  loc_149BA09:     var_108 = vbNullString
  loc_149BA13:     Set var_B4 = Me.FGrid
  loc_149BA19:     LateIdCallSt
  loc_149BA3E:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BA46:     var_E8 = CVar(CLng(9)) 'Long
  loc_149BA4B:     var_108 = vbNullString
  loc_149BA55:     Set var_B4 = Me.FGrid
  loc_149BA5B:     LateIdCallSt
  loc_149BA80:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BA88:     var_E8 = CVar(CLng(&HA)) 'Long
  loc_149BA8D:     var_108 = vbNullString
  loc_149BA97:     Set var_B4 = Me.FGrid
  loc_149BA9D:     LateIdCallSt
  loc_149BAC2:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BACA:     var_E8 = CVar(CLng(2)) 'Long
  loc_149BACF:     var_108 = vbNullString
  loc_149BAD9:     Set var_B4 = Me.FGrid
  loc_149BADF:     LateIdCallSt
  loc_149BB04:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BB0C:     var_E8 = CVar(CLng(7)) 'Long
  loc_149BB11:     var_108 = vbNullString
  loc_149BB1B:     Set var_B4 = Me.FGrid
  loc_149BB21:     LateIdCallSt
  loc_149BB46:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BB4E:     var_E8 = CVar(CLng(6)) 'Long
  loc_149BB53:     var_108 = vbNullString
  loc_149BB5D:     Set var_B4 = Me.FGrid
  loc_149BB63:     LateIdCallSt
  loc_149BB88:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BB90:     var_E8 = CVar(CLng(5)) 'Long
  loc_149BB95:     var_108 = vbNullString
  loc_149BB9F:     Set var_B4 = Me.FGrid
  loc_149BBA5:     LateIdCallSt
  loc_149BBCA:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BBD2:     var_E8 = CVar(CLng(3)) 'Long
  loc_149BBD7:     var_108 = vbNullString
  loc_149BBE1:     Set var_B4 = Me.FGrid
  loc_149BBE7:     LateIdCallSt
  loc_149BC0C:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BC14:     var_E8 = CVar(CLng(4)) 'Long
  loc_149BC19:     var_108 = vbNullString
  loc_149BC23:     Set var_B4 = Me.FGrid
  loc_149BC29:     LateIdCallSt
  loc_149BC3E:   Else
  loc_149BC41:     Call Proc_214_57_FCE174(var_AE, var_B4, var_108, var_E8, var_C8, var_B4, var_108, var_E8)
  loc_149BC4C:     If (var_AE = 0) Then
  loc_149BC54:       Proc_214_47_149C5D0 = 0
  loc_149BC5A:     End If
  loc_149BC6D:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BC75:     var_F8 = CVar(CLng(1)) 'Long
  loc_149BCA8:     var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_149BCB0:     Set var_140 = Me.FGrid
  loc_149BCB6:     LateIdCallSt
  loc_149BCE5:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BCED:     var_F8 = CVar(CLng(9)) 'Long
  loc_149BD20:     var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_149BD28:     Set var_140 = Me.FGrid
  loc_149BD2E:     LateIdCallSt
  loc_149BD5D:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BD65:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_149BD98:     var_13C = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_149BDA0:     Set var_140 = Me.FGrid
  loc_149BDA6:     LateIdCallSt
  loc_149BDD5:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BDDD:     var_F8 = CVar(CLng(2)) 'Long
  loc_149BE10:     var_13C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_149BE18:     Set var_140 = Me.FGrid
  loc_149BE1E:     LateIdCallSt
  loc_149BE6C:     var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BE74:     var_108 = CVar(CLng(7)) 'Long
  loc_149BEA1:     var_160 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_149BEA9:     Set var_140 = Me.FGrid
  loc_149BEAF:     LateIdCallSt
  loc_149BEE0:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BEE8:     var_F8 = CVar(CLng(4)) 'Long
  loc_149BF1B:     var_13C = CVar(CStr(Me.Fields.Item("ConvRatio").Value)) 'String
  loc_149BF23:     Set var_140 = Me.FGrid
  loc_149BF29:     LateIdCallSt
  loc_149BF58:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149BF60:     var_F8 = CVar(CLng(6)) 'Long
  loc_149BF93:     var_13C = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_149BF9B:     Set var_140 = Me.FGrid
  loc_149BFA1:     LateIdCallSt
  loc_149BFBD:   End If
  loc_149BFE7:   var_12C = Me.FGrid.TextMatrix)
  loc_149C001:   Set var_11C = Me.Txt
  loc_149C007:   Call 0.Method_Proc_214_47_149C5D00 (CInt(3), var_140, var_178, var_12C, CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_140)
  loc_149C02C:   var_174 = "SELECT RATE FROM ITEMRATE WHERE ITEMCODE='" & CStr(var_12C)
  loc_149C04A:   unk_4EA040.Execute var_174 & "' AND RestCode='" & var_178 & "'", var_140.Tag, -1
  loc_149C055:   Set var_8C = var_188
  loc_149C091:   If (var_8C.RecordCount > 0) Then
  loc_149C0A7:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149C0DA:     Proc_6_47_EF6560(var_12C, CVar(var_8C.Fields.Item("Rate")), CVar(CLng(7)), var_D8, var_188, CVar(CLng(7)))
  loc_149C0E3:     var_150 = CVar(CStr(var_12C)) 'String
  loc_149C0EB:     Set var_140 = Me.FGrid
  loc_149C0F1:     LateIdCallSt
  loc_149C10D:   End If
  loc_149C10D:   Call Proc_214_55_F75A5C(var_140, var_150, var_D8, var_140)
  loc_149C125:   var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149C12D:   var_E8 = CVar(CLng(9)) 'Long
  loc_149C136:   Set var_B4 = Me.FGrid
  loc_149C13C:   var_12C = var_B4.TextMatrix)
  loc_149C18D:   var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_149C195:   var_1B0 = Val(var_B8)
  loc_149C1A6:   Set var_19C = Me.Txt
  loc_149C1AC:   Call 0.Method_Proc_214_47_149C5D00 (CInt(3), var_1A0, var_174, var_1B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_149C1DD:   var_8E = Proc_96_27_11F256C(CStr(var_1A0.Tag), var_1B0, MemVar_1F95070, var_174, global_104)
  loc_149C217:   Me.LblCurStockStr.Caption = global_104
  loc_149C222: Else
  loc_149C229:   If (var_A8 = CLng(7)) Then
  loc_149C238:     Set var_94 = Me.TxtGrid
  loc_149C23E:     Call 0.Method_Proc_214_47_149C5D00 (0, var_B4, var_B8, var_8E, var_E8)
  loc_149C246:     var_C8 = var_B4.Text
  loc_149C253:     var_1A8 = Val(var_B8)
  loc_149C269:     var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149C2BC:     LateIdCallSt
  loc_149C2E3:     Call Proc_214_55_F75A5C(Me.FGrid, CVar(CStr(Format(CVar(var_1A8), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)))
  loc_149C2EB:   Else
  loc_149C2F2:     If Not (var_A8 = CLng(3)) Then
  loc_149C2FC:       If (var_A8 = CLng(4)) Then
  loc_149C2FF:       End If
  loc_149C31A:       var_E8 = CVar(CLng(9)) 'Long
  loc_149C323:       Set var_B4 = Me.FGrid
  loc_149C329:       var_12C = var_B4.TextMatrix)
  loc_149C35F:       var_150 = Me.FGrid.TextMatrix)
  loc_149C36A:       var_B8 = CStr(var_150)
  loc_149C372:       var_1B0 = Val(var_B8)
  loc_149C383:       Set var_188 = Me.Txt
  loc_149C389:       Call 0.Method_Proc_214_47_149C5D00 (CInt(3), var_19C, var_174, var_1B0, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_149C3BA:       var_8E = Proc_96_27_11F256C(CStr(var_12C), var_1B0, MemVar_1F95070, var_174, global_104, CVar(CLng(Me.FGrid.Row)))
  loc_149C3F0:       Me.LblCurStockStr.Caption = global_104
  loc_149C3FE:       If (var_8E = 0) Then
  loc_149C40F:         If (Proc_96_29_E9957C(global_108, var_8E, var_19C.Tag, var_1A8) = 0) Then
  loc_149C417:           Proc_214_47_149C5D0 = 0
  loc_149C41D:         End If
  loc_149C41D:       End If
  loc_149C43A:       If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_149C449:         Set var_94 = Me.TxtGrid
  loc_149C44F:         Call 0.Method_Proc_214_47_149C5D00 (0, var_B4, var_B8)
  loc_149C47C:         If (global_112 <> CDbl(Val(var_B8))) Then
  loc_149C4AE:           If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_12C, var_B4.Text, var_150) = 7) Then
  loc_149C4B6:             Proc_214_47_149C5D0 = 0
  loc_149C4BC:           End If
  loc_149C4BC:         End If
  loc_149C4BC:       End If
  loc_149C4C8:       Set var_94 = Me.TxtGrid
  loc_149C4CE:       Call 0.Method_Proc_214_47_149C5D00 (0, var_B4, var_B8)
  loc_149C4D6:       var_1A8 = var_B4.Text
  loc_149C4E3:       var_1A8 = Val(var_B8)
  loc_149C4F9:       var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149C54C:       LateIdCallSt
  loc_149C573:       Call Proc_214_55_F75A5C(Me.FGrid, CVar(CStr(Format(CVar(var_1A8), "0.000"))), 1, 1, CVar(CLng(Me.FGrid.Col)))
  loc_149C578:     End If
  loc_149C578:   End If
  loc_149C578: End If
  loc_149C583: If (arg_10 = 0) Then
  loc_149C58A:   Set var_94 = Me.FGrid
  loc_149C5A6:   Set var_94 = Me.TxtGrid
  loc_149C5AC:   Call 0.Method_Proc_214_47_149C5D00 (0, var_B4, 0, FGrid.DispID_8001, &HFF)
  loc_149C5B4:   var_B4.Visible = var_E8
  loc_149C5C0: End If
  loc_149C5C5: Set var_8C = Nothing
  loc_149C5C8: Proc_214_47_149C5D0 = var_1A8
End Sub

Public Sub Proc_214_48_F73308
  'Data Table: 4EA030
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_DC As Variant
  loc_F731D6: Set var_8C = Me.Txt
  loc_F731DC: Call 0.Method_Proc_214_48_F73308C (var_8E, var_86)
  loc_F731EC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F73202:   Set var_8C = Me.Txt
  loc_F73208:   Call 0.Method_Proc_214_48_F733080 (CInt(var_86), var_98)
  loc_F73210:   var_98.Text = vbNullString
  loc_F7322C:   Set var_8C = Me.Txt
  loc_F73232:   Call 0.Method_Proc_214_48_F733080 (CInt(var_86), var_98)
  loc_F7323A:   var_98.Tag = vbNullString
  loc_F73249: Next var_92 'Byte
  loc_F73263: Me.LblUser.Caption = "User : " & MemVar_1F950C8
  loc_F7327B: Me.LblCurStockStr.Caption = vbNullString
  loc_F73290: Me.LblVPrefix.Caption = vbNullString
  loc_F732AB: Me.FGrid.Rows = 1
  loc_F732C8: var_DC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F732D0: Set var_98 = Me.FGrid
  loc_F732FF: Me.FGrid.FixedRows = 1
  loc_F73307: Exit Sub
End Sub

Public Sub Proc_214_49_14FA9F4
  'Data Table: 4EA030
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_10C As String
  Dim unk_4EA040 As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As Variant
  Dim var_134 As TextBox
  Dim var_130 As Variant
  Dim var_138 As String
  Dim var_94 As Recordset15
  Dim var_90 As Recordset15
  Dim var_158 As Variant
  Dim var_8A As Integer
  Dim var_168 As Variant
  Dim var_1FC As MSHFlexGrid
  Dim var_204 As Double
  Dim var_9C As Double
  loc_14F9BB0: On Error Goto loc_14FA9ED
  loc_14F9BCA: If (Me.RecordCount > 0) Then
  loc_14F9BDA:   Me.LblCurStockStr.Caption = vbNullString
  loc_14F9BEF:   var_D8 = "Select Distinct SH.Docid,SH.SNo,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,SH.Rate,SH.Amount,SH.GodownCode,SH.Item,SH.QtyRec,SH.Unit,SH.RECDQty,SH.RECDUnit,SH.ConvRatio,SH.ItemRestCode,SH.U_Name,SH.U_entdt,SH.U_AE,I.Name As ItemName,SH.ShiftCode,SM.Name As ShiftName,SH.Remarks From Stock SH Left Join ItemMast I On I.Code=SH.Item And I.ItemType='Store' Left Join ShiftMast SM On SH.ShiftCode=SM.Code where DocID='"
  loc_14F9C38:   unk_4EA040.Execute CStr(var_D8 & Me.Fields.Item("SearchCode").Value & "' Order By SH.SNo"), var_12C, -1
  loc_14F9C43:   Set var_88 = var_130
  loc_14F9C93:   Set var_130 = Me.Txt
  loc_14F9C99:   Call 0.Method_Proc_214_49_14FA9F40 (CInt(0), var_134)
  loc_14F9CA1:   var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")))
  loc_14F9CEA:   Me.LblVPrefix.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("vPrefix")))
  loc_14F9D32:   Set var_130 = Me.Txt
  loc_14F9D38:   Call 0.Method_Proc_214_49_14FA9F40 (CInt(1), var_134)
  loc_14F9D40:   var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("VNo")))
  loc_14F9D6B:   var_B8 = var_88.Fields.Item("VDate")
  loc_14F9D7C:   var_10C = Proc_6_38_E69628(CVar(var_B8))
  loc_14F9D8A:   Set var_130 = Me.Txt
  loc_14F9D90:   Call 0.Method_Proc_214_49_14FA9F40 (CInt(2), var_134)
  loc_14F9D98:   var_134.Text = var_10C
  loc_14F9DCA:   Set var_A4 = Me.Txt
  loc_14F9DD0:   Call 0.Method_Proc_214_49_14FA9F40 (CInt(1), var_B8, var_10C, "Select VTYPE,GodownCode From Stock Where VtYpe='KSISS' and VNo=")
  loc_14F9DD8:   var_C8 = var_B8.Text
  loc_14F9DE1:   var_138 = -1 & var_10C
  loc_14F9DF2:   Set var_130 = Me.LblVPrefix
  loc_14F9E11:   unk_4EA040.Execute var_138 & " And VPrefix=" & var_130.Caption & vbNullString, var_134, var_130
  loc_14F9E1C:   Set var_94 = var_134
  loc_14F9E50:   If (var_94.RecordCount > 0) Then
  loc_14F9E8F:     If (var_94.Fields.Item("vType").Value = "KSISS") Then
  loc_14F9EA9:       var_B8 = var_94.Fields.Item("Godowncode")
  loc_14F9EBA:       var_10C = Proc_6_38_E69628(CVar(var_B8))
  loc_14F9EC8:       Set var_130 = Me.Txt
  loc_14F9ECE:       Call 0.Method_Proc_214_49_14FA9F40 (CInt(3), var_134)
  loc_14F9ED6:       var_134.Tag = var_10C
  loc_14F9F08:       Set var_A4 = Me.Txt
  loc_14F9F0E:       Call 0.Method_Proc_214_49_14FA9F40 (CInt(3), var_B8, var_10C, "Select Name From GodownMast Where Code='")
  loc_14F9F16:       var_C8 = var_B8.Tag
  loc_14F9F1F:       var_138 = -1 & var_10C
  loc_14F9F2F:       unk_4EA040.Execute var_138 & "'", var_130, 
  loc_14F9F3A:       Set var_90 = var_130
  loc_14F9F66:       If (var_90.RecordCount > 0) Then
  loc_14F9F9F:         Set var_130 = Me.Txt
  loc_14F9FA5:         Call 0.Method_Proc_214_49_14FA9F40 (CInt(3), var_134)
  loc_14F9FAD:         var_134.Text = Proc_6_38_E69628(CVar(var_90.Fields.Item("Name")))
  loc_14F9FC1:       End If
  loc_14F9FC1:     End If
  loc_14F9FC1:   End If
  loc_14F9FFD:   If (var_88.Fields.Item("vType").Value = "KSREC") Then
  loc_14FA017:     var_B8 = var_88.Fields.Item("Godowncode")
  loc_14FA028:     var_10C = Proc_6_38_E69628(CVar(var_B8))
  loc_14FA036:     Set var_130 = Me.Txt
  loc_14FA03C:     Call 0.Method_Proc_214_49_14FA9F40 (CInt(4), var_134)
  loc_14FA044:     var_134.Tag = var_10C
  loc_14FA076:     Set var_A4 = Me.Txt
  loc_14FA07C:     Call 0.Method_Proc_214_49_14FA9F40 (CInt(4), var_B8, var_10C, "Select Name From GodownMast Where Code='")
  loc_14FA084:     var_C8 = var_B8.Tag
  loc_14FA08D:     var_138 = -1 & var_10C
  loc_14FA09D:     unk_4EA040.Execute var_138 & "'", var_130, 
  loc_14FA0A8:     Set var_90 = var_130
  loc_14FA0D4:     If (var_90.RecordCount > 0) Then
  loc_14FA10D:       Set var_130 = Me.Txt
  loc_14FA113:       Call 0.Method_Proc_214_49_14FA9F40 (CInt(4), var_134)
  loc_14FA11B:       var_134.Text = Proc_6_38_E69628(CVar(var_90.Fields.Item("Name")))
  loc_14FA12F:     End If
  loc_14FA12F:   End If
  loc_14FA1D2:   var_1A8 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14FA217:   Me.LblUser.Caption = CStr(var_1A8 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")))))
  loc_14FA291:   var_134 = var_88.Fields.Item("U_AE")
  loc_14FA2F2:   var_1A8 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_134)) = "E"), "Last Update : ", "entdt : "))
  loc_14FA337:   Me.LblLDt.Caption = CStr(var_1A8 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_14FA3A5:   Set var_130 = Me.Txt
  loc_14FA3AB:   Call 0.Method_Proc_214_49_14FA9F40 (CInt(5), var_134)
  loc_14FA3B3:   var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ShiftName")))
  loc_14FA3FD:   Set var_130 = Me.Txt
  loc_14FA403:   Call 0.Method_Proc_214_49_14FA9F40 (CInt(5), var_134)
  loc_14FA40B:   var_134.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("ShiftCode")))
  loc_14FA455:   Set var_130 = Me.Txt
  loc_14FA45B:   Call 0.Method_Proc_214_49_14FA9F40 (CInt(6), var_134)
  loc_14FA463:   var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks")))
  loc_14FA48A:   Me.FGrid.Rows = 1
  loc_14FA494:   var_8A = 1
  loc_14FA497:   ' Referenced from: 14FA956
  loc_14FA4A6:   If Not(var_88.EOF) Then
  loc_14FA4A9:     var_B4 = vbNullString
  loc_14FA4B3:     Set var_A4 = Me.FGrid
  loc_14FA4C8:     Set var_1FC = Me.FGrid
  loc_14FA504:     var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_8A)))) 'String
  loc_14FA50B:     LateIdCallSt
  loc_14FA556:     var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1FC)) 'String
  loc_14FA55D:     LateIdCallSt
  loc_14FA5A8:     var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RecdUnit")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1FC, var_E8)) 'String
  loc_14FA5AF:     LateIdCallSt
  loc_14FA5E7:     Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("RecdQty")), var_1FC, var_E8)
  loc_14FA5F0:     var_F8 = CVar(CLng(var_8A)) 'Long
  loc_14FA628:     LateIdCallSt
  loc_14FA679:     var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8A)), var_1FC, CVar(CStr(Format(var_E8, "0.000"))), 1, 1)) 'String
  loc_14FA680:     LateIdCallSt
  loc_14FA6B8:     Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("QtyRec")), var_1FC, var_E8, CVar(CLng(3)))
  loc_14FA6C1:     var_F8 = CVar(CLng(var_8A)) 'Long
  loc_14FA6F9:     LateIdCallSt
  loc_14FA737:     Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("Rate")), var_1FC, CVar(CStr(Format(var_E8, "0.000"))), 1, 1, CVar(CLng(5)))
  loc_14FA740:     var_F8 = CVar(CLng(var_8A)) 'Long
  loc_14FA778:     LateIdCallSt
  loc_14FA7B6:     Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("Amount")), var_1FC, CVar(CStr(Format(var_E8, "0.00"))), 1, 1, CVar(CLng(7)))
  loc_14FA7BF:     var_F8 = CVar(CLng(var_8A)) 'Long
  loc_14FA7C7:     var_158 = CVar(CLng(8)) 'Long
  loc_14FA7F0:     var_168 = CVar(CStr(Format(var_E8, "0.00"))) 'String
  loc_14FA7F7:     LateIdCallSt
  loc_14FA813:     var_B4 = CVar(CLng(var_8A)) 'Long
  loc_14FA81B:     var_F8 = CVar(CLng(8)) 'Long
  loc_14FA836:     var_204 = Val(CStr(var_1FC.TextMatrix)))
  loc_14FA840:     var_9C = (var_9C + var_204)
  loc_14FA85D:     var_B4 = "Item"
  loc_14FA882:     var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_B4)), CVar(CLng(9)), CVar(CLng(var_8A)), var_9C, var_204, var_F8, var_B4)) 'String
  loc_14FA889:     LateIdCallSt
  loc_14FA8D4:     var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemRestcode")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_1FC, var_E8, var_1FC)) 'String
  loc_14FA8DB:     LateIdCallSt
  loc_14FA915:     var_B8 = var_88.Fields.Item("ConvRatio")
  loc_14FA926:     var_E8 = CVar(Proc_6_38_E69628(CVar(var_B8), CVar(CLng(4)), CVar(CLng(var_8A)), var_1FC, var_E8)) 'String
  loc_14FA92D:     LateIdCallSt
  loc_14FA941:     Set var_1FC = Nothing 
  loc_14FA94B:     var_8A = (var_8A + 1)
  loc_14FA951:     var_88.MoveNext
  loc_14FA956:     GoTo loc_14FA497
  loc_14FA959:   End If
  loc_14FA96C:   Me.FGrid.FixedRows = 1
  loc_14FA994:   var_E8 = Format(var_9C, "0.00")
  loc_14FA9AB:   Set var_A4 = Me.Txt
  loc_14FA9B1:   Call 0.Method_Proc_214_49_14FA9F40 (CInt(7), var_B8, CStr(var_E8), 1, 1, var_8A, var_1FC)
  loc_14FA9B9:   var_B8.Text = var_E8
  loc_14FA9D2: Else
  loc_14FA9D2:   Call Proc_214_48_F73308(var_168, 1, 1)
  loc_14FA9D7: End If
  loc_14FA9D7: Call Proc_214_51_EF7F40(var_158)
  loc_14FA9DC: Exit Sub
  loc_14FA9E2: Set var_90 = Nothing
  loc_14FA9EA: Set var_94 = Nothing
  loc_14FA9ED: ' Referenced from: 14F9BB0
  loc_14FA9ED: Proc_6_60_E63754(var_F8)
  loc_14FA9F2: Exit Sub
End Sub

Public Sub Proc_214_50_F1E794(arg_C) 'F1E794
  'Data Table: 4EA030
  Dim var_98 As TextBox
  loc_F1E69A: Set var_8C = Me.Txt
  loc_F1E6A0: Call 0.Method_Proc_214_50_F1E794C (var_8E, var_86)
  loc_F1E6B0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1E6C6:   Set var_8C = Me.Txt
  loc_F1E6CC:   Call 0.Method_Proc_214_50_F1E7940 (CInt(var_86), var_98)
  loc_F1E6D4:   var_98.Enabled = arg_C
  loc_F1E6E3: Next var_92 'Byte
  loc_F1E6F6: Set var_8C = Me.Txt
  loc_F1E6FC: Call 0.Method_Proc_214_50_F1E7940 (CInt(0), var_98)
  loc_F1E704: var_98.Enabled = False
  loc_F1E71D: Set var_8C = Me.Txt
  loc_F1E723: Call 0.Method_Proc_214_50_F1E7940 (CInt(1), var_98)
  loc_F1E72B: var_98.Enabled = False
  loc_F1E744: Set var_8C = Me.Txt
  loc_F1E74A: Call 0.Method_Proc_214_50_F1E7940 (CInt(7), var_98)
  loc_F1E752: var_98.Enabled = False
  loc_F1E769: If (global_92 = "No") Then
  loc_F1E779:   Set var_8C = Me.Txt
  loc_F1E77F:   Call 0.Method_Proc_214_50_F1E7940 (CInt(2), var_98)
  loc_F1E787:   var_98.Enabled = False
  loc_F1E793: End If
  loc_F1E793: Exit Sub
End Sub

Public Sub Proc_214_51_EF7F40
  'Data Table: 4EA030
  loc_EF7E80: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EF7E92:   Me.DGDepart.Visible = False
  loc_EF7E9A: End If
  loc_EF7EB6: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF7EC8:   Me.DGItem.Visible = False
  loc_EF7ED0: End If
  loc_EF7EEC: If (CBool(Me.DGToDepart.Visible) = &HFF) Then
  loc_EF7EFE:   Me.DGToDepart.Visible = False
  loc_EF7F06: End If
  loc_EF7F22: If (CBool(Me.DGShift.Visible) = &HFF) Then
  loc_EF7F34:   Me.DGShift.Visible = False
  loc_EF7F3C: End If
  loc_EF7F3C: Exit Sub
End Sub

Public Sub Proc_214_52_115E848
  'Data Table: 4EA030
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
  loc_115E4E0: var_90 = global_72
  loc_115E4F7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_115E51A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115E528: Set var_B4 = Me.Txt
  loc_115E52E: Call 0.Method_Proc_214_52_115E8480 (CInt(2), var_B8, var_E8)
  loc_115E53D: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_115E545: var_F8 = -1 & var_D8 
  loc_115E559: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115E564: Set var_8C = var_140
  loc_115E5A0: If (var_8C.RecordCount <= 0) Then
  loc_115E5BC:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115E5CF:   var_88 = vbNullString
  loc_115E5D2:   Proc_214_52_115E848 = 
  loc_115E5D8: End If
  loc_115E5EC: If (var_8C.RecordCount > 0) Then
  loc_115E62B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115E648:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115E659:     var_9C = CStr(var_B8.Value)
  loc_115E674:     Set var_B4 = Me.Txt
  loc_115E67A:     Call 0.Method_Proc_214_52_115E8480 (CInt(1), var_B8)
  loc_115E690:     var_94 = CLng(Val(var_B8.Text))
  loc_115E6A0:   Else
  loc_115E6CB:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115E6F2:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115E707:     var_D8 = (var_B8.Value + 1)
  loc_115E70D:     var_94 = CLng(var_D8)
  loc_115E71E:   End If
  loc_115E71E: End If
  loc_115E749: var_C8 = Space((5 - Len(var_90)))
  loc_115E751: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_B8.Value)
  loc_115E75B: var_F8 = (var_E8 + CVar(var_9C))
  loc_115E76C: var_118 = Space((5 - Len(var_9C)))
  loc_115E774: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115E78A: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115E792: var_188 = (var_13C + var_178)
  loc_115E79E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115E7A3: var_98 = CStr(var_1A8)
  loc_115E7D3: Me.LblVPrefix.Caption = var_9C
  loc_115E7E9: Set var_B4 = Me.Txt
  loc_115E7EF: Call 0.Method_Proc_214_52_115E8480 (CInt(0), var_B8)
  loc_115E7F7: var_B8.Text = var_98
  loc_115E816: Set var_B4 = Me.Txt
  loc_115E81C: Call 0.Method_Proc_214_52_115E8480 (CInt(1), var_B8)
  loc_115E824: var_B8.Text = CStr(var_94)
  loc_115E836: var_88 = var_98
  loc_115E83E: Set var_8C = Nothing
  loc_115E841: Proc_214_52_115E848 = var_94
End Sub

Public Sub Proc_214_53_110CC4C
  'Data Table: 4EA030
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
  loc_110C950: var_90 = global_76
  loc_110C967: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_110C98A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_110C998: Set var_B4 = Me.Txt
  loc_110C99E: Call 0.Method_Proc_214_53_110CC4C0 (CInt(2), var_B8, var_E8)
  loc_110C9AD: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_110C9B5: var_F8 = -1 & var_D8 
  loc_110C9C9: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_110C9D4: Set var_8C = var_140
  loc_110CA10: If (var_8C.RecordCount <= 0) Then
  loc_110CA2C:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_110CA3F:   var_88 = vbNullString
  loc_110CA42:   Proc_214_53_110CC4C = 
  loc_110CA48: End If
  loc_110CA5C: If (var_8C.RecordCount > 0) Then
  loc_110CA9B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_110CAB8:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_110CAC9:     var_9C = CStr(var_B8.Value)
  loc_110CAE4:     Set var_B4 = Me.Txt
  loc_110CAEA:     Call 0.Method_Proc_214_53_110CC4C0 (CInt(1), var_B8)
  loc_110CB00:     var_94 = CLng(Val(var_B8.Text))
  loc_110CB10:   Else
  loc_110CB3B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_110CB77:     var_D8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_110CB7D:     var_94 = CLng(var_D8)
  loc_110CB8E:   End If
  loc_110CB8E: End If
  loc_110CBB9: var_C8 = Space((5 - Len(var_90)))
  loc_110CBC1: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_8C.Fields.Item("start_srl_no").Value)
  loc_110CBCB: var_F8 = (var_E8 + CVar(var_9C))
  loc_110CBDC: var_118 = Space((5 - Len(var_9C)))
  loc_110CBE4: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_110CBFA: var_178 = Space((8 - Len(CStr(var_94))))
  loc_110CC02: var_188 = (var_13C + var_178)
  loc_110CC0E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_110CC39: var_88 = CStr(var_1A8)
  loc_110CC41: Set var_8C = Nothing
  loc_110CC44: Proc_214_53_110CC4C = var_94
End Sub

Public Sub Proc_214_54_1259308
  'Data Table: 4EA030
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_D4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_1258DAB: Me.FGrid.Width = CVar(CDbl(10800))
  loc_1258DC6: Me.FGrid.Top = CVar(CDbl(1900))
  loc_1258DE1: Me.FGrid.Height = CVar(CDbl(5325))
  loc_1258DFC: Me.FGrid.Left = CVar(CDbl(800))
  loc_1258E17: Me.DGItem.Left = CVar(CDbl(2800))
  loc_1258E32: Me.DGItem.Top = CVar(CDbl(1200))
  loc_1258E71: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_1258E91: If (global_100 <> "Yes") Then
  loc_1258EA5:   Set var_A8 = Me.DGItem
  loc_1258EC4:   DGItem.DispID_69.Item(1).Width = CDbl(0)
  loc_1258EED:   var_94 = CVar((CDbl(Me.DGItem.Width) - CDbl(2500))) 'Single
  loc_1258EFC:   Me.DGItem.Width = 1
  loc_1258F0B: End If
  loc_1258F0F: Set var_D4 = Me.FGrid
  loc_1258F26: global_120 = CStr(CLng(var_D4.BackColor))
  loc_1258F3C: var_D4.Cols = &HB
  loc_1258F44: var_94 = CVar(CLng(0)) 'Long
  loc_1258F49: var_E8 = &H1C2
  loc_1258F55: LateIdCallSt
  loc_1258F5D: var_94 = 0
  loc_1258F69: var_E8 = CVar(CLng(1)) 'Long
  loc_1258F6E: var_108 = "Item Name"
  loc_1258F77: LateIdCallSt
  loc_1258F82: var_94 = CVar(CLng(1)) 'Long
  loc_1258F8D: var_E8 = CVar(CInt(1)) 'Integer
  loc_1258F94: LateIdCallSt
  loc_1258F9F: var_94 = CVar(CLng(1)) 'Long
  loc_1258FA4: var_E8 = &HC80
  loc_1258FB0: LateIdCallSt
  loc_1258FB8: var_94 = 0
  loc_1258FC4: var_E8 = CVar(CLng(2)) 'Long
  loc_1258FC9: var_108 = "Unit"
  loc_1258FD2: LateIdCallSt
  loc_1258FDD: var_94 = CVar(CLng(2)) 'Long
  loc_1258FE8: var_E8 = CVar(CInt(1)) 'Integer
  loc_1258FEF: LateIdCallSt
  loc_1258FFA: var_94 = CVar(CLng(2)) 'Long
  loc_1258FFF: var_E8 = &H384
  loc_125900B: LateIdCallSt
  loc_1259013: var_94 = 0
  loc_125901F: var_E8 = CVar(CLng(3)) 'Long
  loc_1259024: var_108 = "Iss. Qty"
  loc_125902D: LateIdCallSt
  loc_1259038: var_94 = CVar(CLng(3)) 'Long
  loc_1259043: var_E8 = CVar(CInt(7)) 'Integer
  loc_125904A: LateIdCallSt
  loc_1259055: var_94 = CVar(CLng(3)) 'Long
  loc_1259060: var_E8 = CVar(CInt(7)) 'Integer
  loc_1259067: LateIdCallSt
  loc_1259072: var_94 = CVar(CLng(3)) 'Long
  loc_1259077: var_E8 = &H3E8
  loc_1259083: LateIdCallSt
  loc_125908B: var_94 = 0
  loc_1259097: var_E8 = CVar(CLng(4)) 'Long
  loc_125909C: var_108 = "Conv. Factor"
  loc_12590A5: LateIdCallSt
  loc_12590B0: var_94 = CVar(CLng(4)) 'Long
  loc_12590BB: var_E8 = CVar(CInt(7)) 'Integer
  loc_12590C2: LateIdCallSt
  loc_12590CD: var_94 = CVar(CLng(4)) 'Long
  loc_12590D8: var_E8 = CVar(CInt(7)) 'Integer
  loc_12590DF: LateIdCallSt
  loc_12590EA: var_94 = CVar(CLng(4)) 'Long
  loc_12590EF: var_E8 = 0
  loc_12590FB: LateIdCallSt
  loc_1259103: var_94 = 0
  loc_125910F: var_E8 = CVar(CLng(5)) 'Long
  loc_1259114: var_108 = "Wt. Qty"
  loc_125911D: LateIdCallSt
  loc_1259128: var_94 = CVar(CLng(5)) 'Long
  loc_1259133: var_E8 = CVar(CInt(7)) 'Integer
  loc_125913A: LateIdCallSt
  loc_1259145: var_94 = CVar(CLng(5)) 'Long
  loc_1259150: var_E8 = CVar(CInt(7)) 'Integer
  loc_1259157: LateIdCallSt
  loc_1259162: var_94 = CVar(CLng(5)) 'Long
  loc_1259167: var_E8 = &H3E8
  loc_1259173: LateIdCallSt
  loc_125917B: var_94 = 0
  loc_1259187: var_E8 = CVar(CLng(6)) 'Long
  loc_125918C: var_108 = "Wt.Unit"
  loc_1259195: LateIdCallSt
  loc_12591A0: var_94 = CVar(CLng(6)) 'Long
  loc_12591AB: var_E8 = CVar(CInt(1)) 'Integer
  loc_12591B2: LateIdCallSt
  loc_12591BD: var_94 = CVar(CLng(6)) 'Long
  loc_12591C2: var_E8 = &H384
  loc_12591CE: LateIdCallSt
  loc_12591D6: var_94 = 0
  loc_12591E2: var_E8 = CVar(CLng(7)) 'Long
  loc_12591E7: var_108 = "Rate"
  loc_12591F0: LateIdCallSt
  loc_12591FB: var_94 = CVar(CLng(7)) 'Long
  loc_1259206: var_E8 = CVar(CInt(7)) 'Integer
  loc_125920D: LateIdCallSt
  loc_1259218: var_94 = CVar(CLng(7)) 'Long
  loc_1259223: var_E8 = CVar(CInt(7)) 'Integer
  loc_125922A: LateIdCallSt
  loc_1259235: var_94 = CVar(CLng(7)) 'Long
  loc_125923A: var_E8 = &H3E8
  loc_1259246: LateIdCallSt
  loc_125924E: var_94 = 0
  loc_125925A: var_E8 = CVar(CLng(8)) 'Long
  loc_125925F: var_108 = "Amount"
  loc_1259268: LateIdCallSt
  loc_1259273: var_94 = CVar(CLng(8)) 'Long
  loc_125927E: var_E8 = CVar(CInt(7)) 'Integer
  loc_1259285: LateIdCallSt
  loc_1259290: var_94 = CVar(CLng(8)) 'Long
  loc_125929B: var_E8 = CVar(CInt(7)) 'Integer
  loc_12592A2: LateIdCallSt
  loc_12592AD: var_94 = CVar(CLng(8)) 'Long
  loc_12592B2: var_E8 = &H5DC
  loc_12592BE: LateIdCallSt
  loc_12592C9: var_94 = CVar(CLng(9)) 'Long
  loc_12592CE: var_E8 = 0
  loc_12592DA: LateIdCallSt
  loc_12592E5: var_94 = CVar(CLng(&HA)) 'Long
  loc_12592EA: var_E8 = 0
  loc_12592F6: LateIdCallSt
  loc_1259304: Exit Sub
  loc_1259305: var_14C = Nothing
End Sub

Public Sub Proc_214_55_F75A5C
  'Data Table: 4EA030
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  loc_F7595B: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F75963: var_C8 = CVar(CLng(7)) 'Long
  loc_F7599B: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F759A3: var_134 = CVar(CLng(3)) 'Long
  loc_F75A22: LateIdCallSt
  loc_F75A55: Call Proc_214_58_F047FC(Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))), 1, 1, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)))
  loc_F75A5A: Exit Sub
End Sub

Public Sub Proc_214_56_ED7120
  'Data Table: 4EA030
  loc_ED7080: Call Proc_214_51_EF7F40()
  loc_ED7090: Set var_88 = Me.Txt
  loc_ED7096: Call 0.Method_Proc_214_56_ED71200 (CInt(2))
  loc_ED70BF: If (Proc_6_27_EA61EC(var_8C, "Date") = 0) Then
  loc_ED70C2:   Exit Sub
  loc_ED70C3: End If
  loc_ED70FA: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED70FD:   Call TopCtrl1_UnknownEvent_16()
  loc_ED7105: Else
  loc_ED710B:   Call 0.Method_arg_1E8 (var_88)
  loc_ED7113:   Call var_88.SetFocus
  loc_ED711C: End If
  loc_ED711C: Exit Sub
End Sub

Public Sub Proc_214_57_FCE174
  'Data Table: 4EA030
  Dim var_CC As Variant
  Dim var_98 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_DC As Variant
  Dim var_9C As TextBox
  loc_FCDFC6: var_92 = 1 'Byte
  loc_FCDFD3: Set var_98 = Me.TxtGrid
  loc_FCDFD9: Call 0.Method_Proc_214_57_FCE1740 (0)
  loc_FCE001: var_8C = CStr(Ucase(CVar(CStr(Trim(CVar(var_9C))))))
  loc_FCE039: For var_E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_E0 'Integer
  loc_FCE05D:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FCE060:     GoTo loc_FCE161
  loc_FCE063:   End If
  loc_FCE067:   var_F0 = CVar(CLng(var_88)) 'Long
  loc_FCE091:   var_CC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FCE09B:   var_DC = CVar(CStr(var_CC)) 'String
  loc_FCE0D0:   If ((var_8C = CStr(Ucase(var_DC))) And (CStr(Ucase(var_DC)) <> vbNullString)) Then
  loc_FCE0E9:     var_F0 = "Duplicate Item Proceed"
  loc_FCE10A:     If (MsgBox(var_F0, 4, "Validation", var_CC, var_DC) = 7) Then
  loc_FCE119:       Set var_98 = Me.TxtGrid
  loc_FCE11F:       Call 0.Method_Proc_214_57_FCE1740 (0, var_9C, vbNullString, CVar(CLng(var_92)))
  loc_FCE127:       var_9C.Text = var_F0
  loc_FCE13C:       Set var_98 = Me.TxtGrid
  loc_FCE142:       Call 0.Method_Proc_214_57_FCE1740 (0, var_9C)
  loc_FCE14A:       var_9C.SetFocus
  loc_FCE15B:       Proc_214_57_FCE174 = 0
  loc_FCE161:       ' Referenced from: FCE060
  loc_FCE161:     End If
  loc_FCE161:   End If
  loc_FCE164: Next var_E0 'Integer
  loc_FCE16E: Proc_214_57_FCE174 = &HFF
End Sub

Public Sub Proc_214_58_F047FC
  'Data Table: 4EA030
  Dim var_94 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_90 As Double
  Dim var_108 As TextBox
  loc_F04720: On Error Goto loc_F047F6
  loc_F04748: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_F04752:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_F0475A:   var_D8 = CVar(CLng(8)) 'Long
  loc_F04786:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F04795: Next var_A8 'Integer
  loc_F047D1: Set var_94 = Me.Txt
  loc_F047D7: Call 0.Method_Proc_214_58_F047FC0 (CInt(7), var_108, CStr(Format(var_90, "0.00")))
  loc_F047DF: var_108.Text = 1
  loc_F047F5: Exit Sub
  loc_F047F6: ' Referenced from: F04720
  loc_F047F6: Proc_6_60_E63754(1)
  loc_F047FB: Exit Sub
End Sub
