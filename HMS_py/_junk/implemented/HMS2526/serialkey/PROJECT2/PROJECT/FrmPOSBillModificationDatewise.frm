VERSION 5.00
Begin VB.Form FrmPOSBillModificationDatewise
  Caption = "POS Bill Deletion Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin CommandButton Command1
    Caption = "Serialize Bill"
    Left = 11880
    Top = 3330
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 19
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
  Begin CommandButton CmdExit
    Caption = "E&xit"
    Left = 3915
    Top = 8280
    Width = 1545
    Height = 495
    TabIndex = 17
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
  Begin CommandButton CmdDelete
    Caption = "&Delete"
    Left = 2250
    Top = 8280
    Width = 1545
    Height = 495
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
  End
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 8415
    Top = 2250
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdFill
    Caption = "&Fill"
    Left = 6075
    Top = 915
    Width = 1125
    Height = 780
    TabIndex = 4
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
  Begin CheckBox Check1
    Caption = "All"
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 825
    Top = 1995
    Width = 915
    Height = 195
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 15135
    Height = 375
    Visible = 0   'False
    TabIndex = 10
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2610
    Top = 1425
    Width = 3345
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2610
    Top = 1155
    Width = 3345
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2610
    Top = 885
    Width = 1635
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2610
    Top = 615
    Width = 1635
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin MSHFlexGrid GridSel
    Left = 735
    Top = 1920
    Width = 6500
    Height = 6000
    TabIndex = 5
  End
  Begin DataGrid DGRestType
    Left = 8310
    Top = 6585
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin MSFlexGrid FGPoint
    Left = 8460
    Top = 2505
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 13
  End
  Begin DataGrid DGPayType
    Left = 7995
    Top = 6225
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin Label Label1
    Left = 780
    Top = 7920
    Width = 6360
    Height = 270
    TabIndex = 18
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
  Begin Label LblName
    Caption = "Mode Of Payment"
    Index = 3
    ForeColor = &H0&
    Left = 975
    Top = 1440
    Width = 1515
    Height = 240
    TabIndex = 9
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
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 2
    ForeColor = &H0&
    Left = 975
    Top = 1155
    Width = 1050
    Height = 240
    TabIndex = 8
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
  Begin Label LblName
    Caption = "From Date"
    Index = 0
    ForeColor = &H0&
    Left = 975
    Top = 615
    Width = 900
    Height = 240
    TabIndex = 7
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
  Begin Label LblName
    Caption = "To Date"
    Index = 1
    ForeColor = &H0&
    Left = 975
    Top = 870
    Width = 675
    Height = 240
    TabIndex = 6
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
End

Attribute VB_Name = "FrmPOSBillModificationDatewise"

Private global_52 As Integer
Private global_84 As Long

Private Sub Form_Load() 'F6DB98
  'Data Table: 479FA8
  Dim var_8C As String
  Dim var_94 As String
  Dim unk_479FBA As Connection15
  Dim var_B8 As CommandButton
  loc_F6DA64: On Error Goto loc_F6DB8F
  loc_F6DA90: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F95078 & "RS' And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_F6DA99: unk_479FBA.Execute var_94, var_B4, -1
  loc_F6DACC: CVarUnk
  loc_F6DAD1: VerifyVarObj
  loc_F6DADD: LateIdStAd
  loc_F6DB06: var_8C = "SELECT Code,Name,PayType FROM RevMast Where PayType In('Cash','Member','Complementary') And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND FieldType='P' ORDER BY Name"
  loc_F6DB0F: unk_479FBA.Execute var_8C, var_B4, -1
  loc_F6DB3E: CVarUnk
  loc_F6DB43: VerifyVarObj
  loc_F6DB49: Set var_B8 = Me.DGPayType
  loc_F6DB4F: LateIdStAd
  loc_F6DB63: Set var_B8 = Me.CmdDelete
  loc_F6DB69: var_B8.Enabled = False
  loc_F6DB71: Call Proc_217_22_117C1C8(var_B8, Me.DGRestType, var_B8)
  loc_F6DB7D: Call 0.Method_arg_7C (CDbl(0), var_B8)
  loc_F6DB89: Call 0.Method_arg_74 (CDbl(0), var_B8)
  loc_F6DB8E: Exit Sub
  loc_F6DB8F: ' Referenced from: F6DA64
  loc_F6DB8F: Proc_6_60_E63754(var_B8)
  loc_F6DB94: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E60548
  'Data Table: 479FA8
  loc_E60507: Set global_64 = Nothing
  loc_E60519: Set global_76 = Nothing
  loc_E6052B: Set global_68 = Nothing
  loc_E6053D: Set global_72 = Nothing
  loc_E60544: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29398
  'Data Table: 479FA8
  loc_E29370: On Error Goto loc_E2938F
  loc_E29387: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2938F: ' Referenced from: E29370
  loc_E2938F: Proc_6_60_E63754(Shift)
  loc_E29394: Exit Sub
End Sub

