
Public Sub Proc_3_0_F9F284(arg_C) 'F9F284
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_F9F103: Set var_8C = arg_C 
  loc_F9F12B: var_8C.Fields.Append "V_DATE", 7, 0
  loc_F9F157: var_8C.Fields.Append "V_TYPE", &H81, 3
  loc_F9F183: var_8C.Fields.Append "V_NO", 3, &HB
  loc_F9F1AF: var_8C.Fields.Append "PARTY_CODE", 3, &HB
  loc_F9F1DB: var_8C.Fields.Append "CR", 5, &H13
  loc_F9F207: var_8C.Fields.Append "Party_Bill_No", &H81, &HF
  loc_F9F233: var_8C.Fields.Append "Dhara", &H81, &HA
  loc_F9F243: var_8C.CursorType = 3
  loc_F9F250: var_8C.LockType = 3
  loc_F9F26F: var_8C.Open var_A0, var_B0, -1
  loc_F9F276: Set var_8C = Nothing 
  loc_F9F27D: Set var_88 = arg_C 
  loc_F9F281: Exit Sub
End Sub

Public Sub Proc_3_1_FB78DC(arg_C) 'FB78DC
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_FB772F: Set var_8C = arg_C 
  loc_FB7757: var_8C.Fields.Append "V_DATE", 7, 0
  loc_FB7783: var_8C.Fields.Append "V_TYPE", &H81, 3
  loc_FB77AF: var_8C.Fields.Append "V_NO", 3, &HB
  loc_FB77DB: var_8C.Fields.Append "PARTY_CODE", 3, &HB
  loc_FB7807: var_8C.Fields.Append "DR", 5, &H13
  loc_FB7833: var_8C.Fields.Append "AMTADJ", 5, &H13
  loc_FB785F: var_8C.Fields.Append "Party_Bill_No", &H81, &HF
  loc_FB788B: var_8C.Fields.Append "Dhara", &H81, &HA
  loc_FB789B: var_8C.CursorType = 3
  loc_FB78A8: var_8C.LockType = 3
  loc_FB78C7: var_8C.Open var_A0, var_B0, -1
  loc_FB78CE: Set var_8C = Nothing 
  loc_FB78D5: Set var_88 = arg_C 
  loc_FB78D9: Exit Sub
  loc_FB78DA: Set arg_783C = -1
End Sub

Public Sub Proc_3_2_F58AA4(arg_C) 'F58AA4
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_F5897B: Set var_8C = arg_C 
  loc_F589A3: var_8C.Fields.Append "START_DATE", 7, 0
  loc_F589CF: var_8C.Fields.Append "END_DATE", 7, 0
  loc_F589FB: var_8C.Fields.Append "TYPE", &H81, &HF
  loc_F58A27: var_8C.Fields.Append "ACC", 3, &HB
  loc_F58A53: var_8C.Fields.Append "BALANCE", 5, &H13
  loc_F58A63: var_8C.CursorType = 3
  loc_F58A70: var_8C.LockType = 3
  loc_F58A8F: var_8C.Open var_A0, var_B0, -1
  loc_F58A96: Set var_8C = Nothing 
  loc_F58A9D: Set var_88 = arg_C 
  loc_F58AA1: Exit Sub
  loc_F58AA2: VCallFPR8
End Sub

Public Sub Proc_3_3_11574D8(arg_C) '11574D8
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_115711B: Set var_8C = arg_C 
  loc_1157143: var_8C.Fields.Append "V_DATE", 7, 0
  loc_115716F: var_8C.Fields.Append "V_NO", 3, &HA
  loc_115719B: var_8C.Fields.Append "V_TYPE", &HC8, 5
  loc_11571C7: var_8C.Fields.Append "V_SNO", 3, &HB
  loc_11571F3: var_8C.Fields.Append "V_ADD", &HC8, 5
  loc_115721F: var_8C.Fields.Append "CR", 5, &H13
  loc_115724B: var_8C.Fields.Append "ADJAMT", 5, &H13
  loc_1157277: var_8C.Fields.Append "SUBCODE", 3, &HB
  loc_11572A3: var_8C.Fields.Append "NAME", &HC8, &H2F
  loc_11572CF: var_8C.Fields.Append "ADJQTY", 5, &H13
  loc_11572FB: var_8C.Fields.Append "VTYPE", &HC8, 5
  loc_1157327: var_8C.Fields.Append "VNO", 3, &HB
  loc_1157353: var_8C.Fields.Append "VADD", &HC8, 5
  loc_115737F: var_8C.Fields.Append "VSNO", 3, 6
  loc_11573AB: var_8C.Fields.Append "VAL", &HC8, 2
  loc_11573D7: var_8C.Fields.Append "NARRATION1", &HC8, &H96
  loc_1157403: var_8C.Fields.Append "NARRATION2", &HC8, &H96
  loc_115742F: var_8C.Fields.Append "NARRATION3", &HC8, &H96
  loc_115745B: var_8C.Fields.Append "NAME1", &HC8, &H2F
  loc_1157487: var_8C.Fields.Append "ADDRESS1", &HC8, &H32
  loc_1157497: var_8C.CursorType = 3
  loc_11574A4: var_8C.LockType = 3
  loc_11574C3: var_8C.Open var_A0, var_B0, -1
  loc_11574CA: Set var_8C = Nothing 
  loc_11574D1: Set var_88 = arg_C 
  loc_11574D5: Exit Sub
End Sub

