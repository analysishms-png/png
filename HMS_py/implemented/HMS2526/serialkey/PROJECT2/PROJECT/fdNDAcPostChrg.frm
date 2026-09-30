VERSION 5.00
Begin VB.Form fdNDAcPostChrg
  Caption = "Posting Utility"
  BackColor = &HDECCBE&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  Icon = "fdNDAcPostChrg.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6300
  ClientHeight = 3090
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2865
    Width = 6300
    Height = 225
    Visible = 0   'False
    TabIndex = 18
  End
  Begin ProgressBar PBar1
    Left = 2580
    Top = 4410
    Width = 8085
    Height = 255
    TabIndex = 12
  End
  Begin TextBox Txt
    Index = 5
    Left = 3180
    Top = 7005
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Index = 4
    Left = 3165
    Top = 7275
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Index = 3
    Left = 6435
    Top = 30
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 7035
    Top = 1950
    Width = 1485
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    Left = 6435
    Top = 45
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 4620
    Top = 1935
    Width = 1425
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 9015
    Top = 5550
    Width = 4695
    Height = 4845
    Visible = 0   'False
    TabIndex = 11
  End
  Begin BtnEnh CmdExit
    Left = 8640
    Top = 3585
    Width = 2070
    Height = 690
    TabIndex = 14
  End
  Begin BtnEnh Cmd
    Index = 1
    Left = 2490
    Top = 3585
    Width = 2070
    Height = 690
    TabIndex = 16
  End
  Begin BtnEnh Cmd
    Index = 2
    Left = 4545
    Top = 3585
    Width = 2070
    Height = 690
    TabIndex = 17
  End
  Begin BtnEnh Cmd
    Index = 4
    Left = 6600
    Top = 3585
    Width = 2070
    Height = 690
    TabIndex = 15
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 13
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
    Caption = "Old Bill No"
    Index = 3
    ForeColor = &H0&
    Left = 1905
    Top = 7005
    Width = 945
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 10
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
  Begin Label LblName
    Caption = "New Bill No"
    Index = 1
    ForeColor = &H0&
    Left = 1905
    Top = 7275
    Width = 1035
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 8
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
  Begin Label LblName
    Caption = "To Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 6225
    Top = 1965
    Width = 795
    Height = 240
    Enabled = 0   'False
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
  Begin Label lblDisplay
    Caption = "."
    Left = 3165
    Top = 2700
    Width = 5835
    Height = 510
    TabIndex = 4
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "From Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 3540
    Top = 1920
    Width = 990
    Height = 240
    Enabled = 0   'False
    TabIndex = 2
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

Attribute VB_Name = "fdNDAcPostChrg"

Private MasterFormExit As Integer

