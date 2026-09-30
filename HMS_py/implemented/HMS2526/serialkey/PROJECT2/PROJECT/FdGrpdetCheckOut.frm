VERSION 5.00
Begin VB.Form FdGrpdetCheckOut
  Caption = "Room Check Out Entry"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 135
  ClientTop = 750
  ClientWidth = 14760
  ClientHeight = 7905
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 30
    Top = 7680
    Width = 9900
    Height = 555
    Visible = 0   'False
    TabIndex = 56
  End
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HFFC0C0&
    Left = 2040
    Top = 180
    Width = 10155
    Height = 7575
    TabIndex = 1
    BorderStyle = 0 'None
    Begin TextBox txtleaderfolio
      Left = 1845
      Top = 1380
      Width = 2370
      Height = 285
      Visible = 0   'False
      TabIndex = 52
    End
    Begin MSHFlexGrid FGrid2
      Left = 45
      Top = 240
      Width = 9960
      Height = 2565
      TabIndex = 49
    End
    Begin TextBox TXT
      Index = 22
      Left = 3900
      Top = 1800
      Width = 1500
      Height = 285
      TabIndex = 51
    End
    Begin MSHFlexGrid FGrid
      Left = 45
      Top = 3150
      Width = 8760
      Height = 3150
      TabIndex = 42
    End
    Begin Timer Timer1
      Interval = 1000
      Left = 135
      Top = 3030
    End
    Begin PictureBox Picture2
      Left = 1890
      Top = 1500
      Width = 300
      Height = 285
      Visible = 0   'False
      TabIndex = 48
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HFFFFFF&
      Left = 120
      Top = 3780
      Width = 345
      Height = 240
      TabIndex = 47
      BorderStyle = 0 'None
      MaxLength = 9
      Appearance = 0 'Flat
    End
    Begin CommandButton cmdProvisional
      Caption = " Provisional     Bill &Print"
      Left = 10995
      Top = 2610
      Width = 1245
      Height = 795
      Visible = 0   'False
      TabIndex = 45
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
    Begin TextBox TXT
      Index = 15
      BackColor = &HFFFFFF&
      Left = 7725
      Top = 1785
      Width = 330
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 37
      Alignment = 2 'Center
      MaxLength = 3
      Locked = -1  'True
      DataFormat = 80
      DataFormat = 38
    End
    Begin TextBox TXT
      Index = 14
      BackColor = &HFFFFFF&
      Left = 8070
      Top = 1785
      Width = 330
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 36
      Alignment = 2 'Center
      MaxLength = 3
      Locked = -1  'True
      DataFormat = 80
      DataFormat = 38
    End
    Begin TextBox TXT
      Index = 13
      BackColor = &HFFFFFF&
      Left = 6540
      Top = 1785
      Width = 1170
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 35
      MaxLength = 11
      Locked = -1  'True
    End
    Begin TextBox TXT
      Index = 16
      BackColor = &HFFFFFF&
      Left = 6540
      Top = 2640
      Width = 3435
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 34
      Locked = -1  'True
    End
    Begin TextBox TXT
      Index = 17
      BackColor = &HFFFFFF&
      Left = 6540
      Top = 2355
      Width = 3435
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 33
      MaxLength = 50
      Locked = -1  'True
    End
    Begin TextBox TXT
      Index = 18
      BackColor = &HFFFFFF&
      Left = 6540
      Top = 2070
      Width = 3435
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 32
      MaxLength = 16
    End
    Begin TextBox TXT
      Index = 21
      BackColor = &HFFFFFF&
      Left = 1185
      Top = 3225
      Width = 4245
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 30
    End
    Begin TextBox TXT
      Index = 20
      BackColor = &HFFFFFF&
      Left = 1185
      Top = 2925
      Width = 4245
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 29
    End
    Begin TextBox TXT
      Index = 19
      BackColor = &HFFFFFF&
      Left = 1185
      Top = 2640
      Width = 4245
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 28
    End
    Begin TextBox TXT
      Index = 4
      BackColor = &HFFFFFF&
      Left = 2190
      Top = 1500
      Width = 3240
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 22
      MaxLength = 16
    End
    Begin TextBox TXT
      Index = 6
      BackColor = &HFFFFFF&
      Left = 7035
      Top = 1500
      Width = 480
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 21
      MaxLength = 2
    End
    Begin TextBox TXT
      Index = 5
      BackColor = &HFFFFFF&
      Left = 6540
      Top = 1500
      Width = 480
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 20
      MaxLength = 2
    End
    Begin TextBox TXT
      Index = 7
      BackColor = &HFFFFFF&
      Left = 1185
      Top = 2070
      Width = 990
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 19
      MaxLength = 1
    End
    Begin TextBox TXT
      Index = 8
      BackColor = &HFFFFFF&
      Left = 3900
      Top = 2070
      Width = 1530
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 18
      MaxLength = 8
    End
    Begin DataGrid DGRoomNo
      Left = 10755
      Top = 5910
      Width = 3795
      Height = 3330
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 16
    End
End

Attribute VB_Name = "FdGrpdetCheckOut"

Private global_82 As Integer
Private MasterFormExit As Integer
Private global_134 As Integer
Private global_72 As Long
Private global_80 As Integer
Private global_132 As Integer

Private Sub FGrid_UnknownEvent_0 'E5E7C4
  'Data Table: 514A68
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5E78F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5E7A2: Set var_A8 = Me.TxtGrid
  loc_E5E7A8: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5E7B0: var_AC.Visible = False
  loc_E5E7BC: Call Proc_174_56_EBCD2C()
  loc_E5E7C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E688E8
  'Data Table: 514A68
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E688A4: Set var_88 = Me.TxtGrid
  loc_E688AA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E688C4: If (var_8C.Visible = 0) Then
  loc_E688DD:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E688E5: End If
  loc_E688E5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D2E0
  'Data Table: 514A68
  loc_E1D2D7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D2DF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1007038
  'Data Table: 514A68
  Dim var_B4 As MSHFlexGrid
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1006EA8: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1006EBE:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1006ECE:   var_9C = "+{Tab}"
  loc_1006ED4:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1006EDE:   KeyCode = 0
  loc_1006EE4: Else
  loc_1006F3B:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_1006F51:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1006F59:   End If
  loc_1006F59: End If
  loc_1006F7C: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1006FA0: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_1006FC6:   If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_1006FDC:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1006FF4:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1006FF9:     var_11C = vbNullString
  loc_1007003:     Set var_B4 = Me.FGrid
  loc_1007009:     LateIdCallSt
  loc_1007021:   End If
  loc_1007021: End If
  loc_1007027: If (KeyCode = &HD) Then
  loc_100702F:   global_82 = 0
  loc_1007032: End If
  loc_1007034: KeyCode = 0
  loc_1007037: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'FB1DA4
  'Data Table: 514A68
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As String
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_FB1C37: If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_FB1C3E:   Set var_C4 = Me.FGrid
  loc_FB1C62:   var_B0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_FB1C8F:   Set var_B4 = var_C4
  loc_FB1CA1:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_FB1CC9:   Set var_88 = Me.TxtGrid
  loc_FB1CCF:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_B0, Asc(var_B0))
  loc_FB1CD7:   0 = var_B4.Text
  loc_FB1CF0:   If (Len(var_B0) <= 1) Then
  loc_FB1CFF:     Set var_88 = Me.TxtGrid
  loc_FB1D05:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_B0)
  loc_FB1D0D:     var_CA = var_B4.Text
  loc_FB1D1E:     Set var_B8 = Me.TxtGrid
  loc_FB1D24:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FB1D2C:     var_C4.Text = var_B0
  loc_FB1D3F:   End If
  loc_FB1D4B:   Set var_88 = Me.TxtGrid
  loc_FB1D51:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_FB1D6B:   Set var_B8 = Me.TxtGrid
  loc_FB1D71:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FB1D79:   var_C4.SelStart = Len(var_B4.Text)
  loc_FB1D8C: End If
  loc_FB1D96: If (CLng(KeyCode) <> &HD) Then
  loc_FB1D9E:   global_82 = &HFF
  loc_FB1DA1: End If
  loc_FB1DA1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D290
  'Data Table: 514A68
  loc_E1D287: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D28F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E4515C
  'Data Table: 514A68
  Dim var_8C As TextBox
  loc_E45130: Call Proc_174_56_EBCD2C()
  loc_E45140: Set var_88 = Me.TxtGrid
  loc_E45146: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4514E: var_8C.Visible = False
  loc_E4515A: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1C668
  'Data Table: 514A68
  Dim var_F01 As Double
  loc_E1C65D: Me.Global.Unload Me
  loc_E1C665: Exit Sub
  loc_E1C666: var_F01 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F12070
  'Data Table: 514A68
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F11F88: On Error Goto loc_F1202D
  loc_F11FA2: If (Me.RecordCount > 0) Then
  loc_F11FBA:   var_8C = "EDIT"
  loc_F11FC8:   Call Proc_174_54_E77EBC(Proc_5_1_100EC1C(var_8C, Me))
  loc_F11FDE:   Set var_90 = Me.TXT
  loc_F11FE4:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F11FEC:   var_98.SetFocus
  loc_F11FFB: Else
  loc_F1201C:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F1202C: End If
  loc_F1202C: Exit Sub
  loc_F1202D: ' Referenced from: F11F88
  loc_F12035: Set var_90 = Err()
  loc_F1203B: Call 0.Method_arg_2C (var_8C)
  loc_F1205C: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F1206F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ECBA74
  'Data Table: 514A68
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F950E4 As String
  loc_ECB9D0: On Error Goto loc_ECBA6B
  loc_ECB9EA: If (Me.RecordCount <= 0) Then
  loc_ECB9F3:   var_B8 = "Information"
  loc_ECBA0E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_ECBA1E:   Exit Sub
  loc_ECBA1F: End If
  loc_ECBA30: MemVar_1F950E4 = "SELECT DocId AS SearchCode FROM GuestFolio where VType='" & mVType & "' ORDER BY VDate"
  loc_ECBA3D: MemVar_1F95120 = Me
  loc_ECBA4A: Proc_6_126_F1C850("2000,2000,2000,2000")
  loc_ECBA65: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ECBA6A: Exit Sub
  loc_ECBA6B: ' Referenced from: ECB9D0
  loc_ECBA6B: Proc_6_60_E63754(MemVar_1F950E4)
  loc_ECBA70: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'F07684
  'Data Table: 514A68
  Dim Me As Recordset15
  Dim var_8C As TextBox
  loc_F075B0: On Error Goto loc_F07649
  loc_F075BE: Set var_88 = Me.TXT
  loc_F075C4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_F075CC: var_94 = "Room No"
  loc_F075ED: If (Proc_6_27_EA61EC(var_8C, var_94) = 0) Then
  loc_F075F7:   Call Txt_GotFocus()
  loc_F075FC:   Exit Sub
  loc_F075FD: End If
  loc_F07609: Call Txt_Validate(CInt(0))
  loc_F0760E: Call Proc_174_55_EABDF0(0, CInt(0))
  loc_F0761E: Me.Requery -1
  loc_F0762E: Set var_88 = Me.TXT
  loc_F07634: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_8C)
  loc_F0763C: var_8C.SetFocus
  loc_F07648: Exit Sub
  loc_F07649: ' Referenced from: F075B0
  loc_F07651: Set var_88 = Err()
  loc_F07657: Call 0.Method_arg_2C (var_94)
  loc_F07670: MsgBox(CVar(var_94), &H10, var_C8, var_E8, var_108)
  loc_F07683: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F20330
  'Data Table: 514A68
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F20240: Call Proc_174_56_EBCD2C()
  loc_F20258: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_F20273: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F2027C: Set var_BC = Me.FGrid
  loc_F202B2: Set var_104 = Me.TxtGrid
  loc_F202B8: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F202C0: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_F202F1: var_110 = CLng(Me.FGrid.Col)
  loc_F20301: If (var_110 = CLng(&HA)) Then
  loc_F20313:   Set var_A8 = Me.TxtGrid
  loc_F20319:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 5)
  loc_F20321:   var_BC.MaxLength = var_110
  loc_F2032D: End If
  loc_F2032D: Exit Sub
  loc_F2032E: CExtInstUnk
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FAC29C
  'Data Table: 514A68
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_FAC110: On Error Goto loc_FAC296
  loc_FAC11D: If (CLng(Shift) = &H1B) Then
  loc_FAC12D:   Set var_88 = Me.TxtGrid
  loc_FAC133:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FAC14D:   Set var_94 = Me.TxtGrid
  loc_FAC153:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_FAC15B:   var_98.Text = var_8C.Tag
  loc_FAC177:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_FAC17C:   Call Proc_174_56_EBCD2C(arg_14)
  loc_FAC185:   Set var_88 = Me.FGrid
  loc_FAC1A2:   Set var_88 = Me.TxtGrid
  loc_FAC1A8:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FAC1B0:   var_8C.Visible = False
  loc_FAC1BC:   Exit Sub
  loc_FAC1BD: End If
  loc_FAC1D0: var_AC = CLng(Me.FGrid.Col)
  loc_FAC1E0: If (var_AC = CLng(&HA)) Then
  loc_FAC1F2:   Set var_88 = Me.TxtGrid
  loc_FAC1F8:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 5)
  loc_FAC200:   var_8C.MaxLength = var_AC
  loc_FAC22C:   If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_FAC235:     Call Proc_174_61_ECB6CC(KeyCode, var_AE)
  loc_FAC240:     If (var_AE = &HFF) Then
  loc_FAC286:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82)
  loc_FAC296:       ' Referenced from: FAC110
  loc_FAC296:     End If
  loc_FAC296:   End If
  loc_FAC296: End If
  loc_FAC296: Proc_6_60_E63754(&HA, 0, &HA)
  loc_FAC29B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E01DEC
  'Data Table: 514A68
  loc_E01DE3: Proc_6_58_E06050(arg_10)
  loc_E01DE8: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E3E764
  'Data Table: 514A68
  Dim var_9C As Long
  loc_E3E73C: On Error Goto loc_E3E75C
  loc_E3E752: var_9C = CLng(Me.FGrid.Col)
  loc_E3E75B: Exit Sub
  loc_E3E75C: ' Referenced from: E3E73C
  loc_E3E75C: Proc_6_60_E63754(var_9C)
  loc_E3E761: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5B9D8
  'Data Table: 514A68
  Dim arg_10 As Integer
  loc_E5B9A4: If (Cancel = 0) Then
  loc_E5B9AD:   Call Proc_174_61_ECB6CC(Cancel, var_88)
  loc_E5B9B6:   arg_10 = Not(var_88)
  loc_E5B9B9: End If
  loc_E5B9D5: Exit Sub
  loc_E5B9D6: Set var_1000 = CLng(Me.FGrid.Col)
End Sub

Private Sub Form_Load() '10B4BB4
  'Data Table: 514A68
  Dim var_A0 As String
  Dim unk_514B92 As Connection15
  Dim unk_514A6F As Connection15
  Dim var_94 As CommandButton
  Dim var_B4 As Variant
  Dim var_E0 As String
  Dim var_C4 As Variant
  Dim Me As Recordset15
  Dim var_9C As TextBox
  Dim var_E8 As DataGrid
  Dim var_EC As TextBox
  loc_10B48FA: Call 0.Method_Me8 (var_8C)
  loc_10B4905: Call 0.Method_Me0 (var_90)
  loc_10B4924: Proc_6_23_DFC5B8(Me, CInt(var_8C))
  loc_10B4938: Set var_9C = MemVar_1F95248.PictSubMenu
  loc_10B493E: var_90 = MDIForm1.PictSubMenu.Height
  loc_10B494F: Set var_94 = MemVar_1F95248.PictSubMenu
  loc_10B4965: Call 0.Method_arg_7C ((MDIForm1.PictSubMenu.Top + var_90))
  loc_10B4995: unk_514B92.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F95078 & "FOM'", var_C4, -1
  loc_10B49A6: Set global_128 = var_94
  loc_10B49C5: Set global_100 = New 
  loc_10B49CC: Call Proc_174_59_13C08D4(var_94)
  loc_10B49DC: Me.Recordset15.CursorLocation = 3
  loc_10B49E7: If (MemVar_1F950B8 <> 1) Then
  loc_10B49EA:   GoTo loc_10B4A2C
  loc_10B49ED: End If
  loc_10B4A11: unk_514A6F.Execute "Select nCUR from enviro where LOGsite_code='" & MemVar_1F95078 & "'", var_C4, -1
  loc_10B4A1C: Set var_88 = var_94
  loc_10B4A2C: ' Referenced from: 10B49EA
  loc_10B4A39: var_94("Bill Settle").Caption = CInt(var_90)
  loc_10B4A4B: Set var_94 = Me.TopCtrl1
  loc_10B4A51: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005("Add")
  loc_10B4A77: var_A0 = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,RoomOcc.FolioNO as FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME,roomocc.Docid,GuestFolio.Mfoliono,GuestFolio.MfolionoDocid,RoomOcc.PlanCode  " & "FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS WHERE ROOMMAST.LOGSITE_CODE='"
  loc_10B4A93: var_E0 = var_A0 & MemVar_1F95078 & "' AND ROOMOCC.LOGSITE_CODE='" & MemVar_1F95078 & "' AND Roommast.type='RO'  and GuestFolio.Mfoliono="
  loc_10B4AA4: var_C4 = CVar(var_E0 & global_76 & " and RoomMast.Code in (Select ISNULL(RoomNo,'') from RoomOcc where isnull(type,'')<>'C' and isnull(type,'')<>'O')  and isnull(RoomOcc.type,'')<>'C' and isnull(RoomOcc.type,'')<>'O' Order by RoomCat.Name,RoomMast.Code,ROOMOCC.CHKOUTDATE ") 'String
  loc_10B4AAE: Me.Open var_C4, CVar(MemVar_1F95044), 2
  loc_10B4AC5: Call Proc_174_58_12697EC(3)
  loc_10B4AD0: Call 0.Method_arg_54 ("Room Check Out Entry")
  loc_10B4AE3: Set var_94 = Me.TXT
  loc_10B4AE9: Call 0.Method_Form_Load0 (CInt(0), var_9C)
  loc_10B4B08: Me.DGRoomNo.Left = CVar(var_9C.Left)
  loc_10B4B24: Set var_E8 = Me.TXT
  loc_10B4B2A: Call 0.Method_Form_Load0 (CInt(0), var_EC)
  loc_10B4B45: Set var_94 = Me.TXT
  loc_10B4B4B: Call 0.Method_Form_Load0 (CInt(0), var_9C)
  loc_10B4B63: var_B4 = CVar(((var_9C.Top + var_EC.Height) + CDbl(&H1E))) 'Single
  loc_10B4B72: Me.DGRoomNo.Top = CVar(var_9C.Left)
  loc_10B4B8D: CVarUnk
  loc_10B4B92: VerifyVarObj
  loc_10B4B9E: LateIdStAd
  loc_10B4BAC: Exit Sub
  loc_10B4BAD: Proc_6_60_E63754(Me.DGRoomNo, global_100)
  loc_10B4BB2: Exit Sub
End Sub

Private Sub Form_Resize() 'E48260
  'Data Table: 514A68
  loc_E48230: Call 0.Method_arg_7C (CDbl(1450))
  loc_E4823D: Call 0.Method_arg_74 (CDbl(1625))
  loc_E4824A: Call 0.Method_MeC (CDbl(9200))
  loc_E48257: Call 0.Method_Me4 (CDbl(17000))
  loc_E4825C: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E77C60
  'Data Table: 514A68
  loc_E77C07: Set global_100 = Nothing
  loc_E77C19: Set global_96 = Nothing
  loc_E77C2B: Set global_108 = Nothing
  loc_E77C3D: Set global_104 = Nothing
  loc_E77C4F: Set global_128 = Nothing
  loc_E77C5B: MasterFormExit = 0
  loc_E77C5E: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5C76C
  'Data Table: 514A68
  loc_E5C734: Set var_88 = Me.TopCtrl1
  loc_E5C73A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E5C75D: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5C765:   Call Form_Unload(&HFF)
  loc_E5C76A: End If
  loc_E5C76A: Exit Sub
End Sub

Private Sub Form_Activate() 'EF6AAC
  'Data Table: 514A68
  Dim unk_514B92 As Connection15
  Dim var_B8 As TextBox
  loc_EF69F0: On Error Goto loc_EF6A7D
  loc_EF6A17: unk_514B92.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F95078 & "FOM'", var_B0, -1
  loc_EF6A28: Set global_128 = var_B4
  loc_EF6A51: If (FdGrpdetCheckOut.OpenMode = 1) Then
  loc_EF6A54:   GoTo loc_EF6A7C
  loc_EF6A57: End If
  loc_EF6A62: Set var_B4 = Me.TXT
  loc_EF6A68: Call 0.Method_Form_Activate0 (CInt(0), var_B8)
  loc_EF6A70: var_B8.SetFocus
  loc_EF6A7C: ' Referenced from: EF6A54
  loc_EF6A7C: Exit Sub
  loc_EF6A7D: ' Referenced from: EF69F0
  loc_EF6A96: MsgBox("FORM ACTIVATE", 0, var_DC, var_FC, var_11C)
  loc_EF6AA6: Proc_6_60_E63754(var_B4)
  loc_EF6AAB: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25684
  'Data Table: 514A68
  loc_E25669: If (MasterFormExit = &HFF) Then
  loc_E25679:   Me.Global.Unload Me
  loc_E25681: End If
  loc_E25681: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5ECC8
  'Data Table: 514A68
  loc_E5EC7C: On Error Goto loc_E5ECBF
  loc_E5EC89: If (CLng(KeyCode) = &H79) Then
  loc_E5EC99:   Me.Global.Unload Me
  loc_E5ECA1:   Exit Sub
  loc_E5ECA2: End If
  loc_E5ECB6: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E5ECBE: Exit Sub
  loc_E5ECBF: ' Referenced from: E5EC7C
  loc_E5ECBF: Proc_6_60_E63754(Shift)
  loc_E5ECC4: Exit Sub
  loc_E5ECC5: StUdtVar
End Sub

Private Sub CmdPostChrg_UnknownEvent_9 '11AFDAC
  'Data Table: 514A68
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_1BC As Double
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_140 As String
  Dim var_1C4 As Double
  Dim var_150 As Variant
  Dim var_184 As Variant
  Dim var_B0 As Integer
  Dim unk_514A6F As Connection15
  Dim var_1D0 As Field20
  Dim var_174 As Variant
  Dim var_160 As Variant
  Dim var_218 As Variant
  Dim var_8C As Recordset15
  loc_11AF9D3: var_1BC = Val(CStr(0(1).TextMatrix)))
  loc_11AF9EC: Set var_12C = 0(2)
  loc_11AF9F2: var_13C = var_12C.TextMatrix)
  loc_11AFA05: var_1C4 = Val(CStr(var_13C))
  loc_11AFA0C: var_150 = CVar(Me.txtleaderfolio) 'Address
  loc_11AFA13: var_160 = Trim(var_150)
  loc_11AFA20: Proc_96_39_1055500(CStr(var_160), var_1C4)
  loc_11AFA38: var_184 = CVar(((var_1BC - var_1C4) + var_1BC)) 'Double
  loc_11AFA6E: If (Round(var_184, 2) < 0) Then
  loc_11AFA84:   var_E4 = "First Post Retention Or Refund"
  loc_11AFA8A:   MsgBox(var_E4, &H40, var_13C, var_150, var_160)
  loc_11AFA9A:   Exit Sub
  loc_11AFA9B: End If
  loc_11AFAA1: var_B0 = 0
  loc_11AFAC5: var_140 = "Select Max(IsNull(RoomCheckOutClearanceYN,'')) from Enviro where lOGSite_code='" & MemVar_1F95078 & "'"
  loc_11AFACE: unk_514A6F.Execute var_140, var_E4, -1
  loc_11AFAD6: var_D4 = var_D4.Fields
  loc_11AFADE: var_B0 = var_12C.Item(var_12C)
  loc_11AFB0D: If (var_13C = "Yes") Then
  loc_11AFB35:   For var_1D4 = 0 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_8E = var_1D4 'Integer
  loc_11AFB60:     For var_1D8 = 1 To CInt((CLng(Me.FGrid2.Cols) - 1)): var_90 = var_1D8 'Integer
  loc_11AFB6A:       var_A0 = CVar(CLng(var_8E)) 'Long
  loc_11AFB73:       var_C0 = CVar(CLng(var_90)) 'Long
  loc_11AFB9E:       If (CStr(Me.FGrid2.TextMatrix)) <> vbNullString) Then
  loc_11AFBA5:         var_A0 = CVar(CLng(var_8E)) 'Long
  loc_11AFBAE:         var_C0 = CVar(CLng(var_90)) 'Long
  loc_11AFBD7:         var_118 = CVar(CLng(var_8E)) 'Long
  loc_11AFBE0:         var_174 = CVar(CLng(var_90)) 'Long
  loc_11AFC1A:         var_160 = "Select * From RoomCheckOutStatus Where FolionoDocId=(Select IsNull(Max(DocId),'') From RoomOcc Where RoomNo='" & Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) 
  loc_11AFC33:         var_218 = var_160 & "' And ChkOutDate Is Null) And RoomCode='" & Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) & "' And ChkOutClearanceYN='Y'" 
  loc_11AFC41:         unk_514A6F.Execute CStr(var_218), var_238, -1
  loc_11AFC88:         If (var_1D0.Value.RecordCount <= 0) Then
  loc_11AFC8E:           var_F8 = CVar(var_88) 'String
  loc_11AFC95:           var_A0 = CVar(CLng(var_8E)) 'Long
  loc_11AFCBE:           var_150 = Trim(CVar(CStr(Me.FGrid2.TextMatrix))))
  loc_11AFCC6:           var_160 = (CVar(CLng(var_90)) + var_150)
  loc_11AFCCF:           var_184 = (var_160 + ", ")
  loc_11AFCD4:           var_88 = CStr(var_160 & "' And ChkOutDate Is Null) And RoomCode='")
  loc_11AFCE7:         End If
  loc_11AFCE7:       End If
  loc_11AFCEA:     Next var_1D8 'Integer
  loc_11AFCF2:   Next var_1D4 'Integer
  loc_11AFCFC:   Set var_8C = Nothing
  loc_11AFD07:   If (var_88 <> vbNullString) Then
  loc_11AFD10:     Call 0.Method_arg_50 (var_140)
  loc_11AFD37:     MsgBox(CVar("Room " & var_88 & "Check Out Clearance Is Still Pending."), &H10, CVar(var_140), var_150, var_160)
  loc_11AFD4A:     Exit Sub
  loc_11AFD4B:   End If
  loc_11AFD4B: End If
  loc_11AFD89: If (CDbl(Val(CStr(0(1).TextMatrix)))) >= CDbl(20000)) Then
  loc_11AFD9F:   Call 0.Method_arg_2B0 (1)
  loc_11AFDA4: End If
  loc_11AFDA4: Call Proc_174_49_1B899C0(var_B0)
  loc_11AFDA9: Exit Sub
End Sub