Public Sub Proc_3_4_12197E8(arg_C) '12197E8
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_12192F7: Set var_8C = arg_C 
  loc_121931F: var_8C.Fields.Append "V_DATE", 7, 0
  loc_121934B: var_8C.Fields.Append "V_NO", 3, &HA
  loc_1219377: var_8C.Fields.Append "V_TYPE", &H81, 5
  loc_12193A3: var_8C.Fields.Append "V_SNO", 3, &HB
  loc_12193CF: var_8C.Fields.Append "V_ADD", &H81, 5
  loc_12193FB: var_8C.Fields.Append "VNO", 3, &HA
  loc_1219427: var_8C.Fields.Append "VTYPE", &H81, 5
  loc_1219453: var_8C.Fields.Append "VSNO", 3, &HB
  loc_121947F: var_8C.Fields.Append "VADD", &H81, 5
  loc_12194AB: var_8C.Fields.Append "V_NO1", 3, &HA
  loc_12194D7: var_8C.Fields.Append "V_TYPE1", &H81, 5
  loc_1219503: var_8C.Fields.Append "V_SNO1", 3, &HB
  loc_121952F: var_8C.Fields.Append "V_ADD1", &H81, 5
  loc_121955B: var_8C.Fields.Append "CR", 5, &H13
  loc_1219587: var_8C.Fields.Append "ADJAMT", 5, &H13
  loc_12195B3: var_8C.Fields.Append "SUBCODE", &H81, &HA
  loc_12195DF: var_8C.Fields.Append "NAME", &H81, &H32
  loc_121960B: var_8C.Fields.Append "ADJQTY", 5, &H13
  loc_1219637: var_8C.Fields.Append "VAL", &H81, 2
  loc_1219663: var_8C.Fields.Append "NAME1", &H81, &H32
  loc_121968F: var_8C.Fields.Append "ADDRESS1", &H81, &H96
  loc_12196BB: var_8C.Fields.Append "NARRATION1", &H81, &H96
  loc_12196E7: var_8C.Fields.Append "NARRATION2", &H81, &H96
  loc_1219713: var_8C.Fields.Append "SNAME", &H81, &HF
  loc_121973F: var_8C.Fields.Append "CITY_NAME", &H81, &H32
  loc_121976B: var_8C.Fields.Append "GRNAME", &H81, &H32
  loc_1219797: var_8C.Fields.Append "GRCODE", &H81, 4
  loc_12197A7: var_8C.CursorType = 3
  loc_12197B4: var_8C.LockType = 3
  loc_12197D3: var_8C.Open var_A0, var_B0, -1
  loc_12197DA: Set var_8C = Nothing 
  loc_12197E1: Set var_88 = arg_C 
  loc_12197E5: Exit Sub
End Sub

Public Sub Proc_3_5_10D1098(arg_C) '10D1098
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_10D0D8B: Set var_8C = arg_C 
  loc_10D0DB3: var_8C.Fields.Append "V_DATE", 7, 0
  loc_10D0DDF: var_8C.Fields.Append "V_NO", 3, &HA
  loc_10D0E0B: var_8C.Fields.Append "V_TYPE", &H81, 2
  loc_10D0E37: var_8C.Fields.Append "V_SNO", 3, &HB
  loc_10D0E63: var_8C.Fields.Append "V_ADD", &H81, 1
  loc_10D0E8F: var_8C.Fields.Append "VDATE", 7, 0
  loc_10D0EBB: var_8C.Fields.Append "VNO", 3, &HA
  loc_10D0EE7: var_8C.Fields.Append "VTYPE", &H81, 2
  loc_10D0F13: var_8C.Fields.Append "VSNO", 3, &HB
  loc_10D0F3F: var_8C.Fields.Append "VADD", &H81, 1
  loc_10D0F6B: var_8C.Fields.Append "CR", 5, &H13
  loc_10D0F97: var_8C.Fields.Append "ADJAMT", 5, &H13
  loc_10D0FC3: var_8C.Fields.Append "SUBCODE", 3, &HB
  loc_10D0FEF: var_8C.Fields.Append "NAME", &H81, &H23
  loc_10D101B: var_8C.Fields.Append "ADJQTY", 5, &H13
  loc_10D1047: var_8C.Fields.Append "VAL", &H81, 2
  loc_10D1057: var_8C.CursorType = 3
  loc_10D1064: var_8C.LockType = 3
  loc_10D1083: var_8C.Open var_A0, var_B0, -1
  loc_10D108A: Set var_8C = Nothing 
  loc_10D1091: Set var_88 = arg_C 
  loc_10D1095: Exit Sub
End Sub

Public Sub Proc_3_6_108CE10(arg_C) '108CE10
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_108CB5B: Set var_8C = arg_C 
  loc_108CB83: var_8C.Fields.Append "MONTH", 3, &HA
  loc_108CBAF: var_8C.Fields.Append "V_DATE", 7, 0
  loc_108CBDB: var_8C.Fields.Append "SALE_PCS", 3, &HA
  loc_108CC07: var_8C.Fields.Append "SALE_MTR", 5, &H13
  loc_108CC33: var_8C.Fields.Append "SALE_VALUE", 5, &H13
  loc_108CC5F: var_8C.Fields.Append "SALE_RET_PCS", 3, &HA
  loc_108CC8B: var_8C.Fields.Append "SALE_RET_MTR", 5, &H13
  loc_108CCB7: var_8C.Fields.Append "SALE_RET_VALUE", 5, &H13
  loc_108CCE3: var_8C.Fields.Append "PURCH_PCS", 3, &HA
  loc_108CD0F: var_8C.Fields.Append "PURCH_MTR", 5, &H13
  loc_108CD3B: var_8C.Fields.Append "PURCH_VALUE", 5, &H13
  loc_108CD67: var_8C.Fields.Append "PURCH_RET_PCS", 3, &HA
  loc_108CD93: var_8C.Fields.Append "PURCH_RET_MTR", 5, &H13
  loc_108CDBF: var_8C.Fields.Append "PURCH_RET_VALUE", 5, &H13
  loc_108CDCF: var_8C.CursorType = 3
  loc_108CDDC: var_8C.LockType = 3
  loc_108CDFB: var_8C.Open var_A0, var_B0, -1
  loc_108CE02: Set var_8C = Nothing 
  loc_108CE09: Set var_88 = arg_C 
  loc_108CE0D: Exit Sub
End Sub