Private Sub CmdDelete_Click() '114049C
  'Data Table: 479FA8
  Dim var_8C As Variant
  Dim var_90 As TextBox
  Dim unk_479FBA As Connection15
  Dim var_CC As Variant
  Dim var_E0 As Field20
  Dim var_86 As Integer
  Dim var_C4 As Variant
  Dim var_120 As Variant
  Dim var_180 As Variant
  Dim var_94 As String
  loc_114014C: On Error Goto loc_114047F
  loc_114015B: Me.CmdDelete.Enabled = False
  loc_1140170: Me.Label1.Caption = "Deleting..."
  loc_1140182: Me.Label1.Refresh
  loc_11401BA: Set var_8C = Me.Txt
  loc_11401C0: Call 0.Method_CmdDelete_Click0 (CInt(2), var_90, var_94, "SELECT SHORTNAME FROM DEPART WHERE CODE='", var_C4, -1)
  loc_11401EF: unk_479FBA.Execute var_CC & var_94 & "'And Logsite_Code='" & MemVar_1F95078 & "'", 0, var_E0
  loc_11401F7: var_F0 = var_90.Tag.Fields
  loc_11401FF:  = var_CC.Item("B")
  loc_1140207:  = var_E0.Value
  loc_1140255: unk_479FBA.BeginTrans var_FC
  loc_1140270: unk_479FBA.Execute "Delete from TempPosDel", var_C4, -1
  loc_11402A4: Call Proc_217_27_11A8DA4(global_60, CByte(Me.Check1.Value), var_C4)
  loc_11402D2: Call 0.Method_CmdDelete_Click0 (CInt(0), var_90, "Insert into TempPosDel(OldDocId,OldVno) Select DocId,Vno from Sale1 Where VDate>= ", var_1C0)
  loc_11402E1: Proc_6_7_F26918(var_F0, CVar(var_90), -1)
  loc_11402F2: var_120 = var_E0 & var_F0 & " And RestCode='" 
  loc_114030A: Call 0.Method_CmdDelete_Click0 (CInt(2), var_CC, var_94)
  loc_1140312: var_120 = var_CC.Tag
  loc_1140347: unk_479FBA.Execute CStr(Me.Txt & CVar(var_94) & "' And Logsite_Code='" & CVar(MemVar_1F95078) & "' Order by Vno,VDate"), &HFF, 
  loc_1140371: Call Proc_217_26_107BC10()
  loc_1140376: Call Proc_217_25_130F118()
  loc_11403AC: Set var_8C = Me.Txt
  loc_11403B2: Call 0.Method_CmdDelete_Click0 (CInt(1), var_90, CVar("UPDATE VOUCHER_PREFIX SET START_SRL_NO=" & CStr(global_84) & " WHERE "))
  loc_11403C1: Proc_6_7_F26918(var_F0, CVar(var_90), var_1C0)
  loc_11403C9: var_120 = -1 & var_F0 
  loc_11403F2: var_180 = var_120 & " BETWEEN DATE_FROM AND DATE_TO AND V_TYPE='" & CVar(Proc_6_38_E69628(var_F0)) & "' And Logsite_Code='" & CVar(MemVar_1F95078) 
  loc_1140409: unk_479FBA.Execute CStr(var_180 & "'"), Me.Txt, 
  loc_114043B: unk_479FBA.CommitTrans
  loc_1140442: var_86 = 0
  loc_1140450: Set global_76 = Nothing
  loc_1140464: Me.Label1.Caption = "Deletion Completed."
  loc_1140476: Me.Label1.Refresh
  loc_114047E: Exit Sub
  loc_114047F: ' Referenced from: 114014C
  loc_1140485: If (var_86 = &HFF) Then
  loc_114048E:   unk_479FBA.RollbackTrans
  loc_1140493: End If
  loc_1140493: Proc_6_60_E63754(var_86)
  loc_1140498: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12E32F0
  'Data Table: 479FA8
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  loc_12E2C3C: On Error Goto loc_12E32AB
  loc_12E2C49: Set var_88 = Me.Txt
  loc_12E2C4F: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12E2C5D: Proc_6_74_E23240(var_8C)
  loc_12E2C69: Call Proc_217_28_EBA158(var_8C)
  loc_12E2C71: var_92 = Index
  loc_12E2C7C: If (var_92 = CInt(0)) Then
  loc_12E2C8C:   Set var_88 = Me.Txt
  loc_12E2C92:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E2CAD:   Set var_90 = Me.Txt
  loc_12E2CB3:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E2CBB:   var_9C.SelLength = Len(var_8C.Text)
  loc_12E2CDB:   Set var_88 = Me.Txt
  loc_12E2CE1:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E2CFB:   Set var_90 = Me.Txt
  loc_12E2D01:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E2D09:   var_9C.Tag = var_8C.Text
  loc_12E2D1F: Else
  loc_12E2D27:   If (var_92 = CInt(1)) Then
  loc_12E2D37:     Set var_88 = Me.Txt
  loc_12E2D3D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E2D58:     Set var_90 = Me.Txt
  loc_12E2D5E:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E2D66:     var_9C.SelLength = Len(var_8C.Text)
  loc_12E2D86:     Set var_88 = Me.Txt
  loc_12E2D8C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E2D94:     var_98 = var_8C.Text
  loc_12E2DA6:     Set var_90 = Me.Txt
  loc_12E2DAC:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E2DB4:     var_9C.Tag = var_98
  loc_12E2DCA:   Else
  loc_12E2DD2:     If (var_92 = CInt(2)) Then
  loc_12E2DE3:       Set var_88 = Me.Txt
  loc_12E2DE9:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E2E08:       Me.DGRestType.Left = CVar(var_8C.Left)
  loc_12E2E24:       Set var_90 = Me.Txt
  loc_12E2E2A:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_9C)
  loc_12E2E45:       Set var_88 = Me.Txt
  loc_12E2E4B:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E2E63:       var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E2E72:       Me.DGRestType.Top = CVar(var_8C.Left)
  loc_12E2E93:       Me.Filter = 0
  loc_12E2EA4:       Me.Filter = "RestType<>'Kitchen'"
  loc_12E2EC0:       If (Me.RecordCount > 0) Then
  loc_12E2ECE:         Set var_8C = Me.FGPoint
  loc_12E2EE6:         Proc_6_137_1192FDC(Me.DGRestType, global_68, Index)
  loc_12E2EF4:       End If
  loc_12E2F42:       Set var_88 = Me.Txt
  loc_12E2F48:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E2F50:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E2F68:       If (var_8C Or (var_98 = vbNullString)) Then
  loc_12E2F6B:         Exit Sub
  loc_12E2F6C:       End If
  loc_12E2F79:       Set var_88 = Me.Txt
  loc_12E2F7F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E2F87:       var_98 = var_8C.Text
  loc_12E2F99:       var_B0 = "Name"
  loc_12E2FB0:       var_9C = Me.Fields.Item(var_B0)
  loc_12E2FD4:       If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_12E2FDD:         Me.MoveFirst
  loc_12E3000:         Set var_88 = Me.Txt
  loc_12E3006:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E300E:         0 = var_8C.Text
  loc_12E3027:         Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_12E303C:       End If
  loc_12E304F:       Me.DGRestType.Tag = CVar(CStr(Index))
  loc_12E305D:     Else
  loc_12E3065:       If (var_92 = CInt(3)) Then
  loc_12E3076:         Set var_88 = Me.Txt
  loc_12E307C:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E309B:         Me.DGPayType.Left = CVar(var_8C.Left)
  loc_12E30B7:         Set var_90 = Me.Txt
  loc_12E30BD:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_9C)
  loc_12E30D8:         Set var_88 = Me.Txt
  loc_12E30DE:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E30F6:         var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E3105:         Me.DGPayType.Top = CVar(var_8C.Left)
  loc_12E312E:         If (Me.RecordCount > 0) Then
  loc_12E313C:           Set var_8C = Me.FGPoint
  loc_12E3154:           Proc_6_137_1192FDC(Me.DGPayType, global_72)
  loc_12E3162:         End If
  loc_12E31B0:         Set var_88 = Me.Txt
  loc_12E31B6:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E31BE:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E31D6:         If (Index Or (var_98 = vbNullString)) Then
  loc_12E31D9:           Exit Sub
  loc_12E31DA:         End If
  loc_12E31E7:         Set var_88 = Me.Txt
  loc_12E31ED:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E31F5:         var_98 = var_8C.Text
  loc_12E3207:         var_B0 = "Name"
  loc_12E3242:         If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_12E324B:           Me.MoveFirst
  loc_12E326E:           Set var_88 = Me.Txt
  loc_12E3274:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E327C:           0 = var_8C.Text
  loc_12E3295:           Me.Find 1 & var_98 & "'", var_B0, var_8C
  loc_12E32AA:         End If
  loc_12E32AA:       End If
  loc_12E32AA:     End If
  loc_12E32AA:   End If
  loc_12E32AA: End If
  loc_12E32AA: Exit Sub
  loc_12E32AB: ' Referenced from: 12E2C3C
  loc_12E32B3: Set var_88 = Err()
  loc_12E32B9: Call 0.Method_arg_2C (var_98)
  loc_12E32DA: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_124)
  loc_12E32ED: Exit Sub
  loc_12E32EE: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10CBB08
  'Data Table: 479FA8
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_10CB81E: If (CLng(Shift) = &H1B) Then
  loc_10CB821:   Call Proc_217_28_EBA158()
  loc_10CB826:   Exit Sub
  loc_10CB827: End If
  loc_10CB82A: var_88 = KeyCode
  loc_10CB835: If (var_88 = CInt(2)) Then
  loc_10CB855:   Set var_9C = Me.FGPoint
  loc_10CB860:   Set var_98 = Nothing
  loc_10CB88E:   Proc_6_69_134A630(Me.DGRestType, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_10CB8FD:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CB923:     Proc_6_138_106E830(Me.DGRestType, global_68, KeyCode, Me.FGPoint, 1)
  loc_10CB931:   End If
  loc_10CB934: Else
  loc_10CB93C:   If (var_88 = CInt(3)) Then
  loc_10CB95C:     Set var_9C = Me.FGPoint
  loc_10CB967:     Set var_98 = Nothing
  loc_10CB999:     Proc_6_69_134A630(Me.DGPayType, Me.Txt, CInt(3), global_72, Shift, 0, 1)
  loc_10CBA08:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CBA0F:       Set var_98 = Me.DGPayType
  loc_10CBA2E:       Proc_6_138_106E830(var_98, global_72, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10CBA3C:     End If
  loc_10CBA3C:   End If
  loc_10CBA3C: End If
  loc_10CBA77: If ((CBool(Me.DGRestType.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) Then
  loc_10CBAA1:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(0)) Or (KeyCode = CInt(1)))) Then
  loc_10CBAAA:     Call Txt_Validate(KeyCode)
  loc_10CBAB5:     If (var_86 = &HFF) Then
  loc_10CBAB8:       Exit Sub
  loc_10CBAB9:     End If
  loc_10CBABF:     Proc_6_75_E5335C(Shift, arg_14, var_86, 0)
  loc_10CBAC7:   Else
  loc_10CBADC:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10CBAE5:       Proc_6_75_E5335C(Shift, arg_14, var_98)
  loc_10CBAED:     Else
  loc_10CBAF7:       If (CLng(Shift) = &H26) Then
  loc_10CBB00:         Proc_6_76_E533C8(Shift, arg_14, var_9C)
  loc_10CBB05:       End If
  loc_10CBB05:     End If
  loc_10CBB05:   End If
  loc_10CBB05: End If
  loc_10CBB05: Exit Sub
  loc_10CBB06: 0 = var_88
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F8EE7C
  'Data Table: 479FA8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F8ED1F: Proc_6_58_E06050(arg_10)
  loc_F8ED2A: Proc_6_133_E7FB08(var_94)
  loc_F8ED33: arg_10 = CInt(var_94)
  loc_F8ED3C: var_96 = KeyAscii
  loc_F8ED47: If (var_96 = CInt(2)) Then
  loc_F8ED66:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_F8ED93:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F8EDC5:     Proc_6_138_106E830(Me.DGRestType, global_68, KeyAscii, Me.FGPoint)
  loc_F8EDD3:   End If
  loc_F8EDD6: Else
  loc_F8EDDE:   If (var_96 = CInt(3)) Then
  loc_F8EDFD:     If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F8EE35:       Proc_6_68_12A2818(Me.DGPayType, Me.Txt, KeyAscii, global_72, arg_10)
  loc_F8EE6B:       Proc_6_138_106E830(Me.DGPayType, global_72, KeyAscii, Me.FGPoint, "Name")
  loc_F8EE79:     End If
  loc_F8EE79:   End If
  loc_F8EE79: End If
  loc_F8EE79: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4BFAC
  'Data Table: 479FA8
  loc_E4BF8A: Set var_88 = Me.Txt
  loc_E4BF90: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4BF9E: Proc_6_73_E23294(var_8C)
  loc_E4BFAA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1166110
  'Data Table: 479FA8
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As TextBox
  loc_1165D60: On Error Goto loc_11660C9
  loc_1165D66: var_86 = Cancel
  loc_1165D71: If (var_86 = CInt(0)) Then
  loc_1165D7E:   Set var_8C = Me.Txt
  loc_1165D84:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1165DA4:   Set var_98 = Me.Txt
  loc_1165DAA:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1165DB2:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_1165DC8: Else
  loc_1165DD0:   If (var_86 = CInt(1)) Then
  loc_1165DDD:     Set var_8C = Me.Txt
  loc_1165DE3:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1165E03:     Set var_98 = Me.Txt
  loc_1165E09:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1165E11:     var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_1165E27:   Else
  loc_1165E2F:     If (var_86 = CInt(2)) Then
  loc_1165E3F:       Set var_8C = Me.Txt
  loc_1165E45:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1165E64:       If (var_90.Text <> vbNullString) Then
  loc_1165EA2:         Set var_94 = Me.Txt
  loc_1165EA8:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1165EB0:         var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1165EE3:         var_90 = Me.Fields.Item("Code")
  loc_1165F01:         Set var_94 = Me.Txt
  loc_1165F07:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1165F0F:         var_98.Tag = CStr(var_90.Value)
  loc_1165F28:       Else
  loc_1165F35:         Set var_8C = Me.Txt
  loc_1165F3B:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1165F43:         var_90.Text = vbNullString
  loc_1165F5C:         Set var_8C = Me.Txt
  loc_1165F62:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1165F6A:         var_90.Tag = vbNullString
  loc_1165F76:       End If
  loc_1165F79:     Else
  loc_1165F81:       If (var_86 = CInt(3)) Then
  loc_1165F91:         Set var_8C = Me.Txt
  loc_1165F97:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1165FB6:         If (var_90.Text <> vbNullString) Then
  loc_1165FF4:           Set var_94 = Me.Txt
  loc_1165FFA:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1166002:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1166035:           var_90 = Me.Fields.Item("Code")
  loc_1166046:           var_A0 = CStr(var_90.Value)
  loc_1166053:           Set var_94 = Me.Txt
  loc_1166059:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1166061:           var_98.Tag = var_A0
  loc_116607A:         Else
  loc_1166087:           Set var_8C = Me.Txt
  loc_116608D:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1166095:           var_90.Text = vbNullString
  loc_11660AE:           Set var_8C = Me.Txt
  loc_11660B4:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11660BC:           var_90.Tag = vbNullString
  loc_11660C8:         End If
  loc_11660C8:       End If
  loc_11660C8:     End If
  loc_11660C8:   End If
  loc_11660C8: End If
  loc_11660C8: Exit Sub
  loc_11660C9: ' Referenced from: 1165D60
  loc_11660D1: Set var_8C = Err()
  loc_11660D7: Call 0.Method_arg_2C (var_A0)
  loc_11660F8: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_116610B: Exit Sub
  loc_116610C: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F47F14
  'Data Table: 479FA8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F47E0B: Me.DGRestType.Visible = False
  loc_F47E2A: If (Me.RecordCount > 0) Then
  loc_F47E69:   Set var_B4 = Me.Txt
  loc_F47E6F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F47E77:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F47EAA:   var_B0 = Me.Fields.Item("Code")
  loc_F47EC9:   Set var_B4 = Me.Txt
  loc_F47ECF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F47ED7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F47EED: End If
  loc_F47EF8: Set var_A8 = Me.Txt
  loc_F47EFE: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2))
  loc_F47F06: var_B0.SetFocus
  loc_F47F12: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E74418
  'Data Table: 479FA8
  loc_E743D6: Proc_6_153_E91D24(Me.DGRestType, arg_14)
  loc_E743ED: Set var_8C = Me.FGPoint
  loc_E74409: Proc_6_138_106E830(Me.DGRestType, global_68, CInt(2))
  loc_E74417: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F481D4
  'Data Table: 479FA8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F480CB: Me.DGPayType.Visible = False
  loc_F480EA: If (Me.RecordCount > 0) Then
  loc_F48129:   Set var_B4 = Me.Txt
  loc_F4812F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F48137:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4816A:   var_B0 = Me.Fields.Item("Code")
  loc_F48189:   Set var_B4 = Me.Txt
  loc_F4818F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F48197:   var_B8.Tag = CStr(var_B0.Value)
  loc_F481AD: End If
  loc_F481B8: Set var_A8 = Me.Txt
  loc_F481BE: Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3))
  loc_F481C6: var_B0.SetFocus
  loc_F481D2: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'E74824
  'Data Table: 479FA8
  loc_E747E2: Proc_6_153_E91D24(Me.DGPayType, arg_14)
  loc_E747F9: Set var_8C = Me.FGPoint
  loc_E74815: Proc_6_138_106E830(Me.DGPayType, global_72, CInt(3))
  loc_E74823: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E1B3B4
  'Data Table: 479FA8
  loc_E1B3A9: Me.Global.Unload Me
  loc_E1B3B1: Exit Sub