Private Sub CmdPlanBill_UnknownEvent_9 'E03890
  'Data Table: 514A68
  loc_E03885: global_134 = &HFF
  loc_E03888: Call CmdPostChrg_UnknownEvent_9()
  loc_E0388D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11C10B4
  'Data Table: 514A68
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  loc_11C0C6E: Set var_88 = Me.TXT
  loc_11C0C74: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11C0C82: Proc_6_74_E23240(var_8C)
  loc_11C0C91: var_92 = Index
  loc_11C0C9C: If (var_92 = CInt(0)) Then
  loc_11C0CB6:   If (Me.RecordCount > 0) Then
  loc_11C0CC4:     Set var_8C = var_8C(var_92)
  loc_11C0CDC:     Proc_6_137_1192FDC(Me.DGRoomNo, global_100)
  loc_11C0CEA:   End If
  loc_11C0D38:   Set var_88 = Me.TXT
  loc_11C0D3E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C0D46:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11C0D6C:   If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_11C0D6F:     Exit Sub
  loc_11C0D70:   End If
  loc_11C0D7D:   Set var_88 = Me.TXT
  loc_11C0D83:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C0D8B:   var_A0 = var_8C.Text
  loc_11C0D9D:   var_C4 = "RoomNo"
  loc_11C0DD8:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_11C0DE1:     Me.MoveFirst
  loc_11C0E04:     Set var_88 = Me.TXT
  loc_11C0E0A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_11C0E12:     0 = var_8C.Text
  loc_11C0E2B:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_11C0E40:   End If
  loc_11C0E43: Else
  loc_11C0E4B:   If (var_92 = CInt(4)) Then
  loc_11C0E65:     If (Me.RecordCount > 0) Then
  loc_11C0E73:       Set var_8C = ()
  loc_11C0E8B:       Proc_6_137_1192FDC((), global_104)
  loc_11C0E99:     End If
  loc_11C0EE7:     Set var_88 = Me.TXT
  loc_11C0EED:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C0EF5:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11C0F1B:     If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_11C0F1E:       Exit Sub
  loc_11C0F1F:     End If
  loc_11C0F2C:     Set var_88 = Me.TXT
  loc_11C0F32:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C0F3A:     var_A0 = var_8C.Text
  loc_11C0F4C:     var_C4 = "Name"
  loc_11C0F63:     var_C8 = Me.Fields.Item(var_C4)
  loc_11C0F87:     If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_11C0F90:       Me.MoveFirst
  loc_11C0FB3:       Set var_88 = Me.TXT
  loc_11C0FB9:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11C0FC1:       0 = var_8C.Text
  loc_11C0FDA:       Me.Find 1 & var_A0 & "'", var_C4, 
  loc_11C0FEF:     End If
  loc_11C0FF2:   Else
  loc_11C0FFA:     If (var_92 = CInt(8)) Then
  loc_11C100B:       Set var_88 = Me.TXT
  loc_11C1011:       Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_11C1029:       global_84 = Val(var_8C.Text)
  loc_11C1036:     End If
  loc_11C1036:   End If
  loc_11C1036: End If
  loc_11C1045: Set var_88 = Me.TXT
  loc_11C104B: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C1053: var_8C.SelStart = 0
  loc_11C106C: Set var_88 = Me.TXT
  loc_11C1072: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C108D: Set var_90 = Me.TXT
  loc_11C1093: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_11C109B: var_C8.SelLength = Len(var_8C.Text)
  loc_11C10AE: Call Proc_174_56_EBCD2C(global_84)
  loc_11C10B3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10FF124
  'Data Table: 514A68
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_94 As DataGrid
  loc_10FEE03: var_88 = Shift
  loc_10FEE10: If (CLng(Shift) = &H1B) Then
  loc_10FEE13:   Call Proc_174_56_EBCD2C(var_88)
  loc_10FEE18:   Exit Sub
  loc_10FEE19: End If
  loc_10FEE1C: var_8A = KeyCode
  loc_10FEE27: If (var_8A = CInt(0)) Then
  loc_10FEE47:   Set var_A4 = (var_8A)
  loc_10FEE52:   Set var_A0 = Nothing
  loc_10FEE84:   Proc_6_69_134A630(Me.DGRoomNo, Me.TXT, CInt(0), global_100, Shift)
  loc_10FEEF3:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_10FEEFA:     Set var_A0 = Me.DGRoomNo
  loc_10FEF19:     Proc_6_138_106E830(var_A0, global_100, KeyCode, 1(0))
  loc_10FEF27:   End If
  loc_10FEF2A: Else
  loc_10FEF32:   If (var_8A = CInt(4)) Then
  loc_10FEF5D:     Set var_A0 = Nothing
  loc_10FEF8F:     Proc_6_69_134A630((0)(var_A0), Me.TXT, CInt(4), global_104, Shift)
  loc_10FEFFE:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_10FF005:       Set var_A0 = 1(0)
  loc_10FF00C:       Set var_94 = (0)(var_A0)
  loc_10FF024:       Proc_6_138_106E830(var_A0, global_104, KeyCode)
  loc_10FF032:     End If
  loc_10FF032:   End If
  loc_10FF032: End If
  loc_10FF06D: If (0 And (CBool(var_94((CBool(Me.DGRoomNo.Visible) = 0)).Visible) = 0)) Then
  loc_10FF08E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(8))) Then
  loc_10FF097:     Call Txt_Validate(KeyCode)
  loc_10FF0A2:     If (var_86 = &HFF) Then
  loc_10FF0A5:       Exit Sub
  loc_10FF0A6:     End If
  loc_10FF0DD:     If (MsgBox("Save Record ?", 4, "Save Data", var_118, var_138) = 6) Then
  loc_10FF0E0:       Call TopCtrl1_UnknownEvent_16()
  loc_10FF0E5:     End If
  loc_10FF0E5:     Exit Sub
  loc_10FF0E6:   End If
  loc_10FF0FB:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10FF104:     Proc_6_75_E5335C(Shift, arg_14)
  loc_10FF109:   End If
  loc_10FF113:   If (CLng(Shift) = &H26) Then
  loc_10FF11C:     Proc_6_76_E533C8(Shift, arg_14)
  loc_10FF121:   End If
  loc_10FF121: End If
  loc_10FF121: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F6EDA0
  'Data Table: 514A68
  Dim var_86 As Integer
  loc_F6EC67: Proc_6_58_E06050(arg_10)
  loc_F6EC6F: var_86 = KeyAscii
  loc_F6EC7A: If (var_86 = CInt(0)) Then
  loc_F6EC99:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F6ECC6:     Proc_6_89_1470B00(Me.TXT, KeyAscii, global_100, arg_10)
  loc_F6ECE0:     Set var_A8 = 0("RoomNo")
  loc_F6ECF8:     Proc_6_138_106E830(Me.DGRoomNo, global_100, KeyAscii)
  loc_F6ED06:   End If
  loc_F6ED09: Else
  loc_F6ED11:   If (var_86 = CInt(4)) Then
  loc_F6ED30:     If (CBool(var_86(var_A8).Visible) = &HFF) Then
  loc_F6ED5D:       Proc_6_89_1470B00(Me.TXT, KeyAscii, global_104)
  loc_F6ED77:       Set var_A8 = (0)
  loc_F6ED8F:       Proc_6_138_106E830("Name"(arg_10), global_104)
  loc_F6ED9D:     End If
  loc_F6ED9D:   End If
  loc_F6ED9D: End If
  loc_F6ED9D: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F1E3C4
  'Data Table: 514A68
  Dim var_86 As Integer
  loc_F1E2CF: var_86 = KeyCode
  loc_F1E2DA: If (var_86 = CInt(0)) Then
  loc_F1E2F9:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F1E30D:     var_A8 = "RoomNO"
  loc_F1E335:     Proc_6_68_12A2818(Me.DGRoomNo, Me.TXT, CInt(0), global_100)
  loc_F1E348:   End If
  loc_F1E34B: Else
  loc_F1E353:   If (var_86 = CInt(4)) Then
  loc_F1E372:     If (CBool(var_A8(Shift).Visible) = &HFF) Then
  loc_F1E386:       var_A8 = "Name"
  loc_F1E3AE:       Proc_6_68_12A2818((var_86), Me.TXT, CInt(4))
  loc_F1E3C1:     End If
  loc_F1E3C1:   End If
  loc_F1E3C1: End If
  loc_F1E3C1: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46AC4
  'Data Table: 514A68
  loc_E46AA2: Set var_88 = Me.TXT
  loc_E46AA8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46AB6: Proc_6_73_E23294(var_8C)
  loc_E46AC2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '186E8B0
  'Data Table: 514A68
  Dim var_C0 As String
  Dim var_C4 As String
  Dim unk_514A6F As Connection15
  Dim var_D4 As Variant
  Dim var_A8 As Double
  Dim var_10A As Integer
  Dim Me As Variant
  Dim var_110 As Variant
  Dim var_E8 As Fields15
  Dim var_124 As TextBox
  Dim var_E4 As Variant
  Dim var_120 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_148 As String
  Dim var_14C As Fields15
  Dim var_170 As Variant
  Dim var_194 As String
  Dim var_190 As TextBox
  Dim var_144 As Variant
  Dim var_180 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_264 As Variant
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_3C4 As Variant
  Dim var_3E4 As Variant
  Dim var_444 As Variant
  Dim var_46C As Double
  Dim var_1E4 As Variant
  Dim var_AC As Recordset15
  Dim var_98 As Recordset15
  Dim var_18C As Fields15
  Dim var_464 As Variant
  Dim var_4DC As Variant
  Dim var_4CC As Variant
  Dim var_B0 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_B8 As Recordset15
  Dim var_A0 As Double
  Dim var_234 As Variant
  Dim var_560 As Fields15
  loc_186C318: var_C0 = "Select * from Enviro where LogSite_Code='" & MemVar_1F95078
  loc_186C328: unk_514A6F.Execute var_C0 & "'", var_E4, -1
  loc_186C333: Set var_B4 = var_E8
  loc_186C343: On Error Goto loc_186E885
  loc_186C373: var_A8 = CDate(Format(Now, "hh:nn"))
  loc_186C384: var_10A = Cancel
  loc_186C38F: If (var_10A = CInt(0)) Then
  loc_186C39E:   If (global_72 = 1) Then
  loc_186C3A7:     Me.MoveFirst
  loc_186C3CA:     Set var_E8 = Me.TXT
  loc_186C3D0:     Call 0.Method_Txt_Validate0 (Cancel, var_110, var_C0, "roomno='", 0, 1)
  loc_186C3D8:     var_D4 = var_110.Text
  loc_186C3F1:     Me.Find var_10A & var_C0 & "'", var_A8, 1
  loc_186C406:   End If
  loc_186C454:   Set var_E8 = Me.TXT
  loc_186C45A:   Call 0.Method_Txt_Validate0 (Cancel, var_110, var_C0)
  loc_186C462:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_110.Text
  loc_186C47A:   If (1 Or (var_C0 = vbNullString)) Then
  loc_186C48A:     Set var_E8 = Me.TXT
  loc_186C490:     Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_186C498:     var_110.Tag = vbNullString
  loc_186C4A4:     Exit Sub
  loc_186C4A5:   End If
  loc_186C4E0:   Set var_120 = Me.TXT
  loc_186C4E6:   Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_186C4EE:   var_124.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_186C53F:   Set var_120 = Me.TXT
  loc_186C545:   Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_186C54D:   var_124.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_186C59C:   Set var_120 = Me.TXT
  loc_186C5A2:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_124)
  loc_186C5AA:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FolioNo")))
  loc_186C5F7:   Set var_120 = Me.TXT
  loc_186C5FD:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_124)
  loc_186C605:   var_124.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("DocID")))
  loc_186C652:   Set var_120 = Me.TXT
  loc_186C658:   Call 0.Method_Txt_Validate0 (CInt(&H16), var_124)
  loc_186C660:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PlanCode")))
  loc_186C68E:   var_110 = Me.Fields.Item("ChkInDate")
  loc_186C6AD:   Set var_120 = Me.TXT
  loc_186C6B3:   Call 0.Method_Txt_Validate0 (CInt(1), var_124)
  loc_186C6BB:   var_124.Text = Proc_6_38_E69628(CVar(var_110))
  loc_186C6DA:   Set var_E8 = Me.TXT
  loc_186C6E0:   Call 0.Method_Txt_Validate0 (CInt(1), var_110)
  loc_186C71A:   1(CStr(Format(CVar(var_110), "DDDD"))).Caption = 1
  loc_186C785:   Set var_120 = Me.TXT
  loc_186C78B:   Call 0.Method_Txt_Validate0 (CInt(2), var_124)
  loc_186C793:   var_124.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")))), 2))
  loc_186C7E7:   var_F8 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")))) 'String
  loc_186C804:   Set var_120 = Me.TXT
  loc_186C80A:   Call 0.Method_Txt_Validate0 (CInt(3), var_124)
  loc_186C812:   var_124.Text = CStr(Right(var_F8, 2))
  loc_186C86C:   Set var_120 = Me.TXT
  loc_186C872:   Call 0.Method_Txt_Validate0 (CInt(9), var_124)
  loc_186C87A:   var_124.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_186C8CC:   Set var_120 = Me.TXT
  loc_186C8D2:   Call 0.Method_Txt_Validate0 (CInt(9), var_124)
  loc_186C8DA:   var_124.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_186C929:   Set var_120 = Me.TXT
  loc_186C92F:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_124)
  loc_186C937:   var_124.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("companyCode")))
  loc_186C984:   Set var_120 = Me.TXT
  loc_186C98A:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_124)
  loc_186C992:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CompanyName")))
  loc_186C9DF:   Set var_120 = Me.TXT
  loc_186C9E5:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_124)
  loc_186C9ED:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("GuestStatus")))
  loc_186CA2A:   Proc_6_39_E7D3A0(var_F8, CVar(Me.Fields.Item("OldAdult")))
  loc_186CA41:   Set var_120 = Me.TXT
  loc_186CA47:   Call 0.Method_Txt_Validate0 (CInt(5), var_124)
  loc_186CA4F:   var_124.Text = CStr(var_F8)
  loc_186CA90:   Proc_6_39_E7D3A0(var_F8, CVar(Me.Fields.Item("OldChild")))
  loc_186CAA7:   Set var_120 = Me.TXT
  loc_186CAAD:   Call 0.Method_Txt_Validate0 (CInt(6), var_124)
  loc_186CAB5:   var_124.Text = CStr(var_F8)
  loc_186CB06:   Set var_120 = Me.TXT
  loc_186CB0C:   Call 0.Method_Txt_Validate0 (CInt(7), var_124)
  loc_186CB14:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RateCode")))
  loc_186CB51:   Proc_6_39_E7D3A0(var_F8, CVar(Me.Fields.Item("RoomRate")))
  loc_186CB68:   Set var_120 = Me.TXT
  loc_186CB6E:   Call 0.Method_Txt_Validate0 (CInt(8), var_124)
  loc_186CB76:   var_124.Text = CStr(var_F8)
  loc_186CBC7:   Set var_120 = Me.TXT
  loc_186CBCD:   Call 0.Method_Txt_Validate0 (CInt(4), var_124)
  loc_186CBD5:   var_124.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCatCode")))
  loc_186CC22:   Set var_120 = Me.TXT
  loc_186CC28:   Call 0.Method_Txt_Validate0 (CInt(4), var_124)
  loc_186CC30:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")))
  loc_186CC7D:   Set var_120 = Me.TXT
  loc_186CC83:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_124)
  loc_186CC8B:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("STATUSNAME")))
  loc_186CCD8:   Set var_120 = Me.TXT
  loc_186CCDE:   Call 0.Method_Txt_Validate0 (CInt(&H12), var_124)
  loc_186CCE6:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments1")))
  loc_186CD33:   Set var_120 = Me.TXT
  loc_186CD39:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_124)
  loc_186CD41:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments2")))
  loc_186CD8E:   Set var_120 = Me.TXT
  loc_186CD94:   Call 0.Method_Txt_Validate0 (CInt(&H10), var_124)
  loc_186CD9C:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments3")))
  loc_186CDF4:   Set var_120 = Me.TXT
  loc_186CDFA:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_124)
  loc_186CE02:   var_124.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_186CE5E:   Set var_120 = Me.TXT
  loc_186CE64:   Call 0.Method_Txt_Validate0 (CInt(&H14), var_124)
  loc_186CE6C:   var_124.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_186CE96:   var_E8 = Me.Fields
  loc_186CEDE:   var_124 = Me.Fields.Item("StateName")
  loc_186CF42:   var_194 = var_E8 & Proc_6_38_E69628(Trim(CVar(var_124)), Proc_6_38_E69628(Trim(CVar(var_E8.Item("CityName")))) & ",") & "," & Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("CountryName"))))
  loc_186CF50:   Set var_18C = Me.TXT
  loc_186CF56:   Call 0.Method_Txt_Validate0 (CInt(&H15), var_190)
  loc_186CF5E:   var_190.Text = var_194
  loc_186CFC9:   Set var_120 = Me.TXT
  loc_186CFCF:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_124)
  loc_186CFD7:   var_124.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DepDate")))
  loc_186D03E:   Set var_120 = Me.TXT
  loc_186D044:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_124)
  loc_186D04C:   var_124.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_186D084:   var_110 = Me.Fields.Item("DepTime")
  loc_186D0BD:   Set var_120 = Me.TXT
  loc_186D0C3:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_124)
  loc_186D0CB:   var_124.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_110))), 2))
  loc_186D0F7:   Set var_E8 = Me.TXT
  loc_186D0FD:   Call 0.Method_Txt_Validate0 (CInt(1), var_110)
  loc_186D105:   var_C0 = var_110.Text
  loc_186D14E:   If ((CDate(var_C0) <= MemVar_1F950EC) And IsNull(CVar(Me.Fields.Item("ChkOutDate")))) Then
  loc_186D157:     Call 0.Method_arg_50 (var_C0)
  loc_186D167:     If (var_C0 <> "Reverse Check Out Entry") Then
  loc_186D18F:       var_E4 = Me.Fields.Item("ChkInDate").Value
  loc_186D1A9:       For var_1A4 = CDate(var_E4) To MemVar_1F950EC: var_94 = var_1A4 'Double
  loc_186D1C3:         var_F8 = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_186D1D1:         Proc_6_7_F26918(var_E4, var_94, var_F8, var_464)
  loc_186D1D9:         var_108 = -1 & var_E4 
  loc_186D1EC:         var_170 = Right(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInDate")))), 2) & ">=chkindate and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_186D213:         var_110 = Me.Fields.Item("DocID")
  loc_186D222:         Proc_6_17_EAAE40(var_1E4, CVar(var_110), var_170 & "' and RoomOcc.Docid=")
  loc_186D242:         Proc_6_7_F26918(var_234, var_94)
  loc_186D253:         var_264 = var_18C & var_1E4 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_234 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_186D262:         Proc_6_7_F26918(var_284, var_94)
  loc_186D282:         Proc_6_7_F26918(var_2D4, var_94)
  loc_186D2A6:         var_344 = var_264 & var_284 & ">=chkindate and ChngDate<=" & var_2D4 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) & "' and RoomOcc.Docid=" 
  loc_186D2C4:         var_124 = Me.Fields.Item("DocID")
  loc_186D2D3:         Proc_6_17_EAAE40(var_374, CVar(var_124))
  loc_186D2F7:         var_3E4 = var_344 & var_374 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) & "' and RoomOcc.Docid=" 
  loc_186D30D:         var_14C = Me.Fields
  loc_186D324:         Proc_6_17_EAAE40(var_414, CVar(var_14C.Item("DocID")))
  loc_186D343:         unk_514A6F.Execute CStr(var_3E4 & var_414 & ")"), CDate(var_E4), 
  loc_186D34E:         Set var_98 = var_18C
  loc_186D3AE:         If (CDbl(global_76) <> CDbl(0)) Then
  loc_186D3BF:           Set var_E8 = Me.TXT
  loc_186D3C5:           Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_186D3F4:           If (CDbl(global_76) = CDbl(Val(var_110.Text))) Then
  loc_186D402:             Proc_6_7_F26918(var_E4, var_94)
  loc_186D443:             Set var_120 = Me.TXT
  loc_186D449:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_124)
  loc_186D45E:             var_46C = Val(var_124.Text)
  loc_186D47C:             var_F8 = CVar("select Count(*) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F95070 & "' and Vdate=") 'String
  loc_186D49E:             var_1E4 = var_F8 & var_E4 & " and FolioNoDOCID='" & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("mFolioNoDocid")))) & "' And (RelatedFolioNo=" 
  loc_186D4B2:             var_214 = var_1E4 & CVar(var_46C) & " Or RelatedFolioNo=0)" 
  loc_186D4C0:             unk_514A6F.Execute CStr(var_214), var_234, -1
  loc_186D4CB:             Set var_AC = var_14C
  loc_186D500:           Else
  loc_186D50B:             Proc_6_7_F26918(var_E4, var_94, var_14C)
  loc_186D54C:             Set var_120 = Me.TXT
  loc_186D552:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_124)
  loc_186D567:             var_46C = Val(var_124.Text)
  loc_186D585:             var_F8 = CVar("select Count(*) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F95070 & "' and Vdate=") 'String
  loc_186D59E:             var_1D4 = var_F8 & var_E4 & " and FolioNoDOCID='" & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("mFolioNoDocid")), var_46C)) 
  loc_186D5B2:             var_1F4 = var_1D4 & "' And RelatedFolioNo=" & CVar(var_46C) 
  loc_186D5C0:             unk_514A6F.Execute CStr(var_1F4), var_214, -1
  loc_186D5CB:             Set var_AC = var_14C
  loc_186D5FB:           End If
  loc_186D5FE:         Else
  loc_186D619:           var_F8 = CVar("select Count(*) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F95070 & "' and Vdate=") 'String
  loc_186D627:           Proc_6_7_F26918(var_E4, var_94, var_F8, var_1F4, -1)
  loc_186D667:           var_180 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DocID")), var_120 & var_E4 & " and FolioNoDocid='", var_14C)) 'String
  loc_186D673:           var_1E4 = var_46C & var_180 & "'" 
  loc_186D681:           unk_514A6F.Execute CStr(var_1E4), var_46C, 
  loc_186D68C:           Set var_AC = var_120
  loc_186D6B2:         End If
  loc_186D6CC:         var_110 = var_AC.Fields.Item(0)
  loc_186D6D4:         var_E4 = var_110.Value
  loc_186D6EE:         If (var_E4 <= 0) Then
  loc_186D6FF:           Set var_E8 = Me.TXT
  loc_186D705:           Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_186D727:           If (var_110.Text = global_76) Then
  loc_186D73E:             var_F8 = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_186D74C:             Proc_6_7_F26918(var_E4, var_94, var_F8)
  loc_186D79D:             Proc_6_17_EAAE40(var_1E4, CVar(Me.Fields.Item("DocID")), var_55C & var_E4 & ">=chkindate and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) & "' and RoomOcc.Docid=")
  loc_186D7A5:             var_1F4 = -1 & var_1E4 
  loc_186D7BD:             Proc_6_7_F26918(var_234, var_94)
  loc_186D7CE:             var_264 = var_1F4 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_234 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_186D7DD:             Proc_6_7_F26918(var_284, var_94)
  loc_186D7FD:             Proc_6_7_F26918(var_2D4, var_94)
  loc_186D818:             var_324 = var_264 & var_284 & ">=chkindate and ChngDate<=" & var_2D4 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_186D84E:             Proc_6_17_EAAE40(var_374, CVar(Me.Fields.Item("DocID")))
  loc_186D869:             var_3C4 = var_324 & "' and RoomOcc.Docid=" & var_374 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_186D89F:             Proc_6_17_EAAE40(var_414, CVar(Me.Fields.Item("DocID")))
  loc_186D8B0:             var_444 = var_3C4 & "' and RoomOcc.Docid=" & var_414 & ") and RoomOcc.Docid NOT IN (SELECT Distinct FolioNoDocid FROM PAYCHARGE where RoomNo='" 
  loc_186D8C3:             var_18C = var_98.Fields
  loc_186D8D3:             var_464 = CVar(var_18C.Item("RoomNo")) 'Address
  loc_186D8F7:             Proc_6_7_F26918(var_4CC, var_94)
  loc_186D8FF:             var_4DC = var_560 & CVar(Proc_6_38_E69628(var_464, var_444)) & "' And  VDate=" & var_4CC 
  loc_186D929:             unk_514A6F.Execute CStr(var_4DC & " AND VType in ('RC') and LogSite_Code='" & CVar(MemVar_1F95078) & "')"), , 
  loc_186D934:             Set var_B0 = var_560
  loc_186D99F:           Else
  loc_186D9B3:             var_F8 = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_186D9C1:             Proc_6_7_F26918(var_E4, var_94, var_F8)
  loc_186D9D2:             var_144 = var_4DC & var_E4 & ">=chkindate and Roomocc.LogSite_Code='" 
  loc_186DA12:             Proc_6_17_EAAE40(var_1E4, CVar(Me.Fields.Item("DocID")), var_144 & CVar(MemVar_1F95078) & "' and RoomOcc.Docid=")
  loc_186DA1A:             var_1F4 = -1 & var_1E4 
  loc_186DA32:             Proc_6_7_F26918(var_234, var_94)
  loc_186DA43:             var_264 = var_1F4 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_234 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_186DA52:             Proc_6_7_F26918(var_284, var_94)
  loc_186DA72:             Proc_6_7_F26918(var_2D4, var_94)
  loc_186DA8D:             var_324 = var_264 & var_284 & ">=chkindate and ChngDate<=" & var_2D4 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_186DAAC:             var_120 = Me.Fields
  loc_186DAC3:             Proc_6_17_EAAE40(var_374, CVar(var_120.Item("DocID")))
  loc_186DADE:             var_3C4 = var_324 & "' and RoomOcc.Docid=" & var_374 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_186DB14:             Proc_6_17_EAAE40(var_414, CVar(Me.Fields.Item("DocID")))
  loc_186DB25:             var_444 = var_3C4 & "' and RoomOcc.Docid=" & var_414 & ") and RoomOcc.Docid NOT IN (SELECT Distinct FolioNoDocid FROM PAYCHARGE where VDate=" 
  loc_186DB34:             Proc_6_7_F26918(var_464, var_94)
  loc_186DB66:             unk_514A6F.Execute CStr(var_444 & var_464 & " AND VType in ('RC') and LogSite_Code='" & CVar(MemVar_1F95078) & "')"), var_18C, 
  loc_186DB71:             Set var_B0 = var_18C
  loc_186DBCF:           End If
  loc_186DBE3:           If (var_B0.RecordCount > 0) Then
  loc_186DC39:             unk_514A6F.Execute CStr("Select * from RoomOcc Where DocId='" & var_B0.Fields.Item("DocID").Value & "' And SNo=1"), var_144, -1
  loc_186DC44:             Set var_B8 = var_120
  loc_186DC97:             If (Proc_6_38_E69628(CVar(var_B4.Fields.Item("CheckOut"))) = "24 Hrs") Then
  loc_186DD48:               Proc_96_11_EFA968(CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ChkInTime")))), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("variation")), 1)), "hh:nn")), 1)
  loc_186DD4D:               var_A0 = 1
  loc_186DD78:             Else
  loc_186DDB2:               var_108 = "hh:nn"
  loc_186DDC1:               var_144 = Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CheckoutVar")), var_A0)), var_108)
  loc_186DE26:               Proc_96_11_EFA968(CDate(var_144), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("variation")), 1, 1)), "hh:nn")), 1)
  loc_186DE2B:               var_A0 = 1
  loc_186DE53:             End If
  loc_186DE8C:             If (Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomRentChkOutPost")), var_A0) = "Auto") Then
  loc_186DE8F:               GoTo loc_186DF5E
  loc_186DE92:             End If
  loc_186DEB1:             var_F8 = CVar(var_B8.Fields.Item("ChkInDate")) 'Address
  loc_186DF21:             If ((((Proc_6_38_E69628(CVar(var_B4.Fields.Item("CheckOut"))) = "24 Hrs") And (var_94 = MemVar_1F950EC)) And (var_94 <> CDate(Proc_6_38_E69628(var_F8, 1)))) And (var_A0 >= var_A8)) Then
  loc_186DF24:               GoTo loc_186E837
  loc_186DF27:             End If
  loc_186DF5B:             If (MsgBox("Want to Post Charges for " & CDate(var_94), &H24, var_F8, var_108, var_144) = 6) Then
  loc_186DF5E:               ' Referenced from: 186DE8F
  loc_186DF9D:               var_120 = var_B4.Fields
  loc_186DFB6:               var_C4 = Proc_6_38_E69628(CVar(var_120.Item("RoomRentBefChkOut")), (Proc_6_38_E69628(CVar(var_B4.Fields.Item("CheckOut"))) = "Other"))
  loc_186DFD4:               If (var_120 And (var_C4 = "Yes")) Then
  loc_186DFE6:                 var_E8 = var_B8.Fields
  loc_186E021:                 var_F8 = CVar(var_B4.Fields.Item("CheckoutVar")) 'Address
  loc_186E10A:                 Proc_96_12_F0A130(CDate(Format(CVar(Proc_6_38_E69628(var_F8)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VariationBefore")), 1)), "hh:nn")), (var_94 = CDate(Proc_6_38_E69628(CVar(var_E8.Item("ChkInDate"))))), 1)
  loc_186E151:                 If (1 And (1 > CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ChkInTime")), 1)), "hh:nn")))) Then
  loc_186E179:                   unk_514A6F.Execute CStr(var_B0.Source), var_F8, -1
  loc_186E1E7:                   Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_E8, 0, "*", 0)
  loc_186E1FC:                 End If
  loc_186E1FC:               End If
  loc_186E20B:               If ((var_94 = MemVar_1F950EC) And (var_A0 >= var_A8)) Then
  loc_186E21D:                 var_E8 = var_B4.Fields
  loc_186E266:                 var_C4 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("CheckOut")), (Proc_6_38_E69628(CVar(var_E8.Item("RoomRentChkOutPost")), 1, 1) = "Semi"))
  loc_186E2BB:                 If (1 And (Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomRentBefChkOut")), (var_E8 And (var_C4 = "Other"))) <> "Yes")) Then
  loc_186E2E8:                   var_148 = 0
  loc_186E311:                   Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_186E329:                 Else
  loc_186E3AC:                   var_C4 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("CheckOut")), (Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomRentChkOutPost")), 1) = "Auto"))
  loc_186E416:                   If (((1 And (var_C4 = "Other")) And (Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomRentBefChkOut"))) <> "Yes")) And (var_94 = CDate(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ChkInDate")), var_148)))) Then
  loc_186E443:                     var_148 = 0
  loc_186E46C:                     Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_186E484:                   Else
  loc_186E4A3:                     var_108 = CVar(var_B8.Fields.Item("ChkInDate")) 'Address
  loc_186E4CE:                     var_144 = CVar(var_B4.Fields.Item("CheckoutVar")) 'Address
  loc_186E5F1:                     var_C4 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomRentBefChkOut")), (Proc_6_38_E69628(CVar(var_B4.Fields.Item("CheckOut")), 1, 1) = "Other"))
  loc_186E619:                     Proc_96_12_F0A130(CDate(Format(CVar(Proc_6_38_E69628(var_144, 1)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VariationBefore")), 1)), "hh:nn")))
  loc_186E66C:                     If (1 And (((1 And (var_C4 = "Yes")) And (var_94 = CDate(Proc_6_38_E69628(var_108, Proc_6_38_E69628(var_108, var_148))))) <= CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ChkInTime")), 1, 1)), "hh:nn")))) Then
  loc_186E699:                       var_148 = 0
  loc_186E6C2:                       Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_186E6DA:                     Else
  loc_186E6F9:                       var_F8 = CVar(var_B8.Fields.Item("ChkInDate")) 'Address
  loc_186E759:                       If ((Proc_6_38_E69628(CVar(var_B4.Fields.Item("CheckOut")), 1) = "24 Hrs") And (var_94 = CDate(Proc_6_38_E69628(var_F8, var_148)))) Then
  loc_186E786:                         var_148 = 0
  loc_186E7AF:                         Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_186E7C4:                       End If
  loc_186E7C4:                     End If
  loc_186E7C4:                   End If
  loc_186E7C4:                 End If
  loc_186E7C7:               Else
  loc_186E81A:                 Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*", 0, 1)
  loc_186E82F:               End If
  loc_186E834:               global_132 = &HFF
  loc_186E837:               ' Referenced from: 186DF24
  loc_186E837:             End If
  loc_186E837:           End If
  loc_186E837:         End If
  loc_186E83A:       Next var_1A4 'Double
  loc_186E83F:     End If
  loc_186E844:     Set var_AC = Nothing
  loc_186E84C:     Set var_98 = Nothing
  loc_186E84F:   End If
  loc_186E853:   Set var_E8 = Me.FGrid
  loc_186E864: End If
  loc_186E869: Set var_B8 = Nothing
  loc_186E871: Set var_B4 = Nothing
  loc_186E879: Set var_BC = Nothing
  loc_186E881: Set var_B0 = Nothing
  loc_186E884: Exit Sub
  loc_186E885: ' Referenced from: 186C343
  loc_186E89E: MsgBox("TXT_VALIDATE", 0, var_F8, var_108, var_144)
  loc_186E8AE: Exit Sub
End Sub

Private Sub Command2_Click() '14E67AC
  'Data Table: 514A68
  Dim var_B4 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_514A6F As Connection15
  Dim var_9C As Recordset15
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_B8 As String
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_14C As Variant
  Dim var_154 As TextBox
  Dim var_160 As String
  Dim var_164 As String
  Dim var_158 As String
  Dim MemVar_1F950EC As Double
  Dim var_148 As Variant
  Dim var_1A8 As Variant
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_308 As Variant
  Dim var_3C8 As Variant
  Dim var_128 As Variant
  Dim var_178 As Variant
  Dim var_1F8 As Variant
  Dim unk_514A84 As Connection15
  Dim var_A8 As Long
  Dim var_3F4 As String
  Dim var_150 As Field20
  loc_14E5A56: Set var_B0 = Me.TXT
  loc_14E5A5C: Call 0.Method_Command2_Click0 (CInt(&HA), var_B4)
  loc_14E5A64: var_B8 = var_B4.Text
  loc_14E5A7B: If (var_B8 = vbNullString) Then
  loc_14E5A7E:   Exit Sub
  loc_14E5A7F: End If
  loc_14E5A9D: Set var_B0 = Me.TXT
  loc_14E5AA3: Call 0.Method_Command2_Click0 (CInt(&HA), var_B4, var_B8, "Select  isnull(bill_no,'') as Bill_No,AmtDr from paycharge where (ContraDocId is NULL or contradocid='') and folionoDocid='")
  loc_14E5AAB: var_E0 = var_B4.Tag
  loc_14E5AB4: var_BC = -1 & var_B8
  loc_14E5AC4: unk_514A6F.Execute var_BC & "'", var_E4, 
  loc_14E5ACF: Set var_9C = var_E4
  loc_14E5AFB: If (var_9C.RecordCount > 0) Then
  loc_14E5B07:   var_9C.Filter = "Bill_No='' and AmtDr<>0"
  loc_14E5B0C: End If
  loc_14E5B12: var_E8 = var_9C.RecordCount
  loc_14E5B20: If (var_E8 > 0) Then
  loc_14E5B3C:   MsgBox("First Print Bill ", &H40, var_108, var_128, var_148)
  loc_14E5B4C:   Exit Sub
  loc_14E5B4D: End If
  loc_14E5B6E: Set var_B0 = Me.TXT
  loc_14E5B74: Call 0.Method_Command2_Click0 (CInt(&HA), var_B4, var_B8, "Select distinct bill_no from paycharge where foliono=")
  loc_14E5B7C: var_E0 = var_B4.Text
  loc_14E5B85: var_BC = -1 & var_B8
  loc_14E5B95: unk_514A6F.Execute var_BC & " and (Bill_NO<>'' and Bill_NO is not null)", var_E4, var_E8
  loc_14E5B9D:  = var_E4.RecordCount
  loc_14E5BC0: If (var_E8 <= 0) Then
  loc_14E5BD6:   var_E0 = "First Print Bill "
  loc_14E5BDC:   MsgBox(var_E0, &H40, var_108, var_128, var_148)
  loc_14E5BEC:   Exit Sub
  loc_14E5BED: End If
  loc_14E5C0A: Proc_6_17_EAAE40(var_E0, MemVar_1F95078, "Select * from enviro WHERE LOGSITE_CODE=")
  loc_14E5C12: var_108 = var_128 & var_E0 
  loc_14E5C16: var_B8 = CStr(var_108)
  loc_14E5C20: unk_514A6F.Execute var_B8, -1, var_B0
  loc_14E5C2B: Set var_9C = var_B0
  loc_14E5C5B: Set var_B0 = Me.TXT
  loc_14E5C61: Call 0.Method_Command2_Click0 (CInt(&HA), var_B4, var_B8, "Select distinct Bill_No from Paycharge where FolioNo=")
  loc_14E5C69: var_E0 = var_B4.Text
  loc_14E5C72: var_BC = -1 & var_B8
  loc_14E5C7B: unk_514A6F.Execute var_BC, var_E4, 
  loc_14E5C86: Set var_AC = var_E4
  loc_14E5CB6: var_B4 = Me.Fields.Item("ChkOutDate")
  loc_14E5CD5: Set var_E4 = Me.TXT
  loc_14E5CDB: Call 0.Method_Command2_Click0 (CInt(0), var_14C)
  loc_14E5CFF: Set var_150 = Me.TXT
  loc_14E5D05: Call 0.Method_Command2_Click0 (CInt(&HA), var_154)
  loc_14E5D32: If ((IsNull(CVar(var_B4)) And (var_14C.Text <> vbNullString)) And (var_154.Text <> vbNullString)) Then
  loc_14E5D43:   Set var_B0 = Me.TXT
  loc_14E5D49:   Call 0.Method_Command2_Click0 (CInt(9), var_B4)
  loc_14E5D64:   Set var_E4 = Me.TXT
  loc_14E5D6A:   Call 0.Method_Command2_Click0 (CInt(0), var_14C)
  loc_14E5D8C:   var_BC = "Checking Out Person :" & var_B4.Text
  loc_14E5DA1:   var_160 = var_BC & vbCrLf & "RoomNo :" & var_14C.Text
  loc_14E5DE4:   If (MsgBox(CVar(var_160 & vbCrLf & "Are you Sure ?"), &H21, var_108, var_128, var_148) = 1) Then
  loc_14E5DF5:     Set var_B0 = Me.TXT
  loc_14E5DFB:     Call 0.Method_Command2_Click0 (CInt(1), var_B4)
  loc_14E5E1B:     If (CDate(var_B4.Text) <= MemVar_1F950EC) Then
  loc_14E5E1E:       ' Referenced from: 14E5FC3
  loc_14E5E32:       var_B8 = "Select Sum(AmtDr-AmtCr) as Bal from PayCharge where lOGSite_Code='" & MemVar_1F95078
  loc_14E5E4A:       Set var_B0 = Me.TXT
  loc_14E5E50:       Call 0.Method_Command2_Click0 (CInt(&HA), var_B4, var_BC, var_B4.Text & "' and VType Not In ('ARRES','ADRES') and Foliono=")
  loc_14E5E58:       var_E0 = var_B4.Text
  loc_14E5E61:       var_158 = -1 & var_BC
  loc_14E5E6A:       unk_514A6F.Execute var_14C.Text, var_E4, 
  loc_14E5EA6:       var_B4 = var_E4.Fields.Item("Bal")
  loc_14E5EAE:       var_E0 = CVar(var_B4) 'Address
  loc_14E5EB5:       Proc_6_39_E7D3A0(var_108)
  loc_14E5EBD:       var_F8 = 0
  loc_14E5ECF:       If CBool(var_108 <> var_F8) Then
  loc_14E5F01:         If (MsgBox("Guest Balance is Not Zero", &H41, var_108, var_128, var_148) = 1) Then
  loc_14E5F16:           fdPaymentCharge.OpenMode = 1
  loc_14E5F24:           fdPaymentCharge.ParentForm = "Check Out"
  loc_14E5F37:           Set var_B0 = Me.LblName
  loc_14E5F3D:           Call 0.Method_Command2_Click0 (CInt(0), var_B4)
  loc_14E5F5D:           Set var_E4 = New fdPaymentCharge.Txt
  loc_14E5F63:           Call 0.Method_Command2_Click0 (CInt(0), var_14C)
  loc_14E5F6B:           fdPaymentCharge.Txt.Text = fdPaymentCharge.LblName.Text
  loc_14E5F90:           Call fdPaymentCharge.Txt_Validate(CInt(0))
  loc_14E5F9E:           Call 0.Method_arg_54 ("Bill Settlement", 0)
  loc_14E5FB6:           Call 0.Method_arg_2B0 (1, var_F8)
  loc_14E5FC0:           Set var_8C = Nothing
  loc_14E5FC3:           GoTo loc_14E5E1E
  loc_14E5FC9:         Else
  loc_14E5FDC:           var_E0 = "Guest Not Checked Out"
  loc_14E5FE2:           MsgBox(var_E0, &H40, var_108, var_128, var_148)
  loc_14E5FF2:           Exit Sub
  loc_14E5FF3:         End If
  loc_14E5FF6:       Else
  loc_14E5FFC:         var_F8 = 0
  loc_14E6029:         unk_514A6F.Execute "Select NCUR from enviro where LOGsite_code='" & MemVar_1F95078 & "'", var_E0, -1
  loc_14E6031:         var_B0 = var_B0.Fields
  loc_14E6039:         var_F8 = var_B4.Item(var_B4)
  loc_14E6041:         var_E4 = var_E4.Value
  loc_14E604B:         MemVar_1F950EC = CDate(var_108)
  loc_14E606E:         unk_514A6F.BeginTrans var_E8
  loc_14E6076:         var_E0 = Time
  loc_14E608A:         var_108 = "hh"
  loc_14E60CE:         Proc_6_7_F26918(var_1F8, MemVar_1F950EC, 1, 1, 1)
  loc_14E60DE:         Proc_6_7_F26918(var_248, MemVar_1F950EC, 1)
  loc_14E60EE:         Proc_6_7_F26918(var_2D8, CVar(Proc_6_15_EF37AC(MemVar_1F950EC, var_108)))
  loc_14E6101:         Set var_B0 = Me.TXT
  loc_14E6107:         Call 0.Method_Command2_Click0 (CInt(&HA), var_B4)
  loc_14E610F:         var_B8 = var_B4.Text
  loc_14E6128:         Call 0.Method_Command2_Click0 (CInt(0), var_14C)
  loc_14E614F:         var_148 = (Format(var_E0, var_108) + ":")
  loc_14E6156:         var_1A8 = (var_148 + Format(Time, "nn"))
  loc_14E616A:         var_208 = "Update RoomOcc set chkouttime='" & var_1A8 & "',ChkOutDate=" & var_1F8 
  loc_14E6173:         var_228 = var_208 & ",UserchkoutDate=" 
  loc_14E61A6:         var_308 = var_228 & var_248 & ",ChkOutUser='" & CVar(MemVar_1F950C8) & "',Type='O',U_EntDt=" & var_2D8 & ",U_AE='E' where FolioNo=" 
  loc_14E61DF:         var_3C8 = var_308 & CVar(var_B8) & " and Site_Code='" & CVar(MemVar_1F95070) & "' and RoomNO='" & CVar(var_14C.Text) & "' and (Type='' or Type is NULL)" 
  loc_14E61ED:         unk_514A6F.Execute CStr(var_3C8), var_3E8, -1
  loc_14E6261:         Set var_B0 = Me.TXT
  loc_14E6267:         Call 0.Method_Command2_Click0 (CInt(0), var_B4, var_B8, "Update RoomMast set ROOMSTAT='D' WHERE CODE='", var_E0)
  loc_14E626F:         -1 = var_B4.Text
  loc_14E6278:         var_BC = Me.TXT & var_B8
  loc_14E6288:         unk_514A6F.Execute var_BC & "' AND TYPE='RO'", var_150, var_E0
  loc_14E62BF:         Proc_6_7_F26918(var_E0, MemVar_1F950EC, "Update PayCharge set SettleDate=")
  loc_14E62C7:         var_108 = var_208 & var_E0 
  loc_14E62D0:         var_128 = var_108 & "where FolioNo=" 
  loc_14E62E2:         Set var_B0 = Me.TXT
  loc_14E62E8:         Call 0.Method_Command2_Click0 (CInt(&HA), var_B4, var_B8)
  loc_14E62F0:         var_128 = var_B4.Text
  loc_14E62F8:         var_148 = CVar(var_B8) 'String
  loc_14E62FB:         var_178 = -1 & var_148 
  loc_14E6317:         var_1A8 = Time & " and LogSite_Code='" & CVar(MemVar_1F95078) & "' and RoomNO='" 
  loc_14E6329:         Set var_E4 = Me.TXT
  loc_14E632F:         Call 0.Method_Command2_Click0 (CInt(0), var_14C, var_BC)
  loc_14E6337:         var_1A8 = var_14C.Text
  loc_14E634F:         var_C0 = CStr(var_150 & CVar(var_BC) & "'")
  loc_14E6359:         unk_514A6F.Execute var_C0, , 
  loc_14E6391:         If (MemVar_1F951D4 = "Y") Then
  loc_14E639A:           var_F8 = 0
  loc_14E63B9:           unk_514A84.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_E0, -1
  loc_14E63C1:           var_B0 = var_B0.Fields
  loc_14E63C9:           var_F8 = var_B4.Item(var_B4)
  loc_14E63D1:           var_E4 = var_E4.Value
  loc_14E63DB:           var_A8 = CLng(var_108)
  loc_14E641F:           Set var_B0 = Me.TXT
  loc_14E6425:           Call 0.Method_Command2_Click0 (CInt(0), var_B4, var_C0, "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_A8) & ",'CHKOT','", var_E0)
  loc_14E642D:           -1 = var_B4.Text
  loc_14E643D:           var_164 = var_400 & var_C0 & "','"
  loc_14E644E:           Set var_E4 = Me.TXT
  loc_14E6454:           Call 0.Method_Command2_Click0 (CInt(0), var_14C, var_160)
  loc_14E645C:           var_164 = var_14C.Text
  loc_14E646C:           var_3F4 = var_A8 & var_160 & "','"
  loc_14E647D:           Set var_150 = Me.TXT
  loc_14E6483:           Call 0.Method_Command2_Click0 (CInt(9), var_154, var_3F0)
  loc_14E648B:           var_3F4 = var_154.Text
  loc_14E64A4:           unk_514A84.Execute var_108 & var_3F0 & "',0)", , 
  loc_14E64D8:         End If
  loc_14E64DE:         unk_514A6F.CommitTrans
  loc_14E64E3:         Call Proc_174_55_EABDF0()
  loc_14E64E8:       End If
  loc_14E64EB:     Else
  loc_14E6504:       MsgBox("InValid Check Out Date", 0, var_108, var_128, var_148)
  loc_14E6514:       Exit Sub
  loc_14E6515:     End If
  loc_14E6518:   Else
  loc_14E651F:     Call Txt_GotFocus(CInt(0))
  loc_14E6524:   End If
  loc_14E6527: Else
  loc_14E6535:   Set var_B0 = Me.TXT
  loc_14E653B:   Call 0.Method_Command2_Click0 (CInt(0), var_B4)
  loc_14E6543:   var_B8 = var_B4.Text
  loc_14E655E:   Set var_E4 = Me.TXT
  loc_14E6564:   Call 0.Method_Command2_Click0 (CInt(&HA), var_14C)
  loc_14E658C:   If ((var_B8 <> vbNullString) And (var_14C.Text <> vbNullString)) Then
  loc_14E65A2:     var_E0 = "Want to Cancel Check Out ?"
  loc_14E65BE:     If (MsgBox(var_E0, &H24, var_108, var_128, var_148) = 6) Then
  loc_14E65EE:       Set var_B0 = Me.TXT
  loc_14E65F4:       Call 0.Method_Command2_Click0 (CInt(0), var_B4, var_B8, "Select Count(*) from RoomOcc where RoomNO='", var_E0, -1)
  loc_14E6615:       unk_514A6F.Execute var_14C & var_B8 & "' and CHkoutDate is NULL", 0, var_150
  loc_14E661D:       var_108 = var_B4.Text.Fields
  loc_14E6625:        = var_14C.Item()
  loc_14E662D:        = var_150.Value
  loc_14E665A:       If (var_108 > 0) Then
  loc_14E6676:         MsgBox("Sorry! Room Already Occupied", &H40, var_108, var_128, var_148)
  loc_14E6686:         Exit Sub
  loc_14E6687:       End If
  loc_14E6690:       unk_514A6F.BeginTrans var_E8
  loc_14E66B2:       Proc_6_7_F26918(var_108, CVar(Proc_6_15_EF37AC("Update RoomOcc set chkouttime='',ChkOutDate=NULL,Type='',U_EntDt=", var_228)))
  loc_14E66BA:       var_128 = -1 & var_108 
  loc_14E66C3:       var_148 = var_128 & ",U_AE='E' where Type='O' AND FolioNo=" 
  loc_14E66D5:       Set var_B0 = Me.TXT
  loc_14E66DB:       Call 0.Method_Command2_Click0 (CInt(&HA), var_B4, var_B8)
  loc_14E66E3:       var_148 = var_B4.Text
  loc_14E671C:       Set var_E4 = Me.TXT
  loc_14E6722:       Call 0.Method_Command2_Click0 (CInt(0), var_14C)
  loc_14E674C:       unk_514A6F.Execute CStr(var_150 & CVar(var_B8) & " and Site_Code='" & CVar(MemVar_1F95070) & "' and RoomNO='" & CVar(var_14C.Text) & "'"), , 
  loc_14E6784:       unk_514A6F.CommitTrans
  loc_14E6789:     End If
  loc_14E6789:     GoTo loc_14E678C
  loc_14E678C:     ' Referenced from:   14E6789
  loc_14E678C:   End If
  loc_14E678C: End If
  loc_14E6797: Me.Requery -1
  loc_14E67A3: Call Txt_GotFocus(CInt(0))
  loc_14E67A8: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F4B8D4
  'Data Table: 514A68
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4B7CB: Me.DGRoomNo.Visible = False
  loc_F4B7EA: If (Me.RecordCount > 0) Then
  loc_F4B829:   Set var_B4 = Me.TXT
  loc_F4B82F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4B837:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F4B86A:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F4B889:   Set var_B4 = Me.TXT
  loc_F4B88F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4B897:   var_B8.Text = CStr(var_B0.Value)
  loc_F4B8AD: End If
  loc_F4B8B8: Set var_A8 = Me.TXT
  loc_F4B8BE: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F4B8C6: var_B0.SetFocus
  loc_F4B8D2: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9AD20
  'Data Table: 514A68
  Dim var_A8 As Variant
  loc_E9ACA4: Set var_88 = Me.DGRoomNo
  loc_E9ACCE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9ACD6: Set var_BC = Me.DGRoomNo
  loc_E9ACF6: Set var_BC = var_A8(DGRoomNo.DispID_1B)
  loc_E9AD10: Proc_6_138_106E830(Me.DGRoomNo, global_100, 0)
  loc_E9AD1E: Exit Sub
End Sub

Private Sub cmdProvisional_Click() '10A0C24
  'Data Table: 514A68
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_88 As Fields15
  loc_10A097E: Set var_88 = Me.TXT
  loc_10A0984: Call 0.Method_cmdProvisional_Click0 (CInt(0), var_8C)
  loc_10A09A7: Set var_94 = Me.TXT
  loc_10A09AD: Call 0.Method_cmdProvisional_Click0 (CInt(&HA), var_98)
  loc_10A09D5: If ((var_8C.Text <> vbNullString) And (var_98.Text <> vbNullString)) Then
  loc_10A09DE:   Me.MoveFirst
  loc_10A09FA:   If (Me.RecordCount > 0) Then
  loc_10A09FD:     ' Referenced from: 10A0C20
  loc_10A0A0F:     If Not(Me.EOF) Then
  loc_10A0A51:       If (Me.Fields.Item("ModDescription").Value = "PROVISIONAL GUEST BILL WINDOWS PLAIN PAPER") Then
  loc_10A0A6D:         MsgBox("Sorry", 0, var_E4, var_104, var_124)
  loc_10A0A7D:         Exit Sub
  loc_10A0A81:       Else
  loc_10A0AC0:         If (Me.Fields.Item("ModDescription").Value = "PROVISIONAL GUEST BILL DOS 80 COL PREPRINTED") Then
  loc_10A0B02:           If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_10A0B05:             Call Proc_174_51_18F0674()
  loc_10A0B0D:           Else
  loc_10A0B3C:             If (MsgBox("Print Bill ?", &H24, var_E4, var_104, var_124) = 6) Then
  loc_10A0B3F:               Call Proc_174_51_18F0674()
  loc_10A0B47:             Else
  loc_10A0B47:               Exit Sub
  loc_10A0B48:             End If
  loc_10A0B48:           End If
  loc_10A0B4B:         Else
  loc_10A0B8A:           If (Me.Fields.Item("ModDescription").Value = "PROVISIONAL GUEST BILL DOS 80 COL PLAIN") Then
  loc_10A0BCC:             If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_10A0BCF:               Call Proc_174_52_1A2F980()
  loc_10A0BD7:             Else
  loc_10A0C06:               If (MsgBox("Print Bill ?", &H24, var_E4, var_104, var_124) = 6) Then
  loc_10A0C09:                 Call Proc_174_52_1A2F980()
  loc_10A0C11:               Else
  loc_10A0C11:                 Exit Sub
  loc_10A0C12:               End If
  loc_10A0C12:             End If
  loc_10A0C12:             GoTo loc_10A0C15
  loc_10A0C15:             ' Referenced from:     10A0C12
  loc_10A0C15:           End If
  loc_10A0C15:         End If
  loc_10A0C15:       End If
  loc_10A0C1B:       Me.MoveNext
  loc_10A0C20:       GoTo loc_10A09FD
  loc_10A0C23:     End If
  loc_10A0C23:   End If
  loc_10A0C23: End If
  loc_10A0C23: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_B 'F9C4FC
  'Data Table: 514A68
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_12C As TextBox
  loc_F9C3BF: If (CLng(Me.FGrid2.CellBackColor) = &HFDE1FF) Then
  loc_F9C3C2:   Call Proc_174_63_102DADC()
  loc_F9C3C7:   Exit Sub
  loc_F9C3C8: End If
  loc_F9C3DB: var_C0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_F9C42A: Set var_128 = Me.TXT
  loc_F9C430: Call 0.Method_FGrid2_UnknownEvent_B0 (CInt(0), var_12C, CStr(Trim(CVar(CStr(Me.FGrid2.TextMatrix))))))
  loc_F9C438: var_12C.Text = CVar(CLng(Me.FGrid2.Col))
  loc_F9C466: Call Txt_Validate(CInt(0))
  loc_F9C47E: var_C0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_F9C496: var_E0 = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_F9C4DC: If CBool(Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) <> vbNullString) Then
  loc_F9C4F2:   Me.FGrid2.CellBackColor = &HFF
  loc_F9C4FA: End If
  loc_F9C4FA: Exit Sub
End Sub

Private Sub Timer1_Timer() '1053A18
  'Data Table: 514A68
  Dim var_8C As TextBox
  loc_10537AE: Set var_88 = Me.TXT
  loc_10537B4: Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_10537D1: If (var_8C.BackColor = &HD3B3FF) Then
  loc_10537E2:   Set var_88 = Me.TXT
  loc_10537E8:   Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_1053807:   If (var_8C.Text <> vbNullString) Then
  loc_105381A:     Set var_88 = Me.TXT
  loc_1053820:     Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_1053828:     var_8C.BackColor = &HFFFFFF
  loc_1053834:   End If
  loc_1053842:   Set var_88 = Me.TXT
  loc_1053848:   Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_1053867:   If (var_8C.Text <> vbNullString) Then
  loc_105387A:     Set var_88 = Me.TXT
  loc_1053880:     Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_1053888:     var_8C.BackColor = &HFFFFFF
  loc_1053894:   End If
  loc_10538A2:   Set var_88 = Me.TXT
  loc_10538A8:   Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_10538C7:   If (var_8C.Text <> vbNullString) Then
  loc_10538DA:     Set var_88 = Me.TXT
  loc_10538E0:     Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_10538E8:     var_8C.BackColor = &HFFFFFF
  loc_10538F4:   End If
  loc_10538F7: Else
  loc_1053905:   Set var_88 = Me.TXT
  loc_105390B:   Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_105392A:   If (var_8C.Text <> vbNullString) Then
  loc_105393D:     Set var_88 = Me.TXT
  loc_1053943:     Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_105394B:     var_8C.BackColor = &HD3B3FF
  loc_1053957:   End If
  loc_1053965:   Set var_88 = Me.TXT
  loc_105396B:   Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_105398A:   If (var_8C.Text <> vbNullString) Then
  loc_105399D:     Set var_88 = Me.TXT
  loc_10539A3:     Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_10539AB:     var_8C.BackColor = &HD3B3FF
  loc_10539B7:   End If
  loc_10539C5:   Set var_88 = Me.TXT
  loc_10539CB:   Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_10539EA:   If (var_8C.Text <> vbNullString) Then
  loc_10539FD:     Set var_88 = Me.TXT
  loc_1053A03:     Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_1053A0B:     var_8C.BackColor = &HD3B3FF
  loc_1053A17:   End If
  loc_1053A17: End If
  loc_1053A17: Exit Sub
End Sub

Private Sub DGRoomType_UnknownEvent_9 'F4BCF4
  'Data Table: 514A68
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4BBEB: (False).Visible = 
  loc_F4BC0A: If (Me.RecordCount > 0) Then
  loc_F4BC49:   Set var_B4 = Me.TXT
  loc_F4BC4F:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4BC57:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4BC8A:   var_B0 = Me.Fields.Item("Name")
  loc_F4BCA9:   Set var_B4 = Me.TXT
  loc_F4BCAF:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4BCB7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4BCCD: End If
  loc_F4BCD8: Set var_A8 = Me.TXT
  loc_F4BCDE: Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4))
  loc_F4BCE6: var_B0.SetFocus
  loc_F4BCF2: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E65120
  'Data Table: 514A68
  loc_E650F0: If (CBool(().Visible) = &HFF) Then
  loc_E650F3:   Call DGRoomType_UnknownEvent_9()
  loc_E650F8: End If
  loc_E65114: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E65117:   Call DGRoomNo_UnknownEvent_9()
  loc_E6511C: End If
  loc_E6511C: Exit Sub
End Sub

Public Function MasterFormExitGet() '5161F8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '516207
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '516216
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '516225
  mVType = Value
End Sub

Public Property Get OpenMode() 'E03710
  'Data Table: 514A68
  loc_E03709: OpenMode = global_72
  loc_E0370F: Result  End Sub 'Double
End Sub

Public Property Let OpenMode(vNewValue) 'E01A68
  'Data Table: 514A68
  loc_E01A62: global_72 = vNewValue
  loc_E01A65: Exit Sub
End Sub

Public Property Get mFolioNo() 'E0E874
  'Data Table: 514A68
  loc_E0E868: var_88 = global_76
  loc_E0E86B: mFolioNo = 
  loc_E0E871: BranchFVar -769
End Sub

Public Property Let mFolioNo(vNewValue) 'E0E1B4
  'Data Table: 514A68
  loc_E0E1AC: global_76 = vNewValue
  loc_E0E1B0: Exit Sub
End Sub

Public Property Get SplitBill() 'E04450
  'Data Table: 514A68
  loc_E04449: SplitBill = global_80
End Sub

Public Property Let SplitBill(vNewValue) 'E01CFC
  'Data Table: 514A68
  loc_E01CF6: global_80 = vNewValue
  loc_E01CF9: Exit Sub
End Sub

Public Sub Proc_174_49_1B899C0
  'Data Table: 514A68
  Dim var_9C As String
  Dim unk_514A6F As Connection15
  Dim var_C0 As Variant
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_150 As Variant
  Dim var_278 As Double
  Dim var_118 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_1E4 As Variant
  Dim var_154 As String
  Dim var_15C As String
  Dim var_160 As String
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_244 As Variant
  Dim var_3B8 As Double
  Dim var_26C As Variant
  Dim var_268 As Variant
  Dim var_2F4 As Variant
  Dim var_314 As Variant
  Dim var_270 As MSHFlexGrid
  Dim var_27C As String
  Dim var_2C4 As Variant
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim unk_514A84 As Connection15
  Dim var_88 As Long
  Dim var_94 As Recordset15
  loc_1B8484C: unk_514A6F.Execute "Select * from Enviro where lOGSite_code='" & MemVar_1F95078 & "'", var_BC, -1
  loc_1B84857: Set var_94 = var_C0
  loc_1B8488C: For var_C4 = 0 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_8A = var_C4 'Integer
  loc_1B848B7:   For var_C8 = 1 To CInt((CLng(Me.FGrid2.Cols) - 1)): var_8C = var_C8 'Integer
  loc_1B848C1:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_1B848CA:     var_E8 = CVar(CLng(var_8C)) 'Long
  loc_1B848F5:     If (CStr(Me.FGrid2.TextMatrix)) <> vbNullString) Then
  loc_1B84900:       If (var_90 = vbNullString) Then
  loc_1B84907:         var_AC = CVar(CLng(var_8A)) 'Long
  loc_1B84910:         var_E8 = CVar(CLng(var_8C)) 'Long
  loc_1B84939:         var_90 = CStr(Trim(CVar(CStr(Me.FGrid2.TextMatrix)))))
  loc_1B8494B:       Else
  loc_1B84952:         var_128 = CVar(var_90 & ",") 'String
  loc_1B84959:         var_AC = CVar(CLng(var_8A)) 'Long
  loc_1B8498A:         var_138 = (CVar(CLng(var_8C)) + Trim(CVar(CStr(Me.FGrid2.TextMatrix)))))
  loc_1B8498F:         var_90 = CStr(var_138)
  loc_1B849A2:       End If
  loc_1B849A2:     End If
  loc_1B849A5:   Next var_C8 'Integer
  loc_1B849AD: Next var_C4 'Integer
  loc_1B849D4: If CBool(Trim(CVar(Me.txtleaderfolio)) <> vbNullString) Then
  loc_1B849FC:   For var_13C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_13C 'Integer
  loc_1B84A06:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_1B84A0E:     var_E8 = CVar(CLng(&HC)) 'Long
  loc_1B84A4A:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1B84A51:       var_AC = CVar(CLng(var_8A)) 'Long
  loc_1B84A59:       var_E8 = CVar(CLng(&HC)) 'Long
  loc_1B84AAE:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(Me.txtleaderfolio.Text)) Then
  loc_1B84AD8:         var_278 = Val(CStr(Right(CVar(Me.txtleaderfolio), 8)))
  loc_1B84B1B:         var_138 = CVar(Proc_6_38_E69628(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_278, CVar(CLng(&HA)))) 'String
  loc_1B84B2A:         var_1B0 = CVar(CLng(var_8A)) 'Long
  loc_1B84B32:         var_1D0 = CVar(CLng(&HC)) 'Long
  loc_1B84B85:         var_180 = CVar("Update PayCharge Set Foliono=" & CStr(var_278) & ",FolioNodocid='" & Me.txtleaderfolio.Text & "',Split='") 'String
  loc_1B84BB2:         unk_514A6F.Execute CStr(var_180 & Trim(var_138) & "' Where FolioNoDocid='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_268, -1
  loc_1B84BF9:       Else
  loc_1B84BFD:         Set var_3B0 = Me.txtleaderfolio
  loc_1B84C08:         var_BC = CVar(var_3B0) 'Address
  loc_1B84C0F:         var_108 = Right(var_BC, 8)
  loc_1B84C4A:         Set var_150 = Me.FGrid
  loc_1B84C82:         var_3B8 = Val(CStr(Right(Trim(CVar(CStr(var_150.TextMatrix)))), 8)))
  loc_1B84CCB:         Set var_26C = Me.FGrid
  loc_1B84CDC:         var_244 = CVar(CStr(var_26C.TextMatrix))) 'String
  loc_1B84CE4:         var_268 = CVar(Proc_6_38_E69628(var_244, CVar(CLng(&HA)), CVar(CLng(var_8A)), CVar(CLng(&HC)), CVar(CLng(var_8A)), var_3B8, CVar(CLng(&HC)), CVar(CLng(var_8A)))) 'String
  loc_1B84CF3:         var_2F4 = CVar(CLng(var_8A)) 'Long
  loc_1B84CFB:         var_314 = CVar(CLng(&HC)) 'Long
  loc_1B84D4E:         var_27C = "Update PayCharge Set Foliono=" & CStr(Val(CStr(var_108))) & ",FolioNodocid='" & Me.txtleaderfolio.Text & "',RelatedFoliono="
  loc_1B84D77:         var_2C4 = CVar(var_27C & CStr(var_3B8) & ",RelatedFolioNodocid='") & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "',Split='" & Trim(var_268) 
  loc_1B84D9E:         unk_514A6F.Execute CStr(var_2C4 & "' Where FolioNoDocid='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_3A8, -1
  loc_1B84E00:       End If
  loc_1B84E00:     End If
  loc_1B84E03:   Next var_13C 'Integer
  loc_1B84E08: End If
  loc_1B84E16: Set var_C0 = Me.TXT
  loc_1B84E1C: Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150)
  loc_1B84E3F: Set var_1E4 = Me.TXT
  loc_1B84E45: Call 0.Method_Proc_174_49_1B899C00 (CInt(&HA), var_26C)
  loc_1B84E85: If (((var_150.Text <> vbNullString) And (var_26C.Text <> vbNullString)) And (Me.RecordCount > 0)) Then
  loc_1B84E8E:   Me.MoveFirst
  loc_1B84E9B:   If (MemVar_1F951D4 = "Y") Then
  loc_1B84EA4:     var_D8 = 0
  loc_1B84EC3:     unk_514A84.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_BC, -1
  loc_1B84ECB:     var_C0 = var_C0.Fields
  loc_1B84ED3:     var_D8 = var_150.Item(var_150)
  loc_1B84EDB:     var_1E4 = var_1E4.Value
  loc_1B84EE5:     var_88 = CLng(var_108)
  loc_1B84EF8:   End If
  loc_1B84F37:   If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER") Then
  loc_1B84F57:     var_150 = Me.Fields.Item("AutoPrint")
  loc_1B84F79:     If (var_150.Value = "Yes") Then
  loc_1B84F7C:       Call Proc_174_50_12674A8(var_88)
  loc_1B84F90:       var_108(False).Enabled = 
  loc_1B84FA7:       (False).Enabled = 
  loc_1B84FB7:       If (MemVar_1F951D4 = "Y") Then
  loc_1B84FDA:         var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B84FE8:         Set var_C0 = Me.TXT
  loc_1B84FEE:         Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B84FFD:         var_108 = Trim(CVar(var_150))
  loc_1B85005:         var_128 = var_244 & var_108 
  loc_1B8501B:         Set var_1E4 = Me.TXT
  loc_1B85021:         Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_128 & "','")
  loc_1B85038:         var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B85050:         Set var_270 = Me.TXT
  loc_1B85056:         Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B85084:         unk_514A84.Execute CStr(CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B850BC:       End If
  loc_1B850BC:       Call Proc_174_62_E7F390()
  loc_1B850C4:     Else
  loc_1B850F3:       If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B850F6:         Call Proc_174_50_12674A8()
  loc_1B8510A:         (False).Enabled = 
  loc_1B85121:         (False).Enabled = 
  loc_1B85131:         If (MemVar_1F951D4 = "Y") Then
  loc_1B85154:           var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B85162:           Set var_C0 = Me.TXT
  loc_1B85168:           Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B85195:           Set var_1E4 = Me.TXT
  loc_1B8519B:           Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B851B2:           var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B851CA:           Set var_270 = Me.TXT
  loc_1B851D0:           Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B851FE:           unk_514A84.Execute CStr(CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B85236:         End If
  loc_1B85236:         Call Proc_174_62_E7F390()
  loc_1B8523E:       Else
  loc_1B8523E:         Exit Sub
  loc_1B8523F:       End If
  loc_1B8523F:     End If
  loc_1B85242:   Else
  loc_1B85281:     If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER NEW") Then
  loc_1B852C3:       If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1B852DD:         var_150 = var_94.Fields.Item("BillPrintingSummerised")
  loc_1B852FF:         If (Proc_6_38_E69628(CVar(var_150)) = "Yes") Then
  loc_1B85330:           Set var_C0 = Me.TXT
  loc_1B85336:           Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B8533E:           var_154 = var_150.Text
  loc_1B8534C:           Set var_3B0 = Nothing 
  loc_1B85356:           Set var_3AC = ()
  loc_1B8535F:           var_15C = "O"
  loc_1B853AF:           Proc_96_64_1DB2C10(Me.txtleaderfolio.Text, Me.FGrid, (), 7, 8, &HA, var_154)
  loc_1B853D7:         Else
  loc_1B85405:           Set var_C0 = Me.TXT
  loc_1B8540B:           Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150, var_154, global_134)
  loc_1B85413:           global_128 = var_150.Text
  loc_1B85421:           Set var_3B0 = Nothing 
  loc_1B8542B:           Set var_3AC = var_3AC(var_15C)
  loc_1B85434:           var_15C = "O"
  loc_1B85477:           Set var_26C = Me.FGrid
  loc_1B85484:           Proc_96_59_1F06E50(Me.txtleaderfolio.Text, var_26C, 2(1), 7, 8, &HA, var_154, 1)
  loc_1B854A9:         End If
  loc_1B854C1:         Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 2, global_134, global_128)
  loc_1B854DF:         var_15C(False).Enabled = var_3AC
  loc_1B854EF:         If (MemVar_1F951D4 = "Y") Then
  loc_1B85512:           var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B85520:           Set var_C0 = Me.TXT
  loc_1B85526:           Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118, var_244)
  loc_1B85535:           var_108 = Trim(CVar(var_150))
  loc_1B8553D:           var_128 = -1 & var_108 
  loc_1B85553:           Set var_1E4 = Me.TXT
  loc_1B85559:           Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B85588:           Set var_270 = Me.TXT
  loc_1B8558E:           Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC, var_3B0 & Trim(CVar(var_26C)) & "','")
  loc_1B855BC:           unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B855F4:         End If
  loc_1B855F4:         Call Proc_174_62_E7F390()
  loc_1B855FC:       Else
  loc_1B8562B:         If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_244 & Trim(CVar(var_150))) = 6) Then
  loc_1B85645:           var_150 = var_94.Fields.Item("BillPrintingSummerised")
  loc_1B85667:           If (Proc_6_38_E69628(CVar(var_150)) = "Yes") Then
  loc_1B85698:             Set var_C0 = Me.TXT
  loc_1B8569E:             Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B856A6:             var_154 = var_150.Text
  loc_1B856B4:             Set var_3B0 = Nothing 
  loc_1B856BE:             Set var_3AC = ()
  loc_1B856C7:             var_15C = "O"
  loc_1B85717:             Proc_96_64_1DB2C10(Me.txtleaderfolio.Text, Me.FGrid, (), 7, 8, &HA, var_154)
  loc_1B8573F:           Else
  loc_1B8576D:             Set var_C0 = Me.TXT
  loc_1B85773:             Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150, var_154, global_134)
  loc_1B8577B:             global_128 = var_150.Text
  loc_1B85789:             Set var_3B0 = Nothing 
  loc_1B85793:             Set var_3AC = var_3AC(var_15C)
  loc_1B8579C:             var_15C = "O"
  loc_1B857DF:             Set var_26C = Me.FGrid
  loc_1B857EC:             Proc_96_59_1F06E50(Me.txtleaderfolio.Text, var_26C, 2(1), 7, 8, &HA, var_154, 1)
  loc_1B85811:           End If
  loc_1B85829:           Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 2, global_134, global_128)
  loc_1B85847:           var_15C(False).Enabled = var_3AC
  loc_1B85857:           If (MemVar_1F951D4 = "Y") Then
  loc_1B8587A:             var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B85888:             Set var_C0 = Me.TXT
  loc_1B8588E:             Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118, var_244)
  loc_1B858A5:             var_128 = -1 & Trim(CVar(var_150)) 
  loc_1B858BB:             Set var_1E4 = Me.TXT
  loc_1B858C1:             Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B858F0:             Set var_270 = Me.TXT
  loc_1B858F6:             Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC, var_3B0 & Trim(CVar(var_26C)) & "','")
  loc_1B85924:             unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B8595C:           End If
  loc_1B8595C:           Call Proc_174_62_E7F390()
  loc_1B85964:         Else
  loc_1B85964:           Exit Sub
  loc_1B85965:         End If
  loc_1B85965:       End If
  loc_1B85968:     Else
  loc_1B859A7:       If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER PLAN") Then
  loc_1B859E9:         If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1B85A03:           var_150 = var_94.Fields.Item("BillPrintingSummerised")
  loc_1B85A25:           If (Proc_6_38_E69628(CVar(var_150)) = "Yes") Then
  loc_1B85A56:             Set var_C0 = Me.TXT
  loc_1B85A5C:             Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B85A64:             var_154 = var_150.Text
  loc_1B85A72:             Set var_3B0 = Nothing 
  loc_1B85A7C:             Set var_3AC = ()
  loc_1B85A85:             var_15C = "O"
  loc_1B85AD5:             Proc_96_64_1DB2C10(Me.txtleaderfolio.Text, Me.FGrid, (), 7, 8, &HA, var_154)
  loc_1B85AFD:           Else
  loc_1B85B13:             Set var_3B0 = Me.FGrid
  loc_1B85B2B:             Set var_C0 = Me.TXT
  loc_1B85B31:             Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150, var_154, global_134)
  loc_1B85B39:             global_128 = var_150.Text
  loc_1B85B48:             var_160 = "PayCharge"
  loc_1B85B51:             Set var_3AC = var_3AC(var_15C)
  loc_1B85B5A:             var_15C = "O"
  loc_1B85B9D:             Set var_26C = var_3B0
  loc_1B85BAA:             Proc_96_62_1F663FC(Me.txtleaderfolio.Text, var_26C, 2(1), 7, 8, &HA, var_154, 1)
  loc_1B85BCF:           End If
  loc_1B85BE7:           Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 2, global_134, global_128)
  loc_1B85C05:           var_15C(False).Enabled = var_3AC
  loc_1B85C15:           If (MemVar_1F951D4 = "Y") Then
  loc_1B85C38:             var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B85C46:             Set var_C0 = Me.TXT
  loc_1B85C4C:             Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118, var_244)
  loc_1B85C5B:             var_108 = Trim(CVar(var_150))
  loc_1B85C63:             var_128 = -1 & var_108 
  loc_1B85C79:             Set var_1E4 = Me.TXT
  loc_1B85C7F:             Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B85CAE:             Set var_270 = Me.TXT
  loc_1B85CB4:             Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC, var_3B0 & Trim(CVar(var_26C)) & "','")
  loc_1B85CE2:             unk_514A84.Execute CStr(var_160 & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B85D1A:           End If
  loc_1B85D1A:           Call Proc_174_62_E7F390()
  loc_1B85D22:         Else
  loc_1B85D51:           If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_244 & Trim(CVar(var_150))) = 6) Then
  loc_1B85D6B:             var_150 = var_94.Fields.Item("BillPrintingSummerised")
  loc_1B85D8D:             If (Proc_6_38_E69628(CVar(var_150)) = "Yes") Then
  loc_1B85DBE:               Set var_C0 = Me.TXT
  loc_1B85DC4:               Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B85DCC:               var_154 = var_150.Text
  loc_1B85DDA:               Set var_3B0 = Nothing 
  loc_1B85DE4:               Set var_3AC = ()
  loc_1B85DED:               var_15C = "O"
  loc_1B85E3D:               Proc_96_64_1DB2C10(Me.txtleaderfolio.Text, Me.FGrid, (), 7, 8, &HA, var_154)
  loc_1B85E65:             Else
  loc_1B85E7B:               Set var_3B0 = Me.FGrid
  loc_1B85E93:               Set var_C0 = Me.TXT
  loc_1B85E99:               Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150, var_154, global_134)
  loc_1B85EA1:               global_128 = var_150.Text
  loc_1B85EB0:               var_160 = "PayCharge"
  loc_1B85EB9:               Set var_3AC = var_3AC(var_15C)
  loc_1B85EC2:               var_15C = "O"
  loc_1B85F05:               Set var_26C = var_3B0
  loc_1B85F12:               Proc_96_62_1F663FC(Me.txtleaderfolio.Text, var_26C, 2(1), 7, 8, &HA, var_154, 1)
  loc_1B85F37:             End If
  loc_1B85F4F:             Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 2, global_134, global_128)
  loc_1B85F6D:             var_15C(False).Enabled = var_3AC
  loc_1B85F7D:             If (MemVar_1F951D4 = "Y") Then
  loc_1B85FA0:               var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B85FAE:               Set var_C0 = Me.TXT
  loc_1B85FB4:               Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118, var_244)
  loc_1B85FCB:               var_128 = -1 & Trim(CVar(var_150)) 
  loc_1B85FE1:               Set var_1E4 = Me.TXT
  loc_1B85FE7:               Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B86016:               Set var_270 = Me.TXT
  loc_1B8601C:               Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC, var_3B0 & Trim(CVar(var_26C)) & "','")
  loc_1B8604A:               unk_514A84.Execute CStr(var_160 & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B86082:             End If
  loc_1B86082:             Call Proc_174_62_E7F390()
  loc_1B8608A:           Else
  loc_1B8608A:             Exit Sub
  loc_1B8608B:           End If
  loc_1B8608B:         End If
  loc_1B8608E:       Else
  loc_1B860CD:         If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER PLAN1") Then
  loc_1B8610F:           If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1B86129:             var_150 = var_94.Fields.Item("BillPrintingSummerised")
  loc_1B8614B:             If (Proc_6_38_E69628(CVar(var_150)) = "Yes") Then
  loc_1B8617C:               Set var_C0 = Me.TXT
  loc_1B86182:               Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B8618A:               var_154 = var_150.Text
  loc_1B86198:               Set var_3B0 = Nothing 
  loc_1B861A2:               Set var_3AC = ()
  loc_1B861AB:               var_15C = "O"
  loc_1B861FB:               Proc_96_64_1DB2C10(Me.txtleaderfolio.Text, Me.FGrid, (), 7, 8, &HA, var_154)
  loc_1B86223:             Else
  loc_1B86239:               Set var_3B0 = Me.FGrid
  loc_1B86251:               Set var_C0 = Me.TXT
  loc_1B86257:               Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150, var_154, global_134)
  loc_1B8625F:               global_128 = var_150.Text
  loc_1B8626E:               var_160 = "PayCharge"
  loc_1B86277:               Set var_3AC = var_3AC(var_15C)
  loc_1B86280:               var_15C = "O"
  loc_1B862C3:               Set var_26C = var_3B0
  loc_1B862D0:               Proc_96_63_1F580EC(Me.txtleaderfolio.Text, var_26C, 2(1), 7, 8, &HA, var_154, 1)
  loc_1B862F5:             End If
  loc_1B8630D:             Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 2, global_134, global_128)
  loc_1B8632B:             var_15C(False).Enabled = var_3AC
  loc_1B8633B:             If (MemVar_1F951D4 = "Y") Then
  loc_1B8635E:               var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B8636C:               Set var_C0 = Me.TXT
  loc_1B86372:               Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118, var_244)
  loc_1B86381:               var_108 = Trim(CVar(var_150))
  loc_1B86389:               var_128 = -1 & var_108 
  loc_1B8639F:               Set var_1E4 = Me.TXT
  loc_1B863A5:               Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B863D4:               Set var_270 = Me.TXT
  loc_1B863DA:               Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC, var_3B0 & Trim(CVar(var_26C)) & "','")
  loc_1B86408:               unk_514A84.Execute CStr(var_160 & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B86440:             End If
  loc_1B86440:             Call Proc_174_62_E7F390()
  loc_1B86448:           Else
  loc_1B86477:             If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_244 & Trim(CVar(var_150))) = 6) Then
  loc_1B86491:               var_150 = var_94.Fields.Item("BillPrintingSummerised")
  loc_1B864B3:               If (Proc_6_38_E69628(CVar(var_150)) = "Yes") Then
  loc_1B864E4:                 Set var_C0 = Me.TXT
  loc_1B864EA:                 Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B864F2:                 var_154 = var_150.Text
  loc_1B86500:                 Set var_3B0 = Nothing 
  loc_1B8650A:                 Set var_3AC = ()
  loc_1B86513:                 var_15C = "O"
  loc_1B86563:                 Proc_96_64_1DB2C10(Me.txtleaderfolio.Text, Me.FGrid, (), 7, 8, &HA, var_154)
  loc_1B8658B:               Else
  loc_1B865A1:                 Set var_3B0 = Me.FGrid
  loc_1B865B9:                 Set var_C0 = Me.TXT
  loc_1B865BF:                 Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150, var_154, global_134)
  loc_1B865C7:                 global_128 = var_150.Text
  loc_1B865D6:                 var_160 = "PayCharge"
  loc_1B865DF:                 Set var_3AC = var_3AC(var_15C)
  loc_1B865E8:                 var_15C = "O"
  loc_1B8662B:                 Set var_26C = var_3B0
  loc_1B86638:                 Proc_96_63_1F580EC(Me.txtleaderfolio.Text, var_26C, 2(1), 7, 8, &HA, var_154, 1)
  loc_1B8665D:               End If
  loc_1B86675:               Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 2, global_134, global_128)
  loc_1B86693:               var_15C(False).Enabled = var_3AC
  loc_1B866A3:               If (MemVar_1F951D4 = "Y") Then
  loc_1B866C6:                 var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B866D4:                 Set var_C0 = Me.TXT
  loc_1B866DA:                 Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118, var_244)
  loc_1B866F1:                 var_128 = -1 & Trim(CVar(var_150)) 
  loc_1B86707:                 Set var_1E4 = Me.TXT
  loc_1B8670D:                 Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B8673C:                 Set var_270 = Me.TXT
  loc_1B86742:                 Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC, var_3B0 & Trim(CVar(var_26C)) & "','")
  loc_1B86770:                 unk_514A84.Execute CStr(var_160 & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B867A8:               End If
  loc_1B867A8:               Call Proc_174_62_E7F390()
  loc_1B867B0:             Else
  loc_1B867B0:               Exit Sub
  loc_1B867B1:             End If
  loc_1B867B1:           End If
  loc_1B867B4:         Else
  loc_1B867F3:           If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED") Then
  loc_1B86813:             var_150 = Me.Fields.Item("AutoPrint")
  loc_1B86835:             If (var_150.Value = "Yes") Then
  loc_1B8684E:               Set var_3AC = Me.FGrid
  loc_1B86855:               Set var_3B0 = ()
  loc_1B86866:               Set var_C0 = Me.TXT
  loc_1B8686C:               Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B868BF:               Set var_26C = var_3AC
  loc_1B868CC:               Proc_96_49_1C4870C(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B86903:               Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B86921:               global_134(False).Enabled = global_128
  loc_1B86938:               "O"(False).Enabled = 
  loc_1B86948:               If (MemVar_1F951D4 = "Y") Then
  loc_1B8696B:                 var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B86979:                 Set var_C0 = Me.TXT
  loc_1B8697F:                 Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B8698E:                 var_108 = Trim(CVar(var_150))
  loc_1B86996:                 var_128 = var_244 & var_108 
  loc_1B869AC:                 Set var_1E4 = Me.TXT
  loc_1B869B2:                 Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_128 & "','")
  loc_1B869C9:                 var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B869E1:                 Set var_270 = Me.TXT
  loc_1B869E7:                 Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B86A15:                 unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B86A4D:               End If
  loc_1B86A4D:               Call Proc_174_62_E7F390()
  loc_1B86A55:             Else
  loc_1B86A84:               If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B86A9D:                 Set var_3AC = Me.FGrid
  loc_1B86AA4:                 Set var_3B0 = ()
  loc_1B86AB5:                 Set var_C0 = Me.TXT
  loc_1B86ABB:                 Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B86B0E:                 Set var_26C = var_3AC
  loc_1B86B1B:                 Proc_96_49_1C4870C(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B86B52:                 Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B86B70:                 global_134(False).Enabled = global_128
  loc_1B86B87:                 "O"(False).Enabled = 
  loc_1B86B97:                 If (MemVar_1F951D4 = "Y") Then
  loc_1B86BBA:                   var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B86BC8:                   Set var_C0 = Me.TXT
  loc_1B86BCE:                   Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B86BFB:                   Set var_1E4 = Me.TXT
  loc_1B86C01:                   Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B86C18:                   var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B86C30:                   Set var_270 = Me.TXT
  loc_1B86C36:                   Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B86C64:                   unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B86C9C:                 End If
  loc_1B86C9C:                 Call Proc_174_62_E7F390()
  loc_1B86CA4:               Else
  loc_1B86CA4:                 Exit Sub
  loc_1B86CA5:               End If
  loc_1B86CA5:             End If
  loc_1B86CA8:           Else
  loc_1B86CE7:             If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PLAIN") Then
  loc_1B86D07:               var_150 = Me.Fields.Item("AutoPrint")
  loc_1B86D29:               If (var_150.Value = "Yes") Then
  loc_1B86D42:                 Set var_3AC = Me.FGrid
  loc_1B86D49:                 Set var_3B0 = ()
  loc_1B86D5A:                 Set var_C0 = Me.TXT
  loc_1B86D60:                 Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B86DB3:                 Set var_26C = var_3AC
  loc_1B86DC0:                 Proc_96_65_1DAA528(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B86DF7:                 Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B86E15:                 global_134(False).Enabled = global_128
  loc_1B86E2C:                 "O"(False).Enabled = 
  loc_1B86E3C:                 If (MemVar_1F951D4 = "Y") Then
  loc_1B86E5F:                   var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B86E6D:                   Set var_C0 = Me.TXT
  loc_1B86E73:                   Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B86E82:                   var_108 = Trim(CVar(var_150))
  loc_1B86E8A:                   var_128 = var_244 & var_108 
  loc_1B86EA0:                   Set var_1E4 = Me.TXT
  loc_1B86EA6:                   Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_128 & "','")
  loc_1B86EBD:                   var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B86ED5:                   Set var_270 = Me.TXT
  loc_1B86EDB:                   Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B86F09:                   unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B86F41:                 End If
  loc_1B86F41:                 Call Proc_174_62_E7F390()
  loc_1B86F49:               Else
  loc_1B86F78:                 If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B86F91:                   Set var_3AC = Me.FGrid
  loc_1B86F98:                   Set var_3B0 = ()
  loc_1B86FA9:                   Set var_C0 = Me.TXT
  loc_1B86FAF:                   Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B87002:                   Set var_26C = var_3AC
  loc_1B8700F:                   Proc_96_65_1DAA528(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B87046:                   Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B87064:                   global_134(False).Enabled = global_128
  loc_1B8707B:                   "O"(False).Enabled = 
  loc_1B8708B:                   If (MemVar_1F951D4 = "Y") Then
  loc_1B870AE:                     var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B870BC:                     Set var_C0 = Me.TXT
  loc_1B870C2:                     Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B870EF:                     Set var_1E4 = Me.TXT
  loc_1B870F5:                     Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B8710C:                     var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B87124:                     Set var_270 = Me.TXT
  loc_1B8712A:                     Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B87158:                     unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B87190:                   End If
  loc_1B87190:                   Call Proc_174_62_E7F390()
  loc_1B87198:                 Else
  loc_1B87198:                   Exit Sub
  loc_1B87199:                 End If
  loc_1B87199:               End If
  loc_1B8719C:             Else
  loc_1B871DB:               If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PLAIN FORMAT1") Then
  loc_1B871FB:                 var_150 = Me.Fields.Item("AutoPrint")
  loc_1B8721D:                 If (var_150.Value = "Yes") Then
  loc_1B87236:                   Set var_3AC = Me.FGrid
  loc_1B8723D:                   Set var_3B0 = ()
  loc_1B8724E:                   Set var_C0 = Me.TXT
  loc_1B87254:                   Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B872A7:                   Set var_26C = var_3AC
  loc_1B872B4:                   Proc_96_66_1D5967C(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B872EB:                   Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B87309:                   global_134(False).Enabled = global_128
  loc_1B87320:                   "O"(False).Enabled = 
  loc_1B87330:                   If (MemVar_1F951D4 = "Y") Then
  loc_1B87353:                     var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B87361:                     Set var_C0 = Me.TXT
  loc_1B87367:                     Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B87376:                     var_108 = Trim(CVar(var_150))
  loc_1B8737E:                     var_128 = var_244 & var_108 
  loc_1B87394:                     Set var_1E4 = Me.TXT
  loc_1B8739A:                     Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_128 & "','")
  loc_1B873B1:                     var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B873C9:                     Set var_270 = Me.TXT
  loc_1B873CF:                     Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B873FD:                     unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B87435:                   End If
  loc_1B87435:                   Call Proc_174_62_E7F390()
  loc_1B8743D:                 Else
  loc_1B8746C:                   If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B87485:                     Set var_3AC = Me.FGrid
  loc_1B8748C:                     Set var_3B0 = ()
  loc_1B8749D:                     Set var_C0 = Me.TXT
  loc_1B874A3:                     Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B874F6:                     Set var_26C = var_3AC
  loc_1B87503:                     Proc_96_66_1D5967C(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B8753A:                     Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B87558:                     global_134(False).Enabled = global_128
  loc_1B8756F:                     "O"(False).Enabled = 
  loc_1B8757F:                     If (MemVar_1F951D4 = "Y") Then
  loc_1B875A2:                       var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B875B0:                       Set var_C0 = Me.TXT
  loc_1B875B6:                       Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B875E3:                       Set var_1E4 = Me.TXT
  loc_1B875E9:                       Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B87600:                       var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B87618:                       Set var_270 = Me.TXT
  loc_1B8761E:                       Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B8764C:                       unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B87684:                     End If
  loc_1B87684:                     Call Proc_174_62_E7F390()
  loc_1B8768C:                   Else
  loc_1B8768C:                     Exit Sub
  loc_1B8768D:                   End If
  loc_1B8768D:                 End If
  loc_1B87690:               Else
  loc_1B876CF:                 If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT1") Then
  loc_1B876EF:                   var_150 = Me.Fields.Item("AutoPrint")
  loc_1B87711:                   If (var_150.Value = "Yes") Then
  loc_1B8772A:                     Set var_3AC = Me.FGrid
  loc_1B87731:                     Set var_3B0 = ()
  loc_1B87742:                     Set var_C0 = Me.TXT
  loc_1B87748:                     Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B877A6:                     Set var_26C = var_3AC
  loc_1B877B3:                     Proc_96_53_1D3A710(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B877EC:                     Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B8780A:                     global_128(False).Enabled = "O"
  loc_1B87821:                     0(False).Enabled = 
  loc_1B87831:                     If (MemVar_1F951D4 = "Y") Then
  loc_1B87854:                       var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B87862:                       Set var_C0 = Me.TXT
  loc_1B87868:                       Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B87877:                       var_108 = Trim(CVar(var_150))
  loc_1B8787F:                       var_128 = var_244 & var_108 
  loc_1B87895:                       Set var_1E4 = Me.TXT
  loc_1B8789B:                       Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_128 & "','")
  loc_1B878B2:                       var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B878CA:                       Set var_270 = Me.TXT
  loc_1B878D0:                       Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B878FE:                       unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B87936:                     End If
  loc_1B87936:                     Call Proc_174_62_E7F390()
  loc_1B8793E:                   Else
  loc_1B8796D:                     If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B87986:                       Set var_3AC = Me.FGrid
  loc_1B8798D:                       Set var_3B0 = ()
  loc_1B8799E:                       Set var_C0 = Me.TXT
  loc_1B879A4:                       Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B87A02:                       Set var_26C = var_3AC
  loc_1B87A0F:                       Proc_96_53_1D3A710(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B87A48:                       Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B87A66:                       global_128(False).Enabled = "O"
  loc_1B87A7D:                       0(False).Enabled = 
  loc_1B87A8D:                       If (MemVar_1F951D4 = "Y") Then
  loc_1B87AB0:                         var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B87ABE:                         Set var_C0 = Me.TXT
  loc_1B87AC4:                         Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B87AF1:                         Set var_1E4 = Me.TXT
  loc_1B87AF7:                         Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B87B0E:                         var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B87B26:                         Set var_270 = Me.TXT
  loc_1B87B2C:                         Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B87B5A:                         unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B87B92:                       End If
  loc_1B87B92:                       Call Proc_174_62_E7F390()
  loc_1B87B9A:                     Else
  loc_1B87B9A:                       Exit Sub
  loc_1B87B9B:                     End If
  loc_1B87B9B:                   End If
  loc_1B87B9E:                 Else
  loc_1B87BDD:                   If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT2") Then
  loc_1B87BFD:                     var_150 = Me.Fields.Item("AutoPrint")
  loc_1B87C1F:                     If (var_150.Value = "Yes") Then
  loc_1B87C38:                       Set var_3AC = Me.FGrid
  loc_1B87C3F:                       Set var_3B0 = ()
  loc_1B87C50:                       Set var_C0 = Me.TXT
  loc_1B87C56:                       Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B87CA9:                       Set var_26C = var_3AC
  loc_1B87CB6:                       Proc_96_67_1D49CF8(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B87CED:                       Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B87D0B:                       global_134(False).Enabled = global_128
  loc_1B87D22:                       "O"(False).Enabled = 
  loc_1B87D32:                       If (MemVar_1F951D4 = "Y") Then
  loc_1B87D55:                         var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B87D63:                         Set var_C0 = Me.TXT
  loc_1B87D69:                         Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B87D78:                         var_108 = Trim(CVar(var_150))
  loc_1B87D80:                         var_128 = var_244 & var_108 
  loc_1B87D96:                         Set var_1E4 = Me.TXT
  loc_1B87D9C:                         Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_128 & "','")
  loc_1B87DB3:                         var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B87DCB:                         Set var_270 = Me.TXT
  loc_1B87DD1:                         Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B87DFF:                         unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B87E37:                       End If
  loc_1B87E37:                       Call Proc_174_62_E7F390()
  loc_1B87E3F:                     Else
  loc_1B87E6E:                       If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B87E87:                         Set var_3AC = Me.FGrid
  loc_1B87E8E:                         Set var_3B0 = ()
  loc_1B87E9F:                         Set var_C0 = Me.TXT
  loc_1B87EA5:                         Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B87EF8:                         Set var_26C = var_3AC
  loc_1B87F05:                         Proc_96_67_1D49CF8(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B87F3C:                         Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B87F5A:                         global_134(False).Enabled = global_128
  loc_1B87F71:                         "O"(False).Enabled = 
  loc_1B87F81:                         If (MemVar_1F951D4 = "Y") Then
  loc_1B87FA4:                           var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B87FB2:                           Set var_C0 = Me.TXT
  loc_1B87FB8:                           Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B87FE5:                           Set var_1E4 = Me.TXT
  loc_1B87FEB:                           Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B88002:                           var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B8801A:                           Set var_270 = Me.TXT
  loc_1B88020:                           Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B8804E:                           unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B88086:                         End If
  loc_1B88086:                         Call Proc_174_62_E7F390()
  loc_1B8808E:                       Else
  loc_1B8808E:                         Exit Sub
  loc_1B8808F:                       End If
  loc_1B8808F:                     End If
  loc_1B88092:                   Else
  loc_1B880D1:                     If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT3") Then
  loc_1B880F1:                       var_150 = Me.Fields.Item("AutoPrint")
  loc_1B88113:                       If (var_150.Value = "Yes") Then
  loc_1B8812C:                         Set var_3AC = Me.FGrid
  loc_1B88133:                         Set var_3B0 = ()
  loc_1B88144:                         Set var_C0 = Me.TXT
  loc_1B8814A:                         Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B8819D:                         Set var_26C = var_3AC
  loc_1B881AA:                         Proc_96_68_1E0AFE8(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B881E1:                         Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B881FF:                         global_134(False).Enabled = global_128
  loc_1B88216:                         "O"(False).Enabled = 
  loc_1B88226:                         If (MemVar_1F951D4 = "Y") Then
  loc_1B88249:                           var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B88257:                           Set var_C0 = Me.TXT
  loc_1B8825D:                           Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B8826C:                           var_108 = Trim(CVar(var_150))
  loc_1B88274:                           var_128 = var_244 & var_108 
  loc_1B8828A:                           Set var_1E4 = Me.TXT
  loc_1B88290:                           Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_128 & "','")
  loc_1B882A7:                           var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B882BF:                           Set var_270 = Me.TXT
  loc_1B882C5:                           Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B882F3:                           unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B8832B:                         End If
  loc_1B8832B:                         Call Proc_174_62_E7F390()
  loc_1B88333:                       Else
  loc_1B88362:                         If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B8837B:                           Set var_3AC = Me.FGrid
  loc_1B88382:                           Set var_3B0 = ()
  loc_1B88393:                           Set var_C0 = Me.TXT
  loc_1B88399:                           Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B883EC:                           Set var_26C = var_3AC
  loc_1B883F9:                           Proc_96_68_1E0AFE8(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B88430:                           Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B8844E:                           global_134(False).Enabled = global_128
  loc_1B88465:                           "O"(False).Enabled = 
  loc_1B88475:                           If (MemVar_1F951D4 = "Y") Then
  loc_1B88498:                             var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B884A6:                             Set var_C0 = Me.TXT
  loc_1B884AC:                             Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B884D9:                             Set var_1E4 = Me.TXT
  loc_1B884DF:                             Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B884F6:                             var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B8850E:                             Set var_270 = Me.TXT
  loc_1B88514:                             Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B88542:                             unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B8857A:                           End If
  loc_1B8857A:                           Call Proc_174_62_E7F390()
  loc_1B88582:                         Else
  loc_1B88582:                           Exit Sub
  loc_1B88583:                         End If
  loc_1B88583:                       End If
  loc_1B88586:                     Else
  loc_1B885C5:                       If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT4") Then
  loc_1B885E5:                         var_150 = Me.Fields.Item("AutoPrint")
  loc_1B88607:                         If (var_150.Value = "Yes") Then
  loc_1B88620:                           Set var_3AC = Me.FGrid
  loc_1B88627:                           Set var_3B0 = ()
  loc_1B88638:                           Set var_C0 = Me.TXT
  loc_1B8863E:                           Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B88691:                           Set var_26C = var_3AC
  loc_1B8869E:                           Proc_96_54_1D81304(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B886D5:                           Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B886F3:                           global_134(False).Enabled = global_128
  loc_1B8870A:                           "O"(False).Enabled = 
  loc_1B8871A:                           If (MemVar_1F951D4 = "Y") Then
  loc_1B8873D:                             var_118 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1B8874B:                             Set var_C0 = Me.TXT
  loc_1B88751:                             Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B88760:                             var_108 = Trim(CVar(var_150))
  loc_1B88768:                             var_128 = var_244 & var_108 
  loc_1B8877E:                             Set var_1E4 = Me.TXT
  loc_1B88784:                             Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_128 & "','")
  loc_1B8879B:                             var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B887B3:                             Set var_270 = Me.TXT
  loc_1B887B9:                             Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B887E7:                             unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B8881F:                           End If
  loc_1B8881F:                           Call Proc_174_62_E7F390()
  loc_1B88827:                         Else
  loc_1B88856:                           If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B8886F:                             Set var_3AC = Me.FGrid
  loc_1B88876:                             Set var_3B0 = ()
  loc_1B88887:                             Set var_C0 = Me.TXT
  loc_1B8888D:                             Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B888E0:                             Set var_26C = var_3AC
  loc_1B888ED:                             Proc_96_54_1D81304(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA)
  loc_1B88924:                             Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), var_150.Text, 1, 2)
  loc_1B88942:                             global_134(False).Enabled = global_128
  loc_1B88959:                             "O"(False).Enabled = 
  loc_1B88969:                             If (MemVar_1F951D4 = "Y") Then
  loc_1B88985:                               var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B8899A:                               Set var_C0 = Me.TXT
  loc_1B889A0:                               Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, CVar(var_9C & ",'CHKOT','"))
  loc_1B889CD:                               Set var_1E4 = Me.TXT
  loc_1B889D3:                               Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B889EA:                               var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B88A02:                               Set var_270 = Me.TXT
  loc_1B88A08:                               Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B88A36:                               unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B88A6E:                             End If
  loc_1B88A6E:                             Call Proc_174_62_E7F390()
  loc_1B88A76:                           Else
  loc_1B88A76:                             Exit Sub
  loc_1B88A77:                           End If
  loc_1B88A77:                         End If
  loc_1B88A7A:                       Else
  loc_1B88AB9:                         If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT5") Then
  loc_1B88AD9:                           var_150 = Me.Fields.Item("AutoPrint")
  loc_1B88AFB:                           If (var_150.Value = "Yes") Then
  loc_1B88B14:                             Set var_3AC = Me.FGrid
  loc_1B88B1B:                             Set var_3B0 = ()
  loc_1B88B2C:                             Set var_C0 = Me.TXT
  loc_1B88B32:                             Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B88B90:                             Set var_26C = var_3AC
  loc_1B88B9D:                             Proc_96_50_1CF70AC(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B88BD6:                             Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B88BF4:                             global_128(False).Enabled = "O"
  loc_1B88C0B:                             0(False).Enabled = 
  loc_1B88C1B:                             If (MemVar_1F951D4 = "Y") Then
  loc_1B88C37:                               var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B88C3E:                               var_118 = CVar(var_9C & ",'CHKOT','") 'String
  loc_1B88C4C:                               Set var_C0 = Me.TXT
  loc_1B88C52:                               Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B88C61:                               var_108 = Trim(CVar(var_150))
  loc_1B88C69:                               var_128 = var_244 & var_108 
  loc_1B88C7F:                               Set var_1E4 = Me.TXT
  loc_1B88C85:                               Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_128 & "','")
  loc_1B88C9C:                               var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B88CB4:                               Set var_270 = Me.TXT
  loc_1B88CBA:                               Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B88CE8:                               unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B88D20:                             End If
  loc_1B88D20:                             Call Proc_174_62_E7F390()
  loc_1B88D28:                           Else
  loc_1B88D57:                             If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B88D70:                               Set var_3AC = Me.FGrid
  loc_1B88D77:                               Set var_3B0 = ()
  loc_1B88D88:                               Set var_C0 = Me.TXT
  loc_1B88D8E:                               Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B88DEC:                               Set var_26C = var_3AC
  loc_1B88DF9:                               Proc_96_50_1CF70AC(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B88E32:                               Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B88E50:                               global_128(False).Enabled = "O"
  loc_1B88E67:                               0(False).Enabled = 
  loc_1B88E77:                               If (MemVar_1F951D4 = "Y") Then
  loc_1B88E93:                                 var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B88EA8:                                 Set var_C0 = Me.TXT
  loc_1B88EAE:                                 Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, CVar(var_9C & ",'CHKOT','"))
  loc_1B88EDB:                                 Set var_1E4 = Me.TXT
  loc_1B88EE1:                                 Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B88EF8:                                 var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B88F10:                                 Set var_270 = Me.TXT
  loc_1B88F16:                                 Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B88F44:                                 unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B88F7C:                               End If
  loc_1B88F7C:                               Call Proc_174_62_E7F390()
  loc_1B88F84:                             Else
  loc_1B88F84:                               Exit Sub
  loc_1B88F85:                             End If
  loc_1B88F85:                           End If
  loc_1B88F88:                         Else
  loc_1B88FC7:                           If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT6") Then
  loc_1B88FE7:                             var_150 = Me.Fields.Item("AutoPrint")
  loc_1B89009:                             If (var_150.Value = "Yes") Then
  loc_1B89022:                               Set var_3AC = Me.FGrid
  loc_1B89029:                               Set var_3B0 = ()
  loc_1B8903A:                               Set var_C0 = Me.TXT
  loc_1B89040:                               Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B8909E:                               Set var_26C = var_3AC
  loc_1B890AB:                               Proc_96_51_1EAEEF0(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B890E4:                               Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B89102:                               global_128(False).Enabled = "O"
  loc_1B89119:                               0(False).Enabled = 
  loc_1B89129:                               If (MemVar_1F951D4 = "Y") Then
  loc_1B89145:                                 var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B8914C:                                 var_118 = CVar(var_9C & ",'CHKOT','") 'String
  loc_1B8915A:                                 Set var_C0 = Me.TXT
  loc_1B89160:                                 Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B8916F:                                 var_108 = Trim(CVar(var_150))
  loc_1B89177:                                 var_128 = var_244 & var_108 
  loc_1B8918D:                                 Set var_1E4 = Me.TXT
  loc_1B89193:                                 Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_128 & "','")
  loc_1B891AA:                                 var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B891C2:                                 Set var_270 = Me.TXT
  loc_1B891C8:                                 Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B891F6:                                 unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B8922E:                               End If
  loc_1B8922E:                               Call Proc_174_62_E7F390()
  loc_1B89236:                             Else
  loc_1B89265:                               If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B8927E:                                 Set var_3AC = Me.FGrid
  loc_1B89285:                                 Set var_3B0 = ()
  loc_1B89296:                                 Set var_C0 = Me.TXT
  loc_1B8929C:                                 Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B892FA:                                 Set var_26C = var_3AC
  loc_1B89307:                                 Proc_96_51_1EAEEF0(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B89340:                                 Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B8935E:                                 global_128(False).Enabled = "O"
  loc_1B89375:                                 0(False).Enabled = 
  loc_1B89385:                                 If (MemVar_1F951D4 = "Y") Then
  loc_1B893A1:                                   var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B893B6:                                   Set var_C0 = Me.TXT
  loc_1B893BC:                                   Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, CVar(var_9C & ",'CHKOT','"))
  loc_1B893E9:                                   Set var_1E4 = Me.TXT
  loc_1B893EF:                                   Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B89406:                                   var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B8941E:                                   Set var_270 = Me.TXT
  loc_1B89424:                                   Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B89452:                                   unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B8948A:                                 End If
  loc_1B8948A:                                 Call Proc_174_62_E7F390()
  loc_1B89492:                               Else
  loc_1B89492:                                 Exit Sub
  loc_1B89493:                               End If
  loc_1B89493:                             End If
  loc_1B89496:                           Else
  loc_1B894D5:                             If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT7") Then
  loc_1B894F5:                               var_150 = Me.Fields.Item("AutoPrint")
  loc_1B89517:                               If (var_150.Value = "Yes") Then
  loc_1B89530:                                 Set var_3AC = Me.FGrid
  loc_1B89537:                                 Set var_3B0 = ()
  loc_1B89548:                                 Set var_C0 = Me.TXT
  loc_1B8954E:                                 Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B895AC:                                 Set var_26C = var_3AC
  loc_1B895B9:                                 Proc_96_52_1EA3D74(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B895F2:                                 Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B89610:                                 global_128(False).Enabled = "O"
  loc_1B89627:                                 0(False).Enabled = 
  loc_1B89637:                                 If (MemVar_1F951D4 = "Y") Then
  loc_1B89653:                                   var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B8965A:                                   var_118 = CVar(var_9C & ",'CHKOT','") 'String
  loc_1B89668:                                   Set var_C0 = Me.TXT
  loc_1B8966E:                                   Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, var_118)
  loc_1B8967D:                                   var_108 = Trim(CVar(var_150))
  loc_1B89685:                                   var_128 = var_244 & var_108 
  loc_1B8969B:                                   Set var_1E4 = Me.TXT
  loc_1B896A1:                                   Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_128 & "','")
  loc_1B896B8:                                   var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B896D0:                                   Set var_270 = Me.TXT
  loc_1B896D6:                                   Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B89704:                                   unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B8973C:                                 End If
  loc_1B8973C:                                 Call Proc_174_62_E7F390()
  loc_1B89744:                               Else
  loc_1B89773:                                 If (MsgBox("Print Bill ?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1B8978C:                                   Set var_3AC = Me.FGrid
  loc_1B89793:                                   Set var_3B0 = ()
  loc_1B897A4:                                   Set var_C0 = Me.TXT
  loc_1B897AA:                                   Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_150)
  loc_1B89808:                                   Set var_26C = var_3AC
  loc_1B89815:                                   Proc_96_52_1EA3D74(Me.txtleaderfolio.Text, var_26C, var_3B0, 7, 8, &HA, var_150.Text)
  loc_1B8984E:                                   Proc_96_40_13BEA0C(CStr(Trim(CVar(Me.txtleaderfolio))), 1, 2, global_134)
  loc_1B8986C:                                   global_128(False).Enabled = "O"
  loc_1B89883:                                   0(False).Enabled = 
  loc_1B89893:                                   If (MemVar_1F951D4 = "Y") Then
  loc_1B898AF:                                     var_9C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1B898C4:                                     Set var_C0 = Me.TXT
  loc_1B898CA:                                     Call 0.Method_Proc_174_49_1B899C00 (CInt(0), var_150, CVar(var_9C & ",'CHKOT','"))
  loc_1B898F7:                                     Set var_1E4 = Me.TXT
  loc_1B898FD:                                     Call 0.Method_Proc_174_49_1B899C00 (&HA, var_26C, var_244 & Trim(CVar(var_150)) & "','")
  loc_1B89914:                                     var_190 = -1 & Trim(CVar(var_26C)) 
  loc_1B8992C:                                     Set var_270 = Me.TXT
  loc_1B89932:                                     Call 0.Method_Proc_174_49_1B899C00 (CInt(9), var_3AC)
  loc_1B89960:                                     unk_514A84.Execute CStr(var_3B0 & Trim(CVar(var_26C)) & "','" & Trim(CVar(var_3AC)) & "',0)"), var_3B0, 
  loc_1B89998:                                   End If
  loc_1B89998:                                   Call Proc_174_62_E7F390()
  loc_1B899A0:                                 Else
  loc_1B899A0:                                   Exit Sub
  loc_1B899A1:                                 End If
  loc_1B899A1:                               End If
  loc_1B899A1:                             End If
  loc_1B899A1:                           End If
  loc_1B899A1:                         End If
  loc_1B899A1:                       End If
  loc_1B899A1:                     End If
  loc_1B899A1:                   End If
  loc_1B899A1:                 End If
  loc_1B899A1:               End If
  loc_1B899A1:             End If
  loc_1B899A1:           End If
  loc_1B899A1:         End If
  loc_1B899A1:       End If
  loc_1B899A1:     End If
  loc_1B899A1:   End If
  loc_1B899A1: End If
  loc_1B899A5: Set var_C0 = Me.FGrid
  loc_1B899BB: Set var_94 = Nothing
  loc_1B899BE: Exit Sub
End Sub

Public Sub Proc_174_50_12674A8
  'Data Table: 514A68
  Dim var_8A As Integer
  Dim var_A4 As TextBox
  Dim unk_514A6F As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_A8 As String
  Dim var_CC As Variant
  Dim var_100 As Variant
  Dim var_F0 As String
  Dim var_120 As Variant
  Dim var_110 As String
  loc_1266F5C: On Error Goto loc_126749C
  loc_1266F7B: Call 0.Method_Proc_174_50_12674A80 (CInt(&HA), var_A4, var_A8)
  loc_1266F83: "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" = var_A4.Text
  loc_1266FBA: unk_514A6F.Execute &HFF & var_A8 & " order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_CC, -1
  loc_1266FC5: Set var_90 = Me.TXT
  loc_1266FD4: var_D0 = var_90.RecordCount
  loc_1266FE2: If (var_D0 <= 0) Then
  loc_1266FEB:   Call 0.Method_arg_50 (var_A8)
  loc_126700C:   MsgBox("** No Records Found to Print **", &H40, CVar(var_A8), var_100, var_120)
  loc_126701E:   var_8A = 0
  loc_1267021:   Exit Sub
  loc_1267022: End If
  loc_1267025: var_94 = "BillPrint"
  loc_1267028: var_BC = "Guest Bill"
  loc_126703F: var_98 = CStr(Ucase(var_BC))
  loc_126704F: If (var_8A = 0) Then
  loc_1267052:   Exit Sub
  loc_1267053: End If
  loc_1267077: Set var_A0 = var_90 
  loc_126707E: CreateFieldDefFile(var_A0, MemVar_1F950B4 & "\" & var_94 & ".ttx", &HFF)
  loc_12670A9: var_A8 = MemVar_1F950B4 & "\"
  loc_12670C0: Call 0.Method_arg_1C (var_A8 & var_94 & ".RPT", var_BC, var_A0)
  loc_12670CB: MemVar_1F951E8 = var_A0
  loc_12670F4: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_F0)
  loc_12670FC: Call 0.Method_arg_2C (var_110, var_8A)
  loc_126710A: Call 0.Method_arg_150 (var_A0)
  loc_1267114: Set var_90 = Nothing
  loc_1267128: Call 0.Method_arg_90 (var_A0, var_D0)
  loc_1267130: Call 0.Method_arg_24 (var_9A)
  loc_126713C: For var_12C =  To CInt(var_D0): 1 = var_12C 'Integer
  loc_1267155:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_126715D:   Call 0.Method_arg_20 (var_A4)
  loc_1267165:   Call 0.Method_arg_30 (var_A8)
  loc_126717B:   var_13C = Ucase(CVar(var_A8)) 'Variant
  loc_12671AB:   If (var_13C = Ucase("ChkInDt")) Then
  loc_12671BE:     Set var_A0 = Me.TXT
  loc_12671C4:     Call 0.Method_Proc_174_50_12674A80 (CInt(1), var_A4)
  loc_12671FC:     Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1267204:     Call 0.Method_arg_20 (var_148)
  loc_126720C:     Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_126722B:   Else
  loc_126724D:     If (var_13C = Ucase("Company")) Then
  loc_1267260:       Set var_A0 = Me.TXT
  loc_1267266:       Call 0.Method_Proc_174_50_12674A80 (CInt(&HB), var_A4)
  loc_126729E:       Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_12672A6:       Call 0.Method_arg_20 (var_148)
  loc_12672AE:       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_12672CD:     Else
  loc_12672EF:       If (var_13C = Ucase("AdltChld")) Then
  loc_1267302:         Set var_A0 = Me.TXT
  loc_1267308:         Call 0.Method_Proc_174_50_12674A80 (CInt(5), var_A4)
  loc_1267337:         Set var_144 = Me.TXT
  loc_126733D:         Call 0.Method_Proc_174_50_12674A80 (CInt(6), var_148)
  loc_1267375:         Call 0.Method_arg_90 (var_18C, CLng(var_9A))
  loc_126737D:         Call 0.Method_arg_20 (var_190)
  loc_1267385:         Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "/" & Trim(CVar(var_148)) & "'"))
  loc_12673AE:       Else
  loc_12673D0:         If (var_13C = Ucase("RoomNo")) Then
  loc_12673E3:           Set var_A0 = Me.TXT
  loc_12673E9:           Call 0.Method_Proc_174_50_12674A80 (CInt(0), var_A4)
  loc_1267421:           Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1267429:           Call 0.Method_arg_20 (var_148)
  loc_1267431:           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_126744D:         End If
  loc_126744D:       End If
  loc_126744D:     End If
  loc_126744D:   End If
  loc_1267450: Next var_12C 'Integer
  loc_126745A: Set var_A4 = Nothing
  loc_1267470: Set var_A0 = MemVar_1F951E8 
  loc_126747C: Proc_6_99_1484404(var_A0, 0, var_98)
  loc_1267487: MemVar_1F951E8 = var_A0
  loc_1267497: MemVar_1F951E8 = Nothing
  loc_126749B: Exit Sub
  loc_126749C: ' Referenced from: 1266F5C
  loc_12674A1: Proc_6_60_E63754(0, &HFF)
  loc_12674A6: Exit Sub
End Sub

Public Sub Proc_174_51_18F0674
  'Data Table: 514A68
  Dim var_10C As String
  Dim var_110 As String
  Dim unk_514A6F As Connection15
  Dim var_E4 As Recordset15
  Dim var_124 As Variant
  Dim var_B4 As Recordset15
  Dim var_88 As Variant
  Dim var_86 As Variant
  Dim var_120 As Variant
  Dim var_14C As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_208 As Fields15
  Dim var_25C As Variant
  Dim var_27C As Variant
  Dim var_37C As Variant
  Dim var_424 As Variant
  Dim var_3F4 As Variant
  Dim var_414 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_514 As Variant
  Dim var_534 As Variant
  Dim var_554 As Variant
  Dim var_588 As Variant
  Dim var_5AC As Variant
  Dim var_5CC As Variant
  Dim var_5EC As Variant
  Dim var_654 As Variant
  Dim var_698 As Variant
  Dim var_6FC As Variant
  Dim var_71C As Variant
  Dim var_774 As Variant
  Dim var_794 As Variant
  Dim var_7D4 As Variant
  Dim var_828 As Variant
  Dim var_8A4 As Variant
  Dim var_8B4 As Variant
  Dim var_914 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_2BC As Variant
  Dim var_304 As Variant
  Dim var_3BC As Variant
  Dim var_474 As Variant
  Dim var_4BC As Variant
  Dim var_574 As Variant
  Dim var_62C As Variant
  Dim var_684 As Variant
  Dim var_73C As Variant
  Dim var_814 As Variant
  Dim var_87C As Variant
  Dim var_954 As Variant
  Dim var_16C As Variant
  Dim var_2E4 As Variant
  Dim var_3E4 As Variant
  Dim var_49C As Variant
  Dim var_504 As Variant
  Dim var_7A4 As Variant
  Dim var_85C As Variant
  Dim var_1F4 As Variant
  Dim var_24C As Variant
  Dim var_32C As Variant
  Dim var_34C As Variant
  Dim var_61C As Variant
  Dim var_674 As Variant
  Dim var_130 As Field20
  Dim var_15C As Variant
  Dim var_B0 As Recordset15
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_1D4 As Variant
  Dim var_2AC As Variant
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_22C As Variant
  Dim var_3AC As Variant
  Dim var_DC As Double
  Dim var_4E4 As Variant
  Dim var_6CC As Variant
  Dim var_804 As Variant
  Dim Me As Recordset15
  loc_18EDDE8: On Error Goto loc_18F0658
  loc_18EDDED: Close 1
  loc_18EDDF6: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_18EDE11: var_10C = "Select Distinct Split,Bill_No from paycharge where (ContraDocId is NULL or contradocid='') and folionodocid in ('" & global_68
  loc_18EDE21: unk_514A6F.Execute var_10C & ")", var_120, -1
  loc_18EDE2C: Set var_E4 = var_124
  loc_18EDE3C: ' Referenced from: 18F05A7
  loc_18EDE4B: If Not(var_E4.EOF) Then
  loc_18EDE74:   var_110 = "SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory FROM ((GuestProf LEFT JOIN (GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) left joIn Subgroup S on GuestFolio.Company=s.Subcode Where GuestFolio.Docid = '" & Me.txtleaderfolio.Text
  loc_18EDE84:   unk_514A6F.Execute Me.txtleaderfolio.Text & ")" & "' order by  RoomOcc.Sno Desc", var_120, -1
  loc_18EDE8F:   Set var_B4 = var_130
  loc_18EDEB9:   If (var_B4.RecordCount <= 0) Then
  loc_18EDEBC:     Exit Sub
  loc_18EDEBD:   End If
  loc_18EDEC3:   If (var_86 = 0) Then
  loc_18EDECC:     var_88 = (var_88 + 1)
  loc_18EDED4:     Print 1, " "
  loc_18EDEDF:     Print 1, " "
  loc_18EDEEA:     Print 1, " "
  loc_18EDEF5:     Print 1, " "
  loc_18EDEFD:     var_86 = &HC
  loc_18EDF4E:     Print 1, " Mr " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Name")), var_86, var_88), &H23)
  loc_18EDF6C:     Print 1, vbNullString
  loc_18EDF89:     var_130 = var_B4.Fields.Item("Add1")
  loc_18EDFA0:     var_15C = Trim(CVar(Proc_6_38_E69628(CVar(var_130), var_130)))
  loc_18EE02E:     var_22C = var_B4.Fields.Item("FolioNo").Value
  loc_18EE04A:     var_27C = (9 - Len(Trim(CVar(CStr(var_22C)))))
  loc_18EE0CB:     var_37C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_18EE125:     var_434 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18EE1A6:     var_534 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18EE200:     var_5EC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18EE28D:     var_6FC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18EE2FE:     var_7D4 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_18EE3B8:     var_914 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_18EE3DF:     var_18C = (CVar(vbNullString & Proc_6_45_EADFB8(CStr(var_15C), &H23)) + Space(3))
  loc_18EE3E6:     var_1E4 = (var_18C + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo"))))))
  loc_18EE3ED:     var_204 = (var_1E4 + Space(3))
  loc_18EE3F4:     var_2BC = (var_204 + Space(CLng((var_27C / 2))))
  loc_18EE400:     var_304 = (var_2BC + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_18EE407:     var_3BC = (var_304 + Space(CLng((var_37C / 2))))
  loc_18EE40E:     var_474 = (var_3BC + Space(CLng((var_434 / 2))))
  loc_18EE41A:     var_4BC = (var_474 + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_18EE421:     var_574 = (var_4BC + Space(CLng((var_534 / 2))))
  loc_18EE428:     var_62C = (var_574 + Space(CLng((var_5EC / 2))))
  loc_18EE42F:     var_684 = (var_62C + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_18EE436:     var_73C = (var_684 + Space(CLng((var_6FC / 2))))
  loc_18EE43D:     var_814 = (var_73C + Space(CLng((var_7D4 / 2))))
  loc_18EE444:     var_87C = (var_814 + Trim(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_18EE44B:     var_954 = (var_87C + Space(CLng((var_914 / 2))))
  loc_18EE451:     Print 1, var_954
  loc_18EE52F:     Print 1, vbNullString
  loc_18EE57C:     Print 1, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add2"))), &H23)
  loc_18EE598:     Print 1, vbNullString
  loc_18EE5E1:     var_13C = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_18EE60F:     Proc_6_39_E7D3A0(var_15C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18EE62B:     var_1B4 = (10 - Len(Trim(CVar(CStr(var_15C)))))
  loc_18EE634:     var_1C4 = (CVar(var_B4.Fields.Item("RoomNo")) / 2)
  loc_18EE651:     var_208 = var_B4.Fields
  loc_18EE668:     Proc_6_39_E7D3A0(var_22C, CVar(var_208.Item("RoomRate")))
  loc_18EE698:     Proc_6_39_E7D3A0(var_27C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18EE6B4:     var_2E4 = (10 - Len(Trim(CVar(CStr(var_27C)))))
  loc_18EE6F4:     var_424 = 12
  loc_18EE72F:     var_3E4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_18EE771:     var_454 = "dd/mm/yy"
  loc_18EE7A2:     var_588 = 12
  loc_18EE7BF:     var_49C = CVar(var_B4.Fields.Item("VDate")) 'Address
  loc_18EE7DD:     var_504 = (1 - Len(Trim(Format(var_49C, "dd/mm/yy"))))
  loc_18EE810:     var_698 = 12
  loc_18EE84B:     var_5CC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_18EE8BE:     var_828 = 12
  loc_18EE8F9:     var_6FC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_18EE92F:     var_794 = (8 - Len(Trim("****")))
  loc_18EE978:     var_86C = (9 - Len(Trim("****")))
  loc_18EE99F:     var_1F4 = (CVar(vbNullString & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng(var_1C4)))
  loc_18EE9AB:     var_24C = (Space(3) + CVar(CStr(var_22C)))
  loc_18EE9B2:     var_32C = (Trim(CVar(CStr(var_22C))) + Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))))
  loc_18EE9B9:     var_34C = (var_B4.Fields.Item("FolioNo").Value + Space(1))
  loc_18EE9C0:     var_414 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_18EE9C7:     var_474 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), var_454))
  loc_18EE9CE:     var_554 = (var_474 + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_18EE9D5:     var_61C = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_18EE9DC:     var_674 = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_18EE9E3:     var_73C = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6FC / 2))))
  loc_18EE9EA:     var_7D4 = (var_73C + Space(CLng((CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))) / 2))))
  loc_18EE9F1:     var_814 = (var_7D4 + Trim("****"))
  loc_18EE9F8:     var_8B4 = (var_814 + Space(CLng((Trim(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)) / 2))))
  loc_18EE9FE:     Print 1, CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName"))))
  loc_18EEAB4:     Print 1, " "
  loc_18EEABF:     Print 1, " "
  loc_18EEACA:     Print 1, " "
  loc_18EEAD2:     var_86 = &H17
  loc_18EEAD5:   End If
  loc_18EEAEC:   var_10C = "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocId = GuestFolio.DocId) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionodocid in ('" & global_68
  loc_18EEB29:   var_16C = CVar(var_10C & ") and (amtdr<>0 or amtcr<>0) and PayCharge.Split='") & var_E4.Fields.Item("Split").Value & "' and PayCharge.Bill_No='" 
  loc_18EEB6E:   unk_514A6F.Execute CStr(var_16C & var_E4.Fields.Item("Bill_no").Value & "' order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO"), var_1C4, -1
  loc_18EEB79:   Set var_B0 = var_208
  loc_18EEBA3:   ' Referenced from: 18F01B8
  loc_18EEBB2:   If Not(var_B0.EOF) Then
  loc_18EEBEF:     If (var_DC <> CDate(var_B0.Fields.Item("VDate").Value)) Then
  loc_18EEC06:       If (var_B0.AbsolutePosition > 1) Then
  loc_18EEC10:         var_CC = (var_BC - var_C4)
  loc_18EEC1A:         var_D4 = (var_D4 + var_CC)
  loc_18EECA5:         var_1C4 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, 1, var_828)), CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_18EED1C:         var_25C = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1, 1)))
  loc_18EED72:         var_15C = (Space(&H16) + CVar(Proc_6_45_EADFB8("Day Total", &H18, var_D4, var_CC, var_208, var_86)))
  loc_18EED79:         var_1D4 = (CVar("Day Total" & ") and (amtdr<>0 or amtcr<>0) and PayCharge.Split='") & var_E4.Fields.Item("Split").Value + var_1C4)
  loc_18EED80:         var_1F4 = (Space(CLng(var_1C4)) + Space(1))
  loc_18EED87:         var_27C = (Space(3) + var_25C)
  loc_18EED8E:         var_2AC = (var_27C + Space(1))
  loc_18EED98:         var_304 = (Trim(CVar(CStr(var_27C))) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_18EED9E:         Print 1, Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2)))
  loc_18EEDFC:         var_86 = (var_86 + 1)
  loc_18EEE04:         Print 1, vbNullString
  loc_18EEE10:         var_86 = (var_86 + 1)
  loc_18EEE16:         var_BC = CDbl(0)
  loc_18EEE1C:         var_C4 = CDbl(0)
  loc_18EEE1F:       End If
  loc_18EEE1F:     End If
  loc_18EEE64:     var_14C = Space(1)
  loc_18EEEC2:     Proc_6_39_E7D3A0(Space(CLng(CVar(var_B0.Fields.Item("VNo")))), CVar(var_B0.Fields.Item("VNo")))
  loc_18EEEEE:     var_22C = (CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("vType")), var_86, 1)))) & "/") + Trim(CVar(CStr(Space(CLng(CVar(var_B0.Fields.Item("VNo"))))))))
  loc_18EEF77:     Proc_6_39_E7D3A0(Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_18EEFB8:     Proc_6_39_E7D3A0(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_18EF010:     var_3E4 = IIf((Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))) = 0), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00")), &HA, 1)))
  loc_18EF048:     Proc_6_39_E7D3A0(var_454, CVar(var_B0.Fields.Item("AmtCr")), 1)
  loc_18EF089:     Proc_6_39_E7D3A0(var_49C, CVar(var_B0.Fields.Item("AmtCr")))
  loc_18EF0E0:     var_514 = IIf((var_454 = 0), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_49C, "0.00")), &HA, 1)))
  loc_18EF0EE:     var_16C = (CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_14C)
  loc_18EF0F8:     var_24C = ("0.00" + CVar(Proc_6_45_EADFB8(CStr(Format(var_C4, "0.00")), 9)))
  loc_18EF0FF:     var_27C = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1, 1)) + Space(1))
  loc_18EF109:     var_2E4 = (var_27C + CVar(Proc_6_45_EADFB8(CStr(Left(CVar(var_B0.Fields.Item("Comments")), &H18)), &H18)))
  loc_18EF110:     var_3F4 = (Format(var_D4, "0.00") + var_3E4)
  loc_18EF117:     var_414 = ((var_B4.Fields.Item("Adult").Value / 2) + Space(1))
  loc_18EF11E:     var_534 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + var_514)
  loc_18EF124:     Print 1, Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2)))
  loc_18EF1C5:     var_86 = (var_86 + 1)
  loc_18EF1F5:     Proc_6_39_E7D3A0(var_14C, CVar(var_B0.Fields.Item("AmtDr")), CVar(var_BC), var_86)
  loc_18EF1FD:     var_15C = (1 + var_14C)
  loc_18EF202:     var_BC = CSng(CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_18EF23E:     Proc_6_39_E7D3A0(var_14C, CVar(var_B0.Fields.Item("AmtCr")), CVar(var_C4))
  loc_18EF246:     var_15C = (var_BC + var_14C)
  loc_18EF24B:     var_C4 = CSng(CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_18EF2B0:     If (var_B0.AbsolutePosition = var_B0.RecordCount) Then
  loc_18EF2BA:       var_CC = (var_BC - var_C4)
  loc_18EF2C4:       var_D4 = (var_D4 + var_CC)
  loc_18EF34F:       var_1C4 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, CDate(var_B0.Fields.Item("VDate").Value))), CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_18EF3C6:       var_25C = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, var_C4)), CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_18EF41C:       var_15C = (Space(&H16) + CVar(Proc_6_45_EADFB8("Day Total", &H18, var_D4, var_CC)))
  loc_18EF423:       var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_1C4)
  loc_18EF42A:       var_1F4 = (Space(CLng(var_1C4)) + Space(1))
  loc_18EF431:       var_27C = (Trim(CVar(CStr(Space(CLng(CVar(var_B0.Fields.Item("VNo"))))))) + var_25C)
  loc_18EF438:       var_2AC = (var_27C + Space(1))
  loc_18EF442:       var_304 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_18EF448:       Print 1, Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2)))
  loc_18EF4A6:       var_86 = (var_86 + 1)
  loc_18EF4AC:       var_BC = CDbl(0)
  loc_18EF4B2:       var_C4 = CDbl(0)
  loc_18EF4B5:     End If
  loc_18EF4BB:     If (var_86 >= &H30) Then
  loc_18EF4C3:       Print 1, " "
  loc_18EF4E7:       var_16C = CVar((Val(CStr(var_88)) + CDbl(1))) 'Double
  loc_18EF4FB:       var_14C = (" " + Space(&H37))
  loc_18EF504:       var_15C = (CVar(Proc_6_45_EADFB8("Day Total", &H18, var_D4, var_CC)) + "Continued Page No ")
  loc_18EF511:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00")
  loc_18EF52F:       var_86 = (var_86 + 1)
  loc_18EF544:       Print 1, Chr(&HC)
  loc_18EF54F:       var_86 = 0
  loc_18EF552:     End If
  loc_18EF558:     If (var_86 = 0) Then
  loc_18EF561:       var_88 = (var_88 + 1)
  loc_18EF569:       Print 1, " "
  loc_18EF574:       Print 1, " "
  loc_18EF57F:       Print 1, " "
  loc_18EF58A:       Print 1, " "
  loc_18EF592:       var_86 = &HC
  loc_18EF5D1:       var_13C = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Name")), var_86, var_88, var_86, var_86, var_C4), &H23, var_BC, var_86)
  loc_18EF5E3:       Print 1, " Mr " & var_13C
  loc_18EF601:       Print 1, vbNullString
  loc_18EF635:       var_15C = Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add1")), 1)))
  loc_18EF6C3:       var_22C = var_B4.Fields.Item("FolioNo").Value
  loc_18EF6DF:       var_27C = (9 - Len(Trim(CVar(CStr(var_22C)))))
  loc_18EF760:       var_37C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_18EF7BA:       var_434 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18EF83B:       var_534 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18EF895:       var_5EC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18EF922:       var_6FC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18EF993:       var_7D4 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_18EFA4D:       var_914 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_18EFA74:       var_18C = (CVar(vbNullString & Proc_6_45_EADFB8(CStr(var_15C), &H23)) + Space(3))
  loc_18EFA7B:       var_1E4 = (CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00") + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), 1))))
  loc_18EFA82:       var_204 = (Space(1) + Space(3))
  loc_18EFA89:       var_2BC = ("0.00" + Space(CLng((var_27C / 2))))
  loc_18EFA95:       var_304 = ("0.00" + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_18EFA9C:       var_3BC = (Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))) + Space(CLng((Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00") / 2))))
  loc_18EFAA3:       var_474 = (CVar(Proc_6_52_EAE084(CStr(Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00")), &HA, 1)) + Space(CLng((CVar(var_B0.Fields.Item("AmtCr")) / 2))))
  loc_18EFAAF:       var_4BC = (CVar(var_B0.Fields.Item("AmtCr")) + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_18EFAB6:       var_574 = (Format(var_B4.Fields.Item("Adult").Value, "0.00") + Space(CLng((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2))))
  loc_18EFABD:       var_62C = ("dd/mm/yy" + Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))))
  loc_18EFAC4:       var_684 = (CVar(var_B4.Fields.Item("DepDate")) + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_18EFACB:       var_73C = (CVar(var_B4.Fields.Item("DepDate")) + Space(CLng((var_6FC / 2))))
  loc_18EFAD2:       var_814 = (var_73C + Space(CLng((var_7D4 / 2))))
  loc_18EFAD9:       var_87C = (var_814 + Trim(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_18EFAE0:       var_954 = ((Trim(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)) / 2) + Space(CLng((var_914 / 2))))
  loc_18EFAE6:       Print 1, var_954
  loc_18EFBC4:       Print 1, vbNullString
  loc_18EFC11:       Print 1, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add2"))), &H23)
  loc_18EFC2D:       Print 1, vbNullString
  loc_18EFC76:       var_13C = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_18EFCA4:       Proc_6_39_E7D3A0(var_15C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18EFCC0:       var_1B4 = (10 - Len(Trim(CVar(CStr(var_15C)))))
  loc_18EFCFD:       Proc_6_39_E7D3A0(var_22C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18EFD2D:       Proc_6_39_E7D3A0(var_27C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18EFD49:       var_2E4 = (10 - Len(Trim(CVar(CStr(var_27C)))))
  loc_18EFD7C:       var_424 = 12
  loc_18EFDB7:       var_3AC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_18EFE2A:       var_588 = 12
  loc_18EFE65:       var_4E4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_18EFE98:       var_698 = 12
  loc_18EFED3:       var_5AC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_18EFF46:       var_828 = 12
  loc_18EFF81:       var_6CC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_18EFFCF:       var_774 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_18F0054:       var_85C = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_18F007B:       var_1F4 = (CVar(vbNullString & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2))))
  loc_18F0087:       var_24C = (Space(3) + CVar(CStr(var_22C)))
  loc_18F008E:       var_32C = (Trim(CVar(CStr(var_22C))) + Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))))
  loc_18F0095:       var_3F4 = (var_B4.Fields.Item("FolioNo").Value + Space(CLng((Space(CLng((Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00") / 2))) / 2))))
  loc_18F009C:       var_454 = (CVar(CStr(var_B4.Fields.Item("Adult").Value)) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_18F00A3:       var_514 = ((CVar(var_B0.Fields.Item("AmtCr")) / 2) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_18F00AA:       var_5EC = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Space(CLng((CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)) / 2))))
  loc_18F00B1:       var_654 = ((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_18F00B8:       var_71C = (CVar(var_B4.Fields.Item("RoomCategory")) + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))))
  loc_18F00BF:       var_7A4 = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))) / 2) + Space(CLng((CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))) / 2))))
  loc_18F00C6:       var_804 = (Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) + Trim(CVar(CStr(var_E4.Fields.Item("Bill_no").Value))))
  loc_18F00CD:       var_8A4 = (Space(CLng((CVar(CStr(var_E4.Fields.Item("Bill_no").Value)) / 2))) + Space(CLng((Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9) / 2))))
  loc_18F00D3:       Print 1, CVar(var_B4.Fields.Item("CountryName"))
  loc_18F018F:       Print 1, " "
  loc_18F019A:       Print 1, " "
  loc_18F01A5:       Print 1, " "
  loc_18F01AD:       var_86 = &H17
  loc_18F01B0:     End If
  loc_18F01B3:     var_B0.MoveNext
  loc_18F01B8:     GoTo loc_18EEBA3
  loc_18F01BB:     ' Referenced from: 18F01D8
  loc_18F01BB:   End If
  loc_18F01C1:   If (var_86 <= &H32) Then
  loc_18F01C9:     Print 1, vbNullString
  loc_18F01D5:     var_86 = (var_86 + 1)
  loc_18F01D8:     GoTo loc_18F01BB
  loc_18F01DB:   End If
  loc_18F021B:   var_958 = Proc_6_45_EADFB8(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise", var_86, var_86, 1, var_828, 1), &H35, 1, 1, var_698)
  loc_18F026E:   var_15C = (Space(8) + CVar(var_958))
  loc_18F0275:   var_17C = (var_15C + Space(6))
  loc_18F027F:   var_1D4 = (Trim(CVar(CStr(var_15C))) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1, 1, 1)))
  loc_18F0285:   Print 1, Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2)))
  loc_18F02B7:   var_86 = (var_86 + 1)
  loc_18F0333:   var_18C = CVar(Proc_6_45_EADFB8(CStr(Mid(CVar(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise", var_588)), &H36, var_15C)), &H35, 1)) 'String
  loc_18F0360:   var_1C4 = (Space(8) + IIf((Len(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", var_18C))
  loc_18F0366:   Print 1, CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1, 1, 1))
  loc_18F039A:   var_86 = (var_86 + 1)
  loc_18F03ED:   var_17C = (Space(&H43) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1, 1)))
  loc_18F03F3:   Print 1, " "
  loc_18F0413:   var_86 = (var_86 + 1)
  loc_18F0418:   var_86 = 0
  loc_18F0426:   Print 1, vbNullString
  loc_18F046C:   var_14C = (Space(7) + "Cash")
  loc_18F0475:   var_15C = ("0.00" + "              ")
  loc_18F047F:   var_18C = (Format(CDbl(0), "0.00") + CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CompanyName")), CDbl(0), var_86, var_86)))
  loc_18F0485:   Print 1, var_18C
  loc_18F04E1:   var_14C = (Space(7) + CVar(MemVar_1F950C8))
  loc_18F04EA:   var_15C = ("0.00" + "              ")
  loc_18F04F4:   var_18C = (Format(CDbl(0), "0.00") + CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ContactPerson")), var_86)))
  loc_18F04FA:   Print 1, var_18C
  loc_18F051A:   Print 1, " "
  loc_18F0525:   Print 1, " "
  loc_18F0530:   Print 1, " "
  loc_18F053B:   Print 1, " "
  loc_18F0546:   Print 1, " "
  loc_18F0573:   Print 1, Proc_6_98_11AC34C("PROVISIONAL GUEST BILL", "B", &H4E)
  loc_18F0596:   Print 1, Chr(&HC)
  loc_18F05A2:   var_E4.MoveNext
  loc_18F05A7:   GoTo loc_18EDE3C
  loc_18F05AA: End If
  loc_18F05AC: Close 1
  loc_18F05B5: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_18F05F1: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_18F0607: Close 1
  loc_18F0611: If (MemVar_1F953BC = "Y") Then
  loc_18F062D:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_18F0637: Else
  loc_18F0650:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_18F0657: End If
  loc_18F0657: Exit Sub
  loc_18F0658: ' Referenced from: 18EDDE8
  loc_18F065E: If (var_E8 = &HFF) Then
  loc_18F0667:   unk_514A6F.RollbackTrans
  loc_18F066C: End If
  loc_18F066C: Proc_6_60_E63754(1)
  loc_18F0671: Exit Sub
End Sub

Public Sub Proc_174_52_1A2F980
  'Data Table: 514A68
  Dim var_DE As Integer
  Dim var_10C As String
  Dim var_110 As String
  Dim unk_514A6F As Connection15
  Dim var_E4 As Recordset15
  Dim var_124 As Variant
  Dim var_B4 As Recordset15
  Dim var_88 As Variant
  Dim var_154 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_86 As Variant
  Dim var_174 As Variant
  Dim var_1C4 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim var_2E0 As Variant
  Dim var_120 As Variant
  Dim var_2EC As Fields15
  Dim var_320 As Variant
  Dim var_360 As Variant
  Dim var_408 As Variant
  Dim var_3F8 As Variant
  Dim var_418 As Variant
  Dim var_438 As Variant
  Dim var_518 As Variant
  Dim var_538 As Variant
  Dim var_5B0 As Variant
  Dim var_5D0 As Variant
  Dim var_6E0 As Variant
  Dim var_778 As Variant
  Dim var_7B8 As Variant
  Dim var_7D8 As Variant
  Dim var_820 As Variant
  Dim var_830 As Variant
  Dim var_898 As Variant
  Dim var_8F8 As Variant
  Dim var_3A0 As Variant
  Dim var_458 As Variant
  Dim var_4A0 As Variant
  Dim var_558 As Variant
  Dim var_610 As Variant
  Dim var_668 As Variant
  Dim var_720 As Variant
  Dim var_7F8 As Variant
  Dim var_938 As Variant
  Dim var_3C8 As Variant
  Dim var_4E8 As Variant
  Dim var_548 As Variant
  Dim var_788 As Variant
  Dim var_7E8 As Variant
  Dim var_8A8 As Variant
  Dim var_218 As String
  Dim var_240 As Variant
  Dim var_330 As Variant
  Dim var_600 As Variant
  Dim var_658 As Variant
  Dim var_8C8 As Variant
  Dim var_2A0 As Variant
  Dim var_130 As Field20
  Dim var_B0 As Recordset15
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_DC As Double
  Dim var_220 As String
  Dim var_93C As String
  Dim var_940 As String
  Dim Me As Recordset15
  loc_1A2C488: On Error Goto loc_1A2F965
  loc_1A2C48D: var_DE = 0
  loc_1A2C492: Close 1
  loc_1A2C49B: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1A2C4B6: var_10C = "Select Distinct Split,Bill_No from paycharge where (ContraDocId is NULL or contradocid='') and folionodocid in ('" & global_68
  loc_1A2C4C6: unk_514A6F.Execute var_10C & ")", var_120, -1
  loc_1A2C4D1: Set var_E4 = var_124
  loc_1A2C4E1: ' Referenced from: 1A2F8B4
  loc_1A2C4F0: If Not(var_E4.EOF) Then
  loc_1A2C519:   var_110 = "SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory FROM ((GuestProf LEFT JOIN (GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) left joIn Subgroup S on GuestFolio.Company=s.Subcode Where GuestFolio.Docid = '" & Me.txtleaderfolio.Text
  loc_1A2C529:   unk_514A6F.Execute Me.txtleaderfolio.Text & ")" & "' order by  RoomOcc.Sno Desc", var_120, -1
  loc_1A2C534:   Set var_B4 = var_130
  loc_1A2C55E:   If (var_B4.RecordCount <= 0) Then
  loc_1A2C561:     Exit Sub
  loc_1A2C562:   End If
  loc_1A2C568:   If (var_86 = 0) Then
  loc_1A2C599:     var_A4 = Replace(CStr(Space(&H50)), " ", "-", 1, -1, 0)
  loc_1A2C5A8:     var_88 = (var_88 + 1)
  loc_1A2C5CC:     Print 1, Proc_6_98_11AC34C(MemVar_1F95130, "A", &H4E, var_88)
  loc_1A2C621:     var_154 = (Trim(MemVar_1F95134) + ", ")
  loc_1A2C628:     var_184 = (var_154 + Trim(MemVar_1F95138))
  loc_1A2C631:     var_1A4 = (var_184 + " ")
  loc_1A2C638:     var_1D4 = (var_1A4 + Trim(MemVar_1F9513C))
  loc_1A2C641:     var_1F4 = (var_1D4 + " ")
  loc_1A2C64B:     var_214 = (var_1F4 + CVar(MemVar_1F9515C))
  loc_1A2C664:     Print 1, Proc_6_98_11AC34C(CStr(var_214), "B", &H4E)
  loc_1A2C6C2:     Print 1, Proc_6_98_11AC34C("Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144, "D", 138)
  loc_1A2C6DC:     Print 1, vbNullString
  loc_1A2C709:     Print 1, Proc_6_98_11AC34C("PROVISIONAL GUEST BILL", "B", &H4E)
  loc_1A2C71F:     Print 1, var_A4
  loc_1A2C727:     var_86 = &HC
  loc_1A2C7A4:     var_174 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("Guest Name :", &H3D, var_86)))
  loc_1A2C7AD:     var_184 = (Trim(MemVar_1F95138) + "|")
  loc_1A2C7B4:     var_1C4 = (var_184 + Space(2))
  loc_1A2C7BD:     var_1D4 = (Trim(MemVar_1F9513C) + "Room #")
  loc_1A2C7C4:     var_214 = (var_1D4 + Space(&HA))
  loc_1A2C7CD:     var_230 = (var_214 + "Reg #")
  loc_1A2C7D4:     var_250 = (var_230 + Space(&HA))
  loc_1A2C7DD:     var_260 = (var_250 + "Pax")
  loc_1A2C7E4:     var_280 = (var_260 + Space(&HB))
  loc_1A2C7ED:     var_290 = (var_280 + "Type")
  loc_1A2C7F4:     var_2B0 = (var_290 + Space(&HA))
  loc_1A2C7FD:     var_2C0 = (var_2B0 + "Nation")
  loc_1A2C804:     var_2E0 = (var_2C0 + Chr(&H12))
  loc_1A2C80A:     Print 1, var_2E0
  loc_1A2C853:     var_124 = var_B4.Fields
  loc_1A2C85B:     var_130 = var_124.Item("Name")
  loc_1A2C913:     var_280 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A2C994:     var_360 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A2C9EE:     var_418 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A2CA6F:     var_518 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A2CAC9:     var_5D0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A2CB56:     var_6E0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A2CBC7:     var_7B8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_1A2CC81:     var_8F8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_1A2CCAF:     var_184 = (CVar("Mr " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_130), var_130), &H1F) & "|") + Space(1))
  loc_1A2CCB6:     var_1F4 = (var_184 + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_124))))
  loc_1A2CCBD:     var_230 = (Space(&HA) + Space(3))
  loc_1A2CCC4:     var_2B0 = (var_230 + Space(CLng((var_280 / 2))))
  loc_1A2CCD0:     var_2E0 = (var_2B0 + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_1A2CCD7:     var_3A0 = (var_2E0 + Space(CLng((var_360 / 2))))
  loc_1A2CCDE:     var_458 = (var_3A0 + Space(CLng((var_418 / 2))))
  loc_1A2CCEA:     var_4A0 = (var_458 + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_1A2CCF1:     var_558 = (var_4A0 + Space(CLng((var_518 / 2))))
  loc_1A2CCF8:     var_610 = (var_558 + Space(CLng((var_5D0 / 2))))
  loc_1A2CCFF:     var_668 = (var_610 + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_1A2CD06:     var_720 = (var_668 + Space(CLng((var_6E0 / 2))))
  loc_1A2CD0D:     var_7F8 = (var_720 + Space(CLng((var_7B8 / 2))))
  loc_1A2CD14:     var_860 = (var_7F8 + Trim(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_1A2CD1B:     var_938 = (var_860 + Space(CLng((var_8F8 / 2))))
  loc_1A2CD21:     Print 1, var_938
  loc_1A2CE68:     var_1A4 = CVar(vbNullString & Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add1")))))), &H23) & "|") 'String
  loc_1A2CE6E:     var_1C4 = (var_1A4 + Left(var_A4, &H2C))
  loc_1A2CE74:     Print 1, CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))
  loc_1A2CF1F:     var_2A0 = Chr(&H12)
  loc_1A2CF2E:     var_174 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add2"))), &H23) & "|") 'String
  loc_1A2CF34:     var_184 = (var_174 + Chr(&HF))
  loc_1A2CF3B:     var_1C4 = (Left(var_A4, &H2C) + Space(2))
  loc_1A2CF44:     var_1D4 = (CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields)) + "R.Rate")
  loc_1A2CF4B:     var_214 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) + Space(&HE))
  loc_1A2CF54:     var_230 = (Space(3) + "Arrival")
  loc_1A2CF5B:     var_250 = (var_230 + Space(&HD))
  loc_1A2CF64:     var_260 = (CVar(CStr(var_B4.Fields.Item("FolioNo").Value)) + "Departure")
  loc_1A2CF6B:     var_280 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(&HA))
  loc_1A2CF74:     var_290 = (var_280 + " Bill # ")
  loc_1A2CF7B:     var_2B0 = ((var_280 / 2) + var_2A0)
  loc_1A2CF81:     Print 1, var_2B0
  loc_1A2CFFF:     var_93C = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_1A2D02D:     Proc_6_39_E7D3A0(var_174, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A2D049:     var_1D4 = (6 - Len(Trim(CVar(CStr(var_174)))))
  loc_1A2D06F:     var_2EC = var_B4.Fields
  loc_1A2D086:     Proc_6_39_E7D3A0(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_2EC.Item("RoomRate")))
  loc_1A2D0B6:     Proc_6_39_E7D3A0(var_2A0, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A2D0D2:     var_2E0 = (10 - Len(Trim(CVar(CStr(var_2A0)))))
  loc_1A2D105:     var_408 = 12
  loc_1A2D119:     var_360 = "dd/mm/yy"
  loc_1A2D140:     var_3C8 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), var_360))))
  loc_1A2D1D7:     var_4A0 = Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy")
  loc_1A2D1EE:     var_4E8 = (1 - Len(Trim(var_4A0)))
  loc_1A2D25C:     var_5B0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A2D30A:     var_6E0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A2D360:     var_788 = (12 - Len(Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 9, 1, 12, 1, 1, 1)))))
  loc_1A2D3F2:     var_898 = (1 - Len(Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 9, 1)))))
  loc_1A2D420:     var_240 = (CVar(vbNullString & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName"))) & "|") + Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2))))
  loc_1A2D42C:     var_280 = (Space(&HD) + CVar(CStr(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))))))
  loc_1A2D433:     var_330 = (var_280 + Space(CLng((var_2E0 / 2))))
  loc_1A2D43A:     var_3F8 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_1A2D441:     var_458 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_1A2D448:     var_538 = (var_458 + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_1A2D44F:     var_600 = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_1A2D456:     var_658 = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_1A2D45D:     var_720 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6E0 / 2))))
  loc_1A2D464:     var_7D8 = (var_720 + Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))))
  loc_1A2D46B:     var_830 = ((Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) / 2) + Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 1, 12))))
  loc_1A2D472:     var_8C8 = (CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng((CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))) / 2))))
  loc_1A2D478:     Print 1, Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA))))
  loc_1A2D55A:     Print 1, Proc_6_45_EADFB8(" ", &H23) & "|"
  loc_1A2D570:     Print 1, var_A4
  loc_1A2D637:     var_174 = (CVar(Proc_6_45_EADFB8("Date", &HB)) + Space(1))
  loc_1A2D641:     var_1A4 = (var_174 + CVar(Proc_6_45_EADFB8("Bill/Vou#", 9)))
  loc_1A2D648:     var_1D4 = (Trim(CVar(CStr(var_174))) + Space(1))
  loc_1A2D64F:     var_1F4 = CVar(Proc_6_45_EADFB8("Description", &H18)) 'String
  loc_1A2D652:     var_214 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) + var_1F4)
  loc_1A2D65C:     var_240 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2))) + CVar(Proc_6_52_EAE084("Debit", &HA)))
  loc_1A2D663:     var_260 = (Space(&HD) + Space(1))
  loc_1A2D66D:     var_280 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + CVar(Proc_6_52_EAE084("Credit", &HA)))
  loc_1A2D674:     var_2A0 = (var_280 + Space(1))
  loc_1A2D67E:     var_2C0 = (var_2A0 + CVar(Proc_6_52_EAE084("Balance", &HB)))
  loc_1A2D684:     Print 1, Trim(CVar(CStr(var_2A0)))
  loc_1A2D6D3:     Print 1, var_A4
  loc_1A2D6DB:     var_86 = &H17
  loc_1A2D6DE:   End If
  loc_1A2D6F5:   var_10C = "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocId = GuestFolio.DocId) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionodocid in ('" & global_68
  loc_1A2D732:   var_184 = CVar(var_10C & ") and (amtdr<>0 or amtcr<>0) and PayCharge.Split='") & var_E4.Fields.Item("Split").Value & "' and PayCharge.Bill_No='" 
  loc_1A2D777:   unk_514A6F.Execute CStr(var_184 & var_E4.Fields.Item("Bill_no").Value & "' order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO"), var_1F4, -1
  loc_1A2D782:   Set var_B0 = var_2EC
  loc_1A2D7AC:   ' Referenced from: 1A2F2A2
  loc_1A2D7BB:   If Not(var_B0.EOF) Then
  loc_1A2D7F8:     If (var_DC <> CDate(var_B0.Fields.Item("VDate").Value)) Then
  loc_1A2D80F:       If (var_B0.AbsolutePosition > 1) Then
  loc_1A2D819:         var_CC = (var_BC - var_C4)
  loc_1A2D823:         var_D4 = (var_D4 + var_CC)
  loc_1A2D8AE:         var_1F4 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, var_2EC)), CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1)))
  loc_1A2D925:         var_290 = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, 1)), CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_1A2D97B:         var_174 = (Space(&H16) + CVar(Proc_6_45_EADFB8("Day Total", &H18, var_D4, var_CC)))
  loc_1A2D982:         var_214 = (CVar("Day Total" & ") and (amtdr<>0 or amtcr<>0) and PayCharge.Split='") & var_E4.Fields.Item("Split").Value + var_1F4)
  loc_1A2D989:         var_240 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2))) + Space(1))
  loc_1A2D990:         var_2A0 = (Space(&HD) + var_290)
  loc_1A2D997:         var_2C0 = (var_2A0 + Space(1))
  loc_1A2D9A1:         var_320 = (Trim(CVar(CStr(var_2A0))) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_1A2D9A7:         Print 1, Space(CLng((Format(var_D4, "0.00") / 2)))
  loc_1A2DA05:         var_86 = (var_86 + 1)
  loc_1A2DA0D:         Print 1, vbNullString
  loc_1A2DA19:         var_86 = (var_86 + 1)
  loc_1A2DA1F:         var_BC = CDbl(0)
  loc_1A2DA25:         var_C4 = CDbl(0)
  loc_1A2DA28:       End If
  loc_1A2DA28:     End If
  loc_1A2DA6D:     var_154 = Space(1)
  loc_1A2DACB:     Proc_6_39_E7D3A0(Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2))), CVar(var_B0.Fields.Item("VNo")))
  loc_1A2DAF7:     var_260 = (CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("vType")), var_86, 1)))) & "/") + Trim(CVar(CStr(Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2)))))))
  loc_1A2DB80:     Proc_6_39_E7D3A0(Space(CLng((Format(var_D4, "0.00") / 2))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_1A2DBC1:     Proc_6_39_E7D3A0(var_360, CVar(var_B0.Fields.Item("AmtDr")))
  loc_1A2DC19:     var_3E8 = IIf((Space(CLng((Format(var_D4, "0.00") / 2))) = 0), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_360, "0.00")), &HA, 1)))
  loc_1A2DC51:     Proc_6_39_E7D3A0(var_458, CVar(var_B0.Fields.Item("AmtCr")), 1)
  loc_1A2DC92:     Proc_6_39_E7D3A0(var_4A0, CVar(var_B0.Fields.Item("AmtCr")))
  loc_1A2DCE9:     var_538 = IIf((var_458 = 0), CVar(Proc_6_52_EAE084(vbNullString, &HA)), CVar(Proc_6_52_EAE084(CStr(Format(var_4A0, "0.00")), &HA, 1)))
  loc_1A2DCF7:     var_184 = (CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_154)
  loc_1A2DD01:     var_280 = ("0.00" + CVar(Proc_6_45_EADFB8(CStr(Format(var_C4, "0.00")), 9)))
  loc_1A2DD08:     var_2A0 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_1A2DD12:     var_2E0 = (var_2A0 + CVar(Proc_6_45_EADFB8(CStr(Left(CVar(var_B0.Fields.Item("Comments")), &H18)), &H18)))
  loc_1A2DD19:     var_3F8 = (Format(var_D4, "0.00") + var_3E8)
  loc_1A2DD20:     var_438 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Space(1))
  loc_1A2DD27:     var_548 = ("dd/mm/yy" + var_538)
  loc_1A2DD2D:     Print 1, CVar(var_B4.Fields.Item("DepDate"))
  loc_1A2DDCE:     var_86 = (var_86 + 1)
  loc_1A2DDFE:     Proc_6_39_E7D3A0(var_154, CVar(var_B0.Fields.Item("AmtDr")), CVar(var_BC), var_86)
  loc_1A2DE06:     var_174 = (1 + var_154)
  loc_1A2DE0B:     var_BC = CSng(CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_1A2DE47:     Proc_6_39_E7D3A0(var_154, CVar(var_B0.Fields.Item("AmtCr")), CVar(var_C4))
  loc_1A2DE4F:     var_174 = (var_BC + var_154)
  loc_1A2DE54:     var_C4 = CSng(CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_1A2DEB9:     If (var_B0.AbsolutePosition = var_B0.RecordCount) Then
  loc_1A2DEC3:       var_CC = (var_BC - var_C4)
  loc_1A2DECD:       var_D4 = (var_D4 + var_CC)
  loc_1A2DED5:       Print 1, vbNullString
  loc_1A2DEE1:       var_86 = (var_86 + 1)
  loc_1A2DF6C:       var_1F4 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, CDate(var_B0.Fields.Item("VDate").Value))), CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_1A2DFE3:       var_290 = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAE084(vbNullString, &HA, var_C4)), CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_1A2E039:       var_174 = (Space(&H16) + CVar(Proc_6_45_EADFB8("Day Total", &H18, var_86, var_D4, var_CC)))
  loc_1A2E040:       var_214 = (CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_1F4)
  loc_1A2E047:       var_240 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2))) + Space(1))
  loc_1A2E04E:       var_2A0 = (Trim(CVar(CStr(Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2)))))) + var_290)
  loc_1A2E055:       var_2C0 = (var_2A0 + Space(1))
  loc_1A2E05F:       var_320 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_1A2E065:       Print 1, Space(CLng((Format(var_D4, "0.00") / 2)))
  loc_1A2E0C3:       var_86 = (var_86 + 1)
  loc_1A2E0C9:       var_BC = CDbl(0)
  loc_1A2E0CF:       var_C4 = CDbl(0)
  loc_1A2E0D2:     End If
  loc_1A2E0D8:     If (var_86 >= &H30) Then
  loc_1A2E0E0:       Print 1, " "
  loc_1A2E104:       var_184 = CVar((Val(CStr(var_88)) + CDbl(1))) 'Double
  loc_1A2E118:       var_154 = (" " + Space(&H37))
  loc_1A2E121:       var_174 = (CVar(Proc_6_45_EADFB8("Day Total", &H18, var_86, var_D4, var_CC)) + "Continued Page No ")
  loc_1A2E12E:       Print 1, CVar(Proc_6_45_EADFB8(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00")
  loc_1A2E14C:       var_86 = (var_86 + 1)
  loc_1A2E161:       Print 1, Chr(&HC)
  loc_1A2E16C:       var_86 = 0
  loc_1A2E16F:     End If
  loc_1A2E175:     If (var_86 = 0) Then
  loc_1A2E17E:       var_88 = (var_88 + 1)
  loc_1A2E187:       var_88 = (var_88 + 1)
  loc_1A2E1AB:       Print 1, Proc_6_98_11AC34C(MemVar_1F95130, "A", &H4E, var_88, var_88, var_86, var_86)
  loc_1A2E200:       var_154 = (Trim(MemVar_1F95134) + ", ")
  loc_1A2E207:       var_184 = (CVar(Proc_6_45_EADFB8("Day Total", &H18, var_86, var_D4, var_CC)) + Trim(MemVar_1F95138))
  loc_1A2E210:       var_1A4 = ("0.00" + " ")
  loc_1A2E217:       var_1D4 = (Str("0.00") + Trim(MemVar_1F9513C))
  loc_1A2E220:       var_1F4 = (CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)) + " ")
  loc_1A2E22A:       var_214 = (var_1F4 + CVar(MemVar_1F9515C))
  loc_1A2E238:       var_218 = Proc_6_98_11AC34C(CStr(Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2)))), "B", &H4E, var_C4, var_BC)
  loc_1A2E243:       Print 1, var_218
  loc_1A2E2A0:       Print 1, Proc_6_98_11AC34C("Phone: " & MemVar_1F95140 & " Fax :" & MemVar_1F95144, "D", &H7D, var_86)
  loc_1A2E2D3:       var_218 = Proc_6_98_11AC34C("Website: " & "www.kumaonindia.com * www.himalaya-holidays.com * www.indiatravelplan.com", "D", &H7D)
  loc_1A2E2DE:       Print 1, "D"
  loc_1A2E2F4:       Print 1, var_A4
  loc_1A2E2FC:       var_86 = &HC
  loc_1A2E379:       var_174 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("Guest Name :", &H3C, var_86)))
  loc_1A2E382:       var_184 = (Trim(MemVar_1F95138) + "|")
  loc_1A2E389:       var_1C4 = ("0.00" + Space(2))
  loc_1A2E392:       var_1D4 = (Trim(MemVar_1F9513C) + "Room #")
  loc_1A2E399:       var_214 = (CVar(Proc_6_52_EAE084(CStr(Format(var_BC, "0.00")), &HA, 1, 1)) + Space(&HA))
  loc_1A2E3A2:       var_230 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_B4.Fields))) / 2))) + "Reg #")
  loc_1A2E3A9:       var_250 = (Space(1) + Space(&HA))
  loc_1A2E3B2:       var_260 = ("0.00" + "Pax")
  loc_1A2E3B9:       var_280 = (Format(var_C4, "0.00") + Space(&HB))
  loc_1A2E3C2:       var_290 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + "Type")
  loc_1A2E3C9:       var_2B0 = (var_290 + Space(&HA))
  loc_1A2E3D2:       var_2C0 = (Space(1) + "Nation")
  loc_1A2E3D9:       var_2E0 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + Chr(&H12))
  loc_1A2E3DF:       Print 1, Format(var_D4, "0.00")
  loc_1A2E4E8:       var_280 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A2E569:       var_360 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A2E5C3:       var_418 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A2E644:       var_518 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A2E69E:       var_5D0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A2E72B:       var_6E0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A2E79C:       var_7B8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_1A2E7AE:       var_7E8 = Space(CLng((Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) / 2)))
  loc_1A2E856:       var_8F8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_1A2E884:       var_184 = (CVar("Mr " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Name")), 1), &H1F) & "|") + Space(1))
  loc_1A2E88B:       var_1F4 = ("0.00" + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_86))))
  loc_1A2E892:       var_230 = (Space(&HA) + Space(3))
  loc_1A2E899:       var_2B0 = (Space(1) + Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) / 2))))
  loc_1A2E8A5:       var_2E0 = (Space(1) + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_1A2E8AC:       var_3A0 = (Format(var_D4, "0.00") + Space(CLng((var_360 / 2))))
  loc_1A2E8B3:       var_458 = ((Space(CLng((Format(var_D4, "0.00") / 2))) = 0) + Space(CLng((Space(1) / 2))))
  loc_1A2E8BF:       var_4A0 = (var_458 + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_1A2E8C6:       var_558 = (var_4A0 + Space(CLng((CVar(Proc_6_52_EAE084(CStr(Format(var_4A0, "0.00")), &HA, 1)) / 2))))
  loc_1A2E8CD:       var_610 = ("dd/mm/yy" + Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))))
  loc_1A2E8D4:       var_668 = (CVar(var_B4.Fields.Item("DepDate")) + Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_1A2E8DB:       var_720 = (CVar(var_B4.Fields.Item("DepDate")) + Space(CLng((var_6E0 / 2))))
  loc_1A2E8E2:       var_7F8 = (var_720 + var_7E8)
  loc_1A2E8E9:       var_860 = (CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 1, 12)) + Trim(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_1A2E8F0:       var_938 = (Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 9, 1))) + Space(CLng((var_8F8 / 2))))
  loc_1A2E8F6:       Print 1, var_938
  loc_1A2EA3D:       var_1A4 = CVar(vbNullString & Proc_6_45_EADFB8(CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add1")))))), &H23) & "|") 'String
  loc_1A2EA43:       var_1C4 = (var_1A4 + Left(var_A4, &H2C))
  loc_1A2EA49:       Print 1, CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_86))
  loc_1A2EAF4:       var_2A0 = Chr(&H12)
  loc_1A2EB03:       var_174 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("Add2"))), &H23) & "|") 'String
  loc_1A2EB09:       var_184 = (var_174 + Chr(&HF))
  loc_1A2EB10:       var_1C4 = (Left(var_A4, &H2C) + Space(2))
  loc_1A2EB19:       var_1D4 = (CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_86)) + "R.Rate")
  loc_1A2EB20:       var_214 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_86))) + Space(&HE))
  loc_1A2EB29:       var_230 = (Space(3) + "Arrival")
  loc_1A2EB30:       var_250 = (Space(1) + Space(&HD))
  loc_1A2EB39:       var_260 = (CVar(CStr(var_B4.Fields.Item("FolioNo").Value)) + "Departure")
  loc_1A2EB40:       var_280 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(&HA))
  loc_1A2EB49:       var_290 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + " Bill # ")
  loc_1A2EB50:       var_2B0 = ((CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) / 2) + var_2A0)
  loc_1A2EB56:       Print 1, Space(1)
  loc_1A2EBD4:       var_220 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_1A2EC02:       Proc_6_39_E7D3A0(var_174, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A2EC1E:       var_1D4 = (6 - Len(Trim(CVar(CStr(var_174)))))
  loc_1A2EC5B:       Proc_6_39_E7D3A0(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A2EC8B:       Proc_6_39_E7D3A0(var_2A0, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A2ECA7:       var_2E0 = (10 - Len(Trim(CVar(CStr(var_2A0)))))
  loc_1A2ECDA:       var_408 = 12
  loc_1A2ED15:       var_3C8 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_1A2EDC3:       var_4E8 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_1A2EE31:       var_5B0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A2EEDF:       var_6E0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A2EF2D:       var_778 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_1A2EFB2:       var_860 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_1A2EFE0:       var_240 = (CVar(vbNullString & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName"))) & "|") + Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_86))) / 2))))
  loc_1A2EFEC:       var_280 = (Space(&HD) + CVar(CStr(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))))))
  loc_1A2EFF3:       var_330 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(CLng((Format(var_D4, "0.00") / 2))))
  loc_1A2EFFA:       var_3F8 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_1A2F001:       var_458 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_1A2F008:       var_538 = (var_458 + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_1A2F00F:       var_600 = ((CVar(Proc_6_52_EAE084(CStr(Format(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"), "0.00")), &HA, 1)) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_1A2F016:       var_658 = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_1A2F01D:       var_720 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6E0 / 2))))
  loc_1A2F024:       var_7B8 = (var_720 + Space(CLng((CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9))) / 2))))
  loc_1A2F02B:       var_820 = (Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) + Trim(CVar(CStr(var_E4.Fields.Item("Bill_no").Value))))
  loc_1A2F032:       var_8A8 = (CVar(var_B4.Fields.Item("CountryName")) + Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_E4.Fields.Item("Bill_no")), 9, 1))) / 2))))
  loc_1A2F038:       Print 1, Left(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("CountryName")))), &HA)
  loc_1A2F116:       Print 1, Proc_6_45_EADFB8(" ", &H23, 1, 12, 1, 1, 1) & "|"
  loc_1A2F12C:       Print 1, var_A4
  loc_1A2F1F3:       var_174 = (CVar(Proc_6_45_EADFB8("Date", &HB, 12, 1)) + Space(1))
  loc_1A2F1FD:       var_1A4 = (var_174 + CVar(Proc_6_45_EADFB8("Bill/Vou#", 9, 12)))
  loc_1A2F204:       var_1D4 = (Trim(CVar(CStr(var_174))) + Space(1))
  loc_1A2F20E:       var_214 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_86))) + CVar(Proc_6_45_EADFB8("Description", &H18, 1)))
  loc_1A2F218:       var_240 = (Space(CLng((Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_86))) / 2))) + CVar(Proc_6_52_EAE084("Debit", &HA)))
  loc_1A2F21F:       var_260 = (Space(&HD) + Space(1))
  loc_1A2F229:       var_280 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + CVar(Proc_6_52_EAE084("Credit", &HA)))
  loc_1A2F230:       var_2A0 = (CVar(Proc_6_52_EAE084(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_1A2F23A:       var_2C0 = (var_2A0 + CVar(Proc_6_52_EAE084("Balance", &HB)))
  loc_1A2F240:       Print 1, Trim(CVar(CStr(var_2A0)))
  loc_1A2F28F:       Print 1, var_A4
  loc_1A2F297:       var_86 = &H17
  loc_1A2F29A:     End If
  loc_1A2F29D:     var_B0.MoveNext
  loc_1A2F2A2:     GoTo loc_1A2D7AC
  loc_1A2F2A5:     ' Referenced from: 1A2F2C2
  loc_1A2F2A5:   End If
  loc_1A2F2AB:   If (var_86 <= &H32) Then
  loc_1A2F2B3:     Print 1, vbNullString
  loc_1A2F2BF:     var_86 = (var_86 + 1)
  loc_1A2F2C2:     GoTo loc_1A2F2A5
  loc_1A2F2C5:   End If
  loc_1A2F2CA:   Print 1, var_A4
  loc_1A2F2D6:   var_86 = (var_86 + 1)
  loc_1A2F319:   var_174 = IIf((var_D4 < CDbl(0)), CVar(Proc_6_45_EADFB8("Refund: ", 8, var_86, var_86)), CVar(Proc_6_45_EADFB8("Charge: ", 8, var_86)))
  loc_1A2F3AD:   var_1A4 = (var_174 + CVar(Proc_6_45_EADFB8(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise"), &H35)))
  loc_1A2F3B7:   var_1D4 = (Trim(CVar(CStr(var_174))) + CVar(Proc_6_45_EADFB8("TOTAL:", 6)))
  loc_1A2F3C1:   var_240 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("RoomNo")), var_86))) + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A2F3C7:   Print 1, Space(&HD)
  loc_1A2F409:   var_86 = (var_86 + 1)
  loc_1A2F485:   var_1C4 = CVar(Proc_6_45_EADFB8(CStr(Mid(CVar(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise")), &H36, var_174)), &H35, 1)) 'String
  loc_1A2F4B2:   var_1F4 = (Space(8) + IIf((Len(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", var_1C4))
  loc_1A2F4B8:   Print 1, "0.00"
  loc_1A2F4EC:   var_86 = (var_86 + 1)
  loc_1A2F555:   var_174 = (Space(&H3D) + CVar(Proc_6_45_EADFB8("NET  :", 6, var_86)))
  loc_1A2F55F:   var_1D4 = (var_174 + CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A2F565:   Print 1, IIf((Len(Proc_6_43_1003B24(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", CVar(Proc_6_52_EAE084(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A2F58D:   var_86 = (var_86 + 1)
  loc_1A2F5A5:   var_154 = (Space(&H3D) + "===================")
  loc_1A2F5AB:   Print 1, CVar(Proc_6_45_EADFB8("NET  :", 6, var_86))
  loc_1A2F5BE:   var_86 = (var_86 + 1)
  loc_1A2F5C3:   var_86 = 0
  loc_1A2F641:   var_940 = Proc_6_45_EADFB8("Payment ", 8, CDbl(0), var_86, var_86) & Proc_6_45_EADFB8(vbNullString, &HC, var_86) & "Company: " & Proc_6_38_E69628(CVar(var_B4.Fields.Item("CompanyName")), 1)
  loc_1A2F646:   Print 1, var_940
  loc_1A2F6DA:   var_93C = Proc_6_45_EADFB8("USER", 8) & Proc_6_45_EADFB8(MemVar_1F950C8, &HC) & "Contact: " & Proc_6_38_E69628(CVar(var_B4.Fields.Item("ContactPerson")), 1)
  loc_1A2F6DF:   Print 1, var_93C
  loc_1A2F707:   Print 1, var_A4
  loc_1A2F746:   var_174 = (Chr(&HF) + CVar(Proc_6_52_EAE084("Regardless of charge instructions I agree to be held", &H7B)))
  loc_1A2F74D:   var_1A4 = (var_174 + Chr(&H12))
  loc_1A2F753:   Print 1, Format(CDbl(0), "0.00")
  loc_1A2F7A7:   var_174 = (Chr(&HF) + CVar(Proc_6_52_EAE084("personally liable for payment of the total amount of this bill.", 134)))
  loc_1A2F7AE:   var_1A4 = (var_174 + Chr(&H12))
  loc_1A2F7B4:   Print 1, Format(CDbl(0), "0.00")
  loc_1A2F7D0:   Print 1
  loc_1A2F7D8:   Print 1
  loc_1A2F818:   var_174 = (Chr(&HF) + Space(&HA))
  loc_1A2F821:   var_184 = (var_174 + "Cashier")
  loc_1A2F828:   var_1C4 = (Chr(&H12) + Space(&H60))
  loc_1A2F831:   var_1D4 = (CVar(Proc_6_52_EAE084(CStr(Format(CDbl(0), "0.00")), &HC, 1)) + "Guest Signature")
  loc_1A2F838:   var_214 = (IIf((Len(Proc_6_43_1003B24(Abs(CDbl(0)), vbNullString, " & Paise", var_86)) <= &H35), " ", CVar(Proc_6_52_EAE084(CStr(Format(CDbl(0), "0.00")), &HC, 1))) + Chr(&H12))
  loc_1A2F83E:   Print 1, Format(CDbl(0), "0.00")
  loc_1A2F880:   Print 1, Proc_6_98_11AC34C("**THANKS FOR YOUR VISIT**", "A")
  loc_1A2F8A3:   Print 1, Chr(&HC)
  loc_1A2F8AF:   var_E4.MoveNext
  loc_1A2F8B4:   GoTo loc_1A2C4E1
  loc_1A2F8B7: End If
  loc_1A2F8B9: Close 1
  loc_1A2F8C2: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1A2F8FE: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_1A2F914: Close 1
  loc_1A2F91E: If (MemVar_1F953BC = "Y") Then
  loc_1A2F93A:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1A2F944: Else
  loc_1A2F95D:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1A2F964: End If
  loc_1A2F964: Exit Sub
  loc_1A2F965: ' Referenced from: 1A2C488
  loc_1A2F96B: If (var_E8 = &HFF) Then
  loc_1A2F974:   unk_514A6F.RollbackTrans
  loc_1A2F979: End If
  loc_1A2F979: Proc_6_60_E63754(&H4E)
  loc_1A2F97E: Exit Sub
End Sub

Public Sub Proc_174_53_FB4140
  'Data Table: 514A68
  Dim unk_514A6F As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  Dim var_F4 As Variant
  loc_FB3FE1: unk_514A6F.BeginTrans var_90
  loc_FB3FFC: unk_514A6F.Execute "SELECT * FROM ROOMOCC WHERE TYPE='O' ORDER BY CHKOUTDATE,CHKOUTTIME", var_B0, -1
  loc_FB4007: Set var_88 = var_B4
  loc_FB4026: unk_514A6F.Execute "SELECT * FROM PAYCHARGE WHERE FOLIONO<>0 AND VTYPE Not In ('ARRES','ADRES')", var_B0, -1
  loc_FB4031: Set var_8C = var_B4
  loc_FB403A: ' Referenced from: FB412E
  loc_FB404B: If (var_88.EOF = 0) Then
  loc_FB408B:   var_B4 = var_88.Fields
  loc_FB40A2:   Proc_6_7_F26918(var_D4, CVar(var_B4.Item("ChkOutDate")), CVar("UPDATE PAYCHARGE SET BILL_NO='" & CStr(var_88.AbsolutePosition) & "',SETTLEDATE="), var_190)
  loc_FB40AA:   var_F4 = -1 & var_D4 
  loc_FB40F8:   unk_514A6F.Execute CStr(var_F4 & " WHERE FOLIONO=" & var_88.Fields.Item("FolioNo").Value & " AND VTYPE Not In ('ARRES','ADRES')"), var_194, var_B4
  loc_FB4129:   var_88.MoveNext
  loc_FB412E:   GoTo loc_FB403A
  loc_FB4131: End If
  loc_FB4137: unk_514A6F.CommitTrans
  loc_FB413C: Exit Sub
End Sub

Public Sub Proc_174_54_E77EBC(arg_C) 'E77EBC
  'Data Table: 514A68
  Dim var_98 As TextBox
  loc_E77E6A: Set var_8C = Me.TXT
  loc_E77E70: Call 0.Method_Proc_174_54_E77EBCC (var_8E, var_86)
  loc_E77E80: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E77E96:   Set var_8C = Me.TXT
  loc_E77E9C:   Call 0.Method_Proc_174_54_E77EBC0 (CInt(var_86), var_98)
  loc_E77EA4:   var_98.Enabled = arg_C
  loc_E77EB3: Next var_92 'Byte
  loc_E77EB9: Exit Sub
  loc_E77EBA: Set var_1000 = 
End Sub

Public Sub Proc_174_55_EABDF0
  'Data Table: 514A68
  Dim var_98 As TextBox
  loc_EABD6E: Set var_8C = Me.TXT
  loc_EABD74: Call 0.Method_Proc_174_55_EABDF0C (var_8E, var_86)
  loc_EABD84: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EABD9A:   Set var_8C = Me.TXT
  loc_EABDA0:   Call 0.Method_Proc_174_55_EABDF00 (CInt(var_86), var_98)
  loc_EABDA8:   var_98.Text = vbNullString
  loc_EABDC4:   Set var_8C = Me.TXT
  loc_EABDCA:   Call 0.Method_Proc_174_55_EABDF00 (CInt(var_86), var_98)
  loc_EABDD2:   var_98.Tag = vbNullString
  loc_EABDE1: Next var_92 'Byte
  loc_EABDE7: Call Proc_174_59_13C08D4()
  loc_EABDEC: Exit Sub
End Sub

Public Sub Proc_174_56_EBCD2C
  'Data Table: 514A68
  loc_EBCCA4: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EBCCB6:   Me.DGRoomNo.Visible = False
  loc_EBCCBE: End If
  loc_EBCCDA: If (CBool(().Visible) = &HFF) Then
  loc_EBCCEC:   (False).Visible = 
  loc_EBCCF4: End If
  loc_EBCD10: If (CBool(().Visible) = &HFF) Then
  loc_EBCD22:   (False).Visible = 
  loc_EBCD2A: End If
  loc_EBCD2A: Exit Sub
End Sub

Public Sub Proc_174_57_145D964(arg_C, arg_10) '145D964
  'Data Table: 514A68
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_A4 As Variant
  Dim var_EC As String
  Dim unk_514A6F As Connection15
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_118 As Variant
  Dim var_140 As Variant
  Dim var_E4 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_120 As MSHFlexGrid
  Dim var_160 As Variant
  Dim var_1D0 As Variant
  Dim var_210 As Variant
  Dim var_1A0 As Variant
  loc_145CDE4: On Error Goto loc_145D8FD
  loc_145CDF2: Set var_A0 = Me.TXT
  loc_145CDF8: Call 0.Method_Proc_174_57_145D9640 (CInt(&HA))
  loc_145CE21: If (Trim(CVar(var_A4)) = vbNullString) Then
  loc_145CE24:   Exit Sub
  loc_145CE25: End If
  loc_145CE43: Set var_A0 = Me.TXT
  loc_145CE49: Call 0.Method_Proc_174_57_145D9640 (CInt(&HA), var_A4, var_E8, "Select * from paycharge where (ContraDocId is NULL or contradocid='') and (folionoDocid='")
  loc_145CE51: var_B4 = var_A4.Tag
  loc_145CE5A: var_EC = -1 & var_E8
  loc_145CE8A: unk_514A6F.Execute var_EC & "' or folionoDocid='" & Me.txtleaderfolio.Text & "') order by vDate,VNO,SNO", var_104, var_A4
  loc_145CE95: Set var_8C = var_104
  loc_145CEBE: var_108 = Me.Recordset15.RecordCount
  loc_145CECC: If (var_108 = 0) Then
  loc_145CEE2:   Me.FGrid.Rows = 2
  loc_145CEEA:   Exit Sub
  loc_145CEEB: End If
  loc_145CF04: var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_145CF0D: Set var_A4 = Me.FGrid
  loc_145CF13: var_A4.Row = 2
  loc_145CF22: ' Referenced from: 145D74A
  loc_145CF34: If Not(Me.var_A4.EOF) Then
  loc_145CF3B:   Set var_120 = Me.FGrid
  loc_145CF48:   var_C4 = Me.FGrid.Row
  loc_145CF51:   var_118 = CVar(CLng(var_C4)) 'Long
  loc_145CF89:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("MarkEntry")), CVar(CLng(0)))) 'String
  loc_145CF90:   LateIdCallSt
  loc_145CFB2:   var_C4 = Me.FGrid.Row
  loc_145CFF3:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("VDate")), CVar(CLng(1)), CVar(CLng(var_C4)))) 'String
  loc_145CFFA:   LateIdCallSt
  loc_145D01C:   var_170 = Me.FGrid.Row
  loc_145D06C:   var_180 = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(Me.var_170.Fields.Item("Comments")), CVar(CLng(2)), CVar(CLng(var_170)), var_120))))) 'String
  loc_145D073:   LateIdCallSt
  loc_145D0B8:   var_170 = Me.FGrid.Row
  loc_145D0C1:   var_130 = CVar(CLng(var_170)) 'Long
  loc_145D0C9:   var_150 = CVar(CLng(3)) 'Long
  loc_145D0F6:   var_180 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_145D0FD:   LateIdCallSt
  loc_145D142:   var_170 = Me.FGrid.Row
  loc_145D167:   var_C4 = "0.00"
  loc_145D187:   LateIdCallSt
  loc_145D1D3:   Proc_6_39_E7D3A0(var_C4, CVar(Me.var_170.Fields.Item("AmtDr")), CVar(var_94), var_120, CVar(CStr(Format(CVar(Me.var_170.Fields.Item("AmtCr")), var_C4))), 1, 1)
  loc_145D1DB:   var_E4 = (CVar(CLng(4)) + var_C4)
  loc_145D1E0:   var_94 = CSng(Format(CVar(Me.var_170.Fields.Item("AmtCr")), var_C4))
  loc_145D21F:   Proc_6_39_E7D3A0(var_C4, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_170)))
  loc_145D227:   var_E4 = (var_120 + var_C4)
  loc_145D22C:   var_9C = CSng(Format(CVar(Me.var_170.Fields.Item("AmtCr")), var_C4))
  loc_145D24E:   var_130 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145D256:   var_150 = CVar(CLng(5)) 'Long
  loc_145D278:   var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_145D288:   var_180 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_145D28F:   LateIdCallSt
  loc_145D2B3:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_145D2C9:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145D2D1:     var_130 = CVar(CLng(6)) 'Long
  loc_145D2D6:     var_150 = "Dr"
  loc_145D2DF:     LateIdCallSt
  loc_145D2F0:   Else
  loc_145D2FC:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_145D312:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145D31A:       var_130 = CVar(CLng(6)) 'Long
  loc_145D31F:       var_150 = "Cr"
  loc_145D328:       LateIdCallSt
  loc_145D339:     Else
  loc_145D34C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145D354:       var_130 = CVar(CLng(6)) 'Long
  loc_145D359:       var_150 = vbNullString
  loc_145D362:       LateIdCallSt
  loc_145D370:     End If
  loc_145D370:   End If
  loc_145D37A:   var_C4 = Me.FGrid.Row
  loc_145D393:   var_D4 = "DocID"
  loc_145D3BB:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item(var_D4)), CVar(CLng(7)), CVar(CLng(var_C4)), var_120, var_150, var_130, var_D4)) 'String
  loc_145D3C2:   LateIdCallSt
  loc_145D3E4:   var_C4 = Me.FGrid.Row
  loc_145D425:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("SNo")), CVar(CLng(8)), CVar(CLng(var_C4)), var_120, var_E4, var_120)) 'String
  loc_145D42C:   LateIdCallSt
  loc_145D44E:   var_C4 = Me.FGrid.Row
  loc_145D48F:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(var_C4)), var_120, var_E4)) 'String
  loc_145D496:   LateIdCallSt
  loc_145D4C1:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145D4C9:   var_130 = CVar(CLng(7)) 'Long
  loc_145D4D1:   var_C4 = var_120.TextMatrix)
  loc_145D55B:   var_210 = (Trim(Mid(CVar(CStr(var_C4)), 4, 5)) <> "RC") And (Me.var_C4.Fields.Item("PlanCharge").Value <> "Yes") And (SplitBill = &HFF)
  loc_145D57D:   If CBool(var_210) Then
  loc_145D593:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145D59B:     var_130 = CVar(CLng(&HA)) 'Long
  loc_145D5A0:     var_150 = "2"
  loc_145D5A9:     LateIdCallSt
  loc_145D5BA:   Else
  loc_145D5CD:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_145D5D5:     var_130 = CVar(CLng(&HA)) 'Long
  loc_145D5DA:     var_150 = "1"
  loc_145D5E3:     LateIdCallSt
  loc_145D5F1:   End If
  loc_145D5FB:   var_C4 = Me.FGrid.Row
  loc_145D614:   var_D4 = "PayCode"
  loc_145D63C:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item(var_D4)), CVar(CLng(&HB)), CVar(CLng(var_C4)), var_120, var_150, var_130, var_D4)) 'String
  loc_145D643:   LateIdCallSt
  loc_145D688:   var_C4 = CVar(Proc_6_38_E69628(arg_C, CVar(CLng(&HC)), CVar(CLng(Me.FGrid.Row)), var_120, var_E4, var_120)) 'String
  loc_145D68F:   LateIdCallSt
  loc_145D6CE:   var_C4 = CVar(Proc_6_38_E69628(arg_10, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), var_120, var_C4)) 'String
  loc_145D6D5:   LateIdCallSt
  loc_145D6E9:   Set var_120 = Nothing 
  loc_145D6ED:   var_D4 = vbNullString
  loc_145D6F7:   Set var_A0 = Me.FGrid
  loc_145D721:   var_D4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_145D72A:   Set var_A4 = Me.FGrid
  loc_145D730:   var_A4.Row = var_D4
  loc_145D745:   Me.var_A4.MoveNext
  loc_145D74A:   GoTo loc_145CF22
  loc_145D74D: End If
  loc_145D74D: var_D4 = 1
  loc_145D760: Me.FGrid.FixedRows = var_D4
  loc_145D76C: Set var_214 = var_D4(FGrid.DispID_10000)
  loc_145D76F: var_130 = 0
  loc_145D77B: var_150 = CVar(CLng(1)) 'Long
  loc_145D7A9: var_E4 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_145D7B0: LateIdCallSt
  loc_145D7C1: var_130 = 0
  loc_145D7CD: var_150 = CVar(CLng(2)) 'Long
  loc_145D7FB: var_E4 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_145D802: LateIdCallSt
  loc_145D813: var_130 = 0
  loc_145D81F: var_150 = CVar(CLng(3)) 'Long
  loc_145D841: var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_145D851: var_170 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_145D858: LateIdCallSt
  loc_145D86B: var_160 = 0
  loc_145D877: var_1D0 = CVar(CLng(4)) 'Long
  loc_145D881: var_C4 = vbNullString
  loc_145D89E: var_D4 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_145D8A5: var_E4 = IIf(var_9C, "Cr", var_C4)
  loc_145D8B2: var_170 = "Dr"
  loc_145D8C4: var_140 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_145D8D4: var_1A0 = CVar(CStr(IIf(CVar(CLng(&HD)), var_170, var_E4))) 'String
  loc_145D8DB: LateIdCallSt
  loc_145D8F8: Set var_214 = Nothing 
  loc_145D8FC: Exit Sub
  loc_145D8FD: ' Referenced from: 145CDE4
  loc_145D916: MsgBox("FILL DETAILS", 0, var_C4, var_E4, var_170)
  loc_145D93C: Set var_A0 = Err()
  loc_145D942: Call 0.Method_arg_1C (var_108, 0, var_C4, var_E4, var_170, var_214, var_1A0, var_1D0)
  loc_145D94E: MsgBox(CVar(var_108), var_160, var_214, var_170, 1)
  loc_145D961: Exit Sub