Private Sub TopCtrl1_UnknownEvent_C 'F32954
  'Data Table: 4439A4
  Dim var_A4 As TextBox
  Dim unk_4439E2 As Connection15
  loc_F32850: On Error Goto loc_F32901
  loc_F32869: Set var_A0 = Me.Txt
  loc_F3286F: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_A4)
  loc_F32877: var_A8 = var_A4.Text
  loc_F3288F: var_D8 = DateAdd("d", CDbl(1), CDate(CDate(var_A8)))
  loc_F328AA: If CBool(CDate(MemVar_1F950EC) <> var_D8) Then
  loc_F328C6:   MsgBox("Invalid Date Contact to your Administrator", 0, var_D8, var_F8, var_128)
  loc_F328D6:   Exit Sub
  loc_F328D7: End If
  loc_F328E0: unk_4439E2.BeginTrans var_12C
  loc_F328E9: var_86 = CByte(1) 'Byte
  loc_F328F3: unk_4439E2.CommitTrans
  loc_F328FC: var_86 = CByte(0) 'Byte
  loc_F32900: Exit Sub
  loc_F32901: ' Referenced from: F32850
  loc_F3290A: If (CInt(var_86) = 1) Then
  loc_F32913:   unk_4439E2.RollbackTrans
  loc_F32918: End If
  loc_F32920: Set var_A0 = Err()
  loc_F32926: Call 0.Method_arg_2C (var_A8)
  loc_F3293F: MsgBox(CVar(var_A8), &H10, var_D8, var_F8, var_128)
  loc_F32952: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1194974
  'Data Table: 4439A4
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_CC As Double
  Dim unk_4439E2 As Connection15
  Dim var_118 As Variant
  Dim var_134 As TextBox
  Dim var_128 As Date
  Dim var_114 As Variant
  Dim var_DE As Integer
  Dim var_DC As Double
  Dim var_D4 As Double
  Dim var_12C As String
  Dim MemVar_1F950EC As Double
  loc_11945AA: Me.PBar1.Visible = True
  loc_11945C4: Me.PBar1.Value = CVar(CDbl(1))
  loc_11945D9: Me.lblDisplay.Caption = "A/C Posting Started..."
  loc_11945E5: Set var_104 = Me.lblDisplay
  loc_11945EB: var_104.Refresh
  loc_11945F6: var_CC = MemVar_1F950EC
  loc_119460F: unk_4439E2.Execute "Select PostingType from Enviro", var_114, -1
  loc_119463D: var_118 = var_104.Fields.Item("PostingType")
  loc_119465F: If (var_118.Value = "Daily Bill wise Posting") Then
  loc_119466E:   Set var_104 = Me.Txt
  loc_1194674:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_118, var_12C)
  loc_119467C:   var_104 = var_118.Text
  loc_119468D:   Set var_130 = Me.Txt
  loc_1194693:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_134)
  loc_119469B:   var_138 = var_134.Text
  loc_11946AF:   var_128 = CDate(CDate(var_138))
  loc_11946C2:   var_148 = DateDiff("D", CDate(CDate(var_12C)), var_128, 1, 1)
  loc_11946FA:   If (CInt(Val(CStr(var_148))) = 0) Then
  loc_11946FF:     var_DE = 1
  loc_1194702:   End If
  loc_119471E:   var_DC = ((CDbl(Me.PBar1.Max) - CDbl(1)) / CDbl(var_DE))
  loc_119473E:   var_F0 = CVar((CDbl(Me.PBar1.Max) + var_DC)) 'Single
  loc_1194747:   Set var_118 = Me.PBar1
  loc_119474D:   var_118.Max = "PostingType"
  loc_1194768:   Set var_104 = Me.Txt
  loc_119476E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_118, var_12C, var_DC)
  loc_1194776:   var_DE = var_118.Text
  loc_119478F:   Set var_130 = Me.Txt
  loc_1194795:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_134, var_138, var_98)
  loc_119479D:   CDate(var_12C) = var_134.Text
  loc_11947B9:   For var_15C = var_CC To CDate(var_138): var_DE = var_15C 'Double
  loc_11947C6:     var_D4 = (var_D4 + var_DC)
  loc_11947DC:     Set var_104 = Me.Txt
  loc_11947E2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_118, CStr(var_98))
  loc_11947EA:     var_118.Text = var_D4
  loc_11947FC:     MemVar_1F950EC = var_98
  loc_119481D:     Me.lblDisplay.Caption = CStr("A/C Posting For Date " & CDate(var_98))
  loc_1194835:     Me.lblDisplay.Refresh
  loc_1194846:     var_12C = "POSTING"
  loc_119484F:     Proc_96_14_1F8478C(var_98, var_12C, 0)
  loc_1194869:     Me.PBar1.Value = CVar(var_D4)
  loc_1194874:   Next var_15C 'Double
  loc_1194888:   Me.PBar1.Visible = False
  loc_1194893: Else
  loc_1194896:   Proc_96_16_1F4A508(var_98)
  loc_119489B: End If
  loc_11948BD: Me.PBar1.Value = CVar(CDbl(Me.PBar1.Max))
  loc_11948D9: Me.lblDisplay.Caption = "A/C Posting Completed."
  loc_11948EB: Me.lblDisplay.Refresh
  loc_1194902: Me.PBar1.Visible = False
  loc_119490A: Exit Sub
  loc_1194914: If (CInt(var_86) = 1) Then
  loc_119491D:   unk_4439E2.RollbackTrans
  loc_1194931:   Me.PBar1.Visible = False
  loc_1194939: End If
  loc_1194941: Set var_104 = Err()
  loc_1194947: Call 0.Method_arg_2C (var_12C)
  loc_1194960: MsgBox(CVar(var_12C), &H10, var_128, var_148, var_180)
  loc_1194973: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '10C79E0
  'Data Table: 4439A4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_11E As Integer
  Dim var_88 As Variant
  Dim var_11C As Variant
  Dim var_FC As Variant
  Dim unk_4439E2 As Connection15
  Dim Me As Recordset15
  loc_10C7724: Set var_88 = Me.Txt
  loc_10C772A: Call 0.Method_Cmd_UnknownEvent_90 (0, var_8C)
  loc_10C774C: Set var_94 = Me.Txt
  loc_10C7752: Call 0.Method_Cmd_UnknownEvent_90 (2, var_98)
  loc_10C777B: If ((CDate(var_8C.Text) < MemVar_1F950F4) Or (CDate(var_98.Text) > MemVar_1F950FC)) Then
  loc_10C7797:   MsgBox("Please check Posting Dates", &H40, var_DC, var_FC, var_11C)
  loc_10C77A7:   Exit Sub
  loc_10C77A8: End If
  loc_10C77AB: var_11E = Cancel
  loc_10C77B4: If (var_11E = 0) Then
  loc_10C77C4:   Me.Global.Unload Me
  loc_10C77CF: Else
  loc_10C77D5:   If (var_11E = 1) Then
  loc_10C77D8:     Call TopCtrl1_UnknownEvent_16()
  loc_10C77E0:   Else
  loc_10C77E6:     If (var_11E = 2) Then
  loc_10C77FC:       Set var_88 = Me.Txt
  loc_10C7802:       Call 0.Method_Cmd_UnknownEvent_90 (0, var_8C)
  loc_10C781B:       Set var_94 = Me.Txt
  loc_10C7821:       Call 0.Method_Cmd_UnknownEvent_90 (2, var_98)
  loc_10C7829:       var_9C = var_98.Text
  loc_10C7843:       Set var_124 = Me.lblDisplay
  loc_10C7849:       Proc_96_30_19517A0(var_124, CDate(var_8C.Text))
  loc_10C7867:     Else
  loc_10C786D:       If (var_11E = 3) Then
  loc_10C7879:         Set var_88 = Me.Txt
  loc_10C787F:         Call 0.Method_Cmd_UnknownEvent_90 (4, var_8C)
  loc_10C78A9:         Set var_94 = Me.Txt
  loc_10C78AF:         Call 0.Method_Cmd_UnknownEvent_90 (5, var_98, (Trim(CVar(var_8C)) <> vbNullString))
  loc_10C78E8:         If CBool(CDate(var_9C) And (Trim(CVar(var_98)) <> vbNullString)) Then
  loc_10C7906:           Set var_88 = Me.Txt
  loc_10C790C:           Call 0.Method_Cmd_UnknownEvent_90 (4, var_8C, "Update Paycharge Set bill_no='", var_188)
  loc_10C7923:           var_FC = -1 & Trim(CVar(var_8C)) 
  loc_10C7939:           Set var_94 = Me.Txt
  loc_10C793F:           Call 0.Method_Cmd_UnknownEvent_90 (5, var_98, var_FC & "' where bill_no='")
  loc_10C796D:           unk_4439E2.Execute CStr(var_124 & Trim(CVar(var_98)) & "'"), var_11E, 
  loc_10C7993:         End If
  loc_10C799E:         Me.Requery -1
  loc_10C79AC:         CVarUnk
  loc_10C79B1:         VerifyVarObj
  loc_10C79B7:         Set var_88 = Me.FGrid
  loc_10C79BD:         LateIdStAd
  loc_10C79CE:       Else
  loc_10C79D4:         If (var_11E = 4) Then
  loc_10C79D7:           Call Proc_79_32_1531E7C(var_88)
  loc_10C79DC:         End If
  loc_10C79DC:       End If
  loc_10C79DC:     End If
  loc_10C79DC:   End If
  loc_10C79DC: End If
  loc_10C79DC: Exit Sub