Public Sub Proc_3_7_123CC10(arg_C) '123CC10
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_123C6C7: Set var_8C = arg_C 
  loc_123C6EF: var_8C.Fields.Append "V_DATE", 7, 0
  loc_123C71B: var_8C.Fields.Append "V_TYPE", &H81, 3
  loc_123C747: var_8C.Fields.Append "V_NO", 3, &HA
  loc_123C773: var_8C.Fields.Append "PARTY_CODE", 3, &HA
  loc_123C79F: var_8C.Fields.Append "PARTY_NAME", &H81, &H32
  loc_123C7CB: var_8C.Fields.Append "ADD1", &H81, &H23
  loc_123C7F7: var_8C.Fields.Append "ADD2", &H81, &H23
  loc_123C823: var_8C.Fields.Append "ADD3", &H81, &H23
  loc_123C84F: var_8C.Fields.Append "ADD4", &H81, &H23
  loc_123C87B: var_8C.Fields.Append "CR", 5, &H13
  loc_123C8A7: var_8C.Fields.Append "DR", 5, &H13
  loc_123C8D3: var_8C.Fields.Append "BALANCE", 5, &H13
  loc_123C8FF: var_8C.Fields.Append "BAL_TYPE", &H81, 3
  loc_123C92B: var_8C.Fields.Append "DR_STAT", &H81, 1
  loc_123C957: var_8C.Fields.Append "interest", 5, &H13
  loc_123C983: var_8C.Fields.Append "DR1", 5, &H13
  loc_123C9AF: var_8C.Fields.Append "ADDR", &H81, &H64
  loc_123C9DB: var_8C.Fields.Append "Party_Bill_No", &H81, &HF
  loc_123CA07: var_8C.Fields.Append "Party_Bill_Date", 7, 0
  loc_123CA33: var_8C.Fields.Append "DAYS", 3, &HA
  loc_123CA5F: var_8C.Fields.Append "AREACODE", 3, &HA
  loc_123CA8B: var_8C.Fields.Append "AREANAME", &H81, &H19
  loc_123CAB7: var_8C.Fields.Append "CITYCODE", 3, &HA
  loc_123CAE3: var_8C.Fields.Append "CITYNAME", &H81, &H15
  loc_123CB0F: var_8C.Fields.Append "BROKER_CODE", 3, &HA
  loc_123CB3B: var_8C.Fields.Append "BROKER_NAME", &H81, &H32
  loc_123CB67: var_8C.Fields.Append "SL", 3, 0
  loc_123CB93: var_8C.Fields.Append "Dhara", &H81, &HA
  loc_123CBBF: var_8C.Fields.Append "Dhara1", &H81, &HA
  loc_123CBCF: var_8C.CursorType = 3
  loc_123CBDC: var_8C.LockType = 3
  loc_123CBFB: var_8C.Open var_A0, var_B0, -1
  loc_123CC02: Set var_8C = Nothing 
  loc_123CC09: Set var_88 = arg_C 
  loc_123CC0D: Exit Sub
End Sub

Public Sub Proc_3_8_113B834(arg_C) '113B834
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_113B4A3: Set var_8C = arg_C 
  loc_113B4CB: var_8C.Fields.Append "V_DATE", 7, 0
  loc_113B4F7: var_8C.Fields.Append "V_TYPE", &H81, 3
  loc_113B523: var_8C.Fields.Append "V_NO", 3, &HA
  loc_113B54F: var_8C.Fields.Append "PARTY_CODE", 3, &HA
  loc_113B57B: var_8C.Fields.Append "PARTY_NAME", &H81, &H32
  loc_113B5A7: var_8C.Fields.Append "ADD1", &H81, &H23
  loc_113B5D3: var_8C.Fields.Append "ADD2", &H81, &H23
  loc_113B5FF: var_8C.Fields.Append "ADD3", &H81, &H23
  loc_113B62B: var_8C.Fields.Append "ADD4", &H81, &H23
  loc_113B657: var_8C.Fields.Append "CR", 5, &H13
  loc_113B683: var_8C.Fields.Append "DR", 5, &H13
  loc_113B6AF: var_8C.Fields.Append "BALANCE", 5, &H13
  loc_113B6DB: var_8C.Fields.Append "BAL_TYPE", &H81, 3
  loc_113B707: var_8C.Fields.Append "DR_STAT", &H81, 1
  loc_113B733: var_8C.Fields.Append "interest", 5, &H13
  loc_113B75F: var_8C.Fields.Append "Party_Bill_No", &H81, &HF
  loc_113B78B: var_8C.Fields.Append "DAYS", 3, &HA
  loc_113B7B7: var_8C.Fields.Append "Dhara", &H81, &HA
  loc_113B7E3: var_8C.Fields.Append "Dhara1", &H81, &HA
  loc_113B7F3: var_8C.CursorType = 3
  loc_113B800: var_8C.LockType = 3
  loc_113B81F: var_8C.Open var_A0, var_B0, -1
  loc_113B826: Set var_8C = Nothing 
  loc_113B82D: Set var_88 = arg_C 
  loc_113B831: Exit Sub
End Sub

