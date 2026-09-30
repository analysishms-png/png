VERSION 5.00
Begin VB.Form frmAdvanceDepDialog
  Caption = "Advance Deposit "
  BackColor = &H8000000A&
  ForeColor = &H4080&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmAdvanceDepDialog.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6915
  ClientHeight = 7365
  LockControls = -1  'True
  Begin Frame FrTxnNo
    BackColor = &HFFC0FF&
    Left = 11430
    Top = 945
    Width = 4515
    Height = 300
    Visible = 0   'False
    TabIndex = 80
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 26
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 3360
      Height = 285
      TabIndex = 17
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
    Begin Label LblName
      Caption = "Txn. No."
      Index = 14
      ForeColor = &HC00000&
      Left = 180
      Top = 15
      Width = 795
      Height = 240
      TabIndex = 81
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
  Begin TextBox Txt
    Index = 25
    ForeColor = &HC00000&
    Left = 2670
    Top = 675
    Width = 1110
    Height = 285
    Enabled = 0   'False
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 0
    Top = 3765
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 77
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 78
    End
  End
End

Attribute VB_Name = "frmAdvanceDepDialog"

Private global_156 As Variant
Private global_96 As Long
Private global_100 As Long
Private global_124 As Double
Private global_92 As Integer
Private global_144 As Integer

Private Sub ListView_UnknownEvent_13 'F16044
  'Data Table: 51E0D0
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F15F60: On Error Goto loc_F1603E
  loc_F15F67: Set var_A4 = Me.ListView
  loc_F15FB1: Set var_BC = Me.Txt
  loc_F15FB7: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F15FBF: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F15FEB: Me.FrmList.Visible = False
  loc_F1600D: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F1601B: Set var_9C = Me.Txt
  loc_F16021: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F16029: var_A4.SetFocus
  loc_F1603D: Exit Sub
  loc_F1603E: ' Referenced from: F15F60
  loc_F1603E: Proc_6_60_E63754(var_C8)
  loc_F16043: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '14DD968
  'Data Table: 51E0D0
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim var_B0 As Variant
  Dim var_C0 As String
  Dim Me As Recordset15
  Dim var_F0 As Variant
  Dim var_90 As Variant
  Dim var_D8 As TextBox
  Dim var_88 As Frame
  loc_14DCBB2: Set var_88 = Me.Txt
  loc_14DCBB8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_14DCBC6: Proc_6_74_E23240(var_8C)
  loc_14DCBD2: Call Proc_43_54_F6DA2C(var_8C)
  loc_14DCBE6: Set var_88 = Me.Txt
  loc_14DCBEC: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DCBF4: var_8C.SelStart = 0
  loc_14DCC0D: Set var_88 = Me.Txt
  loc_14DCC13: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DCC1B: var_94 = var_8C.Text
  loc_14DCC2E: Set var_90 = Me.Txt
  loc_14DCC34: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_14DCC3C: var_98.SelLength = Len(var_94)
  loc_14DCC52: var_9A = Index
  loc_14DCC5D: If (var_9A = CInt(&H19)) Then
  loc_14DCC6D:   ReDim var_A0(0 To 1)
  loc_14DCC84:   var_A0(0) = "Advance"
  loc_14DCC86:   var_C0 = "Refund"
  loc_14DCC93:   var_A0(1) = var_C0
  loc_14DCCAA:   global_156 = Array(var_A0)
  loc_14DCCB5:   Set var_98 = Me.ListView
  loc_14DCCBC:   Set var_D8 = Me.Txt
  loc_14DCCD0:   Set var_8C = var_D8
  loc_14DCCEA:   Set global_172 = Proc_6_66_F0048C(var_98, var_8C, Index, global_156)
  loc_14DCD08:   Set var_88 = Me.Txt
  loc_14DCD0E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_14DCD16:   2 = var_8C.Text
  loc_14DCD28:   Set var_90 = Me.Txt
  loc_14DCD2E:   Call 0.Method_Txt_GotFocus0 (Index, var_98, var_94)
  loc_14DCD36:   var_98.Tag = global_156
  loc_14DCD4C: Else
  loc_14DCD54:   If (var_9A = CInt(3)) Then
  loc_14DCDA5:     Set var_88 = Me.Txt
  loc_14DCDAB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_14DCDB3:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14DCDCB:     If (var_9A Or (var_94 = vbNullString)) Then
  loc_14DCDCE:       Exit Sub
  loc_14DCDCF:     End If
  loc_14DCDDC:     Set var_88 = Me.Txt
  loc_14DCDE2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DCDEA:     var_94 = var_8C.Text
  loc_14DCDFC:     var_B0 = "Name"
  loc_14DCE37:     If CBool(CVar(var_94) <> Me.Fields.Item(var_B0).Value) Then
  loc_14DCE40:       Me.MoveFirst
  loc_14DCE63:       Set var_88 = Me.Txt
  loc_14DCE69:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_14DCE71:       0 = var_8C.Text
  loc_14DCE8A:       Me.Find 1 & var_94 & "'", var_B0, 
  loc_14DCE9F:     End If
  loc_14DCEA2:   Else
  loc_14DCEAA:     If (var_9A = CInt(5)) Then
  loc_14DCEBA:        = (var_10C).Top
  loc_14DCECD:       Set var_98 = Me.Txt
  loc_14DCED3:       Call 0.Method_Txt_GotFocus0 (CInt(5), var_D8)
  loc_14DCEEE:       Set var_88 = Me.Txt
  loc_14DCEF4:       Call 0.Method_Txt_GotFocus0 (CInt(5), var_8C)
  loc_14DCF0C:       var_B0 = CVar(((var_8C.Top + var_10C) + var_D8.Height)) 'Single
  loc_14DCF1B:       (var_B0).Top = 
  loc_14DCF3C:        = (var_10C).Left
  loc_14DCF4F:       Set var_88 = Me.Txt
  loc_14DCF55:       Call 0.Method_Txt_GotFocus0 (CInt(5), var_8C)
  loc_14DCF69:       var_B0 = CVar((var_8C.Left + var_10C)) 'Single
  loc_14DCF78:       (var_B0).Left = 
  loc_14DCFD6:       Set var_88 = Me.Txt
  loc_14DCFDC:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DCFFC:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_14DCFFF:         Exit Sub
  loc_14DD000:       End If
  loc_14DD00D:       Set var_88 = Me.Txt
  loc_14DD013:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DD026:       global_148 = var_8C.Tag
  loc_14DD041:       Set var_88 = Me.Txt
  loc_14DD047:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DD04F:       var_94 = var_8C.Text
  loc_14DD061:       var_B0 = "Name"
  loc_14DD09C:       If CBool(CVar(var_94) <> Me.Fields.Item(var_B0).Value) Then
  loc_14DD0A5:         Me.MoveFirst
  loc_14DD0C8:         Set var_88 = Me.Txt
  loc_14DD0CE:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_14DD0D6:         0 = var_8C.Text
  loc_14DD0EF:         Me.Find 1 & var_94 & "'", var_B0, 
  loc_14DD104:       End If
  loc_14DD107:     Else
  loc_14DD10F:       If (var_9A = CInt(&H11)) Then
  loc_14DD11F:          = (var_10C).Top
  loc_14DD132:         Set var_98 = Me.Txt
  loc_14DD138:         Call 0.Method_Txt_GotFocus0 (CInt(&H11), var_D8)
  loc_14DD140:         var_110 = var_D8.Height
  loc_14DD153:         Set var_88 = Me.Txt
  loc_14DD159:         Call 0.Method_Txt_GotFocus0 (CInt(&H11), var_8C)
  loc_14DD171:         var_B0 = CVar(((var_8C.Top + var_10C) + var_110)) 'Single
  loc_14DD180:         (var_B0).Top = 
  loc_14DD1A1:          = (var_10C).Left
  loc_14DD1B4:         Set var_88 = Me.Txt
  loc_14DD1BA:         Call 0.Method_Txt_GotFocus0 (CInt(&H11), var_8C)
  loc_14DD1CE:         var_B0 = CVar((var_8C.Left + var_10C)) 'Single
  loc_14DD1DD:         (var_B0).Left = 
  loc_14DD23B:         Set var_88 = Me.Txt
  loc_14DD241:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DD261:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_14DD264:           Exit Sub
  loc_14DD265:         End If
  loc_14DD272:         Set var_88 = Me.Txt
  loc_14DD278:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DD280:         var_94 = var_8C.Text
  loc_14DD292:         var_B0 = "Name"
  loc_14DD2CD:         If CBool(CVar(var_94) <> Me.Fields.Item(var_B0).Value) Then
  loc_14DD2D6:           Me.MoveFirst
  loc_14DD2F9:           Set var_88 = Me.Txt
  loc_14DD2FF:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_14DD307:           0 = var_8C.Text
  loc_14DD320:           Me.Find 1 & var_94 & "'", var_B0, 
  loc_14DD335:         End If
  loc_14DD338:       Else
  loc_14DD340:         If (var_9A = CInt(&H18)) Then
  loc_14DD34C:           var_DC = Me.RecordCount
  loc_14DD391:           Set var_88 = Me.Txt
  loc_14DD397:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DD3B7:           If (((var_DC = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_14DD3BA:             Exit Sub
  loc_14DD3BB:           End If
  loc_14DD3C8:           Set var_88 = Me.Txt
  loc_14DD3CE:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DD3D6:           var_94 = var_8C.Text
  loc_14DD3E8:           var_B0 = "Name"
  loc_14DD3F7:           var_90 = Me.Fields
  loc_14DD423:           If CBool(CVar(var_94) <> var_90.Item(var_B0).Value) Then
  loc_14DD42C:             Me.MoveFirst
  loc_14DD44F:             Set var_88 = Me.Txt
  loc_14DD455:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_14DD45D:             0 = var_8C.Text
  loc_14DD476:             Me.Find 1 & var_94 & "'", var_B0, 
  loc_14DD48B:           End If
  loc_14DD48E:         Else
  loc_14DD496:           If (var_9A = CInt(&H1B)) Then
  loc_14DD4A7:             Set var_8C = Me.Txt
  loc_14DD4AD:             Call 0.Method_Txt_GotFocus0 (CInt(&H1B), var_90)
  loc_14DD4B5:             var_10C = var_90.Height
  loc_14DD4C7:              = (var_DC).Top
  loc_14DD4D3:             var_B0 = CVar((var_DC + var_10C)) 'Single
  loc_14DD4E2:             (var_B0).Top = 
  loc_14DD4FF:              = (var_10C).Left
  loc_14DD512:             Set var_88 = Me.Txt
  loc_14DD518:             Call 0.Method_Txt_GotFocus0 (CInt(&H1B), var_8C)
  loc_14DD52C:             var_B0 = CVar((var_8C.Left + var_10C)) 'Single
  loc_14DD53B:             (var_B0).Left = 
  loc_14DD554:             var_DC = Me.RecordCount
  loc_14DD599:             Set var_88 = Me.Txt
  loc_14DD59F:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DD5BF:             If (((var_DC = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_14DD5C2:               Exit Sub
  loc_14DD5C3:             End If
  loc_14DD5D0:             Set var_88 = Me.Txt
  loc_14DD5D6:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DD5DE:             var_94 = var_8C.Text
  loc_14DD5E6:             var_F0 = CVar(var_94) 'String
  loc_14DD5FF:             var_90 = Me.Fields
  loc_14DD62B:             If CBool(var_F0 <> var_90.Item("Name").Value) Then
  loc_14DD634:               Me.MoveFirst
  loc_14DD659:               Set var_88 = Me.Txt
  loc_14DD65F:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_14DD667:               0 = var_8C.Text
  loc_14DD675:               Proc_6_17_EAAE40(var_F0, CVar(var_94))
  loc_14DD68B:               Me.Find CStr(1 & var_F0), var_C0, 
  loc_14DD6A3:             End If
  loc_14DD6A6:           Else
  loc_14DD6AE:             If (var_9A = CInt(&H1C)) Then
  loc_14DD6BF:               Set var_8C = Me.Txt
  loc_14DD6C5:               Call 0.Method_Txt_GotFocus0 (CInt(&H1C), var_90)
  loc_14DD6CD:               var_10C = var_90.Height
  loc_14DD6DF:                = (var_DC).Top
  loc_14DD6EB:               var_B0 = CVar((var_DC + var_10C)) 'Single
  loc_14DD6FA:               ("Name =").Top = 
  loc_14DD717:                = (var_10C).Left
  loc_14DD729:                = (var_110).Left
  loc_14DD73C:               Set var_88 = Me.Txt
  loc_14DD742:               Call 0.Method_Txt_GotFocus0 (CInt(&H1C), var_8C)
  loc_14DD75A:               var_B0 = CVar(((var_8C.Left + var_10C) + var_110)) 'Single
  loc_14DD769:               ("Name =").Left = 
  loc_14DD7C9:               Set var_88 = Me.Txt
  loc_14DD7CF:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DD7EF:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_14DD7F2:                 Exit Sub
  loc_14DD7F3:               End If
  loc_14DD800:               Set var_88 = Me.Txt
  loc_14DD806:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DD80E:               var_94 = var_8C.Text
  loc_14DD816:               var_F0 = CVar(var_94) 'String
  loc_14DD837:               var_98 = Me.Fields.Item("Name")
  loc_14DD85B:               If CBool(var_F0 <> var_98.Value) Then
  loc_14DD864:                 Me.MoveFirst
  loc_14DD889:                 Set var_88 = Me.Txt
  loc_14DD88F:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_14DD897:                 0 = var_8C.Text
  loc_14DD8A5:                 Proc_6_17_EAAE40(var_F0, CVar(var_94))
  loc_14DD8BB:                 Me.Find CStr(1 & var_F0), var_C0, 
  loc_14DD8D3:               End If
  loc_14DD8D6:             Else
  loc_14DD8DE:               If Not (var_9A = CInt(6)) Then
  loc_14DD8E9:                 If (var_9A = CInt(4)) Then
  loc_14DD8EC:                 End If
  loc_14DD8FB:                 Set var_88 = Me.Txt
  loc_14DD901:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DD909:                 var_8C.SelStart = 0
  loc_14DD922:                 Set var_88 = Me.Txt
  loc_14DD928:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DD943:                 Set var_90 = Me.Txt
  loc_14DD949:                 Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_14DD951:                 var_98.SelLength = Len(var_8C.Text)
  loc_14DD964:               End If
  loc_14DD964:             End If
  loc_14DD964:           End If
  loc_14DD964:         End If
  loc_14DD964:       End If
  loc_14DD964:     End If
  loc_14DD964:   End If
  loc_14DD964: End If
  loc_14DD964: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1338E50
  'Data Table: 51E0D0
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_B4 As TextBox
  Dim Me As Recordset15
  Dim var_128 As Boolean
  Dim var_8C As Variant
  Dim var_98 As Frame
  Dim var_A4 As Frame
  Dim var_B0 As Frame
  Dim Shift As Integer
  loc_13386BE: If (CLng(Shift) = &H1B) Then
  loc_13386C1:   Call Proc_43_54_F6DA2C()
  loc_13386C6:   Exit Sub
  loc_13386C7: End If
  loc_13386CA: var_88 = KeyCode
  loc_13386D5: If (var_88 = CInt(&H19)) Then
  loc_13386FA:   Set var_8C = Me.Txt
  loc_1338700:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_1338708:   var_94 = var_90.Left
  loc_133871A:   Set var_98 = Me.Txt
  loc_1338720:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_1338728:   var_A0 = var_9C.Top
  loc_133873A:   Set var_A4 = Me.Txt
  loc_1338740:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_1338748:   var_AC = var_A8.Height
  loc_133875A:   Set var_B0 = Me.Txt
  loc_1338760:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_1338768:   var_B8 = var_B4.Width
  loc_13387B0:   Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13387D7: Else
  loc_13387DF:   If (var_88 = CInt(3)) Then
  loc_13387E6:     Set var_A4 = CInt((var_A0 + var_AC))(CInt(var_94))
  loc_13387FA:     Set var_9C = Nothing
  loc_1338805:     Set var_98 = Nothing
  loc_1338837:     Proc_6_69_134A630(var_A4, Me.Txt, CInt(3), global_56, Shift, 0, 1)
  loc_133884E:   Else
  loc_1338856:     If (var_88 = CInt(5)) Then
  loc_1338871:       Set var_9C = Nothing
  loc_133887C:       Set var_98 = Nothing
  loc_13388AA:       Proc_6_69_134A630(var_9C(var_98), Me.Txt, KeyCode, global_60, Shift, 0, 1)
  loc_13388C1:     Else
  loc_13388C9:       If (var_88 = CInt(&H11)) Then
  loc_13388E4:         Set var_9C = Nothing
  loc_1338921:         Proc_6_69_134A630(var_9C(Nothing), Me.Txt, CInt(&H11), global_80, Shift, 0, 1, Nothing)
  loc_1338938:       Else
  loc_1338940:         If (var_88 = CInt(&H18)) Then
  loc_133895B:           Set var_9C = Nothing
  loc_1338994:           Proc_6_69_134A630(0(var_9C), Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_13389AB:         Else
  loc_13389B3:           If (var_88 = CInt(&H1B)) Then
  loc_13389CE:             Set var_9C = Nothing
  loc_13389F8:             Set var_90 = Me.Txt
  loc_1338A07:             Proc_6_69_134A630(0(var_9C), var_90, KeyCode, global_72, Shift, 0, 1, Nothing)
  loc_1338A1E:           Else
  loc_1338A26:             If (var_88 = CInt(6)) Then
  loc_1338A33:               Set var_8C = Me.Txt
  loc_1338A39:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_9C, 0, 0)
  loc_1338A54:               Proc_6_41_FA1734(var_90, Shift, 8, 2)
  loc_1338A63:             Else
  loc_1338A6B:               If (var_88 = CInt(&H1C)) Then
  loc_1338ABF:                 Proc_6_69_134A630(CInt(var_B8)(0), Me.Txt, KeyCode, global_76, Shift, 0)
  loc_1338AEA:                 If (Me.RecordCount > 0) Then
  loc_1338B1B:                   var_128 = (((((Shift = &HD) Or (CLng(Shift) = &H26)) Or (Shift = &H10)) Or (CLng(Shift) = &H28)) Or (CLng(Shift) = 9))
  loc_1338B3C:                   var_90 = Me.Fields.Item("CompanyType")
  loc_1338B6A:                   If CBool(var_128 And (var_90.Value = "Travel Agency")) Then
  loc_1338B79:                     1(&HFF).Visible = Nothing
  loc_1338B8D:                     Nothing(1).Value = 0
  loc_1338B98:                   Else
  loc_1338BA4:                     570(0).Visible = var_88
  loc_1338BB8:                     (0).Value = 
  loc_1338BC0:                   End If
  loc_1338BC0:                 End If
  loc_1338BC3:               Else
  loc_1338BCB:                 If (var_88 = CInt(&HE)) Then
  loc_1338BD8:                   Set var_8C = Me.Txt
  loc_1338BDE:                   Call 0.Method_Txt_KeyDown0 (KeyCode)
  loc_1338BF9:                   Proc_6_41_FA1734(var_90, Shift, 8)
  loc_1338C05:                 End If
  loc_1338C05:               End If
  loc_1338C05:             End If
  loc_1338C05:           End If
  loc_1338C05:         End If
  loc_1338C05:       End If
  loc_1338C05:     End If
  loc_1338C05:   End If
  loc_1338C05: End If
  loc_1338C12: var_C6 = Me.FrmList.Visible
  loc_1338C21: Set var_90 = 0((var_C6 = 0))
  loc_1338C7D: Set var_A8 = (( And (CBool((( And (CBool((( And (CBool(((var_90 And (CBool(var_90.Visible) = 0))).Visible) = 0))).Visible) = 0))).Visible) = 0)))
  loc_1338CC7: If ( And (CBool((( And (CBool(var_A8.Visible) = 0))).Visible) = 0)) Then
  loc_1338D15:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((((((KeyCode = CInt(&HE)) Or (KeyCode = CInt(&H16))) Or (KeyCode = CInt(&H1B))) Or (KeyCode = CInt(&H18))) Or (KeyCode = CInt(&H1C))) Or (KeyCode = CInt(&H1A)))) Then
  loc_1338D22:     If (CLng(Shift) = &H28) Then
  loc_1338D25:       Exit Sub
  loc_1338D26:     End If
  loc_1338D26:     Call Proc_43_58_1582C64()
  loc_1338D2D:     Shift = 0
  loc_1338D30:     Exit Sub
  loc_1338D34:   Else
  loc_1338D6F:      = ( And (var_C6 = 0))(var_C8).Visible
  loc_1338D88:      = ( And (var_C8 = 0))(var_CA).Visible
  loc_1338DA1:      = ( And (var_CA = 0))(var_CC).Visible
  loc_1338DBA:      = ( And (var_CC = 0))(var_16A).Visible
  loc_1338DF7:     If ((( And (var_16A = 0)) And (Me.FrTxnNo.Visible = 0)) And (KeyCode = CInt(&H11))) Then
  loc_1338E04:       If (CLng(((CLng(Shift) = &H28) Or (CLng(Shift) = &HD))(var_C6).Visible) = &H28) Then
  loc_1338E07:         Exit Sub
  loc_1338E08:       End If
  loc_1338E08:       Call Proc_43_58_1582C64()
  loc_1338E0F:       Shift = 0
  loc_1338E12:       Exit Sub
  loc_1338E13:     End If
  loc_1338E13:   End If
  loc_1338E28:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1338E31:     Proc_6_75_E5335C(Shift, arg_14)
  loc_1338E36:   End If
  loc_1338E40:   If (CLng(Shift) = &H26) Then
  loc_1338E49:     Proc_6_76_E533C8(Shift, arg_14)
  loc_1338E4E:   End If
  loc_1338E4E: End If
  loc_1338E4E: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F19388
  'Data Table: 51E0D0
  Dim arg_10 As Integer
  Dim var_86 As Integer
  loc_F19296: If (arg_10 = &HD) Then
  loc_F1929B:   arg_10 = 0
  loc_F1929E: End If
  loc_F192A1: Proc_6_58_E06050(arg_10)
  loc_F192A9: var_86 = KeyAscii
  loc_F192B4: If Not (var_86 = CInt(6)) Then
  loc_F192BF:   If (var_86 = CInt(4)) Then
  loc_F192C2:   End If
  loc_F192CC:   Set var_8C = Me.Txt
  loc_F192D2:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F192ED:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_F192FC: Else
  loc_F19304:   If (var_86 = CInt(&HE)) Then
  loc_F19311:     Set var_8C = Me.Txt
  loc_F19317:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, 2)
  loc_F19332:     Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_F19341:   Else
  loc_F19349:     If (var_86 = CInt(&H11)) Then
  loc_F19376:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_F19385:     End If
  loc_F19385:   End If
  loc_F19385: End If
  loc_F19385: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '103C908
  'Data Table: 51E0D0
  Dim var_86 As Integer
  loc_103C6B7: var_86 = KeyCode
  loc_103C6C2: If (var_86 = CInt(3)) Then
  loc_103C6E1:   If (CBool((var_86).Visible) = &HFF) Then
  loc_103C6F5:     var_A8 = "Name"
  loc_103C71D:     Proc_6_68_12A2818((), Me.Txt, CInt(3))
  loc_103C730:   End If
  loc_103C733: Else
  loc_103C73B:   If (var_86 = CInt(5)) Then
  loc_103C75A:     If (CBool(Shift(global_56).Visible) = &HFF) Then
  loc_103C76E:       var_A8 = "Name"
  loc_103C792:       Proc_6_68_12A2818((var_A8), Me.Txt, KeyCode)
  loc_103C7A5:     End If
  loc_103C7A8:   Else
  loc_103C7B0:     If (var_86 = CInt(&H18)) Then
  loc_103C7CF:       If (CBool(Shift(global_60).Visible) = &HFF) Then
  loc_103C7E3:         var_A8 = "Name"
  loc_103C807:         Proc_6_68_12A2818((var_A8), Me.Txt, KeyCode)
  loc_103C81A:       End If
  loc_103C81D:     Else
  loc_103C825:       If (var_86 = CInt(&H1B)) Then
  loc_103C844:         If (CBool(Shift(global_64).Visible) = &HFF) Then
  loc_103C858:           var_A8 = "Name"
  loc_103C87C:           Proc_6_68_12A2818((var_A8), Me.Txt, KeyCode)
  loc_103C88F:         End If
  loc_103C892:       Else
  loc_103C89A:         If (var_86 = CInt(&H1C)) Then
  loc_103C8B9:           If (CBool(Shift(global_72).Visible) = &HFF) Then
  loc_103C8CD:             var_A8 = "Name"
  loc_103C8F1:             Proc_6_68_12A2818((var_A8), Me.Txt, KeyCode)
  loc_103C904:           End If
  loc_103C904:         End If
  loc_103C904:       End If
  loc_103C904:     End If
  loc_103C904:   End If
  loc_103C904: End If
  loc_103C904: Exit Sub
  loc_103C905: global_76(Shift) = var_A8
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EECC
  'Data Table: 51E0D0
  loc_E4EEAA: Set var_88 = Me.Txt
  loc_E4EEB0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EEBE: Proc_6_73_E23294(var_8C)
  loc_E4EECA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '15F2A28
  'Data Table: 51E0D0
  Dim var_86 As Integer
  Dim var_A0 As Variant
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_D4 As String
  Dim var_E4 As Variant
  Dim var_EC As String
  Dim unk_51E0E0 As Connection15
  Dim var_E0 As Recordset15
  Dim var_100 As Variant
  Dim var_114 As String
  Dim var_11C As TextBox
  Dim var_130 As String
  Dim var_12C As TextBox
  Dim var_B0 As Variant
  Dim var_128 As TextBox
  Dim var_160 As Variant
  loc_15F164C: On Error Goto loc_15F29ED
  loc_15F1652: var_86 = Cancel
  loc_15F165D: If (var_86 = CInt(&H19)) Then
  loc_15F166B:   Set var_8C = Me.Txt
  loc_15F1671:   Call 0.Method_Txt_Validate0 (CInt(&H19), var_90)
  loc_15F1680:   var_B0 = Trim(CVar(var_90))
  loc_15F169A:   If (var_B0 = vbNullString) Then
  loc_15F169F:     arg_10 = &HFF
  loc_15F16A2:     Exit Sub
  loc_15F16A3:   End If
  loc_15F16B1:   Set var_8C = Me.Txt
  loc_15F16B7:   Call 0.Method_Txt_Validate0 (CInt(&H19), var_90, var_D4)
  loc_15F16BF:   arg_10 = var_90.Text
  loc_15F16D6:   If (var_D4 = "Advance") Then
  loc_15F16DF:     global_108 = "ADRES"
  loc_15F16E9:     Call Proc_43_55_115847C(MemVar_1F95044, var_D4)
  loc_15F16F4:   Else
  loc_15F16FA:     global_108 = "ARRES"
  loc_15F1704:     Call Proc_43_55_115847C(MemVar_1F95044, var_D4)
  loc_15F170C:   End If
  loc_15F170F: Else
  loc_15F1717:   If (var_86 = CInt(&H1B)) Then
  loc_15F1768:     Set var_8C = Me.Txt
  loc_15F176E:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_D4)
  loc_15F1776:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_15F178E:     If (var_86 Or (var_D4 = vbNullString)) Then
  loc_15F179E:       Set var_8C = Me.Txt
  loc_15F17A4:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F17AC:       var_90.Text = vbNullString
  loc_15F17C5:       Set var_8C = Me.Txt
  loc_15F17CB:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F17D3:       var_90.Tag = vbNullString
  loc_15F17E2:     Else
  loc_15F181D:       Set var_E0 = Me.Txt
  loc_15F1823:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F182B:       var_E4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15F185E:       var_90 = Me.Fields.Item("FolioNo")
  loc_15F187C:       Set var_E0 = Me.Txt
  loc_15F1882:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F188A:       var_E4.Tag = CStr(var_90.Value)
  loc_15F18A0:     End If
  loc_15F18A3:   Else
  loc_15F18AB:     If (var_86 = CInt(3)) Then
  loc_15F18BC:       Set var_8C = Me.Txt
  loc_15F18C2:       Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_15F18E1:       If (var_90.Text = vbNullString) Then
  loc_15F18F1:         Set var_8C = Me.Txt
  loc_15F18F7:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F1911:         If (var_90.Enabled = &HFF) Then
  loc_15F191E:           Set var_8C = Me.Txt
  loc_15F1924:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_15F194D:           If (Proc_6_27_EA61EC(var_90, "Name") = 0) Then
  loc_15F195A:             Set var_8C = Me.Txt
  loc_15F1960:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F1968:             var_90.SetFocus
  loc_15F1976:             arg_10 = &HFF
  loc_15F1979:             Exit Sub
  loc_15F197A:           End If
  loc_15F197D:         Else
  loc_15F197F:           arg_10 = &HFF
  loc_15F1982:           Exit Sub
  loc_15F1983:         End If
  loc_15F1983:       End If
  loc_15F19A0:       var_90 = Me.Fields.Item("DocID")
  loc_15F19A8:       var_A0 = var_90.Value
  loc_15F19B1:       var_D4 = CStr(var_A0)
  loc_15F19BF:       Set var_E0 = Me.Txt
  loc_15F19C5:       Call 0.Method_Txt_Validate0 (CInt(&H1D), var_E4, var_D4)
  loc_15F19CD:       var_E4.Text = arg_10
  loc_15F1A10:       Set var_8C = Me.Txt
  loc_15F1A16:       Call 0.Method_Txt_Validate0 (CInt(&H1D), var_90, var_D4, "Select count(*) from PayCharge where RefDocid='", var_A0, -1, var_E0)
  loc_15F1A1E:       var_E4 = var_90.Text
  loc_15F1A2E:       var_EC = 0 & var_D4 & "' And VType In ('ARRES','ADRES')"
  loc_15F1A37:       unk_51E0E0.Execute var_EC, var_100, var_B0
  loc_15F1A3F:       arg_10 = var_E0.Fields
  loc_15F1A47:        = var_E4.Item(var_90)
  loc_15F1A4F:        = var_100.Value
  loc_15F1A7C:       If (var_B0 > 0) Then
  loc_15F1A7F:         Call Proc_43_51_17ABBB8()
  loc_15F1A87:       Else
  loc_15F1A87:         Call Proc_43_56_1272060()
  loc_15F1A99:         Set var_8C = (1)
  loc_15F1ACF:         Set var_8C = Txt.DispID_4("1").Name(1)
  loc_15F1B19:         Set var_E0 = Me.Txt
  loc_15F1B1F:         Call 0.Method_Txt_Validate0 (CInt(3), var_E4)
  loc_15F1B27:         var_E4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15F1B79:         Set var_E0 = Me.Txt
  loc_15F1B7F:         Call 0.Method_Txt_Validate0 (CInt(3), var_E4)
  loc_15F1B87:         var_E4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15F1BA8:         If (global_108 = "ADRES") Then
  loc_15F1BE8:           var_114 = "Adv. Agst. Res.No. " & CStr(Me.Fields.Item("BookNo").Value) & " Rect.No. "
  loc_15F1BF9:           Set var_E0 = Me.Txt
  loc_15F1BFF:           Call 0.Method_Txt_Validate0 (CInt(1), var_E4, var_EC)
  loc_15F1C07:           var_114 = var_E4.Text
  loc_15F1C28:           Set var_100 = Me.Txt
  loc_15F1C2E:           Call 0.Method_Txt_Validate0 (CInt(2), var_11C)
  loc_15F1C4D:           Set var_128 = Me.Txt
  loc_15F1C53:           Call 0.Method_Txt_Validate0 (CInt(&H17), var_12C)
  loc_15F1C5B:           var_12C.Text = Txt.DispID_6 & var_EC & " Dt. " & var_11C.Text
  loc_15F1C8C:         Else
  loc_15F1C97:           If (global_108 = "ARRES") Then
  loc_15F1CE8:             Set var_E0 = Me.Txt
  loc_15F1CEE:             Call 0.Method_Txt_Validate0 (CInt(1), var_E4)
  loc_15F1D17:             Set var_100 = Me.Txt
  loc_15F1D1D:             Call 0.Method_Txt_Validate0 (CInt(2), var_11C)
  loc_15F1D2E:             var_130 = "Ref. Agst. Res.No. " & CStr(Me.Fields.Item("BookNo").Value) & " Rect.No. " & var_E4.Text & " Dt. " & var_11C.Text
  loc_15F1D3C:             Set var_128 = Me.Txt
  loc_15F1D42:             Call 0.Method_Txt_Validate0 (CInt(&H17), var_12C)
  loc_15F1D4A:             var_12C.Text = var_130
  loc_15F1D78:           End If
  loc_15F1D78:         End If
  loc_15F1DB4:         Set var_E0 = Me.Txt
  loc_15F1DBA:         Call 0.Method_Txt_Validate0 (CInt(8), var_E4)
  loc_15F1DC2:         var_E4.Text = CStr(Me.Fields.Item("Bookingdate").Value)
  loc_15F1E14:         Set var_E0 = Me.Txt
  loc_15F1E1A:         Call 0.Method_Txt_Validate0 (CInt(9), var_E4)
  loc_15F1E22:         var_E4.Text = CStr(Me.Fields.Item("ArrDate").Value)
  loc_15F1E55:         var_90 = Me.Fields.Item("DepDate")
  loc_15F1E5D:         var_A0 = var_90.Value
  loc_15F1E66:         var_D4 = CStr(var_A0)
  loc_15F1E74:         Set var_E0 = Me.Txt
  loc_15F1E7A:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_E4)
  loc_15F1E82:         var_E4.Text = var_D4
  loc_15F1EC2:         Set var_8C = Me.Txt
  loc_15F1EC8:         Call 0.Method_Txt_Validate0 (CInt(&H1D), var_90, var_D4, "Select sum(AmtCr) from PayCharge where RefDocid='", var_A0)
  loc_15F1ED0:         -1 = var_90.Text
  loc_15F1EE9:         unk_51E0E0.Execute var_E0 & var_D4 & "' And VType In ('ARRES','ADRES')", var_E4, 0
  loc_15F1EF1:         var_100 = var_E0.Fields
  loc_15F1EF9:          = var_E4.Item()
  loc_15F1F01:         var_B0 = CVar(var_100) 'Address
  loc_15F1F08:         Proc_6_39_E7D3A0(var_D0)
  loc_15F1F1F:         Set var_11C = Me.Txt
  loc_15F1F25:         Call 0.Method_Txt_Validate0 (CInt(&HC), var_128)
  loc_15F1F2D:         var_128.Text = CStr(var_D0)
  loc_15F1F91:         Set var_E0 = Me.Txt
  loc_15F1F97:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_E4)
  loc_15F1F9F:         var_E4.Text = CStr(Me.Fields.Item("RoomRate").Value)
  loc_15F1FEE:         Set var_E0 = Me.Txt
  loc_15F1FF4:         Call 0.Method_Txt_Validate0 (CInt(&H12), var_E4)
  loc_15F1FFC:         var_E4.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CreditCardNo")))
  loc_15F2044:         global_132 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_15F2072:         var_90 = Me.Fields.Item("Roomtype")
  loc_15F2089:         global_136 = CStr(var_90.Value)
  loc_15F209A:       End If
  loc_15F209D:     Else
  loc_15F20A5:       If (var_86 = CInt(2)) Then
  loc_15F20B6:         Set var_8C = Me.Txt
  loc_15F20BC:         Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_15F20C4:         var_D4 = var_90.Text
  loc_15F20E3:         Set var_E0 = Me.Txt
  loc_15F20E9:         Call 0.Method_Txt_Validate0 (CInt(2), var_E4)
  loc_15F20F1:         var_E4.Text = Proc_6_34_14EEAAC(var_D4)
  loc_15F210E:         Call Proc_43_55_115847C(MemVar_1F95044, var_D4)
  loc_15F2124:         Set var_8C = Me.Txt
  loc_15F212A:         Call 0.Method_Txt_Validate0 (CInt(&H1D), var_90)
  loc_15F2149:         If (var_90.Text = vbNullString) Then
  loc_15F214E:           arg_10 = &HFF
  loc_15F2151:         End If
  loc_15F2154:       Else
  loc_15F215C:         If Not (var_86 = CInt(&H16)) Then
  loc_15F2167:           If (var_86 = CInt(&H14)) Then
  loc_15F216A:           End If
  loc_15F2174:           Set var_8C = Me.Txt
  loc_15F217A:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F219A:           Set var_E4 = Me.Txt
  loc_15F21A0:           Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_15F21A8:           var_100.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_15F21BE:         Else
  loc_15F21C6:           If (var_86 = CInt(5)) Then
  loc_15F21D6:             Set var_8C = Me.Txt
  loc_15F21DC:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F21FB:             If (var_90.Text <> vbNullString) Then
  loc_15F2241:               If CBool(CVar(global_148) <> Me.Fields.Item("Code").Value) Then
  loc_15F2244:                 Call Proc_43_59_11009D8(var_B0)
  loc_15F2249:               End If
  loc_15F2284:               Set var_E0 = Me.Txt
  loc_15F228A:               Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F2292:               var_E4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15F22E3:               Set var_E0 = Me.Txt
  loc_15F22E9:               Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F22F1:               var_E4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15F2321:               var_90 = Me.Fields.Item("PayType")
  loc_15F2332:               var_D4 = Proc_6_38_E69628(CVar(var_90))
  loc_15F2338:               global_140 = var_D4
  loc_15F2350:               If (global_108 = "ADRES") Then
  loc_15F235E:                 Set var_8C = Me.Txt
  loc_15F2364:                 Call 0.Method_Txt_Validate0 (CInt(&H17))
  loc_15F238D:                 If (Trim(CVar(var_90)) = vbNullString) Then
  loc_15F239B:                   Set var_8C = Me.Txt
  loc_15F23A1:                   Call 0.Method_Txt_Validate0 (CInt(&H1D), var_90)
  loc_15F23DB:                   var_160 = "Adv. Agst. Res.No. " & Trim(Mid(CVar(var_90), &HE, 8)) & " Rect.No. " 
  loc_15F23ED:                   Set var_E0 = Me.Txt
  loc_15F23F3:                   Call 0.Method_Txt_Validate0 (CInt(1), var_E4, var_D4)
  loc_15F23FB:                   var_160 = var_E4.Text
  loc_15F2421:                   Set var_100 = Me.Txt
  loc_15F2427:                   Call 0.Method_Txt_Validate0 (CInt(2), var_11C)
  loc_15F244D:                   Set var_128 = Me.Txt
  loc_15F2453:                   Call 0.Method_Txt_Validate0 (CInt(&H17), var_12C)
  loc_15F245B:                   var_12C.Text = CStr(var_90 & CVar(var_D4) & " Dt. " & CVar(var_11C.Text))
  loc_15F248D:                 End If
  loc_15F2490:               Else
  loc_15F249B:                 If (global_108 = "ARRES") Then
  loc_15F24A9:                   Set var_8C = Me.Txt
  loc_15F24AF:                   Call 0.Method_Txt_Validate0 (CInt(&H17))
  loc_15F24D8:                   If (Trim(CVar(var_90)) = vbNullString) Then
  loc_15F24E6:                     Set var_8C = Me.Txt
  loc_15F24EC:                     Call 0.Method_Txt_Validate0 (CInt(&H1D), var_90)
  loc_15F2526:                     var_160 = "Ref. Agst. Res.No. " & Trim(Mid(CVar(var_90), &HE, 8)) & " Rect.No. " 
  loc_15F2538:                     Set var_E0 = Me.Txt
  loc_15F253E:                     Call 0.Method_Txt_Validate0 (CInt(1), var_E4, var_D4)
  loc_15F2546:                     var_160 = var_E4.Text
  loc_15F256C:                     Set var_100 = Me.Txt
  loc_15F2572:                     Call 0.Method_Txt_Validate0 (CInt(2), var_11C)
  loc_15F2598:                     Set var_128 = Me.Txt
  loc_15F259E:                     Call 0.Method_Txt_Validate0 (CInt(&H17), var_12C)
  loc_15F25A6:                     var_12C.Text = CStr(var_90 & CVar(var_D4) & " Dt. " & CVar(var_11C.Text))
  loc_15F25D8:                   End If
  loc_15F25D8:                 End If
  loc_15F25D8:               End If
  loc_15F25E4:               (0).Visible = 
  loc_15F25F8:               (0).Visible = 
  loc_15F260C:               (0).Visible = 
  loc_15F262E:               var_90 = Me.Fields.Item("PayType")
  loc_15F2643:               Call Proc_43_57_1287838(Proc_6_38_E69628(CVar(var_90)))
  loc_15F2651:             End If
  loc_15F2654:           Else
  loc_15F265C:             If (var_86 = CInt(&H11)) Then
  loc_15F26AD:               Set var_8C = Me.Txt
  loc_15F26B3:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F26D3:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_15F26E3:                 Set var_8C = Me.Txt
  loc_15F26E9:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F26F1:                 var_90.Tag = vbNullString
  loc_15F26FD:                 Exit Sub
  loc_15F26FE:               End If
  loc_15F2739:               Set var_E0 = Me.Txt
  loc_15F273F:               Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F2747:               var_E4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15F277A:               var_90 = Me.Fields.Item("Code")
  loc_15F2798:               Set var_E0 = Me.Txt
  loc_15F279E:               Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F27A6:               var_E4.Tag = CStr(var_90.Value)
  loc_15F27BF:             Else
  loc_15F27C7:               If Not (var_86 = CInt(&H11)) Then
  loc_15F27D2:                 If (var_86 = CInt(6)) Then
  loc_15F27D5:                 End If
  loc_15F27DF:                 Set var_8C = Me.Txt
  loc_15F27E5:                 Call 0.Method_Txt_Validate0 (Cancel)
  loc_15F27F1:                 Proc_6_40_EA5C80(CVar(var_90))
  loc_15F2808:                 var_D0 = "0.00"
  loc_15F2811:                 var_B0 = CVar(var_90) 'Double
  loc_15F2818:                 var_140 = Format(var_B0, var_D0)
  loc_15F2820:                 var_D4 = CStr(var_140)
  loc_15F282E:                 Set var_E0 = Me.Txt
  loc_15F2834:                 Call 0.Method_Txt_Validate0 (Cancel, var_E4, var_D4)
  loc_15F283C:                 var_E4.Text = 1
  loc_15F285B:               Else
  loc_15F2863:                 If (var_86 = CInt(&H1C)) Then
  loc_15F28B4:                   Set var_8C = Me.Txt
  loc_15F28BA:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_D4)
  loc_15F28C2:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_15F28DA:                   If (1 Or (var_D4 = vbNullString)) Then
  loc_15F28EA:                     Set var_8C = Me.Txt
  loc_15F28F0:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F28F8:                     var_90.Text = vbNullString
  loc_15F2911:                     Set var_8C = Me.Txt
  loc_15F2917:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F291F:                     var_90.Tag = vbNullString
  loc_15F292E:                   Else
  loc_15F2969:                     Set var_E0 = Me.Txt
  loc_15F296F:                     Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F2977:                     var_E4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15F29BB:                     var_D4 = CStr(Me.Fields.Item("Code").Value)
  loc_15F29C8:                     Set var_E0 = Me.Txt
  loc_15F29CE:                     Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F29D6:                     var_E4.Tag = var_D4
  loc_15F29EC:                   End If
  loc_15F29EC:                 End If
  loc_15F29EC:               End If
  loc_15F29EC:             End If
  loc_15F29EC:           End If
  loc_15F29EC:         End If
  loc_15F29EC:       End If
  loc_15F29EC:     End If
  loc_15F29EC:   End If
  loc_15F29EC: End If
  loc_15F29EC: Exit Sub
  loc_15F29ED: ' Referenced from: 15F164C
  loc_15F29F5: Set var_8C = Err()
  loc_15F29FB: Call 0.Method_arg_2C (var_D4)
  loc_15F2A14: MsgBox(CVar(var_D4), &H10, var_B0, var_D0, var_140)
  loc_15F2A27: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F3A474
  'Data Table: 51E0D0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3A36B: (False).Visible = 
  loc_F3A38A: If (Me.RecordCount > 0) Then
  loc_F3A3C9:   Set var_B4 = Me.Txt
  loc_F3A3CF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3A3D7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3A40A:   var_B0 = Me.Fields.Item("Code")
  loc_F3A429:   Set var_B4 = Me.Txt
  loc_F3A42F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3A437:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3A44D: End If
  loc_F3A458: Set var_A8 = Me.Txt
  loc_F3A45E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(3))
  loc_F3A466: var_B0.SetFocus
  loc_F3A472: Exit Sub
  loc_F3A473: var_B0 = 