End Sub

Private Sub Form_Load() 'F93B00
  'Data Table: 4439A4
  Dim var_A8 As ProgressBar
  Dim var_B0 As TextBox
  Dim unk_4439E2 As Connection15
  loc_F939A3: Me.PBar1.Visible = False
  loc_F939AB: On Error Goto loc_F93AF8
  loc_F939C4: Proc_6_23_DFC5B8(Me, 0)
  loc_F939D3: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F939DE: If (MemVar_1F950B8 <> 1) Then
  loc_F939EF:   Set var_A8 = Me.Cmd
  loc_F939F5:   Call 0.Method_Form_Load0 (1, var_B0)
  loc_F939FD:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_F93A09: End If
  loc_F93A0F: If (MemVar_1F950B8 <> 1) Then
  loc_F93A20:   Set var_A8 = Me.Cmd
  loc_F93A26:   Call 0.Method_Form_Load0 (2, var_B0)
  loc_F93A2E:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_F93A3A: End If
  loc_F93A4D: Set var_A8 = Me.Txt
  loc_F93A53: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_F93A5B: var_B0.Text = CStr(MemVar_1F950EC)
  loc_F93A83: Call 0.Method_Form_Load0 (CInt(2), var_B0)
  loc_F93A8B: var_B0.Text = CStr(MemVar_1F950EC)
  loc_F93AB0: unk_4439E2.Execute "Select Distinct Bill_no,SettleDate,FolioNo from PayCharge where Bill_No is Not NULL and Bill_No <>'' and SettleDate<='31/Aug/2005' order by SettleDate", var_C4, -1
  loc_F93AC1: Set global_88 = Me.Txt
  loc_F93AD8: CVarUnk
  loc_F93ADD: VerifyVarObj
  loc_F93AE3: Set var_A8 = Me.FGrid
  loc_F93AE9: LateIdStAd
  loc_F93AF7: Exit Sub
  loc_F93AF8: ' Referenced from: F939AB
  loc_F93AF8: Proc_6_60_E63754(var_A8, global_88)
  loc_F93AFD: Exit Sub
End Sub

Private Sub Form_Resize() 'E76C00
  'Data Table: 4439A4
  loc_E76BAA: Call 0.Method_arg_50 (var_88)
  loc_E76BBC: Me.LblFormCaption.Caption = var_88
  loc_E76BD5: Me.LblFormCaption.Left = CDbl(0)
  loc_E76BE3: Call 0.Method_arg_100 (var_90)
  loc_E76BF5: Me.LblFormCaption.Width = var_90
  loc_E76BFD: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1F6D0
  'Data Table: 4439A4
  loc_E1F6B9: MasterFormExit = 0
  loc_E1F6C7: Set global_88 = Nothing
  loc_E1F6CE: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5A4BC
  'Data Table: 4439A4
  loc_E5A484: Set var_88 = Me.TopCtrl1
  loc_E5A48A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_E5A4AD: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5A4B5:   Call Form_Unload(&HFF)
  loc_E5A4BA: End If
  loc_E5A4BA: Exit Sub
End Sub

Private Sub Form_Activate() 'E4CAA4
  'Data Table: 4439A4
  loc_E4CA78: On Error Goto loc_E4CA9E
  loc_E4CA7F: Set var_8C = Me.TopCtrl1
  loc_E4CA85: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030000()
  loc_E4CA9A: If (CLng(CInt()) = &H2D) Then
  loc_E4CA9D: End If
  loc_E4CA9D: Exit Sub
  loc_E4CA9E: ' Referenced from: E4CA78
  loc_E4CA9E: Proc_6_60_E63754()
  loc_E4CAA3: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25524
  'Data Table: 4439A4
  loc_E25509: If (MasterFormExit = &HFF) Then
  loc_E25519:   Me.Global.Unload Me
  loc_E25521: End If
  loc_E25521: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E618C8
  'Data Table: 4439A4
  loc_E6187C: On Error Goto loc_E618BF
  loc_E61889: If (CLng(KeyCode) = &H1B) Then
  loc_E61899:   Me.Global.Unload Me
  loc_E618A1:   Exit Sub
  loc_E618A2: End If
  loc_E618B6: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E618BE: Exit Sub
  loc_E618BF: ' Referenced from: E6187C
  loc_E618BF: Proc_6_60_E63754(Shift)
  loc_E618C4: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'ECA684
  'Data Table: 4439A4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECA5EA: Set var_88 = Me.Txt
  loc_ECA5F0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_ECA5FE: Proc_6_74_E23240(var_8C)
  loc_ECA619: Set var_88 = Me.Txt
  loc_ECA61F: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECA627: var_8C.SelStart = 0
  loc_ECA640: Set var_88 = Me.Txt
  loc_ECA646: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECA661: Set var_90 = Me.Txt
  loc_ECA667: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_ECA66F: var_98.SelLength = Len(var_8C.Text)
  loc_ECA682: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E41600
  'Data Table: 4439A4
  loc_E415D6: If (Shift = &HD) Then
  loc_E415E1:   Call Txt_Validate(KeyCode)
  loc_E415F4:   Proc_303_0_FBACC8("	", 0)
  loc_E415FC: End If
  loc_E415FC: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4AD64
  'Data Table: 4439A4
  loc_E4AD42: Set var_88 = Me.Txt
  loc_E4AD48: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4AD56: Proc_6_73_E23294(var_8C)
  loc_E4AD62: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'EAE3B0
  'Data Table: 4439A4
  Dim var_8A As Integer
  Dim var_94 As TextBox
  Dim var_A4 As TextBox
  loc_EAE337: var_8A = Cancel
  loc_EAE342: If Not (var_8A = CInt(0)) Then
  loc_EAE34D:   If (var_8A = CInt(2)) Then
  loc_EAE350:   End If
  loc_EAE35D:   Set var_90 = Me.Txt
  loc_EAE363:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_EAE389:   Set var_A0 = Me.Txt
  loc_EAE38F:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_EAE397:   var_A4.Text = Proc_6_34_14EEAAC(var_94.Text)
  loc_EAE3AE: End If
  loc_EAE3AE: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E16AAC
  'Data Table: 4439A4
  loc_E16AA1: Me.Global.Unload Me
  loc_E16AA9: Exit Sub
