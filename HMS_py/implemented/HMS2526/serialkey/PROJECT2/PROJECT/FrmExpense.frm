VERSION 5.00
Begin VB.Form FrmExpense
  Caption = "Misc.Payment / Received Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 15165
  ClientHeight = 9390
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 15165
    Height = 450
    TabIndex = 25
  End
  Begin PictureBox Picture1
    Picture = "FrmExpense.frx":0
    Left = 4605
    Top = 1200
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 21
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin PictureBox Picture3
    Picture = "FrmExpense.frx":34E
    Left = 6705
    Top = 2415
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 20
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGAgAc
    Left = 3930
    Top = 3375
    Width = 4200
    Height = 2160
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1845
    Top = 3435
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 2505
    Top = 1335
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2505
    Top = 2415
    Width = 4185
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2505
    Top = 2145
    Width = 1350
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 10
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 2505
    Top = 1605
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 2505
    Top = 1875
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    Left = 4845
    Top = 1605
    Width = 1875
    Height = 255
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 21
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2505
    Top = 2685
    Width = 4185
    Height = 1050
    TabIndex = 6
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin MaskEdBox txtM
    Index = 5
    Left = 3870
    Top = 1875
    Width = 720
    Height = 255
    TabIndex = 3
  End
  Begin MSFlexGrid FGPoint
    Left = 90
    Top = 3615
    Width = 1785
    Height = 1440
    Visible = 0   'False
    TabIndex = 19
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4470
    Top = 5685
    Width = 2790
    Height = 285
    TabIndex = 24
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
    Left = 1095
    Top = 5685
    Width = 2880
    Height = 255
    TabIndex = 23
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
    TabIndex = 22
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
    Caption = "Type"
    Index = 3
    ForeColor = &HC00000&
    Left = 1350
    Top = 1350
    Width = 465
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
  Begin Label LblName
    Caption = "Against A/c"
    Index = 0
    ForeColor = &HC00000&
    Left = 1335
    Top = 2445
    Width = 1065
    Height = 240
    TabIndex = 14
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
    Caption = "Amount"
    Index = 6
    ForeColor = &HC00000&
    Left = 1335
    Top = 2175
    Width = 735
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
  Begin Label LblName
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 1335
    Top = 1905
    Width = 435
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 6735
    Top = 1260
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 11
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Sr.No"
    Index = 1
    ForeColor = &HC00000&
    Left = 1335
    Top = 1635
    Width = 525
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
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 4050
    Top = 1605
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Remarks"
    Index = 4
    ForeColor = &HC00000&
    Left = 1335
    Top = 2715
    Width = 825
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
End

Attribute VB_Name = "FrmExpense"

Private MasterFormExit As Integer
Private global_68 As Recordset15
Private global_72 As Variant

Private Sub FGPoint_UnknownEvent_9 'E367E4
  'Data Table: 4AD158
  loc_E367D8: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_E367DB:   Call DGAgAc_UnknownEvent_9()
  loc_E367E0: End If
  loc_E367E0: Exit Sub
End Sub

Private Sub Form_Load() '11EE5F4
  'Data Table: 4AD158
  Dim var_88 As Label
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_D0 As Variant
  Dim Me As Recordset15
  Dim var_10C As TextBox
  Dim var_C0 As TextBox
  Dim var_108 As DataGrid
  loc_11EE168: On Error Goto loc_11EE5EB
  loc_11EE172: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_11EE186: Me.LblUser.Left = CDbl(13500)
  loc_11EE19D: Me.LblUser.Top = CDbl(7800)
  loc_11EE1B4: Me.LblLDt.Top = CDbl(8160)
  loc_11EE1CB: Me.LblLDt.Left = CDbl(13500)
  loc_11EE1DD: Set var_88 = Me.TopCtrl1
  loc_11EE1E3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_11EE1F1: Call 0.Method_arg_50 (var_AC)
  loc_11EE1F9: var_BC = CVar(var_AC) 'String
  loc_11EE201: Set var_88 = Me.TopCtrl1
  loc_11EE207: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_BC)
  loc_11EE21E: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_11EE22F: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_11EE240: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_11EE251: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_11EE262: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_11EE273: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_11EE284: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_11EE295: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_11EE2A6: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_11EE2B7: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_11EE2D1: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_11EE2DF: Set var_88 = MemVar_1F95044
  loc_11EE2EE: Call 0.Method_Form_Load8 (var_88)
  loc_11EE304: Me.TopCtrl1.Clone
  loc_11EE30F: Set var_C0 = var_88
  loc_11EE31E: Call 0.Method_arg_50 (var_C0, -1)
  loc_11EE334: Set global_64 = New 
  loc_11EE346: Me.Recordset15.CursorLocation = 3
  loc_11EE355: If (CDbl(MemVar_1F950B8) = CDbl("1")) Then
  loc_11EE363:   Proc_6_7_F26918(var_BC, MemVar_1F950F4)
  loc_11EE38D:   var_D0 = CVar("Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From ExpSheet where LOGSITE_CODE='" & MemVar_1F95078 & "' AND vdate>=") 'String
  loc_11EE3A7:   Me.Open var_D0 & var_BC & " Order by DocID", CVar(MemVar_1F95044), 2
  loc_11EE3BD: Else
  loc_11EE3C8:   Proc_6_7_F26918(var_BC, MemVar_1F950EC, 3)
  loc_11EE3F2:   var_D0 = CVar("Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From ExpSheet where LOGSITE_CODE='" & MemVar_1F95078 & "' AND vdate=") 'String
  loc_11EE40C:   Me.Open var_D0 & var_BC & " Order by DocID", CVar(MemVar_1F95044), 2
  loc_11EE41F: End If
  loc_11EE43E: Me.Recordset15.CursorLocation = 3
  loc_11EE468: var_BC = CVar("Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_11EE475: Me.Recordset15.Open var_BC, CVar(MemVar_1F95044), 2
  loc_11EE48C: CVarUnk
  loc_11EE491: VerifyVarObj
  loc_11EE49D: LateIdStAd
  loc_11EE4B9: Set var_108 = Me.Txt
  loc_11EE4BF: Call 0.Method_Form_Load0 (CInt(5), var_10C, var_110, Me.DGAgAc, New, 3)
  loc_11EE4C7: -1 = var_10C.Height
  loc_11EE4DA: Set var_88 = Me.Txt
  loc_11EE4E0: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_104, 3)
  loc_11EE4E8: -1 = var_C0.Top
  loc_11EE4F4: var_98 = CVar((var_104 + var_110)) 'Single
  loc_11EE503: Me.DGAgAc.Top = CVar(MemVar_1F95044)
  loc_11EE523: Set var_88 = Me.Txt
  loc_11EE529: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_104)
  loc_11EE531: -1 = var_C0.Left
  loc_11EE548: Me.DGAgAc.Left = CVar(var_104)
  loc_11EE579: Call Proc_31_34_F17DA0(Proc_5_1_100EC1C("INI", Me), global_64)
  loc_11EE58D: Set var_88 = Me.TopCtrl1
  loc_11EE593: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_11EE5A4: Set var_88 = Me.TopCtrl1
  loc_11EE5AA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_11EE5BB: Set var_88 = Me.TopCtrl1
  loc_11EE5C1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_11EE5D8: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_11EE5E0: Call Proc_31_32_EE355C(Me.TopCtrl1)
  loc_11EE5E5: Call Proc_31_33_1352C04()
  loc_11EE5EA: Exit Sub
  loc_11EE5EB: ' Referenced from: 11EE168
  loc_11EE5EB: Proc_6_60_E63754()
  loc_11EE5F0: Exit Sub
  loc_11EE5F1: CExtInstUnk
End Sub