End Sub

Private Sub DGEmp_UnknownEvent_9 'F472B4
  'Data Table: 51E0D0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F471AB: (False).Visible = 
  loc_F471CA: If (Me.RecordCount > 0) Then
  loc_F47209:   Set var_B4 = Me.Txt
  loc_F4720F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F47217:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4724A:   var_B0 = Me.Fields.Item("Code")
  loc_F47269:   Set var_B4 = Me.Txt
  loc_F4726F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F47277:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4728D: End If
  loc_F47298: Set var_A8 = Me.Txt
  loc_F4729E: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18))
  loc_F472A6: var_B0.SetFocus
  loc_F472B2: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F8B830
  'Data Table: 51E0D0
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F8B6E3: (False).Visible = 
  loc_F8B6F1: var_AC = global_100
  loc_F8B6FD: If Not (var_AC = 1) Then
  loc_F8B709:   If Not (var_AC = 2) Then
  loc_F8B715:     If Not (var_AC = 3) Then
  loc_F8B721:       If Not (var_AC = 6) Then
  loc_F8B72D:         If (var_AC = 4) Then
  loc_F8B730:         End If
  loc_F8B730:       End If
  loc_F8B730:     End If
  loc_F8B730:   End If
  loc_F8B747:   If (Me.RecordCount > 0) Then
  loc_F8B786:     Set var_B8 = Me.Txt
  loc_F8B78C:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(5), var_BC)
  loc_F8B794:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F8B7C7:     var_B4 = Me.Fields.Item("Code")
  loc_F8B7E6:     Set var_B8 = Me.Txt
  loc_F8B7EC:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(5), var_BC)
  loc_F8B7F4:     var_BC.Tag = CStr(var_B4.Value)
  loc_F8B80A:   End If
  loc_F8B815:   Set var_A8 = Me.Txt
  loc_F8B81B:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(5), var_B4)
  loc_F8B823:   var_B4.SetFocus
  loc_F8B82F: End If
  loc_F8B82F: Exit Sub
End Sub

