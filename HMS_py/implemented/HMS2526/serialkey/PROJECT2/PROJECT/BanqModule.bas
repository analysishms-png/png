
Public Sub Proc_263_0_F73920(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C) 'F73920
  'Data Table: 41BAC0
  loc_F737E0: If (arg_2C = "S") Then
  loc_F737EC:   hAdvanceDepDialogSecondry.OpenMode = arg_C
  loc_F737FA:   hAdvanceDepDialogSecondry.OpenType = arg_10
  loc_F73808:   hAdvanceDepDialogSecondry.AdvType = arg_14
  loc_F73816:   hAdvanceDepDialogSecondry.IdNo = arg_18
  loc_F73824:   Call hAdvanceDepDialogSecondry.global_52Put(arg_34)
  loc_F73832:   hAdvanceDepDialogSecondry.pDocId = arg_1C
  loc_F73840:   hAdvanceDepDialogSecondry.PersonCode = arg_20
  loc_F7384E:   hAdvanceDepDialogSecondry.PTableOrRoomNo = arg_24
  loc_F73861:   hAdvanceDepDialogSecondry.PBillAmt = CStr(arg_28)
  loc_F73879:   Call 0.Method_arg_2B0 (1)
  loc_F73881: Else
  loc_F7388A:   hAdvanceDepDialog.OpenMode = arg_C
  loc_F73898:   hAdvanceDepDialog.OpenType = arg_10
  loc_F738A6:   hAdvanceDepDialog.AdvType = arg_14
  loc_F738B4:   hAdvanceDepDialog.IdNo = arg_18
  loc_F738C2:   Call hAdvanceDepDialog.global_52Put(arg_34)
  loc_F738D0:   hAdvanceDepDialog.pDocId = arg_1C
  loc_F738DE:   hAdvanceDepDialog.PersonCode = arg_20
  loc_F738EC:   hAdvanceDepDialog.PTableOrRoomNo = arg_24
  loc_F738FF:   hAdvanceDepDialog.PBillAmt = CStr(arg_28)
  loc_F73917:   Call 0.Method_arg_2B0 (1, var_AC)
  loc_F7391C: End If
  loc_F7391C: Exit Sub
End Sub

