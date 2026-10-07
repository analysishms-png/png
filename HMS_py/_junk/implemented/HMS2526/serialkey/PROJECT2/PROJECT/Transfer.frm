VERSION 5.00
Begin VB.Form Transfer
  Caption = "Data Transfer"
  BackColor = &HC0FFC0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11460
  ClientHeight = 7650
  LockControls = -1  'True
  Begin CommandButton CmdExit
    Caption = "E&xit"
    BackColor = &HFFC0C0&
    Left = 14895
    Top = 75
    Width = 1095
    Height = 465
    TabIndex = 23
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &H8000000F&
    Style = 1
  End
  Begin CommandButton CmdRefreshDatabase
    Caption = "Query to Update NULL"
    Left = 12945
    Top = 2610
    Width = 1440
    Height = 780
    Visible = 0   'False
    TabIndex = 22
    TabStop = 0   'False
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame Frame2
    Caption = "Frame2"
    BackColor = &HFF80FF&
    Left = 420
    Top = 90
    Width = 14355
    Height = 3435
    TabIndex = 15
    BorderStyle = 0 'None
    Begin CommandButton CmdIss
      Caption = "Send "
      BackColor = &HFFC0C0&
      Left = 555
      Top = 1335
      Width = 3780
      Height = 570
      TabIndex = 4
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdRec
      Caption = "Receive"
      BackColor = &HFFC0C0&
      Left = 570
      Top = 1905
      Width = 3780
      Height = 570
      TabIndex = 5
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin TextBox Txt
      Index = 0
      Left = 1410
      Top = 150
      Width = 1290
      Height = 240
      TabIndex = 0
      BorderStyle = 0 'None
      MaxLength = 13
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 1
      Left = 3525
      Top = 150
      Width = 1290
      Height = 240
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 13
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 2
      Left = 1410
      Top = 435
      Width = 3405
      Height = 240
      TabIndex = 2
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin Frame FrameComp
      Caption = "Company Selection"
      BackColor = &HFFC0C0&
      Left = 4860
      Top = 135
      Width = 3810
      Height = 3210
      TabIndex = 16
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin MSFlexGrid FGrid
        Left = 30
        Top = 255
        Width = 3735
        Height = 2910
        TabIndex = 3
      End
    End
    Begin CommandButton CmdTemplate
      Caption = "Create Template"
      Left = 12435
      Top = 75
      Width = 1860
      Height = 375
      Visible = 0   'False
      TabIndex = 6
      TabStop = 0   'False
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin DataGrid DGUnit
      Left = 8745
      Top = 720
      Width = 3405
      Height = 1695
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 17
    End
    Begin Label LblTblName
      ForeColor = &HFF&
      Left = 495
      Top = 3015
      Width = 3195
      Height = 330
      TabIndex = 21
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "From Date"
      Index = 0
      ForeColor = &H0&
      Left = 405
      Top = 150
      Width = 990
      Height = 240
      TabIndex = 20
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
      Caption = "To Date"
      Index = 1
      ForeColor = &H0&
      Left = 2745
      Top = 150
      Width = 750
      Height = 240
      TabIndex = 19
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
      Caption = "For Unit"
      Index = 2
      ForeColor = &H0&
      Left = 405
      Top = 435
      Width = 735
      Height = 240
      TabIndex = 18
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
  Begin Frame Frame1
    BackColor = &HFFFF00&
    Left = 420
    Top = 3540
    Width = 14355
    Height = 5355
    Visible = 0   'False
    TabIndex = 7
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CheckBox ChkModule
      Caption = "Point Of Sale"
      Index = 2
      ForeColor = &HFF0000&
      Left = 12300
      Top = 780
      Width = 1920
      Height = 345
      TabIndex = 11
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CheckBox ChkModule
      Caption = "Material Mgmt"
      Index = 1
      ForeColor = &HFF0000&
      Left = 12300
      Top = 420
      Width = 1920
      Height = 345
      TabIndex = 10
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CheckBox ChkModule
      Caption = "Back Office"
      Index = 0
      ForeColor = &HFF0000&
      Left = 12300
      Top = 60
      Width = 1920
      Height = 345
      TabIndex = 9
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdTransOnline
      Caption = "ON LINE"
      Left = 12330
      Top = 4830
      Width = 1860
      Height = 465
      TabIndex = 14
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdTransIn
      Caption = "Transfer IN"
      Left = 12330
      Top = 4365
      Width = 1860
      Height = 465
      TabIndex = 13
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdTransOut
      Caption = "Transfer OUT"
      Left = 12330
      Top = 3900
      Width = 1860
      Height = 465
      TabIndex = 12
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin ListView LVTables
      Left = 75
      Top = 60
      Width = 12075
      Height = 5220
      TabIndex = 8
    End
  End
End

Attribute VB_Name = "Transfer"

Private global_76 As Long

Private Sub DGUnit_UnknownEvent_9 'F429D4
  'Data Table: 4CFAF4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F428CB: Me.DGUnit.Visible = False
  loc_F428EA: If (Me.RecordCount > 0) Then
  loc_F42929:   Set var_B4 = Me.Txt
  loc_F4292F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(2), var_B8)
  loc_F42937:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4296A:   var_B0 = Me.Fields.Item("Name")
  loc_F42989:   Set var_B4 = Me.Txt
  loc_F4298F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(2), var_B8)
  loc_F42997:   var_B8.Text = CStr(var_B0.Value)
  loc_F429AD: End If
  loc_F429B8: Set var_A8 = Me.Txt
  loc_F429BE: Call 0.Method_DGUnit_UnknownEvent_90 (CInt(2))
  loc_F429C6: var_B0.SetFocus
  loc_F429D2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FD3F94
  'Data Table: 4CFAF4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B4 As String
  loc_FD3DE6: Set var_88 = Me.Txt
  loc_FD3DEC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FD3DFA: Proc_6_74_E23240(var_8C)
  loc_FD3E06: Call Proc_168_24_E55E3C(var_8C)
  loc_FD3E0E: var_92 = Index
  loc_FD3E19: If Not (var_92 = CInt(0)) Then
  loc_FD3E24:   If (var_92 = CInt(1)) Then
  loc_FD3E27:   End If
  loc_FD3E2F:   var_98 = "{Home}+{End}"
  loc_FD3E35:   Proc_303_0_FBACC8(var_98, 0)
  loc_FD3E40: Else
  loc_FD3E48:   If (var_92 = CInt(2)) Then
  loc_FD3E99:     Set var_88 = Me.Txt
  loc_FD3E9F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_FD3EA7:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FD3EBF:     If (var_92 Or (var_98 = vbNullString)) Then
  loc_FD3EC2:       Exit Sub
  loc_FD3EC3:     End If
  loc_FD3ED0:     Set var_88 = Me.Txt
  loc_FD3ED6:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FD3EDE:     var_98 = var_8C.Text
  loc_FD3EF0:     var_B4 = "Name"
  loc_FD3F2B:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B4).Value) Then
  loc_FD3F34:       Me.MoveFirst
  loc_FD3F57:       Set var_88 = Me.Txt
  loc_FD3F5D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_FD3F65:       0 = var_8C.Text
  loc_FD3F7E:       Me.Find 1 & var_98 & "'", var_B4, 
  loc_FD3F93:     End If
  loc_FD3F93:   End If
  loc_FD3F93: End If
  loc_FD3F93: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F287DC
  'Data Table: 4CFAF4
  loc_F286EA: If (CLng(Shift) = &H1B) Then
  loc_F286ED:   Call Proc_168_24_E55E3C()
  loc_F286F2:   Exit Sub
  loc_F286F3: End If
  loc_F28701: If (KeyCode = CInt(2)) Then
  loc_F2871C:   Set var_9C = Nothing
  loc_F28727:   Set var_98 = Nothing
  loc_F28755:   Proc_6_69_134A630(Me.DGUnit, Me.Txt, KeyCode, global_52, Shift, 0)
  loc_F28769: End If
  loc_F28785: If (CBool(Me.DGUnit.Visible) = 0) Then
  loc_F2879D:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F287A6:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F287AB:   End If
  loc_F287B3:   If (KeyCode <> CInt(0)) Then
  loc_F287CB:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F287D4:       Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_F287D9:     End If
  loc_F287D9:   End If
  loc_F287D9: End If
  loc_F287D9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E8F940
  'Data Table: 4CFAF4
  loc_E8F8CF: Proc_6_58_E06050(arg_10)
  loc_E8F8E2: If (KeyAscii = CInt(2)) Then
  loc_E8F901:   If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_E8F913:     var_A0 = "Name"
  loc_E8F92E:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_52, arg_10)
  loc_E8F93D:   End If
  loc_E8F93D: End If
  loc_E8F93D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C424
  'Data Table: 4CFAF4
  loc_E4C402: Set var_88 = Me.Txt
  loc_E4C408: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C416: Proc_6_73_E23294(var_8C)
  loc_E4C422: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10F3204
  'Data Table: 4CFAF4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_F0 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_EC As TextBox
  Dim var_E8 As CommandButton
  loc_10F2EEF: var_86 = Cancel
  loc_10F2EFA: If Not (var_86 = CInt(0)) Then
  loc_10F2F05:   If (var_86 = CInt(1)) Then
  loc_10F2F08:   End If
  loc_10F2F15:   Set var_8C = Me.Txt
  loc_10F2F1B:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10F2F53:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_10F2F68:     Set var_8C = Me.Txt
  loc_10F2F6E:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10F2F76:     var_90.Text = CStr(MemVar_1F950EC)
  loc_10F2F88:   Else
  loc_10F2F92:     Set var_8C = Me.Txt
  loc_10F2F98:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10F2FAB:     var_94 = Proc_6_33_15125B8(var_90)
  loc_10F2FB8:     Set var_EC = Me.Txt
  loc_10F2FBE:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_10F2FC6:     var_F0.Text = var_94
  loc_10F2FD9:   End If
  loc_10F2FDC: Else
  loc_10F2FE4:   If (var_86 = CInt(2)) Then
  loc_10F3035:     Set var_8C = Me.Txt
  loc_10F303B:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_10F3043:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10F305B:     If (var_86 Or (var_94 = vbNullString)) Then
  loc_10F306B:       Set var_8C = Me.Txt
  loc_10F3071:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10F3079:       var_90.Text = vbNullString
  loc_10F3092:       Set var_8C = Me.Txt
  loc_10F3098:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10F30A0:       var_90.Tag = vbNullString
  loc_10F30AF:     Else
  loc_10F30EA:       Set var_E8 = Me.Txt
  loc_10F30F0:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_10F30F8:       var_EC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10F312B:       var_90 = Me.Fields.Item("Code")
  loc_10F3149:       Set var_E8 = Me.Txt
  loc_10F314F:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_10F3157:       var_EC.Tag = CStr(var_90.Value)
  loc_10F317E:       Set var_8C = Me.Txt
  loc_10F3184:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_10F31A2:       Me.CmdIss.Caption = "Send To " & var_90.Text
  loc_10F31C8:       Set var_8C = Me.Txt
  loc_10F31CE:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_10F31EC:       Me.CmdRec.Caption = "Receive From " & var_90.Text
  loc_10F3201:     End If
  loc_10F3201:   End If
  loc_10F3201: End If
  loc_10F3201: Exit Sub
End Sub