End Sub

Private Sub Command1_Click() 'DFC7F4
  'Data Table: 479FA8
  Dim var_B01 As Double
  loc_DFC7F0: Exit Sub
  loc_DFC7F1: var_B01 = 
End Sub

Private Sub Check1_Click() 'F69784
  'Data Table: 479FA8
  Dim var_9C As Variant
  loc_F69667: If (CLng(Me.Check1.Value) = 0) Then
  loc_F69678:   Me.GridSel.Enabled = True
  loc_F6969F:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F696B5:     Me.GridSel.Row = 1
  loc_F696D0:     Me.GridSel.Col = 0
  loc_F696D8:   End If
  loc_F696DB: Else
  loc_F696EA:   Me.GridSel.Enabled = False
  loc_F69711:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F69727:     Me.GridSel.Row = 0
  loc_F69742:     Me.GridSel.Col = 0
  loc_F69763:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F69772:     Me.GridSel.RowSel = 0
  loc_F69781:   End If
  loc_F69781: End If
  loc_F69781: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E22D50
  'Data Table: 479FA8
  loc_E22D36: If (KeyCode = &HD) Then
  loc_E22D47:   Proc_303_0_FBACC8("	")
  loc_E22D4F: End If
  loc_E22D4F: Exit Sub
End Sub