Private Sub Form_Load() '13A4350
  'Data Table: 51E0D0
  Dim var_90 As Long
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_B8 As String
  Dim var_CC As String
  Dim unk_51E0E0 As Connection15
  Dim var_D0 As Variant
  Dim var_D8 As Variant
  Dim var_DC As TextBox
  Dim var_E4 As TextBox
  Dim var_8C As Recordset15
  Dim var_F0 As Long
  Dim var_110 As Variant
  Dim var_120 As Variant
  loc_13A3A50: On Error Goto loc_13A430A
  loc_13A3A59: var_90 = global_100
  loc_13A3A65: If (var_90 = 1) Then
  loc_13A3A70:   Call 0.Method_arg_7C (CDbl(1450))
  loc_13A3A7D:   Call 0.Method_arg_74 (CDbl(1625))
  loc_13A3A8A:   Call 0.Method_MeC (CDbl(9200))
  loc_13A3A97:   Call 0.Method_Me4 (CDbl(17000))
  loc_13A3AAB:   var_90(CDbl(13500)).Left = 
  loc_13A3AC2:   (CDbl(7800)).Top = 
  loc_13A3AD9:   (CDbl(8160)).Top = 
  loc_13A3AF0:   (CDbl(13500)).Left = 
  loc_13A3AFF:   Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_13A3B11:   Set var_94 = (CVar(CLng(MemVar_1F951B8)))
  loc_13A3B2D:   Txt.DispID_12(CLng(MemVar_1F951B8)).BackColor = 
  loc_13A3B43:   (CLng(MemVar_1F951B8)).BackColor = 
  loc_13A3B59:   (CLng(MemVar_1F951B8)).BackColor = 
  loc_13A3B6F:   (CLng(MemVar_1F951B8)).BackColor = 
  loc_13A3B85:   (CLng(MemVar_1F951B8)).BackColor = 
  loc_13A3B9B:   (CLng(MemVar_1F951B8)).BackColor = 
  loc_13A3BB1:   Me.FrTxnNo.BackColor = CLng(MemVar_1F951B8)
  loc_13A3BB9: End If
  loc_13A3BC9: ("AEDP").Tag = 
  loc_13A3BD7: Call 0.Method_arg_50 (var_B8)
  loc_13A3BDF: var_C8 = CVar(var_B8) 'String
  loc_13A3C09: global_108 = frmAdvanceDepDialog.AdvType
  loc_13A3C2B: var_CC = "SELECT Code,Name,PayType FROM RevMast Where PayType<>'Hold' and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and FieldType='P' ORDER BY Name"
  loc_13A3C34: unk_51E0E0.Execute var_CC, var_C8, -1
  loc_13A3C63: CVarUnk
  loc_13A3C68: VerifyVarObj
  loc_13A3C6E: Set var_94 = var_94((var_C8))
  loc_13A3C74: LateIdStAd
  loc_13A3C90: Set var_94 = Me.Txt
  loc_13A3C96: Call 0.Method_Form_Load0 (CInt(5), var_D0, var_D4)
  loc_13A3C9E: var_94 = var_D0.Left
  loc_13A3CB5: FrTxnNo.DispID_68030007(CVar(var_D4)).Left = 
  loc_13A3CD1: Set var_D8 = Me.Txt
  loc_13A3CD7: Call 0.Method_Form_Load0 (CInt(5), var_DC)
  loc_13A3CDF: var_E0 = var_DC.Height
  loc_13A3CF8: Call 0.Method_Form_Load0 (CInt(5), var_D0)
  loc_13A3D00: var_D4 = var_D0.Top
  loc_13A3D0C: var_A4 = CVar((var_D4 + var_E0)) 'Single
  loc_13A3D15: Set var_E4 = (CVar(var_D4))
  loc_13A3D1B: var_E4.Top = 
  loc_13A3D51: unk_51E0E0.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_C8, -1
  loc_13A3D80: CVarUnk
  loc_13A3D85: VerifyVarObj
  loc_13A3D91: LateIdStAd
  loc_13A3DC3: unk_51E0E0.Execute "SELECT Code,Name FROM Employee where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_C8, -1
  loc_13A3DF2: CVarUnk
  loc_13A3DF7: VerifyVarObj
  loc_13A3DFD: Set var_94 = var_94(var_94(Me.Txt))
  loc_13A3E03: LateIdStAd
  loc_13A3E1F: Set var_D0 = Me.Txt
  loc_13A3E25: Call 0.Method_Form_Load0 (CInt(3), var_D8, var_E0)
  loc_13A3E2D: var_94 = var_D8.Top
  loc_13A3E40: Set var_DC = Me.Txt
  loc_13A3E46: Call 0.Method_Form_Load0 (CInt(3), var_E4)
  loc_13A3E5A: Set var_94 = var_94(var_D4)
  loc_13A3E60:  = var_94.Top
  loc_13A3E74: var_A4 = CVar((((var_D4 + var_E0) + var_E4.Height) + CDbl(&H1E))) 'Single
  loc_13A3E83: (CVar(var_D4)).Top = 
  loc_13A3EA3: If (global_100 = 7) Then
  loc_13A3EBA:   var_B8 = "SELECT GF.Code, GF.Name + ' (' + cast(RO.FolioNo As Varchar) + ')' As Name , RO.FolioNo AS BookNo, RO.Vtype AS BookType, GF.CreditCardNo, GF.ExpiresOn, GF.CreditLimit, RO.ChkInDate AS BookingDate, RO.ChkInDate AS ArrDate, RO.ChkInTime AS Arrtime, 0 AS NoDays, 0 AS DepositeReq, 0 AS RoomRate, RO.RoomType, RO.RoomCat, RO.RoomNo, RO.DepDate, RO.DocId, RO.Vprefix FROM RoomOcc AS RO LEFT JOIN GuestProf AS GF ON RO.GuestProf = GF.Code Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_13A3ECA:   unk_51E0E0.Execute "SELECT Code,Name FROM Employee where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and ChkOutDate is null", var_C8, -1
  loc_13A3EDB:   Set global_56 = var_94
  loc_13A3F00:   Set var_94 = var_D8(2)
  loc_13A3F11:   Set var_D0 = Txt.DispID_69
  loc_13A3F17:   var_94 = var_D0.Item("Folio No.")
  loc_13A3F1F:   var_D8.Caption = 
  loc_13A3F33: Else
  loc_13A3F47:   var_B8 = "SELECT GuestProf.Code, GuestProf.Name + ' (' + cast(Booking.BookNo As Varchar) + ')' As Name, Booking.BookNo,Booking.Vtype as BookType, GuestProf.CreditCardNo, GuestProf.ExpiresOn, GuestProf.CreditLimit, Booking.VDate as BookingDate, Booking.ArrDate,Booking.Arrtime, Booking.NoDays, Booking.DepositeReq, Booking.RoomRate,Booking.RoomType,Booking.RoomCat,Booking.Roomno,Booking.DepDate,Booking.DocId,Booking.Vprefix FROM GuestProf right Join Booking on Booking.GuestProf=GuestProf.COde where (Booking.LOGSITE_CODE='" & MemVar_1F95078
  loc_13A3F4E:   var_CC = "SELECT Code,Name FROM Employee where (LOGSITE_CODE='" & MemVar_1F95078 & "' or Booking.LOGSITE_CODE='HO') and booking.docid not in (select bookingdocid from guestfolio) And isnull(Booking.Cancel,'')<>'Y' ORDER BY Name"
  loc_13A3F57:   unk_51E0E0.Execute var_CC, var_C8, -1
  loc_13A3F68:   Set global_56 = var_94
  loc_13A3F7D: End If
  loc_13A3F86: CVarUnk
  loc_13A3F8B: VerifyVarObj
  loc_13A3F91: Set var_94 = var_94(global_56)
  loc_13A3F97: LateIdStAd
  loc_13A3FB3: Set var_D8 = Me.Txt
  loc_13A3FB9: Call 0.Method_Form_Load0 (CInt(3), var_DC)
  loc_13A3FDA: Call 0.Method_Form_Load0 (CInt(3), var_D0)
  loc_13A3FEE: var_A4 = CVar((var_D0.Top + var_DC.Height)) 'Single
  loc_13A3FFD: Me.Txt(2).Top = 
  loc_13A4023: Call 0.Method_Form_Load0 (CInt(3), var_D0)
  loc_13A403C: Set var_D8 = (CVar(var_D0.Left))
  loc_13A4042: var_D8.Left = 
  loc_13A4064: var_B8 = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.FolioNO From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (RoomOcc.LOGSITE_CODE='" & MemVar_1F95078
  loc_13A406B: var_CC = "SELECT Code,Name FROM Employee where (LOGSITE_CODE='" & MemVar_1F95078 & "' or RoomOcc.LOGSITE_CODE='HO') and T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_13A4074: unk_51E0E0.Execute var_CC, var_C8, -1
  loc_13A40A3: CVarUnk
  loc_13A40A8: VerifyVarObj
  loc_13A40B4: LateIdStAd
  loc_13A40DD: var_CC = "Select SubCode as Code,Name,CompanyType From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_13A40E6: unk_51E0E0.Execute var_CC, var_C8, -1
  loc_13A4115: CVarUnk
  loc_13A411A: VerifyVarObj
  loc_13A4126: LateIdStAd
  loc_13A4158: unk_51E0E0.Execute "Select NCUR,CreditCardInfoMandatory from enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_C8, -1
  loc_13A4163: Set var_8C = var_94(var_94(Me.Txt))
  loc_13A4182: var_94 = var_8C.Fields
  loc_13A4192: var_C8 = CVar(var_94.Item("CreditCardInfoMandatory")) 'Address
  loc_13A41AC: If (Proc_6_38_E69628(var_C8, var_94) = "Y") Then
  loc_13A41B5:   global_152 = "Y"
  loc_13A41B9: End If
  loc_13A41BF: var_F0 = global_100
  loc_13A41CB: If (var_F0 = 1) Then
  loc_13A41D8:   If (CDbl(MemVar_1F950B8) = CDbl("1")) Then
  loc_13A41F6:     var_CC = "SELECT Distinct RefDocid as SearchCode,Site_Code,LogSite_Code FROM PayCharge Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And VType In ('ARRES','ADRES')"
  loc_13A41FF:     unk_51E0E0.Execute var_CC, var_C8, -1
  loc_13A4210:     Set global_52 = var_94
  loc_13A4228:   Else
  loc_13A4243:     var_110 = CVar("SELECT Distinct RefDocid as SearchCode,Site_Code,LogSite_Code FROM PayCharge Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And RefDocId Not In (Select Distinct Bookingdocid from guestfolio) And VType In ('ARRES','ADRES') And vdate=") 'String
  loc_13A4255:     var_94 = var_8C.Fields
  loc_13A426C:     Proc_6_7_F26918(var_100, CVar(var_94.Item("Ncur")), var_110, var_150, -1)
  loc_13A4274:     var_120 = var_D8 & var_100 
  loc_13A428B:     unk_51E0E0.Execute CStr(var_120 & vbNullString), var_94, var_F0
  loc_13A429C:     Set global_52 = var_D8
  loc_13A42BF:   End If
  loc_13A42BF: End If
  loc_13A42C4: Set var_8C = Nothing
  loc_13A42D3: Set var_94 = Me
  loc_13A42DC: var_B8 = "INI"
  loc_13A42EA: Call Proc_43_48_103DDF8(Proc_5_1_100EC1C(var_B8, var_94, global_52), var_94)
  loc_13A42F5: Call Proc_43_50_10A1874(var_94)
  loc_13A42FA: Call Proc_43_56_1272060()
  loc_13A42FF: Call Proc_43_49_F06214()
  loc_13A4304: Call Proc_43_60_DFCD3C()
  loc_13A4309: Exit Sub
  loc_13A430A: ' Referenced from: 13A3A50
  loc_13A4312: Set var_94 = Err()
  loc_13A4318: Call 0.Method_arg_2C (var_B8)
  loc_13A4339: MsgBox(CVar(var_B8), &H40, "Information", var_110, var_120)
  loc_13A434C: Exit Sub
  loc_13A434D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E839E0
  'Data Table: 51E0D0
  loc_E8397B: Set global_68 = Nothing
  loc_E8398D: Set global_52 = Nothing
  loc_E8399F: Set global_56 = Nothing
  loc_E839B1: Set global_60 = Nothing
  loc_E839C3: Set global_80 = Nothing
  loc_E839D5: Set global_64 = Nothing
  loc_E839DC: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'EDA6B8
  'Data Table: 51E0D0
  Dim Cancel As Integer
  loc_EDA62A: Set var_C8 = 1(1)
  loc_EDA647: Set var_E0 = ((CStr(Txt.DispID_41) <> vbNullString))
  loc_EDA673: If ( And (CStr(Txt.DispID_68030005) <> "Browse")) Then
  loc_EDA6A5:   If (MsgBox("Exit without Saving Transaction?", &H121, var_F0, var_104, var_114) = 2) Then
  loc_EDA6AA:     Cancel = 1
  loc_EDA6AD:     Exit Sub
  loc_EDA6B1:   Else
  loc_EDA6B3:     Cancel = 0
  loc_EDA6B6:   End If
  loc_EDA6B6: End If
  loc_EDA6B6: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EDCCE0
  'Data Table: 51E0D0
  Dim var_B4 As TextBox
  loc_EDCC50: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_EDCC84:   Set var_B4 = (( And (CBool(((CBool(().Visible) = 0)).Visible) = 0)))
  loc_EDCCA9:   If ( And (CBool(var_B4.Visible) = 0)) Then
  loc_EDCCB9:     Me.var_B4.Unload Me
  loc_EDCCC1:     Exit Sub
  loc_EDCCC2:   End If
  loc_EDCCC2: End If
  loc_EDCCD6: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_EDCCDE: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F47994
  'Data Table: 51E0D0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4788B: (False).Visible = 
  loc_F478AA: If (Me.RecordCount > 0) Then
  loc_F478E9:   Set var_B4 = Me.Txt
  loc_F478EF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F478F7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4792A:   var_B0 = Me.Fields.Item("Name")
  loc_F47949:   Set var_B4 = Me.Txt
  loc_F4794F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F47957:   var_B8.Text = CStr(var_B0.Value)
  loc_F4796D: End If
  loc_F47978: Set var_A8 = Me.Txt
  loc_F4797E: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(&H11))
  loc_F47986: var_B0.SetFocus
  loc_F47992: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0EA70
  'Data Table: 51E0D0
  loc_E0EA58: Call Proc_43_54_F6DA2C()
  loc_E0EA5D: Call Proc_43_61_14EF980()
  loc_E0EA68: Call Proc_43_57_1287838(global_140)
  loc_E0EA6D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '10BAD9C
  'Data Table: 51E0D0
  Dim var_88 As String
  Dim var_94 As TextBox
  Dim var_98 As Long
  Dim var_B8 As String
  Dim var_D0 As Long
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_E4 As TextBox
  loc_10BAAC8: On Error Goto loc_10BAD95
  loc_10BAAEE: Call Proc_43_48_103DDF8(Proc_5_1_100EC1C("ADD", Me))
  loc_10BAAF9: Call Proc_43_59_11009D8(global_52)
  loc_10BAB03: var_88 = CStr(MemVar_1F950EC)
  loc_10BAB11: Set var_8C = Me.Txt
  loc_10BAB17: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_10BAB1F: var_94.Text = var_88
  loc_10BAB34: var_98 = global_100
  loc_10BAB40: If (var_98 = 1) Then
  loc_10BAB49:   Call Proc_43_55_115847C(MemVar_1F95044, var_88)
  loc_10BAB63:   var_B8 = "HH:mm"
  loc_10BAB76:   var_88 = Format$(Time, var_B8)
  loc_10BAB84:   Set var_8C = Me.Txt
  loc_10BAB8A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H10), var_94, var_88)
  loc_10BAB92:   var_94.Text = 1
  loc_10BABBB:   var_D0 = OpenMode
  loc_10BABC7:   If (var_D0 = 1) Then
  loc_10BABD0:     Call 0.Method_arg_1C0 (var_88, var_D0, 0)
  loc_10BABE0:     If (var_88 = "RES") Then
  loc_10BABE6:       var_88 = pDocId
  loc_10BABF9:       Set var_8C = Me.Txt
  loc_10BABFF:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1D), var_94, var_88)
  loc_10BAC2D:       If (Me.RecordCount > 0) Then
  loc_10BAC36:         Me.MoveFirst
  loc_10BAC5A:         Set var_8C = Me.Txt
  loc_10BAC60:         Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1D), var_94, var_88, "Docid ='")
  loc_10BAC68:         0 = 1
  loc_10BAC81:         Me.Find 1 & var_88 & "'", var_B8, var_98
  loc_10BACBF:         If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_10BACDC:           var_94 = Me.Fields.Item("Name")
  loc_10BACFB:           Set var_E0 = Me.Txt
  loc_10BAD01:           Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_E4)
  loc_10BAD09:           var_E4.Text = Proc_6_38_E69628(CVar(var_94))
  loc_10BAD29:           Call Txt_Validate(CInt(3))
  loc_10BAD3B:           Set var_8C = Me.Txt
  loc_10BAD41:           Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_94)
  loc_10BAD49:           var_94.Enabled = False
  loc_10BAD55:         End If
  loc_10BAD55:       End If
  loc_10BAD55:     End If
  loc_10BAD58:   Else
  loc_10BAD61:     If (var_D0 = 2) Then
  loc_10BAD6A:       Call 0.Method_arg_1C4 (vbNullString)
  loc_10BAD7A:       Set var_8C = Me.Txt
  loc_10BAD80:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H19), var_94)
  loc_10BAD88:       var_94.SetFocus
  loc_10BAD94:     End If
  loc_10BAD94:   End If
  loc_10BAD94: End If
  loc_10BAD94: Exit Sub
  loc_10BAD95: ' Referenced from: 10BAAC8
  loc_10BAD95: Proc_6_60_E63754(&HFF)
  loc_10BAD9A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBF67C
  'Data Table: 51E0D0
  loc_EBF5E4: On Error Goto loc_EBF674
  loc_EBF61E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBF62D:   Set var_110 = Me
  loc_EBF644:   Call Proc_43_48_103DDF8(Proc_5_1_100EC1C("INI", var_110))
  loc_EBF64F:   Call Proc_43_54_F6DA2C(global_52)
  loc_EBF654:   Call Proc_43_49_F06214()
  loc_EBF65C: Else
  loc_EBF662:   Call 0.Method_arg_1E8 (var_110)
  loc_EBF66A:   Call var_110.SetFocus
  loc_EBF673: End If
  loc_EBF673: Exit Sub
  loc_EBF674: ' Referenced from: EBF5E4
  loc_EBF674: Proc_6_60_E63754()
  loc_EBF679: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12018B8
  'Data Table: 51E0D0
  Dim var_9C As Variant
  Dim var_E0 As Variant
  Dim var_A8 As String
  Dim unk_51E0E0 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_12C As String
  Dim var_C8 As Variant
  loc_1201440: On Error Goto loc_120186A
  loc_1201451: Set var_98 = Me.Txt
  loc_1201457: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C)
  loc_120145F: var_A0 = var_9C.Text
  loc_1201476: If (var_A0 = vbNullString) Then
  loc_1201479:   Exit Sub
  loc_120147A: End If
  loc_1201480: var_E0 = 0
  loc_12014A4: var_A8 = "Select Max(NCUR) from enviro where logsite_code='" & MemVar_1F95078 & "'"
  loc_12014AD: unk_51E0E0.Execute var_A8, var_C8, -1
  loc_12014B5: var_CC = var_CC.Fields
  loc_12014BD: var_E0 = var_D0.Item(var_D0)
  loc_12014C5: var_E4 = var_E4.Value
  loc_12014DE: Set var_98 = Me.Txt
  loc_12014E4: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(2), var_9C, var_A0)
  loc_12014EC: (MemVar_1F950B8 <> 1) = var_9C.Text
  loc_120151A: If (var_F4 And (CDate(var_A0) <> CDate(var_F4))) Then
  loc_1201523:   Call 0.Method_arg_50 (var_A0)
  loc_1201544:   MsgBox("U can't delete previous entry.", &H10, CVar(var_A0), var_104, var_124)
  loc_1201554:   Exit Sub
  loc_1201555: End If
  loc_1201572: var_9C = Me.Fields.Item("SearchCode")
  loc_1201587: var_12C = "Checked In"
  loc_12015A9: var_A0 = "GuestFolio"
  loc_12015CF: If (Proc_6_108_101061C(MemVar_1F95044, var_A0, "BookingDocId", CStr(var_9C.Value)) = 0) Then
  loc_12015D2:   Exit Sub
  loc_12015D3: End If
  loc_120160A: If (MsgBox("Delete Record?", &H24, "Confirmation", var_104, var_124) = 6) Then
  loc_1201616:   unk_51E0E0.BeginTrans var_128
  loc_1201624:   var_C8 = Me.Bookmark
  loc_120162C:   var_94 = var_C8 'Variant
  loc_120164E:   Set var_98 = Me.Txt
  loc_1201654:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C, var_A0, "Delete From PayCharge Where Docid='", var_C8)
  loc_120165C:   -1 = var_9C.Text
  loc_120166C:   var_12C = var_E4 & var_A0 & "' And VNo="
  loc_120167D:   Set var_CC = Me.Txt
  loc_1201683:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_D0, var_A8, var_12C)
  loc_120168B:   0 = var_D0.Text
  loc_120169D:   unk_51E0E0.Execute var_12C & var_A8, 0, 
  loc_12016CD:   Set var_98 = Me.Txt
  loc_12016D3:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C)
  loc_12016EE:   Set var_CC = Me.Txt
  loc_12016F4:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_D0)
  loc_120170B:   var_C8 = ().Tag
  loc_1201719:   var_174 = 0
  loc_120172C:   var_16C = 0
  loc_1201737:   var_168 = 0
  loc_120174A:   var_160 = 0
  loc_1201763:   var_154 = "SNo"
  loc_120179C:   var_A0 = "PayCharge"
  loc_12017A5:   Proc_154_5_10E3BD4(MemVar_1F95044, var_A0, "Docid", &HC8, var_9C.Text, "VNo", &HC8, var_D0.Text)
  loc_12017D9:   unk_51E0E0.CommitTrans
  loc_12017E9:   Me.Requery -1
  loc_1201809:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1201816:     Me.Bookmark = var_94
  loc_120181E:   Else
  loc_1201832:     If (Me.EOF = 0) Then
  loc_120183B:       Me.MoveLast
  loc_1201840:     End If
  loc_1201840:   End If
  loc_1201840:   Call Proc_43_51_17ABBB8(var_154, &HC8, CStr(var_C8), var_160)
  loc_1201861:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_1201869: End If
  loc_1201869: Exit Sub
  loc_120186A: ' Referenced from: 1201440
  loc_1201870: unk_51E0E0.RollbackTrans
  loc_120187D: Set var_98 = Err()
  loc_1201883: Call 0.Method_arg_2C (var_A0, 0, var_168)
  loc_12018A4: MsgBox(CVar(var_A0), &H30, " Deletion Error ", var_104, var_124)
  loc_12018B7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '102B018
  'Data Table: 51E0D0
  Dim var_8C As Variant
  Dim var_D0 As Integer
  Dim unk_51E0E0 As Connection15
  Dim var_BC As Recordset15
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  Dim var_E4 As Variant
  Dim Me As Variant
  Dim var_88 As Fields15
  loc_102ADFC: On Error Goto loc_102B012
  loc_102AE0D: Set var_88 = Me.Txt
  loc_102AE13: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_8C)
  loc_102AE1B: var_90 = var_8C.Text
  loc_102AE32: If (var_90 = vbNullString) Then
  loc_102AE35:   Exit Sub
  loc_102AE36: End If
  loc_102AE3C: var_D0 = 0
  loc_102AE69: unk_51E0E0.Execute "Select Max(NCUR) from enviro where logsite_code='" & MemVar_1F95078 & "'", var_B8, -1
  loc_102AE71: var_BC = var_BC.Fields
  loc_102AE79: var_D0 = var_C0.Item(var_C0)
  loc_102AE81: var_D4 = var_D4.Value
  loc_102AE9A: Set var_88 = Me.Txt
  loc_102AEA0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_8C, var_90)
  loc_102AEA8: (MemVar_1F950B8 <> 1) = var_8C.Text
  loc_102AED6: If (var_E4 And (CDate(var_90) <> CDate(var_E4))) Then
  loc_102AEDF:   Call 0.Method_arg_50 (var_90)
  loc_102AF00:   MsgBox("U can't edit previous entry.", &H10, CVar(var_90), var_F4, var_114)
  loc_102AF10:   Exit Sub
  loc_102AF11: End If
  loc_102AF2E: var_8C = Me.Fields.Item("SearchCode")
  loc_102AF43: var_11C = "Checked In"
  loc_102AF8B: If (Proc_6_108_101061C(MemVar_1F95044, "GuestFolio", "BookingDocId", CStr(var_8C.Value)) = 0) Then
  loc_102AF8E:   Exit Sub
  loc_102AF8F: End If
  loc_102AFB2: Call Proc_43_48_103DDF8(Proc_5_1_100EC1C("EDIT", Me, global_52), 0)
  loc_102AFCA: Set var_88 = Me.Txt
  loc_102AFD0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H19), var_8C, 0)
  loc_102AFD8: var_8C.Enabled = var_11C
  loc_102AFE9: global_144 = &HFF
  loc_102AFF7: Set var_88 = Me.Txt
  loc_102AFFD: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_8C)
  loc_102B005: var_8C.SetFocus
  loc_102B011: Exit Sub
  loc_102B012: ' Referenced from: 102ADFC
  loc_102B012: Proc_6_60_E63754(global_144)
  loc_102B017: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1826C
  'Data Table: 51E0D0
  loc_E18261: Me.Global.Unload Me
  loc_E18269: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'FAEED8
  'Data Table: 51E0D0
  Dim var_8C As String
  Dim unk_51E0E0 As Connection15
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim MemVar_1F950E4 As String
  loc_FAED50: On Error Goto loc_FAEE73
  loc_FAED67: var_8C = "Select NCUR from enviro where LogSite_Code='" & MemVar_1F95078
  loc_FAED77: unk_51E0E0.Execute var_8C & "'", var_B0, -1
  loc_FAED82: Set var_88 = var_B4
  loc_FAED9B: var_B8 = Me.RecordCount
  loc_FAEDA9: If (var_B8 <= 0) Then
  loc_FAEDB7:   var_D8 = "Information"
  loc_FAEDCD:   MsgBox("Records Not Present For Searching.", &H40, var_D8, var_F8, var_118)
  loc_FAEDDD:   Exit Sub
  loc_FAEDDE: End If
  loc_FAEDE8: If (CDbl(MemVar_1F950B8) = CDbl("1")) Then
  loc_FAEDEE:   MemVar_1F950E4 = "SELECT Booking.DocId as SearchCode, GuestProf.Name, Booking.BookNo, Booking.VDate as BookingDate, Booking.ArrDate,Booking.Arrtime, Booking.NoDays, Booking.DepositeReq, Booking.RoomRate,Booking.RoomType,Booking.RoomCat,Booking.Roomno,Booking.DepDate FROM GuestProf right Join Booking on Booking.GuestProf=GuestProf.COde where booking.docid  in (select Distinct RefDocid from PayCharge Where VType In ('ARRES','ADRES')) ORDER BY Name"
  loc_FAEDF5: Else
  loc_FAEDF5:   var_C8 = "SELECT Booking.DocId as SearchCode, GuestProf.Name, Booking.BookNo, Booking.VDate as BookingDate, Booking.ArrDate,Booking.Arrtime, Booking.NoDays, Booking.DepositeReq, Booking.RoomRate,Booking.RoomType,Booking.RoomCat,Booking.Roomno,Booking.DepDate FROM GuestProf right Join Booking on Booking.GuestProf=GuestProf.COde where booking.docid not in (select Distinct bookingdocid from guestfolio) and booking.docid  in (select Distinct RefDocid from PayCharge where VType In ('ARRES','ADRES') And Vdate="
  loc_FAEE20:   Proc_6_7_F26918(var_D8, CVar(var_88.Fields.Item("Ncur")))
  loc_FAEE28:   var_F8 = var_C8 & var_D8 
  loc_FAEE31:   var_118 = var_F8 & ") ORDER BY Name" 
  loc_FAEE36:   MemVar_1F950E4 = CStr(var_118)
  loc_FAEE48: End If
  loc_FAEE4E: MemVar_1F95120 = Me
  loc_FAEE65: Call 0.Method_arg_2B0 (1, var_C8)
  loc_FAEE6F: Set var_88 = Nothing
  loc_FAEE72: Exit Sub
  loc_FAEE73: ' Referenced from: FAED50
  loc_FAEE7B: Set var_B4 = Err()
  loc_FAEE81: Call 0.Method_arg_1C (var_B8, MemVar_1F950E4)
  loc_FAEE92: If (var_B8 <> 0) Then
  loc_FAEE9D:   Set var_B4 = Err()
  loc_FAEEA3:   Call 0.Method_arg_2C (var_8C)
  loc_FAEEC4:   MsgBox(CVar(var_8C), &H40, "Validation", var_F8, var_118)
  loc_FAEED7: End If
  loc_FAEED7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E34568
  'Data Table: 51E0D0
  loc_E34558: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34560: Call Proc_43_51_17ABBB8(global_52)
  loc_E34565: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E34688
  'Data Table: 51E0D0
  loc_E34678: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34680: Call Proc_43_51_17ABBB8(global_52)
  loc_E34685: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E34628
  'Data Table: 51E0D0
  loc_E34618: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34620: Call Proc_43_51_17ABBB8(global_52)
  loc_E34625: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E345C8
  'Data Table: 51E0D0
  loc_E345B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E345C0: Call Proc_43_51_17ABBB8(global_52)
  loc_E345C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E0066C
  'Data Table: 51E0D0
  loc_E00664: Call Proc_43_53_14B8688()
  loc_E00669: Exit Sub
  loc_E0066A: On Error Goto loc_E05EAF
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E637E4
  'Data Table: 51E0D0
  Dim Me As Recordset15
  loc_E6379B: Me.Requery -1
  loc_E637AB: Me.Requery -1
  loc_E637BB: Me.Requery -1
  loc_E637CB: Me.Requery -1
  loc_E637DB: Me.Requery -1
  loc_E637E0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1C4EA5C
  'Data Table: 51E0D0
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F8 As Variant
  Dim var_C0 As Variant
  Dim unk_51E0E0 As Connection15
  Dim var_134 As Long
  Dim var_140 As String
  Dim var_13C As Variant
  Dim var_8E As Integer
  Dim var_1170 As Double
  Dim var_24C As Variant
  Dim var_338 As TextBox
  Dim var_668 As TextBox
  Dim var_1178 As Double
  Dim var_1180 As Double
  Dim var_1188 As Double
  Dim var_C7C As Variant
  Dim var_D20 As Variant
  Dim var_E94 As Variant
  Dim var_1190 As Double
  Dim var_10FC As TextBox
  Dim var_150 As String
  Dim var_1F0 As String
  Dim var_1F4 As String
  Dim var_1F8 As String
  Dim var_26C As Variant
  Dim var_27C As Variant
  Dim var_35C As Variant
  Dim var_3F0 As Variant
  Dim var_484 As Variant
  Dim var_4A4 As Variant
  Dim var_538 As Variant
  Dim var_640 As Variant
  Dim var_68C As Variant
  Dim var_6AC As Variant
  Dim var_850 As Variant
  Dim var_870 As Variant
  Dim var_904 As Variant
  Dim var_924 As Variant
  Dim var_AC0 As Variant
  Dim var_B54 As Variant
  Dim var_DF0 As Variant
  Dim var_ED4 As Variant
  Dim var_FA8 As Variant
  Dim var_11AC As Double
  Dim var_3C0 As TextBox
  Dim var_10A0 As TextBox
  Dim var_BE8 As Variant
  Dim var_C8C As Variant
  Dim var_D30 As Variant
  Dim var_DC0 As Variant
  Dim var_F58 As Variant
  Dim var_98 As Double
  Dim var_11BC As Long
  Dim var_9C As Recordset15
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_138 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  loc_1C48998: On Error Goto loc_1C4EA08
  loc_1C489B1: Set var_E4 = 1(1)
  loc_1C489D3: If (CStr(Txt.DispID_41) = vbNullString) Then
  loc_1C489DC:   var_C0 = "Save Date"
  loc_1C489E1:   var_108 = var_C0
  loc_1C489F1:   var_F4 = "Please Fill Payment Details Before Saving.."
  loc_1C489F7:   MsgBox(var_F4, &H40, var_108, var_118, var_128)
  loc_1C48A07:   Exit Sub
  loc_1C48A08: End If
  loc_1C48A0C: var_86 = CByte(0) 'Byte
  loc_1C48A10: Call Proc_43_58_1582C64()
  loc_1C48A1E: unk_51E0E0.BeginTrans var_12C
  loc_1C48A27: var_86 = CByte(1) 'Byte
  loc_1C48A2F: Set var_E4 = ()
  loc_1C48A3D: var_F8 = CStr(Txt.DispID_68030005)
  loc_1C48A4E: If (var_F8 = "Add") Then
  loc_1C48A5A:   Set var_E4 = 1(var_9E)
  loc_1C48A76:   For var_130 =  To CInt((CLng(Txt.DispID_4) - 1)):  = var_130 'Integer
  loc_1C48A82:     var_134 = global_100
  loc_1C48A8E:     If (var_134 = 1) Then
  loc_1C48AA6:       Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C48AB7:       var_140 = CStr(Txt.DispID_41)
  loc_1C48AC8:       Set var_138 = Me.Txt
  loc_1C48ACE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_13C, var_F8)
  loc_1C48AD6:       var_140 = var_13C.Text
  loc_1C48AF3:       If (var_134 = var_F8) Then
  loc_1C48B01:         If (global_108 = "ADRES") Then
  loc_1C48B0A:           var_8E = (var_8E + 1)
  loc_1C48B19:           var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C48B22:           Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C48B49:           Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C48B62:           var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C48B7A:           Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C48BA1:           Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C48BB2:           var_24C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C48BB8:           Proc_6_7_F26918(var_25C, var_24C, Txt.DispID_41)
  loc_1C48BD2:           Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C48BF2:           Set var_334 = Me.Txt
  loc_1C48BF8:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41)
  loc_1C48C1A:           Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C48C41:           Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C48C68:           Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C48C8F:           Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C48CB6:           Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C48CD6:           Set var_664 = Me.Txt
  loc_1C48CDC:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41)
  loc_1C48CE4:           Txt.DispID_41 = var_668.Text
  loc_1C48CF1:           var_1178 = Val(var_66C)
  loc_1C48D09:           Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C48D22:           var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C48D3A:           Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C48D53:           var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C48D6B:           Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C48D92:           Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C48DB9:           Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C48DE0:           Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C48E07:           Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C48E2E:           Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C48E55:           Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C48E6C:           Proc_6_7_F26918(var_BE8, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C48E86:           Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&H24)))
  loc_1C48E97:           var_C7C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C48E9D:           Proc_6_17_EAAE40(var_C8C, var_C7C, Txt.DispID_41, var_1188, var_1180)
  loc_1C48EB7:           Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C48EC8:           var_D20 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C48ECE:           Proc_6_7_F26918(var_D30, var_D20, var_1178)
  loc_1C48ED6:           var_DB0 = Date
  loc_1C48EE1:           Proc_6_7_F26918(var_DC0, var_DB0, Txt.DispID_41)
  loc_1C48EFB:           Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&H19)))
  loc_1C48F0C:           var_E94 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C48F2C:           Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1A)))
  loc_1C48F4E:           Proc_6_39_E7D3A0(var_F58, Trim(CVar(CStr(Txt.DispID_41))))
  loc_1C48F68:           Set var_100C = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C48F8F:           Set var_10A0 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C48FA8:           var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C48FB9:           Set var_10F8 = Me.Txt
  loc_1C48FBF:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10FC, var_1100, var_1190)
  loc_1C48FC7:           Txt.DispID_41 = var_10FC.Text
  loc_1C48FE0:           var_F8 = CStr(var_F4)
  loc_1C48FE4:           var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,DbtChkIn,BatchNo,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C4903B:           var_1F8 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "'," & CStr(var_338.Tag) & ",'" & MemVar_1F95070 & "','" & CStr(var_118)
  loc_1C4906F:           var_35C = CVar(var_1F8 & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) 
  loc_1C49083:           var_3F0 = var_35C & "','" & CVar(CStr(var_3D0)) 
  loc_1C490A0:           var_4A4 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" 
  loc_1C490F0:           var_6AC = var_4A4 & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) & "'," & CVar(var_1178) & "," 
  loc_1C49149:           var_924 = var_6AC & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," & "'" & CVar(CStr(var_8E4)) & "','" 
  loc_1C49190:           var_B54 = var_924 & CVar(CStr(var_978)) & "',0,'" & CVar(CStr(var_A0C)) & "','" & CVar(CStr(var_AA0)) & "','" & CVar(CStr(var_B34)) 
  loc_1C491EC:           var_DF0 = var_B54 & "'," & var_BE8 & "," & var_C8C & "," & var_D30 & ",'" & CVar(MemVar_1F950C8) & "'," & var_DC0 & ",'A','" 
  loc_1C49229:           var_FA8 = var_DF0 & CVar(MemVar_1F95078) & "FOM','" & Trim(var_E94) & "'," & var_F58 & ",'" & CVar(MemVar_1F95078) 
  loc_1C4927B:           unk_51E0E0.Execute CStr(var_FA8 & "','" & CVar(CStr(var_101C)) & "'," & CVar(var_1190) & ",'" & CVar(var_1100) & "')"), var_1164, -1
  loc_1C493F0:           Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C49417:           Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C4943E:           Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C49457:           var_11AC = Val(CStr(Txt.DispID_41))
  loc_1C4946F:           Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C49496:           Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C494BD:           Set var_334 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C494DD:           Set var_338 = Me.Txt
  loc_1C494E3:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_3C0, var_140, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C49505:           Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C49536:           Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4955D:           Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C49584:           Set var_610 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C495B5:           Set var_664 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C495CC:           Proc_6_39_E7D3A0(var_35C, CVar(CStr(Txt.DispID_41)), Val(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41)
  loc_1C495E6:           Set var_668 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4960D:           Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C49634:           Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4965B:           Set var_820 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4968A:           Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C496B4:           var_484 = IIf((CStr(var_3F0) = vbNullString), Date, CVar(CStr(Txt.DispID_41)))
  loc_1C496CE:           Set var_968 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C496E3:           var_4F8 = Date
  loc_1C496FD:           Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C49727:           var_538 = IIf((CStr(var_4A4) = vbNullString), var_4F8, CVar(CStr(Txt.DispID_41)))
  loc_1C4972F:           var_58C = Date
  loc_1C49749:           Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4975E:           var_11A4 = "Dr"
  loc_1C4977A:           var_1100 = "A"
  loc_1C497C1:           var_66C = vbNullString
  loc_1C497CA:           var_33C = vbNullString
  loc_1C497D3:           var_1F8 = vbNullString
  loc_1C497EA:           var_1F4 = vbNullString
  loc_1C4984F:           Proc_96_10_18CE04C(CStr(var_F4), CStr(var_108), var_8E, global_108, CLng(var_3C0.Tag), MemVar_1F95070, CStr(var_128), CDate(CStr(var_24C)))
  loc_1C49902:           If (global_140 = "Room") Then
  loc_1C4990B:             var_8E = (var_8E + 1)
  loc_1C4991A:             var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C49923:             Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C4994A:             Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C49963:             var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C4997B:             Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C499A2:             Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C499B9:             Proc_6_7_F26918(var_25C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, var_1170, Txt.DispID_41, var_8E, CStr(var_25C))
  loc_1C499D3:             Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C499F3:             Set var_334 = Me.Txt
  loc_1C499F9:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41, var_140, CStr(Trim(CVar(CStr(Txt.DispID_41)))))
  loc_1C49A01:             CStr(var_2F0) = var_338.Tag
  loc_1C49A1B:             Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C49A42:             Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C49A69:             Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C49A90:             Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C49AB7:             Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C49AD7:             Set var_664 = Me.Txt
  loc_1C49ADD:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C49AE5:             Txt.DispID_41 = var_668.Text
  loc_1C49B0A:             Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C49B23:             var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C49B3B:             Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C49B54:             var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C49B6C:             Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C49B93:             Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C49BBA:             Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C49BE1:             Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&H18)))
  loc_1C49C08:             Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C49C2F:             Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C49C56:             Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C49C7D:             Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C49C94:             Proc_6_7_F26918(var_C7C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C49CAE:             Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C49CC5:             Proc_6_7_F26918(var_D20, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, var_1188)
  loc_1C49CD8:             Proc_6_7_F26918(var_DB0, Date, var_1180)
  loc_1C49CF2:             Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C49D19:             Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C49D32:             var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C49D43:             Set var_100C = Me.Txt
  loc_1C49D49:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10A0, var_1100, var_1190)
  loc_1C49D51:             Txt.DispID_41 = var_10A0.Text
  loc_1C49D6A:             var_F8 = CStr(var_F4)
  loc_1C49D6E:             var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C49DBA:             var_1F0 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "','" & CStr(var_1170) & "','" & MemVar_1F95070 & "','"
  loc_1C49E0D:             var_3F0 = CVar(var_1F0 & CStr(var_118) & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) & "','" & CVar(CStr(var_3D0)) 
  loc_1C49E5D:             var_640 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) 
  loc_1C49EB6:             var_870 = var_640 & "'," & CVar(Val(var_66C)) & "," & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," 
  loc_1C49F06:             var_AC0 = var_870 & "'" & CVar(CStr(var_8E4)) & "','" & CVar(CStr(var_978)) & "'," & CVar(CStr(var_A0C)) & ",'" & CVar(CStr(var_AA0)) 
  loc_1C49F2E:             var_BE8 = var_AC0 & "','" & CVar(CStr(var_B34)) & "','" & CVar(CStr(var_BC8)) 
  loc_1C49F3E:             var_C8C = var_BE8 & "'," & var_C7C 
  loc_1C49F4E:             var_D30 = var_C8C & "," & var_D20 
  loc_1C49F71:             var_DC0 = var_D30 & ",'" & CVar(MemVar_1F950C8) & "'," & var_DB0 
  loc_1C49FB4:             var_ED4 = var_DC0 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(MemVar_1F95078) & "','" & CVar(CStr(var_E94)) & "'," 
  loc_1C49FCF:             var_F58 = CVar(var_1100) 'String
  loc_1C49FE9:             unk_51E0E0.Execute CStr(var_ED4 & CVar(var_1190) & ",'" & var_F58 & "')"), var_FA8, -1
  loc_1C4A12D:           End If
  loc_1C4A130:         Else
  loc_1C4A136:           var_8E = (var_8E + 1)
  loc_1C4A145:           var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C4A14E:           Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C4A175:           Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C4A18E:           var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C4A1A6:           Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C4A1CD:           Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4A1DE:           var_24C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4A1E4:           Proc_6_7_F26918(var_25C, var_24C, Txt.DispID_41, var_1170, Txt.DispID_41)
  loc_1C4A1FE:           Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4A21E:           Set var_334 = Me.Txt
  loc_1C4A224:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41, var_8E)
  loc_1C4A22C:           var_10F8 = var_338.Tag
  loc_1C4A246:           Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C4A26D:           Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C4A294:           Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4A2BB:           Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4A2E2:           Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C4A302:           Set var_664 = Me.Txt
  loc_1C4A308:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4A310:           Txt.DispID_41 = var_668.Text
  loc_1C4A31D:           var_1178 = Val(var_66C)
  loc_1C4A335:           Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4A34E:           var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C4A366:           Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C4A37F:           var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C4A397:           Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C4A3BE:           Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C4A3E5:           Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C4A40C:           Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4A433:           Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4A45A:           Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4A481:           Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4A498:           Proc_6_7_F26918(var_BE8, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4A4B2:           Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&H24)))
  loc_1C4A4C3:           var_C7C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4A4C9:           Proc_6_17_EAAE40(var_C8C, var_C7C, Txt.DispID_41, var_1188, var_1180)
  loc_1C4A4E3:           Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4A4F4:           var_D20 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4A4FA:           Proc_6_7_F26918(var_D30, var_D20, var_1178)
  loc_1C4A502:           var_DB0 = Date
  loc_1C4A50D:           Proc_6_7_F26918(var_DC0, var_DB0, Txt.DispID_41)
  loc_1C4A527:           Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&H19)))
  loc_1C4A538:           var_E94 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4A558:           Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1A)))
  loc_1C4A57A:           Proc_6_39_E7D3A0(var_F58, Trim(CVar(CStr(Txt.DispID_41))))
  loc_1C4A594:           Set var_100C = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4A5BB:           Set var_10A0 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4A5D4:           var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C4A5E5:           Set var_10F8 = Me.Txt
  loc_1C4A5EB:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10FC, var_1100, var_1190)
  loc_1C4A5F3:           Txt.DispID_41 = var_10FC.Text
  loc_1C4A60C:           var_F8 = CStr(var_F4)
  loc_1C4A610:           var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,DbtChkIn,BatchNo,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C4A667:           var_1F8 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "'," & CStr(var_1170) & ",'" & MemVar_1F95070 & "','" & CStr(var_118)
  loc_1C4A69B:           var_35C = CVar(var_1F8 & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) 
  loc_1C4A6AF:           var_3F0 = var_35C & "','" & CVar(CStr(var_3D0)) 
  loc_1C4A6CC:           var_4A4 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" 
  loc_1C4A71C:           var_6AC = var_4A4 & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) & "'," & CVar(var_1178) & "," 
  loc_1C4A775:           var_924 = var_6AC & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," & "'" & CVar(CStr(var_8E4)) & "','" 
  loc_1C4A7BC:           var_B54 = var_924 & CVar(CStr(var_978)) & "',0,'" & CVar(CStr(var_A0C)) & "','" & CVar(CStr(var_AA0)) & "','" & CVar(CStr(var_B34)) 
  loc_1C4A818:           var_DF0 = var_B54 & "'," & var_BE8 & "," & var_C8C & "," & var_D30 & ",'" & CVar(MemVar_1F950C8) & "'," & var_DC0 & ",'A','" 
  loc_1C4A855:           var_FA8 = var_DF0 & CVar(MemVar_1F95078) & "FOM','" & Trim(var_E94) & "'," & var_F58 & ",'" & CVar(MemVar_1F95078) 
  loc_1C4A8A7:           unk_51E0E0.Execute CStr(var_FA8 & "','" & CVar(CStr(var_101C)) & "'," & CVar(var_1190) & ",'" & CVar(var_1100) & "')"), var_1164, -1
  loc_1C4AA1C:           Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4AA43:           Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C4AA6A:           Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C4AA83:           var_11AC = Val(CStr(Txt.DispID_41))
  loc_1C4AA9B:           Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C4AAC2:           Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4AAE9:           Set var_334 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4AB09:           Set var_338 = Me.Txt
  loc_1C4AB0F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_3C0, var_140, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4AB31:           Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C4AB62:           Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4AB89:           Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4ABB0:           Set var_610 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4ABE1:           Set var_664 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4ABF8:           Proc_6_39_E7D3A0(var_35C, CVar(CStr(Txt.DispID_41)), Val(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41)
  loc_1C4AC12:           Set var_668 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4AC39:           Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4AC60:           Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4AC87:           Set var_820 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4ACB6:           Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4ACE0:           var_484 = IIf((CStr(var_3F0) = vbNullString), Date, CVar(CStr(Txt.DispID_41)))
  loc_1C4ACFA:           Set var_968 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4AD0F:           var_4F8 = Date
  loc_1C4AD29:           Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4AD53:           var_538 = IIf((CStr(var_4A4) = vbNullString), var_4F8, CVar(CStr(Txt.DispID_41)))
  loc_1C4AD5B:           var_58C = Date
  loc_1C4AD75:           Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4AD8A:           var_11A4 = "Cr"
  loc_1C4ADA6:           var_1100 = "A"
  loc_1C4ADED:           var_66C = vbNullString
  loc_1C4ADF6:           var_33C = vbNullString
  loc_1C4ADFF:           var_1F8 = vbNullString
  loc_1C4AE16:           var_1F4 = vbNullString
  loc_1C4AE7B:           Proc_96_10_18CE04C(CStr(var_F4), CStr(var_108), var_8E, global_108, CLng(var_3C0.Tag), MemVar_1F95070, CStr(var_128), CDate(CStr(var_24C)))
  loc_1C4AF2E:           If (global_140 = "Room") Then
  loc_1C4AF37:             var_8E = (var_8E + 1)
  loc_1C4AF46:             var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C4AF4F:             Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C4AF76:             Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C4AF8F:             var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C4AFA7:             Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C4AFCE:             Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4AFE5:             Proc_6_7_F26918(var_25C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, var_1170, Txt.DispID_41, var_8E, CStr(var_25C))
  loc_1C4AFFF:             Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4B01F:             Set var_334 = Me.Txt
  loc_1C4B025:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41, var_140, CStr(Trim(CVar(CStr(Txt.DispID_41)))))
  loc_1C4B02D:             CStr(var_2F0) = var_338.Tag
  loc_1C4B047:             Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C4B06E:             Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C4B095:             Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4B0BC:             Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4B0E3:             Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C4B103:             Set var_664 = Me.Txt
  loc_1C4B109:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4B111:             Txt.DispID_41 = var_668.Text
  loc_1C4B136:             Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4B14F:             var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C4B167:             Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C4B180:             var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C4B198:             Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C4B1BF:             Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C4B1E6:             Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C4B20D:             Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&H18)))
  loc_1C4B234:             Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4B25B:             Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4B282:             Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4B2A9:             Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4B2C0:             Proc_6_7_F26918(var_C7C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4B2DA:             Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4B2F1:             Proc_6_7_F26918(var_D20, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, var_1188)
  loc_1C4B304:             Proc_6_7_F26918(var_DB0, Date, var_1180)
  loc_1C4B31E:             Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4B345:             Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4B35E:             var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C4B36F:             Set var_100C = Me.Txt
  loc_1C4B375:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10A0, var_1100, var_1190)
  loc_1C4B37D:             Txt.DispID_41 = var_10A0.Text
  loc_1C4B396:             var_F8 = CStr(var_F4)
  loc_1C4B39A:             var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C4B3E6:             var_1F0 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "','" & CStr(var_1170) & "','" & MemVar_1F95070 & "','"
  loc_1C4B439:             var_3F0 = CVar(var_1F0 & CStr(var_118) & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) & "','" & CVar(CStr(var_3D0)) 
  loc_1C4B489:             var_640 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) 
  loc_1C4B4E2:             var_870 = var_640 & "'," & CVar(Val(var_66C)) & "," & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," 
  loc_1C4B532:             var_AC0 = var_870 & "'" & CVar(CStr(var_8E4)) & "','" & CVar(CStr(var_978)) & "'," & CVar(CStr(var_A0C)) & ",'" & CVar(CStr(var_AA0)) 
  loc_1C4B55A:             var_BE8 = var_AC0 & "','" & CVar(CStr(var_B34)) & "','" & CVar(CStr(var_BC8)) 
  loc_1C4B56A:             var_C8C = var_BE8 & "'," & var_C7C 
  loc_1C4B57A:             var_D30 = var_C8C & "," & var_D20 
  loc_1C4B59D:             var_DC0 = var_D30 & ",'" & CVar(MemVar_1F950C8) & "'," & var_DB0 
  loc_1C4B5E0:             var_ED4 = var_DC0 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(MemVar_1F95078) & "','" & CVar(CStr(var_E94)) & "'," 
  loc_1C4B5FB:             var_F58 = CVar(var_1100) 'String
  loc_1C4B615:             unk_51E0E0.Execute CStr(var_ED4 & CVar(var_1190) & ",'" & var_F58 & "')"), var_FA8, -1
  loc_1C4B759:           End If
  loc_1C4B759:         End If
  loc_1C4B759:       End If
  loc_1C4B76E:       Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4B791:       var_98 = (var_98 + Val(CStr(Txt.DispID_41)))
  loc_1C4B79D:     End If
  loc_1C4B7A0:   Next var_130 'Integer
  loc_1C4B7A8: Else
  loc_1C4B7AC:   Set var_E4 = ()
  loc_1C4B7BA:   var_F8 = CStr(Txt.DispID_68030005)
  loc_1C4B7CB:   If (var_F8 = "Edit") Then
  loc_1C4B7D7:     Set var_E4 = 1(var_9E)
  loc_1C4B7F3:     For var_11B8 =  To CInt((CLng(Txt.DispID_4) - 1)):    = var_11B8 'Integer
  loc_1C4B7FF:       var_11BC = global_100
  loc_1C4B80B:       If (var_11BC = 1) Then
  loc_1C4B823:         Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C4B834:         var_140 = CStr(Txt.DispID_41)
  loc_1C4B845:         Set var_138 = Me.Txt
  loc_1C4B84B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_13C, var_F8)
  loc_1C4B853:         var_140 = var_13C.Text
  loc_1C4B870:         If (var_11BC = var_F8) Then
  loc_1C4B888:           Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C4B8C2:           unk_51E0E0.Execute "Delete From PayCharge Where Docid='" & CStr(var_F4) & "'", var_108, -1
  loc_1C4B8E9:           If (global_108 = "ADRES") Then
  loc_1C4B8F2:             var_8E = (var_8E + 1)
  loc_1C4B901:             var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C4B90A:             Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C4B931:             Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C4B94A:             var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C4B962:             Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C4B989:             Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4B99A:             var_24C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4B9A0:             Proc_6_7_F26918(var_25C, var_24C, Txt.DispID_41, var_1170)
  loc_1C4B9BA:             Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4B9DA:             Set var_334 = Me.Txt
  loc_1C4B9E0:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41)
  loc_1C4B9E8:             Txt.DispID_41 = var_338.Tag
  loc_1C4BA02:             Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C4BA29:             Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C4BA50:             Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4BA77:             Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4BA9E:             Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C4BABE:             Set var_664 = Me.Txt
  loc_1C4BAC4:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4BACC:             Txt.DispID_41 = var_668.Text
  loc_1C4BAD9:             var_1178 = Val(var_66C)
  loc_1C4BAF1:             Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4BB0A:             var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C4BB22:             Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C4BB3B:             var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C4BB53:             Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C4BB7A:             Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C4BBA1:             Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C4BBC8:             Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4BBEF:             Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4BC16:             Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4BC3D:             Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4BC54:             Proc_6_7_F26918(var_BE8, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4BC6E:             Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&H24)))
  loc_1C4BC7F:             var_C7C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4BC85:             Proc_6_17_EAAE40(var_C8C, var_C7C, Txt.DispID_41, var_1188, var_1180)
  loc_1C4BC9F:             Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4BCB0:             var_D20 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4BCB6:             Proc_6_7_F26918(var_D30, var_D20, var_1178)
  loc_1C4BCBE:             var_DB0 = Date
  loc_1C4BCC9:             Proc_6_7_F26918(var_DC0, var_DB0, Txt.DispID_41)
  loc_1C4BCE3:             Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&H19)))
  loc_1C4BCF4:             var_E94 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4BD14:             Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1A)))
  loc_1C4BD36:             Proc_6_39_E7D3A0(var_F58, Trim(CVar(CStr(Txt.DispID_41))))
  loc_1C4BD50:             Set var_100C = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4BD77:             Set var_10A0 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4BD90:             var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C4BDA1:             Set var_10F8 = Me.Txt
  loc_1C4BDA7:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10FC, var_1100, var_1190)
  loc_1C4BDAF:             Txt.DispID_41 = var_10FC.Text
  loc_1C4BDC8:             var_F8 = CStr(var_F4)
  loc_1C4BDCC:             var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,DbtChkIn,BatchNo,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C4BE23:             var_1F8 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "'," & CStr(var_1170) & ",'" & MemVar_1F95070 & "','" & CStr(var_118)
  loc_1C4BE57:             var_35C = CVar(var_1F8 & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) 
  loc_1C4BE6B:             var_3F0 = var_35C & "','" & CVar(CStr(var_3D0)) 
  loc_1C4BE88:             var_4A4 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" 
  loc_1C4BECF:             var_68C = var_4A4 & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) & "'," & CVar(var_1178) 
  loc_1C4BF28:             var_904 = var_68C & "," & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," & "'" & CVar(CStr(var_8E4)) 
  loc_1C4BF78:             var_B54 = var_904 & "','" & CVar(CStr(var_978)) & "',0,'" & CVar(CStr(var_A0C)) & "','" & CVar(CStr(var_AA0)) & "','" & CVar(CStr(var_B34)) 
  loc_1C4BFD4:             var_DF0 = var_B54 & "'," & var_BE8 & "," & var_C8C & "," & var_D30 & ",'" & CVar(MemVar_1F950C8) & "'," & var_DC0 & ",'A','" 
  loc_1C4C011:             var_FA8 = var_DF0 & CVar(MemVar_1F95078) & "FOM','" & Trim(var_E94) & "'," & var_F58 & ",'" & CVar(MemVar_1F95078) 
  loc_1C4C063:             unk_51E0E0.Execute CStr(var_FA8 & "','" & CVar(CStr(var_101C)) & "'," & CVar(var_1190) & ",'" & CVar(var_1100) & "')"), var_1164, -1
  loc_1C4C1D8:             Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4C1FF:             Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C4C226:             Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C4C23F:             var_11AC = Val(CStr(Txt.DispID_41))
  loc_1C4C257:             Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C4C27E:             Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4C2A5:             Set var_334 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4C2C5:             Set var_338 = Me.Txt
  loc_1C4C2CB:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_3C0, var_140, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4C2ED:             Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C4C31E:             Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4C345:             Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4C36C:             Set var_610 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4C39D:             Set var_664 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4C3B4:             Proc_6_39_E7D3A0(var_35C, CVar(CStr(Txt.DispID_41)), Val(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41)
  loc_1C4C3CE:             Set var_668 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4C3F5:             Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4C41C:             Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4C443:             Set var_820 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4C472:             Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4C49C:             var_484 = IIf((CStr(var_3F0) = vbNullString), Date, CVar(CStr(Txt.DispID_41)))
  loc_1C4C4B6:             Set var_968 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4C4CB:             var_4F8 = Date
  loc_1C4C4E5:             Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4C50F:             var_538 = IIf((CStr(var_4A4) = vbNullString), var_4F8, CVar(CStr(Txt.DispID_41)))
  loc_1C4C517:             var_58C = Date
  loc_1C4C531:             Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4C546:             var_11A4 = "Dr"
  loc_1C4C562:             var_1100 = "A"
  loc_1C4C5A9:             var_66C = vbNullString
  loc_1C4C5B2:             var_33C = vbNullString
  loc_1C4C5BB:             var_1F8 = vbNullString
  loc_1C4C5D2:             var_1F4 = vbNullString
  loc_1C4C637:             Proc_96_10_18CE04C(CStr(var_F4), CStr(var_108), var_8E, global_108, CLng(var_3C0.Tag), MemVar_1F95070, CStr(var_128), CDate(CStr(var_24C)))
  loc_1C4C6EA:             If (global_140 = "Room") Then
  loc_1C4C6F3:               var_8E = (var_8E + 1)
  loc_1C4C702:               var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C4C70B:               Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C4C732:               Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C4C74B:               var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C4C763:               Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C4C78A:               Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4C7A1:               Proc_6_7_F26918(var_25C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, var_1170, Txt.DispID_41, var_8E, CStr(var_25C))
  loc_1C4C7BB:               Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4C7DB:               Set var_334 = Me.Txt
  loc_1C4C7E1:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41, var_140, CStr(Trim(CVar(CStr(Txt.DispID_41)))))
  loc_1C4C7E9:               CStr(var_2F0) = var_338.Tag
  loc_1C4C803:               Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C4C82A:               Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C4C851:               Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4C878:               Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4C89F:               Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C4C8BF:               Set var_664 = Me.Txt
  loc_1C4C8C5:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4C8CD:               Txt.DispID_41 = var_668.Text
  loc_1C4C8F2:               Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4C90B:               var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C4C923:               Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C4C93C:               var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C4C954:               Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C4C97B:               Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C4C9A2:               Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C4C9C9:               Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&H18)))
  loc_1C4C9F0:               Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4CA17:               Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4CA3E:               Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4CA65:               Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4CA7C:               Proc_6_7_F26918(var_C7C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4CA96:               Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4CAAD:               Proc_6_7_F26918(var_D20, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, var_1188)
  loc_1C4CAC0:               Proc_6_7_F26918(var_DB0, Date, var_1180)
  loc_1C4CADA:               Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4CB01:               Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4CB1A:               var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C4CB2B:               Set var_100C = Me.Txt
  loc_1C4CB31:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10A0, var_1100, var_1190)
  loc_1C4CB39:               Txt.DispID_41 = var_10A0.Text
  loc_1C4CB52:               var_F8 = CStr(var_F4)
  loc_1C4CB56:               var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C4CBA2:               var_1F0 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "','" & CStr(var_1170) & "','" & MemVar_1F95070 & "','"
  loc_1C4CBF5:               var_3F0 = CVar(var_1F0 & CStr(var_118) & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) & "','" & CVar(CStr(var_3D0)) 
  loc_1C4CC45:               var_640 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) 
  loc_1C4CC95:               var_850 = var_640 & "'," & CVar(Val(var_66C)) & "," & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) 
  loc_1C4CCEE:               var_AC0 = var_850 & "'," & "'" & CVar(CStr(var_8E4)) & "','" & CVar(CStr(var_978)) & "'," & CVar(CStr(var_A0C)) & ",'" & CVar(CStr(var_AA0)) 
  loc_1C4CD16:               var_BE8 = var_AC0 & "','" & CVar(CStr(var_B34)) & "','" & CVar(CStr(var_BC8)) 
  loc_1C4CD26:               var_C8C = var_BE8 & "'," & var_C7C 
  loc_1C4CD36:               var_D30 = var_C8C & "," & var_D20 
  loc_1C4CD59:               var_DC0 = var_D30 & ",'" & CVar(MemVar_1F950C8) & "'," & var_DB0 
  loc_1C4CD9C:               var_ED4 = var_DC0 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(MemVar_1F95078) & "','" & CVar(CStr(var_E94)) & "'," 
  loc_1C4CDB7:               var_F58 = CVar(var_1100) 'String
  loc_1C4CDD1:               unk_51E0E0.Execute CStr(var_ED4 & CVar(var_1190) & ",'" & var_F58 & "')"), var_FA8, -1
  loc_1C4CF15:             End If
  loc_1C4CF18:           Else
  loc_1C4CF1E:             var_8E = (var_8E + 1)
  loc_1C4CF2D:             var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C4CF36:             Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C4CF5D:             Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C4CF76:             var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C4CF8E:             Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C4CFB5:             Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4CFC6:             var_24C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4CFCC:             Proc_6_7_F26918(var_25C, var_24C, Txt.DispID_41, var_1170, Txt.DispID_41)
  loc_1C4CFE6:             Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4D006:             Set var_334 = Me.Txt
  loc_1C4D00C:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41, var_8E)
  loc_1C4D014:             var_10F8 = var_338.Tag
  loc_1C4D02E:             Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C4D055:             Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C4D07C:             Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4D0A3:             Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4D0CA:             Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C4D0EA:             Set var_664 = Me.Txt
  loc_1C4D0F0:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4D0F8:             Txt.DispID_41 = var_668.Text
  loc_1C4D105:             var_1178 = Val(var_66C)
  loc_1C4D11D:             Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4D136:             var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C4D14E:             Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C4D167:             var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C4D17F:             Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C4D1A6:             Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C4D1CD:             Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C4D1F4:             Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4D21B:             Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4D242:             Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4D269:             Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4D280:             Proc_6_7_F26918(var_BE8, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4D29A:             Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&H24)))
  loc_1C4D2AB:             var_C7C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4D2B1:             Proc_6_17_EAAE40(var_C8C, var_C7C, Txt.DispID_41, var_1188, var_1180)
  loc_1C4D2CB:             Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4D2DC:             var_D20 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4D2E2:             Proc_6_7_F26918(var_D30, var_D20, var_1178)
  loc_1C4D2EA:             var_DB0 = Date
  loc_1C4D2F5:             Proc_6_7_F26918(var_DC0, var_DB0, Txt.DispID_41)
  loc_1C4D30F:             Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&H19)))
  loc_1C4D320:             var_E94 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4D340:             Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1A)))
  loc_1C4D362:             Proc_6_39_E7D3A0(var_F58, Trim(CVar(CStr(Txt.DispID_41))))
  loc_1C4D37C:             Set var_100C = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4D3A3:             Set var_10A0 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4D3BC:             var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C4D3CD:             Set var_10F8 = Me.Txt
  loc_1C4D3D3:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10FC, var_1100, var_1190)
  loc_1C4D3DB:             Txt.DispID_41 = var_10FC.Text
  loc_1C4D3F4:             var_F8 = CStr(var_F4)
  loc_1C4D3F8:             var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,DbtChkIn,BatchNo,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C4D44F:             var_1F8 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "'," & CStr(var_1170) & ",'" & MemVar_1F95070 & "','" & CStr(var_118)
  loc_1C4D483:             var_35C = CVar(var_1F8 & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) 
  loc_1C4D497:             var_3F0 = var_35C & "','" & CVar(CStr(var_3D0)) 
  loc_1C4D4B4:             var_4A4 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" 
  loc_1C4D4FB:             var_68C = var_4A4 & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) & "'," & CVar(var_1178) 
  loc_1C4D554:             var_904 = var_68C & "," & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," & "'" & CVar(CStr(var_8E4)) 
  loc_1C4D5A4:             var_B54 = var_904 & "','" & CVar(CStr(var_978)) & "',0,'" & CVar(CStr(var_A0C)) & "','" & CVar(CStr(var_AA0)) & "','" & CVar(CStr(var_B34)) 
  loc_1C4D600:             var_DF0 = var_B54 & "'," & var_BE8 & "," & var_C8C & "," & var_D30 & ",'" & CVar(MemVar_1F950C8) & "'," & var_DC0 & ",'A','" 
  loc_1C4D63D:             var_FA8 = var_DF0 & CVar(MemVar_1F95078) & "FOM','" & Trim(var_E94) & "'," & var_F58 & ",'" & CVar(MemVar_1F95078) 
  loc_1C4D68F:             unk_51E0E0.Execute CStr(var_FA8 & "','" & CVar(CStr(var_101C)) & "'," & CVar(var_1190) & ",'" & CVar(var_1100) & "')"), var_1164, -1
  loc_1C4D804:             Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4D82B:             Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C4D852:             Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C4D86B:             var_11AC = Val(CStr(Txt.DispID_41))
  loc_1C4D883:             Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C4D8AA:             Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4D8D1:             Set var_334 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4D8F1:             Set var_338 = Me.Txt
  loc_1C4D8F7:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_3C0, var_140, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4D919:             Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C4D94A:             Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4D971:             Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4D998:             Set var_610 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4D9C9:             Set var_664 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4D9E0:             Proc_6_39_E7D3A0(var_35C, CVar(CStr(Txt.DispID_41)), Val(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41)
  loc_1C4D9FA:             Set var_668 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4DA21:             Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4DA48:             Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4DA6F:             Set var_820 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4DA9E:             Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4DAC8:             var_484 = IIf((CStr(var_3F0) = vbNullString), Date, CVar(CStr(Txt.DispID_41)))
  loc_1C4DAE2:             Set var_968 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4DAF7:             var_4F8 = Date
  loc_1C4DB11:             Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4DB3B:             var_538 = IIf((CStr(var_4A4) = vbNullString), var_4F8, CVar(CStr(Txt.DispID_41)))
  loc_1C4DB5D:             Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4DB72:             var_11A4 = "Cr"
  loc_1C4DB8E:             var_1100 = "A"
  loc_1C4DBD5:             var_66C = vbNullString
  loc_1C4DBDE:             var_33C = vbNullString
  loc_1C4DBE7:             var_1F8 = vbNullString
  loc_1C4DBFE:             var_1F4 = vbNullString
  loc_1C4DC63:             Proc_96_10_18CE04C(CStr(var_F4), CStr(var_108), var_8E, global_108, CLng(var_3C0.Tag), MemVar_1F95070, CStr(var_128), CDate(CStr(var_24C)))
  loc_1C4DD16:             If (global_140 = "Room") Then
  loc_1C4DD1F:               var_8E = (var_8E + 1)
  loc_1C4DD2E:               var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C4DD37:               Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C4DD5E:               Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C4DD77:               var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C4DD8F:               Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C4DDB6:               Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4DDCD:               Proc_6_7_F26918(var_25C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, var_1170, Txt.DispID_41, var_8E, CStr(var_25C))
  loc_1C4DDE7:               Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4DE07:               Set var_334 = Me.Txt
  loc_1C4DE0D:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41, var_140, CStr(Trim(CVar(CStr(Txt.DispID_41)))))
  loc_1C4DE15:               CStr(var_2F0) = var_338.Tag
  loc_1C4DE2F:               Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C4DE56:               Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C4DE7D:               Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4DEA4:               Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4DECB:               Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C4DEEB:               Set var_664 = Me.Txt
  loc_1C4DEF1:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4DEF9:               Txt.DispID_41 = var_668.Text
  loc_1C4DF1E:               Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4DF37:               var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C4DF4F:               Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C4DF68:               var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C4DF80:               Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C4DFA7:               Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C4DFCE:               Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C4DFF5:               Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&H18)))
  loc_1C4E01C:               Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4E043:               Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4E06A:               Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4E091:               Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4E0A8:               Proc_6_7_F26918(var_C7C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4E0C2:               Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4E0D9:               Proc_6_7_F26918(var_D20, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, var_1188)
  loc_1C4E0EC:               Proc_6_7_F26918(var_DB0, Date, var_1180)
  loc_1C4E106:               Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4E12D:               Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4E146:               var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C4E157:               Set var_100C = Me.Txt
  loc_1C4E15D:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10A0, var_1100, var_1190)
  loc_1C4E165:               Txt.DispID_41 = var_10A0.Text
  loc_1C4E17E:               var_F8 = CStr(var_F4)
  loc_1C4E182:               var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C4E19C:               var_150 = var_140 & "'," & CStr(var_8E) & ",'"
  loc_1C4E1E0:               var_26C = CVar(var_150 & global_108 & "','" & CStr(var_1170) & "','" & MemVar_1F95070 & "','" & CStr(var_118) & "',") 'String
  loc_1C4E1E6:               var_27C = var_26C & var_25C 
  loc_1C4E235:               var_484 = var_27C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) & "','" & CVar(CStr(var_3D0)) & "','" & CVar(CStr(var_464)) 
  loc_1C4E285:               var_68C = var_484 & "','" & CVar(CStr(var_4F8)) & "','" & CVar(CStr(Date)) & "','" & CVar(CStr(var_620)) & "'," & CVar(Val(var_66C)) 
  loc_1C4E2DE:               var_904 = var_68C & "," & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," & "'" & CVar(CStr(var_8E4)) 
  loc_1C4E32E:               var_B54 = var_904 & "','" & CVar(CStr(var_978)) & "'," & CVar(CStr(var_A0C)) & ",'" & CVar(CStr(var_AA0)) & "','" & CVar(CStr(var_B34)) 
  loc_1C4E385:               var_DC0 = var_B54 & "','" & CVar(CStr(var_BC8)) & "'," & var_C7C & "," & var_D20 & ",'" & CVar(MemVar_1F950C8) & "'," & var_DB0 
  loc_1C4E3C8:               var_ED4 = var_DC0 & ",'A','" & CVar(MemVar_1F95078) & "FOM','" & CVar(MemVar_1F95078) & "','" & CVar(CStr(var_E94)) & "'," 
  loc_1C4E3FD:               unk_51E0E0.Execute CStr(var_ED4 & CVar(var_1190) & ",'" & CVar(var_1100) & "')"), var_FA8, -1
  loc_1C4E541:             End If
  loc_1C4E541:           End If
  loc_1C4E541:         End If
  loc_1C4E556:         Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4E579:         var_98 = (var_98 + Val(CStr(Txt.DispID_41)))
  loc_1C4E585:       End If
  loc_1C4E588:     Next var_11B8 'Integer
  loc_1C4E58D:   End If
  loc_1C4E58D: End If
  loc_1C4E599: If (global_100 = 1) Then
  loc_1C4E5B1:   Set var_E4 = 1(CVar(CLng(4)))
  loc_1C4E5D7:   var_F8 = CStr(var_F4)
  loc_1C4E5EB:   unk_51E0E0.Execute "Select minadv from roomCat where Code='" & var_F8 & "'", var_108, -1
  loc_1C4E5F6:   Set var_9C = var_138
  loc_1C4E624:   If (var_9C.RecordCount > 0) Then
  loc_1C4E646:     var_138 = var_9C.Fields.Item("MINADV")
  loc_1C4E655:     Proc_6_39_E7D3A0(var_108, CVar(var_138), CVar(var_98))
  loc_1C4E669:     If (var_138 >= var_108) Then
  loc_1C4E68A:       Set var_E4 = Me.Txt
  loc_1C4E690:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_138, var_F8, "Update Booking Set Guarantee='Y' where Docid='")
  loc_1C4E698:       var_F4 = var_138.Text
  loc_1C4E6A1:       var_140 = -1 & var_F8
  loc_1C4E6B1:       unk_51E0E0.Execute "Select minadv from roomCat where Code='" & var_F8 & "'", var_13C, Txt.DispID_41
  loc_1C4E6CE:     Else
  loc_1C4E6EC:       Set var_E4 = Me.Txt
  loc_1C4E6F2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_138, var_F8, "Update Booking Set Guarantee='N' where Docid='")
  loc_1C4E6FA:       var_F4 = var_138.Text
  loc_1C4E703:       var_140 = -1 & var_F8
  loc_1C4E713:       unk_51E0E0.Execute "Select minadv from roomCat where Code='" & var_F8 & "'", var_13C, 
  loc_1C4E72D:     End If
  loc_1C4E72D:   End If
  loc_1C4E72D: End If
  loc_1C4E731: Set var_E4 = ()
  loc_1C4E750: If (CStr(Txt.DispID_68030005) = "Add") Then
  loc_1C4E767:   var_F8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1C4E78D:   var_118 = CVar(var_F8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_108 & "' And VP.Date_From<=") 'String
  loc_1C4E79E:   Set var_E4 = Me.Txt
  loc_1C4E7A4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_138, var_150, var_118)
  loc_1C4E7AC:   var_25C = var_138.Text
  loc_1C4E7BA:   Proc_6_7_F26918(var_108, CVar(var_150))
  loc_1C4E7C2:   var_128 = -1 & var_108 
  loc_1C4E7D9:   unk_51E0E0.Execute CStr(var_128 & " Order By VP.Date_From DESC"), var_13C, 
  loc_1C4E7E4:   Set var_9C = var_13C
  loc_1C4E822:   If (var_9C.RecordCount > 0) Then
  loc_1C4E839:     var_F8 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where (SITE_CODE='" & MemVar_1F95070
  loc_1C4E84E:     var_108 = CVar(var_F8 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='") 'String
  loc_1C4E857:     var_B0 = "V_Type"
  loc_1C4E86B:     var_138 = var_9C.Fields.Item(var_B0)
  loc_1C4E87B:     var_118 = var_108 & var_138.Value 
  loc_1C4E884:     var_128 = var_118 & "' and Date_From=" 
  loc_1C4E8AE:     Proc_6_7_F26918(var_25C, CVar(var_9C.Fields.Item("Date_From")), var_128)
  loc_1C4E8C4:     unk_51E0E0.Execute CStr(var_27C & var_25C), -1, var_2E0
  loc_1C4E8F2:   End If
  loc_1C4E8F2: End If
  loc_1C4E8F8: unk_51E0E0.CommitTrans
  loc_1C4E901: var_86 = CByte(0) 'Byte
  loc_1C4E910: Me.Requery -1
  loc_1C4E934: Set var_E4 = Me.Txt
  loc_1C4E93A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_138, var_F8, "SearchCode='")
  loc_1C4E942: 0 = var_138.Text
  loc_1C4E95B: Me.Find 1 & var_F8 & "'", var_B0, 
  loc_1C4E99F: If (MsgBox("Print Rect.?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1C4E9A2:   Call Proc_43_53_14B8688()
  loc_1C4E9A7: End If
  loc_1C4E9BC: var_F8 = "INI"
  loc_1C4E9CA: Call Proc_43_48_103DDF8(Proc_5_1_100EC1C(var_F8, Me))
  loc_1C4E9E6: If (OpenMode = 1) Then
  loc_1C4E9F6:   Me.Global.Unload Me
  loc_1C4E9FE:   Exit Sub
  loc_1C4E9FF: End If
  loc_1C4EA04: Set var_9C = Nothing
  loc_1C4EA07: Exit Sub
  loc_1C4EA08: ' Referenced from: 1C48998
  loc_1C4EA11: If (CInt(var_86) = 1) Then
  loc_1C4EA1A:   unk_51E0E0.RollbackTrans
  loc_1C4EA1F: End If
  loc_1C4EA27: Set var_E4 = Err()
  loc_1C4EA2D: Call 0.Method_arg_2C (var_F8)
  loc_1C4EA46: MsgBox(CVar(var_F8), &H10, var_108, var_118, var_128)
  loc_1C4EA59: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBF214
  'Data Table: 51E0D0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBF18A: On Error Goto loc_EBF1CF
  loc_EBF193: Me.MoveFirst
  loc_EBF1AD: var_8C = "Searchcode='" & MyValue
  loc_EBF1BD: Me.Find var_8C & "'", 0, 1
  loc_EBF1C9: Call Proc_43_51_17ABBB8(var_A0)
  loc_EBF1CE: Exit Sub
  loc_EBF1CF: ' Referenced from: EBF18A
  loc_EBF1D7: Set var_A4 = Err()
  loc_EBF1DD: Call 0.Method_arg_2C (var_8C)
  loc_EBF1FE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBF211: Exit Sub
  loc_EBF212: Exit Sub
End Sub

Public Property Get OpenMode() 'E03510
  'Data Table: 51E0D0
  loc_E03509: OpenMode = global_96
End Sub

Public Property Let OpenMode(vNewValue) 'E00FA0
  'Data Table: 51E0D0
  loc_E00F9A: global_96 = vNewValue
  loc_E00F9D: Exit Sub
End Sub

Public Property Get OpenType() 'E03ED0
  'Data Table: 51E0D0
  loc_E03EC9: OpenType = global_100
End Sub

Public Property Let OpenType(vNewValue) 'E012E8
  'Data Table: 51E0D0
  loc_E012E2: global_100 = vNewValue
  loc_E012E5: Exit Sub
End Sub

Public Property Get AdvType() 'E0DBCC
  'Data Table: 51E0D0
  loc_E0DBC0: var_88 = global_108
  loc_E0DBC3: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E0F00C
  'Data Table: 51E0D0
  loc_E0F004: global_108 = vNewValue
  loc_E0F008: Exit Sub
End Sub

Public Property Get IdNo() 'E0EF34
  'Data Table: 51E0D0
  loc_E0EF28: var_88 = global_104
  loc_E0EF2B: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E11C7C
  'Data Table: 51E0D0
  loc_E11C74: global_104 = vNewValue
  loc_E11C78: Exit Sub
End Sub

Public Property Get PersonCode() 'E110AC
  'Data Table: 51E0D0
  loc_E110A0: var_88 = global_116
  loc_E110A3: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E1101C
  'Data Table: 51E0D0
  loc_E11014: global_116 = vNewValue
  loc_E11018: Exit Sub
End Sub

Public Property Get pDocId() 'E0E004
  'Data Table: 51E0D0
  loc_E0DFF8: var_88 = global_112
  loc_E0DFFB: pDocId = 
End Sub

Public Property Let pDocId(vNewValue) 'E10E24
  'Data Table: 51E0D0
  loc_E10E1C: global_112 = vNewValue
  loc_E10E20: Exit Sub
End Sub

Public Property Get PTableOrRoomNo() 'E10E6C
  'Data Table: 51E0D0
  loc_E10E60: var_88 = global_120
  loc_E10E63: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E1083C
  'Data Table: 51E0D0
  loc_E10834: global_120 = vNewValue
  loc_E10838: Exit Sub
End Sub

Public Property Get PBillAmt() 'E0DE0C
  'Data Table: 51E0D0
  loc_E0DE02: var_88 = CStr(global_124)
  loc_E0DE05: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E0DB84
  'Data Table: 51E0D0
  loc_E0DB7E: global_124 = CDbl(vNewValue)
  loc_E0DB81: Exit Sub
End Sub

Public Property Get RstParty() 'E0FBDC
  'Data Table: 51E0D0
  loc_E0FBD3: Set var_88 = global_56
  loc_E0FBD6: RstParty = 
End Sub

Public Property Set RstParty(PRst, MyValue) 'E5EB40
  'Data Table: 51E0D0
  loc_E5EB1F: CVarUnk
  loc_E5EB24: VerifyVarObj
  loc_E5EB2A: Set var_8C = (PRst)
  loc_E5EB30: LateIdStAd
  loc_E5EB3E: Exit Sub
End Sub

Public Sub Proc_43_48_103DDF8(arg_C) '103DDF8
  'Data Table: 51E0D0
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_103DBA2: Set var_8C = Me.Txt
  loc_103DBA8: Call 0.Method_Proc_43_48_103DDF88 (var_8E, var_86)
  loc_103DBB5: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_103DBCB:   Set var_8C = Me.Txt
  loc_103DBD1:   Call 0.Method_Proc_43_48_103DDF80 (CInt(var_86), var_98)
  loc_103DBD9:   var_98.Enabled = arg_C
  loc_103DBE8: Next var_92 'Byte
  loc_103DC01: (Not(arg_C)).Enabled = 
  loc_103DC19: (arg_C).Enabled = 
  loc_103DC2E: Set var_8C = Me.Txt
  loc_103DC34: Call 0.Method_Proc_43_48_103DDF80 (CInt(0), var_98)
  loc_103DC3C: var_98.Enabled = False
  loc_103DC55: Set var_8C = Me.Txt
  loc_103DC5B: Call 0.Method_Proc_43_48_103DDF80 (CInt(1), var_98)
  loc_103DC63: var_98.Enabled = False
  loc_103DC7C: Set var_8C = Me.Txt
  loc_103DC82: Call 0.Method_Proc_43_48_103DDF80 (CInt(2), var_98)
  loc_103DC8A: var_98.Enabled = False
  loc_103DCA3: Set var_8C = Me.Txt
  loc_103DCA9: Call 0.Method_Proc_43_48_103DDF80 (CInt(&H10), var_98)
  loc_103DCB1: var_98.Enabled = False
  loc_103DCCA: Set var_8C = Me.Txt
  loc_103DCD0: Call 0.Method_Proc_43_48_103DDF80 (CInt(&H1D), var_98)
  loc_103DCD8: var_98.Enabled = False
  loc_103DCF1: Set var_8C = Me.Txt
  loc_103DCF7: Call 0.Method_Proc_43_48_103DDF80 (CInt(8), var_98)
  loc_103DCFF: var_98.Enabled = False
  loc_103DD18: Set var_8C = Me.Txt
  loc_103DD1E: Call 0.Method_Proc_43_48_103DDF80 (CInt(9), var_98)
  loc_103DD26: var_98.Enabled = False
  loc_103DD3F: Set var_8C = Me.Txt
  loc_103DD45: Call 0.Method_Proc_43_48_103DDF80 (CInt(&HA), var_98)
  loc_103DD4D: var_98.Enabled = False
  loc_103DD66: Set var_8C = Me.Txt
  loc_103DD6C: Call 0.Method_Proc_43_48_103DDF80 (CInt(&HB), var_98)
  loc_103DD74: var_98.Enabled = False
  loc_103DD8D: Set var_8C = Me.Txt
  loc_103DD93: Call 0.Method_Proc_43_48_103DDF80 (CInt(&HC), var_98)
  loc_103DD9B: var_98.Enabled = False
  loc_103DDB4: Set var_8C = Me.Txt
  loc_103DDBA: Call 0.Method_Proc_43_48_103DDF80 (CInt(&HD), var_98)
  loc_103DDC2: var_98.Enabled = False
  loc_103DDDB: Set var_8C = Me.Txt
  loc_103DDE1: Call 0.Method_Proc_43_48_103DDF80 (CInt(7), var_98)
  loc_103DDE9: var_98.Enabled = False
  loc_103DDF5: Exit Sub
End Sub

Public Sub Proc_43_49_F06214
  'Data Table: 51E0D0
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F06136: Set var_8C = Me.Txt
  loc_F0613C: Call 0.Method_Proc_43_49_F062148 (var_8E, var_86)
  loc_F06149: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F0615F:   Set var_8C = Me.Txt
  loc_F06165:   Call 0.Method_Proc_43_49_F062140 (CInt(var_86), var_98)
  loc_F0616D:   var_98.Text = vbNullString
  loc_F06189:   Set var_8C = Me.Txt
  loc_F0618F:   Call 0.Method_Proc_43_49_F062140 (CInt(var_86), var_98)
  loc_F06197:   var_98.Tag = vbNullString
  loc_F061A6: Next var_92 'Byte
  loc_F061B8: (0).Value = 
  loc_F061CD: Set var_8C = (1)
  loc_F06203: Set var_8C = Txt.DispID_4("1").Name(1)
  loc_F06211: Exit Sub
End Sub

Public Sub Proc_43_50_10A1874
  'Data Table: 51E0D0
  Dim var_8C As Long
  Dim var_A8 As Variant
  loc_10A15A3: var_88 = OpenType
  loc_10A15AB: var_8C = var_88
  loc_10A15B7: If (var_8C = 1) Then
  loc_10A15C7:    = var_8C(var_98).Height
  loc_10A15D9:    = (var_88).Top
  loc_10A15EA:   var_A8 = CVar(((var_88 + var_98) + CDbl(950))) 'Single
  loc_10A15F9:   (var_A8).Top = 
  loc_10A1607: End If
  loc_10A161A: (CVar(CDbl(2200))).Left = 
  loc_10A1631: (CDbl(1100)).Top = 
  loc_10A1648: (CDbl(2000)).Left = 
  loc_10A165F: (CDbl(3700)).Top = 
  loc_10A1676: (CDbl(2175)).Left = 
  loc_10A168D: (CDbl(3700)).Top = 
  loc_10A16A4: (CDbl(2175)).Left = 
  loc_10A16BB: (CDbl(3700)).Top = 
  loc_10A16D2: (CDbl(2175)).Left = 
  loc_10A16E9: (CDbl(3700)).Top = 
  loc_10A1700: (CDbl(2175)).Left = 
  loc_10A1717: (CDbl(3700)).Top = 
  loc_10A172E: (CDbl(2175)).Left = 
  loc_10A1745: Me.FrTxnNo.Top = CDbl(3700)
  loc_10A175C: Me.FrTxnNo.Left = CDbl(2175)
  loc_10A1777: (CVar(CDbl(585))).Top = 
  loc_10A1792: (CVar(CDbl(1350))).Left = 
  loc_10A17AD: (CVar(CDbl(3950))).Top = 
  loc_10A17C8: (CVar(CDbl(3200))).Left = 
  loc_10A17E3: (CVar(CDbl(465))).Top = 
  loc_10A17FE: (CVar(CDbl(1350))).Left = 
  loc_10A1819: (CVar(CDbl(2460))).Top = 
  loc_10A1834: (CVar(CDbl(1335))).Left = 
  loc_10A184F: (CVar(CDbl(2350))).Top = 
  loc_10A186A: (CVar(CDbl(3675))).Left = 
  loc_10A1872: Exit Sub
End Sub

Public Sub Proc_43_51_17ABBB8
  'Data Table: 51E0D0
  Dim Me As Variant
  Dim var_16C As Variant
  Dim var_AC As String
  Dim var_13C As Variant
  Dim var_F8 As Variant
  Dim var_B4 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_51E0E0 As Connection15
  Dim var_E4 As Variant
  Dim var_E8 As Fields15
  Dim var_FC As Field20
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_180 As Long
  Dim var_B8 As String
  Dim var_B0 As Variant
  Dim var_184 As String
  Dim var_E0 As Variant
  Dim var_D0 As Variant
  Dim var_98 As Variant
  Dim var_10C As Variant
  Dim var_A8 As Variant
  Dim var_1EC As Variant
  Dim var_1F0 As Long
  Dim var_20C As TextBox
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  loc_17A9C50: On Error Goto loc_17ABB74
  loc_17A9C53: Call Proc_43_56_1272060()
  loc_17A9C5E: Proc_183_45_E5CCA8(global_52)
  loc_17A9C82: Set var_98 = ((Me.RecordCount <= 0))
  loc_17A9CC9: Set var_B0 = Me.Txt
  loc_17A9CCF: Call 0.Method_Proc_43_51_17ABBB80 (CInt(&H1D), var_B4, var_B8, "Select count(*) from PayCharge where RefDocid='", var_E0, -1)
  loc_17A9CE0: var_BC = var_E8 & var_B8
  loc_17A9CF0: unk_51E0E0.Execute var_BC & "' And VType In ('ARRES','ADRES')", 0, var_FC
  loc_17A9D00:  = var_E8.Item((CStr(Txt.DispID_68030005) = "Add"))
  loc_17A9D08:  = var_FC.Value
  loc_17A9D1A: var_14C =  And (var_B4.Text.Fields > 0)
  loc_17A9D4F: If CBool( And Not var_14C) Then
  loc_17A9D52:   Call Proc_43_49_F06214()
  loc_17A9D5A: Else
  loc_17A9D60:   var_180 = global_100
  loc_17A9D6C:   If (var_180 = 1) Then
  loc_17A9D73:     Set var_98 = (var_180)
  loc_17A9D92:     If (CStr(Txt.DispID_68030005) = "Add") Then
  loc_17A9DA9:       var_AC = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VTYPE,ST.VPREFIX,ST.VTIME,ST.BillAmount,ST.SNo,ST.BatchNo ,ST.GuestProf,ST.DbtChkIn ,GP.Name + ' (' + cast(B.BookNo As Varchar) + ')' AS GPName, ST.EmpCode,E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType, CASE When ST.AmtCr<>0 Then ST.AmtCr Else ST.AmtDr END Amount, CASE When ST.AmtCr<>0 Then 'Cr' Else 'Dr' END AmtType, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo,R.Name AS RoomName, ST.FolioNo, ST.CardNo AS cARD_nO, ST.CardHolder, ST.ChqNo,ST.ChqDate, ST.TxnNo, ST.ExpDate,CC.Name as CompName,CompCode, B.CardNo, B.vDate as BookingDate,B.ArrDate, B.ArrTime, B.NoDays, B.RoomRate, B.DepositeReq,ST.RefNo,ST.RefDocID,ST.U_AE,ST.U_Name,ST.U_EntDt,ST.TaxStru,T.Name As TaxStruName FROM " & "((((((PayCharge AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode=E.Code) LEFT JOIN RevMast AS P ON ST.PayCode=P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat=R.RoomCat) AND (ST.RoomType=R.Type) AND (ST.RoomNo=R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode) LEFT JOIN Booking B ON (ST.RefDocId = B.DocID) "
  loc_17A9DB7:       var_C0 = CStr(Txt.DispID_68030005) & " LEFT JOIN (Select Distinct Code,Name From TaxStru) AS T ON ST.TaxStru = T.Code)" & " where ST.RefDocId='"
  loc_17A9DC8:       Set var_98 = Me.Txt
  loc_17A9DCE:       Call 0.Method_Proc_43_51_17ABBB80 (CInt(&H1D), var_B0, var_BC, var_C0)
  loc_17A9DD6:       var_A8 = var_B0.Text
  loc_17A9DDF:       var_184 = -1 & var_BC
  loc_17A9DEF:       unk_51E0E0.Execute var_184 & "' And ST.VType In ('ARRES','ADRES') Order By ST.Vdate,ST.VNo,ST.SNo", var_B4, 
  loc_17A9DFA:       Set var_88 = var_B4
  loc_17A9E1B:     Else
  loc_17A9E2F:       var_AC = "SELECT ST.DOCID,ST.VNO,ST.U_AE,ST.U_Name,ST.U_EntDt,ST.VDATE,ST.VTYPE,ST.VPREFIX,ST.VTIME,ST.BillAmount,ST.SNo,ST.BatchNo, ST.GuestProf,ST.DbtChkIn, GP.Name + ' (' + cast(B.BookNo As Varchar) + ')' AS GPName, ST.EmpCode,E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType, CASE When ST.AmtCr<>0 Then ST.AmtCr Else ST.AmtDr END Amount, CASE When ST.AmtCr<>0 Then 'Cr' Else 'Dr' END AmtType, ST.TipAmt, ST.RoomCat,ST.RoomType,ST.RoomNo,R.Name AS RoomName, ST.FolioNo, ST.CardNo AS cARD_nO, ST.CardHolder, ST.ChqNo,ST.ChqDate, ST.TxnNo, ST.ExpDate,CC.Name as CompName,CompCode, B.CardNo, B.vDate as BookingDate,B.ArrDate, B.ArrTime, B.NoDays, B.RoomRate, B.DepositeReq,ST.RefNo,ST.RefDocID,ST.U_AE,ST.U_Name,ST.U_EntDt,ST.TaxStru,T.Name As TaxStruName FROM " & "((((((PayCharge AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode) "
  loc_17A9E3D:       var_E0 = CVar(CStr(Txt.DispID_68030005) & " LEFT JOIN (Select Distinct Code,Name From TaxStru) AS T ON ST.TaxStru = T.Code)" & "LEFT JOIN Booking B ON (ST.RefDocId = B.DocId) where ST.RefDocId='") 'String
  loc_17A9E76:       var_12C = var_E0 & Me.Fields.Item("SearchCode").Value & "' And ST.VType In ('ARRES','ADRES') Order By ST.Vdate,ST.VNo,ST.SNo" 
  loc_17A9E84:       unk_51E0E0.Execute CStr(var_12C), var_14C, -1
  loc_17A9E8F:       Set var_88 = var_B4
  loc_17A9EB1:     End If
  loc_17A9EB1:   End If
  loc_17A9EF1:   var_B4 = Me.Recordset15.Fields
  loc_17A9F5A:   var_17C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(CVar(var_B4.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_17A9FA2:   (CStr(var_B4 & CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_Name")), var_17C)))).Caption = 
  loc_17AA022:   var_E4 = Me.Recordset15.Fields.Item("U_AE")
  loc_17AA02A:   var_E0 = CVar(var_E4) 'Address
  loc_17AA03B:   var_12C = "entdt :   "
  loc_17AA083:   var_17C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E69628(var_E0) = "E"), "Last Update :   ", var_12C))
  loc_17AA0CB:   (CStr(var_17C & CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("U_EntDt")))))).Caption = 
  loc_17AA13F:   Set var_B4 = Me.Txt
  loc_17AA145:   Call 0.Method_Proc_43_51_17ABBB80 (CInt(&H1D), var_E4)
  loc_17AA14D:   var_E4.Text = CStr(Me.Recordset15.Fields.Item("RefDocId").Value)
  loc_17AA19C:   Set var_B4 = Me.Txt
  loc_17AA1A2:   Call 0.Method_Proc_43_51_17ABBB80 (CInt(3), var_E4)
  loc_17AA1AA:   var_E4.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("GPName")))
  loc_17AA1FA:   Set var_B4 = Me.Txt
  loc_17AA200:   Call 0.Method_Proc_43_51_17ABBB80 (CInt(3), var_E4)
  loc_17AA208:   var_E4.Tag = CStr(Me.Recordset15.Fields.Item("GuestProf").Value)
  loc_17AA222:   Set var_98 = ()
  loc_17AA241:   If (CStr(Txt.DispID_68030005) = "Add") Then
  loc_17AA244:     GoTo loc_17AA4CD
  loc_17AA247:   End If
  loc_17AA283:   Set var_B4 = Me.Txt
  loc_17AA289:   Call 0.Method_Proc_43_51_17ABBB80 (CInt(&H17), var_E4)
  loc_17AA291:   var_E4.Text = CStr(Me.Recordset15.Fields.Item("Comments").Value)
  loc_17AA2E0:   Set var_B4 = Me.Txt
  loc_17AA2E6:   Call 0.Method_Proc_43_51_17ABBB80 (CInt(5), var_E4)
  loc_17AA2EE:   var_E4.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayType")))
  loc_17AA334:   Call Proc_43_57_1287838(CStr(Me.Recordset15.Fields.Item("PayType").Value))
  loc_17AA382:   Set var_B4 = Me.Txt
  loc_17AA388:   Call 0.Method_Proc_43_51_17ABBB80 (CInt(5), var_E4)
  loc_17AA390:   var_E4.Tag = CStr(Me.Recordset15.Fields.Item("PayCode").Value)
  loc_17AA3C8:   var_A8 = CVar(Me.Recordset15.Fields.Item("Amount")) 'Address
  loc_17AA3CF:   Proc_6_39_E7D3A0(var_E0)
  loc_17AA3E6:   Set var_B4 = Me.Txt
  loc_17AA3EC:   Call 0.Method_Proc_43_51_17ABBB80 (CInt(6), var_E4)
  loc_17AA3F4:   var_E4.Text = CStr(var_E0)
  loc_17AA445:   Set var_B4 = Me.Txt
  loc_17AA44B:   Call 0.Method_Proc_43_51_17ABBB80 (CInt(&H12), var_E4)
  loc_17AA453:   var_E4.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Card_No")))
  loc_17AA490:   Proc_6_39_E7D3A0(var_E0, CVar(Me.Recordset15.Fields.Item("RefNo")))
  loc_17AA4A7:   Set var_B4 = Me.Txt
  loc_17AA4AD:   Call 0.Method_Proc_43_51_17ABBB80 (CInt(&HF), var_E4)
  loc_17AA4B5:   var_E4.Text = CStr(var_E0)
  loc_17AA4CD:   ' Referenced from:   17AA244
  loc_17AA4D3:   var_1F0 = global_100
  loc_17AA4DF:   If (var_1F0 = 1) Then
  loc_17AA51B:     Set var_B4 = Me.Txt
  loc_17AA521:     Call 0.Method_Proc_43_51_17ABBB80 (CInt(8), var_E4)
  loc_17AA529:     var_E4.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Bookingdate")), var_1F0)
  loc_17AA576:     Set var_B4 = Me.Txt
  loc_17AA57C:     Call 0.Method_Proc_43_51_17ABBB80 (CInt(9), var_E4)
  loc_17AA584:     var_E4.Text = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ArrDate")))
  loc_17AA5C1:     Proc_6_39_E7D3A0(var_E0, CVar(Me.Recordset15.Fields.Item("RoomRate")))
  loc_17AA5D8:     Set var_B4 = Me.Txt
  loc_17AA5DE:     Call 0.Method_Proc_43_51_17ABBB80 (CInt(&HD), var_E4)
  loc_17AA5E6:     var_E4.Text = CStr(var_E0)
  loc_17AA63A:     If (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ArrDate"))) <> vbNullString) Then
  loc_17AA685:       var_E4 = Me.Recordset15.Fields.Item("ArrTime")
  loc_17AA68D:       var_E0 = CVar(var_E4) 'Address
  loc_17AA6BB:       var_10C = CVar(Me.Recordset15.Fields.Item("NoDays")) 'Address
  loc_17AA6C2:       Proc_6_39_E7D3A0(var_12C, var_10C)
  loc_17AA6CC:       var_BC = 0
  loc_17AA6FF:       var_210 = Proc_6_121_14290C8(CDate(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ArrDate")))), Proc_6_38_E69628(var_E0), CSng(var_12C))
  loc_17AA710:       var_15C = Left(CVar(var_210), &HB)
  loc_17AA727:       Set var_1EC = Me.Txt
  loc_17AA72D:       Call 0.Method_Proc_43_51_17ABBB80 (CInt(&HA), var_20C, CStr(var_15C))
  loc_17AA735:       var_20C.Text = 0
  loc_17AA767:     End If
  loc_17AA781:     var_B0 = Me.Recordset15.Fields.Item("DepositeReq")
  loc_17AA789:     var_A8 = CVar(var_B0) 'Address
  loc_17AA790:     Proc_6_39_E7D3A0(var_E0, var_A8)
  loc_17AA7A7:     Set var_B4 = Me.Txt
  loc_17AA7AD:     Call 0.Method_Proc_43_51_17ABBB80 (CInt(&HB), var_E4, CStr(var_E0))
  loc_17AA7B5:     var_E4.Text = var_BC
  loc_17AA7D1:     Set var_98 = (var_A8)
  loc_17AA7DF:     var_AC = CStr(Txt.DispID_68030005)
  loc_17AA7F0:     If (var_AC = "Add") Then
  loc_17AA81D:       Set var_98 = Me.Txt
  loc_17AA823:       Call 0.Method_Proc_43_51_17ABBB80 (CInt(&H1D), var_B0, var_AC, "Select sum(AmtCr) from PayCharge where RefDocid='", var_A8)
  loc_17AA82B:       -1 = var_B0.Text
  loc_17AA844:       unk_51E0E0.Execute var_B4 & var_AC & "' And VType In ('ARRES','ADRES')", var_E4, 0
  loc_17AA84C:       var_E8 = var_B4.Fields
  loc_17AA854:        = var_E4.Item()
  loc_17AA85C:       var_E0 = CVar(var_E8) 'Address
  loc_17AA863:       Proc_6_39_E7D3A0(var_10C)
  loc_17AA87A:       Set var_FC = Me.Txt
  loc_17AA880:       Call 0.Method_Proc_43_51_17ABBB80 (CInt(&HC), var_1EC)
  loc_17AA888:       var_1EC.Text = CStr(var_10C)
  loc_17AA8B3:     Else
  loc_17AA8B6:       var_16C = 0
  loc_17AA8FE:       var_E0 = "Select sum(AmtCr) from PayCharge where RefDocid='" & Me.Fields.Item("SearchCode").Value 
  loc_17AA915:       unk_51E0E0.Execute CStr(var_E0 & "' And VType In ('ARRES','ADRES')"), var_12C, -1
  loc_17AA91D:       var_B4 = var_B4.Fields
  loc_17AA925:       var_16C = var_E4.Item(var_E4)
  loc_17AA934:       Proc_6_39_E7D3A0(var_15C, CVar(var_E8))
  loc_17AA94B:       Set var_FC = Me.Txt
  loc_17AA951:       Call 0.Method_Proc_43_51_17ABBB80 (CInt(&HC), var_1EC, CStr(var_15C))
  loc_17AA959:       var_1EC.Text = var_E8
  loc_17AA983:     End If
  loc_17AA99D:     var_B0 = Me.Recordset15.Fields.Item("RoomNo")
  loc_17AA9AE:     var_AC = Proc_6_38_E69628(CVar(var_B0))
  loc_17AA9BC:     Set var_B4 = Me.Txt
  loc_17AA9C2:     Call 0.Method_Proc_43_51_17ABBB80 (CInt(&H1B), var_E4)
  loc_17AA9CA:     var_E4.Text = var_AC
  loc_17AA9DE:   End If
  loc_17AA9FC:   Set var_98 = Me.Txt
  loc_17AAA02:   Call 0.Method_Proc_43_51_17ABBB80 (CInt(&H1D), var_B0, var_AC, "Select Guarantee From Booking Where Docid='")
  loc_17AAA0A:   var_A8 = var_B0.Text
  loc_17AAA13:   var_B8 = -1 & var_AC
  loc_17AAA23:   unk_51E0E0.Execute CStr(var_15C) & "'", var_B4, var_E0
  loc_17AAA2E:   Set var_8C = var_B4
  loc_17AAA5A:   If (var_8C.RecordCount > 0) Then
  loc_17AAA96:     Set var_B4 = Me.Txt
  loc_17AAA9C:     Call 0.Method_Proc_43_51_17ABBB80 (CInt(7), var_E4)
  loc_17AAAA4:     var_E4.Text = CStr(var_8C.Fields.Item(0).Value)
  loc_17AAABA:   End If
  loc_17AAAC3:   Set var_98 = (False)
  loc_17AAADE:   Set var_98 = Txt.DispID_19(1)
  loc_17AAAEE:   var_8E = 1
  loc_17AAB08:   If (Me.Recordset15.RecordCount > 0) Then
  loc_17AAB0B:     ' Referenced from:   17ABA6D
  loc_17AAB1D:     If Not(Me.Recordset15.EOF) Then
  loc_17AAB3F:       Set var_218 = Txt.DispID_4(var_8E(vbNullString).Name)
  loc_17AAB46:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_17AAB4E:       var_11C = CVar(CLng(0)) 'Long
  loc_17AAB58:       var_A8 = CVar(CStr(var_8E)) 'String
  loc_17AAB5F:       LateIdCallSt
  loc_17AAB6E:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AAB76:       var_13C = CVar(CLng(&H20)) 'Long
  loc_17AABA9:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("DocID").Value)) 'String
  loc_17AABB0:       LateIdCallSt
  loc_17AABCA:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AABD2:       var_13C = CVar(CLng(&H1F)) 'Long
  loc_17AAC05:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("VNo").Value)) 'String
  loc_17AAC0C:       LateIdCallSt
  loc_17AAC26:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AAC2E:       var_13C = CVar(CLng(&H21)) 'Long
  loc_17AAC61:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("vType").Value)) 'String
  loc_17AAC68:       LateIdCallSt
  loc_17AAC82:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AAC8A:       var_13C = CVar(CLng(&H22)) 'Long
  loc_17AACBD:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("SNo").Value)) 'String
  loc_17AACC4:       LateIdCallSt
  loc_17AACFD:       var_11C = CVar(CLng(var_8E)) 'Long
  loc_17AAD05:       var_16C = CVar(CLng(&H1C)) 'Long
  loc_17AAD32:       var_12C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("VDate")), "dd/MMM/yyyy"))) 'String
  loc_17AAD39:       LateIdCallSt
  loc_17AAD72:       var_11C = CVar(CLng(var_8E)) 'Long
  loc_17AAD7A:       var_16C = CVar(CLng(&H1D)) 'Long
  loc_17AADA0:       var_10C = CVar(Format$(CVar(Me.Recordset15.Fields.Item("VTIME")), "HH:mm")) 'String
  loc_17AADA7:       LateIdCallSt
  loc_17AADBF:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AADC7:       var_13C = CVar(CLng(&H1E)) 'Long
  loc_17AADFA:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("vPrefix").Value)) 'String
  loc_17AAE01:       LateIdCallSt
  loc_17AAE1B:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AAE23:       var_13C = CVar(CLng(2)) 'Long
  loc_17AAE56:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("PayType").Value)) 'String
  loc_17AAE5D:       LateIdCallSt
  loc_17AAE77:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AAE7F:       var_13C = CVar(CLng(1)) 'Long
  loc_17AAEB2:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)) 'String
  loc_17AAEB9:       LateIdCallSt
  loc_17AAF0B:       var_E0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PayName")), CVar(CLng(3)), CVar(CLng(var_8E)), var_218, var_E0, CVar(CLng(3)), CVar(CLng(var_8E)))) 'String
  loc_17AAF12:       LateIdCallSt
  loc_17AAF60:       var_E0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TaxStru")), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_218, var_E0, var_218)) 'String
  loc_17AAF67:       LateIdCallSt
  loc_17AAFB5:       var_E0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TaxStruName")), CVar(CLng(9)), CVar(CLng(var_8E)), var_218, var_E0)) 'String
  loc_17AAFBC:       LateIdCallSt
  loc_17AAFD2:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AAFDA:       var_13C = CVar(CLng(4)) 'Long
  loc_17AB00D:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("RoomCat").Value)) 'String
  loc_17AB014:       LateIdCallSt
  loc_17AB02E:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AB036:       var_13C = CVar(CLng(5)) 'Long
  loc_17AB069:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("Roomtype").Value)) 'String
  loc_17AB070:       LateIdCallSt
  loc_17AB08A:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AB092:       var_13C = CVar(CLng(6)) 'Long
  loc_17AB0C5:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("RoomNo").Value)) 'String
  loc_17AB0CC:       LateIdCallSt
  loc_17AB11E:       var_E0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomName")), CVar(CLng(7)), CVar(CLng(var_8E)), var_218, var_E0, CVar(CLng(7)), CVar(CLng(var_8E)))) 'String
  loc_17AB125:       LateIdCallSt
  loc_17AB15A:       var_11C = CVar(CLng(var_8E)) 'Long
  loc_17AB162:       var_16C = CVar(CLng(8)) 'Long
  loc_17AB18F:       var_12C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("Amount")), "0.00"))) 'String
  loc_17AB196:       LateIdCallSt
  loc_17AB1B0:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AB1B8:       var_13C = CVar(CLng(&HB)) 'Long
  loc_17AB1EB:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("Card_No").Value)) 'String
  loc_17AB1F2:       LateIdCallSt
  loc_17AB20C:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AB214:       var_13C = CVar(CLng(&HC)) 'Long
  loc_17AB247:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_17AB24E:       LateIdCallSt
  loc_17AB2A0:       var_E0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_218, var_E0, CVar(CLng(&HD)), CVar(CLng(var_8E)))) 'String
  loc_17AB2A7:       LateIdCallSt
  loc_17AB2BD:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AB2C5:       var_13C = CVar(CLng(&HE)) 'Long
  loc_17AB2F8:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_17AB2FF:       LateIdCallSt
  loc_17AB319:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AB321:       var_13C = CVar(CLng(&H1A)) 'Long
  loc_17AB354:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("BatchNo").Value)) 'String
  loc_17AB35B:       LateIdCallSt
  loc_17AB3AD:       var_E0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HF)), CVar(CLng(var_8E)), var_218, var_E0, CVar(CLng(&HF)), CVar(CLng(var_8E)))) 'String
  loc_17AB3B4:       LateIdCallSt
  loc_17AB402:       var_E0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TxnNo")), CVar(CLng(&H24)), CVar(CLng(var_8E)), var_218, var_E0, var_218)) 'String
  loc_17AB409:       LateIdCallSt
  loc_17AB41F:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AB427:       var_13C = CVar(CLng(&H10)) 'Long
  loc_17AB45A:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_17AB461:       LateIdCallSt
  loc_17AB4B3:       var_E0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&H11)), CVar(CLng(var_8E)), var_218, var_E0, CVar(CLng(&H11)), CVar(CLng(var_8E)))) 'String
  loc_17AB4BA:       LateIdCallSt
  loc_17AB4D0:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AB4D8:       var_13C = CVar(CLng(&H12)) 'Long
  loc_17AB50B:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_17AB512:       LateIdCallSt
  loc_17AB564:       var_E0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompCode")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_218, var_E0, CVar(CLng(&H16)), CVar(CLng(var_8E)))) 'String
  loc_17AB56B:       LateIdCallSt
  loc_17AB5B9:       var_E0 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CompName")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_218, var_E0, var_218)) 'String
  loc_17AB5C0:       LateIdCallSt
  loc_17AB5D6:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_17AB5DE:       var_11C = CVar(CLng(&H21)) 'Long
  loc_17AB5FF:       If (CStr(Txt.DispID_41) = "ADRES") Then
  loc_17AB606:         var_D0 = CVar(CLng(var_8E)) 'Long
  loc_17AB60E:         var_11C = CVar(CLng(&H23)) 'Long
  loc_17AB613:         var_16C = "Advance"
  loc_17AB61C:         LateIdCallSt
  loc_17AB627:       Else
  loc_17AB62B:         var_D0 = CVar(CLng(var_8E)) 'Long
  loc_17AB633:         var_11C = CVar(CLng(&H21)) 'Long
  loc_17AB654:         If (CStr(Txt.DispID_41) = "ARRES") Then
  loc_17AB65B:           var_D0 = CVar(CLng(var_8E)) 'Long
  loc_17AB663:           var_11C = CVar(CLng(&H23)) 'Long
  loc_17AB668:           var_16C = "Refund"
  loc_17AB671:           LateIdCallSt
  loc_17AB679:         End If
  loc_17AB679:       End If
  loc_17AB6B8:       If (Me.Recordset15.Fields.Item("PayType").Value = "Company") Then
  loc_17AB6ED:         var_E0 = "Code='" & Me.Recordset15.Fields.Item("CompCode").Value 
  loc_17AB6F1:         var_11C = "'"
  loc_17AB701:         Me.Filter = var_E0 & var_11C
  loc_17AB72D:         If (Me.RecordCount > 0) Then
  loc_17AB76F:           If (Me.Fields.Item("CompanyType").Value = "Travel Agency") Then
  loc_17AB77E:             var_218(&HFF).Visible = var_16C
  loc_17AB789:             var_D0 = "DbtChkIn"
  loc_17AB7C2:             If (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item(var_D0)), var_11C, var_D0, var_11C, var_D0) = "Yes") Then
  loc_17AB7D1:               var_218(1).Value = var_16C
  loc_17AB7D9:             End If
  loc_17AB7DC:           Else
  loc_17AB7E8:             var_11C(0).Visible = var_D0
  loc_17AB7F0:           End If
  loc_17AB7F0:         End If
  loc_17AB7FF:         Me.Filter = 0
  loc_17AB80F:         Me.Requery -1
  loc_17AB814:       End If
  loc_17AB818:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AB820:       var_13C = CVar(CLng(&H18)) 'Long
  loc_17AB84E:       Proc_6_39_E7D3A0(var_E0, CVar(Me.Recordset15.Fields.Item("FolioNo")))
  loc_17AB857:       var_10C = CVar(CStr(var_E0)) 'String
  loc_17AB85E:       LateIdCallSt
  loc_17AB876:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AB87E:       var_13C = CVar(CLng(&H13)) 'Long
  loc_17AB8B1:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_17AB8B8:       LateIdCallSt
  loc_17AB8DB:       var_F8 = "SELECT P.RoomType+P.RoomCat+SPACE(5-LEN(P.RoomCat))+P.RoomNo+SPACE(5-LEN(P.RoomNo)),code FROM PayCharge AS P LEFT JOIN RoomMast AS R ON (P.RoomNo = R.Code) AND (P.RoomCat = R.RoomCat) AND (P.RoomType = R.Type) Where DocId='"
  loc_17AB916:       var_10C = var_F8 & Me.Recordset15.Fields.Item("DocID").Value & "' And SNo=" 
  loc_17AB93F:       var_12C = Me.Recordset15.Fields.Item("SNo").Value
  loc_17AB955:       unk_51E0E0.Execute CStr(var_10C & var_12C), var_15C, -1
  loc_17AB960:       Set var_8C = var_E8
  loc_17AB996:       If (var_8C.RecordCount > 0) Then
  loc_17AB9D9:         var_E0 = CVar(Proc_6_38_E69628(var_8C.Fields.Item(0).Value, CVar(CLng(&H14)), CVar(CLng(var_8E)), var_E8, var_218, var_E0)) 'String
  loc_17AB9E0:         LateIdCallSt
  loc_17AB9FA:         var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17ABA02:         var_13C = CVar(CLng(&H15)) 'Long
  loc_17ABA36:         var_E0 = CVar(Proc_6_38_E69628(var_8C.Fields.Item(1).Value, var_13C, var_F8, var_218, var_E0)) 'String
  loc_17ABA3D:         LateIdCallSt
  loc_17ABA53:       End If
  loc_17ABA55:       Set var_218 = Nothing 
  loc_17ABA5F:       var_8E = (var_8E + 1)
  loc_17ABA68:       Me.Recordset15.MoveNext
  loc_17ABA6D:       GoTo loc_17AAB0B
  loc_17ABA70:     End If
  loc_17ABA7D:     Set var_98 = var_8E(1)
  loc_17ABA8B:   End If
  loc_17ABA93:   Set var_98 = Txt.DispID_6(True)
  loc_17ABAA7:   If (var_8E = 1) Then
  loc_17ABAB7:     Set var_98 = Txt.DispID_19(1)
  loc_17ABB12:     Set var_98 = var_F8(CVar(CStr(Proc_6_127_F25B10(var_218(Txt.DispID_4), CInt(0), var_E0, var_13C)))).Name(1)
  loc_17ABB20:   End If
  loc_17ABB20:   Call Proc_43_60_DFCD3C(Txt.DispID_6, var_218)
  loc_17ABB29:   Set var_98 = var_13C(var_10C)
  loc_17ABB37:   var_AC = CStr(Txt.DispID_68030005)
  loc_17ABB48:   If (var_AC = "Add") Then
  loc_17ABB50:     global_144 = 0
  loc_17ABB56:   Else
  loc_17ABB56:     Call Proc_43_61_14EF980(global_144)
  loc_17ABB60:     global_144 = &HFF
  loc_17ABB63:   End If
  loc_17ABB63: End If
  loc_17ABB68: Set var_88 = Nothing
  loc_17ABB70: Set var_8C = Nothing
  loc_17ABB73: Exit Sub
  loc_17ABB74: ' Referenced from: 17A9C50
  loc_17ABB7C: Set var_98 = Err()
  loc_17ABB82: Call 0.Method_arg_2C (var_AC)
  loc_17ABBA3: MsgBox(CVar(var_AC), &H40, "Information", var_10C, var_12C)
  loc_17ABBB6: Exit Sub
