VERSION 5.00
Begin VB.Form PIndent
  Caption = "Indent"
  BackColor = &HFFC0C0&
  ForeColor = &H8000000A&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFFFFC0&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11880
  ClientHeight = 6435
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 12
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
    Width = 11880
    Height = 450
    TabIndex = 28
  End
  Begin TextBox Txt
    Index = 7
    ForeColor = &HC00000&
    Left = 9855
    Top = 7260
    Width = 1260
    Height = 285
    TabIndex = 23
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
  Begin DataGrid DGDepart
    Left = 13545
    Top = 2160
    Width = 5055
    Height = 3810
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 21
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 2625
    Top = 1275
    Width = 3750
    Height = 285
    TabIndex = 1
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
    Index = 5
    ForeColor = &HC00000&
    Left = 12165
    Top = 7260
    Width = 1215
    Height = 285
    TabIndex = 17
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
  Begin DataGrid DGItem
    Left = 13425
    Top = 1455
    Width = 4230
    Height = 4065
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 390
    Top = 1890
    Width = 1485
    Height = 340
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 15900
    Top = 6045
    Width = 2505
    Height = 1935
    Visible = 0   'False
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 240
      Top = 240
      Width = 1575
      Height = 1335
      TabStop = 0   'False
      TabIndex = 12
    End
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 1110
    Top = 7260
    Width = 5925
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
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 5340
    Top = 960
    Width = 1020
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 7275
    Top = 960
    Width = 1215
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
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 1995
    Top = 960
    Width = 1965
    Height = 285
    Text = "Indent Entry"
    TabIndex = 0
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 45
    Top = 1635
    Width = 13020
    Height = 5235
    TabIndex = 2
  End
  Begin TextBox Txt
    Index = 3
    Left = 12480
    Top = 480
    Width = 2400
    Height = 240
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin MSFlexGrid FGPoint
    Left = 14160
    Top = 8145
    Width = 1740
    Height = 1080
    Visible = 0   'False
    TabIndex = 19
  End
  Begin MSHFlexGrid FGCat
    Left = 240
    Top = 7830
    Width = 9150
    Height = 1275
    Visible = 0   'False
    TabIndex = 22
  End
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 0
    Top = 6900
    Width = 2745
    Height = 345
    TabIndex = 29
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
    Left = 5550
    Top = 7650
    Width = 2790
    Height = 285
    TabIndex = 27
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
    Left = 2175
    Top = 7650
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 25
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
    Caption = "Total"
    Index = 3
    ForeColor = &HC00000&
    Left = 9270
    Top = 7260
    Width = 480
    Height = 240
    TabIndex = 24
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
    Caption = "Department"
    Index = 0
    ForeColor = &HC00000&
    Left = 1440
    Top = 1290
    Width = 1110
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
    Caption = "Total Amount"
    Index = 6
    ForeColor = &HC00000&
    Left = 10245
    Top = 8295
    Width = 1275
    Height = 240
    Visible = 0   'False
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 10800
    Top = 480
    Width = 570
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
    Left = 11640
    Top = 525
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 15
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
    Caption = "Remarks"
    Index = 8
    ForeColor = &HC00000&
    Left = 240
    Top = 7260
    Width = 825
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
    Caption = "Indent No."
    Index = 1
    ForeColor = &HC00000&
    Left = 4320
    Top = 975
    Width = 975
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
  Begin Label Label1
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 6780
    Top = 960
    Width = 435
    Height = 240
    TabIndex = 8
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
    Caption = "Indent Type"
    Index = 0
    ForeColor = &HC00000&
    Left = 825
    Top = 960
    Width = 1125
    Height = 240
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
End

Attribute VB_Name = "PIndent"

Private global_84 As Integer
Private global_86 As Integer
Private global_72 As Double
Private global_64 As Byte