Private Sub Form_Resize() 'ED4D88
  'Data Table: 4AD158
  Dim var_8C As Label
  loc_ED4CE6: Call 0.Method_arg_50 (var_88)
  loc_ED4CF8: Me.LblFormCaption.Caption = var_88
  loc_ED4D11: Me.LblFormCaption.Left = CDbl(0)
  loc_ED4D1D: Set var_A0 = Me.TopCtrl1
  loc_ED4D23: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED4D30: Set var_8C = Me.TopCtrl1
  loc_ED4D36: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED4D50: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED4D6B: Call 0.Method_arg_100 (var_B8)
  loc_ED4D7D: Me.LblFormCaption.Width = var_B8
  loc_ED4D85: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E3FFBC
  'Data Table: 4AD158
  loc_E3FF97: Set global_64 = Nothing
  loc_E3FFA3: MasterFormExit = 0
  loc_E3FFB1: Set global_92 = Nothing
  loc_E3FFB8: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E260D4
  'Data Table: 4AD158
  Dim var_1F01 As Double
  loc_E260B9: If (MasterFormExit = &HFF) Then
  loc_E260C9:   Me.Global.Unload Me
  loc_E260D1: End If
  loc_E260D1: Exit Sub
  loc_E260D2: var_1F01 = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E36728
  'Data Table: 4AD158
  loc_E366FC: On Error Goto loc_E36720
  loc_E36717: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E3671F: Exit Sub
  loc_E36720: ' Referenced from: E366FC
  loc_E36720: Proc_6_60_E63754(Shift)
  loc_E36725: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_0 'E52EB0
  'Data Table: 4AD158
  loc_E52E8A: Set var_88 = Me.txtM
  loc_E52E90: Call 0.Method_txtM_UnknownEvent_00 (KeyCode)
  loc_E52E9E: Proc_6_74_E23240(var_8C)
  loc_E52EAA: Call Proc_31_35_EB7C0C(var_8C)
  loc_E52EAF: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E4B78C
  'Data Table: 4AD158
  loc_E4B76A: Set var_88 = Me.txtM
  loc_E4B770: Call 0.Method_txtM_UnknownEvent_10 (KeyCode)
  loc_E4B77E: Proc_6_73_E23294(var_8C)
  loc_E4B78A: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E54858
  'Data Table: 4AD158
  Dim Shift As Integer
  loc_E5482E: Set var_88 = Me.txtM
  loc_E54834: Call 0.Method_txtM_UnknownEvent_80 (KeyCode)
  loc_E5484E: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E54853:   Shift = &HFF
  loc_E54856: End If
  loc_E54856: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E610CC
  'Data Table: 4AD158
  loc_E61086: If (CLng(Shift) = &H1B) Then
  loc_E61089:   Call Proc_31_35_EB7C0C()
  loc_E6108E:   Exit Sub
  loc_E6108F: End If
  loc_E610A4: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E610AD:   Proc_6_75_E5335C(Shift)
  loc_E610B2: End If
  loc_E610BC: If (CLng(Shift) = &H26) Then
  loc_E610C5:   Proc_6_76_E533C8(Shift, arg_14)
  loc_E610CA: End If
  loc_E610CA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FCD774
  'Data Table: 4AD158
  Dim var_E4 As Variant
  Dim var_8C As Label
  loc_FCD5C0: On Error Goto loc_FCD76E
  loc_FCD5E6: Call Proc_31_34_F17DA0(Proc_5_1_100EC1C("ADD", Me))
  loc_FCD5FA: Set var_8C = Me.TopCtrl1
  loc_FCD600: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_FCD611: Set var_8C = Me.TopCtrl1
  loc_FCD617: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_FCD628: Set var_8C = Me.TopCtrl1
  loc_FCD62E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_FCD63F: Set var_8C = Me.TopCtrl1
  loc_FCD645: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_FCD64D: Call Proc_31_32_EE355C(global_64)
  loc_FCD68D: Set var_8C = Me.txtM
  loc_FCD693: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_E4, CVar(CStr(Format(Now, "HH:MM"))))
  loc_FCD69B: var_E4.Text = 1
  loc_FCD6C3: Set var_8C = Me.txtM
  loc_FCD6C9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_E4)
  loc_FCD6D1: var_E4.Tag = vbNullString
  loc_FCD6F0: Set var_8C = Me.Txt
  loc_FCD6F6: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_E4)
  loc_FCD6FE: var_E4.Text = CStr(MemVar_1F950EC)
  loc_FCD719: Call Txt_Validate(CInt(2))
  loc_FCD729: Set var_8C = Me.Txt
  loc_FCD72F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_E4)
  loc_FCD737: var_E4.SetFocus
  loc_FCD750: Me.LblUser.Caption = vbNullString
  loc_FCD765: Me.LblLDt.Caption = vbNullString
  loc_FCD76D: Exit Sub
  loc_FCD76E: ' Referenced from: FCD5C0
  loc_FCD76E: Proc_6_60_E63754(0)
  loc_FCD773: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F088DC
  'Data Table: 4AD158
  loc_F087FC: On Error Goto loc_F088D3
  loc_F08836: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F0885C:   Call Proc_31_34_F17DA0(Proc_5_1_100EC1C("INI", Me))
  loc_F08870:   Set var_10C = Me.TopCtrl1
  loc_F08876:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_F08887:   Set var_10C = Me.TopCtrl1
  loc_F0888D:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_F0889E:   Set var_10C = Me.TopCtrl1
  loc_F088A4:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_F088B5:   Set var_10C = Me.TopCtrl1
  loc_F088BB:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_F088C3:   Call Proc_31_35_EB7C0C(global_64)
  loc_F088C8:   Call Proc_31_32_EE355C()
  loc_F088CD:   Call Proc_31_33_1352C04()
  loc_F088D2: End If
  loc_F088D2: Exit Sub
  loc_F088D3: ' Referenced from: F087FC
  loc_F088D3: Proc_6_60_E63754()
  loc_F088D8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1107E2C
  'Data Table: 4AD158
  Dim var_96 As Integer
  Dim unk_4AD172 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_1107B20: On Error Goto loc_1107DD5
  loc_1107B31: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_1107B34:   Exit Sub
  loc_1107B35: End If
  loc_1107B6C: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_1107B7D:   unk_4AD172.BeginTrans var_11C
  loc_1107B93:   var_94 = Me.Bookmark 'Variant
  loc_1107BB5:   Set var_120 = Me.Txt
  loc_1107BBB:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Delete From ExpSheet Where DocID='")
  loc_1107BC3:   var_B8 = var_124.Text
  loc_1107BCC:   var_12C = -1 & var_128
  loc_1107BDC:   unk_4AD172.Execute var_12C & "'", var_134, &HFF
  loc_1107C04:   Set var_120 = Me.Txt
  loc_1107C0A:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124)
  loc_1107C1C:   var_168 = 0
  loc_1107C2F:   var_160 = 0
  loc_1107C3A:   var_15C = 0
  loc_1107C4D:   var_154 = 0
  loc_1107C58:   var_150 = 0
  loc_1107C6B:   var_148 = 0
  loc_1107CAA:   var_128 = "ExpSheet"
  loc_1107CB3:   Proc_154_5_10E3BD4(MemVar_1F95044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_1107CDE:   unk_4AD172.CommitTrans
  loc_1107CE5:   var_96 = 0
  loc_1107CF3:   Me.Requery -1
  loc_1107D13:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1107D20:     Me.Bookmark = var_94
  loc_1107D28:   Else
  loc_1107D3C:     If (Me.EOF = 0) Then
  loc_1107D45:       Me.MoveLast
  loc_1107D4A:     End If
  loc_1107D4A:   End If
  loc_1107D4A:   Call Proc_31_33_1352C04(var_96, var_148, 0, var_150, var_154)
  loc_1107D4F:   Call Proc_31_32_EE355C(0, var_15C)
  loc_1107D70:   Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_1107D81:   Set var_120 = Me.TopCtrl1
  loc_1107D87:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_1107D98:   Set var_120 = Me.TopCtrl1
  loc_1107D9E:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_1107DAF:   Set var_120 = Me.TopCtrl1
  loc_1107DB5:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_1107DC6:   Set var_120 = Me.TopCtrl1
  loc_1107DCC:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_1107DD4: End If
  loc_1107DD4: Exit Sub
  loc_1107DD5: ' Referenced from: 1107B20
  loc_1107DDB: If (var_96 = &HFF) Then
  loc_1107DE4:   unk_4AD172.RollbackTrans
  loc_1107DE9: End If
  loc_1107DF1: Set var_120 = Err()
  loc_1107DF7: Call 0.Method_arg_2C (var_128, 0)
  loc_1107E18: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_1107E2B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F9D834
  'Data Table: 4AD158
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F9D6C0: On Error Goto loc_F9D7EF
  loc_F9D6D1: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_F9D6D4:   Exit Sub
  loc_F9D6D5: End If
  loc_F9D6EC: If (Me.RecordCount > 0) Then
  loc_F9D704:   var_8C = "EDIT"
  loc_F9D712:   Call Proc_31_34_F17DA0(Proc_5_1_100EC1C(var_8C, Me))
  loc_F9D72A:   Set var_90 = Me.Txt
  loc_F9D730:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F9D738:   var_98.Enabled = False
  loc_F9D751:   Set var_90 = Me.Txt
  loc_F9D757:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_98)
  loc_F9D75F:   var_98.Enabled = False
  loc_F9D776:   Set var_90 = Me.Txt
  loc_F9D77C:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_F9D784:   var_98.SetFocus
  loc_F9D793: Else
  loc_F9D7B4:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F9D7C4: End If
  loc_F9D7D1: Me.LblUser.Caption = vbNullString
  loc_F9D7E6: Me.LblLDt.Caption = vbNullString
  loc_F9D7EE: Exit Sub
  loc_F9D7EF: ' Referenced from: F9D6C0
  loc_F9D7F7: Set var_90 = Err()
  loc_F9D7FD: Call 0.Method_arg_2C (var_8C)
  loc_F9D81E: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F9D831: Exit Sub
  loc_F9D832: DOC
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18C84
  'Data Table: 4AD158
  loc_E18C79: Me.Global.Unload Me
  loc_E18C81: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F5E8D4
  'Data Table: 4AD158
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F950E4 As String
  loc_F5E7B0: On Error Goto loc_F5E8CB
  loc_F5E7CA: If (Me.RecordCount <= 0) Then
  loc_F5E7E8:   var_A8 = "No Records To Search."
  loc_F5E7EE:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F5E7FE:   Exit Sub
  loc_F5E7FF: End If
  loc_F5E809: If (CDbl(MemVar_1F950B8) = CDbl("1")) Then
  loc_F5E813:   var_10C = "Select E.DocID as SearchCode,Case When E.VType='HTSAL' Then 'Misc Receipt' Else 'Misc Payment' End Type,E.VNo VNo,cast(E.VDate as Varchar(11)) as Date,E.VTime Time,E.Remarks,cast(E.Amount as varchar) As Amount,S.Name Agnst_Ac From ExpSheet E Left Join SubGroup S On E.AgAc=S.Subcode where (E.LOGSITE_CODE='" & MemVar_1F95078
  loc_F5E828:   Proc_6_7_F26918(var_A8, MemVar_1F950F4)
  loc_F5E83E:   MemVar_1F950E4 = CStr(CVar(var_10C & "' or E.LOGSITE_CODE='HO') AND E.vdate>=") & var_A8 & " Order by DocID,VNo")
  loc_F5E853: Else
  loc_F5E85A:   var_10C = "Select E.DocID as SearchCode,Case When E.VType='HTSAL' Then 'Misc Receipt' Else 'Misc Payment' End Type,E.VNo VNo,cast(E.VDate as Varchar(11)) as Date,E.VTime Time,E.Remarks,cast(E.Amount as varchar) As Amount,S.Name Agnst_Ac From ExpSheet E Left Join SubGroup S On E.AgAc=S.Subcode where (E.LOGSITE_CODE='" & MemVar_1F95078
  loc_F5E86F:   Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_F5E87B:   var_B8 = " Order by E.DocID,E.VNo"
  loc_F5E885:   MemVar_1F950E4 = CStr(CVar(var_10C & "' or E.LOGSITE_CODE='HO') and E.vdate=") & var_A8 & var_B8)
  loc_F5E897: End If
  loc_F5E8A0: Proc_6_126_F1C850("1450,500,1200,550,4000,950,2500", MemVar_1F950E4)
  loc_F5E8AE: MemVar_1F95120 = Me
  loc_F5E8C5: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F5E8CA: Exit Sub
  loc_F5E8CB: ' Referenced from: F5E7B0
  loc_F5E8CB: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F5E8D0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFF7C4
  'Data Table: 4AD158
  loc_DFF7BC: Call Proc_31_29_13E1228()
  loc_DFF7C1: Exit Sub
  loc_DFF7C2: On Error Goto loc_DFD887
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1471680
  'Data Table: 4AD158
  Dim var_E0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_AC As String
  Dim unk_4AD172 As Connection15
  Dim var_98 As Recordset15
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_A8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_A4 As Variant
  Dim var_110 As Variant
  Dim var_86 As Integer
  Dim var_13C As String
  Dim MemVar_1F950EC As Double
  Dim var_144 As Variant
  Dim var_444 As Double
  Dim var_19C As Variant
  Dim var_21C As TextBox
  Dim var_44C As Double
  Dim var_258 As TextBox
  Dim var_150 As String
  Dim var_184 As Variant
  Dim var_204 As Variant
  Dim var_3B4 As Variant
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_1470B68: On Error Goto loc_1471663
  loc_1470B76: Set var_A0 = Me.Txt
  loc_1470B7C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1470BA5: If (Proc_6_27_EA61EC(var_A4, "Date") = 0) Then
  loc_1470BA8:   Exit Sub
  loc_1470BA9: End If
  loc_1470BB4: Set var_A0 = Me.Txt
  loc_1470BBA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_1470BE3: If (Proc_6_27_EA61EC(var_A4, "Vr No") = 0) Then
  loc_1470BE6:   Exit Sub
  loc_1470BE7: End If
  loc_1470BF2: Set var_A0 = Me.Txt
  loc_1470BF8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_1470C21: If (Proc_6_27_EA61EC(var_A4, "Account") = 0) Then
  loc_1470C24:   Exit Sub
  loc_1470C25: End If
  loc_1470C28: Call Proc_31_31_F8F6AC(var_AE)
  loc_1470C33: If (var_AE = 0) Then
  loc_1470C36:   Exit Sub
  loc_1470C37: End If
  loc_1470C54: Proc_6_17_EAAE40(var_D0, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=", var_110)
  loc_1470C5C: var_F0 = -1 & var_D0 
  loc_1470C6A: unk_4AD172.Execute CStr(var_F0), var_A0, var_A4
  loc_1470C75: Set var_98 = var_A0
  loc_1470CC5: var_A8 = var_98.Fields
  loc_1470CD5: var_F0 = var_A8.Item("CashPayType").Value
  loc_1470CE7: var_134 = IsNull(CVar(var_98.Fields.Item("CashPayType"))) Or (var_F0 = vbNullString)
  loc_1470CFF: If CBool(var_134) Then
  loc_1470D1B:   MsgBox("Set Cash Pay Type in Enviro", &H40, var_F0, var_110, var_134)
  loc_1470D2B:   Exit Sub
  loc_1470D2C: End If
  loc_1470D58: var_A4 = var_98.Fields.Item("CashPayType")
  loc_1470D60: var_D0 = var_A4.Value
  loc_1470D68: var_F0 = "SELECT ACCODE FROM REVMAST WHERE cODE='" & var_D0 
  loc_1470D71: var_110 = var_F0 & "'" 
  loc_1470D7F: unk_4AD172.Execute CStr(var_110), var_134, -1
  loc_1470D8A: Set var_9C = var_A8
  loc_1470DB2: unk_4AD172.BeginTrans var_138
  loc_1470DBB: Set var_A0 = Me.TopCtrl1
  loc_1470DC1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_1470DDA: If (CStr(var_A8) = "Add") Then
  loc_1470DE3:   var_E0 = 0
  loc_1470E00:   var_AC = "Select NCUR from enviro where LOGsite_code='" & MemVar_1F95078
  loc_1470E10:   unk_4AD172.Execute var_AC & "'", var_D0, -1
  loc_1470E18:   var_A0 = var_A0.Fields
  loc_1470E20:   var_E0 = var_A4.Item(var_A4)
  loc_1470E28:   var_A8 = var_A8.Value
  loc_1470E32:   MemVar_1F950EC = CDate(var_F0)
  loc_1470E79:   Set var_A0 = Me.Txt
  loc_1470E7F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Select Count(*) From ExpSheet Where DocID='", var_D0, -1, var_A8)
  loc_1470EA0:   unk_4AD172.Execute 0 & var_AC & "'", var_144, var_F0
  loc_1470EA8:   MemVar_1F950EC = var_A8.Fields
  loc_1470EB0:    = var_A4.Text.Item(var_F0)
  loc_1470EB8:    = var_144.Value
  loc_1470EE5:   If (var_F0 > 0) Then
  loc_1470EEE:     Call 0.Method_arg_50 (var_AC)
  loc_1470EFC:     var_F0 = CVar(var_AC) 'String
  loc_1470F0F:     MsgBox("Duplicate Vr. No.", &H40, var_F0, var_110, var_134)
  loc_1470F25:     Call Proc_31_37_115B848(MemVar_1F95044)
  loc_1470F35:     If (var_AC = vbNullString) Then
  loc_1470F38:       Exit Sub
  loc_1470F39:     End If
  loc_1470F3F:     Call Proc_31_37_115B848(MemVar_1F95044, var_AC)
  loc_1470F52:     Set var_A0 = Me.Txt
  loc_1470F58:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_1470F60:     var_A4.Text = var_AC
  loc_1470F6F:     Exit Sub
  loc_1470F70:   End If
  loc_1470F70: End If
  loc_1470F8E: Set var_A0 = Me.Txt
  loc_1470F94: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Delete From ExpSheet Where DocID='")
  loc_1470F9C: var_D0 = var_A4.Text
  loc_1470FA5: var_13C = -1 & var_AC
  loc_1470FB5: unk_4AD172.Execute 0 & var_AC & "'", var_A8, var_AC
  loc_1470FDD: Set var_A0 = Me.Txt
  loc_1470FE3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_1470FF7: Set var_A8 = Me.LblVPrefix
  loc_1471010: Set var_114 = Me.Txt
  loc_1471016: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_144)
  loc_147102B: var_444 = Val(var_144.Text)
  loc_1471039: Set var_170 = Me.Txt
  loc_147103F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174)
  loc_147104E: Proc_6_7_F26918(var_F0, CVar(var_174))
  loc_147105E: Set var_188 = Me.txtM
  loc_1471064: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_18C)
  loc_1471073: Proc_6_17_EAAE40(var_1AC, CVar(var_18C))
  loc_1471083: Set var_1D0 = Me.Txt
  loc_1471089: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1D4)
  loc_1471098: Proc_6_17_EAAE40(var_1F4, CVar(var_1D4))
  loc_14710AB: Set var_218 = Me.Txt
  loc_14710B1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_21C)
  loc_14710C6: var_44C = Val(var_21C.Text)
  loc_14710D7: Set var_254 = Me.Txt
  loc_14710DD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_258, var_25C)
  loc_14710F8: Proc_6_7_F26918(var_2FC, Date)
  loc_1471101: Set var_330 = Me.TopCtrl1
  loc_1471107: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_444)
  loc_1471152: var_13C = "Insert Into ExpSheet(DocID,VType,VPrefix,Site_Code,VNo,VDate,Vtime,Remarks,Amount,AgAc,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_A4.Text
  loc_147116A: var_150 = var_13C & "','" & global_60 & "','"
  loc_14711BF: var_204 = CVar(var_150 & var_A8.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_444) & ",") & var_F0 & "," & var_1AC & "," & var_1F4 
  loc_1471219: var_3B4 = var_204 & "," & CVar(var_258.Tag) & ",'" & CVar(var_25C) & "','" & CVar(MemVar_1F950C8) & "'," & var_2FC & ",'" & IIf((CStr(var_340) = "Add"), "A", "E") 
  loc_1471243: unk_4AD172.Execute CStr(var_3B4 & "','" & CVar(MemVar_1F95078) & "')"), var_438, -1
  loc_14712D5: Set var_A0 = Me.TopCtrl1
  loc_14712DB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_43C)
  loc_14712F4: If (CStr() = "Add") Then
  loc_147130B:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1471331:   var_110 = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_1471342:   Set var_A0 = Me.Txt
  loc_1471348:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4, var_150, var_110)
  loc_1471350:   var_19C = var_A4.Text
  loc_147135E:   Proc_6_7_F26918(var_F0, CVar(var_150))
  loc_1471366:   var_134 = -1 & var_F0 
  loc_147136F:   var_184 = CVar(var_150 & var_A8.Caption & "','" & MemVar_1F95070 & "'," & CStr(var_444) & ",") & var_F0 & " Order By VP.Date_From DESC" 
  loc_147137D:   unk_4AD172.Execute CStr(var_184), var_A8, 
  loc_1471388:   Set var_8C = var_A8
  loc_14713C6:   If (var_8C.RecordCount > 0) Then
  loc_14713D7:     Set var_A0 = Me.Txt
  loc_14713DD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_14713F2:     var_444 = Val(var_A4.Text)
  loc_14713F8:     var_C0 = "Date_From"
  loc_147141B:     Proc_6_7_F26918(var_F0, CVar(var_8C.Fields.Item(var_C0)))
  loc_147144E:     var_150 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_444) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_147146D:     var_110 = CVar(var_150 & MemVar_1F95078 & "') and V_Type='" & global_60 & "' and Date_From=") 'String
  loc_1471473:     var_134 = var_110 & var_F0 
  loc_1471481:     unk_4AD172.Execute CStr(var_134), var_184, -1
  loc_14714B5:   End If
  loc_14714B5: End If
  loc_14714BB: unk_4AD172.CommitTrans
  loc_14714C0: Call Proc_31_35_EB7C0C(var_144)
  loc_14714D3: Set var_A0 = Me.Txt
  loc_14714D9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_14714F5: var_86 = 0
  loc_1471503: Me.Requery -1
  loc_147152D: Me.Find "SearchCode ='" & var_A4.Text & "'", 0, 1
  loc_147153D: Set var_A0 = Me.TopCtrl1
  loc_1471543: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_147155C: If (CStr(var_86) = "Add") Then
  loc_147155F:   Call TopCtrl1_UnknownEvent_A()
  loc_1471564:   Exit Sub
  loc_1471565: End If
  loc_147157A: var_AC = "INI"
  loc_1471588: Call Proc_31_34_F17DA0(Proc_5_1_100EC1C(var_AC, Me), global_64)
  loc_147159C: Set var_A0 = Me.TopCtrl1
  loc_14715A2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_14715B3: Set var_A0 = Me.TopCtrl1
  loc_14715B9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_14715CA: Set var_A0 = Me.TopCtrl1
  loc_14715D0: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_14715E1: Set var_A0 = Me.TopCtrl1
  loc_14715E7: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_14715EF: Call Proc_31_33_1352C04(var_444)
  loc_147160B: If (Me.RecordCount > 0) Then
  loc_1471614:   Call 0.Method_arg_50 (var_AC)
  loc_1471652:   If (MsgBox(CVar(var_AC & " ?"), &H24, "Print", var_110, var_134) = 6) Then
  loc_1471655:     Call TopCtrl1_UnknownEvent_14()
  loc_147165A:   End If
  loc_147165A: End If
  loc_147165F: Set var_8C = Nothing
  loc_1471662: Exit Sub
  loc_1471663: ' Referenced from: 1470B68
  loc_1471669: If (var_86 = &HFF) Then
  loc_1471672:   unk_4AD172.RollbackTrans
  loc_1471677: End If
  loc_1471677: Proc_6_60_E63754()
  loc_147167C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '111AC78
  'Data Table: 4AD158
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_B4 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  loc_111A946: Set var_88 = Me.Txt
  loc_111A94C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_111A95A: Proc_6_74_E23240(var_8C)
  loc_111A966: Call Proc_31_35_EB7C0C(var_8C)
  loc_111A96E: var_92 = Index
  loc_111A979: If Not (var_92 = CInt(2)) Then
  loc_111A984:   If (var_92 = CInt(3)) Then
  loc_111A987:   End If
  loc_111A98F:   var_98 = "{Home}+{End}"
  loc_111A995:   Proc_303_0_FBACC8(var_98, 0)
  loc_111A9A0: Else
  loc_111A9A8:   If (var_92 = CInt(5)) Then
  loc_111A9C5:     If (Me.Recordset15.RecordCount > 0) Then
  loc_111A9D3:       Set var_8C = Me.FGPoint
  loc_111A9EF:       Proc_6_137_1192FDC(Me.DGAgAc, global_68, Index)
  loc_111A9FD:     End If
  loc_111AA54:     Set var_88 = Me.Txt
  loc_111AA5A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_111AA62:     ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_111AA7A:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_111AA8A:       Set var_88 = Me.Txt
  loc_111AA90:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_111AA98:       var_8C.Tag = vbNullString
  loc_111AAA4:       Exit Sub
  loc_111AAA5:     End If
  loc_111AAB2:     Set var_88 = Me.Txt
  loc_111AAB8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_111AAC0:     var_98 = var_8C.Text
  loc_111AAD2:     var_B4 = "Name"
  loc_111AB10:     If CBool(CVar(var_98) <> Me.Recordset15.Fields.Item(var_B4).Value) Then
  loc_111AB1C:       Me.Recordset15.MoveFirst
  loc_111AB3F:       Set var_88 = Me.Txt
  loc_111AB45:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name='")
  loc_111AB4D:       0 = var_8C.Text
  loc_111AB69:       Me.Recordset15.Find 1 & var_98 & "'", var_B4, var_92
  loc_111AB7E:     End If
  loc_111AB81:   Else
  loc_111AB89:     If (var_92 = CInt(6)) Then
  loc_111AB99:       ReDim var_F4(0 To 1)
  loc_111ABB0:       var_F4(0) = "Misc Rect."
  loc_111ABBF:       var_F4(1) = "Misc Payment"
  loc_111ABD6:       global_72 = Array(var_F4)
  loc_111ABE1:       Set var_B8 = Me.ListView
  loc_111ABFC:       Set var_8C = Me.Txt
  loc_111AC16:       Set global_88 = Proc_6_66_F0048C(var_B8, var_8C, Index)
  loc_111AC34:       Set var_88 = Me.Txt
  loc_111AC3A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_111AC42:       global_72 = var_8C.Text
  loc_111AC54:       Set var_90 = Me.Txt
  loc_111AC5A:       Call 0.Method_Txt_GotFocus0 (Index, var_B8, var_98)
  loc_111AC62:       var_B8.Tag = 2
  loc_111AC75:     End If
  loc_111AC75:   End If
  loc_111AC75: End If
  loc_111AC75: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11EE0F0
  'Data Table: 4AD158
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  Dim var_E0 As String
  loc_11EDC87: var_86 = Shift
  loc_11EDC94: If (CLng(Shift) = &H1B) Then
  loc_11EDC97:   Call Proc_31_35_EB7C0C(var_86)
  loc_11EDC9C:   Exit Sub
  loc_11EDC9D: End If
  loc_11EDCA0: var_88 = KeyCode
  loc_11EDCAB: If (var_88 = CInt(5)) Then
  loc_11EDCB9:   Set var_A8 = Me.Txt
  loc_11EDCCB:   Set var_9C = Me.FGPoint
  loc_11EDCD6:   Set var_98 = Nothing
  loc_11EDD08:   Proc_6_69_134A630(Me.DGAgAc, var_A8, KeyCode, global_68, Shift, 0)
  loc_11EDD2A:   var_B0 = Me.FGPoint.RecordCount
  loc_11EDD7A:   If ((var_B0 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11EDD81:     Set var_98 = Me.DGAgAc
  loc_11EDD88:     Set var_90 = Me.FGPoint
  loc_11EDDA4:     Proc_6_138_106E830(var_98, global_68, KeyCode, var_90, 1)
  loc_11EDDB2:   End If
  loc_11EDDB5: Else
  loc_11EDDBD:   If (var_88 = CInt(6)) Then
  loc_11EDDE2:     Set var_8C = Me.Txt
  loc_11EDDE8:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_11EDDF0:     var_9C = var_90.Left
  loc_11EDE02:     Set var_98 = Me.Txt
  loc_11EDE08:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B4)
  loc_11EDE10:     0 = var_9C.Top
  loc_11EDE22:     Set var_A4 = Me.Txt
  loc_11EDE28:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_11EDE30:     var_B8 = var_A8.Height
  loc_11EDE42:     Set var_AC = Me.Txt
  loc_11EDE48:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_11EDE50:     var_C0 = var_BC.Width
  loc_11EDE98:     Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11EDEBF:   Else
  loc_11EDEC7:     If (var_88 = CInt(4)) Then
  loc_11EDED4:       If (CLng(Shift) = &H2D) Then
  loc_11EDEE4:         Set var_8C = Me.Txt
  loc_11EDEEA:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E4, CInt(var_B0))
  loc_11EDEF2:         CInt((var_B4 + var_B8)) = var_90.Text
  loc_11EDEFD:         Call Proc_31_38_EE3448(var_E0, var_E4, CInt(var_C0))
  loc_11EDF13:         Set var_98 = Me.Txt
  loc_11EDF19:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11EDF21:         var_9C.Text = 680 & var_E0
  loc_11EDF47:         Set var_8C = Me.Txt
  loc_11EDF4D:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11EDF68:         Set var_98 = Me.Txt
  loc_11EDF6E:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11EDF76:         var_9C.SelStart = Len(var_90.Text)
  loc_11EDF89:         Exit Sub
  loc_11EDF8A:       End If
  loc_11EDF8A:     End If
  loc_11EDF8A:   End If
  loc_11EDF8A: End If
  loc_11EDFC3: If ((CBool(Me.DGAgAc.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_11EDFE4:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(4))) Then
  loc_11EDFED:     Proc_6_75_E5335C(Shift, arg_14)
  loc_11EDFF2:   End If
  loc_11EDFF6:   Set var_8C = Me.TopCtrl1
  loc_11EDFFC:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_88)
  loc_11EE027:   If (((CStr() = "Add") And (KeyCode <> CInt(1))) And (KeyCode <> CInt(2))) Then
  loc_11EE03F:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11EE048:       Proc_6_76_E533C8(Shift)
  loc_11EE04D:     End If
  loc_11EE050:   Else
  loc_11EE054:     Set var_8C = Me.TopCtrl1
  loc_11EE05A:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_14)
  loc_11EE07C:     If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_11EE094:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11EE09D:         Proc_6_76_E533C8(Shift)
  loc_11EE0A2:       End If
  loc_11EE0A2:     End If
  loc_11EE0A2:   End If
  loc_11EE0C0:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(4))) Then
  loc_11EE0C6:     Call Proc_31_36_E913F0(KeyCode)
  loc_11EE0CB:   End If
  loc_11EE0E0:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11EE0E9:     Proc_6_75_E5335C(Shift, arg_14)
  loc_11EE0EE:   End If
  loc_11EE0EE: End If
  loc_11EE0EE: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F6F820
  'Data Table: 4AD158
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F6F6E7: Proc_6_58_E06050(arg_10)
  loc_F6F6EF: var_86 = KeyAscii
  loc_F6F6FA: If (var_86 = CInt(1)) Then
  loc_F6F707:   Set var_8C = Me.Txt
  loc_F6F70D:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F6F728:   Proc_6_42_129B55C(var_90, arg_10, 8)
  loc_F6F737: Else
  loc_F6F73F:   If (var_86 = CInt(3)) Then
  loc_F6F74C:     Set var_8C = Me.Txt
  loc_F6F752:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F6F76D:     Proc_6_42_129B55C(var_90, arg_10, 7)
  loc_F6F77C:   Else
  loc_F6F784:     If (var_86 = CInt(5)) Then
  loc_F6F7A3:       If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_F6F7D4:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F6F80A:         Proc_6_138_106E830(Me.DGAgAc, global_68, KeyAscii, Me.FGPoint)
  loc_F6F818:       End If
  loc_F6F818:     End If
  loc_F6F818:   End If
  loc_F6F818: End If
  loc_F6F818: Proc_6_60_E63754(0, 2)
  loc_F6F81D: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFFDE4
  'Data Table: 4AD158
  Dim var_86 As Integer
  loc_DFFDDF: var_86 = KeyCode
  loc_DFFDE2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B8C4
  'Data Table: 4AD158
  loc_E4B8A2: Set var_88 = Me.Txt
  loc_E4B8A8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B8B6: Proc_6_73_E23294(var_8C)
  loc_E4B8C2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12CB3D8
  'Data Table: 4AD158
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim unk_4AD172 As Connection15
  Dim var_94 As Recordset15
  Dim var_124 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_8C As Fields15
  loc_12CAD6B: var_86 = Cancel
  loc_12CAD76: If (var_86 = CInt(1)) Then
  loc_12CAD84:   Set var_8C = Me.Txt
  loc_12CAD8A:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_12CAD92:   var_98 = "Vr No"
  loc_12CADB3:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_12CADC1:     Set var_8C = Me.Txt
  loc_12CADC7:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_12CADCF:     var_90.SetFocus
  loc_12CADDD:     arg_10 = &HFF
  loc_12CADE0:     Exit Sub
  loc_12CADE1:   End If
  loc_12CADEF:   Set var_8C = Me.Txt
  loc_12CADF5:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_12CADFD:   arg_10 = var_90.Text
  loc_12CAE15:   If (CDbl(var_98) = CDbl(0)) Then
  loc_12CAE2B:     var_B8 = "Vr. No. Can Not Be 0"
  loc_12CAE31:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_12CAE4B:     Set var_8C = Me.Txt
  loc_12CAE51:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12CAE59:     var_90.SetFocus
  loc_12CAE67:     arg_10 = &HFF
  loc_12CAE6A:     Exit Sub
  loc_12CAE6B:   End If
  loc_12CAE6F:   Set var_8C = Me.TopCtrl1
  loc_12CAE75:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_12CAE7D:   var_98 = CStr(var_86)
  loc_12CAE8E:   If (var_98 = "Add") Then
  loc_12CAE97:     Call Proc_31_37_115B848(MemVar_1F95044)
  loc_12CAEAA:     Set var_8C = Me.Txt
  loc_12CAEB0:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_12CAEB8:     var_90.Text = var_98
  loc_12CAEC7:   End If
  loc_12CAECB:   Set var_8C = Me.TopCtrl1
  loc_12CAED1:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_12CAED9:   var_98 = CStr()
  loc_12CAEEA:   If (var_98 = "Add") Then
  loc_12CAF1A:     Set var_8C = Me.Txt
  loc_12CAF20:     Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98, "Select Count(*) From ForExTrans Where DocID='", var_B8, -1)
  loc_12CAF41:     unk_4AD172.Execute var_124 & var_98 & "'", 0, var_128
  loc_12CAF51:      = var_124.Item()
  loc_12CAF59:      = var_128.Value
  loc_12CAF86:     If (var_90.Text.Fields > 0) Then
  loc_12CAF8F:       Call 0.Method_arg_50 (var_98)
  loc_12CAFB0:       MsgBox("Duplicate Vr. No.", &H40, CVar(var_98), var_F8, var_118)
  loc_12CAFC6:       Call Proc_31_37_115B848(MemVar_1F95044)
  loc_12CAFD6:       If (var_98 = vbNullString) Then
  loc_12CAFE3:         Set var_8C = Me.Txt
  loc_12CAFE9:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12CAFF1:         var_90.SetFocus
  loc_12CAFFF:         arg_10 = &HFF
  loc_12CB002:         Exit Sub
  loc_12CB003:       End If
  loc_12CB009:       Call Proc_31_37_115B848(MemVar_1F95044, var_98)
  loc_12CB01C:       Set var_8C = Me.Txt
  loc_12CB022:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_12CB02A:       var_90.Text = arg_10
  loc_12CB03B:       arg_10 = &HFF
  loc_12CB03E:       Exit Sub
  loc_12CB03F:     End If
  loc_12CB03F:   End If
  loc_12CB042: Else
  loc_12CB04A:   If (var_86 = CInt(2)) Then
  loc_12CB05B:     Set var_8C = Me.Txt
  loc_12CB061:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, var_98)
  loc_12CB069:     arg_10 = var_90.Text
  loc_12CB099:     If (Len(Trim(CVar(var_98))) = 0) Then
  loc_12CB0AF:       Set var_8C = Me.Txt
  loc_12CB0B5:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_12CB0BD:       var_90.Text = CStr(MemVar_1F950EC)
  loc_12CB0CF:     Else
  loc_12CB0D9:       Set var_8C = Me.Txt
  loc_12CB0DF:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12CB0FF:       Set var_124 = Me.Txt
  loc_12CB105:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_12CB10D:       var_128.Text = Proc_6_33_15125B8(var_90)
  loc_12CB120:     End If
  loc_12CB123:   Else
  loc_12CB12B:     If (var_86 = CInt(3)) Then
  loc_12CB138:       Set var_8C = Me.Txt
  loc_12CB13E:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12CB16A:       var_98 = CStr(Format(CVar(var_90), "0.00"))
  loc_12CB178:       Set var_94 = Me.Txt
  loc_12CB17E:       Call 0.Method_Txt_Validate0 (Cancel, var_124, var_98)
  loc_12CB186:       var_124.Text = 1
  loc_12CB1A3:     Else
  loc_12CB1AB:       If (var_86 = CInt(5)) Then
  loc_12CB205:         Set var_8C = Me.Txt
  loc_12CB20B:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_12CB213:         ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_90.Text
  loc_12CB22B:         If (1 Or (var_98 = vbNullString)) Then
  loc_12CB23B:           Set var_8C = Me.Txt
  loc_12CB241:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12CB249:           var_90.Tag = vbNullString
  loc_12CB255:           Exit Sub
  loc_12CB256:         End If
  loc_12CB294:         Set var_94 = Me.Txt
  loc_12CB29A:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_12CB2A2:         var_124.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_12CB2D8:         var_90 = Me.Recordset15.Fields.Item("SearchCode")
  loc_12CB2E9:         var_98 = CStr(var_90.Value)
  loc_12CB2F6:         Set var_94 = Me.Txt
  loc_12CB2FC:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_12CB304:         var_124.Tag = var_98
  loc_12CB31D:       Else
  loc_12CB325:         If (var_86 = CInt(6)) Then
  loc_12CB333:           Set var_8C = Me.Txt
  loc_12CB339:           Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_12CB362:           If (Trim(CVar(var_90)) = vbNullString) Then
  loc_12CB367:             arg_10 = &HFF
  loc_12CB36A:             Exit Sub
  loc_12CB36B:           End If
  loc_12CB379:           Set var_8C = Me.Txt
  loc_12CB37F:           Call 0.Method_Txt_Validate0 (CInt(6), var_90, var_98)
  loc_12CB387:           arg_10 = var_90.Text
  loc_12CB39E:           If (var_98 = "Misc Payment") Then
  loc_12CB3A7:             global_60 = "HTEXP"
  loc_12CB3B1:             Call Proc_31_37_115B848(MemVar_1F95044, var_98)
  loc_12CB3BC:           Else
  loc_12CB3C2:             global_60 = "HTSAL"
  loc_12CB3CC:             Call Proc_31_37_115B848(MemVar_1F95044, var_98)
  loc_12CB3D4:           End If
  loc_12CB3D4:         End If
  loc_12CB3D4:       End If
  loc_12CB3D4:     End If
  loc_12CB3D4:   End If
  loc_12CB3D4: End If
  loc_12CB3D4: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F18E94
  'Data Table: 4AD158
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F18DB0: On Error Goto loc_F18E8E
  loc_F18DB7: Set var_A4 = Me.ListView
  loc_F18E01: Set var_BC = Me.Txt
  loc_F18E07: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F18E0F: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F18E3B: Me.FrmList.Visible = False
  loc_F18E5D: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F18E6B: Set var_9C = Me.Txt
  loc_F18E71: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F18E79: var_A4.SetFocus
  loc_F18E8D: Exit Sub
  loc_F18E8E: ' Referenced from: F18DB0
  loc_F18E8E: Proc_6_60_E63754(var_C8)
  loc_F18E93: Exit Sub
