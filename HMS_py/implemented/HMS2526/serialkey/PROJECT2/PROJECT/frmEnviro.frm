VERSION 5.00
Begin VB.Form frmEnviro
  Caption = "Parameter Settings"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmEnviro.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 15240
  ClientHeight = 8715
  LockControls = -1  'True
  Begin DataGrid DGPurchItem
    Left = 12405
    Top = 7455
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 375
  End
  Begin DataGrid DGTaxStru
    Left = 12735
    Top = 5745
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 270
  End
  Begin DataGrid DGPurchaseGodown
    Left = 13695
    Top = 2610
    Width = 3900
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 241
  End
  Begin DataGrid DGGroup
    Left = 12360
    Top = 6405
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 141
  End
  Begin DataGrid DGDepart
    Left = 13515
    Top = 3015
    Width = 3900
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 187
  End
  Begin DataGrid DGHelp
    Left = 12840
    Top = 5310
    Width = 5160
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 122
  End
  Begin DataGrid DGTAX
    Left = 13080
    Top = 4545
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 162
  End
  Begin DataGrid DGRevenue
    Left = 13080
    Top = 4935
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 164
  End
End

Attribute VB_Name = "frmEnviro"

Private global_116 As Integer
Private global_76 As Recordset15
Private global_84 As Recordset15
Private global_52 As Recordset15
Private global_60 As Recordset15
Private global_64 As Recordset15
Private global_56 As Recordset15
Private global_80 As Recordset15
Private global_72 As Recordset15
Private global_68 As Recordset15
Private global_96 As Variant

Private Sub DGTaxStru_UnknownEvent_9 'F79CAC
  'Data Table: 554C84
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F79B83: var_86 = CInt(Val(CStr(Me.DGTaxStru.Tag)))
  loc_F79B98: Set var_8C = Me.DGTaxStru
  loc_F79B9E: var_8C.Visible = False
  loc_F79BC0: If (Me.var_8C.RecordCount > 0) Then
  loc_F79C01:   Set var_CC = var_D0(var_86)
  loc_F79C07:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F79C0F:   var_D0.Text = var_86
  loc_F79C45:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F79C63:   Set var_CC = var_D0(var_86)
  loc_F79C69:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F79C71:   var_D0.Tag = 
  loc_F79C87: End If
  loc_F79C91: Set var_8C = var_C8(var_86)
  loc_F79C97: Call 0.Method_DGTaxStru_UnknownEvent_90 ()
  loc_F79C9F: var_C8.SetFocus
  loc_F79CAB: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EAF6D8
  'Data Table: 554C84
  loc_EAF66A: Proc_6_153_E91D24(Me.DGTaxStru, arg_14)
  loc_EAF69E: Set var_A8 = arg_18(Val(CStr(Me.DGTaxStru.Tag)))
  loc_EAF6BE: Proc_6_138_106E830(Me.DGTaxStru, global_72)
  loc_EAF6D4: Exit Sub
  loc_EAF6D5: Exit Sub
  loc_EAF6D6: Assert
End Sub

Public Sub FGrid_UnknownEvent_0(Index As Integer) 'E5FA44
  'Data Table: 554C84
  Dim var_AC As TextBox
  Dim IndexFF As Integer
  loc_E5FA09: Set var_A8 = (CVar(CLng("14737632")))
  loc_E5FA22: Set var_A8 = var_AC(0)
  loc_E5FA28: Call 0.Method_FGrid_UnknownEvent_00 (0)
  loc_E5FA30: var_AC.Visible = DGTaxStru.DispID_10
  loc_E5FA3C: Call Proc_56_54_FB6794()
  loc_E5FA41: Exit Sub
  loc_E5FA42: IndexFF = 
End Sub

Private Sub FGrid_UnknownEvent_1 'E66990
  'Data Table: 554C84
  Dim var_8C As TextBox
  loc_E6694C: Set var_88 = var_8C(0)
  loc_E66952: Call 0.Method_FGrid_UnknownEvent_10 (var_8E)
  loc_E6695A:  = var_8C.Visible
  loc_E6696C: If (var_8E = 0) Then
  loc_E6697F:   Set var_88 = (CVar(CLng(global_120)))
  loc_E6698D: End If
  loc_E6698D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F270
  'Data Table: 554C84
  loc_E1F261: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1F26F: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '10074D8
  'Data Table: 554C84
  Dim var_B0 As Variant
  Dim var_B4 As DataGrid
  Dim var_C4 As Variant
  Dim var_88 As DataGrid
  Dim var_9C As String
  Dim arg_C As Integer
  Dim var_EC As Long
  loc_10072DE: var_B0 = ().RowCount
  loc_10072F1: var_C4 = (var_B0).RowCount
  loc_1007348: If ( And (CDbl(Val(CStr(var_C4((CLng(arg_C) = &H26)).Tag))) = CDbl((CLng(var_B0) - (CLng(var_C4) - 1))))) Then
  loc_1007358:   Set var_88 = (CVar(CLng("16777215")))
  loc_100736E:   var_9C = "+{Tab}"
  loc_1007374:   Proc_303_0_FBACC8(CStr(var_C4((CLng(arg_C) = &H26)).Tag), 0)
  loc_100737E:   arg_C = 0
  loc_1007384: Else
  loc_100738E:   var_B0 = DGTaxStru.DispID_26(arg_C).RowCount
  loc_10073DB:   If ( And (CDbl(Val(CStr(var_B0((CLng(arg_C) = &H28)).Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_10073EB:     Set var_88 = (CVar(CLng("16777215")))
  loc_10073F9:   End If
  loc_10073F9: End If
  loc_1007403: (DGTaxStru.DispID_26).InsertRows , 
  loc_100741C: (CVar(CStr(CLng()))).Tag = 
  loc_1007440: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_100744D:   ().DeleteRowLabels , 
  loc_1007456:   var_EC = CLng()
  loc_1007466:   If (var_EC = CLng(2)) Then
  loc_1007473:     (var_EC).InsertRows , 
  loc_100748B:     (CVar(CLng())).DeleteRowLabels , 
  loc_10074A3:     Set var_B4 = CVar(CLng())(vbNullString)
  loc_10074A9:     LateIdCallSt
  loc_10074C1:   End If
  loc_10074C1: End If
  loc_10074C7: If (arg_C = &HD) Then
  loc_10074CF:   global_116 = 0
  loc_10074D2: End If
  loc_10074D4: arg_C = 0
  loc_10074D7: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'FB1804
  'Data Table: 554C84
  Dim var_88 As DataGrid
  Dim var_9C As Long
  Dim var_B0 As String
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_FB167E: ().DeleteRowLabels , 
  loc_FB1687: var_9C = CLng()
  loc_FB1697: If (var_9C = CLng(2)) Then
  loc_FB169E:   Set var_C4 = (var_9C)
  loc_FB16C2:   var_B0 = CStr(Ucase(Chr(CLng(Index))))
  loc_FB16EF:   Set var_B4 = var_C4
  loc_FB1701:   Proc_6_63_110B734(Me, var_B4, (), 0)
  loc_FB1729:   Set var_88 = var_B4(0)
  loc_FB172F:   Call 0.Method_FGrid_UnknownEvent_C0 (var_B0, 0, Asc(var_B0))
  loc_FB1737:   0 = var_B4.Text
  loc_FB1750:   If (Len(var_B0) <= 1) Then
  loc_FB175F:     Set var_88 = var_B4(0)
  loc_FB1765:     Call 0.Method_FGrid_UnknownEvent_C0 (var_B0)
  loc_FB176D:     var_CA = var_B4.Text
  loc_FB177E:     Set var_B8 = var_C4(0)
  loc_FB1784:     Call 0.Method_FGrid_UnknownEvent_C0 (var_B0)
  loc_FB178C:     var_C4.Text = 
  loc_FB179F:   End If
  loc_FB17AB:   Set var_88 = var_B4(0)
  loc_FB17B1:   Call 0.Method_FGrid_UnknownEvent_C0 (var_B0)
  loc_FB17B9:    = var_B4.Text
  loc_FB17CB:   Set var_B8 = var_C4(0)
  loc_FB17D1:   Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_B0))
  loc_FB17D9:   var_C4.SelStart = 
  loc_FB17EC: End If
  loc_FB17F6: If (CLng(Index) <> &HD) Then
  loc_FB17FE:   global_116 = &HFF
  loc_FB1801: End If
  loc_FB1801: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'E29EB8
  'Data Table: 554C84
  loc_E29E9E: ().RandomDataFill
  loc_E29EB1: If (CLng() = CLng(0)) Then
  loc_E29EB4:   Exit Sub
  loc_E29EB5: End If
  loc_E29EB5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1F090
  'Data Table: 554C84
  loc_E1F081: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1F08F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41534
  'Data Table: 554C84
  Dim var_8C As TextBox
  loc_E41508: Call Proc_56_54_FB6794()
  loc_E41518: Set var_88 = var_8C(0)
  loc_E4151E: Call 0.Method_FGrid_UnknownEvent_150 (0)
  loc_E41526: var_8C.Visible = 
  loc_E41532: Exit Sub
End Sub

Private Sub DGGroup_UnknownEvent_9 'F7967C
  'Data Table: 554C84
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F79553: var_86 = CInt(Val(CStr(Me.DGGroup.Tag)))
  loc_F79568: Set var_8C = Me.DGGroup
  loc_F7956E: var_8C.Visible = False
  loc_F79590: If (Me.var_8C.RecordCount > 0) Then
  loc_F795D1:   Set var_CC = var_D0(var_86)
  loc_F795D7:   Call 0.Method_DGGroup_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F795DF:   var_D0.Text = var_86
  loc_F79615:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F79633:   Set var_CC = var_D0(var_86)
  loc_F79639:   Call 0.Method_DGGroup_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F79641:   var_D0.Tag = 
  loc_F79657: End If
  loc_F79661: Set var_8C = var_C8(var_86)
  loc_F79667: Call 0.Method_DGGroup_UnknownEvent_90 ()
  loc_F7966F: var_C8.SetFocus
  loc_F7967B: Exit Sub
End Sub

Private Sub DGGroup_UnknownEvent_1F 'EADA28
  'Data Table: 554C84
  Dim var_B4 As Double
  loc_EAD9BA: Proc_6_153_E91D24(Me.DGGroup, arg_14)
  loc_EAD9E7: var_B4 = Val(CStr(Me.DGGroup.Tag))
  loc_EADA0E: Proc_6_138_106E830(Me.DGGroup, global_56)
  loc_EADA24: Exit Sub
  loc_EADA25: CInt(var_B4) = arg_18(var_B4)
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ECEEA4
  'Data Table: 554C84
  Dim var_94 As Variant
  loc_ECEDF4: On Error Goto loc_ECEE9C
  loc_ECEE1E: Call Proc_56_51_E99F10(Proc_5_1_100EC1C("ADD", Me))
  loc_ECEE37: Set var_8C = var_94(CInt(&H29))
  loc_ECEE3D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (vbNullString)
  loc_ECEE45: var_94.Text = global_76
  loc_ECEE5C: Set var_8C = var_94(2)
  loc_ECEE62: Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HFF)
  loc_ECEE6A: var_94.Value = 
  loc_ECEE81: Set var_8C = var_94(CInt(&H29))
  loc_ECEE87: Call 0.Method_TopCtrl1_UnknownEvent_A0 ()
  loc_ECEE8F: var_94.SetFocus
  loc_ECEE9B: Exit Sub
  loc_ECEE9C: ' Referenced from: ECEDF4
  loc_ECEE9C: Proc_6_60_E63754()
  loc_ECEEA1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FED284
  'Data Table: 554C84
  Dim unk_554C86 As Connection15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_124 As String
  loc_FED0B0: On Error Goto loc_FED236
  loc_FED0EA: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_FED0F6:   unk_554C86.BeginTrans var_118
  loc_FED10F:   var_94 = Me.Recordset15.Bookmark 'Variant
  loc_FED159:   var_F4 = "Delete From RoundOffSetting Where ModuleName='" & Trim(CVar(Me.Recordset15.Fields.Item("ModuleName"))) 
  loc_FED162:   var_114 = var_F4 & "'" 
  loc_FED166:   var_124 = CStr(var_114)
  loc_FED170:   unk_554C86.Execute var_124, var_134, -1
  loc_FED192:   unk_554C86.CommitTrans
  loc_FED1A5:   Me.Recordset15.Requery -1
  loc_FED1C8:   If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_FED1D8:     Me.Recordset15.Bookmark = var_94
  loc_FED1E0:   Else
  loc_FED1F7:     If (global_76.EOF = 0) Then
  loc_FED203:       Me.Recordset15.MoveLast
  loc_FED208:     End If
  loc_FED208:   End If
  loc_FED208:   Call Proc_56_50_1036BCC(var_138)
  loc_FED22D:   Proc_5_0_1107AD0(&HFF, Me)
  loc_FED235: End If
  loc_FED235: Exit Sub
  loc_FED236: ' Referenced from: FED0B0
  loc_FED23C: unk_554C86.RollbackTrans
  loc_FED249: Set var_11C = Err()
  loc_FED24F: Call 0.Method_arg_2C (var_124, global_76)
  loc_FED270: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_FED283: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E8104C
  'Data Table: 554C84
  Dim var_94 As TextBox
  loc_E80FE8: On Error Goto loc_E81045
  loc_E81012: Call Proc_56_51_E99F10(Proc_5_1_100EC1C("EDIT", Me))
  loc_E8102A: Set var_8C = var_94(CInt(&H29))
  loc_E81030: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0)
  loc_E81038: var_94.Enabled = global_92
  loc_E81044: Exit Sub
  loc_E81045: ' Referenced from: E80FE8
  loc_E81045: Proc_6_60_E63754()
  loc_E8104A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E558FC
  'Data Table: 554C84
  loc_E558EB: Call Proc_56_51_E99F10(Proc_5_1_100EC1C("INI", Me))
  loc_E558F6: Call Proc_56_50_1036BCC(global_76)
  loc_E558FB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E40598
  'Data Table: 554C84
  loc_E40588: Proc_5_0_1107AD0(&HFF, Me)
  loc_E40590: Call Proc_56_50_1036BCC(global_76)
  loc_E40595: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E413A8
  'Data Table: 554C84
  loc_E41398: Proc_5_0_1107AD0(&HFF, Me)
  loc_E413A0: Call Proc_56_50_1036BCC(global_76)
  loc_E413A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E41470
  'Data Table: 554C84
  loc_E41460: Proc_5_0_1107AD0(&HFF, Me)
  loc_E41468: Call Proc_56_50_1036BCC(global_76)
  loc_E4146D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E40660
  'Data Table: 554C84
  loc_E40650: Proc_5_0_1107AD0(&HFF, Me)
  loc_E40658: Call Proc_56_50_1036BCC(global_76)
  loc_E4065D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'EAEE2C
  'Data Table: 554C84
  loc_EAED9E: Me.Recordset15.Requery -1
  loc_EAEDB1: Me.Recordset15.Requery -1
  loc_EAEDC4: Me.Recordset15.Requery -1
  loc_EAEDD7: Me.Recordset15.Requery -1
  loc_EAEDEA: Me.Recordset15.Requery -1
  loc_EAEDFD: Me.Recordset15.Requery -1
  loc_EAEE10: Me.Recordset15.Requery -1
  loc_EAEE23: Me.Recordset15.Requery -1
  loc_EAEE28: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '11B143C
  'Data Table: 554C84
  Dim var_94 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As Variant
  Dim var_C0 As Variant
  Dim unk_554C86 As Connection15
  Dim var_86 As Integer
  Dim var_F4 As Variant
  Dim var_124 As Variant
  loc_11B1038: On Error Goto loc_11B13EB
  loc_11B1042: Set var_8C = (var_8E)
  loc_11B1048: Call 0.Method_TopCtrl1_UnknownEvent_164 ()
  loc_11B105A: Set var_94 = var_88(var_96)
  loc_11B1060: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_8E)
  loc_11B106F: For var_9A =  To var_96:  = var_9A 'Integer
  loc_11B1082:   Set var_8C = var_94(var_88)
  loc_11B1088:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_8E)
  loc_11B1090:    = var_94.Value
  loc_11B10A2:   If (var_8E = &HFF) Then
  loc_11B10B2:     Set var_8C = var_94(var_88)
  loc_11B10B8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0)
  loc_11B10C0:      = var_94.Caption
  loc_11B10DD:     global_88 = CStr(Trim(CVar(var_A0)))
  loc_11B10F2:   End If
  loc_11B10F5: Next var_9A 'Integer
  loc_11B110A: Set var_8C = var_94(CInt(&H29))
  loc_11B1110: Call 0.Method_TopCtrl1_UnknownEvent_160 (1)
  loc_11B113C: If (InStr(, CVar(var_94), " Bill", 0) <= 0) Then
  loc_11B1160:   MsgBox("Please Check Module Name!", &H40, "Save..", var_F4, var_124)
  loc_11B1170:   Exit Sub
  loc_11B1171: End If
  loc_11B1192: If (Trim(global_88) = vbNullString) Then
  loc_11B11A0:   var_C0 = "Save.."
  loc_11B11B0:   var_B0 = "Please choose any type of RoundOff!"
  loc_11B11B6:   MsgBox(var_B0, &H40, var_C0, var_F4, var_124)
  loc_11B11C6:   Exit Sub
  loc_11B11C7: End If
  loc_11B11D0: unk_554C86.BeginTrans var_128
  loc_11B11F8: Set var_8C = var_94(CInt(&H29))
  loc_11B11FE: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0, "DELETE FROM RoundOffSetting WHERE ModuleName='", var_B0)
  loc_11B1206: -1 = var_94.Text
  loc_11B122D: unk_554C86.Execute var_138 & var_A0 & "' AND lOGSITE_CODE='" & MemVar_1F95078 & "'", 1, 
  loc_11B1269: Set var_8C = var_94(CInt(&H29))
  loc_11B126F: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0, "Insert Into RoundOffSetting(ModuleName,RoundOffType,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code) Values('", var_188)
  loc_11B1277: -1 = var_94.Text
  loc_11B12B4: var_F4 = CVar(var_138 & var_A0 & "','" & global_88 & "','" & MemVar_1F95070 & "','" & MemVar_1F950C8 & "',") 'String
  loc_11B12C5: Proc_6_7_F26918(var_C0, Date)
  loc_11B12CD: var_124 = var_F4 & var_C0 
  loc_11B12D1: var_D4 = ",'A','"
  loc_11B12F7: unk_554C86.Execute CStr(var_124 & var_D4 & CVar(MemVar_1F95078) & "' )"), , 
  loc_11B1333: unk_554C86.CommitTrans
  loc_11B133A: var_86 = 0
  loc_11B134B: Me.Recordset15.Requery -1
  loc_11B136F: Set var_8C = var_94(CInt(&H29))
  loc_11B1375: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_A0, "ModuleName='", 0)
  loc_11B137D: 1 = var_94.Text
  loc_11B1399: Me.Recordset15.Find var_D4 & var_A0 & "'", var_86, 
  loc_11B13C7: var_A0 = "INI"
  loc_11B13D5: Call Proc_56_51_E99F10(Proc_5_1_100EC1C(var_A0, Me))
  loc_11B13E0: Call Proc_56_54_FB6794(global_76)
  loc_11B13E5: Call Proc_56_50_1036BCC()
  loc_11B13EA: Exit Sub
  loc_11B13EB: ' Referenced from: 11B1038
  loc_11B13F1: If (var_86 = 1) Then
  loc_11B13FA:   unk_554C86.RollbackTrans
  loc_11B13FF: End If
  loc_11B1407: Set var_8C = Err()
  loc_11B140D: Call 0.Method_arg_2C (var_A0)
  loc_11B1426: MsgBox(CVar(var_A0), &H10, var_C0, var_F4, var_124)
  loc_11B1439: Exit Sub
End Sub

Private Sub Form_Load() '14BA1D8
  'Data Table: 554C84
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_A4 As Integer
  Dim var_E4 As String
  Dim unk_554C86 As Connection15
  Dim var_A8 As Recordset15
  Dim var_EC As Fields15
  Dim var_F0 As Field20
  loc_14B94B8: On Error Goto loc_14BA1CF
  loc_14B94C2: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_14B94D4: Set var_A8 = (CVar(CLng(MemVar_1F951B4)))
  loc_14B94EC: Set var_A8 = DGRevenue.DispID_FFFFFE0B("Add")
  loc_14B9504: Set global_52 = New 
  loc_14B9519: Me.Recordset15.CursorLocation = 3
  loc_14B9543: var_BC = CVar("Select SubCode as Code,Name From SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14B9550: Me.Recordset15.Open var_BC, CVar(MemVar_1F95044), 2
  loc_14B9567: CVarUnk
  loc_14B956C: VerifyVarObj
  loc_14B9572: Set var_A8 = Me.DGHelp
  loc_14B9578: LateIdStAd
  loc_14B9595: Set var_A8 = 0(False)
  loc_14B959B: LateIdCallSt
  loc_14B95B5: Set var_A8 = 1(False)
  loc_14B95BB: LateIdCallSt
  loc_14B95D5: Set var_A8 = 2(False)
  loc_14B95DB: LateIdCallSt
  loc_14B95F5: Set var_A8 = 6(False)
  loc_14B95FB: LateIdCallSt
  loc_14B9615: Set var_A8 = 8(False)
  loc_14B961B: LateIdCallSt
  loc_14B9635: Set var_A8 = 9(False)
  loc_14B963B: LateIdCallSt
  loc_14B9655: Set var_A8 = 10(False)
  loc_14B965B: LateIdCallSt
  loc_14B9675: Set var_A8 = 15(False)
  loc_14B967B: LateIdCallSt
  loc_14B9695: Set var_A8 = 16(False)
  loc_14B969B: LateIdCallSt
  loc_14B96B5: Set var_A8 = 17(False)
  loc_14B96BB: LateIdCallSt
  loc_14B96C6: var_CC = 0
  loc_14B96D2: var_A4 = 0
  loc_14B96FD: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_14B970D: unk_554C86.Execute var_E4 & "' AND [Option]='HR/PayRoll' AND Flag='N'", var_BC, -1
  loc_14B9715: var_A8 = var_A8.Fields
  loc_14B971D: var_A4 = var_EC.Item(var_EC)
  loc_14B9725: var_F0 = var_F0.Value
  loc_14B9738: Set var_124 = var_100(CBool(var_100))
  loc_14B973E: LateIdCallSt
  loc_14B9765: var_CC = 1
  loc_14B9771: var_A4 = 0
  loc_14B979C: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_14B97AC: unk_554C86.Execute var_E4 & "' AND [Option]='Front Office' AND Flag='N'", var_BC, -1
  loc_14B97B4: var_A8 = var_A8.Fields
  loc_14B97BC: var_A4 = var_EC.Item(var_EC)
  loc_14B97C4: var_F0 = var_F0.Value
  loc_14B97D7: Set var_124 = var_100(CBool(var_100))
  loc_14B97DD: LateIdCallSt
  loc_14B9804: var_CC = 18
  loc_14B9810: var_A4 = 0
  loc_14B983B: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_14B984B: unk_554C86.Execute var_E4 & "' AND [Option]='Front Office' AND Flag='N'", var_BC, -1
  loc_14B9853: var_A8 = var_A8.Fields
  loc_14B985B: var_A4 = var_EC.Item(var_EC)
  loc_14B9863: var_F0 = var_F0.Value
  loc_14B9876: Set var_124 = var_100(CBool(var_100))
  loc_14B987C: LateIdCallSt
  loc_14B98A3: var_CC = 2
  loc_14B98AF: var_A4 = 0
  loc_14B98DA: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_14B98EA: unk_554C86.Execute var_E4 & "' AND [Option]='Purchase' AND Flag='N'", var_BC, -1
  loc_14B98F2: var_A8 = var_A8.Fields
  loc_14B98FA: var_A4 = var_EC.Item(var_EC)
  loc_14B9902: var_F0 = var_F0.Value
  loc_14B9915: Set var_124 = var_100(CBool(var_100))
  loc_14B991B: LateIdCallSt
  loc_14B9942: var_CC = 6
  loc_14B994E: var_A4 = 0
  loc_14B9979: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_14B9989: unk_554C86.Execute var_E4 & "' AND [Option]='Night Audit' AND Flag='N'", var_BC, -1
  loc_14B9991: var_A8 = var_A8.Fields
  loc_14B9999: var_A4 = var_EC.Item(var_EC)
  loc_14B99A1: var_F0 = var_F0.Value
  loc_14B99B4: Set var_124 = var_100(CBool(var_100))
  loc_14B99BA: LateIdCallSt
  loc_14B99E1: var_CC = 8
  loc_14B99ED: var_A4 = 0
  loc_14B9A18: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_14B9A28: unk_554C86.Execute var_E4 & "' AND [Option]='EPABX' AND Flag='N'", var_BC, -1
  loc_14B9A30: var_A8 = var_A8.Fields
  loc_14B9A38: var_A4 = var_EC.Item(var_EC)
  loc_14B9A40: var_F0 = var_F0.Value
  loc_14B9A53: Set var_124 = var_100(CBool(var_100))
  loc_14B9A59: LateIdCallSt
  loc_14B9A80: var_CC = 9
  loc_14B9A8C: var_A4 = 0
  loc_14B9AB7: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_14B9AC7: unk_554C86.Execute var_E4 & "' AND [Option]='Banquet' AND Flag='N'", var_BC, -1
  loc_14B9ACF: var_A8 = var_A8.Fields
  loc_14B9AD7: var_A4 = var_EC.Item(var_EC)
  loc_14B9ADF: var_F0 = var_F0.Value
  loc_14B9AF2: Set var_124 = var_100(CBool(var_100))
  loc_14B9AF8: LateIdCallSt
  loc_14B9B1F: var_CC = 10
  loc_14B9B2B: var_A4 = 0
  loc_14B9B56: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_14B9B66: unk_554C86.Execute var_E4 & "' AND [Option]='Point Of Sale' AND Flag='N'", var_BC, -1
  loc_14B9B6E: var_A8 = var_A8.Fields
  loc_14B9B76: var_A4 = var_EC.Item(var_EC)
  loc_14B9B7E: var_F0 = var_F0.Value
  loc_14B9B91: Set var_124 = var_100(CBool(var_100))
  loc_14B9B97: LateIdCallSt
  loc_14B9BBE: var_CC = 16
  loc_14B9BCA: var_A4 = 0
  loc_14B9BF5: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_14B9C05: unk_554C86.Execute var_E4 & "' AND [Option]='Front Office' AND Flag='N'", var_BC, -1
  loc_14B9C0D: var_A8 = var_A8.Fields
  loc_14B9C15: var_A4 = var_EC.Item(var_EC)
  loc_14B9C1D: var_F0 = var_F0.Value
  loc_14B9C30: Set var_124 = var_100(CBool(var_100))
  loc_14B9C36: LateIdCallSt
  loc_14B9C5D: var_CC = 17
  loc_14B9C69: var_A4 = 0
  loc_14B9C94: var_E4 = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_14B9CA4: unk_554C86.Execute var_E4 & "' AND [Option]='Banquet' AND Flag='N'", var_BC, -1
  loc_14B9CAC: var_A8 = var_A8.Fields
  loc_14B9CB4: var_A4 = var_EC.Item(var_EC)
  loc_14B9CBC: var_F0 = var_F0.Value
  loc_14B9CCF: Set var_124 = var_100(CBool(var_100))
  loc_14B9CD5: LateIdCallSt
  loc_14B9D02: If (MemVar_1F950B8 = 1) Then
  loc_14B9D13:   Set var_A8 = 15(True)
  loc_14B9D19:   LateIdCallSt
  loc_14B9D24: End If
  loc_14B9D2E: Set global_84 = New 
  loc_14B9D43: Me.Recordset15.CursorLocation = 3
  loc_14B9D6D: var_BC = CVar("Select I.Code,I.Name From ItemMast I Where (I.LOGSITE_CODE='" & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') and (I.DirectSale='Y' OR I.Type='Consumables') And (I.GravyItem<>'Yes' or I.GravyItem is NULL) And I.DispCode <>9999 And I.ActiveYN<>'No' Order by I.Name") 'String
  loc_14B9D7A: Me.Recordset15.Open var_BC, CVar(MemVar_1F95044), 3
  loc_14B9D91: CVarUnk
  loc_14B9D96: VerifyVarObj
  loc_14B9D9C: Set var_A8 = Me.DGPurchItem
  loc_14B9DA2: LateIdStAd
  loc_14B9DBA: Set global_56 = New 
  loc_14B9DCF: Me.DGPurchItem.CursorLocation = 3
  loc_14B9DF9: var_BC = CVar("Select GroupCode AS Code,GroupName as Name From Acgroup where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by GroupName") 'String
  loc_14B9E06: Me.Recordset15.Open var_BC, CVar(MemVar_1F95044), 2
  loc_14B9E1D: CVarUnk
  loc_14B9E22: VerifyVarObj
  loc_14B9E28: Set var_A8 = Me.DGGroup
  loc_14B9E2E: LateIdStAd
  loc_14B9E46: Set global_80 = New 
  loc_14B9E5B: Me.DGGroup.CursorLocation = 3
  loc_14B9E85: var_BC = CVar("Select Code,Name From Godownmast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14B9E92: Me.Recordset15.Open var_BC, CVar(MemVar_1F95044), 2
  loc_14B9EA9: CVarUnk
  loc_14B9EAE: VerifyVarObj
  loc_14B9EB4: Set var_A8 = Me.DGPurchaseGodown
  loc_14B9EBA: LateIdStAd
  loc_14B9ED2: Set global_76 = New 
  loc_14B9EE7: Me.DGPurchaseGodown.CursorLocation = 3
  loc_14B9F1E: Me.Recordset15.Open CVar("Select * From RoundOffSetting where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')"), CVar(MemVar_1F95044), 2
  loc_14B9F33: Set global_68 = New 
  loc_14B9F48: Me.Recordset15.CursorLocation = 3
  loc_14B9F72: var_BC = CVar("Select Code,Name From RevMast Where  FieldType='T' and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14B9F7F: Me.Recordset15.Open var_BC, CVar(MemVar_1F95044), 2
  loc_14B9F96: CVarUnk
  loc_14B9F9B: VerifyVarObj
  loc_14B9FA1: Set var_A8 = Me.DGTAX
  loc_14B9FA7: LateIdStAd
  loc_14B9FD4: Me.DGTAX.CursorLocation = 3
  loc_14B9FFE: var_BC = CVar("Select Distinct Code,Name From TaxStru Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14BA00B: Me.Recordset15.Open var_BC, CVar(MemVar_1F95044), 2
  loc_14BA022: CVarUnk
  loc_14BA027: VerifyVarObj
  loc_14BA02D: Set var_A8 = Me.DGTaxStru
  loc_14BA033: LateIdStAd
  loc_14BA060: Me.DGTaxStru.CursorLocation = 3
  loc_14BA08A: var_BC = CVar("Select Code,Name From RevMast Where  FieldType='C' and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14BA097: Me.Recordset15.Open var_BC, CVar(MemVar_1F95044), 2
  loc_14BA0AE: CVarUnk
  loc_14BA0B3: VerifyVarObj
  loc_14BA0B9: Set var_A8 = Me.DGRevenue
  loc_14BA0BF: LateIdStAd
  loc_14BA0EC: Me.DGRevenue.CursorLocation = 3
  loc_14BA116: var_BC = CVar("Select Code,Name From RevMast Where PayType in ('Cash','Room') and FieldType='P' and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14BA123: Me.Recordset15.Open var_BC, CVar(MemVar_1F95044), 2
  loc_14BA13A: CVarUnk
  loc_14BA13F: VerifyVarObj
  loc_14BA145: Set var_A8 = 3(New)
  loc_14BA14B: LateIdStAd
  loc_14BA163: Set global_92 = New 
  loc_14BA178: Me.Recordset15.CursorLocation = 3
  loc_14BA1AF: Me.Recordset15.Open CVar("Select * From Enviro WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "')"), CVar(MemVar_1F95044), 2
  loc_14BA1BA: Call Proc_56_53_1DE71E8(3, -1, var_A8, -1, var_A8, New)
  loc_14BA1BF: Call Proc_56_50_1036BCC(3, -1, var_A8)
  loc_14BA1C4: Call Proc_56_56_1021B84(New, 3)
  loc_14BA1C9: Call Proc_56_55_10DB980(-1)
  loc_14BA1CE: Exit Sub
  loc_14BA1CF: ' Referenced from: 14B94B8
  loc_14BA1CF: Proc_6_60_E63754()
  loc_14BA1D4: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EE9CF8
  'Data Table: 554C84
  loc_EE9C33: Set global_52 = Nothing
  loc_EE9C45: Set global_92 = Nothing
  loc_EE9C57: Set global_84 = Nothing
  loc_EE9C69: Set global_56 = Nothing
  loc_EE9C7B: Set global_80 = Nothing
  loc_EE9C8D: Set global_72 = Nothing
  loc_EE9C9F: Set global_60 = Nothing
  loc_EE9CAB: global_96 = Nothing
  loc_EE9CBA: Set global_112 = Nothing
  loc_EE9CCC: Set global_68 = Nothing
  loc_EE9CDE: Set global_72 = Nothing
  loc_EE9CF0: Set global_76 = Nothing
  loc_EE9CF7: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A648
  'Data Table: 554C84
  loc_E2A620: On Error Goto loc_E2A640
  loc_E2A637: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2A63F: Exit Sub
  loc_E2A640: ' Referenced from: E2A620
  loc_E2A640: Proc_6_60_E63754(Shift)
  loc_E2A645: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 'F7904C
  'Data Table: 554C84
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F78F23: var_86 = CInt(Val(CStr(Me.DGRevenue.Tag)))
  loc_F78F38: Set var_8C = Me.DGRevenue
  loc_F78F3E: var_8C.Visible = False
  loc_F78F60: If (Me.var_8C.RecordCount > 0) Then
  loc_F78FA1:   Set var_CC = var_D0(var_86)
  loc_F78FA7:   Call 0.Method_DGRevenue_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F78FAF:   var_D0.Text = var_86
  loc_F78FE5:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F79003:   Set var_CC = var_D0(var_86)
  loc_F79009:   Call 0.Method_DGRevenue_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F79011:   var_D0.Tag = 
  loc_F79027: End If
  loc_F79031: Set var_8C = var_C8(var_86)
  loc_F79037: Call 0.Method_DGRevenue_UnknownEvent_90 ()
  loc_F7903F: var_C8.SetFocus
  loc_F7904B: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_1F 'EADBC0
  'Data Table: 554C84
  loc_EADB52: Proc_6_153_E91D24(Me.DGRevenue, arg_14)
  loc_EADB86: Set var_A8 = arg_18(Val(CStr(Me.DGRevenue.Tag)))
  loc_EADBA6: Proc_6_138_106E830(Me.DGRevenue, global_64)
  loc_EADBBC: Exit Sub
  loc_EADBBD: Exit Sub
  loc_EADBBE: Assert
End Sub

Private Sub FGPoint_UnknownEvent_9 'F1AD28
  'Data Table: 554C84
  loc_F1AC44: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F1AC47:   Call DGHelp_UnknownEvent_9()
  loc_F1AC4C: End If
  loc_F1AC68: If (CBool(Me.DGGroup.Visible) = &HFF) Then
  loc_F1AC6B:   Call DGGroup_UnknownEvent_9()
  loc_F1AC70: End If
  loc_F1AC8C: If (CBool(().Visible) = &HFF) Then
  loc_F1AC8F:   Call DGPayType_UnknownEvent_9()
  loc_F1AC94: End If
  loc_F1ACB0: If (CBool(Me.DGPurchaseGodown.Visible) = &HFF) Then
  loc_F1ACC2:   Me.DGPurchaseGodown.Visible = False
  loc_F1ACCA: End If
  loc_F1ACE6: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F1ACF8:   Me.DGTaxStru.Visible = False
  loc_F1AD00: End If
  loc_F1AD1C: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_F1AD1F:   Call DGRevenue_UnknownEvent_9()
  loc_F1AD24: End If
  loc_F1AD24: Exit Sub
End Sub

Private Sub DGPurchaseGodown_UnknownEvent_9 'F79808
  'Data Table: 554C84
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F796DF: var_86 = CInt(Val(CStr(Me.DGPurchaseGodown.Tag)))
  loc_F796F4: Set var_8C = Me.DGPurchaseGodown
  loc_F796FA: var_8C.Visible = False
  loc_F7971C: If (Me.var_8C.RecordCount > 0) Then
  loc_F7975D:   Set var_CC = var_D0(var_86)
  loc_F79763:   Call 0.Method_DGPurchaseGodown_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F7976B:   var_D0.Text = var_86
  loc_F797A1:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F797BF:   Set var_CC = var_D0(var_86)
  loc_F797C5:   Call 0.Method_DGPurchaseGodown_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F797CD:   var_D0.Tag = 
  loc_F797E3: End If
  loc_F797ED: Set var_8C = var_C8(var_86)
  loc_F797F3: Call 0.Method_DGPurchaseGodown_UnknownEvent_90 ()
  loc_F797FB: var_C8.SetFocus
  loc_F79807: Exit Sub
End Sub

Private Sub DGPurchaseGodown_UnknownEvent_1F 'EAF474
  'Data Table: 554C84
  Dim var_B4 As Double
  loc_EAF406: Proc_6_153_E91D24(Me.DGPurchaseGodown, arg_14)
  loc_EAF433: var_B4 = Val(CStr(Me.DGPurchaseGodown.Tag))
  loc_EAF45A: Proc_6_138_106E830(Me.DGPurchaseGodown, global_80)
  loc_EAF470: Exit Sub
  loc_EAF471: CInt(var_B4) = arg_18(var_B4)
End Sub

Private Sub DGPurchItem_UnknownEvent_9 'F78EC0
  'Data Table: 554C84
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F78D97: var_86 = CInt(Val(CStr(Me.DGPurchItem.Tag)))
  loc_F78DAC: Set var_8C = Me.DGPurchItem
  loc_F78DB2: var_8C.Visible = False
  loc_F78DD4: If (Me.var_8C.RecordCount > 0) Then
  loc_F78E15:   Set var_CC = var_D0(var_86)
  loc_F78E1B:   Call 0.Method_DGPurchItem_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F78E23:   var_D0.Text = var_86
  loc_F78E59:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F78E77:   Set var_CC = var_D0(var_86)
  loc_F78E7D:   Call 0.Method_DGPurchItem_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F78E85:   var_D0.Tag = 
  loc_F78E9B: End If
  loc_F78EA5: Set var_8C = var_C8(var_86)
  loc_F78EAB: Call 0.Method_DGPurchItem_UnknownEvent_90 ()
  loc_F78EB3: var_C8.SetFocus
  loc_F78EBF: Exit Sub
End Sub

Private Sub DGPurchItem_UnknownEvent_1F 'EAF7A4
  'Data Table: 554C84
  loc_EAF736: Proc_6_153_E91D24(Me.DGPurchItem, arg_14)
  loc_EAF76A: Set var_A8 = arg_18(Val(CStr(Me.DGPurchItem.Tag)))
  loc_EAF78A: Proc_6_138_106E830(Me.DGPurchItem, global_84)
  loc_EAF7A0: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F780D4
  'Data Table: 554C84
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F77FAB: var_86 = CInt(Val(CStr(().Tag)))
  loc_F77FC0: Set var_8C = var_86(False)
  loc_F77FC6: var_8C.Visible = 
  loc_F77FE8: If (Me.var_8C.RecordCount > 0) Then
  loc_F78029:   Set var_CC = var_D0(var_86)
  loc_F7802F:   Call 0.Method_DGPayType_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F78037:   var_D0.Text = 
  loc_F7806D:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F7808B:   Set var_CC = var_D0(var_86)
  loc_F78091:   Call 0.Method_DGPayType_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F78099:   var_D0.Tag = 
  loc_F780AF: End If
  loc_F780B9: Set var_8C = var_C8(var_86)
  loc_F780BF: Call 0.Method_DGPayType_UnknownEvent_90 ()
  loc_F780C7: var_C8.SetFocus
  loc_F780D3: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EAF078
  'Data Table: 554C84
  loc_EAF00A: Proc_6_153_E91D24((), arg_14)
  loc_EAF03E: Set var_A8 = (Val(CStr(().Tag)))
  loc_EAF05E: Proc_6_138_106E830((arg_18), global_60)
  loc_EAF074: Exit Sub
  loc_EAF075: CopyBytes 3583
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F1F2BC
  'Data Table: 554C84
  Dim var_A8 As DataGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F1F1CC: Call Proc_56_54_FB6794()
  loc_F1F1DE: Set var_A8 = (CVar(CLng("16777215")))
  loc_F1F1F6: (DGPurchItem.DispID_26).InsertRows , 
  loc_F1F208: Set var_BC = (CVar(CLng()))
  loc_F1F20E: var_BC.DeleteRowLabels , 
  loc_F1F220: Set var_F0 = (CVar(CLng()))
  loc_F1F23E: Set var_104 = var_108(Index)
  loc_F1F244: Call 0.Method_TxtGrid_GotFocus0 (CStr(DGPurchItem.DispID_41))
  loc_F1F24C: var_108.Tag = 
  loc_F1F274: ().DeleteRowLabels , 
  loc_F1F27D: var_110 = CLng()
  loc_F1F28D: If (var_110 = CLng(2)) Then
  loc_F1F29F:   Set var_A8 = var_BC(Index)
  loc_F1F2A5:   Call 0.Method_TxtGrid_GotFocus0 (1)
  loc_F1F2AD:   var_BC.MaxLength = var_110
  loc_F1F2B9: End If
  loc_F1F2B9: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FAA904
  'Data Table: 554C84
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As DataGrid
  Dim var_AC As Long
  loc_FAA778: On Error Goto loc_FAA8FE
  loc_FAA785: If (CLng(Shift) = &H1B) Then
  loc_FAA795:   Set var_88 = var_8C(KeyCode)
  loc_FAA79B:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_FAA7A3:    = var_8C.Tag
  loc_FAA7B5:   Set var_94 = var_98(KeyCode)
  loc_FAA7BB:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_FAA7C3:   var_98.Text = 
  loc_FAA7DF:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_FAA7E4:   Call Proc_56_54_FB6794(arg_14)
  loc_FAA7ED:   Set var_88 = ()
  loc_FAA80A:   Set var_88 = var_8C(KeyCode)
  loc_FAA810:   Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_FAA818:   var_8C.Visible = DGPurchItem.DispID_8001
  loc_FAA824:   Exit Sub
  loc_FAA825: End If
  loc_FAA82F: ().DeleteRowLabels , 
  loc_FAA838: var_AC = CLng()
  loc_FAA848: If (var_AC = CLng(2)) Then
  loc_FAA85A:   Set var_88 = var_8C(KeyCode)
  loc_FAA860:   Call 0.Method_TxtGrid_KeyDown0 (1)
  loc_FAA868:   var_8C.MaxLength = var_AC
  loc_FAA894:   If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_FAA89D:     Call Proc_56_58_EE8478(KeyCode)
  loc_FAA8A8:     If (var_AE = &HFF) Then
  loc_FAA8EE:       Proc_6_62_1254E68((var_AE), (), KeyCode, Shift, global_116)
  loc_FAA8FE:       ' Referenced from: FAA778
  loc_FAA8FE:     End If
  loc_FAA8FE:   End If
  loc_FAA8FE: End If
  loc_FAA8FE: Proc_6_60_E63754(2, 0)
  loc_FAA903: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E23044
  'Data Table: 554C84
  Dim arg_10 As Integer
  loc_E23027: Proc_6_58_E06050(arg_10)
  loc_E23032: Proc_6_133_E7FB08(var_94)
  loc_E2303B: arg_10 = CInt(var_94)
  loc_E23041: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'ECCD74
  'Data Table: 554C84
  Dim var_88 As DataGrid
  Dim var_9C As Long
  Dim var_B4 As Variant
  Dim var_A0 As TextBox
  loc_ECCCD8: On Error Goto loc_ECCD6D
  loc_ECCCE5: ().DeleteRowLabels , 
  loc_ECCCEE: var_9C = CLng()
  loc_ECCCFE: If (var_9C = CLng(2)) Then
  loc_ECCD0B:   (var_9C).InsertRows , 
  loc_ECCD14:   var_B4 = CVar(CLng()) 'Long
  loc_ECCD2E:   Set var_88 = var_A0(KeyCode)
  loc_ECCD34:   Call 0.Method_TxtGrid_KeyUp0 (var_E8, CVar(CLng(2)))
  loc_ECCD3C:   var_B4 = var_A0.Text
  loc_ECCD4C:   Set var_10C = (CVar(var_E8))
  loc_ECCD52:   LateIdCallSt
  loc_ECCD6C: End If
  loc_ECCD6C: Exit Sub
  loc_ECCD6D: ' Referenced from: ECCCD8
  loc_ECCD6D: Proc_6_60_E63754(var_10C)
  loc_ECCD72: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5B348
  'Data Table: 554C84
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_A0 As Long
  loc_E5B30B: var_86 = Cancel
  loc_E5B314: If (var_86 = 0) Then
  loc_E5B31D:   Call Proc_56_58_EE8478(Cancel, var_88)
  loc_E5B326:   arg_10 = Not(var_88)
  loc_E5B329: End If
  loc_E5B333: var_86(arg_10).DeleteRowLabels , 
  loc_E5B33C: var_A0 = CLng()
  loc_E5B345: Exit Sub
End Sub

Private Sub OptRoundOff_Click(Index As Integer) 'E788C4
  'Data Table: 554C84
  Dim var_8C As OptionButton
  loc_E78881: Set var_88 = var_8C(Index)
  loc_E78887: Call 0.Method_OptRoundOff_Click0 (var_90)
  loc_E7888F:  = var_8C.Caption
  loc_E788AC: global_88 = CStr(Trim(CVar(var_90)))
  loc_E788C1: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '18898CC
  'Data Table: 554C84
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim var_90 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_D0 As TextBox
  Dim var_8C As TextBox
  Dim var_C8 As String
  loc_18871AA: Set var_88 = var_8C(Index)
  loc_18871B0: Call 0.Method_Txt_GotFocus0 ()
  loc_18871B8: Set var_90 = var_8C
  loc_18871BE: Proc_6_74_E23240(var_90)
  loc_18871CA: Call Proc_56_54_FB6794()
  loc_18871DE: If (Index = CInt(139)) Then
  loc_18871FD:   If (CBool(Me.DGPurchItem.Visible) = 0) Then
  loc_188720D:     Set var_8C = var_90(Index)
  loc_1887213:     Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_188721B:     var_92 = var_90.Left
  loc_1887237:     var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_1887246:     Me.DGPurchItem.Left = var_B8
  loc_1887266:     Set var_8C = var_90(Index)
  loc_188726C:     Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1887274:      = var_90.Top
  loc_1887286:     Set var_CC = var_D0(Index)
  loc_188728C:     Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_1887294:      = var_D0.Height
  loc_18872B8:     var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_18872C7:     Me.DGPurchItem.Top = var_B8
  loc_18872F1:     Me.DGPurchItem.Tag = CVar(CStr(Index))
  loc_18872FC:   End If
  loc_1887316:   If (global_84.RecordCount > 0) Then
  loc_1887324:     Set var_8C = ()
  loc_1887340:     Proc_6_137_1192FDC(Me.DGPurchItem, global_84)
  loc_188734E:   End If
  loc_188735A:   var_A8 = global_84.RecordCount
  loc_18873A5:   Set var_88 = var_8C(Index)
  loc_18873AB:   Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_18873B3:   Index = var_8C.Text
  loc_18873CB:   If (var_8C Or (var_E0 = vbNullString)) Then
  loc_18873CE:     Exit Sub
  loc_18873CF:   End If
  loc_18873DC:   Set var_88 = var_8C(Index)
  loc_18873E2:   Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_18873EA:    = var_8C.Text
  loc_18873FC:   var_B8 = "Name"
  loc_188740E:   var_90 = Me.Recordset15.Fields
  loc_188743A:   If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_1887446:     Me.Recordset15.MoveFirst
  loc_1887469:     Set var_88 = var_8C(Index)
  loc_188746F:     Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_1887477:     1 = var_8C.Text
  loc_1887493:     Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_18874A8:   End If
  loc_18874AB: Else
  loc_18874B3:   If Not (var_92 = CInt(4)) Then
  loc_18874BE:     If Not (var_92 = CInt(3)) Then
  loc_18874C9:       If Not (var_92 = CInt(2)) Then
  loc_18874D4:         If Not (var_92 = CInt(&HB)) Then
  loc_18874DF:           If Not (var_92 = CInt(1)) Then
  loc_18874EA:             If Not (var_92 = CInt(&H22)) Then
  loc_18874F5:               If Not (var_92 = CInt(&H21)) Then
  loc_1887500:                 If Not (var_92 = CInt(&H18)) Then
  loc_188750B:                   If Not (var_92 = CInt(&H19)) Then
  loc_1887516:                     If Not (var_92 = CInt(&H1A)) Then
  loc_1887521:                       If Not (var_92 = CInt(&H1F)) Then
  loc_188752C:                         If Not (var_92 = CInt(&HC)) Then
  loc_1887537:                           If Not (var_92 = CInt(&H24)) Then
  loc_1887542:                             If Not (var_92 = CInt(&H23)) Then
  loc_188754D:                               If Not (var_92 = CInt(&H25)) Then
  loc_1887558:                                 If Not (var_92 = CInt(&H26)) Then
  loc_1887563:                                   If Not (var_92 = CInt(&H2B)) Then
  loc_188756E:                                     If Not (var_92 = CInt(&H2C)) Then
  loc_1887579:                                       If Not (var_92 = CInt(&H37)) Then
  loc_1887584:                                         If Not (var_92 = CInt(&H44)) Then
  loc_188758F:                                           If Not (var_92 = CInt(&H45)) Then
  loc_188759A:                                             If (var_92 = CInt(&H46)) Then
  loc_188759D:                                             End If
  loc_188759D:                                           End If
  loc_188759D:                                         End If
  loc_188759D:                                       End If
  loc_188759D:                                     End If
  loc_188759D:                                   End If
  loc_188759D:                                 End If
  loc_188759D:                               End If
  loc_188759D:                             End If
  loc_188759D:                           End If
  loc_188759D:                         End If
  loc_188759D:                       End If
  loc_188759D:                     End If
  loc_188759D:                   End If
  loc_188759D:                 End If
  loc_188759D:               End If
  loc_188759D:             End If
  loc_188759D:           End If
  loc_188759D:         End If
  loc_188759D:       End If
  loc_188759D:     End If
  loc_18875B9:     If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_18875C9:       Set var_8C = var_90(Index)
  loc_18875CF:       Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_18875D7:        = var_90.Left
  loc_18875F3:       var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_1887602:       Me.DGHelp.Left = var_B8
  loc_1887622:       Set var_8C = var_90(Index)
  loc_1887628:       Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1887630:        = var_90.Top
  loc_1887642:       Set var_CC = var_D0(Index)
  loc_1887648:       Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_1887650:        = var_D0.Height
  loc_1887674:       var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_1887683:       Me.DGHelp.Top = var_B8
  loc_18876AD:       Me.DGHelp.Tag = CVar(CStr(Index))
  loc_18876B8:     End If
  loc_18876D2:     If (global_52.RecordCount > 0) Then
  loc_18876E0:       Set var_8C = ()
  loc_18876FC:       Proc_6_137_1192FDC(Me.DGHelp, global_52)
  loc_188770A:     End If
  loc_1887716:     var_A8 = global_52.RecordCount
  loc_1887761:     Set var_88 = var_8C(Index)
  loc_1887767:     Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_188776F:     Index = var_8C.Text
  loc_1887787:     If (var_8C Or (var_E0 = vbNullString)) Then
  loc_188778A:       Exit Sub
  loc_188778B:     End If
  loc_1887798:     Set var_88 = var_8C(Index)
  loc_188779E:     Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_18877A6:      = var_8C.Text
  loc_18877B8:     var_B8 = "Name"
  loc_18877CA:     var_90 = Me.Recordset15.Fields
  loc_18877F6:     If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_1887802:       Me.Recordset15.MoveFirst
  loc_1887825:       Set var_88 = var_8C(Index)
  loc_188782B:       Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_1887833:       1 = var_8C.Text
  loc_188784F:       Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_1887864:     End If
  loc_1887867:   Else
  loc_188786F:     If Not (var_92 = CInt(&H17)) Then
  loc_188787A:       If (var_92 = CInt(&H1B)) Then
  loc_188787D:       End If
  loc_1887899:       If (CBool(().Visible) = 0) Then
  loc_18878A9:         Set var_8C = var_90(Index)
  loc_18878AF:         Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_18878B7:          = var_90.Left
  loc_18878D3:         var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_18878E2:         (var_B8).Left = 
  loc_1887902:         Set var_8C = var_90(Index)
  loc_1887908:         Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1887910:          = var_90.Top
  loc_1887922:         Set var_CC = var_D0(Index)
  loc_1887928:         Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_1887930:          = var_D0.Height
  loc_1887954:         var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_1887963:         (var_B8).Top = 
  loc_188798D:         (CVar(CStr(Index))).Tag = 
  loc_1887998:       End If
  loc_18879B2:       If (global_60.RecordCount > 0) Then
  loc_18879C0:         Set var_8C = ()
  loc_18879DC:         Proc_6_137_1192FDC((), global_60)
  loc_18879EA:       End If
  loc_18879F6:       var_A8 = global_60.RecordCount
  loc_1887A41:       Set var_88 = var_8C(Index)
  loc_1887A47:       Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1887A4F:       Index = var_8C.Text
  loc_1887A67:       If (var_8C Or (var_E0 = vbNullString)) Then
  loc_1887A6A:         Exit Sub
  loc_1887A6B:       End If
  loc_1887A78:       Set var_88 = var_8C(Index)
  loc_1887A7E:       Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1887A86:        = var_8C.Text
  loc_1887A98:       var_B8 = "Name"
  loc_1887AAA:       var_90 = Me.Recordset15.Fields
  loc_1887AD6:       If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_1887AE2:         Me.Recordset15.MoveFirst
  loc_1887B05:         Set var_88 = var_8C(Index)
  loc_1887B0B:         Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_1887B13:         1 = var_8C.Text
  loc_1887B2F:         Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_1887B44:       End If
  loc_1887B47:     Else
  loc_1887B4F:       If (var_92 = CInt(&H38)) Then
  loc_1887B6E:         If (CBool(Me.DGRevenue.Visible) = 0) Then
  loc_1887B7E:           Set var_8C = var_90(Index)
  loc_1887B84:           Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1887B8C:            = var_90.Left
  loc_1887BA8:           var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_1887BB7:           Me.DGRevenue.Left = var_B8
  loc_1887BD7:           Set var_8C = var_90(Index)
  loc_1887BDD:           Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1887BE5:            = var_90.Top
  loc_1887BF7:           Set var_CC = var_D0(Index)
  loc_1887BFD:           Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_1887C05:            = var_D0.Height
  loc_1887C29:           var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_1887C38:           Me.DGRevenue.Top = var_B8
  loc_1887C62:           Me.DGRevenue.Tag = CVar(CStr(Index))
  loc_1887C6D:         End If
  loc_1887C87:         If (global_64.RecordCount > 0) Then
  loc_1887C95:           Set var_8C = ()
  loc_1887CB1:           Proc_6_137_1192FDC(Me.DGRevenue, global_64)
  loc_1887CBF:         End If
  loc_1887CCB:         var_A8 = global_64.RecordCount
  loc_1887D16:         Set var_88 = var_8C(Index)
  loc_1887D1C:         Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1887D24:         Index = var_8C.Text
  loc_1887D3C:         If (var_8C Or (var_E0 = vbNullString)) Then
  loc_1887D3F:           Exit Sub
  loc_1887D40:         End If
  loc_1887D4D:         Set var_88 = var_8C(Index)
  loc_1887D53:         Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1887D5B:          = var_8C.Text
  loc_1887D6D:         var_B8 = "Name"
  loc_1887D7F:         var_90 = Me.Recordset15.Fields
  loc_1887DAB:         If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_1887DB7:           Me.Recordset15.MoveFirst
  loc_1887DDA:           Set var_88 = var_8C(Index)
  loc_1887DE0:           Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_1887DE8:           1 = var_8C.Text
  loc_1887E04:           Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_1887E19:         End If
  loc_1887E1C:       Else
  loc_1887E24:         If (var_92 = CInt(&H11)) Then
  loc_1887E43:           If (CBool(Me.DGGroup.Visible) = 0) Then
  loc_1887E53:             Set var_8C = var_90(Index)
  loc_1887E59:             Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1887E61:              = var_90.Left
  loc_1887E7D:             var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_1887E8C:             Me.DGGroup.Left = var_B8
  loc_1887EAC:             Set var_8C = var_90(Index)
  loc_1887EB2:             Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1887EBA:              = var_90.Top
  loc_1887ECC:             Set var_CC = var_D0(Index)
  loc_1887ED2:             Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_1887EDA:              = var_D0.Height
  loc_1887EFE:             var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_1887F0D:             Me.DGGroup.Top = var_B8
  loc_1887F37:             Me.DGGroup.Tag = CVar(CStr(Index))
  loc_1887F42:           End If
  loc_1887F5C:           If (global_56.RecordCount > 0) Then
  loc_1887F6A:             Set var_8C = ()
  loc_1887F86:             Proc_6_137_1192FDC(Me.DGGroup, global_56)
  loc_1887F94:           End If
  loc_1887FA0:           var_A8 = global_56.RecordCount
  loc_1887FEB:           Set var_88 = var_8C(Index)
  loc_1887FF1:           Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1887FF9:           Index = var_8C.Text
  loc_1888011:           If (var_8C Or (var_E0 = vbNullString)) Then
  loc_1888014:             Exit Sub
  loc_1888015:           End If
  loc_1888022:           Set var_88 = var_8C(Index)
  loc_1888028:           Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1888030:            = var_8C.Text
  loc_1888042:           var_B8 = "Name"
  loc_1888054:           var_90 = Me.Recordset15.Fields
  loc_1888080:           If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_188808C:             Me.Recordset15.MoveFirst
  loc_18880AF:             Set var_88 = var_8C(Index)
  loc_18880B5:             Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_18880BD:             1 = var_8C.Text
  loc_18880D9:             Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_18880EE:           End If
  loc_18880F1:         Else
  loc_18880F9:           If (var_92 = CInt(&H49)) Then
  loc_1888118:             If (CBool(Me.DGPurchaseGodown.Visible) = 0) Then
  loc_1888128:               Set var_8C = var_90(Index)
  loc_188812E:               Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1888136:                = var_90.Left
  loc_1888152:               var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_1888161:               Me.DGPurchaseGodown.Left = var_B8
  loc_1888181:               Set var_8C = var_90(Index)
  loc_1888187:               Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_188818F:                = var_90.Top
  loc_18881A1:               Set var_CC = var_D0(Index)
  loc_18881A7:               Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_18881AF:                = var_D0.Height
  loc_18881D3:               var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_18881E2:               Me.DGPurchaseGodown.Top = var_B8
  loc_188820C:               Me.DGPurchaseGodown.Tag = CVar(CStr(Index))
  loc_1888217:             End If
  loc_1888231:             If (global_80.RecordCount > 0) Then
  loc_188823F:               Set var_8C = ()
  loc_188825B:               Proc_6_137_1192FDC(Me.DGPurchaseGodown, global_80)
  loc_1888269:             End If
  loc_1888275:             var_A8 = global_80.RecordCount
  loc_18882C0:             Set var_88 = var_8C(Index)
  loc_18882C6:             Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_18882CE:             Index = var_8C.Text
  loc_18882E6:             If (var_8C Or (var_E0 = vbNullString)) Then
  loc_18882E9:               Exit Sub
  loc_18882EA:             End If
  loc_18882F7:             Set var_88 = var_8C(Index)
  loc_18882FD:             Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1888305:              = var_8C.Text
  loc_1888317:             var_B8 = "Name"
  loc_1888329:             var_90 = Me.Recordset15.Fields
  loc_1888355:             If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_1888361:               Me.Recordset15.MoveFirst
  loc_1888384:               Set var_88 = var_8C(Index)
  loc_188838A:               Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_1888392:               1 = var_8C.Text
  loc_18883AE:               Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_18883C3:             End If
  loc_18883C6:           Else
  loc_18883CE:             If (var_92 = CInt(&H5A)) Then
  loc_18883ED:               If (CBool(Me.DGTaxStru.Visible) = 0) Then
  loc_18883FD:                 Set var_8C = var_90(Index)
  loc_1888403:                 Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_188840B:                  = var_90.Left
  loc_1888427:                 var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_1888436:                 Me.DGTaxStru.Left = var_B8
  loc_1888456:                 Set var_8C = var_90(Index)
  loc_188845C:                 Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1888464:                  = var_90.Top
  loc_1888476:                 Set var_CC = var_D0(Index)
  loc_188847C:                 Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_1888484:                  = var_D0.Height
  loc_18884A8:                 var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_18884B7:                 Me.DGTaxStru.Top = var_B8
  loc_18884E1:                 Me.DGTaxStru.Tag = CVar(CStr(Index))
  loc_18884EC:               End If
  loc_1888506:               If (global_72.RecordCount > 0) Then
  loc_1888514:                 Set var_8C = ()
  loc_1888530:                 Proc_6_137_1192FDC(Me.DGTaxStru, global_72)
  loc_188853E:               End If
  loc_188854A:               var_A8 = global_72.RecordCount
  loc_1888595:               Set var_88 = var_8C(Index)
  loc_188859B:               Call 0.Method_Txt_GotFocus0 (var_E0, ((var_A8 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_18885A3:               Index = var_8C.Text
  loc_18885BB:               If (var_8C Or (var_E0 = vbNullString)) Then
  loc_18885BE:                 Exit Sub
  loc_18885BF:               End If
  loc_18885CC:               Set var_88 = var_8C(Index)
  loc_18885D2:               Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_18885DA:                = var_8C.Text
  loc_18885EC:               var_B8 = "Name"
  loc_18885FE:               var_90 = Me.Recordset15.Fields
  loc_188862A:               If CBool(CVar(var_E0) <> var_90.Item(var_B8).Value) Then
  loc_1888636:                 Me.Recordset15.MoveFirst
  loc_1888659:                 Set var_88 = var_8C(Index)
  loc_188865F:                 Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_1888667:                 1 = var_8C.Text
  loc_1888683:                 Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_1888698:               End If
  loc_188869B:             Else
  loc_18886A2:               If Not (var_92 = 136) Then
  loc_18886AC:                 If (var_92 = 137) Then
  loc_18886AF:                 End If
  loc_18886CB:                 If (CBool(Me.DGTAX.Visible) = 0) Then
  loc_18886DB:                   Set var_8C = var_90(Index)
  loc_18886E1:                   Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_18886E9:                    = var_90.Left
  loc_1888705:                   var_B8 = CVar((CDbl(().Left) + var_A8)) 'Single
  loc_1888714:                   Me.DGTAX.Left = var_B8
  loc_1888734:                   Set var_8C = var_90(Index)
  loc_188873A:                   Call 0.Method_Txt_GotFocus0 (var_A8)
  loc_1888742:                    = var_90.Top
  loc_1888754:                   Set var_CC = var_D0(Index)
  loc_188875A:                   Call 0.Method_Txt_GotFocus0 (var_D4)
  loc_1888762:                    = var_D0.Height
  loc_1888786:                   var_B8 = CVar((((CDbl(().Top) + var_A8) + var_D4) + CDbl(&H14))) 'Single
  loc_1888795:                   Me.DGTAX.Top = var_B8
  loc_18887BF:                   Me.DGTAX.Tag = CVar(CStr(Index))
  loc_18887CA:                 End If
  loc_18887E4:                 If (global_68.RecordCount > 0) Then
  loc_18887F2:                   Set var_8C = ()
  loc_188880E:                   Proc_6_137_1192FDC(Me.DGTAX, global_68)
  loc_188881C:                 End If
  loc_1888873:                 Set var_88 = var_8C(Index)
  loc_1888879:                 Call 0.Method_Txt_GotFocus0 (var_E0, ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1888881:                 Index = var_8C.Text
  loc_1888899:                 If (var_8C Or (var_E0 = vbNullString)) Then
  loc_188889C:                   Exit Sub
  loc_188889D:                 End If
  loc_18888AA:                 Set var_88 = var_8C(Index)
  loc_18888B0:                 Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_18888B8:                  = var_8C.Text
  loc_18888CA:                 var_B8 = "Name"
  loc_1888908:                 If CBool(CVar(var_E0) <> Me.Recordset15.Fields.Item(var_B8).Value) Then
  loc_1888914:                   Me.Recordset15.MoveFirst
  loc_1888937:                   Set var_88 = var_8C(Index)
  loc_188893D:                   Call 0.Method_Txt_GotFocus0 (var_E0, "Name ='", 0)
  loc_1888945:                   1 = var_8C.Text
  loc_1888961:                   Me.Recordset15.Find var_B8 & var_E0 & "'", , 
  loc_1888976:                 End If
  loc_1888979:               Else
  loc_1888981:                 If Not (var_92 = CInt(&H7D)) Then
  loc_188898C:                   If (var_92 = CInt(&H7E)) Then
  loc_188898F:                   End If
  loc_188899C:                   ReDim var_10C(0 To 2)
  loc_18889B3:                   var_10C(0) = "Purchase Rate"
  loc_18889C2:                   var_10C(1) = "Last Purchase Rate"
  loc_18889D1:                   var_10C(2) = "Party Wise Last Pur Rate"
  loc_1888A28:                   Set global_112 = Proc_6_66_F0048C((Array(var_10C)), (), Index)
  loc_1888A3C:                 Else
  loc_1888A44:                   If (var_92 = CInt(0)) Then
  loc_1888A54:                     ReDim var_10C(0 To 1)
  loc_1888A6B:                     var_10C(0) = "24 Hrs"
  loc_1888A7A:                     var_10C(1) = "Other"
  loc_1888A91:                     global_96 = Array(var_10C)
  loc_1888A9C:                     Set var_CC = global_96(global_96)
  loc_1888AB7:                     Set var_8C = (3)
  loc_1888AD1:                     Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_1888AEF:                     Set var_88 = var_8C(Index)
  loc_1888AF5:                     Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1888AFD:                     2 = var_8C.Text
  loc_1888B0F:                     Set var_90 = var_CC(Index)
  loc_1888B15:                     Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1888B1D:                     var_CC.Tag = 
  loc_1888B33:                   Else
  loc_1888B3B:                     If Not (var_92 = CInt(&H10)) Then
  loc_1888B46:                       If Not (var_92 = CInt(&H4B)) Then
  loc_1888B51:                         If Not (var_92 = CInt(&H77)) Then
  loc_1888B5C:                           If Not (var_92 = CInt(&H78)) Then
  loc_1888B67:                             If Not (var_92 = CInt(&H79)) Then
  loc_1888B72:                               If (var_92 = CInt(&H58)) Then
  loc_1888B75:                               End If
  loc_1888B75:                             End If
  loc_1888B75:                           End If
  loc_1888B75:                         End If
  loc_1888B75:                       End If
  loc_1888B82:                       ReDim var_10C(0 To 1)
  loc_1888B99:                       var_10C(0) = "Yes"
  loc_1888BA8:                       var_10C(1) = "No"
  loc_1888BBF:                       global_96 = Array(var_10C)
  loc_1888BCA:                       Set var_CC = (global_96)
  loc_1888BE5:                       Set var_8C = ()
  loc_1888BFF:                       Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_1888C1D:                       Set var_88 = var_8C(Index)
  loc_1888C23:                       Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1888C2B:                       2 = var_8C.Text
  loc_1888C3D:                       Set var_90 = var_CC(Index)
  loc_1888C43:                       Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1888C4B:                       var_CC.Tag = 
  loc_1888C61:                     Else
  loc_1888C69:                       If Not (var_92 = CInt(&HE)) Then
  loc_1888C74:                         If (var_92 = CInt(&HF)) Then
  loc_1888C77:                         End If
  loc_1888C84:                         ReDim var_10C(0 To 1)
  loc_1888C9B:                         var_10C(0) = "Yes"
  loc_1888CAA:                         var_10C(1) = "No"
  loc_1888CC1:                         global_96 = Array(var_10C)
  loc_1888CCC:                         Set var_CC = (global_96)
  loc_1888CE7:                         Set var_8C = ()
  loc_1888D01:                         Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_1888D1F:                         Set var_88 = var_8C(Index)
  loc_1888D25:                         Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1888D2D:                         2 = var_8C.Text
  loc_1888D3F:                         Set var_90 = var_CC(Index)
  loc_1888D45:                         Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1888D4D:                         var_CC.Tag = 
  loc_1888D63:                       Else
  loc_1888D6B:                         If (var_92 = CInt(&H1C)) Then
  loc_1888D7B:                           ReDim var_10C(0 To 1)
  loc_1888D92:                           var_10C(0) = "Reversible"
  loc_1888DA1:                           var_10C(1) = "Call Based"
  loc_1888DB8:                           global_96 = Array(var_10C)
  loc_1888DC3:                           Set var_CC = (global_96)
  loc_1888DDE:                           Set var_8C = ()
  loc_1888DF8:                           Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_1888E16:                           Set var_88 = var_8C(Index)
  loc_1888E1C:                           Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1888E24:                           2 = var_8C.Text
  loc_1888E36:                           Set var_90 = var_CC(Index)
  loc_1888E3C:                           Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1888E44:                           var_CC.Tag = 
  loc_1888E5A:                         Else
  loc_1888E62:                           If (var_92 = CInt(&HD)) Then
  loc_1888E72:                             ReDim var_10C(0 To 1)
  loc_1888E89:                             var_10C(0) = "Daily Occupancy Based Posting"
  loc_1888E98:                             var_10C(1) = "Daily Bill wise Posting"
  loc_1888EAF:                             global_96 = Array(var_10C)
  loc_1888EBA:                             Set var_CC = (global_96)
  loc_1888ED5:                             Set var_8C = ()
  loc_1888EEF:                             Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_1888F0D:                             Set var_88 = var_8C(Index)
  loc_1888F13:                             Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1888F1B:                             2 = var_8C.Text
  loc_1888F2D:                             Set var_90 = var_CC(Index)
  loc_1888F33:                             Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1888F3B:                             var_CC.Tag = 
  loc_1888F51:                           Else
  loc_1888F59:                             If Not (var_92 = CInt(&H2E)) Then
  loc_1888F64:                               If (var_92 = CInt(&H7C)) Then
  loc_1888F67:                               End If
  loc_1888F74:                               ReDim var_10C(0 To 1)
  loc_1888F8B:                               var_10C(0) = "Advanced"
  loc_1888F9A:                               var_10C(1) = "Standard"
  loc_1888FB1:                               global_96 = Array(var_10C)
  loc_1888FBC:                               Set var_CC = (global_96)
  loc_1888FD7:                               Set var_8C = ()
  loc_1888FF1:                               Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_188900F:                               Set var_88 = var_8C(Index)
  loc_1889015:                               Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_188901D:                               2 = var_8C.Text
  loc_188902F:                               Set var_90 = var_CC(Index)
  loc_1889035:                               Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_188903D:                               var_CC.Tag = 
  loc_1889053:                             Else
  loc_188905B:                               If (var_92 = CInt(&H2D)) Then
  loc_188906B:                                 ReDim var_10C(0 To 1)
  loc_1889082:                                 var_10C(0) = "Daily"
  loc_1889091:                                 var_10C(1) = "While Printing Bill"
  loc_18890A8:                                 global_96 = Array(var_10C)
  loc_18890B3:                                 Set var_CC = (global_96)
  loc_18890CE:                                 Set var_8C = ()
  loc_18890E8:                                 Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_1889106:                                 Set var_88 = var_8C(Index)
  loc_188910C:                                 Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1889114:                                 2 = var_8C.Text
  loc_1889126:                                 Set var_90 = var_CC(Index)
  loc_188912C:                                 Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_1889134:                                 var_CC.Tag = 
  loc_188914A:                               Else
  loc_1889152:                                 If Not (var_92 = CInt(7)) Then
  loc_188915D:                                   If Not (var_92 = CInt(5)) Then
  loc_1889168:                                     If Not (var_92 = CInt(8)) Then
  loc_1889173:                                       If Not (var_92 = CInt(9)) Then
  loc_188917E:                                         If Not (var_92 = CInt(6)) Then
  loc_1889189:                                           If Not (var_92 = CInt(&H4C)) Then
  loc_1889194:                                             If Not (var_92 = CInt(&H51)) Then
  loc_188919F:                                               If Not (var_92 = CInt(&H53)) Then
  loc_18891AA:                                                 If Not (var_92 = CInt(&H54)) Then
  loc_18891B5:                                                   If (var_92 = CInt(&H52)) Then
  loc_18891B8:                                                   End If
  loc_18891B8:                                                 End If
  loc_18891B8:                                               End If
  loc_18891B8:                                             End If
  loc_18891B8:                                           End If
  loc_18891B8:                                         End If
  loc_18891B8:                                       End If
  loc_18891B8:                                     End If
  loc_18891B8:                                   End If
  loc_18891C0:                                   var_E0 = "{Home}+{End}"
  loc_18891C6:                                   Proc_303_0_FBACC8(var_E0)
  loc_18891D1:                                 Else
  loc_18891D9:                                   If (var_92 = CInt(&H27)) Then
  loc_18891E9:                                     ReDim var_10C(0 To 1)
  loc_1889200:                                     var_10C(0) = "Seperate for All Kitchen"
  loc_188920F:                                     var_10C(1) = "For All Kitchen"
  loc_1889226:                                     global_96 = Array(var_10C)
  loc_1889231:                                     Set var_CC = 0(global_96)
  loc_188924C:                                     Set var_8C = ()
  loc_1889266:                                     Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_1889284:                                     Set var_88 = var_8C(Index)
  loc_188928A:                                     Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1889292:                                     2 = var_8C.Text
  loc_18892A4:                                     Set var_90 = var_CC(Index)
  loc_18892AA:                                     Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_18892B2:                                     var_CC.Tag = 
  loc_18892C8:                                   Else
  loc_18892CF:                                     If (var_92 = 130) Then
  loc_18892DF:                                       ReDim var_10C(0 To 2)
  loc_18892F6:                                       var_10C(0) = "All Items"
  loc_1889305:                                       var_10C(1) = "Void Items"
  loc_1889314:                                       var_10C(2) = "No Print"
  loc_188932B:                                       global_96 = Array(var_10C)
  loc_1889336:                                       Set var_CC = (global_96)
  loc_1889351:                                       Set var_8C = ()
  loc_188936B:                                       Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_1889389:                                       Set var_88 = var_8C(Index)
  loc_188938F:                                       Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1889397:                                       3 = var_8C.Text
  loc_18893A9:                                       Set var_90 = var_CC(Index)
  loc_18893AF:                                       Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_18893B7:                                       var_CC.Tag = 
  loc_18893CD:                                     Else
  loc_18893D5:                                       If (var_92 = CInt(&H29)) Then
  loc_18893E5:                                         ReDim var_10C(0 To 4)
  loc_18893FC:                                         var_10C(0) = "Guest Bill"
  loc_188940B:                                         var_10C(1) = "Purchase Bill"
  loc_188941A:                                         var_10C(2) = "Sale Bill"
  loc_1889429:                                         var_10C(3) = "Member Bill"
  loc_1889438:                                         var_10C(4) = "Taxes Member Bill"
  loc_188944F:                                         global_96 = Array(var_10C)
  loc_188945A:                                         Set var_CC = (global_96)
  loc_1889475:                                         Set var_8C = ()
  loc_188948F:                                         Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_18894AD:                                         Set var_88 = var_8C(Index)
  loc_18894B3:                                         Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_18894BB:                                         5 = var_8C.Text
  loc_18894CD:                                         Set var_90 = var_CC(Index)
  loc_18894D3:                                         Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_18894DB:                                         var_CC.Tag = 
  loc_18894F1:                                       Else
  loc_18894F9:                                         If (var_92 = CInt(&H39)) Then
  loc_1889509:                                           ReDim var_10C(0 To 1)
  loc_1889520:                                           var_10C(0) = "Advanced"
  loc_188952F:                                           var_10C(1) = "Standard"
  loc_1889546:                                           global_96 = Array(var_10C)
  loc_1889551:                                           Set var_CC = (global_96)
  loc_188956C:                                           Set var_8C = ()
  loc_1889586:                                           Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_18895A4:                                           Set var_88 = var_8C(Index)
  loc_18895AA:                                           Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_18895B2:                                           2 = var_8C.Text
  loc_18895C4:                                           Set var_90 = var_CC(Index)
  loc_18895CA:                                           Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_18895D2:                                           var_CC.Tag = 
  loc_18895E8:                                         Else
  loc_18895F0:                                           If (var_92 = CInt(&H34)) Then
  loc_1889600:                                             ReDim var_10C(0 To 1)
  loc_1889617:                                             var_10C(0) = "Through CSV"
  loc_1889626:                                             var_10C(1) = "Through Mobile"
  loc_188963D:                                             global_96 = Array(var_10C)
  loc_1889648:                                             Set var_CC = (global_96)
  loc_1889663:                                             Set var_8C = ()
  loc_188967D:                                             Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_188969B:                                             Set var_88 = var_8C(Index)
  loc_18896A1:                                             Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_18896A9:                                             2 = var_8C.Text
  loc_18896BB:                                             Set var_90 = var_CC(Index)
  loc_18896C1:                                             Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_18896C9:                                             var_CC.Tag = 
  loc_18896DF:                                           Else
  loc_18896E7:                                             If (var_92 = CInt(&H3B)) Then
  loc_18896F7:                                               ReDim var_10C(0 To 1)
  loc_188970E:                                               var_10C(0) = "Auto"
  loc_188971D:                                               var_10C(1) = "Semi"
  loc_1889734:                                               global_96 = Array(var_10C)
  loc_188973F:                                               Set var_CC = (global_96)
  loc_188975A:                                               Set var_8C = ()
  loc_1889774:                                               Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_1889792:                                               Set var_88 = var_8C(Index)
  loc_1889798:                                               Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_18897A0:                                               2 = var_8C.Text
  loc_18897B2:                                               Set var_90 = var_CC(Index)
  loc_18897B8:                                               Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_18897C0:                                               var_CC.Tag = 
  loc_18897D6:                                             Else
  loc_18897DD:                                               If (var_92 = 138) Then
  loc_18897ED:                                                 ReDim var_10C(0 To 1)
  loc_1889804:                                                 var_10C(0) = "Room Category"
  loc_1889806:                                                 var_C8 = "Room Category + Adult"
  loc_1889813:                                                 var_10C(1) = "Semi"
  loc_188982A:                                                 global_96 = Array(var_10C)
  loc_1889835:                                                 Set var_CC = (global_96)
  loc_1889850:                                                 Set var_8C = ()
  loc_188986A:                                                 Set global_112 = Proc_6_66_F0048C(var_CC, var_8C, Index)
  loc_1889888:                                                 Set var_88 = var_8C(Index)
  loc_188988E:                                                 Call 0.Method_Txt_GotFocus0 (var_E0, global_96)
  loc_1889896:                                                 2 = var_8C.Text
  loc_18898A8:                                                 Set var_90 = var_CC(Index)
  loc_18898AE:                                                 Call 0.Method_Txt_GotFocus0 (var_E0)
  loc_18898B6:                                                 var_CC.Tag = 
  loc_18898C9:                                               End If
  loc_18898C9:                                             End If
  loc_18898C9:                                           End If
  loc_18898C9:                                         End If
  loc_18898C9:                                       End If
  loc_18898C9:                                     End If
  loc_18898C9:                                   End If
  loc_18898C9:                                 End If
  loc_18898C9:                               End If
  loc_18898C9:                             End If
  loc_18898C9:                           End If
  loc_18898C9:                         End If
  loc_18898C9:                       End If
  loc_18898C9:                     End If
  loc_18898C9:                   End If
  loc_18898C9:                 End If
  loc_18898C9:               End If
  loc_18898C9:             End If
  loc_18898C9:           End If
  loc_18898C9:         End If
  loc_18898C9:       End If
  loc_18898C9:     End If
  loc_18898C9:   End If
  loc_18898C9: End If
  loc_18898C9: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '156CF20
  'Data Table: 554C84
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_A4 As DataGrid
  Dim var_B8 As DataGrid
  loc_156BE86: If (CLng(Shift) = &H1B) Then
  loc_156BE89:   Call Proc_56_54_FB6794()
  loc_156BE8E:   Exit Sub
  loc_156BE8F: End If
  loc_156BE92: var_86 = KeyCode
  loc_156BE9E: If (var_86 = CInt(139)) Then
  loc_156BEB9:   Set var_9C = Nothing
  loc_156BEC4:   Set var_98 = Nothing
  loc_156BEF6:   Proc_6_69_134A630(Me.DGPurchItem, (var_86), KeyCode, global_84, Shift)
  loc_156BF66:   If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156BF6D:     Set var_98 = Me.DGPurchItem
  loc_156BF90:     Proc_6_138_106E830(var_98, global_84, KeyCode, 1(0))
  loc_156BF9E:   End If
  loc_156BFA1: Else
  loc_156BFA9:   If Not (var_86 = CInt(&H37)) Then
  loc_156BFB4:     If Not (var_86 = CInt(4)) Then
  loc_156BFBF:       If Not (var_86 = CInt(3)) Then
  loc_156BFCA:         If Not (var_86 = CInt(2)) Then
  loc_156BFD5:           If Not (var_86 = CInt(&HB)) Then
  loc_156BFE0:             If Not (var_86 = CInt(1)) Then
  loc_156BFEB:               If Not (var_86 = CInt(&H22)) Then
  loc_156BFF6:                 If Not (var_86 = CInt(&H21)) Then
  loc_156C001:                   If Not (var_86 = CInt(&H18)) Then
  loc_156C00C:                     If Not (var_86 = CInt(&H19)) Then
  loc_156C017:                       If Not (var_86 = CInt(&H1A)) Then
  loc_156C022:                         If Not (var_86 = CInt(&H1F)) Then
  loc_156C02D:                           If Not (var_86 = CInt(&HC)) Then
  loc_156C038:                             If Not (var_86 = CInt(&H24)) Then
  loc_156C043:                               If Not (var_86 = CInt(&H23)) Then
  loc_156C04E:                                 If Not (var_86 = CInt(&H25)) Then
  loc_156C059:                                   If Not (var_86 = CInt(&H26)) Then
  loc_156C064:                                     If Not (var_86 = CInt(&H2B)) Then
  loc_156C06F:                                       If Not (var_86 = CInt(&H2C)) Then
  loc_156C07A:                                         If Not (var_86 = CInt(&H44)) Then
  loc_156C085:                                           If Not (var_86 = CInt(&H45)) Then
  loc_156C090:                                             If (var_86 = CInt(&H46)) Then
  loc_156C093:                                             End If
  loc_156C093:                                           End If
  loc_156C093:                                         End If
  loc_156C093:                                       End If
  loc_156C093:                                     End If
  loc_156C093:                                   End If
  loc_156C093:                                 End If
  loc_156C093:                               End If
  loc_156C093:                             End If
  loc_156C093:                           End If
  loc_156C093:                         End If
  loc_156C093:                       End If
  loc_156C093:                     End If
  loc_156C093:                   End If
  loc_156C093:                 End If
  loc_156C093:               End If
  loc_156C093:             End If
  loc_156C093:           End If
  loc_156C093:         End If
  loc_156C093:       End If
  loc_156C093:     End If
  loc_156C0AB:     Set var_9C = Nothing
  loc_156C0B6:     Set var_98 = Nothing
  loc_156C0E8:     Proc_6_69_134A630(Me.DGHelp, var_9C(var_98), KeyCode, global_52, Shift, 0)
  loc_156C158:     If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156C15F:       Set var_98 = Me.DGHelp
  loc_156C182:       Proc_6_138_106E830(var_98, global_52, KeyCode, var_98(1))
  loc_156C190:     End If
  loc_156C193:   Else
  loc_156C19B:     If Not (var_86 = CInt(&H17)) Then
  loc_156C1A6:       If (var_86 = CInt(&H1B)) Then
  loc_156C1A9:       End If
  loc_156C1CC:       Set var_98 = Nothing
  loc_156C1FE:       Proc_6_69_134A630(0(Nothing), (0), KeyCode, global_60, Shift)
  loc_156C26E:       If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156C275:         Set var_98 = 1(0)
  loc_156C27C:         Set var_90 = Nothing(var_98)
  loc_156C298:         Proc_6_138_106E830(var_98, global_60, KeyCode)
  loc_156C2A6:       End If
  loc_156C2A9:     Else
  loc_156C2B1:       If (var_86 = CInt(&H38)) Then
  loc_156C2CC:         Set var_9C = Nothing
  loc_156C2D7:         Set var_98 = Nothing
  loc_156C309:         Proc_6_69_134A630(Me.DGRevenue, 0(var_90), KeyCode, global_64, Shift)
  loc_156C379:         If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156C380:           Set var_98 = Me.DGRevenue
  loc_156C3A3:           Proc_6_138_106E830(var_98, global_64, KeyCode, 1(0))
  loc_156C3B1:         End If
  loc_156C3B4:       Else
  loc_156C3BC:         If (var_86 = CInt(&H11)) Then
  loc_156C3D7:           Set var_9C = Nothing
  loc_156C3E2:           Set var_98 = Nothing
  loc_156C414:           Proc_6_69_134A630(Me.DGGroup, var_9C(var_98), KeyCode, global_56, Shift, 0)
  loc_156C484:           If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156C48B:             Set var_98 = Me.DGGroup
  loc_156C4AE:             Proc_6_138_106E830(var_98, global_56, KeyCode, var_98(1))
  loc_156C4BC:           End If
  loc_156C4BF:         Else
  loc_156C4C7:           If (var_86 = CInt(&H49)) Then
  loc_156C4E2:             Set var_9C = Nothing
  loc_156C4ED:             Set var_98 = Nothing
  loc_156C51F:             Proc_6_69_134A630(Me.DGPurchaseGodown, 0(var_9C), KeyCode, global_80, Shift, 0)
  loc_156C58F:             If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156C596:               Set var_98 = Me.DGPurchaseGodown
  loc_156C5B9:               Proc_6_138_106E830(var_98, global_80, KeyCode, var_98(1))
  loc_156C5C7:             End If
  loc_156C5CA:           Else
  loc_156C5D2:             If (var_86 = CInt(&H5A)) Then
  loc_156C5ED:               Set var_9C = Nothing
  loc_156C5F8:               Set var_98 = Nothing
  loc_156C62A:               Proc_6_69_134A630(Me.DGTaxStru, 0(var_9C), KeyCode, global_72, Shift, 0)
  loc_156C69A:               If ((Me.Recordset15.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156C6A1:                 Set var_98 = Me.DGTaxStru
  loc_156C6C4:                 Proc_6_138_106E830(var_98, global_72, KeyCode, var_98(1))
  loc_156C6D2:               End If
  loc_156C6D5:             Else
  loc_156C6DC:               If Not (var_86 = 136) Then
  loc_156C6E6:                 If (var_86 = 137) Then
  loc_156C6E9:                 End If
  loc_156C6F4:                 Set var_A8 = 0(var_9C)
  loc_156C701:                 Set var_9C = Nothing
  loc_156C70C:                 Set var_98 = Nothing
  loc_156C73E:                 Proc_6_69_134A630(Me.DGTAX, var_A8, KeyCode, global_68, Shift, 0)
  loc_156C75E:                 var_AC = Me.Recordset15.RecordCount
  loc_156C7AE:                 If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_156C7B5:                   Set var_98 = Me.DGTAX
  loc_156C7BC:                   Set var_90 = var_98(1)
  loc_156C7D8:                   Proc_6_138_106E830(var_98, global_68, KeyCode, var_90)
  loc_156C7E6:                 End If
  loc_156C7E9:               Else
  loc_156C7F1:                 If Not (var_86 = CInt(&H7D)) Then
  loc_156C7FC:                   If Not (var_86 = CInt(&H7E)) Then
  loc_156C806:                     If (var_86 = 130) Then
  loc_156C809:                     End If
  loc_156C809:                   End If
  loc_156C82B:                   Set var_8C = var_90(KeyCode)
  loc_156C831:                   Call 0.Method_Txt_KeyDown0 (var_AC)
  loc_156C839:                    = var_90.Left
  loc_156C84B:                   Set var_98 = var_9C(KeyCode)
  loc_156C851:                   Call 0.Method_Txt_KeyDown0 (var_B0)
  loc_156C859:                    = var_9C.Top
  loc_156C86B:                   Set var_A4 = var_A8(KeyCode)
  loc_156C871:                   Call 0.Method_Txt_KeyDown0 (var_B4)
  loc_156C879:                    = var_A8.Height
  loc_156C88B:                   Set var_B8 = var_BC(KeyCode)
  loc_156C891:                   Call 0.Method_Txt_KeyDown0 (var_C0)
  loc_156C899:                    = var_BC.Width
  loc_156C8E1:                   Proc_6_65_1194DE4(0(var_9C), (0), (), KeyCode, Shift)
  loc_156C908:                 Else
  loc_156C910:                   If (var_86 = CInt(0)) Then
  loc_156C91E:                     Set var_D8 = CInt(var_C0)(CInt((var_B0 + var_B4)))
  loc_156C935:                     Set var_8C = var_90(KeyCode)
  loc_156C93B:                     Call 0.Method_Txt_KeyDown0 (var_AC)
  loc_156C943:                      = var_90.Left
  loc_156C955:                     Set var_98 = var_9C(KeyCode)
  loc_156C95B:                     Call 0.Method_Txt_KeyDown0 (var_B0)
  loc_156C963:                      = var_9C.Top
  loc_156C975:                     Set var_A4 = var_A8(KeyCode)
  loc_156C97B:                     Call 0.Method_Txt_KeyDown0 (var_B4)
  loc_156C983:                      = var_A8.Height
  loc_156C995:                     Set var_B8 = var_BC(KeyCode)
  loc_156C99B:                     Call 0.Method_Txt_KeyDown0 (var_C0)
  loc_156C9A3:                      = var_BC.Width
  loc_156C9EB:                     Proc_6_65_1194DE4(CInt(var_AC)(arg_14), (0), (780), KeyCode, Shift)
  loc_156CA1D:                     Set var_8C = var_90(CInt(0))
  loc_156CA23:                     Call 0.Method_Txt_KeyDown0 (var_E0, arg_14, CInt(var_AC))
  loc_156CA2B:                     CInt((var_B0 + var_B4)) = var_90.Text
  loc_156CA42:                     If (var_E0 = "Other") Then
  loc_156CA50:                       Set var_8C = var_90(CInt(1))
  loc_156CA56:                       Call 0.Method_Txt_KeyDown0 (CInt(var_C0))
  loc_156CA74:                       If (CBool(var_90.Visible) = 0) Then
  loc_156CA86:                         Set var_8C = var_90(CInt(1))
  loc_156CA8C:                         Call 0.Method_Txt_KeyDown0 (True)
  loc_156CA94:                         var_90.Visible = 520
  loc_156CAA0:                       End If
  loc_156CAA3:                     Else
  loc_156CAAE:                       Set var_8C = var_90(CInt(1))
  loc_156CAB4:                       Call 0.Method_Txt_KeyDown0 ()
  loc_156CAD2:                       If (CBool(var_90.Visible) = &HFF) Then
  loc_156CAE5:                         Set var_8C = var_90(CInt(1))
  loc_156CAEB:                         Call 0.Method_Txt_KeyDown0 (False)
  loc_156CAF3:                         var_90.Visible = 
  loc_156CAFF:                       End If
  loc_156CAFF:                     End If
  loc_156CB02:                   Else
  loc_156CB0A:                     If Not (var_86 = CInt(&H10)) Then
  loc_156CB15:                       If Not (var_86 = CInt(&H1C)) Then
  loc_156CB20:                         If Not (var_86 = CInt(&HD)) Then
  loc_156CB2B:                           If Not (var_86 = CInt(&HE)) Then
  loc_156CB36:                             If Not (var_86 = CInt(&HF)) Then
  loc_156CB41:                               If Not (var_86 = CInt(&H27)) Then
  loc_156CB4C:                                 If Not (var_86 = CInt(&H2D)) Then
  loc_156CB57:                                   If Not (var_86 = CInt(&H2E)) Then
  loc_156CB62:                                     If Not (var_86 = CInt(&H34)) Then
  loc_156CB6D:                                       If Not (var_86 = CInt(&H39)) Then
  loc_156CB78:                                         If Not (var_86 = CInt(&H3B)) Then
  loc_156CB82:                                           If Not (var_86 = 138) Then
  loc_156CB8D:                                             If Not (var_86 = CInt(&H4B)) Then
  loc_156CB98:                                               If Not (var_86 = CInt(&H77)) Then
  loc_156CBA3:                                                 If Not (var_86 = CInt(&H78)) Then
  loc_156CBAE:                                                   If Not (var_86 = CInt(&H79)) Then
  loc_156CBB9:                                                     If Not (var_86 = CInt(&H58)) Then
  loc_156CBC4:                                                       If (var_86 = CInt(&H7C)) Then
  loc_156CBC7:                                                       End If
  loc_156CBC7:                                                     End If
  loc_156CBC7:                                                   End If
  loc_156CBC7:                                                 End If
  loc_156CBC7:                                               End If
  loc_156CBC7:                                             End If
  loc_156CBC7:                                           End If
  loc_156CBC7:                                         End If
  loc_156CBC7:                                       End If
  loc_156CBC7:                                     End If
  loc_156CBC7:                                   End If
  loc_156CBC7:                                 End If
  loc_156CBC7:                               End If
  loc_156CBC7:                             End If
  loc_156CBC7:                           End If
  loc_156CBC7:                         End If
  loc_156CBC7:                       End If
  loc_156CBE9:                       Set var_8C = var_90(KeyCode)
  loc_156CBEF:                       Call 0.Method_Txt_KeyDown0 (var_AC)
  loc_156CBF7:                        = var_90.Left
  loc_156CC09:                       Set var_98 = var_9C(KeyCode)
  loc_156CC0F:                       Call 0.Method_Txt_KeyDown0 (var_B0)
  loc_156CC17:                        = var_9C.Top
  loc_156CC29:                       Set var_A4 = var_A8(KeyCode)
  loc_156CC2F:                       Call 0.Method_Txt_KeyDown0 (var_B4)
  loc_156CC37:                        = var_A8.Height
  loc_156CC49:                       Set var_B8 = var_BC(KeyCode)
  loc_156CC4F:                       Call 0.Method_Txt_KeyDown0 (var_C0)
  loc_156CC57:                        = var_BC.Width
  loc_156CC9F:                       Proc_6_65_1194DE4((), (), (), KeyCode, Shift)
  loc_156CCC6:                     Else
  loc_156CCCE:                       If (var_86 = CInt(&H29)) Then
  loc_156CCDC:                         Set var_D8 = CInt(var_C0)(CInt((var_B0 + var_B4)))
  loc_156CCF3:                         Set var_8C = var_90(KeyCode)
  loc_156CCF9:                         Call 0.Method_Txt_KeyDown0 (var_AC)
  loc_156CD01:                          = var_90.Left
  loc_156CD13:                         Set var_98 = var_9C(KeyCode)
  loc_156CD19:                         Call 0.Method_Txt_KeyDown0 (var_B0)
  loc_156CD21:                          = var_9C.Top
  loc_156CD33:                         Set var_A4 = var_A8(KeyCode)
  loc_156CD39:                         Call 0.Method_Txt_KeyDown0 (var_B4)
  loc_156CD41:                          = var_A8.Height
  loc_156CD53:                         Set var_B8 = var_BC(KeyCode)
  loc_156CD59:                         Call 0.Method_Txt_KeyDown0 (var_C0)
  loc_156CD61:                          = var_BC.Width
  loc_156CDA9:                         Proc_6_65_1194DE4(CInt(var_AC)(arg_14), (), (520), KeyCode, Shift)
  loc_156CDCD:                       End If
  loc_156CDCD:                     End If
  loc_156CDCD:                   End If
  loc_156CDCD:                 End If
  loc_156CDCD:               End If
  loc_156CDCD:             End If
  loc_156CDCD:           End If
  loc_156CDCD:         End If
  loc_156CDCD:       End If
  loc_156CDCD:     End If
  loc_156CDCD:   End If
  loc_156CDCD: End If
  loc_156CE46: Set var_A8 = ((((CInt(var_AC) And (CBool(arg_14((CBool(Me.DGRevenue.Visible) = 0)).Visible) = 0)) And (CBool(Me.DGTAX.Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) And (CBool(Me.DGHelp.Visible) = 0))(var_92)
  loc_156CE4C: CInt((var_B0 + var_B4)) = var_A8.Visible
  loc_156CEE0: If (((((CInt(var_C0) And (var_92 = 0)) And (CBool(Me.DGGroup.Visible) = 0)) And (CBool(Me.DGDepart.Visible) = 0)) And (CBool(Me.DGPurchaseGodown.Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) Then
  loc_156CEF8:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_156CF01:     Proc_6_75_E5335C(Shift, arg_14)
  loc_156CF06:   End If
  loc_156CF10:   If (CLng(Shift) = &H26) Then
  loc_156CF19:     Proc_6_76_E533C8(Shift, arg_14)
  loc_156CF1E:   End If
  loc_156CF1E: End If
  loc_156CF1E: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '148D0A8
  'Data Table: 554C84
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_A8 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As String
  loc_148C437: Proc_6_58_E06050(arg_10)
  loc_148C43F: var_86 = KeyAscii
  loc_148C44B: If (var_86 = CInt(139)) Then
  loc_148C46A:   If (CBool(Me.DGPurchItem.Visible) = &HFF) Then
  loc_148C47C:     var_A0 = "Name"
  loc_148C49B:     Proc_6_89_1470B00((var_86), KeyAscii, global_84)
  loc_148C4AA:   End If
  loc_148C4AD: Else
  loc_148C4B5:   If Not (var_86 = CInt(&H37)) Then
  loc_148C4C0:     If Not (var_86 = CInt(4)) Then
  loc_148C4CB:       If Not (var_86 = CInt(3)) Then
  loc_148C4D6:         If Not (var_86 = CInt(2)) Then
  loc_148C4E1:           If Not (var_86 = CInt(&HB)) Then
  loc_148C4EC:             If Not (var_86 = CInt(1)) Then
  loc_148C4F7:               If Not (var_86 = CInt(&H22)) Then
  loc_148C502:                 If Not (var_86 = CInt(&H21)) Then
  loc_148C50D:                   If Not (var_86 = CInt(&H18)) Then
  loc_148C518:                     If Not (var_86 = CInt(&H19)) Then
  loc_148C523:                       If Not (var_86 = CInt(&H1A)) Then
  loc_148C52E:                         If Not (var_86 = CInt(&H1F)) Then
  loc_148C539:                           If Not (var_86 = CInt(&HC)) Then
  loc_148C544:                             If Not (var_86 = CInt(&H23)) Then
  loc_148C54F:                               If Not (var_86 = CInt(&H24)) Then
  loc_148C55A:                                 If Not (var_86 = CInt(&H25)) Then
  loc_148C565:                                   If Not (var_86 = CInt(&H26)) Then
  loc_148C570:                                     If Not (var_86 = CInt(&H2B)) Then
  loc_148C57B:                                       If Not (var_86 = CInt(&H2C)) Then
  loc_148C586:                                         If Not (var_86 = CInt(&H44)) Then
  loc_148C591:                                           If Not (var_86 = CInt(&H45)) Then
  loc_148C59C:                                             If (var_86 = CInt(&H46)) Then
  loc_148C59F:                                             End If
  loc_148C59F:                                           End If
  loc_148C59F:                                         End If
  loc_148C59F:                                       End If
  loc_148C59F:                                     End If
  loc_148C59F:                                   End If
  loc_148C59F:                                 End If
  loc_148C59F:                               End If
  loc_148C59F:                             End If
  loc_148C59F:                           End If
  loc_148C59F:                         End If
  loc_148C59F:                       End If
  loc_148C59F:                     End If
  loc_148C59F:                   End If
  loc_148C59F:                 End If
  loc_148C59F:               End If
  loc_148C59F:             End If
  loc_148C59F:           End If
  loc_148C59F:         End If
  loc_148C59F:       End If
  loc_148C59F:     End If
  loc_148C5BB:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_148C5CD:       var_A0 = "Name"
  loc_148C5EC:       Proc_6_89_1470B00(var_A0(arg_10), KeyAscii, global_52, arg_10)
  loc_148C5FB:     End If
  loc_148C5FE:   Else
  loc_148C606:     If Not (var_86 = CInt(&H17)) Then
  loc_148C611:       If (var_86 = CInt(&H1B)) Then
  loc_148C614:       End If
  loc_148C630:       If (CBool(0(var_A0).Visible) = &HFF) Then
  loc_148C642:         var_A0 = "Name"
  loc_148C661:         Proc_6_89_1470B00((0), KeyAscii, global_60)
  loc_148C670:       End If
  loc_148C673:     Else
  loc_148C67B:       If (var_86 = CInt(&H38)) Then
  loc_148C69A:         If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_148C6AC:           var_A0 = "Name"
  loc_148C6CB:           Proc_6_89_1470B00(var_A0(arg_10), KeyAscii, global_64, arg_10)
  loc_148C6DA:         End If
  loc_148C6DD:       Else
  loc_148C6E5:         If (var_86 = CInt(&H11)) Then
  loc_148C704:           If (CBool(Me.DGGroup.Visible) = &HFF) Then
  loc_148C716:             var_A0 = "Name"
  loc_148C735:             Proc_6_89_1470B00(0(var_A0), KeyAscii, global_56, arg_10)
  loc_148C744:           End If
  loc_148C747:         Else
  loc_148C74F:           If (var_86 = CInt(&H49)) Then
  loc_148C76E:             If (CBool(Me.DGPurchaseGodown.Visible) = &HFF) Then
  loc_148C780:               var_A0 = "Name"
  loc_148C79F:               Proc_6_89_1470B00(0(var_A0), KeyAscii, global_80, arg_10)
  loc_148C7AE:             End If
  loc_148C7B1:           Else
  loc_148C7B9:             If (var_86 = CInt(&H5A)) Then
  loc_148C7D8:               If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_148C7EA:                 var_A0 = "Name"
  loc_148C809:                 Proc_6_89_1470B00(0(var_A0), KeyAscii, global_72, arg_10)
  loc_148C818:               End If
  loc_148C81B:             Else
  loc_148C822:               If Not (var_86 = 136) Then
  loc_148C82C:                 If (var_86 = 137) Then
  loc_148C82F:                 End If
  loc_148C84B:                 If (CBool(Me.DGTAX.Visible) = &HFF) Then
  loc_148C852:                   Set var_A8 = 0(var_A0)
  loc_148C85D:                   var_A0 = "Name"
  loc_148C87C:                   Proc_6_89_1470B00(var_A8, KeyAscii, global_68, arg_10)
  loc_148C88B:                 End If
  loc_148C88E:               Else
  loc_148C896:                 If Not (var_86 = CInt(7)) Then
  loc_148C8A1:                   If (var_86 = CInt(5)) Then
  loc_148C8A4:                   End If
  loc_148C8AE:                   Set var_8C = var_A8(KeyAscii)
  loc_148C8B4:                   Call 0.Method_Txt_KeyPress0 (var_A0, 0)
  loc_148C8CF:                   Proc_6_42_129B55C(var_A8, arg_10, 8)
  loc_148C8DE:                 Else
  loc_148C8E6:                   If Not (var_86 = CInt(8)) Then
  loc_148C8F1:                     If Not (var_86 = CInt(9)) Then
  loc_148C8FC:                       If Not (var_86 = CInt(6)) Then
  loc_148C907:                         If (var_86 = CInt(&H4C)) Then
  loc_148C90A:                         End If
  loc_148C90A:                       End If
  loc_148C90A:                     End If
  loc_148C914:                     Set var_8C = var_A8(KeyAscii)
  loc_148C91A:                     Call 0.Method_Txt_KeyPress0 (2)
  loc_148C935:                     Proc_6_42_129B55C(var_A8, arg_10, 3)
  loc_148C944:                   Else
  loc_148C94C:                     If Not (var_86 = CInt(&H51)) Then
  loc_148C957:                       If Not (var_86 = CInt(&H53)) Then
  loc_148C962:                         If Not (var_86 = CInt(&H54)) Then
  loc_148C96D:                           If (var_86 = CInt(&H52)) Then
  loc_148C970:                           End If
  loc_148C970:                         End If
  loc_148C970:                       End If
  loc_148C97A:                       Set var_8C = var_A8(KeyAscii)
  loc_148C980:                       Call 0.Method_Txt_KeyPress0 (2)
  loc_148C99B:                       Proc_6_42_129B55C(var_A8, arg_10, 2)
  loc_148C9AA:                     Else
  loc_148C9B2:                       If Not (var_86 = CInt(&H28)) Then
  loc_148C9BD:                         If Not (var_86 = CInt(&H2F)) Then
  loc_148C9C8:                           If Not (var_86 = CInt(&H30)) Then
  loc_148C9D3:                             If Not (var_86 = CInt(&H48)) Then
  loc_148C9DE:                               If Not (var_86 = CInt(&H7A)) Then
  loc_148C9E8:                                 If Not (var_86 = 129) Then
  loc_148C9F4:                                   If Not (var_86 = CInt(128)) Then
  loc_148C9FE:                                     If Not (var_86 = 140) Then
  loc_148CA08:                                       If Not (var_86 = 141) Then
  loc_148CA14:                                         If Not (var_86 = CInt(142)) Then
  loc_148CA20:                                           If Not (var_86 = CInt(143)) Then
  loc_148CA2C:                                             If Not (var_86 = CInt(144)) Then
  loc_148CA36:                                               If Not (var_86 = 145) Then
  loc_148CA40:                                                 If Not (var_86 = 146) Then
  loc_148CA4C:                                                   If Not (var_86 = CInt(147)) Then
  loc_148CA58:                                                     If Not (var_86 = CInt(148)) Then
  loc_148CA62:                                                       If Not (var_86 = 149) Then
  loc_148CA6C:                                                         If Not (var_86 = 150) Then
  loc_148CA76:                                                           If (var_86 = 151) Then
  loc_148CA79:                                                           End If
  loc_148CA79:                                                         End If
  loc_148CA79:                                                       End If
  loc_148CA79:                                                     End If
  loc_148CA79:                                                   End If
  loc_148CA79:                                                 End If
  loc_148CA79:                                               End If
  loc_148CA79:                                             End If
  loc_148CA79:                                           End If
  loc_148CA79:                                         End If
  loc_148CA79:                                       End If
  loc_148CA79:                                     End If
  loc_148CA79:                                   End If
  loc_148CA79:                                 End If
  loc_148CA79:                               End If
  loc_148CA79:                             End If
  loc_148CA79:                           End If
  loc_148CA79:                         End If
  loc_148CAA2:                         If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_148CAB2:                           Set var_8C = var_A8(KeyAscii)
  loc_148CAB8:                           Call 0.Method_Txt_KeyPress0 ("Yes", 0)
  loc_148CAC0:                           var_A8.Text = 0
  loc_148CACF:                         Else
  loc_148CAF8:                           If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_148CB08:                             Set var_8C = var_A8(KeyAscii)
  loc_148CB0E:                             Call 0.Method_Txt_KeyPress0 ("No")
  loc_148CB16:                             var_A8.Text = 
  loc_148CB22:                           End If
  loc_148CB22:                         End If
  loc_148CB24:                         arg_10 = 0
  loc_148CB2A:                       Else
  loc_148CB32:                         If Not (var_86 = CInt(&H56)) Then
  loc_148CB3D:                           If Not (var_86 = CInt(&H57)) Then
  loc_148CB48:                             If Not (var_86 = CInt(&H59)) Then
  loc_148CB53:                               If Not (var_86 = CInt(&H75)) Then
  loc_148CB5E:                                 If Not (var_86 = CInt(&H76)) Then
  loc_148CB69:                                   If Not (var_86 = CInt(&H7B)) Then
  loc_148CB74:                                     If Not (var_86 = CInt(&H7F)) Then
  loc_148CB80:                                       If Not (var_86 = CInt(132)) Then
  loc_148CB8B:                                         If (var_86 = CInt(&H5B)) Then
  loc_148CB8E:                                         End If
  loc_148CB8E:                                       End If
  loc_148CB8E:                                     End If
  loc_148CB8E:                                   End If
  loc_148CB8E:                                 End If
  loc_148CB8E:                               End If
  loc_148CB8E:                             End If
  loc_148CB8E:                           End If
  loc_148CBB7:                           If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_148CBC7:                             Set var_8C = var_A8(KeyAscii)
  loc_148CBCD:                             Call 0.Method_Txt_KeyPress0 ("Yes")
  loc_148CBD5:                             var_A8.Text = arg_10
  loc_148CBE4:                           Else
  loc_148CC0D:                             If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_148CC1D:                               Set var_8C = var_A8(KeyAscii)
  loc_148CC23:                               Call 0.Method_Txt_KeyPress0 ("No")
  loc_148CC2B:                               var_A8.Text = 
  loc_148CC37:                             End If
  loc_148CC37:                           End If
  loc_148CC39:                           arg_10 = 0
  loc_148CC3F:                         Else
  loc_148CC47:                           If (var_86 = CInt(&H3D)) Then
  loc_148CC57:                             If ((arg_10 >= &H30) And (arg_10 <= &H39)) Then
  loc_148CC77:                               Set var_8C = var_A8(KeyAscii)
  loc_148CC7D:                               Call 0.Method_Txt_KeyPress0 (CStr(Chr(CLng(arg_10))))
  loc_148CC85:                               var_A8.Text = arg_10
  loc_148CC9A:                             Else
  loc_148CC9C:                               arg_10 = 0
  loc_148CC9F:                             End If
  loc_148CCA2:                           Else
  loc_148CCAA:                             If Not (var_86 = CInt(&H3F)) Then
  loc_148CCB5:                               If (var_86 = CInt(&H47)) Then
  loc_148CCB8:                               End If
  loc_148CCE1:                               If (Ucase(Chr(CLng(arg_10))) = "W") Then
  loc_148CCF1:                                 Set var_8C = var_A8(KeyAscii)
  loc_148CCF7:                                 Call 0.Method_Txt_KeyPress0 ("W")
  loc_148CCFF:                                 var_A8.Text = arg_10
  loc_148CD0E:                               Else
  loc_148CD37:                                 If (Ucase(Chr(CLng(arg_10))) = "D") Then
  loc_148CD47:                                   Set var_8C = var_A8(KeyAscii)
  loc_148CD4D:                                   Call 0.Method_Txt_KeyPress0 ("D")
  loc_148CD55:                                   var_A8.Text = 
  loc_148CD61:                                 End If
  loc_148CD61:                               End If
  loc_148CD63:                               arg_10 = 0
  loc_148CD69:                             Else
  loc_148CD71:                               If Not (var_86 = CInt(&H2A)) Then
  loc_148CD7C:                                 If Not (var_86 = CInt(&H32)) Then
  loc_148CD87:                                   If Not (var_86 = CInt(&H3A)) Then
  loc_148CD92:                                     If Not (var_86 = CInt(&H3C)) Then
  loc_148CD9D:                                       If Not (var_86 = CInt(&H3E)) Then
  loc_148CDA9:                                         If Not (var_86 = CInt(131)) Then
  loc_148CDB4:                                           If Not (var_86 = CInt(&H40)) Then
  loc_148CDBF:                                             If Not (var_86 = CInt(&H5C)) Then
  loc_148CDCA:                                               If Not (var_86 = CInt(&H41)) Then
  loc_148CDD5:                                                 If Not (var_86 = CInt(&H4A)) Then
  loc_148CDE0:                                                   If Not (var_86 = CInt(&H55)) Then
  loc_148CDEA:                                                     If Not (var_86 = 134) Then
  loc_148CDF4:                                                       If (var_86 = 135) Then
  loc_148CDF7:                                                       End If
  loc_148CDF7:                                                     End If
  loc_148CDF7:                                                   End If
  loc_148CDF7:                                                 End If
  loc_148CDF7:                                               End If
  loc_148CDF7:                                             End If
  loc_148CDF7:                                           End If
  loc_148CDF7:                                         End If
  loc_148CDF7:                                       End If
  loc_148CDF7:                                     End If
  loc_148CDF7:                                   End If
  loc_148CDF7:                                 End If
  loc_148CE20:                                 If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_148CE30:                                   Set var_8C = var_A8(KeyAscii)
  loc_148CE36:                                   Call 0.Method_Txt_KeyPress0 ("Yes")
  loc_148CE3E:                                   var_A8.Text = arg_10
  loc_148CE4D:                                 Else
  loc_148CE76:                                   If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_148CE86:                                     Set var_8C = var_A8(KeyAscii)
  loc_148CE8C:                                     Call 0.Method_Txt_KeyPress0 ("No")
  loc_148CE94:                                     var_A8.Text = 
  loc_148CEA0:                                   End If
  loc_148CEA0:                                 End If
  loc_148CEA2:                                 arg_10 = 0
  loc_148CEA8:                               Else
  loc_148CEB0:                                 If (var_86 = CInt(&H31)) Then
  loc_148CEDC:                                   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_148CEEC:                                     Set var_8C = var_A8(KeyAscii)
  loc_148CEF2:                                     Call 0.Method_Txt_KeyPress0 ("Yes")
  loc_148CEFA:                                     var_A8.Text = arg_10
  loc_148CF09:                                   Else
  loc_148CF32:                                     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_148CF42:                                       Set var_8C = var_A8(KeyAscii)
  loc_148CF48:                                       Call 0.Method_Txt_KeyPress0 ("No")
  loc_148CF50:                                       var_A8.Text = 
  loc_148CF5C:                                     End If
  loc_148CF5C:                                   End If
  loc_148CF67:                                   Set var_8C = var_A8(CInt(&H31))
  loc_148CF6D:                                   Call 0.Method_Txt_KeyPress0 ()
  loc_148CFB8:                                   (CBool(IIf((Left(CVar(var_A8), 1) = "Y"), True, False))).Visible = 
  loc_148CFD5:                                   arg_10 = 0
  loc_148CFDB:                                 Else
  loc_148CFE3:                                   If Not (var_86 = CInt(&H10)) Then
  loc_148CFEE:                                     If Not (var_86 = CInt(&H1C)) Then
  loc_148CFF9:                                       If Not (var_86 = CInt(&HD)) Then
  loc_148D004:                                         If Not (var_86 = CInt(&HE)) Then
  loc_148D00F:                                           If Not (var_86 = CInt(&HF)) Then
  loc_148D01A:                                             If Not (var_86 = CInt(&H27)) Then
  loc_148D025:                                               If Not (var_86 = CInt(&H29)) Then
  loc_148D030:                                                 If Not (var_86 = CInt(&H2D)) Then
  loc_148D03B:                                                   If Not (var_86 = CInt(&H2E)) Then
  loc_148D046:                                                     If Not (var_86 = CInt(&H34)) Then
  loc_148D051:                                                       If Not (var_86 = CInt(&H39)) Then
  loc_148D05C:                                                         If Not (var_86 = CInt(&H4B)) Then
  loc_148D067:                                                           If Not (var_86 = CInt(&H77)) Then
  loc_148D072:                                                             If Not (var_86 = CInt(&H78)) Then
  loc_148D07D:                                                               If Not (var_86 = CInt(&H79)) Then
  loc_148D088:                                                                 If Not (var_86 = CInt(&H58)) Then
  loc_148D093:                                                                   If Not (var_86 = CInt(&H7C)) Then
  loc_148D09D:                                                                     If (var_86 = 130) Then
  loc_148D0A0:                                                                     End If
  loc_148D0A0:                                                                   End If
  loc_148D0A0:                                                                 End If
  loc_148D0A0:                                                               End If
  loc_148D0A0:                                                             End If
  loc_148D0A0:                                                           End If
  loc_148D0A0:                                                         End If
  loc_148D0A0:                                                       End If
  loc_148D0A0:                                                     End If
  loc_148D0A0:                                                   End If
  loc_148D0A0:                                                 End If
  loc_148D0A0:                                               End If
  loc_148D0A0:                                             End If
  loc_148D0A0:                                           End If
  loc_148D0A0:                                         End If
  loc_148D0A0:                                       End If
  loc_148D0A0:                                     End If
  loc_148D0A2:                                     arg_10 = 0
  loc_148D0A5:                                   End If
  loc_148D0A5:                                 End If
  loc_148D0A5:                               End If
  loc_148D0A5:                             End If
  loc_148D0A5:                           End If
  loc_148D0A5:                         End If
  loc_148D0A5:                       End If
  loc_148D0A5:                     End If
  loc_148D0A5:                   End If
  loc_148D0A5:                 End If
  loc_148D0A5:               End If
  loc_148D0A5:             End If
  loc_148D0A5:           End If
  loc_148D0A5:         End If
  loc_148D0A5:       End If
  loc_148D0A5:     End If
  loc_148D0A5:   End If
  loc_148D0A5: End If
  loc_148D0A5: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1350AAC
  'Data Table: 554C84
  Dim var_86 As Integer
  loc_1350293: var_86 = KeyCode
  loc_135029F: If (var_86 = CInt(139)) Then
  loc_13502BE:   If (CBool(Me.DGPurchItem.Visible) = &HFF) Then
  loc_13502D2:     var_A4 = "Name"
  loc_13502FA:     Proc_6_68_12A2818(Me.DGPurchItem, (var_86), KeyCode)
  loc_1350318:     Set var_A0 = Shift(global_84)
  loc_1350334:     Proc_6_138_106E830(Me.DGPurchItem, global_84, KeyCode)
  loc_1350342:   End If
  loc_1350345: Else
  loc_135034D:   If Not (var_86 = CInt(&H37)) Then
  loc_1350358:     If Not (var_86 = CInt(4)) Then
  loc_1350363:       If Not (var_86 = CInt(3)) Then
  loc_135036E:         If Not (var_86 = CInt(2)) Then
  loc_1350379:           If Not (var_86 = CInt(&HB)) Then
  loc_1350384:             If Not (var_86 = CInt(1)) Then
  loc_135038F:               If Not (var_86 = CInt(&H22)) Then
  loc_135039A:                 If Not (var_86 = CInt(&H21)) Then
  loc_13503A5:                   If Not (var_86 = CInt(&H18)) Then
  loc_13503B0:                     If Not (var_86 = CInt(&H19)) Then
  loc_13503BB:                       If Not (var_86 = CInt(&H1A)) Then
  loc_13503C6:                         If Not (var_86 = CInt(&H1F)) Then
  loc_13503D1:                           If Not (var_86 = CInt(&HC)) Then
  loc_13503DC:                             If Not (var_86 = CInt(&H23)) Then
  loc_13503E7:                               If Not (var_86 = CInt(&H24)) Then
  loc_13503F2:                                 If Not (var_86 = CInt(&H25)) Then
  loc_13503FD:                                   If Not (var_86 = CInt(&H26)) Then
  loc_1350408:                                     If Not (var_86 = CInt(&H2B)) Then
  loc_1350413:                                       If Not (var_86 = CInt(&H2C)) Then
  loc_135041E:                                         If Not (var_86 = CInt(&H44)) Then
  loc_1350429:                                           If Not (var_86 = CInt(&H45)) Then
  loc_1350434:                                             If (var_86 = CInt(&H46)) Then
  loc_1350437:                                             End If
  loc_1350437:                                           End If
  loc_1350437:                                         End If
  loc_1350437:                                       End If
  loc_1350437:                                     End If
  loc_1350437:                                   End If
  loc_1350437:                                 End If
  loc_1350437:                               End If
  loc_1350437:                             End If
  loc_1350437:                           End If
  loc_1350437:                         End If
  loc_1350437:                       End If
  loc_1350437:                     End If
  loc_1350437:                   End If
  loc_1350437:                 End If
  loc_1350437:               End If
  loc_1350437:             End If
  loc_1350437:           End If
  loc_1350437:         End If
  loc_1350437:       End If
  loc_1350437:     End If
  loc_1350453:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_1350467:       var_A4 = "Name"
  loc_135048F:       Proc_6_68_12A2818(Me.DGHelp, var_A4(var_A0), KeyCode)
  loc_13504AD:       Set var_A0 = Shift(global_52)
  loc_13504C9:       Proc_6_138_106E830(Me.DGHelp, global_52, KeyCode)
  loc_13504D7:     End If
  loc_13504DA:   Else
  loc_13504E2:     If Not (var_86 = CInt(&H17)) Then
  loc_13504ED:       If (var_86 = CInt(&H1B)) Then
  loc_13504F0:       End If
  loc_135050C:       If (CBool(var_A4(var_A0).Visible) = &HFF) Then
  loc_1350548:         Proc_6_68_12A2818((), (), KeyCode)
  loc_1350566:         Set var_A0 = ("Name")
  loc_1350582:         Proc_6_138_106E830(Shift(global_60), global_60)
  loc_1350590:       End If
  loc_1350593:     Else
  loc_135059B:       If (var_86 = CInt(&H38)) Then
  loc_13505BA:         If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_13505CE:           var_A4 = "Name"
  loc_13505F6:           Proc_6_68_12A2818(Me.DGRevenue, var_A0(KeyCode), KeyCode)
  loc_1350614:           Set var_A0 = Shift(global_64)
  loc_1350630:           Proc_6_138_106E830(Me.DGRevenue, global_64, KeyCode)
  loc_135063E:         End If
  loc_1350641:       Else
  loc_1350649:         If (var_86 = CInt(&H11)) Then
  loc_1350668:           If (CBool(Me.DGGroup.Visible) = &HFF) Then
  loc_135067C:             var_A4 = "Name"
  loc_13506A4:             Proc_6_68_12A2818(Me.DGGroup, var_A4(var_A0), KeyCode)
  loc_13506C2:             Set var_A0 = Shift(global_56)
  loc_13506DE:             Proc_6_138_106E830(Me.DGGroup, global_56, KeyCode)
  loc_13506EC:           End If
  loc_13506EF:         Else
  loc_13506F7:           If (var_86 = CInt(&H49)) Then
  loc_1350716:             If (CBool(Me.DGPurchaseGodown.Visible) = &HFF) Then
  loc_135072A:               var_A4 = "Name"
  loc_1350752:               Proc_6_68_12A2818(Me.DGPurchaseGodown, var_A4(var_A0), KeyCode)
  loc_1350770:               Set var_A0 = Shift(global_80)
  loc_135078C:               Proc_6_138_106E830(Me.DGPurchaseGodown, global_80, KeyCode)
  loc_135079A:             End If
  loc_135079D:           Else
  loc_13507A5:             If (var_86 = CInt(&H5A)) Then
  loc_13507C4:               If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_13507D8:                 var_A4 = "Name"
  loc_1350800:                 Proc_6_68_12A2818(Me.DGTaxStru, var_A4(var_A0), KeyCode)
  loc_135081E:                 Set var_A0 = Shift(global_72)
  loc_135083A:                 Proc_6_138_106E830(Me.DGTaxStru, global_72, KeyCode)
  loc_1350848:               End If
  loc_135084B:             Else
  loc_1350852:               If Not (var_86 = 136) Then
  loc_135085C:                 If (var_86 = 137) Then
  loc_135085F:                 End If
  loc_135087B:                 If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_135088F:                   var_A4 = "Name"
  loc_13508B7:                   Proc_6_68_12A2818(Me.DGTAX, var_A4(var_A0), KeyCode)
  loc_13508D5:                   Set var_A0 = Shift(global_68)
  loc_13508F1:                   Proc_6_138_106E830(Me.DGTAX, global_68, KeyCode)
  loc_13508FF:                 End If
  loc_1350902:               Else
  loc_135090A:                 If Not (var_86 = CInt(0)) Then
  loc_1350915:                   If Not (var_86 = CInt(&H7D)) Then
  loc_1350920:                     If Not (var_86 = CInt(&H7E)) Then
  loc_135092A:                       If (var_86 = 130) Then
  loc_135092D:                       End If
  loc_135092D:                     End If
  loc_135092D:                   End If
  loc_135093A:                   var_A4 = var_A0(var_AE).Visible
  loc_1350948:                   If (var_AE = &HFF) Then
  loc_1350977:                     Proc_6_64_F299E8((), (), KeyCode)
  loc_1350987:                   End If
  loc_135098A:                 Else
  loc_1350992:                   If Not (var_86 = CInt(&H10)) Then
  loc_135099D:                     If Not (var_86 = CInt(&H1C)) Then
  loc_13509A8:                       If Not (var_86 = CInt(&HD)) Then
  loc_13509B3:                         If Not (var_86 = CInt(&HE)) Then
  loc_13509BE:                           If Not (var_86 = CInt(&H27)) Then
  loc_13509C9:                             If Not (var_86 = CInt(&H29)) Then
  loc_13509D4:                               If Not (var_86 = CInt(&H2D)) Then
  loc_13509DF:                                 If Not (var_86 = CInt(&H2E)) Then
  loc_13509EA:                                   If Not (var_86 = CInt(&H34)) Then
  loc_13509F5:                                     If Not (var_86 = CInt(&H39)) Then
  loc_1350A00:                                       If Not (var_86 = CInt(&H3B)) Then
  loc_1350A0A:                                         If Not (var_86 = 138) Then
  loc_1350A15:                                           If Not (var_86 = CInt(&H4B)) Then
  loc_1350A20:                                             If Not (var_86 = CInt(&H77)) Then
  loc_1350A2B:                                               If Not (var_86 = CInt(&H78)) Then
  loc_1350A36:                                                 If Not (var_86 = CInt(&H79)) Then
  loc_1350A41:                                                   If Not (var_86 = CInt(&H58)) Then
  loc_1350A4C:                                                     If (var_86 = CInt(&H7C)) Then
  loc_1350A4F:                                                     End If
  loc_1350A4F:                                                   End If
  loc_1350A4F:                                                 End If
  loc_1350A4F:                                               End If
  loc_1350A4F:                                             End If
  loc_1350A4F:                                           End If
  loc_1350A4F:                                         End If
  loc_1350A4F:                                       End If
  loc_1350A4F:                                     End If
  loc_1350A4F:                                   End If
  loc_1350A4F:                                 End If
  loc_1350A4F:                               End If
  loc_1350A4F:                             End If
  loc_1350A4F:                           End If
  loc_1350A4F:                         End If
  loc_1350A4F:                       End If
  loc_1350A4F:                     End If
  loc_1350A5C:                     global_112 = Shift(var_AE).Visible
  loc_1350A6A:                     If (var_AE = &HFF) Then
  loc_1350A99:                       Proc_6_64_F299E8((), (), KeyCode)
  loc_1350AA9:                     End If
  loc_1350AA9:                   End If
  loc_1350AA9:                 End If
  loc_1350AA9:               End If
  loc_1350AA9:             End If
  loc_1350AA9:           End If
  loc_1350AA9:         End If
  loc_1350AA9:       End If
  loc_1350AA9:     End If
  loc_1350AA9:   End If
  loc_1350AA9: End If
  loc_1350AA9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4ADCC
  'Data Table: 554C84
  loc_E4ADAA: Set var_88 = var_8C(Index)
  loc_E4ADB0: Call 0.Method_Txt_LostFocus0 ()
  loc_E4ADBE: Proc_6_73_E23294(var_8C)
  loc_E4ADCA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '155F1D4
  'Data Table: 554C84
  Dim var_86 As Integer
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_155E160: On Error Resume Next
  loc_155E165: Call Proc_56_54_FB6794()
  loc_155E17D: If (Cancel = CInt(139)) Then
  loc_155E1D9:   Set var_94 = var_98(Cancel)
  loc_155E1DF:   Call 0.Method_Txt_Validate0 (var_9C, ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_155E1E7:   var_86 = var_98.Text
  loc_155E1FF:   If ( Or (var_9C = vbNullString)) Then
  loc_155E204:     Exit Sub
  loc_155E205:   End If
  loc_155E245:   Set var_B0 = var_B4(Cancel)
  loc_155E24B:   Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155E253:   var_B4.Text = 
  loc_155E28B:   var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155E29C:   var_9C = CStr(var_98.Value)
  loc_155E2A9:   Set var_B0 = var_B4(Cancel)
  loc_155E2AF:   Call 0.Method_Txt_Validate0 (var_9C)
  loc_155E2B7:   var_B4.Tag = 
  loc_155E2D0: Else
  loc_155E2DA:   If Not (var_86 = CInt(&H37)) Then
  loc_155E2E5:     If Not (var_86 = CInt(4)) Then
  loc_155E2F0:       If Not (var_86 = CInt(3)) Then
  loc_155E2FB:         If Not (var_86 = CInt(2)) Then
  loc_155E306:           If Not (var_86 = CInt(&HB)) Then
  loc_155E311:             If Not (var_86 = CInt(1)) Then
  loc_155E31C:               If Not (var_86 = CInt(&H18)) Then
  loc_155E327:                 If Not (var_86 = CInt(&H19)) Then
  loc_155E332:                   If Not (var_86 = CInt(&H21)) Then
  loc_155E33D:                     If Not (var_86 = CInt(&H22)) Then
  loc_155E348:                       If Not (var_86 = CInt(&H1A)) Then
  loc_155E353:                         If Not (var_86 = CInt(&H1F)) Then
  loc_155E35E:                           If Not (var_86 = CInt(&HC)) Then
  loc_155E369:                             If Not (var_86 = CInt(&H24)) Then
  loc_155E374:                               If Not (var_86 = CInt(&H23)) Then
  loc_155E37F:                                 If Not (var_86 = CInt(&H25)) Then
  loc_155E38A:                                   If Not (var_86 = CInt(&H26)) Then
  loc_155E395:                                     If Not (var_86 = CInt(&H2B)) Then
  loc_155E3A0:                                       If Not (var_86 = CInt(&H2C)) Then
  loc_155E3AB:                                         If Not (var_86 = CInt(&H44)) Then
  loc_155E3B6:                                           If Not (var_86 = CInt(&H45)) Then
  loc_155E3C1:                                             If (var_86 = CInt(&H46)) Then
  loc_155E3C4:                                             End If
  loc_155E3C4:                                           End If
  loc_155E3C4:                                         End If
  loc_155E3C4:                                       End If
  loc_155E3C4:                                     End If
  loc_155E3C4:                                   End If
  loc_155E3C4:                                 End If
  loc_155E3C4:                               End If
  loc_155E3C4:                             End If
  loc_155E3C4:                           End If
  loc_155E3C4:                         End If
  loc_155E3C4:                       End If
  loc_155E3C4:                     End If
  loc_155E3C4:                   End If
  loc_155E3C4:                 End If
  loc_155E3C4:               End If
  loc_155E3C4:             End If
  loc_155E3C4:           End If
  loc_155E3C4:         End If
  loc_155E3C4:       End If
  loc_155E3C4:     End If
  loc_155E41D:     Set var_94 = var_98(Cancel)
  loc_155E423:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_155E42B:     ((global_52.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155E443:     If ( Or (var_9C = vbNullString)) Then
  loc_155E455:       Set var_94 = var_98(Cancel)
  loc_155E45B:       Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155E463:       var_98.Tag = 
  loc_155E471:       Exit Sub
  loc_155E472:     End If
  loc_155E4B2:     Set var_B0 = var_B4(Cancel)
  loc_155E4B8:     Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155E4C0:     var_B4.Text = 
  loc_155E4F8:     var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155E509:     var_9C = CStr(var_98.Value)
  loc_155E516:     Set var_B0 = var_B4(Cancel)
  loc_155E51C:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_155E524:     var_B4.Tag = 
  loc_155E53D:   Else
  loc_155E547:     If Not (var_86 = CInt(&H17)) Then
  loc_155E552:       If (var_86 = CInt(&H1B)) Then
  loc_155E555:       End If
  loc_155E5AE:       Set var_94 = var_98(Cancel)
  loc_155E5B4:       Call 0.Method_Txt_Validate0 (var_9C)
  loc_155E5BC:       ((global_60.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155E5D4:       If ( Or (var_9C = vbNullString)) Then
  loc_155E5E6:         Set var_94 = var_98(Cancel)
  loc_155E5EC:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155E5F4:         var_98.Tag = 
  loc_155E602:         Exit Sub
  loc_155E603:       End If
  loc_155E643:       Set var_B0 = var_B4(Cancel)
  loc_155E649:       Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155E651:       var_B4.Text = 
  loc_155E689:       var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155E69A:       var_9C = CStr(var_98.Value)
  loc_155E6A7:       Set var_B0 = var_B4(Cancel)
  loc_155E6AD:       Call 0.Method_Txt_Validate0 (var_9C)
  loc_155E6B5:       var_B4.Tag = 
  loc_155E6CE:     Else
  loc_155E6D8:       If (var_86 = CInt(&H38)) Then
  loc_155E734:         Set var_94 = var_98(Cancel)
  loc_155E73A:         Call 0.Method_Txt_Validate0 (var_9C)
  loc_155E742:         ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155E75A:         If ( Or (var_9C = vbNullString)) Then
  loc_155E76C:           Set var_94 = var_98(Cancel)
  loc_155E772:           Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155E77A:           var_98.Tag = 
  loc_155E788:           Exit Sub
  loc_155E789:         End If
  loc_155E7C9:         Set var_B0 = var_B4(Cancel)
  loc_155E7CF:         Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155E7D7:         var_B4.Text = 
  loc_155E80F:         var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155E820:         var_9C = CStr(var_98.Value)
  loc_155E82D:         Set var_B0 = var_B4(Cancel)
  loc_155E833:         Call 0.Method_Txt_Validate0 (var_9C)
  loc_155E83B:         var_B4.Tag = 
  loc_155E854:       Else
  loc_155E85E:         If (var_86 = CInt(&H11)) Then
  loc_155E8BA:           Set var_94 = var_98(Cancel)
  loc_155E8C0:           Call 0.Method_Txt_Validate0 (var_9C)
  loc_155E8C8:           ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155E8E0:           If ( Or (var_9C = vbNullString)) Then
  loc_155E8F2:             Set var_94 = var_98(Cancel)
  loc_155E8F8:             Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155E900:             var_98.Tag = 
  loc_155E90E:             Exit Sub
  loc_155E90F:           End If
  loc_155E94F:           Set var_B0 = var_B4(Cancel)
  loc_155E955:           Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155E95D:           var_B4.Text = 
  loc_155E995:           var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155E9A6:           var_9C = CStr(var_98.Value)
  loc_155E9B3:           Set var_B0 = var_B4(Cancel)
  loc_155E9B9:           Call 0.Method_Txt_Validate0 (var_9C)
  loc_155E9C1:           var_B4.Tag = 
  loc_155E9DA:         Else
  loc_155E9E4:           If (var_86 = CInt(&H49)) Then
  loc_155EA40:             Set var_94 = var_98(Cancel)
  loc_155EA46:             Call 0.Method_Txt_Validate0 (var_9C)
  loc_155EA4E:             ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155EA66:             If ( Or (var_9C = vbNullString)) Then
  loc_155EA78:               Set var_94 = var_98(Cancel)
  loc_155EA7E:               Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155EA86:               var_98.Tag = 
  loc_155EA94:               Exit Sub
  loc_155EA95:             End If
  loc_155EAD5:             Set var_B0 = var_B4(Cancel)
  loc_155EADB:             Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155EAE3:             var_B4.Text = 
  loc_155EB1B:             var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155EB2C:             var_9C = CStr(var_98.Value)
  loc_155EB39:             Set var_B0 = var_B4(Cancel)
  loc_155EB3F:             Call 0.Method_Txt_Validate0 (var_9C)
  loc_155EB47:             var_B4.Tag = 
  loc_155EB60:           Else
  loc_155EB6A:             If (var_86 = CInt(&H5A)) Then
  loc_155EBC6:               Set var_94 = var_98(Cancel)
  loc_155EBCC:               Call 0.Method_Txt_Validate0 (var_9C)
  loc_155EBD4:               ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155EBEC:               If ( Or (var_9C = vbNullString)) Then
  loc_155EBFE:                 Set var_94 = var_98(Cancel)
  loc_155EC04:                 Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155EC0C:                 var_98.Tag = 
  loc_155EC1A:                 Exit Sub
  loc_155EC1B:               End If
  loc_155EC5B:               Set var_B0 = var_B4(Cancel)
  loc_155EC61:               Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155EC69:               var_B4.Text = 
  loc_155ECA1:               var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155ECB2:               var_9C = CStr(var_98.Value)
  loc_155ECBF:               Set var_B0 = var_B4(Cancel)
  loc_155ECC5:               Call 0.Method_Txt_Validate0 (var_9C)
  loc_155ECCD:               var_B4.Tag = 
  loc_155ECE6:             Else
  loc_155ECEF:               If Not (var_86 = 136) Then
  loc_155ECF9:                 If (var_86 = 137) Then
  loc_155ECFC:                 End If
  loc_155ED55:                 Set var_94 = var_98(Cancel)
  loc_155ED5B:                 Call 0.Method_Txt_Validate0 (var_9C)
  loc_155ED63:                 ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_155ED7B:                 If ( Or (var_9C = vbNullString)) Then
  loc_155ED8D:                   Set var_94 = var_98(Cancel)
  loc_155ED93:                   Call 0.Method_Txt_Validate0 (vbNullString)
  loc_155ED9B:                   var_98.Tag = 
  loc_155EDA9:                   Exit Sub
  loc_155EDAA:                 End If
  loc_155EDEA:                 Set var_B0 = var_B4(Cancel)
  loc_155EDF0:                 Call 0.Method_Txt_Validate0 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_155EDF8:                 var_B4.Text = 
  loc_155EE30:                 var_98 = Me.Recordset15.Fields.Item("Code")
  loc_155EE4E:                 Set var_B0 = var_B4(Cancel)
  loc_155EE54:                 Call 0.Method_Txt_Validate0 (CStr(var_98.Value))
  loc_155EE5C:                 var_B4.Tag = 
  loc_155EE75:               Else
  loc_155EE7F:                 If Not (var_86 = CInt(&H28)) Then
  loc_155EE8A:                   If Not (var_86 = CInt(&H2F)) Then
  loc_155EE95:                     If Not (var_86 = CInt(&H30)) Then
  loc_155EEA0:                       If Not (var_86 = CInt(&H48)) Then
  loc_155EEAB:                         If Not (var_86 = CInt(&H7A)) Then
  loc_155EEB5:                           If Not (var_86 = 129) Then
  loc_155EEC1:                             If Not (var_86 = CInt(128)) Then
  loc_155EECB:                               If Not (var_86 = 140) Then
  loc_155EED5:                                 If Not (var_86 = 141) Then
  loc_155EEE1:                                   If Not (var_86 = CInt(142)) Then
  loc_155EEED:                                     If Not (var_86 = CInt(143)) Then
  loc_155EEF9:                                       If Not (var_86 = CInt(144)) Then
  loc_155EF03:                                         If Not (var_86 = 145) Then
  loc_155EF0D:                                           If Not (var_86 = 146) Then
  loc_155EF19:                                             If Not (var_86 = CInt(147)) Then
  loc_155EF25:                                               If Not (var_86 = CInt(148)) Then
  loc_155EF2F:                                                 If Not (var_86 = 149) Then
  loc_155EF39:                                                   If Not (var_86 = 150) Then
  loc_155EF43:                                                     If (var_86 = 151) Then
  loc_155EF46:                                                     End If
  loc_155EF46:                                                   End If
  loc_155EF46:                                                 End If
  loc_155EF46:                                               End If
  loc_155EF46:                                             End If
  loc_155EF46:                                           End If
  loc_155EF46:                                         End If
  loc_155EF46:                                       End If
  loc_155EF46:                                     End If
  loc_155EF46:                                   End If
  loc_155EF46:                                 End If
  loc_155EF46:                               End If
  loc_155EF46:                             End If
  loc_155EF46:                           End If
  loc_155EF46:                         End If
  loc_155EF46:                       End If
  loc_155EF46:                     End If
  loc_155EF46:                   End If
  loc_155EF52:                   Set var_94 = var_98(Cancel)
  loc_155EF58:                   Call 0.Method_Txt_Validate0 ()
  loc_155EF93:                   If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_155EFA5:                     Set var_94 = var_98(Cancel)
  loc_155EFAB:                     Call 0.Method_Txt_Validate0 ("Yes")
  loc_155EFB3:                     var_98.Text = 
  loc_155EFC2:                   Else
  loc_155EFD3:                     Set var_94 = var_98(Cancel)
  loc_155EFD9:                     Call 0.Method_Txt_Validate0 ("No")
  loc_155EFE1:                     var_98.Text = 
  loc_155EFED:                   End If
  loc_155EFF2:                 Else
  loc_155EFFC:                   If Not (var_86 = CInt(&H56)) Then
  loc_155F007:                     If Not (var_86 = CInt(&H57)) Then
  loc_155F012:                       If Not (var_86 = CInt(&H59)) Then
  loc_155F01D:                         If Not (var_86 = CInt(&H75)) Then
  loc_155F028:                           If Not (var_86 = CInt(&H76)) Then
  loc_155F033:                             If Not (var_86 = CInt(&H7B)) Then
  loc_155F03E:                               If Not (var_86 = CInt(&H7F)) Then
  loc_155F04A:                                 If Not (var_86 = CInt(132)) Then
  loc_155F055:                                   If (var_86 = CInt(&H5B)) Then
  loc_155F058:                                   End If
  loc_155F058:                                 End If
  loc_155F058:                               End If
  loc_155F058:                             End If
  loc_155F058:                           End If
  loc_155F058:                         End If
  loc_155F058:                       End If
  loc_155F058:                     End If
  loc_155F064:                     Set var_94 = var_98(Cancel)
  loc_155F06A:                     Call 0.Method_Txt_Validate0 ()
  loc_155F0A5:                     If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_155F0B7:                       Set var_94 = var_98(Cancel)
  loc_155F0BD:                       Call 0.Method_Txt_Validate0 ("Yes")
  loc_155F0C5:                       var_98.Text = 
  loc_155F0D4:                     Else
  loc_155F0E5:                       Set var_94 = var_98(Cancel)
  loc_155F0EB:                       Call 0.Method_Txt_Validate0 ("No")
  loc_155F0F3:                       var_98.Text = 
  loc_155F0FF:                     End If
  loc_155F104:                   Else
  loc_155F10E:                     If Not (var_86 = CInt(&H2A)) Then
  loc_155F119:                       If Not (var_86 = CInt(&H32)) Then
  loc_155F123:                         If (var_86 = 135) Then
  loc_155F126:                         End If
  loc_155F126:                       End If
  loc_155F132:                       Set var_94 = var_98(Cancel)
  loc_155F138:                       Call 0.Method_Txt_Validate0 ()
  loc_155F173:                       If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_155F185:                         Set var_94 = var_98(Cancel)
  loc_155F18B:                         Call 0.Method_Txt_Validate0 ("Yes")
  loc_155F193:                         var_98.Text = 
  loc_155F1A2:                       Else
  loc_155F1B3:                         Set var_94 = var_98(Cancel)
  loc_155F1B9:                         Call 0.Method_Txt_Validate0 ("No")
  loc_155F1C1:                         var_98.Text = 
  loc_155F1CD:                       End If
  loc_155F1CF:                     End If
  loc_155F1CF:                   End If
  loc_155F1CF:                 End If
  loc_155F1CF:               End If
  loc_155F1CF:             End If
  loc_155F1CF:           End If
  loc_155F1CF:         End If
  loc_155F1CF:       End If
  loc_155F1CF:     End If
  loc_155F1CF:   End If
  loc_155F1CF: End If
  loc_155F1D3: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5ADB4
  'Data Table: 554C84
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As TextBox
  Dim var_A4 As String
  loc_F5ACAD: (var_A0).DeleteColumnLabels , 
  loc_F5ACBE:  = .Count
  loc_F5ACD6: If (var_A0 > 0) Then
  loc_F5ACDD:   Set var_A8 = ()
  loc_F5ACF3:   var_CC = Val(CStr(var_A8.Tag))
  loc_F5AD03:   var_CC(var_A4).RandomDataFill
  loc_F5AD14:    = .Text
  loc_F5AD27:   Set var_C0 = var_C4(CInt(var_CC))
  loc_F5AD2D:   Call 0.Method_ListView_UnknownEvent_130 (var_A4)
  loc_F5AD35:   var_C4.Text = 
  loc_F5AD55: End If
  loc_F5AD61: (0).Visible = 
  loc_F5AD83: var_CC = Val(CStr(().Tag))
  loc_F5AD91: Set var_9C = var_A8(CInt(var_CC))
  loc_F5AD97: Call 0.Method_ListView_UnknownEvent_130 (var_CC)
  loc_F5AD9F: var_A8.SetFocus
  loc_F5ADB3: Exit Sub
End Sub

Private Sub Cmd_Click(Index As Integer) '1CB6114
  'Data Table: 554C84
  Dim var_8A As Variant
  Dim unk_554C86 As Connection15
  Dim var_86 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_37AC As Double
  Dim var_FC As Variant
  Dim var_37B4 As Double
  Dim var_114 As Variant
  Dim var_37BC As Double
  Dim var_12C As Variant
  Dim var_37C4 As Double
  Dim var_144 As Variant
  Dim var_37CC As Double
  Dim var_15C As Variant
  Dim var_170 As Variant
  Dim var_194 As Variant
  Dim var_1B8 As Variant
  Dim var_1CC As Variant
  Dim var_1F0 As Variant
  Dim var_214 As Variant
  Dim var_238 As Variant
  Dim var_25C As Variant
  Dim var_280 As Variant
  Dim var_294 As Variant
  Dim var_2A8 As Variant
  Dim var_2CC As Variant
  Dim var_2DC As Variant
  Dim var_334 As Variant
  Dim var_348 As Variant
  Dim var_390 As TextBox
  Dim var_3A4 As Variant
  Dim var_3EC As TextBox
  Dim var_448 As TextBox
  Dim var_4A4 As TextBox
  Dim var_5B0 As Variant
  Dim var_648 As TextBox
  Dim var_694 As TextBox
  Dim var_6E0 As TextBox
  Dim var_6F4 As Variant
  Dim var_73C As TextBox
  Dim var_788 As TextBox
  Dim var_884 As TextBox
  Dim var_938 As TextBox
  Dim var_94C As Variant
  Dim var_C04 As TextBox
  Dim var_CA0 As TextBox
  Dim var_D5C As Variant
  Dim var_E0C As Variant
  Dim var_EBC As Variant
  Dim var_F04 As TextBox
  Dim var_FA4 As CheckBox
  Dim var_11F8 As TextBox
  Dim var_12AC As TextBox
  Dim var_15D8 As Variant
  Dim var_1688 As Variant
  Dim var_1738 As Variant
  Dim var_1780 As TextBox
  Dim var_17DC As TextBox
  Dim var_17F0 As Variant
  Dim var_1838 As TextBox
  Dim var_18A4 As Variant
  Dim var_1958 As Variant
  Dim var_1A08 As Variant
  Dim var_1B30 As Variant
  Dim var_1CB0 As TextBox
  Dim var_38DC As Double
  Dim var_1D64 As Variant
  Dim var_1E14 As Variant
  Dim var_1E5C As TextBox
  Dim var_38E4 As Double
  Dim var_1EA8 As TextBox
  Dim var_38EC As Double
  Dim var_1EF4 As TextBox
  Dim var_38F4 As Double
  Dim var_1F40 As TextBox
  Dim var_38FC As Double
  Dim var_1F9C As Variant
  Dim var_1FF4 As Variant
  Dim var_224C As TextBox
  Dim var_22A8 As TextBox
  Dim var_2304 As TextBox
  Dim var_23D8 As Variant
  Dim var_25D0 As Variant
  Dim var_2770 As Variant
  Dim var_2A48 As Variant
  Dim var_2BE8 As Variant
  Dim var_2D88 As Variant
  Dim var_2DDC As CheckBox
  Dim var_2E84 As CheckBox
  Dim var_2F2C As CheckBox
  Dim var_2FD4 As CheckBox
  Dim var_3124 As CheckBox
  Dim var_32C0 As Variant
  Dim var_3308 As TextBox
  Dim var_3374 As Variant
  Dim var_3424 As Variant
  Dim var_94 As String
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_B0 As String
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim var_F4 As Variant
  Dim var_104 As String
  Dim var_108 As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_138 As Variant
  Dim var_13C As String
  Dim var_14C As String
  Dim var_150 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_168 As String
  Dim var_184 As String
  Dim var_188 As Variant
  Dim var_18C As Variant
  Dim var_1A8 As Variant
  Dim var_1AC As String
  Dim var_1B0 As Variant
  Dim var_1C0 As String
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1D8 As Variant
  Dim var_1F4 As String
  Dim var_1F8 As Variant
  Dim var_1FC As Variant
  Dim var_218 As Variant
  Dim var_21C As Variant
  Dim var_220 As String
  Dim var_23C As String
  Dim var_240 As Variant
  Dim var_244 As String
  Dim var_260 As Variant
  Dim var_264 As String
  Dim var_268 As Variant
  Dim var_284 As String
  Dim var_288 As Variant
  Dim var_28C As Variant
  Dim var_2AC As String
  Dim var_2B0 As Variant
  Dim var_2B4 As Variant
  Dim var_2FC As Variant
  Dim var_30C As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_358 As Variant
  Dim var_368 As Variant
  Dim var_378 As Variant
  Dim var_388 As Variant
  Dim var_46C As Variant
  Dim var_47C As Variant
  Dim var_530 As Variant
  Dim var_588 As Variant
  Dim var_620 As Variant
  Dim var_6D8 As Variant
  Dim var_7AC As Variant
  Dim var_804 As Variant
  Dim var_85C As Variant
  Dim var_910 As Variant
  Dim var_A1C As Variant
  Dim var_A3C As Variant
  Dim var_B84 As Variant
  Dim var_BA4 As Variant
  Dim var_C78 As Variant
  Dim var_C98 As Variant
  Dim var_D9C As Variant
  Dim var_E84 As Variant
  Dim var_F70 As Variant
  Dim var_F80 As Variant
  Dim var_1038 As Variant
  Dim var_1198 As Variant
  Dim var_11D0 As Variant
  Dim var_12E0 As Variant
  Dim var_1300 As Variant
  Dim var_13B0 As Variant
  Dim var_13E8 As Variant
  Dim var_1460 As Variant
  Dim var_14F0 As Variant
  Dim var_1510 As Variant
  Dim var_15A0 As Variant
  Dim var_16A8 As Variant
  Dim var_17B4 As Variant
  Dim var_19D0 As Variant
  Dim var_1AA0 As Variant
  Dim var_1AE8 As Variant
  Dim var_1BB8 As Variant
  Dim var_1BD8 As Variant
  Dim var_1C88 As Variant
  Dim var_1E34 As Variant
  Dim var_1E80 As Variant
  Dim var_1F18 As Variant
  Dim var_2014 As Variant
  Dim var_206C As Variant
  Dim var_211C As Variant
  Dim var_2224 As Variant
  Dim var_2270 As Variant
  Dim var_2328 As Variant
  Dim var_2338 As Variant
  Dim var_2480 As Variant
  Dim var_24C8 As Variant
  Dim var_2530 As Variant
  Dim var_2598 As Variant
  Dim var_2668 As Variant
  Dim var_26D0 As Variant
  Dim var_2738 As Variant
  Dim var_27A0 As Variant
  Dim var_2870 As Variant
  Dim var_28D8 As Variant
  Dim var_28F8 As Variant
  Dim var_29A8 As Variant
  Dim var_2A10 As Variant
  Dim var_2A78 As Variant
  Dim var_2AE0 As Variant
  Dim var_2BB0 As Variant
  Dim var_2C18 As Variant
  Dim var_2C80 As Variant
  Dim var_2CE8 As Variant
  Dim var_2D50 As Variant
  Dim var_2DB8 As Variant
  Dim var_2FB0 As Variant
  Dim var_3210 As Variant
  Dim var_3230 As Variant
  Dim var_33EC As Variant
  Dim var_34F4 As Variant
  Dim var_3514 As Variant
  Dim var_3594 As Variant
  Dim var_361C As Variant
  Dim var_3644 As Variant
  Dim var_369C As Variant
  Dim var_3704 As Variant
  Dim var_377C As Variant
  Dim var_1E0 As DataGrid
  Dim var_204 As TextBox
  Dim var_228 As TextBox
  Dim var_500 As TextBox
  Dim var_558 As TextBox
  Dim var_8E0 As TextBox
  Dim var_994 As TextBox
  Dim var_9EC As TextBox
  Dim var_CEC As TextBox
  Dim var_103C As TextBox
  Dim var_1098 As CheckBox
  Dim var_1360 As TextBox
  Dim var_1430 As Variant
  Dim var_1894 As TextBox
  Dim var_18EC As TextBox
  Dim var_19F8 As TextBox
  Dim var_1D1C As Variant
  Dim var_1D74 As Variant
  Dim var_1D54 As TextBox
  Dim var_1FE4 As TextBox
  Dim var_2360 As TextBox
  Dim var_23B8 As TextBox
  Dim var_2450 As Variant
  Dim var_24B8 As Variant
  Dim var_2520 As Variant
  Dim var_2588 As Variant
  Dim var_25F0 As Variant
  Dim var_2658 As Variant
  Dim var_26C0 As Variant
  Dim var_2728 As Variant
  Dim var_2790 As Variant
  Dim var_27F8 As Variant
  Dim var_2860 As Variant
  Dim var_2930 As Variant
  Dim var_2998 As Variant
  Dim var_2A00 As Variant
  Dim var_2A68 As Variant
  Dim var_2AD0 As Variant
  Dim var_2B38 As Variant
  Dim var_2BA0 As Variant
  Dim var_2C08 As Variant
  Dim var_2C70 As Variant
  Dim var_2CD8 As Variant
  Dim var_2D40 As Variant
  Dim var_2DA8 As Variant
  Dim var_3048 As Variant
  Dim var_3198 As Variant
  Dim var_35CC As CheckBox
  Dim var_3620 As CheckBox
  Dim var_3624 As CheckBox
  Dim var_3678 As CheckBox
  Dim var_367C As CheckBox
  Dim var_3990 As Variant
  Dim var_39C8 As TextBox
  Dim var_39E8 As Variant
  Dim var_AC As String
  Dim var_C0 As String
  Dim var_D4 As Variant
  Dim var_E8 As String
  Dim var_100 As String
  Dim var_118 As String
  Dim var_130 As String
  Dim var_148 As String
  Dim var_160 As String
  Dim var_2EC As Variant
  Dim var_5C0 As Variant
  Dim var_AF4 As Variant
  Dim var_1DCC As Variant
  Dim var_1E24 As Variant
  Dim var_23E8 As Variant
  Dim var_2EF8 As Variant
  Dim var_2FA0 As Variant
  Dim var_30B0 As Variant
  Dim var_30F0 As Variant
  Dim var_3188 As Variant
  Dim var_3200 As Variant
  Dim var_3268 As Variant
  Dim var_32D0 As Variant
  Dim var_332C As Variant
  Dim var_37A0 As Variant
  Dim var_396C As Variant
  Dim var_740 As String
  Dim var_A4 As Variant
  Dim var_180 As Variant
  loc_1CB05CC: On Error Goto loc_1CB60F8
  loc_1CB05D2: var_8A = Index
  loc_1CB05DB: If (var_8A = 0) Then
  loc_1CB05DE:   Call Proc_56_54_FB6794(var_8A)
  loc_1CB05EC:   unk_554C86.BeginTrans var_90
  loc_1CB05F3:   var_86 = &HFF
  loc_1CB0602:   var_90 = Me.Recordset15.RecordCount
  loc_1CB0610:   If (var_90 = 0) Then
  loc_1CB0621:     Set var_A4 = var_A8(CInt(4))
  loc_1CB0627:     Call 0.Method_Cmd_Click0 (var_AC)
  loc_1CB062F:     var_86 = var_A8.Tag
  loc_1CB0642:     Set var_B8 = var_BC(CInt(3))
  loc_1CB0648:     Call 0.Method_Cmd_Click0 (var_C0)
  loc_1CB0650:      = var_BC.Tag
  loc_1CB0663:     Set var_CC = var_D0(CInt(2))
  loc_1CB0669:     Call 0.Method_Cmd_Click0 (var_D4)
  loc_1CB0671:      = var_D0.Tag
  loc_1CB0684:     Set var_E0 = var_E4(CInt(7))
  loc_1CB068A:     Call 0.Method_Cmd_Click0 (var_E8)
  loc_1CB0692:      = var_E4.Text
  loc_1CB069F:     var_37AC = Val(var_E8)
  loc_1CB06B0:     Set var_F8 = var_FC(CInt(8))
  loc_1CB06B6:     Call 0.Method_Cmd_Click0 (var_100)
  loc_1CB06CB:     var_37B4 = Val(var_100)
  loc_1CB06DC:     Set var_110 = var_114(CInt(9))
  loc_1CB06E2:     Call 0.Method_Cmd_Click0 (var_118)
  loc_1CB06F7:     var_37BC = Val(var_118)
  loc_1CB0708:     Set var_128 = var_12C(CInt(5))
  loc_1CB070E:     Call 0.Method_Cmd_Click0 (var_130)
  loc_1CB0723:     var_37C4 = Val(var_130)
  loc_1CB0734:     Set var_140 = var_144(CInt(6))
  loc_1CB073A:     Call 0.Method_Cmd_Click0 (var_148)
  loc_1CB074F:     var_37CC = Val(var_148)
  loc_1CB0760:     Set var_158 = var_15C(CInt(&HC))
  loc_1CB0766:     Call 0.Method_Cmd_Click0 (var_160)
  loc_1CB077E:     Set var_16C = var_170(CInt(&HB))
  loc_1CB0784:     Call 0.Method_Cmd_Click0 ()
  loc_1CB078C:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE80
  loc_1CB07A0:     Set var_190 = var_194(CInt(&H3D))
  loc_1CB07A6:     Call 0.Method_Cmd_Click0 ()
  loc_1CB07AE:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE5C
  loc_1CB07C5:     Set var_1B4 = var_1B8(CInt(&HB))
  loc_1CB07CB:     Call 0.Method_Cmd_Click0 (var_1BC)
  loc_1CB07D3:      = var_1B8.Tag
  loc_1CB07E6:     Set var_1C8 = var_1CC(CInt(1))
  loc_1CB07EC:     Call 0.Method_Cmd_Click0 (var_1D0)
  loc_1CB07F4:      = var_1CC.Tag
  loc_1CB0804:     Set var_1DC = var_1E0(CInt(&H14))
  loc_1CB080A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0812:     var_1F0 = CVar(var_1E0) 'Address
  loc_1CB0829:     Set var_200 = var_204(CInt(&H15))
  loc_1CB082F:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0837:     var_214 = CVar(var_204) 'Address
  loc_1CB084E:     Set var_224 = var_228(CInt(&H13))
  loc_1CB0854:     Call 0.Method_Cmd_Click0 ()
  loc_1CB085C:     var_238 = CVar(var_228) 'Address
  loc_1CB0873:     Set var_248 = var_24C(CInt(&H12))
  loc_1CB0879:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0881:     var_25C = CVar(var_24C) 'Address
  loc_1CB0898:     Set var_26C = var_270(CInt(&H16))
  loc_1CB089E:     Call 0.Method_Cmd_Click0 ()
  loc_1CB08A6:     var_280 = CVar(var_270) 'Address
  loc_1CB08C0:     Set var_290 = var_294(CInt(&H11))
  loc_1CB08C6:     Call 0.Method_Cmd_Click0 (var_298)
  loc_1CB08CE:      = var_294.Tag
  loc_1CB08D6:     var_2A8 = CVar(var_298) 'String
  loc_1CB08EC:     Set var_2B8 = var_2BC(CInt(&H10))
  loc_1CB08F2:     Call 0.Method_Cmd_Click0 ()
  loc_1CB08FA:     var_2CC = CVar(var_2BC) 'Address
  loc_1CB090E:     var_2DC = CVar(Proc_6_38_E69628(var_2CC)) 'String
  loc_1CB0914:     var_2EC = Left(var_2DC, 1)
  loc_1CB0927:     Set var_330 = var_334(CInt(&H17))
  loc_1CB092D:     Call 0.Method_Cmd_Click0 (var_338)
  loc_1CB0935:      = var_334.Tag
  loc_1CB093D:     var_348 = CVar(var_338) 'String
  loc_1CB0956:     Set var_38C = var_390(CInt(&H1B))
  loc_1CB095C:     Call 0.Method_Cmd_Click0 (var_394)
  loc_1CB0964:      = var_390.Tag
  loc_1CB0985:     Set var_3E8 = var_3EC(CInt(&H18))
  loc_1CB098B:     Call 0.Method_Cmd_Click0 (var_3F0)
  loc_1CB0993:      = var_3EC.Tag
  loc_1CB09B4:     Set var_444 = var_448(CInt(&H19))
  loc_1CB09BA:     Call 0.Method_Cmd_Click0 (var_44C)
  loc_1CB09C2:      = var_448.Tag
  loc_1CB09E3:     Set var_4A0 = var_4A4(CInt(&H1A))
  loc_1CB09E9:     Call 0.Method_Cmd_Click0 (var_4A8)
  loc_1CB09F1:      = var_4A4.Tag
  loc_1CB0A0F:     Set var_4FC = var_500(CInt(&H1C))
  loc_1CB0A15:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0A34:     Set var_554 = var_558(CInt(0))
  loc_1CB0A3A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0A59:     Set var_5AC = var_5B0(CInt(1))
  loc_1CB0A5F:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0A67:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFA40
  loc_1CB0A7C:     Set var_644 = var_648(&H1D)
  loc_1CB0A82:     Call 0.Method_Cmd_Click0 (var_64C)
  loc_1CB0A8A:      = var_648.Text
  loc_1CB0A9D:     Set var_690 = var_694(CInt(&H1E))
  loc_1CB0AA3:     Call 0.Method_Cmd_Click0 (var_698)
  loc_1CB0AAB:      = var_694.Text
  loc_1CB0ABE:     Set var_6DC = var_6E0(CInt(&H1F))
  loc_1CB0AC4:     Call 0.Method_Cmd_Click0 (var_6E4)
  loc_1CB0ACC:      = var_6E0.Tag
  loc_1CB0AED:     Set var_738 = var_73C(CInt(&H21))
  loc_1CB0AF3:     Call 0.Method_Cmd_Click0 (var_740)
  loc_1CB0AFB:      = var_73C.Tag
  loc_1CB0B0E:     Set var_784 = var_788(CInt(&H22))
  loc_1CB0B14:     Call 0.Method_Cmd_Click0 (var_78C)
  loc_1CB0B1C:      = var_788.Tag
  loc_1CB0B2C:     Set var_7D0 = var_7D4(CInt(&HE))
  loc_1CB0B32:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0B51:     Set var_828 = var_82C(CInt(&HF))
  loc_1CB0B57:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0B79:     Set var_880 = var_884(CInt(&H24))
  loc_1CB0B7F:     Call 0.Method_Cmd_Click0 (var_888)
  loc_1CB0B87:      = var_884.Tag
  loc_1CB0BA5:     Set var_8DC = var_8E0(CInt(&H23))
  loc_1CB0BAB:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0BCD:     Set var_934 = var_938(CInt(&H25))
  loc_1CB0BD3:     Call 0.Method_Cmd_Click0 (var_93C)
  loc_1CB0BDB:      = var_938.Tag
  loc_1CB0BF9:     Set var_990 = var_994(CInt(&H26))
  loc_1CB0BFF:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0C1E:     Set var_9E8 = var_9EC(CInt(&H28))
  loc_1CB0C24:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0C51:     Set var_A70 = var_A74(CInt(Trim(&H27)))
  loc_1CB0C57:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0C83:     Set var_AF8 = var_AFC(CInt(Trim(130)))
  loc_1CB0C89:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0CA8:     Set var_B50 = var_B54(CInt(&H2A))
  loc_1CB0CAE:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0CCC:     Set var_BA8 = var_BAC(135)
  loc_1CB0CD2:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0CF4:     Set var_C00 = var_C04(CInt(&H2B))
  loc_1CB0CFA:     Call 0.Method_Cmd_Click0 (var_C08)
  loc_1CB0D02:      = var_C04.Tag
  loc_1CB0D23:     Set var_C9C = var_CA0(CInt(&H2C))
  loc_1CB0D29:     Call 0.Method_Cmd_Click0 (var_CA4)
  loc_1CB0D31:      = var_CA0.Tag
  loc_1CB0D41:     Set var_CE8 = var_CEC(CInt(&H2D))
  loc_1CB0D47:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0D74:     Set var_DA0 = var_DA4(CInt(&H2F))
  loc_1CB0D7A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0D99:     Set var_DF8 = var_DFC(CInt(&H7A))
  loc_1CB0D9F:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0DBD:     Set var_E50 = var_E54(129)
  loc_1CB0DC3:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0DE3:     Set var_EA8 = var_EAC(CInt(128))
  loc_1CB0DE9:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0E0B:     Set var_F00 = var_F04(CInt(&H30))
  loc_1CB0E11:     Call 0.Method_Cmd_Click0 (var_F08)
  loc_1CB0E19:      = var_F04.Text
  loc_1CB0E29:     Set var_F4C = var_F50(CInt(&H31))
  loc_1CB0E2F:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0E50:      = (var_FA6).Value
  loc_1CB0E8C:     Set var_103C = var_1040(CInt(&H32))
  loc_1CB0E92:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0EB1:     Set var_1094 = var_1098(CInt(&H34))
  loc_1CB0EB7:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0ED6:     Set var_10EC = var_10F0(CInt(&H33))
  loc_1CB0EDC:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0EFB:     Set var_1144 = var_1148(CInt(&H35))
  loc_1CB0F01:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0F20:     Set var_119C = var_11A0(CInt(&H36))
  loc_1CB0F26:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0F48:     Set var_11F4 = var_11F8(CInt(&H37))
  loc_1CB0F4E:     Call 0.Method_Cmd_Click0 (var_11FC)
  loc_1CB0F56:      = var_11F8.Tag
  loc_1CB0F74:     Set var_1250 = var_1254(CInt(&H39))
  loc_1CB0F7A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0F9C:     Set var_12A8 = var_12AC(CInt(&H38))
  loc_1CB0FA2:     Call 0.Method_Cmd_Click0 (var_12B0)
  loc_1CB0FAA:      = var_12AC.Tag
  loc_1CB0FC8:     Set var_1304 = var_1308(CInt(&H3A))
  loc_1CB0FCE:     Call 0.Method_Cmd_Click0 ()
  loc_1CB0FED:     Set var_135C = var_1360(CInt(&H3B))
  loc_1CB0FF3:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1011:     Set var_13B4 = var_13B8(138)
  loc_1CB1017:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1036:     Set var_140C = var_1410(CInt(&H3D))
  loc_1CB103C:     Call 0.Method_Cmd_Click0 ()
  loc_1CB104B:     Proc_6_39_E7D3A0(var_1430)
  loc_1CB105B:     Set var_1464 = var_1468(CInt(&H3C))
  loc_1CB1061:     Call 0.Method_Cmd_Click0 (CVar(var_1410))
  loc_1CB1080:     Set var_14BC = var_14C0(CInt(&H3E))
  loc_1CB1086:     Call 0.Method_Cmd_Click0 ()
  loc_1CB10A6:     Set var_1514 = var_1518(CInt(131))
  loc_1CB10AC:     Call 0.Method_Cmd_Click0 ()
  loc_1CB10CB:     Set var_156C = var_1570(CInt(&H3F))
  loc_1CB10D1:     Call 0.Method_Cmd_Click0 ()
  loc_1CB10F0:     Set var_15C4 = var_15C8(CInt(&H40))
  loc_1CB10F6:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1115:     Set var_161C = var_1620(CInt(&H5C))
  loc_1CB111B:     Call 0.Method_Cmd_Click0 ()
  loc_1CB113A:     Set var_1674 = var_1678(CInt(&H41))
  loc_1CB1140:     Call 0.Method_Cmd_Click0 ()
  loc_1CB115F:     Set var_16CC = var_16D0(CInt(&H42))
  loc_1CB1165:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1184:     Set var_1724 = var_1728(CInt(&H43))
  loc_1CB118A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB11AC:     Set var_177C = var_1780(CInt(&H44))
  loc_1CB11B2:     Call 0.Method_Cmd_Click0 (var_1784)
  loc_1CB11BA:      = var_1780.Tag
  loc_1CB11DB:     Set var_17D8 = var_17DC(CInt(&H45))
  loc_1CB11E1:     Call 0.Method_Cmd_Click0 (var_17E0)
  loc_1CB11E9:      = var_17DC.Tag
  loc_1CB120A:     Set var_1834 = var_1838(CInt(&H46))
  loc_1CB1210:     Call 0.Method_Cmd_Click0 (var_183C)
  loc_1CB1218:      = var_1838.Tag
  loc_1CB1236:     Set var_1890 = var_1894(CInt(&H47))
  loc_1CB123C:     Call 0.Method_Cmd_Click0 ()
  loc_1CB125B:     Set var_18E8 = var_18EC(CInt(&H48))
  loc_1CB1261:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1283:     Set var_1940 = var_1944(CInt(&H49))
  loc_1CB1289:     Call 0.Method_Cmd_Click0 (var_1948)
  loc_1CB1291:      = var_1944.Tag
  loc_1CB12AF:     Set var_199C = var_19A0(CInt(&H4A))
  loc_1CB12B5:     Call 0.Method_Cmd_Click0 ()
  loc_1CB12D4:     Set var_19F4 = var_19F8(CInt(&H55))
  loc_1CB12DA:     Call 0.Method_Cmd_Click0 ()
  loc_1CB12F8:     Set var_1A4C = var_1A50(134)
  loc_1CB12FE:     Call 0.Method_Cmd_Click0 ()
  loc_1CB131D:     Set var_1AA4 = var_1AA8(CInt(&H4B))
  loc_1CB1323:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1355:     Set var_1B0C = var_1B10(CInt(&H77))
  loc_1CB135B:     Call 0.Method_Cmd_Click0 ()
  loc_1CB138D:     Set var_1B74 = var_1B78(CInt(&H78))
  loc_1CB1393:     Call 0.Method_Cmd_Click0 ()
  loc_1CB13C5:     Set var_1BDC = var_1BE0(CInt(&H79))
  loc_1CB13CB:     Call 0.Method_Cmd_Click0 ()
  loc_1CB13FD:     Set var_1C44 = var_1C48(CInt(&H58))
  loc_1CB1403:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1438:     Set var_1CAC = var_1CB0(CInt(&H4C))
  loc_1CB143E:     Call 0.Method_Cmd_Click0 (var_1CB4)
  loc_1CB1446:      = var_1CB0.Text
  loc_1CB1453:     var_38DC = Val(var_1CB4)
  loc_1CB1461:     Set var_1CF8 = var_1CFC(CInt(&H4D))
  loc_1CB1467:     Call 0.Method_Cmd_Click0 (var_38DC)
  loc_1CB1476:     Proc_6_17_EAAE40(var_1D1C)
  loc_1CB1486:     Set var_1D50 = var_1D54(CInt(&H4E))
  loc_1CB148C:     Call 0.Method_Cmd_Click0 (CVar(var_1CFC))
  loc_1CB149B:     Proc_6_17_EAAE40(var_1D74)
  loc_1CB14AB:     Set var_1DA8 = var_1DAC(CInt(&H4F))
  loc_1CB14B1:     Call 0.Method_Cmd_Click0 (CVar(var_1D54))
  loc_1CB14C0:     Proc_6_17_EAAE40(var_1DCC)
  loc_1CB14D0:     Set var_1E00 = var_1E04(CInt(&H50))
  loc_1CB14D6:     Call 0.Method_Cmd_Click0 (CVar(var_1DAC))
  loc_1CB14DE:     var_1E14 = CVar(var_1E04) 'Address
  loc_1CB14E5:     Proc_6_17_EAAE40(var_1E24)
  loc_1CB14F8:     Set var_1E58 = var_1E5C(CInt(&H51))
  loc_1CB14FE:     Call 0.Method_Cmd_Click0 (var_1E60)
  loc_1CB1506:     var_1E14 = var_1E5C.Text
  loc_1CB1513:     var_38E4 = Val(var_1E60)
  loc_1CB1524:     Set var_1EA4 = var_1EA8(CInt(&H52))
  loc_1CB152A:     Call 0.Method_Cmd_Click0 (var_1EAC)
  loc_1CB153F:     var_38EC = Val(var_1EAC)
  loc_1CB1550:     Set var_1EF0 = var_1EF4(CInt(&H53))
  loc_1CB1556:     Call 0.Method_Cmd_Click0 (var_1EF8)
  loc_1CB156B:     var_38F4 = Val(var_1EF8)
  loc_1CB157C:     Set var_1F3C = var_1F40(CInt(&H54))
  loc_1CB1582:     Call 0.Method_Cmd_Click0 (var_1F44)
  loc_1CB1597:     var_38FC = Val(var_1F44)
  loc_1CB15A5:     Set var_1F88 = var_1F8C(CInt(&H56))
  loc_1CB15AB:     Call 0.Method_Cmd_Click0 (var_38FC)
  loc_1CB15B3:     var_1F9C = CVar(var_1F8C) 'Address
  loc_1CB15CA:     Set var_1FE0 = var_1FE4(CInt(&H57))
  loc_1CB15D0:     Call 0.Method_Cmd_Click0 ()
  loc_1CB15EF:     Set var_2038 = var_203C(CInt(&H59))
  loc_1CB15F5:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1614:     Set var_2090 = var_2094(CInt(&H75))
  loc_1CB161A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1639:     Set var_20E8 = var_20EC(CInt(&H76))
  loc_1CB163F:     Call 0.Method_Cmd_Click0 ()
  loc_1CB165E:     Set var_2140 = var_2144(CInt(&H7B))
  loc_1CB1664:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1683:     Set var_2198 = var_219C(CInt(&H7F))
  loc_1CB1689:     Call 0.Method_Cmd_Click0 ()
  loc_1CB16A9:     Set var_21F0 = var_21F4(CInt(132))
  loc_1CB16AF:     Call 0.Method_Cmd_Click0 ()
  loc_1CB16D1:     Set var_2248 = var_224C(CInt(&H5A))
  loc_1CB16D7:     Call 0.Method_Cmd_Click0 (var_2250)
  loc_1CB16DF:      = var_224C.Tag
  loc_1CB16FF:     Set var_22A4 = var_22A8(136)
  loc_1CB1705:     Call 0.Method_Cmd_Click0 (var_22AC)
  loc_1CB170D:      = var_22A8.Tag
  loc_1CB172D:     Set var_2300 = var_2304(137)
  loc_1CB1733:     Call 0.Method_Cmd_Click0 (var_2308)
  loc_1CB173B:      = var_2304.Tag
  loc_1CB1759:     Set var_235C = var_2360(CInt(&H5B))
  loc_1CB175F:     Call 0.Method_Cmd_Click0 ()
  loc_1CB177E:     Set var_23B4 = var_23B8(CInt(&H5D))
  loc_1CB1784:     Call 0.Method_Cmd_Click0 ()
  loc_1CB179B:     Proc_6_17_EAAE40(var_23E8)
  loc_1CB17AB:     Set var_241C = var_2420(CInt(&H5E))
  loc_1CB17B1:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_23B8))))
  loc_1CB17C8:     Proc_6_17_EAAE40(var_2450)
  loc_1CB17D8:     Set var_2484 = var_2488(CInt(&H5F))
  loc_1CB17DE:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2420))))
  loc_1CB17F5:     Proc_6_17_EAAE40(var_24B8)
  loc_1CB1805:     Set var_24EC = var_24F0(CInt(&H60))
  loc_1CB180B:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2488))))
  loc_1CB1822:     Proc_6_17_EAAE40(var_2520)
  loc_1CB1832:     Set var_2554 = var_2558(CInt(&H61))
  loc_1CB1838:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_24F0))))
  loc_1CB184F:     Proc_6_17_EAAE40(var_2588)
  loc_1CB185F:     Set var_25BC = var_25C0(CInt(&H62))
  loc_1CB1865:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2558))))
  loc_1CB187C:     Proc_6_17_EAAE40(var_25F0)
  loc_1CB188C:     Set var_2624 = var_2628(CInt(&H63))
  loc_1CB1892:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_25C0))))
  loc_1CB18A9:     Proc_6_17_EAAE40(var_2658)
  loc_1CB18B9:     Set var_268C = var_2690(CInt(&H64))
  loc_1CB18BF:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2628))))
  loc_1CB18D6:     Proc_6_17_EAAE40(var_26C0)
  loc_1CB18E6:     Set var_26F4 = var_26F8(CInt(&H65))
  loc_1CB18EC:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2690))))
  loc_1CB1903:     Proc_6_17_EAAE40(var_2728)
  loc_1CB1913:     Set var_275C = var_2760(CInt(&H66))
  loc_1CB1919:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_26F8))))
  loc_1CB1930:     Proc_6_17_EAAE40(var_2790)
  loc_1CB1940:     Set var_27C4 = var_27C8(CInt(&H67))
  loc_1CB1946:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2760))))
  loc_1CB195D:     Proc_6_17_EAAE40(var_27F8)
  loc_1CB196D:     Set var_282C = var_2830(CInt(&H68))
  loc_1CB1973:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_27C8))))
  loc_1CB198A:     Proc_6_17_EAAE40(var_2860)
  loc_1CB199A:     Set var_2894 = var_2898(CInt(&H69))
  loc_1CB19A0:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2830))))
  loc_1CB19B7:     Proc_6_17_EAAE40(var_28C8)
  loc_1CB19C7:     Set var_28FC = var_2900(CInt(&H6A))
  loc_1CB19CD:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2898))))
  loc_1CB19E4:     Proc_6_17_EAAE40(var_2930)
  loc_1CB19F4:     Set var_2964 = var_2968(CInt(&H6B))
  loc_1CB19FA:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2900))))
  loc_1CB1A11:     Proc_6_17_EAAE40(var_2998)
  loc_1CB1A21:     Set var_29CC = var_29D0(CInt(&H6C))
  loc_1CB1A27:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2968))))
  loc_1CB1A3E:     Proc_6_17_EAAE40(var_2A00)
  loc_1CB1A4E:     Set var_2A34 = var_2A38(CInt(&H6D))
  loc_1CB1A54:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_29D0))))
  loc_1CB1A6B:     Proc_6_17_EAAE40(var_2A68)
  loc_1CB1A7B:     Set var_2A9C = var_2AA0(CInt(&H6E))
  loc_1CB1A81:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2A38))))
  loc_1CB1A98:     Proc_6_17_EAAE40(var_2AD0)
  loc_1CB1AA8:     Set var_2B04 = var_2B08(CInt(&H6F))
  loc_1CB1AAE:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2AA0))))
  loc_1CB1AC5:     Proc_6_17_EAAE40(var_2B38)
  loc_1CB1AD5:     Set var_2B6C = var_2B70(CInt(&H70))
  loc_1CB1ADB:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2B08))))
  loc_1CB1AF2:     Proc_6_17_EAAE40(var_2BA0)
  loc_1CB1B02:     Set var_2BD4 = var_2BD8(CInt(&H71))
  loc_1CB1B08:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2B70))))
  loc_1CB1B1F:     Proc_6_17_EAAE40(var_2C08)
  loc_1CB1B2F:     Set var_2C3C = var_2C40(CInt(&H72))
  loc_1CB1B35:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2BD8))))
  loc_1CB1B4C:     Proc_6_17_EAAE40(var_2C70)
  loc_1CB1B5C:     Set var_2CA4 = var_2CA8(CInt(&H73))
  loc_1CB1B62:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2C40))))
  loc_1CB1B79:     Proc_6_17_EAAE40(var_2CD8)
  loc_1CB1B89:     Set var_2D0C = var_2D10(CInt(&H74))
  loc_1CB1B8F:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2CA8))))
  loc_1CB1BA6:     Proc_6_17_EAAE40(var_2D40)
  loc_1CB1BB7:     Set var_2D74 = var_2D78(CInt(133))
  loc_1CB1BBD:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2D10))))
  loc_1CB1BD4:     Proc_6_17_EAAE40(var_2DA8)
  loc_1CB1BE6:      = CVar(Proc_6_38_E69628(CVar(var_2D78)))(var_2DDE).Value
  loc_1CB1C19:     Proc_6_17_EAAE40(var_2E50)
  loc_1CB1C25:     Set var_2E84 = IIf((var_2DDE = 1), "Y", "N")(var_2E86)
  loc_1CB1C2B:      = var_2E84.Value
  loc_1CB1C53:     var_2EE8 = IIf((var_2E86 = 1), "Y", "N")
  loc_1CB1C5E:     Proc_6_17_EAAE40(var_2EF8)
  loc_1CB1C70:      = var_2EE8(var_2F2E).Value
  loc_1CB1C98:     var_2F90 = IIf((var_2F2E = 1), "Y", "N")
  loc_1CB1CA3:     Proc_6_17_EAAE40(var_2FA0)
  loc_1CB1CAF:     Set var_2FD4 = var_2F90(var_2FD6)
  loc_1CB1CB5:      = var_2FD4.Value
  loc_1CB1CE8:     Proc_6_17_EAAE40(var_3048)
  loc_1CB1CFA:      = IIf((var_2FD6 = 1), "Y", "N")(var_307E).Value
  loc_1CB1D2D:     Proc_6_17_EAAE40(var_30F0)
  loc_1CB1D3F:      = IIf((var_307E = 1), "Y", "N")(var_3126).Value
  loc_1CB1D72:     Proc_6_17_EAAE40(var_3198)
  loc_1CB1D82:     Set var_31CC = var_31D0(CInt(&H7C))
  loc_1CB1D88:     Call 0.Method_Cmd_Click0 (IIf((var_3126 = 1), "Y", "N"))
  loc_1CB1D9F:     Proc_6_17_EAAE40(var_3200)
  loc_1CB1DAF:     Set var_3234 = var_3238(CInt(&H7D))
  loc_1CB1DB5:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_31D0))))
  loc_1CB1DCC:     Proc_6_17_EAAE40(var_3268)
  loc_1CB1DDC:     Set var_329C = var_32A0(CInt(&H7E))
  loc_1CB1DE2:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_3238))))
  loc_1CB1DF3:     var_32C0 = CVar(Proc_6_38_E69628(CVar(var_32A0))) 'String
  loc_1CB1DF9:     Proc_6_17_EAAE40(var_32D0)
  loc_1CB1E0D:     Set var_3304 = var_3308(CInt(139))
  loc_1CB1E13:     Call 0.Method_Cmd_Click0 (var_330C)
  loc_1CB1E1B:     var_32C0 = var_3308.Tag
  loc_1CB1E29:     Proc_6_17_EAAE40(var_332C)
  loc_1CB1E38:     Set var_3360 = var_3364(140)
  loc_1CB1E3E:     Call 0.Method_Cmd_Click0 (CVar(var_330C))
  loc_1CB1E5C:     Set var_33B8 = var_33BC(141)
  loc_1CB1E62:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1E82:     Set var_3410 = var_3414(CInt(142))
  loc_1CB1E88:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1EA8:     Set var_3468 = var_346C(CInt(143))
  loc_1CB1EAE:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1ECE:     Set var_34C0 = var_34C4(CInt(144))
  loc_1CB1ED4:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1EF2:     Set var_3518 = var_351C(145)
  loc_1CB1EF8:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1F16:     Set var_3570 = var_3574(146)
  loc_1CB1F1C:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1F3C:     Set var_35C8 = var_35CC(CInt(147))
  loc_1CB1F42:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1F62:     Set var_3620 = var_3624(CInt(148))
  loc_1CB1F68:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1F86:     Set var_3678 = var_367C(149)
  loc_1CB1F8C:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1FAA:     Set var_36D0 = var_36D4(150)
  loc_1CB1FB0:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1FCE:     Set var_3728 = var_372C(151)
  loc_1CB1FD4:     Call 0.Method_Cmd_Click0 ()
  loc_1CB1FFC:     var_94 = "Insert Into Enviro(AdvanceAc,Loan_Ac,Salary_Ac,PF_Limit,PF_Employee,PF_Employer,ESI_Limit,ESI_Employee,CashPurchAc,variation,VariationBefore,RoomChrgDueAc,RoomTaxDueAc,Rate1,Rate2,Rate3,Rate4,Rate5,DefCompGroup,ArrDateTimeEdit,CashPayType,RoomPayType,OutletDiscAc,OutletRoundAc,CommissionAc,CalcMethod,CHeckout,checkoutvar,SITECODE,Bill_Footer,Bill_Header,CancellationAC,HallRoundOff,HallDiscAC,OutDoorCatering,CatalogLimit,OutDoorSaleAC,IndoorSaleAC," & "OutDoorpartyAC,IndoorPartyAC,TaxSummary,KOTPrinting,KOTPrintEdited,TokenPrint,KOTOutletSelection,DummyTravelAc,LogSite_Code,BookingPartyAc,RoomChrgPostingType,PlanMastType,PostComplimentaryBills,PostRoomDiscSeparately,POSSaleRevenueBifercation,PostPOSDiscSeparately,AllowRoomSettlement,SplitYN,AutoSplitYN,SmartPurchaseOrder,SMSOption,MobileNo,MobileSet,SMSMessage,AdvanceRRoomRent,BillAmendMode,AmendRevenue,RoomRentBefChkOut,RoomRentChkOutPost,PlanSelectionBasedOn,FomBillCopies,PlanCalc,PrintRcpt,RoomCheckOutClearanceYN,RcptPrinting,POSBillAtNightAudit,KOTAtNightAudit,NoShowAtNightAudit,BookingSlipFooter1,BookingSlipFooter2,CashCardDebitAc,CashCardCreditAc,CashCardSecurityAc,OrderBookingPrintType,"
  loc_1CB2003:     var_98 = var_94 & "BillPrintingSummerised,PurchaseGodown,RptCashierSettlementAllUser,POSSaleBillEditLog,GuestChargesDeleteLog,GRCMandatory,RoomRateEditable,RoomIncTaxEditable,RoomServiceChargeEditable,CreditCardInfoMandatory,NCKOTPercentage,KOTHeader1,KOTHeader2,KOTHeader3,KOTHeader4,GAppCompYear,GMonthConsidered,GWorkingDaysInAMonth,GDaysSalary,ReqCompWise,AcFieldAlterable,ExpMfdDateInMR,RateEditableInPO,RateEditableInStockIssue,BarCodeFeatureInPurchase,ReprintingOnSaleBillYN,HideSettledBillsOnSaleBillYN,ExciseInvoiceTaxStru,PurchaseTaxVAT,SaleTaxVAT,AddModifyEntryInBackDate"
  loc_1CB200A:     var_9C = var_98 & "ResInstruction1,ResInstruction2,ResInstruction3,ResInstruction4,ResInstruction5,ResInstruction6,ResInstruction7,ResInstruction8,ResInstruction9,ResInstruction10,ResInstruction11,ResInstruction12,FPInstruction1,FPInstruction2,FPInstruction3,FPInstruction4,FPInstruction5,FPInstruction6,FPInstruction7,FPInstruction8,FPInstruction9,FPInstruction10,FPInstruction11,FPInstruction12,PlanTariffNarration"
  loc_1CB2011:     var_A0 = var_9C & "ESIBasic,ESIDA,ESIHRA,ESIConvey,ESIOther,ESILTA,KitchenStockReport,ItemRateInMRBasedOn,ItemRateInPurchaseBillBasedOn,SmartCardItem,CoversMandatory,MobileNoMandatory,RRIncTaxDefault,RRSerChrgDefault,ShowTitleBar,ShowMenuBar,ShowSubMenuBar,ShowShortCutsBar,ServiceTaxOnServiceChargeYN,SeperateReservationLetterAsPerStatusYN,ReservationExpandOnSaveYN,BlockInvalidTarrifIncTaxYN) "
  loc_1CB2018:     var_B0 = var_A0 & " Values ('"
  loc_1CB201F:     var_B4 = var_B0 & var_AC
  loc_1CB2026:     var_C4 = var_B4 & "','"
  loc_1CB202D:     var_C8 = var_C4 & var_C0
  loc_1CB2034:     var_D8 = var_C8 & "','"
  loc_1CB203B:     var_DC = var_D8 & var_D4
  loc_1CB2042:     var_EC = var_DC & "',"
  loc_1CB204A:     var_F0 = CStr(var_FC.Text)
  loc_1CB204E:     var_F4 = var_EC & var_F0
  loc_1CB2055:     var_104 = var_F4 & ","
  loc_1CB205D:     var_108 = CStr(var_114.Text)
  loc_1CB2061:     var_10C = var_104 & var_108
  loc_1CB2068:     var_11C = var_10C & ","
  loc_1CB2074:     var_124 = var_11C & CStr(var_12C.Text)
  loc_1CB207B:     var_134 = var_124 & ","
  loc_1CB2083:     var_138 = CStr(var_144.Text)
  loc_1CB2087:     var_13C = var_134 & var_138
  loc_1CB208E:     var_14C = var_13C & ","
  loc_1CB2096:     var_150 = CStr(var_15C.Tag)
  loc_1CB209A:     var_154 = var_14C & var_150
  loc_1CB20A1:     var_164 = var_154 & ",'"
  loc_1CB20B6:     var_188 = CStr(var_180)
  loc_1CB20BA:     var_18C = var_164 & var_160 & "','" & var_188
  loc_1CB20C1:     var_1A8 = var_18C & "','"
  loc_1CB20CC:     var_1B0 = var_1A8 & CStr(var_1A4)
  loc_1CB20D3:     var_1C0 = var_1B0 & "','"
  loc_1CB20DA:     var_1C4 = var_1C0 & var_1BC
  loc_1CB20E1:     var_1D4 = var_1C4 & "','"
  loc_1CB20E8:     var_1D8 = var_1D4 & var_1D0
  loc_1CB20EF:     var_1F4 = var_1D8 & "','"
  loc_1CB20F5:     var_1F8 = Proc_6_38_E69628(var_1F0)
  loc_1CB20F9:     var_1FC = var_1F4 & var_1F8
  loc_1CB2100:     var_218 = var_1FC & "','"
  loc_1CB2106:     var_21C = Proc_6_38_E69628(var_214)
  loc_1CB210A:     var_220 = var_218 & var_21C
  loc_1CB2111:     var_23C = var_220 & "','"
  loc_1CB2117:     var_240 = Proc_6_38_E69628(var_238)
  loc_1CB211B:     var_244 = var_23C & var_240
  loc_1CB2122:     var_260 = var_244 & "','"
  loc_1CB2128:     var_264 = Proc_6_38_E69628(var_25C)
  loc_1CB212C:     var_268 = var_260 & var_264
  loc_1CB2133:     var_284 = var_268 & "','"
  loc_1CB2139:     var_288 = Proc_6_38_E69628(var_280)
  loc_1CB213D:     var_28C = var_284 & var_288
  loc_1CB2144:     var_2AC = var_28C & "','"
  loc_1CB214A:     var_2B0 = Proc_6_38_E69628(var_2A8)
  loc_1CB214E:     var_2B4 = var_2AC & var_2B0
  loc_1CB2155:     var_2FC = CVar(var_2B4 & "','") 'String
  loc_1CB215B:     var_30C = var_2FC & var_2EC 
  loc_1CB215F:     var_31C = "','"
  loc_1CB216B:     var_358 = CVar(Proc_6_38_E69628(var_348)) 'String
  loc_1CB216E:     var_368 = var_30C & var_31C & var_358 
  loc_1CB2172:     var_378 = "','"
  loc_1CB2177:     var_388 = var_368 & var_378 
  loc_1CB21A7:     var_47C = var_388 & CVar(Proc_6_38_E69628(CVar(var_394))) & "','" & CVar(Proc_6_38_E69628(CVar(var_3F0))) & "','" & CVar(Proc_6_38_E69628(CVar(var_44C))) 
  loc_1CB21DD:     var_588 = var_47C & "','" & CVar(Proc_6_38_E69628(CVar(var_4A8))) & "','" & CVar(Proc_6_38_E69628(CVar(var_500))) & "','" & Trim(CVar(var_558)) 
  loc_1CB2233:     var_6D8 = var_588 & "','" & CVar(CStr(var_5C0)) & "','" & CVar(MemVar_1F95078) & "','" & CVar(var_64C) & "','" & CVar(var_698) & "','" 
  loc_1CB2273:     var_804 = var_6D8 & CVar(Proc_6_38_E69628(CVar(var_6E4))) & "','" & CVar(var_740) & "','" & CVar(var_78C) & "','" & Trim(CVar(var_7D4)) 
  loc_1CB22AC:     var_910 = var_804 & "','" & CVar(Proc_6_38_E69628(CVar(var_82C))) & "','" & CVar(Proc_6_38_E69628(CVar(var_888))) & "','" & CVar(Proc_6_38_E69628(CVar(var_8E0))) 
  loc_1CB22E5:     var_A1C = var_910 & "','" & CVar(Proc_6_38_E69628(CVar(var_93C))) & "','" & CVar(Proc_6_38_E69628(CVar(var_994))) & "','" & CVar(Proc_6_38_E69628(CVar(var_9EC))) 
  loc_1CB231E:     var_B84 = var_A1C & "','" & CVar(Proc_6_38_E69628(CVar(var_A74))) & "','" & CVar(Proc_6_38_E69628(CVar(var_AFC))) & "','" & CVar(Proc_6_38_E69628(CVar(var_B54))) 
  loc_1CB2357:     var_C78 = var_B84 & "','" & CVar(Proc_6_38_E69628(CVar(var_BAC))) & "','" & CVar(Proc_6_38_E69628(CVar(var_C08))) & "','" & CVar(MemVar_1F95078) 
  loc_1CB2399:     var_D9C = var_C78 & "','" & CVar(var_CA4) & "','" & CVar(Proc_6_38_E69628(CVar(var_CEC))) & "','" & CVar(Proc_6_38_E69628(&H2E)) & "','" 
  loc_1CB23C9:     var_E84 = var_D9C & CVar(Proc_6_38_E69628(CVar(var_DA4))) & "','" & CVar(Proc_6_38_E69628(CVar(var_DFC))) & "','" & CVar(Proc_6_38_E69628(CVar(var_E54))) 
  loc_1CB2402:     var_F80 = var_E84 & "','" & CVar(Proc_6_38_E69628(CVar(var_EAC))) & "','" & CVar(var_F08) & "','" & CVar(Proc_6_38_E69628(CVar(var_F50))) 
  loc_1CB2438:     var_10C8 = var_F80 & "','" & IIf((CLng(var_FA6) = 1), "Y", "N") & "','" & CVar(Proc_6_38_E69628(CVar(var_1040))) & "','" & CVar(Proc_6_38_E69628(CVar(var_1098))) 
  loc_1CB2471:     var_11D0 = var_10C8 & "','" & CVar(Proc_6_38_E69628(CVar(var_10F0))) & "','" & CVar(Proc_6_38_E69628(CVar(var_1148))) & "','" & CVar(Proc_6_38_E69628(CVar(var_11A0))) 
  loc_1CB24AA:     var_12E0 = var_11D0 & "','" & CVar(Proc_6_38_E69628(CVar(var_11FC))) & "','" & CVar(Proc_6_38_E69628(CVar(var_1254))) & "','" & CVar(Proc_6_38_E69628(CVar(var_12B0))) 
  loc_1CB24E3:     var_13E8 = var_12E0 & "','" & CVar(Proc_6_38_E69628(CVar(var_1308))) & "','" & CVar(Proc_6_38_E69628(CVar(var_1360))) & "','" & CVar(Proc_6_38_E69628(CVar(var_13B8))) 
  loc_1CB2519:     var_14F0 = var_13E8 & "'," & var_1430 & ",'" & CVar(Proc_6_38_E69628(CVar(var_1468))) & "','" & CVar(Proc_6_38_E69628(CVar(var_14C0))) 
  loc_1CB253F:     var_15A0 = var_14F0 & "','" & CVar(Proc_6_38_E69628(CVar(var_1518))) & "','" & CVar(Proc_6_38_E69628(CVar(var_1570))) 
  loc_1CB2578:     var_16A8 = var_15A0 & "','" & CVar(Proc_6_38_E69628(CVar(var_15C8))) & "','" & CVar(Proc_6_38_E69628(CVar(var_1620))) & "','" & CVar(Proc_6_38_E69628(CVar(var_1678))) 
  loc_1CB25B1:     var_17B4 = var_16A8 & "','" & CVar(Proc_6_38_E69628(CVar(var_16D0))) & "','" & CVar(Proc_6_38_E69628(CVar(var_1728))) & "','" & CVar(Proc_6_38_E69628(CVar(var_1784))) 
  loc_1CB25EA:     var_18C4 = var_17B4 & "','" & CVar(Proc_6_38_E69628(CVar(var_17E0))) & "','" & CVar(Proc_6_38_E69628(CVar(var_183C))) & "','" & CVar(Proc_6_38_E69628(CVar(var_1894))) 
  loc_1CB2623:     var_19D0 = var_18C4 & "','" & CVar(Proc_6_38_E69628(CVar(var_18EC))) & "','" & CVar(Proc_6_38_E69628(CVar(var_1948))) & "','" & CVar(Proc_6_38_E69628(CVar(var_19A0))) 
  loc_1CB2659:     var_1AE8 = var_19D0 & "','" & CVar(Proc_6_38_E69628(CVar(var_19F8))) & "','" & CVar(Proc_6_38_E69628(CVar(var_1A50))) & "','" & Left(CVar(Proc_6_38_E69628(CVar(var_1AA8))), 1) 
  loc_1CB2679:     var_1BB8 = var_1AE8 & "','" & Left(CVar(Proc_6_38_E69628(CVar(var_1B10))), 1) & "','" & Left(CVar(Proc_6_38_E69628(CVar(var_1B78))), 1) 
  loc_1CB2699:     var_1C88 = var_1BB8 & "','" & Left(CVar(Proc_6_38_E69628(CVar(var_1BE0))), 1) & "','" & Left(CVar(Proc_6_38_E69628(CVar(var_1C48))), 1) 
  loc_1CB2701:     var_1E80 = var_1C88 & "'," & CVar(var_38DC) & "," & var_1D1C & "," & var_1D74 & "," & var_1DCC & "," & var_1E24 & "," & CVar(var_1EA8.Text) 
  loc_1CB2729:     var_1F18 = var_1E80 & "," & CVar(var_1EF4.Text) & "," & CVar(var_1F40.Text) 
  loc_1CB2763:     var_2014 = var_1F18 & "," & CVar(var_38FC) & ",'" & CVar(Proc_6_38_E69628(var_1F9C)) & "','" & CVar(Proc_6_38_E69628(CVar(var_1FE4))) 
  loc_1CB279C:     var_211C = var_2014 & "','" & CVar(Proc_6_38_E69628(CVar(var_203C))) & "','" & CVar(Proc_6_38_E69628(CVar(var_2094))) & "','" & CVar(Proc_6_38_E69628(CVar(var_20EC))) 
  loc_1CB27D5:     var_2224 = var_211C & "','" & CVar(Proc_6_38_E69628(CVar(var_2144))) & "','" & CVar(Proc_6_38_E69628(CVar(var_219C))) & "','" & CVar(Proc_6_38_E69628(CVar(var_21F4))) 
  loc_1CB280E:     var_2338 = var_2224 & "','" & CVar(Proc_6_38_E69628(CVar(var_2250))) & "','" & CVar(Proc_6_38_E69628(CVar(var_22AC))) & "','" & CVar(Proc_6_38_E69628(CVar(var_2308))) 
  loc_1CB2851:     var_24C8 = var_2338 & "','" & CVar(Proc_6_38_E69628(CVar(var_2360))) & "'," & var_23E8 & "," & var_2450 & "," & var_24B8 
  loc_1CB2861:     var_2530 = var_24C8 & "," & var_2520 
  loc_1CB2871:     var_2598 = var_2530 & "," & var_2588 
  loc_1CB2881:     var_2600 = var_2598 & "," & var_25F0 
  loc_1CB2891:     var_2668 = var_2600 & "," & var_2658 
  loc_1CB28A1:     var_26D0 = var_2668 & "," & var_26C0 
  loc_1CB28B1:     var_2738 = var_26D0 & "," & var_2728 
  loc_1CB28C1:     var_27A0 = var_2738 & "," & var_2790 
  loc_1CB28D1:     var_2808 = var_27A0 & "," & var_27F8 
  loc_1CB28E1:     var_2870 = var_2808 & "," & var_2860 
  loc_1CB28F1:     var_28D8 = var_2870 & "," & var_28C8 
  loc_1CB2901:     var_2940 = var_28D8 & "," & var_2930 
  loc_1CB2911:     var_29A8 = var_2940 & "," & var_2998 
  loc_1CB2921:     var_2A10 = var_29A8 & "," & var_2A00 
  loc_1CB2931:     var_2A78 = var_2A10 & "," & var_2A68 
  loc_1CB2941:     var_2AE0 = var_2A78 & "," & var_2AD0 
  loc_1CB2951:     var_2B48 = var_2AE0 & "," & var_2B38 
  loc_1CB2961:     var_2BB0 = var_2B48 & "," & var_2BA0 
  loc_1CB2971:     var_2C18 = var_2BB0 & "," & var_2C08 
  loc_1CB2981:     var_2C80 = var_2C18 & "," & var_2C70 
  loc_1CB2991:     var_2CE8 = var_2C80 & "," & var_2CD8 
  loc_1CB29A1:     var_2D50 = var_2CE8 & "," & var_2D40 
  loc_1CB29B1:     var_2DB8 = var_2D50 & "," & var_2DA8 
  loc_1CB2A21:     var_3210 = var_2DB8 & "," & var_2E50 & "," & var_2EF8 & "," & var_2FA0 & "," & var_3048 & "," & var_30F0 & "," & var_3198 & "," & var_3200 
  loc_1CB2A77:     var_33EC = var_3210 & "," & var_3268 & "," & var_32D0 & "," & var_332C & ",'" & CVar(Proc_6_38_E69628(CVar(var_3364))) & "','" & CVar(Proc_6_38_E69628(CVar(var_33BC))) 
  loc_1CB2A9A:     var_348C = CVar(Proc_6_38_E69628(CVar(var_346C))) 'String
  loc_1CB2AB0:     var_34F4 = var_33EC & "','" & CVar(Proc_6_38_E69628(CVar(var_3414))) & "','" & var_348C & "','" & CVar(Proc_6_38_E69628(CVar(var_34C4))) 
  loc_1CB2AB9:     var_3514 = var_34F4 & "','" 
  loc_1CB2AD3:     var_3594 = CVar(Proc_6_38_E69628(CVar(var_3574))) 'String
  loc_1CB2AF2:     var_361C = var_3514 & CVar(Proc_6_38_E69628(CVar(var_351C))) & "','" & var_3594 & "','" & CVar(Proc_6_38_E69628(CVar(var_35CC))) & "','" 
  loc_1CB2B0C:     var_369C = CVar(Proc_6_38_E69628(CVar(var_367C))) 'String
  loc_1CB2B22:     var_3704 = var_361C & CVar(Proc_6_38_E69628(CVar(var_3624))) & "','" & var_369C & "','" & CVar(Proc_6_38_E69628(CVar(var_36D4))) 
  loc_1CB2B3E:     var_377C = var_3704 & "','" & CVar(Proc_6_38_E69628(CVar(var_372C))) & "')" 
  loc_1CB2B4C:     unk_554C86.Execute CStr(var_377C), var_37A0, -1
  loc_1CB32FF:   Else
  loc_1CB330D:     Set var_A4 = var_A8(CInt(4))
  loc_1CB3313:     Call 0.Method_Cmd_Click0 (var_94)
  loc_1CB331B:     var_37A4 = var_A8.Tag
  loc_1CB332E:     Set var_B8 = var_BC(CInt(3))
  loc_1CB3334:     Call 0.Method_Cmd_Click0 (var_9C)
  loc_1CB333C:      = var_BC.Tag
  loc_1CB334F:     Set var_CC = var_D0(CInt(2))
  loc_1CB3355:     Call 0.Method_Cmd_Click0 (var_B0)
  loc_1CB335D:      = var_D0.Tag
  loc_1CB3370:     Set var_E0 = var_E4(CInt(7))
  loc_1CB3376:     Call 0.Method_Cmd_Click0 (var_C4)
  loc_1CB337E:      = var_E4.Text
  loc_1CB338B:     var_37AC = Val(var_C4)
  loc_1CB339C:     Set var_F8 = var_FC(CInt(8))
  loc_1CB33A2:     Call 0.Method_Cmd_Click0 (var_DC)
  loc_1CB33B7:     var_37B4 = Val(var_DC)
  loc_1CB33C8:     Set var_110 = var_114(CInt(9))
  loc_1CB33CE:     Call 0.Method_Cmd_Click0 (var_F4)
  loc_1CB33E3:     var_37BC = Val(var_F4)
  loc_1CB33F4:     Set var_128 = var_12C(CInt(5))
  loc_1CB33FA:     Call 0.Method_Cmd_Click0 (var_10C)
  loc_1CB340F:     var_37C4 = Val(var_10C)
  loc_1CB3420:     Set var_140 = var_144(CInt(&H1E))
  loc_1CB3426:     Call 0.Method_Cmd_Click0 (var_124)
  loc_1CB3441:     Set var_158 = var_15C(CInt(6))
  loc_1CB3447:     Call 0.Method_Cmd_Click0 (var_13C)
  loc_1CB344F:      = var_15C.Text
  loc_1CB345C:     var_37CC = Val(var_13C)
  loc_1CB346D:     Set var_16C = var_170(CInt(&HC))
  loc_1CB3473:     Call 0.Method_Cmd_Click0 (var_154)
  loc_1CB348B:     Set var_190 = var_194(CInt(&HB))
  loc_1CB3491:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3499:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE80
  loc_1CB34AD:     Set var_1B4 = var_1B8(CInt(&H3D))
  loc_1CB34B3:     Call 0.Method_Cmd_Click0 ()
  loc_1CB34BB:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE5C
  loc_1CB34CF:     Set var_1C8 = var_1CC(CInt(0))
  loc_1CB34D5:     Call 0.Method_Cmd_Click0 ()
  loc_1CB34DD:     var_1F0 = CVar(var_1CC) 'Address
  loc_1CB34E4:     var_214 = Trim(var_1F0)
  loc_1CB34F4:     Set var_1DC = var_1E0(CInt(1))
  loc_1CB34FA:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3502:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFD58
  loc_1CB3519:     Set var_200 = var_204(CInt(&HB))
  loc_1CB351F:     Call 0.Method_Cmd_Click0 (var_1B0)
  loc_1CB3527:      = var_204.Tag
  loc_1CB353A:     Set var_224 = var_228(CInt(1))
  loc_1CB3540:     Call 0.Method_Cmd_Click0 (var_1BC)
  loc_1CB3548:      = var_228.Tag
  loc_1CB3558:     Set var_248 = var_24C(CInt(&H14))
  loc_1CB355E:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3566:     var_388 = CVar(var_24C) 'Address
  loc_1CB357D:     Set var_26C = var_270(CInt(&H15))
  loc_1CB3583:     Call 0.Method_Cmd_Click0 ()
  loc_1CB35A2:     Set var_290 = var_294(CInt(&H13))
  loc_1CB35A8:     Call 0.Method_Cmd_Click0 ()
  loc_1CB35C7:     Set var_2B8 = var_2BC(CInt(&H12))
  loc_1CB35CD:     Call 0.Method_Cmd_Click0 ()
  loc_1CB35EC:     Set var_330 = var_334(CInt(&H16))
  loc_1CB35F2:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3614:     Set var_38C = var_390(CInt(&H11))
  loc_1CB361A:     Call 0.Method_Cmd_Click0 (var_1C0)
  loc_1CB3622:      = var_390.Tag
  loc_1CB3632:     Set var_3E8 = var_3EC(CInt(&H10))
  loc_1CB3638:     Call 0.Method_Cmd_Click0 ()
  loc_1CB365F:     Set var_444 = var_448(CInt(&H17))
  loc_1CB3665:     Call 0.Method_Cmd_Click0 (var_1C4)
  loc_1CB366D:      = var_448.Tag
  loc_1CB368E:     Set var_4A0 = var_4A4(CInt(&H1B))
  loc_1CB3694:     Call 0.Method_Cmd_Click0 (var_1D0)
  loc_1CB369C:      = var_4A4.Tag
  loc_1CB36BD:     Set var_4FC = var_500(CInt(&H18))
  loc_1CB36C3:     Call 0.Method_Cmd_Click0 (var_1D4)
  loc_1CB36CB:      = var_500.Tag
  loc_1CB36EC:     Set var_554 = var_558(CInt(&H19))
  loc_1CB36F2:     Call 0.Method_Cmd_Click0 (var_1D8)
  loc_1CB36FA:      = var_558.Tag
  loc_1CB371B:     Set var_5AC = var_5B0(CInt(&H1A))
  loc_1CB3721:     Call 0.Method_Cmd_Click0 (var_1F4)
  loc_1CB3729:      = var_5B0.Tag
  loc_1CB3748:     Set var_644 = var_648(&H1D)
  loc_1CB374E:     Call 0.Method_Cmd_Click0 (var_1F8)
  loc_1CB3756:      = var_648.Text
  loc_1CB3766:     Set var_690 = var_694(CInt(&H1C))
  loc_1CB376C:     Call 0.Method_Cmd_Click0 ()
  loc_1CB378E:     Set var_6DC = var_6E0(CInt(&H1F))
  loc_1CB3794:     Call 0.Method_Cmd_Click0 (var_1FC)
  loc_1CB379C:      = var_6E0.Tag
  loc_1CB37BD:     Set var_738 = var_73C(CInt(&H22))
  loc_1CB37C3:     Call 0.Method_Cmd_Click0 (var_218)
  loc_1CB37CB:      = var_73C.Tag
  loc_1CB37DE:     Set var_784 = var_788(CInt(&H21))
  loc_1CB37E4:     Call 0.Method_Cmd_Click0 (var_21C)
  loc_1CB37EC:      = var_788.Tag
  loc_1CB37FC:     Set var_7D0 = var_7D4(CInt(&HD))
  loc_1CB3802:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3821:     Set var_828 = var_82C(CInt(&HE))
  loc_1CB3827:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3846:     Set var_880 = var_884(CInt(&HF))
  loc_1CB384C:     Call 0.Method_Cmd_Click0 ()
  loc_1CB386E:     Set var_8DC = var_8E0(CInt(&H24))
  loc_1CB3874:     Call 0.Method_Cmd_Click0 (var_220)
  loc_1CB387C:      = var_8E0.Tag
  loc_1CB389D:     Set var_934 = var_938(CInt(&H23))
  loc_1CB38A3:     Call 0.Method_Cmd_Click0 (var_23C)
  loc_1CB38AB:      = var_938.Tag
  loc_1CB38CC:     Set var_990 = var_994(CInt(&H25))
  loc_1CB38D2:     Call 0.Method_Cmd_Click0 (var_240)
  loc_1CB38DA:      = var_994.Tag
  loc_1CB38FB:     Set var_9E8 = var_9EC(CInt(&H26))
  loc_1CB3901:     Call 0.Method_Cmd_Click0 (var_244)
  loc_1CB3909:      = var_9EC.Tag
  loc_1CB3927:     Set var_A70 = var_A74(CInt(&H27))
  loc_1CB392D:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3956:     Set var_AF8 = var_AFC(130)
  loc_1CB395C:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3986:     Set var_B50 = var_B54(CInt(&H28))
  loc_1CB398C:     Call 0.Method_Cmd_Click0 ()
  loc_1CB39AB:     Set var_BA8 = var_BAC(CInt(&H2A))
  loc_1CB39B1:     Call 0.Method_Cmd_Click0 ()
  loc_1CB39CF:     Set var_C00 = var_C04(135)
  loc_1CB39D5:     Call 0.Method_Cmd_Click0 ()
  loc_1CB39F7:     Set var_C9C = var_CA0(CInt(&H2B))
  loc_1CB39FD:     Call 0.Method_Cmd_Click0 (var_260)
  loc_1CB3A05:      = var_CA0.Tag
  loc_1CB3A26:     Set var_CE8 = var_CEC(CInt(&H2C))
  loc_1CB3A2C:     Call 0.Method_Cmd_Click0 (var_264)
  loc_1CB3A34:      = var_CEC.Tag
  loc_1CB3A44:     Set var_DA0 = var_DA4(CInt(&H2D))
  loc_1CB3A4A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3A69:     Set var_DF8 = var_DFC(CInt(&H2E))
  loc_1CB3A6F:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3A8E:     Set var_E50 = var_E54(CInt(&H2F))
  loc_1CB3A94:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3AB3:     Set var_EA8 = var_EAC(CInt(&H7A))
  loc_1CB3AB9:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3AD7:     Set var_F00 = var_F04(129)
  loc_1CB3ADD:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3AFD:     Set var_F4C = var_F50(CInt(128))
  loc_1CB3B03:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3B25:     Set var_FA4 = var_103C(CInt(&H30))
  loc_1CB3B2B:     Call 0.Method_Cmd_Click0 (var_268)
  loc_1CB3B33:      = var_103C.Text
  loc_1CB3B43:     Set var_1040 = var_1094(CInt(&H31))
  loc_1CB3B49:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3B6A:      = (var_FA6).Value
  loc_1CB3BA6:     Set var_10EC = var_10F0(CInt(&H32))
  loc_1CB3BAC:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3BCB:     Set var_1144 = var_1148(CInt(&H34))
  loc_1CB3BD1:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3BF0:     Set var_119C = var_11A0(CInt(&H33))
  loc_1CB3BF6:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3C15:     Set var_11F4 = var_11F8(CInt(&H35))
  loc_1CB3C1B:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3C3A:     Set var_1250 = var_1254(CInt(&H36))
  loc_1CB3C40:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3C62:     Set var_12A8 = var_12AC(CInt(&H37))
  loc_1CB3C68:     Call 0.Method_Cmd_Click0 (var_284)
  loc_1CB3C70:      = var_12AC.Tag
  loc_1CB3C8E:     Set var_1304 = var_1308(CInt(&H39))
  loc_1CB3C94:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3CB6:     Set var_135C = var_1360(CInt(&H38))
  loc_1CB3CBC:     Call 0.Method_Cmd_Click0 (var_288)
  loc_1CB3CC4:      = var_1360.Tag
  loc_1CB3CE2:     Set var_13B4 = var_13B8(CInt(&H3A))
  loc_1CB3CE8:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3D07:     Set var_140C = var_1410(CInt(&H3B))
  loc_1CB3D0D:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3D2B:     Set var_1464 = var_1468(138)
  loc_1CB3D31:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3D50:     Set var_14BC = var_14C0(CInt(&H3D))
  loc_1CB3D56:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3D65:     Proc_6_39_E7D3A0(var_15A0)
  loc_1CB3D75:     Set var_1514 = var_1518(CInt(&H3C))
  loc_1CB3D7B:     Call 0.Method_Cmd_Click0 (CVar(var_14C0))
  loc_1CB3D9A:     Set var_156C = var_1570(CInt(&H3E))
  loc_1CB3DA0:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3DC0:     Set var_15C4 = var_15C8(CInt(131))
  loc_1CB3DC6:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3DE5:     Set var_161C = var_1620(CInt(&H3F))
  loc_1CB3DEB:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3E0A:     Set var_1674 = var_1678(CInt(&H40))
  loc_1CB3E10:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3E2F:     Set var_16CC = var_16D0(CInt(&H5C))
  loc_1CB3E35:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3E54:     Set var_1724 = var_1728(CInt(&H41))
  loc_1CB3E5A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3E79:     Set var_177C = var_1780(CInt(&H42))
  loc_1CB3E7F:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3E9E:     Set var_17D8 = var_17DC(CInt(&H43))
  loc_1CB3EA4:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3EC6:     Set var_1834 = var_1838(CInt(&H44))
  loc_1CB3ECC:     Call 0.Method_Cmd_Click0 (var_28C)
  loc_1CB3ED4:      = var_1838.Tag
  loc_1CB3EF5:     Set var_1890 = var_1894(CInt(&H45))
  loc_1CB3EFB:     Call 0.Method_Cmd_Click0 (var_298)
  loc_1CB3F03:      = var_1894.Tag
  loc_1CB3F24:     Set var_18E8 = var_18EC(CInt(&H46))
  loc_1CB3F2A:     Call 0.Method_Cmd_Click0 (var_2AC)
  loc_1CB3F32:      = var_18EC.Tag
  loc_1CB3F50:     Set var_1940 = var_1944(CInt(&H47))
  loc_1CB3F56:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3F75:     Set var_199C = var_19A0(CInt(&H48))
  loc_1CB3F7B:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3F9D:     Set var_19F4 = var_19F8(CInt(&H49))
  loc_1CB3FA3:     Call 0.Method_Cmd_Click0 (var_2B0)
  loc_1CB3FAB:      = var_19F8.Tag
  loc_1CB3FBB:     Set var_1A4C = var_1A50(CInt(&H4A))
  loc_1CB3FC1:     Call 0.Method_Cmd_Click0 ()
  loc_1CB3FE0:     Set var_1AA4 = var_1AA8(CInt(&H55))
  loc_1CB3FE6:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4004:     Set var_1B0C = var_1B10(134)
  loc_1CB400A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4029:     Set var_1B74 = var_1B78(CInt(&H4B))
  loc_1CB402F:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4053:     Set var_1BDC = var_1BE0(CInt(&H77))
  loc_1CB4059:     Call 0.Method_Cmd_Click0 ()
  loc_1CB407D:     Set var_1C44 = var_1C48(CInt(&H78))
  loc_1CB4083:     Call 0.Method_Cmd_Click0 ()
  loc_1CB40A7:     Set var_1CAC = var_1CB0(CInt(&H79))
  loc_1CB40AD:     Call 0.Method_Cmd_Click0 ()
  loc_1CB40D1:     Set var_1CF8 = var_1CFC(CInt(&H58))
  loc_1CB40D7:     Call 0.Method_Cmd_Click0 ()
  loc_1CB40FE:     Set var_1D50 = var_1D54(CInt(&H4C))
  loc_1CB4104:     Call 0.Method_Cmd_Click0 (var_2B4)
  loc_1CB410C:      = var_1D54.Text
  loc_1CB4119:     var_38DC = Val(var_2B4)
  loc_1CB4127:     Set var_1DA8 = var_1DAC(CInt(&H4D))
  loc_1CB412D:     Call 0.Method_Cmd_Click0 (var_38DC)
  loc_1CB413C:     Proc_6_17_EAAE40(var_1E14)
  loc_1CB414C:     Set var_1E00 = var_1E04(CInt(&H4E))
  loc_1CB4152:     Call 0.Method_Cmd_Click0 (CVar(var_1DAC))
  loc_1CB4161:     Proc_6_17_EAAE40(var_1E80)
  loc_1CB4171:     Set var_1E58 = var_1E5C(CInt(&H4F))
  loc_1CB4177:     Call 0.Method_Cmd_Click0 (CVar(var_1E04))
  loc_1CB4186:     Proc_6_17_EAAE40(var_1F18)
  loc_1CB4196:     Set var_1EA4 = var_1EA8(CInt(&H50))
  loc_1CB419C:     Call 0.Method_Cmd_Click0 (CVar(var_1E5C))
  loc_1CB41A4:     var_1F84 = CVar(var_1EA8) 'Address
  loc_1CB41AB:     Proc_6_17_EAAE40(var_1F9C)
  loc_1CB41BE:     Set var_1EF0 = var_1EF4(CInt(&H51))
  loc_1CB41C4:     Call 0.Method_Cmd_Click0 (var_338)
  loc_1CB41CC:     var_1F84 = var_1EF4.Text
  loc_1CB41D9:     var_38E4 = Val(var_338)
  loc_1CB41EA:     Set var_1F3C = var_1F40(CInt(&H52))
  loc_1CB41F0:     Call 0.Method_Cmd_Click0 (var_394)
  loc_1CB4205:     var_38EC = Val(var_394)
  loc_1CB4216:     Set var_1F88 = var_1F8C(CInt(&H53))
  loc_1CB421C:     Call 0.Method_Cmd_Click0 (var_3F0)
  loc_1CB4231:     var_38F4 = Val(var_3F0)
  loc_1CB4242:     Set var_1FE0 = var_1FE4(CInt(&H54))
  loc_1CB4248:     Call 0.Method_Cmd_Click0 (var_44C)
  loc_1CB425D:     var_38FC = Val(var_44C)
  loc_1CB426B:     Set var_2038 = var_203C(CInt(&H56))
  loc_1CB4271:     Call 0.Method_Cmd_Click0 (var_38FC)
  loc_1CB4290:     Set var_2090 = var_2094(CInt(&H57))
  loc_1CB4296:     Call 0.Method_Cmd_Click0 ()
  loc_1CB42B5:     Set var_20E8 = var_20EC(CInt(&H59))
  loc_1CB42BB:     Call 0.Method_Cmd_Click0 ()
  loc_1CB42DA:     Set var_2140 = var_2144(CInt(&H75))
  loc_1CB42E0:     Call 0.Method_Cmd_Click0 ()
  loc_1CB42FF:     Set var_2198 = var_219C(CInt(&H76))
  loc_1CB4305:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4324:     Set var_21F0 = var_21F4(CInt(&H7B))
  loc_1CB432A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4349:     Set var_2248 = var_224C(CInt(&H7F))
  loc_1CB434F:     Call 0.Method_Cmd_Click0 ()
  loc_1CB436F:     Set var_22A4 = var_22A8(CInt(132))
  loc_1CB4375:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4397:     Set var_2300 = var_2304(CInt(&H5A))
  loc_1CB439D:     Call 0.Method_Cmd_Click0 (var_4A8)
  loc_1CB43A5:      = var_2304.Tag
  loc_1CB43C5:     Set var_235C = var_2360(136)
  loc_1CB43CB:     Call 0.Method_Cmd_Click0 (var_64C)
  loc_1CB43D3:      = var_2360.Tag
  loc_1CB43F3:     Set var_23B4 = var_23B8(137)
  loc_1CB43F9:     Call 0.Method_Cmd_Click0 (var_698)
  loc_1CB4401:      = var_23B8.Tag
  loc_1CB441F:     Set var_241C = var_2420(CInt(&H5B))
  loc_1CB4425:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4444:     Set var_2484 = var_2488(CInt(&H5D))
  loc_1CB444A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4461:     Proc_6_17_EAAE40(var_24C8)
  loc_1CB4471:     Set var_24EC = var_24F0(CInt(&H5E))
  loc_1CB4477:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2488))))
  loc_1CB448E:     Proc_6_17_EAAE40(var_2530)
  loc_1CB449E:     Set var_2554 = var_2558(CInt(&H5F))
  loc_1CB44A4:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_24F0))))
  loc_1CB44BB:     Proc_6_17_EAAE40(var_2598)
  loc_1CB44CB:     Set var_25BC = var_25C0(CInt(&H60))
  loc_1CB44D1:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2558))))
  loc_1CB44E8:     Proc_6_17_EAAE40(var_2600)
  loc_1CB44F8:     Set var_2624 = var_2628(CInt(&H61))
  loc_1CB44FE:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_25C0))))
  loc_1CB4515:     Proc_6_17_EAAE40(var_2668)
  loc_1CB4525:     Set var_268C = var_2690(CInt(&H62))
  loc_1CB452B:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2628))))
  loc_1CB4542:     Proc_6_17_EAAE40(var_26D0)
  loc_1CB4552:     Set var_26F4 = var_26F8(CInt(&H63))
  loc_1CB4558:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2690))))
  loc_1CB456F:     Proc_6_17_EAAE40(var_2738)
  loc_1CB457F:     Set var_275C = var_2760(CInt(&H64))
  loc_1CB4585:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_26F8))))
  loc_1CB459C:     Proc_6_17_EAAE40(var_27A0)
  loc_1CB45AC:     Set var_27C4 = var_27C8(CInt(&H65))
  loc_1CB45B2:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2760))))
  loc_1CB45C9:     Proc_6_17_EAAE40(var_2808)
  loc_1CB45D9:     Set var_282C = var_2830(CInt(&H66))
  loc_1CB45DF:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_27C8))))
  loc_1CB45F6:     Proc_6_17_EAAE40(var_2870)
  loc_1CB4606:     Set var_2894 = var_2898(CInt(&H67))
  loc_1CB460C:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2830))))
  loc_1CB4623:     Proc_6_17_EAAE40(var_28D8)
  loc_1CB4633:     Set var_28FC = var_2900(CInt(&H68))
  loc_1CB4639:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2898))))
  loc_1CB4650:     Proc_6_17_EAAE40(var_2940)
  loc_1CB4660:     Set var_2964 = var_2968(CInt(&H69))
  loc_1CB4666:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2900))))
  loc_1CB467D:     Proc_6_17_EAAE40(var_29A8)
  loc_1CB468D:     Set var_29CC = var_29D0(CInt(&H6A))
  loc_1CB4693:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2968))))
  loc_1CB46AA:     Proc_6_17_EAAE40(var_2A10)
  loc_1CB46BA:     Set var_2A34 = var_2A38(CInt(&H6B))
  loc_1CB46C0:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_29D0))))
  loc_1CB46D7:     Proc_6_17_EAAE40(var_2A78)
  loc_1CB46E7:     Set var_2A9C = var_2AA0(CInt(&H6C))
  loc_1CB46ED:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2A38))))
  loc_1CB4704:     Proc_6_17_EAAE40(var_2AE0)
  loc_1CB4714:     Set var_2B04 = var_2B08(CInt(&H6D))
  loc_1CB471A:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2AA0))))
  loc_1CB4731:     Proc_6_17_EAAE40(var_2B48)
  loc_1CB4741:     Set var_2B6C = var_2B70(CInt(&H6E))
  loc_1CB4747:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2B08))))
  loc_1CB475E:     Proc_6_17_EAAE40(var_2BB0)
  loc_1CB476E:     Set var_2BD4 = var_2BD8(CInt(&H6F))
  loc_1CB4774:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2B70))))
  loc_1CB478B:     Proc_6_17_EAAE40(var_2C18)
  loc_1CB479B:     Set var_2C3C = var_2C40(CInt(&H70))
  loc_1CB47A1:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2BD8))))
  loc_1CB47B8:     Proc_6_17_EAAE40(var_2C80)
  loc_1CB47C8:     Set var_2CA4 = var_2CA8(CInt(&H71))
  loc_1CB47CE:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2C40))))
  loc_1CB47E5:     Proc_6_17_EAAE40(var_2CE8)
  loc_1CB47F5:     Set var_2D0C = var_2D10(CInt(&H72))
  loc_1CB47FB:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2CA8))))
  loc_1CB4812:     Proc_6_17_EAAE40(var_2D50)
  loc_1CB4822:     Set var_2D74 = var_2D78(CInt(&H73))
  loc_1CB4828:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2D10))))
  loc_1CB483F:     Proc_6_17_EAAE40(var_2DB8)
  loc_1CB484F:     Set var_2DDC = var_2E84(CInt(&H74))
  loc_1CB4855:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2D78))))
  loc_1CB486C:     Proc_6_17_EAAE40(var_2E50)
  loc_1CB487D:     Set var_2F2C = var_2FD4(CInt(133))
  loc_1CB4883:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_2E84))))
  loc_1CB489A:     Proc_6_17_EAAE40(var_2EE8)
  loc_1CB48AC:      = CVar(Proc_6_38_E69628(CVar(var_2FD4)))(var_2DDE).Value
  loc_1CB48DF:     Proc_6_17_EAAE40(var_2F90)
  loc_1CB48EE:     Set var_3124 = var_31CC(140)
  loc_1CB48F4:     Call 0.Method_Cmd_Click0 (IIf((var_2DDE = 1), "Y", "N"))
  loc_1CB4912:     Set var_31D0 = var_3234(141)
  loc_1CB4918:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4938:     Set var_3238 = var_329C(CInt(142))
  loc_1CB493E:     Call 0.Method_Cmd_Click0 ()
  loc_1CB495E:     Set var_32A0 = var_3304(CInt(143))
  loc_1CB4964:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4984:     Set var_3308 = var_3360(CInt(144))
  loc_1CB498A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB49A8:     Set var_3364 = var_33B8(145)
  loc_1CB49AE:     Call 0.Method_Cmd_Click0 ()
  loc_1CB49CC:     Set var_33BC = var_3410(146)
  loc_1CB49D2:     Call 0.Method_Cmd_Click0 ()
  loc_1CB49F2:     Set var_3414 = var_3468(CInt(147))
  loc_1CB49F8:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4A18:     Set var_346C = var_34C0(CInt(148))
  loc_1CB4A1E:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4A3C:     Set var_34C4 = var_3518(149)
  loc_1CB4A42:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4A60:     Set var_351C = var_3570(150)
  loc_1CB4A66:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4A84:     Set var_3574 = var_35C8(151)
  loc_1CB4A8A:     Call 0.Method_Cmd_Click0 ()
  loc_1CB4AAB:      = (var_2E86).Value
  loc_1CB4ADE:     Proc_6_17_EAAE40(var_348C)
  loc_1CB4AF0:      = IIf((var_2E86 = 1), "Y", "N")(var_2F2E).Value
  loc_1CB4B23:     Proc_6_17_EAAE40(var_3514)
  loc_1CB4B35:      = IIf((var_2F2E = 1), "Y", "N")(var_2FD6).Value
  loc_1CB4B68:     Proc_6_17_EAAE40(var_3594)
  loc_1CB4B7A:      = IIf((var_2FD6 = 1), "Y", "N")(var_307E).Value
  loc_1CB4BAD:     Proc_6_17_EAAE40(var_361C)
  loc_1CB4BBF:      = IIf((var_307E = 1), "Y", "N")(var_3126).Value
  loc_1CB4BF2:     Proc_6_17_EAAE40(var_369C)
  loc_1CB4C02:     Set var_36D0 = var_36D4(CInt(&H7C))
  loc_1CB4C08:     Call 0.Method_Cmd_Click0 (IIf((var_3126 = 1), "Y", "N"))
  loc_1CB4C1F:     Proc_6_17_EAAE40(var_3704)
  loc_1CB4C2F:     Set var_3728 = var_372C(CInt(&H7D))
  loc_1CB4C35:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_36D4))))
  loc_1CB4C4C:     Proc_6_17_EAAE40(var_377C)
  loc_1CB4C5C:     Set var_37A4 = var_3970(CInt(&H7E))
  loc_1CB4C62:     Call 0.Method_Cmd_Click0 (CVar(Proc_6_38_E69628(CVar(var_372C))))
  loc_1CB4C73:     var_3990 = CVar(Proc_6_38_E69628(CVar(var_3970))) 'String
  loc_1CB4C79:     Proc_6_17_EAAE40(var_39A0)
  loc_1CB4C8D:     Set var_39C4 = var_39C8(CInt(139))
  loc_1CB4C93:     Call 0.Method_Cmd_Click0 (var_6E4)
  loc_1CB4C9B:     var_3990 = var_39C8.Tag
  loc_1CB4CAB:     var_39E8 = CVar(Proc_6_38_E69628(CVar(var_6E4))) 'String
  loc_1CB4CB1:     Proc_6_17_EAAE40(var_39F8)
  loc_1CB4CCA:     var_98 = "Update Enviro Set AdvanceAc='" & var_94
  loc_1CB4CDF:     var_B4 = var_98 & "',Loan_Ac='" & var_9C & "',Salary_Ac='"
  loc_1CB4CE6:     var_C0 = var_B4 & var_B0
  loc_1CB4CED:     var_C8 = var_C0 & "',PF_Limit="
  loc_1CB4CF5:     var_D4 = CStr(var_FC.Text)
  loc_1CB4CF9:     var_D8 = var_C8 & var_D4
  loc_1CB4D00:     var_E8 = var_D8 & ",PF_Employee="
  loc_1CB4D0C:     var_F0 = var_E8 & CStr(var_114.Text)
  loc_1CB4D1F:     var_108 = var_F0 & ",PF_Employer=" & CStr(var_12C.Text)
  loc_1CB4D26:     var_118 = var_108 & ",ESI_Limit="
  loc_1CB4D32:     var_120 = var_118 & CStr(var_144.Text)
  loc_1CB4D39:     var_130 = var_120 & ",Bill_Header='"
  loc_1CB4D40:     var_134 = var_130 & var_124
  loc_1CB4D5A:     var_150 = var_134 & "'," & "ESI_Employee=" & CStr(var_170.Tag)
  loc_1CB4D61:     var_160 = var_150 & ",CashPurchAc='"
  loc_1CB4D6F:     var_168 = var_160 & var_154 & "',Variation='"
  loc_1CB4D76:     var_184 = CStr(var_180)
  loc_1CB4D7A:     var_188 = var_168 & var_184
  loc_1CB4D81:     var_18C = var_188 & "',VariationBefore='"
  loc_1CB4D88:     var_1A8 = CStr(var_1A4)
  loc_1CB4D8C:     var_1AC = var_18C & var_1A8
  loc_1CB4D93:     var_238 = CVar(var_1AC & "',CHeckout='") 'String
  loc_1CB4D9D:     var_31C = "',checkoutvar='"
  loc_1CB4DA2:     var_280 = var_238 & var_214 & var_31C 
  loc_1CB4DAD:     var_2DC = var_280 & CVar(CStr(var_2A8)) 
  loc_1CB4DB1:     var_378 = "',RoomChrgDueAc='"
  loc_1CB4DB6:     var_2EC = var_2DC & var_378 
  loc_1CB4DBD:     var_2FC = CVar(var_1B0) 'String
  loc_1CB4DC9:     var_32C = var_2EC & var_2FC & "',RoomTaxDueAc='" 
  loc_1CB4DD0:     var_348 = CVar(var_1BC) 'String
  loc_1CB4DE3:     var_3A4 = CVar(Proc_6_38_E69628(var_388)) 'String
  loc_1CB4E0C:     var_46C = var_32C & var_348 & "',Rate1='" & var_3A4 & "',Rate2='" & CVar(Proc_6_38_E69628(CVar(var_270))) & "',Rate3='" & CVar(Proc_6_38_E69628(CVar(var_294))) 
  loc_1CB4E3B:     var_530 = var_46C & "',Rate4='" & CVar(Proc_6_38_E69628(CVar(var_2BC))) & "',Rate5='" & CVar(Proc_6_38_E69628(CVar(var_334))) & "',DefCompGroup='" 
  loc_1CB4E68:     var_620 = var_530 & CVar(var_1C0) & "',ArrDateTimeEdit='" & Left(CVar(var_3EC), 1) & "',CashPayType='" & CVar(Proc_6_38_E69628(CVar(var_1C4))) 
  loc_1CB4E8E:     var_6F4 = var_620 & "',RoomPayType='" & CVar(Proc_6_38_E69628(CVar(var_1D0))) & "',OutletDiscAc='" & CVar(Proc_6_38_E69628(CVar(var_1D4))) 
  loc_1CB4EB4:     var_7AC = var_6F4 & "',OutletRoundAc='" & CVar(Proc_6_38_E69628(CVar(var_1D8))) & "',CommissionAc='" & CVar(Proc_6_38_E69628(CVar(var_1F4))) 
  loc_1CB4EE3:     var_85C = var_7AC & "',Bill_Footer='" & CVar(var_1F8) & "',CalcMethod='" & CVar(Proc_6_38_E69628(CVar(var_694))) & "',CancellationAC='" 
  loc_1CB4F1C:     var_94C = var_85C & CVar(Proc_6_38_E69628(CVar(var_1FC))) & "',HallDiscAC='" & CVar(var_218) & "',HallRoundOff='" & CVar(var_21C) & "',PostingTYPE='" 
  loc_1CB4F46:     var_A3C = var_94C & Trim(CVar(var_7D4)) & "',OutDoorCatering='" & Trim(CVar(var_82C)) & "',CatalogLimit='" & CVar(Proc_6_38_E69628(CVar(var_884))) 
  loc_1CB4F6C:     var_AF4 = var_A3C & "',OutDoorSaleAC='" & CVar(Proc_6_38_E69628(CVar(var_220))) & "',IndoorSaleAC='" & CVar(Proc_6_38_E69628(CVar(var_23C))) 
  loc_1CB4F92:     var_BA4 = var_AF4 & "',OutDoorPartyAC='" & CVar(Proc_6_38_E69628(CVar(var_240))) & "',IndoorPartyAC='" & CVar(Proc_6_38_E69628(CVar(var_244))) 
  loc_1CB4FB8:     var_C98 = var_BA4 & "',KOTPrinting='" & CVar(Proc_6_38_E69628(Trim(CVar(var_A74)))) & "',KOTPrintEdited='" & CVar(Proc_6_38_E69628(Trim(CVar(var_AFC)))) 
  loc_1CB4FDE:     var_D5C = var_C98 & "',TaxSummary='" & CVar(Proc_6_38_E69628(CVar(var_B54))) & "',TOKENPrint='" & CVar(Proc_6_38_E69628(CVar(var_BAC))) 
  loc_1CB5004:     var_E0C = var_D5C & "',KOTOutletSelection='" & CVar(Proc_6_38_E69628(CVar(var_C04))) & "',DummyTravelAc='" & CVar(Proc_6_38_E69628(CVar(var_260))) 
  loc_1CB5033:     var_EBC = var_E0C & "',BookingPartyAc='" & CVar(var_264) & "',RoomChrgPostingType='" & CVar(Proc_6_38_E69628(CVar(var_DA4))) & "',PlanMastType='" 
  loc_1CB5059:     var_F70 = var_EBC & CVar(Proc_6_38_E69628(CVar(var_DFC))) & "',PostComplimentaryBills='" & CVar(Proc_6_38_E69628(CVar(var_E54))) & "',PostRoomDiscSeparately='" 
  loc_1CB5076:     var_1038 = var_F70 & CVar(Proc_6_38_E69628(CVar(var_EAC))) & "',POSSaleRevenueBifercation='" & CVar(Proc_6_38_E69628(CVar(var_F04))) 
  loc_1CB509C:     var_10C8 = var_1038 & "',PostPOSDiscSeparately='" & CVar(Proc_6_38_E69628(CVar(var_F50))) & "',AllowRoomSettlement='" & CVar(var_268) 
  loc_1CB50BF:     var_1198 = var_10C8 & "',SplitYN='" & CVar(Proc_6_38_E69628(CVar(var_1094))) & "',AutoSplitYN='" & IIf((CLng(var_FA6) = 1), "Y", "N") 
  loc_1CB50E5:     var_124C = var_1198 & "',SmartPurchaseOrder='" & CVar(Proc_6_38_E69628(CVar(var_10F0))) & "',SMSOption='" & CVar(Proc_6_38_E69628(CVar(var_1148))) 
  loc_1CB510B:     var_1300 = var_124C & "',MobileNo='" & CVar(Proc_6_38_E69628(CVar(var_11A0))) & "',MobileSet='" & CVar(Proc_6_38_E69628(CVar(var_11F8))) 
  loc_1CB5131:     var_13B0 = var_1300 & "',SMSMessage='" & CVar(Proc_6_38_E69628(CVar(var_1254))) & "',AdvanceRRoomRent='" & CVar(Proc_6_38_E69628(CVar(var_284))) 
  loc_1CB5157:     var_1460 = var_13B0 & "',BillAmendMode='" & CVar(Proc_6_38_E69628(CVar(var_1308))) & "',AmendRevenue='" & CVar(Proc_6_38_E69628(CVar(var_288))) 
  loc_1CB517D:     var_1510 = var_1460 & "',RoomRentBefChkOut='" & CVar(Proc_6_38_E69628(CVar(var_13B8))) & "',RoomRentChkOutPost='" & CVar(Proc_6_38_E69628(CVar(var_1410))) 
  loc_1CB51A9:     var_15D8 = var_1510 & "',PlanSelectionBasedOn='" & CVar(Proc_6_38_E69628(CVar(var_1468))) & "',FOMBillCopies=" & var_15A0 & ",PlanCalc='" 
  loc_1CB51CF:     var_1688 = var_15D8 & CVar(Proc_6_38_E69628(CVar(var_1518))) & "',PrintRcpt='" & CVar(Proc_6_38_E69628(CVar(var_1570))) & "',RoomCheckOutClearanceYN='" 
  loc_1CB51F5:     var_1738 = var_1688 & CVar(Proc_6_38_E69628(CVar(var_15C8))) & "',RcptPrinting='" & CVar(Proc_6_38_E69628(CVar(var_1620))) & "',POSBillAtNightAudit='" 
  loc_1CB521B:     var_17F0 = var_1738 & CVar(Proc_6_38_E69628(CVar(var_1678))) & "',KOTAtNightAudit='" & CVar(Proc_6_38_E69628(CVar(var_16D0))) & "',NoShowAtNightAudit='" 
  loc_1CB5241:     var_18A4 = var_17F0 & CVar(Proc_6_38_E69628(CVar(var_1728))) & "',BookingSlipFooter1='" & CVar(Proc_6_38_E69628(CVar(var_1780))) & "',BookingSlipFooter2='" 
  loc_1CB5267:     var_1958 = var_18A4 & CVar(Proc_6_38_E69628(CVar(var_17DC))) & "',CashCardDebitAc='" & CVar(Proc_6_38_E69628(CVar(var_28C))) & "',CashCardCreditAc='" 
  loc_1CB528D:     var_1A08 = var_1958 & CVar(Proc_6_38_E69628(CVar(var_298))) & "',CashCardSecurityAc='" & CVar(Proc_6_38_E69628(CVar(var_2AC))) & "',OrderBookingPrintType='" 
  loc_1CB52AA:     var_1AA0 = var_1A08 & CVar(Proc_6_38_E69628(CVar(var_1944))) & "',BillPrintingSummerised='" & CVar(Proc_6_38_E69628(CVar(var_19A0))) 
  loc_1CB52D0:     var_1B30 = var_1AA0 & "',PurchaseGodown='" & CVar(var_2B0) & "',RptCashierSettlementAllUser='" & CVar(Proc_6_38_E69628(CVar(var_1A50))) 
  loc_1CB52F6:     var_1BD8 = var_1B30 & "',POSSaleBillEditLog='" & CVar(Proc_6_38_E69628(CVar(var_1AA8))) & "',GuestChargesDeleteLog='" & CVar(Proc_6_38_E69628(CVar(var_1B10))) 
  loc_1CB531F:     var_1C88 = var_1BD8 & "',GRCMandatory='" & Left(CVar(var_1B78), 1) & "',RoomRateEditable='" & Left(CVar(var_1BE0), 1) & "',RoomIncTaxEditable='" 
  loc_1CB533F:     var_1D64 = var_1C88 & Left(CVar(var_1C48), 1) & "',RoomServiceChargeEditable='" & Left(CVar(var_1CB0), 1) & "',CreditCardInfoMandatory ='" 
  loc_1CB5373:     var_1E34 = var_1D64 & Left(CVar(var_1CFC), 1) & "',NCKOTPercentage=" & CVar(var_38DC) & ",KOTHeader1=" & var_1E14 & ",KOTHeader2=" 
  loc_1CB53B7:     var_1FF4 = var_1E34 & var_1E80 & ",KOTHeader3=" & var_1F18 & ",KOTHeader4=" & var_1F9C & ",GAppCompYear=" & CVar(var_1F40.Text) & ",GMonthConsidered=" 
  loc_1CB53F3:     var_206C = var_1FF4 & CVar(var_1F8C.Text) & ",GWorkingDaysInAMonth=" & CVar(var_1FE4.Text) & ",GDaysSalary=" & CVar(var_38FC) & ",ReqCompWise='" 
  loc_1CB5419:     var_211C = var_206C & CVar(Proc_6_38_E69628(CVar(var_203C))) & "',AcFieldAlterable='" & CVar(Proc_6_38_E69628(CVar(var_2094))) & "',ExpMfdDateInMR='" 
  loc_1CB543F:     var_21CC = var_211C & CVar(Proc_6_38_E69628(CVar(var_20EC))) & "',RateEditableInPO='" & CVar(Proc_6_38_E69628(CVar(var_2144))) & "',RateEditableInStockIssue='" 
  loc_1CB545C:     var_2270 = var_21CC & CVar(Proc_6_38_E69628(CVar(var_219C))) & "',BarCodeFeatureInPurchase='" & CVar(Proc_6_38_E69628(CVar(var_21F4))) 
  loc_1CB5482:     var_2328 = var_2270 & "',ReprintingOnSaleBillYN='" & CVar(Proc_6_38_E69628(CVar(var_224C))) & "',HideSettledBillsOnSaleBillYN='" & CVar(Proc_6_38_E69628(CVar(var_22A8))) 
  loc_1CB54A8:     var_23D8 = var_2328 & "',ExciseInvoiceTaxStru='" & CVar(Proc_6_38_E69628(CVar(var_4A8))) & "',PurchaseTaxVAT='" & CVar(Proc_6_38_E69628(CVar(var_64C))) 
  loc_1CB54CE:     var_2480 = var_23D8 & "',SaleTaxVAT='" & CVar(Proc_6_38_E69628(CVar(var_698))) & "',AddModifyEntryInBackDate='" & CVar(Proc_6_38_E69628(CVar(var_2420))) 
  loc_1CB5507:     var_25D0 = var_2480 & "',ResInstruction1=" & var_24C8 & ",ResInstruction2=" & var_2530 & ",ResInstruction3=" & var_2598 & ",ResInstruction4=" 
  loc_1CB5547:     var_2770 = var_25D0 & var_2600 & ",ResInstruction5=" & var_2668 & ",ResInstruction6=" & var_26D0 & ",ResInstruction7=" & var_2738 & ",ResInstruction8=" 
  loc_1CB557E:     var_28F8 = var_2770 & var_27A0 & ",ResInstruction9=" & var_2808 & ",ResInstruction10=" & var_2870 & ",ResInstruction11=" & var_28D8 
  loc_1CB55B7:     var_2A48 = var_28F8 & ",ResInstruction12=" & var_2940 & ",FPInstruction1=" & var_29A8 & ",FPInstruction2=" & var_2A10 & ",FPInstruction3=" 
  loc_1CB55F7:     var_2BE8 = var_2A48 & var_2A78 & ",FPInstruction4=" & var_2AE0 & ",FPInstruction5=" & var_2B48 & ",FPInstruction6=" & var_2BB0 & ",FPInstruction7=" 
  loc_1CB5637:     var_2D88 = var_2BE8 & var_2C18 & ",FPInstruction8=" & var_2C80 & ",FPInstruction9=" & var_2CE8 & ",FPInstruction10=" & var_2D50 & ",FPInstruction11=" 
  loc_1CB5677:     var_2FB0 = var_2D88 & var_2DB8 & ",FPInstruction12=" & var_2E50 & ",PlanTariffNarration=" & var_2EE8 & ",ESIBasic=" & var_2F90 & ",CoversMandatory='" 
  loc_1CB569D:     var_30B0 = var_2FB0 & CVar(Proc_6_38_E69628(CVar(var_31CC))) & "',MobileNoMandatory='" & CVar(Proc_6_38_E69628(CVar(var_3234))) & "',RRIncTaxDefault='" 
  loc_1CB56C3:     var_3188 = var_30B0 & CVar(Proc_6_38_E69628(CVar(var_329C))) & "',RRSerChrgDefault='" & CVar(Proc_6_38_E69628(CVar(var_3304))) & "',ShowTitleBar='" 
  loc_1CB56E9:     var_3230 = var_3188 & CVar(Proc_6_38_E69628(CVar(var_3360))) & "',ShowMenuBar='" & CVar(Proc_6_38_E69628(CVar(var_33B8))) & "',ShowSubMenuBar='" 
  loc_1CB570F:     var_32D0 = var_3230 & CVar(Proc_6_38_E69628(CVar(var_3410))) & "',ShowShortCutsBar='" & CVar(Proc_6_38_E69628(CVar(var_3468))) & "',ServiceTaxOnServiceChargeYN='" 
  loc_1CB572C:     var_3374 = var_32D0 & CVar(Proc_6_38_E69628(CVar(var_34C0))) & "',SeperateReservationLetterAsPerStatusYN='" & CVar(Proc_6_38_E69628(CVar(var_3518))) 
  loc_1CB5752:     var_3424 = var_3374 & "',ReservationExpandOnSaveYN='" & CVar(Proc_6_38_E69628(CVar(var_3570))) & "',BlockInvalidTarrifIncTaxYN='" & CVar(Proc_6_38_E69628(CVar(var_35C8))) 
  loc_1CB579B:     var_3644 = var_3424 & "',ESIDA=" & var_348C & ",ESIHRA=" & var_3514 & ",ESIConvey=" & var_3594 & ",ESIOther=" & var_361C & ",ESILTA=" 
  loc_1CB57CB:     var_396C = var_3644 & var_369C & ",KitchenStockReport=" & var_3704 & ",ItemRateInMRBasedOn=" & var_377C & ",ItemRateInPurchaseBillBasedOn=" 
  loc_1CB580C:     unk_554C86.Execute CStr(var_396C & var_39A0 & ",SmartCardItem=" & var_39F8 & " WHERE SITECODE='" & CVar(MemVar_1F95078) & "'"), var_3A78, -1
  loc_1CB5F9E:   End If
  loc_1CB5FC6:   For var_3A80 = var_39E8 To CByte((CLng(CByte(1)(var_88).RowCount) - 1)): var_3A7C = var_3A80 'Byte
  loc_1CB5FE2:     Set var_A4 = CVar(CLng(var_88))(CVar(CLng(3)))
  loc_1CB6004:     If (CStr(DGTAX.DispID_41) <> vbNullString) Then
  loc_1CB601D:       Set var_A4 = CVar(CLng(var_88))(CVar(CLng(2)))
  loc_1CB604F:       Set var_A8 = CVar(CLng(var_88))(CVar(CLng(3)))
  loc_1CB6066:       Proc_6_17_EAAE40(var_214, CVar(CStr(DGTAX.DispID_41)))
  loc_1CB609F:       unk_554C86.Execute CStr(CVar("Update Revmast Set SplitSeqNo=" & CStr(Val(CStr(DGTAX.DispID_41))) & " Where Code=") & var_214), var_280, -1
  loc_1CB60C9:     End If
  loc_1CB60CC:   Next var_3A80 'Byte
  loc_1CB60D8:   unk_554C86.CommitTrans
  loc_1CB60DF:   var_86 = 0
  loc_1CB60E2: End If
  loc_1CB60EF: Me.Global.Unload Me
  loc_1CB60F7: Exit Sub
  loc_1CB60F8: ' Referenced from: 1CB05CC
  loc_1CB60FE: If (var_86 = &HFF) Then
  loc_1CB6107:   unk_554C86.RollbackTrans
  loc_1CB610C: End If
  loc_1CB610C: Proc_6_60_E63754(var_86)
  loc_1CB6111: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F78890
  'Data Table: 554C84
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F78767: var_86 = CInt(Val(CStr(Me.DGHelp.Tag)))
  loc_F7877C: Set var_8C = Me.DGHelp
  loc_F78782: var_8C.Visible = False
  loc_F787A4: If (Me.var_8C.RecordCount > 0) Then
  loc_F787E5:   Set var_CC = var_D0(var_86)
  loc_F787EB:   Call 0.Method_DGHelp_UnknownEvent_90 (CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_F787F3:   var_D0.Text = var_86
  loc_F78829:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F78847:   Set var_CC = var_D0(var_86)
  loc_F7884D:   Call 0.Method_DGHelp_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F78855:   var_D0.Tag = 
  loc_F7886B: End If
  loc_F78875: Set var_8C = var_C8(var_86)
  loc_F7887B: Call 0.Method_DGHelp_UnknownEvent_90 ()
  loc_F78883: var_C8.SetFocus
  loc_F7888F: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EAF60C
  'Data Table: 554C84
  loc_EAF59E: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_EAF5D2: Set var_A8 = arg_18(Val(CStr(Me.DGHelp.Tag)))
  loc_EAF5F2: Proc_6_138_106E830(Me.DGHelp, global_52)
  loc_EAF608: Exit Sub
End Sub

Public Sub Proc_56_50_1036BCC
  'Data Table: 554C84
  Dim var_90 As Variant
  Dim var_8C As Fields15
  Dim var_C0 As String
  Dim var_AC As TextBox
  Dim var_A8 As Fields15
  Dim var_E8 As Variant
  loc_10369A1: Set var_8C = var_90(CInt(&H29))
  loc_10369A7: Call 0.Method_Proc_56_50_1036BCC0 (0)
  loc_10369AF: var_90.Enabled = 
  loc_10369BB: On Error Goto loc_1036B88
  loc_10369C8: Proc_183_45_E5CCA8(global_76)
  loc_10369E7: If (Me.Recordset15.RecordCount <= 0) Then
  loc_10369F8:   Set var_8C = var_90(CInt(&H29))
  loc_10369FE:   Call 0.Method_Proc_56_50_1036BCC0 (vbNullString)
  loc_1036A06:   var_90.Text = 
  loc_1036A15: Else
  loc_1036A46:   var_C0 = CStr(Me.Recordset15.Fields.Item("ModuleName").Value)
  loc_1036A54:   Set var_A8 = var_AC(CInt(&H29))
  loc_1036A5A:   Call 0.Method_Proc_56_50_1036BCC0 (var_C0)
  loc_1036A62:   var_AC.Text = 
  loc_1036A7F:   Set var_8C = (var_C2)
  loc_1036A85:   Call 0.Method_Proc_56_50_1036BCC4 ()
  loc_1036A97:   Set var_90 = var_86(var_C4)
  loc_1036A9D:   Call 0.Method_Proc_56_50_1036BCC8 (var_C2)
  loc_1036AAC:   For var_C8 =  To var_C4:    = var_C8 'Integer
  loc_1036ABF:     Set var_8C = var_90(var_86)
  loc_1036AC5:     Call 0.Method_Proc_56_50_1036BCC0 (var_C0)
  loc_1036ACD:      = var_90.Caption
  loc_1036B08:     var_E8 = CVar(Me.Recordset15.Fields.Item("RoundOffType")) 'Address
  loc_1036B0F:     var_F8 = Trim(var_E8)
  loc_1036B2D:     If (Trim(CVar(var_C0)) = var_F8) Then
  loc_1036B3C:       Set var_8C = var_90(var_86)
  loc_1036B42:       Call 0.Method_Proc_56_50_1036BCC0 (&HFF)
  loc_1036B4A:       var_90.Value = 
  loc_1036B59:     Else
  loc_1036B65:       Set var_8C = var_90(var_86)
  loc_1036B6B:       Call 0.Method_Proc_56_50_1036BCC0 (0)
  loc_1036B73:       var_90.Value = 
  loc_1036B7F:     End If
  loc_1036B82:   Next var_C8 'Integer
  loc_1036B87: End If
  loc_1036B87: Exit Sub
  loc_1036B88: ' Referenced from: 10369BB
  loc_1036B90: Set var_8C = Err()
  loc_1036B96: Call 0.Method_arg_2C (var_C0)
  loc_1036BB7: MsgBox(CVar(var_C0), &H40, "Information", var_E8, var_F8)
  loc_1036BCA: Exit Sub
End Sub

Public Sub Proc_56_51_E99F10(arg_C) 'E99F10
  'Data Table: 554C84
  Dim var_98 As Variant
  loc_E99E9A: Set var_8C = var_86(var_8E)
  loc_E99EA0: Call 0.Method_Proc_56_51_E99F108 (CByte(0))
  loc_E99EAD: For var_92 =  To CByte(var_8E):  = var_92 'Byte
  loc_E99EC3:   Set var_8C = var_98(CInt(var_86))
  loc_E99EC9:   Call 0.Method_Proc_56_51_E99F100 (arg_C)
  loc_E99ED1:   var_98.Enabled = 
  loc_E99EE0: Next var_92 'Byte
  loc_E99EF4: Set var_8C = var_98(CInt(&H29))
  loc_E99EFA: Call 0.Method_Proc_56_51_E99F100 (arg_C)
  loc_E99F02: var_98.Enabled = 
  loc_E99F0E: Exit Sub
End Sub

Public Sub Proc_56_52_E785DC
  'Data Table: 554C84
  Dim var_98 As TextBox
  loc_E7858A: Set var_8C = var_86(var_8E)
  loc_E78590: Call 0.Method_Proc_56_52_E785DCC (CByte(0))
  loc_E785A0: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_E785B6:   Set var_8C = var_98(CInt(var_86))
  loc_E785BC:   Call 0.Method_Proc_56_52_E785DC0 (vbNullString)
  loc_E785C4:   var_98.Text = 
  loc_E785D3: Next var_92 'Byte
  loc_E785D9: Exit Sub
End Sub

Public Sub Proc_56_53_1DE71E8
  'Data Table: 554C84
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_132 As Integer
  Dim var_C0 As Variant
  Dim var_F4 As Variant
  Dim var_130 As String
  Dim var_12C As Variant
  Dim var_AC As Variant
  Dim var_138 As String
  Dim unk_554C86 As Connection15
  Dim var_88 As Recordset15
  Dim var_D4 As Variant
  Dim var_128 As Fields15
  Dim var_18C As Variant
  Dim var_1F4 As Variant
  Dim var_104 As Variant
  Dim var_17C As Variant
  Dim var_204 As Variant
  Dim var_15C As Variant
  loc_1DDE4B4: On Error Goto loc_1DD71DF
  loc_1DDE4D1: Loop Until (Me.Recordset15.RecordCount > 0) 'do at: 1DD71D9
  loc_1DDE4F1: var_AC = Me.Recordset15.Fields.Item("SmartCardItem")
  loc_1DDE4F9: var_BC = CVar(var_AC) 'Address
  loc_1DDE502: var_132 = IsNull(var_BC)
  loc_1DDE51A: var_C0 = Me.Recordset15.Fields
  loc_1DDE522: var_D4 = var_C0.Item("SmartCardItem")
  loc_1DDE54B: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDE55B: Set var_128 = var_12C(CInt(139))
  loc_1DDE561: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDE569: var_12C.Tag = var_132
  loc_1DDE598: Set var_98 = var_AC(CInt(139))
  loc_1DDE59E: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDE5A6:  = var_AC.Tag
  loc_1DDE5BD: If (var_130 <> vbNullString) Then
  loc_1DDE5DF:   Set var_98 = var_AC(CInt(139))
  loc_1DDE5E5:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From Itemmast Where Code='", var_BC)
  loc_1DDE5ED:   -1 = var_AC.Tag
  loc_1DDE606:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DDE611:   Set var_88 = var_C0
  loc_1DDE63D:   If (var_88.RecordCount > 0) Then
  loc_1DDE65A:     var_AC = var_88.Fields.Item("Name")
  loc_1DDE67A:     Set var_C0 = var_D4(CInt(139))
  loc_1DDE680:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DDE688:     var_D4.Text = 
  loc_1DDE69E:   End If
  loc_1DDE6A1: Else
  loc_1DDE6B0:   Set var_98 = var_AC(CInt(139))
  loc_1DDE6B6:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DDE6BE:   var_AC.Text = 
  loc_1DDE6CA: End If
  loc_1DDE6E7: var_AC = Me.Recordset15.Fields.Item("DefCompGroup")
  loc_1DDE6EF: var_BC = CVar(var_AC) 'Address
  loc_1DDE6F8: var_132 = IsNull(var_BC)
  loc_1DDE710: var_C0 = Me.Recordset15.Fields
  loc_1DDE718: var_D4 = var_C0.Item("DefCompGroup")
  loc_1DDE741: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDE750: Set var_128 = var_12C(CInt(&H11))
  loc_1DDE756: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDE75E: var_12C.Tag = var_132
  loc_1DDE78C: Set var_98 = var_AC(CInt(&H11))
  loc_1DDE792: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDE79A:  = var_AC.Tag
  loc_1DDE7B1: If (var_130 <> vbNullString) Then
  loc_1DDE7D2:   Set var_98 = var_AC(CInt(&H11))
  loc_1DDE7D8:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select GroupName From Acgroup Where GroupCode='", var_BC)
  loc_1DDE7E0:   -1 = var_AC.Tag
  loc_1DDE7F9:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DDE804:   Set var_88 = var_C0
  loc_1DDE830:   If (var_88.RecordCount > 0) Then
  loc_1DDE84D:     var_AC = var_88.Fields.Item("GroupName")
  loc_1DDE86C:     Set var_C0 = var_D4(CInt(&H11))
  loc_1DDE872:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DDE87A:     var_D4.Text = 
  loc_1DDE890:   End If
  loc_1DDE893: Else
  loc_1DDE8A1:   Set var_98 = var_AC(CInt(&H11))
  loc_1DDE8A7:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DDE8AF:   var_AC.Text = 
  loc_1DDE8BB: End If
  loc_1DDE8D8: var_AC = Me.Recordset15.Fields.Item("PurchaseGodown")
  loc_1DDE8E0: var_BC = CVar(var_AC) 'Address
  loc_1DDE8E9: var_132 = IsNull(var_BC)
  loc_1DDE901: var_C0 = Me.Recordset15.Fields
  loc_1DDE909: var_D4 = var_C0.Item("PurchaseGodown")
  loc_1DDE932: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDE941: Set var_128 = var_12C(CInt(&H49))
  loc_1DDE947: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDE94F: var_12C.Tag = var_132
  loc_1DDE97D: Set var_98 = var_AC(CInt(&H49))
  loc_1DDE983: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDE98B:  = var_AC.Tag
  loc_1DDE9A2: If (var_130 <> vbNullString) Then
  loc_1DDE9C3:   Set var_98 = var_AC(CInt(&H49))
  loc_1DDE9C9:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From Godownmast Where Code='", var_BC)
  loc_1DDE9D1:   -1 = var_AC.Tag
  loc_1DDE9EA:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DDE9F5:   Set var_88 = var_C0
  loc_1DDEA21:   If (var_88.RecordCount > 0) Then
  loc_1DDEA3E:     var_AC = var_88.Fields.Item("Name")
  loc_1DDEA5D:     Set var_C0 = var_D4(CInt(&H49))
  loc_1DDEA63:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DDEA6B:     var_D4.Text = 
  loc_1DDEA81:   End If
  loc_1DDEA84: Else
  loc_1DDEA92:   Set var_98 = var_AC(CInt(&H49))
  loc_1DDEA98:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DDEAA0:   var_AC.Text = 
  loc_1DDEAAC: End If
  loc_1DDEAC9: var_AC = Me.Recordset15.Fields.Item("ExciseInvoiceTaxStru")
  loc_1DDEAD1: var_BC = CVar(var_AC) 'Address
  loc_1DDEADA: var_132 = IsNull(var_BC)
  loc_1DDEAF2: var_C0 = Me.Recordset15.Fields
  loc_1DDEAFA: var_D4 = var_C0.Item("ExciseInvoiceTaxStru")
  loc_1DDEB23: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDEB32: Set var_128 = var_12C(CInt(&H5A))
  loc_1DDEB38: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDEB40: var_12C.Tag = var_132
  loc_1DDEB6E: Set var_98 = var_AC(CInt(&H5A))
  loc_1DDEB74: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDEB7C:  = var_AC.Tag
  loc_1DDEB93: If (var_130 <> vbNullString) Then
  loc_1DDEBB4:   Set var_98 = var_AC(CInt(&H5A))
  loc_1DDEBBA:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select MAx(Name) As Name From TaxStru Where Code='", var_BC)
  loc_1DDEBC2:   -1 = var_AC.Tag
  loc_1DDEBDB:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DDEBE6:   Set var_88 = var_C0
  loc_1DDEC12:   If (var_88.RecordCount > 0) Then
  loc_1DDEC2F:     var_AC = var_88.Fields.Item("Name")
  loc_1DDEC4E:     Set var_C0 = var_D4(CInt(&H5A))
  loc_1DDEC54:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DDEC5C:     var_D4.Text = 
  loc_1DDEC72:   End If
  loc_1DDEC75: Else
  loc_1DDEC83:   Set var_98 = var_AC(CInt(&H5A))
  loc_1DDEC89:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DDEC91:   var_AC.Text = 
  loc_1DDEC9D: End If
  loc_1DDECBA: var_AC = Me.Recordset15.Fields.Item("PurchaseTaxVAT")
  loc_1DDECC2: var_BC = CVar(var_AC) 'Address
  loc_1DDECCB: var_132 = IsNull(var_BC)
  loc_1DDECE3: var_C0 = Me.Recordset15.Fields
  loc_1DDECEB: var_D4 = var_C0.Item("PurchaseTaxVAT")
  loc_1DDED14: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDED22: Set var_128 = var_12C(136)
  loc_1DDED28: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDED30: var_12C.Tag = var_132
  loc_1DDED5D: Set var_98 = var_AC(136)
  loc_1DDED63: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDED6B:  = var_AC.Tag
  loc_1DDED82: If (var_130 <> vbNullString) Then
  loc_1DDEDA2:   Set var_98 = var_AC(136)
  loc_1DDEDA8:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select MAx(Name) As Name From RevMast Where FieldType='T' and Code='", var_BC)
  loc_1DDEDB0:   -1 = var_AC.Tag
  loc_1DDEDC9:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DDEDD4:   Set var_88 = var_C0
  loc_1DDEE00:   If (var_88.RecordCount > 0) Then
  loc_1DDEE1D:     var_AC = var_88.Fields.Item("Name")
  loc_1DDEE3B:     Set var_C0 = var_D4(136)
  loc_1DDEE41:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DDEE49:     var_D4.Text = 
  loc_1DDEE5F:   End If
  loc_1DDEE62: Else
  loc_1DDEE6F:   Set var_98 = var_AC(136)
  loc_1DDEE75:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DDEE7D:   var_AC.Text = 
  loc_1DDEE89: End If
  loc_1DDEEA6: var_AC = Me.Recordset15.Fields.Item("SaleTaxVAT")
  loc_1DDEEAE: var_BC = CVar(var_AC) 'Address
  loc_1DDEEB7: var_132 = IsNull(var_BC)
  loc_1DDEECF: var_C0 = Me.Recordset15.Fields
  loc_1DDEED7: var_D4 = var_C0.Item("SaleTaxVAT")
  loc_1DDEF00: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDEF0E: Set var_128 = var_12C(137)
  loc_1DDEF14: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDEF1C: var_12C.Tag = var_132
  loc_1DDEF49: Set var_98 = var_AC(137)
  loc_1DDEF4F: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDEF57:  = var_AC.Tag
  loc_1DDEF6E: If (var_130 <> vbNullString) Then
  loc_1DDEF8E:   Set var_98 = var_AC(137)
  loc_1DDEF94:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select MAx(Name) As Name From RevMast Where FieldType='T' and Code='", var_BC)
  loc_1DDEF9C:   -1 = var_AC.Tag
  loc_1DDEFB5:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DDEFC0:   Set var_88 = var_C0
  loc_1DDEFEC:   If (var_88.RecordCount > 0) Then
  loc_1DDF009:     var_AC = var_88.Fields.Item("Name")
  loc_1DDF027:     Set var_C0 = var_D4(137)
  loc_1DDF02D:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DDF035:     var_D4.Text = 
  loc_1DDF04B:   End If
  loc_1DDF04E: Else
  loc_1DDF05B:   Set var_98 = var_AC(137)
  loc_1DDF061:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DDF069:   var_AC.Text = 
  loc_1DDF075: End If
  loc_1DDF0A3: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("ArrDateTimeEdit")))
  loc_1DDF0F3: var_12C = Me.Recordset15.Fields.Item("ArrDateTimeEdit")
  loc_1DDF151: var_130 = CStr(IIf(var_132 Or (Me.Recordset15.Fields.Item("ArrDateTimeEdit").Value = "N") Or (var_12C.Value = vbNullString), "No", "Yes"))
  loc_1DDF160: Set var_1F0 = var_1F4(CInt(&H10))
  loc_1DDF166: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDF16E: var_1F4.Text = var_132
  loc_1DDF1B7: var_AC = Me.Recordset15.Fields.Item("Loan_AC")
  loc_1DDF1BF: var_BC = CVar(var_AC) 'Address
  loc_1DDF1C8: var_132 = IsNull(var_BC)
  loc_1DDF1E0: var_C0 = Me.Recordset15.Fields
  loc_1DDF1E8: var_D4 = var_C0.Item("Loan_AC")
  loc_1DDF211: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDF220: Set var_128 = var_12C(CInt(3))
  loc_1DDF226: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDF22E: var_12C.Tag = var_132
  loc_1DDF25C: Set var_98 = var_AC(CInt(3))
  loc_1DDF262: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDF26A:  = var_AC.Tag
  loc_1DDF281: If (var_130 <> vbNullString) Then
  loc_1DDF2A2:   Set var_98 = var_AC(CInt(3))
  loc_1DDF2A8:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDF2B0:   -1 = var_AC.Tag
  loc_1DDF2C9:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DDF2D4:   Set var_88 = var_C0
  loc_1DDF300:   If (var_88.RecordCount > 0) Then
  loc_1DDF31D:     var_AC = var_88.Fields.Item("Name")
  loc_1DDF33C:     Set var_C0 = var_D4(CInt(3))
  loc_1DDF342:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DDF34A:     var_D4.Text = 
  loc_1DDF360:   End If
  loc_1DDF363: Else
  loc_1DDF371:   Set var_98 = var_AC(CInt(3))
  loc_1DDF377:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DDF37F:   var_AC.Text = 
  loc_1DDF38B: End If
  loc_1DDF3A8: var_AC = Me.Recordset15.Fields.Item("AdvanceAc")
  loc_1DDF3B0: var_BC = CVar(var_AC) 'Address
  loc_1DDF3B9: var_132 = IsNull(var_BC)
  loc_1DDF3D1: var_C0 = Me.Recordset15.Fields
  loc_1DDF3D9: var_D4 = var_C0.Item("AdvanceAc")
  loc_1DDF402: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDF411: Set var_128 = var_12C(CInt(4))
  loc_1DDF417: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDF41F: var_12C.Tag = var_132
  loc_1DDF44D: Set var_98 = var_AC(CInt(4))
  loc_1DDF453: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDF45B:  = var_AC.Tag
  loc_1DDF472: If (var_130 <> vbNullString) Then
  loc_1DDF493:   Set var_98 = var_AC(CInt(4))
  loc_1DDF499:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDF4A1:   -1 = var_AC.Tag
  loc_1DDF4BA:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DDF4C5:   Set var_88 = var_C0
  loc_1DDF4F1:   If (var_88.RecordCount > 0) Then
  loc_1DDF50E:     var_AC = var_88.Fields.Item("Name")
  loc_1DDF52D:     Set var_C0 = var_D4(CInt(4))
  loc_1DDF533:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DDF53B:     var_D4.Text = 
  loc_1DDF551:   End If
  loc_1DDF554: Else
  loc_1DDF562:   Set var_98 = var_AC(CInt(4))
  loc_1DDF568:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DDF570:   var_AC.Text = 
  loc_1DDF57C: End If
  loc_1DDF599: var_AC = Me.Recordset15.Fields.Item("OutletDiscAc")
  loc_1DDF5A1: var_BC = CVar(var_AC) 'Address
  loc_1DDF5AA: var_132 = IsNull(var_BC)
  loc_1DDF5C2: var_C0 = Me.Recordset15.Fields
  loc_1DDF5CA: var_D4 = var_C0.Item("OutletDiscAc")
  loc_1DDF5F3: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDF602: Set var_128 = var_12C(CInt(&H18))
  loc_1DDF608: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDF610: var_12C.Tag = var_132
  loc_1DDF63E: Set var_98 = var_AC(CInt(&H18))
  loc_1DDF644: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDF64C:  = var_AC.Tag
  loc_1DDF663: If (var_130 <> vbNullString) Then
  loc_1DDF684:   Set var_98 = var_AC(CInt(&H18))
  loc_1DDF68A:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDF692:   -1 = var_AC.Tag
  loc_1DDF6AB:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DDF6B6:   Set var_88 = var_C0
  loc_1DDF6E2:   If (var_88.RecordCount > 0) Then
  loc_1DDF6FF:     var_AC = var_88.Fields.Item("Name")
  loc_1DDF71E:     Set var_C0 = var_D4(CInt(&H18))
  loc_1DDF724:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DDF72C:     var_D4.Text = 
  loc_1DDF742:   End If
  loc_1DDF745: Else
  loc_1DDF753:   Set var_98 = var_AC(CInt(&H18))
  loc_1DDF759:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DDF761:   var_AC.Text = 
  loc_1DDF76D: End If
  loc_1DDF78A: var_AC = Me.Recordset15.Fields.Item("OutletRoundAc")
  loc_1DDF792: var_BC = CVar(var_AC) 'Address
  loc_1DDF79B: var_132 = IsNull(var_BC)
  loc_1DDF7B3: var_C0 = Me.Recordset15.Fields
  loc_1DDF7BB: var_D4 = var_C0.Item("OutletRoundAc")
  loc_1DDF7E4: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDF7F3: Set var_128 = var_12C(CInt(&H19))
  loc_1DDF7F9: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDF801: var_12C.Tag = var_132
  loc_1DDF82F: Set var_98 = var_AC(CInt(&H19))
  loc_1DDF835: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDF83D:  = var_AC.Tag
  loc_1DDF854: If (var_130 <> vbNullString) Then
  loc_1DDF875:   Set var_98 = var_AC(CInt(&H19))
  loc_1DDF87B:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDF883:   -1 = var_AC.Tag
  loc_1DDF89C:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DDF8A7:   Set var_88 = var_C0
  loc_1DDF8D3:   If (var_88.RecordCount > 0) Then
  loc_1DDF8F0:     var_AC = var_88.Fields.Item("Name")
  loc_1DDF90F:     Set var_C0 = var_D4(CInt(&H19))
  loc_1DDF915:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DDF91D:     var_D4.Text = 
  loc_1DDF933:   End If
  loc_1DDF936: Else
  loc_1DDF944:   Set var_98 = var_AC(CInt(&H19))
  loc_1DDF94A:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DDF952:   var_AC.Text = 
  loc_1DDF95E: End If
  loc_1DDF97B: var_AC = Me.Recordset15.Fields.Item("AdvanceRRoomRent")
  loc_1DDF983: var_BC = CVar(var_AC) 'Address
  loc_1DDF98C: var_132 = IsNull(var_BC)
  loc_1DDF9A4: var_C0 = Me.Recordset15.Fields
  loc_1DDF9AC: var_D4 = var_C0.Item("AdvanceRRoomRent")
  loc_1DDF9D5: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDF9E4: Set var_128 = var_12C(CInt(&H37))
  loc_1DDF9EA: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDF9F2: var_12C.Tag = var_132
  loc_1DDFA20: Set var_98 = var_AC(CInt(&H37))
  loc_1DDFA26: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDFA2E:  = var_AC.Tag
  loc_1DDFA45: If (var_130 <> vbNullString) Then
  loc_1DDFA66:   Set var_98 = var_AC(CInt(&H37))
  loc_1DDFA6C:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDFA74:   -1 = var_AC.Tag
  loc_1DDFA8D:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DDFA98:   Set var_88 = var_C0
  loc_1DDFAC4:   If (var_88.RecordCount > 0) Then
  loc_1DDFAE1:     var_AC = var_88.Fields.Item("Name")
  loc_1DDFB00:     Set var_C0 = var_D4(CInt(&H37))
  loc_1DDFB06:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DDFB0E:     var_D4.Text = 
  loc_1DDFB24:   End If
  loc_1DDFB27: Else
  loc_1DDFB35:   Set var_98 = var_AC(CInt(&H37))
  loc_1DDFB3B:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DDFB43:   var_AC.Text = 
  loc_1DDFB4F: End If
  loc_1DDFB6C: var_AC = Me.Recordset15.Fields.Item("OutDoorSaleAC")
  loc_1DDFB74: var_BC = CVar(var_AC) 'Address
  loc_1DDFB7D: var_132 = IsNull(var_BC)
  loc_1DDFB95: var_C0 = Me.Recordset15.Fields
  loc_1DDFB9D: var_D4 = var_C0.Item("OutDoorSaleAC")
  loc_1DDFBC6: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDFBD5: Set var_128 = var_12C(CInt(&H24))
  loc_1DDFBDB: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDFBE3: var_12C.Tag = var_132
  loc_1DDFC11: Set var_98 = var_AC(CInt(&H19))
  loc_1DDFC17: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDFC1F:  = var_AC.Tag
  loc_1DDFC36: If (var_130 <> vbNullString) Then
  loc_1DDFC57:   Set var_98 = var_AC(CInt(&H24))
  loc_1DDFC5D:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDFC65:   -1 = var_AC.Tag
  loc_1DDFC7E:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DDFC89:   Set var_88 = var_C0
  loc_1DDFCB5:   If (var_88.RecordCount > 0) Then
  loc_1DDFCD2:     var_AC = var_88.Fields.Item("Name")
  loc_1DDFCF1:     Set var_C0 = var_D4(CInt(&H24))
  loc_1DDFCF7:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DDFCFF:     var_D4.Text = 
  loc_1DDFD15:   End If
  loc_1DDFD18: Else
  loc_1DDFD26:   Set var_98 = var_AC(CInt(&H24))
  loc_1DDFD2C:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DDFD34:   var_AC.Text = 
  loc_1DDFD40: End If
  loc_1DDFD5D: var_AC = Me.Recordset15.Fields.Item("IndoorSaleAC")
  loc_1DDFD65: var_BC = CVar(var_AC) 'Address
  loc_1DDFD6E: var_132 = IsNull(var_BC)
  loc_1DDFD86: var_C0 = Me.Recordset15.Fields
  loc_1DDFD8E: var_D4 = var_C0.Item("IndoorSaleAC")
  loc_1DDFDB7: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDFDC6: Set var_128 = var_12C(CInt(&H23))
  loc_1DDFDCC: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDFDD4: var_12C.Tag = var_132
  loc_1DDFE02: Set var_98 = var_AC(CInt(&H23))
  loc_1DDFE08: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDFE10:  = var_AC.Tag
  loc_1DDFE27: If (var_130 <> vbNullString) Then
  loc_1DDFE48:   Set var_98 = var_AC(CInt(&H23))
  loc_1DDFE4E:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DDFE56:   -1 = var_AC.Tag
  loc_1DDFE6F:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DDFE7A:   Set var_88 = var_C0
  loc_1DDFEA6:   If (var_88.RecordCount > 0) Then
  loc_1DDFEC3:     var_AC = var_88.Fields.Item("Name")
  loc_1DDFEE2:     Set var_C0 = var_D4(CInt(&H23))
  loc_1DDFEE8:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DDFEF0:     var_D4.Text = 
  loc_1DDFF06:   End If
  loc_1DDFF09: Else
  loc_1DDFF17:   Set var_98 = var_AC(CInt(&H23))
  loc_1DDFF1D:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DDFF25:   var_AC.Text = 
  loc_1DDFF31: End If
  loc_1DDFF4E: var_AC = Me.Recordset15.Fields.Item("OutDoorPartyAC")
  loc_1DDFF56: var_BC = CVar(var_AC) 'Address
  loc_1DDFF5F: var_132 = IsNull(var_BC)
  loc_1DDFF77: var_C0 = Me.Recordset15.Fields
  loc_1DDFF7F: var_D4 = var_C0.Item("OutDoorPartyAC")
  loc_1DDFFA8: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DDFFB7: Set var_128 = var_12C(CInt(&H25))
  loc_1DDFFBD: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DDFFC5: var_12C.Tag = var_132
  loc_1DDFFF3: Set var_98 = var_AC(CInt(&H25))
  loc_1DDFFF9: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE0001:  = var_AC.Tag
  loc_1DE0018: If (var_130 <> vbNullString) Then
  loc_1DE0039:   Set var_98 = var_AC(CInt(&H25))
  loc_1DE003F:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE0047:   -1 = var_AC.Tag
  loc_1DE0060:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE006B:   Set var_88 = var_C0
  loc_1DE0097:   If (var_88.RecordCount > 0) Then
  loc_1DE00B4:     var_AC = var_88.Fields.Item("Name")
  loc_1DE00D3:     Set var_C0 = var_D4(CInt(&H25))
  loc_1DE00D9:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE00E1:     var_D4.Text = 
  loc_1DE00F7:   End If
  loc_1DE00FA: Else
  loc_1DE0108:   Set var_98 = var_AC(CInt(&H25))
  loc_1DE010E:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE0116:   var_AC.Text = 
  loc_1DE0122: End If
  loc_1DE013F: var_AC = Me.Recordset15.Fields.Item("IndoorPartyAC")
  loc_1DE0147: var_BC = CVar(var_AC) 'Address
  loc_1DE0150: var_132 = IsNull(var_BC)
  loc_1DE0168: var_C0 = Me.Recordset15.Fields
  loc_1DE0170: var_D4 = var_C0.Item("IndoorPartyAC")
  loc_1DE0199: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE01A8: Set var_128 = var_12C(CInt(&H26))
  loc_1DE01AE: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE01B6: var_12C.Tag = var_132
  loc_1DE01E4: Set var_98 = var_AC(CInt(&H26))
  loc_1DE01EA: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE01F2:  = var_AC.Tag
  loc_1DE0209: If (var_130 <> vbNullString) Then
  loc_1DE022A:   Set var_98 = var_AC(CInt(&H26))
  loc_1DE0230:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE0238:   -1 = var_AC.Tag
  loc_1DE0251:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE025C:   Set var_88 = var_C0
  loc_1DE0288:   If (var_88.RecordCount > 0) Then
  loc_1DE02A5:     var_AC = var_88.Fields.Item("Name")
  loc_1DE02C4:     Set var_C0 = var_D4(CInt(&H26))
  loc_1DE02CA:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE02D2:     var_D4.Text = 
  loc_1DE02E8:   End If
  loc_1DE02EB: Else
  loc_1DE02F9:   Set var_98 = var_AC(CInt(&H26))
  loc_1DE02FF:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE0307:   var_AC.Text = 
  loc_1DE0313: End If
  loc_1DE0330: var_AC = Me.Recordset15.Fields.Item("HallDiscAC")
  loc_1DE0338: var_BC = CVar(var_AC) 'Address
  loc_1DE0341: var_132 = IsNull(var_BC)
  loc_1DE0359: var_C0 = Me.Recordset15.Fields
  loc_1DE0361: var_D4 = var_C0.Item("HallDiscAC")
  loc_1DE038A: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE0399: Set var_128 = var_12C(CInt(&H22))
  loc_1DE039F: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE03A7: var_12C.Tag = var_132
  loc_1DE03D5: Set var_98 = var_AC(CInt(&H22))
  loc_1DE03DB: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE03E3:  = var_AC.Tag
  loc_1DE03FA: If (var_130 <> vbNullString) Then
  loc_1DE041B:   Set var_98 = var_AC(CInt(&H22))
  loc_1DE0421:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE0429:   -1 = var_AC.Tag
  loc_1DE0442:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE044D:   Set var_88 = var_C0
  loc_1DE0479:   If (var_88.RecordCount > 0) Then
  loc_1DE0496:     var_AC = var_88.Fields.Item("Name")
  loc_1DE04B5:     Set var_C0 = var_D4(CInt(&H22))
  loc_1DE04BB:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE04C3:     var_D4.Text = 
  loc_1DE04D9:   End If
  loc_1DE04DC: Else
  loc_1DE04EA:   Set var_98 = var_AC(CInt(&H22))
  loc_1DE04F0:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE04F8:   var_AC.Text = 
  loc_1DE0504: End If
  loc_1DE0521: var_AC = Me.Recordset15.Fields.Item("HallRoundOff")
  loc_1DE0529: var_BC = CVar(var_AC) 'Address
  loc_1DE0532: var_132 = IsNull(var_BC)
  loc_1DE054A: var_C0 = Me.Recordset15.Fields
  loc_1DE0552: var_D4 = var_C0.Item("HallRoundOff")
  loc_1DE057B: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE058A: Set var_128 = var_12C(CInt(&H21))
  loc_1DE0590: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE0598: var_12C.Tag = var_132
  loc_1DE05C6: Set var_98 = var_AC(CInt(&H21))
  loc_1DE05CC: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE05D4:  = var_AC.Tag
  loc_1DE05EB: If (var_130 <> vbNullString) Then
  loc_1DE060C:   Set var_98 = var_AC(CInt(&H21))
  loc_1DE0612:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE061A:   -1 = var_AC.Tag
  loc_1DE0633:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE063E:   Set var_88 = var_C0
  loc_1DE066A:   If (var_88.RecordCount > 0) Then
  loc_1DE0687:     var_AC = var_88.Fields.Item("Name")
  loc_1DE06A6:     Set var_C0 = var_D4(CInt(&H21))
  loc_1DE06AC:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE06B4:     var_D4.Text = 
  loc_1DE06CA:   End If
  loc_1DE06CD: Else
  loc_1DE06DB:   Set var_98 = var_AC(CInt(&H21))
  loc_1DE06E1:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE06E9:   var_AC.Text = 
  loc_1DE06F5: End If
  loc_1DE0712: var_AC = Me.Recordset15.Fields.Item("SALARY_AC")
  loc_1DE071A: var_BC = CVar(var_AC) 'Address
  loc_1DE0723: var_132 = IsNull(var_BC)
  loc_1DE073B: var_C0 = Me.Recordset15.Fields
  loc_1DE0743: var_D4 = var_C0.Item("SALARY_AC")
  loc_1DE076C: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE077B: Set var_128 = var_12C(CInt(2))
  loc_1DE0781: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE0789: var_12C.Tag = var_132
  loc_1DE07B7: Set var_98 = var_AC(CInt(2))
  loc_1DE07BD: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE07C5:  = var_AC.Tag
  loc_1DE07DC: If (var_130 <> vbNullString) Then
  loc_1DE07FD:   Set var_98 = var_AC(CInt(2))
  loc_1DE0803:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE080B:   -1 = var_AC.Tag
  loc_1DE0824:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE082F:   Set var_88 = var_C0
  loc_1DE085B:   If (var_88.RecordCount > 0) Then
  loc_1DE0878:     var_AC = var_88.Fields.Item("Name")
  loc_1DE0897:     Set var_C0 = var_D4(CInt(2))
  loc_1DE089D:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE08A5:     var_D4.Text = 
  loc_1DE08BB:   End If
  loc_1DE08BE: Else
  loc_1DE08CC:   Set var_98 = var_AC(CInt(2))
  loc_1DE08D2:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE08DA:   var_AC.Text = 
  loc_1DE08E6: End If
  loc_1DE0903: var_AC = Me.Recordset15.Fields.Item("CancellationAC")
  loc_1DE090B: var_BC = CVar(var_AC) 'Address
  loc_1DE0914: var_132 = IsNull(var_BC)
  loc_1DE092C: var_C0 = Me.Recordset15.Fields
  loc_1DE0934: var_D4 = var_C0.Item("CancellationAC")
  loc_1DE095D: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE096C: Set var_128 = var_12C(CInt(&H1F))
  loc_1DE0972: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE097A: var_12C.Tag = var_132
  loc_1DE09A8: Set var_98 = var_AC(CInt(&H1F))
  loc_1DE09AE: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE09B6:  = var_AC.Tag
  loc_1DE09CD: If (var_130 <> vbNullString) Then
  loc_1DE09EE:   Set var_98 = var_AC(CInt(&H1F))
  loc_1DE09F4:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE09FC:   -1 = var_AC.Tag
  loc_1DE0A15:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE0A20:   Set var_88 = var_C0
  loc_1DE0A4C:   If (var_88.RecordCount > 0) Then
  loc_1DE0A69:     var_AC = var_88.Fields.Item("Name")
  loc_1DE0A88:     Set var_C0 = var_D4(CInt(&H1F))
  loc_1DE0A8E:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE0A96:     var_D4.Text = 
  loc_1DE0AAC:   End If
  loc_1DE0AAF: Else
  loc_1DE0ABD:   Set var_98 = var_AC(CInt(&H1F))
  loc_1DE0AC3:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE0ACB:   var_AC.Text = 
  loc_1DE0AD7: End If
  loc_1DE0AF4: var_AC = Me.Recordset15.Fields.Item("CashPayType")
  loc_1DE0AFC: var_BC = CVar(var_AC) 'Address
  loc_1DE0B05: var_132 = IsNull(var_BC)
  loc_1DE0B1D: var_C0 = Me.Recordset15.Fields
  loc_1DE0B25: var_D4 = var_C0.Item("CashPayType")
  loc_1DE0B4E: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE0B5D: Set var_128 = var_12C(CInt(&H17))
  loc_1DE0B63: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE0B6B: var_12C.Tag = var_132
  loc_1DE0B99: Set var_98 = var_AC(CInt(&H17))
  loc_1DE0B9F: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE0BA7:  = var_AC.Tag
  loc_1DE0BBE: If (var_130 <> vbNullString) Then
  loc_1DE0BDF:   Set var_98 = var_AC(CInt(&H17))
  loc_1DE0BE5:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From RevMAst Where Code='", var_BC)
  loc_1DE0BED:   -1 = var_AC.Tag
  loc_1DE0C06:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE0C11:   Set var_88 = var_C0
  loc_1DE0C3D:   If (var_88.RecordCount > 0) Then
  loc_1DE0C5A:     var_AC = var_88.Fields.Item("Name")
  loc_1DE0C79:     Set var_C0 = var_D4(CInt(&H17))
  loc_1DE0C7F:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE0C87:     var_D4.Text = 
  loc_1DE0C9D:   End If
  loc_1DE0CA0: Else
  loc_1DE0CAE:   Set var_98 = var_AC(CInt(&H17))
  loc_1DE0CB4:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE0CBC:   var_AC.Text = 
  loc_1DE0CC8: End If
  loc_1DE0CE5: var_AC = Me.Recordset15.Fields.Item("AmendRevenue")
  loc_1DE0CED: var_BC = CVar(var_AC) 'Address
  loc_1DE0CF6: var_132 = IsNull(var_BC)
  loc_1DE0D0E: var_C0 = Me.Recordset15.Fields
  loc_1DE0D16: var_D4 = var_C0.Item("AmendRevenue")
  loc_1DE0D3F: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE0D4E: Set var_128 = var_12C(CInt(&H38))
  loc_1DE0D54: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE0D5C: var_12C.Tag = var_132
  loc_1DE0D8A: Set var_98 = var_AC(CInt(&H17))
  loc_1DE0D90: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE0D98:  = var_AC.Tag
  loc_1DE0DAF: If (var_130 <> vbNullString) Then
  loc_1DE0DD0:   Set var_98 = var_AC(CInt(&H38))
  loc_1DE0DD6:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From RevMAst Where Code='", var_BC)
  loc_1DE0DDE:   -1 = var_AC.Tag
  loc_1DE0DF7:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE0E02:   Set var_88 = var_C0
  loc_1DE0E2E:   If (var_88.RecordCount > 0) Then
  loc_1DE0E4B:     var_AC = var_88.Fields.Item("Name")
  loc_1DE0E6A:     Set var_C0 = var_D4(CInt(&H38))
  loc_1DE0E70:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE0E78:     var_D4.Text = 
  loc_1DE0E8E:   End If
  loc_1DE0E91: Else
  loc_1DE0E9F:   Set var_98 = var_AC(CInt(&H38))
  loc_1DE0EA5:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE0EAD:   var_AC.Text = 
  loc_1DE0EB9: End If
  loc_1DE0ED6: var_AC = Me.Recordset15.Fields.Item("RoomPayType")
  loc_1DE0EDE: var_BC = CVar(var_AC) 'Address
  loc_1DE0EE7: var_132 = IsNull(var_BC)
  loc_1DE0EFF: var_C0 = Me.Recordset15.Fields
  loc_1DE0F07: var_D4 = var_C0.Item("RoomPayType")
  loc_1DE0F30: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE0F3F: Set var_128 = var_12C(CInt(&H1B))
  loc_1DE0F45: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE0F4D: var_12C.Tag = var_132
  loc_1DE0F7B: Set var_98 = var_AC(CInt(&H1B))
  loc_1DE0F81: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE0F89:  = var_AC.Tag
  loc_1DE0FA0: If (var_130 <> vbNullString) Then
  loc_1DE0FC1:   Set var_98 = var_AC(CInt(&H1B))
  loc_1DE0FC7:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From RevMAst Where Code='", var_BC)
  loc_1DE0FCF:   -1 = var_AC.Tag
  loc_1DE0FE8:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE0FF3:   Set var_88 = var_C0
  loc_1DE101F:   If (var_88.RecordCount > 0) Then
  loc_1DE103C:     var_AC = var_88.Fields.Item("Name")
  loc_1DE105B:     Set var_C0 = var_D4(CInt(&H1B))
  loc_1DE1061:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE1069:     var_D4.Text = 
  loc_1DE107F:   End If
  loc_1DE1082: Else
  loc_1DE1090:   Set var_98 = var_AC(CInt(&H1B))
  loc_1DE1096:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE109E:   var_AC.Text = 
  loc_1DE10AA: End If
  loc_1DE10C7: var_AC = Me.Recordset15.Fields.Item("RoomChrgDueAc")
  loc_1DE10CF: var_BC = CVar(var_AC) 'Address
  loc_1DE10D8: var_132 = IsNull(var_BC)
  loc_1DE10F0: var_C0 = Me.Recordset15.Fields
  loc_1DE10F8: var_D4 = var_C0.Item("RoomChrgDueAc")
  loc_1DE1121: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE1130: Set var_128 = var_12C(CInt(&HB))
  loc_1DE1136: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE113E: var_12C.Tag = var_132
  loc_1DE116C: Set var_98 = var_AC(CInt(&HB))
  loc_1DE1172: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE117A:  = var_AC.Tag
  loc_1DE1191: If (var_130 <> vbNullString) Then
  loc_1DE11B2:   Set var_98 = var_AC(CInt(&HB))
  loc_1DE11B8:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE11C0:   -1 = var_AC.Tag
  loc_1DE11D9:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE11E4:   Set var_88 = var_C0
  loc_1DE1210:   If (var_88.RecordCount > 0) Then
  loc_1DE122D:     var_AC = var_88.Fields.Item("Name")
  loc_1DE124C:     Set var_C0 = var_D4(CInt(&HB))
  loc_1DE1252:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE125A:     var_D4.Text = 
  loc_1DE1270:   End If
  loc_1DE1273: Else
  loc_1DE1281:   Set var_98 = var_AC(CInt(&HB))
  loc_1DE1287:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE128F:   var_AC.Text = 
  loc_1DE129B: End If
  loc_1DE12B8: var_AC = Me.Recordset15.Fields.Item("DummyTravelAc")
  loc_1DE12C0: var_BC = CVar(var_AC) 'Address
  loc_1DE12C9: var_132 = IsNull(var_BC)
  loc_1DE12E1: var_C0 = Me.Recordset15.Fields
  loc_1DE12E9: var_D4 = var_C0.Item("DummyTravelAc")
  loc_1DE1312: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE1321: Set var_128 = var_12C(CInt(&H2B))
  loc_1DE1327: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE132F: var_12C.Tag = var_132
  loc_1DE135D: Set var_98 = var_AC(CInt(&H2B))
  loc_1DE1363: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE136B:  = var_AC.Tag
  loc_1DE1382: If (var_130 <> vbNullString) Then
  loc_1DE13A3:   Set var_98 = var_AC(CInt(&H2B))
  loc_1DE13A9:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE13B1:   -1 = var_AC.Tag
  loc_1DE13CA:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE13D5:   Set var_88 = var_C0
  loc_1DE1401:   If (var_88.RecordCount > 0) Then
  loc_1DE141E:     var_AC = var_88.Fields.Item("Name")
  loc_1DE143D:     Set var_C0 = var_D4(CInt(&H2B))
  loc_1DE1443:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE144B:     var_D4.Text = 
  loc_1DE1461:   End If
  loc_1DE1464: Else
  loc_1DE1472:   Set var_98 = var_AC(CInt(&H2B))
  loc_1DE1478:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE1480:   var_AC.Text = 
  loc_1DE148C: End If
  loc_1DE14A9: var_AC = Me.Recordset15.Fields.Item("BookingPartyAc")
  loc_1DE14B1: var_BC = CVar(var_AC) 'Address
  loc_1DE14BA: var_132 = IsNull(var_BC)
  loc_1DE14D2: var_C0 = Me.Recordset15.Fields
  loc_1DE14DA: var_D4 = var_C0.Item("BookingPartyAc")
  loc_1DE1503: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE1512: Set var_128 = var_12C(CInt(&H2C))
  loc_1DE1518: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE1520: var_12C.Tag = var_132
  loc_1DE154E: Set var_98 = var_AC(CInt(&H2C))
  loc_1DE1554: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE155C:  = var_AC.Tag
  loc_1DE1573: If (var_130 <> vbNullString) Then
  loc_1DE1594:   Set var_98 = var_AC(CInt(&H2C))
  loc_1DE159A:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE15A2:   -1 = var_AC.Tag
  loc_1DE15BB:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE15C6:   Set var_88 = var_C0
  loc_1DE15F2:   If (var_88.RecordCount > 0) Then
  loc_1DE160F:     var_AC = var_88.Fields.Item("Name")
  loc_1DE162E:     Set var_C0 = var_D4(CInt(&H2C))
  loc_1DE1634:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE163C:     var_D4.Text = 
  loc_1DE1652:   End If
  loc_1DE1655: Else
  loc_1DE1663:   Set var_98 = var_AC(CInt(&H2C))
  loc_1DE1669:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE1671:   var_AC.Text = 
  loc_1DE167D: End If
  loc_1DE169A: var_AC = Me.Recordset15.Fields.Item("RoomTaxDueAc")
  loc_1DE16A2: var_BC = CVar(var_AC) 'Address
  loc_1DE16AB: var_132 = IsNull(var_BC)
  loc_1DE16C3: var_C0 = Me.Recordset15.Fields
  loc_1DE16CB: var_D4 = var_C0.Item("RoomTaxDueAc")
  loc_1DE16F4: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE1703: Set var_128 = var_12C(CInt(1))
  loc_1DE1709: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE1711: var_12C.Tag = var_132
  loc_1DE173F: Set var_98 = var_AC(CInt(1))
  loc_1DE1745: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE174D:  = var_AC.Tag
  loc_1DE1764: If (var_130 <> vbNullString) Then
  loc_1DE1785:   Set var_98 = var_AC(CInt(1))
  loc_1DE178B:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE1793:   -1 = var_AC.Tag
  loc_1DE17AC:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE17B7:   Set var_88 = var_C0
  loc_1DE17E3:   If (var_88.RecordCount > 0) Then
  loc_1DE1800:     var_AC = var_88.Fields.Item("Name")
  loc_1DE181F:     Set var_C0 = var_D4(CInt(1))
  loc_1DE1825:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE182D:     var_D4.Text = 
  loc_1DE1843:   End If
  loc_1DE1846: Else
  loc_1DE1854:   Set var_98 = var_AC(CInt(1))
  loc_1DE185A:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE1862:   var_AC.Text = 
  loc_1DE186E: End If
  loc_1DE188B: var_AC = Me.Recordset15.Fields.Item("CommissionAc")
  loc_1DE1893: var_BC = CVar(var_AC) 'Address
  loc_1DE189C: var_132 = IsNull(var_BC)
  loc_1DE18B4: var_C0 = Me.Recordset15.Fields
  loc_1DE18BC: var_D4 = var_C0.Item("CommissionAc")
  loc_1DE18E5: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE18F4: Set var_128 = var_12C(CInt(&H1A))
  loc_1DE18FA: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE1902: var_12C.Tag = var_132
  loc_1DE1930: Set var_98 = var_AC(CInt(&H1A))
  loc_1DE1936: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE193E:  = var_AC.Tag
  loc_1DE1955: If (var_130 <> vbNullString) Then
  loc_1DE1976:   Set var_98 = var_AC(CInt(&H1A))
  loc_1DE197C:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where Subcode='", var_BC)
  loc_1DE1984:   -1 = var_AC.Tag
  loc_1DE199D:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE19A8:   Set var_90 = var_C0
  loc_1DE19D7:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1DE19F7:     var_AC = Me.Recordset15.Fields.Item("Name")
  loc_1DE1A16:     Set var_C0 = var_D4(CInt(&H1A))
  loc_1DE1A1C:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE1A24:     var_D4.Text = 
  loc_1DE1A3A:   End If
  loc_1DE1A3D: Else
  loc_1DE1A4B:   Set var_98 = var_AC(CInt(&H1A))
  loc_1DE1A51:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE1A59:   var_AC.Text = 
  loc_1DE1A65: End If
  loc_1DE1A82: var_AC = Me.Recordset15.Fields.Item("CashPurchAc")
  loc_1DE1A8A: var_BC = CVar(var_AC) 'Address
  loc_1DE1A93: var_130 = Proc_6_38_E69628(var_BC)
  loc_1DE1AA1: Set var_C0 = var_D4(CInt(&HC))
  loc_1DE1AA7: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE1AAF: var_D4.Tag = 
  loc_1DE1AD1: Set var_98 = var_AC(CInt(&HC))
  loc_1DE1AD7: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE1ADF:  = var_AC.Tag
  loc_1DE1AF6: If (var_130 <> vbNullString) Then
  loc_1DE1B17:   Set var_98 = var_AC(CInt(&HC))
  loc_1DE1B1D:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE1B25:   -1 = var_AC.Tag
  loc_1DE1B3E:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE1B49:   Set var_88 = var_C0
  loc_1DE1B75:   If (var_88.RecordCount > 0) Then
  loc_1DE1B92:     var_AC = var_88.Fields.Item("Name")
  loc_1DE1BB1:     Set var_C0 = var_D4(CInt(&HC))
  loc_1DE1BB7:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE1BBF:     var_D4.Text = 
  loc_1DE1BD5:   End If
  loc_1DE1BD8: Else
  loc_1DE1BE6:   Set var_98 = var_AC(CInt(&HC))
  loc_1DE1BEC:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE1BF4:   var_AC.Text = 
  loc_1DE1C00: End If
  loc_1DE1C1D: var_AC = Me.Recordset15.Fields.Item("CashCardDebitAc")
  loc_1DE1C25: var_BC = CVar(var_AC) 'Address
  loc_1DE1C2E: var_132 = IsNull(var_BC)
  loc_1DE1C46: var_C0 = Me.Recordset15.Fields
  loc_1DE1C4E: var_D4 = var_C0.Item("CashCardDebitAc")
  loc_1DE1C77: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE1C86: Set var_128 = var_12C(CInt(&H44))
  loc_1DE1C8C: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE1C94: var_12C.Tag = var_132
  loc_1DE1CC2: Set var_98 = var_AC(CInt(&H44))
  loc_1DE1CC8: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE1CD0:  = var_AC.Tag
  loc_1DE1CE7: If (var_130 <> vbNullString) Then
  loc_1DE1D08:   Set var_98 = var_AC(CInt(&H44))
  loc_1DE1D0E:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE1D16:   -1 = var_AC.Tag
  loc_1DE1D2F:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE1D3A:   Set var_88 = var_C0
  loc_1DE1D66:   If (var_88.RecordCount > 0) Then
  loc_1DE1D83:     var_AC = var_88.Fields.Item("Name")
  loc_1DE1DA2:     Set var_C0 = var_D4(CInt(&H44))
  loc_1DE1DA8:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE1DB0:     var_D4.Text = 
  loc_1DE1DC6:   End If
  loc_1DE1DC9: Else
  loc_1DE1DD7:   Set var_98 = var_AC(CInt(&H44))
  loc_1DE1DDD:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE1DE5:   var_AC.Text = 
  loc_1DE1DF1: End If
  loc_1DE1E0E: var_AC = Me.Recordset15.Fields.Item("CashCardCreditAc")
  loc_1DE1E16: var_BC = CVar(var_AC) 'Address
  loc_1DE1E1F: var_132 = IsNull(var_BC)
  loc_1DE1E37: var_C0 = Me.Recordset15.Fields
  loc_1DE1E3F: var_D4 = var_C0.Item("CashCardCreditAc")
  loc_1DE1E68: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE1E77: Set var_128 = var_12C(CInt(&H45))
  loc_1DE1E7D: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE1E85: var_12C.Tag = var_132
  loc_1DE1EB3: Set var_98 = var_AC(CInt(&H45))
  loc_1DE1EB9: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE1EC1:  = var_AC.Tag
  loc_1DE1ED8: If (var_130 <> vbNullString) Then
  loc_1DE1EF9:   Set var_98 = var_AC(CInt(&H45))
  loc_1DE1EFF:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE1F07:   -1 = var_AC.Tag
  loc_1DE1F20:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE1F2B:   Set var_88 = var_C0
  loc_1DE1F57:   If (var_88.RecordCount > 0) Then
  loc_1DE1F74:     var_AC = var_88.Fields.Item("Name")
  loc_1DE1F93:     Set var_C0 = var_D4(CInt(&H45))
  loc_1DE1F99:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE1FA1:     var_D4.Text = 
  loc_1DE1FB7:   End If
  loc_1DE1FBA: Else
  loc_1DE1FC8:   Set var_98 = var_AC(CInt(&H45))
  loc_1DE1FCE:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE1FD6:   var_AC.Text = 
  loc_1DE1FE2: End If
  loc_1DE1FFF: var_AC = Me.Recordset15.Fields.Item("CashCardSecurityAc")
  loc_1DE2007: var_BC = CVar(var_AC) 'Address
  loc_1DE2010: var_132 = IsNull(var_BC)
  loc_1DE2028: var_C0 = Me.Recordset15.Fields
  loc_1DE2030: var_D4 = var_C0.Item("CashCardSecurityAc")
  loc_1DE2059: var_130 = CStr(IIf(var_132, vbNullString, CVar(var_D4)))
  loc_1DE2068: Set var_128 = var_12C(CInt(&H46))
  loc_1DE206E: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE2076: var_12C.Tag = var_132
  loc_1DE20A4: Set var_98 = var_AC(CInt(&H46))
  loc_1DE20AA: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE20B2:  = var_AC.Tag
  loc_1DE20C9: If (var_130 <> vbNullString) Then
  loc_1DE20EA:   Set var_98 = var_AC(CInt(&H46))
  loc_1DE20F0:   Call 0.Method_Proc_56_53_1DE71E80 (var_130, "Select Name From SubGroup Where SubCode='", var_BC)
  loc_1DE20F8:   -1 = var_AC.Tag
  loc_1DE2111:   unk_554C86.Execute var_C0 & var_130 & "'", , 
  loc_1DE211C:   Set var_88 = var_C0
  loc_1DE2148:   If (var_88.RecordCount > 0) Then
  loc_1DE2165:     var_AC = var_88.Fields.Item("Name")
  loc_1DE2184:     Set var_C0 = var_D4(CInt(&H46))
  loc_1DE218A:     Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_AC.Value))
  loc_1DE2192:     var_D4.Text = 
  loc_1DE21A8:   End If
  loc_1DE21AB: Else
  loc_1DE21B9:   Set var_98 = var_AC(CInt(&H46))
  loc_1DE21BF:   Call 0.Method_Proc_56_53_1DE71E80 (vbNullString)
  loc_1DE21C7:   var_AC.Text = 
  loc_1DE21D3: End If
  loc_1DE220F: Set var_C0 = var_D4(CInt(&H14))
  loc_1DE2215: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Rate1"))))
  loc_1DE221D: var_D4.Text = 
  loc_1DE226D: Set var_C0 = var_D4(CInt(&H15))
  loc_1DE2273: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Rate2"))))
  loc_1DE227B: var_D4.Text = 
  loc_1DE22CB: Set var_C0 = var_D4(CInt(&H13))
  loc_1DE22D1: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Rate3"))))
  loc_1DE22D9: var_D4.Text = 
  loc_1DE2329: Set var_C0 = var_D4(CInt(&H12))
  loc_1DE232F: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Rate4"))))
  loc_1DE2337: var_D4.Text = 
  loc_1DE2387: Set var_C0 = var_D4(CInt(&H16))
  loc_1DE238D: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Rate5"))))
  loc_1DE2395: var_D4.Text = 
  loc_1DE23D7: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("PF_LIMIT")))
  loc_1DE2429: Set var_128 = var_12C(CInt(7))
  loc_1DE242F: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_132, 0, CVar(Me.Recordset15.Fields.Item("PF_LIMIT")))))
  loc_1DE2437: var_12C.Text = var_132
  loc_1DE2485: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("PF_EMPLOYEE")))
  loc_1DE24D7: Set var_128 = var_12C(CInt(8))
  loc_1DE24DD: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_132, 0, CVar(Me.Recordset15.Fields.Item("PF_EMPLOYEE")))))
  loc_1DE24E5: var_12C.Text = var_132
  loc_1DE2533: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("PF_EMPLOYER")))
  loc_1DE2553: var_D4 = Me.Recordset15.Fields.Item("PF_EMPLOYER")
  loc_1DE2585: Set var_128 = var_12C(CInt(9))
  loc_1DE258B: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_132, 0, CVar(var_D4))))
  loc_1DE2593: var_12C.Text = var_132
  loc_1DE25EF: Set var_C0 = var_D4(CInt(&H30))
  loc_1DE25F5: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("AllowRoomSettlement"))))
  loc_1DE25FD: var_D4.Text = 
  loc_1DE263F: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("ESI_LIMIT")))
  loc_1DE2691: Set var_128 = var_12C(CInt(5))
  loc_1DE2697: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_132, 0, CVar(Me.Recordset15.Fields.Item("ESI_LIMIT")))))
  loc_1DE269F: var_12C.Text = var_132
  loc_1DE26ED: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("esi_employee")))
  loc_1DE270D: var_D4 = Me.Recordset15.Fields.Item("esi_employee")
  loc_1DE273F: Set var_128 = var_12C(CInt(6))
  loc_1DE2745: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_132, 0, CVar(var_D4))))
  loc_1DE274D: var_12C.Text = var_132
  loc_1DE27A7: Set var_C0 = var_D4(&H1D)
  loc_1DE27AD: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Bill_Footer"))))
  loc_1DE27B5: var_D4.Text = 
  loc_1DE2805: Set var_C0 = var_D4(CInt(&H1E))
  loc_1DE280B: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Bill_Header"))))
  loc_1DE2813: var_D4.Text = 
  loc_1DE2863: Set var_C0 = var_D4(CInt(&H42))
  loc_1DE2869: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BookingSlipFooter1"))))
  loc_1DE2871: var_D4.Text = 
  loc_1DE28C1: Set var_C0 = var_D4(CInt(&H43))
  loc_1DE28C7: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BookingSlipFooter2"))))
  loc_1DE28CF: var_D4.Text = 
  loc_1DE29A3: var_17C = IsNull(Trim(CVar(Me.Recordset15.Fields.Item("variation")))) Or (Trim(CVar(Me.Recordset15.Fields.Item("variation"))) = vbNullString)
  loc_1DE29C9: Set var_1F0 = var_1F4(CInt(&HB))
  loc_1DE29CF: Call 0.Method_Proc_56_53_1DE71E80 (CVar(CStr(IIf(var_17C, "00:00", Trim(CVar(Me.Recordset15.Fields.Item("variation")))))))
  loc_1DE29D7: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_1DE2A3B: var_132 = IsNull(Trim(CVar(Me.var_1F4.Fields.Item("VariationBefore"))))
  loc_1DE2A8C: var_12C = Me.Recordset15.Fields.Item("VariationBefore")
  loc_1DE2AD9: var_204 = CVar(CStr(IIf(var_132 Or (Trim(CVar(Me.Recordset15.Fields.Item("VariationBefore"))) = vbNullString), "00:00", Trim(CVar(var_12C))))) 'String
  loc_1DE2AE8: Set var_1F0 = var_1F4(CInt(&H3D))
  loc_1DE2AEE: Call 0.Method_Proc_56_53_1DE71E80 (var_204, var_132)
  loc_1DE2AF6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_1DE2BA3: var_15C = IIf((Proc_6_38_E69628(CVar(Me.var_1F4.Fields.Item("ItemRateInMRBasedOn"))) = vbNullString), "Purchase Rate", Trim(CVar(Me.Recordset15.Fields.Item("ItemRateInMRBasedOn"))))
  loc_1DE2BBA: Set var_128 = var_12C(CInt(&H7D))
  loc_1DE2BC0: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE2BC8: var_12C.Text = var_132
  loc_1DE2C72: var_15C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ItemRateInPurchaseBillBasedOn"))) = vbNullString), "Purchase Rate", Trim(CVar(Me.Recordset15.Fields.Item("ItemRateInPurchaseBillBasedOn"))))
  loc_1DE2C89: Set var_128 = var_12C(CInt(&H7E))
  loc_1DE2C8F: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE2C97: var_12C.Text = 
  loc_1DE2D0D: var_D4 = Me.Recordset15.Fields.Item("KOTPrintEdited")
  loc_1DE2D49: var_138 = CStr(IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("KOTPrintEdited"))) = vbNullString), "All Items", Trim(CVar(var_D4))))
  loc_1DE2D57: Set var_128 = var_12C(130)
  loc_1DE2D5D: Call 0.Method_Proc_56_53_1DE71E80 (var_138)
  loc_1DE2D65: var_12C.Text = 
  loc_1DE2DC9: Set var_C0 = var_D4(CInt(0))
  loc_1DE2DCF: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CheckOut"))))
  loc_1DE2DD7: var_D4.Text = 
  loc_1DE2E27: Set var_C0 = var_D4(CInt(&H1C))
  loc_1DE2E2D: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("calcMethod"))))
  loc_1DE2E35: var_D4.Text = 
  loc_1DE2E85: Set var_C0 = var_D4(CInt(&H27))
  loc_1DE2E8B: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("KOTPrinting"))))
  loc_1DE2E93: var_D4.Text = 
  loc_1DE2F29: var_15C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TaxSummary"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("TaxSummary"))))
  loc_1DE2F40: Set var_128 = var_12C(CInt(&H28))
  loc_1DE2F46: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE2F4E: var_12C.Text = 
  loc_1DE2FF8: var_15C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BillPrintingSummerised"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("BillPrintingSummerised"))))
  loc_1DE300F: Set var_128 = var_12C(CInt(&H48))
  loc_1DE3015: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE301D: var_12C.Text = 
  loc_1DE30C7: var_15C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ReqCompWise"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("ReqCompWise"))))
  loc_1DE30DE: Set var_128 = var_12C(CInt(&H56))
  loc_1DE30E4: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE30EC: var_12C.Text = 
  loc_1DE3196: var_15C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("AcFieldAlterable"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("AcFieldAlterable"))))
  loc_1DE31AD: Set var_128 = var_12C(CInt(&H57))
  loc_1DE31B3: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE31BB: var_12C.Text = 
  loc_1DE3265: var_15C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ExpMfdDateInMR"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("ExpMfdDateInMR"))))
  loc_1DE327C: Set var_128 = var_12C(CInt(&H59))
  loc_1DE3282: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE328A: var_12C.Text = 
  loc_1DE3334: var_15C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RateEditableInPO"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("RateEditableInPO"))))
  loc_1DE334B: Set var_128 = var_12C(CInt(&H75))
  loc_1DE3351: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE3359: var_12C.Text = 
  loc_1DE3403: var_15C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RateEditableInStockIssue"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("RateEditableInStockIssue"))))
  loc_1DE341A: Set var_128 = var_12C(CInt(&H76))
  loc_1DE3420: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE3428: var_12C.Text = 
  loc_1DE34D2: var_15C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BarCodeFeatureInPurchase"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("BarCodeFeatureInPurchase"))))
  loc_1DE34E9: Set var_128 = var_12C(CInt(&H7B))
  loc_1DE34EF: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE34F7: var_12C.Text = 
  loc_1DE35A1: var_15C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ReprintingOnSaleBillYN"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("ReprintingOnSaleBillYN"))))
  loc_1DE35B8: Set var_128 = var_12C(CInt(&H7F))
  loc_1DE35BE: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE35C6: var_12C.Text = 
  loc_1DE3670: var_15C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("HideSettledBillsOnSaleBillYN"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("HideSettledBillsOnSaleBillYN"))))
  loc_1DE3688: Set var_128 = var_12C(CInt(132))
  loc_1DE368E: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE3696: var_12C.Text = 
  loc_1DE3740: var_15C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("AddModifyEntryInBackDate"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("AddModifyEntryInBackDate"))))
  loc_1DE3757: Set var_128 = var_12C(CInt(&H5B))
  loc_1DE375D: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE3765: var_12C.Text = 
  loc_1DE380F: var_15C = IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("TokenPrint"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("TokenPrint"))))
  loc_1DE3826: Set var_128 = var_12C(CInt(&H2A))
  loc_1DE382C: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_15C))
  loc_1DE3834: var_12C.Text = 
  loc_1DE38AA: var_D4 = Me.Recordset15.Fields.Item("KOTOutletSelection")
  loc_1DE38E6: var_138 = CStr(IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("KOTOutletSelection"))) = vbNullString), "Yes", Trim(CVar(var_D4))))
  loc_1DE38F4: Set var_128 = var_12C(135)
  loc_1DE38FA: Call 0.Method_Proc_56_53_1DE71E80 (var_138)
  loc_1DE3902: var_12C.Text = 
  loc_1DE3947: var_AC = Me.Recordset15.Fields.Item("SplitYN")
  loc_1DE3966: Set var_C0 = var_D4(CInt(&H31))
  loc_1DE396C: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(var_AC)))
  loc_1DE3974: var_D4.Text = 
  loc_1DE3993: Set var_98 = var_AC(CInt(&H31))
  loc_1DE3999: Call 0.Method_Proc_56_53_1DE71E80 ()
  loc_1DE39E4: (CBool(IIf((Left(CVar(var_AC), 1) = "Y"), True, False))).Visible = 
  loc_1DE3A65: (CInt(IIf((Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("AutoSplitYN"))) = "Y"), 1, 0))).Value = 
  loc_1DE3AC1: Set var_C0 = var_D4(CInt(&HD))
  loc_1DE3AC7: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PostingType"))))
  loc_1DE3ACF: var_D4.Text = 
  loc_1DE3B7A: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomRentBefChkOut"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomRentBefChkOut"))))))
  loc_1DE3B91: Set var_128 = var_12C(CInt(&H3A))
  loc_1DE3B97: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE3B9F: var_12C.Text = 
  loc_1DE3C5E: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomRentChkOutPost"))))) = vbNullString), "Semi", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomRentChkOutPost"))))))
  loc_1DE3C75: Set var_128 = var_12C(CInt(&H3B))
  loc_1DE3C7B: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE3C83: var_12C.Text = 
  loc_1DE3D20: var_F4 = "Room Category + Adult"
  loc_1DE3D42: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PlanSelectionBasedOn"))))) = vbNullString), "Semi", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PlanSelectionBasedOn"))))))
  loc_1DE3D58: Set var_128 = var_12C(138)
  loc_1DE3D5E: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE3D66: var_12C.Text = 
  loc_1DE3DBC: var_104 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PlanCalc")))) 'String
  loc_1DE3DE4: var_D4 = Me.Recordset15.Fields.Item("PlanCalc")
  loc_1DE3E3C: Set var_128 = var_12C(CInt(&H3C))
  loc_1DE3E42: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf((Trim(var_104) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(var_D4)))))))
  loc_1DE3E4A: var_12C.Text = 
  loc_1DE3E9E: Proc_6_39_E7D3A0(var_104)
  loc_1DE3EB5: Set var_C0 = var_D4(CInt(&H3D))
  loc_1DE3EBB: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_104))
  loc_1DE3EC3: var_D4.Text = CVar(Me.Recordset15.Fields.Item("FOMBillCopies"))
  loc_1DE3F72: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PrintRcpt"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PrintRcpt"))))))
  loc_1DE3F89: Set var_128 = var_12C(CInt(&H3E))
  loc_1DE3F8F: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE3F97: var_12C.Text = 
  loc_1DE4056: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomCheckOutClearanceYN"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomCheckOutClearanceYN"))))))
  loc_1DE406E: Set var_128 = var_12C(CInt(131))
  loc_1DE4074: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE407C: var_12C.Text = 
  loc_1DE413B: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RcptPrinting"))))) = vbNullString), "W", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RcptPrinting"))))))
  loc_1DE4152: Set var_128 = var_12C(CInt(&H3F))
  loc_1DE4158: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE4160: var_12C.Text = 
  loc_1DE421F: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("POSBillAtNightAudit"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("POSBillAtNightAudit"))))))
  loc_1DE4236: Set var_128 = var_12C(CInt(&H40))
  loc_1DE423C: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE4244: var_12C.Text = 
  loc_1DE4303: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("KOTAtNightAudit"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("KOTAtNightAudit"))))))
  loc_1DE431A: Set var_128 = var_12C(CInt(&H5C))
  loc_1DE4320: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE4328: var_12C.Text = 
  loc_1DE43A6: var_D4 = Me.Recordset15.Fields.Item("NoShowAtNightAudit")
  loc_1DE43E7: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("NoShowAtNightAudit"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(var_D4)))))
  loc_1DE43FE: Set var_128 = var_12C(CInt(&H41))
  loc_1DE4404: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE440C: var_12C.Text = 
  loc_1DE4451: var_AC = Me.Recordset15.Fields.Item("BillAmendMode")
  loc_1DE4462: var_130 = Proc_6_38_E69628(CVar(var_AC))
  loc_1DE4470: Set var_C0 = var_D4(CInt(&H39))
  loc_1DE4476: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE447E: var_D4.Text = 
  loc_1DE44A0: Set var_98 = var_AC(CInt(0))
  loc_1DE44A6: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE44AE:  = var_AC.Text
  loc_1DE44C5: If (var_130 <> "24 Hrs") Then
  loc_1DE44D3:   Set var_98 = var_AC(CInt(1))
  loc_1DE44D9:   Call 0.Method_Proc_56_53_1DE71E80 ()
  loc_1DE44F7:   If (CBool(var_AC.Visible) = 0) Then
  loc_1DE4509:     Set var_98 = var_AC(CInt(1))
  loc_1DE450F:     Call 0.Method_Proc_56_53_1DE71E80 (True)
  loc_1DE4517:     var_AC.Visible = 
  loc_1DE4523:   End If
  loc_1DE4523: End If
  loc_1DE45AD: var_12C = Me.Recordset15.Fields.Item("CheckoutVar")
  loc_1DE45E3: var_17C = IsNull(Trim(CVar(Me.Recordset15.Fields.Item("CheckoutVar")))) Or (Trim(CVar(Me.Recordset15.Fields.Item("CheckoutVar"))) = vbNullString)
  loc_1DE4609: Set var_1F0 = var_1F4(CInt(1))
  loc_1DE460F: Call 0.Method_Proc_56_53_1DE71E80 (CVar(CStr(IIf(var_17C, "00:00", Trim(CVar(var_12C))))))
  loc_1DE4617: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_1DE4670: var_132 = IsNull(CVar(Me.var_1F4.Fields.Item("OutDoorCatering")))
  loc_1DE46C8: Set var_128 = var_12C(CInt(&HE))
  loc_1DE46CE: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_132, "No", CVar(Me.Recordset15.Fields.Item("OutDoorCatering")))), var_132)
  loc_1DE46D6: var_12C.Text = var_132
  loc_1DE4724: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("CatalogLimit")))
  loc_1DE4744: var_D4 = Me.Recordset15.Fields.Item("CatalogLimit")
  loc_1DE477C: Set var_128 = var_12C(CInt(&HF))
  loc_1DE4782: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_132, "No", CVar(var_D4))))
  loc_1DE478A: var_12C.Text = var_132
  loc_1DE47E6: Set var_C0 = var_D4(CInt(&H2D))
  loc_1DE47EC: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RoomChrgPostingType"))))
  loc_1DE47F4: var_D4.Text = 
  loc_1DE4844: Set var_C0 = var_D4(CInt(&H2E))
  loc_1DE484A: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PlanMastType"))))
  loc_1DE4852: var_D4.Text = 
  loc_1DE48FD: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("KitchenStockReport"))))) = vbNullString), "Standard", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("KitchenStockReport"))))))
  loc_1DE4914: Set var_128 = var_12C(CInt(&H7C))
  loc_1DE491A: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE4922: var_12C.Text = 
  loc_1DE49E1: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PostComplimentaryBills"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PostComplimentaryBills"))))))
  loc_1DE49F8: Set var_128 = var_12C(CInt(&H2F))
  loc_1DE49FE: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE4A06: var_12C.Text = 
  loc_1DE4AC5: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PostRoomDiscSeparately"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PostRoomDiscSeparately"))))))
  loc_1DE4ADC: Set var_128 = var_12C(CInt(&H7A))
  loc_1DE4AE2: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE4AEA: var_12C.Text = 
  loc_1DE4BA9: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("POSSaleRevenueBifercation"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("POSSaleRevenueBifercation"))))))
  loc_1DE4BBF: Set var_128 = var_12C(129)
  loc_1DE4BC5: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE4BCD: var_12C.Text = 
  loc_1DE4C8C: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PostPOSDiscSeparately"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PostPOSDiscSeparately"))))))
  loc_1DE4CA4: Set var_128 = var_12C(CInt(128))
  loc_1DE4CAA: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE4CB2: var_12C.Text = 
  loc_1DE4D71: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CoversMandatory"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CoversMandatory"))))))
  loc_1DE4D87: Set var_128 = var_12C(140)
  loc_1DE4D8D: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE4D95: var_12C.Text = 
  loc_1DE4E54: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MobileNoMandatory"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("MobileNoMandatory"))))))
  loc_1DE4E6A: Set var_128 = var_12C(141)
  loc_1DE4E70: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE4E78: var_12C.Text = 
  loc_1DE4F37: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RRIncTaxDefault"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RRIncTaxDefault"))))))
  loc_1DE4F4F: Set var_128 = var_12C(CInt(142))
  loc_1DE4F55: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE4F5D: var_12C.Text = 
  loc_1DE501C: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RRSerChrgDefault"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RRSerChrgDefault"))))))
  loc_1DE5034: Set var_128 = var_12C(CInt(143))
  loc_1DE503A: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE5042: var_12C.Text = 
  loc_1DE5101: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ShowTitleBar"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ShowTitleBar"))))))
  loc_1DE5119: Set var_128 = var_12C(CInt(144))
  loc_1DE511F: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE5127: var_12C.Text = 
  loc_1DE51E6: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ShowMenuBar"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ShowMenuBar"))))))
  loc_1DE51FC: Set var_128 = var_12C(145)
  loc_1DE5202: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE520A: var_12C.Text = 
  loc_1DE52C9: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ShowSubMenuBar"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ShowSubMenuBar"))))))
  loc_1DE52DF: Set var_128 = var_12C(146)
  loc_1DE52E5: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE52ED: var_12C.Text = 
  loc_1DE53AC: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ShowShortCutsBar"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ShowShortCutsBar"))))))
  loc_1DE53C4: Set var_128 = var_12C(CInt(147))
  loc_1DE53CA: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE53D2: var_12C.Text = 
  loc_1DE5491: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ServiceTaxOnServiceChargeYN"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ServiceTaxOnServiceChargeYN"))))))
  loc_1DE54A9: Set var_128 = var_12C(CInt(148))
  loc_1DE54AF: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE54B7: var_12C.Text = 
  loc_1DE556C: var_19C = (Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SeperateReservationLetterAsPerStatusYN"))))) = vbNullString) 'Variant
  loc_1DE557E: var_130 = CStr(IIf(var_19C, "No", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SeperateReservationLetterAsPerStatusYN")))))))
  loc_1DE558C: Set var_128 = var_12C(149)
  loc_1DE5592: Call 0.Method_Proc_56_53_1DE71E80 (var_130)
  loc_1DE559A: var_12C.Text = 
  loc_1DE5659: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ReservationExpandOnSaveYN"))))) = vbNullString), "Yes", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ReservationExpandOnSaveYN"))))))
  loc_1DE566F: Set var_128 = var_12C(150)
  loc_1DE5675: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE567D: var_12C.Text = 
  loc_1DE56FB: var_D4 = Me.Recordset15.Fields.Item("BlockInvalidTarrifIncTaxYN")
  loc_1DE573C: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("BlockInvalidTarrifIncTaxYN"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(var_D4)))))
  loc_1DE5752: Set var_128 = var_12C(151)
  loc_1DE5758: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE5760: var_12C.Text = 
  loc_1DE57C4: Set var_C0 = var_D4(CInt(&H32))
  loc_1DE57CA: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("SmartPurchaseOrder"))))
  loc_1DE57D2: var_D4.Text = 
  loc_1DE587D: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("OrderBookingPrintType"))))) = vbNullString), "D", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("OrderBookingPrintType"))))))
  loc_1DE5894: Set var_128 = var_12C(CInt(&H47))
  loc_1DE589A: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE58A2: var_12C.Text = 
  loc_1DE5961: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RptCashierSettlementAllUser"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("RptCashierSettlementAllUser"))))))
  loc_1DE5978: Set var_128 = var_12C(CInt(&H4A))
  loc_1DE597E: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE5986: var_12C.Text = 
  loc_1DE5A45: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("POSSaleBillEditLog"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("POSSaleBillEditLog"))))))
  loc_1DE5A5C: Set var_128 = var_12C(CInt(&H55))
  loc_1DE5A62: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE5A6A: var_12C.Text = 
  loc_1DE5B29: var_1DC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("GuestChargesDeleteLog"))))) = vbNullString), "No", Trim(CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("GuestChargesDeleteLog"))))))
  loc_1DE5B3F: Set var_128 = var_12C(134)
  loc_1DE5B45: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1DC))
  loc_1DE5B4D: var_12C.Text = 
  loc_1DE5BA3: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("GRCMandatory")))
  loc_1DE5C3B: var_18C = var_132 Or (Me.Recordset15.Fields.Item("GRCMandatory").Value = "N") Or (Me.Recordset15.Fields.Item("GRCMandatory").Value = vbNullString)
  loc_1DE5C60: Set var_1F0 = var_1F4(CInt(&H4B))
  loc_1DE5C66: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_18C, "No", "Yes")))
  loc_1DE5C6E: var_1F4.Text = var_132
  loc_1DE5CC8: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("RoomRateEditable")))
  loc_1DE5D60: var_18C = var_132 Or (Me.Recordset15.Fields.Item("RoomRateEditable").Value = "Y") Or (Me.Recordset15.Fields.Item("RoomRateEditable").Value = vbNullString)
  loc_1DE5D85: Set var_1F0 = var_1F4(CInt(&H77))
  loc_1DE5D8B: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_18C, "Yes", "No")))
  loc_1DE5D93: var_1F4.Text = var_132
  loc_1DE5DED: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("RoomIncTaxEditable")))
  loc_1DE5E85: var_18C = var_132 Or (Me.Recordset15.Fields.Item("RoomIncTaxEditable").Value = "Y") Or (Me.Recordset15.Fields.Item("RoomIncTaxEditable").Value = vbNullString)
  loc_1DE5EAA: Set var_1F0 = var_1F4(CInt(&H78))
  loc_1DE5EB0: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_18C, "Yes", "No")))
  loc_1DE5EB8: var_1F4.Text = var_132
  loc_1DE5F12: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("RoomServiceChargeEditable")))
  loc_1DE5FAA: var_18C = var_132 Or (Me.Recordset15.Fields.Item("RoomServiceChargeEditable").Value = "Y") Or (Me.Recordset15.Fields.Item("RoomServiceChargeEditable").Value = vbNullString)
  loc_1DE5FCF: Set var_1F0 = var_1F4(CInt(&H79))
  loc_1DE5FD5: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_18C, "Yes", "No")))
  loc_1DE5FDD: var_1F4.Text = var_132
  loc_1DE6037: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("CreditCardInfoMandatory")))
  loc_1DE6087: var_12C = Me.Recordset15.Fields.Item("GRCMandatory")
  loc_1DE60DD: var_1EC = IIf(var_132 Or (Me.Recordset15.Fields.Item("CreditCardInfoMandatory").Value = "Y") Or (var_12C.Value = vbNullString), "Yes", "No")
  loc_1DE60F4: Set var_1F0 = var_1F4(CInt(&H58))
  loc_1DE60FA: Call 0.Method_Proc_56_53_1DE71E80 (CStr(var_1EC))
  loc_1DE6102: var_1F4.Text = var_132
  loc_1DE615C: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("NCKOTPercentage")))
  loc_1DE617C: var_D4 = Me.Recordset15.Fields.Item("NCKOTPercentage")
  loc_1DE61AE: Set var_128 = var_12C(CInt(&H4C))
  loc_1DE61B4: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_132, 100, CVar(var_D4))))
  loc_1DE61BC: var_12C.Text = var_132
  loc_1DE6218: Set var_C0 = var_D4(CInt(&H4D))
  loc_1DE621E: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("KOTHeader1"))))
  loc_1DE6226: var_D4.Text = 
  loc_1DE6276: Set var_C0 = var_D4(CInt(&H4E))
  loc_1DE627C: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("KOTHeader2"))))
  loc_1DE6284: var_D4.Text = 
  loc_1DE62D4: Set var_C0 = var_D4(CInt(&H4F))
  loc_1DE62DA: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("KOTHeader3"))))
  loc_1DE62E2: var_D4.Text = 
  loc_1DE6332: Set var_C0 = var_D4(CInt(&H50))
  loc_1DE6338: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("KOTHeader4"))))
  loc_1DE6340: var_D4.Text = 
  loc_1DE6382: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("GAppCompYear")))
  loc_1DE63D4: Set var_128 = var_12C(CInt(&H51))
  loc_1DE63DA: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_132, 0, CVar(Me.Recordset15.Fields.Item("GAppCompYear")))))
  loc_1DE63E2: var_12C.Text = var_132
  loc_1DE6430: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("GMonthConsidered")))
  loc_1DE6482: Set var_128 = var_12C(CInt(&H52))
  loc_1DE6488: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_132, 0, CVar(Me.Recordset15.Fields.Item("GMonthConsidered")))))
  loc_1DE6490: var_12C.Text = var_132
  loc_1DE64DE: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("GWorkingDaysInAMonth")))
  loc_1DE6530: Set var_128 = var_12C(CInt(&H53))
  loc_1DE6536: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_132, 0, CVar(Me.Recordset15.Fields.Item("GWorkingDaysInAMonth")))))
  loc_1DE653E: var_12C.Text = var_132
  loc_1DE658C: var_132 = IsNull(CVar(Me.Recordset15.Fields.Item("GDaysSalary")))
  loc_1DE65AC: var_D4 = Me.Recordset15.Fields.Item("GDaysSalary")
  loc_1DE65DE: Set var_128 = var_12C(CInt(&H54))
  loc_1DE65E4: Call 0.Method_Proc_56_53_1DE71E80 (CStr(IIf(var_132, 0, CVar(var_D4))))
  loc_1DE65EC: var_12C.Text = var_132
  loc_1DE6648: Set var_C0 = var_D4(CInt(&H5D))
  loc_1DE664E: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ResInstruction1"))))
  loc_1DE6656: var_D4.Text = 
  loc_1DE66A6: Set var_C0 = var_D4(CInt(&H5E))
  loc_1DE66AC: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ResInstruction2"))))
  loc_1DE66B4: var_D4.Text = 
  loc_1DE6704: Set var_C0 = var_D4(CInt(&H5F))
  loc_1DE670A: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ResInstruction3"))))
  loc_1DE6712: var_D4.Text = 
  loc_1DE6762: Set var_C0 = var_D4(CInt(&H60))
  loc_1DE6768: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ResInstruction4"))))
  loc_1DE6770: var_D4.Text = 
  loc_1DE67C0: Set var_C0 = var_D4(CInt(&H61))
  loc_1DE67C6: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ResInstruction5"))))
  loc_1DE67CE: var_D4.Text = 
  loc_1DE681E: Set var_C0 = var_D4(CInt(&H62))
  loc_1DE6824: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ResInstruction6"))))
  loc_1DE682C: var_D4.Text = 
  loc_1DE687C: Set var_C0 = var_D4(CInt(&H63))
  loc_1DE6882: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ResInstruction7"))))
  loc_1DE688A: var_D4.Text = 
  loc_1DE68DA: Set var_C0 = var_D4(CInt(&H64))
  loc_1DE68E0: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ResInstruction8"))))
  loc_1DE68E8: var_D4.Text = 
  loc_1DE6938: Set var_C0 = var_D4(CInt(&H65))
  loc_1DE693E: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ResInstruction9"))))
  loc_1DE6946: var_D4.Text = 
  loc_1DE6996: Set var_C0 = var_D4(CInt(&H66))
  loc_1DE699C: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ResInstruction10"))))
  loc_1DE69A4: var_D4.Text = 
  loc_1DE69F4: Set var_C0 = var_D4(CInt(&H67))
  loc_1DE69FA: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ResInstruction11"))))
  loc_1DE6A02: var_D4.Text = 
  loc_1DE6A52: Set var_C0 = var_D4(CInt(&H68))
  loc_1DE6A58: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ResInstruction12"))))
  loc_1DE6A60: var_D4.Text = 
  loc_1DE6AB0: Set var_C0 = var_D4(CInt(&H69))
  loc_1DE6AB6: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("FPInstruction1"))))
  loc_1DE6ABE: var_D4.Text = 
  loc_1DE6B0E: Set var_C0 = var_D4(CInt(&H6A))
  loc_1DE6B14: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("FPInstruction2"))))
  loc_1DE6B1C: var_D4.Text = 
  loc_1DE6B6C: Set var_C0 = var_D4(CInt(&H6B))
  loc_1DE6B72: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("FPInstruction3"))))
  loc_1DE6B7A: var_D4.Text = 
  loc_1DE6BCA: Set var_C0 = var_D4(CInt(&H6C))
  loc_1DE6BD0: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("FPInstruction4"))))
  loc_1DE6BD8: var_D4.Text = 
  loc_1DE6C28: Set var_C0 = var_D4(CInt(&H6D))
  loc_1DE6C2E: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("FPInstruction5"))))
  loc_1DE6C36: var_D4.Text = 
  loc_1DE6C86: Set var_C0 = var_D4(CInt(&H6E))
  loc_1DE6C8C: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("FPInstruction6"))))
  loc_1DE6C94: var_D4.Text = 
  loc_1DE6CE4: Set var_C0 = var_D4(CInt(&H6F))
  loc_1DE6CEA: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("FPInstruction7"))))
  loc_1DE6CF2: var_D4.Text = 
  loc_1DE6D42: Set var_C0 = var_D4(CInt(&H70))
  loc_1DE6D48: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("FPInstruction8"))))
  loc_1DE6D50: var_D4.Text = 
  loc_1DE6DA0: Set var_C0 = var_D4(CInt(&H71))
  loc_1DE6DA6: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("FPInstruction9"))))
  loc_1DE6DAE: var_D4.Text = 
  loc_1DE6DFE: Set var_C0 = var_D4(CInt(&H72))
  loc_1DE6E04: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("FPInstruction10"))))
  loc_1DE6E0C: var_D4.Text = 
  loc_1DE6E5C: Set var_C0 = var_D4(CInt(&H73))
  loc_1DE6E62: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("FPInstruction11"))))
  loc_1DE6E6A: var_D4.Text = 
  loc_1DE6EBA: Set var_C0 = var_D4(CInt(&H74))
  loc_1DE6EC0: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("FPInstruction12"))))
  loc_1DE6EC8: var_D4.Text = 
  loc_1DE6F19: Set var_C0 = var_D4(CInt(133))
  loc_1DE6F1F: Call 0.Method_Proc_56_53_1DE71E80 (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("PlanTariffNarration"))))
  loc_1DE6F27: var_D4.Text = 
  loc_1DE6F7A: Loop Until (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ESIBasic"))) = "Y") 'do at: 1DD6F94
  loc_1DE6F89: (1).Value = 
  loc_1DE6F91: GoTo loc_1DD6FA8
  loc_1DE6FA0: (0).Value = 
  loc_1DE6FE7: Loop Until (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ESIDA"))) = "Y") 'do at: 1DD7001
  loc_1DE6FF6: (1).Value = 
  loc_1DE6FFE: GoTo loc_1DD7015
  loc_1DE700D: (0).Value = 
  loc_1DE7054: Loop Until (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ESIHRA"))) = "Y") 'do at: 1DD706E
  loc_1DE7063: (1).Value = 
  loc_1DE706B: GoTo loc_1DD7082
  loc_1DE707A: (0).Value = 
  loc_1DE70C1: Loop Until (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ESIConvey"))) = "Y") 'do at: 1DD70DB
  loc_1DE70D0: (1).Value = 
  loc_1DE70D8: GoTo loc_1DD70EF
  loc_1DE70E7: (0).Value = 
  loc_1DE712E: Loop Until (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ESIOther"))) = "Y") 'do at: 1DD7148
  loc_1DE713D: (1).Value = 
  loc_1DE7145: GoTo loc_1DD715C
  loc_1DE7154: (0).Value = 
  loc_1DE719B: Loop Until (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("ESILTA"))) = "Y") 'do at: 1DD71B5
  loc_1DE71AA: (1).Value = 
  loc_1DE71B2: GoTo loc_1DD71C9
  loc_1DE71C1: (0).Value = 
  loc_1DE71CE: Set var_88 = Nothing
  loc_1DE71D6: Set var_90 = Nothing
  loc_1DE71D9: Call Proc_56_54_FB6794()
  loc_1DE71DE: Exit Sub
  loc_1DE71DF: Proc_6_60_E63754()
  loc_1DE71E4: Exit Sub
End Sub

Public Sub Proc_56_54_FB6794
  'Data Table: 554C84
  loc_FB6600: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FB6612:   Me.DGHelp.Visible = False
  loc_FB661A: End If
  loc_FB6636: If (CBool(Me.DGGroup.Visible) = &HFF) Then
  loc_FB6648:   Me.DGGroup.Visible = False
  loc_FB6650: End If
  loc_FB666C: If (CBool(().Visible) = &HFF) Then
  loc_FB667E:   (False).Visible = 
  loc_FB6686: End If
  loc_FB6693:  = (var_BA).Visible
  loc_FB66A1: If (var_BA = &HFF) Then
  loc_FB66B0:   (0).Visible = 
  loc_FB66B8: End If
  loc_FB66D4: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_FB66E6:   Me.DGDepart.Visible = False
  loc_FB66EE: End If
  loc_FB670A: If (CBool(Me.DGPurchaseGodown.Visible) = &HFF) Then
  loc_FB671C:   Me.DGPurchaseGodown.Visible = False
  loc_FB6724: End If
  loc_FB6740: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_FB6752:   Me.DGTaxStru.Visible = False
  loc_FB675A: End If
  loc_FB6776: If (CBool(().Visible) = &HFF) Then
  loc_FB6788:   (False).Visible = 
  loc_FB6790: End If
  loc_FB6790: Exit Sub
End Sub

Public Sub Proc_56_55_10DB980
  'Data Table: 554C84
  Dim var_94 As String
  Dim var_9C As String
  Dim unk_554C86 As Connection15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_86 As Integer
  Dim var_10C As Variant
  Dim var_124 As DataGrid
  Dim var_BC As Variant
  loc_10DB68C: On Error Goto loc_10DB97F
  loc_10DB6AA: var_94 = "Select Code,Name,SplitSeqNo From RevMast where Code Not In ('" & MemVar_1F95078 & "ROFF') And (PayType<>'Hold'  OR PayType is NULL) and (LOGSITE_CODE='"
  loc_10DB6B8: var_9C = var_94 & MemVar_1F95078 & "') AND ((Fieldtype in ('C','P')  AND FLAGTYPE='FOM') OR (PAYTYPE<>'Company' AND PAYTYPE<>'' AND PAYTYPE IS NOT NULL)) ORDER BY NAME"
  loc_10DB6C1: unk_554C86.Execute var_9C, var_BC, -1
  loc_10DB6CC: Set var_8C = var_C0
  loc_10DB6F7: If (Me.Recordset15.RecordCount > 0) Then
  loc_10DB711:   var_AC = CVar((Me.Recordset15.RecordCount + 1)) 'Long
  loc_10DB720:   var_C0(var_AC).RowCount = 
  loc_10DB72B: Else
  loc_10DB73E:   (2).RowCount = 
  loc_10DB746: End If
  loc_10DB753: Set var_C0 = (1)
  loc_10DB763: var_86 = 1
  loc_10DB766: ' Referenced from: 10DB958
  loc_10DB778: If Not(Me.Recordset15.EOF) Then
  loc_10DB77F:   Set var_DC = DGTaxStru.DispID_A(var_86)
  loc_10DB78C:   ().InsertRows , 
  loc_10DB7A7:   var_10C = CVar(CStr(var_86)) 'String
  loc_10DB7AE:   LateIdCallSt
  loc_10DB7C4:   Set var_124 = var_10C(var_DC)
  loc_10DB7CA:   var_124.InsertRows CVar(CLng(0)), CVar(CLng())
  loc_10DB812:   LateIdCallSt
  loc_10DB82E:   Set var_124 = CVar(Proc_6_38_E69628(CVar(Me.var_124.Fields.Item("Name")), CVar(CLng(1))))(var_DC)
  loc_10DB873:   Proc_6_39_E7D3A0(var_10C, CVar(Me.var_124.Fields.Item("SplitSeqNo")))
  loc_10DB883:   LateIdCallSt
  loc_10DB8A1:   Set var_124 = CVar(CStr(var_10C))(var_DC)
  loc_10DB8A7:   ar(CLng()), CVar(CLng(2)), CVar(CLng())
  loc_10DB8EF:   LateIdCallSt
  loc_10DB917:   CVar(Proc_6_38_E69628(CVar(Me.var_124.Fields.Item("Code")), CVar(CLng(3))))(Nothing).InsertRows CVar(CLng()), 
  loc_10DB926:   var_AC = CVar((CLng() + 1)) 'Long
  loc_10DB92F:   Set var_120 = ("Code")
  loc_10DB94A:   var_86 = (var_86 + 1)
  loc_10DB953:   Me.Recordset15.MoveNext
  loc_10DB958:   GoTo loc_10DB766
  loc_10DB95B: End If
  loc_10DB968: Set var_C0 = var_86(1)
  loc_10DB97B: Set var_8C = Nothing
  loc_10DB97E: Exit Sub
  loc_10DB97F: ' Referenced from: 10DB68C
  loc_10DB97F: Exit Sub
End Sub

Public Sub Proc_56_56_1021B84
  'Data Table: 554C84
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_102196A: (1).RowCount = 
  loc_1021986: global_120 = CStr(CLng(DGTaxStru.DispID_FFFFFE0B))
  loc_1021990: var_A0 = 4
  loc_10219A1: var_A0 = 0
  loc_10219AD: var_D8 = CVar(CLng(0)) 'Long
  loc_10219B2: var_F8 = "SNo"
  loc_10219BB: LateIdCallSt
  loc_10219C6: var_A0 = CVar(CLng(0)) 'Long
  loc_10219CB: var_D8 = &H1F4
  loc_10219D7: LateIdCallSt
  loc_10219DF: var_A0 = 0
  loc_10219EB: var_D8 = CVar(CLng(1)) 'Long
  loc_10219F0: var_F8 = "Payment\Charge Name"
  loc_10219F9: LateIdCallSt
  loc_1021A04: var_A0 = CVar(CLng(1)) 'Long
  loc_1021A0F: var_D8 = CVar(CInt(1)) 'Integer
  loc_1021A16: LateIdCallSt
  loc_1021A21: var_A0 = CVar(CLng(1)) 'Long
  loc_1021A2C: var_D8 = CVar(CInt(1)) 'Integer
  loc_1021A33: LateIdCallSt
  loc_1021A3E: var_A0 = CVar(CLng(1)) 'Long
  loc_1021A43: var_D8 = &H1194
  loc_1021A4F: LateIdCallSt
  loc_1021A57: var_A0 = 0
  loc_1021A63: var_D8 = CVar(CLng(2)) 'Long
  loc_1021A68: var_F8 = "Split"
  loc_1021A71: LateIdCallSt
  loc_1021A7C: var_A0 = CVar(CLng(2)) 'Long
  loc_1021A87: var_D8 = CVar(CInt(1)) 'Integer
  loc_1021A8E: LateIdCallSt
  loc_1021A99: var_A0 = CVar(CLng(2)) 'Long
  loc_1021AA4: var_D8 = CVar(CInt(1)) 'Integer
  loc_1021AAB: LateIdCallSt
  loc_1021AB6: var_A0 = CVar(CLng(2)) 'Long
  loc_1021ABB: var_D8 = &H258
  loc_1021AC7: LateIdCallSt
  loc_1021ACF: var_A0 = 0
  loc_1021ADB: var_D8 = CVar(CLng(3)) 'Long
  loc_1021AE0: var_F8 = "REVCODE"
  loc_1021AE9: LateIdCallSt
  loc_1021AF4: var_A0 = CVar(CLng(3)) 'Long
  loc_1021AFF: var_D8 = CVar(CInt(1)) 'Integer
  loc_1021B06: LateIdCallSt
  loc_1021B11: var_A0 = CVar(CLng(3)) 'Long
  loc_1021B1C: var_D8 = CVar(CInt(1)) 'Integer
  loc_1021B23: LateIdCallSt
  loc_1021B2E: var_A0 = CVar(CLng(3)) 'Long
  loc_1021B33: var_D8 = 0
  loc_1021B3F: LateIdCallSt
  loc_1021B51: Set var_B4 = ()(vbNullString)
  loc_1021B6F: Set var_B4 = DGTaxStru.DispID_10000(1)
  loc_1021B7F: Set var_90 = Nothing 
  loc_1021B83: Exit Sub
End Sub

Public Sub Proc_56_57_E41724
  'Data Table: 554C84
  loc_E41700: Set var_88 = ()
  loc_E4171F: If (CStr(DGTaxStru.DispID_68030005) = "Browse") Then
  loc_E41722:   Exit Sub
  loc_E41723: End If
  loc_E41723: Exit Sub
End Sub

Public Sub Proc_56_58_EE8478
  'Data Table: 554C84
  Dim var_8C As DataGrid
  Dim var_A0 As Long
  Dim var_F0 As Variant
  Dim var_A4 As TextBox
  loc_EE83D2: ().DeleteRowLabels , 
  loc_EE83DB: var_A0 = CLng()
  loc_EE83EB: If (var_A0 = CLng(2)) Then
  loc_EE83F8:   (var_A0).InsertRows , 
  loc_EE8410:   (CVar(CLng())).DeleteRowLabels , 
  loc_EE8419:   var_F0 = CVar(CLng()) 'Long
  loc_EE842A:   Set var_8C = var_A4(0)
  loc_EE8430:   Call 0.Method_Proc_56_58_EE84780 (var_A8)
  loc_EE8438:   var_F0 = var_A4.Text
  loc_EE8448:   Set var_124 = (CVar(var_A8))
  loc_EE844E:   LateIdCallSt
  loc_EE846C: End If
  loc_EE8471: Proc_56_58_EE8478 = &HFF
End Sub