Private Sub Txt_GotFocus(Index As Integer) '1199FD0
  'Data Table: 4E71B8
  Dim var_A2 As Integer
  Dim Me As Variant
  Dim var_9C As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_B0 As String
  Dim var_10C As String
  Dim unk_4E71D6 As Connection15
  Dim var_88 As Recordset15
  Dim var_8A As Integer
  Dim var_98 As Variant
  Dim var_108 As Variant
  loc_1199BFA: Set var_98 = Me.Txt
  loc_1199C00: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1199C0E: Proc_6_74_E23240(var_9C)
  loc_1199C1A: Call Proc_88_53_EBA5A4(var_9C)
  loc_1199C22: var_A2 = Index
  loc_1199C2D: If (var_A2 = CInt(6)) Then
  loc_1199C47:   If (Me.RecordCount > 0) Then
  loc_1199C55:     Set var_9C = Me.FGPoint
  loc_1199C6D:     Proc_6_137_1192FDC(Me.DGDepart, global_68, Index)
  loc_1199C7B:   End If
  loc_1199CC9:   Set var_98 = Me.Txt
  loc_1199CCF:   Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0)
  loc_1199CD7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_1199CEF:   If (var_9C Or (var_B0 = vbNullString)) Then
  loc_1199CF2:     Exit Sub
  loc_1199CF3:   End If
  loc_1199D00:   Set var_98 = Me.Txt
  loc_1199D06:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1199D0E:   var_B0 = var_9C.Text
  loc_1199D16:   var_E4 = CVar(var_B0) 'String
  loc_1199D5B:   If CBool(var_E4 <> Me.Fields.Item("Name").Value) Then
  loc_1199D64:     Me.MoveFirst
  loc_1199D89:     Set var_98 = Me.Txt
  loc_1199D8F:     Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0, "Name=")
  loc_1199D97:     0 = var_9C.Text
  loc_1199D9F:     var_D4 = CVar(var_B0) 'String
  loc_1199DA5:     Proc_6_17_EAAE40(var_E4, var_D4, 1)
  loc_1199DBB:     Me.Find CStr(var_108 & var_E4), var_A2, 
  loc_1199DD3:   End If
  loc_1199DD6: Else
  loc_1199DDE:   If (var_A2 = CInt(0)) Then
  loc_1199E03:     var_10C = "SELECT V_TYPE,DESCRIPTION FROM Voucher_Type WHERE Site_Code='" & MemVar_1F95070 & "' and logsite_code='" & MemVar_1F95078
  loc_1199E13:     unk_4E71D6.Execute var_10C & "' and NCAT IN ('PIND') ORDER BY DESCRIPTION", var_D4, -1
  loc_1199E1E:     Set var_88 = var_98
  loc_1199E32:     ' Referenced from:   1199F0D
  loc_1199E41:     If Not(var_88.EOF) Then
  loc_1199E47:       var_8A = var_8A
  loc_1199E56:       ReDim Preserve var_90(0 To CLng(var_8A))
  loc_1199E95:       var_90(CLng(var_8A)) = CStr(var_88.Fields.Item("Description").Value)
  loc_1199EAF:       ReDim Preserve var_94(0 To CLng(var_8A))
  loc_1199EEE:       var_94(CLng(var_8A)) = CStr(var_88.Fields.Item("V_Type").Value)
  loc_1199F02:       var_8A = (var_8A + 1)
  loc_1199F08:       var_88.MoveNext
  loc_1199F0D:       GoTo loc_1199E32
  loc_1199F10:     End If
  loc_1199F23:     global_108 = CByte(var_88.RecordCount)
  loc_1199F43:     var_108 = var_94
  loc_1199F7B:     Set global_104 = Proc_6_109_F52874(Me.ListView, Me.Txt, CInt(0), var_90, CInt(var_88.RecordCount))
  loc_1199F9F:     Me.ListView.Tag = CVar(CStr(Index))
  loc_1199FAD:   Else
  loc_1199FB5:     If (var_A2 = CInt(2)) Then
  loc_1199FC0:       var_B0 = "{Home}+{End}"
  loc_1199FC6:       Proc_303_0_FBACC8(CStr(var_88.Fields.Item("V_Type").Value), 0, var_108, global_108)
  loc_1199FCE:     End If
  loc_1199FCE:   End If
  loc_1199FCE: End If
  loc_1199FCE: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '114F5D4
  'Data Table: 4E71B8
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim Shift As Integer
  Dim Me As Recordset15
  Dim var_8C As Frame
  Dim var_98 As DataGrid
  Dim Txt_KeyDown0FF As Integer
  loc_114F262: If (CLng(Shift) = &H1B) Then
  loc_114F265:   Call Proc_88_53_EBA5A4()
  loc_114F26A:   Exit Sub
  loc_114F26B: End If
  loc_114F26E: var_86 = KeyCode
  loc_114F279: If (var_86 = CInt(0)) Then
  loc_114F288:   If (CInt(global_108) > 0) Then
  loc_114F295:     If (CLng(Shift) <> &H1B) Then
  loc_114F2BA:       Set var_8C = Me.Txt
  loc_114F2C0:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_114F2C8:       var_94 = var_90.Left
  loc_114F2DA:       Set var_98 = Me.Txt
  loc_114F2E0:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_114F2E8:       var_A0 = var_9C.Top
  loc_114F2FA:       Set var_A4 = Me.Txt
  loc_114F300:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_114F308:       var_AC = var_A8.Height
  loc_114F31A:       Set var_B0 = Me.Txt
  loc_114F320:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_114F328:       var_B8 = var_B4.Width
  loc_114F37A:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_114F39E:     End If
  loc_114F3A1:   Else
  loc_114F3A3:     Shift = 0
  loc_114F3A6:   End If
  loc_114F3A9: Else
  loc_114F3B1:   If (var_86 = CInt(6)) Then
  loc_114F40E:     Proc_6_69_134A630(Me.DGDepart, Me.Txt, CInt(6), global_68, Shift, 0, 1, Nothing)
  loc_114F42D:     var_94 = Me.RecordCount
  loc_114F47D:     If ((var_94 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_114F4A3:       Proc_6_138_106E830(Me.DGDepart, global_68, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_114F4B1:     End If
  loc_114F4B1:   End If
  loc_114F4B1: End If
  loc_114F507: If (((Me.FrmList.Visible = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(Me.DGDepart.Visible) = 0)) Then
  loc_114F51F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_114F528:     Proc_6_75_E5335C(Shift, arg_14, Shift, CInt(var_94))
  loc_114F52D:   End If
  loc_114F531:   Set var_8C = Me.TopCtrl1
  loc_114F537:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt((var_A0 + var_AC)))
  loc_114F559:   If ((CStr(CInt(var_B8)) = "Add") And (KeyCode <> CInt(0))) Then
  loc_114F571:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_114F57A:       Proc_6_76_E533C8(Shift, arg_14)
  loc_114F57F:     End If
  loc_114F57F:   End If
  loc_114F583:   Set var_8C = Me.TopCtrl1
  loc_114F589:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005((CInt(global_108) * 230))
  loc_114F5AB:   If ((CStr(var_86) = "Edit") And (KeyCode <> CInt(2))) Then
  loc_114F5C3:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_114F5CC:       Proc_6_76_E533C8(Shift)
  loc_114F5D1:     End If
  loc_114F5D1:   End If
  loc_114F5D1: End If
  loc_114F5D1: Exit Sub
  loc_114F5D2: Txt_KeyDown0FF = arg_14
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F6A7A4
  'Data Table: 4E71B8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F6A673: Proc_6_58_E06050(arg_10)
  loc_F6A67E: Proc_6_133_E7FB08(var_94)
  loc_F6A690: var_96 = KeyAscii
  loc_F6A69B: If (var_96 = CInt(1)) Then
  loc_F6A6A8:   Set var_9C = Me.Txt
  loc_F6A6AE:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_F6A6C9:   Proc_6_42_129B55C(var_A0, CInt(var_94), 8)
  loc_F6A6D8: Else
  loc_F6A6E0:   If (var_96 = CInt(0)) Then
  loc_F6A6EF:     If (CInt(global_108) <= 0) Then
  loc_F6A6F4:       arg_10 = 0
  loc_F6A6F7:     End If
  loc_F6A6FA:   Else
  loc_F6A702:     If (var_96 = CInt(6)) Then
  loc_F6A721:       If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F6A74E:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F6A780:         Proc_6_138_106E830(Me.DGDepart, global_68, KeyAscii, Me.FGPoint, 0)
  loc_F6A79A:         If (CInt(global_108) <= 0) Then
  loc_F6A79F:           arg_10 = 0
  loc_F6A7A2:         End If
  loc_F6A7A2:       End If
  loc_F6A7A2:     End If
  loc_F6A7A2:   End If
  loc_F6A7A2: End If
  loc_F6A7A2: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EFF090
  'Data Table: 4E71B8
  Dim var_86 As Integer
  loc_EFEFBF: var_86 = KeyCode
  loc_EFEFCA: If (var_86 = CInt(6)) Then
  loc_EFEFE9:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EFEFFD:     var_A4 = "Name"
  loc_EFF021:     Proc_6_68_12A2818(Me.DGDepart, Me.Txt, KeyCode, global_68)
  loc_EFF034:   End If
  loc_EFF037: Else
  loc_EFF03F:   If (var_86 = CInt(0)) Then
  loc_EFF04E:     If (CInt(global_108) > 0) Then
  loc_EFF07D:       Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_EFF08D:     End If
  loc_EFF08D:   End If
  loc_EFF08D: End If
  loc_EFF08D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47DDC
  'Data Table: 4E71B8
  loc_E47DBA: Set var_88 = Me.Txt
  loc_E47DC0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47DCE: Proc_6_73_E23294(var_8C)
  loc_E47DDA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1342158
  'Data Table: 4E71B8
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_C4 As Variant
  Dim var_E8 As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_144 As TextBox
  Dim var_168 As Variant
  Dim var_170 As TextBox
  Dim var_194 As Variant
  Dim var_140 As TextBox
  loc_13419B7: var_86 = Cancel
  loc_13419C2: If (var_86 = CInt(6)) Then
  loc_13419D0:   Set var_8C = Me.Txt
  loc_13419D6:   Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_13419DE:   var_98 = "Department"
  loc_13419FF:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_1341A0D:     Set var_8C = Me.Txt
  loc_1341A13:     Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_1341A1B:     var_90.SetFocus
  loc_1341A29:     arg_10 = &HFF
  loc_1341A2C:     Exit Sub
  loc_1341A2D:   End If
  loc_1341A4D:   var_9E = Me.EOF
  loc_1341A7B:   Set var_8C = Me.Txt
  loc_1341A81:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1341A89:   ((Me.RecordCount = 0) Or ((var_9E = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1341AA1:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_1341AB1:     Set var_8C = Me.Txt
  loc_1341AB7:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1341ABF:     var_90.Text = vbNullString
  loc_1341AD8:     Set var_8C = Me.Txt
  loc_1341ADE:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1341AE6:     var_90.Tag = vbNullString
  loc_1341AF5:   Else
  loc_1341B30:     Set var_94 = Me.Txt
  loc_1341B36:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1341B3E:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1341B71:     var_90 = Me.Fields.Item("Code")
  loc_1341B8F:     Set var_94 = Me.Txt
  loc_1341B95:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1341B9D:     var_B4.Tag = CStr(var_90.Value)
  loc_1341BB3:   End If
  loc_1341BB6: Else
  loc_1341BBE:   If (var_86 = CInt(0)) Then
  loc_1341BCC:     Set var_8C = Me.Txt
  loc_1341BD2:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1341C08:     If ((Proc_6_27_EA61EC(var_90, "Indent Type") = 0) Or (CInt(global_108) <= 0)) Then
  loc_1341C15:       Set var_8C = Me.Txt
  loc_1341C1B:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1341C23:       var_90.SetFocus
  loc_1341C31:       arg_10 = &HFF
  loc_1341C34:       Exit Sub
  loc_1341C35:     End If
  loc_1341C39:     Set var_8C = Me.TopCtrl1
  loc_1341C3F:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_1341C58:     If (CStr(var_86) = "Add") Then
  loc_1341C79:       var_98 = Me.ListView.SelectedItem.Text
  loc_1341C8B:       Set var_94 = Me.Txt
  loc_1341C91:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1341C99:       var_B4.Text = var_98
  loc_1341CC9:       Set var_90 = Me.ListView.SelectedItem
  loc_1341CCF:       1 = var_90.SubItems
  loc_1341CE1:       Set var_94 = Me.Txt
  loc_1341CE7:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1341CEF:       var_B4.Tag = var_98
  loc_1341D0D:       Call Proc_88_54_135F87C(&HFF, var_98)
  loc_1341D20:       Set var_8C = Me.Txt
  loc_1341D26:       Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_1341D2E:       var_90.Text = var_98
  loc_1341D3D:     End If
  loc_1341D40:   Else
  loc_1341D48:     If (var_86 = CInt(1)) Then
  loc_1341D56:       Set var_8C = Me.Txt
  loc_1341D5C:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1341D85:       If (Proc_6_27_EA61EC(var_90, "Indent Number") = 0) Then
  loc_1341D92:         Set var_8C = Me.Txt
  loc_1341D98:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1341DA0:         var_90.SetFocus
  loc_1341DAE:         arg_10 = &HFF
  loc_1341DB1:         Exit Sub
  loc_1341DB2:       End If
  loc_1341DBD:       Set var_8C = Me.Txt
  loc_1341DC3:       Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_1341DD5:       Set var_94 = Me.Txt
  loc_1341DDB:       Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_D8)
  loc_1341DE3:       arg_10 = var_B4.Text
  loc_1341DFF:       var_98 = CStr(Right(CVar(var_90), 8))
  loc_1341E26:       If (CDbl(Val(var_98)) <> CDbl(var_D8)) Then
  loc_1341E31:         Call Proc_88_54_135F87C(0, var_98)
  loc_1341E44:         Set var_8C = Me.Txt
  loc_1341E4A:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_1341E52:         var_90.Text = var_98
  loc_1341E61:       End If
  loc_1341E65:       Set var_8C = Me.TopCtrl1
  loc_1341E6B:       Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_1341E84:       If (CStr() = "Add") Then
  loc_1341EB1:         Set var_8C = Me.Txt
  loc_1341EB7:         Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_D8)
  loc_1341EBF:         5 = var_90.Tag
  loc_1341ECC:         var_C4 = Space((CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2)) - Len(var_D8)))
  loc_1341ED4:         var_E8 = ( + CVar(var_90))
  loc_1341EE6:         Set var_94 = Me.Txt
  loc_1341EEC:         Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_1341EFF:         var_10C = (var_E8 + CVar(var_B4.Tag))
  loc_1341F13:         var_11C = Space((5 - Len(global_116)))
  loc_1341F1B:         var_12C = (var_10C + var_11C)
  loc_1341F28:         var_13C = (var_12C + CVar(global_116))
  loc_1341F3F:         Set var_140 = Me.Txt
  loc_1341F45:         Call 0.Method_Txt_Validate0 (CInt(1), var_144, var_148)
  loc_1341F4D:         8 = var_144.Text
  loc_1341F5A:         var_158 = Space((var_13C - Len(var_148)))
  loc_1341F62:         var_168 = ( + var_158)
  loc_1341F74:         Set var_16C = Me.Txt
  loc_1341F7A:         Call 0.Method_Txt_Validate0 (CInt(1), var_170)
  loc_1341F8D:         var_194 = (var_168 + CVar(var_170.Text))
  loc_1341FE6:         Set var_8C = Me.Txt
  loc_1341FEC:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_1341FF4:         var_90.Text = CStr(var_194)
  loc_1342000:       End If
  loc_1342003:       Call Proc_88_58_F921C4(var_9E)
  loc_134200E:       If (var_9E = &HFF) Then
  loc_1342013:         arg_10 = &HFF
  loc_1342016:         Exit Sub
  loc_1342017:       End If
  loc_134201A:     Else
  loc_1342022:       If (var_86 = CInt(2)) Then
  loc_1342032:         Set var_8C = Me.Txt
  loc_1342038:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1342070:         If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_1342085:           Set var_8C = Me.Txt
  loc_134208B:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1342093:           var_90.Text = CStr(MemVar_1F950EC)
  loc_13420A5:         Else
  loc_13420AF:           Set var_8C = Me.Txt
  loc_13420B5:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13420D5:           Set var_B4 = Me.Txt
  loc_13420DB:           Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_13420E3:           var_140.Text = Proc_6_33_15125B8(var_90)
  loc_13420F6:         End If
  loc_13420FA:         Set var_8C = Me.TopCtrl1
  loc_1342100:         Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_1342108:         var_98 = CStr()
  loc_1342119:         If (var_98 = "Add") Then
  loc_1342124:           Call Proc_88_54_135F87C(&HFF)
  loc_1342137:           Set var_8C = Me.Txt
  loc_134213D:           Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_1342145:           var_90.Text = var_98
  loc_1342154:         End If
  loc_1342154:       End If
  loc_1342154:     End If
  loc_1342154:   End If
  loc_1342154: End If
  loc_1342154: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '113B070
  'Data Table: 4E71B8
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_113AD00: On Error Goto loc_113B06A
  loc_113AD03: Call Proc_88_53_EBA5A4()
  loc_113AD1B: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113AD24: Set var_9C = Me.FGrid
  loc_113AD3C: Set var_F0 = Me.FGrid
  loc_113AD59: Set var_104 = Me.TxtGrid
  loc_113AD5F: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, CStr(var_F0.TextMatrix)))
  loc_113AD67: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_113AD94: Set var_88 = Me.TxtGrid
  loc_113AD9A: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_113ADA2: var_9C.MaxLength = 0
  loc_113ADD1: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_113ADE0:   Set var_9C = Me.TxtGrid
  loc_113ADE6:   Call 0.Method_TxtGrid_GotFocus0 (0, var_F0, var_114)
  loc_113ADEE:   var_110 = var_F0.Left
  loc_113ADFF:   Set var_104 = Me.TxtGrid
  loc_113AE05:   Call 0.Method_TxtGrid_GotFocus0 (0, var_108)
  loc_113AE2D:   var_BC = CVar(((CDbl(Me.FGrid.Left) + var_114) + var_108.Width)) 'Single
  loc_113AE3C:   Me.DGItem.Left = var_BC
  loc_113AE75:   Me.DGItem.Top = CVar(CDbl(Me.FGrid.Top))
  loc_113AE9B:   If (Me.RecordCount > 0) Then
  loc_113AEA9:     Set var_9C = Me.FGPoint
  loc_113AEC1:     Proc_6_137_1192FDC(Me.DGItem, global_52, Index)
  loc_113AECF:   End If
  loc_113AED8:   var_114 = Me.RecordCount
  loc_113AEEF:   var_11E = Me.EOF
  loc_113AF03:   var_120 = Me.BOF
  loc_113AF23:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113AF5F:   If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_113AF62:     Exit Sub
  loc_113AF63:   End If
  loc_113AF76:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113AF7E:   var_DC = CVar(CLng(1)) 'Long
  loc_113AFB1:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_113AFBA:     Me.MoveFirst
  loc_113AFD2:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113AFDA:     var_DC = CVar(CLng(&HC)) 'Long
  loc_113AFE9:     var_AC = Me.FGrid.TextMatrix)
  loc_113B01E:     Me.Find "Code='" & CStr(var_AC) & "'", 0, 1
  loc_113B04E:     If (Me.EOF = &HFF) Then
  loc_113B057:       Me.MoveFirst
  loc_113B05C:     End If
  loc_113B05C:   End If
  loc_113B05F: Else
  loc_113B066:   If (var_110 = CLng(5)) Then
  loc_113B069:   End If
  loc_113B069: End If
  loc_113B069: Exit Sub
  loc_113B06A: ' Referenced from: 113AD00
  loc_113B06A: Proc_6_60_E63754(var_138, var_AC, var_DC, var_BC, var_DC)
  loc_113B06F: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '125A9F0
  'Data Table: 4E71B8
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  loc_125A488: On Error Goto loc_125A9E9
  loc_125A48E: var_86 = Shift
  loc_125A49B: If (CLng(Shift) = &H1B) Then
  loc_125A4AA:   Set var_8C = Me.TxtGrid
  loc_125A4B0:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_125A4C9:   Set var_98 = Me.TxtGrid
  loc_125A4CF:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_125A4D7:   var_9C.Text = var_90.Tag
  loc_125A4F3:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_125A4FC:   Set var_8C = Me.FGrid
  loc_125A518:   Set var_8C = Me.TxtGrid
  loc_125A51E:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_125A526:   var_90.Visible = FGrid.DispID_8001
  loc_125A532:   Exit Sub
  loc_125A533: End If
  loc_125A546: var_B0 = CLng(Me.FGrid.Col)
  loc_125A556: If (var_B0 = CLng(1)) Then
  loc_125A576:   Set var_9C = Me.FGPoint
  loc_125A581:   Set var_98 = Nothing
  loc_125A5AF:   Proc_6_69_134A630(Me.DGItem, Me.TxtGrid, KeyCode, global_52, Shift, &HFF, 1)
  loc_125A61E:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_125A625:     Set var_98 = Me.DGItem
  loc_125A644:     Proc_6_138_106E830(var_98, global_52, KeyCode, Me.FGPoint, var_98)
  loc_125A652:   End If
  loc_125A65C:   If (CLng(Shift) = &HD) Then
  loc_125A66C:     Call Proc_88_49_1459D68(0, 0, var_B6, var_9C)
  loc_125A677:     If (var_B6 = &HFF) Then
  loc_125A6C4:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, CByte((CInt(8) + 1)), 0)
  loc_125A6D4:     End If
  loc_125A6D4:   End If
  loc_125A6D7: Else
  loc_125A6DE:   If (var_B0 = CLng(2)) Then
  loc_125A721:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_86 = &HFF))) Then
  loc_125A731:       Call Proc_88_49_1459D68(0, 0, var_B6, 0, 0)
  loc_125A73C:       If (var_B6 = &HFF) Then
  loc_125A789:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, CByte((CInt(8) + 1)), 0)
  loc_125A799:       End If
  loc_125A799:     End If
  loc_125A79C:   Else
  loc_125A7A3:     If (var_B0 = CLng(3)) Then
  loc_125A7E6:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_86 = &HFF))) Then
  loc_125A7F6:         Call Proc_88_49_1459D68(0, 0, var_B6, 0, 0)
  loc_125A801:         If (var_B6 = &HFF) Then
  loc_125A84E:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, CByte((CInt(8) + 1)), 0)
  loc_125A85E:         End If
  loc_125A85E:       End If
  loc_125A861:     Else
  loc_125A868:       If (var_B0 = CLng(5)) Then
  loc_125A8AB:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_86 = &HFF))) Then
  loc_125A8BB:           Call Proc_88_49_1459D68(0, 0, var_B6, 5, 0)
  loc_125A8C6:           If (var_B6 = &HFF) Then
  loc_125A913:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, CByte((CInt(8) + 1)), 0)
  loc_125A923:           End If
  loc_125A923:         End If
  loc_125A926:       Else
  loc_125A92D:         If (var_B0 = CLng(8)) Then
  loc_125A970:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_86 = &HFF))) Then
  loc_125A980:             Call Proc_88_49_1459D68(0, 0, var_B6, 8, 0)
  loc_125A98B:             If (var_B6 = &HFF) Then
  loc_125A9D8:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, CByte((CInt(8) + 1)), 0)
  loc_125A9E8:             End If
  loc_125A9E8:           End If
  loc_125A9E8:         End If
  loc_125A9E8:       End If
  loc_125A9E8:     End If
  loc_125A9E8:   End If
  loc_125A9E8: End If
  loc_125A9E8: Exit Sub
  loc_125A9E9: ' Referenced from: 125A488
  loc_125A9E9: Proc_6_60_E63754(0, 0, 0)
  loc_125A9EE: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F9F0B4
  'Data Table: 4E71B8
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_BC As TextBox
  loc_F9EF40: On Error Goto loc_F9F0AD
  loc_F9EF46: Proc_6_58_E06050(arg_10)
  loc_F9EF66: var_88 = CStr(Ucase(Chr(CLng(arg_10))))
  loc_F9EF83: var_B0 = CLng(Me.FGrid.Col)
  loc_F9EF93: If (var_B0 = CLng(1)) Then
  loc_F9EFB2:   If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F9EFC4:     var_B4 = "Name"
  loc_F9EFDF:     Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_52, arg_10)
  loc_F9EFF9:     Set var_BC = Me.FGPoint
  loc_F9F011:     Proc_6_138_106E830(Me.DGItem, global_52, KeyAscii, var_BC)
  loc_F9F01F:   End If
  loc_F9F022: Else
  loc_F9F029:   If Not (var_B0 = CLng(3)) Then
  loc_F9F033:     If Not (var_B0 = CLng(8)) Then
  loc_F9F03D:       If (var_B0 = CLng(5)) Then
  loc_F9F040:       End If
  loc_F9F040:     End If
  loc_F9F04A:     Set var_AC = Me.TxtGrid
  loc_F9F050:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_BC, var_B4)
  loc_F9F06B:     Proc_6_42_129B55C(var_BC, arg_10, 8)
  loc_F9F07A:   Else
  loc_F9F081:     If (var_B0 = CLng(2)) Then
  loc_F9F092:       Set var_AC = Me.TxtGrid
  loc_F9F098:       Call 0.Method_TxtGrid_KeyPress0 (0, var_BC, &H23)
  loc_F9F0A0:       var_BC.MaxLength = 3
  loc_F9F0AC:     End If
  loc_F9F0AC:   End If
  loc_F9F0AC: End If
  loc_F9F0AC: Exit Sub
  loc_F9F0AD: ' Referenced from: F9EF40
  loc_F9F0AD: Proc_6_60_E63754(0)
  loc_F9F0B2: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '116FBB0
  'Data Table: 4E71B8
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_EC As Variant
  Dim var_174 As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_BC As Variant
  Dim var_A8 As String
  loc_116F800: On Error Goto loc_116FBA9
  loc_116F80F: If (KeyCode = 0) Then
  loc_116F825:   var_A0 = CLng(Me.FGrid.Col)
  loc_116F835:   If (var_A0 = CLng(1)) Then
  loc_116F85B:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_116F86C:       Call TxtGrid_KeyDown(KeyCode, global_84)
  loc_116F875:       Set var_AC = Me.TxtGrid
  loc_116F880:       var_A8 = "Name"
  loc_116F89B:       Proc_6_89_1470B00(var_AC, KeyCode, global_52, Shift, var_A8)
  loc_116F8AA:     End If
  loc_116F8AD:   Else
  loc_116F8B4:     If Not (var_A0 = CLng(3)) Then
  loc_116F8BE:       If (var_A0 = CLng(5)) Then
  loc_116F8C1:       End If
  loc_116F8CE:       Set var_8C = Me.TxtGrid
  loc_116F8D4:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_116F8DC:       0 = var_AC.Text
  loc_116F8FF:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116F917:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116F944:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_116F94C:       Set var_178 = Me.FGrid
  loc_116F952:       LateIdCallSt
  loc_116F98C:       var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116F994:       var_174 = CVar(CLng(5)) 'Long
  loc_116F9CC:       var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116F9D4:       var_1C4 = CVar(CLng(6)) 'Long
  loc_116F9EC:       var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116F9F4:       var_124 = CVar(CLng(3)) 'Long
  loc_116F9FD:       Set var_AC = Me.FGrid
  loc_116FA0E:       var_A8 = CStr(var_AC.TextMatrix))
  loc_116FA1C:       var_164 = CVar(CStr((Val(var_A8) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_116FA24:       Set var_1E8 = Me.FGrid
  loc_116FA2A:       LateIdCallSt
  loc_116FA5A:     Else
  loc_116FA61:       If (var_A0 = CLng(8)) Then
  loc_116FA71:         Set var_8C = Me.TxtGrid
  loc_116FA77:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, var_1E8, var_164, var_124, var_BC)
  loc_116FA7F:         var_1C4 = var_AC.Text
  loc_116FAA2:         var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116FABA:         var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116FAE7:         var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_116FAEF:         Set var_178 = Me.FGrid
  loc_116FAF5:         LateIdCallSt
  loc_116FB1F:       Else
  loc_116FB26:         If (var_A0 = CLng(2)) Then
  loc_116FB66:           Set var_8C = Me.TxtGrid
  loc_116FB6C:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_178, var_164)
  loc_116FB74:           1 = var_AC.Text
  loc_116FB7C:           var_EC = CVar(var_A8) 'String
  loc_116FB84:           Set var_178 = Me.FGrid
  loc_116FB8A:           LateIdCallSt
  loc_116FBA8:         End If
  loc_116FBA8:       End If
  loc_116FBA8:     End If
  loc_116FBA8:   End If
  loc_116FBA8: End If
  loc_116FBA8: Exit Sub
  loc_116FBA9: ' Referenced from: 116F800
  loc_116FBA9: Proc_6_60_E63754(var_178, var_EC, 1, var_144)
  loc_116FBAE: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E240B0
  'Data Table: 4E71B8
  Dim arg_10 As Integer
  loc_E2408C: On Error Goto loc_E240A7
  loc_E2409A: Call Proc_88_49_1459D68(Cancel, &HFF)
  loc_E240A3: arg_10 = Not(var_88)
  loc_E240A6: Exit Sub
  loc_E240A7: ' Referenced from: E2408C
  loc_E240A7: Proc_6_60_E63754(arg_10)
  loc_E240AC: Exit Sub
End Sub

Private Sub Form_Load() '1048E74
  'Data Table: 4E71B8
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_BC As Variant
  Dim Me As Recordset15
  loc_1048C08: On Error Goto loc_1048E6D
  loc_1048C1E: Me.DGItem.Top = CVar(CDbl(2235))
  loc_1048C33: Set var_A8 = Me.DGItem
  loc_1048C39: var_A8.Left = CVar(CDbl(3685))
  loc_1048C47: global_124 = MemVar_1F951AC
  loc_1048C67: Me.var_A8.CursorLocation = 3
  loc_1048C8A: var_AC = "Select I.Code,I.Name as Name,I.Unit,I.PurchRate as Rate,I.LPurRate,I.ConvRatio as ConvFactor,I.IssueUnit as WtUnit,IC.taxStru From ItemMast I inner Join ItemCatMast IC on I.ItemCatCode=IC.Code Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_1048C9B: Me.Open CVar(var_AC & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F95044), 3
  loc_1048CAF: CVarUnk
  loc_1048CB4: VerifyVarObj
  loc_1048CBA: Set var_A8 = Me.DGItem
  loc_1048CC0: LateIdStAd
  loc_1048CEA: Me.DGItem.CursorLocation = 3
  loc_1048D14: var_BC = CVar("Select  Code,Name,Code as DCOde,RestType From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RestType='Store' and RestType<>'FOM' and OutletYn='N' Order by Name") 'String
  loc_1048D32: CVarUnk
  loc_1048D37: VerifyVarObj
  loc_1048D43: LateIdStAd
  loc_1048D6D: Me.DGDepart.CursorLocation = 3
  loc_1048D90: var_AC = "Select DocID as SearchCode,Remarks,I.Site_Code,I.LogSite_Code From Indent I Inner join Voucher_Type V on (I.Vtype=V.V_Type and I.LogSite_Code=V.LogSite_Code) Where  V.LOGSITE_CODE='" & MemVar_1F95078
  loc_1048DA1: r_BC, CVar(MemVar_1F95044), 3 CVar(var_AC & "' and V.NCat='PIND' Order by DocID"), CVar(MemVar_1F95044), 3
  loc_1048DAC: Call Proc_88_59_E789FC(1, -1, Me.DGDepart, New, 1)
  loc_1048DD4: Call Proc_88_51_F3447C(Proc_5_1_100EC1C("INI", Me, New, -1), Me, New)
  loc_1048DDF: Call Proc_88_47_131F038(1)
  loc_1048DE4: Call Proc_88_52_150F764(-1)
  loc_1048DF8: Me.LblUser.Left = CDbl(13500)
  loc_1048E0F: Me.LblUser.Top = CDbl(7800)
  loc_1048E26: Me.LblLDt.Top = CDbl(8160)
  loc_1048E3D: Me.LblLDt.Left = CDbl(13500)
  loc_1048E4C: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1048E64: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1048E6C: Exit Sub
  loc_1048E6D: ' Referenced from: 1048C08
  loc_1048E6D: Proc_6_60_E63754()
  loc_1048E72: Exit Sub
End Sub

Private Sub Form_Resize() 'ED1EA8
  'Data Table: 4E71B8
  Dim var_8C As Label
  loc_ED1E06: Call 0.Method_arg_50 (var_88)
  loc_ED1E18: Me.LblFormCaption.Caption = var_88
  loc_ED1E31: Me.LblFormCaption.Left = CDbl(0)
  loc_ED1E3D: Set var_A0 = Me.TopCtrl1
  loc_ED1E43: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED1E50: Set var_8C = Me.TopCtrl1
  loc_ED1E56: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED1E70: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED1E8B: Call 0.Method_arg_100 (var_B8)
  loc_ED1E9D: Me.LblFormCaption.Width = var_B8
  loc_ED1EA5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E51E44
  'Data Table: 4E71B8
  loc_E51E17: Set global_56 = Nothing
  loc_E51E29: Set global_52 = Nothing
  loc_E51E3B: Set global_68 = Nothing
  loc_E51E42: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E019F0
  'Data Table: 4E71B8
  loc_E019E9: Call Form_Unload(&HFF)
  loc_E019EE: Exit Sub
End Sub

Private Sub Form_Activate() 'E3E944
  'Data Table: 4E71B8
  loc_E3E920: Set var_88 = Me.TopCtrl1
  loc_E3E926: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E3E93B: If (CLng(CInt()) = &H2D) Then
  loc_E3E93E:   Call TopCtrl1_UnknownEvent_15()
  loc_E3E943: End If
  loc_E3E943: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B618
  'Data Table: 4E71B8
  Dim Form_KeyDown0FF As Double
  loc_E2B5F0: On Error Goto loc_E2B610
  loc_E2B607: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B60F: Exit Sub
  loc_E2B610: ' Referenced from: E2B5F0
  loc_E2B610: Proc_6_60_E63754(Shift)
  loc_E2B615: Exit Sub
  loc_E2B616: Form_KeyDown0FF = 0
End Sub

Private Sub ListView_UnknownEvent_13 'F880CC
  'Data Table: 4E71B8
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F87F88: On Error Goto loc_F88066
  loc_F87F8F: Set var_A4 = Me.ListView
  loc_F87FD9: Set var_BC = Me.Txt
  loc_F87FDF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F87FE7: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F88013: Me.FrmList.Visible = False
  loc_F8802D: var_A0 = CStr(Me.ListView.Tag)
  loc_F88035: var_C8 = Val(var_A0)
  loc_F88043: Set var_9C = Me.Txt
  loc_F88049: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F88051: var_A4.SetFocus
  loc_F88065: Exit Sub
  loc_F88066: ' Referenced from: F87F88
  loc_F8806E: Set var_88 = Err()
  loc_F88074: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F88085: If (var_CC <> 0) Then
  loc_F88090:   Set var_88 = Err()
  loc_F88096:   Call 0.Method_arg_2C (var_A0)
  loc_F880B7:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F880CA: End If
  loc_F880CA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA1DCC
  'Data Table: 4E71B8
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA1D67: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_128)) Then
  loc_EA1D7D:   Me.FGrid.Col = 1
  loc_EA1D85: End If
  loc_EA1D98: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA1DAB: Set var_88 = Me.TxtGrid
  loc_EA1DB1: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA1DB9: var_BC.Visible = False
  loc_EA1DC5: Call Proc_88_53_EBA5A4()
  loc_EA1DCA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6A950
  'Data Table: 4E71B8
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6A90C: Set var_88 = Me.TxtGrid
  loc_E6A912: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6A92C: If (var_8C.Visible = 0) Then
  loc_E6A945:   Me.FGrid.BackColorSel = CVar(CLng(global_128))
  loc_E6A94D: End If
  loc_E6A94D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D330
  'Data Table: 4E71B8
  loc_E1D327: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D32F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E3B584
  'Data Table: 4E71B8
  Dim var_8C As TextBox
  loc_E3B567: Set var_88 = Me.TxtGrid
  loc_E3B56D: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E3B575: var_8C.Visible = False
  loc_E3B581: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '106ACF4
  'Data Table: 4E71B8
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_D8 As Variant
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_106AA74: On Error Goto loc_106ACED
  loc_106AA7B: Set var_88 = Me.TopCtrl1
  loc_106AA81: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_106AA9A: If (CStr() = "Browse") Then
  loc_106AA9D:   Exit Sub
  loc_106AA9E: End If
  loc_106AABB: var_C4 = Me.FGrid.Rows
  loc_106AB12: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_106AB1D:   var_9C = "+{Tab}"
  loc_106AB23:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_106AB2D:   KeyCode = 0
  loc_106AB33: Else
  loc_106AB3D:   var_B0 = Me.FGrid.Rows
  loc_106AB8A:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_106AB9B:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_106ABA5:     KeyCode = 0
  loc_106ABDF:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_106ABE2:       Call TopCtrl1_UnknownEvent_16()
  loc_106ABE7:     End If
  loc_106ABE7:   End If
  loc_106ABE7: End If
  loc_106ABED: global_84 = KeyCode
  loc_106AC13: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_106AC37: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_106AC4D:   var_11C = CLng(Me.FGrid.Col)
  loc_106AC5D:   If Not (var_11C = CLng(1)) Then
  loc_106AC67:     If Not (var_11C = CLng(2)) Then
  loc_106AC71:       If Not (var_11C = CLng(3)) Then
  loc_106AC7B:         If (var_11C = CLng(8)) Then
  loc_106AC7E:         End If
  loc_106AC7E:       End If
  loc_106AC7E:     End If
  loc_106AC91:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_106ACA9:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_106ACAE:     var_12C = vbNullString
  loc_106ACB8:     Set var_B4 = Me.FGrid
  loc_106ACBE:     LateIdCallSt
  loc_106ACD6:   End If
  loc_106ACD6: End If
  loc_106ACDC: If (KeyCode = &HD) Then
  loc_106ACE4:   global_86 = 0
  loc_106ACE7: End If
  loc_106ACE9: KeyCode = 0
  loc_106ACEC: Exit Sub
  loc_106ACED: ' Referenced from: 106AA74
  loc_106ACED: Proc_6_60_E63754(KeyCode, global_86, var_B4, var_12C, var_F8, var_D8)
  loc_106ACF2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E107F8
  'Data Table: 4E71B8
  loc_E107E9: Call FGrid_UnknownEvent_C()
  loc_E107F3: global_86 = 0
  loc_E107F6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'FCC16C
  'Data Table: 4E71B8
  Dim var_B0 As Long
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  loc_FCBFDB: var_88 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_FCBFE5: On Error Goto loc_FCC163
  loc_FCBFFB: var_B0 = CLng(Me.FGrid.Col)
  loc_FCC00B: If Not (var_B0 = CLng(1)) Then
  loc_FCC015:   If (var_B0 = CLng(2)) Then
  loc_FCC018:   End If
  loc_FCC056:   Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_FCC06B: Else
  loc_FCC072:   If Not (var_B0 = CLng(3)) Then
  loc_FCC07C:     If Not (var_B0 = CLng(8)) Then
  loc_FCC086:       If (var_B0 = CLng(5)) Then
  loc_FCC089:       End If
  loc_FCC089:     End If
  loc_FCC0A6:     If (CLng(Me.FGrid.Col) = CLng(5)) Then
  loc_FCC0BC:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FCC0C4:       var_F8 = CVar(CLng(5)) 'Long
  loc_FCC0E9:       global_72 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_FCC0FD:     End If
  loc_FCC13B:     Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0)
  loc_FCC14D:   End If
  loc_FCC14D: End If
  loc_FCC157: If (CLng(KeyCode) <> &HD) Then
  loc_FCC15F:   global_86 = &HFF
  loc_FCC162: End If
  loc_FCC162: Exit Sub
  loc_FCC163: ' Referenced from: FCBFE5
  loc_FCC163: Proc_6_60_E63754(global_86, global_72, var_F8, var_D8)
  loc_FCC168: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '11DEE74
  'Data Table: 4E71B8
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As TextBox
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_284 As Double
  Dim var_180 As TextBox
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_28C As Double
  Dim var_144 As Integer
  Dim unk_4E71D6 As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim var_178 As Variant
  Dim var_238 As Integer
  Dim var_224 As Recordset15
  Dim var_228 As Fields15
  Dim var_23C As Field20
  loc_11DEA68: On Error Goto loc_11DEE6B
  loc_11DEA6F: Set var_88 = Me.TopCtrl1
  loc_11DEA75: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11DEA8E: If (CStr() = "Browse") Then
  loc_11DEA91:   Exit Sub
  loc_11DEA92: End If
  loc_11DEAAF: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_11DEAB2:   Exit Sub
  loc_11DEAB3: End If
  loc_11DEAC4: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_11DEAE6:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_11DEAF7:     Set var_88 = Me.Txt
  loc_11DEAFD:     Call 0.Method_FGrid_UnknownEvent_D0 (CInt(3), var_A0)
  loc_11DEB1D:     var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DEB25:     var_D8 = CVar(CLng(0)) 'Long
  loc_11DEB47:     var_284 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_11DEB58:     Set var_17C = Me.Txt
  loc_11DEB5E:     Call 0.Method_FGrid_UnknownEvent_D0 (CInt(3), var_180, var_184)
  loc_11DEB7E:     var_1AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DEB86:     var_1CC = CVar(CLng(0)) 'Long
  loc_11DEBA8:     var_28C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_11DEBB1:     var_144 = 0
  loc_11DEBEA:     unk_4E71D6.Execute "Select Count(*) From POrder1 Where IndentDocId='" & var_A0.Text & "' And IndentSno=" & CStr(var_180.Text), var_12C, -1
  loc_11DEBF2:     var_130 = var_130.Fields
  loc_11DEBFA:     var_144 = var_134.Item(var_134)
  loc_11DEC02:     var_148 = var_148.Value
  loc_11DEC10:     var_178 = (var_158 > 0)
  loc_11DEC1A:     var_238 = 0
  loc_11DEC53:     unk_4E71D6.Execute "Select Count(*) From STOCK Where IndentDocId='" & var_184 & "' And IndentSno=" & CStr(var_28C), var_220, -1
  loc_11DEC5B:     var_224 = var_224.Fields
  loc_11DEC63:     var_238 = var_228.Item(var_228)
  loc_11DEC6B:     var_23C = var_23C.Value
  loc_11DECD0:     If CBool(var_24C And (var_24C > 0)) Then
  loc_11DECF4:       MsgBox("Allready Ordered You Can't Delete", &H10, "Delete Validation", var_12C, var_158)
  loc_11DED08:       Set var_88 = Me.FGrid
  loc_11DED19:       Exit Sub
  loc_11DED1A:     End If
  loc_11DED51:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_12C, var_158) = 6) Then
  loc_11DED73:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_11DED89:         var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DED92:         Set var_A0 = Me.FGrid
  loc_11DEDAD:       Else
  loc_11DEDC0:         Me.FGrid.Rows = 1
  loc_11DEDDD:         var_FC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11DEDE5:         Set var_A0 = Me.FGrid
  loc_11DEE01:         var_B8 = 1
  loc_11DEE14:         Me.FGrid.FixedRows = var_B8
  loc_11DEE1C:       End If
  loc_11DEE1C:     End If
  loc_11DEE1C:     Call Proc_88_56_11CDA80(FGrid.DispID_10000, var_FC, FGrid.DispID_10000, var_B8, FGrid.DispID_8001, var_178)
  loc_11DEE24:   Else
  loc_11DEE45:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_12C, var_158)
  loc_11DEE55:   End If
  loc_11DEE59:   Set var_88 = Me.FGrid
  loc_11DEE6A: End If
  loc_11DEE6A: Exit Sub
  loc_11DEE6B: ' Referenced from: 11DEA68
  loc_11DEE6B: Proc_6_60_E63754(FGrid.DispID_8001, var_158, var_28C, var_1CC)
  loc_11DEE70: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9E910
  'Data Table: 4E71B8
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9E8B3: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9E8CB: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9E8F3: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9E90E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3EFB4
  'Data Table: 4E71B8
  Dim var_8C As TextBox
  loc_E3EF93: Set var_88 = Me.TxtGrid
  loc_E3EF99: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3EFA1: var_8C.Visible = False
  loc_E3EFAD: Call Proc_88_53_EBA5A4()
  loc_E3EFB2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F91E90
  'Data Table: 4E71B8
  Dim var_8C As Variant
  Dim var_D0 As Variant
  Dim var_D4 As TextBox
  loc_F91D28: On Error Goto loc_F91E8A
  loc_F91D4E: Call Proc_88_51_F3447C(Proc_5_1_100EC1C("ADD", Me))
  loc_F91D59: Call Proc_88_50_F6B204(global_56)
  loc_F91D6B: Me.LblVPrefix.Caption = vbNullString
  loc_F91D86: Me.FGrid.Rows = 1
  loc_F91DA3: var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F91DAB: Set var_D4 = Me.FGrid
  loc_F91DDA: Me.FGrid.FixedRows = 1
  loc_F91DF5: Set var_8C = Me.Txt
  loc_F91DFB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, CStr(MemVar_1F950EC))
  loc_F91E03: var_D4.Text = FGrid.DispID_10000
  loc_F91E20: Set var_8C = Me.Txt
  loc_F91E26: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_D4)
  loc_F91E2E: var_D4.Text = "Indent Entry"
  loc_F91E45: Set var_8C = Me.Txt
  loc_F91E4B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_D4)
  loc_F91E53: var_D4.SetFocus
  loc_F91E6C: Me.LblUser.Caption = vbNullString
  loc_F91E81: Me.LblLDt.Caption = vbNullString
  loc_F91E89: Exit Sub
  loc_F91E8A: ' Referenced from: F91D28
  loc_F91E8A: Proc_6_60_E63754(var_D0)
  loc_F91E8F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBB50C
  'Data Table: 4E71B8
  loc_EBB478: On Error Goto loc_EBB503
  loc_EBB4B2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBB4C1:   Set var_10C = Me
  loc_EBB4D8:   Call Proc_88_51_F3447C(Proc_5_1_100EC1C("INI", var_10C))
  loc_EBB4E3:   Call Proc_88_52_150F764(global_56)
  loc_EBB4EB: Else
  loc_EBB4F1:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBB4F9:   Call var_10C.SetFocus
  loc_EBB502: End If
  loc_EBB502: Exit Sub
  loc_EBB503: ' Referenced from: EBB478
  loc_EBB503: Proc_6_60_E63754()
  loc_EBB508: Exit Sub
  loc_EBB509: StAryRecMove
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12F9A90
  'Data Table: 4E71B8
  Dim var_9C As Variant
  Dim unk_4E71D6 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A0 As String
  Dim var_C8 As Variant
  loc_12F93C4: On Error Goto loc_12F9A40
  loc_12F93D5: If (Proc_183_56_FE8B08(global_56) = &HFF) Then
  loc_12F93D8:   Exit Sub
  loc_12F93D9: End If
  loc_12F9406: Set var_98 = Me.Txt
  loc_12F940C: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_9C, var_A0, "select count(*) from porder1 where iNDENTdOCID='", var_C8, -1)
  loc_12F942D: unk_4E71D6.Execute var_D0 & var_A0 & "'", 0, var_E4
  loc_12F943D:  = var_D0.Item()
  loc_12F9445:  = var_E4.Value
  loc_12F9472: If (var_9C.Text.Fields > 0) Then
  loc_12F9490:   var_C8 = "Already Ordered You Can't Delete"
  loc_12F9496:   MsgBox(var_C8, &H10, "Delete Validation", var_114, var_134)
  loc_12F94AA:   Set var_98 = Me.FGrid
  loc_12F94BB:   Exit Sub
  loc_12F94BC: End If
  loc_12F94E9: Set var_98 = Me.Txt
  loc_12F94EF: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_9C, var_A0, "select count(*) from Stock where IndentDocID='", var_C8, -1)
  loc_12F9510: unk_4E71D6.Execute var_D0 & var_A0 & "'", 0, var_E4
  loc_12F9520:  = var_D0.Item(FGrid.DispID_8001)
  loc_12F9528:  = var_E4.Value
  loc_12F9555: If (var_9C.Text.Fields > 0) Then
  loc_12F9573:   var_C8 = "GRN Exists, You Can't Delete"
  loc_12F9579:   MsgBox(var_C8, &H10, "Delete Validation", var_114, var_134)
  loc_12F958D:   Set var_98 = Me.FGrid
  loc_12F959E:   Exit Sub
  loc_12F959F: End If
  loc_12F95CC: Set var_98 = Me.Txt
  loc_12F95D2: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_9C, var_A0, "select count(*) from Stock where ContraDocID='", var_C8, -1)
  loc_12F95DA: var_CC = var_9C.Text
  loc_12F95F3: unk_4E71D6.Execute var_D0 & var_A0 & "'", 0, var_E4
  loc_12F9603:  = var_D0.Item(FGrid.DispID_8001)
  loc_12F960B:  = var_E4.Value
  loc_12F9638: If (var_CC.Fields > 0) Then
  loc_12F965C:   MsgBox("Purchase Order Exists, You Can't Delete", &H10, "Delete Validation", var_114, var_134)
  loc_12F9670:   Set var_98 = Me.FGrid
  loc_12F9681:   Exit Sub
  loc_12F9682: End If
  loc_12F96B9: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_114, var_134) = 6) Then
  loc_12F96C5:   unk_4E71D6.BeginTrans var_138
  loc_12F96DB:   var_94 = Me.Bookmark 'Variant
  loc_12F971E:   var_F4 = "Delete From Indent1 Where DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_12F9735:   unk_4E71D6.Execute CStr(var_F4 & "'"), var_134, -1
  loc_12F977A:   Proc_6_17_EAAE40(var_F4, CVar(Me.Fields.Item("SearchCode")))
  loc_12F9784:   var_168 = 0
  loc_12F9797:   var_160 = 0
  loc_12F97A2:   var_15C = 0
  loc_12F97B5:   var_154 = 0
  loc_12F97C0:   var_150 = 0
  loc_12F981C:   Proc_154_5_10E3BD4(MemVar_1F95044, "Indent1", "DocId", &HC8, CStr(var_F4), 0, 0, 0)
  loc_12F9883:   var_F4 = "Delete From Indent Where DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_12F988C:   var_114 = var_F4 & "'" 
  loc_12F989A:   unk_4E71D6.Execute CStr(var_114), var_134, -1
  loc_12F98DF:   Proc_6_17_EAAE40(var_F4, CVar(Me.Fields.Item("SearchCode")), var_CC, 0, 0)
  loc_12F98E9:   var_168 = 0
  loc_12F98FC:   var_160 = 0
  loc_12F9907:   var_15C = 0
  loc_12F991A:   var_154 = 0
  loc_12F9925:   var_150 = 0
  loc_12F9938:   var_148 = 0
  loc_12F9978:   var_A0 = "Indent"
  loc_12F9981:   Proc_154_5_10E3BD4(MemVar_1F95044, var_A0, "DocId", &HC8, CStr(var_F4), 0, 0, 0)
  loc_12F99AF:   unk_4E71D6.CommitTrans
  loc_12F99BF:   Me.Requery -1
  loc_12F99DF:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12F99EC:     Me.Bookmark = var_94
  loc_12F99F4:   Else
  loc_12F9A08:     If (Me.EOF = 0) Then
  loc_12F9A11:       Me.MoveLast
  loc_12F9A16:     End If
  loc_12F9A16:   End If
  loc_12F9A16:   Call Proc_88_52_150F764(var_148, 0, var_150, var_154)
  loc_12F9A37:   Proc_5_0_1107AD0(&HFF, Me, global_56, 0)
  loc_12F9A3F: End If
  loc_12F9A3F: Exit Sub
  loc_12F9A40: ' Referenced from: 12F93C4
  loc_12F9A46: unk_4E71D6.RollbackTrans
  loc_12F9A53: Set var_98 = Err()
  loc_12F9A59: Call 0.Method_arg_2C (var_A0, 0, var_15C)
  loc_12F9A7A: MsgBox(CVar(var_A0), &H10, " Deletion Message", var_114, var_134)
  loc_12F9A8D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1124A50
  'Data Table: 4E71B8
  Dim var_8C As TextBox
  Dim unk_4E71D6 As Connection15
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  Dim var_88 As Variant
  Dim var_B8 As Variant
  Dim var_90 As String
  loc_11246FC: On Error Goto loc_1124A4A
  loc_112470D: If (Proc_183_55_FE8490(global_56) = &HFF) Then
  loc_1124710:   Exit Sub
  loc_1124711: End If
  loc_112473E: Set var_88 = Me.Txt
  loc_1124744: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_8C, var_90, "select count(*) from porder1 where iNDENTdOCID='", var_B8, -1)
  loc_1124765: unk_4E71D6.Execute var_C0 & var_90 & "'", 0, var_D4
  loc_1124775:  = var_C0.Item()
  loc_112477D:  = var_D4.Value
  loc_11247AA: If (var_8C.Text.Fields > 0) Then
  loc_11247C8:   var_B8 = "Already Ordered You Can't Modify "
  loc_11247CE:   MsgBox(var_B8, &H10, "Edit Validation", var_104, var_124)
  loc_11247DE:   Exit Sub
  loc_11247DF: End If
  loc_112480C: Set var_88 = Me.Txt
  loc_1124812: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_8C, var_90, "select count(*) from Stock where INDENTDOCID='", var_B8, -1)
  loc_1124833: unk_4E71D6.Execute var_C0 & var_90 & "'", 0, var_D4
  loc_1124843:  = var_C0.Item()
  loc_112484B:  = var_D4.Value
  loc_1124878: If (var_8C.Text.Fields > 0) Then
  loc_112489C:   MsgBox("You Can't Modify,Entry Exist in Stock ", &H10, "Edit Validation", var_104, var_124)
  loc_11248AC:   Exit Sub
  loc_11248AD: End If
  loc_11248D0: Call Proc_88_51_F3447C(Proc_5_1_100EC1C("EDIT", Me))
  loc_11248F8: Set var_8C = Me.FGrid
  loc_1124921: Set var_88 = Me.Txt
  loc_1124927: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_8C, 0)
  loc_112492F: var_8C.Enabled = FGrid.DispID_10000
  loc_1124948: Set var_88 = Me.Txt
  loc_112494E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_8C, 0)
  loc_1124956: var_8C.Enabled = CVar(CStr(CLng(Me.FGrid.Rows)))
  loc_112496F: Set var_88 = Me.Txt
  loc_1124975: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_8C)
  loc_112497D: var_8C.Enabled = False
  loc_112498D: Set var_88 = Me.TopCtrl1
  loc_1124993: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(global_56)
  loc_11249AC: If (CStr() = "Add") Then
  loc_11249BA:   Set var_88 = Me.Txt
  loc_11249C0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2))
  loc_11249C8:   var_8C.SetFocus
  loc_11249D4: End If
  loc_11249D8: Set var_88 = Me.TopCtrl1
  loc_11249DE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8C)
  loc_11249F7: If (CStr() = "Edit") Then
  loc_1124A05:   Set var_88 = Me.Txt
  loc_1124A0B:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4))
  loc_1124A13:   var_8C.SetFocus
  loc_1124A1F: End If
  loc_1124A2C: Me.LblUser.Caption = vbNullString
  loc_1124A41: Me.LblLDt.Caption = vbNullString
  loc_1124A49: Exit Sub
  loc_1124A4A: ' Referenced from: 11246FC
  loc_1124A4A: Proc_6_60_E63754(var_8C)
  loc_1124A4F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18480
  'Data Table: 4E71B8
  loc_E18475: Me.Global.Unload Me
  loc_E1847D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EDB6F4
  'Data Table: 4E71B8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EDB648: On Error Goto loc_EDB6EB
  loc_EDB662: If (Me.RecordCount <= 0) Then
  loc_EDB66B:   var_B8 = "Information"
  loc_EDB686:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EDB696:   Exit Sub
  loc_EDB697: End If
  loc_EDB69E: var_10C = "Select DocId as SearchCode,Description as IndentType,vnO as IndentNo,Cast(VDate as Varchar(11)) as IndentDate,i.Remarks " & "From (Indent I Left Join Voucher_type VT on (VT.V_type=I.VType and VT.LogSite_Code=I.Logsite_Code)) Where   VT.LOGSITE_CODE='"
  loc_EDB6AC: MemVar_1F950E4 = var_10C & MemVar_1F95078 & "' And V_Type In (Select V_Type From Voucher_Type Where NCat='PIND') order by i.Docid "
  loc_EDB6C0: Proc_6_126_F1C850("1500,1000,1500,3000")
  loc_EDB6CE: MemVar_1F95120 = Me
  loc_EDB6E5: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EDB6EA: Exit Sub
  loc_EDB6EB: ' Referenced from: EDB648
  loc_EDB6EB: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EDB6F0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3E0A8
  'Data Table: 4E71B8
  loc_E3E098: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E0A0: Call Proc_88_52_150F764(global_56)
  loc_E3E0A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3DEC8
  'Data Table: 4E71B8
  loc_E3DEB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3DEC0: Call Proc_88_52_150F764(global_56)
  loc_E3DEC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3E8E8
  'Data Table: 4E71B8
  loc_E3E8D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3E8E0: Call Proc_88_52_150F764(global_56)
  loc_E3E8E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3D5C8
  'Data Table: 4E71B8
  loc_E3D5B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3D5C0: Call Proc_88_52_150F764(global_56)
  loc_E3D5C5: Exit Sub
  loc_E3D5C6: Set TopCtrl1_UnknownEvent_13000 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1092A00
  'Data Table: 4E71B8
  Dim Me As Recordset15
  Dim var_AC As String
  Dim var_BC As Variant
  Dim var_A8 As Fields15
  Dim var_C0 As Field20
  Dim var_100 As String
  Dim unk_4E71D6 As Connection15
  Dim var_116 As Integer
  loc_1092764: On Error Goto loc_10929F7
  loc_1092770: var_A4 = Me.RecordCount
  loc_109277E: If (var_A4 <= 0) Then
  loc_1092781:   Exit Sub
  loc_1092782: End If
  loc_109279C: Call Proc_88_48_11C93D4(New)
  loc_10927A7: Set global_60 = var_A8
  loc_10927B5: var_AC = "SELECT I.VNo, I.VDate, I.Remarks, IM.Name, I1.Specification, I1.Qty, IM.Unit, I1.Rate, I1.Amount, D.Name As DepartMent, I1.TaxAmt, I1.Total " & " FROM ((Indent AS I LEFT JOIN Indent1 AS I1 ON I.DocId = I1.DocId) LEFT JOIN Depart AS D ON D.Code = I.DepartMent) Inner JOIN ItemMast AS IM ON I1.Item = IM.Code And IM.ItemType='Store' "
  loc_10927D4: var_A8 = Me.Fields
  loc_10927DC: var_C0 = var_A8.Item("SearchCode")
  loc_10927E4: var_D0 = var_C0.Value
  loc_10927F0: var_100 = "' Order By I1.Sno"
  loc_10927FA: var_88 = CStr(CVar(var_AC & " Where I.DocID='") & var_D0 & var_100)
  loc_109281A: If (var_88 = vbNullString) Then
  loc_109281D:   Exit Sub
  loc_109281E: End If
  loc_1092834: unk_4E71D6.Execute var_88, var_D0, -1
  loc_109285E: Set var_A8 = var_A8 
  loc_109286A: var_116 = CreateFieldDefFile(var_A8, MemVar_1F950B4 & "\Indent.ttx", &HFF)
  loc_1092874: Set var_9C = var_A8
  loc_109287A: var_BC = CVar(var_116) 'Integer
  loc_109287D: var_98 = var_BC 'Variant
  loc_1092899: var_AC = MemVar_1F950B4 & "\Indent.RPT"
  loc_10928A2: Call 0.Method_arg_1C (var_AC, var_BC, var_A8)
  loc_10928AD: MemVar_1F951E8 = var_A8
  loc_10928C8: Call 0.Method_arg_90 (var_A8, var_A4, var_9E, 1)
  loc_10928D0: Call 0.Method_arg_24 (var_116, var_A8)
  loc_10928DC: For var_11A =  To CInt(var_A4): var_A8 = var_11A 'Integer
  loc_10928F5:   Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_10928FD:   Call 0.Method_arg_20 (var_C0)
  loc_1092905:   Call 0.Method_arg_30 (var_AC)
  loc_109291F:   If (var_AC = "Title") Then
  loc_1092935:     Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_109293D:     Call 0.Method_arg_20 (var_C0)
  loc_1092945:     Call 0.Method_arg_38 ("'Indent'")
  loc_1092951:   End If
  loc_1092954: Next var_11A 'Integer
  loc_1092972: Call 0.Method_arg_64 (var_A8, CVar(var_9C))
  loc_109297A: Call 0.Method_arg_2C (var_100)
  loc_1092988: Call 0.Method_arg_150 (var_130)
  loc_1092993: Call 0.Method_arg_50 (var_AC)
  loc_109299D: Set var_C0 = Nothing
  loc_10929B7: Set var_A8 = MemVar_1F951E8 
  loc_10929C3: Proc_6_99_1484404(var_A8, 0, var_AC)
  loc_10929CE: MemVar_1F951E8 = var_A8
  loc_10929E1: Set var_9C = Nothing
  loc_10929EF: Set global_60 = Nothing
  loc_10929F6: Exit Sub
  loc_10929F7: ' Referenced from: 1092764
  loc_10929F7: Proc_6_60_E63754(&HFF)
  loc_10929FC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E241AC
  'Data Table: 4E71B8
  Dim Me As Recordset15
  loc_E24193: Me.Requery -1
  loc_E241A3: Me.Requery -1
  loc_E241A8: Exit Sub
  loc_E241A9: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15CD160
  'Data Table: 4E71B8
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_98 As Variant
  Dim var_F8 As Variant
  Dim var_A4 As String
  Dim var_108 As Variant
  Dim var_C8 As Variant
  Dim unk_4E71D6 As Connection15
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_170 As Variant
  Dim var_438 As Double
  Dim var_200 As Variant
  Dim var_32C As Variant
  Dim var_2EC As String
  Dim var_384 As Variant
  Dim var_138 As String
  Dim var_144 As String
  Dim var_178 As String
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_254 As Variant
  Dim var_2B4 As Variant
  Dim var_2C4 As Variant
  Dim var_3A8 As Variant
  Dim var_3B8 As Variant
  Dim var_3E8 As Variant
  Dim var_16C As Variant
  Dim var_184 As TextBox
  Dim var_AD0 As Double
  Dim var_2D8 As MSHFlexGrid
  Dim var_454 As Variant
  Dim var_474 As Variant
  Dim var_380 As MSHFlexGrid
  Dim var_4B4 As Variant
  Dim var_4D4 As Variant
  Dim var_518 As Variant
  Dim var_538 As Variant
  Dim var_AE8 As Double
  Dim var_AF0 As Double
  Dim var_780 As Variant
  Dim var_7A0 As Variant
  Dim var_818 As Variant
  Dim var_838 As Variant
  Dim var_8B0 As Variant
  Dim var_8D0 As Variant
  Dim var_9A4 As Variant
  Dim var_A1C As Variant
  Dim var_A3C As Variant
  Dim var_148 As String
  Dim var_174 As String
  Dim var_204 As String
  Dim var_440 As String
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_2A4 As Variant
  Dim var_2E8 As Variant
  Dim var_42C As Variant
  Dim var_7E8 As Variant
  Dim var_954 As Variant
  Dim var_88 As Recordset15
  loc_15CBFD8: On Error Goto loc_15CD143
  loc_15CBFE6: Set var_98 = Me.Txt
  loc_15CBFEC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15CC015: If (Proc_6_27_EA61EC(var_9C, "Indent Type") = 0) Then
  loc_15CC018:   Exit Sub
  loc_15CC019: End If
  loc_15CC024: Set var_98 = Me.Txt
  loc_15CC02A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_15CC053: If (Proc_6_27_EA61EC(var_9C, "Indent Number") = 0) Then
  loc_15CC056:   Exit Sub
  loc_15CC057: End If
  loc_15CC062: Set var_98 = Me.Txt
  loc_15CC068: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_15CC091: If (Proc_6_27_EA61EC(var_9C, "Indent Date") = 0) Then
  loc_15CC094:   Exit Sub
  loc_15CC095: End If
  loc_15CC0A0: Set var_98 = Me.Txt
  loc_15CC0A6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C)
  loc_15CC0CF: If (Proc_6_27_EA61EC(var_9C, "Department") = 0) Then
  loc_15CC0D9:   Call Txt_GotFocus(CInt(6))
  loc_15CC0DE:   Exit Sub
  loc_15CC0DF: End If
  loc_15CC0EB: Call Txt_Validate(CInt(1))
  loc_15CC0F3: Call Proc_88_58_F921C4(var_A6, &HFF)
  loc_15CC0FE: If (var_A6 = &HFF) Then
  loc_15CC101:   Exit Sub
  loc_15CC102: End If
  loc_15CC102: var_B8 = 1
  loc_15CC128: var_A4 = CStr(Me.FGrid.TextMatrix))
  loc_15CC139: If (var_A4 = vbNullString) Then
  loc_15CC142:   Call 0.Method_arg_50 (var_A4, CVar(CLng(&HC)))
  loc_15CC163:   MsgBox("Please Fill Item Detail", &H40, CVar(var_A4), var_118, var_128)
  loc_15CC186:   Me.FGrid.Row = 1
  loc_15CC192:   Set var_98 = Me.FGrid
  loc_15CC1A3:   Exit Sub
  loc_15CC1A4: End If
  loc_15CC1C9: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_12C 'Integer
  loc_15CC1D3:   var_B8 = CVar(CLng(var_92)) 'Long
  loc_15CC1DB:   var_D8 = CVar(CLng(1)) 'Long
  loc_15CC206:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_15CC20D:     var_B8 = CVar(CLng(var_92)) 'Long
  loc_15CC215:     var_D8 = CVar(CLng(3)) 'Long
  loc_15CC245:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_15CC253:       var_108 = "Required Data"
  loc_15CC26D:       MsgBox(CVar("Quantity in Row " & CStr(var_92)), &H40, var_108, var_118, var_128)
  loc_15CC293:       Me.FGrid.Row = CVar(CLng(var_92))
  loc_15CC29F:       Set var_98 = Me.FGrid
  loc_15CC2B0:       Exit Sub
  loc_15CC2B1:     End If
  loc_15CC2B4:   Else
  loc_15CC2B8:     var_B8 = CVar(CLng(var_92)) 'Long
  loc_15CC2C0:     var_D8 = CVar(CLng(1)) 'Long
  loc_15CC2CF:     var_F8 = Me.FGrid.TextMatrix)
  loc_15CC2EB:     If (CStr(var_F8) = vbNullString) Then
  loc_15CC2F2:       var_B8 = CVar(CLng(var_92)) 'Long
  loc_15CC2FB:       Set var_98 = Me.FGrid
  loc_15CC30C:     End If
  loc_15CC30C:   End If
  loc_15CC30F: Next var_12C 'Integer
  loc_15CC318: Set var_98 = Me.TopCtrl1
  loc_15CC31E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15CC337: If (CStr() = "Add") Then
  loc_15CC340:   var_C8 = 0
  loc_15CC360:   var_A4 = "Select count(*) from Indent where DocID='" & global_112
  loc_15CC370:   unk_4E71D6.Execute var_A4 & "'", var_F8, -1
  loc_15CC378:   var_98 = var_98.Fields
  loc_15CC380:   var_C8 = var_9C.Item(var_9C)
  loc_15CC388:   var_A0 = var_A0.Value
  loc_15CC3AF:   If (var_108 > 0) Then
  loc_15CC3BA:     Call Proc_88_54_135F87C(&HFF, var_A4)
  loc_15CC3CD:     Set var_98 = Me.Txt
  loc_15CC3D3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_9C)
  loc_15CC3DB:     var_9C.Text = var_A4
  loc_15CC3EA:     Exit Sub
  loc_15CC3EB:   End If
  loc_15CC3EE: Else
  loc_15CC413:   var_F8 = Me.Fields.Item("SearchCode").Value
  loc_15CC422:   global_112 = CStr(var_F8)
  loc_15CC433: End If
  loc_15CC43C: unk_4E71D6.BeginTrans var_134
  loc_15CC443: var_8A = &HFF
  loc_15CC46D: unk_4E71D6.Execute "Delete From Indent1 Where DocID='" & global_112 & "'", var_F8, -1
  loc_15CC4A6: unk_4E71D6.Execute "Delete From Indent Where DocID='" & global_112 & "'", var_F8, -1
  loc_15CC4BF: Set var_98 = Me.LblVPrefix
  loc_15CC4D8: Set var_9C = Me.Txt
  loc_15CC4DE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_15C, var_98)
  loc_15CC4E6: var_98 = var_A0.Tag
  loc_15CC4F9: Set var_16C = Me.Txt
  loc_15CC4FF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170, var_174)
  loc_15CC507: var_8A = var_170.Text
  loc_15CC514: var_438 = Val(var_174)
  loc_15CC522: Set var_184 = Me.Txt
  loc_15CC528: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_15CC537: Proc_6_7_F26918(var_108, CVar(var_188))
  loc_15CC572: Set var_1FC = Me.Txt
  loc_15CC578: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_200, var_204, 1)
  loc_15CC580: 1 = var_200.Text
  loc_15CC593: Proc_6_7_F26918(var_2A4, Date)
  loc_15CC59C: Set var_2D8 = Me.TopCtrl1
  loc_15CC5A2: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_438)
  loc_15CC5C5: var_2EC = CStr(var_2E8)
  loc_15CC5E7: Set var_380 = Me.Txt
  loc_15CC5ED: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_384)
  loc_15CC61C: var_138 = "Insert Into Indent(" & "DocID,Vprefix,Site_Code,VType," & "VNo,Vdate,VTime," & "Remarks,U_Name,U_EntDt,U_AE,Department,LogSite_Code) "
  loc_15CC66C: var_178 = var_138 & "Values(" & "'" & global_112 & "','" & var_98.Caption & "','" & MemVar_1F95070 & "','" & var_15C & "'," & vbNullString
  loc_15CC67F: var_118 = CVar(var_178 & CStr(var_438) & ",") 'String
  loc_15CC6D4: var_2B4 = var_118 & var_108 & ",'" & Format(Time, "HH:mm") & "'," & "'" & CVar(var_204) & "','" & CVar(MemVar_1F950C8) & "'," & var_2A4 
  loc_15CC721: unk_4E71D6.Execute CStr(var_2B4 & ",'" & IIf((var_2EC = "Add"), "A", "E") & "','" & CVar(var_384.Tag) & "','" & CVar(MemVar_1F95078) & "')"), var_42C, -1
  loc_15CC7D8: For var_43C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_43C 'Integer
  loc_15CC7E2:   var_B8 = CVar(CLng(var_92)) 'Long
  loc_15CC7EA:   var_D8 = CVar(CLng(3)) 'Long
  loc_15CC81A:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_15CC821:     var_B8 = CVar(CLng(var_92)) 'Long
  loc_15CC832:     Set var_98 = Me.FGrid
  loc_15CC84B:     var_438 = Val(CStr(var_98.TextMatrix)))
  loc_15CC855:     Set var_9C = Me.LblVPrefix
  loc_15CC86E:     Set var_A0 = Me.Txt
  loc_15CC874:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_16C, var_178, var_438, CVar(CLng(0)), var_B8)
  loc_15CC87C:     var_D8 = var_16C.Tag
  loc_15CC88F:     Set var_170 = Me.Txt
  loc_15CC895:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_184, var_2EC, var_B8)
  loc_15CC89D:     1 = var_184.Text
  loc_15CC8AA:     var_AD0 = Val(var_2EC)
  loc_15CC8B8:     Set var_188 = Me.Txt
  loc_15CC8BE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1FC, var_AD0)
  loc_15CC8C6:     var_108 = CVar(var_1FC) 'Address
  loc_15CC8CD:     Proc_6_7_F26918(var_118, var_108)
  loc_15CC8D6:     var_254 = CVar(CLng(var_92)) 'Long
  loc_15CC8DE:     var_2C4 = CVar(CLng(&HC)) 'Long
  loc_15CC8FD:     var_32C = CVar(CLng(var_92)) 'Long
  loc_15CC905:     var_3B8 = CVar(CLng(3)) 'Long
  loc_15CC92E:     var_454 = CVar(CLng(var_92)) 'Long
  loc_15CC936:     var_474 = CVar(CLng(4)) 'Long
  loc_15CC955:     var_4B4 = CVar(CLng(var_92)) 'Long
  loc_15CC95D:     var_4D4 = CVar(CLng(8)) 'Long
  loc_15CC986:     var_518 = CVar(CLng(var_92)) 'Long
  loc_15CC98E:     var_538 = CVar(CLng(9)) 'Long
  loc_15CC9B0:     var_AE8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15CC9E1:     var_AF0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15CC9FF:     var_3A8 = Me.FGrid.TextMatrix)
  loc_15CCA19:     Proc_6_7_F26918(var_698, Date, var_3A8, CVar(CLng(2)), CVar(CLng(var_92)), var_AF0, CVar(CLng(&HB)), CVar(CLng(var_92)))
  loc_15CCA22:     Set var_6CC = Me.TopCtrl1
  loc_15CCA28:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AE8)
  loc_15CCA63:     var_780 = CVar(CLng(var_92)) 'Long
  loc_15CCA6B:     var_7A0 = CVar(CLng(5)) 'Long
  loc_15CCA94:     var_818 = CVar(CLng(var_92)) 'Long
  loc_15CCA9C:     var_838 = CVar(CLng(6)) 'Long
  loc_15CCAC5:     var_8B0 = CVar(CLng(var_92)) 'Long
  loc_15CCACD:     var_8D0 = CVar(CLng(7)) 'Long
  loc_15CCAEC:     var_984 = CVar(CLng(var_92)) 'Long
  loc_15CCAF4:     var_9A4 = CVar(CLng(&HA)) 'Long
  loc_15CCB1D:     var_A1C = CVar(CLng(var_92)) 'Long
  loc_15CCB25:     var_A3C = CVar(CLng(&HD)) 'Long
  loc_15CCB62:     var_138 = "Insert Into Indent1(" & "DocID,Sno,VPrefix,Site_Code,VType," & "VNO,VDate,Item,Qty,Unit," & "Rate,Amount,Total,Specification,"
  loc_15CCB81:     var_148 = var_138 & "U_Name,U_EntDt,U_AE,ConvFactor,WtQty,WtUnit,LogSite_Code,TaxAmt,TaxStru) " & "Values(" & "'" & global_112
  loc_15CCBD8:     var_440 = var_148 & "'," & CStr(var_438) & ",'" & var_9C.Caption & "','" & MemVar_1F95070 & "','" & var_178 & "'," & vbNullString & CStr(var_AD0)
  loc_15CCBEE:     var_1A8 = CVar(var_440 & ",") & var_118 & ",'" 
  loc_15CCBF6:     var_1C8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15CCC33:     var_2A4 = var_1A8 & var_1C8 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & vbNullString 
  loc_15CCC7A:     var_3E8 = var_2A4 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_AE8) & "," & CVar(var_AF0) & ",'" & CVar(CStr(var_3A8)) 
  loc_15CCCCA:     var_7E8 = var_3E8 & "'," & "'" & CVar(MemVar_1F950C8) & "'," & var_698 & ",'" & IIf((CStr(var_6DC) = "Add"), "A", "E") & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_15CCD05:     var_954 = var_7E8 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(MemVar_1F95078) 
  loc_15CCD44:     unk_4E71D6.Execute CStr(var_954 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "')"), var_AC4, -1
  loc_15CCE40:   End If
  loc_15CCE43: Next var_43C 'Integer
  loc_15CCE4C: Set var_98 = Me.TopCtrl1
  loc_15CCE52: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15CCE6B: If (CStr() = "Add") Then
  loc_15CCE72:   Set var_88 = New 
  loc_15CCE7D:   Me.TopCtrl1.CursorLocation = 3
  loc_15CCE90:   Set var_98 = Me.Txt
  loc_15CCE96:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_15CCEA6:   var_F8 = CVar(var_9C.Text) 'String
  loc_15CCEAC:   Proc_6_7_F26918(var_108)
  loc_15CCECF:   var_A4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_15CCEF5:   var_118 = CVar(var_A4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_120 & "' And VP.Date_From<=") 'String
  loc_15CCF0C:   var_88.Open var_118 & var_108 & " Order By VP.Date_From DESC", CVar(MemVar_1F95044), 2
  loc_15CCF46:   If (var_88.RecordCount > 0) Then
  loc_15CCF57:     Set var_98 = Me.Txt
  loc_15CCF5D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_A4)
  loc_15CCF65:     3 = var_9C.Text
  loc_15CCF72:     var_438 = Val(var_A4)
  loc_15CCF7B:     var_B8 = "V_Type"
  loc_15CCF97:     var_F8 = var_88.Fields.Item(var_B8).Value
  loc_15CCFC2:     Proc_6_7_F26918(var_1A8, CVar(var_88.Fields.Item("Date_From")), var_438)
  loc_15CCFF5:     var_144 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_438) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_15CD027:     unk_4E71D6.Execute CStr(CVar(var_144 & MemVar_1F95078 & "') and V_Type='") & var_F8 & "' and Date_From=" & var_1A8), var_1C8, -1
  loc_15CD061:   End If
  loc_15CD061: End If
  loc_15CD067: unk_4E71D6.CommitTrans
  loc_15CD06E: var_8A = 0
  loc_15CD07F: Set var_98 = Me.Txt
  loc_15CD085: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_9C, var_A4, var_8A)
  loc_15CD08D: var_188 = var_9C.Text
  loc_15CD0AA: Me.Requery -1
  loc_15CD0D4: Me.Find "SearchCode ='" & "SearchCode ='" & var_A4 & "'", 0, 1
  loc_15CD0E4: Set var_98 = Me.TopCtrl1
  loc_15CD0EA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B8)
  loc_15CD0F2: var_A4 = CStr(-1)
  loc_15CD103: If ("SearchCode ='" & var_A4 = "Add") Then
  loc_15CD106:   Call TopCtrl1_UnknownEvent_A()
  loc_15CD10B:   Exit Sub
  loc_15CD10C: End If
  loc_15CD12F: Call Proc_88_51_F3447C(Proc_5_1_100EC1C("INI", Me), global_56)
  loc_15CD13F: Set var_88 = Nothing
  loc_15CD142: Exit Sub
  loc_15CD143: ' Referenced from: 15CBFD8
  loc_15CD149: If (var_8A = &HFF) Then
  loc_15CD152:   unk_4E71D6.RollbackTrans
  loc_15CD157: End If
  loc_15CD157: Proc_6_60_E63754(var_F8)
  loc_15CD15C: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F44134
  'Data Table: 4E71B8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4402B: Me.DGDepart.Visible = False
  loc_F4404A: If (Me.RecordCount > 0) Then
  loc_F44089:   Set var_B4 = Me.Txt
  loc_F4408F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(6), var_B8)
  loc_F44097:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F440CA:   var_B0 = Me.Fields.Item("Code")
  loc_F440E9:   Set var_B4 = Me.Txt
  loc_F440EF:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(6), var_B8)
  loc_F440F7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4410D: End If
  loc_F44118: Set var_A8 = Me.Txt
  loc_F4411E: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(6))
  loc_F44126: var_B0.SetFocus
  loc_F44132: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_1F 'E6FE24
  'Data Table: 4E71B8
  Dim DGDepart_UnknownEvent_1F0F4 As String
  loc_E6FDE2: Proc_6_153_E91D24(Me.DGDepart, arg_14)
  loc_E6FE13: Proc_6_138_106E830(Me.DGDepart, global_68, 0)
  loc_E6FE21: Exit Sub
  loc_E6FE22: DGDepart_UnknownEvent_1F0F4 = Me.FGPoint