End Sub

Public Function MasterFormExitGet() '4442C8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4442D7
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '4442E6
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '4442F5
  mVType = Value
End Sub

Public Function VnoRCGet() '444304
  VnoRCGet = VnoRC
End Function

Public Sub VnoRCPut(Value) '444313
  VnoRC = Value
End Sub

Public Function VnoRTGet() '444322
  VnoRTGet = VnoRT
End Function

Public Sub VnoRTPut(Value) '444331
  VnoRT = Value
End Sub

Public Function vPrefixGet() '444340
  vPrefixGet = vPrefix
End Function

Public Sub vPrefixPut(Value) '44434F
  vPrefix = Value
End Sub

Public Function VprefixRCGet() '44435E
  VprefixRCGet = VprefixRC
End Function

Public Sub VprefixRCPut(Value) '44436D
  VprefixRC = Value
End Sub

Public Function VprefixRTGet() '44437C
  VprefixRTGet = VprefixRT
End Function

Public Sub VprefixRTPut(Value) '44438B
  VprefixRT = Value
End Sub

Public Function DocIDGet() '44439A
  DocIDGet = DocID
End Function

Public Sub DocIDPut(Value) '4443A9
  DocID = Value
End Sub

Public Sub Proc_79_31_1481E80(arg_C) '1481E80
  'Data Table: 4439A4
  Dim var_88 As Recordset15
  Dim var_98 As String
  Dim var_C0 As Variant
  Dim var_A8 As Variant
  Dim var_D0 As Variant
  loc_1481223: Set var_88 = arg_C 
  loc_1481232: var_88.AddNew var_98, var_A8
  loc_1481256: var_C0 = CVar(Me.Recordset15.Fields.Item("DocID")) 'Address
  loc_1481264: var_88.Collect = "DocID"
  loc_148128E: var_C0 = CVar(Me.Recordset15.Fields.Item("SNo")) 'Address
  loc_148129C: var_88.Collect = "SNo"
  loc_14812AA: var_A8 = CVar(arg_20) 'Integer
  loc_14812B7: var_88.Collect = "Sno1"
  loc_14812DB: var_C0 = CVar(Me.Recordset15.Fields.Item("vType")) 'Address
  loc_14812E9: var_88.Collect = "vType"
  loc_1481313: var_C0 = CVar(Me.Recordset15.Fields.Item("VNo")) 'Address
  loc_1481321: var_88.Collect = "VNo"
  loc_148134B: var_C0 = CVar(Me.Recordset15.Fields.Item("Site_Code")) 'Address
  loc_1481359: var_88.Collect = "Site_Code"
  loc_1481383: var_C0 = CVar(Me.Recordset15.Fields.Item("vPrefix")) 'Address
  loc_1481391: var_88.Collect = "vPrefix"
  loc_14813BB: var_C0 = CVar(Me.Recordset15.Fields.Item("VDate")) 'Address
  loc_14813C9: var_88.Collect = "VDate"
  loc_14813F3: var_C0 = CVar(Me.Recordset15.Fields.Item("PartyCode")) 'Address
  loc_1481401: var_88.Collect = "PartyCode"
  loc_148142B: var_C0 = CVar(Me.Recordset15.Fields.Item("RestCode")) 'Address
  loc_1481439: var_88.Collect = "RestCode"
  loc_1481463: var_C0 = CVar(Me.Recordset15.Fields.Item("RoomCat")) 'Address
  loc_1481471: var_88.Collect = "RoomCat"
  loc_148149B: var_C0 = CVar(Me.Recordset15.Fields.Item("Roomtype")) 'Address
  loc_14814A9: var_88.Collect = "Roomtype"
  loc_14814D3: var_C0 = CVar(Me.Recordset15.Fields.Item("RoomNo")) 'Address
  loc_14814E1: var_88.Collect = "RoomNo"
  loc_148150B: var_C0 = CVar(Me.Recordset15.Fields.Item("ContraDocId")) 'Address
  loc_1481519: var_88.Collect = "ContraDocId"
  loc_1481543: var_C0 = CVar(Me.Recordset15.Fields.Item("ContraSNo")) 'Address
  loc_1481551: var_88.Collect = "ContraSNo"
  loc_148157B: var_C0 = CVar(Me.Recordset15.Fields.Item("Item")) 'Address
  loc_1481589: var_88.Collect = "Item"
  loc_148159D: If (CInt(arg_1C) = 1) Then
  loc_14815D1:   var_D0 = (CVar(arg_14) * Me.Recordset15.Fields.Item("ConvRatio").Value)
  loc_14815DF:   var_88.Collect = "QtyIss"
  loc_148160D:   var_C0 = CVar(Me.Recordset15.Fields.Item("QtyRec")) 'Address
  loc_148161B:   var_88.Collect = "QtyRec"
  loc_1481629: Else
  loc_1481648:   var_C0 = CVar(Me.Recordset15.Fields.Item("QtyIss")) 'Address
  loc_1481656:   var_88.Collect = "QtyIss"
  loc_1481692:   var_D0 = (CVar(arg_14) * Me.Recordset15.Fields.Item("ConvRatio").Value)
  loc_14816A0:   var_88.Collect = "QtyRec"
  loc_14816AF: End If
  loc_14816CE: var_C0 = CVar(Me.Recordset15.Fields.Item("Unit")) 'Address
  loc_14816DC: var_88.Collect = "Unit"
  loc_14816EA: var_A8 = CVar(arg_18) 'Double
  loc_14816F8: var_88.Collect = "Rate"
  loc_1481704: var_A8 = CVar((arg_18 * arg_14)) 'Double
  loc_1481712: var_88.Collect = "Amount"
  loc_1481736: var_C0 = CVar(Me.Recordset15.Fields.Item("TaxPer")) 'Address
  loc_1481744: var_88.Collect = "TaxPer"
  loc_148176E: var_C0 = CVar(Me.Recordset15.Fields.Item("TaxAmt")) 'Address
  loc_148177C: var_88.Collect = "TaxAmt"
  loc_14817A6: var_C0 = CVar(Me.Recordset15.Fields.Item("DiscPer")) 'Address
  loc_14817B4: var_88.Collect = "DiscPer"
  loc_14817DE: var_C0 = CVar(Me.Recordset15.Fields.Item("DiscAmt")) 'Address
  loc_14817EC: var_88.Collect = "DiscAmt"
  loc_1481816: var_C0 = CVar(Me.Recordset15.Fields.Item("VoidYN")) 'Address
  loc_1481824: var_88.Collect = "VoidYN"
  loc_148184E: var_C0 = CVar(Me.Recordset15.Fields.Item("Remarks")) 'Address
  loc_148185C: var_88.Collect = "Remarks"
  loc_1481886: var_C0 = CVar(Me.Recordset15.Fields.Item("KotDocid")) 'Address
  loc_1481894: var_88.Collect = "KotDocid"
  loc_14818BE: var_C0 = CVar(Me.Recordset15.Fields.Item("kotSNo")) 'Address
  loc_14818CC: var_88.Collect = "kotSNo"
  loc_14818F6: var_C0 = CVar(Me.Recordset15.Fields.Item("VTIME")) 'Address
  loc_1481904: var_88.Collect = "VTIME"
  loc_148192E: var_C0 = CVar(Me.Recordset15.Fields.Item("U_Name")) 'Address
  loc_148193C: var_88.Collect = "U_Name"
  loc_1481966: var_C0 = CVar(Me.Recordset15.Fields.Item("U_EntDt")) 'Address
  loc_1481974: var_88.Collect = "U_EntDt"
  loc_148199E: var_C0 = CVar(Me.Recordset15.Fields.Item("U_AE")) 'Address
  loc_14819AC: var_88.Collect = "U_AE"
  loc_14819D6: var_C0 = CVar(Me.Recordset15.Fields.Item("Total")) 'Address
  loc_14819E4: var_88.Collect = "Total"
  loc_1481A0E: var_C0 = CVar(Me.Recordset15.Fields.Item("DiscApp")) 'Address
  loc_1481A1C: var_88.Collect = "DiscApp"
  loc_1481A46: var_C0 = CVar(Me.Recordset15.Fields.Item("RoundOff")) 'Address
  loc_1481A54: var_88.Collect = "RoundOff"
  loc_1481A7E: var_C0 = CVar(Me.Recordset15.Fields.Item("DepartCode")) 'Address
  loc_1481A8C: var_88.Collect = "DepartCode"
  loc_1481AB6: var_C0 = CVar(Me.Recordset15.Fields.Item("Godowncode")) 'Address
  loc_1481AC4: var_88.Collect = "Godowncode"
  loc_1481AEE: var_C0 = CVar(Me.Recordset15.Fields.Item("ChalQty")) 'Address
  loc_1481AFC: var_88.Collect = "ChalQty"
  loc_1481B26: var_C0 = CVar(Me.Recordset15.Fields.Item("RecdQty")) 'Address
  loc_1481B34: var_88.Collect = "RecdQty"
  loc_1481B5E: var_C0 = CVar(Me.Recordset15.Fields.Item("AccQty")) 'Address
  loc_1481B6C: var_88.Collect = "AccQty"
  loc_1481B96: var_C0 = CVar(Me.Recordset15.Fields.Item("RejQty")) 'Address
  loc_1481BA4: var_88.Collect = "RejQty"
  loc_1481BCE: var_C0 = CVar(Me.Recordset15.Fields.Item("RecdUnit")) 'Address
  loc_1481BDC: var_88.Collect = "RecdUnit"
  loc_1481C06: var_C0 = CVar(Me.Recordset15.Fields.Item("Specification")) 'Address
  loc_1481C14: var_88.Collect = "Specification"
  loc_1481C22: var_A8 = CVar(arg_18) 'Double
  loc_1481C30: var_88.Collect = "ItemRate"
  loc_1481C54: var_C0 = CVar(Me.Recordset15.Fields.Item("DelFlag")) 'Address
  loc_1481C62: var_88.Collect = "DelFlag"
  loc_1481C8C: var_C0 = CVar(Me.Recordset15.Fields.Item("LandVal")) 'Address
  loc_1481C9A: var_88.Collect = "LandVal"
  loc_1481CC4: var_C0 = CVar(Me.Recordset15.Fields.Item("ConvRatio")) 'Address
  loc_1481CD2: var_88.Collect = "ConvRatio"
  loc_1481CFC: var_C0 = CVar(Me.Recordset15.Fields.Item("IndentDocID")) 'Address
  loc_1481D0A: var_88.Collect = "IndentDocID"
  loc_1481D34: var_C0 = CVar(Me.Recordset15.Fields.Item("IndentSno")) 'Address
  loc_1481D42: var_88.Collect = "IndentSno"
  loc_1481D56: If (CInt(arg_1C) = 1) Then
  loc_1481D5C:   var_A8 = CVar(arg_14) 'Double
  loc_1481D6A:   var_88.Collect = "IssQty"
  loc_1481D72: Else
  loc_1481D91:   var_C0 = CVar(Me.Recordset15.Fields.Item("IssQty")) 'Address
  loc_1481D9F:   var_88.Collect = "IssQty"
  loc_1481DAA: End If
  loc_1481DC9: var_C0 = CVar(Me.Recordset15.Fields.Item("IssueUnit")) 'Address
  loc_1481DD7: var_88.Collect = "IssueUnit"
  loc_1481E01: var_C0 = CVar(Me.Recordset15.Fields.Item("LogSite_Code")) 'Address
  loc_1481E0F: var_88.Collect = "LogSite_Code"
  loc_1481E39: var_C0 = CVar(Me.Recordset15.Fields.Item("ShiftCode")) 'Address
  loc_1481E47: var_88.Collect = "ShiftCode"
  loc_1481E5A: var_98 = "ChkId"
  loc_1481E63: var_88.Collect = var_98
  loc_1481E73: var_88.Update var_98, CVar(arg_24)
  loc_1481E7A: Set var_88 = Nothing 
  loc_1481E7E: Exit Sub