Private Sub CmdFill_Click() '1190974
  'Data Table: 479FA8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_1190597: Set var_88 = Me.Txt
  loc_119059D: Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_11905C6: If (Proc_6_27_EA61EC(var_8C, "From Date") = 0) Then
  loc_11905C9:   Exit Sub
  loc_11905CA: End If
  loc_11905D8: Set var_88 = Me.Txt
  loc_11905DE: Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_1190602: Set var_90 = Me.Txt
  loc_1190608: Call 0.Method_CmdFill_Click0 (CInt(0), var_98, var_9C)
  loc_1190610: (CDate(var_8C.Text) > MemVar_1F950FC) = var_98.Text
  loc_1190631: If (var_8C Or (CDate(var_9C) < MemVar_1F950F4)) Then
  loc_119064D:   MsgBox("FromDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_1190668:   Set var_88 = Me.Txt
  loc_119066E:   Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_1190676:   var_8C.SetFocus
  loc_1190682:   Exit Sub
  loc_1190683: End If
  loc_119068E: Set var_88 = Me.Txt
  loc_1190694: Call 0.Method_CmdFill_Click0 (CInt(1), var_8C)
  loc_11906BD: If (Proc_6_27_EA61EC(var_8C, "To Date") = 0) Then
  loc_11906C0:   Exit Sub
  loc_11906C1: End If
  loc_11906CF: Set var_88 = Me.Txt
  loc_11906D5: Call 0.Method_CmdFill_Click0 (CInt(1), var_8C)
  loc_11906F9: Set var_90 = Me.Txt
  loc_11906FF: Call 0.Method_CmdFill_Click0 (CInt(1), var_98, var_9C)
  loc_1190707: (CDate(var_8C.Text) > MemVar_1F950FC) = var_98.Text
  loc_1190728: If (var_8C Or (CDate(var_9C) < MemVar_1F950F4)) Then
  loc_1190744:   MsgBox("ToDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_119075F:   Set var_88 = Me.Txt
  loc_1190765:   Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_119076D:   var_8C.SetFocus
  loc_1190779:   Exit Sub
  loc_119077A: End If
  loc_1190788: Set var_90 = Me.Txt
  loc_119078E: Call 0.Method_CmdFill_Click0 (CInt(1), var_98)
  loc_11907A9: Set var_88 = Me.Txt
  loc_11907AF: Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_11907D9: If (CDate(var_8C.Text) > CDate(var_98.Text)) Then
  loc_11907F5:   MsgBox("FromDate must be less than ToDate", &H10, var_DC, var_FC, var_11C)
  loc_1190810:   Set var_88 = Me.Txt
  loc_1190816:   Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_119081E:   var_8C.SetFocus
  loc_119082A:   Exit Sub
  loc_119082B: End If
  loc_1190836: Set var_88 = Me.Txt
  loc_119083C: Call 0.Method_CmdFill_Click0 (CInt(2), var_8C)
  loc_1190865: If (Proc_6_27_EA61EC(var_8C, "Outlet") = 0) Then
  loc_1190868:   Exit Sub
  loc_1190869: End If
  loc_1190874: Set var_88 = Me.Txt
  loc_119087A: Call 0.Method_CmdFill_Click0 (CInt(3), var_8C)
  loc_11908A3: If (Proc_6_27_EA61EC(var_8C, "Payment Mode") = 0) Then
  loc_11908A6:   Exit Sub
  loc_11908A7: End If
  loc_11908B3: Me.CmdFill.Enabled = False
  loc_11908C8: Me.Label1.Caption = "Processing..."
  loc_11908DA: Me.Label1.Refresh
  loc_11908E2: Call Proc_217_22_117C1C8(var_8C)
  loc_11908E7: Call Proc_217_23_13A3028()
  loc_11908FF: Me.GridSel.Row = 1
  loc_119091A: Me.GridSel.Col = 0
  loc_1190926: Set var_88 = Me.GridSel
  loc_1190944: Me.Label1.Caption = vbNullString
  loc_1190956: Me.Label1.Refresh
  loc_119096A: Me.CmdFill.Enabled = True
  loc_1190972: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(Index As Integer) 'FDA784
  'Data Table: 479FA8
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FDA5D2: If (Index = &HD) Then
  loc_FDA5E3:   Proc_303_0_FBACC8("	")
  loc_FDA5EB: End If
  loc_FDA60A: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FDA60D:   Exit Sub
  loc_FDA60E: End If
  loc_FDA638: If ((CLng(Index) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FDA64B:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FDA665:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FDA680:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDA685:   var_D4 = 0
  loc_FDA6B7:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDA6BC:   var_19C = 0
  loc_FDA6F7:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FDA6FF:   Set var_1D0 = Me.GridSel
  loc_FDA705:   LateIdCallSt
  loc_FDA73F:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_FDA751:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_FDA779:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FDA780: End If
  loc_FDA780: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5D840
  'Data Table: 479FA8
  loc_E5D7FC: Do 'loop at: E60442
  loc_E5D81B: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5D81E:   Exit Sub
  loc_E5D81F: End If
  loc_E5D836: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5D83F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1029C28
  'Data Table: 479FA8
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1029A29: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_1029A2C:   Exit Sub
  loc_1029A2D: End If
  loc_1029A89: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1029A8C:   Exit Sub
  loc_1029A8D: End If
  loc_1029ABC: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1029AD5:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1029AF0:   Me.GridSel.Col = 0
  loc_1029B08:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1029B22:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1029B2E:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1029B33:   var_EC = 0
  loc_1029B56:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1029B5B:   var_180 = 0
  loc_1029B96:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1029B9E:   Set var_A0 = Me.GridSel
  loc_1029BA4:   LateIdCallSt
  loc_1029BD6:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_1029BE8:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_1029C10:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1029C1A: Next var_BA 'Integer
  loc_1029C24: global_52 = 0
  loc_1029C27: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E65AEC
  'Data Table: 479FA8
  loc_E65ABC: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E65ABF:   Call DGRestType_UnknownEvent_9()
  loc_E65AC4: End If
  loc_E65AE0: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_E65AE3:   Call DGPayType_UnknownEvent_9()
  loc_E65AE8: End If
  loc_E65AE8: Exit Sub
End Sub

Public Sub Proc_217_22_117C1C8
  'Data Table: 479FA8
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_117BDFA: Me.GridSel.Rows = 1
  loc_117BE0E: Me.GridSel.Cols = 5
  loc_117BE13: var_98 = 0
  loc_117BE1F: var_BC = CVar(CLng(0)) 'Long
  loc_117BE24: var_DC = "O"
  loc_117BE2D: LateIdCallSt
  loc_117BE38: var_98 = CVar(CLng(0)) 'Long
  loc_117BE3D: var_BC = &H258
  loc_117BE49: LateIdCallSt
  loc_117BE51: var_98 = 0
  loc_117BE5D: var_BC = CVar(CLng(1)) 'Long
  loc_117BE62: var_DC = "Bill No"
  loc_117BE6B: LateIdCallSt
  loc_117BE76: var_98 = CVar(CLng(1)) 'Long
  loc_117BE81: var_BC = CVar(CInt(1)) 'Integer
  loc_117BE88: LateIdCallSt
  loc_117BE93: var_98 = CVar(CLng(1)) 'Long
  loc_117BE9E: var_BC = CVar(CInt(1)) 'Integer
  loc_117BEA5: LateIdCallSt
  loc_117BEB0: var_98 = CVar(CLng(1)) 'Long
  loc_117BEB5: var_BC = &H5DC
  loc_117BEC1: LateIdCallSt
  loc_117BEC9: var_98 = 0
  loc_117BED5: var_BC = CVar(CLng(2)) 'Long
  loc_117BEDA: var_DC = "DocId"
  loc_117BEE3: LateIdCallSt
  loc_117BEEE: var_98 = CVar(CLng(2)) 'Long
  loc_117BEF9: var_BC = CVar(CInt(7)) 'Integer
  loc_117BF00: LateIdCallSt
  loc_117BF0B: var_98 = CVar(CLng(2)) 'Long
  loc_117BF16: var_BC = CVar(CInt(7)) 'Integer
  loc_117BF1D: LateIdCallSt
  loc_117BF28: var_98 = CVar(CLng(2)) 'Long
  loc_117BF2D: var_BC = 0
  loc_117BF39: LateIdCallSt
  loc_117BF41: var_98 = 0
  loc_117BF4D: var_BC = CVar(CLng(3)) 'Long
  loc_117BF52: var_DC = "Bill Date"
  loc_117BF5B: LateIdCallSt
  loc_117BF66: var_98 = CVar(CLng(3)) 'Long
  loc_117BF71: var_BC = CVar(CInt(1)) 'Integer
  loc_117BF78: LateIdCallSt
  loc_117BF83: var_98 = CVar(CLng(3)) 'Long
  loc_117BF8E: var_BC = CVar(CInt(1)) 'Integer
  loc_117BF95: LateIdCallSt
  loc_117BFA0: var_98 = CVar(CLng(3)) 'Long
  loc_117BFA5: var_BC = &H7D0
  loc_117BFB1: LateIdCallSt
  loc_117BFB9: var_98 = 0
  loc_117BFC5: var_BC = CVar(CLng(4)) 'Long
  loc_117BFCA: var_DC = "Bill Amount"
  loc_117BFD3: LateIdCallSt
  loc_117BFDE: var_98 = CVar(CLng(4)) 'Long
  loc_117BFE9: var_BC = CVar(CInt(7)) 'Integer
  loc_117BFF0: LateIdCallSt
  loc_117BFFB: var_98 = CVar(CLng(4)) 'Long
  loc_117C006: var_BC = CVar(CInt(7)) 'Integer
  loc_117C00D: LateIdCallSt
  loc_117C018: var_98 = CVar(CLng(4)) 'Long
  loc_117C01D: var_BC = &H7D0
  loc_117C029: LateIdCallSt
  loc_117C031: var_98 = vbNullString
  loc_117C03B: Set var_AC = Me.GridSel
  loc_117C05F: Me.GridSel.FixedRows = 1
  loc_117C069: Set var_88 = Nothing 
  loc_117C07D: ReDim Preserve global_60(0 To 0)
  loc_117C094: global_60(0) = 0
  loc_117C0A8: Me.GridSel.Height = CVar(CDbl(6000))
  loc_117C0C3: Me.GridSel.Width = CVar(CDbl(6500))
  loc_117C0CB: var_98 = 0
  loc_117C0FC: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_117C10B: var_98 = 0
  loc_117C13C: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_117C16D: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_117C19E: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_117C1BD: Me.Check1.Value = CInt(0)
  loc_117C1C5: Exit Sub
End Sub

Public Sub Proc_217_23_13A3028
  'Data Table: 479FA8
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_148 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_1D0 As String
  Dim unk_479FBA As Connection15
  Dim var_1F4 As Variant
  Dim var_1F8 As Variant
  Dim var_20C As Field20
  Dim var_A8 As Variant
  Dim var_110 As Variant
  Dim Me As Recordset15
  Dim var_EC As Variant
  Dim var_F0 As Variant
  Dim var_144 As Variant
  Dim var_258 As String
  Dim var_268 As TextBox
  Dim var_1F0 As Variant
  Dim var_21C As Variant
  Dim var_14C As String
  Dim var_88 As Recordset15
  loc_13A27A4: Proc_6_7_F26918(var_A8, MemVar_1F950F4, "Select max(Vno) From Sale1 Where VDate>=", var_1F0, -1)
  loc_13A27AC: var_C8 = var_1F4 & var_A8 
  loc_13A27C4: Set var_EC = Me.Txt
  loc_13A27CA: Call 0.Method_Proc_217_23_13A30280 (CInt(0), var_F0, var_C8 & " And vdate<", var_1F8)
  loc_13A27D9: Proc_6_7_F26918(var_110, CVar(var_F0), 0)
  loc_13A27EA: var_140 = var_20C & var_110 & " And RestCode='" 
  loc_13A27FC: Set var_144 = Me.Txt
  loc_13A2802: Call 0.Method_Proc_217_23_13A30280 (CInt(2), var_148, var_14C)
  loc_13A280A: var_140 = var_148.Tag
  loc_13A281E: var_18C = var_21C & CVar(var_14C) & "' And Logsite_Code='" 
  loc_13A2828: var_1AC = var_18C & CVar(MemVar_1F95078) 
  loc_13A2831: var_1CC = var_1AC & "'" 
  loc_13A283F: unk_479FBA.Execute CStr(var_1CC), , 
  loc_13A2847:  = var_1F4.Fields
  loc_13A284F:  = var_1F8.Item()
  loc_13A2857:  = var_20C.Value
  loc_13A2862: Proc_6_39_E7D3A0(var_22C)
  loc_13A28C2: Set var_EC = Me.Txt
  loc_13A28C8: Call 0.Method_Proc_217_23_13A30280 (CInt(0), var_F0, "Select Vno,Vdate,PayType From PayCharge Where PayType not in ('Cash','Member','Complementary') and VDate>= ", var_18C)
  loc_13A28D7: Proc_6_7_F26918(var_C8, CVar(var_F0), -1)
  loc_13A28E8: var_100 = var_1F4 & var_C8 & " And RestCode='" 
  loc_13A28FA: Set var_144 = Me.Txt
  loc_13A2900: Call 0.Method_Proc_217_23_13A30280 (CInt(2), var_148, var_14C)
  loc_13A2908: var_100 = var_148.Tag
  loc_13A292F: var_16C = CLng(var_22C) & CVar(var_14C) & "' And Logsite_Code='" & CVar(MemVar_1F95078) & "' and Vtype not in ('IPOS','PPOS') Order by Vno,VDate" 
  loc_13A293D: unk_479FBA.Execute CStr(var_16C), var_21C, 
  loc_13A294E: Set global_76 = var_1F4
  loc_13A2990: If (Me.RecordCount > 0) Then
  loc_13A2999:   Me.MoveFirst
  loc_13A299E:   ' Referenced from: 13A2AE7
  loc_13A29B0:   If Not(Me.EOF) Then
  loc_13A29D0:     var_F0 = Me.Fields.Item("VNo")
  loc_13A29FA:     var_148 = Me.Fields.Item("PayType")
  loc_13A2A24:     var_1F8 = Me.Fields.Item("VDate")
  loc_13A2A2C:     var_140 = var_1F8.Value
  loc_13A2A47:     var_C8 = "Bill No. " & var_F0.Value 
  loc_13A2A79:     var_18C = var_C8 & " has been Settled In Mode " & var_148.Value & " On Date " & var_140 & vbCrLf & "So Bill Deletion Process not Possible." 
  loc_13A2A7D:     MsgBox(var_18C, &H40, var_1AC, var_1CC, var_1F0)
  loc_13A2AB9:     Set global_76 = Nothing
  loc_13A2AD3:     Me.GridSel.Rows = 2
  loc_13A2ADB:     Exit Sub
  loc_13A2AE2:     Me.MoveNext
  loc_13A2AE7:     GoTo loc_13A299E
  loc_13A2AEA:   End If
  loc_13A2AEA: End If
  loc_13A2B08: Set var_EC = Me.Txt
  loc_13A2B0E: Call 0.Method_Proc_217_23_13A30280 (CInt(3), var_F0, var_14C, "Select P.DocId From (PayCharge P Inner Join Sale1 S on P.DocId=S.DocId) Where P.PayCode='")
  loc_13A2B16: var_22C = var_F0.Tag
  loc_13A2B1F: var_1D0 = -1 & var_14C
  loc_13A2B26: var_258 = CStr(var_C8 & " has been Settled In Mode " & var_148.Value & " On Date " & var_140 & vbCrLf) & "' And P.PayType Not In('PPOS','IPOS') And P.PayCode Not In('"
  loc_13A2B50: Set var_144 = Me.Txt
  loc_13A2B56: Call 0.Method_Proc_217_23_13A30280 (CInt(0), var_148)
  loc_13A2B65: Proc_6_7_F26918(var_C8, CVar(var_148))
  loc_13A2B6D: var_100 = CVar(var_258 & MemVar_1F95078 & "ROOM','" & MemVar_1F95078 & "TOUT') And S.VDate Between ") & var_C8 
  loc_13A2B85: Set var_1F4 = Me.Txt
  loc_13A2B8B: Call 0.Method_Proc_217_23_13A30280 (CInt(1), var_1F8)
  loc_13A2B9A: Proc_6_7_F26918(var_140, CVar(var_1F8))
  loc_13A2BAB: var_16C = var_100 & " And " & var_140 & " And P.RestCode='" 
  loc_13A2BBD: Set var_20C = Me.Txt
  loc_13A2BC3: Call 0.Method_Proc_217_23_13A30280 (CInt(2), var_268, var_26C)
  loc_13A2BCB: var_16C = var_268.Tag
  loc_13A2C00: unk_479FBA.Execute CStr(var_274 & CVar(var_26C) & "' And P.Logsite_Code='" & CVar(MemVar_1F95078) & "' Order by P.Vno"), , 
  loc_13A2C11: Set global_76 = var_274
  loc_13A2C71: If (Me.RecordCount = 0) Then
  loc_13A2C87:   Me.GridSel.Rows = 2
  loc_13A2C8F:   Exit Sub
  loc_13A2C90: End If
  loc_13A2CA3: Me.GridSel.Row = 1
  loc_13A2CB7: Me.CmdDelete.Enabled = True
  loc_13A2CBF: ' Referenced from: 13A3006
  loc_13A2CD1: If Not(Me.EOF) Then
  loc_13A2D2A:   unk_479FBA.Execute CStr("Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 Where DocId='" & Me.Fields.Item(0).Value & "'"), var_100, -1
  loc_13A2D35:   Set var_88 = var_144
  loc_13A2D63:   If (var_88.RecordCount = 1) Then
  loc_13A2D6A:     Set var_27C = Me.GridSel
  loc_13A2D6D:     var_98 = vbNullString
  loc_13A2D91:     var_98 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A2D99:     var_D8 = CVar(CLng(0)) 'Long
  loc_13A2DA7:     LateIdCallSt
  loc_13A2DC8:     var_B8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A2DD0:     var_130 = CVar(CLng(1)) 'Long
  loc_13A2E00:     var_E8 = CVar(CStr(var_88.Fields.Item("VNo").Value)) 'String
  loc_13A2E07:     LateIdCallSt
  loc_13A2E69:     var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_27C, var_E8, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_13A2E70:     LateIdCallSt
  loc_13A2EC6:     var_D8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A2ECE:     var_17C = CVar(CLng(3)) 'Long
  loc_13A2EEB:     var_C8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("VDate")), var_27C, "dd/mmm/yyyy", var_27C, vbNullString)) 'String
  loc_13A2F01:     LateIdCallSt
  loc_13A2F48:     Proc_6_39_E7D3A0(var_C8, CVar(var_88.Fields.Item("BillAmount")), var_27C, CVar(CStr(Format(var_C8, "dd/mmm/yyyy"))), 1, 1)
  loc_13A2F60:     var_D8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A2F68:     var_17C = CVar(CLng(4)) 'Long
  loc_13A2F91:     var_120 = CVar(CStr(Format(var_C8, "0.00"))) 'String
  loc_13A2F98:     LateIdCallSt
  loc_13A2FB8:     Set var_27C = Nothing 
  loc_13A2FC1:     Set var_88 = Nothing
  loc_13A2FDD:     var_98 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_13A2FEC:     Me.GridSel.Row = "BillAmount"
  loc_13A2FFB:   End If
  loc_13A3001:   Me.MoveNext
  loc_13A3006:   GoTo loc_13A2CBF
  loc_13A3009: End If
  loc_13A301C: Me.GridSel.FixedRows = 1
  loc_13A3024: Exit Sub
End Sub

Public Sub Proc_217_24_F78BAC(arg_C) 'F78BAC
  'Data Table: 479FA8
  Dim unk_479FBA As Connection15
  loc_F78A88: unk_479FBA.Execute "Update Kot Set ContraDocID='Deleted' Where ContraDocID='" & arg_C & "'", var_B0, -1
  loc_F78ABE: unk_479FBA.Execute "Delete From Sale1 Where DocID='" & arg_C & "'", var_B0, -1
  loc_F78AF4: unk_479FBA.Execute "Delete From Sale2 Where DocID='" & arg_C & "'", var_B0, -1
  loc_F78B2A: unk_479FBA.Execute "Delete From SunTran Where DocID='" & arg_C & "'", var_B0, -1
  loc_F78B60: unk_479FBA.Execute "Delete From Stock Where DocID='" & arg_C & "'", var_B0, -1
  loc_F78B96: unk_479FBA.Execute "Delete From Paycharge Where DocID='" & arg_C & "'", var_B0, -1
  loc_F78BA8: Exit Sub
  loc_F78BA9: Exit Sub
End Sub

Public Sub Proc_217_25_130F118
  'Data Table: 479FA8
  Dim unk_479FBA As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_1F0 As Variant
  Dim var_1F4 As String
  Dim var_130 As Variant
  loc_130EA26: unk_479FBA.Execute "Select * from TempPosDel Order By OldVno", var_A8, -1
  loc_130EA31: Set var_88 = var_AC
  loc_130EA4E: If (var_88.RecordCount = 0) Then
  loc_130EA51:   Exit Sub
  loc_130EA52: End If
  loc_130EA66: If (var_88.RecordCount > 0) Then
  loc_130EA6C:   var_88.MoveFirst
  loc_130EA71:   ' Referenced from: 130F112
  loc_130EA80:   If Not(var_88.EOF) Then
  loc_130EAA7:     var_AC = var_88.Fields
  loc_130EAF2:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale1 Set DocId='" & var_AC.Item("NewDocId").Value & "',Vno=", var_214)
  loc_130EAFA:     var_140 = -1 & var_130 
  loc_130EB6C:     var_1F4 = CStr(var_140 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value)
  loc_130EB76:     unk_479FBA.Execute var_1F4, var_218, var_AC
  loc_130EC1D:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale2 Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130EC93:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_130ECA1:     unk_479FBA.Execute CStr(var_1F0), -1, var_218
  loc_130ED48:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update SunTran Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130EDBE:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_130EDCC:     unk_479FBA.Execute CStr(var_1F0), -1, var_218
  loc_130EE73:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Stock Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130EEE9:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_130EEF7:     unk_479FBA.Execute CStr(var_1F0), -1, var_218
  loc_130EF9E:     Proc_6_39_E7D3A0(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update PayCharge Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130EFAF:     var_160 = var_214 & var_130 & " Where DocId='" 
  loc_130F022:     unk_479FBA.Execute CStr(var_160 & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value), -1, var_218
  loc_130F0CD:     var_130 = "Update Kot Set ContraDocId='" & var_88.Fields.Item("NewDocId").Value & "' Where ContraDocId='" & var_88.Fields.Item("OldDocid").Value 
  loc_130F0E4:     unk_479FBA.Execute CStr(var_130 & "'"), var_160, -1
  loc_130F10D:     var_88.MoveNext
  loc_130F112:     GoTo loc_130EA71
  loc_130F115:   End If
  loc_130F115: End If
  loc_130F115: Exit Sub
  loc_130F116: DOC
End Sub

Public Sub Proc_217_26_107BC10
  'Data Table: 479FA8
  Dim unk_479FBA As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Long
  Dim var_B0 As Fields15
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_1BC As Variant
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_234 As Variant
  loc_107B9EE: unk_479FBA.Execute "Select * from TempPosDel Order By OldVno", var_AC, -1
  loc_107B9F9: Set var_88 = var_B0
  loc_107BA16: If (var_88.RecordCount = 0) Then
  loc_107BA22:   global_84 = global_80
  loc_107BA25:   Exit Sub
  loc_107BA26: End If
  loc_107BA2B: var_8C = 1
  loc_107BA42: If (var_88.RecordCount > 0) Then
  loc_107BA48:   var_88.MoveFirst
  loc_107BA4D:   ' Referenced from: 107BBF5
  loc_107BA5C:   If Not(var_88.EOF) Then
  loc_107BAA0:     var_DC = CVar(CStr((global_80 + var_8C))) 'String
  loc_107BAB2:     var_11C = (8 - Len(Trim(var_DC)))
  loc_107BACC:     var_14C = CVar(CStr((global_80 + var_8C))) 'String
  loc_107BAE3:     var_1BC = CVar(CStr((global_80 + var_8C))) 'String
  loc_107BB54:     var_13C = (Left(CVar(var_88.Fields.Item("OldDocid")), &HD) + Space(CLng(var_11C)))
  loc_107BB5B:     var_16C = (var_13C + Trim(var_14C))
  loc_107BB7F:     var_234 = "Update TempPosDel Set NewDocId='" & var_16C & "',NewVno=" & Trim(var_1BC) & " Where OldDocId='" & var_88.Fields.Item("OldDocid").Value 
  loc_107BB9D:     unk_479FBA.Execute CStr(var_234 & "' And OldVno=" & var_88.Fields.Item("OldVno").Value), var_2B0, -1
  loc_107BBEA:     var_8C = (var_8C + 1)
  loc_107BBF0:     var_88.MoveNext
  loc_107BBF5:     GoTo loc_107BA4D
  loc_107BBF8:   End If
  loc_107BC0B:   global_84 = ((global_80 + var_8C) - 1)
  loc_107BC0E: End If
  loc_107BC0E: Exit Sub
End Sub

Public Sub Proc_217_27_11A8DA4(arg_C, arg_10) '11A8DA4
  'Data Table: 479FA8
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_108 As Variant
  Dim var_128 As Long
  Dim var_14C As Variant
  loc_11A8986: On Error Goto loc_11A8D99
  loc_11A898B: var_96 = 0
  loc_11A8997: If (CInt(arg_10) = 1) Then
  loc_11A89BF:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_11A89C8:     var_9A = var_98
  loc_11A89CF:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A89D4:     var_E4 = 2
  loc_11A8A03:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A8A0A:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A8A0F:       var_E4 = 2
  loc_11A8A32:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A8A37:       var_128 = 1
  loc_11A8A4A:       var_14C = Me.GridSel.TextMatrix)
  loc_11A8A61:       Call Proc_217_24_F78BAC(CStr(Me.GridSel.TextMatrix)))
  loc_11A8A7D:       var_96 = &HFF
  loc_11A8AA5:       For var_154 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_154 'Integer
  loc_11A8ABE:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A8AD9:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A8AF4:         Me.GridSel.CellBackColor = &H80FF
  loc_11A8AFF:       Next var_154 'Integer
  loc_11A8B04:     End If
  loc_11A8B07:   Next var_B4 'Integer
  loc_11A8B0C:   Exit For
  loc_11A8B0F: End If
  loc_11A8B17: CRefVarAry
  loc_11A8B1F: For var_158 = 0 To CInt(UBound(arg_C, 1)): var_98 = var_158 'Integer
  loc_11A8B40:   If (arg_C(var_98) = 0) Then
  loc_11A8B43:     GoTo loc_11A8CD1
  loc_11A8B46:   End If
  loc_11A8B57:   var_9A = CInt(arg_C(var_98))
  loc_11A8B61:   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A8B66:   var_E4 = 0
  loc_11A8B95:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11A8B9C:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A8BA1:     var_E4 = 2
  loc_11A8BD0:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A8BD7:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A8BDC:       var_E4 = 2
  loc_11A8BFF:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A8C04:       var_128 = 1
  loc_11A8C17:       var_14C = Me.GridSel.TextMatrix)
  loc_11A8C2E:       Call Proc_217_24_F78BAC(CStr(Me.GridSel.TextMatrix)))
  loc_11A8C4A:       var_96 = &HFF
  loc_11A8C72:       For var_15C = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_15C 'Integer
  loc_11A8C8B:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A8CA6:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A8CC1:         Me.GridSel.CellBackColor = &H80FF
  loc_11A8CCC:       Next var_15C 'Integer
  loc_11A8CD1:       ' Referenced from: 11A8B43
  loc_11A8CD1:     End If
  loc_11A8CD1:   End If
  loc_11A8CD4: Next var_158 'Integer
  loc_11A8CD9: ' Referenced from: 11A8B0C
  loc_11A8CE9: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_11A8CEC:   var_C4 = 0
  loc_11A8CF5:   var_E4 = 1
  loc_11A8D08:   var_B0 = Me.GridSel.TextMatrix)
  loc_11A8D30:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_16C, var_17C, var_18C)
  loc_11A8D5B:   Me.GridSel.Row = 1
  loc_11A8D63:   var_C4 = 0
  loc_11A8D76:   Me.GridSel.Col = var_C4
  loc_11A8D82:   Set var_A0 = Me.GridSel
  loc_11A8D93: End If
  loc_11A8D93: Proc_217_27_11A8DA4 = GridSel.DispID_8001
  loc_11A8D99: ' Referenced from: 11A8986
  loc_11A8D99: Proc_6_60_E63754(var_B0, var_E4)
  loc_11A8D9E: Proc_217_27_11A8DA4 = var_C4
End Sub

Public Sub Proc_217_28_EBA158
  'Data Table: 479FA8
  loc_EBA0D0: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EBA0E2:   Me.DGRestType.Visible = False
  loc_EBA0EA: End If
  loc_EBA106: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_EBA118:   Me.DGPayType.Visible = False
  loc_EBA120: End If
  loc_EBA13C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBA14E:   Me.FGPoint.Visible = False
  loc_EBA156: End If
  loc_EBA156: Exit Sub
End Sub