End Sub

Private Sub DGItem_UnknownEvent_9 'F1B96C
  'Data Table: 4E71B8
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_F1B88F: If (Me.RecordCount > 0) Then
  loc_F1B8AF:   var_A0 = Me.Fields.Item("Name")
  loc_F1B8CC:   Set var_A4 = Me.TxtGrid
  loc_F1B8D2:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_A8)
  loc_F1B8DA:   var_A8.Text = CStr(var_A0.Value)
  loc_F1B8F0: End If
  loc_F1B8FD: Call Proc_88_49_1459D68(0, 0)
  loc_F1B90E: Set var_8C = Me.TxtGrid
  loc_F1B914: Call 0.Method_DGItem_UnknownEvent_90 (0, var_A0)
  loc_F1B92E: If (var_A0.Visible = &HFF) Then
  loc_F1B93A:   Set var_8C = Me.TxtGrid
  loc_F1B940:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_A0)
  loc_F1B948:   var_A0.SetFocus
  loc_F1B954: End If
  loc_F1B963: Me.DGItem.Visible = False
  loc_F1B96B: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E71F18
  'Data Table: 4E71B8
  loc_E71ED6: Proc_6_153_E91D24(Me.DGItem, arg_14)
  loc_E71EED: Set var_8C = Me.FGPoint
  loc_E71F07: Proc_6_138_106E830(Me.DGItem, global_52, 0)
  loc_E71F15: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E6464C
  'Data Table: 4E71B8
  loc_E6461C: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E6461F:   Call DGItem_UnknownEvent_9()
  loc_E64624: End If
  loc_E64640: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_E64643:   Call DGDepart_UnknownEvent_9()
  loc_E64648: End If
  loc_E64648: Exit Sub
  loc_E64649: DOC