End Sub

Public Sub Proc_174_58_12697EC
  'Data Table: 514A68
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_C4 As Variant
  Dim var_128 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_13C As Variant
  loc_1269270: On Error Goto loc_1269784
  loc_1269277: var_A2 = CByte(0) 'Byte
  loc_126927F: var_A4 = CByte(0) 'Byte
  loc_1269288: var_B4 = CVar(CLng(var_A4)) 'Long
  loc_126928D: var_D4 = &H1F4
  loc_126929A: Set var_E8 = Me.FGrid2
  loc_12692A0: LateIdCallSt
  loc_12692B4: var_EC = Me.RecordCount
  loc_12692C2: If (var_EC > 0) Then
  loc_12692CB:   Me.MoveFirst
  loc_12692FE:   var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_126930B: End If
  loc_126930B: var_B4 = 0
  loc_1269314: var_D4 = 0
  loc_1269328: Set var_E8 = Me.FGrid2
  loc_126932E: LateIdCallSt
  loc_1269344: var_A2 = CByte((CInt(var_A2) + 1)) 'Byte
  loc_1269348: ' Referenced from: 1269780
  loc_126935A: If Not(Me.EOF) Then
  loc_126939D:   If (CVar(var_A0) = Me.Fields.Item("RoomCat").Value) Then
  loc_12693A0:     ' Referenced from: 1269694
  loc_12693A4:     Set var_128 = Me.FGrid2
  loc_12693C2:     If ((CLng(var_128.Cols) - 1) < CLng(var_A2)) Then
  loc_12693D7:       var_B4 = CVar((CLng(var_128.Cols) + 1)) 'Long
  loc_12693DF:       var_128.Cols = "RoomCat"
  loc_12693E7:     End If
  loc_12693EC:     var_C4 = CVar(CLng(var_A4)) 'Long
  loc_12693F6:     var_E4 = CVar(CLng(var_A2)) 'Long
  loc_1269429:     var_124 = CVar(CStr(Me.Fields.Item("RoomNo").Value)) 'String
  loc_1269430:     LateIdCallSt
  loc_12694B4:     If (Me.Fields.Item("FolioNo").Value = Me.Fields.Item("mFolioNo").Value) Then
  loc_12694CB:       Me.FGrid2.Row = CVar(CLng(var_A4))
  loc_12694E7:       Me.FGrid2.Col = CVar(CLng(var_A2))
  loc_126952A:       Me.txtleaderfolio.Text = CStr(Me.Fields.Item("DocID").Value)
  loc_1269551:       Me.FGrid2.CellBackColor = &HFDE1FF
  loc_1269595:       Me.FGrid2.Tag = CVar(CStr(Me.Fields.Item("RoomNo").Value))
  loc_12695AA:     End If
  loc_12695AF:     var_B4 = CVar(CLng(var_A2)) 'Long
  loc_12695B4:     var_D4 = &H1F4
  loc_12695C1:     Set var_E8 = Me.FGrid2
  loc_12695C7:     LateIdCallSt
  loc_12695DD:     var_A2 = CByte((CInt(var_A2) + 1)) 'Byte
  loc_12695E3:     Set var_128 = Nothing 
  loc_12695EA:   Else
  loc_12695EF:     var_C4 = CVar(CLng(var_A4)) 'Long
  loc_12695F4:     var_E4 = 0
  loc_126962B:     var_124 = CVar(CStr(Me.Fields.Item("RoomCat").Value)) 'String
  loc_1269633:     Set var_13C = Me.FGrid2
  loc_1269639:     LateIdCallSt
  loc_126967F:     var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_1269690:     var_A2 = CByte(1) 'Byte
  loc_1269694:     GoTo loc_12693A0
  loc_1269697:   End If
  loc_126969D:   Me.MoveNext
  loc_12696B6:   If (Me.EOF = 0) Then
  loc_12696BC:     var_C4 = CVar(var_A0) 'String
  loc_12696F9:     If CBool(var_C4 <> Me.Fields.Item("RoomCat").Value) Then
  loc_1269715:       var_B4 = CVar((CLng(Me.FGrid2.Rows) + 1)) 'Long
  loc_1269724:       Me.FGrid2.Rows = "RoomCat"
  loc_126974E:       var_A4 = CByte((CLng(Me.FGrid2.Rows) - 1)) 'Byte
  loc_126975D:       var_B4 = CVar(CLng(var_A4)) 'Long
  loc_1269762:       var_D4 = &H1F4
  loc_126976F:       Set var_E8 = Me.FGrid2
  loc_1269775:       LateIdCallSt
  loc_1269780:     End If
  loc_1269780:   End If
  loc_1269780:   GoTo loc_1269348
  loc_1269783: End If
  loc_1269783: Exit Sub
  loc_1269784: ' Referenced from: 1269270
  loc_1269792: var_B4 = "FILL DETAILS"
  loc_126979D: MsgBox(var_B4, 0, var_124, var_150, var_164)
  loc_12697C9: Call 0.Method_arg_1C (var_EC, 0, var_124, var_150, var_164, Err(), var_D4, var_B4)
  loc_12697D5: MsgBox(CVar(var_EC), var_13C, var_124, var_E4, var_C4)
  loc_12697E8: Exit Sub