End Sub

Private Sub DGAgAc_UnknownEvent_9 'EEB980
  'Data Table: 4AD158
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EEB8C9: Set var_A8 = Me.DGAgAc
  loc_EEB8CF: var_A8.Visible = False
  loc_EEB8F1: If (Me.var_A8.RecordCount > 0) Then
  loc_EEB914:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_EEB933:   Set var_B4 = Me.Txt
  loc_EEB939:   Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_EEB941:   var_B8.Text = CStr(var_B0.Value)
  loc_EEB957: End If
  loc_EEB962: Set var_A8 = Me.Txt
  loc_EEB968: Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(5))
  loc_EEB970: var_B0.SetFocus
  loc_EEB97C: Exit Sub
End Sub

Public Function MasterFormExitGet() '4AE020
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4AE02F
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EF79D4
  'Data Table: 4AD158
  Dim Me As Recordset15
  Dim var_A0 As Boolean
  loc_EF7906: On Error Goto loc_EF79CB
  loc_EF790F: Me.MoveFirst
  loc_EF7939: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_EF7961: Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_EF7972: Set var_A8 = Me.TopCtrl1
  loc_EF7978: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_EF7989: Set var_A8 = Me.TopCtrl1
  loc_EF798F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_EF79A0: Set var_A8 = Me.TopCtrl1
  loc_EF79A6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_EF79AE: var_A0 = False
  loc_EF79B7: Set var_A8 = Me.TopCtrl1
  loc_EF79BD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(var_A0)
  loc_EF79C5: Call Proc_31_33_1352C04(0)
  loc_EF79CA: Exit Sub
  loc_EF79CB: ' Referenced from: EF7906
  loc_EF79CB: Proc_6_60_E63754(var_A0)
  loc_EF79D0: Exit Sub