End Sub

Public Sub SEARCHBACK(MyValue) 'E96C38
  'Data Table: 4E71B8
  Dim Me As Recordset15
  loc_E96BC6: On Error Goto loc_E96C2F
  loc_E96BCF: Me.MoveFirst
  loc_E96BF9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96C21: Proc_5_0_1107AD0(&HFF, Me, global_56)
  loc_E96C29: Call Proc_88_52_150F764(0)
  loc_E96C2E: Exit Sub
  loc_E96C2F: ' Referenced from: E96BC6
  loc_E96C2F: Proc_6_60_E63754(var_A0)
  loc_E96C34: Exit Sub
End Sub

Public Sub Proc_88_47_131F038
  'Data Table: 4E71B8
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_118 As String
  Dim var_12C As MSHFlexGrid
  loc_131E8CE: Set var_88 = Me.Txt
  loc_131E8D4: Call 0.Method_Proc_88_47_131F0380 (CInt(6), var_8C)
  loc_131E8F3: Me.DGDepart.Left = CVar(var_8C.Left)
  loc_131E90F: Set var_B4 = Me.Txt
  loc_131E915: Call 0.Method_Proc_88_47_131F0380 (CInt(6), var_B8)
  loc_131E930: Set var_88 = Me.Txt
  loc_131E936: Call 0.Method_Proc_88_47_131F0380 (CInt(6), var_8C)
  loc_131E94E: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_131E95D: Me.DGDepart.Top = CVar(var_8C.Left)
  loc_131E9A6: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_131E9BF: Set var_E4 = Me.FGrid
  loc_131E9DD: global_128 = CStr(CLng(Me.FGrid.BackColor))
  loc_131E9F6: var_E4.Width = CVar(CDbl(13250))
  loc_131EA07: var_E4.Left = CVar(CDbl(200))
  loc_131EA18: var_E4.Top = CVar(CDbl(1600))
  loc_131EA29: var_E4.Cols = &HE
  loc_131EA3A: var_E4.Height = CVar(CDbl(5160))
  loc_131EA4B: var_E4.RowHeightMin = 0
  loc_131EA53: var_A0 = CVar(CLng(0)) 'Long
  loc_131EA58: var_F8 = &H190
  loc_131EA64: LateIdCallSt
  loc_131EA6C: var_A0 = 0
  loc_131EA78: var_F8 = CVar(CLng(1)) 'Long
  loc_131EA7D: var_118 = "Item Name"
  loc_131EA86: LateIdCallSt
  loc_131EA91: var_A0 = CVar(CLng(1)) 'Long
  loc_131EA9C: var_F8 = CVar(CInt(1)) 'Integer
  loc_131EAA3: LateIdCallSt
  loc_131EAAE: var_A0 = CVar(CLng(1)) 'Long
  loc_131EAB3: var_F8 = &HBB8
  loc_131EABF: LateIdCallSt
  loc_131EAC7: var_A0 = 0
  loc_131EAD3: var_F8 = CVar(CLng(2)) 'Long
  loc_131EAD8: var_118 = "Specification"
  loc_131EAE1: LateIdCallSt
  loc_131EAEC: var_A0 = CVar(CLng(2)) 'Long
  loc_131EAF7: var_F8 = CVar(CInt(1)) 'Integer
  loc_131EAFE: LateIdCallSt
  loc_131EB09: var_A0 = CVar(CLng(2)) 'Long
  loc_131EB0E: var_F8 = &H6EA
  loc_131EB1A: LateIdCallSt
  loc_131EB22: var_A0 = 0
  loc_131EB2E: var_F8 = CVar(CLng(3)) 'Long
  loc_131EB33: var_118 = "Qty"
  loc_131EB3C: LateIdCallSt
  loc_131EB47: var_A0 = CVar(CLng(3)) 'Long
  loc_131EB52: var_F8 = CVar(CInt(7)) 'Integer
  loc_131EB59: LateIdCallSt
  loc_131EB64: var_A0 = CVar(CLng(3)) 'Long
  loc_131EB6F: var_F8 = CVar(CInt(7)) 'Integer
  loc_131EB76: LateIdCallSt
  loc_131EB81: var_A0 = CVar(CLng(3)) 'Long
  loc_131EB86: var_F8 = &H3E8
  loc_131EB92: LateIdCallSt
  loc_131EB9A: var_A0 = 0
  loc_131EBA6: var_F8 = CVar(CLng(4)) 'Long
  loc_131EBAB: var_118 = "Unit"
  loc_131EBB4: LateIdCallSt
  loc_131EBBF: var_A0 = CVar(CLng(4)) 'Long
  loc_131EBCA: var_F8 = CVar(CInt(1)) 'Integer
  loc_131EBD1: LateIdCallSt
  loc_131EBDC: var_A0 = CVar(CLng(4)) 'Long
  loc_131EBE1: var_F8 = &H352
  loc_131EBED: LateIdCallSt
  loc_131EBF5: var_A0 = 0
  loc_131EC01: var_F8 = CVar(CLng(5)) 'Long
  loc_131EC06: var_118 = "Conv.Factor"
  loc_131EC0F: LateIdCallSt
  loc_131EC1A: var_A0 = CVar(CLng(5)) 'Long
  loc_131EC25: var_F8 = CVar(CInt(7)) 'Integer
  loc_131EC2C: LateIdCallSt
  loc_131EC37: var_A0 = CVar(CLng(5)) 'Long
  loc_131EC42: var_F8 = CVar(CInt(7)) 'Integer
  loc_131EC49: LateIdCallSt
  loc_131EC54: var_A0 = CVar(CLng(5)) 'Long
  loc_131EC59: var_F8 = &H19
  loc_131EC65: LateIdCallSt
  loc_131EC6D: var_A0 = 0
  loc_131EC79: var_F8 = CVar(CLng(6)) 'Long
  loc_131EC7E: var_118 = "Wt.Qty"
  loc_131EC87: LateIdCallSt
  loc_131EC92: var_A0 = CVar(CLng(6)) 'Long
  loc_131EC9D: var_F8 = CVar(CInt(7)) 'Integer
  loc_131ECA4: LateIdCallSt
  loc_131ECAF: var_A0 = CVar(CLng(6)) 'Long
  loc_131ECBA: var_F8 = CVar(CInt(7)) 'Integer
  loc_131ECC1: LateIdCallSt
  loc_131ECCC: var_A0 = CVar(CLng(6)) 'Long
  loc_131ECD1: var_F8 = &H3E8
  loc_131ECDD: LateIdCallSt
  loc_131ECE5: var_A0 = 0
  loc_131ECF1: var_F8 = CVar(CLng(7)) 'Long
  loc_131ECF6: var_118 = "Wt.Unit"
  loc_131ECFF: LateIdCallSt
  loc_131ED0A: var_A0 = CVar(CLng(7)) 'Long
  loc_131ED15: var_F8 = CVar(CInt(1)) 'Integer
  loc_131ED1C: LateIdCallSt
  loc_131ED27: var_A0 = CVar(CLng(7)) 'Long
  loc_131ED2C: var_F8 = &H352
  loc_131ED38: LateIdCallSt
  loc_131ED40: var_A0 = 0
  loc_131ED4C: var_F8 = CVar(CLng(8)) 'Long
  loc_131ED51: var_118 = "Rate"
  loc_131ED5A: LateIdCallSt
  loc_131ED65: var_A0 = CVar(CLng(8)) 'Long
  loc_131ED70: var_F8 = CVar(CInt(7)) 'Integer
  loc_131ED77: LateIdCallSt
  loc_131ED82: var_A0 = CVar(CLng(8)) 'Long
  loc_131ED8D: var_F8 = CVar(CInt(7)) 'Integer
  loc_131ED94: LateIdCallSt
  loc_131ED9F: var_A0 = CVar(CLng(8)) 'Long
  loc_131EDA4: var_F8 = &H320
  loc_131EDB0: LateIdCallSt
  loc_131EDB8: var_A0 = 0
  loc_131EDC4: var_F8 = CVar(CLng(&HA)) 'Long
  loc_131EDC9: var_118 = "Tax Amt."
  loc_131EDD2: LateIdCallSt
  loc_131EDDD: var_A0 = CVar(CLng(&HA)) 'Long
  loc_131EDE8: var_F8 = CVar(CInt(7)) 'Integer
  loc_131EDEF: LateIdCallSt
  loc_131EDFA: var_A0 = CVar(CLng(&HA)) 'Long
  loc_131EE05: var_F8 = CVar(CInt(7)) 'Integer
  loc_131EE0C: LateIdCallSt
  loc_131EE17: var_A0 = CVar(CLng(&HA)) 'Long
  loc_131EE1C: var_F8 = &H3B6
  loc_131EE28: LateIdCallSt
  loc_131EE30: var_A0 = 0
  loc_131EE3C: var_F8 = CVar(CLng(9)) 'Long
  loc_131EE41: var_118 = "Goods Amt."
  loc_131EE4A: LateIdCallSt
  loc_131EE55: var_A0 = CVar(CLng(9)) 'Long
  loc_131EE60: var_F8 = CVar(CInt(7)) 'Integer
  loc_131EE67: LateIdCallSt
  loc_131EE72: var_A0 = CVar(CLng(9)) 'Long
  loc_131EE7D: var_F8 = CVar(CInt(7)) 'Integer
  loc_131EE84: LateIdCallSt
  loc_131EE8F: var_A0 = CVar(CLng(9)) 'Long
  loc_131EE94: var_F8 = &H4B0
  loc_131EEA0: LateIdCallSt
  loc_131EEA8: var_A0 = 0
  loc_131EEB4: var_F8 = CVar(CLng(&HB)) 'Long
  loc_131EEB9: var_118 = "Total"
  loc_131EEC2: LateIdCallSt
  loc_131EECD: var_A0 = CVar(CLng(&HB)) 'Long
  loc_131EED8: var_F8 = CVar(CInt(7)) 'Integer
  loc_131EEDF: LateIdCallSt
  loc_131EEEA: var_A0 = CVar(CLng(&HB)) 'Long
  loc_131EEF5: var_F8 = CVar(CInt(7)) 'Integer
  loc_131EEFC: LateIdCallSt
  loc_131EF07: var_A0 = CVar(CLng(&HB)) 'Long
  loc_131EF0C: var_F8 = &H44C
  loc_131EF18: LateIdCallSt
  loc_131EF20: var_A0 = 0
  loc_131EF2C: var_F8 = CVar(CLng(&HC)) 'Long
  loc_131EF31: var_118 = "Item Code"
  loc_131EF3A: LateIdCallSt
  loc_131EF45: var_A0 = CVar(CLng(&HC)) 'Long
  loc_131EF50: var_F8 = CVar(CInt(1)) 'Integer
  loc_131EF57: LateIdCallSt
  loc_131EF62: var_A0 = CVar(CLng(&HC)) 'Long
  loc_131EF67: var_F8 = 0
  loc_131EF73: LateIdCallSt
  loc_131EF7B: var_A0 = 0
  loc_131EF87: var_F8 = CVar(CLng(&HD)) 'Long
  loc_131EF8C: var_118 = "Tax Stru"
  loc_131EF95: LateIdCallSt
  loc_131EFA0: var_A0 = CVar(CLng(&HD)) 'Long
  loc_131EFAB: var_F8 = CVar(CInt(1)) 'Integer
  loc_131EFB2: LateIdCallSt
  loc_131EFBD: var_A0 = CVar(CLng(&HD)) 'Long
  loc_131EFC2: var_F8 = 0
  loc_131EFCE: LateIdCallSt
  loc_131EFD8: Set var_E4 = Nothing 
  loc_131EFE0: Set var_12C = Me.FGCat
  loc_131EFF7: global_128 = CStr(CLng(var_12C.BackColor))
  loc_131F004: var_A0 = CVar(CLng(3)) 'Long
  loc_131F009: var_F8 = &H7D0
  loc_131F015: LateIdCallSt
  loc_131F029: var_12C.Cols = 7
  loc_131F030: Set var_12C = Nothing 
  loc_131F034: Exit Sub