Private Sub CmdTemplate_Click() '195A178
  'Data Table: 4CFAF4
  Dim var_D0 As String
  Dim var_D8 As CommandButton
  Dim var_E8 As Variant
  Dim var_10C As Variant
  Dim var_F8 As Variant
  Dim var_134 As String
  Dim var_96 As Integer
  Dim var_164 As String
  Dim var_150 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_A4 As Long
  Dim var_248 As Long
  Dim var_A8 As Long
  Dim var_298 As Long
  loc_19574E0: On Error Resume Next
  loc_19574F8: Call 0.Method_CmdTemplate_Click4 (MemVar_1F95230 & "\Template.mdb")
  loc_1957506: If (var_D2 = 0) Then
  loc_195750B:   Exit Sub
  loc_195750C:   GoTo loc_195A0FB
  loc_195750F: End If
  loc_1957519: Set var_D8 = Me.CmdTemplate
  loc_195751F: var_D8.Enabled = False
  loc_1957530: var_D0 = "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F95230
  loc_1957541: Call 0.Method_arg_24 (CVar(var_D0 & "\Template.mdb"))
  loc_1957557: Call 0.Method_arg_38 ("A")
  loc_1957560: Close 1
  loc_195756B: Open "C:\reptmp\ASSSTRUCT.TXT" For Output As 1 Len = &HFF
  loc_1957586: Call 0.Method_arg_9C (-1)
  loc_1957590: Set var_FC = New 
  loc_195759B: Call 0.Method_arg_BC (0)
  loc_19575A7: Call 0.Method_arg_E8 (0)
  loc_19575B8: var_10C = CVar(MemVar_1F950D8) 'String
  loc_19575C6: Call 0.Method_arg_100 (CVar(MemVar_1F95098), var_10C)
  loc_19575CF: Set var_FC = Nothing 
  loc_19575EC: Call 0.Method_arg_34 (var_D8, CVar(MemVar_1F95108), var_10C)
  loc_19575F4: Call 0.Method_arg_30 (var_120, CVar(MemVar_1F950D4))
  loc_19575FC: MemVar_1F95208 = var_120
  loc_1957608: var_9C = vbNullString
  loc_1957610: Set var_124 = MemVar_1F95208 
  loc_1957627: Call 0.Method_arg_3C (var_D8, var_128, var_A0)
  loc_195762F: Call 0.Method_arg_38 (1)
  loc_195763A: For var_130 =  To var_128: var_D2 = var_130 'Long
  loc_195765A:   Call 0.Method_arg_3C (var_D8, CVar(var_A0), var_10C)
  loc_1957662:   Call 0.Method_arg_30 (var_120)
  loc_195766A:   Call 0.Method_arg_74 (var_D2)
  loc_195767C:   If (var_D2 = 0) Then
  loc_1957699:     Call 0.Method_arg_3C (var_D8, CVar(var_A0), var_10C)
  loc_19576A1:     Call 0.Method_arg_30 (var_120)
  loc_19576A9:     Call 0.Method_arg_34 (var_D0)
  loc_19576B1:     var_9C = var_D0
  loc_19576C4:     var_D0 = "bl = PubAnalysis.SanFaCreateTable(Cat, """ & var_9C
  loc_19576D0:     Print 1, var_D0 & """)"
  loc_19576EE:     Set var_D8 = var_88
  loc_19576FA:     Call 0.Method_arg_1D0 (var_D8, var_9C)
  loc_1957705:     Set var_88 = var_D8
  loc_1957728:     Call 0.Method_arg_3C (var_D8, CVar(var_A0), var_10C)
  loc_1957730:     Call 0.Method_arg_30 (var_120, var_D2)
  loc_1957738:     Set var_138 = var_120
  loc_1957751:     Call 0.Method_arg_3C (var_D8, var_128, var_A4)
  loc_1957759:     Call 0.Method_arg_38 (1)
  loc_1957764:     For var_140 =  To var_128: var_D2 = var_140 'Long
  loc_1957780:       Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1957788:       Call 0.Method_arg_30 (var_120)
  loc_1957790:       Call 0.Method_arg_54 (var_D0)
  loc_19577A6:       var_160 = Ucase(CVar(var_D0)) 'Variant
  loc_19577C1:       If Not (var_160 = "INT") Then
  loc_19577CF:         If (var_160 = "LONG") Then
  loc_19577D2:         End If
  loc_19577D7:         var_AC = "0"
  loc_19577E7:         var_B0 = vbNullString
  loc_19577F3:         var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_1957820:         Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_1957828:         Call 0.Method_arg_30 (var_D0)
  loc_1957830:         Call 0.Method_arg_34 (var_D0 & """, " & """")
  loc_195785C:         var_D0 = var_D0 & """, " & "adInteger"
  loc_1957885:         Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_195788D:         Call 0.Method_arg_30 (var_D2)
  loc_1957895:         Call 0.Method_arg_78 (CVar(var_D0 & ", , "))
  loc_19578C2:         Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_19578CA:         Call 0.Method_arg_30 (var_18E)
  loc_19578D2:         Call 0.Method_arg_78 (var_D2 & ", 0, ")
  loc_1957911:         Print 1, CStr(Not(var_18E) & ")")
  loc_195792D:         Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1957935:         Call 0.Method_arg_30 (var_120)
  loc_195793D:         Call 0.Method_arg_34 (var_D0)
  loc_195794A:         var_E8 = 0
  loc_1957977:         Set var_178 = var_88
  loc_1957983:         Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, 3, 0)
  loc_195798E:         Set var_88 = var_178
  loc_1957994:         var_96 = var_1D6
  loc_19579A9:       Else
  loc_19579B6:         If (var_160 = "SMALLINT") Then
  loc_19579BE:           var_AC = "0"
  loc_19579CE:           var_B0 = vbNullString
  loc_19579DA:           var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_1957A07:           Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_1957A0F:           Call 0.Method_arg_30 (var_96, 0, var_E8)
  loc_1957A17:           Call 0.Method_arg_34 (&HFF)
  loc_1957A43:           var_D0 = var_1D6 & var_D0 & """, " & "adSmallInt"
  loc_1957A6C:           Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_1957A74:           Call 0.Method_arg_30 (var_D2)
  loc_1957A7C:           Call 0.Method_arg_78 (CVar(var_D0 & ", , "))
  loc_1957AA9:           Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_1957AB1:           Call 0.Method_arg_30 (var_18E)
  loc_1957AB9:           Call 0.Method_arg_78 (var_D2 & ", 0, ")
  loc_1957AF8:           Print 1, CStr(Not(var_18E) & ")")
  loc_1957B14:           Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1957B1C:           Call 0.Method_arg_30 (var_120)
  loc_1957B24:           Call 0.Method_arg_34 (var_D0)
  loc_1957B31:           var_E8 = 0
  loc_1957B5E:           Set var_178 = var_88
  loc_1957B6A:           Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, 2, 0)
  loc_1957B75:           Set var_88 = var_178
  loc_1957B7B:           var_96 = var_1D6
  loc_1957B90:         Else
  loc_1957B9D:           If Not (var_160 = "DOUBLE") Then
  loc_1957BAB:             If (var_160 = "FLOAT") Then
  loc_1957BAE:             End If
  loc_1957BB3:             var_AC = "0"
  loc_1957BC3:             var_B0 = vbNullString
  loc_1957BCF:             var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_1957BFC:             Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_1957C04:             Call 0.Method_arg_30 (var_96, 0, var_E8)
  loc_1957C0C:             Call 0.Method_arg_34 (&HFF)
  loc_1957C38:             var_D0 = var_1D6 & var_D0 & """, " & "adDouble"
  loc_1957C61:             Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_1957C69:             Call 0.Method_arg_30 (var_D2)
  loc_1957C71:             Call 0.Method_arg_78 (CVar(var_D0 & ", , "))
  loc_1957C9E:             Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_1957CA6:             Call 0.Method_arg_30 (var_18E)
  loc_1957CAE:             Call 0.Method_arg_78 (var_D2 & ", 0, ")
  loc_1957CED:             Print 1, CStr(Not(var_18E) & ")")
  loc_1957D09:             Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1957D11:             Call 0.Method_arg_30 (var_120)
  loc_1957D19:             Call 0.Method_arg_34 (var_D0)
  loc_1957D26:             var_E8 = 0
  loc_1957D53:             Set var_178 = var_88
  loc_1957D5F:             Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, 5, 0)
  loc_1957D6A:             Set var_88 = var_178
  loc_1957D70:             var_96 = var_1D6
  loc_1957D85:           Else
  loc_1957D92:             If (var_160 = "NUMERIC") Then
  loc_1957D9A:               var_AC = "0"
  loc_1957DAA:               var_B0 = vbNullString
  loc_1957DB6:               var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_1957DE3:               Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_1957DEB:               Call 0.Method_arg_30 (var_96, 0, var_E8)
  loc_1957DF3:               Call 0.Method_arg_34 (&HFF)
  loc_1957E1F:               var_D0 = var_1D6 & var_D0 & """, " & "adSingle"
  loc_1957E48:               Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_1957E50:               Call 0.Method_arg_30 (var_D2)
  loc_1957E58:               Call 0.Method_arg_78 (CVar(var_D0 & ", , "))
  loc_1957E85:               Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_1957E8D:               Call 0.Method_arg_30 (var_18E)
  loc_1957E95:               Call 0.Method_arg_78 (var_D2 & ", 0, ")
  loc_1957ED4:               Print 1, CStr(Not(var_18E) & ")")
  loc_1957EF0:               Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1957EF8:               Call 0.Method_arg_30 (var_120)
  loc_1957F00:               Call 0.Method_arg_34 (var_D0)
  loc_1957F0D:               var_E8 = 0
  loc_1957F3A:               Set var_178 = var_88
  loc_1957F46:               Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, 4, 0)
  loc_1957F51:               Set var_88 = var_178
  loc_1957F57:               var_96 = var_1D6
  loc_1957F6C:             Else
  loc_1957F79:               If Not (var_160 = "SMALLDATETIME") Then
  loc_1957F87:                 If (var_160 = "DATETIME") Then
  loc_1957F8A:                 End If
  loc_1957F97:                 var_B0 = vbNullString
  loc_1957FA3:                 var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_1957FD0:                 Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_1957FD8:                 Call 0.Method_arg_30 (var_96, 0, var_E8)
  loc_1957FE0:                 Call 0.Method_arg_34 (&HFF)
  loc_195800C:                 var_D0 = var_1D6 & var_D0 & """, " & "adDate"
  loc_1958035:                 Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_195803D:                 Call 0.Method_arg_30 (var_D2)
  loc_1958045:                 Call 0.Method_arg_78 (CVar(var_D0 & ", , "))
  loc_1958051:                 var_E8 = var_D2 
  loc_1958072:                 Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_195807A:                 Call 0.Method_arg_30 (var_18E)
  loc_1958082:                 Call 0.Method_arg_78 (var_E8 & ", , ")
  loc_19580C1:                 Print 1, CStr(Not(var_18E) & ")")
  loc_19580DD:                 Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_19580E5:                 Call 0.Method_arg_30 (var_120)
  loc_19580ED:                 Call 0.Method_arg_34 (var_D0)
  loc_1958125:                 Set var_178 = var_88
  loc_1958131:                 Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, 7, 0)
  loc_195813C:                 Set var_88 = var_178
  loc_1958142:                 var_96 = var_1D6
  loc_1958157:               Else
  loc_1958164:                 If Not (var_160 = "VARCHAR") Then
  loc_1958172:                   If Not (var_160 = "CHAR") Then
  loc_1958180:                     If (var_160 = "NVARCHAR") Then
  loc_1958183:                     End If
  loc_1958183:                   End If
  loc_1958198:                   var_B0 = vbNullString
  loc_19581A4:                   var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_19581D1:                   Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_19581D9:                   Call 0.Method_arg_30 (var_96, 0, var_E8)
  loc_19581E1:                   Call 0.Method_arg_34 (&HFF)
  loc_195821A:                   Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1958222:                   Call 0.Method_arg_30 (var_120)
  loc_195822A:                   Call 0.Method_arg_60 (var_128)
  loc_1958243:                   Call 0.Method_arg_3C (var_178, CVar(var_A4))
  loc_195824B:                   Call 0.Method_arg_30 (var_18C)
  loc_1958253:                   Call 0.Method_arg_60 (var_1D4)
  loc_195825F:                   var_D0 = var_1D6 & var_D0 & """, " & "adWChar"
  loc_19582D9:                   Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_19582E1:                   Call 0.Method_arg_30 (var_D2)
  loc_19582E9:                   Call 0.Method_arg_78 (CVar(CStr(CVar(var_D0 & ", ") & IIf((var_128 < &HFF), CVar(var_1D4), 255) & ", ")))
  loc_1958329:                   Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_1958331:                   Call 0.Method_arg_30 (var_18E)
  loc_1958339:                   Call 0.Method_arg_78 (var_D2 & ", " & CVar("""""""") & ", ")
  loc_195837C:                   Print 1, CStr(Not(var_18E) & ")")
  loc_1958398:                   Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_19583A0:                   Call 0.Method_arg_30 (var_120)
  loc_19583A8:                   Call 0.Method_arg_34 (var_D0)
  loc_19583C1:                   Call 0.Method_arg_3C (var_178, CVar(var_A4))
  loc_19583C9:                   Call 0.Method_arg_30 (var_18C)
  loc_19583D1:                   Call 0.Method_arg_60 (var_128)
  loc_19583EA:                   Call 0.Method_arg_3C (var_21C, CVar(var_A4))
  loc_19583F2:                   Call 0.Method_arg_30 (var_220)
  loc_19583FA:                   Call 0.Method_arg_60 (var_1D4)
  loc_195842D:                   var_1D0 = """"""
  loc_195845B:                   Set var_224 = var_88
  loc_1958467:                   Call 0.Method_arg_1D4 (var_224, var_9C, var_D0, &H82, CLng(IIf((var_128 < &HFF), CVar(var_1D4), 255)))
  loc_1958472:                   Set var_88 = var_224
  loc_1958478:                   var_96 = var_1D6
  loc_195849F:                 Else
  loc_19584AC:                   If (var_160 = "BIT") Then
  loc_19584C4:                     var_B0 = vbNullString
  loc_19584D0:                     var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_19584FD:                     Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_1958505:                     Call 0.Method_arg_30 (var_96, 0, var_1D0)
  loc_195850D:                     Call 0.Method_arg_34 (&HFF)
  loc_1958539:                     var_D0 = var_1D6 & var_D0 & """, " & "adBoolean"
  loc_1958562:                     Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_195856A:                     Call 0.Method_arg_30 (var_D2)
  loc_1958572:                     Call 0.Method_arg_78 (CVar(var_D0 & ", , "))
  loc_19585B2:                     Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_19585BA:                     Call 0.Method_arg_30 (var_18E)
  loc_19585C2:                     Call 0.Method_arg_78 (var_D2 & ", " & CVar("0") & ", ")
  loc_1958605:                     Print 1, CStr(Not(var_18E) & ")")
  loc_1958621:                     Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1958629:                     Call 0.Method_arg_30 (var_120)
  loc_1958631:                     Call 0.Method_arg_34 (var_D0)
  loc_195863E:                     var_E8 = 0
  loc_195866B:                     Set var_178 = var_88
  loc_1958677:                     Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, &HB, 0)
  loc_1958682:                     Set var_88 = var_178
  loc_1958688:                     var_96 = var_1D6
  loc_195869D:                   Else
  loc_19586AA:                     If (var_160 = "IMAGE") Then
  loc_19586C2:                       var_B0 = vbNullString
  loc_19586CE:                       var_D0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_9C
  loc_19586FB:                       Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120, var_D0, var_D0 & """, " & """")
  loc_1958703:                       Call 0.Method_arg_30 (var_96, &HFF, var_E8)
  loc_195870B:                       Call 0.Method_arg_34 (&HFF)
  loc_1958737:                       var_D0 = var_1D6 & var_D0 & """, " & "adLongVarBinary"
  loc_1958749:                       var_10C = CVar(var_D0 & ", , ") 'String
  loc_1958760:                       Call 0.Method_arg_3C (var_D8, CVar(var_A4), var_120)
  loc_1958768:                       Call 0.Method_arg_30 (var_D2)
  loc_1958770:                       Call 0.Method_arg_78 (var_10C)
  loc_1958798:                       var_1D0 = var_D2 & ", " & CVar("0") & ", " 
  loc_19587B0:                       Call 0.Method_arg_3C (var_178, CVar(var_A4), var_18C)
  loc_19587B8:                       Call 0.Method_arg_30 (var_18E)
  loc_19587C0:                       Call 0.Method_arg_78 (var_1D0)
  loc_1958803:                       Print 1, CStr(Not(var_18E) & ")")
  loc_195881F:                       Call 0.Method_arg_3C (var_D8, CVar(var_A4))
  loc_1958827:                       Call 0.Method_arg_30 (var_120)
  loc_195882F:                       Call 0.Method_arg_34 (var_D0)
  loc_195883C:                       var_E8 = 0
  loc_1958869:                       Set var_178 = var_88
  loc_1958875:                       Call 0.Method_arg_1D4 (var_178, var_9C, var_D0, &HCD, 0)
  loc_1958880:                       Set var_88 = var_178
  loc_1958886:                       var_96 = var_1D6
  loc_1958898:                     End If
  loc_1958898:                   End If
  loc_1958898:                 End If
  loc_1958898:               End If
  loc_1958898:             End If
  loc_1958898:           End If
  loc_1958898:         End If
  loc_1958898:       End If
  loc_195889F:     Next var_140 'Long
  loc_19588A8:     Set var_138 = Nothing 
  loc_19588B3:     Print 1, vbNullString
  loc_19588B9:   End If
  loc_19588C0: Next var_130 'Long
  loc_19588C9: Set var_124 = Nothing 
  loc_19588D2: Set var_230 = MemVar_1F95208 
  loc_19588E9: Call 0.Method_arg_3C (var_D8, var_128)
  loc_19588F1: Call 0.Method_arg_38 (var_A0)
  loc_19588FC: For var_238 =  To var_128: 1 = var_238 'Long
  loc_195891C:   Call 0.Method_arg_3C (var_D8, CVar(var_A0), var_10C)
  loc_1958924:   Call 0.Method_arg_30 (var_120)
  loc_195892C:   Call 0.Method_arg_74 (var_D2)
  loc_195893E:   If (var_D2 = 0) Then
  loc_195895B:     Call 0.Method_arg_3C (var_D8, CVar(var_A0), var_10C)
  loc_1958963:     Call 0.Method_arg_30 (var_120)
  loc_195896B:     Call 0.Method_arg_34 (var_D0)
  loc_1958973:     var_9C = var_D0
  loc_1958994:     Call 0.Method_arg_3C (var_D8, CVar(var_A0))
  loc_195899C:     Call 0.Method_arg_30 (var_10C)
  loc_19589A4:     Set var_23C = var_120
  loc_19589B1:     var_A4 = 1
  loc_19589BC:     Call 0.Method_arg_60 (var_D8, var_A4)
  loc_19589CC:     If Not((var_D8 Is Nothing)) Then
  loc_19589DA:       Call 0.Method_arg_60 (var_D8, var_D0)
  loc_19589E2:       Call 0.Method_arg_34 (var_120)
  loc_19589EA:       var_B4 = var_D0
  loc_19589F5:       var_B0 = vbNullString
  loc_1958A01:       var_D0 = "bl = PubAnalysis.SanFaCreateIndex(Cat, """ & var_9C
  loc_1958A31:       ReDim var_CC(0 To 1)
  loc_1958A49:       Call 0.Method_arg_60 (var_D8, var_120)
  loc_1958A51:       Call 0.Method_CmdTemplate_ClickC (var_128)
  loc_1958A59:       Call 0.Method_arg_38 ()
  loc_1958A6E:       If (var_128 = 1) Then
  loc_1958A8A:         Call 0.Method_arg_60 (var_D8, var_120, CVar(var_A4))
  loc_1958A92:         Call 0.Method_CmdTemplate_ClickC (var_D0)
  loc_1958A9A:         Call 0.Method_arg_30 (var_D0 & """, """ & var_B4 & """, True, True, adIndexNullsDisallow, """)
  loc_1958AAA:         var_B0 = var_D0 & """)"
  loc_1958AD1:         Call 0.Method_arg_60 (var_D8, var_120)
  loc_1958AD9:         Call 0.Method_CmdTemplate_ClickC (CVar(var_A4))
  loc_1958AE1:         Call 0.Method_arg_30 (var_D0)
  loc_1958AEF:         var_CC(var_A4) = var_D0
  loc_1958AFD:       Else
  loc_1958B15:         Call 0.Method_arg_60 (var_D8, var_120, var_128)
  loc_1958B1D:         Call 0.Method_CmdTemplate_ClickC (var_A4)
  loc_1958B25:         Call 0.Method_arg_38 (1)
  loc_1958B3A:         For var_244 =  To (var_128 - 1):    = var_244 'Long
  loc_1958B59:           Call 0.Method_arg_60 (var_D8, var_120, CVar(var_A4))
  loc_1958B61:           Call 0.Method_CmdTemplate_ClickC (var_D0)
  loc_1958B69:           Call 0.Method_arg_30 (var_B0)
  loc_1958B79:           var_B0 = var_D0 & """, """
  loc_1958B97:           ReDim Preserve var_CC(0 To var_A4)
  loc_1958BB7:           Call 0.Method_arg_60 (var_D8, var_120)
  loc_1958BBF:           Call 0.Method_CmdTemplate_ClickC (CVar(var_A4))
  loc_1958BC7:           Call 0.Method_arg_30 (var_D0)
  loc_1958BD5:           var_CC(var_A4) = var_D0
  loc_1958BE5:         Next var_244 'Long
  loc_1958C03:         Call 0.Method_arg_60 (var_D8, var_120, CVar(var_A4))
  loc_1958C0B:         Call 0.Method_CmdTemplate_ClickC (var_D0)
  loc_1958C13:         Call 0.Method_arg_30 (var_B0)
  loc_1958C23:         var_B0 = var_D0 & """)"
  loc_1958C41:         ReDim Preserve var_CC(0 To var_A4)
  loc_1958C61:         Call 0.Method_arg_60 (var_D8, var_120)
  loc_1958C69:         Call 0.Method_CmdTemplate_ClickC (CVar(var_A4))
  loc_1958C71:         Call 0.Method_arg_30 (var_D0)
  loc_1958C7F:         var_CC(var_A4) = var_D0
  loc_1958C8A:       End If
  loc_1958C93:       Print 1, var_B0
  loc_1958CA7:       Call 0.Method_arg_60 (var_D8, var_120)
  loc_1958CAF:       Call 0.Method_CmdTemplate_ClickC (var_128)
  loc_1958CB7:       Call 0.Method_arg_38 ()
  loc_1958CBF:       var_248 = var_128
  loc_1958CD4:       If (var_248 = 1) Then
  loc_1958CE1:         var_264 = 0
  loc_1958CEC:         var_260 = 0
  loc_1958CF7:         var_25C = 0
  loc_1958D02:         var_258 = 0
  loc_1958D0D:         var_254 = 0
  loc_1958D18:         var_250 = 0
  loc_1958D23:         var_164 = 0
  loc_1958D2E:         var_134 = 0
  loc_1958D6C:         Set var_D8 = var_88
  loc_1958D78:         Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), 0)
  loc_1958D83:         Set var_88 = var_D8
  loc_1958D8C:         var_96 = var_1D6
  loc_1958DAA:       Else
  loc_1958DB5:         If (var_248 = 2) Then
  loc_1958DC2:           var_260 = 0
  loc_1958DCD:           var_25C = 0
  loc_1958DD8:           var_258 = 0
  loc_1958DE3:           var_254 = 0
  loc_1958DEE:           var_250 = 0
  loc_1958DF9:           var_164 = 0
  loc_1958E04:           var_134 = 0
  loc_1958E0F:           var_D0 = 0
  loc_1958E4E:           Set var_D8 = var_88
  loc_1958E5A:           Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_1958E65:           Set var_88 = var_D8
  loc_1958E71:           var_96 = var_1D6
  loc_1958E8D:         Else
  loc_1958E98:           If (var_248 = 3) Then
  loc_1958EA5:             var_25C = 0
  loc_1958EB0:             var_258 = 0
  loc_1958EBB:             var_254 = 0
  loc_1958EC6:             var_250 = 0
  loc_1958ED1:             var_164 = 0
  loc_1958EDC:             var_134 = 0
  loc_1958EE7:             var_D0 = 0
  loc_1958F32:             Set var_D8 = var_88
  loc_1958F3E:             Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_1958F49:             Set var_88 = var_D8
  loc_1958F58:             var_96 = var_1D6
  loc_1958F72:           Else
  loc_1958F7D:             If (var_248 = 4) Then
  loc_1958F8A:               var_258 = 0
  loc_1958F95:               var_254 = 0
  loc_1958FA0:               var_250 = 0
  loc_1958FAB:               var_164 = 0
  loc_1958FB6:               var_134 = 0
  loc_1958FC1:               var_D0 = 0
  loc_1959018:               Set var_D8 = var_88
  loc_1959024:               Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_195902F:               Set var_88 = var_D8
  loc_1959041:               var_96 = var_1D6
  loc_1959059:             Else
  loc_1959064:               If (var_248 = 5) Then
  loc_1959071:                 var_254 = 0
  loc_195907C:                 var_250 = 0
  loc_1959087:                 var_164 = 0
  loc_1959092:                 var_134 = 0
  loc_195909D:                 var_D0 = 0
  loc_1959100:                 Set var_D8 = var_88
  loc_195910C:                 Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_1959117:                 Set var_88 = var_D8
  loc_195912C:                 var_96 = var_1D6
  loc_1959142:               Else
  loc_195914D:                 If (var_248 = 6) Then
  loc_195915A:                   var_250 = 0
  loc_1959165:                   var_164 = 0
  loc_1959170:                   var_134 = 0
  loc_195917B:                   var_D0 = 0
  loc_19591EA:                   Set var_D8 = var_88
  loc_19591F6:                   Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_1959201:                   Set var_88 = var_D8
  loc_1959219:                   var_96 = var_1D6
  loc_195922D:                 Else
  loc_1959238:                   If (var_248 = 7) Then
  loc_1959245:                     var_164 = 0
  loc_1959250:                     var_134 = 0
  loc_195925B:                     var_D0 = 0
  loc_19592D6:                     Set var_D8 = var_88
  loc_19592E2:                     Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_19592ED:                     Set var_88 = var_D8
  loc_1959308:                     var_96 = var_1D6
  loc_195931A:                   Else
  loc_1959325:                     If (var_248 = 8) Then
  loc_1959332:                       var_134 = 0
  loc_195933D:                       var_D0 = 0
  loc_19593C4:                       Set var_D8 = var_88
  loc_19593D0:                       Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_19593DB:                       Set var_88 = var_D8
  loc_19593F9:                       var_96 = var_1D6
  loc_1959409:                     Else
  loc_1959414:                       If (var_248 = 9) Then
  loc_1959421:                         var_D0 = 0
  loc_19594B4:                         Set var_D8 = var_88
  loc_19594C0:                         Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, &HFF, &HFF, 1, var_CC(1), var_CC(2))
  loc_19594CB:                         Set var_88 = var_D8
  loc_19594EC:                         var_96 = var_1D6
  loc_19594F5:                       End If
  loc_19594F5:                     End If
  loc_19594F5:                   End If
  loc_19594F5:                 End If
  loc_19594F5:               End If
  loc_19594F5:             End If
  loc_19594F5:           End If
  loc_19594F5:         End If
  loc_19594F5:       End If
  loc_19594F7:     End If
  loc_195950C:     Call 0.Method_arg_64 (var_D8, var_128, var_A4, 1, var_96, var_CC(3))
  loc_1959514:     Call 0.Method_arg_38 (var_CC(4), var_CC(5), var_CC(6))
  loc_195951F:     For var_28C = var_CC(8) To var_128: var_CC(7) = var_28C 'Long
  loc_195952A:       var_B0 = vbNullString
  loc_1959532:       var_B4 = vbNullString
  loc_1959550:       Call 0.Method_arg_64 (var_D8, CVar(var_A4), var_120, var_D0)
  loc_1959558:       Call 0.Method_arg_30 (1, var_CC(8))
  loc_1959560:       Call 0.Method_arg_34 (var_CC(9))
  loc_1959591:       Call 0.Method_arg_64 (var_178, CVar(var_A4), var_18C)
  loc_1959599:       Call 0.Method_arg_30 (var_134, 1)
  loc_19595A1:       Call 0.Method_arg_34 ((InStr(, var_D0, "PK", 0) = 0))
  loc_19595CC:       If ( And (InStr(, var_134, "Sys", 0) = 0)) Then
  loc_19595E5:         Call 0.Method_arg_64 (var_D8, CVar(var_A4))
  loc_19595ED:         Call 0.Method_arg_30 (var_120)
  loc_19595F5:         Call 0.Method_arg_34 (var_D0)
  loc_19595FD:         var_B4 = var_D0
  loc_1959640:         ReDim var_CC(0 To 1)
  loc_1959651:         var_A8 = 1
  loc_195966A:         Call 0.Method_arg_64 (var_D8, CVar(var_A4), var_120)
  loc_1959672:         Call 0.Method_arg_30 (var_178)
  loc_195967A:         Call 0.Method_arg_5C (var_A8)
  loc_1959682:         Set var_B8 = var_178
  loc_1959694:         Call 0.Method_arg_38 (var_128)
  loc_19596A2:         If (var_128 = 1) Then
  loc_19596B5:           Call 0.Method_arg_30 (CVar(var_A8))
  loc_19596BD:           var_C8 = var_D8 'Address Function
  loc_19596C6:           var_F8 = CVar("bl = PubAnalysis.SanFaCreateIndex(Cat, """ & var_9C & """, """ & var_B4 & """, False, False, adIndexNullsAllow, """) 'String
  loc_19596E0:           var_B0 = CStr(var_F8 & var_C8.Name & """)")
  loc_1959701:           var_CC(var_A8) = CStr(var_C8.Name)
  loc_195970B:         Else
  loc_195971D:           Call 0.Method_arg_38 (var_128, var_A8)
  loc_195972B:           For var_294 = var_D8 To (var_128 - 1):   1 = var_294 'Long
  loc_1959741:             Call 0.Method_arg_30 (CVar(var_A8), var_D8)
  loc_1959749:             var_C8 = var_D8 'Address Function
  loc_195976C:             var_B0 = CStr(CVar(var_B0) & var_C8.Name & """, """)
  loc_1959785:             ReDim Preserve var_CC(0 To var_A8)
  loc_19597A4:             var_CC(var_A8) = CStr(var_C8.Name)
  loc_19597B0:           Next var_294 'Long
  loc_19597C5:           Call 0.Method_arg_30 (CVar(var_A8))
  loc_19597CD:           var_C8 = var_D8 'Address Function
  loc_19597E2:           var_150 = CVar(var_B0) & var_C8.Name 
  loc_19597EB:           var_1B0 = var_150 & """)" 
  loc_19597F0:           var_B0 = CStr(var_1B0)
  loc_1959809:           ReDim Preserve var_CC(0 To var_A8)
  loc_1959828:           var_CC(var_A8) = CStr(var_C8.Name)
  loc_195982F:         End If
  loc_1959838:         Print 1, var_B0
  loc_1959846:         Call 0.Method_arg_38 (var_128)
  loc_195984E:         var_298 = var_128
  loc_195985C:         If (var_298 = 1) Then
  loc_1959869:           var_264 = 0
  loc_1959874:           var_260 = 0
  loc_195987F:           var_25C = 0
  loc_195988A:           var_258 = 0
  loc_1959895:           var_254 = 0
  loc_19598A0:           var_250 = 0
  loc_19598AB:           var_164 = 0
  loc_19598B6:           var_134 = 0
  loc_19598F4:           Set var_D8 = var_88
  loc_1959900:           Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), 0)
  loc_195990B:           Set var_88 = var_D8
  loc_1959914:           var_96 = var_1D6
  loc_1959932:         Else
  loc_195993D:           If (var_298 = 2) Then
  loc_195994A:             var_260 = 0
  loc_1959955:             var_25C = 0
  loc_1959960:             var_258 = 0
  loc_195996B:             var_254 = 0
  loc_1959976:             var_250 = 0
  loc_1959981:             var_164 = 0
  loc_195998C:             var_134 = 0
  loc_1959997:             var_D0 = 0
  loc_19599D6:             Set var_D8 = var_88
  loc_19599E2:             Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_19599ED:             Set var_88 = var_D8
  loc_19599F9:             var_96 = var_1D6
  loc_1959A15:           Else
  loc_1959A20:             If (var_298 = 3) Then
  loc_1959A2D:               var_25C = 0
  loc_1959A38:               var_258 = 0
  loc_1959A43:               var_254 = 0
  loc_1959A4E:               var_250 = 0
  loc_1959A59:               var_164 = 0
  loc_1959A64:               var_134 = 0
  loc_1959A6F:               var_D0 = 0
  loc_1959ABA:               Set var_D8 = var_88
  loc_1959AC6:               Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_1959AD1:               Set var_88 = var_D8
  loc_1959AE0:               var_96 = var_1D6
  loc_1959AFA:             Else
  loc_1959B05:               If (var_298 = 4) Then
  loc_1959B12:                 var_258 = 0
  loc_1959B1D:                 var_254 = 0
  loc_1959B28:                 var_250 = 0
  loc_1959B33:                 var_164 = 0
  loc_1959B3E:                 var_134 = 0
  loc_1959B49:                 var_D0 = 0
  loc_1959BA0:                 Set var_D8 = var_88
  loc_1959BAC:                 Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_1959BB7:                 Set var_88 = var_D8
  loc_1959BC9:                 var_96 = var_1D6
  loc_1959BE1:               Else
  loc_1959BEC:                 If (var_298 = 5) Then
  loc_1959BF9:                   var_254 = 0
  loc_1959C04:                   var_250 = 0
  loc_1959C0F:                   var_164 = 0
  loc_1959C1A:                   var_134 = 0
  loc_1959C25:                   var_D0 = 0
  loc_1959C88:                   Set var_D8 = var_88
  loc_1959C94:                   Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_1959C9F:                   Set var_88 = var_D8
  loc_1959CB4:                   var_96 = var_1D6
  loc_1959CCA:                 Else
  loc_1959CD5:                   If (var_298 = 6) Then
  loc_1959CE2:                     var_250 = 0
  loc_1959CED:                     var_164 = 0
  loc_1959CF8:                     var_134 = 0
  loc_1959D03:                     var_D0 = 0
  loc_1959D72:                     Set var_D8 = var_88
  loc_1959D7E:                     Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_1959D89:                     Set var_88 = var_D8
  loc_1959DA1:                     var_96 = var_1D6
  loc_1959DB5:                   Else
  loc_1959DC0:                     If (var_298 = 7) Then
  loc_1959DCD:                       var_164 = 0
  loc_1959DD8:                       var_134 = 0
  loc_1959DE3:                       var_D0 = 0
  loc_1959E5E:                       Set var_D8 = var_88
  loc_1959E6A:                       Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_1959E75:                       Set var_88 = var_D8
  loc_1959E90:                       var_96 = var_1D6
  loc_1959EA2:                     Else
  loc_1959EAD:                       If (var_298 = 8) Then
  loc_1959EBA:                         var_134 = 0
  loc_1959EC5:                         var_D0 = 0
  loc_1959F4C:                         Set var_D8 = var_88
  loc_1959F58:                         Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_1959F63:                         Set var_88 = var_D8
  loc_1959F81:                         var_96 = var_1D6
  loc_1959F91:                       Else
  loc_1959F9C:                         If (var_298 = 9) Then
  loc_1959FA9:                           var_D0 = 0
  loc_195A03C:                           Set var_D8 = var_88
  loc_195A048:                           Call 0.Method_arg_1D8 (var_D8, var_9C, var_B4, 0, 0, 0, var_CC(1), var_CC(2))
  loc_195A053:                           Set var_88 = var_D8
  loc_195A074:                           var_96 = var_1D6
  loc_195A07D:                         End If
  loc_195A07D:                       End If
  loc_195A07D:                     End If
  loc_195A07D:                   End If
  loc_195A07D:                 End If
  loc_195A07D:               End If
  loc_195A07D:             End If
  loc_195A07D:           End If
  loc_195A07D:         End If
  loc_195A07F:       End If
  loc_195A086:     Next var_28C 'Long
  loc_195A08F:     Set var_23C = Nothing 
  loc_195A09A:     Print 1, vbNullString
  loc_195A0A0:   End If
  loc_195A0A7: Next var_238 'Long
  loc_195A0B0: Set var_230 = Nothing 
  loc_195A0CF: MsgBox("Template.mdb Generated Successfully.", &H40, var_150, var_1B0, var_1D0)
  loc_195A0E6: MemVar_1F9520C = Nothing
  loc_195A0F1: MemVar_1F95208 = Nothing
  loc_195A0F9: Close 1
  loc_195A0FB: ' Referenced from: 195750C
  loc_195A104: Set var_8C = Nothing
  loc_195A115: Me.CmdTemplate.Enabled = True
  loc_195A11F: Exit Sub
  loc_195A12A: Set var_D8 = Err()
  loc_195A130: Call 0.Method_arg_2C (var_D0)
  loc_195A149: MsgBox(CVar(var_D0), &H40, var_150, var_1B0, var_1D0)
  loc_195A16A: Me.CmdTemplate.Enabled = True
  loc_195A174: Exit Sub