End Sub

Public Sub Proc_174_59_13C08D4
  'Data Table: 514A68
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_13BFF44: Set var_90 = Me.FGrid
  loc_13BFF5A: Me.FGrid.Rows = 1
  loc_13BFF76: global_60 = CStr(CLng(var_90.BackColor))
  loc_13BFF8C: var_90.Cols = &HE
  loc_13BFF91: var_A0 = 0
  loc_13BFF9D: var_D8 = CVar(CLng(0)) 'Long
  loc_13BFFA2: var_F8 = "SNo"
  loc_13BFFAB: LateIdCallSt
  loc_13BFFB6: var_A0 = CVar(CLng(0)) 'Long
  loc_13BFFBB: var_D8 = 0
  loc_13BFFC7: LateIdCallSt
  loc_13BFFCF: var_A0 = 0
  loc_13BFFDB: var_D8 = CVar(CLng(1)) 'Long
  loc_13BFFE0: var_F8 = "Date"
  loc_13BFFE9: LateIdCallSt
  loc_13BFFF4: var_A0 = CVar(CLng(1)) 'Long
  loc_13BFFFF: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C0006: LateIdCallSt
  loc_13C0011: var_A0 = CVar(CLng(1)) 'Long
  loc_13C001C: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C0023: LateIdCallSt
  loc_13C002E: var_A0 = CVar(CLng(1)) 'Long
  loc_13C0033: var_D8 = &H4E2
  loc_13C003F: LateIdCallSt
  loc_13C0047: var_A0 = 0
  loc_13C0053: var_D8 = CVar(CLng(2)) 'Long
  loc_13C0058: var_F8 = "Particulars"
  loc_13C0061: LateIdCallSt
  loc_13C006C: var_A0 = CVar(CLng(2)) 'Long
  loc_13C0077: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C007E: LateIdCallSt
  loc_13C0089: var_A0 = CVar(CLng(2)) 'Long
  loc_13C0094: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C009B: LateIdCallSt
  loc_13C00A6: var_A0 = CVar(CLng(2)) 'Long
  loc_13C00AB: var_D8 = &HBB8
  loc_13C00B7: LateIdCallSt
  loc_13C00BF: var_A0 = 0
  loc_13C00CB: var_D8 = CVar(CLng(3)) 'Long
  loc_13C00D0: var_F8 = "Debit"
  loc_13C00D9: LateIdCallSt
  loc_13C00E4: var_A0 = CVar(CLng(3)) 'Long
  loc_13C00EF: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C00F6: LateIdCallSt
  loc_13C0101: var_A0 = CVar(CLng(3)) 'Long
  loc_13C010C: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C0113: LateIdCallSt
  loc_13C011E: var_A0 = CVar(CLng(3)) 'Long
  loc_13C0123: var_D8 = &H3E8
  loc_13C012F: LateIdCallSt
  loc_13C0137: var_A0 = 0
  loc_13C0143: var_D8 = CVar(CLng(4)) 'Long
  loc_13C0148: var_F8 = "Credit"
  loc_13C0151: LateIdCallSt
  loc_13C015C: var_A0 = CVar(CLng(4)) 'Long
  loc_13C0167: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C016E: LateIdCallSt
  loc_13C0179: var_A0 = CVar(CLng(4)) 'Long
  loc_13C0184: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C018B: LateIdCallSt
  loc_13C0196: var_A0 = CVar(CLng(4)) 'Long
  loc_13C019B: var_D8 = &H3E8
  loc_13C01A7: LateIdCallSt
  loc_13C01AF: var_A0 = 0
  loc_13C01BB: var_D8 = CVar(CLng(5)) 'Long
  loc_13C01C0: var_F8 = "Balance"
  loc_13C01C9: LateIdCallSt
  loc_13C01D4: var_A0 = CVar(CLng(5)) 'Long
  loc_13C01DF: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C01E6: LateIdCallSt
  loc_13C01F1: var_A0 = CVar(CLng(5)) 'Long
  loc_13C01FC: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C0203: LateIdCallSt
  loc_13C020E: var_A0 = CVar(CLng(5)) 'Long
  loc_13C0213: var_D8 = &H3E8
  loc_13C021F: LateIdCallSt
  loc_13C0227: var_A0 = 0
  loc_13C0233: var_D8 = CVar(CLng(6)) 'Long
  loc_13C0238: var_F8 = vbNullString
  loc_13C0241: LateIdCallSt
  loc_13C024C: var_A0 = CVar(CLng(6)) 'Long
  loc_13C0257: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C025E: LateIdCallSt
  loc_13C0269: var_A0 = CVar(CLng(6)) 'Long
  loc_13C0274: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C027B: LateIdCallSt
  loc_13C0286: var_A0 = CVar(CLng(6)) 'Long
  loc_13C028B: var_D8 = &H12C
  loc_13C0297: LateIdCallSt
  loc_13C029F: var_A0 = 0
  loc_13C02AB: var_D8 = CVar(CLng(7)) 'Long
  loc_13C02B0: var_F8 = vbNullString
  loc_13C02B9: LateIdCallSt
  loc_13C02C4: var_A0 = CVar(CLng(7)) 'Long
  loc_13C02CF: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C02D6: LateIdCallSt
  loc_13C02E1: var_A0 = CVar(CLng(7)) 'Long
  loc_13C02EC: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C02F3: LateIdCallSt
  loc_13C02FE: var_A0 = CVar(CLng(7)) 'Long
  loc_13C0303: var_D8 = 0
  loc_13C030F: LateIdCallSt
  loc_13C0317: var_A0 = 0
  loc_13C0323: var_D8 = CVar(CLng(8)) 'Long
  loc_13C0328: var_F8 = vbNullString
  loc_13C0331: LateIdCallSt
  loc_13C033C: var_A0 = CVar(CLng(8)) 'Long
  loc_13C0347: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C034E: LateIdCallSt
  loc_13C0359: var_A0 = CVar(CLng(8)) 'Long
  loc_13C0364: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C036B: LateIdCallSt
  loc_13C0376: var_A0 = CVar(CLng(8)) 'Long
  loc_13C037B: var_D8 = 0
  loc_13C0387: LateIdCallSt
  loc_13C038F: var_A0 = 0
  loc_13C039B: var_D8 = CVar(CLng(9)) 'Long
  loc_13C03A0: var_F8 = "User"
  loc_13C03A9: LateIdCallSt
  loc_13C03B4: var_A0 = CVar(CLng(9)) 'Long
  loc_13C03BF: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C03C6: LateIdCallSt
  loc_13C03D1: var_A0 = CVar(CLng(9)) 'Long
  loc_13C03DC: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C03E3: LateIdCallSt
  loc_13C03EE: var_A0 = CVar(CLng(9)) 'Long
  loc_13C03F3: var_D8 = &H1F4
  loc_13C03FF: LateIdCallSt
  loc_13C0407: var_A0 = 0
  loc_13C0413: var_D8 = CVar(CLng(&HA)) 'Long
  loc_13C0418: var_F8 = "Split"
  loc_13C0421: LateIdCallSt
  loc_13C042C: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13C0437: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C043E: LateIdCallSt
  loc_13C0449: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13C0454: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C045B: LateIdCallSt
  loc_13C0466: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13C046B: var_D8 = &H1F4
  loc_13C0477: LateIdCallSt
  loc_13C047F: var_A0 = 0
  loc_13C048B: var_D8 = CVar(CLng(&HB)) 'Long
  loc_13C0490: var_F8 = "REVCODE"
  loc_13C0499: LateIdCallSt
  loc_13C04A4: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13C04AF: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C04B6: LateIdCallSt
  loc_13C04C1: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13C04CC: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C04D3: LateIdCallSt
  loc_13C04DE: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13C04E3: var_D8 = 0
  loc_13C04EF: LateIdCallSt
  loc_13C04F7: var_A0 = 0
  loc_13C0503: var_D8 = CVar(CLng(&HC)) 'Long
  loc_13C0508: var_F8 = "FolioNo Docid"
  loc_13C0511: LateIdCallSt
  loc_13C051C: var_A0 = CVar(CLng(&HC)) 'Long
  loc_13C0527: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C052E: LateIdCallSt
  loc_13C0539: var_A0 = CVar(CLng(&HC)) 'Long
  loc_13C0544: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C054B: LateIdCallSt
  loc_13C0556: var_A0 = CVar(CLng(&HC)) 'Long
  loc_13C055B: var_D8 = 0
  loc_13C0567: LateIdCallSt
  loc_13C056F: var_A0 = 0
  loc_13C057B: var_D8 = CVar(CLng(&HD)) 'Long
  loc_13C0580: var_F8 = "Room No"
  loc_13C0589: LateIdCallSt
  loc_13C0594: var_A0 = CVar(CLng(&HD)) 'Long
  loc_13C059F: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C05A6: LateIdCallSt
  loc_13C05B1: var_A0 = CVar(CLng(&HD)) 'Long
  loc_13C05BC: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C05C3: LateIdCallSt
  loc_13C05CE: var_A0 = CVar(CLng(&HD)) 'Long
  loc_13C05DF: LateIdCallSt
  loc_13C05E7: var_A0 = vbNullString
  loc_13C05F1: Set var_B4 = Me.FGrid
  loc_13C0602: var_A0 = 1
  loc_13C0615: Me.FGrid.FixedRows = var_A0
  loc_13C0627: Set var_10C = var_A0(FGrid.DispID_10000)
  loc_13C063D: Nothing(1).Rows = 0
  loc_13C0659: global_60 = CStr(CLng(var_10C.BackColor))
  loc_13C066F: var_10C.Cols = 5
  loc_13C0674: var_A0 = 0
  loc_13C0680: var_D8 = CVar(CLng(0)) 'Long
  loc_13C0685: var_F8 = "Total :"
  loc_13C068E: LateIdCallSt
  loc_13C0699: var_A0 = CVar(CLng(0)) 'Long
  loc_13C06A4: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C06AB: LateIdCallSt
  loc_13C06B6: var_A0 = CVar(CLng(0)) 'Long
  loc_13C06C1: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C06C8: LateIdCallSt
  loc_13C06D3: var_A0 = CVar(CLng(0)) 'Long
  loc_13C06D8: var_D8 = &H109A
  loc_13C06E4: LateIdCallSt
  loc_13C06EC: var_A0 = 0
  loc_13C06F8: var_D8 = CVar(CLng(1)) 'Long
  loc_13C06FD: var_F8 = vbNullString
  loc_13C0706: LateIdCallSt
  loc_13C0711: var_A0 = CVar(CLng(1)) 'Long
  loc_13C071C: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C0723: LateIdCallSt
  loc_13C072E: var_A0 = CVar(CLng(1)) 'Long
  loc_13C0739: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C0740: LateIdCallSt
  loc_13C074B: var_A0 = CVar(CLng(1)) 'Long
  loc_13C0750: var_D8 = &H3E8
  loc_13C075C: LateIdCallSt
  loc_13C0764: var_A0 = 0
  loc_13C0770: var_D8 = CVar(CLng(2)) 'Long
  loc_13C0775: var_F8 = vbNullString
  loc_13C077E: LateIdCallSt
  loc_13C0789: var_A0 = CVar(CLng(2)) 'Long
  loc_13C0794: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C079B: LateIdCallSt
  loc_13C07A6: var_A0 = CVar(CLng(2)) 'Long
  loc_13C07B1: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C07B8: LateIdCallSt
  loc_13C07C3: var_A0 = CVar(CLng(2)) 'Long
  loc_13C07C8: var_D8 = &H3E8
  loc_13C07D4: LateIdCallSt
  loc_13C07DC: var_A0 = 0
  loc_13C07E8: var_D8 = CVar(CLng(3)) 'Long
  loc_13C07ED: var_F8 = vbNullString
  loc_13C07F6: LateIdCallSt
  loc_13C0801: var_A0 = CVar(CLng(3)) 'Long
  loc_13C080C: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C0813: LateIdCallSt
  loc_13C081E: var_A0 = CVar(CLng(3)) 'Long
  loc_13C0829: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C0830: LateIdCallSt
  loc_13C083B: var_A0 = CVar(CLng(3)) 'Long
  loc_13C0840: var_D8 = &H3E8
  loc_13C084C: LateIdCallSt
  loc_13C0854: var_A0 = 0
  loc_13C0860: var_D8 = CVar(CLng(4)) 'Long
  loc_13C0865: var_F8 = vbNullString
  loc_13C086E: LateIdCallSt
  loc_13C0879: var_A0 = CVar(CLng(4)) 'Long
  loc_13C0884: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C088B: LateIdCallSt
  loc_13C0896: var_A0 = CVar(CLng(4)) 'Long
  loc_13C08A1: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C08A8: LateIdCallSt
  loc_13C08B3: var_A0 = CVar(CLng(4)) 'Long
  loc_13C08B8: var_D8 = &H12C
  loc_13C08C4: LateIdCallSt
  loc_13C08CE: Set var_10C = Nothing 
  loc_13C08D2: Exit Sub