End Sub

Public Sub Proc_79_32_1531E7C
  'Data Table: 4439A4
  Dim var_E0 As String
  Dim unk_4439E2 As Connection15
  Dim var_D4 As Recordset15
  Dim var_104 As Fields15
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_D8 As Recordset15
  Dim var_170 As Fields15
  Dim var_1A8 As Variant
  Dim var_A0 As Long
  Dim var_9A As Integer
  Dim var_100 As Variant
  Dim var_90 As Recordset15
  Dim var_88 As Recordset15
  Dim var_8C As Recordset15
  Dim var_D0 As Double
  Dim var_A8 As Double
  Dim var_B8 As Double
  Dim var_B0 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_16C As Variant
  loc_1530F18: unk_4439E2.Execute "Select * from ItemMast Where ItemType='Store' and LogSite_Code='" & MemVar_1F95078 & "'", var_100, -1
  loc_1530F23: Set var_D4 = var_104
  loc_1530F33: ' Referenced from: 1531147
  loc_1530F42: If Not(var_D4.EOF) Then
  loc_1530F81:   var_12C = "SELECT  * From Stock WHERE Vtype IN ('PBPB', 'PBPC', 'STOP','MRCH','MRCR') AND ITEM='" & var_D4.Fields.Item("Code").Value 
  loc_1530F98:   unk_4439E2.Execute CStr(var_12C & "' ORDER BY VDATE DESC"), var_16C, -1
  loc_1530FA3:   Set var_D8 = var_170
  loc_1530FD1:   If (var_D8.RecordCount > 0) Then
  loc_1531050:     var_1A8 = "Update ItemMast set LpurRate=" & var_D8.Fields.Item("Rate").Value & " Where Code='" & var_D4.Fields.Item("Code").Value & "' And ItemType='Store'" 
  loc_153105E:     unk_4439E2.Execute CStr(var_1A8), var_1C8, -1
  loc_1531087:   Else
  loc_15310AB:     var_104 = var_D4.Fields
  loc_15310BB:     var_100 = var_104.Item("PurchRate").Value
  loc_1531103:     var_1A8 = "Update ItemMast set LpurRate=" & var_100 & " Where Code='" & var_D4.Fields.Item("Code").Value & "' And ItemType='Store'" 
  loc_1531111:     unk_4439E2.Execute CStr(var_1A8), var_1C8, -1
  loc_1531137:   End If
  loc_153113C:   Set var_D8 = Nothing
  loc_1531142:   var_D4.MoveNext
  loc_1531147:   GoTo loc_1530F33
  loc_153114A: End If
  loc_153114F: Set var_D4 = Nothing
  loc_1531157: var_A0 = 1
  loc_153115C: var_9A = 1
  loc_1531183: unk_4439E2.Execute "Delete from mCurStk where VType In ('STOP','PBPB','RQR','MRCR') And logsite_code='" & MemVar_1F95078 & "'", var_100, -1
  loc_15311B9: unk_4439E2.Execute "Delete from mCurStk where logsite_code='" & MemVar_1F95078 & "'", var_100, -1
  loc_15311CF: Set var_90 = New 
  loc_15311DA: Me.Recordset15.CursorLocation = 3
  loc_1531204: var_100 = CVar("SELECT * FROM mCurStk where logsite_code='" & MemVar_1F95078 & "'") 'String
  loc_153120B: var_90.Open var_100, CVar(MemVar_1F95044), 2
  loc_1531231: var_E0 = "Select S.* from stock S left join voucher_type VT ON (S.Vtype=VT.V_Type and S.Site_Code=VT.Site_Code) where Ncat in ('MRE','PBR','PBC','STOP','KSREC','KMREC','RQI','BKREC')and GodownCode='" & MemVar_1F95078 & "PURC' Order By S.Item,S.Vdate,S.Vtype,S.Vno"
  loc_153123A: unk_4439E2.Execute var_E0, var_100, -1
  loc_1531245: Set var_88 = var_104
  loc_1531270: var_E0 = "Select S.* from stock S left join voucher_type VT ON (S.Vtype=VT.V_Type and S.Site_Code=Vt.Site_Code) where Ncat in ('RQR','KSISS','KMISS','PRR','PRC','BKISS') AND GODOWNCODE='" & MemVar_1F95078 & "PURC' Order By S.Item,S.Vdate,S.Vtype,S.Vno"
  loc_1531279: unk_4439E2.Execute var_E0, var_100, -1
  loc_1531284: Set var_8C = var_104
  loc_15312A8: If (var_88.RecordCount > 0) Then
  loc_15312AE:   var_88.MoveFirst
  loc_15312B3: End If
  loc_15312C7: If (var_8C.RecordCount > 0) Then
  loc_15312CD:   var_8C.MoveFirst
  loc_15312D2:   ' Referenced from: 1531E34
  loc_15312D2: End If
  loc_15312F0: If Not((var_88.EOF And var_8C.EOF)) Then
  loc_15312F6:   var_D0 = var_B8
  loc_153130A:   If (var_88.EOF = 0) Then
  loc_1531338:     var_94 = CStr(var_88.Fields.Item("Item").Value)
  loc_1531370:     var_A8 = CSng(var_88.Fields.Item("RecdQty").Value)
  loc_15313A8:     var_B8 = CSng(var_88.Fields.Item("Rate").Value)
  loc_15313B5:   End If
  loc_15313C6:   If (var_8C.EOF = 0) Then
  loc_15313F4:     var_98 = CStr(var_8C.Fields.Item("Item").Value)
  loc_153142C:     var_B0 = CSng(var_8C.Fields.Item("IssQty").Value)
  loc_1531439:     ' Referenced from: 1531D1C
  loc_1531439:     ' Referenced from: 1531C66
  loc_1531439:     ' Referenced from: 1531BD7
  loc_1531439:     ' Referenced from: 1531B77
  loc_1531439:     ' Referenced from: 15319E0
  loc_1531439:     ' Referenced from: 1531906
  loc_1531439:     ' Referenced from: 1531844
  loc_1531439:   End If
  loc_153145C:   If ((var_88.EOF = 0) And (var_8C.EOF = 0)) Then
  loc_153145F:     ' Referenced from: 15315A9
  loc_15314E2:     If CBool((CVar(var_94) = var_88.Fields.Item("Item").Value) And (CVar(var_B8) = var_88.Fields.Item("Rate").Value)) Then
  loc_1531524:       var_C0 = (var_C0 + CSng(var_88.Fields.Item("RecdQty").Value))
  loc_1531549:       var_100 = var_88.Fields.Item("Rate").Value
  loc_153156F:       Call Proc_79_31_1481E80(var_90)
  loc_1531581:       var_88.MoveNext
  loc_153158F:       var_A0 = (var_A0 + 1)
  loc_15315A3:       If (var_88.EOF = &HFF) Then
  loc_15315A6:         GoTo loc_15315AC
  loc_15315A9:       End If
  loc_15315A9:       GoTo loc_153145F
  loc_15315AC:       ' Referenced from: 15315A6
  loc_15315AC:     End If
  loc_15315AF:   Else
  loc_15315D2:     If ((var_88.EOF = 0) And (var_8C.EOF = &HFF)) Then
  loc_15315D5:       ' Referenced from:   153168C
  loc_15315E6:       If (var_88.EOF = 0) Then
  loc_1531614:         var_A8 = CSng(var_88.Fields.Item("RecdQty").Value)
  loc_1531643:         var_100 = var_88.Fields.Item("Rate").Value
  loc_1531669:         Call Proc_79_31_1481E80(var_90)
  loc_153167B:         var_88.MoveNext
  loc_1531689:         var_A0 = (var_A0 + 1)
  loc_153168C:         GoTo loc_15315D5
  loc_153168F:       End If
  loc_153168F:       GoTo loc_1531E37
  loc_1531695:     Else
  loc_15316B8:       If ((var_88.EOF = &HFF) And (var_8C.EOF = 0)) Then
  loc_15316BE:         var_8C.MoveNext
  loc_15316C3:         ' Referenced from:     1531776
  loc_15316D4:         If (var_8C.EOF = 0) Then
  loc_15316F9:           var_100 = var_8C.Fields.Item("IssQty").Value
  loc_1531720:           var_12C = var_8C.Fields.Item("Rate").Value
  loc_153174B:           Call Proc_79_31_1481E80(var_90)
  loc_1531765:           var_8C.MoveNext
  loc_1531773:           var_A0 = (var_A0 + 1)
  loc_1531776:           GoTo loc_15316C3
  loc_1531779:         End If
  loc_1531779:         GoTo loc_1531E37
  loc_153177F:       Else
  loc_15317A2:         If ((var_88.EOF = &HFF) And (var_8C.EOF = &HFF)) Then
  loc_15317A5:           GoTo loc_1531E37
  loc_15317A8:         End If
  loc_15317A8:       End If
  loc_15317A8:     End If
  loc_15317A8:   End If
  loc_15317E5:   If (CVar(var_94) > var_8C.Fields.Item("Item").Value) Then
  loc_15317EF:     If (var_C8 > CDbl(0)) Then
  loc_153180C:       Call Proc_79_31_1481E80(var_90)
  loc_153181A:       var_A0 = (var_A0 + 1)
  loc_1531820:       var_C8 = CDbl(0)
  loc_1531825:       var_9A = 1
  loc_153182B:       var_8C.MoveNext
  loc_1531841:       If (var_8C.EOF = &HFF) Then
  loc_1531844:         GoTo loc_1531439
  loc_1531847:         ' Referenced from: 1531909
  loc_1531847:       End If
  loc_1531847:     End If
  loc_1531884:     If (CVar(var_94) > var_8C.Fields.Item("Item").Value) Then
  loc_15318A9:       var_100 = var_8C.Fields.Item("IssQty").Value
  loc_15318CF:       Call Proc_79_31_1481E80(var_90)
  loc_15318E1:       var_8C.MoveNext
  loc_15318EF:       var_A0 = (var_A0 + 1)
  loc_1531903:       If (var_8C.EOF = &HFF) Then
  loc_1531906:         GoTo loc_1531439
  loc_1531909:       End If
  loc_1531909:       GoTo loc_1531847
  loc_153190C:     End If
  loc_153190F:     var_C8 = CDbl(0)
  loc_1531912:   End If
  loc_1531961:   var_16C = (CVar(var_94) = var_8C.Fields.Item("Item").Value) And (var_C8 > CDbl(0)) And (var_C0 > CDbl(0))
  loc_1531977:   If CBool(var_16C) Then
  loc_1531981:     If (var_C0 >= var_C8) Then
  loc_153199E:       Call Proc_79_31_1481E80(var_90)
  loc_15319AA:       var_C0 = (var_C0 - var_C8)
  loc_15319AF:       var_9A = 1
  loc_15319B5:       var_C8 = CDbl(0)
  loc_15319BB:       var_8C.MoveNext
  loc_15319C9:       var_A0 = (var_A0 + 1)
  loc_15319DD:       If (var_8C.EOF = &HFF) Then
  loc_15319E0:         GoTo loc_1531439
  loc_15319E3:       End If
  loc_15319E6:     Else
  loc_1531A00:       Call Proc_79_31_1481E80(var_90)
  loc_1531A0C:       var_C8 = (var_C8 - var_C0)
  loc_1531A18:       var_A0 = (var_A0 + 1)
  loc_1531A21:       var_9A = (var_9A + 1)
  loc_1531A27:       var_C0 = CDbl(0)
  loc_1531A2A:       ' Referenced from:   1531B7A
  loc_1531A2A:     End If
  loc_1531A2A:   End If
  loc_1531AAD:   If CBool((CVar(var_94) = var_8C.Fields.Item("Item").Value) And (CVar(var_C0) >= var_8C.Fields.Item("IssQty").Value)) Then
  loc_1531AE1:     var_12C = (CVar(var_C0) - var_8C.Fields.Item("IssQty").Value)
  loc_1531AE6:     var_C0 = CSng(var_12C)
  loc_1531AF5:     var_9A = 1
  loc_1531B1A:     var_100 = var_8C.Fields.Item("IssQty").Value
  loc_1531B40:     Call Proc_79_31_1481E80(var_90)
  loc_1531B52:     var_8C.MoveNext
  loc_1531B60:     var_A0 = (var_A0 + 1)
  loc_1531B74:     If (var_8C.EOF = &HFF) Then
  loc_1531B77:       GoTo loc_1531439
  loc_1531B7A:     End If
  loc_1531B7A:     GoTo loc_1531A2A
  loc_1531B7D:   End If
  loc_1531BBA:   If (CVar(var_94) < var_8C.Fields.Item("Item").Value) Then
  loc_1531BC0:     var_C0 = CDbl(0)
  loc_1531BD4:     If (var_88.EOF = &HFF) Then
  loc_1531BD7:       GoTo loc_1531439
  loc_1531BDA:     End If
  loc_1531C05:     var_94 = CStr(var_88.Fields.Item("Item").Value)
  loc_1531C12:     ' Referenced from: 1531D57
  loc_1531C4F:     If (CVar(var_94) < var_8C.Fields.Item("Item").Value) Then
  loc_1531C63:       If (var_88.EOF = &HFF) Then
  loc_1531C66:         GoTo loc_1531439
  loc_1531C69:       End If
  loc_1531C8B:       var_100 = var_88.Fields.Item("RecdQty").Value
  loc_1531CB2:       var_12C = var_88.Fields.Item("Rate").Value
  loc_1531CDD:       Call Proc_79_31_1481E80(var_90)
  loc_1531CF7:       var_88.MoveNext
  loc_1531D05:       var_A0 = (var_A0 + 1)
  loc_1531D19:       If (var_88.EOF = &HFF) Then
  loc_1531D1C:         GoTo loc_1531439
  loc_1531D1F:       End If
  loc_1531D4A:       var_94 = CStr(var_88.Fields.Item("Item").Value)
  loc_1531D57:       GoTo loc_1531C12
  loc_1531D5A:     End If
  loc_1531D5D:     var_C8 = CDbl(0)
  loc_1531D60:   End If
  loc_1531DA0:   var_14C = (CVar(var_94) = var_8C.Fields.Item("Item").Value) And (var_C0 > CDbl(0))
  loc_1531DB4:   If CBool(var_14C) Then
  loc_1531DD1:     Call Proc_79_31_1481E80(var_90)
  loc_1531E07:     var_12C = (var_8C.Fields.Item("IssQty").Value - CVar(var_C0))
  loc_1531E0C:     var_C8 = CSng(var_12C)
  loc_1531E22:     var_A0 = (var_A0 + 1)
  loc_1531E2B:     var_9A = (var_9A + 1)
  loc_1531E31:     var_C0 = CDbl(0)
  loc_1531E34:   End If
  loc_1531E34:   GoTo loc_15312D2
  loc_1531E37:   ' Referenced from: 15317A5
  loc_1531E37:   ' Referenced from: 1531779
  loc_1531E37:   ' Referenced from: 153168F
  loc_1531E37: End If
  loc_1531E3C: Set var_90 = Nothing
  loc_1531E44: Set var_88 = Nothing
  loc_1531E4C: Set var_8C = Nothing
  loc_1531E68: MsgBox("FIFO Stock Evaluation Process Completed", &H40, var_12C, var_14C, var_16C)
  loc_1531E78: Exit Sub
