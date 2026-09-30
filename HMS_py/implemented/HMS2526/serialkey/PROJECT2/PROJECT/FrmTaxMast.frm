VERSION 5.00
Begin VB.Form FrmTaxMast
  Caption = "Tax Master"
  BackColor = &HFFC0C0&
  ForeColor = &HC00000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFFC0C0&
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 15120
  ClientHeight = 9045
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3090
    Top = 3255
    Width = 4215
    Height = 285
    TabIndex = 6
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3090
    Top = 2940
    Width = 4215
    Height = 285
    TabIndex = 5
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 15120
    Height = 450
    TabIndex = 22
  End
  Begin DataGrid DGHelp
    Left = 10710
    Top = 2115
    Width = 4230
    Height = 2205
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGSundry
    Left = 10770
    Top = 3390
    Width = 4260
    Height = 2205
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
End
Begin DataGrid DGLedgerAc
  Left = 10725
  Top = 4755
  Width = 4230
  Height = 2220
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 7
End
Begin TextBox Txt
  Index = 4
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3090
  Top = 2310
  Width = 4215
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
Begin PictureBox Picture3
  Picture = "FrmTaxMast.frx":0
  Left = 13515
  Top = 1005
  Width = 300
  Height = 270
  Visible = 0   'False
  TabIndex = 15
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
End
Begin TextBox Txt
  Index = 3
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 6405
  Top = 1995
  Width = 900
  Height = 285
  Visible = 0   'False
  Text = "No"
  TabIndex = 2
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
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3090
  Top = 1995
  Width = 1035
  Height = 285
  TabIndex = 1
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
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3090
  Top = 1680
  Width = 4215
  Height = 285
  TabIndex = 0
  BorderStyle = 0 'None
  MaxLength = 25
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
  Left = 3090
  Top = 2625
  Width = 4215
  Height = 285
  TabIndex = 4
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
Begin MSFlexGrid FGPoint
  Left = 9765
  Top = 1185
  Width = 1980
  Height = 1440
  Visible = 0   'False
  TabIndex = 18
End
Begin Label LblLedgerAc
  Caption = "(Purchase)"
  Index = 8
  ForeColor = &H80&
  Left = 7335
  Top = 3255
  Width = 1005
  Height = 240
  TabIndex = 26
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
Begin Label LblLedgerAc
  Caption = "(Purchase)"
  Index = 7
  ForeColor = &H80&
  Left = 7335
  Top = 2940
  Width = 1005
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
Begin Label LblLedgerAc
  Caption = "Unregistered A/C"
  Index = 6
  ForeColor = &HC00000&
  Left = 1380
  Top = 3255
  Width = 1605
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
Begin Label LblLedgerAc
  Caption = "Payable A/C"
  Index = 5
  ForeColor = &HC00000&
  Left = 1380
  Top = 2940
  Width = 1170
  Height = 240
  TabIndex = 23
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
Begin Label LblUser
  Caption = "User"
  ForeColor = &HFF0000&
  Left = 1935
  Top = 5685
  Width = 2880
  Height = 255
  TabIndex = 21
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
  Left = 5310
  Top = 5685
  Width = 2790
  Height = 285
  TabIndex = 20
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
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = -30
  Top = 630
  Width = 180
  Height = 540
  TabIndex = 19
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
Begin Label LblLedgerAc
  Caption = "Sundry Name"
  Index = 4
  ForeColor = &HC00000&
  Left = 1380
  Top = 2310
  Width = 1290
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
Begin Label LblLedgerAc
  Caption = "(Y)es/(N)o"
  Index = 3
  ForeColor = &H80&
  Left = 7350
  Top = 1995
  Width = 885
  Height = 240
  Visible = 0   'False
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
Begin Label LblLedgerAc
  Caption = "Round Off"
  Index = 1
  ForeColor = &HC00000&
  Left = 4845
  Top = 2010
  Width = 945
  Height = 240
  Visible = 0   'False
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
Begin Label LblLedgerAc
  Caption = "Short Name"
  Index = 0
  ForeColor = &HC00000&
  Left = 1380
  Top = 1995
  Width = 1125
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
Begin Label LblSysYN
  Caption = "SysYN"
  ForeColor = &H80&
  Left = 7380
  Top = 1680
  Width = 585
  Height = 240
  TabIndex = 11
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
  Caption = "Tax Name"
  Index = 0
  ForeColor = &HC00000&
  Left = 1380
  Top = 1680
  Width = 975
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
Begin Label LblLedgerAc
  Caption = "Ledger A/C"
  Index = 2
  ForeColor = &HC00000&
  Left = 1380
  Top = 2625
  Width = 1065
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

Attribute VB_Name = "FrmTaxMast"


Private Sub Form_Load() '10A80F4
  'Data Table: 493FCC
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_493FE1 As Connection15
  Dim var_B4 As Variant
  loc_10A7E2C: On Error Goto loc_10A80AF
  loc_10A7E3E: Me.LblUser.Left = CDbl(13500)
  loc_10A7E55: Me.LblUser.Top = CDbl(7800)
  loc_10A7E6C: Me.LblLDt.Top = CDbl(8160)
  loc_10A7E7D: Set var_8C = Me.LblLDt
  loc_10A7E83: var_8C.Left = CDbl(13500)
  loc_10A7E92: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10A7E97: Call Proc_15_38_F8C20C()
  loc_10A7EB7: var_94 = "SELECT Code,Name FROM REVMAST WHERE FIELDTYPE='T' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_10A7EC0: unk_493FE1.Execute var_94, var_B4, -1
  loc_10A7EEF: CVarUnk
  loc_10A7EF4: VerifyVarObj
  loc_10A7F00: LateIdStAd
  loc_10A7F29: var_94 = "SELECT S.SubCode as Code,S.Name FROM SubGroup S WHERE S.ActiveYN=1 And (S.LOGSITE_CODE='" & MemVar_1F95078 & "' or S.LOGSITE_CODE='HO') ORDER BY S.Name"
  loc_10A7F32: unk_493FE1.Execute var_94, var_B4, -1
  loc_10A7F61: CVarUnk
  loc_10A7F66: VerifyVarObj
  loc_10A7F72: LateIdStAd
  loc_10A7FA4: unk_493FE1.Execute "SELECT Code,Name FROM SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_10A7FD3: CVarUnk
  loc_10A7FD8: VerifyVarObj
  loc_10A7FE4: LateIdStAd
  loc_10A8006: var_90 = "SELECT R.*,R.Code as SearchCode,R.ACCode as LedgerCode,S.Name as LedgerName,R.PayableAc as PayableAcCode,SP.Name as PayableAcName,R.UnregisteredAc as UnregisteredAcCode,SU.Name as UnregisteredAcName,SundryMast.Code as SundryCode,SundryMast.Name as SundryName FROM RevMast R Left join Subgroup S on S.SubCode=R.ACCode Left Join SubGroup SP On SP.SubCode=R.PayableAc Left Join SubGroup SU On SU.SubCode=R.UnregisteredAc Left Join SundryMast on SundryMast.Code=R.Sundry WHERE FIELDTYPE='T'  AND (R.LOGSITE_CODE='" & MemVar_1F95078
  loc_10A8016: unk_493FE1.Execute var_90 & "' or R.LOGSITE_CODE='HO') order by R.Name", var_B4, -1
  loc_10A804C: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B("AEDP")
  loc_10A805A: Call 0.Method_arg_50 (var_90, Me.TopCtrl1, Me.TopCtrl1, Me.DGLedgerAc, Me.TopCtrl1, Me.TopCtrl1)
  loc_10A806A: Set var_8C = Me.TopCtrl1
  loc_10A8070: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(CVar(var_90))
  loc_10A8090: var_90 = "INI"
  loc_10A809E: Call Proc_15_31_E7A25C(Proc_5_1_100EC1C(var_90, Me, Me.DGSundry, Me.DGHelp), Me, Me)
  loc_10A80A9: Call Proc_15_33_1378220(Me)
  loc_10A80AE: Exit Sub
  loc_10A80AF: ' Referenced from: 10A7E2C
  loc_10A80B7: Set var_8C = Err()
  loc_10A80BD: Call 0.Method_arg_2C (var_90)
  loc_10A80DE: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_10A80F1: Exit Sub
  loc_10A80F2: Exit Sub
End Sub