End Sub

Public Sub Proc_174_60_E45B1C
  'Data Table: 514A68
  loc_E45AF8: Set var_88 = Me.TopCtrl1
  loc_E45AFE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E45B17: If (CStr() = "Browse") Then
  loc_E45B1A:   Exit Sub
  loc_E45B1B: End If
  loc_E45B1B: Exit Sub
End Sub

Public Sub Proc_174_61_ECB6CC
  'Data Table: 514A68
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A4 As TextBox
  Dim var_FC As Variant
  loc_ECB653: If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_ECB669:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_ECB671:   var_DC = CVar(CLng(&HA)) 'Long
  loc_ECB682:   Set var_8C = Me.TxtGrid
  loc_ECB688:   Call 0.Method_Proc_174_61_ECB6CC0 (0, var_A4, var_A8)
  loc_ECB690:   var_DC = var_A4.Text
  loc_ECB698:   var_FC = CVar(var_A8) 'String
  loc_ECB6A0:   Set var_110 = Me.FGrid
  loc_ECB6A6:   LateIdCallSt
  loc_ECB6C0: End If
  loc_ECB6C5: Proc_174_61_ECB6CC = &HFF
End Sub

Public Sub Proc_174_62_E7F390
  'Data Table: 514A68
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_E7F34D: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E7F357:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E7F35F:   var_D0 = CVar(CLng(0)) 'Long
  loc_E7F364:   var_F0 = vbNullString
  loc_E7F36E:   Set var_8C = Me.FGrid
  loc_E7F374:   LateIdCallSt
  loc_E7F382: Next var_A0 'Integer
  loc_E7F38C: global_132 = 0
  loc_E7F38F: Exit Sub