Public Sub Proc_3_9_12559E8(arg_C) '12559E8
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_1255473: Set var_8C = arg_C 
  loc_125549B: var_8C.Fields.Append "PARTY_CODE", 3, &HA
  loc_12554C7: var_8C.Fields.Append "PARTY_NAME", &H81, &H32
  loc_12554F3: var_8C.Fields.Append "ADD1", &H81, &H23
  loc_125551F: var_8C.Fields.Append "ADD2", &H81, &H23
  loc_125554B: var_8C.Fields.Append "ADD3", &H81, &H23
  loc_1255577: var_8C.Fields.Append "ADD4", &H81, &H23
  loc_12555A3: var_8C.Fields.Append "V_DATE", 7, 0
  loc_12555CF: var_8C.Fields.Append "V_TYPE", &H81, 3
  loc_12555FB: var_8C.Fields.Append "V_NO", 3, &HA
  loc_1255627: var_8C.Fields.Append "DR", 5, &H13
  loc_1255653: var_8C.Fields.Append "V_DATE1", 7, 0
  loc_125567F: var_8C.Fields.Append "V_TYPE1", &H81, 3
  loc_12556AB: var_8C.Fields.Append "V_NO1", 3, &HA
  loc_12556D7: var_8C.Fields.Append "CR", 5, &H13
  loc_1255703: var_8C.Fields.Append "DR_STAT", &H81, 1
  loc_125572F: var_8C.Fields.Append "interest", 5, &H13
  loc_125575B: var_8C.Fields.Append "interest1", 5, &H13
  loc_1255787: var_8C.Fields.Append "Party_Bill_No", &H81, &HF
  loc_12557B3: var_8C.Fields.Append "Party_Bill_No1", &H81, &HF
  loc_12557DF: var_8C.Fields.Append "DAYS", 3, &HA
  loc_125580B: var_8C.Fields.Append "DAYS1", 3, &HA
  loc_1255837: var_8C.Fields.Append "AREACODE", 3, &HA
  loc_1255863: var_8C.Fields.Append "AREANAME", &H81, &H19
  loc_125588F: var_8C.Fields.Append "CITYCODE", 3, &HA
  loc_12558BB: var_8C.Fields.Append "CITYNAME", &H81, &H15
  loc_12558E7: var_8C.Fields.Append "BROKER_CODE", 3, &HA
  loc_1255913: var_8C.Fields.Append "BROKER_NAME", &H81, &H32
  loc_125593F: var_8C.Fields.Append "comp_name", &H81, &H32
  loc_125596B: var_8C.Fields.Append "Dhara", &H81, &HA
  loc_1255997: var_8C.Fields.Append "Dhara1", &H81, &HA
  loc_12559A7: var_8C.CursorType = 3
  loc_12559B4: var_8C.LockType = 3
  loc_12559D3: var_8C.Open var_A0, var_B0, -1
  loc_12559DA: Set var_8C = Nothing 
  loc_12559E1: Set var_88 = arg_C 
  loc_12559E5: Exit Sub
  loc_12559E6: -1 = arg_7800
End Sub

Public Sub Proc_3_10_FFCFC8(arg_C) 'FFCFC8
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_FFCDC3: Set var_8C = arg_C 
  loc_FFCDEB: var_8C.Fields.Append "Sr_No", 3, &HA
  loc_FFCE17: var_8C.Fields.Append "Sr_No1", 3, &HA
  loc_FFCE43: var_8C.Fields.Append "Pcs", 5, &H13
  loc_FFCE6F: var_8C.Fields.Append "Meters", 5, &H13
  loc_FFCE9B: var_8C.Fields.Append "DISC_NAME1", &H81, &HF
  loc_FFCEC7: var_8C.Fields.Append "DISC_CODE1", 3, &HA
  loc_FFCEF3: var_8C.Fields.Append "DISC_RATE1", 5, &H13
  loc_FFCF1F: var_8C.Fields.Append "DISC_CODE2", 3, &HA
  loc_FFCF4B: var_8C.Fields.Append "DISC_RATE2", 5, &H13
  loc_FFCF77: var_8C.Fields.Append "DISC_NAME2", &H81, &HF
  loc_FFCF87: var_8C.CursorType = 3
  loc_FFCF94: var_8C.LockType = 3
  loc_FFCFB3: var_8C.Open var_A0, var_B0, -1
  loc_FFCFBA: Set var_8C = Nothing 
  loc_FFCFC1: Set var_88 = arg_C 
  loc_FFCFC5: Exit Sub
End Sub

Public Sub Proc_3_11_1201E0C(arg_C) '1201E0C
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_1201947: Set var_8C = arg_C 
  loc_120196F: var_8C.Fields.Append "CR", 5, &H13
  loc_120199B: var_8C.Fields.Append "CL_DR", 5, &H13
  loc_12019C7: var_8C.Fields.Append "GRP_CODE", 3, &HA
  loc_12019F3: var_8C.Fields.Append "S_NAME", &H81, &H23
  loc_1201A1F: var_8C.Fields.Append "CL_CR", 5, &H13
  loc_1201A4B: var_8C.Fields.Append "G_NAME", &H81, &H23
  loc_1201A77: var_8C.Fields.Append "LAST_DR", 5, &H13
  loc_1201AA3: var_8C.Fields.Append "LAST_CR", 5, &H13
  loc_1201ACF: var_8C.Fields.Append "DRAMT", 5, &H13
  loc_1201AFB: var_8C.Fields.Append "GROUP_CODE", 3, &HA
  loc_1201B27: var_8C.Fields.Append "GR_CODE", 3, &HA
  loc_1201B53: var_8C.Fields.Append "G_TYPE", &H81, &HF
  loc_1201B7F: var_8C.Fields.Append "V_TYPE", &H81, 2
  loc_1201BAB: var_8C.Fields.Append "V_NO", 3, &HA
  loc_1201BD7: var_8C.Fields.Append "NET_AMT", 5, &H13
  loc_1201C03: var_8C.Fields.Append "SALE_RETU", 5, &H13
  loc_1201C2F: var_8C.Fields.Append "RECD", 5, &H13
  loc_1201C5B: var_8C.Fields.Append "V_DATE", 7, 0
  loc_1201C87: var_8C.Fields.Append "CODE", 3, &HA
  loc_1201CB3: var_8C.Fields.Append "NAME", &H81, &H23
  loc_1201CDF: var_8C.Fields.Append "OP_DR", 5, &H13
  loc_1201D0B: var_8C.Fields.Append "OP_CR", 5, &H13
  loc_1201D37: var_8C.Fields.Append "DR", 5, &H13
  loc_1201D63: var_8C.Fields.Append "OUR_GROUPCODE", &H81, 4
  loc_1201D8F: var_8C.Fields.Append "GrPrintSr", 3, &HA
  loc_1201DBB: var_8C.Fields.Append "PrintSr", 3, &HA
  loc_1201DCB: var_8C.CursorType = 3
  loc_1201DD8: var_8C.LockType = 3
  loc_1201DF7: var_8C.Open var_A0, var_B0, -1
  loc_1201DFE: Set var_8C = Nothing 
  loc_1201E05: Set var_88 = arg_C 
  loc_1201E09: Exit Sub