Private Sub Form_Resize() 'ED7308
  'Data Table: 493FCC
  Dim var_8C As Label
  Dim arg_5438 As Double
  loc_ED7266: Call 0.Method_arg_50 (var_88)
  loc_ED7278: Me.LblFormCaption.Caption = var_88
  loc_ED7291: Me.LblFormCaption.Left = CDbl(0)
  loc_ED729D: Set var_A0 = Me.TopCtrl1
  loc_ED72A3: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010006()
  loc_ED72B0: Set var_8C = Me.TopCtrl1
  loc_ED72B6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010004()
  loc_ED72D0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED72EB: Call 0.Method_arg_100 (var_B8)
  loc_ED72FD: Me.LblFormCaption.Width = var_B8
  loc_ED7305: Exit Sub
  loc_ED7306: arg_5438 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E62248
  'Data Table: 493FCC
  loc_E62207: Set global_52 = Nothing
  loc_E62219: Set global_56 = Nothing
  loc_E6222B: Set global_60 = Nothing
  loc_E6223D: Set global_68 = Nothing
  loc_E62244: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B3F0
  'Data Table: 493FCC
  loc_E2B3C8: On Error Goto loc_E2B3E7
  loc_E2B3DF: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B3E7: ' Referenced from: E2B3C8
  loc_E2B3E7: Proc_6_60_E63754(Shift)
  loc_E2B3EC: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_9 'FB0180
  'Data Table: 493FCC
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FB0003: Me.DGLedgerAc.Visible = False
  loc_FB0022: If (Me.RecordCount > 0) Then
  loc_FB007E:   Set var_CC = Me.Txt
  loc_FB0084:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(Val(CStr(Me.DGLedgerAc.Tag))), var_D0)
  loc_FB008C:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FB00B0:   Set var_B4 = Me.DGLedgerAc
  loc_FB00C6:   var_EC = Val(CStr(var_B4.Tag))
  loc_FB0105:   Set var_CC = Me.Txt
  loc_FB010B:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(var_EC), var_D0, CStr(Me.Fields.Item("Name").Value))
  loc_FB0113:   var_D0.Text = var_EC
  loc_FB0133: End If
  loc_FB015B: Set var_B0 = Me.Txt
  loc_FB0161: Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(Val(CStr(Me.DGLedgerAc.Tag))), var_B4)
  loc_FB0169: var_B4.SetFocus
  loc_FB017D: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_1F 'EABD18
  'Data Table: 493FCC
  loc_EABCAE: Proc_6_153_E91D24(Me.DGLedgerAc, arg_14)
  loc_EABCE2: Set var_A8 = Me.FGPoint
  loc_EABCFE: Proc_6_138_106E830(Me.DGLedgerAc, global_60, CInt(Val(CStr(Me.DGLedgerAc.Tag))))
  loc_EABD14: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E87A08
  'Data Table: 493FCC
  loc_E879B4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E879B7:   Call DGHelp_UnknownEvent_9()
  loc_E879BC: End If
  loc_E879D8: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_E879DB:   Call DGLedgerAc_UnknownEvent_9()
  loc_E879E0: End If
  loc_E879FC: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_E879FF:   Call DGSundry_UnknownEvent_9()
  loc_E87A04: End If
  loc_E87A04: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 'F44974
  'Data Table: 493FCC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4486B: Me.DGSundry.Visible = False
  loc_F4488A: If (Me.RecordCount > 0) Then
  loc_F448C9:   Set var_B4 = Me.Txt
  loc_F448CF:   Call 0.Method_DGSundry_UnknownEvent_90 (CInt(4), var_B8)
  loc_F448D7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4490A:   var_B0 = Me.Fields.Item("Code")
  loc_F44929:   Set var_B4 = Me.Txt
  loc_F4492F:   Call 0.Method_DGSundry_UnknownEvent_90 (CInt(4), var_B8)
  loc_F44937:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4494D: End If
  loc_F44958: Set var_A8 = Me.Txt
  loc_F4495E: Call 0.Method_DGSundry_UnknownEvent_90 (CInt(4))
  loc_F44966: var_B0.SetFocus
  loc_F44972: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_1F 'E70074
  'Data Table: 493FCC
  loc_E70032: Proc_6_153_E91D24(Me.DGSundry, arg_14)
  loc_E70049: Set var_8C = Me.FGPoint
  loc_E70065: Proc_6_138_106E830(Me.DGSundry, global_68, CInt(4))
  loc_E70073: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F4B094
  'Data Table: 493FCC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4AF8B: Me.DGHelp.Visible = False
  loc_F4AFAA: If (Me.RecordCount > 0) Then
  loc_F4AFE9:   Set var_B4 = Me.Txt
  loc_F4AFEF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4AFF7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4B02A:   var_B0 = Me.Fields.Item("Code")
  loc_F4B049:   Set var_B4 = Me.Txt
  loc_F4B04F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4B057:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4B06D: End If
  loc_F4B078: Set var_A8 = Me.Txt
  loc_F4B07E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F4B086: var_B0.SetFocus
  loc_F4B092: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E71828
  'Data Table: 493FCC
  loc_E717E6: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E717FD: Set var_8C = Me.FGPoint
  loc_E71819: Proc_6_138_106E830(Me.DGHelp, global_56, CInt(0))
  loc_E71827: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFB444
  'Data Table: 493FCC
  Dim var_94 As TextBox
  Dim var_8C As Label
  Dim arg_5438 As String
  loc_EFB378: On Error Goto loc_EFB3FE
  loc_EFB37B: Call Proc_15_32_E78EC4()
  loc_EFB395: var_88 = "ADD"
  loc_EFB3A3: Call Proc_15_31_E7A25C(Proc_5_1_100EC1C(var_88, Me))
  loc_EFB3B9: Set var_8C = Me.Txt
  loc_EFB3BF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFB3C7: var_94.SetFocus
  loc_EFB3E0: Me.LblUser.Caption = vbNullString
  loc_EFB3F5: Me.LblLDt.Caption = vbNullString
  loc_EFB3FD: Exit Sub
  loc_EFB3FE: ' Referenced from: EFB378
  loc_EFB406: Set var_8C = Err()
  loc_EFB40C: Call 0.Method_arg_2C (var_88)
  loc_EFB42D: MsgBox(CVar(var_88), &H40, "Information", var_E4, var_104)
  loc_EFB440: Exit Sub
  loc_EFB442: arg_5438 = CStr(global_52)
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBAC74
  'Data Table: 493FCC
  loc_EBABE0: On Error Goto loc_EBAC6B
  loc_EBAC1A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBAC29:   Set var_110 = Me
  loc_EBAC40:   Call Proc_15_31_E7A25C(Proc_5_1_100EC1C("INI", var_110))
  loc_EBAC4B:   Call Proc_15_33_1378220(global_52)
  loc_EBAC53: Else
  loc_EBAC59:   Call 0.Method_arg_1E8 (var_110)
  loc_EBAC61:   Call var_110.SetFocus
  loc_EBAC6A: End If
  loc_EBAC6A: Exit Sub
  loc_EBAC6B: ' Referenced from: EBABE0
  loc_EBAC6B: Proc_6_60_E63754()
  loc_EBAC70: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11E1ED8
  'Data Table: 493FCC
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_B8 As String
  Dim unk_493FE1 As Connection15
  loc_11E1A88: On Error Goto loc_11E1E89
  loc_11E1A99: If (Proc_183_56_FE8B08(global_52) = &HFF) Then
  loc_11E1A9C:   Exit Sub
  loc_11E1A9D: End If
  loc_11E1ACF: var_D8 = "Tax Name"
  loc_11E1B17: If (Proc_6_108_101061C(MemVar_1F95044, "TaxStru", "TaxCode", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_11E1B1A:   Exit Sub
  loc_11E1B1B: End If
  loc_11E1B5A: var_FC = "select SysYN From REVMAST Where Code='" & Me.Fields.Item("Code").Value 
  loc_11E1B63: var_11C = var_FC & "'" 
  loc_11E1B71: unk_493FE1.Execute CStr(var_11C), var_13C, -1
  loc_11E1B7C: Set var_98 = var_140
  loc_11E1B9F: var_D4 = Me.Recordset15.RecordCount
  loc_11E1BAD: If (var_D4 > 0) Then
  loc_11E1BEF:   If (Me.Recordset15.Fields.Item("SysYN").Value = "Y") Then
  loc_11E1C0B:     MsgBox("SYSTEM ENTRY CAN'T BE DELETED", 0, var_FC, var_11C, var_13C)
  loc_11E1C1B:     Exit Sub
  loc_11E1C1C:   End If
  loc_11E1C1C: End If
  loc_11E1C53: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_11C, var_13C) = 6) Then
  loc_11E1C5F:   unk_493FE1.BeginTrans var_D4
  loc_11E1C75:   var_94 = Me.Bookmark 'Variant
  loc_11E1CC1:   var_11C = "Delete From RevMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_11E1CCF:   unk_493FE1.Execute CStr(var_11C), var_13C, -1
  loc_11E1D1A:   var_16C = 0
  loc_11E1D2D:   var_164 = 0
  loc_11E1D38:   var_160 = 0
  loc_11E1D4B:   var_158 = 0
  loc_11E1D56:   var_154 = 0
  loc_11E1D69:   var_14C = 0
  loc_11E1DA9:   var_B8 = "RevMast"
  loc_11E1DB2:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B8, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_11E1DE0:   unk_493FE1.CommitTrans
  loc_11E1DF0:   Me.Requery -1
  loc_11E1E00:   Me.Requery -1
  loc_11E1E20:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11E1E2D:     Me.Bookmark = var_94
  loc_11E1E35:   Else
  loc_11E1E49:     If (Me.EOF = 0) Then
  loc_11E1E52:       Me.MoveLast
  loc_11E1E57:     End If
  loc_11E1E57:   End If
  loc_11E1E57:   Call Proc_15_33_1378220(var_14C, 0, var_154, var_158)
  loc_11E1E78:   Proc_5_0_1107AD0(&HFF, Me, global_52, 0)
  loc_11E1E80: End If
  loc_11E1E80: Exit Sub
  loc_11E1E86: Set var_98 = Nothing
  loc_11E1E89: ' Referenced from: 11E1A88
  loc_11E1E8F: unk_493FE1.RollbackTrans
  loc_11E1E9C: Set var_A0 = Err()
  loc_11E1EA2: Call 0.Method_arg_2C (var_B8, 0, var_160)
  loc_11E1EC3: MsgBox(CVar(var_B8), &H30, " Deletion Error ", var_11C, var_13C)
  loc_11E1ED6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F6445C
  'Data Table: 493FCC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F64338: On Error Goto loc_F64419
  loc_F64349: If (Proc_183_55_FE8490(global_52) = &HFF) Then
  loc_F6434C:   Exit Sub
  loc_F6434D: End If
  loc_F64364: If (Me.RecordCount > 0) Then
  loc_F6437C:   var_8C = "EDIT"
  loc_F6438A:   Call Proc_15_31_E7A25C(Proc_5_1_100EC1C(var_8C, Me))
  loc_F643A0:   Set var_90 = Me.Txt
  loc_F643A6:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F643AE:   var_98.SetFocus
  loc_F643BD: Else
  loc_F643DE:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F643EE: End If
  loc_F643FB: Me.LblUser.Caption = vbNullString
  loc_F64410: Me.LblLDt.Caption = vbNullString
  loc_F64418: Exit Sub
  loc_F64419: ' Referenced from: F64338
  loc_F64421: Set var_90 = Err()
  loc_F64427: Call 0.Method_arg_2C (var_8C)
  loc_F64448: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F6445B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E181D4
  'Data Table: 493FCC
  loc_E181C9: Me.Global.Unload Me
  loc_E181D1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F28BB8
  'Data Table: 493FCC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  Dim TopCtrl1_UnknownEvent_FE00 As Variant
  loc_F28AB8: On Error Goto loc_F28B50
  loc_F28AC4: var_88 = Me.RecordCount
  loc_F28AD2: If (var_88 <= 0) Then
  loc_F28ADB:   var_B8 = "Information"
  loc_F28AF6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F28B06:   Exit Sub
  loc_F28B07: End If
  loc_F28B15: MemVar_1F950E4 = "Select RevMast.Code As SearchCode,RevMast.Name FROM RevMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and FieldType='T' Order by RevMast.Name"
  loc_F28B22: MemVar_1F95120 = Me
  loc_F28B29: var_10C = "3000"
  loc_F28B2F: Proc_6_126_F1C850(var_10C)
  loc_F28B4A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F28B4F: Exit Sub
  loc_F28B50: ' Referenced from: F28AB8
  loc_F28B58: Set var_110 = Err()
  loc_F28B5E: Call 0.Method_arg_1C (var_88)
  loc_F28B6F: If (var_88 <> 0) Then
  loc_F28B7A:   Set var_110 = Err()
  loc_F28B80:   Call 0.Method_arg_2C (var_10C)
  loc_F28BA1:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F28BB4: End If
  loc_F28BB4: Exit Sub
  loc_F28BB5: TopCtrl1_UnknownEvent_FE00 = CVar(MemVar_1F950E4) 'String
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E344A8
  'Data Table: 493FCC
  loc_E34498: Proc_5_0_1107AD0(&HFF, Me)
  loc_E344A0: Call Proc_15_33_1378220(global_52)
  loc_E344A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E34328
  'Data Table: 493FCC
  loc_E34318: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34320: Call Proc_15_33_1378220(global_52)
  loc_E34325: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E34388
  'Data Table: 493FCC
  loc_E34378: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34380: Call Proc_15_33_1378220(global_52)
  loc_E34385: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34448
  'Data Table: 493FCC
  loc_E34438: Proc_5_0_1107AD0(&HFF, Me)
  loc_E34440: Call Proc_15_33_1378220(global_52)
  loc_E34445: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1084EF4
  'Data Table: 493FCC
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_493FE1 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1084C5C: On Error Goto loc_1084EA8
  loc_1084C73: var_A0 = "SELECT R.*,S.SubCode as LedgerCode,S.Name as LedgerName,SM.Name as SundryName FROM RevMast R Left Join SundryMast SM On R.Sundry=SM.Code Left join Subgroup S on S.SubCode=R.ACCode where (R.LOGSITE_CODE='" & MemVar_1F95078
  loc_1084C83: unk_493FE1.Execute var_A0 & "' or R.LOGSITE_CODE='HO') and FieldType='T'", var_C4, -1
  loc_1084C8E: Set var_88 = var_C8
  loc_1084CA4: var_CC = var_88.RecordCount
  loc_1084CB2: If (var_CC = 0) Then
  loc_1084CCE:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1084CDE:   Exit Sub
  loc_1084CDF: End If
  loc_1084CEE: var_A4 = MemVar_1F950B4 & "\TaxMast.ttx"
  loc_1084CF5: Set var_C8 = var_88 
  loc_1084D01: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1084D0B: Set var_88 = var_C8
  loc_1084D11: var_B4 = CVar(var_12E) 'Integer
  loc_1084D14: var_98 = var_B4 'Variant
  loc_1084D30: var_A0 = MemVar_1F950B4 & "\TaxMast.RPT"
  loc_1084D39: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1084D44: MemVar_1F951E8 = var_C8
  loc_1084D5F: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1084D67: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1084D73: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1084D8C:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1084D94:   Call 0.Method_arg_20 (var_138)
  loc_1084D9C:   Call 0.Method_arg_30 (var_A0)
  loc_1084DE2:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1084DF8:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1084E00:     Call 0.Method_arg_20 (var_138)
  loc_1084E08:     Call 0.Method_arg_38 ("'Tax Master'")
  loc_1084E14:   End If
  loc_1084E17: Next var_132 'Integer
  loc_1084E35: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1084E3D: Call 0.Method_arg_2C (var_DC)
  loc_1084E4B: Call 0.Method_arg_150 (var_FC)
  loc_1084E56: Call 0.Method_arg_50 (var_A0)
  loc_1084E60: Set var_138 = Nothing
  loc_1084E7A: Set var_C8 = MemVar_1F951E8 
  loc_1084E86: Proc_6_99_1484404(var_C8, 0, var_A0)
  loc_1084E91: MemVar_1F951E8 = var_C8
  loc_1084EA4: Set var_88 = Nothing
  loc_1084EA7: Exit Sub
  loc_1084EA8: ' Referenced from: 1084C5C
  loc_1084EB0: Set var_C8 = Err()
  loc_1084EB6: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1084EC1: Call 0.Method_arg_50 (var_A4)
  loc_1084EDD: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1084EF0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3F854
  'Data Table: 493FCC
  Dim Me As Recordset15
  loc_E3F82B: Me.Requery -1
  loc_E3F83B: Me.Requery -1
  loc_E3F84B: Me.Requery -1
  loc_E3F850: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '136EB88
  'Data Table: 493FCC
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_493FE1 As Connection15
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
  Dim var_130 As String
  Dim var_128 As TextBox
  Dim var_13C As TextBox
  Dim var_158 As String
  Dim var_150 As TextBox
  Dim var_16C As String
  Dim var_184 As TextBox
  Dim var_118 As String
  Dim var_B0 As Variant
  Dim var_224 As TextBox
  Dim var_21C As Variant
  loc_136E3B8: On Error Goto loc_136EB36
  loc_136E3BF: var_86 = CByte(0) 'Byte
  loc_136E3CE: Set var_90 = Me.Txt
  loc_136E3D4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_136E3FD: If (Proc_183_19_E8E68C(var_94, "Name") = 0) Then
  loc_136E407:   Call Txt_GotFocus()
  loc_136E40C:   Exit Sub
  loc_136E40D: End If
  loc_136E418: Set var_90 = Me.Txt
  loc_136E41E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94)
  loc_136E447: If (Proc_183_19_E8E68C(var_94, "Name") = 0) Then
  loc_136E451:   Call Txt_GotFocus()
  loc_136E456:   Exit Sub
  loc_136E457: End If
  loc_136E462: Set var_90 = Me.Txt
  loc_136E468: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, CInt(0))
  loc_136E491: If (Proc_183_19_E8E68C(var_94, "Ledger A/C") = 0) Then
  loc_136E49B:   Call Txt_GotFocus()
  loc_136E4A0:   Exit Sub
  loc_136E4A1: End If
  loc_136E4A4: Call Proc_15_34_106E26C(var_9E, CInt(1))
  loc_136E4AF: If (var_9E = &HFF) Then
  loc_136E4B2:   Exit Sub
  loc_136E4B3: End If
  loc_136E4B7: Set var_90 = Me.TopCtrl1
  loc_136E4BD: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CInt(0))
  loc_136E4D6: If (CStr(var_94) = "Add") Then
  loc_136E4DF:   var_D4 = 0
  loc_136E4FC:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1 AS MyCode From RevMast WHERE SITE_CODE='" & MemVar_1F95070
  loc_136E503:   var_B4 = CStr(var_94) & "' AND SYSYN<>'Y'"
  loc_136E50C:   unk_493FE1.Execute var_B4, var_B0, -1
  loc_136E514:   var_90 = var_90.Fields
  loc_136E51C:   var_D4 = var_94.Item(var_94)
  loc_136E524:   var_98 = var_98.Value
  loc_136E55D:   var_F8 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_136E583:   var_E4 = Format(CStr(var_E4), "0000")
  loc_136E58B:   var_108 = (1 + var_E4)
  loc_136E596:   global_72 = CStr(var_108)
  loc_136E5AB: Else
  loc_136E5C8:   var_94 = Me.Fields.Item("Code")
  loc_136E5DF:   global_72 = CStr(var_94.Value)
  loc_136E5F0: End If
  loc_136E5F9: unk_493FE1.BeginTrans var_10C
  loc_136E602: var_86 = CByte(1) 'Byte
  loc_136E60A: Set var_90 = Me.TopCtrl1
  loc_136E610: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(1)
  loc_136E629: If (CStr(var_F8) = "Add") Then
  loc_136E643:   var_9C = "Insert Into RevMast(Code,Name,ShortName,ACCode,PayableAc,UnregisteredAc,Site_Code,SysYN,[Type],RoundOff,FieldType,U_Name,U_EntDt,U_AE,Sundry,LogSite_Code) Values('" & global_72
  loc_136E64A:   var_E8 = var_9C & "','"
  loc_136E65B:   Set var_90 = Me.Txt
  loc_136E661:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_E8)
  loc_136E669:   var_21C = var_94.Text
  loc_136E672:   var_110 = -1 & var_B4
  loc_136E679:   var_11C = var_110 & "','"
  loc_136E68A:   Set var_98 = Me.Txt
  loc_136E690:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_114, var_118)
  loc_136E698:   var_11C = var_114.Text
  loc_136E6A8:   var_130 = var_220 & var_118 & "','"
  loc_136E6B9:   Set var_124 = Me.Txt
  loc_136E6BF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_128, var_12C)
  loc_136E6C7:   var_130 = var_128.Tag
  loc_136E6E8:   Set var_138 = Me.Txt
  loc_136E6EE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_13C)
  loc_136E717:   Set var_14C = Me.Txt
  loc_136E71D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_150)
  loc_136E74A:   var_16C = var_E4 & var_12C & "','" & var_13C.Tag & "','" & var_150.Tag & "','" & MemVar_1F95070 & "','N','Cr','No','T','" & MemVar_1F950C8
  loc_136E751:   var_F8 = CVar(var_16C & "',") 'String
  loc_136E762:   Proc_6_7_F26918(var_E4, Date)
  loc_136E785:   Set var_180 = Me.Txt
  loc_136E78B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_136E7C8:   unk_493FE1.Execute CStr(var_F8 & var_E4 & ",'A','" & CVar(var_184.Tag) & "','" & CVar(MemVar_1F95078) & "')"), , 
  loc_136E833: Else
  loc_136E851:   Set var_90 = Me.Txt
  loc_136E857:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE RevMast SET Type='Cr',Name='")
  loc_136E85F:   var_238 = var_94.Text
  loc_136E868:   var_B4 = -1 & var_9C
  loc_136E86F:   var_110 = var_B4 & "',ShortName='"
  loc_136E880:   Set var_98 = Me.Txt
  loc_136E886:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_114, var_E8)
  loc_136E88E:   var_110 = var_114.Text
  loc_136E8BD:   Set var_124 = Me.Txt
  loc_136E8C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_128)
  loc_136E8EC:   Set var_138 = Me.Txt
  loc_136E8F2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_13C)
  loc_136E90A:   var_158 = var_23C & var_E8 & "',SITE_CODE='" & MemVar_1F95070 & "',ACCode='" & var_128.Tag & "',PayableAc='" & var_13C.Tag & "',UnregisteredAc='"
  loc_136E91B:   Set var_14C = Me.Txt
  loc_136E921:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_150)
  loc_136E947:   Set var_180 = Me.Txt
  loc_136E94D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_184)
  loc_136E977:   var_108 = CVar(var_158 & var_150.Tag & "',roundoff='" & Proc_6_38_E69628(CVar(var_184)) & "',U_name='" & MemVar_1F950C8 & "',U_EntDt=") 'String
  loc_136E97D:   var_E4 = Date
  loc_136E988:   Proc_6_7_F26918(var_F8, var_E4)
  loc_136E994:   var_C4 = " ,U_AE='E',Sundry='"
  loc_136E9AB:   Set var_220 = Me.Txt
  loc_136E9B1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_224)
  loc_136E9F1:   unk_493FE1.Execute CStr(var_108 & var_F8 & var_C4 & CVar(var_224.Tag) & "' WHERE Code='" & CVar(global_72) & "'"), , 
  loc_136EA5F: End If
  loc_136EA65: unk_493FE1.CommitTrans
  loc_136EA6E: var_86 = CByte(0) 'Byte
  loc_136EA7D: Me.Requery -1
  loc_136EA8D: Me.Requery -1
  loc_136EA9D: Me.Requery -1
  loc_136EACA: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_136EADA: Set var_90 = Me.TopCtrl1
  loc_136EAE0: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_C4)
  loc_136EAF9: If (CStr() = "Add") Then
  loc_136EAFC:   Call TopCtrl1_UnknownEvent_A()
  loc_136EB01:   Exit Sub
  loc_136EB02: End If
  loc_136EB17: var_9C = "INI"
  loc_136EB25: Call Proc_15_31_E7A25C(Proc_5_1_100EC1C(var_9C, Me))
  loc_136EB30: Call Proc_15_33_1378220(global_52)
  loc_136EB35: Exit Sub
  loc_136EB36: ' Referenced from: 136E3B8
  loc_136EB3F: If (CInt(var_86) = 1) Then
  loc_136EB48:   unk_493FE1.RollbackTrans
  loc_136EB4D: End If
  loc_136EB55: Set var_90 = Err()
  loc_136EB5B: Call 0.Method_arg_2C (var_9C)
  loc_136EB74: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_136EB87: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '143CC10
  'Data Table: 493FCC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_88 As DataGrid
  loc_143C11A: Set var_88 = Me.Txt
  loc_143C120: Call 0.Method_Txt_GotFocus0 (Index)
  loc_143C12E: Proc_6_74_E23240(var_8C)
  loc_143C13A: Call Proc_15_36_EF758C(var_8C)
  loc_143C13F: On Error Goto loc_143CBC9
  loc_143C145: var_92 = Index
  loc_143C150: If (var_92 = CInt(0)) Then
  loc_143C16A:   If (Me.RecordCount > 0) Then
  loc_143C178:     Set var_8C = Me.FGPoint
  loc_143C190:     Proc_6_137_1192FDC(Me.DGHelp, global_56, Index)
  loc_143C19E:   End If
  loc_143C1EC:   Set var_88 = Me.Txt
  loc_143C1F2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143C1FA:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_143C212:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_143C215:     Exit Sub
  loc_143C216:   End If
  loc_143C223:   Set var_88 = Me.Txt
  loc_143C229:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143C231:   var_A0 = var_8C.Text
  loc_143C243:   var_B0 = "Name"
  loc_143C25A:   var_B4 = Me.Fields.Item(var_B0)
  loc_143C27E:   If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_143C287:     Me.MoveFirst
  loc_143C2AA:     Set var_88 = Me.Txt
  loc_143C2B0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_143C2B8:     0 = var_8C.Text
  loc_143C2D1:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_143C2E6:   End If
  loc_143C2E9: Else
  loc_143C2F1:   If (var_92 = CInt(1)) Then
  loc_143C307:     Me.DGLedgerAc.Tag = CVar(CStr(Index))
  loc_143C31F:     Set var_88 = Me.Txt
  loc_143C325:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143C344:     Me.DGLedgerAc.Left = CVar(var_8C.Left)
  loc_143C35F:     Set var_90 = Me.Txt
  loc_143C365:     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_143C37F:     Set var_88 = Me.Txt
  loc_143C385:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143C39D:     var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_143C3AC:     Me.DGLedgerAc.Top = CVar(var_8C.Left)
  loc_143C3D5:     If (Me.RecordCount > 0) Then
  loc_143C3E3:       Set var_8C = Me.FGPoint
  loc_143C3FB:       Proc_6_137_1192FDC(Me.DGLedgerAc, global_60)
  loc_143C409:     End If
  loc_143C457:     Set var_88 = Me.Txt
  loc_143C45D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143C465:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_143C47D:     If (Index Or (var_A0 = vbNullString)) Then
  loc_143C480:       Exit Sub
  loc_143C481:     End If
  loc_143C48E:     Set var_88 = Me.Txt
  loc_143C494:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143C49C:     var_A0 = var_8C.Text
  loc_143C4AE:     var_B0 = "Name"
  loc_143C4C5:     var_B4 = Me.Fields.Item(var_B0)
  loc_143C4E9:     If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_143C4F2:       Me.MoveFirst
  loc_143C515:       Set var_88 = Me.Txt
  loc_143C51B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_143C523:       0 = var_8C.Text
  loc_143C53C:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_143C551:     End If
  loc_143C554:   Else
  loc_143C55C:     If (var_92 = CInt(5)) Then
  loc_143C572:       Me.DGLedgerAc.Tag = CVar(CStr(Index))
  loc_143C58A:       Set var_88 = Me.Txt
  loc_143C590:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143C5AF:       Me.DGLedgerAc.Left = CVar(var_8C.Left)
  loc_143C5CA:       Set var_90 = Me.Txt
  loc_143C5D0:       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_143C5EA:       Set var_88 = Me.Txt
  loc_143C5F0:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143C608:       var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_143C617:       Me.DGLedgerAc.Top = CVar(var_8C.Left)
  loc_143C640:       If (Me.RecordCount > 0) Then
  loc_143C64E:         Set var_8C = Me.FGPoint
  loc_143C666:         Proc_6_137_1192FDC(Me.DGLedgerAc, global_60)
  loc_143C674:       End If
  loc_143C6C2:       Set var_88 = Me.Txt
  loc_143C6C8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143C6D0:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_143C6E8:       If (Index Or (var_A0 = vbNullString)) Then
  loc_143C6EB:         Exit Sub
  loc_143C6EC:       End If
  loc_143C6F9:       Set var_88 = Me.Txt
  loc_143C6FF:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143C707:       var_A0 = var_8C.Text
  loc_143C719:       var_B0 = "Name"
  loc_143C730:       var_B4 = Me.Fields.Item(var_B0)
  loc_143C754:       If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_143C75D:         Me.MoveFirst
  loc_143C780:         Set var_88 = Me.Txt
  loc_143C786:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_143C78E:         0 = var_8C.Text
  loc_143C7A7:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_143C7BC:       End If
  loc_143C7BF:     Else
  loc_143C7C7:       If (var_92 = CInt(6)) Then
  loc_143C7DD:         Me.DGLedgerAc.Tag = CVar(CStr(Index))
  loc_143C7F5:         Set var_88 = Me.Txt
  loc_143C7FB:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143C81A:         Me.DGLedgerAc.Left = CVar(var_8C.Left)
  loc_143C835:         Set var_90 = Me.Txt
  loc_143C83B:         Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_143C855:         Set var_88 = Me.Txt
  loc_143C85B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143C873:         var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_143C882:         Me.DGLedgerAc.Top = CVar(var_8C.Left)
  loc_143C8AB:         If (Me.RecordCount > 0) Then
  loc_143C8B9:           Set var_8C = Me.FGPoint
  loc_143C8D1:           Proc_6_137_1192FDC(Me.DGLedgerAc, global_60)
  loc_143C8DF:         End If
  loc_143C92D:         Set var_88 = Me.Txt
  loc_143C933:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143C93B:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_143C953:         If (Index Or (var_A0 = vbNullString)) Then
  loc_143C956:           Exit Sub
  loc_143C957:         End If
  loc_143C964:         Set var_88 = Me.Txt
  loc_143C96A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143C972:         var_A0 = var_8C.Text
  loc_143C984:         var_B0 = "Name"
  loc_143C9BF:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_143C9C8:           Me.MoveFirst
  loc_143C9EB:           Set var_88 = Me.Txt
  loc_143C9F1:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_143C9F9:           0 = var_8C.Text
  loc_143CA12:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_143CA27:         End If
  loc_143CA2A:       Else
  loc_143CA32:         If (var_92 = CInt(4)) Then
  loc_143CA4C:           If (Me.RecordCount > 0) Then
  loc_143CA5A:             Set var_8C = Me.FGPoint
  loc_143CA72:             Proc_6_137_1192FDC(Me.DGSundry, global_68)
  loc_143CA80:           End If
  loc_143CACE:           Set var_88 = Me.Txt
  loc_143CAD4:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_143CADC:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_143CAF4:           If (Index Or (var_A0 = vbNullString)) Then
  loc_143CAF7:             Exit Sub
  loc_143CAF8:           End If
  loc_143CB05:           Set var_88 = Me.Txt
  loc_143CB0B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_143CB13:           var_A0 = var_8C.Text
  loc_143CB25:           var_B0 = "Name"
  loc_143CB60:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_143CB69:             Me.MoveFirst
  loc_143CB8C:             Set var_88 = Me.Txt
  loc_143CB92:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_143CB9A:             0 = var_8C.Text
  loc_143CBB3:             Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_143CBC8:           End If
  loc_143CBC8:         End If
  loc_143CBC8:       End If
  loc_143CBC8:     End If
  loc_143CBC8:   End If
  loc_143CBC8: End If
  loc_143CBC8: Exit Sub
  loc_143CBC9: ' Referenced from: 143C13F
  loc_143CBD1: Set var_88 = Err()
  loc_143CBD7: Call 0.Method_arg_2C (var_A0)
  loc_143CBF8: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_124)
  loc_143CC0B: Exit Sub
  loc_143CC0C: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12BCF10
  'Data Table: 493FCC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As Variant
  Dim var_9C As DataGrid
  Dim var_E0 As Variant
  loc_12BC8CE: If (CLng(Shift) = &H1B) Then
  loc_12BC8D1:   Call Proc_15_36_EF758C()
  loc_12BC8D6:   Exit Sub
  loc_12BC8D7: End If
  loc_12BC8DA: var_86 = KeyCode
  loc_12BC8E5: If (var_86 = CInt(0)) Then
  loc_12BC900:   Set var_9C = Nothing
  loc_12BC932:   Proc_6_79_11AD564(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_12BC99D:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12BC9C3:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_12BC9D1:   End If
  loc_12BC9D4: Else
  loc_12BC9DC:   If (var_86 = CInt(4)) Then
  loc_12BCA02:     Set var_9C = Nothing
  loc_12BCA34:     Proc_6_69_134A630(Me.DGSundry, Me.Txt, CInt(4), global_68, Shift, 0, 1)
  loc_12BCAA1:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12BCAA8:       Set var_9C = Me.DGSundry
  loc_12BCAC7:       Proc_6_138_106E830(var_9C, global_68, KeyCode, Me.FGPoint, var_9C, Nothing)
  loc_12BCAD5:     End If
  loc_12BCAD8:   Else
  loc_12BCAE0:     If (var_86 = CInt(1)) Then
  loc_12BCB34:       Proc_6_69_134A630(Me.DGLedgerAc, Me.Txt, KeyCode, global_60, Shift, 0, 1, Nothing)
  loc_12BCBA1:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12BCBC7:         Proc_6_138_106E830(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint, Nothing, 0)
  loc_12BCBD5:       End If
  loc_12BCBD8:     Else
  loc_12BCBE0:       If (var_86 = CInt(5)) Then
  loc_12BCC34:         Proc_6_69_134A630(Me.DGLedgerAc, Me.Txt, KeyCode, global_60, Shift, 0, 1, Nothing)
  loc_12BCCA1:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12BCCC7:           Proc_6_138_106E830(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint, Nothing, 0)
  loc_12BCCD5:         End If
  loc_12BCCD8:       Else
  loc_12BCCE0:         If (var_86 = CInt(6)) Then
  loc_12BCD34:           Proc_6_69_134A630(Me.DGLedgerAc, Me.Txt, KeyCode, global_60, Shift, 0, 1, Nothing)
  loc_12BCDA1:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12BCDC7:             Proc_6_138_106E830(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint, Nothing, 0)
  loc_12BCDD5:           End If
  loc_12BCDD5:         End If
  loc_12BCDD5:       End If
  loc_12BCDD5:     End If
  loc_12BCDD5:   End If
  loc_12BCDD5: End If
  loc_12BCDEF: Set var_90 = Me.DGLedgerAc
  loc_12BCE06: Set var_9C = Me.DGSundry
  loc_12BCE0C: var_E0 = var_9C.Visible
  loc_12BCE2B: If (((CBool(Me.DGHelp.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(var_E0) = 0)) Then
  loc_12BCE4C:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_12BCE52:     Call Proc_15_34_106E26C(var_92, 0, 1)
  loc_12BCE5D:     If (var_92 = &HFF) Then
  loc_12BCE6D:       Set var_8C = Me.Txt
  loc_12BCE73:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_12BCE7B:       var_90.Text = var_9C
  loc_12BCE87:       Exit Sub
  loc_12BCE88:     End If
  loc_12BCEBF:     If (MsgBox("Save Record ?", 4, "Save Data", var_E0, var_130) = 6) Then
  loc_12BCEC2:       Call TopCtrl1_UnknownEvent_16()
  loc_12BCEC7:     End If
  loc_12BCEC7:     Exit Sub
  loc_12BCEC8:   End If
  loc_12BCEDD:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12BCEE6:     Proc_6_75_E5335C(Shift, arg_14)
  loc_12BCEEB:   End If
  loc_12BCEFE:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_12BCF07:     Proc_6_76_E533C8(Shift, arg_14)
  loc_12BCF0C:   End If
  loc_12BCF0C: End If
  loc_12BCF0C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10596B8
  'Data Table: 493FCC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_1059446: Proc_6_133_E7FB08(var_94)
  loc_105944F: arg_10 = CInt(var_94)
  loc_1059458: Proc_6_58_E06050(arg_10, arg_10)
  loc_1059460: var_96 = KeyAscii
  loc_105946B: If (var_96 = CInt(1)) Then
  loc_105948A:   If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_105949C:     var_A0 = "Name"
  loc_10594B7:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10)
  loc_10594C6:   End If
  loc_10594C9: Else
  loc_10594D1:   If (var_96 = CInt(5)) Then
  loc_10594F0:     If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_105951D:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_105952C:     End If
  loc_105952F:   Else
  loc_1059537:     If (var_96 = CInt(6)) Then
  loc_1059556:       If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_1059583:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_60, arg_10, "Name", 0)
  loc_1059592:       End If
  loc_1059595:     Else
  loc_105959D:       If (var_96 = CInt(4)) Then
  loc_10595BC:         If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_10595C3:           Set var_A8 = Me.Txt
  loc_10595CE:           var_A0 = "Name"
  loc_10595E9:           Proc_6_89_1470B00(var_A8, KeyAscii, global_68, arg_10, var_A0, 0)
  loc_10595F8:         End If
  loc_10595FB:       Else
  loc_1059603:         If (var_96 = CInt(3)) Then
  loc_105962F:           If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_105963F:             Set var_9C = Me.Txt
  loc_1059645:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes", 0)
  loc_105964D:             var_A8.Text = var_A0
  loc_105965C:           Else
  loc_1059685:             If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1059695:               Set var_9C = Me.Txt
  loc_105969B:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_10596A3:               var_A8.Text = 0
  loc_10596AF:             End If
  loc_10596AF:           End If
  loc_10596B1:           arg_10 = 0
  loc_10596B4:         End If
  loc_10596B4:       End If
  loc_10596B4:     End If
  loc_10596B4:   End If
  loc_10596B4: End If
  loc_10596B4: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '10F5B90
  'Data Table: 493FCC
  Dim var_86 As Integer
  loc_10F5863: var_86 = KeyCode
  loc_10F586E: If (var_86 = CInt(0)) Then
  loc_10F588D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_10F589A:     var_A0 = "Name"
  loc_10F58B5:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_56)
  loc_10F58E7:     Proc_6_138_106E830(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_10F58F5:   End If
  loc_10F58F8: Else
  loc_10F5900:   If (var_86 = CInt(4)) Then
  loc_10F591F:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_10F5933:       var_A0 = "Name"
  loc_10F5957:       Proc_6_68_12A2818(Me.DGSundry, Me.Txt, KeyCode, global_68, Shift)
  loc_10F598D:       Proc_6_138_106E830(Me.DGSundry, global_68, KeyCode, Me.FGPoint)
  loc_10F599B:     End If
  loc_10F599E:   Else
  loc_10F59A6:     If (var_86 = CInt(1)) Then
  loc_10F59C5:       If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_10F59FD:         Proc_6_68_12A2818(Me.DGLedgerAc, Me.Txt, KeyCode, global_60, Shift)
  loc_10F5A33:         Proc_6_138_106E830(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint, "Name")
  loc_10F5A41:       End If
  loc_10F5A44:     Else
  loc_10F5A4C:       If (var_86 = CInt(5)) Then
  loc_10F5A6B:         If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_10F5AA3:           Proc_6_68_12A2818(Me.DGLedgerAc, Me.Txt, KeyCode, global_60, Shift)
  loc_10F5AD9:           Proc_6_138_106E830(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint, "Name")
  loc_10F5AE7:         End If
  loc_10F5AEA:       Else
  loc_10F5AF2:         If (var_86 = CInt(6)) Then
  loc_10F5B11:           If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_10F5B49:             Proc_6_68_12A2818(Me.DGLedgerAc, Me.Txt, KeyCode, global_60, Shift)
  loc_10F5B7F:             Proc_6_138_106E830(Me.DGLedgerAc, global_60, KeyCode, Me.FGPoint, "Name")
  loc_10F5B8D:           End If
  loc_10F5B8D:         End If
  loc_10F5B8D:       End If
  loc_10F5B8D:     End If
  loc_10F5B8D:   End If
  loc_10F5B8D: End If
  loc_10F5B8D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E714
  'Data Table: 493FCC
  loc_E4E6F2: Set var_88 = Me.Txt
  loc_E4E6F8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E706: Proc_6_73_E23294(var_8C)
  loc_E4E712: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12BE318
  'Data Table: 493FCC
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C4 As TextBox
  loc_12BDCBB: var_86 = Cancel
  loc_12BDCC6: If (var_86 = CInt(0)) Then
  loc_12BDCCC:   Call Proc_15_34_106E26C(var_88)
  loc_12BDCD7:   If (var_88 = &HFF) Then
  loc_12BDCDC:     arg_10 = &HFF
  loc_12BDCDF:     Exit Sub
  loc_12BDCE0:   End If
  loc_12BDCE4:   Set var_8C = Me.TopCtrl1
  loc_12BDCEA:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(arg_10)
  loc_12BDCF2:   var_A0 = CStr(var_86)
  loc_12BDD03:   If (var_A0 = "Add") Then
  loc_12BDD13:     Me.LblSysYN.Caption = "User Defined"
  loc_12BDD1B:   End If
  loc_12BDD1E: Else
  loc_12BDD26:   If (var_86 = CInt(2)) Then
  loc_12BDD2C:     Call Proc_15_35_106DCC4(var_88)
  loc_12BDD37:     If (var_88 = &HFF) Then
  loc_12BDD3C:       arg_10 = &HFF
  loc_12BDD3F:       Exit Sub
  loc_12BDD40:     End If
  loc_12BDD43:   Else
  loc_12BDD4B:     If (var_86 = CInt(1)) Then
  loc_12BDD9C:       Set var_8C = Me.Txt
  loc_12BDDA2:       Call 0.Method_Txt_Validate0 (Cancel, var_AC, var_A0)
  loc_12BDDAA:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_12BDDC2:       If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_12BDDC5:         Exit Sub
  loc_12BDDC6:       End If
  loc_12BDE01:       Set var_C0 = Me.Txt
  loc_12BDE07:       Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BDE0F:       var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12BDE42:       var_AC = Me.Fields.Item("Code")
  loc_12BDE60:       Set var_C0 = Me.Txt
  loc_12BDE66:       Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BDE6E:       var_C4.Tag = CStr(var_AC.Value)
  loc_12BDE87:     Else
  loc_12BDE8F:       If (var_86 = CInt(5)) Then
  loc_12BDEE0:         Set var_8C = Me.Txt
  loc_12BDEE6:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BDF06:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_AC.Text = vbNullString)) Then
  loc_12BDF16:           Set var_8C = Me.Txt
  loc_12BDF1C:           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BDF24:           var_AC.Text = vbNullString
  loc_12BDF3D:           Set var_8C = Me.Txt
  loc_12BDF43:           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BDF4B:           var_AC.Tag = vbNullString
  loc_12BDF5A:         Else
  loc_12BDF95:           Set var_C0 = Me.Txt
  loc_12BDF9B:           Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BDFA3:           var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12BDFD6:           var_AC = Me.Fields.Item("Code")
  loc_12BDFF4:           Set var_C0 = Me.Txt
  loc_12BDFFA:           Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BE002:           var_C4.Tag = CStr(var_AC.Value)
  loc_12BE018:         End If
  loc_12BE01B:       Else
  loc_12BE023:         If (var_86 = CInt(6)) Then
  loc_12BE074:           Set var_8C = Me.Txt
  loc_12BE07A:           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BE09A:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_AC.Text = vbNullString)) Then
  loc_12BE0AA:             Set var_8C = Me.Txt
  loc_12BE0B0:             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BE0B8:             var_AC.Text = vbNullString
  loc_12BE0D1:             Set var_8C = Me.Txt
  loc_12BE0D7:             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BE0DF:             var_AC.Tag = vbNullString
  loc_12BE0EE:           Else
  loc_12BE129:             Set var_C0 = Me.Txt
  loc_12BE12F:             Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BE137:             var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12BE16A:             var_AC = Me.Fields.Item("Code")
  loc_12BE188:             Set var_C0 = Me.Txt
  loc_12BE18E:             Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BE196:             var_C4.Tag = CStr(var_AC.Value)
  loc_12BE1AC:           End If
  loc_12BE1AF:         Else
  loc_12BE1B7:           If (var_86 = CInt(4)) Then
  loc_12BE208:             Set var_8C = Me.Txt
  loc_12BE20E:             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BE22E:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_AC.Text = vbNullString)) Then
  loc_12BE23E:               Set var_8C = Me.Txt
  loc_12BE244:               Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12BE24C:               var_AC.Tag = vbNullString
  loc_12BE258:               Exit Sub
  loc_12BE259:             End If
  loc_12BE294:             Set var_C0 = Me.Txt
  loc_12BE29A:             Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BE2A2:             var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12BE2F3:             Set var_C0 = Me.Txt
  loc_12BE2F9:             Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12BE301:             var_C4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_12BE317:           End If
  loc_12BE317:         End If
  loc_12BE317:       End If
  loc_12BE317:     End If
  loc_12BE317:   End If
  loc_12BE317: End If
  loc_12BE317: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBF054
  'Data Table: 493FCC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBEFCA: On Error Goto loc_EBF00F
  loc_EBEFD3: Me.MoveFirst
  loc_EBEFED: var_8C = "code='" & MyValue
  loc_EBEFFD: Me.Find var_8C & "'", 0, 1
  loc_EBF009: Call Proc_15_33_1378220(var_A0)
  loc_EBF00E: Exit Sub
  loc_EBF00F: ' Referenced from: EBEFCA
  loc_EBF017: Set var_A4 = Err()
  loc_EBF01D: Call 0.Method_arg_2C (var_8C)
  loc_EBF03E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBF051: Exit Sub
  loc_EBF052: Exit Sub
