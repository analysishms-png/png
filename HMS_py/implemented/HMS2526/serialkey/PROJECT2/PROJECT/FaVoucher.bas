
Public Sub Proc_7_0_F794E8(arg_C) 'F794E8
  'Data Table: 41C68C
  Dim unk_41C68F As Connection15
  Dim var_88 As Recordset15
  Dim var_A0 As Variant
  Dim HÀ_ As TextBox
  Dim var_B4 As Fields15
  Dim var_C8 As String
  Dim var_EC As Variant
  loc_F793D0: unk_41C68F.Execute "SELECT NCAT FROM VOUCHER_TYPE WHERE V_TYPE='" & arg_C & "'", var_B0, -1
  loc_F793FF: If (var_B4.RecordCount > 0) Then
  loc_F7940B:   HÀ_.Tag = "VOUCHERREG"
  loc_F7943A:   var_DC = HÀ_.HÀ_.Fields.Item("NCat").Value 'Variant
  loc_F79448:   var_A0 = "CNT"
  loc_F79450:   If Not (var_DC = var_A0) Then
  loc_F79456:     var_C8 = "JV"
  loc_F7945E:     If Not (var_DC = var_C8) Then
  loc_F7946C:       If Not (var_DC = "PMT") Then
  loc_F7947A:         If (var_DC = "RCT") Then
  loc_F7947D:         End If
  loc_F7947D:       End If
  loc_F7947D:     End If
  loc_F7948B:     Call 0.Method_arg_2B0 (var_A0, var_C8)
  loc_F79499:     Call 0.Method_arg_1C4 (" ")
  loc_F794AA:     var_A0 = CVar(CLng(txt.DispID_A)) 'Long
  loc_F794AF:     var_EC = 7
  loc_F794D0:     Call FaVrEnt.FindMove(CStr(txt.DispID_41))
  loc_F794DF:   End If
  loc_F794DF: End If
  loc_F794E4: Set var_88 = Nothing
  loc_F794E7: Exit Sub
End Sub

