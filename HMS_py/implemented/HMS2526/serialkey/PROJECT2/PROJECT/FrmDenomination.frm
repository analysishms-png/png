VERSION 5.00
Begin VB.Form FrmDenomination
  Caption = "Denomination Detail"
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
  ClientWidth = 4680
  ClientHeight = 3195
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 10
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 1755
    Top = 1155
    Width = 1845
    Height = 285
    Enabled = 0   'False
    TabIndex = 8
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
  End
  Begin Frame FrmList
    Left = 9630
    Top = 6840
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 2415
      Height = 1800
      TabIndex = 6
    End
  End
  Begin CheckBox ChkSetDeno
    Caption = "Set New Denomination Format"
    Left = 5730
    Top = 960
    Width = 3435
    Height = 375
    Visible = 0   'False
    TabIndex = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 510
    Top = 1470
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 1755
    Top = 840
    Width = 1845
    Height = 285
    Enabled = 0   'False
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
  End
  Begin MSHFlexGrid FGrid
    Left = 495
    Top = 1485
    Width = 8670
    Height = 6000
    TabIndex = 3
  End
  Begin Label Lbl
    Caption = "User ID :"
    Index = 1
    ForeColor = &HFF0000&
    Left = 525
    Top = 1155
    Width = 1425
    Height = 270
    TabIndex = 9
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
  Begin Label lblSerialNo
    Left = 510
    Top = 480
    Width = 1380
    Height = 270
    TabIndex = 7
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Date :"
    Index = 0
    ForeColor = &HFF0000&
    Left = 525
    Top = 840
    Width = 1425
    Height = 270
    TabIndex = 0
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

Attribute VB_Name = "FrmDenomination"

Private global_60 As Variant
Private global_84 As Integer
Private global_56 As Integer

