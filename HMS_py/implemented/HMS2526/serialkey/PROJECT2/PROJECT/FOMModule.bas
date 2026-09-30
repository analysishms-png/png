
Public Sub Proc_146_0_E7E558(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) 'E7E558
  'Data Table: 4202E4
  loc_E7E4F9: RrRoomReservation.OpenMode = arg_C
  loc_E7E507: RrRoomReservation.RoomTypeCode = arg_10
  loc_E7E515: RrRoomReservation.RoomTypeName = arg_14
  loc_E7E523: RrRoomReservation.oRoomNo = arg_1C
  loc_E7E531: RrRoomReservation.ArrivalDate = arg_18
  loc_E7E53F: RrRoomReservation.PartyName = arg_20
  loc_E7E552: Call 0.Method_arg_2B0 (var_98)
  loc_E7E557: Exit Sub
End Sub

Public Sub Proc_146_1_1334D58(arg_C, arg_10, arg_14) '1334D58
  'Data Table: 4202E4
  Dim var_B8 As String
  Dim unk_4202EB As Connection15
  Dim var_88 As Integer
  Dim var_A8 As Recordset15
  Dim var_D0 As Variant
  Dim var_F8 As Variant
  Dim var_86 As Integer
  Dim var_E4 As Fields15
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
  Dim var_E0 As Variant
  Dim var_108 As Variant
  Dim var_158 As Variant
  Dim var_1A8 As Variant
  loc_13345FC: On Error Goto loc_1334D4F
  loc_1334613: var_B8 = "SELECT Max(P.VNO) AS RECTNO,Max(P.VDATE) AS RECTDATE,Max(P.PAYTYPE) AS RECTMODE,Max(P.U_Name) As UserName,Max(P.CardNo) AS CCardNo,Max(P.Cardholder) As CCardholder,Max(P.ChqNo) As ChqNo,Max(P.ChqDate) AS ChqDate,Max(P.ExpDate) AS CCExpDate,Max(P.BatchNo) As BatchNo,Max(P.AMTCR) AS RECTAMT,Max(P.ROOMNO) AS ROOMNO,Max(P.FOLIONO) AS GRCNO,Max(GP.NAME) AS GUESTNAME,Max(R.NAME) As PayName,Max(P.TxnNo) As TxnNo,Max(P.Comments) As Comments FROM (GUESTPROF GP left join GUESTFOLIO GF ON GF.GUESTPROF=GP.CODE) LEFT JOIN PAYCHARGE P ON GF.DOCID=P.FOLIONODOCID LEFT JOIN RevMast R ON P.PayCode = R.Code" & " WHERE P.DOCID IN ('"
  loc_133462A: unk_4202EB.Execute var_B8 & arg_C & "') AND P.VTYPE='REC' Group By P.DocId", var_E0, -1
  loc_1334635: Set var_A8 = var_E4
  loc_1334649: Close 1
  loc_1334652: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1334658: var_88 = 1
  loc_133465E: MemVar_1F953C4 = "N"
  loc_1334665: MemVar_1F953C8 = "N"
  loc_133466C: MemVar_1F953CC = "M"
  loc_1334676: var_E8 = var_A8.RecordCount
  loc_1334684: If (var_E8 > 0) Then
  loc_13346A5:   If CBool(Trim(arg_10) <> "W") Then
  loc_13346A8:     ' Referenced from: 1334AE5
  loc_13346B7:     If Not(var_A8.EOF) Then
  loc_13346C6:       If (var_86 = 0) Then
  loc_13346E1:         Print 1, vbNullString
  loc_13346EC:         Print 1, vbNullString
  loc_1334713:         Print 1, Proc_6_128_1026560(" ADVANCE RECEIPT ", "B", &H50)
  loc_1334727:         Print 1, vbNullString
  loc_1334732:         Print 1, vbNullString
  loc_1334792:         Proc_6_39_E7D3A0(var_158, CVar(var_A8.Fields.Item("GRCNo")), Proc_6_129_12B862C(var_88, var_86, &H50))
  loc_13347FF:         var_130 = (CVar("Receipt No.  :" & CStr(var_A8.Fields.Item("RectNo").Value)) + Space(8))
  loc_1334806:         var_188 = CVar(Proc_6_45_EADFB8(CStr("GRC No. :" & var_158), &HE)) 'String
  loc_1334809:         var_198 = (var_130 + var_188)
  loc_1334810:         var_1B8 = (var_198 + Space(8))
  loc_1334819:         var_1D8 = (var_1B8 + "Date :")
  loc_1334823:         var_220 = (var_1D8 + CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("RectDate")), var_88)))
  loc_1334829:         Print 1, var_220
  loc_133486B:         Print 1, vbNullString
  loc_1334876:         Print 1, vbNullString
  loc_13348A4:         var_108 = CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("GuestName")))) 'String
  loc_13348B7:         var_130 = ("Recieved with thanks from Mr. " + Ucase(var_108))
  loc_13348BD:         Print 1, var_130
  loc_13348D6:         Print 1, vbNullString
  loc_13348F3:         var_110 = var_A8.Fields.Item("RectAmt")
  loc_1334902:         Proc_6_39_E7D3A0(var_108, CVar(var_110))
  loc_1334911:         var_F8 = "0.00"
  loc_133494D:         Proc_6_39_E7D3A0(var_188, CVar(var_A8.Fields.Item("RectAmt")), 1)
  loc_133499F:         var_168 = "A Sum of Rs. "
  loc_13349A7:         var_148 = (var_168 + Format(var_108, var_F8))
  loc_13349B0:         var_158 = (CVar(var_A8.Fields.Item("GRCNo")) + " (")
  loc_13349BA:         var_1A8 = (var_158 + CVar(Proc_6_43_1003B24(CSng(var_188), "Rs", vbNullString)))
  loc_13349C3:         var_1B8 = (Space(8) + ") by ")
  loc_13349CD:         var_210 = (var_1B8 + CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("RectMode")), 1)))
  loc_13349D3:         Print 1, CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("RectDate")), var_88))
  loc_1334A11:         Print 1, vbNullString
  loc_1334A23:         Print 1, "towards (Room Charge/Others)" & "______________________________________________"
  loc_1334A31:         Print 1, vbNullString
  loc_1334A3C:         Print 1, vbNullString
  loc_1334A47:         Print 1, vbNullString
  loc_1334A52:         Print 1, vbNullString
  loc_1334A5D:         Print 1, vbNullString
  loc_1334A81:         Print 1, Proc_6_52_EAE084("Autho. Signature", &H46)
  loc_1334A95:         Print 1, vbNullString
  loc_1334AA0:         Print 1, "---------------------------------------------------------------------------------------"
  loc_1334AA6:       End If
  loc_1334AAC:       var_86 = (var_86 + &H18)
  loc_1334AAF:       ' Referenced from: 1334ACC
  loc_1334AB5:       If (Proc_6_129_12B862C(var_88, var_86, &H50) < &H22) Then
  loc_1334ABD:         Print 1, vbNullString
  loc_1334AC9:         var_86 = (var_86 + 1)
  loc_1334ACC:         GoTo loc_1334AAF
  loc_1334ACF:       End If
  loc_1334AD1:       var_86 = 0
  loc_1334ADA:       var_88 = (var_88 + 1)
  loc_1334AE0:       var_A8.MoveNext
  loc_1334AE5:       GoTo loc_13346A8
  loc_1334AE8:     End If
  loc_1334AEB:   Else
  loc_1334AEE:     var_AC = "ADVANCE RECIEPT"
  loc_1334AF4:     var_D0 = arg_14
  loc_1334B05:     var_B0 = CStr(Ucase(var_D0))
  loc_1334B2F:     Set var_E4 = var_A8 
  loc_1334B36:     CreateFieldDefFile(var_E4, MemVar_1F950B4 & "\" & var_AC & ".ttx", &HFF, var_88)
  loc_1334B61:     var_B8 = MemVar_1F950B4 & "\"
  loc_1334B78:     Call 0.Method_arg_1C (var_B8 & var_AC & ".RPT", var_D0, var_E4, var_86)
  loc_1334B83:     MemVar_1F951E8 = var_E4
  loc_1334BAC:     Call 0.Method_arg_64 (var_E4, CVar(var_E4), var_F8, var_168)
  loc_1334BB4:     Call 0.Method_arg_2C (var_86, var_86)
  loc_1334BC2:     Call 0.Method_arg_150 (var_E4)
  loc_1334BD8:     Call 0.Method_arg_90 (var_E4, var_E8)
  loc_1334BE0:     Call 0.Method_arg_24 (var_B2)
  loc_1334BEC:     For var_250 =  To CInt(var_E8):   1 = var_250 'Integer
  loc_1334C05:       Call 0.Method_arg_90 (var_E4, CLng(var_B2))
  loc_1334C0D:       Call 0.Method_arg_20 (var_110)
  loc_1334C15:       Call 0.Method_arg_30 (var_B8)
  loc_1334C44:       If (Ucase(CVar(var_B8)) = "TITLE") Then
  loc_1334C68:         Call 0.Method_arg_90 (var_E4, CLng(var_B2))
  loc_1334C70:         Call 0.Method_arg_20 (var_110)
  loc_1334C78:         Call 0.Method_arg_38 ("'" & var_AC & "'")
  loc_1334C8B:       End If
  loc_1334C8E:     Next var_250 'Integer
  loc_1334C98:     Set var_110 = Nothing
  loc_1334CAE:     Set var_E4 = MemVar_1F951E8 
  loc_1334CBA:     Proc_6_99_1484404(var_E4, 0, var_B0)
  loc_1334CC5:     MemVar_1F951E8 = var_E4
  loc_1334CD0:   End If
  loc_1334CD0: End If
  loc_1334CD2: Close 1
  loc_1334CDB: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1334CEB: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_1334CF6: Close 1
  loc_1334D00: If (MemVar_1F953BC = "Y") Then
  loc_1334D1C:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1334D26: Else
  loc_1334D3F:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1334D46: End If
  loc_1334D4B: Set var_A8 = Nothing
  loc_1334D4E: Exit Sub
  loc_1334D4F: ' Referenced from: 13345FC
  loc_1334D4F: Proc_6_60_E63754(&HFF)
  loc_1334D54: Exit Sub
End Sub

Public Sub Proc_146_2_1317B24(arg_C, arg_10, arg_14) '1317B24
  'Data Table: 4202E4
  Dim var_C4 As String
  Dim unk_4202EB As Connection15
  Dim var_9C As Recordset15
  Dim var_DC As Variant
  Dim var_F0 As Fields15
  Dim var_F8 As Field20
  Dim var_B0 As Recordset15
  Dim var_108 As Variant
  Dim var_88 As Integer
  Dim var_86 As Integer
  Dim var_EC As Variant
  Dim var_118 As Variant
  Dim var_13C As Variant
  Dim var_14C As String
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  loc_131740C: On Error Goto loc_1317B1E
  loc_1317423: var_C4 = "SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.AMTCR AS RECTAMT,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo,P.ChqDate,P.ExpDate AS CCExpDate,P.BatchNo,P.ROOMNO AS ROOMNO,P.FOLIONO AS GRCNO,GP.NAME AS GUESTNAME,R.NAME As PayName,P.TxnNo FROM (GUESTPROF GP left join GUESTFOLIO GF ON GF.GUESTPROF=GP.CODE) LEFT JOIN PAYCHARGE P ON GF.DOCID=P.FOLIONODOCID LEFT JOIN RevMast R ON P.PayCode = R.Code" & " WHERE P.FOLIONODOCID IN ('"
  loc_131743A: unk_4202EB.Execute var_C4 & arg_C & "') AND P.VTYPE='REC' And MODESET='S' ORDER BY P.DOCID", var_EC, -1
  loc_1317445: Set var_B0 = var_F0
  loc_131747B: unk_4202EB.Execute "Select max(Bill_No) from PayCharge where (Bill_no is not NULL and Bill_no<>'') and Folionodocid In ('" & arg_C & "')", var_EC, -1
  loc_1317486: Set var_9C = var_F0
  loc_13174AA: If (var_9C.RecordCount > 0) Then
  loc_13174BF:   var_F0 = var_9C.Fields
  loc_13174DC:   var_A0 = Proc_6_38_E69628(var_F0.Item(0).Value, var_F0)
  loc_13174E9: End If
  loc_13174EF: var_F4 = var_B0.RecordCount
  loc_13174FD: If (var_F4 > 0) Then
  loc_131751E:   If CBool(Trim(arg_10) <> "W") Then
  loc_1317523:     Close 1
  loc_131752C:     Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1317532:     var_88 = 1
  loc_1317538:     MemVar_1F953C4 = "N"
  loc_131753F:     MemVar_1F953C8 = "N"
  loc_1317546:     MemVar_1F953CC = "M"
  loc_131754A:     ' Referenced from: 131785F
  loc_1317559:     If Not(var_B0.EOF) Then
  loc_1317568:       If (var_86 = 0) Then
  loc_1317583:         Print 1, vbNullString
  loc_131758E:         Print 1, vbNullString
  loc_13175B5:         Print 1, Proc_6_128_1026560(" RECEIPT ", "B", &H50)
  loc_13175C9:         Print 1, vbNullString
  loc_13175D4:         Print 1, vbNullString
  loc_1317612:         Print 1, "Receipt No.  :" & CStr(var_B0.Fields.Item("RectNo").Value)
  loc_131762E:         Print 1, vbNullString
  loc_1317639:         Print 1, vbNullString
  loc_1317667:         var_118 = CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("GuestName")), Proc_6_129_12B862C(var_88, var_86, &H50))) 'String
  loc_131767A:         var_13C = ("Recieved with thanks from Mr. " + Ucase(var_118))
  loc_1317680:         Print 1, var_13C
  loc_1317699:         Print 1, vbNullString
  loc_13176B6:         var_F8 = var_B0.Fields.Item("RectAmt")
  loc_13176C5:         Proc_6_39_E7D3A0(var_118, CVar(var_F8))
  loc_1317710:         Proc_6_39_E7D3A0(var_1B4, CVar(var_B0.Fields.Item("RectAmt")), 1)
  loc_1317737:         var_14C = "A Sum of Rs. "
  loc_131773F:         var_15C = (var_14C + Format(var_118, "0.00"))
  loc_1317748:         var_17C = (var_15C + " (")
  loc_1317752:         var_1DC = (var_17C + CVar(Proc_6_43_1003B24(CSng(var_1B4), "Rs", vbNullString)))
  loc_131775B:         var_1FC = (var_1DC + ")")
  loc_1317761:         Print 1, var_1FC
  loc_1317795:         Print 1, vbNullString
  loc_13177A0:         Print 1, vbNullString
  loc_13177AB:         Print 1, vbNullString
  loc_13177B6:         Print 1, vbNullString
  loc_13177C1:         Print 1, vbNullString
  loc_13177CC:         Print 1, vbNullString
  loc_13177D7:         Print 1, vbNullString
  loc_13177FB:         Print 1, Proc_6_52_EAE084("Autho. Signature", &H46, 1)
  loc_131780F:         Print 1, vbNullString
  loc_131781A:         Print 1, "---------------------------------------------------------------------------------------"
  loc_1317820:       End If
  loc_1317826:       var_86 = (var_86 + &H18)
  loc_1317829:       ' Referenced from: 1317846
  loc_131782F:       If (Proc_6_129_12B862C(var_88, var_86, &H50) < &H22) Then
  loc_1317837:         Print 1, vbNullString
  loc_1317843:         var_86 = (var_86 + 1)
  loc_1317846:         GoTo loc_1317829
  loc_1317849:       End If
  loc_131784B:       var_86 = 0
  loc_1317854:       var_88 = (var_88 + 1)
  loc_131785A:       var_B0.MoveNext
  loc_131785F:       GoTo loc_131754A
  loc_1317862:     End If
  loc_1317864:     Close 1
  loc_131786D:     Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_131787D:     Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_1317888:     Close 1
  loc_1317892:     If (MemVar_1F953BC = "Y") Then
  loc_13178AE:       var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_13178B8:     Else
  loc_13178CD:       var_108 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Double
  loc_13178D1:       var_98 = var_108 'Variant
  loc_13178D8:     End If
  loc_13178DB:   Else
  loc_13178DE:     var_B4 = "SETTLEMENT RECIEPT"
  loc_13178E4:     var_DC = arg_14
  loc_13178F5:     var_B8 = CStr(Ucase(var_DC))
  loc_131791F:     Set var_F0 = var_B0 
  loc_1317926:     CreateFieldDefFile(var_F0, MemVar_1F950B4 & "\" & var_B4 & ".ttx", &HFF, var_88, var_86)
  loc_1317951:     var_C4 = MemVar_1F950B4 & "\"
  loc_1317968:     Call 0.Method_arg_1C (var_C4 & var_B4 & ".RPT", var_DC, var_F0, var_86)
  loc_1317973:     MemVar_1F951E8 = var_F0
  loc_131799C:     Call 0.Method_arg_64 (var_F0, CVar(var_F0), var_108, var_14C)
  loc_13179A4:     Call 0.Method_arg_2C (var_86, var_88)
  loc_13179B2:     Call 0.Method_arg_150 (var_F0)
  loc_13179C8:     Call 0.Method_arg_90 (var_F0, var_F4)
  loc_13179D0:     Call 0.Method_arg_24 (var_BA)
  loc_13179DC:     For var_204 =  To CInt(var_F4):   1 = var_204 'Integer
  loc_13179F5:       Call 0.Method_arg_90 (var_F0, CLng(var_BA))
  loc_13179FD:       Call 0.Method_arg_20 (var_F8)
  loc_1317A05:       Call 0.Method_arg_30 (var_C4)
  loc_1317A1B:       var_214 = Ucase(CVar(var_C4)) 'Variant
  loc_1317A34:       If (var_214 = "TITLE") Then
  loc_1317A58:         Call 0.Method_arg_90 (var_F0, CLng(var_BA))
  loc_1317A60:         Call 0.Method_arg_20 (var_F8)
  loc_1317A68:         Call 0.Method_arg_38 ("'" & var_B4 & "'")
  loc_1317A7E:       Else
  loc_1317A89:         If (var_214 = "BILLNO") Then
  loc_1317AAD:           Call 0.Method_arg_90 (var_F0, CLng(var_BA))
  loc_1317AB5:           Call 0.Method_arg_20 (var_F8)
  loc_1317ABD:           Call 0.Method_arg_38 ("'" & var_A0 & "'")
  loc_1317AD0:         End If
  loc_1317AD0:       End If
  loc_1317AD3:     Next var_204 'Integer
  loc_1317ADD:     Set var_F8 = Nothing
  loc_1317AF3:     Set var_F0 = MemVar_1F951E8 
  loc_1317AFF:     Proc_6_99_1484404(var_F0, 0, var_B8)
  loc_1317B0A:     MemVar_1F951E8 = var_F0
  loc_1317B15:   End If
  loc_1317B15: End If
  loc_1317B1A: Set var_B0 = Nothing
  loc_1317B1D: Exit Sub
  loc_1317B1E: ' Referenced from: 131740C
  loc_1317B1E: Proc_6_60_E63754(&HFF)
  loc_1317B23: Exit Sub
End Sub

Public Sub Proc_146_3_143D794(arg_C) '143D794
  'Data Table: 4202E4
  Dim var_8C As Recordset15
  loc_143CC73: Set var_8C = arg_C 
  loc_143CC9B: var_8C.Fields.Append "UID", &HC8, &H20
  loc_143CCC7: var_8C.Fields.Append "ConPrefix", &HC8, &HB
  loc_143CCF3: var_8C.Fields.Append "GuestName", &HC8, &H32
  loc_143CD1F: var_8C.Fields.Append "FatherName", &HC8, &H32
  loc_143CD4B: var_8C.Fields.Append "Address1", &HC8, &H4B
  loc_143CD77: var_8C.Fields.Append "Address2", &HC8, &H4B
  loc_143CDA3: var_8C.Fields.Append "City", &HC8, &H23
  loc_143CDCF: var_8C.Fields.Append "State", &HC8, &H23
  loc_143CDFB: var_8C.Fields.Append "Country", &HC8, &H23
  loc_143CE27: var_8C.Fields.Append "ZIP", &HC8, &HA
  loc_143CE53: var_8C.Fields.Append "Nationality", &HC8, &H1E
  loc_143CE7F: var_8C.Fields.Append "Mobile", &HC8, &H23
  loc_143CEAB: var_8C.Fields.Append "Fax", &HC8, &H23
  loc_143CED7: var_8C.Fields.Append "Phone", &HC8, &H23
  loc_143CF03: var_8C.Fields.Append "EMailId", &HC8, &H32
  loc_143CF2F: var_8C.Fields.Append "Marital", &HC8, &HA
  loc_143CF5B: var_8C.Fields.Append "Gender", &HC8, &HA
  loc_143CF87: var_8C.Fields.Append "GStatus", &HC8, &HA
  loc_143CFB3: var_8C.Fields.Append "Anniversary", &HC8, &HC
  loc_143CFDF: var_8C.Fields.Append "DateOfBirth", &HC8, &HC
  loc_143D00B: var_8C.Fields.Append "Age", &HC8, 4
  loc_143D037: var_8C.Fields.Append "Diplomat", &HC8, 3
  loc_143D063: var_8C.Fields.Append "DiplomatNo", &HC8, &H32
  loc_143D08F: var_8C.Fields.Append "IdProof", &HC8, &H32
  loc_143D0BB: var_8C.Fields.Append "IdProofNo", &HC8, &H4B
  loc_143D0E7: var_8C.Fields.Append "Cmt1", &HC8, &H32
  loc_143D113: var_8C.Fields.Append "Cmt2", &HC8, &H32
  loc_143D13F: var_8C.Fields.Append "Cmt3", &HC8, &H32
  loc_143D16B: var_8C.Fields.Append "User", &HC8, &HA
  loc_143D197: var_8C.Fields.Append "Picture1", &HCD, &H3E8
  loc_143D1C3: var_8C.Fields.Append "IdProofPic", &HCD, &H3E8
  loc_143D1EF: var_8C.Fields.Append "P_RegNo", &HC8, 8
  loc_143D21B: var_8C.Fields.Append "P_SerialNo", &HC8, 8
  loc_143D247: var_8C.Fields.Append "P_GuestName", &HC8, &H23
  loc_143D273: var_8C.Fields.Append "P_Add1", &HC8, &H32
  loc_143D29F: var_8C.Fields.Append "P_Add2", &HC8, &H32
  loc_143D2CB: var_8C.Fields.Append "P_Nationality", &HC8, &H32
  loc_143D2F7: var_8C.Fields.Append "P_DateOfBirth", &HC8, &HC
  loc_143D323: var_8C.Fields.Append "P_Age", &HC8, 4
  loc_143D34F: var_8C.Fields.Append "P_PurVisit", &HC8, &H32
  loc_143D37B: var_8C.Fields.Append "P_AddIndiaIfAny", &HC8, &H32
  loc_143D3A7: var_8C.Fields.Append "P_DateArr", &HC8, &HC
  loc_143D3D3: var_8C.Fields.Append "P_ArrPlace", &HC8, &H32
  loc_143D3FF: var_8C.Fields.Append "P_PropStay", &HC8, &H32
  loc_143D42B: var_8C.Fields.Append "P_ArrFrom", &HC8, &H32
  loc_143D457: var_8C.Fields.Append "P_ModeTravelatArrival", &HC8, &H32
  loc_143D483: var_8C.Fields.Append "P_ProposedDepart", &HC8, &H32
  loc_143D4AF: var_8C.Fields.Append "P_GoingTo", &HC8, &H32
  loc_143D4DB: var_8C.Fields.Append "P_ModeTravelAfterDepart", &HC8, &H32
  loc_143D507: var_8C.Fields.Append "P_VisaIssAuth", &HC8, &H32
  loc_143D533: var_8C.Fields.Append "P_Extension", &HC8, &H64
  loc_143D55F: var_8C.Fields.Append "P_PassNo", &HC8, &H32
  loc_143D58B: var_8C.Fields.Append "P_IssDate", &HC8, &HC
  loc_143D5B7: var_8C.Fields.Append "P_IssPlace", &HC8, &H32
  loc_143D5E3: var_8C.Fields.Append "P_PassExpDate", &HC8, &HC
  loc_143D60F: var_8C.Fields.Append "P_WorkPermit", &HC8, &H32
  loc_143D63B: var_8C.Fields.Append "P_VisaNo", &HC8, &H32
  loc_143D667: var_8C.Fields.Append "P_VisaIssDate", &HC8, &HC
  loc_143D693: var_8C.Fields.Append "P_VisaIssPlace", &HC8, &H32
  loc_143D6BF: var_8C.Fields.Append "P_VisaExpDate", &HC8, &HC
  loc_143D6EB: var_8C.Fields.Append "P_VisaDuration", &HC8, &H32
  loc_143D717: var_8C.Fields.Append "P_Vdate", &HC8, &HC
  loc_143D743: var_8C.Fields.Append "PAN_No", &HC8, &HF
  loc_143D753: var_8C.CursorType = 3
  loc_143D760: var_8C.LockType = 3
  loc_143D77F: var_8C.Open var_A0, var_B0, -1
  loc_143D786: Set var_8C = Nothing 
  loc_143D78D: Set var_88 = arg_C 
  loc_143D791: Exit Sub
End Sub

Public Sub Proc_146_4_1AA9270(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) '1AA9270
  'Data Table: 4202E4
  Dim var_AA As Integer
  Dim var_C4 As String
  Dim var_C8 As String
  Dim unk_4202EB As Connection15
  Dim var_B0 As Recordset15
  Dim var_D8 As Variant
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_138 As String
  Dim var_13C As String
  Dim var_140 As String
  Dim var_144 As String
  Dim var_154 As Recordset15
  Dim var_E8 As Variant
  Dim var_8C As Recordset15
  Dim var_158 As Variant
  Dim var_15C As Field20
  Dim var_17C As Variant
  Dim var_16C As Variant
  Dim var_124 As Variant
  Dim var_1A0 As String
  Dim var_190 As Fields15
  Dim var_1A4 As Field20
  Dim var_134 As Variant
  Dim var_1B4 As Variant
  Dim var_90 As Recordset15
  Dim var_88 As Recordset15
  Dim var_18C As Variant
  Dim var_98 As Recordset15
  Dim var_BC As Recordset15
  loc_1AA54B8: On Error Goto loc_1AA9264
  loc_1AA54BD: var_AA = &HFF
  loc_1AA54C7: var_C4 = "Select B.DocId UID,IsNull(B.MyRectNo,'') as MyRectNo,B.BookNo,B.Vdate AS ResDate,B.U_Name,B.U_EntDt,COMP.Name as Company,TR.Name as TravelAgency,B.ResStatus,B.GuestProf,B.DepositeReq,B.Adult,B.Child,B.NoOfRooms,B.NoDays,BS.Name BussSource,MS.Name MarketSeg,B.ArrFrom,B.Destination,B.BookedBy,B.ResMode,B.TravelMode,B.RDisc,B.RSDisc From Booking B " & "Left Join SubGroup COMP ON B.Company=COMP.SubCode Left Join SubGroup TR ON B.TravelAgency=TR.SubCode Left Join MarketSeg MS ON B.MarketSeg=MS.Code Left Join BussSource BS ON B.BussSource=BS.Code Where B.DocId='"
  loc_1AA54F5: unk_4202EB.Execute var_C4 & arg_C & "'", var_E8, -1
  loc_1AA5500: Set var_B0 = var_EC
  loc_1AA550F: var_F0 = var_B0.RecordCount
  loc_1AA551D: If (var_F0 > 0) Then
  loc_1AA554B:   var_A0 = CStr(var_B0.Fields.Item("UID").Value)
  loc_1AA556A:   var_EC = var_B0.Fields
  loc_1AA557A:   var_E8 = var_EC.Item("GuestProf").Value
  loc_1AA5583:   var_A4 = CStr(var_E8)
  loc_1AA5590: End If
  loc_1AA559D: var_104 = "Select * From Enviro Where LogSite_Code="
  loc_1AA55A5: var_D8 = MemVar_1F95078
  loc_1AA55AD: Proc_6_17_EAAE40(var_E8, var_D8, var_104, var_134)
  loc_1AA55B5: var_114 = -1 & var_E8 
  loc_1AA55C3: unk_4202EB.Execute CStr(var_114), var_EC, var_EC
  loc_1AA55CE: Set var_BC = var_EC
  loc_1AA55F4: var_C4 = "SELECT GP.Code,GP.ConPrefix,GP.Name,GP.FatherName,GP.Add1,GP.Add2,GP.CityName,GP.StateName,GP.CountryName,GP.ZipCode,GP.PicPath,GP.IdPicPath,Country_1.Name As Nationality,GP.Anniversary,GP.BirthDate,GP.Age,GP.PhoneNo," & "GP.MobileNo,GP.FaxNo,GP.EmailId,GP.DiplomatYN,GP.PanNo,GP.IdNo,GP.IdProof,GP.IdProofNo,GP.MaritalStatus,GP.Gender,GS.Name As GuestStatus,GP.Comments1,GP.Comments2,GP.Comments3,GP.U_Name,Q.* FROM GuestProf GP LEFT JOIN Country AS Country_1 ON GP.Nationality = Country_1.Code Left Join GuestStat GS On GP.GuestStatus=GS.Code Left Join "
  loc_1AA55FB: var_C8 = var_C4 & "(Select GF.Code As P_GuestCode,GFor.SerialNo As P_SerialNo,GFor.Name As P_GuestName,GFor.Add1 As P_Add1,GFor.Add2 As P_Add2,Country.Name As P_Nationality,GFor.Age AS P_Age,GFor.PurVisit As P_PurVisit,"
  loc_1AA5602: var_138 = var_C8 & "GFor.AddIndia As P_AddIndiaIfAny,GFor.DateArr As P_DateArr,GFor.ArrPlace As P_ArrPlace,GFor.PropStay As P_PropStay,GFor.ArrFrom As P_ArrFrom,GFor.ModeTravel As P_ModeTravelatArrival,'' As P_ProposedDepart,"
  loc_1AA5609: var_13C = var_138 & "GFor.Dest As P_GoingTo, GFor.ModeTravelUsed As P_ModeTravelAfterDepart,GFor.VisaIssAuth As P_VisaIssAuth, GFor.Extension As P_Extension,GFor.PassNo As P_PassNo,GFor.IssDate As P_IssDate, GFor.IssPlace As P_IssPlace,"
  loc_1AA5610: var_140 = var_13C & "GFor.PassExpDate As P_PassExpDate,GFor.WorkPermit As P_WorkPermit,GFor.VisaNo As P_VisaNo,GFor.VisaIssDate As P_VisaIssDate,GFor.VisaIssPlace As P_VisaIssPlace,GFor.ExpDate AS P_VisaExpDate,GFor.VisaDuration As P_VisaDuration,'' As P_Vdate "
  loc_1AA5617: var_144 = var_140 & "From ((GuestProf GF Left Join GuestProfFor GFor ON GF.Code=GFor.Code) LEFT JOIN Country ON GFor.Nationality = Country.Code)) Q On GP.Code=Q.P_GuestCode Where GP.Code='"
  loc_1AA562E: unk_4202EB.Execute var_144 & var_A4 & "' Order By P_SerialNo", var_E8, -1
  loc_1AA5639: Set var_8C = var_EC
  loc_1AA5659: Set var_90 = New 
  loc_1AA5664: Set var_90 = Proc_146_3_143D794(var_90, var_EC)
  loc_1AA5667: ' Referenced from: 1AA7459
  loc_1AA5676: If Not(Me.Recordset15.EOF) Then
  loc_1AA567C:   Set var_154 = var_90 
  loc_1AA568B:   var_154.AddNew var_D8, var_104
  loc_1AA56C0:   var_154.Fields.Item("UID").Value = CVar(Proc_6_38_E69628(var_A0))
  loc_1AA571A:   var_154.Fields.Item("ConPrefix").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("ConPrefix"))))
  loc_1AA577A:   var_154.Fields.Item("GuestName").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name"))))
  loc_1AA57DA:   var_154.Fields.Item("FatherName").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("FatherName"))))
  loc_1AA583A:   var_154.Fields.Item("Address1").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Add1"))))
  loc_1AA589A:   var_154.Fields.Item("Address2").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Add2"))))
  loc_1AA58FA:   var_154.Fields.Item("City").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CityName"))))
  loc_1AA595A:   var_154.Fields.Item("State").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("StateName"))))
  loc_1AA59BA:   var_154.Fields.Item("Country").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CountryName"))))
  loc_1AA5A1A:   var_154.Fields.Item("ZIP").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Zipcode"))))
  loc_1AA5A7A:   var_154.Fields.Item("Nationality").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Nationality"))))
  loc_1AA5AF0:   var_154.Fields.Item("Mobile").Value = Left(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("MobileNo")))), &H23)
  loc_1AA5B6B:   var_154.Fields.Item("Fax").Value = Left(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("FaxNo")))), &H23)
  loc_1AA5BE6:   var_154.Fields.Item("Phone").Value = Left(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("PhoneNo")))), &H23)
  loc_1AA5C61:   var_154.Fields.Item("EMailId").Value = Left(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("EmailId")))), &H32)
  loc_1AA5CC6:   var_154.Fields.Item("Marital").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("MaritalStatus"))))
  loc_1AA5D26:   var_154.Fields.Item("Gender").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Gender"))))
  loc_1AA5D86:   var_154.Fields.Item("GStatus").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("GuestStatus"))))
  loc_1AA5E0E:   var_18C = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("Anniversary"))) = vbNullString), "NA", CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Anniversary")))))
  loc_1AA5E36:   var_154.Fields.Item("Anniversary").Value = var_18C
  loc_1AA5ECF:   var_18C = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("BirthDate"))) = vbNullString), "NA", CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("BirthDate")))))
  loc_1AA5EF7:   var_154.Fields.Item("DateOfBirth").Value = var_18C
  loc_1AA5F90:   var_18C = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("Age"))) = "0"), "NA", CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Age")))))
  loc_1AA5FB8:   var_154.Fields.Item("Age").Value = var_18C
  loc_1AA6029:   var_154.Fields.Item("Diplomat").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("DiplomatYN"))))
  loc_1AA6089:   var_154.Fields.Item("DiplomatNo").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("IdNo"))))
  loc_1AA60E9:   var_154.Fields.Item("IdProof").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("IdProof"))))
  loc_1AA6149:   var_154.Fields.Item("IdProofNo").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("IdProofNo"))))
  loc_1AA61A9:   var_154.Fields.Item("Cmt1").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Comments1"))))
  loc_1AA6209:   var_154.Fields.Item("Cmt2").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Comments2"))))
  loc_1AA6269:   var_154.Fields.Item("Cmt3").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Comments3"))))
  loc_1AA62C9:   var_154.Fields.Item("User").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_Name"))))
  loc_1AA6329:   var_154.Fields.Item("P_RegNo").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_GuestCode"))))
  loc_1AA6389:   var_154.Fields.Item("P_SerialNo").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_SerialNo"))))
  loc_1AA63E9:   var_154.Fields.Item("P_GuestName").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_GuestName"))))
  loc_1AA6449:   var_154.Fields.Item("P_Add1").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_Add1"))))
  loc_1AA64A9:   var_154.Fields.Item("P_Add2").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_Add2"))))
  loc_1AA6509:   var_154.Fields.Item("P_Nationality").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_Nationality"))))
  loc_1AA6591:   var_18C = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("BirthDate"))) = vbNullString), "NA", CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("BirthDate")))))
  loc_1AA659D:   var_1A0 = "P_DateOfBirth"
  loc_1AA65B9:   var_154.Fields.Item(var_1A0).Value = var_18C
  loc_1AA662A:   var_154.Fields.Item("P_Age").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_Age"))))
  loc_1AA668A:   var_154.Fields.Item("P_PurVisit").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_PurVisit"))))
  loc_1AA66EA:   var_154.Fields.Item("P_AddIndiaIfAny").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_AddIndiaIfAny"))))
  loc_1AA674A:   var_154.Fields.Item("P_DateArr").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_DateArr"))))
  loc_1AA67AA:   var_154.Fields.Item("P_ArrPlace").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_ArrPlace"))))
  loc_1AA680A:   var_154.Fields.Item("P_PropStay").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_PropStay"))))
  loc_1AA686A:   var_154.Fields.Item("P_ArrFrom").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_ArrFrom"))))
  loc_1AA68CA:   var_154.Fields.Item("P_ModeTravelatArrival").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_ModeTravelatArrival"))))
  loc_1AA692A:   var_154.Fields.Item("P_ProposedDepart").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_ProposedDepart"))))
  loc_1AA698A:   var_154.Fields.Item("P_GoingTo").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_GoingTo"))))
  loc_1AA69EA:   var_154.Fields.Item("P_ModeTravelAfterDepart").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_ModeTravelAfterDepart"))))
  loc_1AA6A4A:   var_154.Fields.Item("P_VisaIssAuth").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_VisaIssAuth"))))
  loc_1AA6AAA:   var_154.Fields.Item("P_Extension").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_Extension"))))
  loc_1AA6B0A:   var_154.Fields.Item("P_PassNo").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_PassNo"))))
  loc_1AA6B6A:   var_154.Fields.Item("P_IssDate").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_IssDate"))))
  loc_1AA6BCA:   var_154.Fields.Item("P_IssPlace").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_IssPlace"))))
  loc_1AA6C2A:   var_154.Fields.Item("P_PassExpDate").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_PassExpDate"))))
  loc_1AA6C8A:   var_154.Fields.Item("P_WorkPermit").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_WorkPermit"))))
  loc_1AA6CEA:   var_154.Fields.Item("P_VisaNo").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_VisaNo"))))
  loc_1AA6D4A:   var_154.Fields.Item("P_VisaIssDate").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_VisaIssDate"))))
  loc_1AA6DAA:   var_154.Fields.Item("P_VisaIssPlace").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_VisaIssPlace"))))
  loc_1AA6E0A:   var_154.Fields.Item("P_VisaExpDate").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_VisaExpDate"))))
  loc_1AA6E6A:   var_154.Fields.Item("P_VisaDuration").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_VisaDuration"))))
  loc_1AA6ECA:   var_154.Fields.Item("P_Vdate").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("P_Vdate"))))
  loc_1AA6F2A:   var_154.Fields.Item("PAN_No").Value = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("PanNo"))))
  loc_1AA6F4E:   var_EC = var_8C.Fields
  loc_1AA6F67:   var_16C = IsNull(CVar(var_EC.Item("PicPath")))
  loc_1AA6F6E:   var_104 = "PicPath"
  loc_1AA6FA1:   var_124 = vbNullString
  loc_1AA6FC5:   If CBool(var_AA Or (Trim(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_104)), var_16C))) = var_124)) Then
  loc_1AA6FE6:     Me.Global.LoadPicture var_D8, var_104, var_124, var_16C, var_1A0
  loc_1AA6FFA:     Set var_158 = MemVar_1F95248.tmpImage
  loc_1AA7000:     MDIForm1.tmpImage.Picture = var_EC
  loc_1AA700F:   Else
  loc_1AA7037:     var_114 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("PicPath")))) 'String
  loc_1AA7054:     If CBool(var_1C4.FileExists) Then
  loc_1AA7079:       var_EC = var_1C4.Recordset15.Fields
  loc_1AA709C:       Me.Global.LoadPicture CVar(Proc_6_38_E69628(CVar(var_EC.Item("PicPath")), var_104, var_124, var_16C)), var_1A0, var_158, CVar(Proc_6_38_E69628(CVar(var_EC.Item("PicPath")), var_104, var_124, var_16C)), var_EC
  loc_1AA70B0:       Set var_190 = MemVar_1F95248.tmpImage
  loc_1AA70B6:       MDIForm1.tmpImage.Picture = var_158
  loc_1AA70D4:       Set var_EC = MemVar_1F95248.tmpImage
  loc_1AA70DA:       MDIForm1.tmpImage.Refresh
  loc_1AA70E5:     Else
  loc_1AA7103:       Me.Global.LoadPicture var_D8, var_104, var_124, var_16C, var_1A0
  loc_1AA7117:       Set var_158 = MemVar_1F95248.tmpImage
  loc_1AA711D:       MDIForm1.tmpImage.Picture = var_EC
  loc_1AA7129:     End If
  loc_1AA7129:   End If
  loc_1AA7135:   Set var_EC = MemVar_1F95248.tmpImage
  loc_1AA7143:   var_1D4 = MDIForm1.tmpImage.Picture 'Address Function
  loc_1AA714D:   CUnkVar
  loc_1AA7153:   var_104 = (var_1D4 Is Nothing)
  loc_1AA715A:   var_D8 = 0
  loc_1AA716D:   If CBool(var_104 Or (var_1D4 = var_D8)) Then
  loc_1AA717B:     var_154.Update var_D8, var_104
  loc_1AA7183:   Else
  loc_1AA7192:     var_C4 = "Picture1"
  loc_1AA719B:     Set var_F4 = var_B0 
  loc_1AA71AB:     Proc_142_0_F977BC((var_EC), var_F4)
  loc_1AA71B6:     Set var_B0 = var_F4
  loc_1AA71C5:   End If
  loc_1AA71D4:   var_EC = var_8C.Fields
  loc_1AA71ED:   var_16C = IsNull(CVar(var_EC.Item("IdPicPath")))
  loc_1AA71F4:   var_104 = "IdPicPath"
  loc_1AA7208:   var_15C = var_8C.Fields.Item(var_104)
  loc_1AA7227:   var_124 = vbNullString
  loc_1AA724B:   If CBool(var_C4 Or (Trim(CVar(Proc_6_38_E69628(CVar(var_15C), var_16C))) = var_124)) Then
  loc_1AA726C:     Me.Global.LoadPicture var_D8, var_104, var_124, var_16C, var_1A0
  loc_1AA7280:     Set var_158 = MemVar_1F95248.tmpImage
  loc_1AA7286:     MDIForm1.tmpImage.Picture = var_EC
  loc_1AA7295:   Else
  loc_1AA72BD:     var_114 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("IdPicPath")))) 'String
  loc_1AA72DA:     If CBool(var_1C4.FileExists) Then
  loc_1AA72FF:       var_EC = var_1C4.Recordset15.Fields
  loc_1AA730F:       var_E8 = CVar(var_EC.Item("IdPicPath")) 'Address
  loc_1AA7322:       Me.Global.LoadPicture CVar(Proc_6_38_E69628(var_E8, var_104, var_124, var_16C)), var_1A0, var_158, CVar(Proc_6_38_E69628(var_E8, var_104, var_124, var_16C)), var_EC
  loc_1AA7336:       Set var_190 = MemVar_1F95248.tmpImage
  loc_1AA733C:       MDIForm1.tmpImage.Picture = var_158
  loc_1AA735A:       Set var_EC = MemVar_1F95248.tmpImage
  loc_1AA7360:       MDIForm1.tmpImage.Refresh
  loc_1AA736B:     Else
  loc_1AA7389:       Me.Global.LoadPicture var_D8, var_104, var_124, var_16C, var_1A0
  loc_1AA739D:       Set var_158 = MemVar_1F95248.tmpImage
  loc_1AA73A3:       MDIForm1.tmpImage.Picture = var_EC
  loc_1AA73AF:     End If
  loc_1AA73AF:   End If
  loc_1AA73BB:   Set var_EC = MemVar_1F95248.tmpImage
  loc_1AA73C9:   var_1D4 = MDIForm1.tmpImage.Picture 'Address Function
  loc_1AA73D3:   CUnkVar
  loc_1AA73D9:   var_104 = (var_1D4 Is Nothing)
  loc_1AA73E0:   var_D8 = 0
  loc_1AA73EA:   var_114 = var_104 Or (var_1D4 = var_D8)
  loc_1AA73F3:   If CBool(var_114) Then
  loc_1AA7401:     var_154.Update var_D8, var_104
  loc_1AA7409:   Else
  loc_1AA7418:     var_C4 = "IdProofPic"
  loc_1AA7421:     Set var_F4 = var_B0 
  loc_1AA7431:     Proc_142_0_F977BC((var_EC), var_F4)
  loc_1AA743C:     Set var_B0 = var_F4
  loc_1AA744B:   End If
  loc_1AA744D:   Set var_154 = Nothing 
  loc_1AA7454:   var_8C.MoveNext
  loc_1AA7459:   GoTo loc_1AA5667
  loc_1AA745C: End If
  loc_1AA7486: Set var_EC = var_90 
  loc_1AA748D: CreateFieldDefFile(var_EC, MemVar_1F950B4 & "\" & "GRCRES" & ".ttx")
  loc_1AA7499: Set var_90 = var_EC
  loc_1AA74B0: var_104 = 0
  loc_1AA74DD: unk_4202EB.Execute "SELECT Count(*) FROM GRPBookingDetails WHERE BookingDocId='" & var_A0 & "'", var_E8, -1
  loc_1AA74E5: var_EC = var_EC.Fields
  loc_1AA74ED: var_104 = var_F4.Item(var_F4)
  loc_1AA74F5: var_158 = var_158.Value
  loc_1AA751C: If (var_114 > 0) Then
  loc_1AA7533:   var_C4 = "SELECT GR.BookingDocId As UID,GR.SNo,ISNULL(Booking.MyRectNo,'') MyRectNo,Booking.BookNo,RC.Name As RoomType,GR.ArrDate,GR.ArrTime,GR.DepDate,GR.DepTime,GR.NoDays,GR.RoomDet,GR.Adults,GR.Childs,GR.Tarrif,GR.RateCode,GR.IncTax,GR.ServiceChrg,GR.Cancel,GR.CancelDate,IsNull(BP.RPackageAmt,0) MealCharge,IsNull(BP.NetPackageAmount,0) As PlanTariff,IsNull(PlanMast.Name,'') PlanName,IsNull(GR.PLAN_Package,'') PLAN_Package,IsNull(GR.REMARKS,'') As REMARKS,Booking.RDisc,Booking.RSDisc,IsNull(PlanMast.Tariff,'') As [Plan],IsNull(BP.PlanDiscPer,0) As PlanDiscPer,IsNull(BP.PlanDiscAmt,0) As PlanDiscAmt FROM (GRPBookingDetails GR Left Join RoomCat RC on GR.RoomCat=RC.Code) Left Join PlanMast on GR.Plan_Package=PlanMast.code Left Join BookingPlanDetails BP On GR.BookingDocId=BP.BookingDocId And GR.SNo=BP.SNo inner join booking on booking.docid=gr.bookingdocid WHERE GR.BookingDocid='" & var_A0
  loc_1AA7543:   unk_4202EB.Execute var_C4 & "' Order By GR.BookingDocid,GR.SNo", var_E8, -1
  loc_1AA754E:   Set var_88 = var_EC
  loc_1AA7561: Else
  loc_1AA7575:   var_C4 = "SELECT GR.BookingDocId As UID,GR.SNo,ISNULL(Booking.MyRectNo,'') MyRectNo,Booking.BookNo,RC.Name As RoomType,GR.ArrDate,GR.ArrTime,GR.DepDate,GR.DepTime,GR.NoDays,GR.RoomDet,GR.Adults,GR.Childs,GR.Tarrif,GR.RateCode,GR.IncTax,GR.ServiceChrg,GR.Cancel,GR.CancelDate,IsNull(BP.RPackageAmt,0) MealCharge,IsNull(BP.NetPackageAmount,0) As PlanTariff,IsNull(PlanMast.Name,'') PlanName,IsNull(GR.PLAN_Package,'') PLAN_Package,IsNull(GR.REMARKS,'') As REMARKS,Booking.RDisc,Booking.RSDisc,IsNull(PlanMast.Tariff,'') As [Plan],IsNull(BP.PlanDiscPer,0) As PlanDiscPer,IsNull(BP.PlanDiscAmt,0) As PlanDiscAmt FROM (GRPBookingDetails GR Left Join RoomCat RC on GR.RoomCat=RC.Code) Left Join PlanMast on GR.Plan_Package=PlanMast.code Left Join BookingPlanDetails BP On GR.BookingDocId=BP.BookingDocId And GR.SNo=BP.SNo inner join booking on booking.docid=gr.bookingdocid WHERE GR.BookingDocid='" & var_A0
  loc_1AA7585:   unk_4202EB.Execute var_C4 & "' Order By GR.BookingDocid,GR.SNo", var_E8, -1
  loc_1AA7590:   Set var_88 = var_EC
  loc_1AA75A0: End If
  loc_1AA75B4: var_C4 = "SELECT RefDocId UID,P.VNo,P.Vdate,P.VTime,P.Comments,P.PayCode,P.PayType,Revmast.Name PayName,P.AmtCr,P.CardNo,P.CardHolder,P.ExpDate,P.BatchNo,P.ChqNo,P.ChqDate,P.U_Name,P.U_EntDt FROM PayCharge P Inner Join Revmast On Revmast.Code=P.PayCode WHERE RefDocId='" & var_A0
  loc_1AA75C4: unk_4202EB.Execute var_C4 & "' And P.VType In ('ARRES','ADRES','AWRES') Order By P.Vno,P.SNo", var_E8, -1
  loc_1AA7609: Set var_EC = var_EC 
  loc_1AA7610: CreateFieldDefFile(var_EC, MemVar_1F950B4 & "\" & "ResAdvDetail" & ".ttx", &HFF, var_EC, var_EC)
  loc_1AA761C: Set var_98 = var_EC
  loc_1AA7657: Set var_EC = var_B0 
  loc_1AA765E: CreateFieldDefFile(var_EC, MemVar_1F950B4 & "\" & "Reservation" & ".ttx", &HFF, var_EC)
  loc_1AA766A: Set var_B0 = var_EC
  loc_1AA76A5: Set var_EC = var_88 
  loc_1AA76AC: CreateFieldDefFile(var_EC, MemVar_1F950B4 & "\" & "ResRegisterCard" & ".ttx", &HFF)
  loc_1AA76B8: Set var_88 = var_EC
  loc_1AA76CF: If (var_AA = 0) Then
  loc_1AA76D2:   Exit Sub
  loc_1AA76D3: End If
  loc_1AA76E1: var_C4 = MemVar_1F950B4 & "\"
  loc_1AA76F8: Call 0.Method_arg_1C (var_C4 & arg_10 & ".RPT", var_D8, var_EC)
  loc_1AA7703: MemVar_1F951E8 = var_EC
  loc_1AA771B: If (arg_10 = "ResRegisterCard") Then
  loc_1AA7739:   Call 0.Method_arg_64 (var_EC, CVar(var_90), var_104, 1)
  loc_1AA7741:   Call 0.Method_arg_2C (var_114, &HFF)
  loc_1AA7764:   Call 0.Method_arg_64 (var_EC, CVar(var_B0), var_104)
  loc_1AA776C:   Call 0.Method_arg_2C (3)
  loc_1AA778F:   Call 0.Method_arg_64 (var_EC, CVar(var_88), var_104)
  loc_1AA7797:   Call 0.Method_arg_2C (2)
  loc_1AA77A2: Else
  loc_1AA77BD:   Call 0.Method_arg_64 (var_EC, CVar(var_90), var_104)
  loc_1AA77C5:   Call 0.Method_arg_2C (1)
  loc_1AA77E8:   Call 0.Method_arg_64 (var_EC, CVar(var_B0), var_104)
  loc_1AA77F0:   Call 0.Method_arg_2C (2)
  loc_1AA77F8:   var_124 = 3
  loc_1AA7813:   Call 0.Method_arg_64 (var_EC, CVar(var_88), var_104)
  loc_1AA781B:   Call 0.Method_arg_2C (var_124)
  loc_1AA7823: End If
  loc_1AA782C: Call 0.Method_arg_20 (var_EC)
  loc_1AA7837: Set var_1DC = var_EC
  loc_1AA7848: Call 0.Method_arg_24 (var_F0, var_B8)
  loc_1AA7851: For var_1EA = var_C4 To CInt(var_F0): 1 = var_1EA 'Integer
  loc_1AA7864:   Call 0.Method_arg_20 (CVar(var_B8), var_EC)
  loc_1AA786F:   Set var_1E0 = var_EC
  loc_1AA787B:   Call 0.Method_arg_2C (var_EC)
  loc_1AA7886:   Set var_1E4 = var_EC
  loc_1AA7897:   Call 0.Method_arg_24 (var_F0, var_1E6)
  loc_1AA78A0:   For var_1EE = var_C4 To CInt(var_F0): 1 = var_1EE 'Integer
  loc_1AA78B3:     Call 0.Method_arg_20 (CVar(var_1E6), var_EC)
  loc_1AA78C0:     var_104 = 5
  loc_1AA78D1:     If (var_EC.Kind = var_104) Then
  loc_1AA78E1:       Call 0.Method_arg_20 (CVar(var_1E6), var_EC)
  loc_1AA7900:       If (var_EC.Name = "Subreport1") Then
  loc_1AA790C:         var_C4 = MemVar_1F950B4 & "\ResAdvDetail.ttx"
  loc_1AA7919:         Set var_EC = var_98 
  loc_1AA7920:         CreateFieldDefFile(var_EC, var_C4)
  loc_1AA792C:         Set var_98 = var_EC
  loc_1AA7958:         Call 0.Method_arg_174 ("ResAdvDetail", var_EC, var_F4, CVar(var_98))
  loc_1AA7960:         Call 0.Method_arg_64 (var_104, var_124)
  loc_1AA7968:         Call 0.Method_arg_2C (&HFF)
  loc_1AA7974:       End If
  loc_1AA7974:     End If
  loc_1AA7977:   Next var_1EE 'Integer
  loc_1AA797F: Next var_1EA 'Integer
  loc_1AA798A: Call 0.Method_arg_150 ()
  loc_1AA79A3: If (var_90.RecordCount > 0) Then
  loc_1AA79A9:   var_90.MoveFirst
  loc_1AA79AE: End If
  loc_1AA79C2: If (var_B0.RecordCount > 0) Then
  loc_1AA79C8:   var_B0.MoveFirst
  loc_1AA79CD: End If
  loc_1AA79E1: If (var_88.RecordCount > 0) Then
  loc_1AA79E7:   var_88.MoveFirst
  loc_1AA79EC: End If
  loc_1AA79F2: var_F0 = var_B0.RecordCount
  loc_1AA7A00: If (var_F0 > 0) Then
  loc_1AA7A14:   Call 0.Method_arg_90 (var_EC, var_F0)
  loc_1AA7A1C:   Call 0.Method_arg_24 (var_B6)
  loc_1AA7A28:   For var_204 =  To CInt(var_F0): 1 = var_204 'Integer
  loc_1AA7A41:     Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_1AA7A49:     Call 0.Method_arg_20 (var_F4)
  loc_1AA7A51:     Call 0.Method_arg_30 (var_C4)
  loc_1AA7A67:     var_214 = Ucase(CVar(var_C4)) 'Variant
  loc_1AA7A97:     If (var_214 = Ucase("Company")) Then
  loc_1AA7AEA:       Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA7AF2:       Call 0.Method_arg_20 (var_15C)
  loc_1AA7AFA:       Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("Company").Value & "'"))
  loc_1AA7B19:     Else
  loc_1AA7B3B:       If (var_214 = Ucase("TravelAgency")) Then
  loc_1AA7B8E:         Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA7B96:         Call 0.Method_arg_20 (var_15C)
  loc_1AA7B9E:         Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("TravelAgency").Value & "'"))
  loc_1AA7BBD:       Else
  loc_1AA7BDF:         If (var_214 = Ucase("ResStatus")) Then
  loc_1AA7C32:           Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA7C3A:           Call 0.Method_arg_20 (var_15C)
  loc_1AA7C42:           Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("ResStatus").Value & "'"))
  loc_1AA7C61:         Else
  loc_1AA7C83:           If (var_214 = Ucase("PartyName")) Then
  loc_1AA7CD6:             Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA7CDE:             Call 0.Method_arg_20 (var_15C)
  loc_1AA7CE6:             Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("GName").Value & "'"))
  loc_1AA7D05:           Else
  loc_1AA7D27:             If (var_214 = Ucase("PlanName")) Then
  loc_1AA7D7A:               Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA7D82:               Call 0.Method_arg_20 (var_15C)
  loc_1AA7D8A:               Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("Plan_Name").Value & "'"))
  loc_1AA7DA9:             Else
  loc_1AA7DCB:               If (var_214 = Ucase("PlanTariff")) Then
  loc_1AA7E08:                 var_158 = var_B0.Fields
  loc_1AA7E10:                 var_15C = var_158.Item("Plan_Name")
  loc_1AA7E38:                 var_190 = var_B0.Fields
  loc_1AA7E40:                 var_1A4 = var_190.Item("Plan_Tariff")
  loc_1AA7E6C:                 var_1B4 = IIf((Proc_6_38_E69628(CVar(var_B0.Fields.Item("Plan_Tariff"))) = vbNullString), CVar(Proc_6_38_E69628(CVar(var_15C))), CVar(Proc_6_38_E69628(CVar(var_1A4))))
  loc_1AA7E95:                 Call 0.Method_arg_90 (var_248, CLng(var_B6))
  loc_1AA7E9D:                 Call 0.Method_arg_20 (var_24C)
  loc_1AA7EA5:                 Call 0.Method_arg_38 (CStr("'" & var_1B4 & "'"))
  loc_1AA7EDA:               Else
  loc_1AA7EFC:                 If (var_214 = Ucase("PartyAdd1")) Then
  loc_1AA7F4F:                   Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA7F57:                   Call 0.Method_arg_20 (var_15C)
  loc_1AA7F5F:                   Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("Add1").Value & "'"))
  loc_1AA7F7E:                 Else
  loc_1AA7FA0:                   If (var_214 = Ucase("PartyAdd2")) Then
  loc_1AA7FF3:                     Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA7FFB:                     Call 0.Method_arg_20 (var_15C)
  loc_1AA8003:                     Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("Add2").Value & "'"))
  loc_1AA8022:                   Else
  loc_1AA8044:                     If (var_214 = Ucase("PartyCity")) Then
  loc_1AA807A:                       var_124 = "-"
  loc_1AA8095:                       var_158 = var_B0.Fields
  loc_1AA809D:                       var_15C = var_158.Item("Zip")
  loc_1AA80CE:                       Call 0.Method_arg_90 (var_190, CLng(var_B6))
  loc_1AA80D6:                       Call 0.Method_arg_20 (var_1A4)
  loc_1AA80DE:                       Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("CityName").Value & "'" & var_15C.Value & "'"))
  loc_1AA8107:                     Else
  loc_1AA8129:                       If (var_214 = Ucase("PartyState")) Then
  loc_1AA817C:                         Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA8184:                         Call 0.Method_arg_20 (var_15C)
  loc_1AA818C:                         Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("StateName").Value & "'"))
  loc_1AA81AB:                       Else
  loc_1AA81CD:                         If (var_214 = Ucase("arrdt")) Then
  loc_1AA8220:                           Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA8228:                           Call 0.Method_arg_20 (var_15C)
  loc_1AA8230:                           Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("ArrDate").Value & "'"))
  loc_1AA824F:                         Else
  loc_1AA8271:                           If (var_214 = Ucase("arrtm")) Then
  loc_1AA82C4:                             Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA82CC:                             Call 0.Method_arg_20 (var_15C)
  loc_1AA82D4:                             Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("ArrTime").Value & "'"))
  loc_1AA82F3:                           Else
  loc_1AA8315:                             If (var_214 = Ucase("depdt")) Then
  loc_1AA8368:                               Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA8370:                               Call 0.Method_arg_20 (var_15C)
  loc_1AA8378:                               Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("DepDate").Value & "'"))
  loc_1AA8397:                             Else
  loc_1AA83B9:                               If (var_214 = Ucase("deptm")) Then
  loc_1AA840C:                                 Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA8414:                                 Call 0.Method_arg_20 (var_15C)
  loc_1AA841C:                                 Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("DepTime").Value & "'"))
  loc_1AA843B:                               Else
  loc_1AA845D:                                 If (var_214 = Ucase("BookingRef")) Then
  loc_1AA8493:                                   var_124 = "-"
  loc_1AA84AE:                                   var_158 = var_B0.Fields
  loc_1AA84B6:                                   var_15C = var_158.Item("ResDate")
  loc_1AA84E7:                                   Call 0.Method_arg_90 (var_190, CLng(var_B6))
  loc_1AA84EF:                                   Call 0.Method_arg_20 (var_1A4)
  loc_1AA84F7:                                   Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("BookNo").Value & "'" & var_15C.Value & "'"))
  loc_1AA8520:                                 Else
  loc_1AA8542:                                   If (var_214 = Ucase("receiptNo")) Then
  loc_1AA8548:                                     If var_BE Then
  loc_1AA859B:                                       Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA85A3:                                       Call 0.Method_arg_20 (var_15C)
  loc_1AA85AB:                                       Call 0.Method_arg_38 (CStr("'" & var_98.Fields.Item("receipt").Value & "'"))
  loc_1AA85C7:                                     End If
  loc_1AA85CA:                                   Else
  loc_1AA85EC:                                     If (var_214 = Ucase("addate")) Then
  loc_1AA85F2:                                       If var_BE Then
  loc_1AA8645:                                         Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA864D:                                         Call 0.Method_arg_20 (var_15C)
  loc_1AA8655:                                         Call 0.Method_arg_38 (CStr("'" & var_98.Fields.Item("paydate").Value & "'"))
  loc_1AA8671:                                       End If
  loc_1AA8674:                                     Else
  loc_1AA8696:                                       If (var_214 = Ucase("AdAmount")) Then
  loc_1AA869C:                                         If var_BE Then
  loc_1AA8708:                                           Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA8710:                                           Call 0.Method_arg_20 (CStr(1 & Format(CVar(var_98.Fields.Item("Amount")), "0.00") & "'"), 1)
  loc_1AA8718:                                           Call 0.Method_arg_38 ("'")
  loc_1AA8736:                                         End If
  loc_1AA8739:                                       Else
  loc_1AA875B:                                         If (var_214 = Ucase("Diplomat")) Then
  loc_1AA8793:                                           var_134 = vbNullString
  loc_1AA87B6:                                           var_17C = IIf((Proc_6_38_E69628(CVar(var_B0.Fields.Item("DiplomatYN"))) = "Yes"), "Diplomat", var_134)
  loc_1AA87DF:                                           Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA87E7:                                           Call 0.Method_arg_20 (var_15C)
  loc_1AA87EF:                                           Call 0.Method_arg_38 (CStr("'" & var_17C & "'"))
  loc_1AA881A:                                         Else
  loc_1AA883C:                                           If (var_214 = Ucase("User")) Then
  loc_1AA8851:                                             var_EC = var_B0.Fields
  loc_1AA8859:                                             var_F4 = var_EC.Item("U_Name")
  loc_1AA886A:                                             var_C4 = Proc_6_38_E69628(CVar(var_F4))
  loc_1AA8888:                                             Call 0.Method_arg_90 (var_158, CLng(var_B6))
  loc_1AA8890:                                             Call 0.Method_arg_20 (var_15C)
  loc_1AA8898:                                             Call 0.Method_arg_38 ("'" & var_C4 & "'")
  loc_1AA88B2:                                           End If
  loc_1AA88B2:                                         End If
  loc_1AA88B2:                                       End If
  loc_1AA88B2:                                     End If
  loc_1AA88B2:                                   End If
  loc_1AA88B2:                                 End If
  loc_1AA88B2:                               End If
  loc_1AA88B2:                             End If
  loc_1AA88B2:                           End If
  loc_1AA88B2:                         End If
  loc_1AA88B2:                       End If
  loc_1AA88B2:                     End If
  loc_1AA88B2:                   End If
  loc_1AA88B2:                 End If
  loc_1AA88B2:               End If
  loc_1AA88B2:             End If
  loc_1AA88B2:           End If
  loc_1AA88B2:         End If
  loc_1AA88B2:       End If
  loc_1AA88B2:     End If
  loc_1AA88B5:   Next var_204 'Integer
  loc_1AA88BA: End If
  loc_1AA88CB: Call 0.Method_arg_90 (var_EC, var_F0)
  loc_1AA88D3: Call 0.Method_arg_24 (var_B6)
  loc_1AA88DF: For var_250 =  To CInt(var_F0): 1 = var_250 'Integer
  loc_1AA88F8:   Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_1AA8900:   Call 0.Method_arg_20 (var_F4)
  loc_1AA8908:   Call 0.Method_arg_30 (var_C4)
  loc_1AA891E:   var_260 = Ucase(CVar(var_C4)) 'Variant
  loc_1AA894E:   If (var_260 = Ucase("line1")) Then
  loc_1AA8972:     Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_1AA897A:     Call 0.Method_arg_20 (var_F4)
  loc_1AA8982:     Call 0.Method_arg_38 ("'Our Friendly Staff is prepared to insure that your stay at the " & MemVar_1F95130 & "'")
  loc_1AA8998:   Else
  loc_1AA89BA:     If (var_260 = Ucase("GRCNO")) Then
  loc_1AA89D3:       Proc_6_17_EAAE40(var_134)
  loc_1AA89DB:       var_C4 = CStr(var_134)
  loc_1AA89EF:       Call 0.Method_arg_90 (var_EC, CLng(var_B6), var_F4)
  loc_1AA89F7:       Call 0.Method_arg_20 (var_C4)
  loc_1AA89FF:       Call 0.Method_arg_38 (Trim(CVar(CStr(arg_18))))
  loc_1AA8A17:     End If
  loc_1AA8A17:   End If
  loc_1AA8A1A: Next var_250 'Integer
  loc_1AA8A25: var_F0 = var_BC.RecordCount
  loc_1AA8A33: If (var_F0 > 0) Then
  loc_1AA8A39:   var_BC.MoveFirst
  loc_1AA8A4F:   Call 0.Method_arg_90 (var_EC, var_F0)
  loc_1AA8A57:   Call 0.Method_arg_24 (var_B6)
  loc_1AA8A63:   For var_264 =  To CInt(var_F0): 1 = var_264 'Integer
  loc_1AA8A7C:     Call 0.Method_arg_90 (var_EC, CLng(var_B6))
  loc_1AA8A84:     Call 0.Method_arg_20 (var_F4)
  loc_1AA8A8C:     Call 0.Method_arg_30 (var_C4)
  loc_1AA8AA2:     var_274 = Ucase(CVar(var_C4)) 'Variant
  loc_1AA8AD2:     If (var_274 = Ucase("Instruction1")) Then
  loc_1AA8B03:       Proc_6_17_EAAE40(var_134)
  loc_1AA8B1F:       Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA8B27:       Call 0.Method_arg_20 (CStr(var_134))
  loc_1AA8B2F:       Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ResInstruction1")))))
  loc_1AA8B4C:     Else
  loc_1AA8B6E:       If (var_274 = Ucase("Instruction2")) Then
  loc_1AA8B9F:         Proc_6_17_EAAE40(var_134)
  loc_1AA8BBB:         Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA8BC3:         Call 0.Method_arg_20 (CStr(var_134))
  loc_1AA8BCB:         Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ResInstruction2")))))
  loc_1AA8BE8:       Else
  loc_1AA8C0A:         If (var_274 = Ucase("Instruction3")) Then
  loc_1AA8C3B:           Proc_6_17_EAAE40(var_134)
  loc_1AA8C57:           Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA8C5F:           Call 0.Method_arg_20 (CStr(var_134))
  loc_1AA8C67:           Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ResInstruction3")))))
  loc_1AA8C84:         Else
  loc_1AA8CA6:           If (var_274 = Ucase("Instruction4")) Then
  loc_1AA8CD7:             Proc_6_17_EAAE40(var_134)
  loc_1AA8CF3:             Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA8CFB:             Call 0.Method_arg_20 (CStr(var_134))
  loc_1AA8D03:             Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ResInstruction4")))))
  loc_1AA8D20:           Else
  loc_1AA8D42:             If (var_274 = Ucase("Instruction5")) Then
  loc_1AA8D73:               Proc_6_17_EAAE40(var_134)
  loc_1AA8D8F:               Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA8D97:               Call 0.Method_arg_20 (CStr(var_134))
  loc_1AA8D9F:               Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ResInstruction5")))))
  loc_1AA8DBC:             Else
  loc_1AA8DDE:               If (var_274 = Ucase("Instruction6")) Then
  loc_1AA8E0F:                 Proc_6_17_EAAE40(var_134)
  loc_1AA8E2B:                 Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA8E33:                 Call 0.Method_arg_20 (CStr(var_134))
  loc_1AA8E3B:                 Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ResInstruction6")))))
  loc_1AA8E58:               Else
  loc_1AA8E7A:                 If (var_274 = Ucase("Instruction7")) Then
  loc_1AA8EAB:                   Proc_6_17_EAAE40(var_134)
  loc_1AA8EC7:                   Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA8ECF:                   Call 0.Method_arg_20 (CStr(var_134))
  loc_1AA8ED7:                   Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ResInstruction7")))))
  loc_1AA8EF4:                 Else
  loc_1AA8F16:                   If (var_274 = Ucase("Instruction8")) Then
  loc_1AA8F47:                     Proc_6_17_EAAE40(var_134)
  loc_1AA8F63:                     Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA8F6B:                     Call 0.Method_arg_20 (CStr(var_134))
  loc_1AA8F73:                     Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ResInstruction8")))))
  loc_1AA8F90:                   Else
  loc_1AA8FB2:                     If (var_274 = Ucase("Instruction9")) Then
  loc_1AA8FE3:                       Proc_6_17_EAAE40(var_134)
  loc_1AA8FFF:                       Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA9007:                       Call 0.Method_arg_20 (CStr(var_134))
  loc_1AA900F:                       Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ResInstruction9")))))
  loc_1AA902C:                     Else
  loc_1AA904E:                       If (var_274 = Ucase("Instruction10")) Then
  loc_1AA907F:                         Proc_6_17_EAAE40(var_134)
  loc_1AA909B:                         Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA90A3:                         Call 0.Method_arg_20 (CStr(var_134))
  loc_1AA90AB:                         Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ResInstruction10")))))
  loc_1AA90C8:                       Else
  loc_1AA90EA:                         If (var_274 = Ucase("Instruction11")) Then
  loc_1AA911B:                           Proc_6_17_EAAE40(var_134)
  loc_1AA9137:                           Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA913F:                           Call 0.Method_arg_20 (CStr(var_134))
  loc_1AA9147:                           Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ResInstruction11")))))
  loc_1AA9164:                         Else
  loc_1AA9186:                           If (var_274 = Ucase("Instruction12")) Then
  loc_1AA91B7:                             Proc_6_17_EAAE40(var_134)
  loc_1AA91D3:                             Call 0.Method_arg_90 (var_158, CLng(var_B6), var_15C)
  loc_1AA91DB:                             Call 0.Method_arg_20 (CStr(var_134))
  loc_1AA91E3:                             Call 0.Method_arg_38 (CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ResInstruction12")))))
  loc_1AA91FD:                           End If
  loc_1AA91FD:                         End If
  loc_1AA91FD:                       End If
  loc_1AA91FD:                     End If
  loc_1AA91FD:                   End If
  loc_1AA91FD:                 End If
  loc_1AA91FD:               End If
  loc_1AA91FD:             End If
  loc_1AA91FD:           End If
  loc_1AA91FD:         End If
  loc_1AA91FD:       End If
  loc_1AA91FD:     End If
  loc_1AA9200:   Next var_264 'Integer
  loc_1AA9205: End If
  loc_1AA920A: Set var_F4 = Nothing
  loc_1AA9220: Set var_EC = MemVar_1F951E8 
  loc_1AA922C: Proc_6_99_1484404(var_EC, 0, arg_14)
  loc_1AA9237: MemVar_1F951E8 = var_EC
  loc_1AA9247: MemVar_1F951E8 = Nothing
  loc_1AA9250: Set var_B0 = Nothing
  loc_1AA9258: Set var_88 = Nothing
  loc_1AA9260: Set var_98 = Nothing
  loc_1AA9263: Exit Sub
  loc_1AA9264: ' Referenced from: 1AA54B8
  loc_1AA9269: Proc_6_60_E63754(0, &HFF)
  loc_1AA926E: Exit Sub
End Sub