Public Sub Proc_7_1_1365788(arg_C) '1365788
  'Data Table: 41C68C
  Dim var_98 As String
  Dim unk_41C68F As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As Variant
  Dim HÀ_ As TextBox
  Dim var_BC As Fields15
  Dim var_D0 As String
  Dim var_F4 As Variant
  Dim var_108 As String
  Dim unk_41C6A8 As Connection15
  Dim var_90 As Recordset15
  Dim MemVar_1F95E84 As String
  Dim var_13C As Variant
  loc_1364F74: unk_41C68F.Execute "SELECT NCAT FROM VOUCHER_TYPE WHERE V_TYPE='" & arg_C & "'", var_B8, -1
  loc_1364FA3: If (var_BC.RecordCount > 0) Then
  loc_1364FAF:   HÀ_.Tag = "VOUCHER"
  loc_1364FC6:   var_BC = HÀ_.HÀ_.Fields
  loc_1364FD6:   var_B8 = var_BC.Item("NCat").Value
  loc_1364FDE:   var_E4 = var_B8 'Variant
  loc_1364FF4:   If Not (var_E4 = "CNT") Then
  loc_1364FFA:     var_D0 = "JV"
  loc_1365002:     If Not (var_E4 = var_D0) Then
  loc_1365010:       If Not (var_E4 = "PMT") Then
  loc_136501E:         If (var_E4 = "RCT") Then
  loc_1365021:         End If
  loc_1365021:       End If
  loc_1365021:     End If
  loc_1365024:     MemVar_1F95204 = "fate+0"
  loc_136504A:     var_108 = "SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp WHERE UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_136505A:     unk_41C6A8.Execute var_108 & "' AND [Option]='Voucher Entry'", var_B8, -1
  loc_1365065:     Set var_90 = var_BC
  loc_136508D:     If (var_90.RecordCount > 0) Then
  loc_1365096:       var_A8 = "UPrivilege"
  loc_13650A2:       var_BC = var_90.Fields
  loc_13650B2:       var_B8 = var_BC.Item(var_A8).Value
  loc_13650BB:       MemVar_1F95E84 = CStr(var_B8)
  loc_13650C9:     End If
  loc_13650CE:     Set var_90 = Nothing
  loc_13650DF:     Call 0.Method_arg_2B0 (var_A8, var_D0, MemVar_1F95E84)
  loc_13650EC:     Call 0.Method_arg_9C (2, var_BC)
  loc_13650FA:     Call 0.Method_arg_1C4 (" ")
  loc_136510B:     var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_1365110:     var_F4 = &HD
  loc_1365131:     Call FaVrEnt.FindMove(CStr(txt.DispID_41))
  loc_1365143:   Else
  loc_136514E:     If Not (var_E4 = "PBILL") Then
  loc_1365154:       var_D0 = "PTRAN"
  loc_136515C:       If (var_E4 = var_D0) Then
  loc_136515F:       End If
  loc_1365162:       MemVar_1F95204 = "Purch+5"
  loc_1365188:       var_108 = "SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp WHERE UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128
  loc_1365198:       unk_41C6A8.Execute var_108 & "' AND [Option]='Purchase Bill/Return Entry'", var_B8, -1
  loc_13651A3:       Set var_90 = var_BC
  loc_13651CB:       If (var_90.RecordCount > 0) Then
  loc_13651E0:         var_BC = var_90.Fields
  loc_13651F0:         var_B8 = var_BC.Item("UPrivilege").Value
  loc_13651F9:         MemVar_1F95E84 = CStr(var_B8)
  loc_1365207:       End If
  loc_136520C:       Set var_90 = Nothing
  loc_1365214:       Call var_12C.Show
  loc_1365226:       var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_136522B:       var_F4 = &HD
  loc_1365242:       var_13C = CVar(CStr(txt.DispID_41)) 'String
  loc_136524B:       Call var_12C.SEARCHBACK
  loc_136525D:     Else
  loc_1365268:       If (var_E4 = "SBILL") Then
  loc_1365270:         Call var_15C.Show
  loc_1365282:         var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_1365287:         var_F4 = &HD
  loc_136529E:         var_13C = CVar(CStr(txt.DispID_41)) 'String
  loc_13652A7:         Call var_15C.SEARCHBACK
  loc_13652B9:       Else
  loc_13652C4:         If (var_E4 = "PRET") Then
  loc_13652CC:           Call var_16C.Show
  loc_13652DE:           var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_13652E3:           var_F4 = &HD
  loc_13652FA:           var_13C = CVar(CStr(txt.DispID_41)) 'String
  loc_1365303:           Call var_16C.SEARCHBACK
  loc_1365315:         Else
  loc_1365320:           If (var_E4 = "SRET") Then
  loc_1365328:             Call var_17C.Show
  loc_136533A:             var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_136533F:             var_F4 = &HD
  loc_1365356:             var_13C = CVar(CStr(txt.DispID_41)) 'String
  loc_136535F:             Call var_17C.SEARCHBACK
  loc_1365371:           Else
  loc_1365374:             var_A8 = "OPBAL"
  loc_136537C:             If (var_E4 = var_A8) Then
  loc_136538D:               Call 0.Method_arg_2B0 (var_A8, var_D0, var_13C, var_F4, var_A8, var_13C, var_F4, var_A8)
  loc_13653C3:               Call FaSubGroup.SEARCHBACK(CStr(txt.DispID_41))
  loc_13653DA:               Call 0.Method_arg_9C (2, &HC, CVar(CLng(txt.DispID_A)), var_13C, &HC)
  loc_13653E2:             Else
  loc_13653ED:               If Not (var_E4 = "PBR") Then
  loc_13653F3:                 var_D0 = "PBC"
  loc_13653FB:                 If Not (var_E4 = var_D0) Then
  loc_1365409:                   If Not (var_E4 = "PRR") Then
  loc_1365417:                     If (var_E4 = "PRC") Then
  loc_136541A:                     End If
  loc_136541A:                   End If
  loc_136541A:                 End If
  loc_136541D:                 MemVar_1F95204 = "Purch+5"
  loc_136543C:                 var_98 = "SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp WHERE UserName='" & MemVar_1F950C8 & "' AND CompCode='"
  loc_1365453:                 unk_41C6A8.Execute var_98 & MemVar_1F95128 & "' AND [Option]='Purchase Bill'", var_B8, -1
  loc_136545E:                 Set var_90 = var_BC
  loc_1365486:                 If (var_90.RecordCount > 0) Then
  loc_136548F:                   var_A8 = "UPrivilege"
  loc_136549B:                   var_BC = var_90.Fields
  loc_13654AB:                   var_B8 = var_BC.Item(var_A8).Value
  loc_13654B4:                   MemVar_1F95E84 = CStr(var_B8)
  loc_13654C2:                 End If
  loc_13654C7:                 Set var_90 = Nothing
  loc_13654D3:                 pPBill.OpenAs = vbNullString
  loc_13654E6:                 Call 0.Method_arg_2B0 (var_A8, var_D0, MemVar_1F95E84, var_BC, var_A8)
  loc_13654F7:                 var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_13654FC:                 var_F4 = &HD
  loc_136551C:                 Call pPBill.SEARCHBACK(CStr(txt.DispID_41))
  loc_136552E:               Else
  loc_1365539:                 If Not (var_E4 = "EXR") Then
  loc_136553F:                   var_D0 = "EXC"
  loc_1365547:                   If (var_E4 = var_D0) Then
  loc_136554A:                   End If
  loc_136554D:                   MemVar_1F95204 = "Purch+5"
  loc_136556C:                   var_98 = "SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp WHERE UserName='" & MemVar_1F950C8 & "' AND CompCode='"
  loc_1365583:                   unk_41C6A8.Execute var_98 & MemVar_1F95128 & "' AND [Option]='Purchase Bill'", var_B8, -1
  loc_136558E:                   Set var_90 = var_BC
  loc_13655B6:                   If (var_90.RecordCount > 0) Then
  loc_13655BF:                     var_A8 = "UPrivilege"
  loc_13655CB:                     var_BC = var_90.Fields
  loc_13655DB:                     var_B8 = var_BC.Item(var_A8).Value
  loc_13655E4:                     MemVar_1F95E84 = CStr(var_B8)
  loc_13655F2:                   End If
  loc_13655F7:                   Set var_90 = Nothing
  loc_1365603:                   pPBill.OpenAs = "Expense"
  loc_1365616:                   Call 0.Method_arg_2B0 (var_A8, var_D0, MemVar_1F95E84, var_BC, var_F4)
  loc_1365627:                   var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_136562C:                   var_F4 = &HD
  loc_136564C:                   Call pPBill.SEARCHBACK(CStr(txt.DispID_41))
  loc_136565E:                 Else
  loc_1365669:                   If (var_E4 = "MBILL") Then
  loc_136566F:                     MemVar_1F95204 = "Memb+3"
  loc_136568E:                     var_98 = "SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp WHERE UserName='" & MemVar_1F950C8 & "' AND CompCode='"
  loc_13656A5:                     unk_41C6A8.Execute var_98 & MemVar_1F95128 & "' AND [Option]='Member Facility Billing'", var_B8, -1
  loc_13656B0:                     Set var_90 = var_BC
  loc_13656D8:                     If (var_90.RecordCount > 0) Then
  loc_13656E1:                       var_A8 = "UPrivilege"
  loc_13656ED:                       var_BC = var_90.Fields
  loc_1365706:                       MemVar_1F95E84 = CStr(var_BC.Item(var_A8).Value)
  loc_1365714:                     End If
  loc_1365719:                     Set var_90 = Nothing
  loc_136572A:                     Call 0.Method_arg_2B0 (var_A8, var_D0, MemVar_1F95E84, var_BC, var_F4, var_A8)
  loc_136573B:                     var_A8 = CVar(CLng(txt.DispID_A)) 'Long
  loc_1365740:                     var_F4 = &HD
  loc_1365760:                     Call MemFacilityBilling.SEARCHBACK(CStr(txt.DispID_41))
  loc_136576F:                   End If
  loc_136576F:                 End If
  loc_136576F:               End If
  loc_136576F:             End If
  loc_136576F:           End If
  loc_136576F:         End If
  loc_136576F:       End If
  loc_136576F:     End If
  loc_136576F:   End If
  loc_136576F: End If
  loc_1365774: Set var_88 = Nothing
  loc_136577C: Set var_8C = Nothing
  loc_1365784: Set var_90 = Nothing
  loc_1365787: Exit Sub