End Sub

Public Sub Proc_3_12_10AE45C(arg_C) '10AE45C
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_10AE17B: Set var_8C = arg_C 
  loc_10AE1A3: var_8C.Fields.Append "V_DATE", 7, 0
  loc_10AE1CF: var_8C.Fields.Append "V_TYPE", &H81, 2
  loc_10AE1FB: var_8C.Fields.Append "V_NO", 3, &HA
  loc_10AE227: var_8C.Fields.Append "V_ADD", &H81, 1
  loc_10AE253: var_8C.Fields.Append "V_SNO", 3, &HA
  loc_10AE27F: var_8C.Fields.Append "SUBCODE", 3, &HA
  loc_10AE2AB: var_8C.Fields.Append "NAME", &H81, &H23
  loc_10AE2D7: var_8C.Fields.Append "aMOUNT", 5, &H13
  loc_10AE303: var_8C.Fields.Append "CONTRASUB", 3, &HA
  loc_10AE32F: var_8C.Fields.Append "VAL", &H81, 2
  loc_10AE35B: var_8C.Fields.Append "CHQ_NO", &H81, &HF
  loc_10AE387: var_8C.Fields.Append "CHQ_DATE", 7, 0
  loc_10AE3B3: var_8C.Fields.Append "CLG_DATE", 7, 0
  loc_10AE3DF: var_8C.Fields.Append "NARRATION", &H81, &H96
  loc_10AE40B: var_8C.Fields.Append "CONTRANAME", &H81, &H23
  loc_10AE41B: var_8C.CursorType = 3
  loc_10AE428: var_8C.LockType = 3
  loc_10AE447: var_8C.Open var_A0, var_B0, -1
  loc_10AE44E: Set var_8C = Nothing 
  loc_10AE455: Set var_88 = arg_C 
  loc_10AE459: Exit Sub
End Sub

Public Sub Proc_3_13_12D2870(arg_C) '12D2870
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_12D21C7: Set var_8C = arg_C 
  loc_12D21EF: var_8C.Fields.Append "V_NUM", &H81, &HF
  loc_12D221B: var_8C.Fields.Append "V_DATE", 7, 0
  loc_12D2247: var_8C.Fields.Append "ACC_TYPE", &H81, 2
  loc_12D2273: var_8C.Fields.Append "ACC_CODE", 3, &HA
  loc_12D229F: var_8C.Fields.Append "ACC_CODENAME", &H81, &H23
  loc_12D22CB: var_8C.Fields.Append "ACC", 3, &HA
  loc_12D22F7: var_8C.Fields.Append "ACC_NAME", &H81, &H32
  loc_12D2323: var_8C.Fields.Append "NEGBAL", 5, &H13
  loc_12D234F: var_8C.Fields.Append "V_TYPE", &H81, 2
  loc_12D237B: var_8C.Fields.Append "NARRATION", &H81, &H96
  loc_12D23A7: var_8C.Fields.Append "CHQ_DATE", 7, 0
  loc_12D23D3: var_8C.Fields.Append "CHQ_NO", &H81, &HF
  loc_12D23FF: var_8C.Fields.Append "CREDIT", 5, &H13
  loc_12D242B: var_8C.Fields.Append "DEBIT", 5, &H13
  loc_12D2457: var_8C.Fields.Append "INTRST", 5, &H13
  loc_12D2483: var_8C.Fields.Append "CLG_DATE", 7, 0
  loc_12D24AF: var_8C.Fields.Append "BALNAME", &H81, &H14
  loc_12D24DB: var_8C.Fields.Append "START_DATE", 7, 0
  loc_12D2507: var_8C.Fields.Append "END_DATE", 7, 0
  loc_12D2533: var_8C.Fields.Append "ADD1", &H81, &H23
  loc_12D255F: var_8C.Fields.Append "ADD2", &H81, &H23
  loc_12D258B: var_8C.Fields.Append "CITY", &H81, &H15
  loc_12D25B7: var_8C.Fields.Append "PIN", &H81, 6
  loc_12D25E3: var_8C.Fields.Append "PRICE", 5, &H13
  loc_12D260F: var_8C.Fields.Append "REPORT_NAME", &H81, &H32
  loc_12D263B: var_8C.Fields.Append "OTHERS", 5, &H13
  loc_12D2667: var_8C.Fields.Append "NAMT", 5, &H13
  loc_12D2693: var_8C.Fields.Append "AGE", 5, &H13
  loc_12D26BF: var_8C.Fields.Append "inv_NO", &H81, &HF
  loc_12D26EB: var_8C.Fields.Append "v_no", 3, &HA
  loc_12D2717: var_8C.Fields.Append "V_SNO", 3, &HA
  loc_12D2743: var_8C.Fields.Append "V_ADD", &H81, 1
  loc_12D276F: var_8C.Fields.Append "CONTRA_CODE", 3, &H13
  loc_12D279B: var_8C.Fields.Append "CONTRA_NAME", &H81, &H23
  loc_12D27C7: var_8C.Fields.Append "CONTRA_SUBCODE", 3, &HA
  loc_12D27F3: var_8C.Fields.Append "CONTRA_SUBNAME", &H81, &H32
  loc_12D281F: var_8C.Fields.Append "RS_IN_WORDS", &H81, &H64
  loc_12D282F: var_8C.CursorType = 3
  loc_12D283C: var_8C.LockType = 3
  loc_12D285B: var_8C.Open var_A0, var_B0, -1
  loc_12D2862: Set var_8C = Nothing 
  loc_12D2869: Set var_88 = arg_C 
  loc_12D286D: Exit Sub
End Sub

