VERSION 5.00
Begin VB.Form memCategoryFacilities
  Caption = "Category wise Facility"
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
  ClientWidth = 8955
  ClientHeight = 7545
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8955
    Height = 450
    TabIndex = 9
  End
  Begin Frame FrmList
    Left = 14385
    Top = 4080
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 105
      Top = 15
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1920
    Top = 2910
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4605
    Top = 1485
    Width = 3510
    Height = 285
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4605
    Top = 1800
    Width = 1425
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
  Begin DataGrid DGCategory
    Left = 14145
    Top = 540
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin MSHFlexGrid FGrid
    Left = 1650
    Top = 2625
    Width = 11160
    Height = 4275
    TabIndex = 2
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 195
    Top = 8115
    Width = 2520
    Height = 255
    TabIndex = 11
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
    Left = 180
    Top = 8445
    Width = 2430
    Height = 285
    TabIndex = 10
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
  Begin Label LblName
    Caption = "Member Category Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2220
    Top = 1485
    Width = 2310
    Height = 240
    TabIndex = 6
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
    Caption = "App.Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 2220
    Top = 1800
    Width = 870
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

Attribute VB_Name = "memCategoryFacilities"

Private global_64 As Variant
Private global_92 As Integer
Private global_94 As Integer
Private global_96 As Integer
Private global_98 As Integer
Private MasterFormExit As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '1040A4C
  'Data Table: 48AB6C
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim var_104 As TextBox
  loc_104080C: Call Proc_269_61_E5431C()
  loc_1040824: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_104083F: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1040848: Set var_BC = Me.FGrid
  loc_1040871: var_10C = CStr(Me.FGrid.TextMatrix))
  loc_104087E: Set var_104 = Me.TxtGrid
  loc_1040884: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_10C)
  loc_104088C: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_10408BD: var_110 = CLng(Me.FGrid.Col)
  loc_10408CD: If (var_110 = CLng(4)) Then
  loc_10408DF:   Set var_A8 = Me.TxtGrid
  loc_10408E5:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HF)
  loc_10408ED:   var_BC.MaxLength = var_110
  loc_1040906:   ReDim var_114(0 To 1)
  loc_104091D:   var_114(0) = "Fixed"
  loc_104092C:   var_114(1) = "Memberwise"
  loc_1040943:   global_64 = Array(var_114)
  loc_104094E:   Set var_104 = Me.ListView
  loc_1040969:   Set var_BC = Me.TxtGrid
  loc_1040983:   Set global_80 = Proc_6_66_F0048C(var_104, var_BC, Index, global_64)
  loc_10409A1:   Set var_A8 = Me.TxtGrid
  loc_10409A7:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_10409AF:   2 = var_BC.Text
  loc_10409C1:   Set var_F0 = Me.TxtGrid
  loc_10409C7:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, var_10C)
  loc_10409CF:   var_104.Tag = global_64
  loc_10409E5: Else
  loc_10409EC:   If Not (var_110 = CLng(5)) Then
  loc_10409F6:     If Not (var_110 = CLng(7)) Then
  loc_1040A00:       If Not (var_110 = CLng(6)) Then
  loc_1040A0A:         If Not (var_110 = CLng(9)) Then
  loc_1040A14:           If Not (var_110 = CLng(&HA)) Then
  loc_1040A1E:             If (var_110 = CLng(8)) Then
  loc_1040A21:             End If
  loc_1040A21:           End If
  loc_1040A21:         End If
  loc_1040A21:       End If
  loc_1040A21:     End If
  loc_1040A30:     Set var_A8 = Me.TxtGrid
  loc_1040A36:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_1040A3E:     var_BC.MaxLength = &HB
  loc_1040A4A:   End If
  loc_1040A4A: End If
  loc_1040A4A: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11B2AE4
  'Data Table: 48AB6C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  loc_11B26CC: On Error Goto loc_11B2ADD
  loc_11B26D9: If (CLng(Shift) = &H1B) Then
  loc_11B26E9:   Set var_88 = Me.TxtGrid
  loc_11B26EF:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_11B2709:   Set var_94 = Me.TxtGrid
  loc_11B270F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_11B2717:   var_98.Text = var_8C.Tag
  loc_11B2733:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11B2738:   Call Proc_269_61_E5431C(arg_14)
  loc_11B2741:   Set var_88 = Me.FGrid
  loc_11B275E:   Set var_88 = Me.TxtGrid
  loc_11B2764:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_11B276C:   var_8C.Visible = False
  loc_11B2778:   Exit Sub
  loc_11B2779: End If
  loc_11B278C: var_AC = CLng(Me.FGrid.Col)
  loc_11B279C: If (var_AC = CLng(3)) Then
  loc_11B27A9:   If (CLng(Shift) = &HD) Then
  loc_11B27B2:     Call Proc_269_57_1037604(KeyCode, var_AE)
  loc_11B27BD:     If (var_AE = &HFF) Then
  loc_11B27CB:       Set var_98 = Me.TxtGrid
  loc_11B27F4:       Set var_8C = var_98
  loc_11B2803:       Proc_6_62_1254E68(Me.FGrid, var_8C, KeyCode, Shift, global_94, &HA)
  loc_11B2813:     End If
  loc_11B2813:   End If
  loc_11B2816: Else
  loc_11B281D:   If (var_AC = CLng(4)) Then
  loc_11B2842:     Set var_88 = Me.TxtGrid
  loc_11B2848:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B8, 0)
  loc_11B2850:     4 = var_8C.Left
  loc_11B2862:     Set var_94 = Me.TxtGrid
  loc_11B2868:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98, var_BC)
  loc_11B2870:     0 = var_98.Top
  loc_11B2882:     Set var_C0 = Me.TxtGrid
  loc_11B2888:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C4, var_C8)
  loc_11B2890:     var_AC = var_C4.Height
  loc_11B28A2:     Set var_CC = Me.TxtGrid
  loc_11B28A8:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_D0)
  loc_11B28B0:     var_D4 = var_D0.Width
  loc_11B28F8:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_11B2926:     If (CLng(Shift) = &HD) Then
  loc_11B292F:       Call Proc_269_57_1037604(KeyCode, var_AE, CInt(var_B8), CInt((var_BC + var_C8)))
  loc_11B293A:       If (var_AE = &HFF) Then
  loc_11B2980:         Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, &HA)
  loc_11B2990:       End If
  loc_11B2990:     End If
  loc_11B2993:   Else
  loc_11B299A:     If Not (var_AC = CLng(5)) Then
  loc_11B29A4:       If Not (var_AC = CLng(7)) Then
  loc_11B29AE:         If Not (var_AC = CLng(6)) Then
  loc_11B29B8:           If Not (var_AC = CLng(8)) Then
  loc_11B29C2:             If (var_AC = CLng(9)) Then
  loc_11B29C5:             End If
  loc_11B29C5:           End If
  loc_11B29C5:         End If
  loc_11B29C5:       End If
  loc_11B29CF:       If (CLng(Shift) = &HD) Then
  loc_11B29D8:         Call Proc_269_57_1037604(KeyCode, var_AE, 0, 5)
  loc_11B29E3:         If (var_AE = &HFF) Then
  loc_11B29FE:           var_A8 = Me.FGrid.Col
  loc_11B2A47:           Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, &HA, 0)
  loc_11B2A5C:         End If
  loc_11B2A5C:       End If
  loc_11B2A5F:     Else
  loc_11B2A66:       If (var_AC = CLng(&HA)) Then
  loc_11B2A73:         If (CLng(Shift) = &HD) Then
  loc_11B2A7C:           Call Proc_269_57_1037604(KeyCode, var_AE, CByte((CLng(var_A8) + 1)), 0, var_A8)
  loc_11B2A87:           If (var_AE = &HFF) Then
  loc_11B2ACD:             Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, &HA, 0)
  loc_11B2ADD:           End If
  loc_11B2ADD:         End If
  loc_11B2ADD:       End If
  loc_11B2ADD:       ' Referenced from: 11B26CC
  loc_11B2ADD:     End If
  loc_11B2ADD:   End If
  loc_11B2ADD: End If
  loc_11B2ADD: Proc_6_60_E63754(&HA, 0, 0)
  loc_11B2AE2: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'ECCC98
  'Data Table: 48AB6C
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_ECCBF3: Proc_6_58_E06050(arg_10)
  loc_ECCC04: If (KeyAscii = 0) Then
  loc_ECCC1A:   var_A0 = CLng(Me.FGrid.Col)
  loc_ECCC2A:   If Not (var_A0 = CLng(5)) Then
  loc_ECCC34:     If Not (var_A0 = CLng(6)) Then
  loc_ECCC3E:       If Not (var_A0 = CLng(9)) Then
  loc_ECCC48:         If Not (var_A0 = CLng(7)) Then
  loc_ECCC52:           If Not (var_A0 = CLng(8)) Then
  loc_ECCC5C:             If (var_A0 = CLng(&HA)) Then
  loc_ECCC5F:             End If
  loc_ECCC5F:           End If
  loc_ECCC5F:         End If
  loc_ECCC5F:       End If
  loc_ECCC5F:     End If
  loc_ECCC69:     Set var_8C = Me.TxtGrid
  loc_ECCC6F:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_ECCC8A:     Proc_6_42_129B55C(var_A4, arg_10, 8)
  loc_ECCC96:   End If
  loc_ECCC96: End If
  loc_ECCC96: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EECD1C
  'Data Table: 48AB6C
  loc_EECC58: On Error Goto loc_EECD14
  loc_EECC7E: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_EECCA3:   If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_EECCB4:     Call TxtGrid_KeyDown(KeyCode, global_92)
  loc_EECCB9:   End If
  loc_EECCD4:   If (Me.FrmList.Visible = &HFF) Then
  loc_EECD03:     Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, KeyCode, Shift)
  loc_EECD13:   End If
  loc_EECD13: End If
  loc_EECD13: Exit Sub
  loc_EECD14: ' Referenced from: EECC58
  loc_EECD14: Proc_6_60_E63754(global_80, 0)
  loc_EECD19: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21464
  'Data Table: 48AB6C
  Dim arg_10 As Integer
  loc_E2144C: If (Cancel = 0) Then
  loc_E21455:   Call Proc_269_57_1037604(Cancel, var_88)
  loc_E2145E:   arg_10 = Not(var_88)
  loc_E21461: End If
  loc_E21461: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_9 'F41AB4
  'Data Table: 48AB6C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F419AB: Me.DGCategory.Visible = False
  loc_F419CA: If (Me.RecordCount > 0) Then
  loc_F41A09:   Set var_B4 = Me.Txt
  loc_F41A0F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0), var_B8)
  loc_F41A17:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F41A4A:   var_B0 = Me.Fields.Item("Code")
  loc_F41A69:   Set var_B4 = Me.Txt
  loc_F41A6F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0), var_B8)
  loc_F41A77:   var_B8.Tag = CStr(var_B0.Value)
  loc_F41A8D: End If
  loc_F41A98: Set var_A8 = Me.Txt
  loc_F41A9E: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0))
  loc_F41AA6: var_B0.SetFocus
  loc_F41AB2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E51F14
  'Data Table: 48AB6C
  loc_E51EEE: Set var_88 = Me.Txt
  loc_E51EF4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E51F02: Proc_6_74_E23240(var_8C)
  loc_E51F0E: Call Proc_269_61_E5431C(var_8C)
  loc_E51F13: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F1BE58
  'Data Table: 48AB6C
  loc_F1BD72: If (CLng(Shift) = &H1B) Then
  loc_F1BD75:   Call Proc_269_61_E5431C()
  loc_F1BD7A:   Exit Sub
  loc_F1BD7B: End If
  loc_F1BD89: If (KeyCode = CInt(0)) Then
  loc_F1BDA4:   Set var_9C = Nothing
  loc_F1BDAF:   Set var_98 = Nothing
  loc_F1BDDD:   Proc_6_69_134A630(Me.DGCategory, Me.Txt, KeyCode, global_104, Shift, 0)
  loc_F1BDF1: End If
  loc_F1BE0D: If (CBool(Me.DGCategory.Visible) = 0) Then
  loc_F1BE25:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F1BE2E:     Proc_6_75_E5335C(Shift, arg_14, 1, var_98)
  loc_F1BE33:   End If
  loc_F1BE48:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F1BE51:     Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_F1BE56:   End If
  loc_F1BE56: End If
  loc_F1BE56: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E09A90
  'Data Table: 48AB6C
  Dim var_86 As Integer
  loc_E09A83: Proc_6_58_E06050(arg_10)
  loc_E09A8B: var_86 = KeyAscii
  loc_E09A8E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA62A8
  'Data Table: 48AB6C
  loc_EA623A: If (KeyCode = CInt(0)) Then
  loc_EA6259:   If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_EA626D:     var_A4 = "Name"
  loc_EA6291:     Proc_6_68_12A2818(Me.DGCategory, Me.Txt, KeyCode, global_104)
  loc_EA62A4:   End If
  loc_EA62A4: End If
  loc_EA62A4: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A5AC
  'Data Table: 48AB6C
  loc_E4A58A: Set var_88 = Me.Txt
  loc_E4A590: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A59E: Proc_6_73_E23294(var_8C)
  loc_E4A5AA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10D06A4
  'Data Table: 48AB6C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_C8 As TextBox
  loc_10D03A7: var_86 = Cancel
  loc_10D03B2: If (var_86 = CInt(0)) Then
  loc_10D03C0:   Set var_8C = Me.Txt
  loc_10D03C6:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10D03CE:   var_98 = "Member Category Name"
  loc_10D03EF:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_10D03FD:     Set var_8C = Me.Txt
  loc_10D0403:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10D040B:     var_90.SetFocus
  loc_10D0419:     arg_10 = &HFF
  loc_10D041C:     Exit Sub
  loc_10D041D:   End If
  loc_10D046B:   Set var_8C = Me.Txt
  loc_10D0471:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_10D0479:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10D0491:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_10D04A1:     Set var_8C = Me.Txt
  loc_10D04A7:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D04AF:     var_90.Text = vbNullString
  loc_10D04C8:     Set var_8C = Me.Txt
  loc_10D04CE:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D04D6:     var_90.Tag = vbNullString
  loc_10D04E5:   Else
  loc_10D0520:     Set var_94 = Me.Txt
  loc_10D0526:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10D052E:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10D0561:     var_90 = Me.Fields.Item("Code")
  loc_10D057F:     Set var_94 = Me.Txt
  loc_10D0585:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10D058D:     var_B4.Tag = CStr(var_90.Value)
  loc_10D05A3:   End If
  loc_10D05A6: Else
  loc_10D05AE:   If (var_86 = CInt(1)) Then
  loc_10D05BC:     Set var_8C = Me.Txt
  loc_10D05C2:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10D05EB:     If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_10D05F9:       Set var_8C = Me.Txt
  loc_10D05FF:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10D0607:       var_90.SetFocus
  loc_10D0615:       arg_10 = &HFF
  loc_10D0618:       Exit Sub
  loc_10D0619:     End If
  loc_10D0623:     Set var_8C = Me.Txt
  loc_10D0629:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D0649:     Set var_B4 = Me.Txt
  loc_10D064F:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_10D0657:     var_C8.Text = Proc_6_33_15125B8(var_90, arg_10)
  loc_10D067D:     Me.FGrid.Row = 1
  loc_10D0698:     Me.FGrid.Col = 1
  loc_10D06A0:   End If
  loc_10D06A0: End If
  loc_10D06A0: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5CB3C
  'Data Table: 48AB6C
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5CA5E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5CA65:   Set var_A8 = Me.ListView
  loc_F5CAAF:   Set var_C0 = Me.TxtGrid
  loc_F5CAB5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5CABD:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5CADD: End If
  loc_F5CAE9: Me.FrmList.Visible = False
  loc_F5CB19: Set var_9C = Me.TxtGrid
  loc_F5CB1F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5CB27: var_A8.SetFocus
  loc_F5CB3B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E87030
  'Data Table: 48AB6C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E86FD3: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E86FE6: Set var_A8 = Me.TxtGrid
  loc_E86FEC: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E86FF4: var_AC.Visible = False
  loc_E8700E: Set var_A8 = Me.TxtGrid
  loc_E87014: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E8701C: var_AC.MaxLength = 0
  loc_E87028: Call Proc_269_61_E5431C()
  loc_E8702D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E674B8
  'Data Table: 48AB6C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67474: Set var_88 = Me.TxtGrid
  loc_E6747A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E67494: If (var_8C.Visible = 0) Then
  loc_E674AD:   Me.FGrid.BackColorSel = CVar(CLng(global_84))
  loc_E674B5: End If
  loc_E674B5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E20030
  'Data Table: 48AB6C
  loc_E20027: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E2002F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E00554
  'Data Table: 48AB6C
  loc_E0054C: Call Proc_269_56_101E840()
  loc_E00551: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '110B39C
  'Data Table: 48AB6C
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_110B05C: Set var_88 = Me.TopCtrl1
  loc_110B062: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_110B0A7: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_110B0B0:   Call Form_KeyDown(Cancel, arg_10)
  loc_110B0B5: End If
  loc_110B0B9: Set var_88 = Me.TopCtrl1
  loc_110B0BF: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_110B0D8: If (CStr() = "Browse") Then
  loc_110B0DB:   Exit Sub
  loc_110B0DC: End If
  loc_110B150: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_110B166:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_110B176:   var_9C = "+{Tab}"
  loc_110B17C:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_110B186:   Cancel = 0
  loc_110B18C: Else
  loc_110B196:   var_B0 = Me.FGrid.Rows
  loc_110B1E3:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_110B1F9:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_110B20F:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_110B219:     Cancel = 0
  loc_110B21C:   End If
  loc_110B21C: End If
  loc_110B222: global_92 = Cancel
  loc_110B248: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_110B26C: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_110B282:   var_EC = CLng(Me.FGrid.Col)
  loc_110B292:   If (var_EC = CLng(4)) Then
  loc_110B2A8:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110B2C0:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_110B2C5:     var_11C = vbNullString
  loc_110B2CF:     Set var_B4 = Me.FGrid
  loc_110B2D5:     LateIdCallSt
  loc_110B2F0:   Else
  loc_110B2F7:     If Not (var_EC = CLng(5)) Then
  loc_110B301:       If Not (var_EC = CLng(6)) Then
  loc_110B30B:         If Not (var_EC = CLng(7)) Then
  loc_110B315:           If Not (var_EC = CLng(8)) Then
  loc_110B31F:             If Not (var_EC = CLng(9)) Then
  loc_110B329:               If (var_EC = CLng(&HA)) Then
  loc_110B32C:               End If
  loc_110B32C:             End If
  loc_110B32C:           End If
  loc_110B32C:         End If
  loc_110B32C:       End If
  loc_110B33F:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110B357:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_110B35C:       var_11C = "0.00"
  loc_110B366:       Set var_B4 = Me.FGrid
  loc_110B36C:       LateIdCallSt
  loc_110B384:     End If
  loc_110B384:   End If
  loc_110B384: End If
  loc_110B38A: If (Cancel = &HD) Then
  loc_110B392:   global_94 = 0
  loc_110B395: End If
  loc_110B397: Cancel = 0
  loc_110B39A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E158B0
  'Data Table: 48AB6C
  loc_E158A1: Call FGrid_UnknownEvent_C()
  loc_E158AB: global_94 = 0
  loc_E158AE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1148C24
  'Data Table: 48AB6C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1148894: Set var_88 = Me.TopCtrl1
  loc_114889A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11488B3: If (CStr() = "Browse") Then
  loc_11488B6:   Exit Sub
  loc_11488B7: End If
  loc_11488BB: Set var_88 = Me.TopCtrl1
  loc_11488C1: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11488DA: If (CStr() = "Browse") Then
  loc_11488DD:   Exit Sub
  loc_11488DE: End If
  loc_11488F1: var_A0 = CLng(Me.FGrid.Col)
  loc_1148901: If (var_A0 = CLng(1)) Then
  loc_114890A:   If (Cancel = &H20) Then
  loc_114890D:     Call Proc_269_56_101E840(var_A0)
  loc_1148912:   End If
  loc_1148915: Else
  loc_114891C:   If Not (var_A0 = CLng(3)) Then
  loc_1148926:     If (var_A0 = CLng(4)) Then
  loc_1148929:     End If
  loc_114892D:     Set var_C4 = Me.FGrid
  loc_1148951:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_114895A:     var_CA = Asc(var_9C)
  loc_114897E:     Set var_B4 = var_C4
  loc_1148990:     Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0)
  loc_11489B8:     Set var_88 = Me.TxtGrid
  loc_11489BE:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, 0)
  loc_11489C6:     var_CA = var_B4.Text
  loc_11489DF:     If (Len(var_9C) <= 1) Then
  loc_11489EE:       Set var_88 = Me.TxtGrid
  loc_11489F4:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_11489FC:       0 = var_B4.Text
  loc_1148A0D:       Set var_B8 = Me.TxtGrid
  loc_1148A13:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1148A1B:       var_C4.Text = var_9C
  loc_1148A2E:     End If
  loc_1148A3A:     Set var_88 = Me.TxtGrid
  loc_1148A40:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1148A5A:     Set var_B8 = Me.TxtGrid
  loc_1148A60:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1148A68:     var_C4.SelStart = Len(var_B4.Text)
  loc_1148A7E:   Else
  loc_1148A85:     If Not (var_A0 = CLng(5)) Then
  loc_1148A8F:       If Not (var_A0 = CLng(6)) Then
  loc_1148A99:         If Not (var_A0 = CLng(7)) Then
  loc_1148AA3:           If Not (var_A0 = CLng(8)) Then
  loc_1148AAD:             If Not (var_A0 = CLng(9)) Then
  loc_1148AB7:               If (var_A0 = CLng(&HA)) Then
  loc_1148ABA:               End If
  loc_1148ABA:             End If
  loc_1148ABA:           End If
  loc_1148ABA:         End If
  loc_1148ABA:       End If
  loc_1148ABE:       Set var_C4 = Me.FGrid
  loc_1148AE2:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1148B0F:       Set var_B4 = var_C4
  loc_1148B21:       Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_1148B49:       Set var_88 = Me.TxtGrid
  loc_1148B4F:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1148B57:       0 = var_B4.Text
  loc_1148B70:       If (Len(var_9C) <= 1) Then
  loc_1148B7F:         Set var_88 = Me.TxtGrid
  loc_1148B85:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1148B8D:         var_CA = var_B4.Text
  loc_1148B9E:         Set var_B8 = Me.TxtGrid
  loc_1148BA4:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1148BAC:         var_C4.Text = var_9C
  loc_1148BBF:       End If
  loc_1148BCB:       Set var_88 = Me.TxtGrid
  loc_1148BD1:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1148BEB:       Set var_B8 = Me.TxtGrid
  loc_1148BF1:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1148BF9:       var_C4.SelStart = Len(var_B4.Text)
  loc_1148C0C:     End If
  loc_1148C0C:   End If
  loc_1148C0C: End If
  loc_1148C16: If (CLng(Cancel) <> &HD) Then
  loc_1148C1E:   global_94 = &HFF
  loc_1148C21: End If
  loc_1148C21: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E27E04
  'Data Table: 48AB6C
  loc_E27DF7: global_96 = CInt(CLng(Me.FGrid.Row))
  loc_E27E00: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_10 'E28648
  'Data Table: 48AB6C
  loc_E2863B: global_98 = CInt(CLng(Me.FGrid.RowSel))
  loc_E28644: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1FE50
  'Data Table: 48AB6C
  loc_E1FE47: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1FE4F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1FF90
  'Data Table: 48AB6C
  loc_E1FF87: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1FF8F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E44928
  'Data Table: 48AB6C
  Dim var_8C As TextBox
  loc_E448FC: Call Proc_269_61_E5431C()
  loc_E4490C: Set var_88 = Me.TxtGrid
  loc_E44912: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4491A: var_8C.Visible = False
  loc_E44926: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EB0FC0
  'Data Table: 48AB6C
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_EB0F2C: On Error Goto loc_EB0FB7
  loc_EB0F52: Call Proc_269_60_E7CC84(Proc_5_1_100EC1C("ADD", Me))
  loc_EB0F5D: Call Proc_269_58_F189C8(global_100)
  loc_EB0F6F: Me.LblUser.Caption = vbNullString
  loc_EB0F84: Me.LblLDt.Caption = vbNullString
  loc_EB0F8C: Call Proc_269_53_1269DD8()
  loc_EB0F9C: Set var_8C = Me.Txt
  loc_EB0FA2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EB0FAA: var_94.SetFocus
  loc_EB0FB6: Exit Sub
  loc_EB0FB7: ' Referenced from: EB0F2C
  loc_EB0FB7: Proc_6_60_E63754(var_94)
  loc_EB0FBC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EE97D0
  'Data Table: 48AB6C
  loc_EE9714: On Error Goto loc_EE97C9
  loc_EE974E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE9774:   Call Proc_269_60_E7CC84(Proc_5_1_100EC1C("INI", Me))
  loc_EE9787:   Set var_10C = Me.TopCtrl1
  loc_EE978D:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EE979E:   Set var_10C = Me.TopCtrl1
  loc_EE97A4:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_EE97B5:   Set var_10C = Me.TopCtrl1
  loc_EE97BB:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EE97C3:   Call Proc_269_59_13AB4F8(global_100)
  loc_EE97C8: End If
  loc_EE97C8: Exit Sub
  loc_EE97C9: ' Referenced from: EE9714
  loc_EE97C9: Proc_6_60_E63754()
  loc_EE97CE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16B90
  'Data Table: 48AB6C
  loc_E16B85: Me.Global.Unload Me
  loc_E16B8D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC9100
  'Data Table: 48AB6C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EC9060: On Error Goto loc_EC90F8
  loc_EC907A: If (Me.RecordCount <= 0) Then
  loc_EC9083:   var_B8 = "Information"
  loc_EC909E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC90AE:   Exit Sub
  loc_EC90AF: End If
  loc_EC90B6: var_10C = "Select DISTINCT (CF.MemCatCode+Space(6-len(CF.MemCatCode))+'**'+Convert(Varchar(11),CF.AppDate,103)) AS Code,M.Name As MemberCategory,Convert(Varchar(11),CF.AppDate,106)  As AppDate From (MemCatFacility CF Left Join MemCatMast M On CF.MemCatCode=M.Code) Where (CF.LOGSITE_CODE='" & MemVar_1F95078
  loc_EC90BD: MemVar_1F950E4 = var_10C & "' or CF.LOGSITE_CODE='HO') Order By (CF.MemCatCode+Space(6-len(CF.MemCatCode))+'**'+Convert(Varchar(11),CF.AppDate,103))"
  loc_EC90CA: MemVar_1F95120 = Me
  loc_EC90D7: Proc_6_126_F1C850("3000,1500")
  loc_EC90F2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC90F7: Exit Sub
  loc_EC90F8: ' Referenced from: EC9060
  loc_EC90F8: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC90FD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2DA28
  'Data Table: 48AB6C
  loc_E2DA18: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2DA20: Call Proc_269_59_13AB4F8(global_100)
  loc_E2DA25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2DBA8
  'Data Table: 48AB6C
  loc_E2DB98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2DBA0: Call Proc_269_59_13AB4F8(global_100)
  loc_E2DBA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2DC68
  'Data Table: 48AB6C
  Dim var_B01 As Double
  loc_E2DC58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2DC60: Call Proc_269_59_13AB4F8(global_100)
  loc_E2DC65: Exit Sub
  loc_E2DC66: var_B01 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2E148
  'Data Table: 48AB6C
  loc_E2E138: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2E140: Call Proc_269_59_13AB4F8(global_100)
  loc_E2E145: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B6B4
  'Data Table: 48AB6C
  Dim Me As Recordset15
  loc_E0B6AB: Me.Requery -1
  loc_E0B6B0: Exit Sub
  loc_E0B6B1: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1459098
  'Data Table: 48AB6C
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As String
  Dim var_140 As Variant
  Dim var_90 As Variant
  Dim var_98 As String
  Dim var_1A0 As Variant
  Dim var_130 As Variant
  Dim unk_48AB6F As Connection15
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_1C8 As MSHFlexGrid
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_1EC As MSHFlexGrid
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_37C As Variant
  Dim var_39C As Variant
  Dim var_7CC As Double
  Dim var_7D4 As Double
  Dim var_7DC As Double
  Dim var_1BC As String
  Dim var_110 As Variant
  Dim var_1B0 As Variant
  Dim var_1D8 As Variant
  Dim var_21C As Variant
  Dim var_3E4 As Variant
  Dim var_654 As Variant
  Dim var_784 As Variant
  Dim var_1C4 As TextBox
  Dim Me As Recordset15
  loc_1458608: On Error Goto loc_1459046
  loc_145860F: var_86 = CByte(0) 'Byte
  loc_145861E: Set var_8C = Me.Txt
  loc_1458624: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_145864D: If (Proc_6_27_EA61EC(var_90, "Category Name") = 0) Then
  loc_1458657:   Call Txt_GotFocus(CInt(0))
  loc_145865C:   Exit Sub
  loc_145865D: End If
  loc_1458668: Set var_8C = Me.Txt
  loc_145866E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_90)
  loc_1458697: If (Proc_6_27_EA61EC(var_90, "App. Date") = 0) Then
  loc_14586A1:   Call Txt_GotFocus(CInt(1))
  loc_14586A6:   Exit Sub
  loc_14586A7: End If
  loc_14586AA: Call Proc_269_55_FC89AC(var_9A)
  loc_14586B5: If (var_9A = &HFF) Then
  loc_14586B8:   Exit Sub
  loc_14586B9: End If
  loc_14586DE: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_14586E8:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_14586F0:   var_E0 = CVar(CLng(2)) 'Long
  loc_1458710:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1458718:   var_120 = vbNullString
  loc_1458726:   var_140 = CVar(CLng(var_88)) 'Long
  loc_1458754:   var_1A0 = CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = "ü")
  loc_1458771:   If CBool(var_1A0) Then
  loc_1458778:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1458780:     var_E0 = CVar(CLng(4)) 'Long
  loc_14587BC:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Fixed") Then
  loc_14587C3:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_14587CB:       var_E0 = CVar(CLng(5)) 'Long
  loc_1458810:       If (CDbl(Val(CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))))) = CDbl(0)) Then
  loc_1458817:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_145881F:         var_E0 = CVar(CLng(3)) 'Long
  loc_1458866:         MsgBox("Fill Fixed Rate For Facility " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_1A0, var_1B0)
  loc_1458883:         Set var_8C = Me.FGrid
  loc_1458894:         Exit Sub
  loc_1458898:       Else
  loc_145889C:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_14588A4:         var_E0 = CVar(CLng(6)) 'Long
  loc_14588A9:         var_120 = "0.00"
  loc_14588B3:         Set var_8C = Me.FGrid
  loc_14588B9:         LateIdCallSt
  loc_14588C8:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_14588D0:         var_E0 = CVar(CLng(7)) 'Long
  loc_14588D5:         var_120 = "0.00"
  loc_14588DF:         Set var_8C = Me.FGrid
  loc_14588E5:         LateIdCallSt
  loc_14588F4:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_14588FC:         var_E0 = CVar(CLng(8)) 'Long
  loc_1458901:         var_120 = "0.00"
  loc_145890B:         Set var_8C = Me.FGrid
  loc_1458911:         LateIdCallSt
  loc_1458920:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_1458928:         var_E0 = CVar(CLng(9)) 'Long
  loc_145892D:         var_120 = "0.00"
  loc_1458937:         Set var_8C = Me.FGrid
  loc_145893D:         LateIdCallSt
  loc_145894C:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_1458954:         var_E0 = CVar(CLng(&HA)) 'Long
  loc_1458959:         var_120 = "0.00"
  loc_1458963:         Set var_8C = Me.FGrid
  loc_1458969:         LateIdCallSt
  loc_1458974:       End If
  loc_1458977:     Else
  loc_145897B:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1458983:       var_E0 = CVar(CLng(4)) 'Long
  loc_14589BF:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Memberwise") Then
  loc_14589C6:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_14589CE:         var_E0 = CVar(CLng(5)) 'Long
  loc_14589D3:         var_120 = "0.00"
  loc_14589DD:         Set var_8C = Me.FGrid
  loc_14589E3:         LateIdCallSt
  loc_14589EE:       End If
  loc_14589EE:     End If
  loc_14589EE:   End If
  loc_14589F1: Next var_B0 'Integer
  loc_14589FF: unk_48AB6F.BeginTrans var_1B4
  loc_1458A08: var_86 = CByte(1) 'Byte
  loc_1458A31: For var_1B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_1B8 'Integer
  loc_1458A3B:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1458A5D:   var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1458A8A:   Set var_90 = Me.FGrid
  loc_1458A9B:   var_98 = CStr(var_90.TextMatrix))
  loc_1458AC4:   If CBool(CVar(CLng(1)) And (var_98 = "ü")) Then
  loc_1458AD5:     Set var_8C = Me.Txt
  loc_1458ADB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90, var_98, CVar(CLng(var_88)))
  loc_1458AE3:     (Trim(var_100) <> vbNullString) = var_90.Tag
  loc_1458AF3:     Set var_94 = Me.Txt
  loc_1458AF9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, CVar(CLng(2)))
  loc_1458B08:     Proc_6_7_F26918(var_100, CVar(var_1C4))
  loc_1458B11:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_1458B19:     var_F0 = CVar(CLng(2)) 'Long
  loc_1458B38:     var_150 = CVar(CLng(var_88)) 'Long
  loc_1458B40:     var_170 = CVar(CLng(4)) 'Long
  loc_1458B49:     Set var_1EC = Me.FGrid
  loc_1458B5F:     var_24C = CVar(CLng(var_88)) 'Long
  loc_1458B67:     var_26C = CVar(CLng(5)) 'Long
  loc_1458B90:     var_2E4 = CVar(CLng(var_88)) 'Long
  loc_1458B98:     var_304 = CVar(CLng(6)) 'Long
  loc_1458BC1:     var_37C = CVar(CLng(var_88)) 'Long
  loc_1458BC9:     var_39C = CVar(CLng(7)) 'Long
  loc_1458C1C:     var_7CC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1458C4D:     var_7D4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1458C7E:     var_7DC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1458C85:     Set var_5D0 = Me.TopCtrl1
  loc_1458C8B:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_7DC)
  loc_1458CCD:     Proc_6_7_F26918(var_6D4, CVar(Proc_6_15_EF37AC(CVar(CLng(&HA)), CVar(CLng(var_88)), var_7D4, CVar(CLng(9)), CVar(CLng(var_88)), var_7CC)), CVar(CLng(8)), CVar(CLng(var_88)))
  loc_1458CE6:     var_1BC = "Insert Into MemCatFacility (MemCatCode,AppDate,FcCode,ChrgType,FixedRate,PMember,Spouse,Child,ExtraAdult,ExtraChild,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_1458D22:     var_21C = CVar(var_1BC & var_98 & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_1EC.TextMatrix))) 
  loc_1458D5E:     var_3E4 = var_21C & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1458DAA:     var_654 = var_3E4 & "," & CVar(var_7CC) & "," & CVar(var_7D4) & "," & CVar(var_7DC) & ",'" & IIf((CStr(var_5E0) = "Add"), "A", "E") 
  loc_1458DFC:     var_784 = var_654 & "','" & CVar(MemVar_1F950C8) & "'," & var_6D4 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')" 
  loc_1458E0A:     unk_48AB6F.Execute CStr(var_784), var_7A8, -1
  loc_1458EAA:   End If
  loc_1458EAD: Next var_1B8 'Integer
  loc_1458EB8: unk_48AB6F.CommitTrans
  loc_1458EC1: var_86 = CByte(0) 'Byte
  loc_1458ED0: Set var_1C8 = Me.Txt
  loc_1458ED6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1458EE9: Set var_8C = Me.Txt
  loc_1458EEF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90)
  loc_1458EFF: var_100 = CVar(var_90.Tag) 'String
  loc_1458F15: Set var_94 = Me.Txt
  loc_1458F1B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1C4, var_1BC)
  loc_1458F23: 6 = var_1C4.Tag
  loc_1458F30: var_AC = Space((var_100 - Len(var_1BC)))
  loc_1458F38: var_110 = (var_1EC + CVar(var_1C4))
  loc_1458F3C: var_C0 = "**"
  loc_1458F41: var_130 = (CVar(var_1BC & var_90.Tag & "',") + var_C0)
  loc_1458F6C: var_1D8 = (1 + Format(CVar(var_1EC), "dd/mm/yyyy"))
  loc_1458FAD: Me.Requery -1
  loc_1458FDA: Me.Find "SearchCode ='" & CStr(CVar(var_1BC & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'", 0, 1
  loc_1458FEA: Set var_8C = Me.TopCtrl1
  loc_1458FF0: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_1459009: If (CStr(1) = "Add") Then
  loc_145900C:   Call TopCtrl1_UnknownEvent_A()
  loc_1459011:   Exit Sub
  loc_1459012: End If
  loc_1459027: var_98 = "INI"
  loc_1459035: Call Proc_269_60_E7CC84(Proc_5_1_100EC1C(var_98, Me), global_100)
  loc_1459040: Call Proc_269_59_13AB4F8(CVar("SearchCode ='" & CStr(CVar(var_1BC & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'" & var_98 & "',") & var_100)
  loc_1459045: Exit Sub
  loc_1459046: ' Referenced from: 1458608
  loc_145904F: If (CInt(var_86) = 1) Then
  loc_1459058:   unk_48AB6F.RollbackTrans
  loc_145905D: End If
  loc_1459065: Set var_8C = Err()
  loc_145906B: Call 0.Method_arg_2C (var_98)
  loc_1459084: MsgBox(CVar(var_98), &H10, var_100, CVar("SearchCode ='" & CStr(CVar(var_1BC & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'" & var_98 & "',"), CVar("SearchCode ='" & CStr(CVar(var_1BC & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'" & var_98 & "',") & var_100)
  loc_1459097: Exit Sub
End Sub

Private Sub Form_Load() '1013A94
  'Data Table: 48AB6C
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  loc_101386C: On Error Goto loc_1013A8C
  loc_1013876: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_101388E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_10138A5: Me.LblUser.Left = CDbl(13500)
  loc_10138BC: Me.LblUser.Top = CDbl(7800)
  loc_10138D3: Me.LblLDt.Top = CDbl(8160)
  loc_10138EA: Me.LblLDt.Left = CDbl(13500)
  loc_10138FC: Set var_A8 = Me.TopCtrl1
  loc_1013902: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1013910: Call 0.Method_arg_50 (var_AC)
  loc_1013920: Set var_A8 = Me.TopCtrl1
  loc_1013926: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_101394D: Me.TopCtrl1.CursorLocation = 3
  loc_1013977: var_BC = CVar("Select Code,Name From MemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1013995: CVarUnk
  loc_101399A: VerifyVarObj
  loc_10139A0: Set var_A8 = Me.DGCategory
  loc_10139A6: LateIdStAd
  loc_10139D0: Me.DGCategory.CursorLocation = 3
  loc_10139F3: var_AC = "Select DISTINCT (CF.MemCatCode+Space(6-len(CF.MemCatCode))+'**'+Convert(Varchar(11),CF.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From MemCatFacility CF Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_10139FA: var_BC = CVar("Select Code,Name From MemCatMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order By (CF.MemCatCode+Space(6-len(CF.MemCatCode))+'**'+Convert(Varchar(11),CF.AppDate,103))") 'String
  loc_1013A04: r_BC, CVar(MemVar_1F95044), 3 var_BC, CVar(MemVar_1F95044), 3
  loc_1013A32: Call Proc_269_60_E7CC84(Proc_5_1_100EC1C("INI", Me, New, 1, -1), Me, New)
  loc_1013A45: Set var_A8 = Me.TopCtrl1
  loc_1013A4B: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_1013A5C: Set var_A8 = Me.TopCtrl1
  loc_1013A62: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_1013A73: Set var_A8 = Me.TopCtrl1
  loc_1013A79: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_1013A81: Call Proc_269_54_1238460(1)
  loc_1013A86: Call Proc_269_59_13AB4F8(-1)
  loc_1013A8B: Exit Sub
  loc_1013A8C: ' Referenced from: 101386C
  loc_1013A8C: Proc_6_60_E63754()
  loc_1013A91: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E467A4
  'Data Table: 48AB6C
  loc_E4677F: Set global_104 = Nothing
  loc_E46791: Set global_100 = Nothing
  loc_E4679D: MasterFormExit = 0
  loc_E467A0: Exit Sub
  loc_E467A3: Exit Sub
End Sub

Private Sub Form_Activate() 'E50800
  'Data Table: 48AB6C
  loc_E507D0: On Error Goto loc_E507FA
  loc_E507D7: Set var_88 = Me.TopCtrl1
  loc_E507DD: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E507F2: If (CLng(CInt()) = &H2D) Then
  loc_E507F5:   Call TopCtrl1_UnknownEvent_15()
  loc_E507FA:   ' Referenced from: E507D0
  loc_E507FA: End If
  loc_E507FA: Proc_6_60_E63754()
  loc_E507FF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26444
  'Data Table: 48AB6C
  loc_E26429: If (MasterFormExit = &HFF) Then
  loc_E26439:   Me.Global.Unload Me
  loc_E26441: End If
  loc_E26441: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E287BC
  'Data Table: 48AB6C
  loc_E28794: On Error Goto loc_E287B4
  loc_E287AB: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E287B3: Exit Sub
  loc_E287B4: ' Referenced from: E28794
  loc_E287B4: Proc_6_60_E63754(Shift)
  loc_E287B9: Exit Sub
End Sub

Public Function MasterFormExitGet() '48B6B8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '48B6C7
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '48B6D6
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '48B6E5
  SearchCode = Value
End Sub

Public Function global_60Get() '48B6F4
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '48B703
  global_60 = Value
End Sub

Public Function global_64Get() '48B712
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '48B721
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '48B730
  global_64 = Value
End Sub

Public Function global_80Get() '48B73F
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '48B74E
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '48B75D
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E97FA0
  'Data Table: 48AB6C
  Dim Me As Recordset15
  loc_E97F2E: On Error Goto loc_E97F97
  loc_E97F37: Me.MoveFirst
  loc_E97F61: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97F89: Proc_5_0_1107AD0(&HFF, Me, global_100)
  loc_E97F91: Call Proc_269_59_13AB4F8(0)
  loc_E97F96: Exit Sub
  loc_E97F97: ' Referenced from: E97F2E
  loc_E97F97: Proc_6_60_E63754(var_A0)
  loc_E97F9C: Exit Sub
End Sub

Public Sub Proc_269_53_1269DD8
  'Data Table: 48AB6C
  Dim var_B0 As Variant
  Dim var_90 As String
  Dim var_A0 As Variant
  Dim var_8C As Recordset15
  Dim var_C8 As Variant
  Dim var_86 As Integer
  Dim var_C4 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_144 As Variant
  loc_1269850: Set var_8C = New 
  loc_126985B: Me.Recordset15.CursorLocation = 3
  loc_126987E: var_90 = "Select Code,Name,FixedRate,ChargeType,PrimaryMember,Spouse,Child,AddAdult,AddChild From MemFacilityMast where ActiveYN='Y' And (LOGSITE_CODE='" & MemVar_1F95078
  loc_126988C: var_8C.Open CVar(var_90 & "' or LOGSITE_CODE='HO') Order By Name"), CVar(MemVar_1F95044), 3
  loc_12698AB: If (var_8C.RecordCount = 0) Then
  loc_12698C1:   Me.FGrid.Rows = 2
  loc_12698DC:   Me.FGrid.FixedRows = 1
  loc_12698E4:   Exit Sub
  loc_12698E5: End If
  loc_12698F9: If (var_8C.RecordCount > 0) Then
  loc_126990F:   Me.FGrid.Rows = 1
  loc_1269919:   var_86 = 1
  loc_126991C:   ' Referenced from: 1269D74
  loc_126992B:   If Not(var_8C.EOF) Then
  loc_1269933:     var_A0 = CVar(CStr(var_86)) 'String
  loc_126993B:     Set var_C8 = Me.FGrid
  loc_1269953:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_126995B:     var_F0 = CVar(CLng(3)) 'Long
  loc_126998B:     var_110 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1269993:     Set var_124 = Me.FGrid
  loc_1269999:     LateIdCallSt
  loc_12699B5:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_12699BD:     var_F0 = CVar(CLng(2)) 'Long
  loc_12699ED:     var_110 = CVar(CStr(var_8C.Fields.Item("Code").Value)) 'String
  loc_12699F5:     Set var_124 = Me.FGrid
  loc_12699FB:     LateIdCallSt
  loc_1269A17:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_1269A1F:     var_F0 = CVar(CLng(4)) 'Long
  loc_1269A4F:     var_110 = CVar(CStr(var_8C.Fields.Item("ChargeType").Value)) 'String
  loc_1269A57:     Set var_124 = Me.FGrid
  loc_1269A5D:     LateIdCallSt
  loc_1269A95:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1269A9D:     var_100 = CVar(CLng(5)) 'Long
  loc_1269ACA:     var_144 = CVar(CStr(Format(CVar(var_8C.Fields.Item("FixedRate")), "0.00"))) 'String
  loc_1269AD2:     Set var_124 = Me.FGrid
  loc_1269AD8:     LateIdCallSt
  loc_1269B12:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1269B1A:     var_100 = CVar(CLng(6)) 'Long
  loc_1269B47:     var_144 = CVar(CStr(Format(CVar(var_8C.Fields.Item("PrimaryMember")), "0.00"))) 'String
  loc_1269B4F:     Set var_124 = Me.FGrid
  loc_1269B55:     LateIdCallSt
  loc_1269B8F:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1269B97:     var_100 = CVar(CLng(7)) 'Long
  loc_1269BC4:     var_144 = CVar(CStr(Format(CVar(var_8C.Fields.Item("Spouse")), "0.00"))) 'String
  loc_1269BCC:     Set var_124 = Me.FGrid
  loc_1269BD2:     LateIdCallSt
  loc_1269C0C:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1269C14:     var_100 = CVar(CLng(8)) 'Long
  loc_1269C41:     var_144 = CVar(CStr(Format(CVar(var_8C.Fields.Item("Child")), "0.00"))) 'String
  loc_1269C49:     Set var_124 = Me.FGrid
  loc_1269C4F:     LateIdCallSt
  loc_1269C89:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1269C91:     var_100 = CVar(CLng(9)) 'Long
  loc_1269CBE:     var_144 = CVar(CStr(Format(CVar(var_8C.Fields.Item("AddAdult")), "0.00"))) 'String
  loc_1269CC6:     Set var_124 = Me.FGrid
  loc_1269CCC:     LateIdCallSt
  loc_1269D06:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1269D0E:     var_100 = CVar(CLng(&HA)) 'Long
  loc_1269D3B:     var_144 = CVar(CStr(Format(CVar(var_8C.Fields.Item("addChild")), "0.00"))) 'String
  loc_1269D43:     Set var_124 = Me.FGrid
  loc_1269D49:     LateIdCallSt
  loc_1269D69:     var_86 = (var_86 + 1)
  loc_1269D6F:     var_8C.MoveNext
  loc_1269D74:     GoTo loc_126991C
  loc_1269D77:   End If
  loc_1269D77: End If
  loc_1269D96: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1269D99:   var_B0 = "1"
  loc_1269DA3:   Set var_C8 = Me.FGrid
  loc_1269DB4: End If
  loc_1269DC7: Me.FGrid.FixedRows = 1
  loc_1269DD4: Set var_8C = Nothing
  loc_1269DD7: Exit Sub
End Sub

Public Sub Proc_269_54_1238460
  'Data Table: 48AB6C
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_1237F30: On Error Goto loc_123845A
  loc_1237F41: Set var_88 = Me.Txt
  loc_1237F47: Call 0.Method_Proc_269_54_12384600 (CInt(0), var_8C)
  loc_1237F66: Me.DGCategory.Left = CVar(var_8C.Left)
  loc_1237F82: Set var_B4 = Me.Txt
  loc_1237F88: Call 0.Method_Proc_269_54_12384600 (CInt(0), var_B8)
  loc_1237FA3: Set var_88 = Me.Txt
  loc_1237FA9: Call 0.Method_Proc_269_54_12384600 (CInt(0), var_8C)
  loc_1237FC1: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1237FD0: Me.DGCategory.Top = CVar(var_8C.Left)
  loc_1237FE6: Set var_C4 = Me.FGrid
  loc_1237FF5: var_C4.Height = CVar(CDbl(4250))
  loc_1238006: var_C4.Width = CVar(CDbl(11350))
  loc_1238017: var_C4.Cols = &HB
  loc_1238028: var_C4.Rows = 2
  loc_1238039: var_C4.FixedCols = 1
  loc_1238052: global_84 = CStr(CLng(var_C4.BackColor))
  loc_123805F: var_A0 = CVar(CLng(0)) 'Long
  loc_1238064: var_E8 = 0
  loc_1238070: LateIdCallSt
  loc_123807B: var_A0 = CVar(CLng(1)) 'Long
  loc_1238080: var_E8 = &H1F4
  loc_123808C: LateIdCallSt
  loc_1238097: var_A0 = CVar(CLng(2)) 'Long
  loc_123809C: var_E8 = 0
  loc_12380A8: LateIdCallSt
  loc_12380B3: var_A0 = CVar(CLng(3)) 'Long
  loc_12380B8: var_E8 = &H9C4
  loc_12380C4: LateIdCallSt
  loc_12380CC: var_A0 = 0
  loc_12380D8: var_E8 = CVar(CLng(3)) 'Long
  loc_12380DD: var_108 = "Facility Name"
  loc_12380E6: LateIdCallSt
  loc_12380F1: var_A0 = CVar(CLng(3)) 'Long
  loc_12380FC: var_E8 = CVar(CInt(1)) 'Integer
  loc_1238103: LateIdCallSt
  loc_123810E: var_A0 = CVar(CLng(4)) 'Long
  loc_1238113: var_E8 = &H4E2
  loc_123811F: LateIdCallSt
  loc_1238127: var_A0 = 0
  loc_1238133: var_E8 = CVar(CLng(4)) 'Long
  loc_1238138: var_108 = "Charge Type"
  loc_1238141: LateIdCallSt
  loc_123814C: var_A0 = CVar(CLng(4)) 'Long
  loc_1238157: var_E8 = CVar(CInt(1)) 'Integer
  loc_123815E: LateIdCallSt
  loc_1238169: var_A0 = CVar(CLng(4)) 'Long
  loc_1238174: var_E8 = CVar(CInt(1)) 'Integer
  loc_123817B: LateIdCallSt
  loc_1238186: var_A0 = CVar(CLng(5)) 'Long
  loc_123818B: var_E8 = &H44C
  loc_1238197: LateIdCallSt
  loc_123819F: var_A0 = 0
  loc_12381AB: var_E8 = CVar(CLng(5)) 'Long
  loc_12381B0: var_108 = "Fixed Rate"
  loc_12381B9: LateIdCallSt
  loc_12381C4: var_A0 = CVar(CLng(5)) 'Long
  loc_12381CF: var_E8 = CVar(CInt(7)) 'Integer
  loc_12381D6: LateIdCallSt
  loc_12381E1: var_A0 = CVar(CLng(5)) 'Long
  loc_12381EC: var_E8 = CVar(CInt(7)) 'Integer
  loc_12381F3: LateIdCallSt
  loc_12381FE: var_A0 = CVar(CLng(6)) 'Long
  loc_1238203: var_E8 = &H47E
  loc_123820F: LateIdCallSt
  loc_1238217: var_A0 = 0
  loc_1238223: var_E8 = CVar(CLng(6)) 'Long
  loc_1238228: var_108 = "Pri Member"
  loc_1238231: LateIdCallSt
  loc_123823C: var_A0 = CVar(CLng(6)) 'Long
  loc_1238247: var_E8 = CVar(CInt(7)) 'Integer
  loc_123824E: LateIdCallSt
  loc_1238259: var_A0 = CVar(CLng(6)) 'Long
  loc_1238264: var_E8 = CVar(CInt(7)) 'Integer
  loc_123826B: LateIdCallSt
  loc_1238276: var_A0 = CVar(CLng(7)) 'Long
  loc_123827B: var_E8 = &H44C
  loc_1238287: LateIdCallSt
  loc_123828F: var_A0 = 0
  loc_123829B: var_E8 = CVar(CLng(7)) 'Long
  loc_12382A0: var_108 = "Spouse"
  loc_12382A9: LateIdCallSt
  loc_12382B4: var_A0 = CVar(CLng(7)) 'Long
  loc_12382BF: var_E8 = CVar(CInt(7)) 'Integer
  loc_12382C6: LateIdCallSt
  loc_12382D1: var_A0 = CVar(CLng(7)) 'Long
  loc_12382DC: var_E8 = CVar(CInt(7)) 'Integer
  loc_12382E3: LateIdCallSt
  loc_12382EE: var_A0 = CVar(CLng(8)) 'Long
  loc_12382F3: var_E8 = &H44C
  loc_12382FF: LateIdCallSt
  loc_1238307: var_A0 = 0
  loc_1238313: var_E8 = CVar(CLng(8)) 'Long
  loc_1238318: var_108 = "Child"
  loc_1238321: LateIdCallSt
  loc_123832C: var_A0 = CVar(CLng(8)) 'Long
  loc_1238337: var_E8 = CVar(CInt(7)) 'Integer
  loc_123833E: LateIdCallSt
  loc_1238349: var_A0 = CVar(CLng(8)) 'Long
  loc_1238354: var_E8 = CVar(CInt(7)) 'Integer
  loc_123835B: LateIdCallSt
  loc_1238366: var_A0 = CVar(CLng(9)) 'Long
  loc_123836B: var_E8 = &H47E
  loc_1238377: LateIdCallSt
  loc_123837F: var_A0 = 0
  loc_123838B: var_E8 = CVar(CLng(9)) 'Long
  loc_1238390: var_108 = "Extra Adult"
  loc_1238399: LateIdCallSt
  loc_12383A4: var_A0 = CVar(CLng(9)) 'Long
  loc_12383AF: var_E8 = CVar(CInt(7)) 'Integer
  loc_12383B6: LateIdCallSt
  loc_12383C1: var_A0 = CVar(CLng(9)) 'Long
  loc_12383CC: var_E8 = CVar(CInt(7)) 'Integer
  loc_12383D3: LateIdCallSt
  loc_12383DE: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12383E3: var_E8 = &H47E
  loc_12383EF: LateIdCallSt
  loc_12383F7: var_A0 = 0
  loc_1238403: var_E8 = CVar(CLng(&HA)) 'Long
  loc_1238408: var_108 = "Extra Child"
  loc_1238411: LateIdCallSt
  loc_123841C: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1238427: var_E8 = CVar(CInt(7)) 'Integer
  loc_123842E: LateIdCallSt
  loc_1238439: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1238444: var_E8 = CVar(CInt(7)) 'Integer
  loc_123844B: LateIdCallSt
  loc_1238455: Set var_C4 = Nothing 
  loc_1238459: Exit Sub
  loc_123845A: ' Referenced from: 1237F30
  loc_123845A: Proc_6_60_E63754(var_C4, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4, var_108)
  loc_123845F: Exit Sub
End Sub

Public Sub Proc_269_55_FC89AC
  'Data Table: 48AB6C
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_48AB6F As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FC8847: If (Me.RecordCount = 0) Then
  loc_FC884A:   Proc_269_55_FC89AC = 
  loc_FC8850: End If
  loc_FC888B: Set var_94 = Me.Txt
  loc_FC8891: Call 0.Method_Proc_269_55_FC89AC0 (CInt(0), var_98, var_9C, "Select Count(*) From MemCatFacility Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (MemCatCode='", var_130, -1)
  loc_FC88A9: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FC88B7: Set var_A8 = Me.Txt
  loc_FC88BD: Call 0.Method_Proc_269_55_FC89AC0 (CInt(1), var_AC, var_DC)
  loc_FC88CC: Proc_6_7_F26918(var_CC, CVar(var_AC), 0)
  loc_FC88D4: var_EC = var_14C & var_CC 
  loc_FC88EB: unk_48AB6F.Execute CStr(var_EC & ")"), var_15C, 
  loc_FC88F3:  = var_98.Tag.Fields
  loc_FC88FB:  = var_138.Item()
  loc_FC8903:  = var_14C.Value
  loc_FC8940: If (var_15C > 0) Then
  loc_FC8964:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FC897F:   Set var_94 = Me.Txt
  loc_FC8985:   Call 0.Method_Proc_269_55_FC89AC0 (CInt(0))
  loc_FC898D:   var_98.SetFocus
  loc_FC899E:   Proc_269_55_FC89AC = &HFF
  loc_FC89A4: End If
  loc_FC89A4: Proc_269_55_FC89AC = var_98
  loc_FC89AA:  = var_B01
End Sub

Public Sub Proc_269_56_101E840
  'Data Table: 48AB6C
  Dim var_88 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_E8 As Variant
  Dim var_FC As MSHFlexGrid
  Dim var_11C As String
  loc_101E620: Set var_88 = Me.TopCtrl1
  loc_101E626: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_101E63F: If (CStr() = "Browse") Then
  loc_101E642:   Exit Sub
  loc_101E643: End If
  loc_101E662: If (CLng(Me.FGrid.Col) <> 1) Then
  loc_101E665:   Exit Sub
  loc_101E666: End If
  loc_101E675: For var_A2 = global_96 To global_98: var_9E = var_A2 'Integer
  loc_101E68E:   Me.FGrid.Row = CVar(CLng(var_9E))
  loc_101E6B8:   Me.FGrid.Col = CVar(CLng(Me.FGrid.Col))
  loc_101E6D7:   Me.FGrid.CellFontName = "wingdings"
  loc_101E6F1:   Me.FGrid.CellFontSize = CVar(CDbl(&H12))
  loc_101E70C:   Me.FGrid.CellForeColor = &HFF0000
  loc_101E727:   var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_101E73F:   var_E8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_101E776:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_101E78C:     var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_101E7A4:     var_E8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_101E7A9:     var_11C = "ü"
  loc_101E7B3:     Set var_FC = Me.FGrid
  loc_101E7B9:     LateIdCallSt
  loc_101E7D4:   Else
  loc_101E7E7:     var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_101E7FF:     var_E8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_101E804:     var_11C = vbNullString
  loc_101E80E:     Set var_FC = Me.FGrid
  loc_101E814:     LateIdCallSt
  loc_101E82C:   End If
  loc_101E82F: Next var_A2 'Integer
  loc_101E839: global_96 = 0
  loc_101E83C: Exit Sub
End Sub

Public Sub Proc_269_57_1037604(arg_C) '1037604
  'Data Table: 48AB6C
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_B0 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_164 As Variant
  loc_10373E7: var_A0 = CLng(Me.FGrid.Col)
  loc_10373F7: If (var_A0 = CLng(4)) Then
  loc_1037407:   Set var_8C = Me.TxtGrid
  loc_103740D:   Call 0.Method_Proc_269_57_10376040 (arg_C, var_A4)
  loc_103742C:   If (var_A4.Text <> vbNullString) Then
  loc_1037447:     Set var_A4 = Me.ListView.SelectedItem
  loc_103744D:     var_A8 = var_A4.Text
  loc_103745F:     Set var_AC = Me.TxtGrid
  loc_1037465:     Call 0.Method_Proc_269_57_10376040 (arg_C, var_B0)
  loc_103746D:     var_B0.Text = var_A8
  loc_1037483:   End If
  loc_1037496:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10374AE:   var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10374C0:   Set var_8C = Me.TxtGrid
  loc_10374C6:   Call 0.Method_Proc_269_57_10376040 (arg_C, var_A4, var_A8)
  loc_10374CE:   var_F0 = var_A4.Text
  loc_10374D6:   var_110 = CVar(var_A8) 'String
  loc_10374DE:   Set var_124 = Me.FGrid
  loc_10374E4:   LateIdCallSt
  loc_1037505: Else
  loc_103750C:   If Not (var_A0 = CLng(5)) Then
  loc_1037516:     If Not (var_A0 = CLng(6)) Then
  loc_1037520:       If Not (var_A0 = CLng(7)) Then
  loc_103752A:         If Not (var_A0 = CLng(8)) Then
  loc_1037534:           If Not (var_A0 = CLng(9)) Then
  loc_103753E:             If (var_A0 = CLng(&HA)) Then
  loc_1037541:             End If
  loc_1037541:           End If
  loc_1037541:         End If
  loc_1037541:       End If
  loc_1037541:     End If
  loc_103754D:     Set var_8C = Me.TxtGrid
  loc_1037553:     Call 0.Method_Proc_269_57_10376040 (0, var_A4, var_A8, var_124)
  loc_103755B:     var_110 = var_A4.Text
  loc_103757E:     var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1037596:     var_120 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10375C3:     var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_10375CB:     Set var_124 = Me.FGrid
  loc_10375D1:     LateIdCallSt
  loc_10375F8:   End If
  loc_10375F8: End If
  loc_10375FD: Proc_269_57_1037604 = &HFF
End Sub

Public Sub Proc_269_58_F189C8
  'Data Table: 48AB6C
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F188DE: Set var_8C = Me.Txt
  loc_F188E4: Call 0.Method_Proc_269_58_F189C8C (var_8E, var_86)
  loc_F188F4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1890A:   Set var_8C = Me.Txt
  loc_F18910:   Call 0.Method_Proc_269_58_F189C80 (CInt(var_86), var_98)
  loc_F18918:   var_98.Text = vbNullString
  loc_F18934:   Set var_8C = Me.Txt
  loc_F1893A:   Call 0.Method_Proc_269_58_F189C80 (CInt(var_86), var_98)
  loc_F18942:   var_98.Tag = vbNullString
  loc_F18951: Next var_92 'Byte
  loc_F1896A: Me.FGrid.Rows = 1
  loc_F18987: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F1898F: Set var_98 = Me.FGrid
  loc_F189BE: Me.FGrid.FixedRows = 1
  loc_F189C6: Exit Sub
End Sub

Public Sub Proc_269_59_13AB4F8
  'Data Table: 48AB6C
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_104 As Variant
  Dim unk_48AB6F As Connection15
  Dim var_88 As Recordset15
  Dim var_12C As Fields15
  Dim var_150 As Variant
  Dim var_118 As Variant
  Dim var_130 As TextBox
  Dim var_8A As Integer
  loc_13AABF8: On Error Goto loc_13AB4F2
  loc_13AAC12: If (Me.RecordCount > 0) Then
  loc_13AAC15:   Call Proc_269_58_F189C8()
  loc_13AAC2E:   var_94 = "Select MF.*,M.Name As MemCatName,FM.Name As FacilityName From ((memCatFacility MF Left Join MemCatMast M On MF.MemCatCode=M.Code) Left Join memFacilityMast FM On MF.FcCode=FM.Code) Where MF.LogSite_Code='" & MemVar_1F95078
  loc_13AAC43:   var_D4 = CVar(var_94 & "' and MF.Site_Code='" & MemVar_1F95070 & "' and MF.MemCatCode+Space(6-len(MF.MemCatCode))+'**'+Convert(Varchar(11),MF.AppDate,103)='") 'String
  loc_13AAC8A:   unk_48AB6F.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "' Order By MF.AppDate"), var_128, -1
  loc_13AAC95:   Set var_88 = var_12C
  loc_13AACCD:   If (var_88.RecordCount > 0) Then
  loc_13AAD0A:     var_12C = var_88.Fields
  loc_13AAD73:     var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_13AADB8:     Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_13AAE32:     var_130 = var_88.Fields.Item("U_AE")
  loc_13AAE93:     var_190 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_130)) = "E"), "Last Update : ", "entdt : "))
  loc_13AAED8:     Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_13AAF46:     Set var_12C = Me.Txt
  loc_13AAF4C:     Call 0.Method_Proc_269_59_13AB4F80 (CInt(0), var_130)
  loc_13AAF54:     var_130.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCatcode")))
  loc_13AAF9E:     Set var_12C = Me.Txt
  loc_13AAFA4:     Call 0.Method_Proc_269_59_13AB4F80 (CInt(0), var_130)
  loc_13AAFAC:     var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MemCatName")))
  loc_13AB012:     Set var_12C = Me.Txt
  loc_13AB018:     Call 0.Method_Proc_269_59_13AB4F80 (CInt(1), var_130, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/MMM/yyyy")))
  loc_13AB020:     var_130.Text = 1
  loc_13AB03C:     var_8A = 1
  loc_13AB052:     Me.FGrid.Rows = 1
  loc_13AB05A:     ' Referenced from: 13AB469
  loc_13AB069:     If Not(var_88.EOF) Then
  loc_13AB06C:       var_B0 = vbNullString
  loc_13AB076:       Set var_A0 = Me.FGrid
  loc_13AB08B:       Set var_1E8 = Me.FGrid
  loc_13AB092:       var_B0 = CVar(CLng(var_8A)) 'Long
  loc_13AB0A8:       LateIdCallSt
  loc_13AB0E9:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("fcCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1E8, "***", CVar(CLng(1)))) 'String
  loc_13AB0F0:       LateIdCallSt
  loc_13AB13B:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FacilityName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1E8, var_D4)) 'String
  loc_13AB142:       LateIdCallSt
  loc_13AB18D:       var_D4 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChrgType")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1E8, var_D4)) 'String
  loc_13AB194:       LateIdCallSt
  loc_13AB1C6:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_13AB1CE:       var_150 = CVar(CLng(5)) 'Long
  loc_13AB1FB:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("FixedRate")), "0.00"))) 'String
  loc_13AB202:       LateIdCallSt
  loc_13AB238:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_13AB240:       var_150 = CVar(CLng(6)) 'Long
  loc_13AB26D:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("PMember")), "0.00"))) 'String
  loc_13AB274:       LateIdCallSt
  loc_13AB2AA:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_13AB2B2:       var_150 = CVar(CLng(7)) 'Long
  loc_13AB2DF:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("Spouse")), "0.00"))) 'String
  loc_13AB2E6:       LateIdCallSt
  loc_13AB31C:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_13AB324:       var_150 = CVar(CLng(8)) 'Long
  loc_13AB351:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("Child")), "0.00"))) 'String
  loc_13AB358:       LateIdCallSt
  loc_13AB38E:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_13AB396:       var_150 = CVar(CLng(9)) 'Long
  loc_13AB3C3:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("ExtraAdult")), "0.00"))) 'String
  loc_13AB3CA:       LateIdCallSt
  loc_13AB400:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_13AB408:       var_150 = CVar(CLng(&HA)) 'Long
  loc_13AB435:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("ExtraChild")), "0.00"))) 'String
  loc_13AB43C:       LateIdCallSt
  loc_13AB454:       Set var_1E8 = Nothing 
  loc_13AB45E:       var_8A = (var_8A + 1)
  loc_13AB464:       var_88.MoveNext
  loc_13AB469:       GoTo loc_13AB05A
  loc_13AB46C:     End If
  loc_13AB46C:   End If
  loc_13AB46C:   var_B0 = 0
  loc_13AB476:   Set var_A0 = Me.FGrid
  loc_13AB4A3:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13AB4A6:     var_B0 = "1"
  loc_13AB4B0:     Set var_A0 = Me.FGrid
  loc_13AB4C1:   End If
  loc_13AB4C1:   var_B0 = 1
  loc_13AB4D4:   Me.FGrid.FixedRows = var_B0
  loc_13AB4DF: Else
  loc_13AB4DF:   Call Proc_269_58_F189C8(FGrid.DispID_10000, var_B0, FGrid.DispID_2E, var_B0, var_8A, var_1E8, var_104)
  loc_13AB4E4: End If
  loc_13AB4E4: Call Proc_269_61_E5431C(1, 1, var_150)
  loc_13AB4EE: Set var_88 = Nothing
  loc_13AB4F1: Exit Sub
  loc_13AB4F2: ' Referenced from: 13AABF8
  loc_13AB4F2: Proc_6_60_E63754(var_118, var_1E8)
  loc_13AB4F7: Exit Sub
End Sub

Public Sub Proc_269_60_E7CC84(arg_C) 'E7CC84
  'Data Table: 48AB6C
  Dim var_98 As TextBox
  loc_E7CC32: Set var_8C = Me.Txt
  loc_E7CC38: Call 0.Method_Proc_269_60_E7CC84C (var_8E, var_86)
  loc_E7CC48: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7CC5E:   Set var_8C = Me.Txt
  loc_E7CC64:   Call 0.Method_Proc_269_60_E7CC840 (CInt(var_86), var_98)
  loc_E7CC6C:   var_98.Enabled = arg_C
  loc_E7CC7B: Next var_92 'Byte
  loc_E7CC81: Exit Sub
End Sub

Public Sub Proc_269_61_E5431C
  'Data Table: 48AB6C
  loc_E54300: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E54312:   Me.DGCategory.Visible = False
  loc_E5431A: End If
  loc_E5431A: Exit Sub
End Sub