End Sub

Public Sub Proc_7_2_FF25B0
  'Data Table: 41C68C
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_18C As String
  Dim var_94 As Recordset15
  Dim var_1BA As Integer
  loc_FF23E4: On Error Goto loc_FF256B
  loc_FF23F4: var_E8 = "SELECT VOUCHER_TYPE.DESCRIPTION,NAME,LEDGER.V_Type,LEDGER.V_No,LEDGER.v_Prefix,LEDGER.V_Date,LEDGER.V_SNo,LEDGER.AmtCr,LEDGER.AmtDr,LEDGER.Chq_No,LEDGER.Chq_Date,LEDGER.Narration,LEDGERM.Narration AS NARRMAIN,LEDGERM.DocId,LEDGERM.v_Prefix,LEDGER.U_NAME UserName FROM ((LEDGER LEFT JOIN LEDGERM ON LEDGERM.DOCID=LEDGER.DOCID)LEFT JOIN SUBGROUP ON  SUBGROUP.SUBCODE = LEDGER.SUBCODE ) INNER JOIN VOUCHER_TYPE ON (VOUCHER_TYPE.V_tYPE=LEDGER.V_tYPE AND VOUCHER_TYPE.LOGSITE_CODE=LEDGER.LOGSITE_CODE)  WHERE LEDGER.V_TYPE='"
  loc_FF2410: var_108 = 0 & Me.TxtVtYpe.Tag 
  loc_FF2419: var_128 = var_108 & "' AND LEDGER.V_NO=" 
  loc_FF2445: Me.Connection15.Execute CStr(0 & Me.TxtVno & " order by ledger.v_no,LEDGER.V_SNo"), var_128, var_E8
  loc_FF2450: Set var_94 = var_1B0
  loc_FF2480: If (var_94.RecordCount = 0) Then
  loc_FF2486:   var_F8 = Me.CAPTION
  loc_FF24A6:   MsgBox("No record found to Print", &H40, var_F8, var_108, var_128)
  loc_FF24B6:   Exit Sub
  loc_FF24B7: End If
  loc_FF24C0: var_18C = MemVar_1F953B4 & "\FaRect.TTX"
  loc_FF24CD: Set var_1B0 = var_94 
  loc_FF24D9: var_1BA = CreateFieldDefFile(var_1B0, var_18C, &HFF, var_F8)
  loc_FF24EC: var_A8 = CVar(var_1BA) 'Variant
  loc_FF251D: Call 0.Method_arg_64 (var_1B0, CVar(var_1B0), var_C8, var_E8)
  loc_FF2525: Call 0.Method_arg_2C (var_1BA, var_1AC)
  loc_FF2533: Call 0.Method_arg_150 (-1)
  loc_FF2557: Proc_183_10_1499E94(arg_10, 0, CStr(Me.CAPTION))
  loc_FF2567: Set var_94 = Nothing
  loc_FF256A: Exit Sub
  loc_FF256B: ' Referenced from: FF23E4
  loc_FF2573: Set var_1B0 = Err()
  loc_FF2579: Call 0.Method_arg_2C (var_18C, &HFF)
  loc_FF259C: MsgBox(CVar(var_18C), &H10, Me.CAPTION, var_108, var_128)
  loc_FF25AF: Exit Sub