End Sub

Public Sub Proc_31_29_13E1228
  'Data Table: 4AD158
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_B4 As Field20
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_108 As String
  Dim unk_4AD172 As Connection15
  Dim var_9C As Recordset15
  Dim var_134 As Recordset15
  Dim var_12C As Fields15
  Dim var_128 As Variant
  Dim var_96 As Integer
  loc_13E0879: var_D4 = "SELECT SubGroup.Name as CrAcName, ExpSheet.* FROM ExpSheet LEFT JOIN SubGroup ON ExpSheet.AgAc = SubGroup.SubCode Where DocID='"
  loc_13E0884: var_B0 = "DocID"
  loc_13E0893: var_A0 = Me.Fields
  loc_13E08C2: unk_4AD172.Execute CStr(var_D4 & var_A0.Item(var_B0).Value & "'"), var_128, -1
  loc_13E08CD: Set var_9C = var_12C
  loc_13E08ED: var_130 = var_9C.RecordCount
  loc_13E08FB: If (var_130 = 0) Then
  loc_13E08FE:   Exit Sub
  loc_13E08FF: End If
  loc_13E090C: Call Proc_31_30_FE2470(New, var_A0)
  loc_13E0914: Set var_8C = var_A0
  loc_13E091A: Set var_134 = var_8C 
  loc_13E0929: var_134.AddNew var_B0, var_D4
  loc_13E097D: var_134.Fields.Item("VNo").Value = CVar(CStr(var_9C.Fields.Item("VNo").Value))
  loc_13E09F7: var_134.Fields.Item("VDate").Value = Format(CVar(var_9C.Fields.Item("VDate")), "dd/MMM/yyyy")
  loc_13E0A40: var_F4 = "Misc Receipt"
  loc_13E0A8A: var_134.Fields.Item("VType").Value = IIf((var_9C.Fields.Item("vType").Value = "HTSAL"), var_F4, "Misc Payment")
  loc_13E0B1F: var_134.Fields.Item("AgAc").Value = CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("CrAcName")), 1)), 3, 0)), &H32))
  loc_13E0B67: var_E4 = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("Remarks")), 1)) 'String
  loc_13E0BCD: var_134.Fields.Item("Particulars").Value = CVar(Proc_6_45_EADFB8(CStr(StrConv(Left(Trim(var_E4), &H96), 3, 0)), 150))
  loc_13E0C13: Proc_6_47_EF6560(var_E4, CVar(var_9C.Fields.Item("Amount")))
  loc_13E0C3B: var_134.Fields.Item("Amount").Value = var_E4
  loc_13E0C76: Proc_6_39_E7D3A0(var_E4, CVar(var_9C.Fields.Item("Amount")))
  loc_13E0CDC: var_134.Fields.Item("Charge").Value = StrConv(CVar(Proc_6_43_1003B24(CSng(Abs(var_E4)), vbNullString)), 3, 0)
  loc_13E0D39: var_12C = var_134.Fields
  loc_13E0D49: var_12C.Item("Uname").Value = CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_Name")), vbNullString))
  loc_13E0D61: var_D4 = CVar(MemVar_1F950C8) 'String
  loc_13E0D68: var_B0 = "LUName"
  loc_13E0D7C: var_B4 = var_134.Fields.Item(var_B0)
  loc_13E0D84: var_B4.Value = var_D4
  loc_13E0D9B: var_134.Update var_B0, var_D4
  loc_13E0DA3: var_90 = "ExpenseRep"
  loc_13E0DA9: var_94 = "Expense Report"
  loc_13E0DAE: var_96 = 0
  loc_13E0DD5: Set var_A0 = var_8C 
  loc_13E0DDC: CreateFieldDefFile(var_A0, MemVar_1F950B4 & "\" & var_90 & ".ttx", &HFF)
  loc_13E0E0A: var_108 = "\" & var_90
  loc_13E0E1E: Call 0.Method_arg_1C (MemVar_1F950B4 & var_108 & ".RPT", var_B0, var_A0)
  loc_13E0E29: MemVar_1F951E8 = var_A0
  loc_13E0E52: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_D4)
  loc_13E0E5A: Call 0.Method_arg_2C (var_F4, var_96)
  loc_13E0E68: Call 0.Method_arg_150 (var_12C)
  loc_13E0E7E: Call 0.Method_arg_90 (var_A0, var_130)
  loc_13E0E86: Call 0.Method_arg_24 (var_98)
  loc_13E0E92: For var_184 =  To CInt(var_130): 1 = var_184 'Integer
  loc_13E0EAB:   Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E0EB3:   Call 0.Method_arg_20 (var_B4)
  loc_13E0EBB:   Call 0.Method_arg_30 (var_108)
  loc_13E0ED1:   var_194 = Ucase(CVar(var_108)) 'Variant
  loc_13E0F01:   If (var_194 = Ucase("comp_name")) Then
  loc_13E0F25:     Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E0F2D:     Call 0.Method_arg_20 (var_B4)
  loc_13E0F35:     Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_13E0F4B:   Else
  loc_13E0F6D:     If (var_194 = Ucase("comp_add1")) Then
  loc_13E0F91:       Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E0F99:       Call 0.Method_arg_20 (var_B4)
  loc_13E0FA1:       Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_13E0FB7:     Else
  loc_13E0FD9:       If (var_194 = Ucase("comp_pin")) Then
  loc_13E0FFD:         Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E1005:         Call 0.Method_arg_20 (var_B4)
  loc_13E100D:         Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_13E1023:       Else
  loc_13E1045:         If (var_194 = Ucase("comp_GSTIN")) Then
  loc_13E1069:           Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E1071:           Call 0.Method_arg_20 (var_B4)
  loc_13E1079:           Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_13E108F:         Else
  loc_13E10B1:           If (var_194 = Ucase("comp_tin")) Then
  loc_13E10D5:             Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E10DD:             Call 0.Method_arg_20 (var_B4)
  loc_13E10E5:             Call 0.Method_arg_38 ("'" & MemVar_1F95150 & "'")
  loc_13E10FB:           Else
  loc_13E111D:             If (var_194 = Ucase("Title")) Then
  loc_13E1141:               Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E1149:               Call 0.Method_arg_20 (var_B4)
  loc_13E1151:               Call 0.Method_arg_38 ("'Phone No. " & MemVar_1F95140 & "'")
  loc_13E1167:             Else
  loc_13E1189:               If (var_194 = Ucase("BetweenDate")) Then
  loc_13E118C:                 GoTo loc_13E11DC
  loc_13E118F:               End If
  loc_13E11B1:               If (var_194 = Ucase("Dater")) Then
  loc_13E11B4:                 GoTo loc_13E11DC
  loc_13E11B7:               End If
  loc_13E11D9:               If (var_194 = Ucase("Pager")) Then
  loc_13E11DC:                 ' Referenced from:             13E11B4
  loc_13E11DC:                 ' Referenced from:             13E118C
  loc_13E11DC:               End If
  loc_13E11DC:             End If
  loc_13E11DC:           End If
  loc_13E11DC:         End If
  loc_13E11DC:       End If
  loc_13E11DC:     End If
  loc_13E11DC:   End If
  loc_13E11DF: Next var_184 'Integer
  loc_13E11E9: Set var_B4 = Nothing
  loc_13E11FD: Set var_A0 = MemVar_1F951E8 
  loc_13E1209: Proc_6_99_1484404(var_A0, var_96, var_94)
  loc_13E1214: MemVar_1F951E8 = var_A0
  loc_13E1221: Set var_134 = Nothing 
  loc_13E1225: Exit Sub