End Sub

Private Sub CmdIss_Click() '11B7388
  'Data Table: 4CFAF4
  Dim var_B4 As Variant
  Dim var_D4 As String
  Dim var_A0 As String
  Dim MemVar_1F95230 As String
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim Me As Variant
  Dim var_F4 As Long
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_E4 As Variant
  loc_11B6F7B: Set var_94 = Me.Txt
  loc_11B6F81: Call 0.Method_CmdIss_Click0 (CInt(2))
  loc_11B6FAA: If (Proc_6_27_EA61EC(var_98, "Unit") = 0) Then
  loc_11B6FAD:   Exit Sub
  loc_11B6FAE: End If
  loc_11B6FB1: Call Proc_168_23_F05C50(var_A2)
  loc_11B6FBC: If (var_A2 = 0) Then
  loc_11B6FBF:   Exit Sub
  loc_11B6FC0: End If
  loc_11B6FD3: var_D4 = vbNullString
  loc_11B6FDE: If (Trim(MemVar_1F95230) = var_D4) Then
  loc_11B6FE4:   MemVar_1F95230 = "C:\Analysis\Transfer"
  loc_11B6FF4:   Call 0.Method_CmdIss_Click8 ("C:\Analysis", var_A2)
  loc_11B6FFF:   If (var_A2 = 0) Then
  loc_11B700E:     Call 0.Method_arg_74 ("C:\Analysis", var_94)
  loc_11B7022:     Call 0.Method_CmdIss_Click8 ("C:\Analysis\Transfer", var_A2)
  loc_11B702D:     If (var_A2 = 0) Then
  loc_11B703C:       Call 0.Method_arg_74 ("C:\Analysis\Transfer", var_94)
  loc_11B7044:     End If
  loc_11B7044:   End If
  loc_11B7044: End If
  loc_11B7050: Call 0.Method_CmdIss_Click8 (MemVar_1F95230, var_A2)
  loc_11B705B: If (var_A2 = 0) Then
  loc_11B7077:   MsgBox("Transfer Location Not Exits", &H40, var_E4, var_104, var_124)
  loc_11B7087: End If
  loc_11B70AB: MemVar_1F95230 = Replace(MemVar_1F95230 & "\", "\\", "\", 1, -1, 0)
  loc_11B70C0: var_104 = CVar(MemVar_1F95230 & MemVar_1F95174 & "TO") 'String
  loc_11B70CE: Set var_94 = Me.Txt
  loc_11B70D4: Call 0.Method_CmdIss_Click0 (CInt(2), var_98, var_104)
  loc_11B70EB: var_124 = MemVar_1F95230 & Trim(CVar(var_98)) 
  loc_11B70EF: var_B4 = ".mdb"
  loc_11B70FF: global_60 = CStr(var_124 & var_B4)
  loc_11B712B: Call 0.Method_arg_6C (global_60, "C:\TEMPZZZZ.MDB")
  loc_11B713E: Call 0.Method_arg_5C (global_60, 0)
  loc_11B715E: Me.Txt.CompactDatabase "C:\TEMPZZZZ.MDB", global_60, var_B4, var_D4, var_F4
  loc_11B716D: Set global_56 = New 
  loc_11B717F: Me.Connection15.CursorLocation = 3
  loc_11B718F: Me.IsolationLevel = &H10
  loc_11B719F: Me.CommandTimeout = 0
  loc_11B71DB: Me.DBEngine.RegisterDatabase "HotelTrans", "Microsoft Access Driver (*.MDB)", True, "DBQ=" & global_60 & vbCr & "Maxbuffersize=2048" & vbCr & "MaxscanRows=16"
  loc_11B7201: Me.Open "Provider=MSDASQL.1;Persist Security Info=False;Data Source=HotelTrans", vbNullString, vbNullString, -1
  loc_11B720D: global_68 = CByte(0)
  loc_11B721D: For var_148 = CByte(1) To CByte(MemVar_1F95040): var_8A = var_148 'Byte
  loc_11B722D:   var_F4 = 0
  loc_11B724B:   var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_11B726A:   Set var_98 = Me.FGrid
  loc_11B7270:   var_E4 = var_98.TextMatrix)
  loc_11B729F:   If (2 And (CStr(var_E4) = MemVar_1F95034(CLng(var_8A)))) Then
  loc_11B72B3:     global_68 = CByte((CInt(global_68) + 1))
  loc_11B72C5:     Set var_94 = Me.Txt
  loc_11B72CB:     Call 0.Method_CmdIss_Click0 (CInt(2), var_98, var_A0, global_68, CVar(CLng(var_8A)), (var_A0 = "ü"))
  loc_11B72D3:     var_F4 = var_98.Tag
  loc_11B7303:     Call Proc_168_21_197C788(var_A0, MemVar_1F95030(CLng(var_8A)), MemVar_1F9503C(CLng(var_8A)), MemVar_1F95034(CLng(var_8A)), CVar(CLng(var_8A)))
  loc_11B731B:   End If
  loc_11B731E: Next var_148 'Byte
  loc_11B7331: Me.LblTblName.Caption = vbNullString
  loc_11B7343: Me.LblTblName.Refresh
  loc_11B7364: MsgBox("Transfer Compeleted", 0, var_E4, var_104, var_124)
  loc_11B737A: Me.Close
  loc_11B7384: Set var_90 = Nothing
  loc_11B7387: Exit Sub
End Sub

Private Sub CmdRec_Click() '11DE9FC
  'Data Table: 4CFAF4
  Dim var_B0 As Variant
  Dim var_9C As String
  Dim MemVar_1F95230 As String
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim Me As Connection15
  Dim var_90 As MSFlexGrid
  Dim var_94 As Variant
  Dim var_E0 As Variant
  Dim var_19C As Double
  loc_11DE5A7: Set var_90 = Me.Txt
  loc_11DE5AD: Call 0.Method_CmdRec_Click0 (CInt(2))
  loc_11DE5D6: If (Proc_6_27_EA61EC(var_94, "Unit") = 0) Then
  loc_11DE5D9:   Exit Sub
  loc_11DE5DA: End If
  loc_11DE5DD: Call Proc_168_23_F05C50(var_9E)
  loc_11DE5E8: If (var_9E = 0) Then
  loc_11DE5EB:   Exit Sub
  loc_11DE5EC: End If
  loc_11DE60A: If (Trim(MemVar_1F95230) = vbNullString) Then
  loc_11DE610:   MemVar_1F95230 = "C:\Analysis\Transfer"
  loc_11DE620:   Call 0.Method_CmdRec_Click8 ("C:\Analysis", var_9E)
  loc_11DE62B:   If (var_9E = 0) Then
  loc_11DE63A:     Call 0.Method_arg_74 ("C:\Analysis", var_90)
  loc_11DE64E:     Call 0.Method_CmdRec_Click8 ("C:\Analysis\Transfer", var_9E)
  loc_11DE659:     If (var_9E = 0) Then
  loc_11DE668:       Call 0.Method_arg_74 ("C:\Analysis\Transfer", var_90)
  loc_11DE670:     End If
  loc_11DE670:   End If
  loc_11DE670: End If
  loc_11DE67C: Call 0.Method_CmdRec_Click8 (MemVar_1F95230, var_9E)
  loc_11DE687: If (var_9E = 0) Then
  loc_11DE6A3:   MsgBox("Transfer Location Not Exits", &H40, var_E0, var_100, var_120)
  loc_11DE6B3: End If
  loc_11DE6D7: MemVar_1F95230 = Replace(MemVar_1F95230 & "\", "\\", "\", 1, -1, 0)
  loc_11DE6EF: Set var_90 = Me.Txt
  loc_11DE6F5: Call 0.Method_CmdRec_Click0 (CInt(2), var_94, CVar(MemVar_1F95230))
  loc_11DE756: Set global_56 = New 
  loc_11DE768: Me.Txt.CursorLocation = 3
  loc_11DE778: Me.IsolationLevel = &H10
  loc_11DE788: Me.CommandTimeout = 0
  loc_11DE7A2: var_9C = "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & CStr(MemVar_1F95230 & Trim(CVar(var_94)) & "TO" & CVar(MemVar_1F95174) & ".mdb")
  loc_11DE7AB: Me.Open var_9C, vbNullString, vbNullString, -1
  loc_11DE7DF: var_100 = CVar(MemVar_1F95230 & "TranferLog") 'String
  loc_11DE7E5: var_120 = var_100 & Format(MemVar_1F950EC, "DDMMYYYY") 
  loc_11DE7FA: Open CStr(var_120 & ".TXT") For Output As 1 Len = &HFF
  loc_11DE81A: For var_144 = CByte(1) To CByte(MemVar_1F95040): var_8A = var_144 'Byte
  loc_11DE825:   var_B0 = CVar(CLng(var_8A)) 'Long
  loc_11DE848:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_11DE867:   Set var_94 = Me.FGrid
  loc_11DE86D:   var_E0 = var_94.TextMatrix)
  loc_11DE89C:   If (2 And (CStr(var_E0) = MemVar_1F95034(CLng(var_8A)))) Then
  loc_11DE8AD:     Set var_90 = Me.Txt
  loc_11DE8B3:     Call 0.Method_CmdRec_Click0 (CInt(2), var_94, var_9C, CVar(CLng(var_8A)), (var_9C = "ü"), 0)
  loc_11DE8BB:     var_B0 = var_94.Tag
  loc_11DE8EB:     Call Proc_168_21_197C788(var_9C, MemVar_1F95030(CLng(var_8A)), MemVar_1F9503C(CLng(var_8A)), MemVar_1F95034(CLng(var_8A)))
  loc_11DE903:   End If
  loc_11DE906: Next var_144 'Byte
  loc_11DE925: MsgBox("Transfer Compeleted", 0, var_E0, var_100, var_120)
  loc_11DE96C: If (MsgBox("Do You Want To See The Transfer Log", &H44, "Transfer Log", var_100, var_120) = 6) Then
  loc_11DE971:   Close 1
  loc_11DE988:   var_19C = Shell("notepad.exe", 1)
  loc_11DE9DE:   Proc_303_0_FBACC8(CStr(CVar("O " & MemVar_1F95230 & "TranferLog") & Format(MemVar_1F950EC, "DDMMYYYY") & ".TXT~"), 0, 1)
  loc_11DE9F7: End If
  loc_11DE9F9: Close 1
  loc_11DE9FB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'F64898
  'Data Table: 4CFAF4
  Dim var_94 As Variant
  Dim var_C8 As Long
  Dim var_174 As Variant
  Dim var_194 As Long
  Dim var_1B4 As Variant
  loc_F6479B: Me.FGrid.Col = 0
  loc_F647B3: Me.FGrid.CellFontName = "WINGDINGS"
  loc_F647CD: Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_F647E8: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F647ED: var_C8 = 0
  loc_F6481F: var_174 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F64824: var_194 = 0
  loc_F6485F: var_1B4 = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_F64867: Set var_1C8 = Me.FGrid
  loc_F6486D: LateIdCallSt
  loc_F64896: Exit Sub
End Sub

Private Sub Form_Load() '1334554
  'Data Table: 4CFAF4
  Dim MemVar_1F95230 As String
  Dim unk_4CFBBB As Connection15
  Dim var_90 As Recordset15
  Dim var_AC As Variant
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_F0 As Variant
  Dim Me As Recordset15
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  Dim var_118 As Variant
  Dim var_188 As Variant
  Dim var_20C As Variant
  Dim var_21C As Variant
  loc_1333E01: If (OpenMode = 2) Then
  loc_1333E24:   MemVar_1F95230 = App.Path & "\Transfer"
  loc_1333E52:   unk_4CFBBB.Execute "Select DTCPETakeEffectHeadToSite from Enviro where LOGSite_code='" & MemVar_1F95078 & "'", var_BC, -1
  loc_1333E5D:   Set var_90 = Me.Global.App
  loc_1333E81:   If (var_90.RecordCount > 0) Then
  loc_1333E93:     var_94 = var_90.Fields
  loc_1333F0F:     var_188 = IIf((Trim(CVar(Proc_6_38_E69628(CVar(var_94.Item("DTCPETakeEffectHeadToSite")), var_94))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("DTCPETakeEffectHeadToSite"))))))
  loc_1333F1E:     global_72 = CStr(var_188)
  loc_1333F41:   End If
  loc_1333F4B:   Set global_52 = New 
  loc_1333F5D:   Me.CursorLocation = 3
  loc_1333F68:   If (MemVar_1F950B8 >= 1) Then
  loc_1333F8E:     Me.Open "Select Site_Code as Code,Site_Desc as Name From Site Order by Name", CVar(MemVar_1F95044), 3
  loc_1333F96:   Else
  loc_1333FBB:     var_BC = CVar("Select Site_Code as Code,Site_Desc as Name From Site Where Site_Code<>'" & MemVar_1F95070 & "' Order by Name") 'String
  loc_1333FC5:     Me.Open var_BC, CVar(MemVar_1F95044), 3
  loc_1333FD0:   End If
  loc_1333FD9:   CVarUnk
  loc_1333FDE:   VerifyVarObj
  loc_1333FE4:   Set var_94 = Me.DGUnit
  loc_1333FEA:   LateIdStAd
  loc_133400B:   Me.FGrid.Rows = 1
  loc_1334013:   var_AC = 2
  loc_133401C:   var_114 = 0
  loc_1334029:   Set var_94 = Me.FGrid
  loc_133402F:   LateIdCallSt
  loc_133403A:   var_AC = 3
  loc_1334043:   var_114 = 0
  loc_1334050:   Set var_94 = Me.FGrid
  loc_1334056:   LateIdCallSt
  loc_1334061:   var_AC = 4
  loc_1334070:   var_114 = CVar(CInt(1)) 'Integer
  loc_133407E:   LateIdCallSt
  loc_133409F:   unk_4CFBBB.Execute "Select Comp_Name,Comp_Code,SName,CYear from company order by STart_dt Desc", var_BC, -1
  loc_13340AA:   Set var_8C = Me.FGrid
  loc_13340B3:   ' Referenced from: 133422B
  loc_13340C2:   If Not(var_8C.EOF) Then
  loc_13340C5:     var_AC = vbNullString
  loc_13340D2:     var_BC = Chr(9)
  loc_13340DA:     var_D0 = var_AC & var_BC 
  loc_13340F8:     var_C0 = var_8C.Fields.Item("Comp_Name")
  loc_1334126:     var_114 = "Comp_Code"
  loc_133413A:     var_118 = var_8C.Fields.Item(var_114)
  loc_13341CE:     var_20C = var_D0 & var_C0.Value & Chr(9) & var_118.Value & Chr(9) & var_8C.Fields.Item("SName").Value & Chr(9) & var_8C.Fields.Item("CYear").Value 
  loc_13341D3:     var_21C = CVar(CStr(var_20C)) 'String
  loc_13341DB:     Set var_230 = Me.FGrid
  loc_1334226:     var_8C.MoveNext
  loc_133422B:     GoTo loc_13340B3
  loc_133422E:   End If
  loc_1334234:   If (MemVar_1F950B8 >= 1) Then
  loc_1334243:     Me.CmdTemplate.Visible = True
  loc_133424B:   End If
  loc_1334251:   var_F0 = 0
  loc_1334270:   unk_4CFBBB.Execute "Select HeadOffice From Company", var_BC, -1
  loc_1334278:   var_94 = var_94.Fields
  loc_1334280:   var_F0 = var_C0.Item(var_C0)
  loc_1334288:   var_104 = var_104.Value
  loc_133429B:   global_64 = Proc_6_38_E69628(var_D0, var_D0, FGrid.DispID_10000, var_21C, var_94)
  loc_13342BA:   Call 0.Method_arg_74 (CDbl(2000), var_94, var_114)
  loc_13342C7:   Call 0.Method_arg_7C (CDbl(800), var_AC)
  loc_13342D4:   Call 0.Method_Me4 (CDbl(8900))
  loc_13342E7:   Set var_94 = Me.Txt
  loc_13342ED:   Call 0.Method_Form_Load0 (CInt(2), var_C0)
  loc_133430C:   Me.DGUnit.Left = CVar(var_C0.Left)
  loc_1334328:   Set var_104 = Me.Txt
  loc_133432E:   Call 0.Method_Form_Load0 (CInt(2), var_118)
  loc_1334349:   Set var_94 = Me.Txt
  loc_133434F:   Call 0.Method_Form_Load0 (CInt(2), var_C0)
  loc_1334367:   var_AC = CVar(((var_C0.Top + var_118.Height) + CDbl(&HF))) 'Single
  loc_1334376:   Me.DGUnit.Top = CVar(var_C0.Left)
  loc_1334397:   Me.FrameComp.Left = CDbl(4860)
  loc_13343AE:   Me.FrameComp.Top = CDbl(135)
  loc_13343C8:   Me.FGrid.Left = CVar(CDbl(&H1E))
  loc_13343E3:   Me.FGrid.Top = CVar(CDbl(255))
  loc_13343FA:   Me.LblTblName.Left = CDbl(495)
  loc_1334411:   Me.LblTblName.Top = CDbl(3015)
  loc_133442C:   Set var_94 = Me.Txt
  loc_1334432:   Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_133443A:   var_C0.Text = CStr(MemVar_1F950F4)
  loc_133445C:   Set var_94 = Me.Txt
  loc_1334462:   Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_133446A:   var_C0.Text = CStr(MemVar_1F950EC)
  loc_1334485:   Me.CmdTransOnline.Visible = False
  loc_1334490: Else
  loc_13344A1:   If (OpenMode = 1) Then
  loc_13344B0:     Me.Frame2.Visible = False
  loc_13344D7:     Me.Frame1.Top = Me.Frame2.Top
  loc_1334502:     Me.Frame1.Left = Me.Frame2.Left
  loc_133451A:     Me.CmdTransOut.Visible = False
  loc_133452E:     Me.CmdTransIn.Visible = False
  loc_133453C:     Set var_94 = Me.Frame1
  loc_1334542:     var_94.Visible = True
  loc_133454A:   End If
  loc_133454A: End If
  loc_133454F: Set var_8C = Nothing
  loc_1334552: Exit Sub
  loc_1334553: Result var_94 End Sub 'Double
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E27CF4
  'Data Table: 4CFAF4
  loc_E27CD7: Set global_52 = Nothing
  loc_E27CE3: MemVar_1F9520C = Nothing
  loc_E27CEC: MemVar_1F95208 = Nothing
  loc_E27CF0: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E80B44
  'Data Table: 4CFAF4
  loc_E80B25: If CBool((Shift = 2) And (Ucase(Chr(CLng(KeyCode))) = "H")) Then
  loc_E80B34:   Me.Frame1.Visible = True
  loc_E80B3C:   Call Proc_168_25_1152D34()
  loc_E80B41: End If
  loc_E80B41: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E18B54
  'Data Table: 4CFAF4
  loc_E18B49: Me.Global.Unload Me
  loc_E18B51: Exit Sub
End Sub