End Sub

Public Sub Proc_7_3_F62624(arg_C) 'F62624
  'Data Table: 41C68C
  Dim unk_41C68F As Connection15
  Dim var_F0 As Recordset15
  Dim var_F4 As Fields15
  Dim var_108 As Field20
  loc_F62539: Proc_6_17_EAAE40(var_A8, arg_C, "SELECT COUNT(*) FROM Ledger WHERE V_Type=", var_EC, -1, var_F0)
  loc_F6254F: unk_41C68F.Execute CStr(var_F4 & var_A8), 0, var_108
  loc_F62557: var_118 = var_F0.Fields
  loc_F6255F:  = var_F4.Item(0)
  loc_F62567:  = var_108.Value
  loc_F6258E: If (var_118 > 0) Then
  loc_F62596:   Result &HFF End Sub 'Integer
  loc_F62597: End If
  loc_F625C3: Proc_6_17_EAAE40(var_A8, arg_C, "SELECT COUNT(*) FROM LedgerM WHERE V_Type=", var_EC, -1)
  loc_F625D9: unk_41C68F.Execute CStr(var_F0 & var_A8), var_F4, 0
  loc_F625E9:  = var_F4.Item(var_118)
  loc_F625F1:  = var_F0.Fields.Value
  loc_F62618: If (var_118 > 0) Then
  loc_F62620:   Result &HFF End Sub 'Integer
  loc_F62621: End If
  loc_F62621: Result  End Sub 'Integer