End Sub

Public Sub Proc_43_52_DFD3F0
  'Data Table: 51E0D0
  loc_DFD3EC: Exit Sub
End Sub

Public Sub Proc_43_53_14B8688
  'Data Table: 51E0D0
  Dim var_C4 As Variant
  Dim var_C8 As String
  Dim var_E4 As String
  Dim var_F4 As String
  Dim var_EC As TextBox
  Dim unk_51E0E0 As Connection15
  Dim var_DC As String
  Dim var_110 As TextBox
  Dim var_D8 As Variant
  Dim var_140 As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_C0 As Variant
  Dim var_180 As Variant
  Dim var_88 As Integer
  Dim var_A8 As Recordset15
  Dim var_86 As Integer
  Dim var_150 As String
  Dim var_E8 As Fields15
  Dim var_160 As Variant
  Dim var_198 As Variant
  Dim var_1C8 As Variant
  Dim var_1E6 As Integer
  Dim var_B8 As Recordset15
  loc_14B79DC: On Error Goto loc_14B8680
  loc_14B79ED: Set var_C0 = Me.Txt
  loc_14B79F3: Call 0.Method_Proc_43_53_14B86880 (CInt(0), var_C4)
  loc_14B7A12: If (var_C4.Text = vbNullString) Then
  loc_14B7A15:   Exit Sub
  loc_14B7A16: End If
  loc_14B7A1A: Set var_C0 = ()
  loc_14B7A39: If (CStr(Txt.DispID_68030005) = "Add") Then
  loc_14B7A50:   var_C8 = "Select B.DocId,B.BookNo AS BookNo,B.VDate AS Vdate,B.ArrDate AS ArrDate,B.DepDate AS DepDate,B.RoomNo AS RoomNo,B.RoomRate AS RoomRate,B.Adult AS Adult,B.Child AS Child,RC.Name As RoomType,B.GuestName AS GNAME,GroupProf.Name AS GroupName,GF.Add1 AS Add1,GF.Add2 AS Add2,GF.PhoneNo AS PhoneNo,GF.MobileNo AS MobileNo,PC.CardNo AS CCardNo,PC.Cardholder As CCardholder,PC.ChqNo,PC.ChqDate,PC.ExpDate AS CCExpDate,PC.BatchNo,City.CityName AS CityName,City.ZipCode AS Zip,State.Name as StateName,SG.NAME AS CompanyName,(PC.AmtCr-PC.AmtDr) AS ADVANCE,PC.PayType As RECTMODE,PC.U_Name As UserName,B.Guarantee as Guarantee,PC.Vdate As VoucherDate,PC.VType,PC.VNo,R.Name PayName,PC.TxnNo,PC.Comments From " & "(((((((Booking B LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) LEFT JOIN SUBGROUP SG ON B.Company=SG.SubCode) LEFT JOIN GroupProf ON B.GroupCode = GroupProf.Code) Left Join PayCharge PC ON B.DocId=PC.RefDocId LEFT JOIN RevMast AS R ON PC.PayCode = R.Code) "
  loc_14B7A68:   Set var_C0 = Me.Txt
  loc_14B7A6E:   Call 0.Method_Proc_43_53_14B86880 (CInt(&H1D), var_C4, var_DC, CStr(Txt.DispID_68030005) & " Where B.DocId='")
  loc_14B7A76:   var_D8 = var_C4.Text
  loc_14B7A7F:   var_E4 = -1 & var_DC
  loc_14B7A86:   var_F4 = var_E4 & "' And PC.VType In ('ARRES','ADRES') And PC.DocId='"
  loc_14B7A97:   Set var_E8 = Me.Txt
  loc_14B7A9D:   Call 0.Method_Proc_43_53_14B86880 (CInt(0), var_EC, var_F0)
  loc_14B7AA5:   var_F4 = var_EC.Text
  loc_14B7ABE:   unk_51E0E0.Execute var_110 & var_F0 & "' Order By PC.Sno", , 
  loc_14B7AC9:   Set var_A8 = var_110
  loc_14B7B0D:   Set var_C0 = Me.Txt
  loc_14B7B13:   Call 0.Method_Proc_43_53_14B86880 (CInt(0), var_C4, CStr(Txt.DispID_68030005), "Select R.Name As TaxName,PC.TaxPer,Abs(PC.AmtCr-PC.AmtDr) as TaxAmt,PC.OnAmt as TaxableAmt From PayCharge PC Left Join RevMast R On PC.PayCode=R.Code where PC.Docid='")
  loc_14B7B1B:   var_D8 = var_C4.Text
  loc_14B7B24:   var_DC = -1 & CStr(Txt.DispID_68030005)
  loc_14B7B34:   unk_51E0E0.Execute var_DC & "' And PC.TaxPer<>0 Order by PC.TaxPer Desc,PC.PayCode", var_E8, 
  loc_14B7B3F:   Set var_B8 = var_E8
  loc_14B7B5A: Else
  loc_14B7B6E:   var_C8 = "Select B.DocId,B.BookNo AS BookNo,B.VDate AS Vdate,B.ArrDate AS ArrDate,B.DepDate AS DepDate,B.RoomNo AS RoomNo,B.RoomRate AS RoomRate,B.Adult AS Adult,B.Child AS Child,RC.Name As RoomType,B.GuestName AS GNAME,GroupProf.Name AS GroupName,GF.Add1 AS Add1,GF.Add2 AS Add2,GF.PhoneNo AS PhoneNo,GF.MobileNo AS MobileNo,PC.CardNo AS CCardNo,PC.Cardholder As CCardholder,PC.ChqNo,PC.ChqDate,PC.ExpDate AS CCExpDate,PC.BatchNo,City.CityName AS CityName,City.ZipCode AS Zip,State.Name as StateName,SG.NAME AS CompanyName,(PC.AmtCr-PC.AmtDr) AS ADVANCE,PC.PayType As RECTMODE,PC.U_Name As UserName,B.Guarantee as Guarantee,PC.Vdate As VoucherDate,PC.VType,PC.VNo,R.Name PayName,PC.TxnNo,PC.Comments From " & "(((((((Booking B LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) LEFT JOIN SUBGROUP SG ON B.Company=SG.SubCode) LEFT JOIN GroupProf ON B.GroupCode = GroupProf.Code) Left Join PayCharge PC ON B.DocId=PC.RefDocId LEFT JOIN RevMast AS R ON PC.PayCode = R.Code) "
  loc_14B7B86:   Set var_C0 = Me.Txt
  loc_14B7B8C:   Call 0.Method_Proc_43_53_14B86880 (CInt(&H1D), var_C4, var_DC, CStr(Txt.DispID_68030005) & " Where B.DocId='")
  loc_14B7B94:   var_12C = var_C4.Text
  loc_14B7B9D:   var_E4 = -1 & var_DC
  loc_14B7BA4:   var_F4 = var_E4 & "' And PC.VType In ('ARRES','ADRES') And PC.DocId='"
  loc_14B7BB5:   Set var_E8 = Me.Txt
  loc_14B7BBB:   Call 0.Method_Proc_43_53_14B86880 (CInt(0), var_EC, var_F0)
  loc_14B7BC3:   var_F4 = var_EC.Text
  loc_14B7BFC:   unk_51E0E0.Execute CStr((var_130 & var_F0 & "' And PC.SNo=").Tag) & " Order By PC.Sno", , 
  loc_14B7C07:   Set var_A8 = var_130
  loc_14B7C57:   Set var_C0 = Me.Txt
  loc_14B7C5D:   Call 0.Method_Proc_43_53_14B86880 (CInt(0), var_C4, CStr(Txt.DispID_68030005), "Select R.Name As TaxName,PC.TaxPer,Abs(PC.AmtCr-PC.AmtDr) as TaxAmt,PC.OnAmt as TaxableAmt From PayCharge PC Left Join RevMast R On PC.PayCode=R.Code where PC.Docid='")
  loc_14B7C65:   var_D8 = var_C4.Text
  loc_14B7C6E:   var_DC = -1 & CStr(Txt.DispID_68030005)
  loc_14B7C7E:   unk_51E0E0.Execute var_DC & "' And PC.TaxPer<>0 Order by PC.TaxPer Desc,PC.PayCode", var_E8, 
  loc_14B7C89:   Set var_B8 = var_E8
  loc_14B7CA1: End If
  loc_14B7CCA: Proc_6_17_EAAE40(var_D8, MemVar_1F95078, "Select RcptPrinting From Enviro WHERE LOGSITE_CODE=", var_160, -1)
  loc_14B7CE0: unk_51E0E0.Execute CStr(var_C0 & var_D8), var_C4, 0
  loc_14B7CF0:  = var_C4.Item()
  loc_14B7D1C: var_A4 = " ADVANCE RECEIPT VOUCHER "
  loc_14B7D21: Close 1
  loc_14B7D2A: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_14B7D30: var_88 = 1
  loc_14B7D36: MemVar_1F953C4 = "N"
  loc_14B7D3D: MemVar_1F953C8 = "N"
  loc_14B7D44: MemVar_1F953CC = "M"
  loc_14B7D4E: var_184 = var_A8.RecordCount
  loc_14B7D5C: If (var_184 > 0) Then
  loc_14B7D7D:   If CBool(Trim(Proc_6_38_E69628(CVar(var_C0.Fields))) <> "W") Then
  loc_14B7D80:     ' Referenced from: 14B8103
  loc_14B7D8F:     If Not(var_A8.EOF) Then
  loc_14B7D98:       If (var_86 = 0) Then
  loc_14B7DB3:         Print 1, vbNullString
  loc_14B7DBE:         Print 1, vbNullString
  loc_14B7DE5:         Print 1, Proc_6_128_1026560(var_A4, "B", &H50)
  loc_14B7DF9:         Print 1, vbNullString
  loc_14B7E2E:         var_12C = Space(&H1E)
  loc_14B7E36:         var_150 = "VDate"
  loc_14B7E42:         var_E8 = var_A8.Fields
  loc_14B7E4A:         var_EC = var_E8.Item(var_150)
  loc_14B7E6A:         var_160 = CVar("Receipt No.  :" & CStr(var_A8.Fields.Item("BookNo").Value)) 'String
  loc_14B7E70:         var_180 = (var_160 + var_12C)
  loc_14B7E74:         var_140 = "Date :"
  loc_14B7E79:         var_198 = (CVar(var_A8.Fields.Fields) + var_140)
  loc_14B7E83:         var_1C8 = (var_198 + CVar(Proc_6_38_E69628(CVar(var_EC), Proc_6_129_12B862C(var_88, var_86))))
  loc_14B7E89:         Print 1, var_1C8
  loc_14B7EB7:         Print 1, vbNullString
  loc_14B7EF7:         Print 1, "Recieved with thanks from Mr." & Proc_6_38_E69628(CVar(var_A8.Fields.Item("GName")), &H50)
  loc_14B7F11:         Print 1, vbNullString
  loc_14B7F3D:         Proc_6_39_E7D3A0(var_12C, CVar(var_A8.Fields.Item("Advance")))
  loc_14B7F53:         Print 1, "Against Room charge, a Sum of Rs. " & CStr(var_12C)
  loc_14B7F71:         Print 1, vbNullString
  loc_14B7F9D:         Proc_6_39_E7D3A0(var_12C, CVar(var_A8.Fields.Item("Advance")))
  loc_14B7FA5:         var_DC = vbNullString
  loc_14B7FD3:         Print 1, "(In Words)" & Proc_6_43_1003B24(CSng(var_12C), "Rs")
  loc_14B7FF5:         Print 1, vbNullString
  loc_14B8001:         var_10C = "BookNo"
  loc_14B8015:         var_C4 = var_A8.Fields.Item(var_10C)
  loc_14B8033:         Print 1, "Against Reservation No." & CStr(var_C4.Value)
  loc_14B804F:         Print 1, vbNullString
  loc_14B805A:         Print 1, vbNullString
  loc_14B8065:         Print 1, vbNullString
  loc_14B8070:         Print 1, vbNullString
  loc_14B807B:         Print 1, vbNullString
  loc_14B8089:         var_C8 = "Signature"
  loc_14B809F:         Print 1, Proc_6_52_EAE084(var_C8, &H46)
  loc_14B80B3:         Print 1, vbNullString
  loc_14B80BE:         Print 1, "---------------------------------------------------------------------------------------"
  loc_14B80C4:       End If
  loc_14B80CA:       var_86 = (var_86 + &H18)
  loc_14B80CD:       ' Referenced from: 14B80EA
  loc_14B80D3:       If (Proc_6_129_12B862C(var_88, var_86) < &H22) Then
  loc_14B80DB:         Print 1, vbNullString
  loc_14B80E7:         var_86 = (var_86 + 1)
  loc_14B80EA:         GoTo loc_14B80CD
  loc_14B80ED:       End If
  loc_14B80EF:       var_86 = 0
  loc_14B80F8:       var_88 = (var_88 + 1)
  loc_14B80FE:       var_A8.MoveNext
  loc_14B8103:       GoTo loc_14B7D80
  loc_14B8106:     End If
  loc_14B8109:   Else
  loc_14B810C:     var_AC = "ADVANCE RECIEPT RESERVATION"
  loc_14B8115:     Call 0.Method_arg_50 (var_C8, var_88, var_86, var_86)
  loc_14B812C:     var_B0 = CStr(Ucase(CVar(var_C8)))
  loc_14B815A:     Set var_C0 = var_A8 
  loc_14B8161:     CreateFieldDefFile(var_C0, MemVar_1F950B4 & "\" & var_AC & ".ttx", &HFF)
  loc_14B818C:     var_C8 = MemVar_1F950B4 & "\"
  loc_14B8193:     var_DC = var_C8 & var_AC
  loc_14B81A3:     Call 0.Method_arg_1C (var_DC & ".RPT", var_10C, var_C0)
  loc_14B81AE:     MemVar_1F951E8 = var_C0
  loc_14B81D7:     Call 0.Method_arg_64 (var_C0, CVar(var_C0), var_140, var_150)
  loc_14B81DF:     Call 0.Method_arg_2C (var_86, var_DC)
  loc_14B81ED:     Call 0.Method_arg_150 (var_88)
  loc_14B8203:     Call 0.Method_arg_90 (var_C0, var_184)
  loc_14B820B:     Call 0.Method_arg_24 (var_B2)
  loc_14B8217:     For var_1D4 =  To CInt(var_184):   1 = var_1D4 'Integer
  loc_14B8230:       Call 0.Method_arg_90 (var_C0, CLng(var_B2))
  loc_14B8238:       Call 0.Method_arg_20 (var_C4)
  loc_14B8240:       Call 0.Method_arg_30 (var_C8)
  loc_14B826F:       If (Ucase(CVar(var_C8)) = "TITLE") Then
  loc_14B8279:         var_C8 = "'" & var_AC
  loc_14B8293:         Call 0.Method_arg_90 (var_C0, CLng(var_B2))
  loc_14B829B:         Call 0.Method_arg_20 (var_C4)
  loc_14B82A3:         Call 0.Method_arg_38 (var_C8 & "'")
  loc_14B82B6:       End If
  loc_14B82B9:     Next var_1D4 'Integer
  loc_14B82C0:     var_1E6 = 1
  loc_14B82C3:     ' Referenced from:   14B85B1
  loc_14B82D2:     If Not(var_B8.EOF) Then
  loc_14B82E6:       Call 0.Method_arg_90 (var_C0, var_184, var_B2)
  loc_14B82EE:       Call 0.Method_arg_24 (1)
  loc_14B82FA:       For var_1EA =  To CInt(var_184):   var_1E6 = var_1EA 'Integer
  loc_14B8313:         Call 0.Method_arg_90 (var_C0, CLng(var_B2))
  loc_14B831B:         Call 0.Method_arg_20 (var_C4)
  loc_14B8323:         Call 0.Method_arg_30 (var_C8)
  loc_14B8339:         var_1FC = Ucase(CVar(var_C8)) 'Variant
  loc_14B8362:         If (var_1FC = CVar("STNAME" & CStr(var_1E6))) Then
  loc_14B8393:           Proc_6_17_EAAE40(var_160)
  loc_14B83AF:           Call 0.Method_arg_90 (var_E8, CLng(var_B2), var_EC)
  loc_14B83B7:           Call 0.Method_arg_20 (CStr(var_160))
  loc_14B83BF:           Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TaxName")))))
  loc_14B83DC:         Else
  loc_14B83F7:           If (var_1FC = CVar("STPER" & CStr(var_1E6))) Then
  loc_14B8428:             Proc_6_17_EAAE40(var_160)
  loc_14B8444:             Call 0.Method_arg_90 (var_E8, CLng(var_B2), var_EC)
  loc_14B844C:             Call 0.Method_arg_20 (CStr(var_160))
  loc_14B8454:             Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TaxPer")))))
  loc_14B8471:           Else
  loc_14B848C:             If (var_1FC = CVar("STAMT" & CStr(var_1E6))) Then
  loc_14B84BD:               Proc_6_17_EAAE40(var_160)
  loc_14B84D9:               Call 0.Method_arg_90 (var_E8, CLng(var_B2), var_EC)
  loc_14B84E1:               Call 0.Method_arg_20 (CStr(var_160))
  loc_14B84E9:               Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TaxAmt")))))
  loc_14B8506:             Else
  loc_14B8521:               If (var_1FC = CVar("STABLEAMT" & CStr(var_1E6))) Then
  loc_14B8552:                 Proc_6_17_EAAE40(var_160)
  loc_14B856E:                 Call 0.Method_arg_90 (var_E8, CLng(var_B2), var_EC)
  loc_14B8576:                 Call 0.Method_arg_20 (CStr(var_160))
  loc_14B857E:                 Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TaxableAmt")))))
  loc_14B8598:               End If
  loc_14B8598:             End If
  loc_14B8598:           End If
  loc_14B8598:         End If
  loc_14B859B:       Next var_1EA 'Integer
  loc_14B85A6:       var_1E6 = (var_1E6 + 1)
  loc_14B85AC:       var_B8.MoveNext
  loc_14B85B1:       GoTo loc_14B82C3
  loc_14B85B4:     End If
  loc_14B85CF:     Set var_C0 = MemVar_1F951E8 
  loc_14B85DB:     Proc_6_99_1484404(var_C0, 0, var_AC)
  loc_14B85E6:     MemVar_1F951E8 = var_C0
  loc_14B85F4:     Call 0.Method_arg_2B4 (&HFF, Nothing)
  loc_14B85F9:   End If
  loc_14B85F9: End If
  loc_14B85FB: Close 1
  loc_14B8604: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_14B8614: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_14B861F: Close 1
  loc_14B8629: If (MemVar_1F953BC = "Y") Then
  loc_14B8645:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_14B864F: Else
  loc_14B8668:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_14B866F: End If
  loc_14B8674: Set var_A8 = Nothing
  loc_14B867C: Set var_B8 = Nothing
  loc_14B867F: Exit Sub
  loc_14B8680: ' Referenced from: 14B79DC
  loc_14B8680: Proc_6_60_E63754(var_1E6)
  loc_14B8685: Exit Sub
End Sub

Public Sub Proc_43_54_F6DA2C
  'Data Table: 51E0D0
  loc_F6D900: If (CBool(().Visible) = &HFF) Then
  loc_F6D912:   (False).Visible = 
  loc_F6D91A: End If
  loc_F6D936: If (CBool(().Visible) = &HFF) Then
  loc_F6D948:   (False).Visible = 
  loc_F6D950: End If
  loc_F6D96C: If (CBool(().Visible) = &HFF) Then
  loc_F6D97E:   (False).Visible = 
  loc_F6D986: End If
  loc_F6D9A2: If (CBool(().Visible) = &HFF) Then
  loc_F6D9B4:   (False).Visible = 
  loc_F6D9BC: End If
  loc_F6D9D8: If (CBool(().Visible) = &HFF) Then
  loc_F6D9EA:   (False).Visible = 
  loc_F6D9F2: End If
  loc_F6DA0E: If (CBool(().Visible) = &HFF) Then
  loc_F6DA20:   (False).Visible = 
  loc_F6DA28: End If
  loc_F6DA28: Exit Sub
End Sub

Public Sub Proc_43_55_115847C
  'Data Table: 51E0D0
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
  loc_1158110: var_90 = global_108
  loc_1158127: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1158158: Set var_A8 = Me.Txt
  loc_115815E: Call 0.Method_Proc_43_55_115847C0 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_115816D: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_1158175: var_EC = -1 & var_CC 
  loc_1158189: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_1158194: Set var_8C = var_134
  loc_11581D0: If (var_8C.RecordCount > 0) Then
  loc_115820F:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1158212:     GoTo loc_115829F
  loc_1158215:   End If
  loc_1158246:   global_88 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1158271:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_1158286:   var_CC = (var_AC.Value + 1)
  loc_115828E:   global_92 = CInt(var_CC)
  loc_115829F:   ' Referenced from: 1158212
  loc_11582CA:   var_BC = Space((5 - Len(var_90)))
  loc_11582D2:   var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_11582E6:   var_EC = Space((5 - Len(global_88)))
  loc_11582EE:   var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_11582FB:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_88))
  loc_1158314:   var_14C = Space((8 - Len(CStr(global_92))))
  loc_115831C:   var_15C = (var_130 + var_14C)
  loc_115832B:   var_17C = (var_15C + CVar(CStr(global_92)))
  loc_1158336:   global_84 = CStr(var_17C)
  loc_115836C:   global_92(global_88).Caption = 
  loc_1158385:   Set var_A8 = Me.Txt
  loc_115838B:   Call 0.Method_Proc_43_55_115847C0 (CInt(0), var_AC)
  loc_1158393:   var_AC.Text = global_84
  loc_11583B5:   Set var_A8 = Me.Txt
  loc_11583BB:   Call 0.Method_Proc_43_55_115847C0 (CInt(1), var_AC)
  loc_11583C3:   var_AC.Text = CStr(global_92)
  loc_11583D8:   var_88 = global_84
  loc_11583DE: Else
  loc_11583E4:   global_84 = vbNullString
  loc_115840A:   0(vbNullString).Caption = 
  loc_1158423:   Set var_A8 = Me.Txt
  loc_1158429:   Call 0.Method_Proc_43_55_115847C0 (CInt(0), var_AC)
  loc_1158431:   var_AC.Text = global_84
  loc_115844B:   Set var_A8 = Me.Txt
  loc_1158451:   Call 0.Method_Proc_43_55_115847C0 (CInt(1), var_AC)
  loc_1158459:   var_AC.Text = vbNullString
  loc_115846B:   var_88 = global_84
  loc_115846E: End If
  loc_1158473: Set var_8C = Nothing
  loc_1158476: Proc_43_55_115847C = 