End Sub

Public Sub Proc_174_63_102DADC
  'Data Table: 514A68
  Dim var_8C As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E8 As String
  Dim var_110 As TextBox
  Dim var_10C As TextBox
  Dim var_118 As String
  loc_102D8B6: Call Proc_174_59_13C08D4()
  loc_102D8E0: For var_A0 = 0 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_A0 'Integer
  loc_102D90B:   For var_A4 = 1 To CInt((CLng(Me.FGrid2.Cols) - 1)): var_88 = var_A4 'Integer
  loc_102D915:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_102D91E:     var_D4 = CVar(CLng(var_88)) 'Long
  loc_102D949:     If (CStr(Me.FGrid2.TextMatrix)) <> vbNullString) Then
  loc_102D95F:       Me.FGrid2.Row = CVar(CLng(var_86))
  loc_102D97A:       Me.FGrid2.Col = CVar(CLng(var_88))
  loc_102D98F:       var_D4 = CVar(CLng(var_88)) 'Long
  loc_102D9B7:       var_E8 = CStr(Trim(CVar(CStr(Me.FGrid2.TextMatrix)))))
  loc_102D9C6:       Set var_10C = Me.TXT
  loc_102D9CC:       Call 0.Method_Proc_174_63_102DADC0 (CInt(0), var_110, var_E8, var_D4, CVar(CLng(var_86)))
  loc_102D9D4:       var_110.Text = var_D4
  loc_102D9FA:       Call Txt_Validate(CInt(0))
  loc_102DA0A:       If (vbNullString = vbNullString) Then
  loc_102DA1B:         Set var_8C = Me.TXT
  loc_102DA21:         Call 0.Method_Proc_174_63_102DADC0 (CInt(&HA), var_10C, var_E8, 0)
  loc_102DA29:         var_B4 = var_10C.Tag
  loc_102DA3B:         global_68 = var_E8 & "'"
  loc_102DA50:       Else
  loc_102DA5A:         var_118 = global_68 & ",'"
  loc_102DA6B:         Set var_8C = Me.TXT
  loc_102DA71:         Call 0.Method_Proc_174_63_102DADC0 (CInt(&HA), var_10C, var_E8)
  loc_102DA79:         var_118 = var_10C.Tag
  loc_102DA8F:         global_68 = 1 & var_E8 & "'"
  loc_102DAA5:       End If
  loc_102DAB8:       Me.FGrid2.CellBackColor = &HFF
  loc_102DAC0:     End If
  loc_102DAC3:   Next var_A4 'Integer
  loc_102DACB: Next var_A0 'Integer
  loc_102DAD6: Call Proc_174_64_14561EC(global_68)
  loc_102DADB: Exit Sub