End Sub

Public Sub Proc_31_30_FE2470(arg_C) 'FE2470
  'Data Table: 4AD158
  Dim var_8C As Recordset15
  loc_FE2291: Set var_8C = arg_C 
  loc_FE22B9: var_8C.Fields.Append "VNo", &HC8, &HA
  loc_FE22E5: var_8C.Fields.Append "VDate", &HC8, &HB
  loc_FE2311: var_8C.Fields.Append "VType", &HC8, &H32
  loc_FE233D: var_8C.Fields.Append "AgAc", &HC8, &H4B
  loc_FE2369: var_8C.Fields.Append "Particulars", &HC8, &H96
  loc_FE2395: var_8C.Fields.Append "Amount", &HC8, &HB
  loc_FE23C1: var_8C.Fields.Append "Charge", &HC8, &HC8
  loc_FE23ED: var_8C.Fields.Append "Uname", &HC8, &HA
  loc_FE2419: var_8C.Fields.Append "LUName", &HC8, &HA
  loc_FE2429: var_8C.CursorType = 3
  loc_FE2436: var_8C.LockType = 3
  loc_FE2455: var_8C.Open var_A0, var_B0, -1
  loc_FE245C: Set var_8C = Nothing 
  loc_FE2463: Set var_88 = arg_C 
  loc_FE2467: Proc_31_30_FE2470 = -1