End Sub

Public Sub Proc_7_4_11ABA48
  'Data Table: 41C68C
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_E8 As Variant
  Dim var_110 As String
  Dim var_108 As Variant
  Dim var_120 As Variant
  Dim var_C8 As Integer
  Dim var_140 As Variant
  Dim var_1A0 As Variant
  Dim var_94 As Recordset15
  Dim var_1FA As Integer
  loc_11AB644: On Error Goto loc_11ABA00
  loc_11AB647: var_B8 = 1
  loc_11AB66B: If (Me.Opt2.Value = True) Then
  loc_11AB66E:   var_B8 = 0
  loc_11AB677:   var_D8 = Me.DataCombo2
  loc_11AB6A7:   If (Proc_6_27_EA61EC(var_D8, "From Voucher No. ", var_D8) = 0) Then
  loc_11AB6AA:     Exit Sub
  loc_11AB6AB:   End If
  loc_11AB6AB:   var_B8 = 1
  loc_11AB6B4:   var_D8 = Me.DataCombo2
  loc_11AB6CC:   Set var_10C = var_D8 
  loc_11AB6E4:   If (Proc_6_27_EA61EC(var_10C, "To Voucher No. ", var_D8) = 0) Then
  loc_11AB6E7:     Exit Sub
  loc_11AB6E8:   End If
  loc_11AB6FC:   var_110 = "SELECT VOUCHER_TYPE.DESCRIPTION,NAME,LEDGER.V_Type,LEDGER.V_No,LEDGER.v_Prefix,LEDGER.V_Date,LEDGER.V_SNo,LEDGER.AmtCr,LEDGER.AmtDr,LEDGER.Chq_No,LEDGER.Chq_Date,LEDGER.Narration,LEDGERM.Narration AS NARRMAIN,LEDGER.U_Name As UserName,LEDGERM.DocId,LEDGERM.v_Prefix,LTDS.TDSAMT,LTDS.TDS,LTDS.ONAMT FROM (((LEDGER LEFT JOIN LEDGERM ON LEDGERM.DOCID=LEDGER.DOCID)LEFT JOIN SUBGROUP ON  SUBGROUP.SUBCODE = LEDGER.SUBCODE ) INNER JOIN VOUCHER_TYPE ON (VOUCHER_TYPE.V_tYPE=LEDGER.V_tYPE AND VOUCHER_TYPE.LOGSITE_CODE=LEDGER.LOGSITE_CODE)) LEFT JOIN LEDGERTDS LTDS ON (LTDS.TDSDRCODE=LEDGER.SUBCODE AND LEDGER.DOCID=LTDS.DOCID)  WHERE LEDGER.V_PREFIX=" & MemVar_1F9512C
  loc_11AB721:   var_C8 = 0
  loc_11AB72A:   var_140 = Me.DataCombo2
  loc_11AB748:   var_1A0 = Me.DataCombo2
  loc_11AB767:   Me.Connection15.Execute CStr(1 & var_1A0 & " order by ledger.v_no,LEDGER.V_SNo"), var_C8 & var_140 & " AND ", CVar(var_110 & " And LEDGER.V_TYPE='") & Me.DataCombo3.BoundText & "' AND LEDGER.V_NO BETWEEN "
  loc_11AB772:   Set var_94 = var_10C
  loc_11AB79D: Else
  loc_11AB7AE:   var_F8 = Me.Opt2.Value
  loc_11AB7C1:   If (var_F8 = True) Then
  loc_11AB7C7:     var_D8 = Me.Text2
  loc_11AB7DC:     Set var_10C = var_D8 
  loc_11AB7F4:     If (Proc_6_27_EA61EC(var_10C, "For Date ", var_D8, 2, var_1F4) = 0) Then
  loc_11AB7F7:       Exit Sub
  loc_11AB7F8:     End If
  loc_11AB80C:     var_110 = "SELECT VOUCHER_TYPE.DESCRIPTION,NAME,LEDGER.V_Type,LEDGER.V_No,LEDGER.v_Prefix,LEDGER.V_Date,LEDGER.V_SNo,LEDGER.AmtCr,LEDGER.AmtDr,LEDGER.Chq_No,LEDGER.Chq_Date,LEDGER.Narration,LEDGERM.Narration AS NARRMAIN,LEDGER.U_Name As UserName,LEDGERM.DocId,LEDGERM.v_Prefix FROM,LTDS.TDSAMT,LTDS.TDS,LTDS.ONAMT FROM (((LEDGER LEFT JOIN LEDGERM ON LEDGERM.DOCID=LEDGER.DOCID)LEFT JOIN SUBGROUP ON  SUBGROUP.SUBCODE = LEDGER.SUBCODE ) INNER JOIN VOUCHER_TYPE ON (VOUCHER_TYPE.V_tYPE=LEDGER.V_tYPE AND VOUCHER_TYPE.LOGSITE_CODE=LEDGER.LOGSITE_CODE)) LEFT JOIN LEDGERTDS LTDS ON (LTDS.TDSDRCODE=LEDGER.SUBCODE AND LEDGER.DOCID=LTDS.DOCID) WHERE LEDGER.V_PREFIX=" & MemVar_1F9512C
  loc_11AB821:     Proc_183_7_EB17D4(var_F8, Me.Text2, CVar(var_110 & " And VOUCHER_TYPE.Category='FA' AND LEDGER.V_date="), var_140, -1, var_10C)
  loc_11AB829:     var_120 = -1 & var_F8 
  loc_11AB82D:     var_B8 = " order by ledger.v_type,ledger.v_no,LEDGER.V_SNo"
  loc_11AB840:     Me.Connection15.Execute CStr(CVar(var_110 & " And LEDGER.V_TYPE='") & Me.DataCombo3.BoundText & var_B8), var_10C, var_B8
  loc_11AB84B:     Set var_94 = var_10C
  loc_11AB86A:   Else
  loc_11AB87E:     var_110 = "SELECT VOUCHER_TYPE.DESCRIPTION,NAME,LEDGER.V_Type,LEDGER.V_No,LEDGER.v_Prefix,LEDGER.V_Date,LEDGER.V_SNo,LEDGER.AmtCr,LEDGER.AmtDr,LEDGER.Chq_No,LEDGER.Chq_Date,LEDGER.Narration,LEDGERM.Narration AS NARRMAIN,LEDGER.U_Name As UserName,LEDGERM.DocId,LEDGERM.v_Prefix,LTDS.TDSAMT,LTDS.TDS,LTDS.ONAMT FROM (((LEDGER LEFT JOIN LEDGERM ON LEDGERM.DOCID=LEDGER.DOCID)LEFT JOIN SUBGROUP ON  SUBGROUP.SUBCODE = LEDGER.SUBCODE ) INNER JOIN VOUCHER_TYPE ON (VOUCHER_TYPE.V_tYPE=LEDGER.V_tYPE AND VOUCHER_TYPE.LOGSITE_CODE=LEDGER.LOGSITE_CODE)) LEFT JOIN LEDGERTDS LTDS ON (LTDS.TDSDRCODE=LEDGER.SUBCODE AND LEDGER.DOCID=LTDS.DOCID) WHERE LEDGER.V_PREFIX=" & MemVar_1F9512C
  loc_11AB899:     var_108 = Me.TxtVtYpe.Tag
  loc_11AB89F:     var_120 = 0 & var_108 
  loc_11AB8A3:     var_E8 = "' AND LEDGER.V_NO="
  loc_11AB8D4:     Me.Connection15.Execute CStr(0 & Me.TxtVno & " order by ledger.v_no,LEDGER.V_SNo"), var_120 & var_E8, CVar(var_110 & " And LEDGER.V_TYPE='")
  loc_11AB8DF:     Set var_94 = var_10C
  loc_11AB901:   End If
  loc_11AB901: End If
  loc_11AB915: If (var_94.RecordCount = 0) Then
  loc_11AB91B:   var_F8 = Me.CAPTION
  loc_11AB93B:   MsgBox("No record found to Print", &H40, var_F8, var_108, var_120)
  loc_11AB94B:   Exit Sub
  loc_11AB94C: End If
  loc_11AB955: var_110 = MemVar_1F953B4 & "\FaJVCHR.TTX"
  loc_11AB962: Set var_10C = var_94 
  loc_11AB96E: var_1FA = CreateFieldDefFile(var_10C, var_110, &HFF, var_F8, var_1A0)
  loc_11AB981: var_A8 = CVar(var_1FA) 'Variant
  loc_11AB9A4: var_B8 = CVar(var_10C) 'Address
  loc_11AB9B2: Call 0.Method_arg_64 (var_10C, var_B8, var_C8, var_E8, var_1FA)
  loc_11AB9BA: Call 0.Method_arg_2C (-1, var_10C)
  loc_11AB9C8: Call 0.Method_arg_150 (var_B8)
  loc_11AB9EC: Proc_183_10_1499E94(arg_10, 0, CStr(Me.CAPTION))
  loc_11AB9FC: Set var_94 = Nothing
  loc_11AB9FF: Exit Sub
  loc_11ABA00: ' Referenced from: 11AB644
  loc_11ABA08: Set var_10C = Err()
  loc_11ABA0E: Call 0.Method_arg_2C (var_110, &HFF)
  loc_11ABA31: MsgBox(CVar(var_110), &H10, Me.CAPTION, var_108, var_120)
  loc_11ABA44: Exit Sub