End Sub

Public Sub Proc_174_64_14561EC(arg_C) '14561EC
  'Data Table: 514A68
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E4 As String
  Dim unk_514A6F As Connection15
  Dim var_E8 As Variant
  Dim var_BC As Variant
  Dim var_F0 As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_F8 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_1BC As Variant
  Dim var_1FC As Variant
  Dim var_18C As Variant
  loc_1455690: On Error Goto loc_1456184
  loc_145569E: var_BC = Trim(arg_C)
  loc_14556B1: If (var_BC = vbNullString) Then
  loc_14556B4:   Exit Sub
  loc_14556B5: End If
  loc_14556D0: var_E4 = "Select * from paycharge where (ContraDocId is NULL or contradocid='') and folionoDocid in ('" & arg_C & ") order by vDate,VNO,SNO"
  loc_14556D9: unk_514A6F.Execute var_E4, var_BC, -1
  loc_14556E4: Set var_8C = var_E8
  loc_14556FD: var_EC = Me.Recordset15.RecordCount
  loc_145570B: If (var_EC = 0) Then
  loc_1455721:   Me.FGrid.Rows = 2
  loc_1455729:   Exit Sub
  loc_145572A: End If
  loc_1455743: var_AC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_145574C: Set var_F0 = Me.FGrid
  loc_1455752: var_F0.Row = 2
  loc_1455761: ' Referenced from: 1455FD1
  loc_1455773: If Not(Me.var_F0.EOF) Then
  loc_145577A:   Set var_F8 = Me.FGrid
  loc_1455787:   var_DC = Me.FGrid.Row
  loc_1455790:   var_CC = CVar(CLng(var_DC)) 'Long
  loc_14557C8:   var_13C = CVar(Proc_6_38_E69628(CVar(Me.var_DC.Fields.Item("MarkEntry")), CVar(CLng(0)))) 'String
  loc_14557CF:   LateIdCallSt
  loc_14557F1:   var_DC = Me.FGrid.Row
  loc_1455832:   var_13C = CVar(Proc_6_38_E69628(CVar(Me.var_DC.Fields.Item("VDate")), CVar(CLng(1)), CVar(CLng(var_DC)), var_F8)) 'String
  loc_1455839:   LateIdCallSt
  loc_145585B:   var_15C = Me.FGrid.Row
  loc_14558AB:   var_16C = CVar(CStr(Trim(CVar(Proc_6_38_E69628(CVar(Me.var_15C.Fields.Item("Comments")), CVar(CLng(2)), CVar(CLng(var_15C)), var_F8))))) 'String
  loc_14558B2:   LateIdCallSt
  loc_14558F7:   var_15C = Me.FGrid.Row
  loc_1455900:   var_10C = CVar(CLng(var_15C)) 'Long
  loc_1455908:   var_12C = CVar(CLng(3)) 'Long
  loc_1455935:   var_16C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_145593C:   LateIdCallSt
  loc_1455981:   var_15C = Me.FGrid.Row
  loc_14559A6:   var_DC = "0.00"
  loc_14559C6:   LateIdCallSt
  loc_1455A12:   Proc_6_39_E7D3A0(var_DC, CVar(Me.var_15C.Fields.Item("AmtDr")), CVar(var_94), var_F8, CVar(CStr(Format(CVar(Me.var_15C.Fields.Item("AmtCr")), var_DC))), 1, 1)
  loc_1455A1A:   var_13C = (CVar(CLng(4)) + var_DC)
  loc_1455A1F:   var_94 = CSng(Format(CVar(Me.var_15C.Fields.Item("AmtCr")), var_DC))
  loc_1455A5E:   Proc_6_39_E7D3A0(var_DC, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_15C)))
  loc_1455A66:   var_13C = (var_F8 + var_DC)
  loc_1455A6B:   var_9C = CSng(Format(CVar(Me.var_15C.Fields.Item("AmtCr")), var_DC))
  loc_1455A8D:   var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1455A95:   var_12C = CVar(CLng(5)) 'Long
  loc_1455AB7:   var_BC = CVar(Abs((var_94 - var_9C))) 'Double
  loc_1455AC7:   var_16C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_1455ACE:   LateIdCallSt
  loc_1455AF2:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_1455B08:     var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1455B10:     var_10C = CVar(CLng(6)) 'Long
  loc_1455B15:     var_12C = "Dr"
  loc_1455B1E:     LateIdCallSt
  loc_1455B2F:   Else
  loc_1455B3B:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_1455B51:       var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1455B59:       var_10C = CVar(CLng(6)) 'Long
  loc_1455B5E:       var_12C = "Cr"
  loc_1455B67:       LateIdCallSt
  loc_1455B78:     Else
  loc_1455B8B:       var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1455B93:       var_10C = CVar(CLng(6)) 'Long
  loc_1455B98:       var_12C = vbNullString
  loc_1455BA1:       LateIdCallSt
  loc_1455BAF:     End If
  loc_1455BAF:   End If
  loc_1455BB9:   var_DC = Me.FGrid.Row
  loc_1455BD2:   var_AC = "DocID"
  loc_1455BFA:   var_13C = CVar(Proc_6_38_E69628(CVar(Me.var_DC.Fields.Item(var_AC)), CVar(CLng(7)), CVar(CLng(var_DC)), var_F8, var_12C, var_10C, var_AC)) 'String
  loc_1455C01:   LateIdCallSt
  loc_1455C23:   var_DC = Me.FGrid.Row
  loc_1455C64:   var_13C = CVar(Proc_6_38_E69628(CVar(Me.var_DC.Fields.Item("SNo")), CVar(CLng(8)), CVar(CLng(var_DC)), var_F8, var_13C, var_F8)) 'String
  loc_1455C6B:   LateIdCallSt
  loc_1455C8D:   var_DC = Me.FGrid.Row
  loc_1455CCE:   var_13C = CVar(Proc_6_38_E69628(CVar(Me.var_DC.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(var_DC)), var_F8, var_13C)) 'String
  loc_1455CD5:   LateIdCallSt
  loc_1455D00:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1455D08:   var_10C = CVar(CLng(7)) 'Long
  loc_1455D10:   var_DC = var_F8.TextMatrix)
  loc_1455D9A:   var_1FC = (Trim(Mid(CVar(CStr(var_DC)), 4, 5)) <> "RC") And (Me.var_DC.Fields.Item("PlanCharge").Value <> "Yes") And (SplitBill = &HFF)
  loc_1455DBC:   If CBool(var_1FC) Then
  loc_1455DD2:     var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1455DDA:     var_10C = CVar(CLng(&HA)) 'Long
  loc_1455DDF:     var_12C = "2"
  loc_1455DE8:     LateIdCallSt
  loc_1455DF9:   Else
  loc_1455E0C:     var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1455E14:     var_10C = CVar(CLng(&HA)) 'Long
  loc_1455E19:     var_12C = "1"
  loc_1455E22:     LateIdCallSt
  loc_1455E30:   End If
  loc_1455E3A:   var_DC = Me.FGrid.Row
  loc_1455E53:   var_AC = "PayCode"
  loc_1455E7B:   var_13C = CVar(Proc_6_38_E69628(CVar(Me.var_DC.Fields.Item(var_AC)), CVar(CLng(&HB)), CVar(CLng(var_DC)), var_F8, var_12C, var_10C, var_AC)) 'String
  loc_1455E82:   LateIdCallSt
  loc_1455EA4:   var_DC = Me.FGrid.Row
  loc_1455EE5:   var_13C = CVar(Proc_6_38_E69628(CVar(Me.var_DC.Fields.Item("FolioNoDocid")), CVar(CLng(&HC)), CVar(CLng(var_DC)), var_F8, var_13C, var_F8)) 'String
  loc_1455EEC:   LateIdCallSt
  loc_1455F0E:   var_DC = Me.FGrid.Row
  loc_1455F4F:   var_13C = CVar(Proc_6_38_E69628(CVar(Me.var_DC.Fields.Item("RoomNo")), CVar(CLng(&HD)), CVar(CLng(var_DC)), var_F8, var_13C)) 'String
  loc_1455F56:   LateIdCallSt
  loc_1455F70:   Set var_F8 = Nothing 
  loc_1455F74:   var_AC = vbNullString
  loc_1455F7E:   Set var_E8 = Me.FGrid
  loc_1455FA8:   var_AC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1455FB1:   Set var_F0 = Me.FGrid
  loc_1455FB7:   var_F0.Row = var_AC
  loc_1455FCC:   Me.var_F0.MoveNext
  loc_1455FD1:   GoTo loc_1455761
  loc_1455FD4: End If
  loc_1455FD4: var_AC = 1
  loc_1455FE7: Me.FGrid.FixedRows = var_AC
  loc_1455FF3: Set var_200 = var_AC(FGrid.DispID_10000)
  loc_1455FF6: var_10C = 0
  loc_1456002: var_12C = CVar(CLng(1)) 'Long
  loc_1456030: var_13C = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_1456037: LateIdCallSt
  loc_1456048: var_10C = 0
  loc_1456054: var_12C = CVar(CLng(2)) 'Long
  loc_1456082: var_13C = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_1456089: LateIdCallSt
  loc_145609A: var_10C = 0
  loc_14560A6: var_12C = CVar(CLng(3)) 'Long
  loc_14560C8: var_BC = CVar(Abs((var_94 - var_9C))) 'Double
  loc_14560D8: var_15C = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_14560DF: LateIdCallSt
  loc_14560F2: var_14C = 0
  loc_14560FE: var_1BC = CVar(CLng(4)) 'Long
  loc_1456108: var_DC = vbNullString
  loc_1456125: var_AC = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_145612C: var_13C = IIf(var_9C, "Cr", var_DC)
  loc_1456139: var_15C = "Dr"
  loc_145614B: var_11C = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_145615B: var_18C = CVar(CStr(IIf(CVar(CLng(&HD)), var_15C, var_13C))) 'String
  loc_1456162: LateIdCallSt
  loc_145617F: Set var_200 = Nothing 
  loc_1456183: Exit Sub
  loc_1456184: ' Referenced from: 1455690
  loc_145619D: MsgBox("FILL DETAILS", 0, var_DC, var_13C, var_15C)
  loc_14561C3: Set var_E8 = Err()
  loc_14561C9: Call 0.Method_arg_1C (var_EC, 0, var_DC, var_13C, var_15C, var_200, var_18C, var_1BC)
  loc_14561D5: MsgBox(CVar(var_EC), var_14C, var_200, var_15C, 1)
  loc_14561E8: Exit Sub