Public Sub Proc_3_14_137F640(arg_C) '137F640
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_137ED87: Set var_8C = arg_C 
  loc_137EDAF: var_8C.Fields.Append "ACC", 3, &HA
  loc_137EDDB: var_8C.Fields.Append "V_ADD", &H81, 1
  loc_137EE07: var_8C.Fields.Append "BALANCE", 5, &H13
  loc_137EE33: var_8C.Fields.Append "START_DATE", 7, 0
  loc_137EE5F: var_8C.Fields.Append "END_DATE", 7, 0
  loc_137EE8B: var_8C.Fields.Append "INT_RATE", &H81, &H14
  loc_137EEB7: var_8C.Fields.Append "TYPE", &H81, 3
  loc_137EEE3: var_8C.Fields.Append "TOT_INT", 5, &H13
  loc_137EF0F: var_8C.Fields.Append "BALANCE_TYPE", &H81, &H23
  loc_137EF3B: var_8C.Fields.Append "ADD1", &H81, &H23
  loc_137EF67: var_8C.Fields.Append "ADD2", &H81, &H23
  loc_137EF93: var_8C.Fields.Append "CITY", &H81, &H15
  loc_137EFBF: var_8C.Fields.Append "PIN", &H81, 6
  loc_137EFEB: var_8C.Fields.Append "INTRST", 5, &H13
  loc_137F017: var_8C.Fields.Append "BAL1", 5, &H13
  loc_137F043: var_8C.Fields.Append "BAL_TYPE1", &H81, &H23
  loc_137F06F: var_8C.Fields.Append "DATE1", 7, 0
  loc_137F09B: var_8C.Fields.Append "ITEM_CODE", 3, &HA
  loc_137F0C7: var_8C.Fields.Append "REPORT_NAME", &H81, &H32
  loc_137F0F3: var_8C.Fields.Append "EX_AMT", 5, &H13
  loc_137F11F: var_8C.Fields.Append "G_TOT", 5, &H13
  loc_137F14B: var_8C.Fields.Append "EX_RATE", 5, &H13
  loc_137F177: var_8C.Fields.Append "TOTAL", 5, &H13
  loc_137F1A3: var_8C.Fields.Append "DIS_AMT", 5, &H13
  loc_137F1CF: var_8C.Fields.Append "STAX_AMT", 5, &H13
  loc_137F1FB: var_8C.Fields.Append "SUR_AMT", 5, &H13
  loc_137F227: var_8C.Fields.Append "VENDOR", &H81, &HA
  loc_137F253: var_8C.Fields.Append "ORDER_NO", &H81, &HF
  loc_137F27F: var_8C.Fields.Append "PART_NO", &H81, &HA
  loc_137F2AB: var_8C.Fields.Append "CUST_NAME", &H81, &H23
  loc_137F2D7: var_8C.Fields.Append "DESP_NO", 3, &HA
  loc_137F303: var_8C.Fields.Append "DESP_DT", 7, 0
  loc_137F32F: var_8C.Fields.Append "TOT_WORDS", &H81, &H64
  loc_137F35B: var_8C.Fields.Append "PLA", 3, &HA
  loc_137F387: var_8C.Fields.Append "RGA", 3, &HA
  loc_137F3B3: var_8C.Fields.Append "RGC", 3, &HA
  loc_137F3DF: var_8C.Fields.Append "INV_TIME", &H81, 8
  loc_137F40B: var_8C.Fields.Append "TOT_WRDS1", &H81, &H64
  loc_137F437: var_8C.Fields.Append "TAR_NAME", &H81, &H32
  loc_137F463: var_8C.Fields.Append "EX_ECC_NO", &H81, &H19
  loc_137F48F: var_8C.Fields.Append "TAX_PER", 5, &H13
  loc_137F4BB: var_8C.Fields.Append "REM1", &H81, &H64
  loc_137F4E7: var_8C.Fields.Append "REM2", &H81, &H64
  loc_137F513: var_8C.Fields.Append "AMD_DATE", 7, 0
  loc_137F53F: var_8C.Fields.Append "V_DATE", 7, 0
  loc_137F56B: var_8C.Fields.Append "EXMP_NOTIFY", &H81, &H23
  loc_137F597: var_8C.Fields.Append "D3", 3, &HA
  loc_137F5C3: var_8C.Fields.Append "AG_FORM", &H81, &H23
  loc_137F5EF: var_8C.Fields.Append "V_TYPE", &H81, 2
  loc_137F5FF: var_8C.CursorType = 3
  loc_137F60C: var_8C.LockType = 3
  loc_137F62B: var_8C.Open var_A0, var_B0, -1
  loc_137F632: Set var_8C = Nothing 
  loc_137F639: Set var_88 = arg_C 
  loc_137F63D: Exit Sub
End Sub

Public Sub Proc_3_15_FFD694(arg_C) 'FFD694
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_FFD48F: Set var_8C = arg_C 
  loc_FFD4B7: var_8C.Fields.Append "FIELD1", &H81, &HC
  loc_FFD4E3: var_8C.Fields.Append "FIELD2", &H81, &H14
  loc_FFD50F: var_8C.Fields.Append "FIELD3", &H81, &HC
  loc_FFD53B: var_8C.Fields.Append "FIELD4", &H81, &HC
  loc_FFD567: var_8C.Fields.Append "FIELD5", &H81, &HC
  loc_FFD593: var_8C.Fields.Append "FIELD6", &H81, &HC
  loc_FFD5BF: var_8C.Fields.Append "FIELD7", &H81, &H14
  loc_FFD5EB: var_8C.Fields.Append "FIELD8", &H81, &HC
  loc_FFD617: var_8C.Fields.Append "FIELD9", &H81, &HC
  loc_FFD643: var_8C.Fields.Append "FIELD10", &H81, &HC
  loc_FFD653: var_8C.CursorType = 3
  loc_FFD660: var_8C.LockType = 3
  loc_FFD67F: var_8C.Open var_A0, var_B0, -1
  loc_FFD686: Set var_8C = Nothing 
  loc_FFD68D: Set var_88 = arg_C 
  loc_FFD691: Exit Sub
End Sub