Private Sub TopCtrl1_UnknownEvent_A 'EB14A0
  'Data Table: 463FD0
  Dim var_94 As TextBox
  loc_EB142F: Call Proc_222_39_DFCA98(Proc_5_1_100EC1C("ADD", Me))
  loc_EB143A: Call Proc_222_38_126E4E8(global_52)
  loc_EB143F: Call Proc_222_37_131641C()
  loc_EB1457: Set var_8C = Me.Txt
  loc_EB145D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EB1465: var_94.Text = CStr(MemVar_1F950EC)
  loc_EB1482: Set var_8C = Me.Txt
  loc_EB1488: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_EB1490: var_94.Text = MemVar_1F950C8
  loc_EB149C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9FD58
  'Data Table: 463FD0
  loc_E9FCE0: On Error Goto loc_E9FD51
  loc_E9FD1A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9FD40:   Call Proc_222_39_DFCA98(Proc_5_1_100EC1C("INI", Me))
  loc_E9FD4B:   Call Proc_222_36_138BDA4(global_52)
  loc_E9FD50: End If
  loc_E9FD50: Exit Sub
  loc_E9FD51: ' Referenced from: E9FCE0
  loc_E9FD51: Proc_6_60_E63754()
  loc_E9FD56: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1071B60
  'Data Table: 463FD0
  Dim Me As Recordset15
  Dim unk_463FE0 As Connection15
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_184 As Fields15
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_18C As String
  loc_10718EC: On Error Goto loc_1071B11
  loc_1071926: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_107193A:   var_94 = Me.Bookmark 'Variant
  loc_1071952:   var_DC = "Deletion Reason"
  loc_1071968:   var_9C = InputBox("Reason for Deletion :", var_DC, var_FC, var_11C, var_13C, var_15C, var_17C)
  loc_107199A:   If (Trim(var_9C) = vbNullString) Then
  loc_10719B6:     MsgBox("You Should Enter a Valid Reason for Deletion", 0, var_DC, var_FC, var_11C)
  loc_10719C6:     Exit Sub
  loc_10719C7:   End If
  loc_10719D0:   unk_463FE0.BeginTrans var_180
  loc_10719FD:   Proc_6_17_EAAE40(var_DC, Trim(var_9C), "Update DenominationDetail Set Delflag='Y',Reason=")
  loc_1071A05:   var_FC = var_19C & var_DC 
  loc_1071A0E:   var_11C = var_FC & " WHERE Sno='" 
  loc_1071A4C:   var_18C = CStr(var_11C & Me.Fields.Item("SearchCode").Value & "'")
  loc_1071A56:   unk_463FE0.Execute var_18C, -1, var_1A0
  loc_1071A80:   unk_463FE0.CommitTrans
  loc_1071A90:   Me.Requery -1
  loc_1071AB0:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1071ABD:     Me.Bookmark = var_94
  loc_1071AC5:   Else
  loc_1071AD9:     If (Me.EOF = 0) Then
  loc_1071AE2:       Me.MoveLast
  loc_1071AE7:     End If
  loc_1071AE7:   End If
  loc_1071AE7:   Call Proc_222_36_138BDA4()
  loc_1071B08:   Proc_5_0_1107AD0(&HFF, Me)
  loc_1071B10: End If
  loc_1071B10: Exit Sub
  loc_1071B11: ' Referenced from: 10718EC
  loc_1071B17: unk_463FE0.RollbackTrans
  loc_1071B24: Set var_184 = Err()
  loc_1071B2A: Call 0.Method_arg_2C (var_18C, global_52)
  loc_1071B4B: MsgBox(CVar(var_18C), &H10, " Deletion Message", var_FC, var_11C)
  loc_1071B5E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E4AC30
  'Data Table: 463FD0
  loc_E4AC23: Call Proc_222_39_DFCA98(Proc_5_1_100EC1C("EDIT", Me))
  loc_E4AC2E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B790
  'Data Table: 463FD0
  loc_E1B785: Me.Global.Unload Me
  loc_E1B78D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F32C0C
  'Data Table: 463FD0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  loc_F32B00: On Error Goto loc_F32C03
  loc_F32B1A: If (Me.RecordCount <= 0) Then
  loc_F32B38:   var_A8 = "No Records To Search."
  loc_F32B3E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F32B4E:   Exit Sub
  loc_F32B4F: End If
  loc_F32B59: If (CDbl(MemVar_1F950B8) = CDbl("1")) Then
  loc_F32B63:   var_10C = "SELECT Distinct Sno As SearchCode,Sno As SerialNo,U_Name As UserName,CAST(Vdate AS VARCHAR(11)) as [Date] FROM DenominationDetail Where IsNull(DelFlag,'')<>'Y' And LogSite_Code='" & MemVar_1F95078
  loc_F32B6A:   MemVar_1F950E4 = var_10C & "' ORDER BY SNO"
  loc_F32B74: Else
  loc_F32B7B:   var_10C = "SELECT Distinct Sno As SearchCode,Sno As SerialNo,U_Name As UserName,CAST(Vdate AS VARCHAR(11)) as [Date] FROM DenominationDetail Where IsNull(DelFlag,'')<>'Y' And U_Name='" & MemVar_1F950C8
  loc_F32B90:   Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_F32B9C:   var_B8 = " LogSite_Code='"
  loc_F32BB9:   MemVar_1F950E4 = CStr(CVar(var_10C & "' And Vdate=") & var_A8 & var_B8 & CVar(MemVar_1F95078) & "' ORDER BY SNO")
  loc_F32BCF: End If
  loc_F32BD8: Proc_6_126_F1C850("1000,1000,1000", MemVar_1F950E4)
  loc_F32BE6: MemVar_1F95120 = Me
  loc_F32BFD: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F32C02: Exit Sub
  loc_F32C03: ' Referenced from: F32B00
  loc_F32C03: Proc_6_60_E63754(MemVar_1F950E4)
  loc_F32C08: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3B3A8
  'Data Table: 463FD0
  loc_E3B398: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B3A0: Call Proc_222_36_138BDA4(global_52)
  loc_E3B3A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3B4C8
  'Data Table: 463FD0
  loc_E3B4B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B4C0: Call Proc_222_36_138BDA4(global_52)
  loc_E3B4C5: Exit Sub
  loc_E3B4C6: Set arg_5800 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3B768
  'Data Table: 463FD0
  loc_E3B758: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3B760: Call Proc_222_36_138BDA4(global_52)
  loc_E3B765: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E36CC8
  'Data Table: 463FD0
  loc_E36CB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E36CC0: Call Proc_222_36_138BDA4(global_52)
  loc_E36CC5: Exit Sub
  loc_E36CC6: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1080264
  'Data Table: 463FD0
  Dim var_D4 As String
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_B4 As Field20
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_464044 As Connection15
  Dim var_88 As Recordset15
  Dim var_136 As Integer
  loc_107FFDC: On Error Goto loc_108023C
  loc_107FFEC: var_D4 = "SELECT * FROM DenominationDetail Where Sno="
  loc_108000E: var_B4 = Me.Fields.Item("SearchCode")
  loc_108001E: var_E4 = var_D4 & var_B4.Value 
  loc_1080022: var_F4 = " Order By Sno1"
  loc_1080027: var_104 = var_E4 & var_F4 
  loc_1080035: unk_464044.Execute CStr(var_104), var_128, -1
  loc_1080040: Set var_88 = var_12C
  loc_1080060: var_130 = var_88.RecordCount
  loc_108006E: If (var_130 = 0) Then
  loc_108008A:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_128)
  loc_108009A:   Exit Sub
  loc_108009B: End If
  loc_10800B1: Set var_A0 = var_88 
  loc_10800BD: var_136 = CreateFieldDefFile(var_A0, MemVar_1F950B4 & "\DenominationDetail.ttx")
  loc_10800C7: Set var_88 = var_A0
  loc_10800CD: var_B0 = CVar(var_136) 'Integer
  loc_10800D0: var_98 = var_B0 'Variant
  loc_10800EC: var_108 = MemVar_1F950B4 & "\DenominationDetail.RPT"
  loc_10800F5: Call 0.Method_arg_1C (var_108, var_B0, var_A0)
  loc_1080100: MemVar_1F951E8 = var_A0
  loc_108011B: Call 0.Method_arg_90 (var_A0, var_130, var_9A, 1)
  loc_1080123: Call 0.Method_arg_24 (var_136, &HFF)
  loc_108012F: For var_13A =  To CInt(var_130): var_12C = var_13A 'Integer
  loc_1080148:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_1080150:   Call 0.Method_arg_20 (var_B4)
  loc_1080158:   Call 0.Method_arg_30 (var_108)
  loc_108019E:   If (Ucase(CVar(var_108)) = Ucase("Title")) Then
  loc_10801B4:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_10801BC:     Call 0.Method_arg_20 (var_B4)
  loc_10801C4:     Call 0.Method_arg_38 ("'Denomination Detail'")
  loc_10801D0:   End If
  loc_10801D3: Next var_13A 'Integer
  loc_10801F1: Call 0.Method_arg_64 (var_A0, CVar(var_88))
  loc_10801F9: Call 0.Method_arg_2C (var_D4)
  loc_1080207: Call 0.Method_arg_150 (var_F4)
  loc_1080212: Call 0.Method_arg_50 (var_108)
  loc_108022B: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_1080238: Set var_88 = Nothing
  loc_108023B: Exit Sub
  loc_108023C: ' Referenced from: 107FFDC
  loc_1080242: Call 0.Method_arg_50 (var_108, var_108)
  loc_1080257: Proc_183_57_104B0BC(var_108, "TopCtrl1_ePrn")
  loc_1080263: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A6C4
  'Data Table: 463FD0
  Dim Me As Recordset15
  loc_E0A6BB: Me.Requery -1
  loc_E0A6C0: Exit Sub
  loc_E0A6C1: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1604ADC
  'Data Table: 463FD0
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As String
  Dim unk_463FE0 As Connection15
  Dim var_88 As Variant
  Dim var_130 As String
  Dim var_134 As String
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_19C As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_240 As Variant
  Dim var_2A0 As Variant
  Dim var_2C0 As Variant
  Dim var_2D4 As Variant
  Dim var_2F4 As Variant
  Dim var_314 As Variant
  Dim var_328 As MSHFlexGrid
  Dim var_3C8 As Variant
  Dim var_3E8 As Variant
  Dim var_3FC As MSHFlexGrid
  Dim var_45C As Variant
  Dim var_47C As Variant
  Dim var_540 As Variant
  Dim var_560 As Variant
  Dim var_5D4 As Variant
  Dim var_5F4 As Variant
  Dim var_658 As Variant
  Dim var_5B4 As Variant
  Dim var_6B8 As Variant
  Dim var_6D8 As Variant
  Dim var_124 As Variant
  Dim var_510 As Variant
  Dim var_520 As Variant
  Dim var_688 As Variant
  Dim var_73C As Variant
  Dim var_7D0 As Variant
  Dim var_810 As Variant
  Dim var_C4 As Integer
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_21C As Variant
  Dim var_23C As Variant
  Dim var_388 As Variant
  Dim var_2B0 As Variant
  Dim var_2D0 As Variant
  Dim var_304 As Variant
  Dim var_324 As Variant
  Dim var_3D8 As Variant
  Dim var_3F8 As Variant
  Dim var_46C As Variant
  Dim var_48C As Variant
  Dim var_550 As Variant
  Dim var_5E4 As Variant
  Dim var_358 As Variant
  Dim var_950 As Variant
  Dim var_A24 As Variant
  Dim Me As Recordset15
  loc_16037D0: On Error Goto loc_1604ABF
  loc_16037F8: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_1603802:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_160380A:   var_D4 = CVar(CLng(5)) 'Long
  loc_1603824:   var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_160382A:   var_104 = Trim(var_F4)
  loc_1603846:   If (var_104 = vbNullString) Then
  loc_1603862:     MsgBox("Group Not Defined.", &H40, var_F4, var_104, var_124)
  loc_1603872:     Exit Sub
  loc_1603876:   Else
  loc_160387A:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_1603882:     var_D4 = CVar(CLng(6)) 'Long
  loc_160389C:     var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16038A2:     var_104 = Trim(var_F4)
  loc_16038BE:     If (var_104 = vbNullString) Then
  loc_16038D4:       var_A0 = "Type Not Defined."
  loc_16038DA:       MsgBox(var_A0, &H40, var_F4, var_104, var_124)
  loc_16038EA:       Exit Sub
  loc_16038EB:     End If
  loc_16038EB:   End If
  loc_16038EE: Next var_A4 'Integer
  loc_16038FC: unk_463FE0.BeginTrans var_128
  loc_1603903: var_88 = &HFF
  loc_1603921: If (Me.ChkSetDeno.Value = 1) Then
  loc_1603948:   unk_463FE0.Execute "Delete from DenominationFormat WHERE LOGSITE_CODE='" & MemVar_1F95078 & "'", var_A0, -1
  loc_160397F:   For var_138 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_138 'Integer
  loc_1603989:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_1603991:     var_D4 = CVar(CLng(0)) 'Long
  loc_160399A:     Set var_90 = Me.FGrid
  loc_16039A0:     var_A0 = var_90.TextMatrix)
  loc_16039AB:     var_F4 = CVar(CStr(var_A0)) 'String
  loc_16039BA:     var_168 = CVar(CLng(var_86)) 'Long
  loc_16039C2:     var_188 = CVar(CLng(1)) 'Long
  loc_16039CB:     Set var_19C = Me.FGrid
  loc_16039E2:     var_1CC = Trim(CVar(CStr(var_19C.TextMatrix))))
  loc_16039EB:     var_20C = CVar(CLng(var_86)) 'Long
  loc_16039F3:     var_22C = CVar(CLng(6)) 'Long
  loc_1603A1C:     var_2A0 = CVar(CLng(var_86)) 'Long
  loc_1603A24:     var_2C0 = CVar(CLng(2)) 'Long
  loc_1603A4D:     var_2F4 = CVar(CLng(var_86)) 'Long
  loc_1603A55:     var_314 = CVar(CLng(2)) 'Long
  loc_1603A9C:     var_388 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_1603AA5:     var_3C8 = CVar(CLng(var_86)) 'Long
  loc_1603AAD:     var_3E8 = CVar(CLng(6)) 'Long
  loc_1603AB6:     Set var_3FC = Me.FGrid
  loc_1603AD6:     var_45C = CVar(CLng(var_86)) 'Long
  loc_1603ADE:     var_47C = CVar(CLng(3)) 'Long
  loc_1603B31:     var_540 = CVar(CLng(var_86)) 'Long
  loc_1603B39:     var_560 = CVar(CLng(6)) 'Long
  loc_1603B62:     var_5D4 = CVar(CLng(var_86)) 'Long
  loc_1603B6A:     var_5F4 = CVar(CLng(4)) 'Long
  loc_1603C49:     Proc_6_17_EAAE40(var_880, Format(Now, "dd/MMM/yyyy HH:mm:ss"), 1, 1, CVar(CLng(6)), CVar(CLng(var_86)), CVar(CLng(5)), CVar(CLng(var_86)))
  loc_1603C5B:     var_114 = "Insert into DenominationFormat(SNo,DenominationType,DenominationValue,DenominationUnit,DenominationTotal,Relation,Type,U_Name,U_EntDt,U_AE,Site_Code,lOGSITE_CODE) values ("
  loc_1603C93:     var_510 = var_114 & Trim(var_F4) & ",'" & var_1CC & "','" & var_388 & "','" & IIf((Trim(CVar(CStr(var_3FC.TextMatrix)))) = "Entry"), vbNullString, Trim(CVar(CStr(Me.FGrid.TextMatrix))))) 
  loc_1603CA3:     var_688 = var_510 & "','" & IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), vbNullString, Trim(CVar(CStr(Me.FGrid.TextMatrix))))) 
  loc_1603CD6:     var_810 = var_688 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & CVar(MemVar_1F950C8) 
  loc_1603D23:     unk_463FE0.Execute CStr(var_810 & "'," & var_880 & ",'A','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_950, -1
  loc_1603DD6:   Next var_138 'Integer
  loc_1603DDE: Else
  loc_1603DE2:   Set var_90 = Me.TopCtrl1
  loc_1603DE8:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1603E01:   If (CStr() = "Add") Then
  loc_1603E0A:     var_C4 = 0
  loc_1603E27:     var_130 = "Select IsNull(Max(Sno),0)+1 from DenominationDetail WHERE LOGSITE_CODE='" & MemVar_1F95078
  loc_1603E37:     unk_463FE0.Execute CStr() & "'", var_A0, -1
  loc_1603E3F:     var_90 = var_90.Fields
  loc_1603E47:     var_C4 = var_19C.Item(var_19C)
  loc_1603E4F:     var_240 = var_240.Value
  loc_1603E60:     Set var_2D4 = Me.lblSerialNo
  loc_1603E66:     var_2D4.Caption = CStr(var_F4)
  loc_1603EAD:     For var_964 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_86 = var_964 'Integer
  loc_1603EBA:       Set var_90 = Me.lblSerialNo
  loc_1603EE0:       var_A0 = Me.FGrid.TextMatrix)
  loc_1603F01:       Set var_240 = Me.Txt
  loc_1603F07:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2D4, CVar(CLng(0)))
  loc_1603F16:       Proc_6_7_F26918(var_1CC, CVar(var_2D4), CVar(CLng(var_86)))
  loc_1603F26:       Set var_328 = Me.Txt
  loc_1603F2C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_3FC)
  loc_1603F44:       var_178 = CVar(CLng(var_86)) 'Long
  loc_1603F4C:       var_198 = CVar(CLng(1)) 'Long
  loc_1603F75:       var_21C = CVar(CLng(var_86)) 'Long
  loc_1603F7D:       var_23C = CVar(CLng(6)) 'Long
  loc_1603FA6:       var_2B0 = CVar(CLng(var_86)) 'Long
  loc_1603FAE:       var_2D0 = CVar(CLng(2)) 'Long
  loc_1603FD7:       var_304 = CVar(CLng(var_86)) 'Long
  loc_1603FDF:       var_324 = CVar(CLng(2)) 'Long
  loc_1604026:       var_4C0 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_160402F:       var_3D8 = CVar(CLng(var_86)) 'Long
  loc_1604037:       var_3F8 = CVar(CLng(6)) 'Long
  loc_1604060:       var_46C = CVar(CLng(var_86)) 'Long
  loc_1604068:       var_48C = CVar(CLng(3)) 'Long
  loc_1604091:       var_520 = CVar(CLng(var_86)) 'Long
  loc_1604099:       var_550 = CVar(CLng(3)) 'Long
  loc_16040E0:       var_648 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_16040E9:       var_5B4 = CVar(CLng(var_86)) 'Long
  loc_16040F1:       var_5E4 = CVar(CLng(6)) 'Long
  loc_160411A:       var_658 = CVar(CLng(var_86)) 'Long
  loc_1604122:       var_6B8 = CVar(CLng(4)) 'Long
  loc_160414B:       var_6D8 = CVar(CLng(var_86)) 'Long
  loc_1604153:       var_73C = CVar(CLng(4)) 'Long
  loc_160419A:       var_7D0 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_160422F:       Proc_6_17_EAAE40(var_9D4, Format(Now, "dd/MMM/yyyy HH:mm:ss"), 1, 1, CVar(CLng(6)), CVar(CLng(var_86)), CVar(CLng(5)), CVar(CLng(var_86)))
  loc_1604248:       var_134 = "Insert into DenominationDetail(SNo,SNo1,Vdate,Name,DenominationType,DenominationValue,DenominationUnit,DenominationTotal,Relation,Type,U_Name,U_EntDt,U_AE,Site_Code,lOGSITE_CODE) values (" & var_90.Caption
  loc_1604285:       var_358 = CVar(var_134 & ",") & Trim(CVar(CStr(var_A0))) & "," & var_1CC & ",'" & Trim(CVar(var_3FC)) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_16042CE:       var_880 = var_358 & "','" & var_4C0 & "','" & var_648 & "','" & var_7D0 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" 
  loc_160430B:       var_A24 = var_880 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & CVar(MemVar_1F950C8) & "'," & var_9D4 & ",'A','" & CVar(MemVar_1F95070) 
  loc_1604335:       unk_463FE0.Execute CStr(var_A24 & "','" & CVar(MemVar_1F95078) & "')"), var_AA8, -1
  loc_1604410:     Next var_964 'Integer
  loc_1604418:   Else
  loc_160445C:     unk_463FE0.Execute "Delete From DenominationDetail WHERE Sno=" & Me.lblSerialNo.Caption & " And LOGSITE_CODE='" & MemVar_1F95078 & "'", var_A0, -1
  loc_160449D:     For var_AC0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):     var_86 = var_AC0 'Integer
  loc_16044AA:       Set var_90 = Me.lblSerialNo
  loc_16044B9:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_16044D0:       var_A0 = Me.FGrid.TextMatrix)
  loc_16044F1:       Set var_240 = Me.Txt
  loc_16044F7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2D4, CVar(CLng(0)))
  loc_1604506:       Proc_6_7_F26918(var_1CC, CVar(var_2D4), var_B4)
  loc_1604516:       Set var_328 = Me.Txt
  loc_160451C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_3FC)
  loc_1604534:       var_178 = CVar(CLng(var_86)) 'Long
  loc_160453C:       var_198 = CVar(CLng(1)) 'Long
  loc_1604565:       var_21C = CVar(CLng(var_86)) 'Long
  loc_160456D:       var_23C = CVar(CLng(6)) 'Long
  loc_1604596:       var_2B0 = CVar(CLng(var_86)) 'Long
  loc_160459E:       var_2D0 = CVar(CLng(2)) 'Long
  loc_16045C7:       var_304 = CVar(CLng(var_86)) 'Long
  loc_16045CF:       var_324 = CVar(CLng(2)) 'Long
  loc_1604616:       var_4C0 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_160461F:       var_3D8 = CVar(CLng(var_86)) 'Long
  loc_1604627:       var_3F8 = CVar(CLng(6)) 'Long
  loc_1604650:       var_46C = CVar(CLng(var_86)) 'Long
  loc_1604658:       var_48C = CVar(CLng(3)) 'Long
  loc_1604681:       var_520 = CVar(CLng(var_86)) 'Long
  loc_1604689:       var_550 = CVar(CLng(3)) 'Long
  loc_16046D0:       var_648 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_16046D9:       var_5B4 = CVar(CLng(var_86)) 'Long
  loc_16046E1:       var_5E4 = CVar(CLng(6)) 'Long
  loc_160470A:       var_658 = CVar(CLng(var_86)) 'Long
  loc_1604712:       var_6B8 = CVar(CLng(4)) 'Long
  loc_160473B:       var_6D8 = CVar(CLng(var_86)) 'Long
  loc_1604743:       var_73C = CVar(CLng(4)) 'Long
  loc_160478A:       var_7D0 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_160481F:       Proc_6_17_EAAE40(var_9D4, Format(Now, "dd/MMM/yyyy HH:mm:ss"), 1, 1, CVar(CLng(6)), CVar(CLng(var_86)), CVar(CLng(5)), CVar(CLng(var_86)))
  loc_1604838:       var_134 = "Insert into DenominationDetail(SNo,SNo1,Vdate,Name,DenominationType,DenominationValue,DenominationUnit,DenominationTotal,Relation,Type,U_Name,U_EntDt,U_AE,Site_Code,lOGSITE_CODE) values (" & var_90.Caption
  loc_1604875:       var_358 = CVar(var_134 & ",") & Trim(CVar(CStr(var_A0))) & "," & var_1CC & ",'" & Trim(CVar(var_3FC)) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_16048BE:       var_880 = var_358 & "','" & var_4C0 & "','" & var_648 & "','" & var_7D0 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" 
  loc_16048FB:       var_A24 = var_880 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & CVar(MemVar_1F950C8) & "'," & var_9D4 & ",'A','" & CVar(MemVar_1F95070) 
  loc_1604925:       unk_463FE0.Execute CStr(var_A24 & "','" & CVar(MemVar_1F95078) & "')"), var_AA8, -1
  loc_1604A00:     Next var_AC0 'Integer
  loc_1604A05:   End If
  loc_1604A05: End If
  loc_1604A07: var_88 = 0
  loc_1604A10: unk_463FE0.CommitTrans
  loc_1604A30: If (Me.ChkSetDeno.Value <> 1) Then
  loc_1604A3E:   Me.Requery -1
  loc_1604A7A:   Me.Find "SearchCode ='" & Me.lblSerialNo.Caption & "'", 0, 1
  loc_1604A8B: End If
  loc_1604AAE: Call Proc_222_39_DFCA98(Proc_5_1_100EC1C("INI", Me, global_52), var_B4)
  loc_1604AB9: Call Proc_222_36_138BDA4(var_88)
  loc_1604ABE: Exit Sub
  loc_1604ABF: ' Referenced from: 16037D0
  loc_1604AC5: If (var_88 = &HFF) Then
  loc_1604ACE:   unk_463FE0.RollbackTrans
  loc_1604AD3: End If
  loc_1604AD3: Proc_6_60_E63754()
  loc_1604AD8: Exit Sub