End Sub

Public Sub Proc_43_56_1272060
  'Data Table: 51E0D0
  Dim var_8C As Frame
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_1271ABD: global_100(&HFF).Visible = 
  loc_1271AC9: Set var_90 = ()
  loc_1271ACC: var_A0 = &H25
  loc_1271ADD: var_A0 = 0
  loc_1271AE9: var_C0 = CVar(CLng(0)) 'Long
  loc_1271AEE: var_E0 = "SNo"
  loc_1271AF7: LateIdCallSt
  loc_1271B02: var_A0 = CVar(CLng(0)) 'Long
  loc_1271B07: var_C0 = &H1F4
  loc_1271B13: LateIdCallSt
  loc_1271B1E: var_A0 = CVar(CLng(1)) 'Long
  loc_1271B23: var_C0 = 0
  loc_1271B2F: LateIdCallSt
  loc_1271B3A: var_A0 = CVar(CLng(2)) 'Long
  loc_1271B3F: var_C0 = 0
  loc_1271B4B: LateIdCallSt
  loc_1271B53: var_A0 = 0
  loc_1271B5F: var_C0 = CVar(CLng(3)) 'Long
  loc_1271B64: var_E0 = "Payment Type"
  loc_1271B6D: LateIdCallSt
  loc_1271B78: var_A0 = CVar(CLng(3)) 'Long
  loc_1271B83: var_C0 = CVar(CInt(1)) 'Integer
  loc_1271B8A: LateIdCallSt
  loc_1271B95: var_A0 = CVar(CLng(3)) 'Long
  loc_1271B9A: var_C0 = &H9C4
  loc_1271BA6: LateIdCallSt
  loc_1271BB1: var_A0 = CVar(CLng(4)) 'Long
  loc_1271BB6: var_C0 = 0
  loc_1271BC2: LateIdCallSt
  loc_1271BCD: var_A0 = CVar(CLng(5)) 'Long
  loc_1271BD2: var_C0 = 0
  loc_1271BDE: LateIdCallSt
  loc_1271BE9: var_A0 = CVar(CLng(6)) 'Long
  loc_1271BEE: var_C0 = 0
  loc_1271BFA: LateIdCallSt
  loc_1271C05: var_A0 = CVar(CLng(7)) 'Long
  loc_1271C0A: var_C0 = 0
  loc_1271C16: LateIdCallSt
  loc_1271C1E: var_A0 = 0
  loc_1271C2A: var_C0 = CVar(CLng(8)) 'Long
  loc_1271C2F: var_E0 = "Amount"
  loc_1271C38: LateIdCallSt
  loc_1271C43: var_A0 = CVar(CLng(8)) 'Long
  loc_1271C4E: var_C0 = CVar(CInt(7)) 'Integer
  loc_1271C55: LateIdCallSt
  loc_1271C60: var_A0 = CVar(CLng(8)) 'Long
  loc_1271C6B: var_C0 = CVar(CInt(7)) 'Integer
  loc_1271C72: LateIdCallSt
  loc_1271C7D: var_A0 = CVar(CLng(8)) 'Long
  loc_1271C82: var_C0 = &H44C
  loc_1271C8E: LateIdCallSt
  loc_1271C96: var_A0 = 0
  loc_1271CA2: var_C0 = CVar(CLng(9)) 'Long
  loc_1271CA7: var_E0 = "Tax Stru"
  loc_1271CB0: LateIdCallSt
  loc_1271CBB: var_A0 = CVar(CLng(9)) 'Long
  loc_1271CC6: var_C0 = CVar(CInt(1)) 'Integer
  loc_1271CCD: LateIdCallSt
  loc_1271CD8: var_A0 = CVar(CLng(9)) 'Long
  loc_1271CDD: var_C0 = &H708
  loc_1271CE9: LateIdCallSt
  loc_1271CF4: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1271CF9: var_C0 = 0
  loc_1271D05: LateIdCallSt
  loc_1271D10: var_A0 = CVar(CLng(&HB)) 'Long
  loc_1271D15: var_C0 = 0
  loc_1271D21: LateIdCallSt
  loc_1271D2C: var_A0 = CVar(CLng(&HC)) 'Long
  loc_1271D31: var_C0 = 0
  loc_1271D3D: LateIdCallSt
  loc_1271D48: var_A0 = CVar(CLng(&HD)) 'Long
  loc_1271D4D: var_C0 = 0
  loc_1271D59: LateIdCallSt
  loc_1271D64: var_A0 = CVar(CLng(&HE)) 'Long
  loc_1271D69: var_C0 = 0
  loc_1271D75: LateIdCallSt
  loc_1271D80: var_A0 = CVar(CLng(&HF)) 'Long
  loc_1271D85: var_C0 = 0
  loc_1271D91: LateIdCallSt
  loc_1271D9C: var_A0 = CVar(CLng(&H10)) 'Long
  loc_1271DA1: var_C0 = 0
  loc_1271DAD: LateIdCallSt
  loc_1271DB8: var_A0 = CVar(CLng(&H11)) 'Long
  loc_1271DBD: var_C0 = 0
  loc_1271DC9: LateIdCallSt
  loc_1271DD4: var_A0 = CVar(CLng(&H12)) 'Long
  loc_1271DD9: var_C0 = 0
  loc_1271DE5: LateIdCallSt
  loc_1271DF0: var_A0 = CVar(CLng(&H13)) 'Long
  loc_1271DF5: var_C0 = 0
  loc_1271E01: LateIdCallSt
  loc_1271E0C: var_A0 = CVar(CLng(&H14)) 'Long
  loc_1271E11: var_C0 = 0
  loc_1271E1D: LateIdCallSt
  loc_1271E28: var_A0 = CVar(CLng(&H15)) 'Long
  loc_1271E2D: var_C0 = 0
  loc_1271E39: LateIdCallSt
  loc_1271E44: var_A0 = CVar(CLng(&H16)) 'Long
  loc_1271E49: var_C0 = 0
  loc_1271E55: LateIdCallSt
  loc_1271E60: var_A0 = CVar(CLng(&H17)) 'Long
  loc_1271E65: var_C0 = 0
  loc_1271E71: LateIdCallSt
  loc_1271E7C: var_A0 = CVar(CLng(&H18)) 'Long
  loc_1271E81: var_C0 = 0
  loc_1271E8D: LateIdCallSt
  loc_1271E98: var_A0 = CVar(CLng(&H19)) 'Long
  loc_1271E9D: var_C0 = 0
  loc_1271EA9: LateIdCallSt
  loc_1271EB4: var_A0 = CVar(CLng(&H1A)) 'Long
  loc_1271EB9: var_C0 = 0
  loc_1271EC5: LateIdCallSt
  loc_1271ED0: var_A0 = CVar(CLng(&H1B)) 'Long
  loc_1271ED5: var_C0 = 0
  loc_1271EE1: LateIdCallSt
  loc_1271EEC: var_A0 = CVar(CLng(&H1C)) 'Long
  loc_1271EF1: var_C0 = 0
  loc_1271EFD: LateIdCallSt
  loc_1271F08: var_A0 = CVar(CLng(&H1D)) 'Long
  loc_1271F0D: var_C0 = 0
  loc_1271F19: LateIdCallSt
  loc_1271F24: var_A0 = CVar(CLng(&H1E)) 'Long
  loc_1271F29: var_C0 = 0
  loc_1271F35: LateIdCallSt
  loc_1271F40: var_A0 = CVar(CLng(&H1F)) 'Long
  loc_1271F45: var_C0 = 0
  loc_1271F51: LateIdCallSt
  loc_1271F5C: var_A0 = CVar(CLng(&H20)) 'Long
  loc_1271F61: var_C0 = 0
  loc_1271F6D: LateIdCallSt
  loc_1271F78: var_A0 = CVar(CLng(&H21)) 'Long
  loc_1271F7D: var_C0 = 0
  loc_1271F89: LateIdCallSt
  loc_1271F94: var_A0 = CVar(CLng(&H22)) 'Long
  loc_1271F99: var_C0 = 0
  loc_1271FA5: LateIdCallSt
  loc_1271FB0: var_A0 = CVar(CLng(&H24)) 'Long
  loc_1271FB5: var_C0 = 0
  loc_1271FC1: LateIdCallSt
  loc_1271FC9: var_A0 = 0
  loc_1271FD5: var_C0 = CVar(CLng(&H23)) 'Long
  loc_1271FDA: var_E0 = "Type"
  loc_1271FE3: LateIdCallSt
  loc_1271FEE: var_A0 = CVar(CLng(&H23)) 'Long
  loc_1271FF9: var_C0 = CVar(CInt(1)) 'Integer
  loc_1272000: LateIdCallSt
  loc_127200B: var_A0 = CVar(CLng(&H23)) 'Long
  loc_1272010: var_C0 = &H352
  loc_127201C: LateIdCallSt
  loc_1272026: Set var_90 = Nothing 
  loc_127202A: var_A0 = 1
  loc_1272048: Set var_8C = 0(CVar(CStr(1)))
  loc_127204E: LateIdCallSt
  loc_127205C: Exit Sub