End Sub

Public Sub Proc_15_31_E7A25C(arg_C) 'E7A25C
  'Data Table: 493FCC
  Dim var_98 As TextBox
  loc_E7A20A: Set var_8C = Me.Txt
  loc_E7A210: Call 0.Method_Proc_15_31_E7A25CC (var_8E, var_86)
  loc_E7A220: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A236:   Set var_8C = Me.Txt
  loc_E7A23C:   Call 0.Method_Proc_15_31_E7A25C0 (CInt(var_86), var_98)
  loc_E7A244:   var_98.Enabled = arg_C
  loc_E7A253: Next var_92 'Byte
  loc_E7A259: Exit Sub
  loc_E7A25A: Set arg_5400 = 
End Sub

Public Sub Proc_15_32_E78EC4
  'Data Table: 493FCC
  Dim var_98 As TextBox
  loc_E78E72: Set var_8C = Me.Txt
  loc_E78E78: Call 0.Method_Proc_15_32_E78EC4C (var_8E, var_86)
  loc_E78E88: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78E9E:   Set var_8C = Me.Txt
  loc_E78EA4:   Call 0.Method_Proc_15_32_E78EC40 (CInt(var_86), var_98)
  loc_E78EAC:   var_98.Text = vbNullString
  loc_E78EBB: Next var_92 'Byte
  loc_E78EC1: Exit Sub
  loc_E78EC2: Set arg_5400 = 