End Sub

Private Sub Form_Load() 'F9A794
  'Data Table: 463FD0
  Dim var_BC As Variant
  Dim var_C0 As String
  Dim var_C4 As String
  Dim unk_463FE0 As Connection15
  Dim var_D4 As Variant
  loc_F9A630: On Error Goto loc_F9A750
  loc_F9A63A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_F9A64C: Set var_BC = Me.FGrid
  loc_F9A652: var_BC.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_F9A675: var_C4 = "SELECT Distinct(Sno) As SearchCode FROM DenominationDetail Where IsNull(DelFlag,'')<>'Y' And LogSite_Code='" & MemVar_1F95078 & "' ORDER BY SNO"
  loc_F9A67E: unk_463FE0.Execute var_C4, var_D4, -1
  loc_F9A68F: Set global_52 = var_BC
  loc_F9A6AA: If (MemVar_1F950B8 = 1) Then
  loc_F9A6B9:   Me.ChkSetDeno.Visible = True
  loc_F9A6C1: End If
  loc_F9A6D6: var_C0 = "INI"
  loc_F9A6E4: Call Proc_222_39_DFCA98(Proc_5_1_100EC1C(var_C0, Me), global_52)
  loc_F9A6F9: Set var_BC = Me.TopCtrl1
  loc_F9A6FF: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AEDP")
  loc_F9A71E: var_98 = Proc_5_2_106A494(&HFF, Me) 'Variant
  loc_F9A737: Set var_BC = Me
  loc_F9A73D: Proc_6_23_DFC5B8(var_BC, 4425)
  loc_F9A745: Call Proc_222_38_126E4E8(6870)
  loc_F9A74A: Call Proc_222_37_131641C(var_BC)
  loc_F9A74F: Exit Sub
  loc_F9A750: ' Referenced from: F9A630
  loc_F9A758: Set var_BC = Err()
  loc_F9A75E: Call 0.Method_arg_2C (var_C0)
  loc_F9A77F: MsgBox(CVar(var_C0), &H40, "Information", var_FC, var_11C)
  loc_F9A792: Exit Sub
  loc_F9A793: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E42DD4
  'Data Table: 463FD0
  loc_E42DAF: Set global_52 = Nothing
  loc_E42DBB: global_60 = Nothing
  loc_E42DCA: Set global_76 = Nothing
  loc_E42DD1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89E1C
  'Data Table: 463FD0
  loc_E89DB8: On Error Goto loc_E89DD8
  loc_E89DCF: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E89DD7: Exit Sub
  loc_E89DD8: ' Referenced from: E89DB8
  loc_E89DE0: Set var_88 = Err()
  loc_E89DE6: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89E07: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E89E1A: Exit Sub
  loc_E89E1B: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1205F58
  'Data Table: 463FD0
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_10E As Integer
  Dim var_114 As Long
  Dim var_104 As TextBox
  Dim var_13C As Long
  loc_1205ABF: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1205AC8: Set var_9C = Me.FGrid
  loc_1205AFE: Set var_104 = Me.TxtGrid
  loc_1205B04: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_1205B0C: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_1205B39: Set var_88 = Me.TxtGrid
  loc_1205B3F: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_1205B47: var_9C.MaxLength = 0
  loc_1205B56: var_10E = Index
  loc_1205B5F: If (var_10E = 0) Then
  loc_1205B7D:   If (Me.ChkSetDeno.Value = 1) Then
  loc_1205B93:     var_114 = CLng(Me.FGrid.Col)
  loc_1205BA3:     If (var_114 = CLng(1)) Then
  loc_1205BB4:       Set var_88 = Me.TxtGrid
  loc_1205BBA:       Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, &H4B)
  loc_1205BC2:       var_9C.MaxLength = var_114
  loc_1205BD7:       If (global_56 = 0) Then
  loc_1205BE2:         var_10C = "{Home}+{End}"
  loc_1205BE8:         Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0)
  loc_1205BF0:       End If
  loc_1205BF3:     Else
  loc_1205BFA:       If Not (var_114 = CLng(2)) Then
  loc_1205C04:         If Not (var_114 = CLng(3)) Then
  loc_1205C0E:           If (var_114 = CLng(4)) Then
  loc_1205C11:           End If
  loc_1205C11:         End If
  loc_1205C1F:         Set var_88 = Me.TxtGrid
  loc_1205C25:         Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, &H32)
  loc_1205C2D:         var_9C.MaxLength = var_10E
  loc_1205C42:         If (global_56 = 0) Then
  loc_1205C4D:           var_10C = "{Home}+{End}"
  loc_1205C53:           Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0)
  loc_1205C5B:         End If
  loc_1205C5E:       Else
  loc_1205C65:         If (var_114 = CLng(5)) Then
  loc_1205C77:           Set var_88 = Me.TxtGrid
  loc_1205C7D:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_1205C85:           var_9C.MaxLength = 1
  loc_1205C9E:           ReDim var_118(0 To 5)
  loc_1205CB5:           var_118(0) = "A"
  loc_1205CC4:           var_118(1) = "B"
  loc_1205CD3:           var_118(2) = "C"
  loc_1205CE2:           var_118(3) = "D"
  loc_1205CF1:           var_118(4) = "E"
  loc_1205D00:           var_118(5) = "F"
  loc_1205D17:           global_60 = Array(var_118)
  loc_1205D22:           Set var_104 = Me.ListView
  loc_1205D3D:           Set var_9C = Me.TxtGrid
  loc_1205D57:           Set global_76 = Proc_6_66_F0048C(var_104, var_9C, Index, global_60)
  loc_1205D75:           Set var_88 = Me.TxtGrid
  loc_1205D7B:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C, CStr(Me.FGrid.TextMatrix)))
  loc_1205D83:           6 = var_9C.Text
  loc_1205D95:           Set var_F0 = Me.TxtGrid
  loc_1205D9B:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, CStr(Me.FGrid.TextMatrix)))
  loc_1205DA3:           var_104.Tag = global_60
  loc_1205DB9:         Else
  loc_1205DC0:           If (var_114 = CLng(6)) Then
  loc_1205DD2:             Set var_88 = Me.TxtGrid
  loc_1205DD8:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_1205DE0:             var_9C.MaxLength = 5
  loc_1205DF9:             ReDim var_118(0 To 2)
  loc_1205E10:             var_118(0) = "Title"
  loc_1205E1F:             var_118(1) = "Total"
  loc_1205E2E:             var_118(2) = "Entry"
  loc_1205E45:             global_60 = Array(var_118)
  loc_1205E50:             Set var_104 = Me.ListView
  loc_1205E6B:             Set var_9C = Me.TxtGrid
  loc_1205E85:             Set global_76 = Proc_6_66_F0048C(var_104, var_9C, Index, global_60)
  loc_1205EA3:             Set var_88 = Me.TxtGrid
  loc_1205EA9:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C, CStr(Me.FGrid.TextMatrix)))
  loc_1205EB1:             3 = var_9C.Text
  loc_1205EC3:             Set var_F0 = Me.TxtGrid
  loc_1205EC9:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, CStr(Me.FGrid.TextMatrix)))
  loc_1205ED1:             var_104.Tag = global_60
  loc_1205EE4:           End If
  loc_1205EE4:         End If
  loc_1205EE4:       End If
  loc_1205EE4:     End If
  loc_1205EE7:   Else
  loc_1205EFA:     var_13C = CLng(Me.FGrid.Col)
  loc_1205F0A:     If (var_13C = CLng(3)) Then
  loc_1205F1B:       Set var_88 = Me.TxtGrid
  loc_1205F21:       Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, &HC)
  loc_1205F29:       var_9C.MaxLength = var_13C
  loc_1205F3E:       If (global_56 = 0) Then
  loc_1205F49:         var_10C = "{Home}+{End}"
  loc_1205F4F:         Proc_303_0_FBACC8(CStr(Me.FGrid.TextMatrix)), 0)
  loc_1205F57:       End If
  loc_1205F57:     End If
  loc_1205F57:   End If
  loc_1205F57: End If
  loc_1205F57: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12C91C4
  'Data Table: 463FD0
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As Variant
  Dim var_B4 As Long
  Dim var_DC As TextBox
  Dim var_E8 As TextBox
  Dim var_108 As Long
  loc_12C8B7C: If (KeyCode = 0) Then
  loc_12C8B89:   If (CLng(Shift) = &H1B) Then
  loc_12C8B99:     Set var_8C = Me.TxtGrid
  loc_12C8B9F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_12C8BB9:     Set var_98 = Me.TxtGrid
  loc_12C8BBF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12C8BC7:     var_9C.Text = var_90.Tag
  loc_12C8BDE:     Set var_8C = Me.FGrid
  loc_12C8BFB:     Set var_8C = Me.TxtGrid
  loc_12C8C01:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12C8C09:     var_90.Visible = FGrid.DispID_8001
  loc_12C8C23:     Set var_8C = Me.TxtGrid
  loc_12C8C29:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12C8C31:     var_90.MaxLength = 0
  loc_12C8C3D:     Exit Sub
  loc_12C8C3E:   End If
  loc_12C8C4B:   var_9E = Me.ChkSetDeno.Value
  loc_12C8C59:   If (var_9E = 1) Then
  loc_12C8C6F:     var_B4 = CLng(Me.FGrid.Col)
  loc_12C8C7F:     If (var_B4 = CLng(3)) Then
  loc_12C8CC2:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_12C8CCB:         Call Proc_222_41_12AB5A4(KeyCode, var_9E)
  loc_12C8D12:         If ((var_9E = &HFF) And (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_12C8D20:           Set var_9C = Me.TxtGrid
  loc_12C8D49:           Set var_90 = var_9C
  loc_12C8D58:           Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_56, 3)
  loc_12C8D6B:         Else
  loc_12C8D76:           Set var_8C = Me.TxtGrid
  loc_12C8D7C:           Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0, 0)
  loc_12C8D84:           var_90.Visible = False
  loc_12C8D90:         End If
  loc_12C8D90:       End If
  loc_12C8D93:     Else
  loc_12C8D9A:       If (var_B4 = CLng(5)) Then
  loc_12C8DBF:         Set var_8C = Me.TxtGrid
  loc_12C8DC5:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_D0)
  loc_12C8DCD:         0 = var_90.Left
  loc_12C8DDF:         Set var_98 = Me.TxtGrid
  loc_12C8DE5:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D4)
  loc_12C8DED:         var_B4 = var_9C.Top
  loc_12C8DFF:         Set var_D8 = Me.TxtGrid
  loc_12C8E05:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_DC)
  loc_12C8E0D:         var_E0 = var_DC.Height
  loc_12C8E1F:         Set var_E4 = Me.TxtGrid
  loc_12C8E25:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12C8E2D:         var_EC = var_E8.Width
  loc_12C8E75:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12C8EA3:         If (CLng(Shift) = &HD) Then
  loc_12C8EAC:           Call Proc_222_41_12AB5A4(KeyCode, var_9E, CInt(var_D0), CInt((var_D4 + var_E0)))
  loc_12C8EB7:           If (var_9E = &HFF) Then
  loc_12C8EC5:             Set var_9C = Me.TxtGrid
  loc_12C8EEE:             Set var_90 = var_9C
  loc_12C8EFD:             Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_56, 6)
  loc_12C8F0D:           End If
  loc_12C8F0D:         End If
  loc_12C8F10:       Else
  loc_12C8F17:         If (var_B4 = CLng(6)) Then
  loc_12C8F3C:           Set var_8C = Me.TxtGrid
  loc_12C8F42:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_D0, 0, 0)
  loc_12C8F4A:           0 = var_90.Left
  loc_12C8F5C:           Set var_98 = Me.TxtGrid
  loc_12C8F62:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D4)
  loc_12C8F6A:           CInt(var_EC) = var_9C.Top
  loc_12C8F7C:           Set var_D8 = Me.TxtGrid
  loc_12C8F82:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_DC, var_E0)
  loc_12C8F8A:           1560 = var_DC.Height
  loc_12C8F9C:           Set var_E4 = Me.TxtGrid
  loc_12C8FA2:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12C8FAA:           var_EC = var_E8.Width
  loc_12C8FF2:           Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12C9020:           If (CLng(Shift) = &HD) Then
  loc_12C9029:             Call Proc_222_41_12AB5A4(KeyCode, var_9E, CInt(var_D0), CInt((var_D4 + var_E0)))
  loc_12C9034:             If (var_9E = &HFF) Then
  loc_12C907A:               Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 6)
  loc_12C908A:             End If
  loc_12C908A:           End If
  loc_12C908A:         End If
  loc_12C908A:       End If
  loc_12C908A:     End If
  loc_12C908D:   Else
  loc_12C90A0:     var_108 = CLng(Me.FGrid.Col)
  loc_12C90B0:     If (var_108 = CLng(3)) Then
  loc_12C90F3:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_12C90FC:         Call Proc_222_41_12AB5A4(KeyCode, var_9E, var_108, 0, 0)
  loc_12C9143:         If ((var_9E = &HFF) And (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_12C917A:           Set var_90 = Me.TxtGrid
  loc_12C9189:           Proc_6_62_1254E68(Me.FGrid, var_90, KeyCode, Shift, global_56, 3, 0)
  loc_12C919C:         Else
  loc_12C91A7:           Set var_8C = Me.TxtGrid
  loc_12C91AD:           Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0, 0, 0)
  loc_12C91B5:           var_90.Visible = False
  loc_12C91C1:         End If
  loc_12C91C1:       End If
  loc_12C91C1:     End If
  loc_12C91C1:   End If
  loc_12C91C1: End If
  loc_12C91C1: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EB29BC
  'Data Table: 463FD0
  Dim var_8C As Variant
  loc_EB2938: If (KeyAscii = 0) Then
  loc_EB2956:   If (Me.ChkSetDeno.Value = 1) Then
  loc_EB2959:     GoTo loc_EB29B9
  loc_EB295C:   End If
  loc_EB297F:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_EB298C:     Set var_8C = Me.TxtGrid
  loc_EB2992:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8)
  loc_EB29AD:     Proc_6_42_129B55C(var_A8, arg_10, &HA)
  loc_EB29B9:     ' Referenced from: EB2959
  loc_EB29B9:   End If
  loc_EB29B9: End If
  loc_EB29B9: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F1F188
  'Data Table: 463FD0
  Dim var_A4 As Long
  loc_F1F08C: On Error Goto loc_F1F182
  loc_F1F09B: If (KeyCode = 0) Then
  loc_F1F0B9:   If (Me.ChkSetDeno.Value = 1) Then
  loc_F1F0CF:     var_A4 = CLng(Me.FGrid.Col)
  loc_F1F0DF:     If Not (var_A4 = CLng(5)) Then
  loc_F1F0E9:       If (var_A4 = CLng(6)) Then
  loc_F1F0EC:       End If
  loc_F1F10E:       If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F1F11F:         Call TxtGrid_KeyDown(KeyCode, global_84)
  loc_F1F124:       End If
  loc_F1F13F:       If (Me.FrmList.Visible = &HFF) Then
  loc_F1F16E:         Proc_6_64_F299E8(Me.ListView, Me.TxtGrid, KeyCode, Shift)
  loc_F1F17E:       End If
  loc_F1F17E:     End If
  loc_F1F17E:     GoTo loc_F1F181
  loc_F1F181:     ' Referenced from: F1F17E
  loc_F1F181:   End If
  loc_F1F181: End If
  loc_F1F181: Exit Sub
  loc_F1F182: ' Referenced from: F1F08C
  loc_F1F182: Proc_6_60_E63754(global_76, 0)
  loc_F1F187: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E24644
  'Data Table: 463FD0
  Dim arg_10 As Integer
  loc_E2462C: If (Cancel = 0) Then
  loc_E24635:   Call Proc_222_41_12AB5A4(Cancel, var_88)
  loc_E2463E:   arg_10 = Not(var_88)
  loc_E24641: End If
  loc_E24641: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E4A134
  'Data Table: 463FD0
  loc_E4A112: Set var_88 = Me.Txt
  loc_E4A118: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E4A126: Proc_6_74_E23240(var_8C)
  loc_E4A132: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E23DBC
  'Data Table: 463FD0
  loc_E23DAD: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E23DB6:   Proc_6_75_E5335C(Shift)
  loc_E23DBB: End If
  loc_E23DBB: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E0AA38
  'Data Table: 463FD0
  Dim arg_5860 As String
  loc_E0AA24: On Error Goto loc_E0AA30
  loc_E0AA2A: Proc_6_58_E06050(arg_10)
  loc_E0AA2F: Exit Sub
  loc_E0AA30: ' Referenced from: E0AA24
  loc_E0AA30: Proc_6_60_E63754()
  loc_E0AA35: Exit Sub
  loc_E0AA36: arg_5860 = 
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49A4C
  'Data Table: 463FD0
  loc_E49A2A: Set var_88 = Me.Txt
  loc_E49A30: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49A3E: Proc_6_73_E23294(var_8C)
  loc_E49A4A: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'FAE1DC
  'Data Table: 463FD0
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As TextBox
  Dim var_A4 As String
  loc_FAE060: On Error Goto loc_FAE177
  loc_FAE081: var_A0 = Me.ListView.ListItems.Count
  loc_FAE099: If (var_A0 > 0) Then
  loc_FAE0A0:   Set var_A8 = Me.ListView
  loc_FAE0EA:   Set var_C0 = Me.TxtGrid
  loc_FAE0F0:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_FAE0F8:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_FAE118: End If
  loc_FAE124: Me.FrmList.Visible = False
  loc_FAE13E: var_A4 = CStr(Me.ListView.Tag)
  loc_FAE146: var_CC = Val(var_A4)
  loc_FAE154: Set var_9C = Me.TxtGrid
  loc_FAE15A: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_CC), var_A8)
  loc_FAE162: var_A8.SetFocus
  loc_FAE176: Exit Sub
  loc_FAE177: ' Referenced from: FAE060
  loc_FAE17F: Set var_88 = Err()
  loc_FAE185: Call 0.Method_arg_1C (var_A0, var_CC)
  loc_FAE196: If (var_A0 <> 0) Then
  loc_FAE1A1:   Set var_88 = Err()
  loc_FAE1A7:   Call 0.Method_arg_2C (var_A4)
  loc_FAE1C8:   MsgBox(CVar(var_A4), &H40, "Validation", var_FC, var_11C)
  loc_FAE1DB: End If
  loc_FAE1DB: Exit Sub