Public Sub Proc_3_16_10AE13C(arg_C) '10AE13C
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_10ADE5B: Set var_8C = arg_C 
  loc_10ADE83: var_8C.Fields.Append "VDATE", 7, 0
  loc_10ADEAF: var_8C.Fields.Append "CVTYPE", &HC8, 5
  loc_10ADEDB: var_8C.Fields.Append "CVNO", 3, &HA
  loc_10ADF07: var_8C.Fields.Append "CVADD", &HC8, 5
  loc_10ADF33: var_8C.Fields.Append "CVSNO", 3, &HB
  loc_10ADF5F: var_8C.Fields.Append "CNAME", &HC8, &H2F
  loc_10ADF8B: var_8C.Fields.Append "CR", 5, &H13
  loc_10ADFB7: var_8C.Fields.Append "CDR", 5, &H13
  loc_10ADFE3: var_8C.Fields.Append "DVTYPE", &HC8, 5
  loc_10AE00F: var_8C.Fields.Append "DVNO", 3, &HB
  loc_10AE03B: var_8C.Fields.Append "DVADD", &HC8, 5
  loc_10AE067: var_8C.Fields.Append "DVSNO", 3, 6
  loc_10AE093: var_8C.Fields.Append "NAME1", &HC8, &H2F
  loc_10AE0BF: var_8C.Fields.Append "DR", 5, &H13
  loc_10AE0EB: var_8C.Fields.Append "DCR", 5, &H13
  loc_10AE0FB: var_8C.CursorType = 3
  loc_10AE108: var_8C.LockType = 3
  loc_10AE127: var_8C.Open var_A0, var_B0, -1
  loc_10AE12E: Set var_8C = Nothing 
  loc_10AE135: Set var_88 = arg_C 
  loc_10AE139: Exit Sub
End Sub

Public Sub Proc_3_17_FB7318(arg_C) 'FB7318
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_FB716B: Set var_8C = arg_C 
  loc_FB7193: var_8C.Fields.Append "ProdCode", &H81, 8
  loc_FB71BF: var_8C.Fields.Append "ProdName", &H81, &H28
  loc_FB71EB: var_8C.Fields.Append "BillDate", 7, 0
  loc_FB7217: var_8C.Fields.Append "PackName", 5, &H13
  loc_FB7243: var_8C.Fields.Append "Qty", 5, &H13
  loc_FB726F: var_8C.Fields.Append "Weight", 5, &H13
  loc_FB729B: var_8C.Fields.Append "Amount", 5, &H13
  loc_FB72C7: var_8C.Fields.Append "Remark", &H81, &HFF
  loc_FB72D7: var_8C.CursorType = 3
  loc_FB72E4: var_8C.LockType = 3
  loc_FB7303: var_8C.Open var_A0, var_B0, -1
  loc_FB730A: Set var_8C = Nothing 
  loc_FB7311: Set var_88 = arg_C 
  loc_FB7315: Exit Sub
End Sub

Public Sub Proc_3_18_FFDB1C(arg_C) 'FFDB1C
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_FFD917: Set var_8C = arg_C 
  loc_FFD93F: var_8C.Fields.Append "ProdName", &H81, &H28
  loc_FFD96B: var_8C.Fields.Append "BillDate", 7, 0
  loc_FFD997: var_8C.Fields.Append "OpenQty", 5, &H13
  loc_FFD9C3: var_8C.Fields.Append "Purchase", 5, &H13
  loc_FFD9EF: var_8C.Fields.Append "TotRect", 5, &H13
  loc_FFDA1B: var_8C.Fields.Append "PurchRet", 5, &H13
  loc_FFDA47: var_8C.Fields.Append "Issue", 5, &H13
  loc_FFDA73: var_8C.Fields.Append "Damage", 5, &H13
  loc_FFDA9F: var_8C.Fields.Append "TotIss", 5, &H13
  loc_FFDACB: var_8C.Fields.Append "Balance", 5, &H13
  loc_FFDADB: var_8C.CursorType = 3
  loc_FFDAE8: var_8C.LockType = 3
  loc_FFDB07: var_8C.Open var_A0, var_B0, -1
  loc_FFDB0E: Set var_8C = Nothing 
  loc_FFDB15: Set var_88 = arg_C 
  loc_FFDB19: Exit Sub
End Sub

Public Sub Proc_3_19_1021430(arg_C) '1021430
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_10211FF: Set var_8C = arg_C 
  loc_1021227: var_8C.Fields.Append "ProdName", &H81, &H28
  loc_1021253: var_8C.Fields.Append "BillDate", 7, 0
  loc_102127F: var_8C.Fields.Append "OpenQty", 5, &H13
  loc_10212AB: var_8C.Fields.Append "ProdQty", 5, &H13
  loc_10212D7: var_8C.Fields.Append "SRetQty", 5, &H13
  loc_1021303: var_8C.Fields.Append "TotRect", 5, &H13
  loc_102132F: var_8C.Fields.Append "SaleQty", 5, &H13
  loc_102135B: var_8C.Fields.Append "StkTran", 5, &H13
  loc_1021387: var_8C.Fields.Append "Damage", 5, &H13
  loc_10213B3: var_8C.Fields.Append "TotIss", 5, &H13
  loc_10213DF: var_8C.Fields.Append "Balance", 5, &H13
  loc_10213EF: var_8C.CursorType = 3
  loc_10213FC: var_8C.LockType = 3
  loc_102141B: var_8C.Open var_A0, var_B0, -1
  loc_1021422: Set var_8C = Nothing 
  loc_1021429: Set var_88 = arg_C 
  loc_102142D: Exit Sub
End Sub