End Sub

Public Sub Proc_15_33_1378220
  'Data Table: 493FCC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_493FE1 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Variant
  Dim var_11C As TextBox
  loc_13779CC: On Error Goto loc_13781DB
  loc_1377A25: unk_493FE1.Execute CStr("Select U_Name,U_AE,U_EntDt From revmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_1377A30: Set var_88 = var_118
  loc_1377A84: var_118 = var_88.Fields
  loc_1377AED: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1377B32: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_1377BAC: var_11C = var_88.Fields.Item("U_AE")
  loc_1377C0D: var_180 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_1377C52: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1377C90: Proc_183_45_E5CCA8(global_52)
  loc_1377CAC: If (Me.RecordCount <= 0) Then
  loc_1377CAF:   Call Proc_15_32_E78EC4()
  loc_1377CB7: Else
  loc_1377CEB:   global_72 = CStr(Me.Fields.Item("Code").Value)
  loc_1377D38:   Set var_118 = Me.Txt
  loc_1377D3E:   Call 0.Method_Proc_15_33_13782200 (CInt(0), var_11C)
  loc_1377D46:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1377D98:   Set var_118 = Me.Txt
  loc_1377D9E:   Call 0.Method_Proc_15_33_13782200 (CInt(2), var_11C)
  loc_1377DA6:   var_11C.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_1377DF8:   Set var_118 = Me.Txt
  loc_1377DFE:   Call 0.Method_Proc_15_33_13782200 (CInt(0), var_11C)
  loc_1377E06:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1377E55:   Set var_118 = Me.Txt
  loc_1377E5B:   Call 0.Method_Proc_15_33_13782200 (CInt(1), var_11C)
  loc_1377E63:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LedgerName")))
  loc_1377EB0:   Set var_118 = Me.Txt
  loc_1377EB6:   Call 0.Method_Proc_15_33_13782200 (CInt(1), var_11C)
  loc_1377EBE:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("LedgerCode")))
  loc_1377F0B:   Set var_118 = Me.Txt
  loc_1377F11:   Call 0.Method_Proc_15_33_13782200 (CInt(5), var_11C)
  loc_1377F19:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PayableAcName")))
  loc_1377F66:   Set var_118 = Me.Txt
  loc_1377F6C:   Call 0.Method_Proc_15_33_13782200 (CInt(5), var_11C)
  loc_1377F74:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("PayableAcCode")))
  loc_1377FC1:   Set var_118 = Me.Txt
  loc_1377FC7:   Call 0.Method_Proc_15_33_13782200 (CInt(6), var_11C)
  loc_1377FCF:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("UnregisteredAcName")))
  loc_137801C:   Set var_118 = Me.Txt
  loc_1378022:   Call 0.Method_Proc_15_33_13782200 (CInt(6), var_11C)
  loc_137802A:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("UnregisteredAcCode")))
  loc_1378077:   Set var_118 = Me.Txt
  loc_137807D:   Call 0.Method_Proc_15_33_13782200 (CInt(3), var_11C)
  loc_1378085:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoundOff")))
  loc_13780D2:   Set var_118 = Me.Txt
  loc_13780D8:   Call 0.Method_Proc_15_33_13782200 (CInt(4), var_11C)
  loc_13780E0:   var_11C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("SundryName")))
  loc_137812D:   Set var_118 = Me.Txt
  loc_1378133:   Call 0.Method_Proc_15_33_13782200 (CInt(4), var_11C)
  loc_137813B:   var_11C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("SundryCode")))
  loc_1378189:   var_114 = "System Defined"
  loc_137819C:   var_F0 = (Me.Fields.Item("SysYN").Value = "Y") 'Variant
  loc_13781AE:   var_F4 = CStr(IIf(var_F0, var_114, "User Defined"))
  loc_13781BC:   Me.LblSysYN.Caption = var_F4
  loc_13781DA: End If
  loc_13781DA: Exit Sub
  loc_13781DB: ' Referenced from: 13779CC
  loc_13781E3: Set var_8C = Err()
  loc_13781E9: Call 0.Method_arg_2C (var_F4)
  loc_137820A: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_137821D: Exit Sub