End Sub

Private Sub ChkSetDeno_Click() 'E02A1C
  'Data Table: 463FD0
  loc_E02A10: Call Proc_222_38_126E4E8()
  loc_E02A15: Call Proc_222_37_131641C()
  loc_E02A1A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E3B284
  'Data Table: 463FD0
  Dim var_8C As TextBox
  loc_E3B267: Set var_88 = Me.TxtGrid
  loc_E3B26D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E3B275: var_8C.Visible = False
  loc_E3B281: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6BD50
  'Data Table: 463FD0
  Dim var_88 As MSHFlexGrid
  Dim var_9C As TextBox
  loc_E6BD00: Call Proc_222_40_E462EC()
  loc_E6BD24: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6BD32:   Set var_88 = Me.TxtGrid
  loc_E6BD38:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6BD40:   var_9C.Visible = False
  loc_E6BD4C: End If
  loc_E6BD4C: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '109D254
  'Data Table: 463FD0
  Dim var_9C As String
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As Variant
  Dim arg_C As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_109CF9C: Set var_88 = Me.TopCtrl1
  loc_109CFA2: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_109CFE7: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_109CFF0:   Call Form_KeyDown(arg_C, arg_10)
  loc_109CFF5: End If
  loc_109CFF9: Set var_88 = Me.TopCtrl1
  loc_109CFFF: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_109D018: If (CStr() = "Browse") Then
  loc_109D01B:   Exit Sub
  loc_109D01C: End If
  loc_109D090: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_109D09B:   var_9C = "+{Tab}"
  loc_109D0A1:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_109D0AB:   arg_C = 0
  loc_109D0AE: End If
  loc_109D0B4: global_84 = arg_C
  loc_109D0DA: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_109D0FE: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_109D11C:   If (Me.ChkSetDeno.Value = 1) Then
  loc_109D132:     var_DC = CLng(Me.FGrid.Col)
  loc_109D142:     If Not (var_DC = CLng(1)) Then
  loc_109D14C:       If Not (var_DC = CLng(2)) Then
  loc_109D156:         If Not (var_DC = CLng(3)) Then
  loc_109D160:           If (var_DC = CLng(4)) Then
  loc_109D163:           End If
  loc_109D163:         End If
  loc_109D163:       End If
  loc_109D176:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109D18E:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_109D193:       var_11C = vbNullString
  loc_109D19D:       Set var_B4 = Me.FGrid
  loc_109D1A3:       LateIdCallSt
  loc_109D1BB:     End If
  loc_109D1BE:   Else
  loc_109D1E1:     If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_109D1F7:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109D20F:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_109D214:       var_11C = vbNullString
  loc_109D21E:       Set var_B4 = Me.FGrid
  loc_109D224:       LateIdCallSt
  loc_109D23C:     End If
  loc_109D23C:   End If
  loc_109D23C: End If
  loc_109D242: If (arg_C = &HD) Then
  loc_109D24A:   global_56 = 0
  loc_109D24D: End If
  loc_109D24F: arg_C = 0
  loc_109D252: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0FEB0
  'Data Table: 463FD0
  loc_E0FEA1: Call FGrid_UnknownEvent_C()
  loc_E0FEAB: global_56 = 0
  loc_E0FEAE: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '10F704C
  'Data Table: 463FD0
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_A4 As Long
  Dim var_CE As Integer
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_BC As MSHFlexGrid
  Dim var_134 As Variant
  loc_10F6D34: Set var_88 = Me.TopCtrl1
  loc_10F6D3A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_10F6D53: If (CStr() = "Browse") Then
  loc_10F6D56:   Exit Sub
  loc_10F6D57: End If
  loc_10F6D72: If (Me.ChkSetDeno.Value = 1) Then
  loc_10F6D88:   var_A4 = CLng(Me.FGrid.Col)
  loc_10F6D98:   If Not (var_A4 = CLng(1)) Then
  loc_10F6DA2:     If Not (var_A4 = CLng(2)) Then
  loc_10F6DAC:       If Not (var_A4 = CLng(3)) Then
  loc_10F6DB6:         If Not (var_A4 = CLng(4)) Then
  loc_10F6DC0:           If Not (var_A4 = CLng(5)) Then
  loc_10F6DCA:             If (var_A4 = CLng(6)) Then
  loc_10F6DCD:             End If
  loc_10F6DCD:           End If
  loc_10F6DCD:         End If
  loc_10F6DCD:       End If
  loc_10F6DCD:     End If
  loc_10F6DD1:     Set var_C8 = Me.FGrid
  loc_10F6DF5:     var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_10F6E22:     Set var_B8 = var_C8
  loc_10F6E34:     Proc_6_63_110B734(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_10F6E5C:     Set var_88 = Me.TxtGrid
  loc_10F6E62:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_9C, Asc(var_9C))
  loc_10F6E6A:     0 = var_B8.Text
  loc_10F6E83:     If (Len(var_9C) <= 1) Then
  loc_10F6E92:       Set var_88 = Me.TxtGrid
  loc_10F6E98:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_9C)
  loc_10F6EA0:       var_CE = var_B8.Text
  loc_10F6EB1:       Set var_BC = Me.TxtGrid
  loc_10F6EB7:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_10F6EBF:       var_C8.Text = var_9C
  loc_10F6ED2:     End If
  loc_10F6EDE:     Set var_88 = Me.TxtGrid
  loc_10F6EE4:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_10F6EFE:     Set var_BC = Me.TxtGrid
  loc_10F6F04:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_10F6F0C:     var_C8.SelStart = Len(var_B8.Text)
  loc_10F6F1F:   End If
  loc_10F6F22: Else
  loc_10F6F45:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_10F6F5B:     var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F6F63:     var_104 = CVar(CLng(6)) 'Long
  loc_10F6F7D:     var_9C = CStr(Me.FGrid.TextMatrix))
  loc_10F6F98:     var_134 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F6FE1:     If Not((CVar(CLng(6)) Or (CStr(Me.FGrid.TextMatrix)) = "Total"))) Then
  loc_10F7022:       Proc_6_63_110B734(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index, 0)
  loc_10F7034:     End If
  loc_10F7034:   End If
  loc_10F7034: End If
  loc_10F703E: If (CLng(Index) <> &HD) Then
  loc_10F7046:   global_56 = &HFF
  loc_10F7049: End If
  loc_10F7049: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FF1CFC
  'Data Table: 463FD0
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  loc_FF1B18: Set var_8C = Me.TopCtrl1
  loc_FF1B1E: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_FF1B37: If (CStr() = "Browse") Then
  loc_FF1B3A:   Exit Sub
  loc_FF1B3B: End If
  loc_FF1B58: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF1B5B:   Exit Sub
  loc_FF1B5C: End If
  loc_FF1B77: If (Me.ChkSetDeno.Value = 1) Then
  loc_FF1B8B:   If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FF1BAD:     If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF1BE7:       If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FF1C09:         If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF1C1F:           var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF1C28:           Set var_118 = Me.FGrid
  loc_FF1C43:         Else
  loc_FF1C56:           Me.FGrid.Rows = 1
  loc_FF1C73:           var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FF1C7B:           Set var_118 = Me.FGrid
  loc_FF1CAA:           Me.FGrid.FixedRows = 1
  loc_FF1CB2:         End If
  loc_FF1CB2:       End If
  loc_FF1CB5:     Else
  loc_FF1CD6:       MsgBox("No Entries To Delete", &H10, "Delete !", var_F4, var_114)
  loc_FF1CE6:     End If
  loc_FF1CEA:     Set var_8C = Me.FGrid
  loc_FF1CFB:   End If
  loc_FF1CFB: End If
  loc_FF1CFB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E358E4
  'Data Table: 463FD0
  Dim var_8C As TextBox
  loc_E358C7: Set var_88 = Me.TxtGrid
  loc_E358CD: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E358D5: var_8C.Visible = False
  loc_E358E1: Exit Sub
  loc_E358E2: Set arg_5800 = 