Private Sub ChkModule_Click() '164B394
  'Data Table: 4CFAF4
  Dim var_8C As ListView
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_B8 As Variant
  Dim var_BC As ListItem
  loc_1649F03: var_A4 = Me.LVTables.ListItems.Count
  loc_1649F16: For var_A8 = 1 To CInt(var_A4): var_86 = var_A8 'Integer
  loc_1649F24:   var_B8 = var_86
  loc_1649F44:   var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_1649F4C:   var_BC.Checked = var_BC
  loc_1649F63:   var_B8 = var_86
  loc_1649F83:   var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_1649F9A:   var_EC = Ucase(CVar(var_BC)) 'Variant
  loc_1649FCE:   If Not (var_EC = Ucase("Enviro")) Then
  loc_1649FF3:     If Not (var_EC = Ucase("Voucher_Prefix")) Then
  loc_164A018:       If Not (var_EC = Ucase("Voucher_Type")) Then
  loc_164A03D:         If Not (var_EC = Ucase("VoucherCat")) Then
  loc_164A062:           If (var_EC = Ucase("messaging")) Then
  loc_164A065:           End If
  loc_164A065:         End If
  loc_164A065:       End If
  loc_164A065:     End If
  loc_164A06D:     var_B8 = var_86
  loc_164A08D:     var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_164A095:     var_BC.Checked = var_BC
  loc_164A0A6:   End If
  loc_164A0AC:   var_B8 = var_86
  loc_164A0C6:   Set var_A0 = Me.LVTables.ListItems
  loc_164A0CC:   var_B8 = var_A0.ControlDefault
  loc_164A0E3:   var_1C0 = Ucase(CVar(var_BC)) 'Variant
  loc_164A117:   If Not (var_1C0 = Ucase("ACGROUP")) Then
  loc_164A13C:     If Not (var_1C0 = Ucase("City")) Then
  loc_164A161:       If Not (var_1C0 = Ucase("Country")) Then
  loc_164A186:         If Not (var_1C0 = Ucase("FaEnviro")) Then
  loc_164A1AB:           If Not (var_1C0 = Ucase("LeaderRev")) Then
  loc_164A1D0:             If Not (var_1C0 = Ucase("Ledger")) Then
  loc_164A1F5:               If Not (var_1C0 = Ucase("ledgerAdj")) Then
  loc_164A21A:                 If Not (var_1C0 = Ucase("LedgerM")) Then
  loc_164A23F:                   If Not (var_1C0 = Ucase("ledgerRef")) Then
  loc_164A264:                     If Not (var_1C0 = Ucase("LedgerTDS")) Then
  loc_164A289:                       If Not (var_1C0 = Ucase("NarrMast")) Then
  loc_164A2AE:                         If Not (var_1C0 = Ucase("SubGroup")) Then
  loc_164A2D3:                           If Not (var_1C0 = Ucase("SubGroupLog")) Then
  loc_164A2F8:                             If Not (var_1C0 = Ucase("SubGroupRate")) Then
  loc_164A31D:                               If Not (var_1C0 = Ucase("SubGroupType")) Then
  loc_164A342:                                 If Not (var_1C0 = Ucase("State")) Then
  loc_164A367:                                   If Not (var_1C0 = Ucase("TDSCat")) Then
  loc_164A38C:                                     If Not (var_1C0 = Ucase("TDSCerti")) Then
  loc_164A3B1:                                       If Not (var_1C0 = Ucase("TDSChal")) Then
  loc_164A3D6:                                         If Not (var_1C0 = Ucase("TDSChal1")) Then
  loc_164A3FB:                                           If Not (var_1C0 = Ucase("Voucher_Exclude")) Then
  loc_164A420:                                             If (var_1C0 = Ucase("Voucher_Include")) Then
  loc_164A423:                                             End If
  loc_164A423:                                           End If
  loc_164A423:                                         End If
  loc_164A423:                                       End If
  loc_164A423:                                     End If
  loc_164A423:                                   End If
  loc_164A423:                                 End If
  loc_164A423:                               End If
  loc_164A423:                             End If
  loc_164A423:                           End If
  loc_164A423:                         End If
  loc_164A423:                       End If
  loc_164A423:                     End If
  loc_164A423:                   End If
  loc_164A423:                 End If
  loc_164A423:               End If
  loc_164A423:             End If
  loc_164A423:           End If
  loc_164A423:         End If
  loc_164A423:       End If
  loc_164A423:     End If
  loc_164A431:     Set var_8C = Me.ChkModule
  loc_164A437:     Call 0.Method_ChkModule_Click0 (CInt(0), var_A0, var_EE, var_BC)
  loc_164A43F:     &HFF = var_A0.Value
  loc_164A451:     If (var_EE = 1) Then
  loc_164A45C:       var_B8 = var_86
  loc_164A47C:       var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_164A484:       var_BC.Checked = var_BC
  loc_164A495:     End If
  loc_164A495:   End If
  loc_164A49B:   var_B8 = var_86
  loc_164A4B5:   Set var_A0 = Me.LVTables.ListItems
  loc_164A4BB:   var_B8 = var_A0.ControlDefault
  loc_164A4D2:   var_544 = Ucase(CVar(var_BC)) 'Variant
  loc_164A506:   If Not (var_544 = Ucase("ACGROUP")) Then
  loc_164A52B:     If Not (var_544 = Ucase("City")) Then
  loc_164A550:       If Not (var_544 = Ucase("Country")) Then
  loc_164A575:         If Not (var_544 = Ucase("FaEnviro")) Then
  loc_164A59A:           If Not (var_544 = Ucase("Depart")) Then
  loc_164A5BF:             If Not (var_544 = Ucase("GodownMast")) Then
  loc_164A5E4:               If Not (var_544 = Ucase("GIN")) Then
  loc_164A609:                 If Not (var_544 = Ucase("Indent")) Then
  loc_164A62E:                   If Not (var_544 = Ucase("Indent1")) Then
  loc_164A653:                     If Not (var_544 = Ucase("Item")) Then
  loc_164A678:                       If Not (var_544 = Ucase("ItemCatMast")) Then
  loc_164A69D:                         If Not (var_544 = Ucase("ItemGrp")) Then
  loc_164A6C2:                           If Not (var_544 = Ucase("ItemMast")) Then
  loc_164A6E7:                             If Not (var_544 = Ucase("ItemRate")) Then
  loc_164A70C:                               If Not (var_544 = Ucase("KClStk")) Then
  loc_164A731:                                 If Not (var_544 = Ucase("NarrMast")) Then
  loc_164A756:                                   If Not (var_544 = Ucase("POrder")) Then
  loc_164A77B:                                     If Not (var_544 = Ucase("POrder1")) Then
  loc_164A7A0:                                       If Not (var_544 = Ucase("Purch1")) Then
  loc_164A7C5:                                         If Not (var_544 = Ucase("Purch2")) Then
  loc_164A7EA:                                           If Not (var_544 = Ucase("RevMast")) Then
  loc_164A80F:                                             If Not (var_544 = Ucase("RoundOffSetting")) Then
  loc_164A834:                                               If Not (var_544 = Ucase("Sale2")) Then
  loc_164A859:                                                 If Not (var_544 = Ucase("ShiftMast")) Then
  loc_164A87E:                                                   If Not (var_544 = Ucase("State")) Then
  loc_164A8A3:                                                     If Not (var_544 = Ucase("Stock")) Then
  loc_164A8C8:                                                       If Not (var_544 = Ucase("SubGroup")) Then
  loc_164A8ED:                                                         If Not (var_544 = Ucase("SubGroupLog")) Then
  loc_164A912:                                                           If Not (var_544 = Ucase("SubGroupRate")) Then
  loc_164A937:                                                             If Not (var_544 = Ucase("SubGroupType")) Then
  loc_164A95C:                                                               If Not (var_544 = Ucase("SundryMast")) Then
  loc_164A981:                                                                 If Not (var_544 = Ucase("SundryType")) Then
  loc_164A9A6:                                                                   If Not (var_544 = Ucase("SundryTypeFix")) Then
  loc_164A9CB:                                                                     If Not (var_544 = Ucase("SunTran")) Then
  loc_164A9F0:                                                                       If Not (var_544 = Ucase("TaxStru")) Then
  loc_164AA15:                                                                         If Not (var_544 = Ucase("UnitMast")) Then
  loc_164AA3A:                                                                           If Not (var_544 = Ucase("TranSunDetail")) Then
  loc_164AA5F:                                                                             If (var_544 = Ucase("TranTaxDetail")) Then
  loc_164AA62:                                                                             End If
  loc_164AA62:                                                                           End If
  loc_164AA62:                                                                         End If
  loc_164AA62:                                                                       End If
  loc_164AA62:                                                                     End If
  loc_164AA62:                                                                   End If
  loc_164AA62:                                                                 End If
  loc_164AA62:                                                               End If
  loc_164AA62:                                                             End If
  loc_164AA62:                                                           End If
  loc_164AA62:                                                         End If
  loc_164AA62:                                                       End If
  loc_164AA62:                                                     End If
  loc_164AA62:                                                   End If
  loc_164AA62:                                                 End If
  loc_164AA62:                                               End If
  loc_164AA62:                                             End If
  loc_164AA62:                                           End If
  loc_164AA62:                                         End If
  loc_164AA62:                                       End If
  loc_164AA62:                                     End If
  loc_164AA62:                                   End If
  loc_164AA62:                                 End If
  loc_164AA62:                               End If
  loc_164AA62:                             End If
  loc_164AA62:                           End If
  loc_164AA62:                         End If
  loc_164AA62:                       End If
  loc_164AA62:                     End If
  loc_164AA62:                   End If
  loc_164AA62:                 End If
  loc_164AA62:               End If
  loc_164AA62:             End If
  loc_164AA62:           End If
  loc_164AA62:         End If
  loc_164AA62:       End If
  loc_164AA62:     End If
  loc_164AA70:     Set var_8C = Me.ChkModule
  loc_164AA76:     Call 0.Method_ChkModule_Click0 (CInt(1), var_A0, var_EE, var_BC)
  loc_164AA7E:     &HFF = var_A0.Value
  loc_164AA90:     If (var_EE = 1) Then
  loc_164AA9B:       var_B8 = var_86
  loc_164AABB:       var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_164AAC3:       var_BC.Checked = var_BC
  loc_164AAD4:     End If
  loc_164AAD4:   End If
  loc_164AADA:   var_B8 = var_86
  loc_164AAE3:   Set var_8C = Me.LVTables
  loc_164AAF4:   Set var_A0 = var_8C.ListItems
  loc_164AAFA:   var_B8 = var_A0.ControlDefault
  loc_164AB11:   var_894 = Ucase(CVar(var_BC)) 'Variant
  loc_164AB26:   var_B8 = "BOM"
  loc_164AB2B:   var_9C = var_B8
  loc_164AB45:   If Not (var_894 = Ucase(var_9C)) Then
  loc_164AB6A:     If Not (var_894 = Ucase("ComboPackHead")) Then
  loc_164AB8F:       If Not (var_894 = Ucase("ComboPackDetail")) Then
  loc_164ABB4:         If Not (var_894 = Ucase("Depart")) Then
  loc_164ABD9:           If Not (var_894 = Ucase("Depart1")) Then
  loc_164ABFE:             If Not (var_894 = Ucase("ExpSheet")) Then
  loc_164AC23:               If Not (var_894 = Ucase("FreeItemDetail")) Then
  loc_164AC48:                 If Not (var_894 = Ucase("freeitemsDetails")) Then
  loc_164AC6D:                   If Not (var_894 = Ucase("GodownMast")) Then
  loc_164AC92:                     If Not (var_894 = Ucase("HappyHours")) Then
  loc_164ACB7:                       If Not (var_894 = Ucase("HappyHoursHead")) Then
  loc_164ACDC:                         If Not (var_894 = Ucase("Item")) Then
  loc_164AD01:                           If Not (var_894 = Ucase("ItemCatMast")) Then
  loc_164AD26:                             If Not (var_894 = Ucase("ItemGrp")) Then
  loc_164AD4B:                               If Not (var_894 = Ucase("ItemMast")) Then
  loc_164AD70:                                 If Not (var_894 = Ucase("ItemRate")) Then
  loc_164AD95:                                   If Not (var_894 = Ucase("KOT")) Then
  loc_164ADBA:                                     If Not (var_894 = Ucase("KOTLog")) Then
  loc_164ADDF:                                       If Not (var_894 = Ucase("NCTypeMast")) Then
  loc_164AE04:                                         If Not (var_894 = Ucase("PackingOrder")) Then
  loc_164AE29:                                           If Not (var_894 = Ucase("PackingOrderDetail")) Then
  loc_164AE4E:                                             If Not (var_894 = Ucase("PackingOrderDetail1")) Then
  loc_164AE73:                                               If Not (var_894 = Ucase("PackingOrderDetail2")) Then
  loc_164AE98:                                                 If Not (var_894 = Ucase("PayCharge")) Then
  loc_164AEBD:                                                   If Not (var_894 = Ucase("PayChargeLog")) Then
  loc_164AEE2:                                                     If Not (var_894 = Ucase("POS_SBill")) Then
  loc_164AF07:                                                       If Not (var_894 = Ucase("RevMast")) Then
  loc_164AF2C:                                                         If Not (var_894 = Ucase("RoomMast")) Then
  loc_164AF51:                                                           If Not (var_894 = Ucase("RoundOffSetting")) Then
  loc_164AF76:                                                             If Not (var_894 = Ucase("Sale1")) Then
  loc_164AF9B:                                                               If Not (var_894 = Ucase("Sale1Log")) Then
  loc_164AFC0:                                                                 If Not (var_894 = Ucase("Sale2")) Then
  loc_164AFE5:                                                                   If Not (var_894 = Ucase("Sale2Log")) Then
  loc_164B00A:                                                                     If Not (var_894 = Ucase("SchemeItemDetail")) Then
  loc_164B02F:                                                                       If Not (var_894 = Ucase("SchemeMast")) Then
  loc_164B054:                                                                         If Not (var_894 = Ucase("SchemeOutletDiscount")) Then
  loc_164B079:                                                                           If Not (var_894 = Ucase("SessionMast")) Then
  loc_164B09E:                                                                             If Not (var_894 = Ucase("SplitBillDetail")) Then
  loc_164B0C3:                                                                               If Not (var_894 = Ucase("SplitedSunTran")) Then
  loc_164B0E8:                                                                                 If Not (var_894 = Ucase("SplitSale1")) Then
  loc_164B10D:                                                                                   If Not (var_894 = Ucase("SplitSale2")) Then
  loc_164B132:                                                                                     If Not (var_894 = Ucase("SplitStock")) Then
  loc_164B157:                                                                                       If Not (var_894 = Ucase("SplitSunTran")) Then
  loc_164B17C:                                                                                         If Not (var_894 = Ucase("Stock")) Then
  loc_164B1A1:                                                                                           If Not (var_894 = Ucase("StockLog")) Then
  loc_164B1C6:                                                                                             If Not (var_894 = Ucase("SundryMast")) Then
  loc_164B1EB:                                                                                               If Not (var_894 = Ucase("SundryType")) Then
  loc_164B210:                                                                                                 If Not (var_894 = Ucase("SundryTypeFix")) Then
  loc_164B235:                                                                                                   If Not (var_894 = Ucase("SunTran")) Then
  loc_164B25A:                                                                                                     If Not (var_894 = Ucase("SunTranLog")) Then
  loc_164B27F:                                                                                                       If Not (var_894 = Ucase("TaxStru")) Then
  loc_164B2A4:                                                                                                         If Not (var_894 = Ucase("Temp_Sbill")) Then
  loc_164B2C9:                                                                                                           If Not (var_894 = Ucase("TOKEN")) Then
  loc_164B2DD:                                                                                                             var_BD0 = Ucase("UnitMast")
  loc_164B2EE:                                                                                                             If Not (var_894 = var_BD0) Then
  loc_164B302:                                                                                                               var_C04 = Ucase("Waiter")
  loc_164B313:                                                                                                               If (var_894 = var_C04) Then
  loc_164B316:                                                                                                               End If
  loc_164B316:                                                                                                             End If
  loc_164B316:                                                                                                           End If
  loc_164B316:                                                                                                         End If
  loc_164B316:                                                                                                       End If
  loc_164B316:                                                                                                     End If
  loc_164B316:                                                                                                   End If
  loc_164B316:                                                                                                 End If
  loc_164B316:                                                                                               End If
  loc_164B316:                                                                                             End If
  loc_164B316:                                                                                           End If
  loc_164B316:                                                                                         End If
  loc_164B316:                                                                                       End If
  loc_164B316:                                                                                     End If
  loc_164B316:                                                                                   End If
  loc_164B316:                                                                                 End If
  loc_164B316:                                                                               End If
  loc_164B316:                                                                             End If
  loc_164B316:                                                                           End If
  loc_164B316:                                                                         End If
  loc_164B316:                                                                       End If
  loc_164B316:                                                                     End If
  loc_164B316:                                                                   End If
  loc_164B316:                                                                 End If
  loc_164B316:                                                               End If
  loc_164B316:                                                             End If
  loc_164B316:                                                           End If
  loc_164B316:                                                         End If
  loc_164B316:                                                       End If
  loc_164B316:                                                     End If
  loc_164B316:                                                   End If
  loc_164B316:                                                 End If
  loc_164B316:                                               End If
  loc_164B316:                                             End If
  loc_164B316:                                           End If
  loc_164B316:                                         End If
  loc_164B316:                                       End If
  loc_164B316:                                     End If
  loc_164B316:                                   End If
  loc_164B316:                                 End If
  loc_164B316:                               End If
  loc_164B316:                             End If
  loc_164B316:                           End If
  loc_164B316:                         End If
  loc_164B316:                       End If
  loc_164B316:                     End If
  loc_164B316:                   End If
  loc_164B316:                 End If
  loc_164B316:               End If
  loc_164B316:             End If
  loc_164B316:           End If
  loc_164B316:         End If
  loc_164B316:       End If
  loc_164B316:     End If
  loc_164B324:     Set var_8C = Me.ChkModule
  loc_164B32A:     Call 0.Method_ChkModule_Click0 (CInt(2), var_A0, var_EE, var_BC)
  loc_164B332:     &HFF = var_A0.Value
  loc_164B344:     If (var_EE = 1) Then
  loc_164B34F:       var_B8 = var_86
  loc_164B36F:       var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_164B377:       var_BC.Checked = var_BC
  loc_164B388:     End If
  loc_164B388:   End If
  loc_164B38B: Next var_A8 'Integer
  loc_164B390: Exit Sub
End Sub