End Sub

Public Sub Proc_7_5_DFD5F8
  'Data Table: 41C68C
  loc_DFD5F4: Exit Sub
End Sub

Public Sub Proc_7_6_DFD07C
  'Data Table: 41C68C
  loc_DFD078: Exit Sub
End Sub

Public Sub Proc_7_7_F30134(arg_C) 'F30134
  'Data Table: 41C68C
  Dim unk_41C68F As Connection15
  Dim var_88 As Recordset15
  Dim var_A0 As Variant
  Dim HÀ_ As TextBox
  Dim var_B4 As Fields15
  Dim var_EC As Long
  loc_F30054: unk_41C68F.Execute "SELECT NCAT FROM VOUCHER_TYPE WHERE V_TYPE='" & arg_C & "'", var_B0, -1
  loc_F30083: If (var_B4.RecordCount > 0) Then
  loc_F3008F:   HÀ_.Tag = "OPDIFF"
  loc_F300CC:   var_A0 = "OPBAL"
  loc_F300D4:   If (HÀ_.HÀ_.Fields.Item("NCat").Value = var_A0) Then
  loc_F300E5:     Call 0.Method_arg_2B0 (var_A0, var_C8)
  loc_F300F6:     var_A0 = CVar(CLng(txt.DispID_A)) 'Long
  loc_F300FB:     var_EC = &HC
  loc_F3011B:     Call FaSubGroup.SEARCHBACK(CStr(txt.DispID_41))
  loc_F3012A:   End If
  loc_F3012A: End If
  loc_F3012F: Set var_88 = Nothing
  loc_F30132: Exit Sub
End Sub