End Sub

Public Sub Proc_43_57_1287838(arg_C) '1287838
  'Data Table: 51E0D0
  Dim var_88 As Frame
  Dim var_8C As Long
  Dim var_98 As Frame
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  Dim var_B0 As Frame
  loc_128726C: (0).Visible = 
  loc_1287280: (0).Visible = 
  loc_1287294: (0).Visible = 
  loc_12872A8: (0).Visible = 
  loc_12872BC: (0).Visible = 
  loc_12872D0: Me.FrTxnNo.Visible = False
  loc_12872DE: var_8C = global_100
  loc_12872EA: If (var_8C = 1) Then
  loc_12872F0:   var_90 = arg_C
  loc_12872FB:   If (var_90 = "Cheque") Then
  loc_128730A:     var_8C(&HFF).Visible = 
  loc_128731F:      = (var_94).Left
  loc_1287331:     (var_94).Left = 
  loc_128734B:     Set var_98 = Me.Txt
  loc_1287351:     Call 0.Method_Proc_43_57_12878380 (CInt(6), var_9C)
  loc_128736C:     Set var_A4 = Me.Txt
  loc_1287372:     Call 0.Method_Proc_43_57_12878380 (CInt(6), var_A8)
  loc_128738C:      = (var_94).Top
  loc_12873A5:     Set var_B0 = ((((var_94 + var_9C.Top) + var_A8.Height) + CDbl(&HF)))
  loc_12873AB:     var_B0.Top = 
  loc_12873C2:   Else
  loc_12873CA:     If (var_90 = "Credit Card") Then
  loc_12873D9:       (&HFF).Visible = 
  loc_12873EE:        = (var_94).Left
  loc_1287400:       (var_94).Left = 
  loc_128741A:       Set var_98 = Me.Txt
  loc_1287420:       Call 0.Method_Proc_43_57_12878380 (CInt(6), var_9C)
  loc_128743B:       Set var_A4 = Me.Txt
  loc_1287441:       Call 0.Method_Proc_43_57_12878380 (CInt(6), var_A8)
  loc_128745B:        = (var_94).Top
  loc_1287474:       Set var_B0 = ((((var_94 + var_9C.Top) + var_A8.Height) + CDbl(&HF)))
  loc_128747A:       var_B0.Top = 
  loc_1287491:     Else
  loc_1287499:       If (var_90 = "Staff") Then
  loc_12874A8:         (&HFF).Visible = 
  loc_12874BD:          = (var_94).Left
  loc_12874CF:         (var_94).Left = 
  loc_12874E9:         Set var_98 = Me.Txt
  loc_12874EF:         Call 0.Method_Proc_43_57_12878380 (CInt(6), var_9C)
  loc_128750A:         Set var_A4 = Me.Txt
  loc_1287510:         Call 0.Method_Proc_43_57_12878380 (CInt(6), var_A8)
  loc_128752A:          = (var_94).Top
  loc_1287543:         Set var_B0 = ((((var_94 + var_9C.Top) + var_A8.Height) + CDbl(&HF)))
  loc_1287549:         var_B0.Top = 
  loc_1287560:       Else
  loc_1287568:         If (var_90 = "Company") Then
  loc_1287577:           (&HFF).Visible = 
  loc_128758C:            = (var_94).Left
  loc_128759E:           (var_94).Left = 
  loc_12875B8:           Set var_98 = Me.Txt
  loc_12875BE:           Call 0.Method_Proc_43_57_12878380 (CInt(6), var_9C)
  loc_12875D9:           Set var_A4 = Me.Txt
  loc_12875DF:           Call 0.Method_Proc_43_57_12878380 (CInt(6), var_A8)
  loc_12875F9:            = (var_94).Top
  loc_1287612:           Set var_B0 = ((((var_94 + var_9C.Top) + var_A8.Height) + CDbl(&HF)))
  loc_1287618:           var_B0.Top = 
  loc_128762F:         Else
  loc_1287637:           If (var_90 = "Room") Then
  loc_1287646:             (&HFF).Visible = 
  loc_128765B:              = (var_94).Left
  loc_128766D:             (var_94).Left = 
  loc_1287687:             Set var_98 = Me.Txt
  loc_128768D:             Call 0.Method_Proc_43_57_12878380 (CInt(6), var_9C)
  loc_1287695:             var_A0 = var_9C.Top
  loc_12876A8:             Set var_A4 = Me.Txt
  loc_12876AE:             Call 0.Method_Proc_43_57_12878380 (CInt(6), var_A8)
  loc_12876C8:              = (var_94).Top
  loc_12876E1:             Set var_B0 = ((((var_94 + var_A0) + var_A8.Height) + CDbl(&HF)))
  loc_12876E7:             var_B0.Top = 
  loc_12876FE:           Else
  loc_1287706:             If (var_90 = "UPI") Then
  loc_1287715:               Me.FrTxnNo.Visible = True
  loc_128772A:                = (var_94).Left
  loc_128773C:               Me.FrTxnNo.Left = var_94
  loc_1287755:                = (var_A0).Height
  loc_1287767:                = (var_94).Top
  loc_1287782:               Me.FrTxnNo.Top = ((var_94 + var_A0) + CDbl(&HF))
  loc_1287790:               GoTo loc_1287793
  loc_1287793:               ' Referenced from:           1287790
  loc_1287793:             End If
  loc_1287793:           End If
  loc_1287793:         End If
  loc_1287793:       End If
  loc_1287793:     End If
  loc_1287793:   End If
  loc_1287793: End If
  loc_128779D: Set var_88 = (0)
  loc_12877B8: Set var_88 = FrTxnNo.DispID_18001(0)
  loc_12877D3: Set var_88 = FrTxnNo.DispID_18001(0)
  loc_12877EE: Set var_88 = FrTxnNo.DispID_18001(0)
  loc_1287809: Set var_88 = FrTxnNo.DispID_18001(0)
  loc_1287824: Set var_88 = FrTxnNo.DispID_18001(0)
  loc_1287835: Exit Sub