Private Sub CmdTransOnline_Click() '135DE94
  'Data Table: 4CFAF4
  Dim unk_4CFBBB As Connection15
  Dim var_CC As ListView
  Dim var_C8 As Variant
  Dim var_D0 As ListItems
  Dim var_B8 As Variant
  Dim var_D8 As ListItem
  Dim var_118 As String
  Dim var_108 As Variant
  Dim var_E8 As ListView
  Dim var_F8 As Variant
  Dim var_10C As ListItems
  Dim var_110 As ListItem
  Dim var_164 As Variant
  Dim var_134 As Variant
  Dim var_114 As String
  Dim arg_36FF As Double
  loc_135D6AC: On Error Goto loc_135DE3F
  loc_135D6B8: unk_4CFBBB.BeginTrans var_A8
  loc_135D6C1: var_A2 = CByte(1) 'Byte
  loc_135D6DB: unk_4CFBBB.Execute "DELETE FROM Table_SearchField", var_C8, -1
  loc_135D709: var_A8 = Me.LVTables.ListItems.Count
  loc_135D71C: For var_D4 = 1 To CInt(var_A8): var_86 = var_D4 'Integer
  loc_135D72E:   var_B8 = var_86
  loc_135D73D:   var_C8 = Me.LVTables.ListItems
  loc_135D74E:   var_B8 = var_C8.ControlDefault
  loc_135D756:   var_D8 = var_D8.Default
  loc_135D76D:   var_118 = var_DC & var_DC & "_A') " & " Drop Trigger Tr_"
  loc_135D779:   var_108 = var_86
  loc_135D799:   var_108 = Me.LVTables.ListItems.ControlDefault
  loc_135D7A1:   var_110 = var_110.Default
  loc_135D7EF:   unk_4CFBBB.Execute var_114 & var_114 & "_A ", var_C8, -1
  loc_135D806:   var_B8 = var_86
  loc_135D815:   var_C8 = Me.LVTables.ListItems
  loc_135D826:   var_B8 = var_C8.ControlDefault
  loc_135D82E:   var_D8 = var_D8.Default
  loc_135D845:   var_118 = var_DC & var_DC & "_E') " & " Drop Trigger Tr_"
  loc_135D851:   var_108 = var_86
  loc_135D871:   var_108 = Me.LVTables.ListItems.ControlDefault
  loc_135D879:   var_110 = var_110.Default
  loc_135D8C7:   unk_4CFBBB.Execute var_114 & var_114 & "_E", var_C8, -1
  loc_135D8DE:   var_B8 = var_86
  loc_135D8ED:   var_C8 = Me.LVTables.ListItems
  loc_135D8FE:   var_B8 = var_C8.ControlDefault
  loc_135D906:   var_D8 = var_D8.Default
  loc_135D91D:   var_118 = var_DC & var_DC & "_D') " & " Drop Trigger Tr_"
  loc_135D929:   var_108 = var_86
  loc_135D932:   Set var_E8 = Me.LVTables
  loc_135D943:   Set var_10C = var_E8.ListItems
  loc_135D951:   var_110 = var_110.Default
  loc_135D99F:   unk_4CFBBB.Execute var_114 & var_114 & "_D ", var_C8, -1
  loc_135D9BA:   var_B8 = var_86
  loc_135D9C3:   Set var_CC = Me.LVTables
  loc_135D9DA:   var_B8 = var_CC.ListItems.ControlDefault
  loc_135D9E2:   var_D8 = var_D8.Default
  loc_135D9F7:   Call 0.Method_arg_3C (var_E8, CVar(var_DC), var_DC, var_10C.ControlDefault, var_10C, var_CC, var_118)
  loc_135D9FF:   Call 0.Method_arg_30 ("IF EXISTS (SELECT * FROM sysobjects WHERE name ='Tr_", var_CC, var_118, "IF EXISTS (SELECT * FROM sysobjects WHERE name ='Tr_")
  loc_135DA07:   Set var_A0 = var_10C
  loc_135DA1F:   var_8C = vbNullString
  loc_135DA2B:   Call 0.Method_arg_60 (var_CC, var_CC)
  loc_135DA3A:   If (var_CC Is Nothing) Then
  loc_135DA3D:     GoTo loc_135DDE2
  loc_135DA40:   End If
  loc_135DA49:   var_B8 = var_86
  loc_135DA52:   Set var_CC = Me.LVTables
  loc_135DA63:   Set var_D0 = var_CC.ListItems
  loc_135DA69:   var_B8 = var_D0.ControlDefault
  loc_135DA71:   var_D8 = var_D8.Checked
  loc_135DA88:   If (var_11E = &HFF) Then
  loc_135DA9F:     Call 0.Method_arg_60 (var_CC, var_D0, var_A8, var_88)
  loc_135DAA7:     Call 0.Method_CmdTransOnline_ClickC (1, var_11E)
  loc_135DAAF:     Call 0.Method_arg_38 (var_118)
  loc_135DABF:     For var_122 =  To CInt(var_A8): "IF EXISTS (SELECT * FROM sysobjects WHERE name ='Tr_" = var_122 'Integer
  loc_135DACB:       If (var_88 = 1) Then
  loc_135DAE4:         Call 0.Method_arg_60 (var_CC, var_D0)
  loc_135DAEC:         Call 0.Method_CmdTransOnline_ClickC (CVar(var_88))
  loc_135DAF4:         Call 0.Method_arg_30 (var_DC)
  loc_135DAFC:         var_90 = var_DC
  loc_135DB06:       End If
  loc_135DB15:       Call 0.Method_arg_60 (var_D8, var_E8)
  loc_135DB1D:       Call 0.Method_CmdTransOnline_ClickC (var_A8)
  loc_135DB25:       Call 0.Method_arg_38 ()
  loc_135DB4A:       Call 0.Method_arg_60 (var_CC, var_D0, CVar(var_88))
  loc_135DB52:       Call 0.Method_CmdTransOnline_ClickC (var_DC)
  loc_135DB5A:       Call 0.Method_arg_30 (var_8C & "Convert(nVarChar,[")
  loc_135DB78:       var_134 = "+"
  loc_135DB9F:       var_8C = CStr(CVar(var_DC & "])") & IIf((CLng(var_88) < var_A8), var_134, vbNullString))
  loc_135DBC8:     Next var_122 'Integer
  loc_135DBD0:     var_94 = "Site_Code"
  loc_135DBD6:     var_98 = "LogSite_Code"
  loc_135DBDF:     var_B8 = var_86
  loc_135DBE8:     Set var_CC = Me.LVTables
  loc_135DBFF:     var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_135DC0E:     var_154 = Ucase(CVar(var_D8))
  loc_135DC16:     var_184 = var_154 'Variant
  loc_135DC33:     If Not (var_184 = "FOMBILLDETAILS") Then
  loc_135DC41:       If Not (var_184 = "SUNTRAN") Then
  loc_135DC4F:         If Not (var_184 = "SUNTRANEST") Then
  loc_135DC5D:           If Not (var_184 = "SUNTRANLOG") Then
  loc_135DC6B:             If Not (var_184 = "SUNTRANH") Then
  loc_135DC79:               If Not (var_184 = "SUNTRANHEST") Then
  loc_135DC87:                 If Not (var_184 = "SUNTRANFACILITY") Then
  loc_135DC95:                   If Not (var_184 = "PACKINGORDERDETAIL2") Then
  loc_135DCA3:                     If Not (var_184 = "SALEMIS") Then
  loc_135DCB1:                       If Not (var_184 = "SPLITEDSUNTRAN") Then
  loc_135DCBF:                         If Not (var_184 = "SUNDRYTYPE") Then
  loc_135DCCD:                           If (var_184 = "ENVIRO") Then
  loc_135DCD0:                           End If
  loc_135DCD0:                         End If
  loc_135DCD0:                       End If
  loc_135DCD0:                     End If
  loc_135DCD0:                   End If
  loc_135DCD0:                 End If
  loc_135DCD0:               End If
  loc_135DCD0:             End If
  loc_135DCD0:           End If
  loc_135DCD0:         End If
  loc_135DCD0:       End If
  loc_135DCD3:       var_94 = "SiteCode"
  loc_135DCD9:     Else
  loc_135DCE4:       If (var_184 = "SITE") Then
  loc_135DCEA:         var_98 = "Site_Code"
  loc_135DCED:       End If
  loc_135DCED:     End If
  loc_135DD06:     var_B8 = var_86
  loc_135DD26:     var_B8 = Me.LVTables.ListItems.ControlDefault
  loc_135DD68:     var_164 = CVar(var_DC & var_DC & "','" & var_90 & "','" & var_94 & "','" & var_98 & "',1,1,") 'String
  loc_135DD70:     var_F8 = CVar(Proc_6_15_EF37AC(var_164, "Insert InTo Table_SearchField(TABLE_NAME,SEARCH_FIELD,SiteCode,LogSiteCode,TransactionYn,LineItemYn,UpLoadDate,UniqueField) Values('", var_250)) 'String
  loc_135DD76:     Proc_6_7_F26918(var_154, var_F8, -1)
  loc_135DDA8:     unk_4CFBBB.Execute CStr(var_E8 & var_154 & ",'" & CVar(var_8C) & "')"), var_D8.Default, 
  loc_135DDE2:     ' Referenced from: 135DA3D
  loc_135DDE2:   End If
  loc_135DDE5: Next var_D4 'Integer
  loc_135DDEA: Proc_154_7_13DF2B4()
  loc_135DDEF: Proc_154_8_F65864()
  loc_135DDFA: unk_4CFBBB.CommitTrans
  loc_135DE03: var_A2 = CByte(0) 'Byte
  loc_135DE0D: Call 0.Method_arg_50 (var_DC)
  loc_135DE1B: var_F8 = CVar(var_DC) 'String
  loc_135DE2E: MsgBox("Process Completed Successfully", &H40, var_F8, var_154, var_164)
  loc_135DE3E: Exit Sub
  loc_135DE3F: ' Referenced from: 135D6AC
  loc_135DE48: If (CInt(var_A2) = 1) Then
  loc_135DE51:   unk_4CFBBB.RollbackTrans
  loc_135DE56: End If
  loc_135DE6C: Set var_CC = Err()
  loc_135DE72: Call 0.Method_arg_2C (var_DC, 0, var_F8)
  loc_135DE7D: MsgBox(CVar(var_DC), var_154, var_164, , )
  loc_135DE90: Exit Sub
  loc_135DE91: arg_36FF = 
End Sub

Private Sub CmdTransOut_Click() '13F48B4
  'Data Table: 4CFAF4
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_F4 As Variant
  Dim var_C4 As String
  Dim var_114 As Variant
  Dim var_120 As String
  Dim unk_4CFBBB As Connection15
  Dim var_88 As ListView
  Dim var_90 As ListItem
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_130 As Variant
  Dim var_188 As Variant
  Dim var_1AC As Variant
  Dim var_204 As Variant
  Dim var_94 As String
  Dim var_234 As Variant
  Dim var_28C As Variant
  Dim var_2B0 As Variant
  Dim var_308 As Variant
  Dim var_32C As Variant
  Dim var_384 As Variant
  Dim var_3A8 As Variant
  Dim var_400 As Variant
  Dim var_424 As Variant
  Dim var_47C As Variant
  Dim var_4A0 As Variant
  loc_13F3FA7: Set var_88 = Me.Txt
  loc_13F3FAD: Call 0.Method_CmdTransOut_Click0 (CInt(2))
  loc_13F3FBE: Set var_90 = var_8C
  loc_13F3FD6: If (Proc_6_27_EA61EC(var_90, "For Unit") = 0) Then
  loc_13F3FE4:   Set var_88 = Me.Txt
  loc_13F3FEA:   Call 0.Method_CmdTransOut_Click0 (CInt(2), var_8C)
  loc_13F3FF2:   var_8C.SetFocus
  loc_13F3FFE:   Exit Sub
  loc_13F3FFF: End If
  loc_13F400D: Set var_88 = Me.Txt
  loc_13F4013: Call 0.Method_CmdTransOut_Click0 (CInt(2), var_8C)
  loc_13F4034: If (Len(var_8C.Tag) <> 2) Then
  loc_13F4050:   MsgBox("Plz. Define Proper Unit SiteCode In Site Table", &H10, var_D4, var_F4, var_114)
  loc_13F406B:   Set var_88 = Me.Txt
  loc_13F4071:   Call 0.Method_CmdTransOut_Click0 (CInt(2), var_8C)
  loc_13F4079:   var_8C.SetFocus
  loc_13F4085:   Exit Sub
  loc_13F4086: End If
  loc_13F4094: Set var_88 = Me.Txt
  loc_13F409A: Call 0.Method_CmdTransOut_Click0 (CInt(2), var_8C)
  loc_13F40A2: var_94 = var_8C.Tag
  loc_13F40AA: var_11C = var_94
  loc_13F40D4: Set var_88 = Me.Txt
  loc_13F40DA: Call 0.Method_CmdTransOut_Click0 (CInt(2), var_8C, var_94, "Delete from Transout where SiteCode='")
  loc_13F40E2: var_130 = var_8C.Tag
  loc_13F40F8: var_F4 = -1 & Trim(CVar(var_94)) 
  loc_13F4105: var_120 = CStr(var_F4 & "'")
  loc_13F410F: unk_4CFBBB.Execute var_120, var_90, var_8C
  loc_13F4163: For var_138 = 1 To CInt(Me.LVTables.ListItems.Count): var_116 = var_138 'Integer
  loc_13F4172:   var_A4 = var_116
  loc_13F4192:   var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F41B1:   If (var_13A = &HFF) Then
  loc_13F41BA:     var_A4 = var_116
  loc_13F41DA:     var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F41E2:     var_D4 = CVar(var_90.Checked) 'Address
  loc_13F41E9:     var_F4 = Ucase(var_D4)
  loc_13F41F1:     var_C4 = "ACGROUPCURRBAL"
  loc_13F4201:     var_E4 = var_116
  loc_13F4221:     var_E4 = Me.LVTables.ListItems.ControlDefault
  loc_13F4242:     var_188 = var_148 Or (Ucase(CVar(var_148)) = "RAWCONSUMPTION")
  loc_13F424C:     var_1AC = var_116
  loc_13F426C:     var_1AC = Me.LVTables.ListItems.ControlDefault
  loc_13F42B7:     If CBool(var_1B4 Or (Ucase(CVar(var_1B4)) = "SUBGROUPCURRBAL")) Then
  loc_13F42E1:       var_A4 = var_116
  loc_13F4301:       var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F4309:       var_90 = var_90.Default
  loc_13F4322:       unk_4CFBBB.Execute var_120 & var_120 & "','LogSite_Code','V_DATE','')", "insert into TransOut(SiteCode,Type,TableName,FieldName,Udate,MainDB)values('" & var_11C & "','0','", var_D4
  loc_13F4349:     Else
  loc_13F434F:       var_A4 = var_116
  loc_13F436F:       var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F4377:       var_D4 = CVar(var_90) 'Address
  loc_13F439E:       If (Ucase(var_D4) = "EPABX_DATA") Then
  loc_13F43C8:         var_A4 = var_116
  loc_13F43E8:         var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F43F0:         var_90 = var_90.Default
  loc_13F4409:         unk_4CFBBB.Execute var_120 & var_120 & "','LogSite_Code','CALL_START_DATE','')", "insert into TransOut(SiteCode,Type,TableName,FieldName,Udate,MainDB)values('" & var_11C & "','0','", var_D4
  loc_13F4430:       Else
  loc_13F4436:         var_A4 = var_116
  loc_13F4456:         var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F4465:         var_F4 = Ucase(CVar(var_90))
  loc_13F446D:         var_C4 = "ATTENDENCE"
  loc_13F447D:         var_E4 = var_116
  loc_13F449D:         var_E4 = Me.LVTables.ListItems.ControlDefault
  loc_13F44BE:         var_188 = var_148 Or (Ucase(CVar(var_148)) = "DISPCOLOR")
  loc_13F44C8:         var_1AC = var_116
  loc_13F44E8:         var_1AC = Me.LVTables.ListItems.ControlDefault
  loc_13F4509:         var_204 = var_1B4 Or (Ucase(CVar(var_1B4)) = "DATELOCK")
  loc_13F4513:         var_234 = var_116
  loc_13F4533:         var_234 = Me.LVTables.ListItems.ControlDefault
  loc_13F4554:         var_28C = var_23C Or (Ucase(CVar(var_23C)) = "NCTYPEMAST")
  loc_13F455E:         var_2B0 = var_116
  loc_13F457E:         var_2B0 = Me.LVTables.ListItems.ControlDefault
  loc_13F459F:         var_308 = var_2B8 Or (Ucase(CVar(var_2B8)) = "TEMP_SBILL")
  loc_13F45A9:         var_32C = var_116
  loc_13F45C9:         var_32C = Me.LVTables.ListItems.ControlDefault
  loc_13F45EA:         var_384 = var_334 Or (Ucase(CVar(var_334)) = "TRANLOG")
  loc_13F45F4:         var_3A8 = var_116
  loc_13F4614:         var_3A8 = Me.LVTables.ListItems.ControlDefault
  loc_13F4635:         var_400 = var_3B0 Or (Ucase(CVar(var_3B0)) = "TRANSIN")
  loc_13F463F:         var_424 = var_116
  loc_13F465F:         var_424 = Me.LVTables.ListItems.ControlDefault
  loc_13F4680:         var_47C = var_42C Or (Ucase(CVar(var_42C)) = "TRANSOUT")
  loc_13F468A:         var_4A0 = var_116
  loc_13F46AA:         var_4A0 = Me.LVTables.ListItems.ControlDefault
  loc_13F4731:         If CBool(var_4A8 Or (Ucase(CVar(var_4A8)) = "VOUCHERCAT")) Then
  loc_13F4734:           GoTo loc_13F48AA
  loc_13F4737:         End If
  loc_13F473D:         var_A4 = var_116
  loc_13F475D:         var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F4765:         var_D4 = CVar(var_90) 'Address
  loc_13F478C:         If (Ucase(var_D4) = "TRANSDEL") Then
  loc_13F47B6:           var_A4 = var_116
  loc_13F47D6:           var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F47DE:           var_90 = var_90.Default
  loc_13F47F7:           unk_4CFBBB.Execute var_120 & var_120 & "','LogSite_Code','UEntDt','')", "insert into TransOut(SiteCode,Type,TableName,FieldName,Udate,MainDB)values('" & var_11C & "','0','", var_D4
  loc_13F481E:         Else
  loc_13F4845:           var_A4 = var_116
  loc_13F4865:           var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_13F486D:           var_90 = var_90.Default
  loc_13F4886:           unk_4CFBBB.Execute var_120 & var_120 & "','LogSite_Code','U_EntDt','')", "insert into TransOut(SiteCode,Type,TableName,FieldName,Udate,MainDB)values('" & var_11C & "','0','", var_D4
  loc_13F48AA:         End If
  loc_13F48AA:         ' Referenced from:     13F4734
  loc_13F48AA:       End If
  loc_13F48AA:     End If
  loc_13F48AA:   End If
  loc_13F48AD: Next var_138 'Integer
  loc_13F48B2: Exit Sub
End Sub