Public Sub Proc_3_20_10216A0(arg_C) '10216A0
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_102146F: Set var_8C = arg_C 
  loc_1021497: var_8C.Fields.Append "BillDate", 7, 0
  loc_10214C3: var_8C.Fields.Append "OpenQty", 5, &H13
  loc_10214EF: var_8C.Fields.Append "MillQty", 5, &H13
  loc_102151B: var_8C.Fields.Append "Total", 5, &H13
  loc_1021547: var_8C.Fields.Append "TotRect", 5, &H13
  loc_1021573: var_8C.Fields.Append "ClQty", 5, &H13
  loc_102159F: var_8C.Fields.Append "FinProd1", 5, &H13
  loc_10215CB: var_8C.Fields.Append "FinProd2", 5, &H13
  loc_10215F7: var_8C.Fields.Append "FinProd3", 5, &H13
  loc_1021623: var_8C.Fields.Append "FinProd4", 5, &H13
  loc_102164F: var_8C.Fields.Append "FinProd5", 5, &H13
  loc_102165F: var_8C.CursorType = 3
  loc_102166C: var_8C.LockType = 3
  loc_102168B: var_8C.Open var_A0, var_B0, -1
  loc_1021692: Set var_8C = Nothing 
  loc_1021699: Set var_88 = arg_C 
  loc_102169D: Exit Sub
End Sub

Public Sub Proc_3_21_10D001C(arg_C) '10D001C
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_10CFD0F: Set var_8C = arg_C 
  loc_10CFD37: var_8C.Fields.Append "Code", &H81, 5
  loc_10CFD63: var_8C.Fields.Append "RoomName", &H81, &HF
  loc_10CFD8F: var_8C.Fields.Append "RoomCategory", &H81, &H19
  loc_10CFDBB: var_8C.Fields.Append "Extention", 3, &HB
  loc_10CFDE7: var_8C.Fields.Append "MultiPer", 3, &HB
  loc_10CFE13: var_8C.Fields.Append "MaidStation", &H81, &HB
  loc_10CFE3F: var_8C.Fields.Append "InclCount", &H81, 3
  loc_10CFE6B: var_8C.Fields.Append "OccType", &H81, &HC
  loc_10CFE97: var_8C.Fields.Append "Rate1", 5, &H13
  loc_10CFEC3: var_8C.Fields.Append "Rate2", 5, &H13
  loc_10CFEEF: var_8C.Fields.Append "Rate3", 5, &H13
  loc_10CFF1B: var_8C.Fields.Append "Rate4", 5, &H13
  loc_10CFF47: var_8C.Fields.Append "Rate5", 5, &H13
  loc_10CFF73: var_8C.Fields.Append "WeekRate", 5, &H13
  loc_10CFF9F: var_8C.Fields.Append "MonRate", 5, &H13
  loc_10CFFCB: var_8C.Fields.Append "RoomFeature", &H81, &H19
  loc_10CFFDB: var_8C.CursorType = 3
  loc_10CFFE8: var_8C.LockType = 3
  loc_10D0007: var_8C.Open var_A0, var_B0, -1
  loc_10D000E: Set var_8C = Nothing 
  loc_10D0015: Set var_88 = arg_C 
  loc_10D0019: Exit Sub
End Sub

Public Sub Proc_3_22_10F931C(arg_C) '10F931C
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_10F8FE3: Set var_8C = arg_C 
  loc_10F900B: var_8C.Fields.Append "RoomCatName", &H81, &H19
  loc_10F9037: var_8C.Fields.Append "ShortName", &H81, 6
  loc_10F9063: var_8C.Fields.Append "RevCharge", &H81, &H19
  loc_10F908F: var_8C.Fields.Append "NoRoom", 3, &HB
  loc_10F90BB: var_8C.Fields.Append "MultiPer", 3, &HB
  loc_10F90E7: var_8C.Fields.Append "RetenCharge", 5, &H13
  loc_10F9113: var_8C.Fields.Append "CancelCharge", 5, &H13
  loc_10F913F: var_8C.Fields.Append "MinAdvance", 5, &H13
  loc_10F916B: var_8C.Fields.Append "InclCount", &H81, 3
  loc_10F9197: var_8C.Fields.Append "OccType", &H81, &HC
  loc_10F91C3: var_8C.Fields.Append "Rate1", 5, &H13
  loc_10F91EF: var_8C.Fields.Append "Rate2", 5, &H13
  loc_10F921B: var_8C.Fields.Append "Rate3", 5, &H13
  loc_10F9247: var_8C.Fields.Append "Rate4", 5, &H13
  loc_10F9273: var_8C.Fields.Append "Rate5", 5, &H13
  loc_10F929F: var_8C.Fields.Append "WeekRate", 5, &H13
  loc_10F92CB: var_8C.Fields.Append "MonRate", 5, &H13
  loc_10F92DB: var_8C.CursorType = 3
  loc_10F92E8: var_8C.LockType = 3
  loc_10F9307: var_8C.Open var_A0, var_B0, -1
  loc_10F930E: Set var_8C = Nothing 
  loc_10F9315: Set var_88 = arg_C 
  loc_10F9319: Exit Sub
End Sub

Public Sub Proc_3_23_10211C0(arg_C) '10211C0
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_1020F8F: Set var_8C = arg_C 
  loc_1020FB7: var_8C.Fields.Append "ACC_NAME", &HC8, &H23
  loc_1020FE3: var_8C.Fields.Append "DEBIT1", 5, &H13
  loc_102100F: var_8C.Fields.Append "DEBIT2", 5, &H13
  loc_102103B: var_8C.Fields.Append "DEBIT3", 5, &H13
  loc_1021067: var_8C.Fields.Append "DEBIT4", 5, &H13
  loc_1021093: var_8C.Fields.Append "DEBIT5", 5, &H13
  loc_10210BF: var_8C.Fields.Append "DEBIT6", 5, &H13
  loc_10210EB: var_8C.Fields.Append "DEBIT", 5, &H13
  loc_1021117: var_8C.Fields.Append "TOTALDR", 5, &H13
  loc_1021143: var_8C.Fields.Append "CREDIT", 5, &H13
  loc_102116F: var_8C.Fields.Append "ANAME", &HC8, &H23
  loc_102117F: var_8C.CursorType = 3
  loc_102118C: var_8C.LockType = 3
  loc_10211AB: var_8C.Open var_A0, var_B0, -1
  loc_10211B2: Set var_8C = Nothing 
  loc_10211B9: Set var_88 = arg_C 
  loc_10211BD: Exit Sub
End Sub