End Sub

Public Sub Proc_31_31_F8F6AC
  'Data Table: 4AD158
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_4AD172 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_F8F56D: Set var_8C = Me.TopCtrl1
  loc_F8F573: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_F8F57B: var_A0 = CStr()
  loc_F8F58C: If (var_A0 = "Add") Then
  loc_F8F5BC:   Set var_8C = Me.Txt
  loc_F8F5C2:   Call 0.Method_Proc_31_31_F8F6AC0 (CInt(0), var_A4, var_A0, "Select Count(*) From ExpSheet Where DocID='", var_9C, -1)
  loc_F8F5E3:   unk_4AD172.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_F8F5F3:    = var_C4.Item()
  loc_F8F5FB:    = var_D8.Value
  loc_F8F628:   If (var_A4.Text.Fields > 0) Then
  loc_F8F631:     Call 0.Method_arg_50 (var_A0)
  loc_F8F652:     MsgBox("Duplicate Serial No.", &H40, CVar(var_A0), var_108, var_118)
  loc_F8F668:     Call Proc_31_37_115B848(MemVar_1F95044)
  loc_F8F67B:     Set var_8C = Me.Txt
  loc_F8F681:     Call 0.Method_Proc_31_31_F8F6AC0 (CInt(0), var_A4)
  loc_F8F689:     var_A4.Text = var_A0
  loc_F8F69D:     Proc_31_31_F8F6AC = 0
  loc_F8F6A3:   End If
  loc_F8F6A3: End If
  loc_F8F6A3: Proc_31_31_F8F6AC = var_A0