Private Sub CmdTransIn_Click() '15C9610
  'Data Table: 4CFAF4
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_F4 As Variant
  Dim var_C4 As String
  Dim var_114 As Variant
  Dim var_128 As String
  Dim unk_4CFBBB As Connection15
  Dim var_88 As ListView
  Dim var_90 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_144 As ListView
  Dim var_138 As Variant
  Dim var_148 As ListItems
  Dim var_18C As Variant
  Dim var_1B0 As Variant
  Dim var_208 As Variant
  Dim var_22C As Variant
  Dim var_284 As Variant
  Dim var_2A8 As Variant
  Dim var_300 As Variant
  Dim var_324 As Variant
  Dim var_37C As Variant
  Dim var_3A0 As Variant
  Dim var_3F8 As Variant
  Dim var_41C As Variant
  Dim var_474 As Variant
  Dim var_498 As Variant
  Dim var_4F0 As Variant
  Dim var_514 As Variant
  Dim var_56C As Variant
  Dim var_590 As Variant
  Dim var_5E8 As Variant
  Dim var_60C As Variant
  Dim var_664 As Variant
  Dim var_688 As Variant
  Dim var_6E0 As Variant
  Dim var_704 As Variant
  Dim var_75C As Variant
  Dim var_780 As Variant
  Dim var_7D8 As Variant
  Dim var_7FC As Variant
  Dim var_854 As Variant
  Dim var_878 As Variant
  Dim var_8D0 As Variant
  Dim var_8F4 As Variant
  Dim var_958 As String
  Dim var_118 As Integer
  Dim var_94 As String
  loc_15C8527: Set var_88 = Me.Txt
  loc_15C852D: Call 0.Method_CmdTransIn_Click0 (CInt(2))
  loc_15C853E: Set var_90 = var_8C
  loc_15C8556: If (Proc_6_27_EA61EC(var_90, "For Unit") = 0) Then
  loc_15C8564:   Set var_88 = Me.Txt
  loc_15C856A:   Call 0.Method_CmdTransIn_Click0 (CInt(2), var_8C)
  loc_15C8572:   var_8C.SetFocus
  loc_15C857E:   Exit Sub
  loc_15C857F: End If
  loc_15C858D: Set var_88 = Me.Txt
  loc_15C8593: Call 0.Method_CmdTransIn_Click0 (CInt(2), var_8C)
  loc_15C85B4: If (Len(var_8C.Tag) <> 2) Then
  loc_15C85D0:   MsgBox("Plz. Define Proper Unit SiteCode In Site Table", &H10, var_D4, var_F4, var_114)
  loc_15C85EB:   Set var_88 = Me.Txt
  loc_15C85F1:   Call 0.Method_CmdTransIn_Click0 (CInt(2), var_8C)
  loc_15C85F9:   var_8C.SetFocus
  loc_15C8605:   Exit Sub
  loc_15C8606: End If
  loc_15C8614: Set var_88 = Me.Txt
  loc_15C861A: Call 0.Method_CmdTransIn_Click0 (CInt(2), var_8C)
  loc_15C8622: var_94 = var_8C.Tag
  loc_15C862A: var_11C = var_94
  loc_15C8654: Set var_88 = Me.Txt
  loc_15C865A: Call 0.Method_CmdTransIn_Click0 (CInt(2), var_8C, var_94, "Delete from TransIn where SiteCode='")
  loc_15C8662: var_138 = var_8C.Tag
  loc_15C8678: var_F4 = -1 & Trim(CVar(var_94)) 
  loc_15C867C: var_C4 = "'"
  loc_15C868F: unk_4CFBBB.Execute CStr(var_F4 & var_C4), var_90, var_8C
  loc_15C86D0: var_13C = Me.LVTables.ListItems.Count
  loc_15C86E3: For var_140 = 1 To CInt(var_13C): var_116 = var_140 'Integer
  loc_15C86F9:   var_A4 = var_116
  loc_15C8719:   var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C8721:   var_90 = var_90.Default
  loc_15C8736:   Call 0.Method_arg_3C (var_144, CVar(var_94), var_94)
  loc_15C873E:   Call 0.Method_arg_30 (var_C4, var_148)
  loc_15C8746:   Set var_124 = var_148
  loc_15C875E:   var_120 = vbNullString
  loc_15C8767:   var_A4 = var_116
  loc_15C8770:   Set var_88 = Me.LVTables
  loc_15C8787:   var_A4 = var_88.ListItems.ControlDefault
  loc_15C8796:   var_F4 = Ucase(CVar(var_90))
  loc_15C879E:   var_C4 = "ATTENDENCE"
  loc_15C87AE:   var_E4 = var_116
  loc_15C87CE:   var_E4 = Me.LVTables.ListItems.ControlDefault
  loc_15C87EF:   var_18C = var_14C Or (Ucase(CVar(var_14C)) = "DATELOCK")
  loc_15C87F9:   var_1B0 = var_116
  loc_15C8819:   var_1B0 = Me.LVTables.ListItems.ControlDefault
  loc_15C883A:   var_208 = var_1B8 Or (Ucase(CVar(var_1B8)) = "KOTLOG")
  loc_15C8844:   var_22C = var_116
  loc_15C8864:   var_22C = Me.LVTables.ListItems.ControlDefault
  loc_15C8885:   var_284 = var_234 Or (Ucase(CVar(var_234)) = "ENVIRO")
  loc_15C888F:   var_2A8 = var_116
  loc_15C88AF:   var_2A8 = Me.LVTables.ListItems.ControlDefault
  loc_15C88D0:   var_300 = var_2B0 Or (Ucase(CVar(var_2B0)) = "FAENVIRO")
  loc_15C88DA:   var_324 = var_116
  loc_15C88FA:   var_324 = Me.LVTables.ListItems.ControlDefault
  loc_15C891B:   var_37C = var_32C Or (Ucase(CVar(var_32C)) = "NCTYPEMAST")
  loc_15C8925:   var_3A0 = var_116
  loc_15C8945:   var_3A0 = Me.LVTables.ListItems.ControlDefault
  loc_15C8966:   var_3F8 = var_3A8 Or (Ucase(CVar(var_3A8)) = "TEMP_SBILL")
  loc_15C8970:   var_41C = var_116
  loc_15C8990:   var_41C = Me.LVTables.ListItems.ControlDefault
  loc_15C89B1:   var_474 = var_424 Or (Ucase(CVar(var_424)) = "TRANLOG")
  loc_15C89BB:   var_498 = var_116
  loc_15C89DB:   var_498 = Me.LVTables.ListItems.ControlDefault
  loc_15C89FC:   var_4F0 = var_4A0 Or (Ucase(CVar(var_4A0)) = "TRANSIN")
  loc_15C8A06:   var_514 = var_116
  loc_15C8A26:   var_514 = Me.LVTables.ListItems.ControlDefault
  loc_15C8A47:   var_56C = var_51C Or (Ucase(CVar(var_51C)) = "TRANSOUT")
  loc_15C8A51:   var_590 = var_116
  loc_15C8A71:   var_590 = Me.LVTables.ListItems.ControlDefault
  loc_15C8A92:   var_5E8 = var_598 Or (Ucase(CVar(var_598)) = "VOUCHERCAT")
  loc_15C8A9C:   var_60C = var_116
  loc_15C8ABC:   var_60C = Me.LVTables.ListItems.ControlDefault
  loc_15C8ADD:   var_664 = var_614 Or (Ucase(CVar(var_614)) = "COMP_PLANDET")
  loc_15C8AE7:   var_688 = var_116
  loc_15C8B07:   var_688 = Me.LVTables.ListItems.ControlDefault
  loc_15C8B28:   var_6E0 = var_690 Or (Ucase(CVar(var_690)) = "FOMBILLCHANGEDETAILS")
  loc_15C8B32:   var_704 = var_116
  loc_15C8B52:   var_704 = Me.LVTables.ListItems.ControlDefault
  loc_15C8B73:   var_75C = var_70C Or (Ucase(CVar(var_70C)) = "GROUPCATALOG")
  loc_15C8B7D:   var_780 = var_116
  loc_15C8B9D:   var_780 = Me.LVTables.ListItems.ControlDefault
  loc_15C8BBE:   var_7D8 = var_788 Or (Ucase(CVar(var_788)) = "GUESTPARAM")
  loc_15C8BC8:   var_7FC = var_116
  loc_15C8BE8:   var_7FC = Me.LVTables.ListItems.ControlDefault
  loc_15C8C09:   var_854 = var_804 Or (Ucase(CVar(var_804)) = "SITE")
  loc_15C8C13:   var_878 = var_116
  loc_15C8C33:   var_878 = Me.LVTables.ListItems.ControlDefault
  loc_15C8C54:   var_8D0 = var_880 Or (Ucase(CVar(var_880)) = "SUBGROUPLOG")
  loc_15C8C5E:   var_8F4 = var_116
  loc_15C8C7E:   var_8F4 = Me.LVTables.ListItems.ControlDefault
  loc_15C8D5F:   If CBool(var_8FC Or (Ucase(CVar(var_8FC)) = "GUESTCOMMENTS")) Then
  loc_15C8D62:     GoTo loc_15C9607
  loc_15C8D65:   End If
  loc_15C8D6E:   var_A4 = var_116
  loc_15C8D77:   Set var_88 = Me.LVTables
  loc_15C8D88:   Set var_8C = var_88.ListItems
  loc_15C8D8E:   var_A4 = var_8C.ControlDefault
  loc_15C8D96:   var_90 = var_90.Checked
  loc_15C8DAD:   If (var_94E = &HFF) Then
  loc_15C8DC4:     Call 0.Method_arg_60 (var_88, var_8C, var_13C, var_118, 1, var_94E, var_8D0, var_854)
  loc_15C8DCC:     Call 0.Method_CmdTransIn_ClickC (var_7D8, var_75C, var_6E0, var_664)
  loc_15C8DD4:     Call 0.Method_arg_38 (var_5E8, var_56C)
  loc_15C8DE4:     For var_952 =  To CInt(var_13C): var_4F0 = var_952 'Integer
  loc_15C8DF0:       If (var_118 = 1) Then
  loc_15C8E0C:         Call 0.Method_arg_60 (var_88, var_8C, CVar(var_118))
  loc_15C8E14:         Call 0.Method_CmdTransIn_ClickC (var_94)
  loc_15C8E1C:         Call 0.Method_arg_30 ("'")
  loc_15C8E2C:         var_120 = var_94 & "'"
  loc_15C8E40:       Else
  loc_15C8E47:         var_128 = var_120 & ",'"
  loc_15C8E60:         Call 0.Method_arg_60 (var_88, var_8C, CVar(var_118))
  loc_15C8E68:         Call 0.Method_CmdTransIn_ClickC (var_94)
  loc_15C8E70:         Call 0.Method_arg_30 (var_128)
  loc_15C8E80:         var_120 = var_94 & "'"
  loc_15C8E93:       End If
  loc_15C8E96:     Next var_952 'Integer
  loc_15C8EA1:     If (var_118 <= 7) Then
  loc_15C8EA4:       ' Referenced from: 15C8EC0
  loc_15C8EAA:       If (var_118 <= 7) Then
  loc_15C8EB4:         var_120 = var_120 & ",''"
  loc_15C8EBD:         var_118 = (var_118 + 1)
  loc_15C8EC0:         GoTo loc_15C8EA4
  loc_15C8EC3:       End If
  loc_15C8EC3:     End If
  loc_15C8EC9:     var_A4 = var_116
  loc_15C8EE9:     var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C8EF1:     var_D4 = CVar(var_90) 'Address
  loc_15C8EF8:     var_F4 = Ucase(var_D4)
  loc_15C8F00:     var_C4 = "ACGROUPCURRBAL"
  loc_15C8F10:     var_E4 = var_116
  loc_15C8F30:     var_E4 = Me.LVTables.ListItems.ControlDefault
  loc_15C8F51:     var_18C = var_14C Or (Ucase(CVar(var_14C)) = "RAWCONSUMPTION")
  loc_15C8F5B:     var_1B0 = var_116
  loc_15C8F7B:     var_1B0 = Me.LVTables.ListItems.ControlDefault
  loc_15C8FC6:     If CBool(var_1B8 Or (Ucase(CVar(var_1B8)) = "SUBGROUPCURRBAL")) Then
  loc_15C8FE4:       var_958 = "insert into TransIn(SiteCode,Type,TableName,FieldName,Udate,MainDB,PK1,PK2,PK3,PK4,PK5,PK6,PK7)values('" & var_11C & "','0','"
  loc_15C8FF0:       var_A4 = var_116
  loc_15C9010:       var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C9018:       var_90 = var_90.Default
  loc_15C903F:       unk_4CFBBB.Execute var_128 & var_128 & "','LogSite_Code','V_DATE',''," & var_120 & ")", var_958, var_D4
  loc_15C906A:     Else
  loc_15C9070:       var_A4 = var_116
  loc_15C9090:       var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C9098:       var_D4 = CVar(var_90) 'Address
  loc_15C90BF:       If (Ucase(var_D4) = "EPABX_DATA") Then
  loc_15C90DD:         var_958 = "insert into TransIn(SiteCode,Type,TableName,FieldName,Udate,MainDB,PK1,PK2,PK3,PK4,PK5,PK6,PK7)values('" & var_11C & "','0','"
  loc_15C90E9:         var_A4 = var_116
  loc_15C9109:         var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C9111:         var_90 = var_90.Default
  loc_15C9138:         unk_4CFBBB.Execute var_128 & var_128 & "','LogSite_Code','CALL_START_DATE',''," & var_120 & ")", var_958, var_D4
  loc_15C9163:       Else
  loc_15C9169:         var_A4 = var_116
  loc_15C9189:         var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C9191:         var_D4 = CVar(var_90) 'Address
  loc_15C9198:         var_F4 = Ucase(var_D4)
  loc_15C91A0:         var_C4 = "ATTENDENCE"
  loc_15C91B0:         var_E4 = var_116
  loc_15C91D0:         var_E4 = Me.LVTables.ListItems.ControlDefault
  loc_15C91F1:         var_18C = var_14C Or (Ucase(CVar(var_14C)) = "DISPCOLOR")
  loc_15C91FB:         var_1B0 = var_116
  loc_15C921B:         var_1B0 = Me.LVTables.ListItems.ControlDefault
  loc_15C923C:         var_208 = var_1B8 Or (Ucase(CVar(var_1B8)) = "DATELOCK")
  loc_15C9246:         var_22C = var_116
  loc_15C9266:         var_22C = Me.LVTables.ListItems.ControlDefault
  loc_15C9287:         var_284 = var_234 Or (Ucase(CVar(var_234)) = "KOTLOG")
  loc_15C9291:         var_2A8 = var_116
  loc_15C92B1:         var_2A8 = Me.LVTables.ListItems.ControlDefault
  loc_15C92D2:         var_300 = var_2B0 Or (Ucase(CVar(var_2B0)) = "ENVIRO")
  loc_15C92DC:         var_324 = var_116
  loc_15C92FC:         var_324 = Me.LVTables.ListItems.ControlDefault
  loc_15C931D:         var_37C = var_32C Or (Ucase(CVar(var_32C)) = "FAENVIRO")
  loc_15C9327:         var_3A0 = var_116
  loc_15C9347:         var_3A0 = Me.LVTables.ListItems.ControlDefault
  loc_15C9368:         var_3F8 = var_3A8 Or (Ucase(CVar(var_3A8)) = "NCTYPEMAST")
  loc_15C9372:         var_41C = var_116
  loc_15C9392:         var_41C = Me.LVTables.ListItems.ControlDefault
  loc_15C93B3:         var_474 = var_424 Or (Ucase(CVar(var_424)) = "TEMP_SBILL")
  loc_15C93BD:         var_498 = var_116
  loc_15C93DD:         var_498 = Me.LVTables.ListItems.ControlDefault
  loc_15C93FE:         var_4F0 = var_4A0 Or (Ucase(CVar(var_4A0)) = "TRANLOG")
  loc_15C9408:         var_514 = var_116
  loc_15C9428:         var_514 = Me.LVTables.ListItems.ControlDefault
  loc_15C9449:         var_56C = var_51C Or (Ucase(CVar(var_51C)) = "TRANSIN")
  loc_15C9453:         var_590 = var_116
  loc_15C9473:         var_590 = Me.LVTables.ListItems.ControlDefault
  loc_15C9494:         var_5E8 = var_598 Or (Ucase(CVar(var_598)) = "TRANSOUT")
  loc_15C949E:         var_60C = var_116
  loc_15C94BE:         var_60C = Me.LVTables.ListItems.ControlDefault
  loc_15C9563:         If CBool(var_614 Or (Ucase(CVar(var_614)) = "VOUCHERCAT")) Then
  loc_15C9566:           GoTo loc_15C9607
  loc_15C9569:         End If
  loc_15C9584:         var_958 = "insert into TransIn(SiteCode,Type,TableName,FieldName,Udate,MainDB,PK1,PK2,PK3,PK4,PK5,PK6,PK7)values('" & var_11C & "','0','"
  loc_15C9590:         var_A4 = var_116
  loc_15C95B0:         var_A4 = Me.LVTables.ListItems.ControlDefault
  loc_15C95B8:         var_90 = var_90.Default
  loc_15C95DF:         unk_4CFBBB.Execute var_128 & var_128 & "','LogSite_Code','U_EntDt',''," & var_120 & ")", var_958, var_D4
  loc_15C9607:         ' Referenced from:     15C9566
  loc_15C9607:       End If
  loc_15C9607:     End If
  loc_15C9607:     ' Referenced from: 15C8D62
  loc_15C9607:   End If
  loc_15C960A: Next var_140 'Integer
  loc_15C960F: Exit Sub
End Sub

Private Sub CmdRefreshDatabase_Click() '12E6B6C
  'Data Table: 4CFAF4
  Dim var_CC As CommandButton
  Dim var_100 As Variant
  Dim var_F0 As Variant
  Dim var_11C As String
  Dim var_194 As String
  Dim var_18C As String
  Dim var_1A0 As String
  loc_12E6504: On Error Resume Next
  loc_12E650F: Set var_CC = Me.CmdRefreshDatabase
  loc_12E6515: var_CC.Enabled = False
  loc_12E6521: Close 1
  loc_12E652C: Open "C:\reptmp\DBCheckList.TXT" For Output As 1 Len = &HFF
  loc_12E6547: Call 0.Method_arg_9C (-1)
  loc_12E6551: Set var_E0 = New 
  loc_12E655C: Call 0.Method_arg_BC (0)
  loc_12E6568: Call 0.Method_arg_E8 (0)
  loc_12E6572: var_100 = CVar(MemVar_1F950D4) 'String
  loc_12E6579: var_F0 = CVar(MemVar_1F950D8) 'String
  loc_12E6587: Call 0.Method_arg_100 (CVar(MemVar_1F95098), var_F0)
  loc_12E6590: Set var_E0 = Nothing 
  loc_12E65AD: Call 0.Method_arg_34 (var_CC, CVar(MemVar_1F95108), var_F0)
  loc_12E65B5: Call 0.Method_arg_30 (var_104)
  loc_12E65C9: Set var_108 = var_104 
  loc_12E65E0: Call 0.Method_arg_3C (var_CC, var_10C, var_9C)
  loc_12E65E8: Call 0.Method_arg_38 (1)
  loc_12E65F3: For var_114 =  To var_10C: var_100 = var_114 'Long
  loc_12E6613:   Call 0.Method_arg_3C (var_CC, CVar(var_9C), var_F0)
  loc_12E661B:   Call 0.Method_arg_30 (var_104)
  loc_12E6623:   Call 0.Method_arg_74 (var_116)
  loc_12E6635:   If (var_116 = 0) Then
  loc_12E6652:     Call 0.Method_arg_3C (var_CC, CVar(var_9C), var_F0)
  loc_12E665A:     Call 0.Method_arg_30 (var_104)
  loc_12E6662:     Call 0.Method_arg_34 (var_11C)
  loc_12E666A:     var_98 = var_11C
  loc_12E6679:     var_AC = vbNullString
  loc_12E6693:     Call 0.Method_arg_3C (var_CC, CVar(var_9C))
  loc_12E669B:     Call 0.Method_arg_30 (var_F0)
  loc_12E66A3:     Set var_120 = var_104
  loc_12E66BC:     Call 0.Method_arg_3C (var_CC, var_10C, var_A0)
  loc_12E66C4:     Call 0.Method_arg_38 (1)
  loc_12E66CF:     For var_128 =  To var_10C: var_104 = var_128 'Long
  loc_12E66EB:       Call 0.Method_arg_3C (var_CC, CVar(var_A0))
  loc_12E66F3:       Call 0.Method_arg_30 (var_104)
  loc_12E66FB:       Call 0.Method_arg_54 (var_11C)
  loc_12E6709:       var_148 = Ucase(CVar(var_11C))
  loc_12E6711:       var_158 = var_148 'Variant
  loc_12E672C:       If Not (var_158 = "INT") Then
  loc_12E673A:         If Not (var_158 = "LONG") Then
  loc_12E6748:           If Not (var_158 = "SMALLINT") Then
  loc_12E6756:             If Not (var_158 = "DOUBLE") Then
  loc_12E6764:               If Not (var_158 = "FLOAT") Then
  loc_12E6772:                 If (var_158 = "NUMERIC") Then
  loc_12E6775:                 End If
  loc_12E6775:               End If
  loc_12E6775:             End If
  loc_12E6775:           End If
  loc_12E6775:         End If
  loc_12E677F:         If (var_AC = vbNullString) Then
  loc_12E678B:           var_11C = "Update " & var_98
  loc_12E67A9:           Call 0.Method_arg_3C (var_CC, CVar(var_A0), var_104)
  loc_12E67B1:           Call 0.Method_arg_30 (var_18C)
  loc_12E67B9:           Call 0.Method_arg_34 (var_11C & " Set [")
  loc_12E67C2:           var_194 = var_18C
  loc_12E67E0:           Call 0.Method_arg_3C (var_198, CVar(var_A0), var_19C)
  loc_12E67E8:           Call 0.Method_arg_30 (var_1A0)
  loc_12E67F0:           Call 0.Method_arg_34 (var_194 & "]=IsNull([")
  loc_12E6800:           var_AC = var_1A0 & "],0)"
  loc_12E6822:         Else
  loc_12E682D:           var_18C = var_AC & ", ["
  loc_12E6844:           Call 0.Method_arg_3C (var_CC, CVar(var_A0), var_104)
  loc_12E684C:           Call 0.Method_arg_30 (var_11C)
  loc_12E6854:           Call 0.Method_arg_34 (var_18C)
  loc_12E6864:           var_1A0 = var_11C & "]=IsNull(["
  loc_12E687B:           Call 0.Method_arg_3C (var_198, CVar(var_A0), var_19C)
  loc_12E6883:           Call 0.Method_arg_30 (var_194)
  loc_12E688B:           Call 0.Method_arg_34 (var_1A0)
  loc_12E689B:           var_AC = var_194 & "],0)"
  loc_12E68B8:         End If
  loc_12E68BD:       Else
  loc_12E68CA:         If Not (var_158 = "VARCHAR") Then
  loc_12E68D8:           If Not (var_158 = "CHAR") Then
  loc_12E68E6:             If (var_158 = "NVARCHAR") Then
  loc_12E68E9:             End If
  loc_12E68E9:           End If
  loc_12E68F3:           If (var_AC = vbNullString) Then
  loc_12E68FF:             var_11C = "Update " & var_98
  loc_12E691D:             Call 0.Method_arg_3C (var_CC, CVar(var_A0), var_104)
  loc_12E6925:             Call 0.Method_arg_30 (var_18C)
  loc_12E692D:             Call 0.Method_arg_34 (var_11C & " Set [")
  loc_12E6936:             var_194 = var_18C
  loc_12E6954:             Call 0.Method_arg_3C (var_198, CVar(var_A0), var_19C)
  loc_12E695C:             Call 0.Method_arg_30 (var_1A0)
  loc_12E6964:             Call 0.Method_arg_34 (var_194 & "]=IsNull([")
  loc_12E6974:             var_AC = var_1A0 & "],'')"
  loc_12E6996:           Else
  loc_12E69B8:             Call 0.Method_arg_3C (var_CC, CVar(var_A0), var_104)
  loc_12E69C0:             Call 0.Method_arg_30 (var_11C)
  loc_12E69C8:             Call 0.Method_arg_34 (var_AC & ", [")
  loc_12E69EF:             Call 0.Method_arg_3C (var_198, CVar(var_A0), var_19C)
  loc_12E69F7:             Call 0.Method_arg_30 (var_194)
  loc_12E69FF:             Call 0.Method_arg_34 (var_11C & "]=IsNull([")
  loc_12E6A0F:             var_AC = var_194 & "],'')"
  loc_12E6A2C:           End If
  loc_12E6A31:         Else
  loc_12E6A3E:           If Not (var_158 = "SMALLDATETIME") Then
  loc_12E6A4C:             If (var_158 = "DATETIME") Then
  loc_12E6A4F:             End If
  loc_12E6A52:           Else
  loc_12E6A5F:             If (var_158 = "BIT") Then
  loc_12E6A62:               GoTo loc_12E6A75
  loc_12E6A65:             End If
  loc_12E6A72:             If (var_158 = "IMAGE") Then
  loc_12E6A75:               ' Referenced from:       12E6A62
  loc_12E6A75:             End If
  loc_12E6A75:           End If
  loc_12E6A75:         End If
  loc_12E6A75:       End If
  loc_12E6A7C:     Next var_128 'Long
  loc_12E6A85:     Set var_120 = Nothing 
  loc_12E6A90:     Print 1, var_AC
  loc_12E6A9D:     Print 1, "GO"
  loc_12E6AA3:   End If
  loc_12E6AAA: Next var_114 'Long
  loc_12E6AB3: Set var_108 = Nothing 
  loc_12E6AD2: MsgBox("C:\reptmp\DBCheckList.TXT Created.", &H40, var_148, var_1B8, var_1C8)
  loc_12E6AE9: MemVar_1F9520C = Nothing
  loc_12E6AF4: MemVar_1F95208 = Nothing
  loc_12E6AFC: Close 1
  loc_12E6B0C: Me.CmdRefreshDatabase.Enabled = True
  loc_12E6B16: Exit Sub
  loc_12E6B21: Set var_CC = Err()
  loc_12E6B27: Call 0.Method_arg_2C (var_11C)
  loc_12E6B40: MsgBox(CVar(var_11C), &H40, var_148, var_1B8, var_1C8)
  loc_12E6B61: Me.CmdRefreshDatabase.Enabled = True
  loc_12E6B6B: Exit Sub
End Sub

Public Property Get OpenMode() 'E056D0
  'Data Table: 4CFAF4
  loc_E056C9: OpenMode = global_76
End Sub

Public Property Let OpenMode(vNewValue) 'E01FCC
  'Data Table: 4CFAF4
  loc_E01FC6: global_76 = vNewValue
  loc_E01FC9: Exit Sub
End Sub