End Sub

Public Sub SEARCHBACK(MyValue) 'EE3A44
  'Data Table: 463FD0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EE399A: On Error Goto loc_EE39FE
  loc_EE39A3: Me.MoveFirst
  loc_EE39BD: var_8C = "SearchCode='" & MyValue
  loc_EE39CD: Me.Find var_8C & "'", 0, 1
  loc_EE39ED: If (Me.EOF = &HFF) Then
  loc_EE39F0:   Call Proc_222_37_131641C(var_A0)
  loc_EE39F8: Else
  loc_EE39F8:   Call Proc_222_36_138BDA4()
  loc_EE39FD: End If
  loc_EE39FD: Exit Sub
  loc_EE39FE: ' Referenced from: EE399A
  loc_EE3A06: Set var_A8 = Err()
  loc_EE3A0C: Call 0.Method_arg_2C (var_8C)
  loc_EE3A2D: MsgBox(CVar(var_8C), &H40, "Information", var_E8, var_108)
  loc_EE3A40: Exit Sub
  loc_EE3A41: Exit Sub
End Sub

Public Sub Proc_222_35_1374D2C
  'Data Table: 463FD0
  Dim var_BC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  loc_13744D1: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D0 'Integer
  loc_13744DB:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_13744E3:   var_100 = CVar(CLng(6)) 'Long
  loc_137450E:   If (CStr(Me.FGrid.TextMatrix)) = "Entry") Then
  loc_1374515:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_137451D:     var_100 = CVar(CLng(5)) 'Long
  loc_1374537:     var_118 = CStr(Me.FGrid.TextMatrix))
  loc_1374548:     If (var_118 = "A") Then
  loc_137454F:       var_128 = CVar(CLng(var_86)) 'Long
  loc_1374557:       var_148 = CVar(CLng(3)) 'Long
  loc_1374580:       var_180 = CVar(CLng(var_86)) 'Long
  loc_1374588:       var_1A0 = CVar(CLng(4)) 'Long
  loc_1374591:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374599:       var_100 = CVar(CLng(2)) 'Long
  loc_13745C1:       var_1C0 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_13745C9:       Set var_1D4 = Me.FGrid
  loc_13745CF:       LateIdCallSt
  loc_13745F4:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_13745FC:       var_100 = CVar(CLng(4)) 'Long
  loc_1374628:       var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1374637:     Else
  loc_137463F:       If (var_118 = "B") Then
  loc_1374646:         var_128 = CVar(CLng(var_86)) 'Long
  loc_137464E:         var_148 = CVar(CLng(3)) 'Long
  loc_1374677:         var_180 = CVar(CLng(var_86)) 'Long
  loc_137467F:         var_1A0 = CVar(CLng(4)) 'Long
  loc_1374688:         var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374690:         var_100 = CVar(CLng(2)) 'Long
  loc_13746B8:         var_1C0 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_13746C0:         Set var_1D4 = Me.FGrid
  loc_13746C6:         LateIdCallSt
  loc_13746EB:         var_E0 = CVar(CLng(var_86)) 'Long
  loc_13746F3:         var_100 = CVar(CLng(4)) 'Long
  loc_137471F:         var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_137472E:       Else
  loc_1374736:         If (var_118 = "C") Then
  loc_137473D:           var_128 = CVar(CLng(var_86)) 'Long
  loc_1374745:           var_148 = CVar(CLng(3)) 'Long
  loc_137476E:           var_180 = CVar(CLng(var_86)) 'Long
  loc_1374776:           var_1A0 = CVar(CLng(4)) 'Long
  loc_137477F:           var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374787:           var_100 = CVar(CLng(2)) 'Long
  loc_13747AF:           var_1C0 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_13747B7:           Set var_1D4 = Me.FGrid
  loc_13747BD:           LateIdCallSt
  loc_13747E2:           var_E0 = CVar(CLng(var_86)) 'Long
  loc_13747EA:           var_100 = CVar(CLng(4)) 'Long
  loc_1374816:           var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1374825:         Else
  loc_137482D:           If (var_118 = "D") Then
  loc_1374834:             var_128 = CVar(CLng(var_86)) 'Long
  loc_137483C:             var_148 = CVar(CLng(3)) 'Long
  loc_1374865:             var_180 = CVar(CLng(var_86)) 'Long
  loc_137486D:             var_1A0 = CVar(CLng(4)) 'Long
  loc_1374876:             var_E0 = CVar(CLng(var_86)) 'Long
  loc_137487E:             var_100 = CVar(CLng(2)) 'Long
  loc_13748A6:             var_1C0 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_13748AE:             Set var_1D4 = Me.FGrid
  loc_13748B4:             LateIdCallSt
  loc_13748D9:             var_E0 = CVar(CLng(var_86)) 'Long
  loc_13748E1:             var_100 = CVar(CLng(4)) 'Long
  loc_137490D:             var_A8 = (var_A8 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_137491C:           Else
  loc_1374924:             If (var_118 = "E") Then
  loc_137492B:               var_128 = CVar(CLng(var_86)) 'Long
  loc_1374933:               var_148 = CVar(CLng(3)) 'Long
  loc_137495C:               var_180 = CVar(CLng(var_86)) 'Long
  loc_1374964:               var_1A0 = CVar(CLng(4)) 'Long
  loc_137496D:               var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374975:               var_100 = CVar(CLng(2)) 'Long
  loc_137499D:               var_1C0 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_13749A5:               Set var_1D4 = Me.FGrid
  loc_13749AB:               LateIdCallSt
  loc_13749D0:               var_E0 = CVar(CLng(var_86)) 'Long
  loc_13749D8:               var_100 = CVar(CLng(4)) 'Long
  loc_1374A04:               var_B0 = (var_B0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1374A13:             Else
  loc_1374A1B:               If (var_118 = "F") Then
  loc_1374A22:                 var_128 = CVar(CLng(var_86)) 'Long
  loc_1374A2A:                 var_148 = CVar(CLng(3)) 'Long
  loc_1374A53:                 var_180 = CVar(CLng(var_86)) 'Long
  loc_1374A5B:                 var_1A0 = CVar(CLng(4)) 'Long
  loc_1374A64:                 var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374A6C:                 var_100 = CVar(CLng(2)) 'Long
  loc_1374A94:                 var_1C0 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_1374A9C:                 Set var_1D4 = Me.FGrid
  loc_1374AA2:                 LateIdCallSt
  loc_1374AC7:                 var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374ACF:                 var_100 = CVar(CLng(4)) 'Long
  loc_1374AFB:                 var_B8 = (var_B8 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1374B07:               End If
  loc_1374B07:             End If
  loc_1374B07:           End If
  loc_1374B07:         End If
  loc_1374B07:       End If
  loc_1374B07:     End If
  loc_1374B07:   End If
  loc_1374B0A: Next var_D0 'Integer
  loc_1374B34: For var_1E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_1E0 'Integer
  loc_1374B3E:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374B46:   var_100 = CVar(CLng(6)) 'Long
  loc_1374B71:   If (CStr(Me.FGrid.TextMatrix)) = "Total") Then
  loc_1374B78:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374B80:     var_100 = CVar(CLng(5)) 'Long
  loc_1374B9A:     var_1E4 = CStr(Me.FGrid.TextMatrix))
  loc_1374BAB:     If (var_1E4 = "A") Then
  loc_1374BB2:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374BBA:       var_100 = CVar(CLng(4)) 'Long
  loc_1374BC4:       var_CC = CVar(CStr(var_90)) 'String
  loc_1374BCC:       Set var_BC = Me.FGrid
  loc_1374BD2:       LateIdCallSt
  loc_1374BE3:     Else
  loc_1374BEB:       If (var_1E4 = "B") Then
  loc_1374BF2:         var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374BFA:         var_100 = CVar(CLng(4)) 'Long
  loc_1374C04:         var_CC = CVar(CStr(var_98)) 'String
  loc_1374C0C:         Set var_BC = Me.FGrid
  loc_1374C12:         LateIdCallSt
  loc_1374C23:       Else
  loc_1374C2B:         If (var_1E4 = "C") Then
  loc_1374C32:           var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374C3A:           var_100 = CVar(CLng(4)) 'Long
  loc_1374C44:           var_CC = CVar(CStr(var_A0)) 'String
  loc_1374C4C:           Set var_BC = Me.FGrid
  loc_1374C52:           LateIdCallSt
  loc_1374C63:         Else
  loc_1374C6B:           If (var_1E4 = "D") Then
  loc_1374C72:             var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374C7A:             var_100 = CVar(CLng(4)) 'Long
  loc_1374C84:             var_CC = CVar(CStr(var_A8)) 'String
  loc_1374C8C:             Set var_BC = Me.FGrid
  loc_1374C92:             LateIdCallSt
  loc_1374CA3:           Else
  loc_1374CAB:             If (var_1E4 = "E") Then
  loc_1374CB2:               var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374CBA:               var_100 = CVar(CLng(4)) 'Long
  loc_1374CC4:               var_CC = CVar(CStr(var_B0)) 'String
  loc_1374CCC:               Set var_BC = Me.FGrid
  loc_1374CD2:               LateIdCallSt
  loc_1374CE3:             Else
  loc_1374CEB:               If (var_1E4 = "F") Then
  loc_1374CF2:                 var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374CFA:                 var_100 = CVar(CLng(4)) 'Long
  loc_1374D04:                 var_CC = CVar(CStr(var_B8)) 'String
  loc_1374D0C:                 Set var_BC = Me.FGrid
  loc_1374D12:                 LateIdCallSt
  loc_1374D20:               End If
  loc_1374D20:             End If
  loc_1374D20:           End If
  loc_1374D20:         End If
  loc_1374D20:       End If
  loc_1374D20:     End If
  loc_1374D20:   End If
  loc_1374D23: Next var_1E0 'Integer
  loc_1374D28: Exit Sub
End Sub

Public Sub Proc_222_36_138BDA4
  'Data Table: 463FD0
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_10C As String
  Dim unk_463FE0 As Connection15
  Dim var_8A As Integer
  Dim var_88 As Recordset15
  Dim var_130 As Variant
  Dim var_134 As TextBox
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_12C As Variant
  Dim var_1B4 As Variant
  loc_138B4F8: On Error Goto loc_138BD9E
  loc_138B512: If (Me.RecordCount > 0) Then
  loc_138B56B:   unk_463FE0.Execute CStr("Select * from DenominationDetail where Sno='" & Me.Fields.Item("SearchCode").Value & "' Order by SNO1"), var_12C, -1
  loc_138B576:   Set var_88 = var_130
  loc_138B59F:   Me.FGrid.Redraw = False
  loc_138B5BA:   Me.FGrid.Rows = 1
  loc_138B5C4:   var_8A = 1
  loc_138B5DB:   If (var_88.RecordCount > 0) Then
  loc_138B5DE:     Call Proc_222_38_126E4E8(var_8A)
  loc_138B61C:     Me.lblSerialNo.Caption = CStr(var_88.Fields.Item("SNo").Value)
  loc_138B66B:     var_108 = Format(CVar(var_88.Fields.Item("VDate")), "dd/MMM/yyyy")
  loc_138B682:     Set var_130 = Me.Txt
  loc_138B688:     Call 0.Method_Proc_222_36_138BDA40 (CInt(0), var_134, CStr(var_108))
  loc_138B690:     var_134.Text = 1
  loc_138B6E0:     Set var_130 = Me.Txt
  loc_138B6E6:     Call 0.Method_Proc_222_36_138BDA40 (CInt(1), var_134)
  loc_138B6EE:     var_134.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), 1)
  loc_138B702:     ' Referenced from: 138BB43
  loc_138B711:     If Not(var_88.EOF) Then
  loc_138B714:       var_B4 = vbNullString
  loc_138B71E:       Set var_A4 = Me.FGrid
  loc_138B733:       Set var_13C = Me.FGrid
  loc_138B73A:       var_D8 = CVar(CLng(var_8A)) 'Long
  loc_138B742:       var_11C = CVar(CLng(0)) 'Long
  loc_138B773:       var_E8 = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_138B77A:       LateIdCallSt
  loc_138B79C:       var_11C = CVar(CLng(1)) 'Long
  loc_138B7C9:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DenominationType")), var_11C, CVar(CLng(var_8A)), var_13C, var_E8)) 'String
  loc_138B7D0:       LateIdCallSt
  loc_138B810:       var_D8 = "DenominationValue"
  loc_138B833:       Proc_6_39_E7D3A0(var_108, CVar(var_88.Fields.Item(var_D8)), var_D8)
  loc_138B889:       var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("Type")), var_13C, CVar(var_88.Fields.Item(var_D8)), var_11C) = "Entry"), var_108, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DenominationValue")), CVar(CLng(2)), CVar(CLng(var_8A)))))
  loc_138B899:       LateIdCallSt
  loc_138B915:       Proc_6_39_E7D3A0(var_108, CVar(var_88.Fields.Item("DenominationUnit")), FGrid.DispID_10000)
  loc_138B96B:       var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("Type")), var_13C, CVar(CStr(var_184))) = "Entry"), var_108, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DenominationUnit")), CVar(CLng(3)), CVar(CLng(var_8A)))))
  loc_138B97B:       LateIdCallSt
  loc_138B9F7:       Proc_6_39_E7D3A0(var_108, CVar(var_88.Fields.Item("DenominationTotal")))
  loc_138BA4D:       var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("Type")), var_13C, CVar(CStr(var_184))) = "Entry"), var_108, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DenominationTotal")), CVar(CLng(4)), CVar(CLng(var_8A)))))
  loc_138BA56:       var_1B4 = CVar(CStr(var_184)) 'String
  loc_138BA5D:       LateIdCallSt
  loc_138BAC1:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Relation")), CVar(CLng(5)), CVar(CLng(var_8A)), var_13C)) 'String
  loc_138BAC8:       LateIdCallSt
  loc_138BB13:       var_E8 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Type")), CVar(CLng(6)), CVar(CLng(var_8A)), var_13C)) 'String
  loc_138BB1A:       LateIdCallSt
  loc_138BB2E:       Set var_13C = Nothing 
  loc_138BB38:       var_8A = (var_8A + 1)
  loc_138BB3E:       var_88.MoveNext
  loc_138BB43:       GoTo loc_138B702
  loc_138BB46:     End If
  loc_138BB46:   End If
  loc_138BB65:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_138BB7B:     Me.FGrid.Rows = 2
  loc_138BB83:   End If
  loc_138BB96:   Me.FGrid.FixedRows = 1
  loc_138BBAC:   Me.FGrid.Redraw = True
  loc_138BBD9:   For var_1CC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_1CC 'Integer
  loc_138BBE3:     var_B4 = CVar(CLng(var_8A)) 'Long
  loc_138BBEB:     var_F8 = CVar(CLng(6)) 'Long
  loc_138BC05:     var_10C = CStr(Me.FGrid.TextMatrix))
  loc_138BC11:     var_14C = CVar(CLng(var_8A)) 'Long
  loc_138BC51:     If (CVar(CLng(6)) Or (CStr(Me.FGrid.TextMatrix)) = "Title")) Then
  loc_138BC67:       Me.FGrid.Row = CVar(CLng(var_8A))
  loc_138BC94:       For var_1D0 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9A = var_1D0 'Integer
  loc_138BCAD:         Me.FGrid.Col = CVar(CLng(var_9A))
  loc_138BCB5:         var_B4 = -2147483626
  loc_138BCC8:         Me.FGrid.CellBackColor = CVar(CLng(var_9A))
  loc_138BCD3:       Next var_1D0 'Integer
  loc_138BCDB:     Else
  loc_138BCEE:       Me.FGrid.Row = CVar(CLng(var_8A))
  loc_138BD1B:       For var_1D4 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_9A = var_1D4 'Integer
  loc_138BD34:         Me.FGrid.Col = CVar(CLng(var_9A))
  loc_138BD4F:         Me.FGrid.CellBackColor = &HFFFFFF
  loc_138BD5A:       Next var_1D4 'Integer
  loc_138BD5F:     End If
  loc_138BD62:   Next var_1CC 'Integer
  loc_138BD67: End If
  loc_138BD7A: Me.FGrid.Row = 1
  loc_138BD95: Me.FGrid.Col = 3
  loc_138BD9D: Exit Sub
  loc_138BD9E: ' Referenced from: 138B4F8
  loc_138BD9E: Proc_6_60_E63754()
  loc_138BDA3: Exit Sub