End Sub

Public Sub Proc_31_32_EE355C
  'Data Table: 4AD158
  Dim var_98 As Variant
  Dim var_8C As Label
  loc_EE34A2: Set var_8C = Me.Txt
  loc_EE34A8: Call 0.Method_Proc_31_32_EE355CC (var_8E, var_86)
  loc_EE34B8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE34CE:   Set var_8C = Me.Txt
  loc_EE34D4:   Call 0.Method_Proc_31_32_EE355C0 (CInt(var_86), var_98)
  loc_EE34DC:   var_98.Text = vbNullString
  loc_EE34F8:   Set var_8C = Me.Txt
  loc_EE34FE:   Call 0.Method_Proc_31_32_EE355C0 (CInt(var_86), var_98)
  loc_EE3506:   var_98.Tag = vbNullString
  loc_EE3515: Next var_92 'Byte
  loc_EE352C: Set var_8C = Me.txtM
  loc_EE3532: Call 0.Method_Proc_31_32_EE355C0 (CInt(5), var_98)
  loc_EE353A: var_98.defaultText = vbNullString
  loc_EE3553: Me.LblVPrefix.Caption = vbNullString
  loc_EE355B: Exit Sub
End Sub

Public Sub Proc_31_33_1352C04
  'Data Table: 4AD158
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim unk_4AD172 As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Variant
  Dim var_1E8 As Recordset15
  Dim var_128 As Variant
  Dim var_11C As Variant
  loc_1352430: On Error Goto loc_1352BFC
  loc_135244A: If (Me.RecordCount > 0) Then
  loc_135245A:   var_C8 = "SELECT SubGroup.Name as CrAcName, ExpSheet.* FROM ExpSheet LEFT JOIN SubGroup ON ExpSheet.AgAc = SubGroup.SubCode Where DocID='"
  loc_13524A3:   unk_4AD172.Execute CStr(var_C8 & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_13524AE:   Set var_88 = var_120
  loc_1352502:   var_120 = var_88.Fields
  loc_135256B:   var_18C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_13525B0:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_18C)))
  loc_135262A:   var_128 = var_88.Fields.Item("U_AE")
  loc_135268B:   var_18C = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_128)) = "E"), "Last Update : ", "entdt : "))
  loc_13526D0:   Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_135270B:   Set var_1E8 = var_88 
  loc_135274B:   If (var_88.Fields.Item("vType").Value = "HTSAL") Then
  loc_1352768:     var_A8 = var_88.Fields.Item("vType")
  loc_135277F:     global_60 = CStr(var_A8.Value)
  loc_135279E:     Set var_94 = Me.Txt
  loc_13527A4:     Call 0.Method_Proc_31_33_1352C040 (CInt(6), var_A8)
  loc_13527AC:     var_A8.Text = "Misc Rect."
  loc_13527BB:   Else
  loc_13527F7:     If (var_88.Fields.Item("vType").Value = "HTEXP") Then
  loc_1352814:       var_A8 = var_88.Fields.Item("vType")
  loc_135282B:       global_60 = CStr(var_A8.Value)
  loc_135284A:       Set var_94 = Me.Txt
  loc_1352850:       Call 0.Method_Proc_31_33_1352C040 (CInt(6), var_A8)
  loc_1352858:       var_A8.Text = "Misc Payment"
  loc_1352864:     End If
  loc_1352864:   End If
  loc_135289D:   Set var_120 = Me.Txt
  loc_13528A3:   Call 0.Method_Proc_31_33_1352C040 (CInt(0), var_128)
  loc_13528AB:   var_128.Text = CStr(var_1E8.Fields.Item("DocID").Value)
  loc_13528F9:   Me.LblVPrefix.Caption = CStr(var_1E8.Fields.Item("vPrefix").Value)
  loc_135295F:   Set var_120 = Me.Txt
  loc_1352965:   Call 0.Method_Proc_31_33_1352C040 (CInt(2), var_128, CStr(Format(CVar(var_1E8.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_135296D:   var_128.Text = 1
  loc_13529C0:   Set var_120 = Me.Txt
  loc_13529C6:   Call 0.Method_Proc_31_33_1352C040 (CInt(1), var_128)
  loc_13529CE:   var_128.Text = CStr(var_1E8.Fields.Item("VNo").Value)
  loc_1352A37:   Set var_120 = Me.txtM
  loc_1352A3D:   Call 0.Method_Proc_31_33_1352C040 (CInt(5), var_128, CVar(CStr(Format(CVar(var_1E8.Fields.Item("VTIME")), "hh:mm"))))
  loc_1352A45:   var_128.defaultText = 1
  loc_1352AB0:   Set var_120 = Me.Txt
  loc_1352AB6:   Call 0.Method_Proc_31_33_1352C040 (CInt(3), var_128, CStr(Format(CVar(var_1E8.Fields.Item("Amount")), "0.00")), 1)
  loc_1352ABE:   var_128.Text = 1
  loc_1352B0E:   Set var_120 = Me.Txt
  loc_1352B14:   Call 0.Method_Proc_31_33_1352C040 (CInt(4), var_128)
  loc_1352B1C:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("Remarks")), 1)
  loc_1352B66:   Set var_120 = Me.Txt
  loc_1352B6C:   Call 0.Method_Proc_31_33_1352C040 (CInt(5), var_128)
  loc_1352B74:   var_128.Tag = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("AgAc")))
  loc_1352BBE:   Set var_120 = Me.Txt
  loc_1352BC4:   Call 0.Method_Proc_31_33_1352C040 (CInt(5), var_128)
  loc_1352BCC:   var_128.Text = Proc_6_38_E69628(CVar(var_1E8.Fields.Item("CrAcName")))
  loc_1352BE2:   Set var_1E8 = Nothing 
  loc_1352BE9: Else
  loc_1352BE9:   Call Proc_31_32_EE355C(1)
  loc_1352BEE: End If
  loc_1352BEE: Call Proc_31_35_EB7C0C()
  loc_1352BF8: Set var_88 = Nothing
  loc_1352BFB: Exit Sub
  loc_1352BFC: ' Referenced from: 1352430
  loc_1352BFC: Proc_6_60_E63754()
  loc_1352C01: Exit Sub