End Sub

Public Sub Proc_15_34_106E26C
  'Data Table: 493FCC
  Dim var_A4 As TextBox
  Dim unk_493FE1 As Connection15
  Dim var_CC As Fields15
  Dim var_E0 As Field20
  Dim arg_54FF As Double
  loc_106E00C: Set var_8C = Me.TopCtrl1
  loc_106E012: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_106E02B: If (CStr() = "Add") Then
  loc_106E069:   Set var_8C = Me.Txt
  loc_106E06F:   Call 0.Method_Proc_15_34_106E26C0 (CInt(0), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_9C, -1)
  loc_106E090:   unk_493FE1.Execute var_CC & var_A8 & "'", 0, var_E0
  loc_106E0A0:    = var_CC.Item()
  loc_106E0A8:    = var_E0.Value
  loc_106E0D9:   If (var_A4.Text.Fields > 0) Then
  loc_106E0F7:     var_9C = "Duplicate Name"
  loc_106E0FD:     MsgBox(var_9C, &H40, "Information", var_110, var_130)
  loc_106E118:     Set var_8C = Me.Txt
  loc_106E11E:     Call 0.Method_Proc_15_34_106E26C0 (CInt(0))
  loc_106E126:     var_A4.SetFocus
  loc_106E137:     Proc_15_34_106E26C = &HFF
  loc_106E13D:   End If
  loc_106E140: Else
  loc_106E17B:   Set var_8C = Me.Txt
  loc_106E181:   Call 0.Method_Proc_15_34_106E26C0 (CInt(0), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_9C, -1)
  loc_106E1B3:   unk_493FE1.Execute var_CC & var_A8 & "' And Code<>'" & global_72 & "'", 0, var_E0
  loc_106E1C3:    = var_CC.Item(var_A4)
  loc_106E1CB:    = var_E0.Value
  loc_106E200:   If (var_A4.Text.Fields > 0) Then
  loc_106E224:     MsgBox("Duplicate Name", &H40, "Information", var_110, var_130)
  loc_106E23F:     Set var_8C = Me.Txt
  loc_106E245:     Call 0.Method_Proc_15_34_106E26C0 (CInt(0))
  loc_106E24D:     var_A4.SetFocus
  loc_106E25E:     Proc_15_34_106E26C = &HFF
  loc_106E264:   End If
  loc_106E264: End If
  loc_106E264: Proc_15_34_106E26C = var_A4
  loc_106E26A: arg_54FF = 