End Sub

Public Sub Proc_79_33_FA0CC4
  'Data Table: 4439A4
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_FA0B52: Me.FGrid.Left = CVar(CDbl(&HF))
  loc_FA0B6D: Me.FGrid.Top = CVar(CDbl(1330))
  loc_FA0B79: Set var_AC = Me.FGrid
  loc_FA0B90: global_80 = CStr(CLng(var_AC.BackColor))
  loc_FA0BA6: var_AC.Cols = 5
  loc_FA0BAB: var_94 = 0
  loc_FA0BB7: var_D0 = CVar(CLng(0)) 'Long
  loc_FA0BBC: var_F0 = "Bill_No"
  loc_FA0BC5: LateIdCallSt
  loc_FA0BD0: var_94 = CVar(CLng(0)) 'Long
  loc_FA0BDB: var_D0 = CVar(CInt(1)) 'Integer
  loc_FA0BE2: LateIdCallSt
  loc_FA0BED: var_94 = CVar(CLng(0)) 'Long
  loc_FA0BF2: var_D0 = &H3E8
  loc_FA0BFE: LateIdCallSt
  loc_FA0C06: var_94 = 0
  loc_FA0C12: var_D0 = CVar(CLng(1)) 'Long
  loc_FA0C17: var_F0 = "Settle_Date"
  loc_FA0C20: LateIdCallSt
  loc_FA0C2B: var_94 = CVar(CLng(1)) 'Long
  loc_FA0C36: var_D0 = CVar(CInt(1)) 'Integer
  loc_FA0C3D: LateIdCallSt
  loc_FA0C48: var_94 = CVar(CLng(1)) 'Long
  loc_FA0C4D: var_D0 = &H5DC
  loc_FA0C59: LateIdCallSt
  loc_FA0C61: var_94 = 0
  loc_FA0C6D: var_D0 = CVar(CLng(2)) 'Long
  loc_FA0C72: var_F0 = "Folio_No"
  loc_FA0C7B: LateIdCallSt
  loc_FA0C86: var_94 = CVar(CLng(2)) 'Long
  loc_FA0C91: var_D0 = CVar(CInt(1)) 'Integer
  loc_FA0C98: LateIdCallSt
  loc_FA0CA3: var_94 = CVar(CLng(2)) 'Long
  loc_FA0CA8: var_D0 = &H3E8
  loc_FA0CB4: LateIdCallSt
  loc_FA0CBE: Set var_AC = Nothing 
  loc_FA0CC2: Exit Sub
End Sub