End Sub

Public Sub Proc_88_48_11C93D4(arg_C) '11C93D4
  'Data Table: 4E71B8
  Dim var_8C As Recordset15
  loc_11C8F61: Set var_8C = arg_C 
  loc_11C8F89: var_8C.Fields.Append "Docid", &HC8, &H15
  loc_11C8FB5: var_8C.Fields.Append "IndNo", 3, 0
  loc_11C8FE1: var_8C.Fields.Append "VType", &HC8, 8
  loc_11C900D: var_8C.Fields.Append "IndDate", &H85, 0
  loc_11C9039: var_8C.Fields.Append "Remark", &HC8, &H32
  loc_11C9065: var_8C.Fields.Append "Sno", 3, 0
  loc_11C9091: var_8C.Fields.Append "ItemCode", &HC8, 8
  loc_11C90BD: var_8C.Fields.Append "ItemName", &HC8, &H50
  loc_11C90E9: var_8C.Fields.Append "SaleIssueUnit", &HC8, &HA
  loc_11C9115: var_8C.Fields.Append "PurchaseUnit", &HC8, &HA
  loc_11C9141: var_8C.Fields.Append "Specification", &HC8, &H23
  loc_11C916D: var_8C.Fields.Append "Qty", 5, 0
  loc_11C9199: var_8C.Fields.Append "Rate", 5, 0
  loc_11C91C5: var_8C.Fields.Append "Amount", 5, 0
  loc_11C91F1: var_8C.Fields.Append "QtyPass", 5, 0
  loc_11C921D: var_8C.Fields.Append "Remarks", &HC8, &HFF
  loc_11C9249: var_8C.Fields.Append "NoDays", 5, 0
  loc_11C9275: var_8C.Fields.Append "EmpNameLine", &HC8, &H23
  loc_11C92A1: var_8C.Fields.Append "Employee", &HC8, &H23
  loc_11C92CD: var_8C.Fields.Append "Department", &HC8, &H19
  loc_11C92F9: var_8C.Fields.Append "Description", &HC8, &H1E
  loc_11C9325: var_8C.Fields.Append "DepNameLine", &HC8, &H19
  loc_11C9351: var_8C.Fields.Append "MachName", &HC8, &H19
  loc_11C937D: var_8C.Fields.Append "CurStk", 5, 0
  loc_11C938D: var_8C.CursorType = 3
  loc_11C939A: var_8C.LockType = 3
  loc_11C93B9: var_8C.Open var_A0, var_B0, -1
  loc_11C93C0: Set var_8C = Nothing 
  loc_11C93C7: Set var_88 = arg_C 
  loc_11C93CB: Proc_88_48_11C93D4 = -1
  loc_11C93D1: VCallFPR8