Public Sub Proc_168_21_197C788(arg_C, arg_10, arg_14, arg_18) '197C788
  'Data Table: 4CFAF4
  Dim var_F0 As Variant
  Dim var_128 As Variant
  Dim var_118 As Variant
  Dim var_108 As Variant
  Dim var_13C As String
  Dim var_138 As String
  Dim var_158 As String
  Dim var_90 As Recordset15
  Dim var_9C As Variant
  Dim Me As Connection15
  Dim var_12C As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_150 As Variant
  Dim var_98 As Recordset15
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_1E4 As Variant
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_214 As Variant
  Dim var_224 As Variant
  Dim var_14C As Variant
  Dim var_25C As Variant
  Dim var_1E0 As Fields15
  Dim var_258 As Fields15
  Dim var_2CC As Variant
  Dim var_2D0 As Fields15
  Dim var_314 As Variant
  Dim var_37C As Variant
  Dim var_3E4 As Variant
  Dim var_94 As Variant
  Dim var_4BC As Variant
  Dim var_58C As Variant
  Dim var_65C As Variant
  Dim var_72C As Variant
  Dim var_7FC As Variant
  Dim var_8CC As Variant
  Dim var_99C As Variant
  Dim var_A6C As Variant
  Dim var_EC As Recordset15
  Dim var_D0 As Long
  Dim var_D4 As Long
  Dim var_D8 As Long
  Dim var_DC As Long
  Dim var_E0 As Long
  Dim var_E4 As Long
  Dim var_E8 As Long
  Dim unk_4CFBBB As Connection15
  loc_1979BE8: On Error Goto loc_197C71A
  loc_1979BF3: If (arg_14 = "Main") Then
  loc_1979BF9:   var_A0 = " And MainDB='M'"
  loc_1979BFF: Else
  loc_1979C02:   var_A0 = vbNullString
  loc_1979C05: End If
  loc_1979C0C: Set var_F0 = Me.CmdIss
  loc_1979C12: var_F2 = var_F0.Value
  loc_1979C20: If (var_F2 = &HFF) Then
  loc_1979C36:   Call 0.Method_arg_9C (-1)
  loc_1979C3E:   Set var_F8 = New 
  loc_1979C47:   Call 0.Method_arg_BC (0)
  loc_1979C51:   Call 0.Method_arg_E8 (0)
  loc_1979C59:   var_128 = CVar(MemVar_1F950D4) 'String
  loc_1979C60:   var_118 = CVar(MemVar_1F950D8) 'String
  loc_1979C6E:   Call 0.Method_arg_100 (CVar(MemVar_1F95098), var_118)
  loc_1979C75:   Set var_F8 = Nothing 
  loc_1979C90:   Call 0.Method_arg_34 (var_F0, CVar(MemVar_1F95108), var_118)
  loc_1979C98:   Call 0.Method_arg_30 (var_12C)
  loc_1979CA0:   MemVar_1F95208 = var_12C
  loc_1979CB8:   Call 0.Method_arg_3C (var_F0, var_130, var_AA)
  loc_1979CC0:   Call 0.Method_arg_38 (1)
  loc_1979CCC:   For var_134 =  To CInt(var_130): var_128 = var_134 'Integer
  loc_1979CEC:     Call 0.Method_arg_3C (var_F0, CVar(var_AA), var_118)
  loc_1979CF4:     Call 0.Method_arg_30 (var_12C)
  loc_1979CFC:     Call 0.Method_arg_74 (var_F2)
  loc_1979D0E:     If (var_F2 = 0) Then
  loc_1979D3B:       Call 0.Method_arg_3C (var_F0, CVar(var_AA), var_118, var_12C, var_138)
  loc_1979D43:       Call 0.Method_arg_30 ("Delete From ", var_14C)
  loc_1979D4B:       Call 0.Method_arg_34 (-1)
  loc_1979D5D:       Me.Connection15.Execute var_150 & var_138, , 
  loc_1979D75:     End If
  loc_1979D78:   Next var_134 'Integer
  loc_1979D98:   var_13C = "Select * From TransOut Where SiteCode ='" & arg_C & "'"
  loc_1979DAC:   xÿ,.Connection15.Execute var_13C & var_A0 & " Order By TableName", var_14C, -1
  loc_1979DB7:   Set var_90 = var_F0
  loc_1979DCB:   ' Referenced from: 197ABD0
  loc_1979DDA:   If Not(var_90.EOF) Then
  loc_1979DDF:     var_9C = 1
  loc_1979DEB:     Me.BeginTrans var_130
  loc_1979DFC:     If (CInt(global_68) = 1) Then
  loc_1979E49:       Me.Execute CStr("Delete From " & var_90.Fields.Item("TableName").Value), var_178, -1
  loc_1979E63:     End If
  loc_1979E69:     Me.CommitTrans
  loc_1979EA6:     var_138 = CStr(CVar(arg_14 & " : ") & var_90.Fields.Item("TableName").Value)
  loc_1979EB4:     Me.LblTblName.Caption = var_138
  loc_1979ED8:     Me.LblTblName.Refresh
  loc_1979EE4:     Set var_98 = New 
  loc_1979F38:     var_98.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value, CVar(global_56), 1
  loc_1979F6A:     var_12C = var_90.Fields.Item("Udate")
  loc_1979F9B:     Call 0.Method_Proc_168_21_197C7880 (CInt(0), var_17C, var_138, " Where " & var_12C.Value & " Between '", 3)
  loc_1979FA3:     -1 = var_17C.Text
  loc_1979FC0:     var_1DC = Me.Txt & CVar(var_138) & " 00:00:00" & "' And '" 
  loc_1979FD2:     Set var_1E0 = Me.Txt
  loc_1979FD8:     Call 0.Method_Proc_168_21_197C7880 (CInt(1), var_1E4, var_13C)
  loc_1979FE0:     var_1DC = var_1E4.Text
  loc_197A03B:     Set var_F0 = Me.Txt
  loc_197A041:     Call 0.Method_Proc_168_21_197C7880 (CInt(2), var_12C)
  loc_197A049:     var_138 = var_12C.Tag
  loc_197A060:     If (var_138 <> "HO") Then
  loc_197A08D:       var_254 = var_90.Fields.Item("Type").Value 'Variant
  loc_197A0A3:       If (var_254 = "0") Then
  loc_197A101:         var_17C = var_90.Fields.Item("TableName")
  loc_197A126:         var_1F4 = (MemVar_1F95070 = "HO") And (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SUBGROUP") Or (Ucase(CVar(var_17C)) = "ACGROUP")
  loc_197A140:         If CBool(var_1F4) Then
  loc_197A180:           var_18C = CVar(CStr(var_9C & CVar(var_13C) & " 23:59:59" & "'") & " And ") & var_90.Fields.Item("FieldName").Value & "='HO'" 
  loc_197A185:           var_A8 = CStr(var_18C)
  loc_197A19D:         Else
  loc_197A1B9:           var_F0 = var_90.Fields
  loc_197A1DA:           var_18C = CVar(var_A8 & " And ") & var_F0.Item("FieldName").Value & "='" 
  loc_197A1EA:           Set var_150 = Me.Txt
  loc_197A1F0:           Call 0.Method_Proc_168_21_197C7880 (2, var_17C, var_138)
  loc_197A1F8:           var_18C = var_17C.Tag
  loc_197A211:           var_A8 = CStr(var_F0 & CVar(var_138) & "'")
  loc_197A230:         End If
  loc_197A233:       Else
  loc_197A23E:         If (var_254 = "1") Then
  loc_197A296:           var_A8 = CStr(CVar(var_A8 & " And Left(") & var_90.Fields.Item("FieldName").Value & ",2) ='" & CVar(MemVar_1F95070) & "'")
  loc_197A2B2:         Else
  loc_197A2BD:           If (var_254 = "2") Then
  loc_197A300:             If (Ucase(CVar(var_90.Fields.Item("TableName"))) = "PBILLPASS") Then
  loc_197A36E:               var_1BC = CVar(var_A8 & " And SubString(") & var_90.Fields.Item("FieldName").Value & ",2,2) In('" & var_90.Fields.Item("SiteCode").Value 
  loc_197A37C:               var_A8 = CStr(var_1BC & "')")
  loc_197A39E:             Else
  loc_197A3DE:               If (Ucase(CVar(var_90.Fields.Item("TableName"))) = "LEDGER") Then
  loc_197A3E9:                 If (MemVar_1F95070 = "U") Then
  loc_197A433:                   var_19C = CVar(var_A8 & " And SubString(") & var_90.Fields.Item("FieldName").Value & ",2,2) ='" & CVar(MemVar_1F95070) 
  loc_197A441:                   var_A8 = CStr(var_19C & "' And V_Type Not In('PBG','PBRM') ")
  loc_197A45D:                 Else
  loc_197A4A4:                   var_19C = CVar(var_A8 & " And SubString(") & var_90.Fields.Item("FieldName").Value & ",2,2) ='" & CVar(MemVar_1F95070) 
  loc_197A4B2:                   var_A8 = CStr(var_19C & "'")
  loc_197A4CB:                 End If
  loc_197A4CE:               Else
  loc_197A515:                 var_19C = CVar(var_A8 & " And SubString(") & var_90.Fields.Item("FieldName").Value & ",2,2) ='" & CVar(MemVar_1F95070) 
  loc_197A523:                 var_A8 = CStr(var_19C & "'")
  loc_197A53C:               End If
  loc_197A53C:             End If
  loc_197A53C:           End If
  loc_197A53C:         End If
  loc_197A53C:       End If
  loc_197A53C:     End If
  loc_197A578:     If (var_90.Fields.Item("TableName").Value = "TransDel") Then
  loc_197A5C0:       var_178 = "Select * From " & var_90.Fields.Item("TableName").Value & " Where " 
  loc_197A609:       Set var_1E0 = Me.Txt
  loc_197A60F:       Call 0.Method_Proc_168_21_197C7880 (CInt(0), var_1E4, var_138, var_178 & var_90.Fields.Item("Udate").Value & " Between '")
  loc_197A617:       var_2CC = var_1E4.Text
  loc_197A622:       var_1F4 = -1 & CVar(var_138) 
  loc_197A634:       var_224 = var_1F4 & " 00:00:00" & "' And '" 
  loc_197A646:       Set var_258 = Me.Txt
  loc_197A64C:       Call 0.Method_Proc_168_21_197C7880 (CInt(1), var_25C, var_13C)
  loc_197A654:       var_224 = var_25C.Text
  loc_197A67C:       xÿ,.Connection15.Execute CStr(var_2D0 & CVar(var_13C) & " 23:59:59" & "'"), , 
  loc_197A687:       Set var_94 = var_2D0
  loc_197A6C6:     Else
  loc_197A70D:       var_150 = var_90.Fields
  loc_197A724:       var_19C = Ucase(CVar(var_150.Item("TableName")))
  loc_197A759:       var_1F4 = CVar(var_90.Fields.Item("TableName")) 'Address
  loc_197A760:       var_204 = Ucase(var_1F4)
  loc_197A7AE:       var_2CC = (Ucase(CVar(var_90.Fields.Item("TableName"))) = "FORM31") Or (var_19C = "SBILLFORM") Or (var_204 = "FAENVIRO") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "ENVIRO")
  loc_197A826:       var_37C = var_2CC Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "EMAILENVIRO") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SMSENVIRO")
  loc_197A898:       If CBool(var_37C Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "MEMENVIRO")) Then
  loc_197A8E2:         xÿ,.Connection15.Execute CStr("Select * From " & var_90.Fields.Item("TableName").Value), var_178, -1
  loc_197A8ED:         Set var_94 = var_150
  loc_197A908:       Else
  loc_197A915:         var_118 = "Select * From "
  loc_197A920:         var_108 = "TableName"
  loc_197A962:         xÿ,.Connection15.Execute CStr(var_118 & var_90.Fields.Item(var_108).Value & " " & CVar(var_A8)), var_19C, -1
  loc_197A96D:         Set var_94 = var_150
  loc_197A989:       End If
  loc_197A989:     End If
  loc_197A992:     Me.BeginTrans var_130
  loc_197A997:     ' Referenced from: 197ABBA
  loc_197A9A6:     If Not(var_94.EOF) Then
  loc_197A9B4:       var_98.AddNew var_108, var_118
  loc_197A9E1:       For var_3E8 = 0 To CInt((var_94.Fields.Count - 1)): var_9A = var_3E8 'Integer
  loc_197AA1F:         If (var_94.Fields.Item(CVar(var_9A)).DefinedSize <> &H7FFFFFFF) Then
  loc_197AA45:           var_130 = var_94.Fields.Item(CVar(var_9A)).DefinedSize
  loc_197AA84:           If (var_130 <> var_98.Fields.Item(CVar(var_9A)).DefinedSize) Then
  loc_197AB0D:             var_1DC = CVar(arg_14 & ".") & var_90.Fields.Item("TableName").Value & "." & CVar(var_94.Fields.Item(CVar(var_9A)).Name) & " Field Size Mismatch" 
  loc_197AB11:             MsgBox(var_1DC, 0, var_1F4, var_204, var_224)
  loc_197AB3B:           Else
  loc_197AB3B:           End If
  loc_197AB44:           var_108 = CVar(var_9A) 'Integer
  loc_197AB5E:           var_14C = var_94.Fields.Item(var_108).Value
  loc_197AB6D:           var_118 = CVar(var_9A) 'Integer
  loc_197AB87:           var_98.Fields.Item(var_118).Value = var_14C
  loc_197AB9D:         Next var_3E8 'Integer
  loc_197ABAD:         var_98.Update var_108, var_118
  loc_197ABB5:         var_94.MoveNext
  loc_197ABBA:         GoTo loc_197A997
  loc_197ABBD:       End If
  loc_197ABC3:       Me.CommitTrans
  loc_197ABCB:       var_90.MoveNext
  loc_197ABD0:       GoTo loc_1979DCB
  loc_197ABD3:     End If
  loc_197ABD6:   Else
  loc_197ABDD:     Set var_F0 = Me.CmdRec
  loc_197ABF1:     If (var_F0.Value = &HFF) Then
  loc_197AC23:       xÿ,.Connection15.Execute "Select * From TransIn Where SiteCode ='" & arg_C & "'" & var_A0 & " Order By TableName", var_14C, -1
  loc_197AC2E:       Set var_90 = var_F0
  loc_197AC42:       ' Referenced from:     197C649
  loc_197AC51:       If Not(var_90.EOF) Then
  loc_197AC56:         var_9C = 2
  loc_197AC91:         var_138 = CStr(CVar(arg_14 & " :     ") & var_90.Fields.Item("TableName").Value)
  loc_197AC9F:         Me.LblTblName.Caption = var_138
  loc_197ACC3:         Me.LblTblName.Refresh
  loc_197ACD1:         xÿ,.Connection15.BeginTrans var_130
  loc_197AD46:         var_1DC = (Ucase(CVar(var_90.Fields.Item("TableName"))) = "ATTENDENCE") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "DATELOCK")
  loc_197AD69:         var_1F4 = CVar(var_90.Fields.Item("TableName")) 'Address
  loc_197AD70:         var_204 = Ucase(var_1F4)
  loc_197ADFA:         var_314 = var_1DC Or (var_204 = "KOTLOG") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "ENVIRO") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "FAENVIRO")
  loc_197AE72:         var_3E4 = var_314 Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "EMAILENVIRO") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SMSENVIRO")
  loc_197AEEA:         var_4BC = var_3E4 Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "MEMENVIRO") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "NCTYPEMAST")
  loc_197AF62:         var_58C = var_4BC Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "TEMP_SBILL") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "TRANLOG")
  loc_197AFDA:         var_65C = var_58C Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "TRANSIN") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "TRANSOUT")
  loc_197B052:         var_72C = var_65C Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "TRANSDEL") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "VOUCHERCAT")
  loc_197B0CA:         var_7FC = var_72C Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "COMP_PLANDET") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "FOMBILLCHANGEDETAILS")
  loc_197B142:         var_8CC = var_7FC Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "GROUPCATALOG") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "GUESTPARAM")
  loc_197B1BA:         var_99C = var_8CC Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SITE") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SUBGROUPLOG")
  loc_197B232:         var_A6C = var_99C Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "FOMBILLCHANGEDETAILS") Or (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SUBGROUPTYPE")
  loc_197B2C8:         If CBool(var_A6C) Then
  loc_197B2CB:           GoTo loc_197B2DF
  loc_197B2CE:         End If
  loc_197B2DA:         Call Proc_168_22_16943D0(var_90, arg_10, arg_18)
  loc_197B2DF:         ' Referenced from:     197B2CB
  loc_197B2E3:         Set var_EC = New 
  loc_197B334:         var_EC.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value, CVar(arg_10), 3
  loc_197B3C0:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK1")))) And (var_90.Fields.Item("PK1").Value <> vbNullString)) Then
  loc_197B3EE:           var_B4 = CStr(var_90.Fields.Item("PK1").Value)
  loc_197B426:           var_D0 = var_EC.Fields.Item(CVar(var_B4)).Type
  loc_197B430:         End If
  loc_197B4A9:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK2")))) And (var_90.Fields.Item("PK2").Value <> vbNullString)) Then
  loc_197B4D7:           var_B8 = CStr(var_90.Fields.Item("PK2").Value)
  loc_197B50F:           var_D4 = var_EC.Fields.Item(CVar(var_B8)).Type
  loc_197B519:         End If
  loc_197B592:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK3")))) And (var_90.Fields.Item("PK3").Value <> vbNullString)) Then
  loc_197B5C0:           var_BC = CStr(var_90.Fields.Item("PK3").Value)
  loc_197B5F8:           var_D8 = var_EC.Fields.Item(CVar(var_BC)).Type
  loc_197B602:         End If
  loc_197B67B:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK4")))) And (var_90.Fields.Item("PK4").Value <> vbNullString)) Then
  loc_197B6A9:           var_C0 = CStr(var_90.Fields.Item("PK4").Value)
  loc_197B6E1:           var_DC = var_EC.Fields.Item(CVar(var_C0)).Type
  loc_197B6EB:         End If
  loc_197B764:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK5")))) And (var_90.Fields.Item("PK5").Value <> vbNullString)) Then
  loc_197B792:           var_C4 = CStr(var_90.Fields.Item("PK5").Value)
  loc_197B7CA:           var_E0 = var_EC.Fields.Item(CVar(var_C4)).Type
  loc_197B7D4:         End If
  loc_197B84D:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK6")))) And (var_90.Fields.Item("PK6").Value <> vbNullString)) Then
  loc_197B87B:           var_C8 = CStr(var_90.Fields.Item("PK6").Value)
  loc_197B8B3:           var_E4 = var_EC.Fields.Item(CVar(var_C8)).Type
  loc_197B8BD:         End If
  loc_197B904:         var_17C = var_90.Fields.Item("PK7")
  loc_197B936:         If CBool(Not(IsNull(CVar(var_90.Fields.Item("PK7")))) And (var_17C.Value <> vbNullString)) Then
  loc_197B964:           var_CC = CStr(var_90.Fields.Item("PK7").Value)
  loc_197B994:           var_130 = var_EC.Fields.Item(CVar(var_CC)).Type
  loc_197B99C:           var_E8 = var_130
  loc_197B9A6:         End If
  loc_197B9E6:         If (Ucase(CVar(var_90.Fields.Item("TableName"))) = "TRANSDEL") Then
  loc_197B9E9:           GoTo loc_197C639
  loc_197B9EC:         End If
  loc_197B9F4:         If (MemVar_1F95070 = "HO") Then
  loc_197BA4F:           New.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value, CVar(global_56), 3
  loc_197BA65:         Else
  loc_197BAA9:           Set var_150 = Me.Txt
  loc_197BAAF:           Call 0.Method_Proc_168_21_197C7880 (2, var_17C, var_138, (Ucase(CVar(var_90.Fields.Item("TableName"))) = "SUBGROUP"), 1, -1, var_E8)
  loc_197BAB7:           var_E4 = var_17C.Tag
  loc_197BAE3:           If CBool(var_E0 And (var_138 = "HO")) Then
  loc_197BB47:             New.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value & " Where site_code='HO'", CVar(global_56), 3
  loc_197BB5F:           Else
  loc_197BB63:             Set var_98 = New 
  loc_197BBCB:             var_19C = "Select * From " & var_90.Fields.Item("TableName").Value & " Where Logsite_code='" & CVar(MemVar_1F95070) & "'" 
  loc_197BBD3:             var_98.Open var_19C, CVar(global_56), 3
  loc_197BBEC:           End If
  loc_197BBEC:         End If
  loc_197BBF0:         Set var_94 = New 
  loc_197BC41:         var_94.Open "Select * From " & Me.Recordset15.Fields.Item("TableName").Value, CVar(arg_10), 1
  loc_197BC54:         ' Referenced from:     197C636
  loc_197BC63:         If Not(var_98.EOF) Then
  loc_197BC9C:           var_13C = Proc_154_4_F33584(var_D0, CVar(var_98.Fields.Item(CVar(var_B4))), var_B4 & "=", 3, -1, 1, -1)
  loc_197BD01:           var_138 = Proc_6_38_E69628(CVar(var_90.Fields.Item("PK2")), Not(IsNull(CVar(var_90.Fields.Item("PK2")))), -1, var_DC)
  loc_197BD1B:           If (var_D8 And (var_B4 & "=" <> vbNullString)) Then
  loc_197BD62:             var_158 = Proc_154_4_F33584(var_D4, CVar(var_98.Fields.Item(CVar(var_B8))), 1 & "Select * From TransIn Where SiteCode ='" & arg_C & "'" & " And " & var_B8 & "=")
  loc_197BD66:             var_B0 = var_D4 & var_158
  loc_197BD7A:           End If
  loc_197BDE5:           If (var_D0 And (Proc_6_38_E69628(CVar(var_90.Fields.Item("PK3")), Not(IsNull(CVar(var_90.Fields.Item("PK3"))))) <> vbNullString)) Then
  loc_197BE30:             var_B0 = var_B0 & " And " & var_BC & "=" & Proc_154_4_F33584(var_D8, CVar(var_98.Fields.Item(CVar(var_BC))))
  loc_197BE44:           End If
  loc_197BEAF:           If (3 And (Proc_6_38_E69628(CVar(var_90.Fields.Item("PK4")), Not(IsNull(CVar(var_90.Fields.Item("PK4"))))) <> vbNullString)) Then
  loc_197BEFA:             var_B0 = var_B0 & " And " & var_C0 & "=" & Proc_154_4_F33584(var_DC, CVar(var_98.Fields.Item(CVar(var_C0))))
  loc_197BF0E:           End If
  loc_197BF79:           If (Not(IsNull(CVar(var_90.Fields.Item("PK5")))) And (Proc_6_38_E69628(CVar(var_90.Fields.Item("PK5"))) <> vbNullString)) Then
  loc_197BFC4:             var_B0 = var_B0 & " And " & var_C4 & "=" & Proc_154_4_F33584(var_E0, CVar(var_98.Fields.Item(CVar(var_C4))))
  loc_197BFD8:           End If
  loc_197C043:           If (Not(IsNull(CVar(var_90.Fields.Item("PK6")))) And (Proc_6_38_E69628(CVar(var_90.Fields.Item("PK6"))) <> vbNullString)) Then
  loc_197C08E:             var_B0 = var_B0 & " And " & var_C8 & "=" & Proc_154_4_F33584(var_E4, CVar(var_98.Fields.Item(CVar(var_C8))))
  loc_197C0A2:           End If
  loc_197C10D:           If (Not(IsNull(CVar(var_90.Fields.Item("PK7")))) And (Proc_6_38_E69628(CVar(var_90.Fields.Item("PK7"))) <> vbNullString)) Then
  loc_197C158:             var_B0 = var_B0 & " And " & var_CC & "=" & Proc_154_4_F33584(var_E8, CVar(var_98.Fields.Item(CVar(var_CC))))
  loc_197C16C:           End If
  loc_197C17C:           var_118 = "Select * From "
  loc_197C187:           var_108 = "TableName"
  loc_197C1C9:           xÿ,.Connection15.Execute CStr(var_118 & var_90.Fields.Item(var_108).Value & " Where " & CVar(var_B0)), var_19C, -1
  loc_197C1D1:           var_150 = var_150.RecordCount
  loc_197C1F8:           If (var_130 = 0) Then
  loc_197C206:             var_94.AddNew var_108, var_118
  loc_197C233:             For var_A70 = 0 To CInt((var_98.Fields.Count - 1)):     var_9A = var_A70 'Integer
  loc_197C273:               If (var_98.Fields.Item(CVar(var_9A)).Name <> "CompCode") Then
  loc_197C2AE:                 If (var_94.Fields.Item(CVar(var_9A)).Type <> &H87) Then
  loc_197C313:                   If (var_94.Fields.Item(CVar(var_9A)).DefinedSize <> var_98.Fields.Item(CVar(var_9A)).DefinedSize) Then
  loc_197C34E:                     If (var_94.Fields.Item(CVar(var_9A)).DefinedSize <> &H7FFFFFFF) Then
  loc_197C366:                       var_168 = CVar(arg_14 & ".") 'String
  loc_197C3CB:                       var_19C = CVar(var_94.Fields.Item(CVar(var_9A)).Name) 'String
  loc_197C3DB:                       MsgBox(var_168 & var_90.Fields.Item("TableName").Value & "." & var_19C & " Field Size Mismatch", 0, var_1F4, var_204, var_224)
  loc_197C402:                       GoTo loc_197C71A
  loc_197C405:                     End If
  loc_197C405:                   End If
  loc_197C405:                 End If
  loc_197C4CB:                 var_214 = (((var_98.Fields.Item(CVar(var_9A)).Name = "FormNo") Or (var_98.Fields.Item(CVar(var_9A)).Name = "FormAmt")) Or (var_98.Fields.Item(CVar(var_9A)).Name = "FormDate"))
  loc_197C4F8:                 If CBool((var_90.Fields.Item("TableName").Value = "SBill") And var_214) Then
  loc_197C4FB:                   GoTo loc_197C616
  loc_197C4FE:                 End If
  loc_197C585:                 var_13C = var_98.Fields.Item(CVar(var_9A)).Name
  loc_197C597:                 var_178 = (var_90.Fields.Item("TableName").Value = "PBill") And ((var_98.Fields.Item(CVar(var_9A)).Name = "PassedBy") Or (var_13C = "PassDate"))
  loc_197C5BA:                 If CBool(var_178) Then
  loc_197C5BD:                   GoTo loc_197C616
  loc_197C5C0:                 End If
  loc_197C5C6:                 var_108 = CVar(var_9A) 'Integer
  loc_197C5D8:                 var_12C = var_98.Fields.Item(var_108)
  loc_197C5EB:                 var_118 = CVar(var_9A) 'Integer
  loc_197C5F5:                 var_150 = var_94.Fields
  loc_197C605:                 var_150.Item(var_118).Value = CVar(var_12C)
  loc_197C616:                 ' Referenced from:     197C5BD
  loc_197C616:                 ' Referenced from:     197C4FB
  loc_197C616:               End If
  loc_197C619:             Next var_A70 'Integer
  loc_197C629:             var_94.Update var_108, var_118
  loc_197C62E:           End If
  loc_197C631:           var_98.MoveNext
  loc_197C636:           GoTo loc_197BC54
  loc_197C639:           ' Referenced from:     197B9E9
  loc_197C639:         End If
  loc_197C63C:         xÿ,.CommitTrans
  loc_197C644:         var_90.MoveNext
  loc_197C649:         GoTo loc_197AC42
  loc_197C64C:       End If
  loc_197C659:       var_108 = "Delete from TransDel where UEntdt="
  loc_197C667:       Set var_F0 = Me.Txt
  loc_197C66D:       Call 0.Method_Proc_168_21_197C7880 (0, var_12C, var_108)
  loc_197C67C:       Proc_6_7_F26918(var_168, CVar(var_12C), var_19C)
  loc_197C684:       var_178 = -1 & var_168 
  loc_197C68D:       var_18C = var_178 & vbNullString 
  loc_197C691:       var_138 = CStr(var_18C)
  loc_197C69B:       unk_4CFBBB.Execute var_138, var_150, 
  loc_197C6C5:       Call 0.Method_arg_2B0 (var_108)
  loc_197C6CA:     End If
  loc_197C6CA:   End If
  loc_197C6D7:   Me.LblTblName.Caption = vbNullString
  loc_197C6E9:   Me.LblTblName.Refresh
  loc_197C6F6:   Set var_88 = Nothing
  loc_197C6FE:   Set var_8C = Nothing
  loc_197C706:   Set var_90 = Nothing
  loc_197C70E:   Set var_98 = Nothing
  loc_197C716:   Set var_94 = Nothing
  loc_197C719:   Exit Sub
  loc_197C71A:   ' Referenced from:   197C402
  loc_197C71A: End If
  loc_197C71A: ' Referenced from: 1979BE8
  loc_197C720: If (var_9C = 1) Then
  loc_197C729:   Me.RollbackTrans
  loc_197C72E: End If
  loc_197C734: If (var_9C = 2) Then
  loc_197C73A:   xÿ,.Connection15.RollbackTrans
  loc_197C73F: End If
  loc_197C747: Set var_F0 = Err()
  loc_197C74D: Call 0.Method_arg_2C (var_138)
  loc_197C758: Call 0.Method_arg_50 (var_13C)
  loc_197C774: MsgBox(CVar(var_138), &H40, CVar(var_13C), var_178, var_18C)
  loc_197C787: Exit Sub
End Sub

Public Sub Proc_168_22_16943D0
  'Data Table: 4CFAF4
  Dim var_D0 As Fields15
  Dim var_E4 As Variant
  Dim var_88 As Recordset15
  Dim var_14C As Variant
  Dim var_128 As Variant
  Dim var_B4 As Long
  Dim var_B8 As Long
  Dim var_BC As Long
  Dim var_C0 As Long
  Dim var_C4 As Long
  Dim var_C8 As Long
  Dim var_CC As Long
  Dim var_8C As Recordset15
  Dim var_174 As Variant
  Dim var_164 As String
  Dim var_1AC As String
  Dim var_1B0 As String
  Dim var_324 As Variant
  Dim var_224 As Variant
  Dim var_234 As String
  Dim var_35C As String
  loc_1692C18: Set var_88 = New 
  loc_1692C69: var_88.Open "Select * From " & Me.Fields.Item("TableName").Value, CVar(arg_10), 3
  loc_1692CF5: If CBool(Not(IsNull(CVar(Me.Fields.Item("PK1")))) And (Me.Fields.Item("PK1").Value <> vbNullString)) Then
  loc_1692D23:   var_98 = CStr(Me.Fields.Item("PK1").Value)
  loc_1692D5B:   var_B4 = var_88.Fields.Item(CVar(var_98)).Type
  loc_1692D65: End If
  loc_1692DDE: If CBool(Not(IsNull(CVar(Me.Fields.Item("PK2")))) And (Me.Fields.Item("PK2").Value <> vbNullString)) Then
  loc_1692E0C:   var_9C = CStr(Me.Fields.Item("PK2").Value)
  loc_1692E44:   var_B8 = var_88.Fields.Item(CVar(var_9C)).Type
  loc_1692E4E: End If
  loc_1692EC7: If CBool(Not(IsNull(CVar(Me.Fields.Item("PK3")))) And (Me.Fields.Item("PK3").Value <> vbNullString)) Then
  loc_1692EF5:   var_A0 = CStr(Me.Fields.Item("PK3").Value)
  loc_1692F2D:   var_BC = var_88.Fields.Item(CVar(var_A0)).Type
  loc_1692F37: End If
  loc_1692FB0: If CBool(Not(IsNull(CVar(Me.Fields.Item("PK4")))) And (Me.Fields.Item("PK4").Value <> vbNullString)) Then
  loc_1692FDE:   var_A4 = CStr(Me.Fields.Item("PK4").Value)
  loc_1693016:   var_C0 = var_88.Fields.Item(CVar(var_A4)).Type
  loc_1693020: End If
  loc_1693099: If CBool(Not(IsNull(CVar(Me.Fields.Item("PK5")))) And (Me.Fields.Item("PK5").Value <> vbNullString)) Then
  loc_16930C7:   var_A8 = CStr(Me.Fields.Item("PK5").Value)
  loc_16930FF:   var_C4 = var_88.Fields.Item(CVar(var_A8)).Type
  loc_1693109: End If
  loc_1693182: If CBool(Not(IsNull(CVar(Me.Fields.Item("PK6")))) And (Me.Fields.Item("PK6").Value <> vbNullString)) Then
  loc_16931B0:   var_AC = CStr(Me.Fields.Item("PK6").Value)
  loc_16931E8:   var_C8 = var_88.Fields.Item(CVar(var_AC)).Type
  loc_16931F2: End If
  loc_169326B: If CBool(Not(IsNull(CVar(Me.Fields.Item("PK7")))) And (Me.Fields.Item("PK7").Value <> vbNullString)) Then
  loc_1693299:   var_B0 = CStr(Me.Fields.Item("PK7").Value)
  loc_16932C9:   var_160 = var_88.Fields.Item(CVar(var_B0)).Type
  loc_16932D1:   var_CC = var_160
  loc_16932DB: End If
  loc_169331B: If (Ucase(CVar(Me.Fields.Item("TableName"))) = "TRANSDEL") Then
  loc_169331E:   GoTo loc_1693E12
  loc_1693321: End If
  loc_1693325: Set var_8C = New 
  loc_1693355: If (Ucase(Trim(MemVar_1F95070)) = "HO") Then
  loc_1693372:   var_E4 = Me.Fields.Item("TableName")
  loc_16933B2:   var_8C.Open "Select * From " & var_E4.Value & " ", CVar(global_56), 3
  loc_16933CA: Else
  loc_16933D6:   Set var_D0 = Me.Txt
  loc_16933DC:   Call 0.Method_Proc_168_22_16943D00 (2, var_E4, var_164, 1, -1, var_CC, var_C8)
  loc_16933E4:   var_C4 = var_E4.Tag
  loc_1693448:   If CBool((var_164 = "HO") And (Ucase(CVar(Me.Fields.Item("TableName"))) = "SUBGROUP")) Then
  loc_16934A5:     var_8C.Open "Select * From " & Me.Fields.Item("TableName").Value & " Where Site_Code='HO'", CVar(global_56), 3
  loc_16934BD:   Else
  loc_1693526:     var_174 = "Select * From " & Me.Fields.Item("TableName").Value & " Where LogSite_Code='" & Trim(MemVar_1F95070) 
  loc_1693537:     var_8C.Open var_174 & "'", CVar(global_56), 3
  loc_1693552:     ' Referenced from:     1693E0F
  loc_1693552:   End If
  loc_1693552: End If
  loc_1693561: If Not(var_8C.EOF) Then
  loc_169359A:   var_1AC = Proc_154_4_F33584(var_B4, CVar(var_8C.Fields.Item(CVar(var_98))), var_98 & "=", 1, -1, 1, -1)
  loc_1693619:   If (var_B4 And (Proc_6_38_E69628(CVar(Me.Fields.Item("PK2")), Not(IsNull(CVar(Me.Fields.Item("PK2")))), var_BC, var_B8) <> vbNullString)) Then
  loc_1693664:     var_94 = 3 & Proc_154_4_F33584(var_B8, CVar(var_8C.Fields.Item(CVar(var_9C))), var_C0 & var_1AC & " And " & var_9C & "=")
  loc_1693678:   End If
  loc_16936E3:   If (-1 And (Proc_6_38_E69628(CVar(Me.Fields.Item("PK3")), Not(IsNull(CVar(Me.Fields.Item("PK3"))))) <> vbNullString)) Then
  loc_169372E:     var_94 = var_94 & " And " & var_A0 & "=" & Proc_154_4_F33584(var_BC, CVar(var_8C.Fields.Item(CVar(var_A0))))
  loc_1693742:   End If
  loc_16937AD:   If (Not(IsNull(CVar(Me.Fields.Item("PK4")))) And (Proc_6_38_E69628(CVar(Me.Fields.Item("PK4"))) <> vbNullString)) Then
  loc_16937F8:     var_94 = var_94 & " And " & var_A4 & "=" & Proc_154_4_F33584(var_C0, CVar(var_8C.Fields.Item(CVar(var_A4))))
  loc_169380C:   End If
  loc_1693877:   If (Not(IsNull(CVar(Me.Fields.Item("PK5")))) And (Proc_6_38_E69628(CVar(Me.Fields.Item("PK5"))) <> vbNullString)) Then
  loc_16938C2:     var_94 = var_94 & " And " & var_A8 & "=" & Proc_154_4_F33584(var_C4, CVar(var_8C.Fields.Item(CVar(var_A8))))
  loc_16938D6:   End If
  loc_1693941:   If (Not(IsNull(CVar(Me.Fields.Item("PK6")))) And (Proc_6_38_E69628(CVar(Me.Fields.Item("PK6"))) <> vbNullString)) Then
  loc_169398C:     var_94 = var_94 & " And " & var_AC & "=" & Proc_154_4_F33584(var_C8, CVar(var_8C.Fields.Item(CVar(var_AC))))
  loc_16939A0:   End If
  loc_1693A0B:   If (Not(IsNull(CVar(Me.Fields.Item("PK7")))) And (Proc_6_38_E69628(CVar(Me.Fields.Item("PK7"))) <> vbNullString)) Then
  loc_1693A56:     var_94 = var_94 & " And " & var_B0 & "=" & Proc_154_4_F33584(var_CC, CVar(var_8C.Fields.Item(CVar(var_B0))))
  loc_1693A6A:   End If
  loc_1693AC7:   xÿ,.Connection15.Execute CStr("Select * From " & Me.Fields.Item("TableName").Value & " Where " & CVar(var_94)), var_174, -1
  loc_1693ACF:   var_128 = var_128.RecordCount
  loc_1693AF6:   If (var_160 > 0) Then
  loc_1693B3E:     If (var_160 And (Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_AE")), (global_72 = "Yes")) <> "A")) Then
  loc_1693C95:       var_324 = Trim(Mid(CVar(var_8C.Fields.Item(CVar(var_98))), 4, 5)) & "/" & Trim(Right(CVar(var_8C.Fields.Item(CVar(var_98))), 8)) 
  loc_1693CD8:       var_1B0 = Proc_6_45_EADFB8(arg_18) & " Table -> "
  loc_1693CE9:       var_174 = CVar(var_94 & " And " & var_B0 & "=" & Proc_6_45_EADFB8(CStr(Me.Fields.Item("TableName").Value), &HE) & " Unit-> ") 'String
  loc_1693CF3:       var_14C = " Year-> "
  loc_1693CFF:       var_224 = var_174 & Mid(CVar(var_8C.Fields.Item(CVar(var_98))), 2, 2) & CVar(var_94) & Trim(Mid(CVar(var_8C.Fields.Item(CVar(var_98))), 9, 5)) 
  loc_1693D03:       var_234 = " Type-> "
  loc_1693D16:       var_35C = "DocID-> "
  loc_1693D28:       Print 1, var_224 & var_234 & CVar(Proc_6_45_EADFB8(CStr(var_324), &HF)) & var_35C & var_8C.Fields.Item(CVar(var_98)).Value
  loc_1693DE9:       xÿ,.Connection15.Execute CStr("Delete " & Me.Fields.Item("TableName").Value & " Where " & CVar(var_94)), var_174, -1
  loc_1693E07:     End If
  loc_1693E07:   End If
  loc_1693E0A:   var_8C.MoveNext
  loc_1693E0F:   GoTo loc_1693552
  loc_1693E12:   ' Referenced from: 169331E
  loc_1693E12: End If
  loc_1693E16: Set var_8C = New 
  loc_1693E73: var_8C.Open "Select * From TransDel Where TableName='" & Me.Fields.Item("TableName").Value & "'", CVar(global_56), 3
  loc_1693E88: ' Referenced from: 16943BB
  loc_1693E97: If Not(var_8C.EOF) Then
  loc_1693ED3:   var_94 = -1 & Proc_154_4_F33584(var_B4, CVar(var_8C.Fields.Item("PK1_VALUE")), var_98 & "=", 1)
  loc_1693F1F:   If CBool(var_8C.Fields.Item("PK2_NAME").Value <> vbNullString) Then
  loc_1693F61:     var_128 = Me.Fields
  loc_1693F9B:     If CBool(Not(IsNull(CVar(Me.Fields.Item("PK2")))) And (var_128.Item("PK2").Value <> vbNullString)) Then
  loc_1693FE5:       var_94 = var_128 & Proc_154_4_F33584(var_B8, CVar(var_8C.Fields.Item("PK2_VALUE")), var_94 & " And " & var_9C & "=")
  loc_1693FF9:     End If
  loc_1693FF9:   End If
  loc_1694035:   If CBool(var_8C.Fields.Item("PK3_NAME").Value <> vbNullString) Then
  loc_16940B1:     If CBool(Not(IsNull(CVar(Me.Fields.Item("PK3")))) And (Me.Fields.Item("PK3").Value <> vbNullString)) Then
  loc_16940FB:       var_94 = var_94 & " And " & var_A0 & "=" & Proc_154_4_F33584(var_BC, CVar(var_8C.Fields.Item("PK3_VALUE")))
  loc_169410F:     End If
  loc_169410F:   End If
  loc_169414B:   If CBool(var_8C.Fields.Item("PK4_NAME").Value <> vbNullString) Then
  loc_16941C7:     If CBool(Not(IsNull(CVar(Me.Fields.Item("PK4")))) And (Me.Fields.Item("PK4").Value <> vbNullString)) Then
  loc_1694211:       var_94 = var_94 & " And " & var_A4 & "=" & Proc_154_4_F33584(var_C0, CVar(var_8C.Fields.Item("PK4_VALUE")))
  loc_1694225:     End If
  loc_1694225:   End If
  loc_1694261:   If CBool(var_8C.Fields.Item("PK5_NAME").Value <> vbNullString) Then
  loc_16942DD:     If CBool(Not(IsNull(CVar(Me.Fields.Item("PK5")))) And (Me.Fields.Item("PK5").Value <> vbNullString)) Then
  loc_1694327:       var_94 = var_94 & " And " & var_A8 & "=" & Proc_154_4_F33584(var_C4, CVar(var_8C.Fields.Item("PK5_VALUE")))
  loc_169433B:     End If
  loc_169433B:   End If
  loc_1694395:   xÿ,.Connection15.Execute CStr("Delete " & Me.Fields.Item("TableName").Value & " Where " & CVar(var_94)), var_174, -1
  loc_16943B6:   var_8C.MoveNext
  loc_16943BB:   GoTo loc_1693E88
  loc_16943BE: End If
  loc_16943C3: Set var_8C = Nothing
  loc_16943CB: Set var_88 = Nothing
  loc_16943CE: Exit Sub
End Sub

Public Sub Proc_168_23_F05C50
  'Data Table: 4CFAF4
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_E8 As String
  loc_F05B9C: For var_A4 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A4 'Byte
  loc_F05BA7:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_F05BAC:   var_D4 = 0
  loc_F05BCA:   var_E8 = CStr(Me.FGrid.TextMatrix))
  loc_F05BDB:   If (var_E8 = "ü") Then
  loc_F05BE9:     var_8A = CByte((CInt(var_8A) + 1)) 'Byte
  loc_F05BED:   End If
  loc_F05BF0: Next var_A4 'Byte
  loc_F05BFF: If (CInt(var_8A) = 0) Then
  loc_F05C08:   Call 0.Method_arg_50 (var_E8)
  loc_F05C29:   MsgBox("Please Select At Least One Company", &H40, CVar(var_E8), var_108, var_118)
  loc_F05C3E:   Proc_168_23_F05C50 = 0
  loc_F05C44: End If
  loc_F05C49: Proc_168_23_F05C50 = &HFF
End Sub

Public Sub Proc_168_24_E55E3C
  'Data Table: 4CFAF4
  loc_E55E20: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_E55E32:   Me.DGUnit.Visible = False
  loc_E55E3A: End If
  loc_E55E3A: Exit Sub
End Sub

Public Sub Proc_168_25_1152D34
  'Data Table: 4CFAF4
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_D4 As ListItems
  Dim var_E8 As Variant
  Dim var_C0 As ListView
  Dim var_118 As Variant
  Dim var_F8 As Variant
  Dim var_170 As ListItem
  Dim var_88 As Integer
  loc_11529A8: If (MemVar_1F953B0 = "S") Then
  loc_11529BE:   Call 0.Method_arg_9C (-1)
  loc_11529C6:   Set var_8C = New 
  loc_11529CF:   Call 0.Method_arg_BC (0)
  loc_11529D9:   Call 0.Method_arg_E8 (0)
  loc_11529E1:   var_BC = CVar(MemVar_1F950D4) 'String
  loc_11529E8:   var_AC = CVar(MemVar_1F950D8) 'String
  loc_11529F6:   Call 0.Method_arg_100 (CVar(MemVar_1F95098), var_AC)
  loc_11529FD:   Set var_8C = Nothing 
  loc_1152A05:   Set var_C0 = Me.LVTables
  loc_1152A16:   Set var_D4 = Me.LVTables.ListItems
  loc_1152A1C:   var_D4.Clear
  loc_1152A2B:   var_9C = True
  loc_1152A33:   Set var_C0 = Me.LVTables
  loc_1152A41:   var_9C = True
  loc_1152A49:   Set var_C0 = Me.LVTables
  loc_1152A61:   var_9C = CVar(MemVar_1F95108) 'String
  loc_1152A6E:   Call 0.Method_arg_34 (var_C0, var_9C, var_AC, var_D4, LVTables.DispID_18)
  loc_1152A76:   Call 0.Method_arg_30 (var_9C, LVTables.DispID_1C)
  loc_1152A7E:   MemVar_1F95208 = var_D4
  loc_1152A96:   Call 0.Method_arg_3C (var_C0, var_D8, var_86)
  loc_1152A9E:   Call 0.Method_arg_38 (1, var_9C)
  loc_1152AAA:   For var_DC =  To CInt(var_D8): var_BC = var_DC 'Integer
  loc_1152ACA:     Call 0.Method_arg_3C (var_C0, CVar(var_86), var_AC)
  loc_1152AD2:     Call 0.Method_arg_30 (var_D4)
  loc_1152ADA:     Call 0.Method_arg_74 (var_DE)
  loc_1152AEC:     If (var_DE = 0) Then
  loc_1152B09:       Call 0.Method_arg_3C (var_C0, CVar(var_86), var_AC)
  loc_1152B11:       Call 0.Method_arg_30 (var_D4)
  loc_1152B19:       Call 0.Method_arg_34 (var_E4)
  loc_1152B37:       Set var_E8 = Me.LVTables
  loc_1152B4E:       var_E8.ListItems.Add var_F8, var_118, CVar(var_E4), var_148, var_168
  loc_1152B89:       Call 0.Method_arg_3C (var_C0, CVar(var_86), var_AC)
  loc_1152B91:       Call 0.Method_arg_30 (var_D4, var_E8)
  loc_1152B99:       Call 0.Method_arg_60 (var_170)
  loc_1152BAE:       If (var_E8 Is Nothing) Then
  loc_1152C03:         Me.LVTables.ListItems.Item(CVar(Me.LVTables.ListItems.Count)).Bold = True
  loc_1152C44:         var_D8 = Me.LVTables.ListItems.Count
  loc_1152C54:         Set var_E8 = Me.LVTables
  loc_1152C73:         var_E8.ListItems.Item(CVar(var_D8)).ForeColor = &HFF
  loc_1152C8E:       End If
  loc_1152C92:       Set var_C0 = Me.LVTables
  loc_1152CA6:     Else
  loc_1152CAC:       var_88 = (var_88 + 1)
  loc_1152CAF:     End If
  loc_1152CB2:   Next var_DC 'Integer
  loc_1152CC8:   Call 0.Method_arg_3C (var_C0, var_D8)
  loc_1152CD0:   Call 0.Method_arg_38 (var_86)
  loc_1152CE1:   For var_174 =  To CInt((var_D8 - CLng(var_88))): 1 = var_174 'Integer
  loc_1152CEF:     var_9C = var_86
  loc_1152D0F:     var_9C = Me.LVTables.ListItems.ControlDefault
  loc_1152D17:     var_E8.Checked = var_E8
  loc_1152D2B:   Next var_174 'Integer
  loc_1152D30: End If
  loc_1152D30: Exit Sub
End Sub