End Sub

Public Sub Proc_31_34_F17DA0(arg_C) 'F17DA0
  'Data Table: 4AD158
  Dim var_98 As Variant
  loc_F17CAE: Set var_8C = Me.Txt
  loc_F17CB4: Call 0.Method_Proc_31_34_F17DA0C (var_8E, var_86)
  loc_F17CC4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F17CDA:   Set var_8C = Me.Txt
  loc_F17CE0:   Call 0.Method_Proc_31_34_F17DA00 (CInt(var_86), var_98)
  loc_F17CE8:   var_98.Enabled = arg_C
  loc_F17CF7: Next var_92 'Byte
  loc_F17D0A: Set var_8C = Me.Txt
  loc_F17D10: Call 0.Method_Proc_31_34_F17DA00 (CInt(2), var_98)
  loc_F17D18: var_98.Enabled = False
  loc_F17D31: Set var_8C = Me.Txt
  loc_F17D37: Call 0.Method_Proc_31_34_F17DA00 (CInt(1), var_98)
  loc_F17D3F: var_98.Enabled = False
  loc_F17D5B: Set var_8C = Me.txtM
  loc_F17D61: Call 0.Method_Proc_31_34_F17DA00 (CInt(5), var_98)
  loc_F17D69: var_98.Enabled = False
  loc_F17D82: Set var_8C = Me.Txt
  loc_F17D88: Call 0.Method_Proc_31_34_F17DA00 (CInt(0), var_98)
  loc_F17D90: var_98.Enabled = False
  loc_F17D9C: Exit Sub
  loc_F17D9F:  = 
End Sub

Public Sub Proc_31_35_EB7C0C
  'Data Table: 4AD158
  loc_EB7B88: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_EB7B9A:   Me.DGAgAc.Visible = False
  loc_EB7BA2: End If
  loc_EB7BBD: If (Me.FrmList.Visible = &HFF) Then
  loc_EB7BCC:   Me.FrmList.Visible = False
  loc_EB7BD4: End If
  loc_EB7BF0: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB7C02:   Me.FGPoint.Visible = False
  loc_EB7C0A: End If
  loc_EB7C0A: Exit Sub
End Sub

Public Sub Proc_31_36_E913F0(arg_C) 'E913F0
  'Data Table: 4AD158
  Dim var_10C As TextBox
  loc_E91384: Call Proc_31_35_EB7C0C()
  loc_E913C0: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E913C3:   Call TopCtrl1_UnknownEvent_16()
  loc_E913CB: Else
  loc_E913D5:   Set var_108 = Me.Txt
  loc_E913DB:   Call 0.Method_Proc_31_36_E913F00 (arg_C)
  loc_E913E3:   var_10C.SetFocus
  loc_E913EF: End If
  loc_E913EF: Exit Sub
End Sub

Public Sub Proc_31_37_115B848
  'Data Table: 4AD158
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
  loc_115B4E0: var_90 = global_60
  loc_115B4F7: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_115B51A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115B528: Set var_B4 = Me.Txt
  loc_115B52E: Call 0.Method_Proc_31_37_115B8480 (CInt(2), var_B8, var_E8)
  loc_115B53D: Proc_6_7_F26918(var_D8, CVar(var_B8), var_13C)
  loc_115B545: var_F8 = -1 & var_D8 
  loc_115B559: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115B564: Set var_8C = var_140
  loc_115B5A0: If (var_8C.RecordCount <= 0) Then
  loc_115B5BC:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115B5CF:   var_88 = vbNullString
  loc_115B5D2:   Proc_31_37_115B848 = 
  loc_115B5D8: End If
  loc_115B5EC: If (var_8C.RecordCount > 0) Then
  loc_115B62B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115B648:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115B659:     var_9C = CStr(var_B8.Value)
  loc_115B674:     Set var_B4 = Me.Txt
  loc_115B67A:     Call 0.Method_Proc_31_37_115B8480 (CInt(1), var_B8)
  loc_115B690:     var_94 = CLng(Val(var_B8.Text))
  loc_115B6A0:   Else
  loc_115B6CB:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115B6F2:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115B707:     var_D8 = (var_B8.Value + 1)
  loc_115B70D:     var_94 = CLng(var_D8)
  loc_115B71E:   End If
  loc_115B71E: End If
  loc_115B749: var_C8 = Space((5 - Len(var_90)))
  loc_115B751: var_E8 = (CVar(var_94 & Proc_6_45_EADFB8(MemVar_1F95070, 2, MemVar_1F9506C) & var_90) + var_B8.Value)
  loc_115B75B: var_F8 = (var_E8 + CVar(var_9C))
  loc_115B76C: var_118 = Space((5 - Len(var_9C)))
  loc_115B774: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115B78A: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115B792: var_188 = (var_13C + var_178)
  loc_115B79E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115B7A3: var_98 = CStr(var_1A8)
  loc_115B7D3: Me.LblVPrefix.Caption = var_9C
  loc_115B7E9: Set var_B4 = Me.Txt
  loc_115B7EF: Call 0.Method_Proc_31_37_115B8480 (CInt(0), var_B8)
  loc_115B7F7: var_B8.Text = var_98
  loc_115B816: Set var_B4 = Me.Txt
  loc_115B81C: Call 0.Method_Proc_31_37_115B8480 (CInt(1), var_B8)
  loc_115B824: var_B8.Text = CStr(var_94)
  loc_115B836: var_88 = var_98
  loc_115B83E: Set var_8C = Nothing
  loc_115B841: Proc_31_37_115B848 = var_94
End Sub

Public Sub Proc_31_38_EE3448
  'Data Table: 4AD158
  loc_EE3396: On Error Goto loc_EE33DC
  loc_EE33AE: Call 0.Method_arg_18C (var_8C)
  loc_EE33B6: Call var_8C.Show
  loc_EE33CB: Call 0.Method_arg_188 (var_B0)
  loc_EE33D3: var_88 = var_B0
  loc_EE33D6: Proc_31_38_EE3448 = 1
  loc_EE33DC: ' Referenced from: EE3396
  loc_EE33E4: Set var_8C = Err()
  loc_EE33EA: Call 0.Method_arg_1C (var_B4)
  loc_EE33FB: If (var_B4 <> 0) Then
  loc_EE3406:   Set var_8C = Err()
  loc_EE340C:   Call 0.Method_arg_2C (var_B0)
  loc_EE342D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE3440: End If
  loc_EE3440: Proc_31_38_EE3448 = 
End Sub