End Sub

Public Sub Proc_222_37_131641C
  'Data Table: 463FD0
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_8A As Integer
  Dim unk_463FE0 As Connection15
  Dim var_88 As Recordset15
  Dim var_B0 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim var_E4 As Variant
  Dim var_128 As String
  Dim var_1A8 As Variant
  loc_1315CE3: Me.FGrid.Redraw = False
  loc_1315CF8: Set var_B4 = Me.FGrid
  loc_1315CFE: var_B4.Rows = 1
  loc_1315D08: var_8A = 1
  loc_1315D21: unk_463FE0.Execute "SELECT * From DenominationFormat Order By Sno", var_C4, -1
  loc_1315D2C: Set var_88 = var_B4
  loc_1315D49: If (var_88.RecordCount > 0) Then
  loc_1315D4C:   ' Referenced from: 131618D
  loc_1315D5B:   If Not(var_88.EOF) Then
  loc_1315D5E:     var_A0 = vbNullString
  loc_1315D68:     Set var_B4 = Me.FGrid
  loc_1315D7D:     Set var_D0 = Me.FGrid
  loc_1315D84:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_1315D8C:     var_F4 = CVar(CLng(0)) 'Long
  loc_1315DBD:     var_114 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1315DC4:     LateIdCallSt
  loc_1315DDE:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_1315E13:     var_114 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DenominationType")), CVar(CLng(1)), var_B0, var_D0, var_114, CVar(CLng(1)))) 'String
  loc_1315E1A:     LateIdCallSt
  loc_1315E7D:     Proc_6_39_E7D3A0(var_140, CVar(var_88.Fields.Item("DenominationValue")), FGrid.DispID_10000)
  loc_1315EC4:     var_128 = Proc_6_38_E69628(CVar(var_88.Fields.Item("Type")), var_D0, CVar(var_88.Fields.Item("DenominationValue")), "DenominationValue")
  loc_1315ED3:     var_178 = IIf((var_128 = "Entry"), var_140, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DenominationValue")), CVar(CLng(2)), CVar(CLng(var_8A)))))
  loc_1315EE3:     LateIdCallSt
  loc_1315F11:     var_A0 = "Type"
  loc_1315F5F:     Proc_6_39_E7D3A0(var_140, CVar(var_88.Fields.Item("DenominationUnit")), var_A0)
  loc_1315FB5:     var_178 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item(var_A0)), var_D0, CVar(CStr(var_178))) = "Entry"), var_140, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DenominationUnit")), CVar(CLng(3)), CVar(CLng(var_8A)))))
  loc_1315FC5:     LateIdCallSt
  loc_1316041:     Proc_6_39_E7D3A0(var_140, CVar(var_88.Fields.Item("DenominationTotal")))
  loc_1316097:     var_178 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("Type")), var_D0, CVar(CStr(var_178))) = "Entry"), var_140, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DenominationTotal")), CVar(CLng(4)), CVar(CLng(var_8A)))))
  loc_13160A0:     var_1A8 = CVar(CStr(var_178)) 'String
  loc_13160A7:     LateIdCallSt
  loc_131610B:     var_114 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Relation")), CVar(CLng(5)), CVar(CLng(var_8A)), var_D0)) 'String
  loc_1316112:     LateIdCallSt
  loc_131615D:     var_114 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Type")), CVar(CLng(6)), CVar(CLng(var_8A)), var_D0)) 'String
  loc_1316164:     LateIdCallSt
  loc_1316178:     Set var_D0 = Nothing 
  loc_1316182:     var_8A = (var_8A + 1)
  loc_1316188:     var_88.MoveNext
  loc_131618D:     GoTo loc_1315D4C
  loc_1316190:   End If
  loc_1316190: End If
  loc_13161AF: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13161C5:   Me.FGrid.Rows = 2
  loc_13161CD: End If
  loc_13161CD: var_A0 = 1
  loc_13161D9: var_E4 = CVar(CLng(0)) 'Long
  loc_13161DE: var_104 = "1"
  loc_13161E8: Set var_B4 = Me.FGrid
  loc_13161EE: LateIdCallSt
  loc_131620C: Me.FGrid.FixedRows = 1
  loc_1316222: Me.FGrid.Redraw = True
  loc_131624F: For var_1C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_1C0 'Integer
  loc_1316259:   var_A0 = CVar(CLng(var_8A)) 'Long
  loc_1316261:   var_E4 = CVar(CLng(6)) 'Long
  loc_131627B:   var_128 = CStr(Me.FGrid.TextMatrix))
  loc_1316287:   var_104 = CVar(CLng(var_8A)) 'Long
  loc_13162C7:   If (CVar(CLng(6)) Or (CStr(Me.FGrid.TextMatrix)) = "Title")) Then
  loc_13162DD:     Me.FGrid.Row = CVar(CLng(var_8A))
  loc_131630A:     For var_1C4 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_8C = var_1C4 'Integer
  loc_1316323:       Me.FGrid.Col = CVar(CLng(var_8C))
  loc_131632B:       var_A0 = -2147483626
  loc_131633E:       Me.FGrid.CellBackColor = CVar(CLng(var_8C))
  loc_1316349:     Next var_1C4 'Integer
  loc_1316351:   Else
  loc_1316364:     Me.FGrid.Row = CVar(CLng(var_8A))
  loc_1316391:     For var_1C8 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_8C = var_1C8 'Integer
  loc_13163AA:       Me.FGrid.Col = CVar(CLng(var_8C))
  loc_13163C5:       Me.FGrid.CellBackColor = &HFFFFFF
  loc_13163D0:     Next var_1C8 'Integer
  loc_13163D5:   End If
  loc_13163D8: Next var_1C0 'Integer
  loc_13163F0: Me.FGrid.Row = 1
  loc_131640B: Me.FGrid.Col = 3
  loc_1316418: Set var_88 = Nothing
  loc_131641B: Exit Sub