End Sub

Public Sub Proc_174_65_E6CC60
  'Data Table: 514A68
  loc_E6CC36: For var_B0 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_96 = var_B0 'Byte
  loc_E6CC44:   var_94 = CVar(var_96) 'Variant
  loc_E6CC48:   Proc_174_65_E6CC60 = CByte(1)
  loc_E6CC51: Next var_B0 'Byte
  loc_E6CC57: Proc_174_65_E6CC60 = 
  loc_E6CC5D: DOC
End Sub

Public Sub Proc_174_66_F74B08(arg_C) 'F74B08
  'Data Table: 514A68
  Dim var_90 As String
  Dim var_138 As Variant
  Dim var_148 As String
  Dim var_1F0 As Variant
  loc_F74A11: var_90 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocid = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='" & arg_14
  loc_F74A61: var_138 = CVar(var_90 & "' And Split='") & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" & CVar(arg_C) & ") Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all " 
  loc_F74A65: var_148 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocid = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='"
  loc_F74AB4: var_1F0 = var_138 & var_148 & CVar(arg_14) & "' And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_F74AFF: var_88 = CStr(var_1F0 & CVar(arg_C) & ") Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all ")
  loc_F74B02: Proc_174_66_F74B08 = 
End Sub

Public Sub Proc_174_67_1062338(arg_C) '1062338
  'Data Table: 514A68
  Dim var_90 As String
  Dim var_128 As String
  Dim var_138 As Variant
  Dim var_148 As String
  Dim var_1F0 As Variant
  Dim var_220 As String
  Dim var_240 As String
  Dim var_2E8 As Variant
  Dim var_318 As String
  Dim var_338 As String
  Dim var_3E0 As Variant
  Dim var_410 As String
  loc_106214D: var_90 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' as AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocid = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='" & arg_14
  loc_1062198: var_128 = ") AND PayCode not in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_106219D: var_138 = CVar(var_90 & "' And Split='") & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" & CVar(arg_C) & var_128 
  loc_10621A1: var_148 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'T' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocid = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='"
  loc_10621F0: var_1F0 = var_138 & var_148 & CVar(arg_14) & "' And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" 
  loc_10621FE: var_220 = ") AND PayCode in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_1062207: var_240 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocid = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='"
  loc_1062256: var_2E8 = var_1F0 & CVar(arg_C) & var_220 & var_240 & CVar(arg_14) & "' And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_1062264: var_318 = ") AND PayCode NOT in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_106226D: var_338 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'T' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocid = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='"
  loc_10622BC: var_3E0 = var_2E8 & CVar(arg_C) & var_318 & var_338 & CVar(arg_14) & "' And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_10622CA: var_410 = ") AND PayCode in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_106232F: var_88 = CStr(var_3E0 & CVar(arg_C) & var_410)
  loc_1062332: Proc_174_67_1062338 = 
End Sub