End Sub

Public Sub Proc_88_49_1459D68
  'Data Table: 4E71B8
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_120 As Variant
  Dim var_148 As MSHFlexGrid
  Dim var_B0 As String
  Dim var_88 As Integer
  Dim var_184 As Double
  Dim var_1A0 As Variant
  Dim var_1A4 As MSHFlexGrid
  loc_14591FF: var_A0 = CLng(Me.FGrid.Col)
  loc_145920F: If (var_A0 = CLng(1)) Then
  loc_1459232:   var_A6 = Me.EOF
  loc_145925F:   Set var_8C = Me.TxtGrid
  loc_1459265:   Call 0.Method_Proc_88_49_1459D680 (0, var_AC, var_B0)
  loc_145926D:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_1459285:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_145929B:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14592A3:     var_E0 = CVar(CLng(1)) 'Long
  loc_14592A8:     var_100 = vbNullString
  loc_14592B2:     Set var_AC = Me.FGrid
  loc_14592B8:     LateIdCallSt
  loc_14592DD:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14592E5:     var_E0 = CVar(CLng(&HC)) 'Long
  loc_14592EA:     var_100 = vbNullString
  loc_14592F4:     Set var_AC = Me.FGrid
  loc_14592FA:     LateIdCallSt
  loc_145933C:     LateIdCallSt
  loc_1459376:     Proc_6_51_EF4580(var_120, 0, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, vbNullString, CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)))
  loc_145937F:     var_140 = CVar(CStr(var_120)) 'String
  loc_1459387:     Set var_AC = Me.FGrid
  loc_145938D:     LateIdCallSt
  loc_14593BA:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14593C2:     var_E0 = CVar(CLng(7)) 'Long
  loc_14593C7:     var_100 = vbNullString
  loc_14593D1:     Set var_AC = Me.FGrid
  loc_14593D7:     LateIdCallSt
  loc_14593FC:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1459404:     var_E0 = CVar(CLng(&HD)) 'Long
  loc_1459409:     var_100 = vbNullString
  loc_1459413:     Set var_AC = Me.FGrid
  loc_1459419:     LateIdCallSt
  loc_145942E:   Else
  loc_1459431:     Call Proc_88_55_FC93C4(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_145943C:     If (var_A6 = 0) Then
  loc_1459444:       Proc_88_49_1459D68 = 0
  loc_145944A:     End If
  loc_145946D:     var_C0 = "Name"
  loc_1459484:     var_AC = Me.Fields.Item(var_C0)
  loc_1459495:     var_130 = CVar(Proc_6_38_E69628(CVar(var_AC), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_C0, var_AC, var_140)) 'String
  loc_14594A3:     LateIdCallSt
  loc_1459508:     var_130 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Code")), CVar(CLng(&HC)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_130)) 'String
  loc_1459516:     LateIdCallSt
  loc_145953A:     var_120 = Me.FGrid.Row
  loc_145957B:     var_130 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(4)), CVar(CLng(var_120)), Me.FGrid, var_130)) 'String
  loc_1459589:     LateIdCallSt
  loc_14595AD:     var_130 = Me.FGrid.Row
  loc_14595EC:     Proc_6_51_EF4580(var_120, CVar(Me.Fields.Item("COnvFactor")), CVar(CLng(5)), CVar(CLng(var_130)), Me.FGrid, var_130)
  loc_1459603:     LateIdCallSt
  loc_145966A:     var_130 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("WtUnit")), CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Me.FGrid.Row)))) 'String
  loc_1459678:     LateIdCallSt
  loc_14596DD:     var_130 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_130)) 'String
  loc_14596E5:     Set var_148 = Me.FGrid
  loc_14596EB:     LateIdCallSt
  loc_145977A:     LateIdCallSt
  loc_1459798:     Call Proc_88_56_11CDA80(Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))), 1, 1, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)
  loc_145979D:   End If
  loc_14597B0:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14597B8:   var_E0 = CVar(CLng(&HC)) 'Long
  loc_14597C1:   Set var_AC = Me.FGrid
  loc_14597C7:   var_120 = var_AC.TextMatrix)
  loc_14597DD:   var_130 = Me.FGrid.Row
  loc_14597FD:   var_140 = Me.FGrid.TextMatrix)
  loc_1459808:   var_B0 = CStr(var_140)
  loc_145983B:   var_88 = Proc_96_27_11F256C(CStr(var_120), Val(var_B0), MemVar_1F95070, MemVar_1F95078 & "PURC", global_80, Val(var_B0), CVar(CLng(3)), CVar(CLng(var_130)))
  loc_145986D:   Me.LblCurStockStr.Caption = global_80
  loc_1459878: Else
  loc_145987F:   If Not (var_A0 = CLng(3)) Then
  loc_1459889:     If (var_A0 = CLng(5)) Then
  loc_145988C:     End If
  loc_14598A9:     If (CLng(Me.FGrid.Col) = CLng(5)) Then
  loc_14598B8:       Set var_8C = Me.TxtGrid
  loc_14598BE:       Call 0.Method_Proc_88_49_1459D680 (0, var_AC, var_B0, var_88, var_120, var_E0)
  loc_14598C6:       var_C0 = var_AC.Text
  loc_14598D3:       var_184 = Val(var_B0)
  loc_14598EB:       If (global_72 <> CDbl(var_184)) Then
  loc_145991D:         If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_120, var_130, var_140) = 7) Then
  loc_1459928:           var_B0 = CStr(global_72)
  loc_1459934:           Set var_8C = Me.TxtGrid
  loc_145993A:           Call 0.Method_Proc_88_49_1459D680 (0, var_AC, var_B0, var_184, var_130)
  loc_1459942:           var_AC.Text = var_AC
  loc_1459951:         End If
  loc_1459951:       End If
  loc_1459951:     End If
  loc_145995D:     Set var_8C = Me.TxtGrid
  loc_1459963:     Call 0.Method_Proc_88_49_1459D680 (0, var_AC, var_B0)
  loc_145996B:     var_100 = var_AC.Text
  loc_145998E:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14599A6:     var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_14599D3:     var_1A0 = CVar(CStr(Format(CVar(Val(var_B0)), "0.000"))) 'String
  loc_14599DB:     Set var_1A4 = Me.FGrid
  loc_14599E1:     LateIdCallSt
  loc_1459A1B:     var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1459A45:     var_184 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1459AB9:     LateIdCallSt
  loc_1459AE6:     Call Proc_88_56_11CDA80(Me.FGrid, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_184))), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_184, CVar(CLng(5)))
  loc_1459AFE:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1459B06:     var_E0 = CVar(CLng(&HC)) 'Long
  loc_1459B0F:     Set var_AC = Me.FGrid
  loc_1459B15:     var_120 = var_AC.TextMatrix)
  loc_1459B56:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_1459B89:     var_88 = Proc_96_27_11F256C(CStr(var_120), Val(var_B0), MemVar_1F95070, MemVar_1F95078 & "PURC", global_80, Val(var_B0), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_1459BBB:     Me.LblCurStockStr.Caption = global_80
  loc_1459BC6:   Else
  loc_1459BCD:     If (var_A0 = CLng(8)) Then
  loc_1459BDC:       Set var_8C = Me.TxtGrid
  loc_1459BE2:       Call 0.Method_Proc_88_49_1459D680 (0, var_AC, var_B0, var_88, var_120, var_E0)
  loc_1459BEA:       var_C0 = var_AC.Text
  loc_1459BF7:       var_184 = Val(var_B0)
  loc_1459C60:       LateIdCallSt
  loc_1459C87:       Call Proc_88_56_11CDA80(Me.FGrid, CVar(CStr(Format(CVar(var_184), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_1459C8F:     Else
  loc_1459C96:       If (var_A0 = CLng(2)) Then
  loc_1459CD5:         Set var_8C = Me.TxtGrid
  loc_1459CDB:         Call 0.Method_Proc_88_49_1459D680 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_184)
  loc_1459CE3:         var_100 = var_AC.Text
  loc_1459CEB:         var_130 = CVar(var_B0) 'String
  loc_1459CF3:         Set var_1A4 = Me.FGrid
  loc_1459CF9:         LateIdCallSt
  loc_1459D17:       End If
  loc_1459D17:     End If
  loc_1459D17:   End If
  loc_1459D17: End If
  loc_1459D22: If (arg_10 = 0) Then
  loc_1459D29:   Set var_8C = Me.FGrid
  loc_1459D45:   Set var_8C = Me.TxtGrid
  loc_1459D4B:   Call 0.Method_Proc_88_49_1459D680 (0, var_AC, 0, FGrid.DispID_8001, &HFF, var_1A4)
  loc_1459D53:   var_AC.Visible = var_130
  loc_1459D5F: End If
  loc_1459D5F: Proc_88_49_1459D68 = var_1A4
End Sub

Public Sub Proc_88_50_F6B204
  'Data Table: 4E71B8
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F6B0D6: Set var_8C = Me.Txt
  loc_F6B0DC: Call 0.Method_Proc_88_50_F6B204C (var_8E, var_86)
  loc_F6B0EC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F6B102:   Set var_8C = Me.Txt
  loc_F6B108:   Call 0.Method_Proc_88_50_F6B2040 (CInt(var_86), var_98)
  loc_F6B110:   var_98.Text = vbNullString
  loc_F6B12C:   Set var_8C = Me.Txt
  loc_F6B132:   Call 0.Method_Proc_88_50_F6B2040 (CInt(var_86), var_98)
  loc_F6B13A:   var_98.Tag = vbNullString
  loc_F6B149: Next var_92 'Byte
  loc_F6B15C: Me.LblCurStockStr.Caption = vbNullString
  loc_F6B171: Me.LblVPrefix.Caption = vbNullString
  loc_F6B18C: Me.FGrid.Rows = 1
  loc_F6B1A9: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F6B1B1: Set var_98 = Me.FGrid
  loc_F6B1E0: Me.FGrid.FixedRows = 1
  loc_F6B1FB: Me.FGCat.Rows = 0
  loc_F6B203: Exit Sub
End Sub

Public Sub Proc_88_51_F3447C(arg_C) 'F3447C
  'Data Table: 4E71B8
  Dim var_98 As TextBox
  loc_F34366: Set var_8C = Me.Txt
  loc_F3436C: Call 0.Method_Proc_88_51_F3447CC (var_8E, var_86)
  loc_F3437C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F34392:   Set var_8C = Me.Txt
  loc_F34398:   Call 0.Method_Proc_88_51_F3447C0 (CInt(var_86), var_98)
  loc_F343A0:   var_98.Enabled = arg_C
  loc_F343AF: Next var_92 'Byte
  loc_F343C2: Set var_8C = Me.Txt
  loc_F343C8: Call 0.Method_Proc_88_51_F3447C0 (CInt(3), var_98)
  loc_F343D0: var_98.Enabled = False
  loc_F343E9: Set var_8C = Me.Txt
  loc_F343EF: Call 0.Method_Proc_88_51_F3447C0 (CInt(7), var_98)
  loc_F343F7: var_98.Enabled = False
  loc_F34410: Set var_8C = Me.Txt
  loc_F34416: Call 0.Method_Proc_88_51_F3447C0 (CInt(5), var_98)
  loc_F3441E: var_98.Enabled = False
  loc_F34437: Set var_8C = Me.Txt
  loc_F3443D: Call 0.Method_Proc_88_51_F3447C0 (CInt(2), var_98)
  loc_F34445: var_98.Enabled = False
  loc_F3445E: Set var_8C = Me.Txt
  loc_F34464: Call 0.Method_Proc_88_51_F3447C0 (CInt(1), var_98)
  loc_F3446C: var_98.Enabled = False
  loc_F34478: Exit Sub
End Sub

Public Sub Proc_88_52_150F764
  'Data Table: 4E71B8
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_10C As String
  Dim unk_4E71D6 As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As Variant
  Dim var_134 As TextBox
  Dim var_130 As Variant
  Dim var_8A As Integer
  Dim var_12C As Variant
  Dim var_158 As Variant
  Dim var_11C As Variant
  Dim var_148 As Variant
  Dim var_1F8 As MSHFlexGrid
  Dim var_200 As Double
  Dim var_94 As Double
  Dim var_9C As Double
  loc_150E888: On Error Goto loc_150F75B
  loc_150E8A2: If (Me.RecordCount > 0) Then
  loc_150E8B2:   Me.LblCurStockStr.Caption = vbNullString
  loc_150E8C7:   var_D8 = "Select I.*,Description,d.Name as DepartmentName From (Indent I Inner join Voucher_Type VT on Vt.V_type=I.VType) Inner join GodownMast D on D.CODE=I.Department where DocID='"
  loc_150E910:   unk_4E71D6.Execute CStr(var_D8 & Me.Fields.Item("SearchCode").Value & "'"), var_12C, -1
  loc_150E91B:   Set var_88 = var_130
  loc_150E96B:   Set var_130 = Me.Txt
  loc_150E971:   Call 0.Method_Proc_88_52_150F7640 (CInt(3), var_134)
  loc_150E979:   var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")))
  loc_150E9C2:   Me.LblVPrefix.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("vPrefix")))
  loc_150EA0A:   Set var_130 = Me.Txt
  loc_150EA10:   Call 0.Method_Proc_88_52_150F7640 (CInt(0), var_134)
  loc_150EA18:   var_134.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("vType")))
  loc_150EA62:   Set var_130 = Me.Txt
  loc_150EA68:   Call 0.Method_Proc_88_52_150F7640 (CInt(0), var_134)
  loc_150EA70:   var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Description")))
  loc_150EABA:   Set var_130 = Me.Txt
  loc_150EAC0:   Call 0.Method_Proc_88_52_150F7640 (CInt(6), var_134)
  loc_150EAC8:   var_134.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("Department")))
  loc_150EB12:   Set var_130 = Me.Txt
  loc_150EB18:   Call 0.Method_Proc_88_52_150F7640 (CInt(6), var_134)
  loc_150EB20:   var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DepartmentName")))
  loc_150EB6A:   Set var_130 = Me.Txt
  loc_150EB70:   Call 0.Method_Proc_88_52_150F7640 (CInt(1), var_134)
  loc_150EB78:   var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("VNo")))
  loc_150EBA3:   var_B8 = var_88.Fields.Item("VDate")
  loc_150EBBA:   If IsNull(CVar(var_B8)) Then
  loc_150EBCB:     Set var_A4 = Me.Txt
  loc_150EBD1:     Call 0.Method_Proc_88_52_150F7640 (CInt(2), var_B8)
  loc_150EBD9:     var_B8.Text = vbNullString
  loc_150EBE8:   Else
  loc_150EC21:     Set var_130 = Me.Txt
  loc_150EC27:     Call 0.Method_Proc_88_52_150F7640 (CInt(2), var_134)
  loc_150EC2F:     var_134.Text = CStr(var_88.Fields.Item("VDate").Value)
  loc_150EC45:   End If
  loc_150EC7B:   Set var_130 = Me.Txt
  loc_150EC81:   Call 0.Method_Proc_88_52_150F7640 (CInt(4), var_134)
  loc_150EC89:   var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Remarks")))
  loc_150ECAC:   Me.FGrid.Redraw = False
  loc_150ECC7:   Me.FGrid.Rows = 1
  loc_150ECD1:   var_8A = 1
  loc_150ECE8:   var_10C = "Select I1.*,IT.Name as ItemName " & "From (Indent1 I1 Inner join ItemMast IT on IT.Code=I1.Item And IT.ItemType='Store') "
  loc_150ED36:   unk_4E71D6.Execute CStr(CVar(var_10C & "Where DocID='") & Me.Fields.Item("SearchCode").Value & "' Order By I1.Sno"), var_148, -1
  loc_150ED41:   Set var_88 = var_130
  loc_150ED9B:   var_130 = var_88.Fields
  loc_150EE04:   var_198 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE")), var_130) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_130.Item("U_AE")), var_8A) = "E"), "Modified By : ", "User : "))
  loc_150EE49:   Me.LblUser.Caption = CStr(var_130 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_198)))
  loc_150EF24:   var_198 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_150EF69:   Me.LblLDt.Caption = CStr(var_198 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_150EFB5:   If (var_88.RecordCount > 0) Then
  loc_150EFB8:     ' Referenced from: 150F60B
  loc_150EFC7:     If Not(var_88.EOF) Then
  loc_150EFCA:       var_B4 = vbNullString
  loc_150EFD4:       Set var_A4 = Me.FGrid
  loc_150EFE9:       Set var_1F8 = Me.FGrid
  loc_150EFF0:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_150EFF8:       var_F8 = CVar(CLng(0)) 'Long
  loc_150F002:       var_C8 = CVar(CStr(var_8A)) 'String
  loc_150F009:       LateIdCallSt
  loc_150F018:       var_D8 = CVar(CLng(var_8A)) 'Long
  loc_150F020:       var_11C = CVar(CLng(&HC)) 'Long
  loc_150F050:       var_E8 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_150F057:       LateIdCallSt
  loc_150F0A6:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1F8, var_E8, CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_150F0AD:       LateIdCallSt
  loc_150F0F8:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Specification")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1F8, var_E8, var_1F8)) 'String
  loc_150F0FF:       LateIdCallSt
  loc_150F137:       Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("qty")), var_1F8, var_E8, CVar(var_88.Fields.Item("qty")))
  loc_150F140:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150F148:       var_158 = CVar(CLng(3)) 'Long
  loc_150F178:       LateIdCallSt
  loc_150F1B6:       Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("Rate")), var_1F8, CVar(CStr(Format(var_E8, "0.000"))), 1, 1)
  loc_150F1BF:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150F1F7:       LateIdCallSt
  loc_150F235:       Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("TaxAmt")), var_1F8, CVar(CStr(Format(var_E8, "0.00"))), 1, 1, CVar(CLng(8)))
  loc_150F23E:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150F276:       LateIdCallSt
  loc_150F2B4:       Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("Amount")), var_1F8, CVar(CStr(Format(var_E8, "0.00"))), 1, 1, CVar(CLng(&HA)))
  loc_150F2BD:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150F2C5:       var_158 = CVar(CLng(9)) 'Long
  loc_150F2EE:       var_148 = CVar(CStr(Format(var_E8, "0.00"))) 'String
  loc_150F2F5:       LateIdCallSt
  loc_150F311:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_150F334:       var_200 = Val(CStr(var_1F8.TextMatrix)))
  loc_150F33E:       var_94 = (var_94 + var_200)
  loc_150F34A:       var_B4 = "Total"
  loc_150F36D:       Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item(var_B4)), var_94, var_200, CVar(CLng(9)), var_B4, var_1F8)
  loc_150F376:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150F37E:       var_158 = CVar(CLng(&HB)) 'Long
  loc_150F3A7:       var_148 = CVar(CStr(Format(var_E8, "0.00"))) 'String
  loc_150F3AE:       LateIdCallSt
  loc_150F3CA:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_150F3ED:       var_200 = Val(CStr(var_1F8.TextMatrix)))
  loc_150F3F7:       var_9C = (var_9C + var_200)
  loc_150F414:       var_B4 = "Unit"
  loc_150F439:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_B4)), CVar(CLng(4)), CVar(CLng(var_8A)), var_9C, var_200, CVar(CLng(&HB)), var_B4)) 'String
  loc_150F440:       LateIdCallSt
  loc_150F478:       Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("COnvFactor")), var_1F8, var_E8, var_1F8)
  loc_150F481:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150F4B9:       LateIdCallSt
  loc_150F4F7:       Proc_6_39_E7D3A0(var_E8, CVar(var_88.Fields.Item("WTQty")), var_1F8, CVar(CStr(Format(var_E8, "0.000"))), 1, 1, CVar(CLng(5)))
  loc_150F500:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150F531:       var_148 = CVar(CStr(Format(var_E8, "0.000"))) 'String
  loc_150F538:       LateIdCallSt
  loc_150F589:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("WtUnit")), CVar(CLng(7)), CVar(CLng(var_8A)), var_1F8, var_148, 1, 1)) 'String
  loc_150F590:       LateIdCallSt
  loc_150F5CA:       var_B8 = var_88.Fields.Item("TaxStru")
  loc_150F5DB:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_B8), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_1F8, var_E8, CVar(CLng(6)))) 'String
  loc_150F5E2:       LateIdCallSt
  loc_150F5F6:       Set var_1F8 = Nothing 
  loc_150F600:       var_8A = (var_8A + 1)
  loc_150F606:       var_88.MoveNext
  loc_150F60B:       GoTo loc_150EFB8
  loc_150F60E:     End If
  loc_150F621:     Me.FGrid.FixedRows = 1
  loc_150F629:   End If
  loc_150F649:   var_E8 = Format(var_94, "0.00")
  loc_150F660:   Set var_A4 = Me.Txt
  loc_150F666:   Call 0.Method_Proc_88_52_150F7640 (CInt(7), var_B8, CStr(var_E8), 1, 1, var_8A, var_1F8)
  loc_150F66E:   var_B8.Text = var_E8
  loc_150F6BB:   Set var_A4 = Me.Txt
  loc_150F6C1:   Call 0.Method_Proc_88_52_150F7640 (CInt(5), var_B8, CStr(Format(var_9C, "0.00")), 1, 1)
  loc_150F6C9:   var_B8.Text = var_F8
  loc_150F6ED:   Me.FGrid.Redraw = True
  loc_150F714:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_150F717:     var_B4 = "1"
  loc_150F721:     Set var_A4 = Me.FGrid
  loc_150F732:   End If
  loc_150F732:   var_B4 = 1
  loc_150F745:   Me.FGrid.FixedRows = var_B4
  loc_150F750: Else
  loc_150F750:   Call Proc_88_50_F6B204(FGrid.DispID_10000, var_B4, var_F8)
  loc_150F755: End If
  loc_150F755: Call Proc_88_53_EBA5A4(var_148, 1)
  loc_150F75A: Exit Sub
  loc_150F75B: ' Referenced from: 150E888
  loc_150F75B: Proc_6_60_E63754(1)
  loc_150F760: Exit Sub