End Sub

Public Sub Proc_222_38_126E4E8
  'Data Table: 463FD0
  Dim var_A4 As Variant
  Dim var_94 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_E4 As String
  Dim var_F8 As MSHFlexGrid
  loc_126DF4F: If (Me.ChkSetDeno.Value = 1) Then
  loc_126DF56:   Set var_94 = Me.FGrid
  loc_126DF65:   var_94.Width = CVar(CDbl(11400))
  loc_126DF76:   var_94.Cols = 7
  loc_126DF7B:   var_A4 = 0
  loc_126DF87:   var_C4 = CVar(CLng(0)) 'Long
  loc_126DF8C:   var_E4 = "Sno"
  loc_126DF95:   LateIdCallSt
  loc_126DFA0:   var_A4 = CVar(CLng(0)) 'Long
  loc_126DFA5:   var_C4 = &H1F4
  loc_126DFB1:   LateIdCallSt
  loc_126DFBC:   var_A4 = CVar(CLng(0)) 'Long
  loc_126DFC7:   var_C4 = CVar(CInt(1)) 'Integer
  loc_126DFCE:   LateIdCallSt
  loc_126DFD6:   var_A4 = 0
  loc_126DFE2:   var_C4 = CVar(CLng(1)) 'Long
  loc_126DFE7:   var_E4 = "Denomination Type"
  loc_126DFF0:   LateIdCallSt
  loc_126DFFB:   var_A4 = CVar(CLng(1)) 'Long
  loc_126E000:   var_C4 = &H1194
  loc_126E00C:   LateIdCallSt
  loc_126E017:   var_A4 = CVar(CLng(1)) 'Long
  loc_126E022:   var_C4 = CVar(CInt(1)) 'Integer
  loc_126E029:   LateIdCallSt
  loc_126E031:   var_A4 = 0
  loc_126E03D:   var_C4 = CVar(CLng(2)) 'Long
  loc_126E042:   var_E4 = "Value (In Rs.)"
  loc_126E04B:   LateIdCallSt
  loc_126E056:   var_A4 = CVar(CLng(2)) 'Long
  loc_126E05B:   var_C4 = &H5DC
  loc_126E067:   LateIdCallSt
  loc_126E072:   var_A4 = CVar(CLng(2)) 'Long
  loc_126E07D:   var_C4 = CVar(CInt(1)) 'Integer
  loc_126E084:   LateIdCallSt
  loc_126E08C:   var_A4 = 0
  loc_126E098:   var_C4 = CVar(CLng(3)) 'Long
  loc_126E09D:   var_E4 = "Unit"
  loc_126E0A6:   LateIdCallSt
  loc_126E0B1:   var_A4 = CVar(CLng(3)) 'Long
  loc_126E0B6:   var_C4 = &H5DC
  loc_126E0C2:   LateIdCallSt
  loc_126E0CD:   var_A4 = CVar(CLng(3)) 'Long
  loc_126E0D8:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E0DF:   LateIdCallSt
  loc_126E0EA:   var_A4 = CVar(CLng(3)) 'Long
  loc_126E0F5:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E0FC:   LateIdCallSt
  loc_126E104:   var_A4 = 0
  loc_126E110:   var_C4 = CVar(CLng(4)) 'Long
  loc_126E115:   var_E4 = "Total"
  loc_126E11E:   LateIdCallSt
  loc_126E129:   var_A4 = CVar(CLng(4)) 'Long
  loc_126E12E:   var_C4 = &H5DC
  loc_126E13A:   LateIdCallSt
  loc_126E145:   var_A4 = CVar(CLng(4)) 'Long
  loc_126E150:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E157:   LateIdCallSt
  loc_126E15F:   var_A4 = 0
  loc_126E16B:   var_C4 = CVar(CLng(5)) 'Long
  loc_126E170:   var_E4 = "Group"
  loc_126E179:   LateIdCallSt
  loc_126E184:   var_A4 = CVar(CLng(5)) 'Long
  loc_126E189:   var_C4 = &H320
  loc_126E195:   LateIdCallSt
  loc_126E1A0:   var_A4 = CVar(CLng(5)) 'Long
  loc_126E1AB:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E1B2:   LateIdCallSt
  loc_126E1BA:   var_A4 = 0
  loc_126E1C6:   var_C4 = CVar(CLng(6)) 'Long
  loc_126E1CB:   var_E4 = "Type"
  loc_126E1D4:   LateIdCallSt
  loc_126E1DF:   var_A4 = CVar(CLng(6)) 'Long
  loc_126E1E4:   var_C4 = &H320
  loc_126E1F0:   LateIdCallSt
  loc_126E1FB:   var_A4 = CVar(CLng(6)) 'Long
  loc_126E206:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E20D:   LateIdCallSt
  loc_126E217:   Set var_94 = Nothing 
  loc_126E21E: Else
  loc_126E222:   Set var_F8 = Me.FGrid
  loc_126E231:   var_F8.Width = CVar(CDbl(9800))
  loc_126E242:   var_F8.Cols = 7
  loc_126E247:   var_A4 = 0
  loc_126E253:   var_C4 = CVar(CLng(0)) 'Long
  loc_126E258:   var_E4 = vbNullString
  loc_126E261:   LateIdCallSt
  loc_126E26C:   var_A4 = CVar(CLng(0)) 'Long
  loc_126E271:   var_C4 = &H1F4
  loc_126E27D:   LateIdCallSt
  loc_126E288:   var_A4 = CVar(CLng(0)) 'Long
  loc_126E293:   var_C4 = CVar(CInt(1)) 'Integer
  loc_126E29A:   LateIdCallSt
  loc_126E2A2:   var_A4 = 0
  loc_126E2AE:   var_C4 = CVar(CLng(1)) 'Long
  loc_126E2B3:   var_E4 = vbNullString
  loc_126E2BC:   LateIdCallSt
  loc_126E2C7:   var_A4 = CVar(CLng(1)) 'Long
  loc_126E2CC:   var_C4 = &H1194
  loc_126E2D8:   LateIdCallSt
  loc_126E2E3:   var_A4 = CVar(CLng(1)) 'Long
  loc_126E2EE:   var_C4 = CVar(CInt(1)) 'Integer
  loc_126E2F5:   LateIdCallSt
  loc_126E2FD:   var_A4 = 0
  loc_126E309:   var_C4 = CVar(CLng(2)) 'Long
  loc_126E30E:   var_E4 = vbNullString
  loc_126E317:   LateIdCallSt
  loc_126E322:   var_A4 = CVar(CLng(2)) 'Long
  loc_126E327:   var_C4 = &H5DC
  loc_126E333:   LateIdCallSt
  loc_126E33E:   var_A4 = CVar(CLng(2)) 'Long
  loc_126E349:   var_C4 = CVar(CInt(1)) 'Integer
  loc_126E350:   LateIdCallSt
  loc_126E358:   var_A4 = 0
  loc_126E364:   var_C4 = CVar(CLng(3)) 'Long
  loc_126E369:   var_E4 = vbNullString
  loc_126E372:   LateIdCallSt
  loc_126E37D:   var_A4 = CVar(CLng(3)) 'Long
  loc_126E382:   var_C4 = &H5DC
  loc_126E38E:   LateIdCallSt
  loc_126E399:   var_A4 = CVar(CLng(3)) 'Long
  loc_126E3A4:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E3AB:   LateIdCallSt
  loc_126E3B6:   var_A4 = CVar(CLng(3)) 'Long
  loc_126E3C1:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E3C8:   LateIdCallSt
  loc_126E3D0:   var_A4 = 0
  loc_126E3DC:   var_C4 = CVar(CLng(4)) 'Long
  loc_126E3E1:   var_E4 = vbNullString
  loc_126E3EA:   LateIdCallSt
  loc_126E3F5:   var_A4 = CVar(CLng(4)) 'Long
  loc_126E3FA:   var_C4 = &H5DC
  loc_126E406:   LateIdCallSt
  loc_126E411:   var_A4 = CVar(CLng(4)) 'Long
  loc_126E41C:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E423:   LateIdCallSt
  loc_126E42B:   var_A4 = 0
  loc_126E437:   var_C4 = CVar(CLng(5)) 'Long
  loc_126E43C:   var_E4 = vbNullString
  loc_126E445:   LateIdCallSt
  loc_126E450:   var_A4 = CVar(CLng(5)) 'Long
  loc_126E455:   var_C4 = 0
  loc_126E461:   LateIdCallSt
  loc_126E46C:   var_A4 = CVar(CLng(5)) 'Long
  loc_126E477:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E47E:   LateIdCallSt
  loc_126E486:   var_A4 = 0
  loc_126E492:   var_C4 = CVar(CLng(6)) 'Long
  loc_126E497:   var_E4 = vbNullString
  loc_126E4A0:   LateIdCallSt
  loc_126E4AB:   var_A4 = CVar(CLng(6)) 'Long
  loc_126E4B0:   var_C4 = 0
  loc_126E4BC:   LateIdCallSt
  loc_126E4C7:   var_A4 = CVar(CLng(6)) 'Long
  loc_126E4D2:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E4D9:   LateIdCallSt
  loc_126E4E3:   Set var_F8 = Nothing 
  loc_126E4E7: End If
  loc_126E4E7: Exit Sub