End Sub

Public Sub Proc_15_35_106DCC4
  'Data Table: 493FCC
  Dim var_A4 As TextBox
  Dim unk_493FE1 As Connection15
  Dim var_CC As Fields15
  Dim var_E0 As Field20
  Dim arg_54FF As Double
  loc_106DA64: Set var_8C = Me.TopCtrl1
  loc_106DA6A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_106DA83: If (CStr() = "Add") Then
  loc_106DAC1:   Set var_8C = Me.Txt
  loc_106DAC7:   Call 0.Method_Proc_15_35_106DCC40 (CInt(2), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and ShortName='", var_9C, -1)
  loc_106DAE8:   unk_493FE1.Execute var_CC & var_A8 & "'", 0, var_E0
  loc_106DAF8:    = var_CC.Item()
  loc_106DB00:    = var_E0.Value
  loc_106DB31:   If (var_A4.Text.Fields > 0) Then
  loc_106DB4F:     var_9C = "Duplicate Short Name"
  loc_106DB55:     MsgBox(var_9C, &H40, "Information", var_110, var_130)
  loc_106DB70:     Set var_8C = Me.Txt
  loc_106DB76:     Call 0.Method_Proc_15_35_106DCC40 (CInt(2))
  loc_106DB7E:     var_A4.SetFocus
  loc_106DB8F:     Proc_15_35_106DCC4 = &HFF
  loc_106DB95:   End If
  loc_106DB98: Else
  loc_106DBD3:   Set var_8C = Me.Txt
  loc_106DBD9:   Call 0.Method_Proc_15_35_106DCC40 (CInt(2), var_A4, var_A8, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and ShortName='", var_9C, -1)
  loc_106DC0B:   unk_493FE1.Execute var_CC & var_A8 & "' And Code<>'" & global_72 & "'", 0, var_E0
  loc_106DC1B:    = var_CC.Item(var_A4)
  loc_106DC23:    = var_E0.Value
  loc_106DC58:   If (var_A4.Text.Fields > 0) Then
  loc_106DC7C:     MsgBox("Duplicate Short Name", &H40, "Information", var_110, var_130)
  loc_106DC97:     Set var_8C = Me.Txt
  loc_106DC9D:     Call 0.Method_Proc_15_35_106DCC40 (CInt(2))
  loc_106DCA5:     var_A4.SetFocus
  loc_106DCB6:     Proc_15_35_106DCC4 = &HFF
  loc_106DCBC:   End If
  loc_106DCBC: End If
  loc_106DCBC: Proc_15_35_106DCC4 = var_A4
  loc_106DCC2: arg_54FF = 
End Sub

Public Sub Proc_15_36_EF758C
  'Data Table: 493FCC
  loc_EF74CC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF74DE:   Me.DGHelp.Visible = False
  loc_EF74E6: End If
  loc_EF7502: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_EF7514:   Me.DGLedgerAc.Visible = False
  loc_EF751C: End If
  loc_EF7538: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EF754A:   Me.DGSundry.Visible = False
  loc_EF7552: End If
  loc_EF756E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF7580:   Me.FGPoint.Visible = False
  loc_EF7588: End If
  loc_EF7588: Exit Sub
  loc_EF7589: DOC
End Sub

Public Sub Proc_15_37_F17C50(arg_C) 'F17C50
  'Data Table: 493FCC
  Dim var_8C As TextBox
  loc_F17B68: Call Proc_15_36_EF758C()
  loc_F17B78: Set var_88 = Me.Txt
  loc_F17B7E: Call 0.Method_Proc_15_37_F17C500 (CInt(0))
  loc_F17BA7: If (Proc_6_27_EA61EC(var_8C, "Tax Name") = 0) Then
  loc_F17BAA:   Exit Sub
  loc_F17BAB: End If
  loc_F17BB6: Set var_88 = Me.Txt
  loc_F17BBC: Call 0.Method_Proc_15_37_F17C500 (CInt(1), var_8C)
  loc_F17BE5: If (Proc_6_27_EA61EC(var_8C, "Ledger A/C") = 0) Then
  loc_F17BE8:   Exit Sub
  loc_F17BE9: End If
  loc_F17C20: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F17C23:   Call TopCtrl1_UnknownEvent_16()
  loc_F17C2B: Else
  loc_F17C35:   Set var_88 = Me.Txt
  loc_F17C3B:   Call 0.Method_Proc_15_37_F17C500 (arg_C, var_8C)
  loc_F17C43:   var_8C.SetFocus
  loc_F17C4F: End If
  loc_F17C4F: Exit Sub
End Sub

Public Sub Proc_15_38_F8C20C
  'Data Table: 493FCC
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_F8C0BA: Set var_88 = Me.Txt
  loc_F8C0C0: Call 0.Method_Proc_15_38_F8C20C0 (CInt(0), var_8C)
  loc_F8C0DF: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_F8C0FB: Set var_B4 = Me.Txt
  loc_F8C101: Call 0.Method_Proc_15_38_F8C20C0 (CInt(0), var_B8)
  loc_F8C11C: Set var_88 = Me.Txt
  loc_F8C122: Call 0.Method_Proc_15_38_F8C20C0 (CInt(0), var_8C)
  loc_F8C13A: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_F8C149: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_F8C169: Set var_88 = Me.Txt
  loc_F8C16F: Call 0.Method_Proc_15_38_F8C20C0 (CInt(4), var_8C)
  loc_F8C18E: Me.DGSundry.Left = CVar(var_8C.Left)
  loc_F8C1AA: Set var_B4 = Me.Txt
  loc_F8C1B0: Call 0.Method_Proc_15_38_F8C20C0 (CInt(4), var_B8)
  loc_F8C1CB: Set var_88 = Me.Txt
  loc_F8C1D1: Call 0.Method_Proc_15_38_F8C20C0 (CInt(4), var_8C)
  loc_F8C1E9: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_F8C1F8: Me.DGSundry.Top = CVar(var_8C.Left)
  loc_F8C20A: Exit Sub
End Sub