End Sub

Public Sub Proc_88_53_EBA5A4
  'Data Table: 4E71B8
  loc_EBA51C: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EBA52E:   Me.DGDepart.Visible = False
  loc_EBA536: End If
  loc_EBA552: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EBA564:   Me.DGItem.Visible = False
  loc_EBA56C: End If
  loc_EBA588: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBA59A:   Me.FGPoint.Visible = False
  loc_EBA5A2: End If
  loc_EBA5A2: Exit Sub
End Sub

Public Sub Proc_88_54_135F87C(arg_C) '135F87C
  'Data Table: 4E71B8
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_120 As Variant
  Dim var_A0 As String
  Dim var_A4 As String
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_8C As Recordset15
  Dim var_98 As Variant
  Dim var_D0 As Variant
  Dim var_94 As Long
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_190 As TextBox
  Dim unk_4E71D6 As Connection15
  Dim var_18C As Field20
  loc_135F080: Set var_98 = Me.Txt
  loc_135F086: Call 0.Method_Proc_88_54_135F87C0 (CInt(0), var_9C)
  loc_135F0AD: var_90 = var_9C.Tag
  loc_135F0B4: Set var_8C = New 
  loc_135F0BF: Me.Recordset15.CursorLocation = 3
  loc_135F0CA: If (arg_C = &HFF) Then
  loc_135F0D8:   Set var_98 = Me.Txt
  loc_135F0DE:   Call 0.Method_Proc_88_54_135F87C0 (CInt(2))
  loc_135F0ED:   Proc_6_7_F26918(var_D0, CVar(var_9C))
  loc_135F110:   var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_135F139:   var_F0 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") & var_D0 
  loc_135F14A:   var_8C.Open var_F0 & " Order By VP.Date_From DESC", CVar(MemVar_1F95044), 2
  loc_135F16F: Else
  loc_135F17A:   Set var_98 = Me.Txt
  loc_135F180:   Call 0.Method_Proc_88_54_135F87C0 (CInt(2), var_9C, 3)
  loc_135F18F:   Proc_6_7_F26918(var_D0, CVar(var_9C))
  loc_135F1B2:   var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_135F1DB:   var_F0 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") & var_D0 
  loc_135F1EC:   var_8C.Open var_F0 & " Order By VP.Date_From DESC", CVar(MemVar_1F95044), 2
  loc_135F20E: End If
  loc_135F222: If (var_8C.RecordCount > 0) Then
  loc_135F23F:   var_9C = var_8C.Fields.Item("Number_Method")
  loc_135F261:   If (var_9C.Value = "Automatic") Then
  loc_135F271:     Set var_98 = Me.Txt
  loc_135F277:     Call 0.Method_Proc_88_54_135F87C0 (CInt(1), var_9C, 0, 3)
  loc_135F27F:     var_9C.Enabled = True
  loc_135F2B6:     var_A0 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_135F2BC:     global_116 = var_A0
  loc_135F2D3:     If (arg_C = &HFF) Then
  loc_135F2F0:       var_9C = var_8C.Fields.Item("start_srl_no")
  loc_135F305:       var_D0 = (var_9C.Value + 1)
  loc_135F30B:       var_94 = CLng(var_D0)
  loc_135F31F:     Else
  loc_135F32D:       Set var_98 = Me.Txt
  loc_135F333:       Call 0.Method_Proc_88_54_135F87C0 (CInt(1), var_9C, var_A0)
  loc_135F33B:       var_94 = var_9C.Text
  loc_135F349:       var_94 = CLng(Val(var_A0))
  loc_135F356:     End If
  loc_135F359:   Else
  loc_135F367:     Set var_98 = Me.Txt
  loc_135F36D:     Call 0.Method_Proc_88_54_135F87C0 (CInt(1), var_9C, var_A0)
  loc_135F375:     var_94 = var_9C.Text
  loc_135F39F:     If (CDbl(Val(CStr(Val(var_A0)))) = CDbl(0)) Then
  loc_135F3BC:       var_9C = var_8C.Fields.Item("start_srl_no")
  loc_135F3D1:       var_D0 = (var_9C.Value + 1)
  loc_135F3D7:       var_94 = CLng(var_D0)
  loc_135F3E8:     End If
  loc_135F3FB:     Set var_98 = Me.Txt
  loc_135F401:     Call 0.Method_Proc_88_54_135F87C0 (CInt(1), var_9C, CStr(var_94))
  loc_135F409:     var_9C.Text = var_94
  loc_135F425:     Set var_98 = Me.Txt
  loc_135F42B:     Call 0.Method_Proc_88_54_135F87C0 (CInt(1), var_9C, &HFF)
  loc_135F433:     var_9C.Enabled = True
  loc_135F43F:   End If
  loc_135F43F: End If
  loc_135F459: var_9C = var_8C.Fields.Item("Number_Method")
  loc_135F47B: If (var_9C.Value = "Automatic") Then
  loc_135F4A2:   var_C0 = Space((5 - Len(var_90)))
  loc_135F4AA:   var_E0 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2)) + var_9C.Value)
  loc_135F4B4:   var_F0 = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(var_90))
  loc_135F4C8:   var_110 = Space((5 - Len(global_116)))
  loc_135F4D0:   var_138 = (var_F0 + var_F0 & " Order By VP.Date_From DESC")
  loc_135F4DD:   var_148 = (var_138 + CVar(global_116))
  loc_135F4EB:   var_A4 = CStr(var_94)
  loc_135F4F3:   var_158 = Space((8 - Len(var_A4)))
  loc_135F4FB:   var_168 = (var_148 + var_158)
  loc_135F507:   var_188 = (var_168 + CVar(CStr(var_94)))
  loc_135F512:   global_112 = CStr(var_188)
  loc_135F548:   Me.LblVPrefix.Caption = global_116
  loc_135F561:   Set var_98 = Me.Txt
  loc_135F567:   Call 0.Method_Proc_88_54_135F87C0 (CInt(3), var_9C)
  loc_135F56F:   var_9C.Text = global_112
  loc_135F58E:   Set var_98 = Me.Txt
  loc_135F594:   Call 0.Method_Proc_88_54_135F87C0 (CInt(1), var_9C)
  loc_135F59C:   var_9C.Text = CStr(var_94)
  loc_135F5B1:   var_88 = global_112
  loc_135F5B7: Else
  loc_135F5CB:   var_D0 = CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_135F5DB:   var_C0 = Space((5 - Len(var_90)))
  loc_135F5E3:   var_E0 = (var_D0 + var_9C.Value)
  loc_135F5ED:   var_F0 = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(var_90))
  loc_135F601:   var_110 = Space((5 - Len(global_116)))
  loc_135F609:   var_138 = (var_F0 + var_F0 & " Order By VP.Date_From DESC")
  loc_135F616:   var_148 = (var_138 + CVar(global_116))
  loc_135F62D:   Set var_98 = Me.Txt
  loc_135F633:   Call 0.Method_Proc_88_54_135F87C0 (CInt(1), var_9C, var_A4)
  loc_135F63B:   8 = var_9C.Text
  loc_135F648:   var_158 = Space((var_148 - Len(var_A4)))
  loc_135F650:   var_168 = (var_9C + var_158)
  loc_135F662:   Set var_18C = Me.Txt
  loc_135F668:   Call 0.Method_Proc_88_54_135F87C0 (CInt(1), var_190)
  loc_135F67B:   var_188 = (var_168 + CVar(var_190.Text))
  loc_135F686:   global_112 = CStr(var_188)
  loc_135F6BD:   var_120 = 0
  loc_135F6DD:   var_A0 = "SELECT COUNT(*) FROM INDENT WHERE DOCID='" & global_112
  loc_135F6ED:   unk_4E71D6.Execute var_A0 & "'", var_9C.Value, -1
  loc_135F6F5:   var_98 = var_98.Fields
  loc_135F6FD:   var_120 = var_9C.Item(var_9C)
  loc_135F705:   var_18C = var_18C.Value
  loc_135F72C:   If (var_D0 > 0) Then
  loc_135F73B:     If (CInt(global_64) = 0) Then
  loc_135F749:       var_D0 = "Validation"
  loc_135F75F:       MsgBox("Indent Number Already Exists. It will Be changed", &H40, var_D0, CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="), var_F0)
  loc_135F76F:     End If
  loc_135F776:     global_64 = CByte(1)
  loc_135F788:     Set var_98 = Me.Txt
  loc_135F78E:     Call 0.Method_Proc_88_54_135F87C0 (CInt(1), var_9C, var_A0)
  loc_135F796:     global_64 = var_9C.Text
  loc_135F7A9:     var_A4 = CStr((Val(var_A0) + CDbl(1)))
  loc_135F7B7:     Set var_18C = Me.Txt
  loc_135F7BD:     Call 0.Method_Proc_88_54_135F87C0 (CInt(1), var_190)
  loc_135F7C5:     var_190.Text = var_A0 & "'"
  loc_135F7E4:     Call Proc_88_54_135F87C(0, var_A0)
  loc_135F7F7:     Set var_98 = Me.Txt
  loc_135F7FD:     Call 0.Method_Proc_88_54_135F87C0 (CInt(3), var_9C)
  loc_135F805:     var_9C.Text = var_A0
  loc_135F814:   End If
  loc_135F82F:   Me.LblVPrefix.Caption = global_116
  loc_135F848:   Set var_98 = Me.Txt
  loc_135F84E:   Call 0.Method_Proc_88_54_135F87C0 (CInt(3), var_9C, global_112)
  loc_135F856:   var_9C.Text = CByte(0)
  loc_135F868:   var_88 = global_112
  loc_135F86B: End If
  loc_135F870: Set var_8C = Nothing
  loc_135F873: Proc_88_54_135F87C = var_D0
End Sub

Public Sub Proc_88_55_FC93C4
  'Data Table: 4E71B8
  Dim var_CC As Variant
  Dim var_98 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_DC As Variant
  Dim var_9C As TextBox
  loc_FC921E: var_92 = 1 'Byte
  loc_FC922B: Set var_98 = Me.TxtGrid
  loc_FC9231: Call 0.Method_Proc_88_55_FC93C40 (0)
  loc_FC9259: var_8C = CStr(Ucase(CVar(CStr(Trim(CVar(var_9C))))))
  loc_FC9291: For var_E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_E0 'Integer
  loc_FC92B5:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC92B8:     GoTo loc_FC93B0
  loc_FC92BB:   End If
  loc_FC92BF:   var_F0 = CVar(CLng(var_88)) 'Long
  loc_FC92E9:   var_CC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC92F3:   var_DC = CVar(CStr(var_CC)) 'String
  loc_FC9328:   If ((var_8C = CStr(Ucase(var_DC))) And (CStr(Ucase(var_DC)) <> vbNullString)) Then
  loc_FC9341:     var_F0 = "Duplicate Item Not Allowed"
  loc_FC934C:     MsgBox(var_F0, &H40, "Validation", var_CC, var_DC)
  loc_FC9368:     Set var_98 = Me.TxtGrid
  loc_FC936E:     Call 0.Method_Proc_88_55_FC93C40 (0, var_9C, vbNullString, CVar(CLng(var_92)))
  loc_FC9376:     var_9C.Text = var_F0
  loc_FC938B:     Set var_98 = Me.TxtGrid
  loc_FC9391:     Call 0.Method_Proc_88_55_FC93C40 (0, var_9C)
  loc_FC9399:     var_9C.SetFocus
  loc_FC93AA:     Proc_88_55_FC93C4 = 0
  loc_FC93B0:     ' Referenced from: FC92B8
  loc_FC93B0:   End If
  loc_FC93B3: Next var_E0 'Integer
  loc_FC93BD: Proc_88_55_FC93C4 = &HFF
  loc_FC93C3: Result  End Sub 'Long
End Sub

Public Sub Proc_88_56_11CDA80
  'Data Table: 4E71B8
  Dim var_A8 As Variant
  Dim var_BC As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_134 As Variant
  Dim var_178 As Variant
  Dim var_18C As MSHFlexGrid
  Dim var_19C As Variant
  Dim var_20C As Double
  Dim var_1B0 As Variant
  Dim var_1F0 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  loc_11CD624: On Error Goto loc_11CDA79
  loc_11CD63A: Me.FGCat.Rows = 1
  loc_11CD667: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D0 'Integer
  loc_11CD671:   var_A8 = CVar(CLng(var_86)) 'Long
  loc_11CD679:   var_E0 = CVar(CLng(&HD)) 'Long
  loc_11CD698:   var_100 = CVar(CLng(var_86)) 'Long
  loc_11CD6A0:   var_120 = CVar(CLng(8)) 'Long
  loc_11CD6F3:   var_20C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_11CD731:   Call Proc_88_57_171F9F4(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_20C)), "0.00")), 1, 1, var_20C, CVar(CLng(3)), CVar(CLng(var_86)))
  loc_11CD75A: Next var_D0 'Integer
  loc_11CD784: For var_210 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_210 'Integer
  loc_11CD78E:   var_A8 = CVar(CLng(var_86)) 'Long
  loc_11CD796:   var_E0 = CVar(CLng(3)) 'Long
  loc_11CD7BF:   var_100 = CVar(CLng(var_86)) 'Long
  loc_11CD7C7:   var_120 = CVar(CLng(8)) 'Long
  loc_11CD7F0:   var_178 = CVar(CLng(var_86)) 'Long
  loc_11CD7F8:   var_1B0 = CVar(CLng(9)) 'Long
  loc_11CD829:   var_1F0 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11CD831:   Set var_18C = Me.FGrid
  loc_11CD837:   LateIdCallSt
  loc_11CD862:   var_A8 = CVar(CLng(var_86)) 'Long
  loc_11CD86A:   var_E0 = CVar(CLng(9)) 'Long
  loc_11CD893:   var_100 = CVar(CLng(var_86)) 'Long
  loc_11CD89B:   var_120 = CVar(CLng(&HA)) 'Long
  loc_11CD8A4:   Set var_134 = Me.FGrid
  loc_11CD8C4:   var_178 = CVar(CLng(var_86)) 'Long
  loc_11CD8CC:   var_1B0 = CVar(CLng(&HB)) 'Long
  loc_11CD8ED:   var_19C = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(var_134.TextMatrix))))) 'Double
  loc_11CD8FD:   var_1F0 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11CD905:   Set var_18C = Me.FGrid
  loc_11CD90B:   LateIdCallSt
  loc_11CD936:   var_A8 = CVar(CLng(var_86)) 'Long
  loc_11CD93E:   var_E0 = CVar(CLng(9)) 'Long
  loc_11CD96A:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11CD97A:   var_A8 = CVar(CLng(var_86)) 'Long
  loc_11CD982:   var_E0 = CVar(CLng(&HB)) 'Long
  loc_11CD9AE:   var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11CD9BD: Next var_210 'Integer
  loc_11CD9F9: Set var_BC = Me.Txt
  loc_11CD9FF: Call 0.Method_Proc_88_56_11CDA800 (CInt(7), var_134, CStr(Format(var_90, "0.00")))
  loc_11CDA07: var_134.Text = 1
  loc_11CDA54: Set var_BC = Me.Txt
  loc_11CDA5A: Call 0.Method_Proc_88_56_11CDA800 (CInt(5), var_134, CStr(Format(var_98, "0.00")))
  loc_11CDA62: var_134.Text = 1
  loc_11CDA78: Exit Sub
  loc_11CDA79: ' Referenced from: 11CD624
  loc_11CDA79: Proc_6_60_E63754(1)
  loc_11CDA7E: Exit Sub