End Sub

Public Sub Proc_222_39_DFCA98
  'Data Table: 463FD0
  loc_DFCA94: Exit Sub
End Sub

Public Sub Proc_222_40_E462EC
  'Data Table: 463FD0
  loc_E462C8: Set var_88 = Me.TopCtrl1
  loc_E462CE: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_E462E7: If (CStr() = "Browse") Then
  loc_E462EA:   Exit Sub
  loc_E462EB: End If
  loc_E462EB: Exit Sub
End Sub

Public Sub Proc_222_41_12AB5A4(arg_C) '12AB5A4
  'Data Table: 463FD0
  Dim var_94 As Variant
  Dim var_AC As Long
  Dim var_C8 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_B0 As Variant
  Dim var_13C As Variant
  Dim var_B4 As String
  Dim var_14C As Variant
  loc_12AAFA0: If (arg_C = 0) Then
  loc_12AAFBE:   If (Me.ChkSetDeno.Value = 1) Then
  loc_12AAFD4:     var_AC = CLng(Me.FGrid.Col)
  loc_12AAFE4:     If Not (var_AC = CLng(3)) Then
  loc_12AAFEE:       If Not (var_AC = CLng(1)) Then
  loc_12AAFF8:         If Not (var_AC = CLng(2)) Then
  loc_12AB002:           If (var_AC = CLng(4)) Then
  loc_12AB005:           End If
  loc_12AB005:         End If
  loc_12AB005:       End If
  loc_12AB018:       var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AB021:       Set var_DC = Me.FGrid
  loc_12AB042:       Set var_94 = Me.TxtGrid
  loc_12AB048:       Call 0.Method_Proc_222_41_12AB5A40 (arg_C, var_B0, var_B4, CVar(CLng(var_DC.Col)))
  loc_12AB050:       var_FC = var_B0.Text
  loc_12AB067:       var_13C = CVar(CStr(Trim(CVar(var_B4)))) 'String
  loc_12AB06F:       Set var_150 = Me.FGrid
  loc_12AB075:       LateIdCallSt
  loc_12AB09A:     Else
  loc_12AB0A1:       If (var_AC = CLng(5)) Then
  loc_12AB0B1:         Set var_94 = Me.TxtGrid
  loc_12AB0B7:         Call 0.Method_Proc_222_41_12AB5A40 (arg_C, var_B0, var_B4, var_150)
  loc_12AB0BF:         var_13C = var_B0.Text
  loc_12AB0D6:         If (var_B4 <> vbNullString) Then
  loc_12AB0F1:           Set var_B0 = Me.ListView.SelectedItem
  loc_12AB0F7:           var_B4 = var_B0.Text
  loc_12AB109:           Set var_C8 = Me.TxtGrid
  loc_12AB10F:           Call 0.Method_Proc_222_41_12AB5A40 (arg_C, var_DC, var_B4)
  loc_12AB117:           var_DC.Text = var_AC
  loc_12AB12D:         End If
  loc_12AB140:         var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AB149:         Set var_DC = Me.FGrid
  loc_12AB158:         var_11C = CVar(CLng(var_DC.Col)) 'Long
  loc_12AB16A:         Set var_94 = Me.TxtGrid
  loc_12AB170:         Call 0.Method_Proc_222_41_12AB5A40 (arg_C, var_B0, var_B4)
  loc_12AB178:         var_11C = var_B0.Text
  loc_12AB180:         var_D8 = CVar(var_B4) 'String
  loc_12AB188:         Set var_150 = Me.FGrid
  loc_12AB18E:         LateIdCallSt
  loc_12AB1AF:       Else
  loc_12AB1B6:         If (var_AC = CLng(6)) Then
  loc_12AB1C6:           Set var_94 = Me.TxtGrid
  loc_12AB1CC:           Call 0.Method_Proc_222_41_12AB5A40 (arg_C, var_B0, var_B4, var_150)
  loc_12AB1D4:           var_D8 = var_B0.Text
  loc_12AB1EB:           If (var_B4 <> vbNullString) Then
  loc_12AB206:             Set var_B0 = Me.ListView.SelectedItem
  loc_12AB20C:             var_B4 = var_B0.Text
  loc_12AB21E:             Set var_C8 = Me.TxtGrid
  loc_12AB224:             Call 0.Method_Proc_222_41_12AB5A40 (arg_C, var_DC, var_B4)
  loc_12AB22C:             var_DC.Text = var_FC
  loc_12AB242:           End If
  loc_12AB255:           var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AB26D:           var_11C = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12AB27F:           Set var_94 = Me.TxtGrid
  loc_12AB285:           Call 0.Method_Proc_222_41_12AB5A40 (arg_C, var_B0, var_B4)
  loc_12AB28D:           var_11C = var_B0.Text
  loc_12AB295:           var_D8 = CVar(var_B4) 'String
  loc_12AB29D:           Set var_150 = Me.FGrid
  loc_12AB2A3:           LateIdCallSt
  loc_12AB2D4:           var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AB2DC:           var_11C = CVar(CLng(6)) 'Long
  loc_12AB2E5:           Set var_B0 = Me.FGrid
  loc_12AB2F6:           var_B4 = CStr(var_B0.TextMatrix))
  loc_12AB311:           var_14C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AB359:           If (CVar(CLng(6)) Or (CStr(Me.FGrid.TextMatrix)) = "Total")) Then
  loc_12AB381:             For var_188 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):     var_8E = var_188 'Integer
  loc_12AB39A:               Me.FGrid.Col = CVar(CLng(var_8E))
  loc_12AB3A2:               var_FC = -2147483626
  loc_12AB3B5:               Me.FGrid.CellBackColor = CVar(CLng(var_8E))
  loc_12AB3C0:             Next var_188 'Integer
  loc_12AB3C8:           Else
  loc_12AB3ED:             For var_18C = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):       var_8E = var_18C 'Integer
  loc_12AB406:               Me.FGrid.Col = CVar(CLng(var_8E))
  loc_12AB421:               Me.FGrid.CellBackColor = &HFFFFFF
  loc_12AB42C:             Next var_18C 'Integer
  loc_12AB431:           End If
  loc_12AB431:         End If
  loc_12AB431:       End If
  loc_12AB431:     End If
  loc_12AB434:   Else
  loc_12AB457:     If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_12AB464:       Set var_94 = Me.TxtGrid
  loc_12AB46A:       Call 0.Method_Proc_222_41_12AB5A40 (arg_C, var_B0)
  loc_12AB482:       If Not(IsNumeric(CVar(var_B0))) Then
  loc_12AB496:         Set var_94 = Me.TxtGrid
  loc_12AB49C:         Call 0.Method_Proc_222_41_12AB5A40 (arg_C, var_B0)
  loc_12AB4A4:         var_B0.Text = CStr(0)
  loc_12AB4B3:       End If
  loc_12AB4C0:       Set var_94 = Me.TxtGrid
  loc_12AB4C6:       Call 0.Method_Proc_222_41_12AB5A40 (arg_C, var_B0)
  loc_12AB4F1:       var_11C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AB509:       var_14C = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12AB544:       LateIdCallSt
  loc_12AB56B:       Call Proc_222_35_1374D2C(Me.FGrid, CVar(CStr(Format(CVar(Val(var_B0.Text)), "0"))), 1, 1)
  loc_12AB570:     End If
  loc_12AB570:   End If
  loc_12AB570: End If
  loc_12AB583: Set var_94 = Me.TxtGrid
  loc_12AB589: Call 0.Method_Proc_222_41_12AB5A40 (0, var_B0, 0, &HFF)
  loc_12AB591: var_B0.MaxLength = var_14C
  loc_12AB59D: Proc_222_41_12AB5A4 = var_11C
End Sub

Public Sub Proc_222_42_E493D4
  'Data Table: 463FD0
  loc_E493BB: If (Me.FrmList.Visible = &HFF) Then
  loc_E493CA:   Me.FrmList.Visible = False
  loc_E493D2: End If
  loc_E493D2: Exit Sub
End Sub