End Sub

Public Sub Proc_43_58_1582C64
  'Data Table: 51E0D0
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_94 As String
  Dim var_FC As Variant
  Dim Proc_43_58_1582C642 As Variant
  Dim var_86 As Integer
  Dim var_124 As Long
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_10C As Variant
  Dim var_148 As Variant
  loc_1581B1A: Set var_8C = Me.Txt
  loc_1581B20: Call 0.Method_Proc_43_58_1582C640 (CInt(6), var_90)
  loc_1581B44: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_1581B55:   Set var_8C = Me.Txt
  loc_1581B5B:   Call 0.Method_Proc_43_58_1582C640 (CInt(6), var_90)
  loc_1581B63:   var_90.Text = vbNullString
  loc_1581B6F: End If
  loc_1581B7A: Set var_8C = Me.Txt
  loc_1581B80: Call 0.Method_Proc_43_58_1582C640 (CInt(5))
  loc_1581B8F: var_B4 = Trim(CVar(var_90))
  loc_1581BA9: If (var_B4 = vbNullString) Then
  loc_1581BAC:   Exit Sub
  loc_1581BAD: End If
  loc_1581BBB: Set var_8C = Me.Txt
  loc_1581BC1: Call 0.Method_Proc_43_58_1582C640 (CInt(6), var_90)
  loc_1581BC9: var_D6 = var_90.Visible
  loc_1581BDB: If (var_D6 = &HFF) Then
  loc_1581BE9:   Set var_8C = Me.Txt
  loc_1581BEF:   Call 0.Method_Proc_43_58_1582C640 (CInt(6), var_90)
  loc_1581BF7:   var_94 = "Amount"
  loc_1581C18:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1581C1B:     Exit Sub
  loc_1581C1C:   End If
  loc_1581C1C: End If
  loc_1581C35: Set var_8C = Me.Txt
  loc_1581C3B: Call 0.Method_Proc_43_58_1582C640 (CInt(&H18), var_90, var_94)
  loc_1581C43: (global_140 = "Staff") = var_90.Text
  loc_1581C5B: If (var_90 And (var_94 = vbNullString)) Then
  loc_1581C69:   Set var_8C = Me.Txt
  loc_1581C6F:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H18))
  loc_1581C77:   var_94 = "Staff Name"
  loc_1581C98:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1581C9B:     Exit Sub
  loc_1581C9C:   End If
  loc_1581C9C: End If
  loc_1581CB5: Set var_8C = Me.Txt
  loc_1581CBB: Call 0.Method_Proc_43_58_1582C640 (CInt(&H1B), var_90, var_94)
  loc_1581CC3: (global_140 = "Room") = var_90.Text
  loc_1581CDB: If (var_90 And (var_94 = vbNullString)) Then
  loc_1581CE9:   Set var_8C = Me.Txt
  loc_1581CEF:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H1B))
  loc_1581CF7:   var_94 = "Room Name"
  loc_1581D18:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1581D1B:     Exit Sub
  loc_1581D1C:   End If
  loc_1581D1C: End If
  loc_1581D35: Set var_8C = Me.Txt
  loc_1581D3B: Call 0.Method_Proc_43_58_1582C640 (CInt(&H1C), var_90, var_94)
  loc_1581D43: (global_140 = "Company") = var_90.Text
  loc_1581D5B: If (var_90 And (var_94 = vbNullString)) Then
  loc_1581D69:   Set var_8C = Me.Txt
  loc_1581D6F:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H1C))
  loc_1581D77:   var_94 = "Company Name"
  loc_1581D98:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1581D9B:     Exit Sub
  loc_1581D9C:   End If
  loc_1581D9C: End If
  loc_1581DB5: Set var_8C = Me.Txt
  loc_1581DBB: Call 0.Method_Proc_43_58_1582C640 (CInt(&HF), var_90, var_94)
  loc_1581DC3: (global_140 = "Company") = var_90.Text
  loc_1581DDB: If (var_90 And (var_94 = vbNullString)) Then
  loc_1581E16:   If (MsgBox(CVar("It's Not Recommended to Save Details Without Ref No." & vbCrLf & "Continue Anyway"), &H104, var_B4, var_D4, var_10C) = 7) Then
  loc_1581E19:     Exit Sub
  loc_1581E1A:   End If
  loc_1581E1A: End If
  loc_1581E25: If (global_152 = "Y") Then
  loc_1581E41:   Set var_8C = Me.Txt
  loc_1581E47:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H12), var_90)
  loc_1581E67:   If ((global_140 = "Credit Card") And (var_90.Text = vbNullString)) Then
  loc_1581E75:     Set var_8C = Me.Txt
  loc_1581E7B:     Call 0.Method_Proc_43_58_1582C640 (CInt(&H12))
  loc_1581E83:     var_94 = "Credit Card No."
  loc_1581EA4:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1581EA7:       Exit Sub
  loc_1581EA8:     End If
  loc_1581EA8:   End If
  loc_1581EC1:   Set var_8C = Me.Txt
  loc_1581EC7:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H13), var_90, var_94)
  loc_1581ECF:   (global_140 = "Credit Card") = var_90.Text
  loc_1581EE7:   If (var_90 And (var_94 = vbNullString)) Then
  loc_1581EF5:     Set var_8C = Me.Txt
  loc_1581EFB:     Call 0.Method_Proc_43_58_1582C640 (CInt(&H13))
  loc_1581F03:     var_94 = "Holder's Name"
  loc_1581F24:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1581F27:       Exit Sub
  loc_1581F28:     End If
  loc_1581F28:   End If
  loc_1581F41:   Set var_8C = Me.Txt
  loc_1581F47:   Call 0.Method_Proc_43_58_1582C640 (CInt(&HE), var_90, var_94)
  loc_1581F4F:   (global_140 = "Credit Card") = var_90.Text
  loc_1581F67:   If (var_90 And (var_94 = vbNullString)) Then
  loc_1581F75:     Set var_8C = Me.Txt
  loc_1581F7B:     Call 0.Method_Proc_43_58_1582C640 (CInt(&HE))
  loc_1581F83:     var_94 = "Batch No"
  loc_1581FA4:     If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1581FA7:       Exit Sub
  loc_1581FA8:     End If
  loc_1581FA8:   End If
  loc_1581FA8: End If
  loc_1581FC1: Set var_8C = Me.Txt
  loc_1581FC7: Call 0.Method_Proc_43_58_1582C640 (CInt(&H1A), var_90, var_94)
  loc_1581FCF: (global_140 = "UPI") = var_90.Text
  loc_1581FE7: If (var_90 And (var_94 = vbNullString)) Then
  loc_1581FF5:   Set var_8C = Me.Txt
  loc_1581FFB:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H1A))
  loc_1582003:   var_94 = "Txn. No."
  loc_1582024:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_1582027:     Exit Sub
  loc_1582028:   End If
  loc_1582028: End If
  loc_1582041: Set var_8C = Me.Txt
  loc_1582047: Call 0.Method_Proc_43_58_1582C640 (CInt(&H15), var_90, var_94)
  loc_158204F: (global_140 = "Cheque") = var_90.Text
  loc_1582067: If (var_90 And (var_94 = vbNullString)) Then
  loc_1582075:   Set var_8C = Me.Txt
  loc_158207B:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H15))
  loc_1582083:   var_94 = "Cheque No."
  loc_15820A4:   If (Proc_6_27_EA61EC(var_90, var_94) = 0) Then
  loc_15820A7:     Exit Sub
  loc_15820A8:   End If
  loc_15820A8: End If
  loc_15820C1: Set var_8C = Me.Txt
  loc_15820C7: Call 0.Method_Proc_43_58_1582C640 (CInt(&H16), var_90, var_94)
  loc_15820CF: (global_140 = "Cheque") = var_90.Text
  loc_15820E7: If (var_90 And (var_94 = vbNullString)) Then
  loc_15820F5:   Set var_8C = Me.Txt
  loc_15820FB:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H16))
  loc_1582124:   If (Proc_6_27_EA61EC(var_90, "Cheque Dt.") = 0) Then
  loc_1582127:     Exit Sub
  loc_1582128:   End If
  loc_1582128: End If
  loc_1582131: If (global_144 = 0) Then
  loc_1582138:   Set var_8C = (var_90)
  loc_158214D:   var_C4 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_158215E:   Set var_90 = vbNullString(CVar(CLng(3)))
  loc_158216F:   var_94 = CStr(Txt.DispID_41)
  loc_1582188:   If (var_94 <> vbNullString) Then
  loc_15821B1:     Set var_90 = CInt(0)(CVar(CStr(Proc_6_127_F25B10(()))))
  loc_15821B7:     Proc_43_58_1582C642 = var_90.Name
  loc_15821CB:   End If
  loc_15821CF:   Set var_8C = (Proc_43_58_1582C642)
  loc_15821E5:   var_86 = CInt((CLng(Txt.DispID_4) - 1))
  loc_15821FB:   Set var_8C = var_86(CVar(CLng(var_86)))
  loc_158220E:   global_144 = &HFF
  loc_1582214: Else
  loc_1582218:   Set var_8C = Txt.DispID_A(global_144)
  loc_1582228:   var_86 = CInt(CLng(Txt.DispID_A))
  loc_1582231: End If
  loc_158223C: var_124 = OpenType
  loc_1582248: If (var_124 = 1) Then
  loc_158224F:   Set var_128 = var_86(var_124)
  loc_1582256:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_158225E:   var_FC = CVar(CLng(1)) 'Long
  loc_1582271:   Set var_8C = Me.Txt
  loc_1582277:   Call 0.Method_Proc_43_58_1582C640 (CInt(5), var_90, var_94)
  loc_158227F:   var_FC = var_90.Tag
  loc_1582287:   var_A4 = CVar(var_94) 'String
  loc_158228E:   LateIdCallSt
  loc_15822A4:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_15822AC:   var_FC = CVar(CLng(2)) 'Long
  loc_15822BE:   LateIdCallSt
  loc_15822E5:   Set var_8C = Me.Txt
  loc_15822EB:   Call 0.Method_Proc_43_58_1582C640 (CInt(5), var_90, var_94, CVar(CLng(3)), CVar(CLng(var_86)), var_128)
  loc_15822FB:   var_A4 = CVar(var_94) 'String
  loc_1582302:   LateIdCallSt
  loc_158231F:   If (var_90.Text = "Room") Then
  loc_1582326:     var_EC = CVar(CLng(var_86)) 'Long
  loc_158232E:     var_11C = CVar(CLng(&H18)) 'Long
  loc_1582350:     var_90 = Me.Fields.Item("FolioNo")
  loc_1582361:     var_B4 = CVar(CStr(var_90.Value)) 'String
  loc_1582368:     LateIdCallSt
  loc_158237E:   End If
  loc_1582382:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_158238A:   var_FC = CVar(CLng(4)) 'Long
  loc_158239C:   LateIdCallSt
  loc_15823A8:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_15823B0:   var_FC = CVar(CLng(5)) 'Long
  loc_15823C2:   LateIdCallSt
  loc_15823CE:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_15823E9:   Set var_8C = Me.Txt
  loc_15823EF:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H1B), var_90, var_94, CVar(CLng(6)), var_C4, var_128, global_136)
  loc_15823F7:   var_FC = var_90.Text
  loc_1582406:   LateIdCallSt
  loc_1582423:   Set var_8C = Me.Txt
  loc_1582429:   Call 0.Method_Proc_43_58_1582C640 (CInt(6), var_90, var_128, CVar(var_94), var_C4)
  loc_1582432:   var_EC = CVar(CLng(var_86)) 'Long
  loc_158246E:   LateIdCallSt
  loc_15824A3:   Set var_8C = Me.Txt
  loc_15824A9:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H11), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128, CVar(CStr(Format(CVar(var_90), "0.00"))))
  loc_15824B1:   1 = var_90.Tag
  loc_15824C0:   LateIdCallSt
  loc_15824F1:   Set var_8C = Me.Txt
  loc_15824F7:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H11), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15824FF:   1 = var_90.Text
  loc_1582507:   var_A4 = CVar(var_94) 'String
  loc_158250E:   LateIdCallSt
  loc_158253F:   Set var_8C = Me.Txt
  loc_1582545:   Call 0.Method_Proc_43_58_1582C640 (CInt(4), var_90, var_94, CVar(CLng(&H13)), CVar(CLng(var_86)), var_128)
  loc_158254D:   var_A4 = var_90.Text
  loc_1582555:   var_A4 = CVar(var_94) 'String
  loc_158255C:   LateIdCallSt
  loc_158258D:   Set var_8C = Me.Txt
  loc_1582593:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H12), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_128)
  loc_158259B:   var_A4 = var_90.Text
  loc_15825A3:   var_A4 = CVar(var_94) 'String
  loc_15825AA:   LateIdCallSt
  loc_15825DB:   Set var_8C = Me.Txt
  loc_15825E1:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H13), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_128)
  loc_15825E9:   var_A4 = var_90.Text
  loc_15825F1:   var_A4 = CVar(var_94) 'String
  loc_15825F8:   LateIdCallSt
  loc_1582629:   Set var_8C = Me.Txt
  loc_158262F:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H14), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_128)
  loc_1582637:   var_A4 = var_90.Text
  loc_158263F:   var_A4 = CVar(var_94) 'String
  loc_1582646:   LateIdCallSt
  loc_1582677:   Set var_8C = Me.Txt
  loc_158267D:   Call 0.Method_Proc_43_58_1582C640 (CInt(&HE), var_90, var_94, CVar(CLng(&H1A)), CVar(CLng(var_86)), var_128)
  loc_1582685:   var_A4 = var_90.Text
  loc_158268D:   var_A4 = CVar(var_94) 'String
  loc_1582694:   LateIdCallSt
  loc_15826C5:   Set var_8C = Me.Txt
  loc_15826CB:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H1A), var_90, var_94, CVar(CLng(&H24)), CVar(CLng(var_86)), var_128)
  loc_15826D3:   var_A4 = var_90.Text
  loc_15826DB:   var_A4 = CVar(var_94) 'String
  loc_15826E2:   LateIdCallSt
  loc_1582713:   Set var_8C = Me.Txt
  loc_1582719:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H15), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_128)
  loc_1582721:   var_A4 = var_90.Text
  loc_1582729:   var_A4 = CVar(var_94) 'String
  loc_1582730:   LateIdCallSt
  loc_1582761:   Set var_8C = Me.Txt
  loc_1582767:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H16), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_128)
  loc_158276F:   var_A4 = var_90.Text
  loc_1582777:   var_A4 = CVar(var_94) 'String
  loc_158277E:   LateIdCallSt
  loc_15827AF:   Set var_8C = Me.Txt
  loc_15827B5:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H17), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_128)
  loc_15827BD:   var_A4 = var_90.Text
  loc_15827C5:   var_A4 = CVar(var_94) 'String
  loc_15827CC:   LateIdCallSt
  loc_15827FD:   Set var_8C = Me.Txt
  loc_1582803:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H18), var_90, var_94, CVar(CLng(&H11)), CVar(CLng(var_86)), var_128)
  loc_158280B:   var_A4 = var_90.Text
  loc_1582813:   var_A4 = CVar(var_94) 'String
  loc_158281A:   LateIdCallSt
  loc_158284B:   Set var_8C = Me.Txt
  loc_1582851:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H18), var_90, var_94, CVar(CLng(&H12)), CVar(CLng(var_86)), var_128)
  loc_1582859:   var_A4 = var_90.Tag
  loc_1582861:   var_A4 = CVar(var_94) 'String
  loc_1582868:   LateIdCallSt
  loc_1582899:   Set var_8C = Me.Txt
  loc_158289F:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H1B), var_90, var_94, CVar(CLng(&H14)), CVar(CLng(var_86)), var_128)
  loc_15828A7:   var_A4 = var_90.Tag
  loc_15828AF:   var_A4 = CVar(var_94) 'String
  loc_15828B6:   LateIdCallSt
  loc_15828E7:   Set var_8C = Me.Txt
  loc_15828ED:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H1B), var_90, var_94, CVar(CLng(&H15)), CVar(CLng(var_86)), var_128)
  loc_15828F5:   var_A4 = var_90.Text
  loc_15828FD:   var_A4 = CVar(var_94) 'String
  loc_1582904:   LateIdCallSt
  loc_1582935:   Set var_8C = Me.Txt
  loc_158293B:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H1C), var_90, var_94, CVar(CLng(&H16)), CVar(CLng(var_86)), var_128)
  loc_1582943:   var_A4 = var_90.Tag
  loc_158294B:   var_A4 = CVar(var_94) 'String
  loc_1582952:   LateIdCallSt
  loc_1582983:   Set var_8C = Me.Txt
  loc_1582989:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H1C), var_90, var_94, CVar(CLng(&H17)), CVar(CLng(var_86)), var_128)
  loc_1582991:   var_A4 = var_90.Text
  loc_1582999:   var_A4 = CVar(var_94) 'String
  loc_15829A0:   LateIdCallSt
  loc_15829BF:   var_A4 = var_128(var_D6).Value
  loc_15829CB:   Set var_90 = CVar(CLng(8))(var_14A)
  loc_15829D1:   var_EC = var_90.Visible
  loc_15829DA:   var_11C = CVar(CLng(var_86)) 'Long
  loc_15829E2:   var_148 = CVar(CLng(&H19)) 'Long
  loc_1582A1A:   var_10C = CVar(CStr(IIf(((var_D6 = 1) And (var_14A = &HFF)), "Yes", "No"))) 'String
  loc_1582A21:   LateIdCallSt
  loc_1582A5C:   Set var_8C = Me.Txt
  loc_1582A62:   Call 0.Method_Proc_43_58_1582C640 (CInt(&HF), var_90, var_94, CVar(CLng(&H1B)), CVar(CLng(var_86)), var_128)
  loc_1582A6A:   var_10C = var_90.Text
  loc_1582A72:   var_A4 = CVar(var_94) 'String
  loc_1582A79:   LateIdCallSt
  loc_1582AAA:   Set var_8C = Me.Txt
  loc_1582AB0:   Call 0.Method_Proc_43_58_1582C640 (CInt(2), var_90, var_94, CVar(CLng(&H1C)), CVar(CLng(var_86)), var_128)
  loc_1582AB8:   var_A4 = var_90.Text
  loc_1582AC0:   var_A4 = CVar(var_94) 'String
  loc_1582AC7:   LateIdCallSt
  loc_1582AF8:   Set var_8C = Me.Txt
  loc_1582AFE:   Call 0.Method_Proc_43_58_1582C640 (CInt(&H10), var_90, var_94, CVar(CLng(&H1D)), CVar(CLng(var_86)), var_128)
  loc_1582B06:   var_A4 = var_90.Text
  loc_1582B0E:   var_A4 = CVar(var_94) 'String
  loc_1582B15:   LateIdCallSt
  loc_1582B2B:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_1582B45:   var_C4 = CVar(CLng(&H1E))(var_94).Caption
  loc_1582B54:   LateIdCallSt
  loc_1582B81:   Set var_8C = Me.Txt
  loc_1582B87:   Call 0.Method_Proc_43_58_1582C640 (CInt(1), var_90, var_94, CVar(CLng(&H1F)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_1582B9E:   LateIdCallSt
  loc_1582BBC:   var_FC = CVar(CLng(&H20)) 'Long
  loc_1582BCF:   Set var_8C = Me.Txt
  loc_1582BD5:   Call 0.Method_Proc_43_58_1582C640 (CInt(0), var_90, var_94, var_FC, CVar(CLng(var_86)), var_90.Text, CVar(var_94))
  loc_1582BDD:   var_A4 = var_90.Text
  loc_1582BE5:   var_A4 = CVar(var_94) 'String
  loc_1582BEC:   LateIdCallSt
  loc_1582C00:   Set var_128 = Nothing 
  loc_1582C04: End If
  loc_1582C04: Call Proc_43_60_DFCD3C(var_128, var_A4, var_148, var_11C)
  loc_1582C12: If (global_144 = 0) Then
  loc_1582C15:   Call Proc_43_59_11009D8(var_128, global_132)
  loc_1582C1A: End If
  loc_1582C27:  = var_FC(var_D6).Visible
  loc_1582C35: If (var_D6 = 0) Then
  loc_1582C38:   GoTo loc_1582C60
  loc_1582C3B: End If
  loc_1582C46: Set var_8C = Me.Txt
  loc_1582C4C: Call 0.Method_Proc_43_58_1582C640 (CInt(5))
  loc_1582C54: var_90.SetFocus
  loc_1582C60: ' Referenced from: 1582C38
  loc_1582C60: Exit Sub
End Sub

Public Sub Proc_43_59_11009D8
  'Data Table: 51E0D0
  Dim var_8C As TextBox
  Dim var_88 As CheckBox
  loc_110069A: Set var_88 = Me.Txt
  loc_11006A0: Call 0.Method_Proc_43_59_11009D80 (CInt(&H18), var_8C)
  loc_11006A8: var_8C.Text = vbNullString
  loc_11006C2: Set var_88 = Me.Txt
  loc_11006C8: Call 0.Method_Proc_43_59_11009D80 (CInt(&H18), var_8C)
  loc_11006D0: var_8C.Tag = vbNullString
  loc_11006EA: Set var_88 = Me.Txt
  loc_11006F0: Call 0.Method_Proc_43_59_11009D80 (CInt(&H17), var_8C)
  loc_11006F8: var_8C.Text = vbNullString
  loc_1100712: Set var_88 = Me.Txt
  loc_1100718: Call 0.Method_Proc_43_59_11009D80 (CInt(&H12), var_8C)
  loc_1100720: var_8C.Text = vbNullString
  loc_110073A: Set var_88 = Me.Txt
  loc_1100740: Call 0.Method_Proc_43_59_11009D80 (CInt(&H13), var_8C)
  loc_1100748: var_8C.Text = vbNullString
  loc_1100762: Set var_88 = Me.Txt
  loc_1100768: Call 0.Method_Proc_43_59_11009D80 (CInt(&H14), var_8C)
  loc_1100770: var_8C.Text = vbNullString
  loc_110078A: Set var_88 = Me.Txt
  loc_1100790: Call 0.Method_Proc_43_59_11009D80 (CInt(&HE), var_8C)
  loc_1100798: var_8C.Text = vbNullString
  loc_11007B2: Set var_88 = Me.Txt
  loc_11007B8: Call 0.Method_Proc_43_59_11009D80 (CInt(&H15), var_8C)
  loc_11007C0: var_8C.Text = vbNullString
  loc_11007DA: Set var_88 = Me.Txt
  loc_11007E0: Call 0.Method_Proc_43_59_11009D80 (CInt(&H16), var_8C)
  loc_11007E8: var_8C.Text = vbNullString
  loc_1100802: Set var_88 = Me.Txt
  loc_1100808: Call 0.Method_Proc_43_59_11009D80 (CInt(5), var_8C)
  loc_1100810: var_8C.Tag = vbNullString
  loc_110082A: Set var_88 = Me.Txt
  loc_1100830: Call 0.Method_Proc_43_59_11009D80 (CInt(5), var_8C)
  loc_1100838: var_8C.Text = vbNullString
  loc_1100852: Set var_88 = Me.Txt
  loc_1100858: Call 0.Method_Proc_43_59_11009D80 (CInt(5), var_8C)
  loc_1100860: var_8C.Text = vbNullString
  loc_110087A: Set var_88 = Me.Txt
  loc_1100880: Call 0.Method_Proc_43_59_11009D80 (CInt(&H1C), var_8C)
  loc_1100888: var_8C.Tag = vbNullString
  loc_11008A2: Set var_88 = Me.Txt
  loc_11008A8: Call 0.Method_Proc_43_59_11009D80 (CInt(&H1C), var_8C)
  loc_11008B0: var_8C.Text = vbNullString
  loc_11008CA: Set var_88 = Me.Txt
  loc_11008D0: Call 0.Method_Proc_43_59_11009D80 (CInt(&H11), var_8C)
  loc_11008D8: var_8C.Tag = vbNullString
  loc_11008F2: Set var_88 = Me.Txt
  loc_11008F8: Call 0.Method_Proc_43_59_11009D80 (CInt(&H11), var_8C)
  loc_1100900: var_8C.Text = vbNullString
  loc_110091A: Set var_88 = Me.Txt
  loc_1100920: Call 0.Method_Proc_43_59_11009D80 (CInt(&HF), var_8C)
  loc_1100928: var_8C.Text = vbNullString
  loc_110093A: global_132 = vbNullString
  loc_1100944: global_136 = vbNullString
  loc_1100956: Set var_88 = Me.Txt
  loc_110095C: Call 0.Method_Proc_43_59_11009D80 (CInt(6), var_8C)
  loc_1100964: var_8C.Text = vbNullString
  loc_110097E: Set var_88 = Me.Txt
  loc_1100984: Call 0.Method_Proc_43_59_11009D80 (CInt(&H12), var_8C)
  loc_110098C: var_8C.Text = vbNullString
  loc_11009A6: Set var_88 = Me.Txt
  loc_11009AC: Call 0.Method_Proc_43_59_11009D80 (CInt(&H14), var_8C)
  loc_11009B4: var_8C.Text = vbNullString
  loc_11009CC: (0).Value = 
  loc_11009D4: Exit Sub
End Sub

Public Sub Proc_43_60_DFCD3C
  'Data Table: 51E0D0
  loc_DFCD38: Exit Sub
  loc_DFCD39: Proc_43_60_DFCD3C00 = 
End Sub

Public Sub Proc_43_61_14EF980
  'Data Table: 51E0D0
  Dim var_A8 As Variant
  Dim var_F0 As String
  Dim var_F8 As TextBox
  Dim var_DC As Variant
  Dim var_F4 As TextBox
  Dim Me As Recordset15
  Dim var_88 As Variant
  loc_14EEB44: Set var_88 = ()
  loc_14EEB64: Set var_DC = CVar(CLng(Txt.DispID_A))(CVar(CLng(1)))
  loc_14EEB8E: If (CStr(Txt.DispID_41) <> vbNullString) Then
  loc_14EEB95:   Set var_F4 = ()
  loc_14EEB9C:   Set var_88 = ()
  loc_14EEBD4:   Set var_DC = Me.Txt
  loc_14EEBDA:   Call 0.Method_Proc_43_61_14EF9800 (CInt(0), var_F8, CStr(Txt.DispID_41))
  loc_14EEBE2:   var_F8.Text = CVar(CLng(&H20))
  loc_14EEBFE:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EEC36:   Set var_DC = Me.Txt
  loc_14EEC3C:   Call 0.Method_Proc_43_61_14EF9800 (CInt(1), var_F8, CStr(Txt.DispID_41))
  loc_14EEC44:   var_F8.Text = CVar(CLng(&H1F))
  loc_14EEC60:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EEC9F:   If (CStr(Txt.DispID_41) = "ADRES") Then
  loc_14EECA6:     Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(&H21)))
  loc_14EECB5:     var_A8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_14EECD6:     global_108 = CStr(Txt.DispID_41)
  loc_14EECF5:     Set var_88 = Me.Txt
  loc_14EECFB:     Call 0.Method_Proc_43_61_14EF9800 (CInt(&H19), var_DC, "Advance")
  loc_14EED03:     var_DC.Text = CVar(CLng(&H21))
  loc_14EED12:   Else
  loc_14EED16:     Set var_88 = (var_A8)
  loc_14EED55:     If (CStr(Txt.DispID_41) = "ARRES") Then
  loc_14EED5C:       Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(&H21)))
  loc_14EED6B:       var_A8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_14EED8C:       global_108 = CStr(Txt.DispID_41)
  loc_14EEDAB:       Set var_88 = Me.Txt
  loc_14EEDB1:       Call 0.Method_Proc_43_61_14EF9800 (CInt(&H19), var_DC, "Refund")
  loc_14EEDB9:       var_DC.Text = CVar(CLng(&H21))
  loc_14EEDC5:     End If
  loc_14EEDC5:   End If
  loc_14EEDC9:   Set var_88 = (var_A8)
  loc_14EEE04:   var_F4.Tag = CVar(CStr(Val(CStr(Txt.DispID_41))))
  loc_14EEE1C:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(&H22)))
  loc_14EEE2B:   var_A8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_14EEE7D:   Set var_DC = Me.Txt
  loc_14EEE83:   Call 0.Method_Proc_43_61_14EF9800 (CInt(2), var_F8, CStr(Format(CVar(CStr(var_EC)), "dd/MMM/yyyy")), 1)
  loc_14EEE8B:   var_F8.Text = 1
  loc_14EEEAD:   Set var_88 = CVar(CLng(&H1C))(Txt.DispID_41)
  loc_14EEF07:   Set var_DC = Me.Txt
  loc_14EEF0D:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H10), var_F8, Format$(CVar(CStr(var_EC)), "HH:mm"), 1, 1)
  loc_14EEF15:   var_F8.Text = Txt.DispID_41
  loc_14EEF35:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(&H1D)))
  loc_14EEF44:   var_A8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_14EEF6C:   CVar(CLng(&H1E))(CStr(Txt.DispID_41)).Caption = var_A8
  loc_14EEF86:   Set var_88 = (var_A8)
  loc_14EEFBE:   Set var_DC = Me.Txt
  loc_14EEFC4:   Call 0.Method_Proc_43_61_14EF9800 (CInt(5), var_F8, CStr(Txt.DispID_41))
  loc_14EEFCC:   var_F8.Tag = CVar(CLng(1))
  loc_14EEFE8:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF018:   global_140 = CStr(Txt.DispID_41)
  loc_14EF02D:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(2)))
  loc_14EF065:   Set var_DC = Me.Txt
  loc_14EF06B:   Call 0.Method_Proc_43_61_14EF9800 (CInt(5), var_F8, CStr(Txt.DispID_41))
  loc_14EF073:   var_F8.Text = CVar(CLng(3))
  loc_14EF08F:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF0BF:   global_132 = CStr(Txt.DispID_41)
  loc_14EF0D4:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(4)))
  loc_14EF104:   global_136 = CStr(Txt.DispID_41)
  loc_14EF119:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(5)))
  loc_14EF128:   var_A8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_14EF17A:   Set var_DC = Me.Txt
  loc_14EF180:   Call 0.Method_Proc_43_61_14EF9800 (CInt(6), var_F8, CStr(Format(CVar(CStr(var_EC)), "0.00")), 1)
  loc_14EF188:   var_F8.Text = 1
  loc_14EF1AA:   Set var_88 = CVar(CLng(8))(Txt.DispID_41)
  loc_14EF1E2:   Set var_DC = Me.Txt
  loc_14EF1E8:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H12), var_F8, CStr(Txt.DispID_41))
  loc_14EF1F0:   var_F8.Text = CVar(CLng(&HB))
  loc_14EF20C:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(Txt.DispID_A)))
  loc_14EF244:   Set var_DC = Me.Txt
  loc_14EF24A:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H13), var_F8, CStr(Txt.DispID_41))
  loc_14EF252:   var_F8.Text = CVar(CLng(&HC))
  loc_14EF26E:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF2A6:   Set var_DC = Me.Txt
  loc_14EF2AC:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H14), var_F8, CStr(Txt.DispID_41))
  loc_14EF2B4:   var_F8.Text = CVar(CLng(&HD))
  loc_14EF2D0:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF308:   Set var_DC = Me.Txt
  loc_14EF30E:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&HE), var_F8, CStr(Txt.DispID_41))
  loc_14EF316:   var_F8.Text = CVar(CLng(&H1A))
  loc_14EF332:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF36A:   Set var_DC = Me.Txt
  loc_14EF370:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H1A), var_F8, CStr(Txt.DispID_41))
  loc_14EF378:   var_F8.Text = CVar(CLng(&H24))
  loc_14EF394:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF3CC:   Set var_DC = Me.Txt
  loc_14EF3D2:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H15), var_F8, CStr(Txt.DispID_41))
  loc_14EF3DA:   var_F8.Text = CVar(CLng(&HE))
  loc_14EF3F6:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF42E:   Set var_DC = Me.Txt
  loc_14EF434:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H16), var_F8, CStr(Txt.DispID_41))
  loc_14EF43C:   var_F8.Text = CVar(CLng(&HF))
  loc_14EF458:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF490:   Set var_DC = Me.Txt
  loc_14EF496:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H17), var_F8, CStr(Txt.DispID_41))
  loc_14EF49E:   var_F8.Text = CVar(CLng(&H10))
  loc_14EF4BA:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF4F2:   Set var_DC = Me.Txt
  loc_14EF4F8:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H18), var_F8, CStr(Txt.DispID_41))
  loc_14EF500:   var_F8.Text = CVar(CLng(&H11))
  loc_14EF51C:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF554:   Set var_DC = Me.Txt
  loc_14EF55A:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H18), var_F8, CStr(Txt.DispID_41))
  loc_14EF562:   var_F8.Tag = CVar(CLng(&H12))
  loc_14EF57E:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF5B6:   Set var_DC = Me.Txt
  loc_14EF5BC:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H11), var_F8, CStr(Txt.DispID_41))
  loc_14EF5C4:   var_F8.Text = CVar(CLng(9))
  loc_14EF5E0:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF618:   Set var_DC = Me.Txt
  loc_14EF61E:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H11), var_F8, CStr(Txt.DispID_41))
  loc_14EF626:   var_F8.Tag = CVar(CLng(&HA))
  loc_14EF642:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF67A:   Set var_DC = Me.Txt
  loc_14EF680:   Call 0.Method_Proc_43_61_14EF9800 (CInt(4), var_F8, CStr(Txt.DispID_41))
  loc_14EF688:   var_F8.Text = CVar(CLng(&H13))
  loc_14EF6A4:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF6DC:   Set var_DC = Me.Txt
  loc_14EF6E2:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H1B), var_F8, CStr(Txt.DispID_41))
  loc_14EF6EA:   var_F8.Tag = CVar(CLng(&H18))
  loc_14EF706:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF73E:   Set var_DC = Me.Txt
  loc_14EF744:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H1B), var_F8, CStr(Txt.DispID_41))
  loc_14EF74C:   var_F8.Text = CVar(CLng(6))
  loc_14EF768:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF7A0:   Set var_DC = Me.Txt
  loc_14EF7A6:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H1C), var_F8, CStr(Txt.DispID_41))
  loc_14EF7AE:   var_F8.Tag = CVar(CLng(&H16))
  loc_14EF7CA:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EF7F4:   var_F0 = CStr(Txt.DispID_41)
  loc_14EF802:   Set var_DC = Me.Txt
  loc_14EF808:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H1C), var_F8, var_F0)
  loc_14EF810:   var_F8.Text = CVar(CLng(&H17))
  loc_14EF839:   Set var_88 = Me.Txt
  loc_14EF83F:   Call 0.Method_Proc_43_61_14EF9800 (CInt(&H1C), var_DC, var_F0)
  loc_14EF847:   "Code='" = var_DC.Tag
  loc_14EF861:   Me.Filter = CVar(CVar(CLng(Txt.DispID_A)) & var_F0 & "'")
  loc_14EF88E:   If (Me.RecordCount > 0) Then
  loc_14EF8D0:     If (Me.Fields.Item("CompanyType").Value = "Travel Agency") Then
  loc_14EF8DF:       (&HFF).Visible = 
  loc_14EF8EB:       Set var_88 = ()
  loc_14EF90B:       Set var_DC = CVar(CLng(Txt.DispID_A))(CVar(CLng(&H19)))
  loc_14EF935:       If (CStr(Txt.DispID_41) = "Yes") Then
  loc_14EF944:         (1).Value = 
  loc_14EF94C:       End If
  loc_14EF94F:     Else
  loc_14EF95B:       (0).Visible = 
  loc_14EF963:     End If
  loc_14EF963:   End If
  loc_14EF972:   Me.Filter = 0
  loc_14EF979:   Set var_F4 = Nothing 
  loc_14EF97D: End If
  loc_14EF97D: Exit Sub
End Sub