End Sub

Public Sub Proc_88_57_171F9F4(arg_C, arg_10, arg_14) '171F9F4
  'Data Table: 4E71B8
  Dim var_D8 As String
  Dim unk_4E71D6 As Connection15
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_EC As Variant
  Dim var_D2 As Integer
  Dim var_100 As Variant
  Dim var_FC As Variant
  Dim var_130 As Variant
  Dim var_11C As Variant
  Dim var_C0 As Recordset15
  Dim var_140 As Variant
  Dim var_178 As Variant
  Dim var_18C As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_D0 As Double
  Dim var_1F4 As Double
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_160 As Variant
  Dim var_204 As Variant
  Dim var_10C As MSHFlexGrid
  Dim var_1E8 As Double
  Dim var_9C As Double
  Dim var_260 As Double
  Dim var_1B0 As Variant
  loc_171DE18: var_D8 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_171DE28: unk_4E71D6.Execute var_D8 & "'", var_FC, -1
  loc_171DE33: Set var_8C = var_100
  loc_171DE46: var_94 = arg_14
  loc_171DE4B: var_86 = 1
  loc_171DE51: var_A8 = var_94
  loc_171DE57: var_B0 = var_94
  loc_171DE5D: var_B8 = CDbl(0)
  loc_171DE74: If (var_8C.RecordCount > 0) Then
  loc_171DE77:   ' Referenced from: 171F9D5
  loc_171DE86:   If Not(var_8C.EOF) Then
  loc_171DE8D:     Set var_10C = Me.FGCat
  loc_171DE90:     var_EC = vbNullString
  loc_171DEB5:     If (var_8C.RecordCount > 0) Then
  loc_171DEBE:       var_D2 = (var_D2 + 1)
  loc_171DEC4:       var_EC = "Nature"
  loc_171DEF7:       var_150 = Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_EC)), var_D2, FGCat.DispID_10000, var_EC, var_B8))) 'Variant
  loc_171DF10:       If (var_150 = "On Base Amt") Then
  loc_171DF3B:         var_130 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CondApp")), var_B0, var_A8)) 'String
  loc_171DF5D:         If (Trim(var_130) = "Room Rate") Then
  loc_171DF6B:           If (global_124 = "Room Service") Then
  loc_171DF94:             Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Limit")), var_86)
  loc_171DFC2:             Proc_6_39_E7D3A0(var_160, CVar(var_C0.Fields.Item("RoomRate")), var_130)
  loc_171DFF4:             Proc_6_39_E7D3A0(var_1B0, CVar(var_8C.Fields.Item("Rate")))
  loc_171E024:             If CBool((var_94 <= var_160) And (var_1B0 > 0)) Then
  loc_171E063:               If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171E0A1:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171E0B4:               Else
  loc_171E0E7:                 var_1F4 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_171E110:                 Proc_6_142_14A62A0(((var_1F4 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_171E115:                 var_D0 = var_1F4
  loc_171E129:               End If
  loc_171E130:               If (var_D0 > CDbl(0)) Then
  loc_171E14C:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E154:                 var_18C = CVar(CLng(0)) 'Long
  loc_171E15E:                 var_130 = CVar(CStr(var_86)) 'String
  loc_171E165:                 LateIdCallSt
  loc_171E190:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E198:                 var_18C = CVar(CLng(1)) 'Long
  loc_171E1A2:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_171E1A9:                 LateIdCallSt
  loc_171E1D4:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E1DC:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_171E20C:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171E213:                 LateIdCallSt
  loc_171E246:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E24E:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_171E27E:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171E285:                 LateIdCallSt
  loc_171E2B8:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E2C0:                 var_18C = CVar(CLng(4)) 'Long
  loc_171E2CA:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_171E2D1:                 LateIdCallSt
  loc_171E2FC:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E304:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_171E334:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171E33B:                 LateIdCallSt
  loc_171E395:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E39D:                 var_234 = CVar(CLng(6)) 'Long
  loc_171E3A2:                 var_178 = 2
  loc_171E3E1:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_171E3E8:                 LateIdCallSt
  loc_171E40F:               Else
  loc_171E415:                 var_86 = (var_86 - 1)
  loc_171E42B:                 var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_171E441:               End If
  loc_171E45A:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E462:               var_18C = CVar(CLng(6)) 'Long
  loc_171E487:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171E4B0:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E4B8:               var_18C = CVar(CLng(6)) 'Long
  loc_171E4D3:               var_1E8 = Val(CStr(var_10C.TextMatrix)))
  loc_171E4DD:               var_94 = (var_94 + var_1E8)
  loc_171E4F4:               var_B0 = (var_B0 + var_D0)
  loc_171E4FA:               var_B8 = var_D0
  loc_171E504:               var_B0 = (var_B0 + var_D0)
  loc_171E50A:               var_B8 = var_D0
  loc_171E50D:             End If
  loc_171E50D:           End If
  loc_171E510:         Else
  loc_171E54C:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171E58A:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171E59D:           Else
  loc_171E5BF:             var_130 = var_8C.Fields.Item("Rate").Value
  loc_171E5F9:             Proc_6_142_14A62A0(((Val(CStr(var_130)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_130)), var_D0, var_B8, var_B0)
  loc_171E5FE:             var_260 = var_B8
  loc_171E640:             var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)) + var_260)
  loc_171E65E:           End If
  loc_171E684:           Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Limit")), var_D0, var_260, var_B0)
  loc_171E6BE:           Proc_6_39_E7D3A0(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_94)
  loc_171E6E8:           If CBool(var_1E8 And (var_178 > 0)) Then
  loc_171E6F2:             If (var_D0 > CDbl(0)) Then
  loc_171E70E:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E716:               var_18C = CVar(CLng(0)) 'Long
  loc_171E720:               var_130 = CVar(CStr(var_86)) 'String
  loc_171E727:               LateIdCallSt
  loc_171E752:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E75A:               var_18C = CVar(CLng(1)) 'Long
  loc_171E764:               var_130 = CVar(CStr(arg_10)) 'String
  loc_171E76B:               LateIdCallSt
  loc_171E796:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E79E:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171E7CE:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171E7D5:               LateIdCallSt
  loc_171E808:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E810:               var_1C0 = CVar(CLng(3)) 'Long
  loc_171E840:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171E847:               LateIdCallSt
  loc_171E87A:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E882:               var_18C = CVar(CLng(4)) 'Long
  loc_171E88C:               var_130 = CVar(CStr(var_A8)) 'String
  loc_171E893:               LateIdCallSt
  loc_171E8BE:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E8C6:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171E8F6:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171E8FD:               LateIdCallSt
  loc_171E957:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E95F:               var_234 = CVar(CLng(6)) 'Long
  loc_171E9A3:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171E9AA:               LateIdCallSt
  loc_171E9CE:             End If
  loc_171E9E7:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171E9EF:             var_18C = CVar(CLng(6)) 'Long
  loc_171EA14:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171EA3D:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171EA45:             var_18C = CVar(CLng(6)) 'Long
  loc_171EA4D:             var_130 = var_10C.TextMatrix)
  loc_171EA60:             var_1E8 = Val(CStr(var_130))
  loc_171EA6A:             var_94 = (var_94 + var_1E8)
  loc_171EA81:             var_B0 = (var_B0 + var_D0)
  loc_171EA87:             var_B8 = var_D0
  loc_171EA8A:           End If
  loc_171EA8A:         End If
  loc_171EA8D:       Else
  loc_171EA98:         If (var_150 = "On Running Total") Then
  loc_171EAD7:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171EB15:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_171EB28:           Else
  loc_171EB84:             Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171EB89:             var_D0 = var_94
  loc_171EB9D:           End If
  loc_171EBC3:           Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1E8, var_18C)
  loc_171EBDD:           If (var_130 > 0) Then
  loc_171EBE7:             If (var_D0 > CDbl(0)) Then
  loc_171EC03:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171EC0B:               var_18C = CVar(CLng(0)) 'Long
  loc_171EC15:               var_130 = CVar(CStr(var_86)) 'String
  loc_171EC1C:               LateIdCallSt
  loc_171EC47:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171EC4F:               var_18C = CVar(CLng(1)) 'Long
  loc_171EC59:               var_130 = CVar(CStr(arg_10)) 'String
  loc_171EC60:               LateIdCallSt
  loc_171EC8B:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171EC93:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171ECC3:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171ECCA:               LateIdCallSt
  loc_171ECFD:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171ED05:               var_1C0 = CVar(CLng(3)) 'Long
  loc_171ED35:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171ED3C:               LateIdCallSt
  loc_171ED6F:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171ED77:               var_18C = CVar(CLng(4)) 'Long
  loc_171ED81:               var_130 = CVar(CStr(var_B0)) 'String
  loc_171ED88:               LateIdCallSt
  loc_171EDB3:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171EDBB:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171EDEB:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171EDF2:               LateIdCallSt
  loc_171EE4C:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171EE54:               var_234 = CVar(CLng(6)) 'Long
  loc_171EE98:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171EE9F:               LateIdCallSt
  loc_171EEC3:             End If
  loc_171EEDC:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171EEE4:             var_18C = CVar(CLng(6)) 'Long
  loc_171EF09:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171EF32:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171EF3A:             var_18C = CVar(CLng(6)) 'Long
  loc_171EF5F:             var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_171EF76:             var_B0 = (var_B0 + var_D0)
  loc_171EF7C:             var_B8 = var_D0
  loc_171EF7F:           End If
  loc_171EF82:         Else
  loc_171EF8D:           If (var_150 = "On Prev. Tax Amt") Then
  loc_171EFCC:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171F00A:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_171F01D:             Else
  loc_171F079:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171F07E:               var_D0 = var_94
  loc_171F092:             End If
  loc_171F099:             If (var_D0 > CDbl(0)) Then
  loc_171F0B5:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F0BD:               var_18C = CVar(CLng(0)) 'Long
  loc_171F0C7:               var_130 = CVar(CStr(var_86)) 'String
  loc_171F0CE:               LateIdCallSt
  loc_171F0F9:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F101:               var_18C = CVar(CLng(1)) 'Long
  loc_171F10B:               var_130 = CVar(CStr(arg_10)) 'String
  loc_171F112:               LateIdCallSt
  loc_171F13D:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F145:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171F175:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171F17C:               LateIdCallSt
  loc_171F1AF:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F1B7:               var_1C0 = CVar(CLng(3)) 'Long
  loc_171F1E7:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171F1EE:               LateIdCallSt
  loc_171F221:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F229:               var_18C = CVar(CLng(4)) 'Long
  loc_171F233:               var_130 = CVar(CStr(var_B8)) 'String
  loc_171F23A:               LateIdCallSt
  loc_171F265:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F26D:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171F29D:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171F2A4:               LateIdCallSt
  loc_171F2FE:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F306:               var_234 = CVar(CLng(6)) 'Long
  loc_171F30B:               var_178 = 2
  loc_171F34A:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_171F351:               LateIdCallSt
  loc_171F375:             End If
  loc_171F38E:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F396:             var_18C = CVar(CLng(6)) 'Long
  loc_171F3BB:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171F3E4:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F3EC:             var_18C = CVar(CLng(6)) 'Long
  loc_171F3F4:             var_130 = var_10C.TextMatrix)
  loc_171F407:             var_1E8 = Val(CStr(var_130))
  loc_171F411:             var_94 = (var_94 + var_1E8)
  loc_171F428:             var_B0 = (var_B0 + var_D0)
  loc_171F42E:             var_B8 = var_D0
  loc_171F434:           Else
  loc_171F470:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171F4AE:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171F4C1:             Else
  loc_171F51D:               Proc_6_142_14A62A0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171F522:               var_D0 = var_94
  loc_171F536:             End If
  loc_171F539:             var_EC = "Limit"
  loc_171F55C:             Proc_6_39_E7D3A0(var_130, CVar(var_8C.Fields.Item(var_EC)), var_D0, var_1E8, var_18C)
  loc_171F596:             Proc_6_39_E7D3A0(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_EC)
  loc_171F5C0:             If CBool(var_9C And (var_178 > 0)) Then
  loc_171F5CA:               If (var_D0 > CDbl(0)) Then
  loc_171F5E6:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F5EE:                 var_18C = CVar(CLng(0)) 'Long
  loc_171F5F8:                 var_130 = CVar(CStr(var_86)) 'String
  loc_171F5FF:                 LateIdCallSt
  loc_171F62A:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F632:                 var_18C = CVar(CLng(1)) 'Long
  loc_171F63C:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_171F643:                 LateIdCallSt
  loc_171F66E:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F676:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_171F6A6:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171F6AD:                 LateIdCallSt
  loc_171F6E0:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F6E8:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_171F718:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171F71F:                 LateIdCallSt
  loc_171F752:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F75A:                 var_18C = CVar(CLng(4)) 'Long
  loc_171F764:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_171F76B:                 LateIdCallSt
  loc_171F796:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F79E:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_171F7CE:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171F7D5:                 LateIdCallSt
  loc_171F82F:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F837:                 var_234 = CVar(CLng(6)) 'Long
  loc_171F87B:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171F882:                 LateIdCallSt
  loc_171F8A6:               End If
  loc_171F8BF:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F8C7:               var_18C = CVar(CLng(6)) 'Long
  loc_171F8EC:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171F915:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171F91D:               var_18C = CVar(CLng(6)) 'Long
  loc_171F942:               var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_171F959:               var_B0 = (var_B0 + var_D0)
  loc_171F95F:               var_B8 = var_D0
  loc_171F962:             End If
  loc_171F962:           End If
  loc_171F962:         End If
  loc_171F962:       End If
  loc_171F962:     End If
  loc_171F968:     var_86 = (var_86 + 1)
  loc_171F96D:     Set var_10C = Nothing 
  loc_171F975:     var_18C = CVar(CLng(arg_10)) 'Long
  loc_171F97D:     var_204 = CVar(CLng(&HA)) 'Long
  loc_171F9AB:     var_140 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_171F9B3:     Set var_100 = Me.FGrid
  loc_171F9B9:     LateIdCallSt
  loc_171F9D0:     var_8C.MoveNext
  loc_171F9D5:     GoTo loc_171DE77
  loc_171F9D8:   End If
  loc_171F9DD:   Set var_8C = Nothing
  loc_171F9E5:   Set var_C4 = Nothing
  loc_171F9ED:   Set var_C0 = Nothing
  loc_171F9F0: End If
  loc_171F9F0: Exit Sub
End Sub

Public Sub Proc_88_58_F921C4
  'Data Table: 4E71B8
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_4E71D6 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  loc_F92084: Set var_9C = Me.TopCtrl1
  loc_F9208A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F92092: var_B0 = CStr()
  loc_F920A3: If (var_B0 = "Add") Then
  loc_F920D3:   Set var_9C = Me.Txt
  loc_F920D9:   Call 0.Method_Proc_88_58_F921C40 (CInt(3), var_B4, var_B0, "Select Count(*) From Indent Where DocID='", var_AC, -1)
  loc_F920FA:   unk_4E71D6.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_F9210A:    = var_D4.Item()
  loc_F92112:    = var_E8.Value
  loc_F9213F:   If (var_B4.Text.Fields > 0) Then
  loc_F92148:     Call 0.Method_arg_50 (var_B0)
  loc_F92169:     MsgBox("Duplicate Indent No.", &H40, CVar(var_B0), var_118, var_128)
  loc_F92181:     Call Proc_88_54_135F87C(&HFF)
  loc_F92194:     Set var_9C = Me.Txt
  loc_F9219A:     Call 0.Method_Proc_88_58_F921C40 (CInt(3), var_B4)
  loc_F921A2:     var_B4.Text = var_B0
  loc_F921B6:     Proc_88_58_F921C4 = &HFF
  loc_F921BC:   End If
  loc_F921BC: End If
  loc_F921BC: Proc_88_58_F921C4 = var_B0
End Sub

Public Sub Proc_88_59_E789FC
  'Data Table: 4E71B8
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  loc_E789DC: Set var_A4 = Me.Txt
  loc_E789E2: Call 0.Method_Proc_88_59_E789FC0 (CInt(4), var_A8)
  loc_E789EA: var_A8.MaxLength = Me.Fields.Item("Remarks").DefinedSize
  loc_E789FA: Exit Sub
  loc_E789FB:  = 
End Sub