Public Sub Proc_263_1_1331518(arg_C, arg_10, arg_14) '1331518
  'Data Table: 41BAC0
  Dim var_B8 As String
  Dim unk_41BACA As Connection15
  Dim var_88 As Integer
  Dim var_A8 As Recordset15
  Dim var_CC As Variant
  Dim var_F4 As Variant
  Dim var_86 As Integer
  Dim var_E0 As Fields15
  Dim var_110 As Field20
  Dim var_148 As Variant
  Dim var_168 As String
  Dim var_130 As Variant
  Dim var_188 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_1D8 As Variant
  Dim var_210 As Variant
  Dim var_220 As Variant
  Dim var_DC As Variant
  Dim var_104 As Variant
  Dim var_158 As Variant
  Dim var_1A8 As Variant
  loc_1330DC8: On Error Goto loc_1331512
  loc_1330DDF: var_B8 = "Select P.VNO AS RECTNO,P.VDATE AS RECTDATE P.PAYTYPE AS RECTMODE,P.U_NAME AS UserName,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo As ChqNo,P.ChqDate AS ChqDate,P.ExpDate AS CCExpDate,P.BatchNo As BatchNo,P.AMTCR AS RECTAMT FROM PayChargeH P Where VType='AD' AND ContraDocId='" & arg_C
  loc_1330DEF: unk_41BACA.Execute var_B8 & "'", var_DC, -1
  loc_1330DFA: Set var_A8 = var_E0
  loc_1330E0C: Close 1
  loc_1330E15: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1330E1B: var_88 = 1
  loc_1330E21: MemVar_1F953C4 = "N"
  loc_1330E28: MemVar_1F953C8 = "N"
  loc_1330E2F: MemVar_1F953CC = "M"
  loc_1330E39: var_E4 = var_A8.RecordCount
  loc_1330E47: If (var_E4 > 0) Then
  loc_1330E68:   If CBool(Trim(arg_10) <> "W") Then
  loc_1330E6B:     ' Referenced from: 13312A8
  loc_1330E7A:     If Not(var_A8.EOF) Then
  loc_1330E89:       If (var_86 = 0) Then
  loc_1330EA4:         Print 1, vbNullString
  loc_1330EAF:         Print 1, vbNullString
  loc_1330ED6:         Print 1, Proc_6_128_1026560(" ADVANCE RECEIPT ", "B", &H50)
  loc_1330EEA:         Print 1, vbNullString
  loc_1330EF5:         Print 1, vbNullString
  loc_1330F55:         Proc_6_39_E7D3A0(var_158, CVar(var_A8.Fields.Item("GRCNo")), Proc_6_129_12B862C(var_88, var_86, &H50))
  loc_1330FC2:         var_130 = (CVar("Receipt No.  :" & CStr(var_A8.Fields.Item("RectNo").Value)) + Space(8))
  loc_1330FC9:         var_188 = CVar(Proc_6_45_EADFB8(CStr("GRC No. :" & var_158), &HE)) 'String
  loc_1330FCC:         var_198 = (var_130 + var_188)
  loc_1330FD3:         var_1B8 = (var_198 + Space(8))
  loc_1330FDC:         var_1D8 = (var_1B8 + "Date :")
  loc_1330FE6:         var_220 = (var_1D8 + CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("RectDate")), var_88)))
  loc_1330FEC:         Print 1, var_220
  loc_133102E:         Print 1, vbNullString
  loc_1331039:         Print 1, vbNullString
  loc_1331067:         var_104 = CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("GuestName")))) 'String
  loc_133107A:         var_130 = ("Recieved with thanks from Mr. " + Ucase(var_104))
  loc_1331080:         Print 1, var_130
  loc_1331099:         Print 1, vbNullString
  loc_13310B6:         var_110 = var_A8.Fields.Item("RectAmt")
  loc_13310C5:         Proc_6_39_E7D3A0(var_104, CVar(var_110))
  loc_13310D4:         var_F4 = "0.00"
  loc_1331110:         Proc_6_39_E7D3A0(var_188, CVar(var_A8.Fields.Item("RectAmt")), 1)
  loc_1331162:         var_168 = "A Sum of Rs. "
  loc_133116A:         var_148 = (var_168 + Format(var_104, var_F4))
  loc_1331173:         var_158 = (CVar(var_A8.Fields.Item("GRCNo")) + " (")
  loc_133117D:         var_1A8 = (var_158 + CVar(Proc_6_43_1003B24(CSng(var_188), "Rs", vbNullString)))
  loc_1331186:         var_1B8 = (Space(8) + ") by ")
  loc_1331190:         var_210 = (var_1B8 + CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("RectMode")), 1)))
  loc_1331196:         Print 1, CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("RectDate")), var_88))
  loc_13311D4:         Print 1, vbNullString
  loc_13311E6:         Print 1, "towards (Room Charge/Others)" & "______________________________________________"
  loc_13311F4:         Print 1, vbNullString
  loc_13311FF:         Print 1, vbNullString
  loc_133120A:         Print 1, vbNullString
  loc_1331215:         Print 1, vbNullString
  loc_1331220:         Print 1, vbNullString
  loc_1331244:         Print 1, Proc_6_52_EAE084("Autho. Signature", &H46)
  loc_1331258:         Print 1, vbNullString
  loc_1331263:         Print 1, "---------------------------------------------------------------------------------------"
  loc_1331269:       End If
  loc_133126F:       var_86 = (var_86 + &H18)
  loc_1331272:       ' Referenced from: 133128F
  loc_1331278:       If (Proc_6_129_12B862C(var_88, var_86, &H50) < &H22) Then
  loc_1331280:         Print 1, vbNullString
  loc_133128C:         var_86 = (var_86 + 1)
  loc_133128F:         GoTo loc_1331272
  loc_1331292:       End If
  loc_1331294:       var_86 = 0
  loc_133129D:       var_88 = (var_88 + 1)
  loc_13312A3:       var_A8.MoveNext
  loc_13312A8:       GoTo loc_1330E6B
  loc_13312AB:     End If
  loc_13312AE:   Else
  loc_13312B1:     var_AC = "ADVANCE RECIEPT BANQ"
  loc_13312B7:     var_CC = arg_14
  loc_13312C8:     var_B0 = CStr(Ucase(var_CC))
  loc_13312F2:     Set var_E0 = var_A8 
  loc_13312F9:     CreateFieldDefFile(var_E0, MemVar_1F950B4 & "\" & var_AC & ".ttx", &HFF, var_88)
  loc_1331324:     var_B8 = MemVar_1F950B4 & "\"
  loc_133133B:     Call 0.Method_arg_1C (var_B8 & var_AC & ".RPT", var_CC, var_E0, var_86)
  loc_1331346:     MemVar_1F951E8 = var_E0
  loc_133136F:     Call 0.Method_arg_64 (var_E0, CVar(var_E0), var_F4, var_168)
  loc_1331377:     Call 0.Method_arg_2C (var_86, var_86)
  loc_1331385:     Call 0.Method_arg_150 (var_E0)
  loc_133139B:     Call 0.Method_arg_90 (var_E0, var_E4)
  loc_13313A3:     Call 0.Method_arg_24 (var_B2)
  loc_13313AF:     For var_250 =  To CInt(var_E4):   1 = var_250 'Integer
  loc_13313C8:       Call 0.Method_arg_90 (var_E0, CLng(var_B2))
  loc_13313D0:       Call 0.Method_arg_20 (var_110)
  loc_13313D8:       Call 0.Method_arg_30 (var_B8)
  loc_1331407:       If (Ucase(CVar(var_B8)) = "TITLE") Then
  loc_133142B:         Call 0.Method_arg_90 (var_E0, CLng(var_B2))
  loc_1331433:         Call 0.Method_arg_20 (var_110)
  loc_133143B:         Call 0.Method_arg_38 ("'" & var_AC & "'")
  loc_133144E:       End If
  loc_1331451:     Next var_250 'Integer
  loc_133145B:     Set var_110 = Nothing
  loc_1331471:     Set var_E0 = MemVar_1F951E8 
  loc_133147D:     Proc_6_99_1484404(var_E0, 0, var_B0)
  loc_1331488:     MemVar_1F951E8 = var_E0
  loc_1331493:   End If
  loc_1331493: End If
  loc_1331495: Close 1
  loc_133149E: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_13314AE: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_13314B9: Close 1
  loc_13314C3: If (MemVar_1F953BC = "Y") Then
  loc_13314DF:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_13314E9: Else
  loc_1331502:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1331509: End If
  loc_133150E: Set var_A8 = Nothing
  loc_1331511: Exit Sub
  loc_1331512: ' Referenced from: 1330DC8
  loc_1331512: Proc_6_60_E63754(&HFF)
  loc_1331517: Exit Sub
End Sub

Public Sub Proc_263_2_12EC834(arg_C, arg_10, arg_14) '12EC834
  'Data Table: 41BAC0
  Dim var_BC As String
  Dim unk_41BACA As Connection15
  Dim var_88 As Integer
  Dim var_A8 As Recordset15
  Dim var_D0 As Variant
  Dim var_F8 As Variant
  Dim var_86 As Integer
  Dim var_E4 As Fields15
  Dim var_114 As Field20
  Dim var_E0 As Variant
  Dim var_108 As Variant
  Dim var_134 As Variant
  Dim var_144 As String
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  loc_12EC1AC: On Error Goto loc_12EC82E
  loc_12EC1C3: var_BC = "SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.AMTCR AS RECTAMT,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo,P.ChqDate,P.ExpDate AS CCExpDate,P.BatchNo,P.ROOMNO AS ROOMNO,HB.VNO AS BOOKNO,HB.PartyName,P.TxnNo FROM HallBook HB LEFT JOIN paychargeH P ON HB.DOCID=P.ContraDOCID  WHERE P.DOCID IN ('" & arg_C
  loc_12EC1D3: unk_41BACA.Execute var_BC & "') ORDER BY P.DOCID,P.SNO", var_E0, -1
  loc_12EC1DE: Set var_A8 = var_E4
  loc_12EC1F0: Close 1
  loc_12EC1F9: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_12EC1FF: var_88 = 1
  loc_12EC205: MemVar_1F953C4 = "N"
  loc_12EC20C: MemVar_1F953C8 = "N"
  loc_12EC213: MemVar_1F953CC = "M"
  loc_12EC21D: var_E8 = var_A8.RecordCount
  loc_12EC22B: If (var_E8 > 0) Then
  loc_12EC24C:   If CBool(Trim(arg_10) <> "W") Then
  loc_12EC24F:     ' Referenced from: 12EC564
  loc_12EC25E:     If Not(var_A8.EOF) Then
  loc_12EC26D:       If (var_86 = 0) Then
  loc_12EC288:         Print 1, vbNullString
  loc_12EC293:         Print 1, vbNullString
  loc_12EC2BA:         Print 1, Proc_6_128_1026560(" RECEIPT ", "B", &H50)
  loc_12EC2CE:         Print 1, vbNullString
  loc_12EC2D9:         Print 1, vbNullString
  loc_12EC317:         Print 1, "Receipt No.  :" & CStr(var_A8.Fields.Item("RectNo").Value)
  loc_12EC333:         Print 1, vbNullString
  loc_12EC33E:         Print 1, vbNullString
  loc_12EC36C:         var_108 = CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("GuestName")), Proc_6_129_12B862C(var_88, var_86, &H50))) 'String
  loc_12EC37F:         var_134 = ("Recieved with thanks from Mr. " + Ucase(var_108))
  loc_12EC385:         Print 1, var_134
  loc_12EC39E:         Print 1, vbNullString
  loc_12EC3BB:         var_114 = var_A8.Fields.Item("RectAmt")
  loc_12EC3CA:         Proc_6_39_E7D3A0(var_108, CVar(var_114))
  loc_12EC3D9:         var_F8 = "0.00"
  loc_12EC415:         Proc_6_39_E7D3A0(var_1AC, CVar(var_A8.Fields.Item("RectAmt")), 1)
  loc_12EC43C:         var_144 = "A Sum of Rs. "
  loc_12EC444:         var_154 = (var_144 + Format(var_108, var_F8))
  loc_12EC44D:         var_174 = (var_154 + " (")
  loc_12EC457:         var_1D4 = (var_174 + CVar(Proc_6_43_1003B24(CSng(var_1AC), "Rs", vbNullString)))
  loc_12EC460:         var_1F4 = (var_1D4 + ")")
  loc_12EC466:         Print 1, var_1F4
  loc_12EC49A:         Print 1, vbNullString
  loc_12EC4A5:         Print 1, vbNullString
  loc_12EC4B0:         Print 1, vbNullString
  loc_12EC4BB:         Print 1, vbNullString
  loc_12EC4C6:         Print 1, vbNullString
  loc_12EC4D1:         Print 1, vbNullString
  loc_12EC4DC:         Print 1, vbNullString
  loc_12EC500:         Print 1, Proc_6_52_EAE084("Autho. Signature", &H46, 1)
  loc_12EC514:         Print 1, vbNullString
  loc_12EC51F:         Print 1, "---------------------------------------------------------------------------------------"
  loc_12EC525:       End If
  loc_12EC52B:       var_86 = (var_86 + &H18)
  loc_12EC52E:       ' Referenced from: 12EC54B
  loc_12EC534:       If (Proc_6_129_12B862C(var_88, var_86, &H50) < &H22) Then
  loc_12EC53C:         Print 1, vbNullString
  loc_12EC548:         var_86 = (var_86 + 1)
  loc_12EC54B:         GoTo loc_12EC52E
  loc_12EC54E:       End If
  loc_12EC550:       var_86 = 0
  loc_12EC559:       var_88 = (var_88 + 1)
  loc_12EC55F:       var_A8.MoveNext
  loc_12EC564:       GoTo loc_12EC24F
  loc_12EC567:     End If
  loc_12EC56A:   Else
  loc_12EC56D:     var_AC = "SettlementRecieptBanq"
  loc_12EC573:     var_D0 = arg_14
  loc_12EC584:     var_B0 = CStr(Ucase(var_D0))
  loc_12EC5AE:     Set var_E4 = var_A8 
  loc_12EC5B5:     CreateFieldDefFile(var_E4, MemVar_1F950B4 & "\" & var_AC & ".ttx", &HFF, var_88, var_86)
  loc_12EC5E0:     var_BC = MemVar_1F950B4 & "\"
  loc_12EC5F7:     Call 0.Method_arg_1C (var_BC & var_AC & ".RPT", var_D0, var_E4, var_86)
  loc_12EC602:     MemVar_1F951E8 = var_E4
  loc_12EC62B:     Call 0.Method_arg_64 (var_E4, CVar(var_E4), var_F8, var_144)
  loc_12EC633:     Call 0.Method_arg_2C (var_86, var_88)
  loc_12EC641:     Call 0.Method_arg_150 (var_E4)
  loc_12EC657:     Call 0.Method_arg_90 (var_E4, var_E8)
  loc_12EC65F:     Call 0.Method_arg_24 (var_B2)
  loc_12EC66B:     For var_1FC =  To CInt(var_E8):   1 = var_1FC 'Integer
  loc_12EC684:       Call 0.Method_arg_90 (var_E4, CLng(var_B2))
  loc_12EC68C:       Call 0.Method_arg_20 (var_114)
  loc_12EC694:       Call 0.Method_arg_30 (var_BC)
  loc_12EC6AA:       var_20C = Ucase(CVar(var_BC)) 'Variant
  loc_12EC6C3:       If (var_20C = "TITLE") Then
  loc_12EC6E7:         Call 0.Method_arg_90 (var_E4, CLng(var_B2))
  loc_12EC6EF:         Call 0.Method_arg_20 (var_114)
  loc_12EC6F7:         Call 0.Method_arg_38 ("'" & var_AC & "'")
  loc_12EC70D:       Else
  loc_12EC718:         If (var_20C = "BILLNO") Then
  loc_12EC744:           Call 0.Method_arg_90 (var_E4, CLng(var_B2))
  loc_12EC74C:           Call 0.Method_arg_20 (var_114)
  loc_12EC754:           Call 0.Method_arg_38 (CStr("'" & var_21C & "'"))
  loc_12EC76A:         End If
  loc_12EC76A:       End If
  loc_12EC76D:     Next var_1FC 'Integer
  loc_12EC777:     Set var_114 = Nothing
  loc_12EC78D:     Set var_E4 = MemVar_1F951E8 
  loc_12EC799:     Proc_6_99_1484404(var_E4, 0, var_B0)
  loc_12EC7A4:     MemVar_1F951E8 = var_E4
  loc_12EC7AF:   End If
  loc_12EC7AF: End If
  loc_12EC7B1: Close 1
  loc_12EC7BA: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_12EC7CA: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_12EC7D5: Close 1
  loc_12EC7DF: If (MemVar_1F953BC = "Y") Then
  loc_12EC7FB:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_12EC805: Else
  loc_12EC81E:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_12EC825: End If
  loc_12EC82A: Set var_A8 = Nothing
  loc_12EC82D: Exit Sub
  loc_12EC82E: ' Referenced from: 12EC1AC
  loc_12EC82E: Proc_6_60_E63754(&HFF)
  loc_12EC833: Exit Sub
End Sub
